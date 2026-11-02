-- ========================================================
-- Script: 001_initial_tables.sql
-- Database: Microsoft SQL Server (T-SQL)
-- Description: TadierBotDb bazasi, jadvallari va indekslari
-- ========================================================

-- 0. Database yaratish (agar mavjud bo'lmasa) va unga ulanish
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'TadierBotDb')
BEGIN
    CREATE DATABASE TadierBotDb;
END
GO

USE TadierBotDb;
GO

-- 1. Users jadvali (Foydalanuvchilar)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Users')
BEGIN
    CREATE TABLE Users (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        TelegramId BIGINT NOT NULL UNIQUE,
        FullName NVARCHAR(255) NULL,
        Username NVARCHAR(255) NULL,
        LanguageCode NVARCHAR(10) NOT NULL DEFAULT 'uz',
        IsBanned BIT NOT NULL DEFAULT 0,
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
        LastActiveAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
    );

    CREATE NONCLUSTERED INDEX IX_Users_TelegramId ON Users(TelegramId);
END
GO

-- 2. Admins jadvali (Adminlar)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Admins')
BEGIN
    CREATE TABLE Admins (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        TelegramId BIGINT NOT NULL UNIQUE,
        FullName NVARCHAR(255) NULL,
        Username NVARCHAR(255) NULL,
        Role NVARCHAR(50) NOT NULL DEFAULT 'Admin',
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
    );

    CREATE NONCLUSTERED INDEX IX_Admins_TelegramId ON Admins(TelegramId);
END
GO

-- 3. Categories jadvali (Kategoriyalar)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Categories')
BEGIN
    CREATE TABLE Categories (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Name NVARCHAR(150) NOT NULL,
        Description NVARCHAR(500) NULL,
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
    );
END
GO

-- 4. Resources jadvali (Manbalar / Kanal postlari)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Resources')
BEGIN
    CREATE TABLE Resources (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Title NVARCHAR(255) NOT NULL,
        Description NVARCHAR(MAX) NULL,
        Url NVARCHAR(1000) NOT NULL,
        Type NVARCHAR(50) NOT NULL, -- 'Book', 'Video', 'Article'
        Language NVARCHAR(10) NOT NULL DEFAULT 'uz',
        CategoryId INT NOT NULL,
        AddedByAdminId INT NULL,
        TelegramChannelId NVARCHAR(100) NULL, -- Masalan kanal username yoki ID
        MessageId INT NULL,                   -- Kanaldagi post ID raqami
        ViewsCount INT NOT NULL DEFAULT 0,
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
        UpdatedAt DATETIME2 NULL,

        CONSTRAINT FK_Resources_Categories FOREIGN KEY (CategoryId) 
            REFERENCES Categories(Id) ON DELETE CASCADE,
        CONSTRAINT FK_Resources_Admins FOREIGN KEY (AddedByAdminId) 
            REFERENCES Admins(Id) ON DELETE SET NULL
    );

    CREATE NONCLUSTERED INDEX IX_Resources_CategoryId ON Resources(CategoryId);
    CREATE NONCLUSTERED INDEX IX_Resources_Type ON Resources(Type);
    CREATE NONCLUSTERED INDEX IX_Resources_ViewsCount ON Resources(ViewsCount DESC);
END
GO

-- 5. UserFavorites jadvali (Sevimlilar)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'UserFavorites')
BEGIN
    CREATE TABLE UserFavorites (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        UserId INT NOT NULL,
        ResourceId INT NOT NULL,
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

        CONSTRAINT FK_UserFavorites_Users FOREIGN KEY (UserId) 
            REFERENCES Users(Id) ON DELETE CASCADE,
        CONSTRAINT FK_UserFavorites_Resources FOREIGN KEY (ResourceId) 
            REFERENCES Resources(Id) ON DELETE CASCADE,
        CONSTRAINT UQ_User_Resource UNIQUE (UserId, ResourceId)
    );

    CREATE NONCLUSTERED INDEX IX_UserFavorites_UserId ON UserFavorites(UserId);
END
GO

-- 6. SearchHistories jadvali (Qidiruv tarixi va statistika uchun)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'SearchHistories')
BEGIN
    CREATE TABLE SearchHistories (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        UserId INT NOT NULL,
        Query NVARCHAR(255) NOT NULL,
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

        CONSTRAINT FK_SearchHistories_Users FOREIGN KEY (UserId) 
            REFERENCES Users(Id) ON DELETE CASCADE
    );

    CREATE NONCLUSTERED INDEX IX_SearchHistories_UserId ON SearchHistories(UserId);
END
GO

-- ========================================================
-- Boshlang'ich ma'lumotlar (Seed Data)
-- ========================================================
IF NOT EXISTS (SELECT 1 FROM Categories)
BEGIN
    INSERT INTO Categories (Name, Description) VALUES 
    (N'Dasturlash', N'Dasturlash tillari va texnologiyalari bo''yicha qo''llanmalar'),
    (N'Kitoblar', N'Elektron va audio kitoblar'),
    (N'Maqolalar', N'Foydali ilmiy va amaliy maqolalar'),
    (N'Video darslar', N'Video qo''llanmalar va darsliklar');
END
GO
