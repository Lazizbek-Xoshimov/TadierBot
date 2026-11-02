-- =============================================================
-- Audio materiallar va eshitish mashqlari
-- Kategoriya: Audio materiallar
-- Kanal: t.me/DinaraDeutsch
-- Materiallar soni: 10
-- =============================================================

SET NOCOUNT ON;

PRINT N'Boshlandi: Materiallar saqlanmoqda...';

IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6674')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Xayrli kech barchaga!', N'Xayrli kech barchaga! 

Yo’q bo’lib qoldim bilaman. Lekin evaziga sizlarga manfaatli mini podkastcha bilan keldim.

Audio”Nemis tilini o‘rganayotganlarning 3 katta xatosi” haqida 

Eshiting va savolimga javob bering: 

– Siz qaysi xatoni qilyapsiz/qilgansiz? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6674', N'uz', Id, NULL, N'@DinaraDeutsch', 6674, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Audio materiallar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Xayrli kech barchaga!', Description = N'Xayrli kech barchaga! 

Yo’q bo’lib qoldim bilaman. Lekin evaziga sizlarga manfaatli mini podkastcha bilan keldim.

Audio”Nemis tilini o‘rganayotganlarning 3 katta xatosi” haqida 

Eshiting va savolimga javob bering: 

– Siz qaysi xatoni qilyapsiz/qilgansiz? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6674';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6563')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bilmadim, aytsammi-yo‘qmi deb ikkilanib yozayapman buni sizlarga', N'Bilmadim, aytsammi-yo‘qmi deb ikkilanib yozayapman buni sizlarga 

Bu yerda shaxsiy fikrlarim, o‘zim bilan bo‘ladigan kulgili holatlar, ba’zan esa hech kimga aytmaydigan gaplarimni ham bo‘lishib boraman. 

— Bu 1-son edi, xoxlasela 2-sonini ham olib chiqaman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6563', N'uz', Id, NULL, N'@DinaraDeutsch', 6563, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Audio materiallar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bilmadim, aytsammi-yo‘qmi deb ikkilanib yozayapman buni sizlarga', Description = N'Bilmadim, aytsammi-yo‘qmi deb ikkilanib yozayapman buni sizlarga 

Bu yerda shaxsiy fikrlarim, o‘zim bilan bo‘ladigan kulgili holatlar, ba’zan esa hech kimga aytmaydigan gaplarimni ham bo‘lishib boraman. 

— Bu 1-son edi, xoxlasela 2-sonini ham olib chiqaman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6563';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6500')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Hayrli kun, hammaga', N'Hayrli kun, hammaga 

Bugun sizlar uchun kishilik olmoshlari (Personalpronomen) va eng muhim fe''llarning tuslanishi haqida gaplashamiz. 

— Bu mavzuni tushunib olsangiz, nemis tilida 2-darsni o''zidan bemalol gap tuza olasiz. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6500', N'uz', Id, NULL, N'@DinaraDeutsch', 6500, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Audio materiallar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Hayrli kun, hammaga', Description = N'Hayrli kun, hammaga 

Bugun sizlar uchun kishilik olmoshlari (Personalpronomen) va eng muhim fe''llarning tuslanishi haqida gaplashamiz. 

— Bu mavzuni tushunib olsangiz, nemis tilida 2-darsni o''zidan bemalol gap tuza olasiz. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6500';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6378')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Ko‘pchilik so‘rayapti: "Nega kurs o‘quvchilariga kitob ham berilyapti?"', N'Ko‘pchilik so‘rayapti: "Nega kurs o‘quvchilariga kitob ham berilyapti?" 

Sababi 

Birinchidan, kitobning o‘zi ham arzon emas. O‘quvchi kursga alohida to‘lov qilib, yana kitob uchun qo‘shimcha pul sarflashini xohlamadim. Shuning uchun kitob kurs narxining ichiga kiritilgan. 

Ikkinchidan, ko‘pchilik kitobni tejash uchun kichkina formatda, oq-qora qilib chiqaradi. Keyin u kitobni o‘qish ham, dars qilish ham yoqmay qoladi. Shu sabab kitoblarni katta formatda, rangli va sifatli qilib tayyorladik. 

— Dars qilish ham zavqliroq bo‘lsin, o‘quvchilarim bemalol foydalanishsin degan niyatda shunday qaror qildik. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6378', N'uz', Id, NULL, N'@DinaraDeutsch', 6378, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Audio materiallar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Ko‘pchilik so‘rayapti: "Nega kurs o‘quvchilariga kitob ham berilyapti?"', Description = N'Ko‘pchilik so‘rayapti: "Nega kurs o‘quvchilariga kitob ham berilyapti?" 

Sababi 

Birinchidan, kitobning o‘zi ham arzon emas. O‘quvchi kursga alohida to‘lov qilib, yana kitob uchun qo‘shimcha pul sarflashini xohlamadim. Shuning uchun kitob kurs narxining ichiga kiritilgan. 

Ikkinchidan, ko‘pchilik kitobni tejash uchun kichkina formatda, oq-qora qilib chiqaradi. Keyin u kitobni o‘qish ham, dars qilish ham yoqmay qoladi. Shu sabab kitoblarni katta formatda, rangli va sifatli qilib tayyorladik. 

— Dars qilish ham zavqliroq bo‘lsin, o‘quvchilarim bemalol foydalanishsin degan niyatda shunday qaror qildik. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6378';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6265')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'minutlik ovozli xabar qoldirdim', N'7 minutlik ovozli xabar qoldirdim 

Ichida quyidagilar haqida gapirdim:

Motivation Brief nima?
 Nega uni yozish oson bo‘lmasligi kerak?
 Grant dasturlari odatda nimalarni qoplaydi?
 Motivation Brief yozishni osonlashtiradigan amaliy mashq

Agar kelajakda grant, konferensiya yoki xalqaro dasturlarga topshirishni reja qilayotgan bo‘lsangiz, eshitib qo‘yishni tavsiya qilaman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6265', N'uz', Id, NULL, N'@DinaraDeutsch', 6265, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Audio materiallar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'minutlik ovozli xabar qoldirdim', Description = N'7 minutlik ovozli xabar qoldirdim 

Ichida quyidagilar haqida gapirdim:

Motivation Brief nima?
 Nega uni yozish oson bo‘lmasligi kerak?
 Grant dasturlari odatda nimalarni qoplaydi?
 Motivation Brief yozishni osonlashtiradigan amaliy mashq

Agar kelajakda grant, konferensiya yoki xalqaro dasturlarga topshirishni reja qilayotgan bo‘lsangiz, eshitib qo‘yishni tavsiya qilaman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6265';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6195')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugungi ovozli xabar biroz boshqacharoq boʻldi', N'Bugungi ovozli xabar biroz boshqacharoq boʻldi 

Ichida men umuman maʼqullamaydigan xarakterlar haqida gapirdim. Balki baʼzi gaplarim sizga qattiqroq tegishi ham mumkin .

Lekin aynan shu fikrlash tarzi meni shu kungacha koʻp narsada oldinga olib chiqqan. Nega “qiynaldim”, “qila olmayapman” degan gaplarni yoqtirmasligimni ham tushuntirdim .

— 3 minut vaqt ajratib eshitib koʻring. Balki aynan shu audio sizni biroz oʻzgartirar. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6195', N'uz', Id, NULL, N'@DinaraDeutsch', 6195, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Audio materiallar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugungi ovozli xabar biroz boshqacharoq boʻldi', Description = N'Bugungi ovozli xabar biroz boshqacharoq boʻldi 

Ichida men umuman maʼqullamaydigan xarakterlar haqida gapirdim. Balki baʼzi gaplarim sizga qattiqroq tegishi ham mumkin .

Lekin aynan shu fikrlash tarzi meni shu kungacha koʻp narsada oldinga olib chiqqan. Nega “qiynaldim”, “qila olmayapman” degan gaplarni yoqtirmasligimni ham tushuntirdim .

— 3 minut vaqt ajratib eshitib koʻring. Balki aynan shu audio sizni biroz oʻzgartirar. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6195';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5901')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Javob bermasam, qayta-qayta eslataveringlar — Shuncha ishni orasida ba’zi narsalar yoddan ko‘tarilib ketadi-da baribir. Toʻgʻri...', N'Javob bermasam, qayta-qayta eslataveringlar — Shuncha ishni orasida ba’zi narsalar yoddan ko‘tarilib ketadi-da baribir. Toʻgʻri tushasizlar deb umid qilaman. Bu savolga esa hozir javob beraman. @DinaraDeutsch', N'https://t.me/DinaraDeutsch/5901', N'uz', Id, NULL, N'@DinaraDeutsch', 5901, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Audio materiallar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Javob bermasam, qayta-qayta eslataveringlar — Shuncha ishni orasida ba’zi narsalar yoddan ko‘tarilib ketadi-da baribir. Toʻgʻri...', Description = N'Javob bermasam, qayta-qayta eslataveringlar — Shuncha ishni orasida ba’zi narsalar yoddan ko‘tarilib ketadi-da baribir. Toʻgʻri tushasizlar deb umid qilaman. Bu savolga esa hozir javob beraman. @DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5901';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5955')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A2 dan B1 ga o‘tish eng qiyin bosqich', N'A2 dan B1 ga o‘tish eng qiyin bosqich 

. Grammatikani “bilaman” emas, “ishlataman” darajaga olib chiqing.

. Har kuni o‘zingiz bilan gaplashing.

. So‘z yodlashda sinonim + antonim bilan o‘rganing

. Har kuni kichkina yozma mashq qiling, “Bugun nima qildim”, “Mening rejam”, "Mening kunim" mavzularida

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5955', N'uz', Id, NULL, N'@DinaraDeutsch', 5955, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Audio materiallar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A2 dan B1 ga o‘tish eng qiyin bosqich', Description = N'A2 dan B1 ga o‘tish eng qiyin bosqich 

. Grammatikani “bilaman” emas, “ishlataman” darajaga olib chiqing.

. Har kuni o‘zingiz bilan gaplashing.

. So‘z yodlashda sinonim + antonim bilan o‘rganing

. Har kuni kichkina yozma mashq qiling, “Bugun nima qildim”, “Mening rejam”, "Mening kunim" mavzularida

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5955';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5794')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kitobdan olgan xulosalarimning bir qismini sizlar bilan bo‘lishmoqchiman', N'Kitobdan olgan xulosalarimning bir qismini sizlar bilan bo‘lishmoqchiman 

5-bob

Iloji boricha muhim joylarini qoldirmaslikka harakat qildim. Misollar bilan tushuntirishga ham urindim.

Oxirigacha eshitib chiqing, konspekt qilib oling va albatta amalda qo‘llab ko‘ring.

Bu bilimlar hammamizga kerak, deb hisoblayman.

Davomini eshitishni xoxlasangiz — " "

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5794', N'uz', Id, NULL, N'@DinaraDeutsch', 5794, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Audio materiallar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kitobdan olgan xulosalarimning bir qismini sizlar bilan bo‘lishmoqchiman', Description = N'Kitobdan olgan xulosalarimning bir qismini sizlar bilan bo‘lishmoqchiman 

5-bob

Iloji boricha muhim joylarini qoldirmaslikka harakat qildim. Misollar bilan tushuntirishga ham urindim.

Oxirigacha eshitib chiqing, konspekt qilib oling va albatta amalda qo‘llab ko‘ring.

Bu bilimlar hammamizga kerak, deb hisoblayman.

Davomini eshitishni xoxlasangiz — " "

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5794';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5543')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kitobdan olgan xulosalarimning bir qismini sizlar bilan bo‘lishmoqchiman', N'Kitobdan olgan xulosalarimning bir qismini sizlar bilan bo‘lishmoqchiman 

4-bob

Iloji boricha muhim joylarini qoldirmaslikka harakat qildim. Misollar bilan tushuntirishga ham urindim.

Oxirigacha eshitib chiqing, konspekt qilib oling va albatta amalda qo‘llab ko‘ring.

Bu bilimlar hammamizga kerak, deb hisoblayman.

Davomini eshitishni xoxlasangiz — " "

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5543', N'uz', Id, NULL, N'@DinaraDeutsch', 5543, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Audio materiallar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kitobdan olgan xulosalarimning bir qismini sizlar bilan bo‘lishmoqchiman', Description = N'Kitobdan olgan xulosalarimning bir qismini sizlar bilan bo‘lishmoqchiman 

4-bob

Iloji boricha muhim joylarini qoldirmaslikka harakat qildim. Misollar bilan tushuntirishga ham urindim.

Oxirigacha eshitib chiqing, konspekt qilib oling va albatta amalda qo‘llab ko‘ring.

Bu bilimlar hammamizga kerak, deb hisoblayman.

Davomini eshitishni xoxlasangiz — " "

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5543';
END;
GO

PRINT N'Tugadi: Materiallar muvaffaqiyatli saqlandi.';
GO