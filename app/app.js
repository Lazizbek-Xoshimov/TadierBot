/**
 * TadierBot Mini App — Asosiy JavaScript
 * Telegram WebApp SDK, Tab Navigatsiyasi va Admin Boshqaruvi
 */

document.addEventListener('DOMContentLoaded', () => {
  // 1. Telegram WebApp obyektini sozlash
  const tg = window.Telegram?.WebApp;

  // Xabarlarni chiqarish yordamchi funksiyasi
  function notify(msg) {
    if (tg?.showAlert) {
      tg.showAlert(msg);
    } else {
      alert(msg);
    }
  }

  // Yordamchi Haptic Feedback
  function triggerHaptic(style = 'light') {
    if (tg?.HapticFeedback) {
      tg.HapticFeedback.impactOccurred(style);
    }
  }

  if (tg) {
    tg.ready();
    tg.expand();

    // Foydalanuvchi ma'lumotlarini o'qish
    const user = tg.initDataUnsafe?.user;
    if (user) {
      const displayName = [user.first_name, user.last_name].filter(Boolean).join(' ') || user.username || 'Foydalanuvchi';
      
      // Header va Profil nomlarini to'ldirish
      document.getElementById('user-name').textContent = displayName;
      document.getElementById('prof-name').textContent = displayName;
      const myRankName = document.getElementById('rank-my-name');
      if (myRankName) myRankName.textContent = `Siz (${user.first_name || displayName})`;

      // Avatarni o'rnatish
      if (user.photo_url) {
        document.getElementById('user-avatar').innerHTML = `<img src="${user.photo_url}" alt="${displayName}">`;
        document.getElementById('prof-avatar').innerHTML = `<img src="${user.photo_url}" style="width:100%;height:100%;border-radius:50%;object-fit:cover;" alt="${displayName}">`;
      } else {
        const initial = (user.first_name || 'U')[0].toUpperCase();
        document.getElementById('avatar-fallback').textContent = initial;
      }
    }
  }

  // 2. Vercel Reverse Proxy orqali Backend bilan xavfsiz bog'lanish va rolni aniqlash
  async function loadUserProfile() {
    const roleBadge = document.getElementById('user-role');
    const adminNavBtn = document.getElementById('nav-btn-admin');

    // Telegram orqali ochilganda initData ni tekshirish
    if (tg?.initData) {
      try {
        const response = await fetch('/api/user/profile', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ initData: tg.initData })
        });

        if (response.ok) {
          const data = await response.json();

          // 1-rasm: Ism ostidagi rolni yangilash (Admin / Foydalanuvchi)
          if (roleBadge) {
            roleBadge.textContent = data.role;
            roleBadge.classList.toggle('is-admin', data.isAdmin);
          }

          // 2-rasm: Admin bo'lsa 5-tugma "Boshqaruv" ochiladi, aks holda yashiriladi
          if (adminNavBtn) {
            adminNavBtn.classList.toggle('hidden', !data.isAdmin);
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
    }
  }

  loadUserProfile();

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
      triggerHaptic('heavy');
      notify(currentlyHidden ? '👑 Admin boshqaruv tugmasi yoqildi!' : '👤 Oddiy o‘quvchi rejimiga o‘tildi');
    }
  });


  // 3. Asosiy Tab Navigatsiyasi (Pastki menyu)
  const navItems = document.querySelectorAll('.nav-item');
  const tabPanes = document.querySelectorAll('.tab-pane');

  function switchTab(targetTabId) {
    navItems.forEach((btn) => {
      if (btn.getAttribute('data-tab') === targetTabId) {
        btn.classList.add('active');
      } else {
        btn.classList.remove('active');
      }
    });

    tabPanes.forEach((pane) => {
      if (pane.id === targetTabId) {
        pane.classList.add('active');
      } else {
        pane.classList.remove('active');
      }
    });

    triggerHaptic('light');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  navItems.forEach((btn) => {
    btn.addEventListener('click', () => {
      switchTab(btn.getAttribute('data-tab'));
    });
  });

  // Bosh sahifadagi 2x2 kartalardan tegishli harakatlar
  document.getElementById('card-open-tests')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('🎓 Placement Test: Nemis tili darajangizni aniqlash tizimi backend ulanishi bilan ishga tushadi!');
  });

  document.getElementById('card-open-cards')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('🗂 So‘z trenajyori: Flesh-kartalar orqali so‘z yodlash bo‘limi!');
  });

  document.getElementById('card-open-books')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('📚 Kutubxona: Botdagi 44 ta darslik va qo‘llanmalar katalogi!');
  });

  document.getElementById('card-open-audio')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('🎧 Hören (Audio): Nemischa audiolarni matn bilan birga tinglash pleyeri!');
  });

  // Tavsiya etiladigan kitoblar tugmalari
  document.getElementById('btn-read-grammar')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('📖 Nemis tili grammatikasi kitobi ochilmoqda...');
  });

  document.getElementById('btn-read-vocab')?.addEventListener('click', () => {
    triggerHaptic('medium');
    notify('📗 Start Deutsch A1 lug‘ati ochilmoqda...');
  });

  // Tadbirlar tugmalari
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

  // Shaxsiy kabinet tugmalari
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

  // Nemischa so'zni ovozli o'qish (Web Speech API)
  document.getElementById('btn-speak-daily')?.addEventListener('click', () => {
    triggerHaptic('light');
    if ('speechSynthesis' in window) {
      const utter = new SpeechSynthesisUtterance('die Herausforderung');
      utter.lang = 'de-DE';
      utter.rate = 0.85;
      window.speechSynthesis.speak(utter);
    }
  });


  // 4. Admin Boshqaruv Markazi (Subnav & CRUD)
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

  // 4.1. Admin: Yangi so'z saqlash
  document.getElementById('btn-save-word')?.addEventListener('click', () => {
    const article = document.getElementById('inp-word-article').value;
    const deWord = document.getElementById('inp-word-de').value.trim();
    const uzWord = document.getElementById('inp-word-uz').value.trim();
    const sampleDe = document.getElementById('inp-word-sample-de').value.trim();

    if (!deWord || !uzWord) {
      notify('⚠️ Iltimos, nemischa so‘z va tarjimasini kiriting!');
      return;
    }

    triggerHaptic('heavy');

    // Ro'yxatga qo'shib ko'rsatish
    const wordsList = document.getElementById('admin-words-list');
    const newWordItem = document.createElement('div');
    newWordItem.className = 'crud-item';
    const fullWord = article ? `${article} ${deWord}` : deWord;
    newWordItem.innerHTML = `
      <div class="crud-item-info">
        <strong>${fullWord}</strong> <span>— ${uzWord}</span>
        <small>${sampleDe || 'Misol gap kiritilmadi'}</small>
      </div>
      <div class="crud-actions">
        <button class="action-btn-sm btn-delete">🗑</button>
      </div>
    `;

    newWordItem.querySelector('.btn-delete').addEventListener('click', () => {
      newWordItem.remove();
      triggerHaptic('medium');
    });

    wordsList.prepend(newWordItem);

    // Maydonlarni tozalash
    document.getElementById('inp-word-de').value = '';
    document.getElementById('inp-word-uz').value = '';
    document.getElementById('inp-word-sample-de').value = '';
    document.getElementById('inp-word-sample-uz').value = '';

    notify(`✅ "${fullWord}" so‘zi muvaffaqiyatli saqlandi!`);
  });

  // 4.2. Admin: Yangi test savoli saqlash
  document.getElementById('btn-save-test')?.addEventListener('click', () => {
    const qText = document.getElementById('inp-test-question').value.trim();
    const opt0 = document.getElementById('inp-test-opt0').value.trim();

    if (!qText || !opt0) {
      notify('⚠️ Iltimos, savol matni va to‘g‘ri javob variantini kiriting!');
      return;
    }

    triggerHaptic('heavy');
    notify('✅ Test savoli muvaffaqiyatli saqlandi!');
    document.getElementById('inp-test-question').value = '';
    document.getElementById('inp-test-opt0').value = '';
  });

  // 4.3. Admin: Yangi tadbir e'lon qilish
  document.getElementById('btn-save-event')?.addEventListener('click', () => {
    const title = document.getElementById('inp-event-title').value.trim();
    if (!title) {
      notify('⚠️ Iltimos, dars yoki vebinar mavzusini kiriting!');
      return;
    }

    triggerHaptic('heavy');
    notify(`✅ "${title}" tadbiri muvaffaqiyatli e'lon qilindi!`);
    document.getElementById('inp-event-title').value = '';
  });
});
