-- ========================================================
-- Script: 009_add_level_to_users.sql
-- Database: Microsoft SQL Server (T-SQL)
-- Description: Users jadvaliga o'quvchi darajasi (Level) ustunini qo'shish
-- ========================================================

USE TadierBotDb;
GO

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Users') AND name = 'Level')
BEGIN
    ALTER TABLE Users ADD Level NVARCHAR(10) NOT NULL DEFAULT 'A1';
END
GO

