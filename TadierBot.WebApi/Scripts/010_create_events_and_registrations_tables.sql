-- ========================================================
-- Script: 010_create_events_and_registrations_tables.sql
-- Database: Microsoft SQL Server (T-SQL)
-- Description: Tadbirlar (Jonli darslar, vebinarlar) va 
--              foydalanuvchilar ro'yxatdan o'tishi jadvallari
-- ========================================================

USE TadierBotDb;
GO

-- 1. Events jadvali (Jonli darslar, vebinarlar va tadbirlar)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Events')
BEGIN
    CREATE TABLE Events (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Title NVARCHAR(200) NOT NULL,               -- Dars mavzusi / Nomi (masalan: 'A1: 50 ta muhim fe''l')
        [Description] NVARCHAR(1000) NULL,          -- Tavsif / Spiker (masalan: 'Dinara ustoz bilan jonli amaliyot...')
        EventType NVARCHAR(50) NOT NULL,            -- Turi: 'Zoom', 'Webinar', 'Live'
        EventDate DATE NOT NULL,                    -- Tadbir o'tkaziladigan sana (kalendar)
        EventTime TIME(0) NOT NULL,                 -- Boshlanish vaqti (masalan: 20:00:00)
        Link NVARCHAR(500) NOT NULL,                -- Havola (Zoom, YouTube yoki Telegram jonli efir linki)
        IsActive BIT NOT NULL DEFAULT 1,            -- Faol yoki bekor qilinganligi
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
        UpdatedAt DATETIME2 NULL
    );

    -- Tezkor saralash va filtrlash uchun indekslar
    CREATE NONCLUSTERED INDEX IX_Events_DateTime ON Events(EventDate, EventTime);
    CREATE NONCLUSTERED INDEX IX_Events_IsActive ON Events(IsActive);
    CREATE NONCLUSTERED INDEX IX_Events_EventType ON Events(EventType);
END
GO

-- 2. EventRegistrations jadvali (Foydalanuvchilarning tadbirga yozilishi)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'EventRegistrations')
BEGIN
    CREATE TABLE EventRegistrations (
        Id BIGINT IDENTITY(1,1) PRIMARY KEY,
        EventId INT NOT NULL,                       -- Qaysi tadbirga yozilgan
        TelegramId BIGINT NOT NULL,                  -- Foydalanuvchi Telegram ID raqami
        RegisteredAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
        
        -- Bitta foydalanuvchi ayni tadbirga faqat bir marta yozila oladi
        CONSTRAINT UQ_EventRegistrations_Event_User UNIQUE (EventId, TelegramId),
        CONSTRAINT FK_EventRegistrations_Events FOREIGN KEY (EventId) 
            REFERENCES Events(Id) ON DELETE CASCADE
    );

    -- Foydalanuvchi va tadbirlar bo'yicha indekslar
    CREATE NONCLUSTERED INDEX IX_EventRegistrations_TelegramId ON EventRegistrations(TelegramId);
    CREATE NONCLUSTERED INDEX IX_EventRegistrations_EventId ON EventRegistrations(EventId);
END
GO

-- 3. Boshlang'ich namunaviy tadbirlar (agar jadval bo'sh bo'lsa)
IF NOT EXISTS (SELECT 1 FROM Events)
BEGIN
    INSERT INTO Events (Title, [Description], EventType, EventDate, EventTime, Link, IsActive)
    VALUES 
    (
        N'A1: Nemis tilida eng ko''p ishlatiladigan 50 ta fe''l',
        N'Dinara ustoz bilan jonli amaliyot va savol-javoblar.',
        'Zoom',
        CAST(GETDATE() AS DATE),
        '20:00:00',
        'https://zoom.us/j/1234567890',
        1
    ),
    (
        N'Goethe A1/A2 imtihoniga 1 oyda tayyorlanish',
        N'Imtihon sirlari, Sprechen va Schreiben qismlarini topshirish strategiyasi.',
        'Webinar',
        DATEADD(DAY, 2, CAST(GETDATE() AS DATE)),
        '19:30:00',
        'https://t.me/tadier_live',
        1
    );
END
GO

