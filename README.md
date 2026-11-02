# 📚 TadierBot — Ta'limiy Manbalar Telegram Boti

**TadierBot** — foydalanuvchilarga sifatli ta'limiy materiallar (kitoblar, video darsliklar, audio mashqlar va maqolalar)ni qulay qidirish, saralash va o'rganish imkoniyatini taqdim etuvchi zamonaviy Telegram bot.

Loyiha yuqori unumdorlikka ega **ASP.NET Core (.NET 10)** texnologiyasi, **Microsoft SQL Server** va **Dapper ORM** asosida Clean Architecture tamoyillariga muvofiq ishlab chiqilgan.

---

## 🚀 Asosiy imkoniyatlar

### 👤 Foydalanuvchilar uchun:
* 📚 **Manbalar bo'limi:** Eng so'nggi yuklangan materiallarni inline paginatsiya orqali sahifama-sahifa ko'rish.
* 🗂 **Kategoriyalar bo'yicha saralash:**
  * 📚 **Kitoblar:** Darsliklar, lug'atlar va PDF qo'llanmalar.
  * 🎬 **Videolar:** Video darslar va ko'rgazmali qo'llanmalar.
  * 🎧 **Audio materiallar:** Eshitish (Hören) mashqlari va dars audiolari.
  * 📝 **Maqolalar:** Grammatika qoidalari va so'z boyligi.
* 🌐 **Til bo'yicha filtrlash:** Materiallarni tillar (`O'zbek`, `Rus`, `Ingliz`) kesimida saralash.
* 🔍 **Tezkor qidiruv:** Kalit so'zlar bo'yicha manbalarni tezkor topish.
* ℹ️ **Yordam bo'limi:** Botdan foydalanish bo'yicha qo'llanma va admin bilan bog'lanish havolasi.

### ⚙️ Administratorlar uchun (Admin Panel):
* ➕ **Material qo'shish:** Bosqichma-bosqich (FSM) orqali yangi manbalarni kiritish.
* ✏️ **Tahrirlash va o'chirish:** Mavjud materiallar ma'lumotlarini yangilash yoki o'chirish.
* 👥 **Foydalanuvchilarni boshqarish:** Foydalanuvchilar ro'yxati, ularni qidirish va bloklash/blokdan chiqarish.
* 📊 **Statistika:** Faol foydalanuvchilar, umumiy manbalar soni va eng ko'p ko'rilgan materiallar tahlili.
* 📢 **Ommaviy xabar (Broadcast):** Barcha bot foydalanuvchilariga bir vaqtda e'lon yoki xabarnoma yuborish.

---

## 🛠 Texnologik stak

* **Til va Platforma:** C# 14 / .NET 10 (ASP.NET Core Web API)
* **Telegram API:** [Telegram.Bot](https://github.com/TelegramBots/Telegram.Bot) (v22+)
* **Database & ORM:** Microsoft SQL Server, Dapper (High-performance micro-ORM)
* **Kesh:** MemoryCache
* **Ishlash mexanizmi:** 24/7 Long Polling (`BackgroundService`)
* **Arxitektura:** Clean Architecture / Repository & Service Pattern

---

## 📁 Loyiha strukturasi

```text
TadierBot.WebApi/
├── BackgroundServices/        # 24/7 Telegram Long Polling foni xizmati
├── Common/                    # Global konstantalar, modellar va yordamchilar
├── Configurations/            # Bot konfiguratsiyasi modellari
├── Controllers/               # Webhook va Web API controllerlari
├── Data/                      # Baza ulanish fabrikasi (IDbConnectionFactory)
├── DTOs/                      # Ma'lumot uzatish obyektlari va holatlar (FSM)
├── Extensions/                # Dependency Injection va bot kengaytmalari
├── Helpers/                   # Kartochkalar, matn va sanani formatlovchilar
├── Keyboards/                 # Reply va Inline klaviatura menyulari
├── Models/                    # Baza entitiylari (User, Resource, Category, ...)
├── Repositories/              # Ma'lumotlar bazasi bilan ishlash qatlami (Dapper)
├── Scripts/                   # SQL migratsiya va ma'lumotlarni to'ldirish skriptlari
├── Services/                  # Asosiy biznes-mantiq qatlami
├── appsettings.json           # Konfiguratsiya fayli (shablon)
└── Program.cs                 # Ilova kirish nuqtasi va servislar registratsiyasi
```

---

## ⚙️ Loyihani mahalliy muhitda ishga tushirish (Local Setup)

### 1. Talablar
* [.NET 10 SDK](https://dotnet.microsoft.com/)
* [SQL Server](https://www.microsoft.com/en-us/sql-server) (yoki LocalDB)

### 2. Repozitoriyni klonlash
```bash
git clone https://github.com/<username>/TadierBot.git
cd TadierBot
```

### 3. Konfiguratsiya
`TadierBot.WebApi/appsettings.json` faylini ochib, ma'lumotlarni kiriting:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=localhost;Database=TadierBotDb;Trusted_Connection=True;TrustServerCertificate=True;"
  },
  "BotConfiguration": {
    "BotToken": "SIZNING_TELEGRAM_BOT_TOKENINGIZ"
  }
}
```

### 4. Ma'lumotlar bazasini yaratish
`TadierBot.WebApi/Scripts/` papkasidagi skriptlarni ketma-ket bazangizda ishga tushiring:
1. `001_initial_tables.sql` — jadvallarni yaratish.
2. `004_insert_kitoblar.sql` — kitoblar to'plami.
3. `005_insert_videolar.sql` — video darsliklar to'plami.
4. `006_insert_audiolar.sql` — audio mashqlar.
5. `007_insert_maqolalar.sql` — maqolalar va grammatika qoidalari.

### 5. Dasturni ishga tushirish
```bash
dotnet restore
dotnet build
dotnet run --project TadierBot.WebApi
```
