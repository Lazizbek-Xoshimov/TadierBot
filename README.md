# 🇩🇪 TadierBot — Nemis Tili Ta'lim Platformasi

> 🤖 **Telegram Bot:** [@Tadier_bot](https://t.me/Tadier_bot)  
> 🌐 **Mini App:** Telegram ichida ishlovchi interaktiv veb-ilova

**TadierBot** — nemis tilini samarali o‘rganish uchun mo‘ljallangan zamonaviy ta’lim platformasi. O‘quvchilarga til darajasini aniqlash, so‘z boyligini oshirish, o‘qish (Lesen) va tinglash (Hören) ko‘nikmalarini rivojlantirish imkoniyatini beradi.

---

## 🚀 Asosiy imkoniyatlar

### 👤 O'quvchilar uchun:
* 🎓 **Darajani aniqlash testi:** A1–B2 darajalar bo‘yicha 20 ta savoldan iborat test (Lesen va Hören bo‘limlari).
* 📖 **Lesen (O‘qish):** Nemischa matn va kitoblarni ilova ichida to‘liq o‘qish hamda bot orqali shaxsiy chatga yuklab olish.
* 🎧 **Hören (Tinglash):** Audio dialoglarni o‘rnatilgan pleyer orqali tinglash va bot orqali `.mp3` fayl sifatida yuklab olish.
* 🗂 **So‘z trenajyori:** Nemischa so‘zlarni darajalar (A1–B2) bo‘yicha flesh-kartochkalar va talaffuz (TTS) orqali yodlash.
* 🏆 **Reyting va Profil:** Natijalar, testlar tarixi va kun so‘zi.

### ⚙️ Boshqaruv (Admin):
* 📝 **Materiallar yuklash:** Reading (PDF, Word, TXT) va Listening (MP3, WAV) fayllarini boshqarish.
* ❓ **Testlar boshqaruvi:** Savollar, javob variantlari va to‘g‘ri javoblarni kiritish/tahrirlash.
* 📚 **Lug‘at bazasi:** Trenajyor uchun so‘zlar, tarjimalar va misollarni boshqarish (CRUD).
* 📅 **Tadbirlar va E’lonlar:** Vebinar va darslarni e’lon qilish hamda ommaviy xabarnoma (Broadcast) yuborish.

---

## 🛠 Texnologiyalar

* **Backend:** C# / .NET 10 (ASP.NET Core Web API)
* **Telegram:** [Telegram.Bot](https://github.com/TelegramBots/Telegram.Bot) (v22+)
* **Ma'lumotlar bazasi:** Microsoft SQL Server, Dapper ORM
* **Frontend:** HTML5, CSS3, JavaScript (Telegram WebApp)
* **Deploy:** Vercel (Frontend) + RunASP.NET (Backend)

---

## 📁 Loyiha strukturasi

```text
TadierBot/
├── app/                           # Telegram Mini App (Frontend)
│   ├── index.html                 # Asosiy sahifa va modallar
│   ├── app.js                     # TMA mantiqi va pleyerlar
│   ├── style.css                  # Dizayn va stillar
│   └── vercel.json                # Vercel proksi sozlamalari
│
└── TadierBot.WebApi/              # Backend (.NET 10 Web API)
    ├── Controllers/               # API endpointlar
    ├── Services/                  # Asosiy biznes-mantiq
    ├── Repositories/              # Baza bilan ishlash (Dapper)
    ├── BackgroundServices/        # Telegram Bot xizmati
    ├── wwwroot/                   # Serverdagi fayllar (/texts, /audio)
    └── Scripts/                   # SQL skriptlar
```

---

## ⚙️ Mahalliy muhitda ishga tushirish (Local Setup)

1. **Repozitoriyni klonlash:**
   ```bash
   git clone https://github.com/username/TadierBot.git
   cd TadierBot
   ```

2. **Sozlamalar:**  
   `TadierBot.WebApi/appsettings.json` faylida baza ulanishi (`DefaultConnection`) va `BotToken`ni kiriting.

3. **Baza migratsiyasi:**  
   `TadierBot.WebApi/Scripts/` papkasidagi SQL skriptlarni bazada bajaring.

4. **Ishga tushirish:**
   ```bash
   dotnet restore
   dotnet build
   dotnet run --project TadierBot.WebApi
   ```
