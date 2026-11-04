/**
 * TadierBot Mini App — Asosiy JavaScript
 * Telegram WebApp SDK, Tab Navigatsiyasi, So'z Trenajyori va Admin CRUD
 */

document.addEventListener('DOMContentLoaded', () => {
  // 1. Telegram WebApp obyektini sozlash
  const tg = window.Telegram?.WebApp;

  function notify(msg) {
    if (tg?.showAlert) {
      tg.showAlert(msg);
    } else {
      alert(msg);
    }
  }

  function triggerHaptic(style = 'light') {
    if (tg?.HapticFeedback) {
      tg.HapticFeedback.impactOccurred(style);
    }
  }

  // Nemischa talaffuz qilish yordamchisi (Web Speech API)
  function speakGerman(text) {
    if ('speechSynthesis' in window && text) {
      window.speechSynthesis.cancel();
      const utter = new SpeechSynthesisUtterance(text);
      utter.lang = 'de-DE';
      utter.rate = 0.85;
      window.speechSynthesis.speak(utter);
    }
  }

  if (tg) {
    tg.ready();
    tg.expand();

    // Foydalanuvchi ma'lumotlarini o'qish (Telegram profil)
    const user = tg.initDataUnsafe?.user;
    if (user) {
      const displayName = [user.first_name, user.last_name].filter(Boolean).join(' ') || user.username || 'Foydalanuvchi';
      
      document.getElementById('user-name').textContent = displayName;
      document.getElementById('prof-name').textContent = displayName;
      const myRankName = document.getElementById('rank-my-name');
      if (myRankName) myRankName.textContent = `Siz (${user.first_name || displayName})`;

      if (user.photo_url) {
        document.getElementById('user-avatar').innerHTML = `<img src="${user.photo_url}" alt="${displayName}">`;
        document.getElementById('prof-avatar').innerHTML = `<img src="${user.photo_url}" style="width:100%;height:100%;border-radius:50%;object-fit:cover;" alt="${displayName}">`;
      } else {
        const initial = (user.first_name || 'U')[0].toUpperCase();
        document.getElementById('avatar-fallback').textContent = initial;
      }
    }
  }

  // ==========================================
  // 2. Profil va Statistika (Streak, Ball, Daraja)
  // ==========================================
  async function loadUserProfile() {
    const roleBadge = document.getElementById('user-role');
    const adminNavBtn = document.getElementById('nav-btn-admin');
    const streakEl = document.getElementById('stat-streak');
    const scoreEl = document.getElementById('stat-score');
    const levelEl = document.getElementById('stat-level');

    if (tg?.initData) {
      try {
        const response = await fetch('/api/user/profile', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ initData: tg.initData })
        });

        if (response.ok) {
          const data = await response.json();

          // 1-rasm: Ism ostidagi rolni yangilash
          if (roleBadge) {
            roleBadge.textContent = data.role;
            roleBadge.classList.toggle('is-admin', data.isAdmin);
          }

          // 1-rasm: Headerdagi Streak, Ball, Daraja vidjetlari
          if (data.stats) {
            if (streakEl) streakEl.textContent = `${data.stats.streakDays} kun`;
            if (scoreEl) scoreEl.textContent = data.stats.score;
            if (levelEl) levelEl.textContent = data.stats.level || 'A1';
          }

          // Admin bo'lsa 5-tugma "Boshqaruv" ochiladi va so'zlar ro'yxati yuklanadi
          if (adminNavBtn) {
            adminNavBtn.classList.toggle('hidden', !data.isAdmin);
          }

          if (data.isAdmin) {
            loadAdminWords();
          }
          return;
        }
      } catch (err) {
        console.warn('Backenddan rolni yuklashda xatolik:', err);
      }
    }

    // Brauzerda test qilish uchun (?admin=true bo'lsa admin qilib ko'rsatish)
    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.get('admin') === 'true') {
      if (roleBadge) {
        roleBadge.textContent = 'Admin';
        roleBadge.classList.add('is-admin');
      }
      adminNavBtn?.classList.remove('hidden');
      loadAdminWords();
    }
  }

  loadUserProfile();

  // ==========================================
  // 3. Kun so'zi (Wort des Tages) yuklash
  // ==========================================
  let currentDailyWordText = 'die Herausforderung';

  async function loadDailyWord() {
    try {
      const res = await fetch('/api/words/daily');
      if (res.ok) {
        const word = await res.json();
        const fullDe = word.article ? `${word.article} ${word.germanWord}` : word.germanWord;
        currentDailyWordText = fullDe;

        const deEl = document.getElementById('daily-word-de');
        const uzEl = document.getElementById('daily-word-uz');
        const exEl = document.getElementById('daily-example-de');

        if (deEl) deEl.textContent = fullDe;
        if (uzEl) uzEl.textContent = word.uzbekTranslation;
        if (exEl) exEl.textContent = word.exampleSentenceDe ? `"${word.exampleSentenceDe}"` : '';
      }
    } catch (err) {
      console.warn('Kun so\'zini yuklashda xatolik (standart so\'z ishlatiladi):', err);
    }
  }

  loadDailyWord();

  document.getElementById('btn-speak-daily')?.addEventListener('click', () => {
    triggerHaptic('light');
    speakGerman(currentDailyWordText);
  });

  // ==========================================
  // 4. So'z Trenajyori (Flesh-kartochkalar)
  // ==========================================
  const trainerModal = document.getElementById('trainer-modal');
  const flashcard = document.getElementById('flashcard');
  const levelPills = document.querySelectorAll('.level-pill');

  let trainerWords = [];
  let trainerIndex = 0;
  let currentTrainerLevel = 'A1';
  let sessionEarnedScore = 0;

  // Trenajyor modali ochish
  document.getElementById('card-open-cards')?.addEventListener('click', () => {
    triggerHaptic('medium');
    openTrainer(currentTrainerLevel);
  });

  document.getElementById('btn-close-trainer')?.addEventListener('click', closeTrainer);
  document.getElementById('trainer-backdrop')?.addEventListener('click', closeTrainer);

  function openTrainer(level = 'A1') {
    currentTrainerLevel = level;
    sessionEarnedScore = 0;
    trainerModal?.classList.remove('hidden');
    document.getElementById('trainer-finished')?.classList.add('hidden');
    document.getElementById('flashcard-container')?.classList.remove('hidden');
    document.getElementById('trainer-actions')?.classList.remove('hidden');
    document.getElementById('trainer-earned-chip').textContent = '+0 ball';

    // Level tugmalarini faollashtirish
    levelPills.forEach(pill => {
      pill.classList.toggle('active', pill.getAttribute('data-level') === level);
    });

    loadTrainerSession(level);
  }

  function closeTrainer() {
    trainerModal?.classList.add('hidden');
  }

  // Darajalar o'rtasida o'tish (A1, A2, B1, B2)
  levelPills.forEach(pill => {
    pill.addEventListener('click', () => {
      triggerHaptic('light');
      const lvl = pill.getAttribute('data-level');
      openTrainer(lvl);
    });
  });

  // Backenddan daraja bo'yicha kartochkalarni olish
  async function loadTrainerSession(level) {
    try {
      const res = await fetch(`/api/words/trainer?level=${encodeURIComponent(level)}&count=10`);
      if (res.ok) {
        const data = await res.json();
        trainerWords = data.words || [];
      } else {
        trainerWords = [];
      }
    } catch (err) {
      console.warn('Trenajyor kartochkalarini yuklashda xatolik:', err);
      trainerWords = [];
    }

    // Fallback: Agar bazada so'z bo'lmasa, sinov kartochkalari
    if (trainerWords.length === 0) {
      trainerWords = [
        {
          id: 1,
          article: 'die',
          germanWord: 'Herausforderung',
          uzbekTranslation: 'sinov, qiyinchilik, chaqiriq',
          exampleSentenceDe: 'Deutsch lernen ist eine schöne Herausforderung!',
          exampleSentenceUz: 'Nemis tilini o\'rganish ajoyib bir chaqiriqdir!'
        },
        {
          id: 2,
          article: 'der',
          germanWord: 'Apfel',
          uzbekTranslation: 'olma',
          exampleSentenceDe: 'Ich esse einen Apfel.',
          exampleSentenceUz: 'Men olma yeyapman.'
        },
        {
          id: 3,
          article: 'das',
          germanWord: 'Buch',
          uzbekTranslation: 'kitob',
          exampleSentenceDe: 'Das Buch ist sehr interessant.',
          exampleSentenceUz: 'Kitob juda qiziqarli.'
        }
      ];
    }

    trainerIndex = 0;
    renderCurrentCard();
  }

  // Kartani ekranga chiqarish
  function renderCurrentCard() {
    if (trainerIndex >= trainerWords.length) {
      showTrainerFinished();
      return;
    }

    flashcard?.classList.remove('flipped');
    const card = trainerWords[trainerIndex];

    const cardArt = document.getElementById('card-article');
    const cardDe = document.getElementById('card-german');
    const cardUz = document.getElementById('card-uzbek');
    const cardSampleDe = document.getElementById('card-sample-de');
    const cardSampleUz = document.getElementById('card-sample-uz');

    if (cardArt) cardArt.textContent = card.article || '';
    if (cardDe) cardDe.textContent = card.germanWord;
    if (cardUz) cardUz.textContent = card.uzbekTranslation;
    if (cardSampleDe) cardSampleDe.textContent = card.exampleSentenceDe ? `"${card.exampleSentenceDe}"` : '';
    if (cardSampleUz) cardSampleUz.textContent = card.exampleSentenceUz || '';

    // Counter va Progress bar
    const counterEl = document.getElementById('trainer-card-counter');
    const progressFill = document.getElementById('trainer-progress-fill');
    if (counterEl) counterEl.textContent = `Kartochka ${trainerIndex + 1} / ${trainerWords.length}`;
    if (progressFill) {
      const pct = Math.round(((trainerIndex + 1) / trainerWords.length) * 100);
      progressFill.style.width = `${pct}%`;
    }
  }

  // Kartochkani aylantirish (Flip)
  flashcard?.addEventListener('click', (e) => {
    // Audio tugmasi bosilganda kartochka aylanmasligi uchun
    if (e.target.closest('#btn-speak-card')) return;
    triggerHaptic('light');
    flashcard.classList.toggle('flipped');
  });

  // Kartochkadagi audio talaffuz
  document.getElementById('btn-speak-card')?.addEventListener('click', (e) => {
    e.stopPropagation();
    triggerHaptic('light');
    const card = trainerWords[trainerIndex];
    if (card) {
      const text = card.article ? `${card.article} ${card.germanWord}` : card.germanWord;
      speakGerman(text);
    }
  });

  // Javob berish: "Bilaman" (+10 ball) yoki "Qaytarish" (+2 ball)
  document.getElementById('btn-trainer-know')?.addEventListener('click', () => handleTrainerAnswer(true));
  document.getElementById('btn-trainer-again')?.addEventListener('click', () => handleTrainerAnswer(false));

  async function handleTrainerAnswer(isRemembered) {
    const card = trainerWords[trainerIndex];
    if (!card) return;

    triggerHaptic(isRemembered ? 'heavy' : 'medium');

    const addedScore = isRemembered ? 10 : 2;
    sessionEarnedScore += addedScore;
    document.getElementById('trainer-earned-chip').textContent = `+${sessionEarnedScore} ball`;

    // Backendga javob yuborish
    if (tg?.initData) {
      try {
        const res = await fetch('/api/words/answer', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            initData: tg.initData,
            wordId: card.id,
            isRemembered: isRemembered
          })
        });

        if (res.ok) {
          const ansData = await res.json();
          // Headerdagi ball va streakni darhol yangilash
          const scoreEl = document.getElementById('stat-score');
          const streakEl = document.getElementById('stat-streak');
          if (scoreEl && ansData.totalScore !== undefined) scoreEl.textContent = ansData.totalScore;
          if (streakEl && ansData.streakDays !== undefined) streakEl.textContent = `${ansData.streakDays} kun`;
        }
      } catch (err) {
        console.warn('Javobni backendga saqlashda xatolik:', err);
      }
    } else {
      // Offline / Test rejimda ballni lokal oshirib ko'rsatish
      const scoreEl = document.getElementById('stat-score');
      if (scoreEl) {
        const cur = parseInt(scoreEl.textContent, 10) || 0;
        scoreEl.textContent = cur + addedScore;
      }
    }

    trainerIndex++;
    renderCurrentCard();
  }

  function showTrainerFinished() {
    document.getElementById('flashcard-container')?.classList.add('hidden');
    document.getElementById('trainer-actions')?.classList.add('hidden');
    const finishedBox = document.getElementById('trainer-finished');
    finishedBox?.classList.remove('hidden');

    const scoreBox = document.getElementById('finished-total-score');
    if (scoreBox) scoreBox.textContent = `+${sessionEarnedScore} ball to'plandi! 🏆`;
  }

  document.getElementById('btn-trainer-restart')?.addEventListener('click', () => {
    triggerHaptic('medium');
    openTrainer(currentTrainerLevel);
  });

  // ==========================================
  // 5. Admin Boshqaruv Markazi (Words CRUD - 4-rasm)
  // ==========================================

  // Admin so'zlar ro'yxatini yuklash
  async function loadAdminWords() {
    const wordsList = document.getElementById('admin-words-list');
    const countEl = document.getElementById('words-count');
    if (!wordsList) return;

    try {
      const res = await fetch('/api/words?pageNumber=1&pageSize=50');
      if (res.ok) {
        const data = await res.json();
        const words = data.items || [];
        if (countEl) countEl.textContent = `${data.totalCount || words.length} ta`;

        wordsList.innerHTML = '';
        if (words.length === 0) {
          wordsList.innerHTML = '<div style="padding:16px;text-align:center;color:var(--hint-color);font-size:13px;">Hozircha biror so‘z qo‘shilmagan.</div>';
          return;
        }

        words.forEach(w => {
          const fullWord = w.article ? `${w.article} ${w.germanWord}` : w.germanWord;
          const item = document.createElement('div');
          item.className = 'crud-item';
          item.innerHTML = `
            <div class="crud-item-info">
              <strong>${fullWord}</strong> <span>— ${w.uzbekTranslation}</span>
              <small>${w.exampleSentenceDe || 'Misol gap yo‘q'} • <i>[${w.level}]</i></small>
            </div>
            <div class="crud-actions">
              <button class="action-btn-sm btn-delete" data-id="${w.id}" title="O‘chirish">🗑</button>
            </div>
          `;

          item.querySelector('.btn-delete').addEventListener('click', async () => {
            if (!confirm(`"${fullWord}" so‘zini o‘chirishni tasdiqlaysizmi?`)) return;
            triggerHaptic('medium');
            await deleteAdminWord(w.id, item);
          });

          wordsList.appendChild(item);
        });
      }
    } catch (err) {
      console.warn('Admin so‘zlarini yuklashda xatolik:', err);
    }
  }

  // Admin so'zni o'chirish
  async function deleteAdminWord(wordId, element) {
    try {
      const headers = {};
      if (tg?.initData) headers['X-Telegram-Init-Data'] = tg.initData;

      const res = await fetch(`/api/words/${wordId}`, {
        method: 'DELETE',
        headers: headers
      });

      if (res.ok) {
        element.remove();
        notify('🗑 So‘z muvaffaqiyatli o‘chirildi!');
        loadAdminWords();
      } else {
        notify('❌ So‘zni o‘chirishda xatolik yuz berdi.');
      }
    } catch (err) {
      notify('❌ Server bilan bog‘lanishda xatolik.');
    }
  }

  // Admin yangi so'z saqlash
  document.getElementById('btn-save-word')?.addEventListener('click', async () => {
    const article = document.getElementById('inp-word-article').value;
    const deWord = document.getElementById('inp-word-de').value.trim();
    const uzWord = document.getElementById('inp-word-uz').value.trim();
    const level = document.getElementById('inp-word-level')?.value || 'A1';
    const category = document.getElementById('inp-word-category')?.value.trim() || 'Kundalik';
    const sampleDe = document.getElementById('inp-word-sample-de').value.trim();
    const sampleUz = document.getElementById('inp-word-sample-uz').value.trim();

    if (!deWord || !uzWord) {
      notify('⚠️ Iltimos, nemischa so‘z va tarjimasini kiriting!');
      return;
    }

    triggerHaptic('heavy');

    const newWordPayload = {
      article: article || null,
      germanWord: deWord,
      uzbekTranslation: uzWord,
      exampleSentenceDe: sampleDe || null,
      exampleSentenceUz: sampleUz || null,
      level: level,
      category: category,
      isDailyWord: false
    };

    try {
      const headers = { 'Content-Type': 'application/json' };
      if (tg?.initData) headers['X-Telegram-Init-Data'] = tg.initData;

      const res = await fetch('/api/words', {
        method: 'POST',
        headers: headers,
        body: JSON.stringify(newWordPayload)
      });

      if (res.ok) {
        const fullWord = article ? `${article} ${deWord}` : deWord;
        notify(`✅ "${fullWord}" so‘zi muvaffaqiyatli bazaga saqlandi!`);

        // Maydonlarni tozalash
        document.getElementById('inp-word-de').value = '';
        document.getElementById('inp-word-uz').value = '';
        document.getElementById('inp-word-sample-de').value = '';
        document.getElementById('inp-word-sample-uz').value = '';

        loadAdminWords();
      } else {
        const errJson = await res.json().catch(() => ({}));
        notify(`⚠️ Xatolik: ${errJson.message || 'So‘zni saqlab bo‘lmadi'}`);
      }
    } catch (err) {
      notify('❌ Server bilan bog‘lanishda xatolik yuz berdi.');
    }
  });

  // Avatarga ketma-ket 3 marta bosganda admin rejimini yoqish/o'chirish (Sinov uchun)
  let avatarTapCount = 0;
  document.getElementById('user-avatar')?.addEventListener('click', () => {
    avatarTapCount++;
    if (avatarTapCount === 3) {
      avatarTapCount = 0;
      const adminNavBtn = document.getElementById('nav-btn-admin');
      const roleBadge = document.getElementById('user-role');
      const currentlyHidden = adminNavBtn?.classList.contains('hidden');
      
      adminNavBtn?.classList.toggle('hidden', !currentlyHidden);
      if (roleBadge) {
        roleBadge.textContent = currentlyHidden ? 'Admin' : 'Foydalanuvchi';
        roleBadge.classList.toggle('is-admin', currentlyHidden);
      }
      if (currentlyHidden) {
        loadAdminWords();
      }
      triggerHaptic('heavy');
      notify(currentlyHidden ? '👑 Admin boshqaruv tugmasi yoqildi!' : '👤 Oddiy o‘quvchi rejimiga o‘tildi');
    }
  });

  // ==========================================
  // 6. Asosiy Tab Navigatsiyasi (Pastki menyu)
  // ==========================================
  const navItems = document.querySelectorAll('.nav-item');
  const tabPanes = document.querySelectorAll('.tab-pane');

  function switchTab(targetTabId) {
    navItems.forEach((btn) => {
      btn.classList.toggle('active', btn.getAttribute('data-tab') === targetTabId);
    });

    tabPanes.forEach((pane) => {
      pane.classList.toggle('active', pane.id === targetTabId);
    });

    triggerHaptic('light');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  navItems.forEach((btn) => {
    btn.addEventListener('click', () => {
      switchTab(btn.getAttribute('data-tab'));
    });
  });

  // 2x2 kartalardan boshqa bo'limlar
  document.getElementById('card-open-tests')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('🎓 Placement Test: Darajani aniqlash tizimi keyingi bosqichda ulanadi!');
  });

  document.getElementById('card-open-books')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('📚 Kutubxona: 44 ta darslik va qo‘llanmalar katalogi!');
  });

  document.getElementById('card-open-audio')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('🎧 Hören (Audio): Nemischa audiolarni matn bilan birga tinglash bo‘limi!');
  });

  // Admin sub-navigatsiyasi (So'zlar, Testlar, Tadbirlar)
  const adminTabBtns = document.querySelectorAll('.admin-tab-btn');
  const adminSections = document.querySelectorAll('.admin-section');

  adminTabBtns.forEach((btn) => {
    btn.addEventListener('click', () => {
      const secId = btn.getAttribute('data-admin-sec');
      adminTabBtns.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');

      adminSections.forEach((sec) => {
        sec.classList.toggle('active', sec.id === secId);
      });
      triggerHaptic('light');
    });
  });

  // Tavsiya etiladigan manbalar va kabinet tugmalari
  document.getElementById('btn-read-grammar')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('📖 Nemis tili grammatikasi kitobi ochilmoqda...');
  });

  document.getElementById('btn-read-vocab')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('📗 Start Deutsch A1 lug‘ati ochilmoqda...');
  });

  document.getElementById('btn-join-zoom')?.addEventListener('click', () => {
    triggerHaptic('medium');
    if (tg?.openLink) {
      tg.openLink('https://zoom.us');
    } else {
      window.open('https://zoom.us', '_blank');
    }
  });

  document.getElementById('btn-set-reminder')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('🔔 Eslatma o‘rnatildi! Dars boshlanishidan 1 soat oldin bot xabar yuboradi.');
  });

  document.getElementById('btn-prof-favorites')?.addEventListener('click', () => {
    triggerHaptic('light');
    notify('⭐ Saqlangan manbalar ro‘yxati bo‘sh.');
  });

  document.getElementById('btn-prof-certificates')?.addEventListener('click', () => {
    triggerHaptic('light');
    notify('📜 Testlarni muvaffaqiyatli topshirganingizdan so‘ng sertifikatingiz shu yerda aks etadi.');
  });

  document.getElementById('btn-prof-contact')?.addEventListener('click', () => {
    triggerHaptic('light');
    notify('💬 Bot ustoziga savolingiz bo‘lsa, to‘g‘ridan-to‘g‘ri bot chatiga yozishingiz mumkin.');
  });
});
