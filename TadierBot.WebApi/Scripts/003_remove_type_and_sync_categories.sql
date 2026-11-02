-- ========================================================
-- 003_remove_type_and_sync_categories.sql
-- 1. Resources jadvalidan IX_Resources_Type indeksi va Type ustunini olib tashlash
-- 2. Kategoriyalarni faqat siz belgilagan 4 tasiga keltirish:
--    - Kitoblar
--    - Videolar
--    - Maqolalar
--    - Audio materiallar
-- ========================================================

-- 1.1 IX_Resources_Type indeksini o'chirish
IF EXISTS (
    SELECT 1 
    FROM sys.indexes 
    WHERE name = 'IX_Resources_Type' AND object_id = OBJECT_ID(N'dbo.Resources')
)
BEGIN
    DROP INDEX IX_Resources_Type ON dbo.Resources;
    PRINT 'IX_Resources_Type indeksi olib tashlandi.';
END
GO

-- 1.2 Type ustuniga bog'langan default constraint bo'lsa o'chirish
DECLARE @ConstraintName NVARCHAR(200);
SELECT @ConstraintName = d.name
FROM sys.default_constraints d
JOIN sys.columns c ON d.parent_column_id = c.column_id AND d.parent_object_id = c.object_id
WHERE d.parent_object_id = OBJECT_ID(N'dbo.Resources') AND c.name = 'Type';

IF @ConstraintName IS NOT NULL
BEGIN
    EXEC('ALTER TABLE dbo.Resources DROP CONSTRAINT ' + @ConstraintName);
    PRINT 'Type ustuniga bog''langan constraint olib tashlandi.';
END
GO

-- 1.3 Resources jadvalidan Type ustunini olib tashlash
IF EXISTS (
    SELECT 1 
    FROM sys.columns 
    WHERE object_id = OBJECT_ID(N'dbo.Resources') AND name = 'Type'
)
BEGIN
    ALTER TABLE dbo.Resources DROP COLUMN [Type];
    PRINT 'Resources.Type ustuni muvaffaqiyatli olib tashlandi.';
END
GO

-- 2. Kategoriyalarni tartibga keltirish (Faqat 4 ta asosiy kategoriya)

-- Agar "Testlar" qo'shilib qolgan bo'lsa, uni o'chirish
IF EXISTS (SELECT 1 FROM Categories WHERE Name = N'Testlar')
BEGIN
    DELETE FROM Categories WHERE Name = N'Testlar';
    PRINT 'Ortiqcha "Testlar" kategoriyasi o''chirildi.';
END

-- 'Dasturlash' -> 'Audio materiallar'
IF EXISTS (SELECT 1 FROM Categories WHERE Name = N'Dasturlash')
BEGIN
    UPDATE Categories 
    SET Name = N'Audio materiallar', 
        Description = N'Foydali audio darslar, podkastlar va materiallar'
    WHERE Name = N'Dasturlash';
END

-- 'Video darslar' -> 'Videolar'
IF EXISTS (SELECT 1 FROM Categories WHERE Name = N'Video darslar')
BEGIN
    UPDATE Categories 
    SET Name = N'Videolar', 
        Description = N'Video darsliklar va ko''rgazmali qo''llanmalar'
    WHERE Name = N'Video darslar';
END

-- Kitoblar
IF NOT EXISTS (SELECT 1 FROM Categories WHERE Name = N'Kitoblar')
BEGIN
    INSERT INTO Categories (Name, Description, CreatedAt) 
    VALUES (N'Kitoblar', N'Elektron va bosma kitoblar, qo''llanmalar', SYSUTCDATETIME());
END

-- Videolar
IF NOT EXISTS (SELECT 1 FROM Categories WHERE Name = N'Videolar')
BEGIN
    INSERT INTO Categories (Name, Description, CreatedAt) 
    VALUES (N'Videolar', N'Video darsliklar va ko''rgazmali qo''llanmalar', SYSUTCDATETIME());
END

-- Maqolalar
IF NOT EXISTS (SELECT 1 FROM Categories WHERE Name = N'Maqolalar')
BEGIN
    INSERT INTO Categories (Name, Description, CreatedAt) 
    VALUES (N'Maqolalar', N'Foydali ilmiy va amaliy maqolalar', SYSUTCDATETIME());
END

-- Audio materiallar
IF NOT EXISTS (SELECT 1 FROM Categories WHERE Name = N'Audio materiallar')
BEGIN
    INSERT INTO Categories (Name, Description, CreatedAt) 
    VALUES (N'Audio materiallar', N'Foydali audio darslar, podkastlar va materiallar', SYSUTCDATETIME());
END
GO

PRINT 'Kategoriyalar muvaffaqiyatli tartibga keltirildi.';
