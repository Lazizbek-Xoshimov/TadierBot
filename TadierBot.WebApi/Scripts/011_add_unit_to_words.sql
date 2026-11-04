-- ========================================================
-- Script: 011_add_unit_to_words.sql
-- Database: Microsoft SQL Server (T-SQL)
-- Description: Words jadvaliga Unit (dars / bo'lim) ustunini
--              va uning indeksini qo'shish
-- ========================================================

USE TadierBotDb;
GO

-- 1. Words jadvaliga Unit ustunini xavfsiz qo'shish (ixtiyoriy / NULL)
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Words') AND name = 'Unit')
BEGIN
    ALTER TABLE Words ADD Unit INT NULL;
END
GO

-- 2. Daraja va Unit bo'yicha tezkor filtrlash va tartiblash indeksi
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID('Words') AND name = 'IX_Words_Level_Unit')
BEGIN
    CREATE NONCLUSTERED INDEX IX_Words_Level_Unit ON Words([Level], [Unit]);
END
GO

