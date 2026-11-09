-- 013_rename_audiourl_to_fileurl_in_quiz_passages.sql
-- QuizPassages jadvalidagi AudioUrl ustunini FileUrl ga o'zgartirish (audio va barcha matn hujjatlari uchun umumiy fayl URL manzili)

IF EXISTS (
    SELECT 1 FROM sys.columns 
    WHERE object_id = OBJECT_ID('QuizPassages') AND name = 'AudioUrl'
) AND NOT EXISTS (
    SELECT 1 FROM sys.columns 
    WHERE object_id = OBJECT_ID('QuizPassages') AND name = 'FileUrl'
)
BEGIN
    EXEC sp_rename 'QuizPassages.AudioUrl', 'FileUrl', 'COLUMN';
END
GO
