-- ========================================================
-- Script: 012_create_quiz_tables.sql
-- Database: Microsoft SQL Server (T-SQL)
-- Description: Daraja testi (Reading & Listening) uchun
--              materiallar, savollar va natijalar jadvallari
-- ========================================================

USE TadierBotDb;
GO

-- 1. QuizPassages (O'qish matnlari va Audio materiallar jadvali)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'QuizPassages')
BEGIN
    CREATE TABLE QuizPassages (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        [Type] NVARCHAR(20) NOT NULL,            -- 'Reading' (Matn) yoki 'Listening' (Audio)
        Title NVARCHAR(255) NOT NULL,            -- Sarlavha (masalan: 'A1: Mein Tag' yoki 'B1: Radiointerview')
        Content NVARCHAR(MAX) NULL,              -- Reading uchun matn
        AudioUrl NVARCHAR(500) NULL,             -- Listening uchun audio fayl manzili (masalan: '/audio/test1.mp3')
        [Level] NVARCHAR(10) NOT NULL DEFAULT 'A1', -- 'A1', 'A2', 'B1', 'B2'
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
    );

    CREATE NONCLUSTERED INDEX IX_QuizPassages_Type_Level ON QuizPassages([Type], [Level]);
END
GO

-- 2. QuizQuestions (Matn yoki Audioga bog'langan test savollari)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'QuizQuestions')
BEGIN
    CREATE TABLE QuizQuestions (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        PassageId INT NOT NULL,                  -- Qaysi matn yoki audioga tegishliligi (Foreign Key)
        QuestionText NVARCHAR(MAX) NOT NULL,     -- Savol matni (masalan: 'Wo wohnt Lukas?')
        OptionA NVARCHAR(255) NOT NULL,          -- A varianti (majburiy)
        OptionB NVARCHAR(255) NOT NULL,          -- B varianti (majburiy)
        OptionC NVARCHAR(255) NULL,              -- C varianti (ixtiyoriy)
        OptionD NVARCHAR(255) NULL,              -- D varianti (ixtiyoriy)
        CorrectOption INT NOT NULL,              -- To'g'ri javob: 0=A, 1=B, 2=C, 3=D
        OrderIndex INT NOT NULL DEFAULT 1,       -- Shu material ichidagi savol tartibi (1, 2, 3...)
        CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

        CONSTRAINT FK_QuizQuestions_QuizPassages 
            FOREIGN KEY (PassageId) REFERENCES QuizPassages(Id) ON DELETE CASCADE
    );

    CREATE NONCLUSTERED INDEX IX_QuizQuestions_PassageId ON QuizQuestions(PassageId);
END
GO

-- 3. UserQuizAttempts (Foydalanuvchilarning test topshirish tarixi)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'UserQuizAttempts')
BEGIN
    CREATE TABLE UserQuizAttempts (
        Id BIGINT IDENTITY(1,1) PRIMARY KEY,
        TelegramId BIGINT NOT NULL,              -- Test topshirgan foydalanuvchi
        CorrectAnswersCount INT NOT NULL,        -- Nechta to'g'ri topdi (masalan: 14)
        TotalQuestionsCount INT NOT NULL DEFAULT 20, -- Jami savollar soni (20 ta)
        ScoreEarned INT NOT NULL,                -- Berilgan ball (masalan: 70)
        AssignedLevel NVARCHAR(10) NOT NULL,     -- Aniqlangan darajasi ('A1', 'A2', 'B1', 'B2')
        CompletedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
    );

    CREATE NONCLUSTERED INDEX IX_UserQuizAttempts_TelegramId ON UserQuizAttempts(TelegramId);
END
GO

