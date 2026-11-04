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

  // HTML xavfsizlantirish (XSS va matn formatlash uchun)
  function escapeHtml(str) {
    if (!str) return '';
    return String(str)
      .replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;')
      .replace(/"/g, '&quot;')
      .replace(/'/g, '&#39;');
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
  let currentDailyWordText = '';

  async function loadDailyWord() {
    try {
      const res = await fetch('/api/words/daily');
      const deEl = document.getElementById('daily-word-de');
      const uzEl = document.getElementById('daily-word-uz');
      const exEl = document.getElementById('daily-example-de');

      if (res.ok) {
        const word = await res.json();
        const fullDe = word.article ? `${word.article} ${word.germanWord}` : word.germanWord;
        currentDailyWordText = fullDe;

        if (deEl) deEl.textContent = fullDe;
        if (uzEl) uzEl.textContent = word.uzbekTranslation;
        if (exEl) exEl.textContent = word.exampleSentenceDe ? `"${word.exampleSentenceDe}"` : '';
      } else {
        currentDailyWordText = '';
        if (deEl) deEl.textContent = '—';
        if (uzEl) uzEl.textContent = 'Hozircha kun so‘zi mavjud emas';
        if (exEl) exEl.textContent = '';
      }
    } catch (err) {
      console.warn('Kun so\'zini yuklashda xatolik:', err);
    }
  }

  loadDailyWord();

  document.getElementById('btn-speak-daily')?.addEventListener('click', () => {
    triggerHaptic('light');
    speakGerman(currentDailyWordText);
  });

  // ==========================================
  // 4. So'z Trenajyori (Flesh-kartochkalar — Sof Ta'limiy Rejim)
  // ==========================================
  const trainerModal = document.getElementById('trainer-modal');
  const flashcard = document.getElementById('flashcard');
  const levelPills = document.querySelectorAll('.level-pill');
  const btnTrainerPrev = document.getElementById('btn-trainer-prev');
  const btnTrainerNext = document.getElementById('btn-trainer-next');

  let trainerWords = [];
  let trainerIndex = 0;
  let currentTrainerLevel = 'A1';

  // Trenajyor modali ochish
  document.getElementById('card-open-cards')?.addEventListener('click', () => {
    triggerHaptic('medium');
    openTrainer(currentTrainerLevel);
  });

  document.getElementById('btn-close-trainer')?.addEventListener('click', closeTrainer);
  document.getElementById('trainer-backdrop')?.addEventListener('click', closeTrainer);

  function openTrainer(level = 'A1') {
    currentTrainerLevel = level;
    trainerModal?.classList.remove('hidden');
    document.getElementById('trainer-finished')?.classList.add('hidden');
    document.getElementById('flashcard-container')?.classList.remove('hidden');
    document.getElementById('trainer-actions')?.classList.remove('hidden');

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

    // Fallback sinov kartochkalari
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
          exampleSentenceDe: 'Ich esse einen frischen Apfel.',
          exampleSentenceUz: 'Men yangi olma yeyapman.'
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
    if (trainerWords.length === 0) return;

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

    // Navigatsiya tugmalari holati
    if (btnTrainerPrev) {
      btnTrainerPrev.disabled = (trainerIndex === 0);
    }
    if (btnTrainerNext) {
      const isLast = (trainerIndex === trainerWords.length - 1);
      btnTrainerNext.innerHTML = isLast ? '<span>Tugatish ✓</span>' : '<span>Keyingi ➔</span>';
    }
  }

  // Kartochkani aylantirish (Flip)
  flashcard?.addEventListener('click', (e) => {
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

  // Oldingi kartaga qaytish
  btnTrainerPrev?.addEventListener('click', () => {
    if (trainerIndex > 0) {
      triggerHaptic('light');
      trainerIndex--;
      renderCurrentCard();
    }
  });

  // Keyingi kartaga o'tish
  btnTrainerNext?.addEventListener('click', () => {
    triggerHaptic('light');
    if (trainerIndex < trainerWords.length - 1) {
      trainerIndex++;
      renderCurrentCard();
    } else {
      showTrainerFinished();
    }
  });

  function showTrainerFinished() {
    document.getElementById('flashcard-container')?.classList.add('hidden');
    document.getElementById('trainer-actions')?.classList.add('hidden');
    const finishedBox = document.getElementById('trainer-finished');
    finishedBox?.classList.remove('hidden');
  }

  document.getElementById('btn-trainer-restart')?.addEventListener('click', () => {
    triggerHaptic('medium');
    openTrainer(currentTrainerLevel);
  });

  // ==========================================
  // 5. Admin Boshqaruv Markazi (Qidiruv & Tahrirlash)
  // ==========================================
  let editingWordId = null;
  const formWordsTitle = document.getElementById('form-words-title');
  const btnSaveWord = document.getElementById('btn-save-word');
  const btnCancelEdit = document.getElementById('btn-cancel-edit');
  const inpSearchWords = document.getElementById('inp-search-words');
  const btnSearchWords = document.getElementById('btn-search-words');

  // Admin so'zlar ro'yxatini yuklash (Qidiruv bilan)
  async function loadAdminWords(searchQuery = '') {
    const wordsList = document.getElementById('admin-words-list');
    const countEl = document.getElementById('words-count');
    if (!wordsList) return;

    try {
      const url = searchQuery 
        ? `/api/words?pageNumber=1&pageSize=50&search=${encodeURIComponent(searchQuery)}`
        : '/api/words?pageNumber=1&pageSize=50';

      const res = await fetch(url);
      if (res.ok) {
        const data = await res.json();
        const words = data.items || [];
        if (countEl) countEl.textContent = `${data.totalCount || words.length} ta`;

        wordsList.innerHTML = '';
        if (words.length === 0) {
          wordsList.innerHTML = `<div style="padding:16px;text-align:center;color:var(--hint-color);font-size:13px;">
            ${searchQuery ? 'Qidiruv bo‘yicha so‘z topilmadi.' : 'Hozircha biror so‘z qo‘shilmagan.'}
          </div>`;
          return;
        }

        words.forEach(w => {
          const fullWord = w.article ? `${w.article} ${w.germanWord}` : w.germanWord;
          const item = document.createElement('div');
          item.className = 'crud-item';
          if (editingWordId === w.id) {
            item.classList.add('is-editing');
          }

          item.innerHTML = `
            <div class="crud-item-info">
              <strong>${fullWord}</strong> <span>— ${w.uzbekTranslation}</span>
              <small>${w.exampleSentenceDe || 'Misol gap yo‘q'} • <i>[${w.level}]</i></small>
            </div>
            <div class="crud-actions">
              <button class="action-btn-sm btn-delete" data-id="${w.id}" title="O‘chirish">🗑</button>
            </div>
          `;

          // So'z ustiga bosganda tahrirlash (Edit) rejimiga o'tish
          item.addEventListener('click', (e) => {
            if (e.target.closest('.btn-delete')) return;
            startEditWord(w, item);
          });

          // O'chirish
          item.querySelector('.btn-delete').addEventListener('click', async (e) => {
            e.stopPropagation();
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

  // Tahrirlash rejimini boshlash
  function startEditWord(word, itemElement) {
    triggerHaptic('medium');
    editingWordId = word.id;

    // Formaga mavjud qiymatlarni to'ldirish
    document.getElementById('inp-word-article').value = word.article || '';
    document.getElementById('inp-word-de').value = word.germanWord || '';
    document.getElementById('inp-word-uz').value = word.uzbekTranslation || '';
    if (document.getElementById('inp-word-level')) {
      document.getElementById('inp-word-level').value = word.level || 'A1';
    }
    if (document.getElementById('inp-word-category')) {
      document.getElementById('inp-word-category').value = word.category || 'Kundalik';
    }
    document.getElementById('inp-word-sample-de').value = word.exampleSentenceDe || '';
    document.getElementById('inp-word-sample-uz').value = word.exampleSentenceUz || '';

    // Forma sarlavhasi va tugmasini yangilash
    if (formWordsTitle) formWordsTitle.textContent = `✏️ So‘zni tahrirlash (#${word.id})`;
    if (btnSaveWord) btnSaveWord.innerHTML = '💾 O‘zgarishlarni saqlash';
    btnCancelEdit?.classList.remove('hidden');

    // Ro'yxatdagi kartochkani belgilash
    document.querySelectorAll('.crud-item').forEach(el => el.classList.remove('is-editing'));
    itemElement?.classList.add('is-editing');

    // Formaga siljitish
    document.getElementById('sec-words')?.scrollIntoView({ behavior: 'smooth', block: 'start' });
  }

  // Tahrirlashni bekor qilish
  function cancelEditWord() {
    editingWordId = null;
    document.getElementById('inp-word-article').value = 'der';
    document.getElementById('inp-word-de').value = '';
    document.getElementById('inp-word-uz').value = '';
    document.getElementById('inp-word-sample-de').value = '';
    document.getElementById('inp-word-sample-uz').value = '';

    if (formWordsTitle) formWordsTitle.textContent = '➕ Yangi so‘z qo‘shish';
    if (btnSaveWord) btnSaveWord.innerHTML = '💾 Saqlash (Baza ga qo‘shish)';
    btnCancelEdit?.classList.add('hidden');

    document.querySelectorAll('.crud-item').forEach(el => el.classList.remove('is-editing'));
  }

  btnCancelEdit?.addEventListener('click', () => {
    triggerHaptic('light');
    cancelEditWord();
  });

  // Qidiruv tugmasi va Enter orqali qidirish
  btnSearchWords?.addEventListener('click', () => {
    triggerHaptic('light');
    const query = inpSearchWords?.value.trim() || '';
    loadAdminWords(query);
  });

  inpSearchWords?.addEventListener('keydown', (e) => {
    if (e.key === 'Enter') {
      e.preventDefault();
      triggerHaptic('light');
      const query = inpSearchWords?.value.trim() || '';
      loadAdminWords(query);
    }
  });

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
        if (editingWordId === wordId) {
          cancelEditWord();
        }
        loadAdminWords(inpSearchWords?.value.trim() || '');
      } else {
        notify('❌ So‘zni o‘chirishda xatolik yuz berdi.');
      }
    } catch (err) {
      notify('❌ Server bilan bog‘lanishda xatolik.');
    }
  }

  // Admin saqlash (Yangi qo'shish yoki Mavjudini yangilash)
  btnSaveWord?.addEventListener('click', async () => {
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

    const headers = { 'Content-Type': 'application/json' };
    if (tg?.initData) headers['X-Telegram-Init-Data'] = tg.initData;

    try {
      if (editingWordId) {
        // PUT /api/words/{id} (Tahrirlash)
        const updatePayload = {
          id: editingWordId,
          article: article || null,
          germanWord: deWord,
          uzbekTranslation: uzWord,
          exampleSentenceDe: sampleDe || null,
          exampleSentenceUz: sampleUz || null,
          level: level,
          category: category,
          isDailyWord: false
        };

        const res = await fetch(`/api/words/${editingWordId}`, {
          method: 'PUT',
          headers: headers,
          body: JSON.stringify(updatePayload)
        });

        if (res.ok) {
          notify(`✅ "${deWord}" so‘zi muvaffaqiyatli yangilandi!`);
          cancelEditWord();
          loadAdminWords(inpSearchWords?.value.trim() || '');
        } else {
          const errJson = await res.json().catch(() => ({}));
          notify(`⚠️ Xatolik: ${errJson.message || 'So‘zni yangilab bo‘lmadi'}`);
        }
      } else {
        // POST /api/words (Yangi qo'shish)
        const createPayload = {
          article: article || null,
          germanWord: deWord,
          uzbekTranslation: uzWord,
          exampleSentenceDe: sampleDe || null,
          exampleSentenceUz: sampleUz || null,
          level: level,
          category: category,
          isDailyWord: false
        };

        const res = await fetch('/api/words', {
          method: 'POST',
          headers: headers,
          body: JSON.stringify(createPayload)
        });

        if (res.ok) {
          const fullWord = article ? `${article} ${deWord}` : deWord;
          notify(`✅ "${fullWord}" so‘zi muvaffaqiyatli saqlandi!`);

          document.getElementById('inp-word-de').value = '';
          document.getElementById('inp-word-uz').value = '';
          document.getElementById('inp-word-sample-de').value = '';
          document.getElementById('inp-word-sample-uz').value = '';

          loadAdminWords(inpSearchWords?.value.trim() || '');
        } else {
          const errJson = await res.json().catch(() => ({}));
          notify(`⚠️ Xatolik: ${errJson.message || 'So‘zni saqlab bo‘lmadi'}`);
        }
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
    if (targetTabId === 'tab-events') loadPublicEvents();
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
      if (secId === 'sec-events') loadAdminEvents();
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

  // ==========================================
  // 7. Tadbirlar va Jonli Darslar Mantiqi
  // ==========================================
  let editingEventId = null;
  let cachedAdminEvents = [];

  function formatEventDateTime(dateStr, timeStr) {
    if (!dateStr) return timeStr || '';
    const parts = dateStr.split('-');
    if (parts.length < 3) return dateStr;
    const year = parseInt(parts[0], 10);
    const month = parseInt(parts[1], 10);
    const day = parseInt(parts[2], 10);

    const eventDate = new Date(year, month - 1, day);
    const today = new Date();
    const isToday = eventDate.getFullYear() === today.getFullYear() &&
                    eventDate.getMonth() === today.getMonth() &&
                    eventDate.getDate() === today.getDate();

    const tomorrow = new Date();
    tomorrow.setDate(today.getDate() + 1);
    const isTomorrow = eventDate.getFullYear() === tomorrow.getFullYear() &&
                       eventDate.getMonth() === tomorrow.getMonth() &&
                       eventDate.getDate() === tomorrow.getDate();

    const cleanTime = timeStr ? timeStr.substring(0, 5) : '20:00';

    if (isToday) return `Bugun • ${cleanTime}`;
    if (isTomorrow) return `Ertaga • ${cleanTime}`;

    const monthsUz = ['Yanvar', 'Fevral', 'Mart', 'Aprel', 'May', 'Iyun', 'Iyul', 'Avgust', 'Sentyabr', 'Oktyabr', 'Noyabr', 'Dekabr'];
    return `${day}-${monthsUz[eventDate.getMonth()]} • ${cleanTime}`;
  }

  async function loadPublicEvents() {
    const listEl = document.getElementById('events-list');
    if (!listEl) return;

    const headers = {};
    if (tg?.initData) headers['X-Telegram-Init-Data'] = tg.initData;

    try {
      const res = await fetch('/api/events', { headers });
      if (!res.ok) throw new Error('Yuklab bo‘lmadi');
      const events = await res.json();

      if (!events || events.length === 0) {
        listEl.innerHTML = '<div class="empty-state-text">Hozircha rejalashtirilgan tadbirlar yo‘q.</div>';
        return;
      }

      listEl.innerHTML = events.map(ev => {
        const dateDisplay = formatEventDateTime(ev.eventDate, ev.eventTime);
        let tagClass = 'tag-zoom';
        let tagLabel = 'ZOOM DARSI';
        if (ev.eventType === 'Webinar') {
          tagClass = 'tag-webinar';
          tagLabel = 'VEBINAR';
        } else if (ev.eventType === 'Live') {
          tagClass = 'tag-live';
          tagLabel = 'JONLI EFIR';
        }

        let actionBtn = '';
        if (ev.isLiveNow) {
          actionBtn = `<button class="event-btn btn-live-now" data-action="join" data-link="${encodeURIComponent(ev.link)}">🚀 Darsga kirish (Havola)</button>`;
        } else if (ev.isRegistered) {
          actionBtn = '<button class="event-btn btn-registered" disabled>✅ Yozilgansiz</button>';
        } else {
          actionBtn = `<button class="event-btn btn-register" data-action="register" data-id="${ev.id}">✍️ Qatnashish (Yozilish)</button>`;
        }

        return `
          <div class="event-card" data-event-id="${ev.id}">
            <div class="event-top">
              <span class="event-tag ${tagClass}">${tagLabel}</span>
              <span class="event-time">${dateDisplay}</span>
            </div>
            <h4 class="event-title">${escapeHtml(ev.title)}</h4>
            ${ev.description ? `<p class="event-desc">${escapeHtml(ev.description)}</p>` : ''}
            ${actionBtn}
          </div>
        `;
      }).join('');

      listEl.querySelectorAll('[data-action="join"]').forEach(btn => {
        btn.addEventListener('click', (e) => {
          e.stopPropagation();
          triggerHaptic('medium');
          const link = decodeURIComponent(btn.getAttribute('data-link'));
          if (tg?.openLink) {
            tg.openLink(link);
          } else {
            window.open(link, '_blank');
          }
        });
      });

      listEl.querySelectorAll('[data-action="register"]').forEach(btn => {
        btn.addEventListener('click', (e) => {
          e.stopPropagation();
          const id = parseInt(btn.getAttribute('data-id'), 10);
          registerForEvent(id);
        });
      });

    } catch (err) {
      console.error('loadPublicEvents error:', err);
      listEl.innerHTML = '<div class="empty-state-text">Tadbirlarni yuklashda xatolik yuz berdi.</div>';
    }
  }

  async function registerForEvent(eventId) {
    if (!tg?.initData) {
      notify('⚠️ Telegram orqali ro‘yxatdan o‘tish zarur.');
      return;
    }

    triggerHaptic('medium');
    try {
      const res = await fetch('/api/events/register', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'X-Telegram-Init-Data': tg.initData
        },
        body: JSON.stringify({
          initData: tg.initData,
          eventId: eventId
        })
      });

      const data = await res.json();
      if (res.ok && data.success) {
        triggerHaptic('heavy');
        notify(data.message || 'Siz tadbir uchun muvaffaqiyatli yozib qo‘yildingiz!');
        loadPublicEvents();
      } else {
        notify(data.message || 'Tadbirga yozilishda xatolik yuz berdi.');
      }
    } catch (err) {
      notify('❌ Server bilan bog‘lanishda xatolik yuz berdi.');
    }
  }

  async function loadAdminEvents(search = '') {
    const listEl = document.getElementById('admin-events-list');
    const countEl = document.getElementById('events-count');
    if (!listEl) return;

    const headers = {};
    if (tg?.initData) headers['X-Telegram-Init-Data'] = tg.initData;

    try {
      const url = search ? `/api/events/admin?search=${encodeURIComponent(search)}` : '/api/events/admin';
      const res = await fetch(url, { headers });
      if (!res.ok) return;

      const events = await res.json();
      cachedAdminEvents = events || [];

      if (countEl) countEl.textContent = `${events.length} ta`;

      if (!events || events.length === 0) {
        listEl.innerHTML = `<div class="empty-state-text">${search ? 'Mos keladigan tadbir topilmadi.' : 'Hozircha e‘lon qilingan tadbirlar yo‘q.'}</div>`;
      } else {
        listEl.innerHTML = events.map(ev => {
          let tagClass = 'tag-zoom';
          let tagLabel = 'Zoom da';
          if (ev.eventType === 'Webinar') {
            tagClass = 'tag-webinar';
            tagLabel = 'Vebinar';
          } else if (ev.eventType === 'Live') {
            tagClass = 'tag-live';
            tagLabel = 'Jonli efir';
          }

          const dateDisplay = formatEventDateTime(ev.eventDate, ev.eventTime);
          const isEditingClass = (editingEventId === ev.id) ? 'is-editing' : '';

          return `
            <div class="crud-item ${isEditingClass}" data-event-id="${ev.id}">
              <div class="crud-item-info">
                <div>
                  <strong>${escapeHtml(ev.title)}</strong>
                  <span class="event-tag ${tagClass}" style="margin-left:6px;font-size:9px;">${tagLabel}</span>
                  <span class="badge-attendees">👥 ${ev.registeredCount} ta</span>
                </div>
                <small>${dateDisplay} • ${ev.link ? escapeHtml(ev.link) : 'Havola kiritilmagan'}</small>
              </div>
              <div class="crud-actions">
                <button type="button" class="action-btn-sm btn-delete" data-delete-id="${ev.id}" title="O‘chirish">🗑</button>
              </div>
            </div>
          `;
        }).join('');

        listEl.querySelectorAll('.crud-item').forEach(item => {
          item.addEventListener('click', (e) => {
            if (e.target.closest('.btn-delete')) return;
            const id = parseInt(item.getAttribute('data-event-id'), 10);
            const ev = cachedAdminEvents.find(x => x.id === id);
            if (ev) startEditEvent(ev);
          });
        });

        listEl.querySelectorAll('.btn-delete').forEach(btn => {
          btn.addEventListener('click', (e) => {
            e.stopPropagation();
            const id = parseInt(btn.getAttribute('data-delete-id'), 10);
            deleteEvent(id);
          });
        });
      }

      loadTotalParticipantsCount();

    } catch (err) {
      console.error('loadAdminEvents error:', err);
    }
  }

  async function loadTotalParticipantsCount() {
    const totalCountEl = document.getElementById('event-total-participants-count');
    if (!totalCountEl) return;

    const headers = {};
    if (tg?.initData) headers['X-Telegram-Init-Data'] = tg.initData;

    try {
      const res = await fetch('/api/events/participants', { headers });
      if (res.ok) {
        const data = await res.json();
        totalCountEl.textContent = data.totalCount || 0;
      }
    } catch (e) {}
  }

  async function openParticipantsModal(eventId = null) {
    const modal = document.getElementById('participants-modal');
    const listWrap = document.getElementById('participants-list-wrap');
    const filterSelect = document.getElementById('select-participant-event-filter');
    const subtitleEl = document.getElementById('modal-participants-subtitle');
    if (!modal || !listWrap) return;

    modal.classList.remove('hidden');
    listWrap.innerHTML = '<div class="empty-state-text">Qatnashuvchilar yuklanmoqda...</div>';

    if (filterSelect) {
      filterSelect.innerHTML = '<option value="">Barcha tadbirlar bo‘yicha</option>' +
        cachedAdminEvents.map(ev => `<option value="${ev.id}" ${eventId == ev.id ? 'selected' : ''}>${escapeHtml(ev.title)}</option>`).join('');
    }

    const headers = {};
    if (tg?.initData) headers['X-Telegram-Init-Data'] = tg.initData;

    try {
      const url = eventId ? `/api/events/participants?eventId=${eventId}` : '/api/events/participants';
      const res = await fetch(url, { headers });
      if (!res.ok) throw new Error('Yuklab bo‘lmadi');
      const data = await res.json();

      if (subtitleEl) {
        subtitleEl.textContent = `Jami ro‘yxatdan o‘tganlar: ${data.totalCount || 0} ta`;
      }

      if (!data.participants || data.participants.length === 0) {
        listWrap.innerHTML = '<div class="empty-state-text">Ushbu tadbirga hali hech kim yozilmagan.</div>';
        return;
      }

      listWrap.innerHTML = data.participants.map(p => {
        const name = p.fullName || `Foydalanuvchi #${p.telegramId}`;
        const username = p.username ? `@${p.username}` : `ID: ${p.telegramId}`;
        const date = new Date(p.registeredAt);
        const timeStr = `${date.getDate().toString().padStart(2, '0')}.${(date.getMonth() + 1).toString().padStart(2, '0')} ${date.getHours().toString().padStart(2, '0')}:${date.getMinutes().toString().padStart(2, '0')}`;

        return `
          <div class="participant-item">
            <div class="participant-user-info">
              <span class="participant-name">${escapeHtml(name)}</span>
              <span class="participant-username">${escapeHtml(username)}</span>
            </div>
            <div class="participant-event-meta">
              <span class="participant-event-title">${escapeHtml(p.eventTitle)}</span>
              <span class="participant-time">${timeStr}</span>
            </div>
          </div>
        `;
      }).join('');

    } catch (err) {
      listWrap.innerHTML = '<div class="empty-state-text">Ma‘lumotlarni yuklashda xatolik yuz berdi.</div>';
    }
  }

  function closeParticipantsModal() {
    document.getElementById('participants-modal')?.classList.add('hidden');
  }

  function startEditEvent(ev) {
    editingEventId = ev.id;
    document.getElementById('inp-event-title').value = ev.title || '';
    document.getElementById('inp-event-type').value = ev.eventType || 'Zoom';
    document.getElementById('inp-event-date').value = ev.eventDate || '';
    document.getElementById('inp-event-time').value = ev.eventTime || '20:00';
    document.getElementById('inp-event-desc').value = ev.description || '';
    document.getElementById('inp-event-link').value = ev.link || '';

    const saveBtn = document.getElementById('btn-save-event');
    if (saveBtn) saveBtn.textContent = '💾 O‘zgarishlarni saqlash';

    const cancelBtn = document.getElementById('btn-cancel-edit-event');
    if (cancelBtn) cancelBtn.classList.remove('hidden');

    const badge = document.getElementById('event-form-badge');
    if (badge) badge.textContent = 'Tahrirlash';

    document.getElementById('inp-event-title')?.focus();
    triggerHaptic('light');
  }

  function cancelEditEvent() {
    editingEventId = null;
    document.getElementById('inp-event-title').value = '';
    document.getElementById('inp-event-type').value = 'Zoom';
    document.getElementById('inp-event-date').value = '';
    document.getElementById('inp-event-time').value = '20:00';
    document.getElementById('inp-event-desc').value = '';
    document.getElementById('inp-event-link').value = '';

    const saveBtn = document.getElementById('btn-save-event');
    if (saveBtn) saveBtn.textContent = '📢 E‘lon qilish';

    const cancelBtn = document.getElementById('btn-cancel-edit-event');
    if (cancelBtn) cancelBtn.classList.add('hidden');

    const badge = document.getElementById('event-form-badge');
    if (badge) badge.textContent = 'E‘lon';

    document.querySelectorAll('#admin-events-list .crud-item').forEach(el => el.classList.remove('is-editing'));
  }

  async function saveEvent() {
    const title = document.getElementById('inp-event-title')?.value.trim();
    const type = document.getElementById('inp-event-type')?.value || 'Zoom';
    const date = document.getElementById('inp-event-date')?.value;
    const time = document.getElementById('inp-event-time')?.value || '20:00';
    const desc = document.getElementById('inp-event-desc')?.value.trim();
    const link = document.getElementById('inp-event-link')?.value.trim();

    if (!title || !date || !time || !link) {
      notify('⚠️ Iltimos, dars mavzusi, sana, vaqt va havolani to‘liq kiriting!');
      return;
    }

    triggerHaptic('heavy');
    const headers = { 'Content-Type': 'application/json' };
    if (tg?.initData) headers['X-Telegram-Init-Data'] = tg.initData;

    const payload = {
      initData: tg?.initData || '',
      title: title,
      description: desc || null,
      eventType: type,
      eventDate: date,
      eventTime: time,
      link: link
    };

    try {
      if (editingEventId) {
        payload.isActive = true;
        const res = await fetch(`/api/events/${editingEventId}`, {
          method: 'PUT',
          headers: headers,
          body: JSON.stringify(payload)
        });

        if (res.ok) {
          notify(`✅ "${title}" tadbiri muvaffaqiyatli yangilandi!`);
          cancelEditEvent();
          loadAdminEvents(document.getElementById('inp-search-events')?.value.trim() || '');
          loadPublicEvents();
        } else {
          const err = await res.json().catch(() => ({}));
          notify(`⚠️ Xatolik: ${err.message || 'Tadbirni yangilab bo‘lmadi'}`);
        }
      } else {
        const res = await fetch('/api/events', {
          method: 'POST',
          headers: headers,
          body: JSON.stringify(payload)
        });

        if (res.ok) {
          notify(`✅ "${title}" tadbiri muvaffaqiyatli e‘lon qilindi!`);
          cancelEditEvent();
          loadAdminEvents(document.getElementById('inp-search-events')?.value.trim() || '');
          loadPublicEvents();
        } else {
          const err = await res.json().catch(() => ({}));
          notify(`⚠️ Xatolik: ${err.message || 'Tadbirni e‘lon qilib bo‘lmadi'}`);
        }
      }
    } catch (err) {
      notify('❌ Server bilan bog‘lanishda xatolik yuz berdi.');
    }
  }

  async function deleteEvent(id) {
    if (!confirm('Haqiqatan ham ushbu tadbirni o‘chirmoqchimisiz?')) return;

    triggerHaptic('heavy');
    const headers = {};
    if (tg?.initData) headers['X-Telegram-Init-Data'] = tg.initData;

    try {
      const res = await fetch(`/api/events/${id}`, {
        method: 'DELETE',
        headers: headers
      });

      if (res.ok) {
        notify('🗑 Tadbir muvaffaqiyatli o‘chirildi!');
        if (editingEventId === id) cancelEditEvent();
        loadAdminEvents(document.getElementById('inp-search-events')?.value.trim() || '');
        loadPublicEvents();
      } else {
        const err = await res.json().catch(() => ({}));
        notify(`⚠️ Xatolik: ${err.message || 'O‘chirib bo‘lmadi'}`);
      }
    } catch (err) {
      notify('❌ Server bilan bog‘lanishda xatolik yuz berdi.');
    }
  }

  // Tadbirlar tugmalari va qidiruv hodisalari
  document.getElementById('btn-save-event')?.addEventListener('click', saveEvent);
  document.getElementById('btn-cancel-edit-event')?.addEventListener('click', cancelEditEvent);

  const inpSearchEvents = document.getElementById('inp-search-events');
  document.getElementById('btn-search-events')?.addEventListener('click', () => {
    loadAdminEvents(inpSearchEvents?.value.trim() || '');
  });

  inpSearchEvents?.addEventListener('input', () => {
    loadAdminEvents(inpSearchEvents.value.trim());
  });

  document.getElementById('btn-show-participants')?.addEventListener('click', () => {
    openParticipantsModal();
  });

  document.getElementById('btn-close-participants')?.addEventListener('click', closeParticipantsModal);
  document.getElementById('participants-backdrop')?.addEventListener('click', closeParticipantsModal);

  document.getElementById('select-participant-event-filter')?.addEventListener('change', (e) => {
    openParticipantsModal(e.target.value ? parseInt(e.target.value, 10) : null);
  });

  // Dastlabki yuklash
  loadPublicEvents();

});
