-- ========================================================
-- Script: 008_create_words_and_progress_tables.sql
-- Database: Microsoft SQL Server (T-SQL)
-- Description: So'z trenajyori (Flashcards) va foydalanuvchi
--              progressi uchun jadvallar va indekslar
-- ========================================================

USE TadierBotDb;
GO

-- 1. Words jadvali (So'zlar va Flesh-kartochkalar lug'ati)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Words')
BEGIN
    CREATE TABLE Words (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Article NVARCHAR(10) NULL,              -- 'der', 'die', 'das' yoki fe'l/sifatlar uchun NULL
        GermanWord NVARCHAR(150) NOT NULL,       -- Nemischa so'z (masalan: 'Herausforderung')
        UzbekTranslation NVARCHAR(255) NOT NULL, -- O'zbekcha tarjimasi ('sinov, chaqiriq')
        ExampleSentenceDe NVARCHAR(500) NULL,    -- Misol gap nemischa
        ExampleSentenceUz NVARCHAR(500) NULL,    -- Misol gap o'zbekcha
        [Level] NVARCHAR(10) NOT NULL DEFAULT 'A1',-- 'A1', 'A2', 'B1', 'B2', 'C1'
        Category NVARCHAR(100) NULL,             -- Mavzu (masalan: 'Kundalik', 'Oila', 'Sayohat', 'Ish')
        AudioUrl NVARCHAR(500) NULL,             -- Agar maxsus audio fayl bo'lsa
        IsDailyWord BIT NOT NULL DEFAULT 0,      -- Kun so'zi (Wort des Tages) sifatida belgilash
        DailyWordDate DATE NULL,                 -- Aynan qaysi kunga belgilangani (ixtiyoriy)
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
        UpdatedAt DATETIME2 NULL
    );

    -- Qidiruv va daraja bo'yicha tezkor filtrlash indekslari
    CREATE NONCLUSTERED INDEX IX_Words_Level ON Words(Level);
    CREATE NONCLUSTERED INDEX IX_Words_Category ON Words(Category);
    CREATE NONCLUSTERED INDEX IX_Words_IsDailyWord ON Words(IsDailyWord);
    CREATE NONCLUSTERED INDEX IX_Words_GermanWord ON Words(GermanWord);
END
GO

-- 2. UserWordProgress jadvali (Foydalanuvchining shaxsiy o'rganish holati)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'UserWordProgress')
BEGIN
    CREATE TABLE UserWordProgress (
        Id BIGINT IDENTITY(1,1) PRIMARY KEY,
        TelegramId BIGINT NOT NULL,              -- Foydalanuvchi Telegram ID raqami
        WordId INT NOT NULL,                     -- Qaysi so'z o'rganilmoqda
        [Status] NVARCHAR(20) NOT NULL DEFAULT 'Learning', -- 'Learning' (O'rganilmoqda), 'Learned' (Yodlandi)
        CorrectCount INT NOT NULL DEFAULT 0,     -- Necha marta to'g'ri topildi
        IncorrectCount INT NOT NULL DEFAULT 0,   -- Necha marta xato qilindi
        LastReviewedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
        NextReviewAt DATETIME2 NULL,             -- Interval takrorlash (Spaced Repetition) uchun
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

        -- Tashqi kalitlar (Foreign Keys)
        CONSTRAINT FK_UserWordProgress_Words FOREIGN KEY (WordId) 
            REFERENCES Words(Id) ON DELETE CASCADE,
        CONSTRAINT FK_UserWordProgress_Users FOREIGN KEY (TelegramId) 
            REFERENCES Users(TelegramId) ON DELETE CASCADE,

        -- Bitta foydalanuvchi bitta so'z uchun faqat 1 ta yozuvga ega bo'ladi
        CONSTRAINT UQ_UserWordProgress_User_Word UNIQUE (TelegramId, WordId)
    );

    -- Foydalanuvchi bo'yicha tezkor o'qish indekslari
    CREATE NONCLUSTERED INDEX IX_UserWordProgress_TelegramId ON UserWordProgress(TelegramId);
    CREATE NONCLUSTERED INDEX IX_UserWordProgress_Status ON UserWordProgress(TelegramId, Status);
END
GO

-- 3. Users jadvaliga Mini App uchun Ball (Score) va Streak ustunlarini xavfsiz qo'shish
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Users') AND name = 'Score')
BEGIN
    ALTER TABLE Users ADD Score INT NOT NULL DEFAULT 0;
END
GO

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Users') AND name = 'StreakDays')
BEGIN
    ALTER TABLE Users ADD StreakDays INT NOT NULL DEFAULT 0;
END
GO

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Users') AND name = 'LastStreakDate')
BEGIN
    ALTER TABLE Users ADD LastStreakDate DATE NULL;
END
GO

-- 4. Boshlang'ich sinov so'zlari (Seed Data)
IF NOT EXISTS (SELECT 1 FROM Words)
BEGIN
    INSERT INTO Words (Article, GermanWord, UzbekTranslation, ExampleSentenceDe, ExampleSentenceUz, Level, Category, IsDailyWord, DailyWordDate)
    VALUES
    ('die', 'Herausforderung', 'sinov, qiyinchilik, chaqiriq', 'Deutsch lernen ist eine schöne Herausforderung!', 'Nemis tilini o''rganish ajoyib bir chaqiriqdir!', 'A2', 'Kundalik', 1, CAST(GETDATE() AS DATE)),
    ('der', 'Apfel', 'olma', 'Ich esse jeden Morgen einen frischen Apfel.', 'Men har tong yangi olma yeyman.', 'A1', 'Oziq-ovqat', 0, NULL),
    ('das', 'Buch', 'kitob', 'Dieses Buch ist sehr interessant und nützlich.', 'Bu kitob juda qiziq va foydali.', 'A1', 'Ta''lim', 0, NULL),
    ('die', 'Zeit', 'vaqt', 'Ich habe heute leider keine Zeit.', 'Afsuski, bugun mening vaqtim yo''q.', 'A1', 'Kundalik', 0, NULL),
    ('der', 'Tisch', 'stol', 'Das Buch liegt auf dem Tisch.', 'Kitob stol ustida yotibdi.', 'A1', 'Uy-ro''zg''or', 0, NULL),
    (NULL,  'lernen', 'o''rganmoq, ta''lim olmoq', 'Wir lernen jeden Tag neue deutsche Wörter.', 'Biz har kuni yangi nemischa so''zlarni o''rganamiz.', 'A1', 'Fe''llar', 0, NULL),
    (NULL,  'arbeiten', 'ishlamoq', 'Mein Vater arbeitet in einem großen Krankenhaus.', 'Mening otam katta shifoxonada ishlaydi.', 'A1', 'Fe''llar', 0, NULL),
    ('die', 'Entscheidung', 'qaror, xulosa', 'Das war eine sehr wichtige Entscheidung.', 'Bu juda muhim qaror edi.', 'B1', 'Ish', 0, NULL),
    ('die', 'Möglichkeit', 'imkoniyat', 'Deutschland bietet viele Möglichkeiten für Studenten.', 'Germaniya talabalar uchun ko''plab imkoniyatlar yaratadi.', 'B1', 'Ta''lim', 0, NULL),
    (NULL,  'erfolgreich', 'muvaffaqiyatli', 'Sie hat die B1 Prüfung erfolgreich bestanden.', 'U B1 imtihonini muvaffaqiyatli topshirdi.', 'A2', 'Sifatlar', 0, NULL);
END
GO

