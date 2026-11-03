/**
 * TadierBot Mini App — Asosiy JavaScript
 * Telegram WebApp SDK integratsiyasi
 */

document.addEventListener('DOMContentLoaded', () => {
  // 1. Telegram WebApp obyektini tekshirish
  const tg = window.Telegram?.WebApp;

  if (tg) {
    // Ilova yuklanganini Telegramga bildirish
    tg.ready();
    // Oynani to'liq ekranga yoyish
    tg.expand();

    // Telegram foydalanuvchisi ma'lumotlarini olish
    const user = tg.initDataUnsafe?.user;
    if (user) {
      const displayName = [user.first_name, user.last_name].filter(Boolean).join(' ') || user.username || 'Foydalanuvchi';
      document.getElementById('user-name').textContent = displayName;

      // Agar rasm mavjud bo'lsa
      if (user.photo_url) {
        const avatarContainer = document.getElementById('user-avatar');
        avatarContainer.innerHTML = `<img src="${user.photo_url}" alt="${displayName}">`;
      } else {
        const initial = (user.first_name || 'U')[0].toUpperCase();
        document.getElementById('avatar-fallback').textContent = initial;
      }
    }

    // Platforma ma'lumotini yangilash
    const platformEl = document.getElementById('platform-info');
    if (platformEl) {
      platformEl.textContent = `Platforma: Telegram (${tg.platform || 'unknown'}) | Versiya: ${tg.version || '6.0+'}`;
    }
  }

  // 2. Pastki navigatsiya (Tab Switching)
  const navItems = document.querySelectorAll('.nav-item');
  const tabPanes = document.querySelectorAll('.tab-pane');

  navItems.forEach((btn) => {
    btn.addEventListener('click', () => {
      const targetTabId = btn.getAttribute('data-tab');

      // Tugmalar faolligini yangilash
      navItems.forEach((b) => b.classList.remove('active'));
      btn.classList.add('active');

      // Bo'limlarni ko'rsatish/yashirish
      tabPanes.forEach((pane) => {
        if (pane.id === targetTabId) {
          pane.classList.add('active');
        } else {
          pane.classList.remove('active');
        }
      });

      // Agar Telegram haptic feedback mavjud bo'lsa (yengil tebranish)
      if (tg?.HapticFeedback) {
        tg.HapticFeedback.impactOccurred('light');
      }
    });
  });

  // 3. Test harakati (Kelgusida backend/Telegramga ma'lumot uzatish misoli)
  const actionBtn = document.getElementById('btn-action');
  if (actionBtn) {
    actionBtn.addEventListener('click', () => {
      if (tg) {
        tg.showAlert('🎉 Tadier Mini App muvaffaqiyatli ishlayapti!');
      } else {
        alert('Tadier Mini App brauzerda ishlamoqda.');
      }
    });
  }
});

