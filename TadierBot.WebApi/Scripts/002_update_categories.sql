-- ========================================================
-- 002_update_categories.sql
-- Kategoriyalarni yangilash skripti:
-- 1. Kitoblar
-- 2. Videolar
-- 3. Maqolalar
-- 4. Audio materiallar
-- ========================================================

-- 1. 'Dasturlash' kategoriyasini 'Audio materiallar' ga o'zgartirish
IF EXISTS (SELECT 1 FROM Categories WHERE Name = N'Dasturlash')
BEGIN
    UPDATE Categories 
    SET Name = N'Audio materiallar', 
        Description = N'Foydali audio darslar, podkastlar va materiallar'
    WHERE Name = N'Dasturlash';
END

-- 2. 'Video darslar' kategoriyasini 'Videolar' ga o'zgartirish
IF EXISTS (SELECT 1 FROM Categories WHERE Name = N'Video darslar')
BEGIN
    UPDATE Categories 
    SET Name = N'Videolar', 
        Description = N'Video darsliklar va ko''rgazmali qo''llanmalar'
    WHERE Name = N'Video darslar';
END

-- 3. 'Kitoblar' mavjudligini ta'minlash
IF NOT EXISTS (SELECT 1 FROM Categories WHERE Name = N'Kitoblar')
BEGIN
    INSERT INTO Categories (Name, Description, CreatedAt) 
    VALUES (N'Kitoblar', N'Elektron va bosma kitoblar, qo''llanmalar', SYSUTCDATETIME());
END

-- 4. 'Maqolalar' mavjudligini ta'minlash
IF NOT EXISTS (SELECT 1 FROM Categories WHERE Name = N'Maqolalar')
BEGIN
    INSERT INTO Categories (Name, Description, CreatedAt) 
    VALUES (N'Maqolalar', N'Foydali ilmiy va amaliy maqolalar', SYSUTCDATETIME());
END

-- 5. 'Videolar' mavjudligini ta'minlash (agar yuqoridagi yangilanish bo'lmagan bo'lsa)
IF NOT EXISTS (SELECT 1 FROM Categories WHERE Name = N'Videolar')
BEGIN
    INSERT INTO Categories (Name, Description, CreatedAt) 
    VALUES (N'Videolar', N'Video darsliklar va ko''rgazmali qo''llanmalar', SYSUTCDATETIME());
END

-- 6. 'Audio materiallar' mavjudligini ta'minlash (agar yuqoridagi yangilanish bo'lmagan bo'lsa)
IF NOT EXISTS (SELECT 1 FROM Categories WHERE Name = N'Audio materiallar')
BEGIN
    INSERT INTO Categories (Name, Description, CreatedAt) 
    VALUES (N'Audio materiallar', N'Foydali audio darslar, podkastlar va materiallar', SYSUTCDATETIME());
END

