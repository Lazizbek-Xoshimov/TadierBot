-- =============================================================
-- Kitoblar va qo'llanmalar
-- Kategoriya: Kitoblar
-- Kanal: t.me/DinaraDeutsch
-- Materiallar soni: 44
-- =============================================================

SET NOCOUNT ON;

PRINT N'Boshlandi: Materiallar saqlanmoqda...';

IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6737')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dars zapisi. Zapisda nemis tilini', N'Dars zapisi. Zapisda nemis tilini

- Nimadan boshlash 
 - Qayerdan boshlash 
 - Imtihonlar, imkoniyatlar haqida batafsil gapirganman. 

– Manfaatli bo’lsin! 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6737', N'uz', Id, NULL, N'@DinaraDeutsch', 6737, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dars zapisi. Zapisda nemis tilini', Description = N'Dars zapisi. Zapisda nemis tilini

- Nimadan boshlash 
 - Qayerdan boshlash 
 - Imtihonlar, imkoniyatlar haqida batafsil gapirganman. 

– Manfaatli bo’lsin! 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6737';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6613')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'BUGUNGI MAVZU: ARTIKELLAR', N'BUGUNGI MAVZU: ARTIKELLAR

Bugun der/die/das/ein/eine nima ekanini va ularning Kasus (kelishik) bo‘yicha qanday o‘zgarishini o‘rganamiz.

— Bu mavzu nemis tilining eng muhim grammatik mavzularidan biri. Yaxshi tushunib olsangiz, keyingi mavzular sizga ancha osonlashadi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6613', N'uz', Id, NULL, N'@DinaraDeutsch', 6613, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'BUGUNGI MAVZU: ARTIKELLAR', Description = N'BUGUNGI MAVZU: ARTIKELLAR

Bugun der/die/das/ein/eine nima ekanini va ularning Kasus (kelishik) bo‘yicha qanday o‘zgarishini o‘rganamiz.

— Bu mavzu nemis tilining eng muhim grammatik mavzularidan biri. Yaxshi tushunib olsangiz, keyingi mavzular sizga ancha osonlashadi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6613';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6618')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'SCHREIBEN & SPRECHEN UCHUN SHABLONLAR', N'SCHREIBEN & SPRECHEN UCHUN SHABLONLAR 

Sizlarga Schreiben va Sprechen’da ishlatish uchun tayyorlagan shablonlar (Redemittel) to‘plamini jo‘natyapman. Fayl orqali fikringizni nemis tilida aniq, tartibli va chiroyli ifodalash uchun kerakli iboralar bilan tanishishingiz mumkin.

— Saqlab qo‘ying, Sprechen va Schreiben’da bu shablonlardan juda ko‘p foydalanasiz. Ayniqsa, imtihonga tayyorgarlikda juda qo‘l keladi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6618', N'uz', Id, NULL, N'@DinaraDeutsch', 6618, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'SCHREIBEN & SPRECHEN UCHUN SHABLONLAR', Description = N'SCHREIBEN & SPRECHEN UCHUN SHABLONLAR 

Sizlarga Schreiben va Sprechen’da ishlatish uchun tayyorlagan shablonlar (Redemittel) to‘plamini jo‘natyapman. Fayl orqali fikringizni nemis tilida aniq, tartibli va chiroyli ifodalash uchun kerakli iboralar bilan tanishishingiz mumkin.

— Saqlab qo‘ying, Sprechen va Schreiben’da bu shablonlardan juda ko‘p foydalanasiz. Ayniqsa, imtihonga tayyorgarlikda juda qo‘l keladi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6618';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6629')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sizlarga A1 darajada eng ko‘p kerak bo‘ladigan so‘zlar jamlangan faylni jo‘natyapman. Lug‘atni mavzular bo‘yicha o‘rganib, yang...', N'Sizlarga A1 darajada eng ko‘p kerak bo‘ladigan so‘zlar jamlangan faylni jo‘natyapman. Lug‘atni mavzular bo‘yicha o‘rganib, yangi so‘zlarni muntazam takrorlab boring.

— Saqlab qo‘ying va bugunoq yodlashni boshlang 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6629', N'uz', Id, NULL, N'@DinaraDeutsch', 6629, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sizlarga A1 darajada eng ko‘p kerak bo‘ladigan so‘zlar jamlangan faylni jo‘natyapman. Lug‘atni mavzular bo‘yicha o‘rganib, yang...', Description = N'Sizlarga A1 darajada eng ko‘p kerak bo‘ladigan so‘zlar jamlangan faylni jo‘natyapman. Lug‘atni mavzular bo‘yicha o‘rganib, yangi so‘zlarni muntazam takrorlab boring.

— Saqlab qo‘ying va bugunoq yodlashni boshlang 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6629';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6635')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Jami 972 ta so‘zdan iborat', N'Jami 972 ta so‘zdan iborat
 A2 darajada sizga kerak bo‘ladigan asosiy va muhim lug‘atlarning barchasi jamlangan.

— Fayl orqali so‘z boyligingizni tizimli ravishda oshirib, A2 daraja uchun kerakli so‘zlarni o‘rganishingiz mumkin. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6635', N'uz', Id, NULL, N'@DinaraDeutsch', 6635, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Jami 972 ta so‘zdan iborat', Description = N'Jami 972 ta so‘zdan iborat
 A2 darajada sizga kerak bo‘ladigan asosiy va muhim lug‘atlarning barchasi jamlangan.

— Fayl orqali so‘z boyligingizni tizimli ravishda oshirib, A2 daraja uchun kerakli so‘zlarni o‘rganishingiz mumkin. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6635';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6591')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sprechen & Schreiben uchun foydali prezentatsiya', N'Sprechen & Schreiben uchun foydali prezentatsiya 

Sprechen va Schreiben bo‘yicha dars o‘tganimda ishlatgan prezentatsiyamni topib oldim. 

Ichida bir dunyo shablonlar bor!
Eng muhimi, aynan Sprechen’ingizni oshirish uchun bir nechta foydali yo‘nalishlar ham berilgan. 

Darajangizni oshirish va imtihonga tayyorlanayotgan bo‘lsangiz, albatta ko‘rib chiqing.

— Tanishib chiqing va reaksiya bosib qo‘ying. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6591', N'uz', Id, NULL, N'@DinaraDeutsch', 6591, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sprechen & Schreiben uchun foydali prezentatsiya', Description = N'Sprechen & Schreiben uchun foydali prezentatsiya 

Sprechen va Schreiben bo‘yicha dars o‘tganimda ishlatgan prezentatsiyamni topib oldim. 

Ichida bir dunyo shablonlar bor!
Eng muhimi, aynan Sprechen’ingizni oshirish uchun bir nechta foydali yo‘nalishlar ham berilgan. 

Darajangizni oshirish va imtihonga tayyorlanayotgan bo‘lsangiz, albatta ko‘rib chiqing.

— Tanishib chiqing va reaksiya bosib qo‘ying. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6591';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6597')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'SICH bilan ishlatiladigan fe’llar ro‘yxati', N'SICH bilan ishlatiladigan fe’llar ro‘yxati 

Nemis tilidagi sich olmoshi bilan ishlatiladigan fe’llar ro‘yxatini sizlarga jo‘natyapman. 

— Ushbu fayl orqali A1 darajadan B2 darajagacha bo‘lgan sich bilan ishlatiladigan fe’llar bilan tanishib, ularni bosqichma-bosqich o‘rganishingiz mumkin. 

— Bilaman: foydasi tegadigan fayl boʻldi 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6597', N'uz', Id, NULL, N'@DinaraDeutsch', 6597, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'SICH bilan ishlatiladigan fe’llar ro‘yxati', Description = N'SICH bilan ishlatiladigan fe’llar ro‘yxati 

Nemis tilidagi sich olmoshi bilan ishlatiladigan fe’llar ro‘yxatini sizlarga jo‘natyapman. 

— Ushbu fayl orqali A1 darajadan B2 darajagacha bo‘lgan sich bilan ishlatiladigan fe’llar bilan tanishib, ularni bosqichma-bosqich o‘rganishingiz mumkin. 

— Bilaman: foydasi tegadigan fayl boʻldi 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6597';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6605')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Ajraladigan old qo‘shimchali fe’llar', N'Ajraladigan old qo‘shimchali fe’llar

Sizlarga ajraladigan old qo‘shimchali fe’llar (trennbare Verben) ro‘yxatini jo‘natyapman. Fayl orqali A1 darajadan boshlab ajraladigan fe’llar bilan tanishib, ularni yodlab olishingiz mumkin.

﻿
— Saqlab qo‘ying, nemis tilida gapirish va yozishda bu fe’llar juda ko‘p ishlatiladi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6605', N'uz', Id, NULL, N'@DinaraDeutsch', 6605, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Ajraladigan old qo‘shimchali fe’llar', Description = N'Ajraladigan old qo‘shimchali fe’llar

Sizlarga ajraladigan old qo‘shimchali fe’llar (trennbare Verben) ro‘yxatini jo‘natyapman. Fayl orqali A1 darajadan boshlab ajraladigan fe’llar bilan tanishib, ularni yodlab olishingiz mumkin.

﻿
— Saqlab qo‘ying, nemis tilida gapirish va yozishda bu fe’llar juda ko‘p ishlatiladi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6605';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6546')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Einfach gut', N'Einfach gut 

Nemis tilini B1 darajada o‘rganish uchun qulay va tushunarli darslik. 

Unda:
 kundalik hayotga oid mavzular
 grammatika, o‘qish
 tinglab tushunish va gapirish mashqlari berilgan. 

— darajaga chiqish va nemis tilida erkinroq muloqot qilishni xohlaganlar uchun yaxshi tanlov. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6546', N'uz', Id, NULL, N'@DinaraDeutsch', 6546, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Einfach gut', Description = N'Einfach gut 

Nemis tilini B1 darajada o‘rganish uchun qulay va tushunarli darslik. 

Unda:
 kundalik hayotga oid mavzular
 grammatika, o‘qish
 tinglab tushunish va gapirish mashqlari berilgan. 

— darajaga chiqish va nemis tilida erkinroq muloqot qilishni xohlaganlar uchun yaxshi tanlov. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6546';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6552')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Goethe imtihonida tushgan Schreiben mavzulari', N'Goethe imtihonida tushgan Schreiben mavzulari

— Saqlab qo‘ying, B2 topshiradigan tanishlaringizga ham yuborib qo‘ying. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6552', N'uz', Id, NULL, N'@DinaraDeutsch', 6552, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Goethe imtihonida tushgan Schreiben mavzulari', Description = N'Goethe imtihonida tushgan Schreiben mavzulari

— Saqlab qo‘ying, B2 topshiradigan tanishlaringizga ham yuborib qo‘ying. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6552';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6553')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sizlar uchun og‘zaki imtihon (Sprechen) uchun eng kerakli mavzularni yig‘ib chiqdim', N'Sizlar uchun og‘zaki imtihon (Sprechen) uchun eng kerakli mavzularni yig‘ib chiqdim 

Bu ro‘yxatda Teil 1 va Teil 2 uchun eng ko‘p tushadigan mavzular tartibli qilib jamlangan. Tayyorlanish jarayonida sizga qulay bo‘lishi uchun hammasini bir joyga to‘pladim.

— Har bir mavzuga tayyor gaplar va fikrlar ishlab chiqsangiz, imtihonda ancha oson bo‘ladi .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6553', N'uz', Id, NULL, N'@DinaraDeutsch', 6553, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sizlar uchun og‘zaki imtihon (Sprechen) uchun eng kerakli mavzularni yig‘ib chiqdim', Description = N'Sizlar uchun og‘zaki imtihon (Sprechen) uchun eng kerakli mavzularni yig‘ib chiqdim 

Bu ro‘yxatda Teil 1 va Teil 2 uchun eng ko‘p tushadigan mavzular tartibli qilib jamlangan. Tayyorlanish jarayonida sizga qulay bo‘lishi uchun hammasini bir joyga to‘pladim.

— Har bir mavzuga tayyor gaplar va fikrlar ishlab chiqsangiz, imtihonda ancha oson bo‘ladi .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6553';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6577')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugungi darsda:', N'- 

Bugungi darsda:

Nemis tilidagi ikkinchi katta guruh — kuchli fe''llar bilan tanishamiz
 Siz kuchli fe''llarning kuchsiz fe''llardan nimasi bilan farq qilishini bilib olamiz
 Qanday holatlarda fe''l o''zagidagi unli tovush o''zgarishini va bu turdagi fe''llarni
to''g''ri tuslashni o''rganasiz

— Darsni o‘qib bo‘lgach, dars haqidagi fikringizni albatta yozib qoldiring . Keyingi darslarni ham kutila 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6577', N'uz', Id, NULL, N'@DinaraDeutsch', 6577, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugungi darsda:', Description = N'- 

Bugungi darsda:

Nemis tilidagi ikkinchi katta guruh — kuchli fe''llar bilan tanishamiz
 Siz kuchli fe''llarning kuchsiz fe''llardan nimasi bilan farq qilishini bilib olamiz
 Qanday holatlarda fe''l o''zagidagi unli tovush o''zgarishini va bu turdagi fe''llarni
to''g''ri tuslashni o''rganasiz

— Darsni o‘qib bo‘lgach, dars haqidagi fikringizni albatta yozib qoldiring . Keyingi darslarni ham kutila 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6577';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6504')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 daraja uchun 1-dars.pdf', N'A1 daraja uchun 1-dars.pdf', N'https://t.me/DinaraDeutsch/6504', N'uz', Id, NULL, N'@DinaraDeutsch', 6504, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 daraja uchun 1-dars.pdf', Description = N'A1 daraja uchun 1-dars.pdf'
    WHERE Url = N'https://t.me/DinaraDeutsch/6504';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6509')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun darsda', N'- 

Bugun darsda 

O''zagi ma''lum undosh harflarga tugaydigan maxsus kuchsiz fe''llarni to''g''ri tuslashni o''rganasiz

Hozirgi zamon (Präsens)da gaplar qanaqa tuzilishini bilib olasiz

— Darsni o‘qib bo‘lgach, dars haqidagi fikringizni albatta yozib qoldiring . Keyingi darslarni ham kutila 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6509', N'uz', Id, NULL, N'@DinaraDeutsch', 6509, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun darsda', Description = N'- 

Bugun darsda 

O''zagi ma''lum undosh harflarga tugaydigan maxsus kuchsiz fe''llarni to''g''ri tuslashni o''rganasiz

Hozirgi zamon (Präsens)da gaplar qanaqa tuzilishini bilib olasiz

— Darsni o‘qib bo‘lgach, dars haqidagi fikringizni albatta yozib qoldiring . Keyingi darslarni ham kutila 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6509';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6531')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A2 Sprechen uchun tayyor shablonlar', N'A2 Sprechen uchun tayyor shablonlar 

Biror mavzuni muhokama qilishda fikr bildirish, taklif qilish, rad etish, ikkilanish va suhbatdosh fikriga qo‘shilish uchun kerak bo‘ladigan eng muhim iboralarni jamladim.

Shablonlarni ko‘rib chiqing va o‘zingiz 2–3 ta gap tuzib, kommentariyada qoldiring, tekshirib beraman. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6531', N'uz', Id, NULL, N'@DinaraDeutsch', 6531, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A2 Sprechen uchun tayyor shablonlar', Description = N'A2 Sprechen uchun tayyor shablonlar 

Biror mavzuni muhokama qilishda fikr bildirish, taklif qilish, rad etish, ikkilanish va suhbatdosh fikriga qo‘shilish uchun kerak bo‘ladigan eng muhim iboralarni jamladim.

Shablonlarni ko‘rib chiqing va o‘zingiz 2–3 ta gap tuzib, kommentariyada qoldiring, tekshirib beraman. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6531';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6540')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'einfach_gut_a11.pdf', N'einfach_gut_a11.pdf', N'https://t.me/DinaraDeutsch/6540', N'uz', Id, NULL, N'@DinaraDeutsch', 6540, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'einfach_gut_a11.pdf', Description = N'einfach_gut_a11.pdf'
    WHERE Url = N'https://t.me/DinaraDeutsch/6540';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6541')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Einfach gut', N'Einfach gut 

Einfach gut A1 kitobi 2ta qismdan iborat: 
 Birinchi qismi - A1.1 (Birinchi qismini allaqachon kanalga joylaganman). 
 Bu ikkinchi qismi - A1.2

Kitobning menga yoqqan tomonlari:
 Darslar oddiy va tushunarli tarzda tuzilgan.
 Har bir mavzudan keyin mashqlar berilgan.
 Kundalik hayotda eng ko‘p ishlatiladigan lug‘atlar va grammatikalar o‘rgatiladi.

— Menimcha, A1 darajadagi o‘quvchilar bu kitobni albatta ishlab chiqishi kerak. Mavzular ketma-ketligi ham juda qulay tuzilgan. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6541', N'uz', Id, NULL, N'@DinaraDeutsch', 6541, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Einfach gut', Description = N'Einfach gut 

Einfach gut A1 kitobi 2ta qismdan iborat: 
 Birinchi qismi - A1.1 (Birinchi qismini allaqachon kanalga joylaganman). 
 Bu ikkinchi qismi - A1.2

Kitobning menga yoqqan tomonlari:
 Darslar oddiy va tushunarli tarzda tuzilgan.
 Har bir mavzudan keyin mashqlar berilgan.
 Kundalik hayotda eng ko‘p ishlatiladigan lug‘atlar va grammatikalar o‘rgatiladi.

— Menimcha, A1 darajadagi o‘quvchilar bu kitobni albatta ishlab chiqishi kerak. Mavzular ketma-ketligi ham juda qulay tuzilgan. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6541';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6482')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1–A2—B1 darajada eng ko‘p ishlatiladigan o‘tgan zamon fe’llari', N'A1–A2—B1 darajada eng ko‘p ishlatiladigan o‘tgan zamon fe’llari 

Fe’llarni shunchaki yodlab qo‘yish emas, ularni Sprechen va Schreibenda ko‘proq ishlatishga harakat qiling.

— Roʻyxatdagi feʼllardan foydalanib 2–3 ta gap tuzing va kommentariyada qoldiring , tekshirib beraman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6482', N'uz', Id, NULL, N'@DinaraDeutsch', 6482, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1–A2—B1 darajada eng ko‘p ishlatiladigan o‘tgan zamon fe’llari', Description = N'A1–A2—B1 darajada eng ko‘p ishlatiladigan o‘tgan zamon fe’llari 

Fe’llarni shunchaki yodlab qo‘yish emas, ularni Sprechen va Schreibenda ko‘proq ishlatishga harakat qiling.

— Roʻyxatdagi feʼllardan foydalanib 2–3 ta gap tuzing va kommentariyada qoldiring , tekshirib beraman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6482';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6494')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Grammatik aktiv / men eng ko‘p tavsiya qiladigan grammatik kitoblardan biri', N'Grammatik aktiv / men eng ko‘p tavsiya qiladigan grammatik kitoblardan biri 

B2 va C1 darajada eng ko‘p ishlatiladigan grammatik mavzular jamlangan.
 Har bir mavzu juda sodda tushuntirilgan.
 Har bir mavzudan keyin mashqlar bor.
 TELC, Goethe, TestDaF kabi imtihonlarga tayyorlanayotganlar uchun juda foydali.

— Agar xoxlasangiz kitobni birga ishlashimiz ham mumkin 

— Xoxlayotganlar 200 ta " " yigʻib qoʻyila.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6494', N'uz', Id, NULL, N'@DinaraDeutsch', 6494, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Grammatik aktiv / men eng ko‘p tavsiya qiladigan grammatik kitoblardan biri', Description = N'Grammatik aktiv / men eng ko‘p tavsiya qiladigan grammatik kitoblardan biri 

B2 va C1 darajada eng ko‘p ishlatiladigan grammatik mavzular jamlangan.
 Har bir mavzu juda sodda tushuntirilgan.
 Har bir mavzudan keyin mashqlar bor.
 TELC, Goethe, TestDaF kabi imtihonlarga tayyorlanayotganlar uchun juda foydali.

— Agar xoxlasangiz kitobni birga ishlashimiz ham mumkin 

— Xoxlayotganlar 200 ta " " yigʻib qoʻyila.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6494';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6498')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Grammatik - soʻraganlar uchun', N'Grammatik - soʻraganlar uchun 

✅ A1 dan B1 gacha bo‘lgan eng muhim grammatik mavzularni o‘z ichiga olgan.
 ✅ Har bir mavzu sodda va tushunarli tarzda misollar bilan tushuntirilgan.
 ✅ Har bir bo‘limdan keyin ko‘plab mashqlar berilgan.
 ✅ Mustaqil o‘qiydiganlar uchun ham, ustoz bilan shug‘ullanadiganlar uchun ham juda qulay.

— A1dan B1gacha yaxshi grammatik bilimga ega boʻlmoqchi boʻlsayiz, albatta kitob bilan tanishib oling . 

— Raxmat deyish uchun esa " " bosib qoʻying.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6498', N'uz', Id, NULL, N'@DinaraDeutsch', 6498, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Grammatik - soʻraganlar uchun', Description = N'Grammatik - soʻraganlar uchun 

✅ A1 dan B1 gacha bo‘lgan eng muhim grammatik mavzularni o‘z ichiga olgan.
 ✅ Har bir mavzu sodda va tushunarli tarzda misollar bilan tushuntirilgan.
 ✅ Har bir bo‘limdan keyin ko‘plab mashqlar berilgan.
 ✅ Mustaqil o‘qiydiganlar uchun ham, ustoz bilan shug‘ullanadiganlar uchun ham juda qulay.

— A1dan B1gacha yaxshi grammatik bilimga ega boʻlmoqchi boʻlsayiz, albatta kitob bilan tanishib oling . 

— Raxmat deyish uchun esa " " bosib qoʻying.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6498';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6503')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun darsda:', N'- 

Bugun darsda: 

Nemis tilidagi gapning asosiy bo‘laklari — ega, kesim va ikkinchi darajali bo‘laklar bilan tanishasiz.

Hozirgi zamon (Präsens) nima ekanligini va qachon ishlatilishini bilib olasiz.

— Darsni o‘qib bo‘lgach, dars haqidagi fikringizni albatta yozib qoldiring . Keyingi darslarni ham kutila 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6503', N'uz', Id, NULL, N'@DinaraDeutsch', 6503, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun darsda:', Description = N'- 

Bugun darsda: 

Nemis tilidagi gapning asosiy bo‘laklari — ega, kesim va ikkinchi darajali bo‘laklar bilan tanishasiz.

Hozirgi zamon (Präsens) nima ekanligini va qachon ishlatilishini bilib olasiz.

— Darsni o‘qib bo‘lgach, dars haqidagi fikringizni albatta yozib qoldiring . Keyingi darslarni ham kutila 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6503';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6446')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'qoʻllanmasi', N'- qoʻllanmasi

Sprechen qobiliyatini oshirish 

Qo''llanmada nima uchun nemis tilida gapira olmayotganimizning 4 ta asosiy sababi va ularning amaliy yechimlari berilgan.

— Har bir sabab bilan alohida tanishib chiqing va tavsiya qilingan usullarni o‘z hayotingizda qo‘llashni
boshlang. 

Qo‘llanmani o‘qib bo‘lganingizdan keyin fikrlaringizni kommentariyada yozib qoldiring. Va albatta, reaksiya bosishni ham unutmang.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6446', N'uz', Id, NULL, N'@DinaraDeutsch', 6446, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'qoʻllanmasi', Description = N'- qoʻllanmasi

Sprechen qobiliyatini oshirish 

Qo''llanmada nima uchun nemis tilida gapira olmayotganimizning 4 ta asosiy sababi va ularning amaliy yechimlari berilgan.

— Har bir sabab bilan alohida tanishib chiqing va tavsiya qilingan usullarni o‘z hayotingizda qo‘llashni
boshlang. 

Qo‘llanmani o‘qib bo‘lganingizdan keyin fikrlaringizni kommentariyada yozib qoldiring. Va albatta, reaksiya bosishni ham unutmang.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6446';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6457')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sprechen qobiliyatini oshirish bo‘yicha', N'Sprechen qobiliyatini oshirish bo‘yicha 

- qo‘llanmasi 

Bugungi darsda siz bilan quyidagi mavzularni ko‘rib chiqamiz:
 Sprechen paytida sizni qutqaruvchi gaplar
 Eng kerakli tayyor shablonlar
 Video orqali Sprechen qobiliyatini rivojlantirish usullari
 Bonus

— Qo‘llanma bilan albatta tanishib chiqing va tavsiyalarni amalda qo‘llashni boshlang. O‘qib bo‘lgach, fikringizni kommentariyada yozib qoldirishni unutmang.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6457', N'uz', Id, NULL, N'@DinaraDeutsch', 6457, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sprechen qobiliyatini oshirish bo‘yicha', Description = N'Sprechen qobiliyatini oshirish bo‘yicha 

- qo‘llanmasi 

Bugungi darsda siz bilan quyidagi mavzularni ko‘rib chiqamiz:
 Sprechen paytida sizni qutqaruvchi gaplar
 Eng kerakli tayyor shablonlar
 Video orqali Sprechen qobiliyatini rivojlantirish usullari
 Bonus

— Qo‘llanma bilan albatta tanishib chiqing va tavsiyalarni amalda qo‘llashni boshlang. O‘qib bo‘lgach, fikringizni kommentariyada yozib qoldirishni unutmang.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6457';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6461')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sprechen 2-dars.pdf', N'Sprechen 2-dars.pdf', N'https://t.me/DinaraDeutsch/6461', N'uz', Id, NULL, N'@DinaraDeutsch', 6461, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sprechen 2-dars.pdf', Description = N'Sprechen 2-dars.pdf'
    WHERE Url = N'https://t.me/DinaraDeutsch/6461';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6470')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'B2/C1 grammatikasi uchun topgan eng foydali kitoblarimdan biri', N'B2/C1 grammatikasi uchun topgan eng foydali kitoblarimdan biri

TELC yoki Goethe B2/C1 imtihoniga tayyorlanayotganlar uchun albatta tavsiya qilaman. 

Bu kitobning menga yoqqan tomonlari:

B2–C1 darajadagi eng muhim grammatika mavzulari jamlangan.
 Har bir mavzudan keyin mustahkamlash uchun mashqlar bor.
 Mashqlarning javoblari (Lösungen) ham berilgan, o‘zingizni tekshirib borishingiz mumkin.
 Imtihonga tayyorlanayotganlar uchun ayni muddao.

— Shunaqa maslahatlardan yana boʻsin desela, koʻp koʻp reaksiya bosib turila 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6470', N'uz', Id, NULL, N'@DinaraDeutsch', 6470, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'B2/C1 grammatikasi uchun topgan eng foydali kitoblarimdan biri', Description = N'B2/C1 grammatikasi uchun topgan eng foydali kitoblarimdan biri

TELC yoki Goethe B2/C1 imtihoniga tayyorlanayotganlar uchun albatta tavsiya qilaman. 

Bu kitobning menga yoqqan tomonlari:

B2–C1 darajadagi eng muhim grammatika mavzulari jamlangan.
 Har bir mavzudan keyin mustahkamlash uchun mashqlar bor.
 Mashqlarning javoblari (Lösungen) ham berilgan, o‘zingizni tekshirib borishingiz mumkin.
 Imtihonga tayyorlanayotganlar uchun ayni muddao.

— Shunaqa maslahatlardan yana boʻsin desela, koʻp koʻp reaksiya bosib turila 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6470';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6472')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Einfach gut! A1.1 (TELC)', N'Einfach gut! A1.1 (TELC) 

darajadagilar uchun tavsiya qiladigan eng yaxshi kitoblardan biri 

Kitobning menga yoqqan tomonlari:
 Darslar oddiy va tushunarli tarzda tuzilgan.
 Har bir mavzudan keyin mashqlar berilgan.
 Kundalik hayotda eng ko‘p ishlatiladigan lug‘atlar va grammatikalar o‘rgatiladi.

— Menimcha, A1 darajadagi o‘quvchilar bu kitobni albatta ishlab chiqishi kerak. Mavzular ketma-ketligi ham juda qulay tuzilgan.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6472', N'uz', Id, NULL, N'@DinaraDeutsch', 6472, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Einfach gut! A1.1 (TELC)', Description = N'Einfach gut! A1.1 (TELC) 

darajadagilar uchun tavsiya qiladigan eng yaxshi kitoblardan biri 

Kitobning menga yoqqan tomonlari:
 Darslar oddiy va tushunarli tarzda tuzilgan.
 Har bir mavzudan keyin mashqlar berilgan.
 Kundalik hayotda eng ko‘p ishlatiladigan lug‘atlar va grammatikalar o‘rgatiladi.

— Menimcha, A1 darajadagi o‘quvchilar bu kitobni albatta ishlab chiqishi kerak. Mavzular ketma-ketligi ham juda qulay tuzilgan.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6472';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6473')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'einfach_gut_a11.pdf', N'einfach_gut_a11.pdf', N'https://t.me/DinaraDeutsch/6473', N'uz', Id, NULL, N'@DinaraDeutsch', 6473, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'einfach_gut_a11.pdf', Description = N'einfach_gut_a11.pdf'
    WHERE Url = N'https://t.me/DinaraDeutsch/6473';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6386')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1–A2 darajada eng ko‘p ishlatiladigan o‘tgan zamon fe’llari', N'A1–A2 darajada eng ko‘p ishlatiladigan o‘tgan zamon fe’llari

Bu ro‘yxat kitoblardan birma-bir saralab tuzilgan.

Fe’llarni shunchaki yodlab qo‘yish emas, ularni Sprechen va Schreibenda ko‘proq ishlatishga harakat qiling.

— Roʻyxatdagi feʼllardan foydalanib 2–3 ta gap tuzing va kommentariyada qoldiring , tekshirib beraman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6386', N'uz', Id, NULL, N'@DinaraDeutsch', 6386, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1–A2 darajada eng ko‘p ishlatiladigan o‘tgan zamon fe’llari', Description = N'A1–A2 darajada eng ko‘p ishlatiladigan o‘tgan zamon fe’llari

Bu ro‘yxat kitoblardan birma-bir saralab tuzilgan.

Fe’llarni shunchaki yodlab qo‘yish emas, ularni Sprechen va Schreibenda ko‘proq ishlatishga harakat qiling.

— Roʻyxatdagi feʼllardan foydalanib 2–3 ta gap tuzing va kommentariyada qoldiring , tekshirib beraman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6386';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6387')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 -A2 o''tgan zamon fe''llari.pdf', N'A1 -A2 o''tgan zamon fe''llari.pdf', N'https://t.me/DinaraDeutsch/6387', N'uz', Id, NULL, N'@DinaraDeutsch', 6387, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 -A2 o''tgan zamon fe''llari.pdf', Description = N'A1 -A2 o''tgan zamon fe''llari.pdf'
    WHERE Url = N'https://t.me/DinaraDeutsch/6387';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6396')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dativ talab qiladigan fe''llar roʻyxati (A1–B1)', N'Dativ talab qiladigan fe''llar roʻyxati (A1–B1) 

Ushbu faylda A1–B1 darajasida eng ko‘p ishlatiladigan Dativ talab qiladigan fe''llar jamlangan. Har bir fe''l bilan birga uning o‘zbekcha tarjimasi va misol gap ham berilgan.

TELC / Goethe A1-B1 imtihonlariga tayyorlanayotganlar uchun foydali
 Kundalik suhbatlarda eng ko‘p uchraydigan fe''llar saralangan
 Har bir fe''lni misollar bilan o‘rganish Dativni tezroq o‘zlashtirishga yordam beradi

— Faylni saqlab qo‘ying va yangi fe''l yodlaganingizda misollarni ovoz chiqarib takrorlashni unutmang. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6396', N'uz', Id, NULL, N'@DinaraDeutsch', 6396, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dativ talab qiladigan fe''llar roʻyxati (A1–B1)', Description = N'Dativ talab qiladigan fe''llar roʻyxati (A1–B1) 

Ushbu faylda A1–B1 darajasida eng ko‘p ishlatiladigan Dativ talab qiladigan fe''llar jamlangan. Har bir fe''l bilan birga uning o‘zbekcha tarjimasi va misol gap ham berilgan.

TELC / Goethe A1-B1 imtihonlariga tayyorlanayotganlar uchun foydali
 Kundalik suhbatlarda eng ko‘p uchraydigan fe''llar saralangan
 Har bir fe''lni misollar bilan o‘rganish Dativni tezroq o‘zlashtirishga yordam beradi

— Faylni saqlab qo‘ying va yangi fe''l yodlaganingizda misollarni ovoz chiqarib takrorlashni unutmang. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6396';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6397')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1–B1 darajadagi Dativ talab qiladigan fe''llar.pdf', N'A1–B1 darajadagi Dativ talab qiladigan fe''llar.pdf', N'https://t.me/DinaraDeutsch/6397', N'uz', Id, NULL, N'@DinaraDeutsch', 6397, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1–B1 darajadagi Dativ talab qiladigan fe''llar.pdf', Description = N'A1–B1 darajadagi Dativ talab qiladigan fe''llar.pdf'
    WHERE Url = N'https://t.me/DinaraDeutsch/6397';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6320')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Akkusativ talab qiladigan A1–B1 darajadagi eng ko‘p ishlatiladigan fe''llar ro‘yxati tayyor', N'Akkusativ talab qiladigan A1–B1 darajadagi eng ko‘p ishlatiladigan fe''llar ro‘yxati tayyor 

Buguncha shu material bilan yaxshilab tanishib, imkon qadar yodlab turinglar.

Kechroq esa shu fe''llar bilan tuzilgan namunaviy gaplarni ham yuboraman.

— Avval Akkusativni mustahkamlab olamiz, keyingi postlar esa Dativ talab qiladigan fe''llar haqida bo‘ladi. 

Yoqimli o‘qish va samarali o‘rganish tilayman ! 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6320', N'uz', Id, NULL, N'@DinaraDeutsch', 6320, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Akkusativ talab qiladigan A1–B1 darajadagi eng ko‘p ishlatiladigan fe''llar ro‘yxati tayyor', Description = N'Akkusativ talab qiladigan A1–B1 darajadagi eng ko‘p ishlatiladigan fe''llar ro‘yxati tayyor 

Buguncha shu material bilan yaxshilab tanishib, imkon qadar yodlab turinglar.

Kechroq esa shu fe''llar bilan tuzilgan namunaviy gaplarni ham yuboraman.

— Avval Akkusativni mustahkamlab olamiz, keyingi postlar esa Dativ talab qiladigan fe''llar haqida bo‘ladi. 

Yoqimli o‘qish va samarali o‘rganish tilayman ! 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6320';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6325')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Mana sizlarga aytgan nemischa-inglizcha lug‘at kitobim', N'Mana sizlarga aytgan nemischa-inglizcha lug‘at kitobim

To‘g‘risi, bu kitobni juda yaxshi ko‘raman. Balki bir vaqtning o‘zida ikkita tilni mashq qila olganim uchundir, bilmadim 

Kitobning eng yoqqan tomoni: 
 Lug‘atlar nemischa - inglizcha ko‘rinishda berilgan.
 Har bir so‘z uchun nemis tilida namunaviy misol gaplar yozilgan.
 Shu sabab so‘zlarni eslab qolish ancha osonlashadi.

Yana bir katta afzalligi — kitob mavzular bo‘yicha tuzilgan. 
Masalan, sayohat, ish, ta''lim, sog‘liq va boshqa ko‘plab mavzularga oid lug‘atlar bir joyda jamlangan.

— Agar "har xil mavzularda lug‘at boyligimni oshirmoqchiman" desangiz, bu kitobni albatta saqlab qo‘ying. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6325', N'uz', Id, NULL, N'@DinaraDeutsch', 6325, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Mana sizlarga aytgan nemischa-inglizcha lug‘at kitobim', Description = N'Mana sizlarga aytgan nemischa-inglizcha lug‘at kitobim

To‘g‘risi, bu kitobni juda yaxshi ko‘raman. Balki bir vaqtning o‘zida ikkita tilni mashq qila olganim uchundir, bilmadim 

Kitobning eng yoqqan tomoni: 
 Lug‘atlar nemischa - inglizcha ko‘rinishda berilgan.
 Har bir so‘z uchun nemis tilida namunaviy misol gaplar yozilgan.
 Shu sabab so‘zlarni eslab qolish ancha osonlashadi.

Yana bir katta afzalligi — kitob mavzular bo‘yicha tuzilgan. 
Masalan, sayohat, ish, ta''lim, sog‘liq va boshqa ko‘plab mavzularga oid lug‘atlar bir joyda jamlangan.

— Agar "har xil mavzularda lug‘at boyligimni oshirmoqchiman" desangiz, bu kitobni albatta saqlab qo‘ying. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6325';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6228')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'B1/B2 darajasida Sprechen, Schreiben uchun eng kerakli fikr bildirish (Meinung äußern) hamda taxmin qilish (Vermutung äußern) i...', N'B1/B2 darajasida Sprechen, Schreiben uchun eng kerakli fikr bildirish (Meinung äußern) hamda taxmin qilish (Vermutung äußern) iboralarini bir joyga jamladim

Bu iboralarni yodlab olish orqali fikrlaringizni ancha tabiiy va boyroq ifodalay olasiz. 

— Qaysi iboralarni ko‘proq ishlatasiz? Izohlarda yozib qoldiring. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6228', N'uz', Id, NULL, N'@DinaraDeutsch', 6228, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'B1/B2 darajasida Sprechen, Schreiben uchun eng kerakli fikr bildirish (Meinung äußern) hamda taxmin qilish (Vermutung äußern) i...', Description = N'B1/B2 darajasida Sprechen, Schreiben uchun eng kerakli fikr bildirish (Meinung äußern) hamda taxmin qilish (Vermutung äußern) iboralarini bir joyga jamladim

Bu iboralarni yodlab olish orqali fikrlaringizni ancha tabiiy va boyroq ifodalay olasiz. 

— Qaysi iboralarni ko‘proq ishlatasiz? Izohlarda yozib qoldiring. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6228';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6231')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'B2 Goethe imtihonida tushgan Schreiben mavzulari', N'B2 Goethe imtihonida tushgan Schreiben mavzulari

B2 darajaga tayyorlanayotganlar uchun foydali fayl bo‘lishi mumkin. Ko‘pchilik Schreibenni faqat grammatika bilan yaxshilash mumkin deb o‘ylaydi. Aslida esa mavzular bilan oldindan ishlash ham juda katta ustunlik beradi. 

— Saqlab qo‘ying, B2 topshiradigan tanishlaringizga ham yuborib qo‘ying. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6231', N'uz', Id, NULL, N'@DinaraDeutsch', 6231, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'B2 Goethe imtihonida tushgan Schreiben mavzulari', Description = N'B2 Goethe imtihonida tushgan Schreiben mavzulari

B2 darajaga tayyorlanayotganlar uchun foydali fayl bo‘lishi mumkin. Ko‘pchilik Schreibenni faqat grammatika bilan yaxshilash mumkin deb o‘ylaydi. Aslida esa mavzular bilan oldindan ishlash ham juda katta ustunlik beradi. 

— Saqlab qo‘ying, B2 topshiradigan tanishlaringizga ham yuborib qo‘ying. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6231';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6180')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sizlar uchun B2 og‘zaki imtihon (Sprechen) uchun eng kerakli mavzularni yig‘ib chiqdim', N'Sizlar uchun B2 og‘zaki imtihon (Sprechen) uchun eng kerakli mavzularni yig‘ib chiqdim 

Bu ro‘yxatda Teil 1 va Teil 2 uchun eng ko‘p tushadigan mavzular tartibli qilib jamlangan. Tayyorlanish jarayonida sizga qulay bo‘lishi uchun hammasini bir joyga to‘pladim.

— Har bir mavzuga tayyor gaplar va fikrlar ishlab chiqsangiz, imtihonda ancha oson bo‘ladi .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6180', N'uz', Id, NULL, N'@DinaraDeutsch', 6180, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sizlar uchun B2 og‘zaki imtihon (Sprechen) uchun eng kerakli mavzularni yig‘ib chiqdim', Description = N'Sizlar uchun B2 og‘zaki imtihon (Sprechen) uchun eng kerakli mavzularni yig‘ib chiqdim 

Bu ro‘yxatda Teil 1 va Teil 2 uchun eng ko‘p tushadigan mavzular tartibli qilib jamlangan. Tayyorlanish jarayonida sizga qulay bo‘lishi uchun hammasini bir joyga to‘pladim.

— Har bir mavzuga tayyor gaplar va fikrlar ishlab chiqsangiz, imtihonda ancha oson bo‘ladi .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6180';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5991')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Arena A2 kitobidan Hören Test 2 lug‘atlarini sizlarga jo‘natyapman', N'Arena A2 kitobidan Hören Test 2 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar A2 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5991', N'uz', Id, NULL, N'@DinaraDeutsch', 5991, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Arena A2 kitobidan Hören Test 2 lug‘atlarini sizlarga jo‘natyapman', Description = N'Arena A2 kitobidan Hören Test 2 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar A2 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5991';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5998')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Arena A2 kitobidan Lesen Test 3 lug‘atlarini sizlarga jo‘natyapman', N'Arena A2 kitobidan Lesen Test 3 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar A2 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5998', N'uz', Id, NULL, N'@DinaraDeutsch', 5998, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Arena A2 kitobidan Lesen Test 3 lug‘atlarini sizlarga jo‘natyapman', Description = N'Arena A2 kitobidan Lesen Test 3 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar A2 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5998';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5733')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Arena A2 kitobidan Lesen Test 2 lug‘atlarini sizlarga jo‘natyapman', N'Arena A2 kitobidan Lesen Test 2 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar A2 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5733', N'uz', Id, NULL, N'@DinaraDeutsch', 5733, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Arena A2 kitobidan Lesen Test 2 lug‘atlarini sizlarga jo‘natyapman', Description = N'Arena A2 kitobidan Lesen Test 2 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar A2 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5733';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5612')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Arena A2 kitobidan Hören Test 1 lug‘atlarini sizlarga jo‘natyapman', N'Arena A2 kitobidan Hören Test 1 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar A2 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5612', N'uz', Id, NULL, N'@DinaraDeutsch', 5612, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Arena A2 kitobidan Hören Test 1 lug‘atlarini sizlarga jo‘natyapman', Description = N'Arena A2 kitobidan Hören Test 1 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar A2 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5612';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5603')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Arena A2 kitobidan Lesen Test 1 lug‘atlarini sizlarga jo‘natyapman', N'Arena A2 kitobidan Lesen Test 1 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar A2 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5603', N'uz', Id, NULL, N'@DinaraDeutsch', 5603, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Arena A2 kitobidan Lesen Test 1 lug‘atlarini sizlarga jo‘natyapman', Description = N'Arena A2 kitobidan Lesen Test 1 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar A2 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5603';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5438')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Arena B1 kitobidan Lesen Test 2 lug‘atlarini sizlarga jo‘natyapman', N'Arena B1 kitobidan Lesen Test 2 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar B1 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5438', N'uz', Id, NULL, N'@DinaraDeutsch', 5438, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Arena B1 kitobidan Lesen Test 2 lug‘atlarini sizlarga jo‘natyapman', Description = N'Arena B1 kitobidan Lesen Test 2 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar B1 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5438';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5462')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Arena B1 kitobidan Lesen Test 3 lug‘atlarini sizlarga jo‘natyapman', N'Arena B1 kitobidan Lesen Test 3 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar B1 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5462', N'uz', Id, NULL, N'@DinaraDeutsch', 5462, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Arena B1 kitobidan Lesen Test 3 lug‘atlarini sizlarga jo‘natyapman', Description = N'Arena B1 kitobidan Lesen Test 3 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar B1 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5462';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5506')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Arena B1 kitobidan Lesen Test 4 lug‘atlarini sizlarga jo‘natyapman', N'Arena B1 kitobidan Lesen Test 4 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar B1 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5506', N'uz', Id, NULL, N'@DinaraDeutsch', 5506, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Kitoblar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Arena B1 kitobidan Lesen Test 4 lug‘atlarini sizlarga jo‘natyapman', Description = N'Arena B1 kitobidan Lesen Test 4 lug‘atlarini sizlarga jo‘natyapman 

Sizlar uchun eng kerakli, eng ko‘p uchraydigan va bilishingiz kerak bo‘lgan so‘zlarni saralab, fayl qilib tayyorladim.

Agar B1 daraja uchun tayyorlanayotgan bo‘lsangiz, bu fayl sizga foydali bo‘ladi.
Albatta gaplarda ishlatib, so‘z boyligingizni oshiring.

Qo‘llab-quvvatlash tugmasi — “ ” 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5506';
END;
GO

PRINT N'Tugadi: Materiallar muvaffaqiyatli saqlandi.';
GO