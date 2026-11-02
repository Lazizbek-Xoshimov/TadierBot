-- =============================================================
-- Video darsliklar va materiallar
-- Kategoriya: Videolar
-- Kanal: t.me/DinaraDeutsch
-- Materiallar soni: 59
-- =============================================================

SET NOCOUNT ON;

PRINT N'Boshlandi: Materiallar saqlanmoqda...';

IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6796')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nihoyat, kitoblar yetib bordi!', N'Nihoyat, kitoblar yetib bordi! 

Ikki kun oldin A1 kursga yozilgan o’quvchilarimga darslarda foydalanish uchun kitoblarni jo’natgan edim. Bugun ular pochtadan kitoblarini olishibdi.

Admin akkauntimga xabarlar yig’ilib qoldi: o’quvchilar kitoblarini ochib, rasm va videolar yuborishyapti. Men ularni ko’rib, o’zim ham xursand bo’lib ketdim 

Bu kitoblar shunchaki qog’oz emas. Bu har bir o’quvchining nemis tiliga qo’ygan birinchi qadami .

Siz ham shu qadamni qo’yishni o’ylab yurgan bo’lsangiz, bilib qo’ying: sizga ham shunday kitob yuboraman ❤️‍ 

Siz ham o’quvchim bo’lishni xohlaysizmi? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6796', N'uz', Id, NULL, N'@DinaraDeutsch', 6796, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nihoyat, kitoblar yetib bordi!', Description = N'Nihoyat, kitoblar yetib bordi! 

Ikki kun oldin A1 kursga yozilgan o’quvchilarimga darslarda foydalanish uchun kitoblarni jo’natgan edim. Bugun ular pochtadan kitoblarini olishibdi.

Admin akkauntimga xabarlar yig’ilib qoldi: o’quvchilar kitoblarini ochib, rasm va videolar yuborishyapti. Men ularni ko’rib, o’zim ham xursand bo’lib ketdim 

Bu kitoblar shunchaki qog’oz emas. Bu har bir o’quvchining nemis tiliga qo’ygan birinchi qadami .

Siz ham shu qadamni qo’yishni o’ylab yurgan bo’lsangiz, bilib qo’ying: sizga ham shunday kitob yuboraman ❤️‍ 

Siz ham o’quvchim bo’lishni xohlaysizmi? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6796';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6755')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 kursining maxsus kanaliga video darsliklar, qo‘llanmalar va o‘rganish jarayonida kerak bo‘ladigan foydali materiallarni joyl...', N'A1 kursining maxsus kanaliga video darsliklar, qo‘llanmalar va o‘rganish jarayonida kerak bo‘ladigan foydali materiallarni joylangan. Har bir video va materiallarni o’zim tunlari uxlamay tayyorlab chiqqanman. Bunga singlim guvoh 

Men uchun o‘quvchilarim shunchaki darsga kirib-chiqishi emas, haqiqatan ham o’rgatganlarimni tushunishi, o‘rganishi va natijaga chiqishi muhim. 

Tasavvur qiling, bularning barchasi sizga ham ochiq bo‘lishi mumkin! Buning uchun esa qat’iy qaror qilish kerak. Bu qarorning boshi kursga qo’shilishdan boshlanadi ‍↔️ 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6755', N'uz', Id, NULL, N'@DinaraDeutsch', 6755, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 kursining maxsus kanaliga video darsliklar, qo‘llanmalar va o‘rganish jarayonida kerak bo‘ladigan foydali materiallarni joyl...', Description = N'A1 kursining maxsus kanaliga video darsliklar, qo‘llanmalar va o‘rganish jarayonida kerak bo‘ladigan foydali materiallarni joylangan. Har bir video va materiallarni o’zim tunlari uxlamay tayyorlab chiqqanman. Bunga singlim guvoh 

Men uchun o‘quvchilarim shunchaki darsga kirib-chiqishi emas, haqiqatan ham o’rgatganlarimni tushunishi, o‘rganishi va natijaga chiqishi muhim. 

Tasavvur qiling, bularning barchasi sizga ham ochiq bo‘lishi mumkin! Buning uchun esa qat’iy qaror qilish kerak. Bu qarorning boshi kursga qo’shilishdan boshlanadi ‍↔️ 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6755';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6732')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6732', N'', N'https://t.me/DinaraDeutsch/6732', N'uz', Id, NULL, N'@DinaraDeutsch', 6732, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6732', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6732';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6698')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6698', N'', N'https://t.me/DinaraDeutsch/6698', N'uz', Id, NULL, N'@DinaraDeutsch', 6698, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6698', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6698';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6671')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemis tili juda qiyin ekan…”', N'“Nemis tili juda qiyin ekan…” 

Bu gapni nemis tilini endi boshlaganlardan juda ko‘p eshitaman. Uzun so‘zlar, artikllar, kelishiklar, fe’llarning o‘zgarishi, grammatika… Bularning hammasini ko‘rib, odamning boshlashdan oldin qo‘rqib ketishi tabiiy. 

Lekin 5 yildan beri nemis tilidan dars berib kelayotgan ustoz sifatida bir narsani ayta olaman: ko‘pincha muammo nemis tilining qiyinligida emas. Muammo — uni qanday o‘rganayotganingizda. 

Masalan, yangi boshlagan o‘quvchi bir kunda 50 ta so‘z yodlaydi, lekin ularning birortasini gapda ishlatmaydi. Ertasi kuni esa 30 tasini unutadi. Yoki grammatikani oylar davomida o‘rganadi, lekin gapirishni “grammatika tugagandan keyin” boshlashni rejalashtiradi. Yoki har xil manbalardan bir vaqtning o‘zida o‘qiydi: bugun YouTube, keyin boshqa kurs, keyin yana boshqa ustoz… Natijada boshida juda ko‘p ma’lumot, lekin aniq tizim bo‘lmaydi.

Shunda odam: “Menda tilga qobiliyat yo‘q ekan” , deb o‘ylay boshlaydi. Aslida esa balki unga shunchaki to‘g‘ri ketma-ketlik va tizim yetishmayotgandir. Men boshlang‘ich darajadagi o‘quvchilar bilan ishlaganimda eng katta e’tiborni aynan shunga qarataman: grammatikani tushunish, yangi so‘zlarni gapda qo‘llash, boshidanoq gapirishga harakat qilish, muntazam takrorlash va o‘rganganini amalda ishlatish .

Har qanday tilni boshlashdan oldin o‘zingizga “Nemis tili qiyinmi?” deb emas, “Men uni qanday o‘rganaman?” deb savol berib ko‘ring. Balki siz qo‘rqayotgan nemis tili aslida siz o‘ylaganchalik qo‘rqinchli emasdir 

— Oxirigacha o’qigan bo’lsangiz bitta " " bosing .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6671', N'uz', Id, NULL, N'@DinaraDeutsch', 6671, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemis tili juda qiyin ekan…”', Description = N'“Nemis tili juda qiyin ekan…” 

Bu gapni nemis tilini endi boshlaganlardan juda ko‘p eshitaman. Uzun so‘zlar, artikllar, kelishiklar, fe’llarning o‘zgarishi, grammatika… Bularning hammasini ko‘rib, odamning boshlashdan oldin qo‘rqib ketishi tabiiy. 

Lekin 5 yildan beri nemis tilidan dars berib kelayotgan ustoz sifatida bir narsani ayta olaman: ko‘pincha muammo nemis tilining qiyinligida emas. Muammo — uni qanday o‘rganayotganingizda. 

Masalan, yangi boshlagan o‘quvchi bir kunda 50 ta so‘z yodlaydi, lekin ularning birortasini gapda ishlatmaydi. Ertasi kuni esa 30 tasini unutadi. Yoki grammatikani oylar davomida o‘rganadi, lekin gapirishni “grammatika tugagandan keyin” boshlashni rejalashtiradi. Yoki har xil manbalardan bir vaqtning o‘zida o‘qiydi: bugun YouTube, keyin boshqa kurs, keyin yana boshqa ustoz… Natijada boshida juda ko‘p ma’lumot, lekin aniq tizim bo‘lmaydi.

Shunda odam: “Menda tilga qobiliyat yo‘q ekan” , deb o‘ylay boshlaydi. Aslida esa balki unga shunchaki to‘g‘ri ketma-ketlik va tizim yetishmayotgandir. Men boshlang‘ich darajadagi o‘quvchilar bilan ishlaganimda eng katta e’tiborni aynan shunga qarataman: grammatikani tushunish, yangi so‘zlarni gapda qo‘llash, boshidanoq gapirishga harakat qilish, muntazam takrorlash va o‘rganganini amalda ishlatish .

Har qanday tilni boshlashdan oldin o‘zingizga “Nemis tili qiyinmi?” deb emas, “Men uni qanday o‘rganaman?” deb savol berib ko‘ring. Balki siz qo‘rqayotgan nemis tili aslida siz o‘ylaganchalik qo‘rqinchli emasdir 

— Oxirigacha o’qigan bo’lsangiz bitta " " bosing .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6671';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6559')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sprechen’da qiynalayotganlar uchun 2 qismdan iborat qo‘llanma tayyorlab qo‘ydim - → https://t.me/DinaraDeutsch/6446 - → https:/...', N'Sprechen’da qiynalayotganlar uchun 2 qismdan iborat qo‘llanma tayyorlab qo‘ydim - → https://t.me/DinaraDeutsch/6446 - → https://t.me/DinaraDeutsch/6457 Bu qo‘llanmada Sprechen’da qiynalishingizga sabab bo‘layotgan muammolarni batafsil tushuntirib…', N'https://t.me/DinaraDeutsch/6559', N'uz', Id, NULL, N'@DinaraDeutsch', 6559, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sprechen’da qiynalayotganlar uchun 2 qismdan iborat qo‘llanma tayyorlab qo‘ydim - → https://t.me/DinaraDeutsch/6446 - → https:/...', Description = N'Sprechen’da qiynalayotganlar uchun 2 qismdan iborat qo‘llanma tayyorlab qo‘ydim - → https://t.me/DinaraDeutsch/6446 - → https://t.me/DinaraDeutsch/6457 Bu qo‘llanmada Sprechen’da qiynalishingizga sabab bo‘layotgan muammolarni batafsil tushuntirib…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6559';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6511')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6511', N'', N'https://t.me/DinaraDeutsch/6511', N'uz', Id, NULL, N'@DinaraDeutsch', 6511, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6511', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6511';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6512')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6512', N'', N'https://t.me/DinaraDeutsch/6512', N'uz', Id, NULL, N'@DinaraDeutsch', 6512, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6512', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6512';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6529')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6529', N'', N'https://t.me/DinaraDeutsch/6529', N'uz', Id, NULL, N'@DinaraDeutsch', 6529, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6529', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6529';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6491')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Keyingi darsga o‘tishni xohlasangiz, avval harflarni to‘liq o‘rganishingiz kerak', N'Keyingi darsga o‘tishni xohlasangiz, avval harflarni to‘liq o‘rganishingiz kerak 

Harflarni o‘rganish uchun tavsiya qilgan videomni shu yerda qoldiryapman, ko''rib olila, hoʻpmiii 

Vazifa: 
 Videoni oxirigacha ko‘ring.
 Harflarni daftaringizga yozib chiqing.
 Ovoz chiqarib bir necha marta takrorlang.
 Talaffuzini to‘g‘ri aytishga harakat qiling.

— Yozib bo‘lgach, daftaringizni rasmga olib kommentariyaga yuboring. Vazifani bajarganlarni ko‘rib chiqaman. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6491', N'uz', Id, NULL, N'@DinaraDeutsch', 6491, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Keyingi darsga o‘tishni xohlasangiz, avval harflarni to‘liq o‘rganishingiz kerak', Description = N'Keyingi darsga o‘tishni xohlasangiz, avval harflarni to‘liq o‘rganishingiz kerak 

Harflarni o‘rganish uchun tavsiya qilgan videomni shu yerda qoldiryapman, ko''rib olila, hoʻpmiii 

Vazifa: 
 Videoni oxirigacha ko‘ring.
 Harflarni daftaringizga yozib chiqing.
 Ovoz chiqarib bir necha marta takrorlang.
 Talaffuzini to‘g‘ri aytishga harakat qiling.

— Yozib bo‘lgach, daftaringizni rasmga olib kommentariyaga yuboring. Vazifani bajarganlarni ko‘rib chiqaman. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6491';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6439')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6439', N'', N'https://t.me/DinaraDeutsch/6439', N'uz', Id, NULL, N'@DinaraDeutsch', 6439, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6439', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6439';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6440')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6440', N'', N'https://t.me/DinaraDeutsch/6440', N'uz', Id, NULL, N'@DinaraDeutsch', 6440, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6440', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6440';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6377')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6377', N'', N'https://t.me/DinaraDeutsch/6377', N'uz', Id, NULL, N'@DinaraDeutsch', 6377, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6377', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6377';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6388')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6388', N'', N'https://t.me/DinaraDeutsch/6388', N'uz', Id, NULL, N'@DinaraDeutsch', 6388, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6388', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6388';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6297')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 12-dars zapisi', N'DeutschPower B1 Challenge — 12-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 Grammatik Aktiv 66-mavzu
 Shadowing qiling
 Sprechen qilish 3ta mavzuga

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

23.06.2026', N'https://t.me/DinaraDeutsch/6297', N'uz', Id, NULL, N'@DinaraDeutsch', 6297, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 12-dars zapisi', Description = N'DeutschPower B1 Challenge — 12-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 Grammatik Aktiv 66-mavzu
 Shadowing qiling
 Sprechen qilish 3ta mavzuga

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

23.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6297';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6301')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 13-dars zapisi', N'DeutschPower B1 Challenge — 13-dars zapisi 

Bugungi dars rejasi:
 Sprechen
 Podcast

Uyga vazifalar:
Hausaufgabe:
 Sprechen qayta qilish
 Shadowing qilish
 So''roq so''zlarni yodlash
 Podcast lug''atini yodlash + qayta eshitish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

24.06.2026', N'https://t.me/DinaraDeutsch/6301', N'uz', Id, NULL, N'@DinaraDeutsch', 6301, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 13-dars zapisi', Description = N'DeutschPower B1 Challenge — 13-dars zapisi 

Bugungi dars rejasi:
 Sprechen
 Podcast

Uyga vazifalar:
Hausaufgabe:
 Sprechen qayta qilish
 Shadowing qilish
 So''roq so''zlarni yodlash
 Podcast lug''atini yodlash + qayta eshitish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

24.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6301';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6305')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 14-dars zapisi', N'DeutschPower B1 Challenge — 14-dars zapisi 

Bugungi dars rejasi:
 Sprechen
 Podcast

Uyga vazifalar:
Hausaufgabe:
 Sprechen qayta qilish
 Shadowing qilish
 Podcast lug''atini yodlash + qayta eshitish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

25.06.2026', N'https://t.me/DinaraDeutsch/6305', N'uz', Id, NULL, N'@DinaraDeutsch', 6305, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 14-dars zapisi', Description = N'DeutschPower B1 Challenge — 14-dars zapisi 

Bugungi dars rejasi:
 Sprechen
 Podcast

Uyga vazifalar:
Hausaufgabe:
 Sprechen qayta qilish
 Shadowing qilish
 Podcast lug''atini yodlash + qayta eshitish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

25.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6305';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6308')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 15-dars zapisi', N'DeutschPower B1 Challenge — 15-dars zapisi 

Bugungi dars rejasi:
 Sprechen
 Podcast
 Grammatika

Uyga vazifalar:
Hausaufgabe:
 Grammatik Aktiv 64-mavzu
 Lug''at yodlash
 Sprechen 1ta

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

26.06.2026', N'https://t.me/DinaraDeutsch/6308', N'uz', Id, NULL, N'@DinaraDeutsch', 6308, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 15-dars zapisi', Description = N'DeutschPower B1 Challenge — 15-dars zapisi 

Bugungi dars rejasi:
 Sprechen
 Podcast
 Grammatika

Uyga vazifalar:
Hausaufgabe:
 Grammatik Aktiv 64-mavzu
 Lug''at yodlash
 Sprechen 1ta

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

26.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6308';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6323')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 16-dars zapisi', N'DeutschPower B1 Challenge — 16-dars zapisi

Bugungi dars rejasi:
 Sprechen
 Podcast
 Grammatika

Uyga vazifalar:
Hausaufgabe:
 Grammatik Aktiv 61, 63- mavzu 
 Sprechen qilish
 Podcast lugʻatini yodlash va qayta eshitish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

29.06.2026', N'https://t.me/DinaraDeutsch/6323', N'uz', Id, NULL, N'@DinaraDeutsch', 6323, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 16-dars zapisi', Description = N'DeutschPower B1 Challenge — 16-dars zapisi

Bugungi dars rejasi:
 Sprechen
 Podcast
 Grammatika

Uyga vazifalar:
Hausaufgabe:
 Grammatik Aktiv 61, 63- mavzu 
 Sprechen qilish
 Podcast lugʻatini yodlash va qayta eshitish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

29.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6323';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6257')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 10-dars zapisi', N'DeutschPower B1 Challenge — 10-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Podcast 

Uyga vazifalar:
Hausaufgabe:
 . Grammatik Aktiv 67 - mavzular 
 . Podcast eshitish 
 . Podcast lugʻatini yodlash va shu Podcastdan sprechen tayyorlash

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

10.06.2026', N'https://t.me/DinaraDeutsch/6257', N'uz', Id, NULL, N'@DinaraDeutsch', 6257, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 10-dars zapisi', Description = N'DeutschPower B1 Challenge — 10-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Podcast 

Uyga vazifalar:
Hausaufgabe:
 . Grammatik Aktiv 67 - mavzular 
 . Podcast eshitish 
 . Podcast lugʻatini yodlash va shu Podcastdan sprechen tayyorlash

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

10.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6257';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6262')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6262', N'', N'https://t.me/DinaraDeutsch/6262', N'uz', Id, NULL, N'@DinaraDeutsch', 6262, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6262', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6262';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6263')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 11-dars zapisi', N'DeutschPower B1 Challenge — 11-dars zapisi 

Bugungi dars rejasi:
 Schreiben yozish

Uyga vazifalar:
Hausaufgabe:
 . Schreiben yozishni o''rganish
 . Schreiben shablonlar yodlash 
 . 1ta schreiben yozish 
 . 1ta schreiben tahlil qilish 
 . Sprechen qilish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

12.06.2026', N'https://t.me/DinaraDeutsch/6263', N'uz', Id, NULL, N'@DinaraDeutsch', 6263, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 11-dars zapisi', Description = N'DeutschPower B1 Challenge — 11-dars zapisi 

Bugungi dars rejasi:
 Schreiben yozish

Uyga vazifalar:
Hausaufgabe:
 . Schreiben yozishni o''rganish
 . Schreiben shablonlar yodlash 
 . 1ta schreiben yozish 
 . 1ta schreiben tahlil qilish 
 . Sprechen qilish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

12.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6263';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6270')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nega yo‘q bo‘lib ketdingiz, kanalingiz borligini unutib yubordingizmi?" deb so‘rashibti', N'" Nega yo‘q bo‘lib ketdingiz, kanalingiz borligini unutib yubordingizmi?" deb so‘rashibti 

Yo‘q, unutmadim.

Shunchaki hozir kelasi kursga tayyorgarlik ko‘ryapmiz. (A2 kursiga).Orqada ko‘rinmaydigan ishlar juda ko‘p ekan. Shu sababli kanalga avvalgidek tez-tez post yozolmayapman.

Yana orada haftasiga 3 marta osma ukol ham olyapman.

Eng qizig‘i esa, o‘zimga kurs sotib oldim. Davronbek Turdiyevdan 

Ishonasilarmi, bir paytlar shu kursni olishni orzu qilganman. Hozir esa o‘tirib darslarini ko‘ryapman. 

Birinchi bo‘limda yomon odatlardan qutulish haqida
 Ikkinchi bo‘limda esa iroda haqida o‘rganyapmiz. Hozircha mazza qilyapman. Sizlarga ham oʻrganganlarimdan aytib turaman.

Aytgancha, sekin-sekin nemis tiliga ham qaytishim kerak 

Siz uzoq vaqt biror narsani to‘xtatib qo‘ysangiz, (masalan: nemis tili) qanday qilib qaytib olasiz oʻsha narsaga, aynan nimadan boshlaysiz?

— Qani, kommentda yozib qoldiringlarchi . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6270', N'uz', Id, NULL, N'@DinaraDeutsch', 6270, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nega yo‘q bo‘lib ketdingiz, kanalingiz borligini unutib yubordingizmi?" deb so‘rashibti', Description = N'" Nega yo‘q bo‘lib ketdingiz, kanalingiz borligini unutib yubordingizmi?" deb so‘rashibti 

Yo‘q, unutmadim.

Shunchaki hozir kelasi kursga tayyorgarlik ko‘ryapmiz. (A2 kursiga).Orqada ko‘rinmaydigan ishlar juda ko‘p ekan. Shu sababli kanalga avvalgidek tez-tez post yozolmayapman.

Yana orada haftasiga 3 marta osma ukol ham olyapman.

Eng qizig‘i esa, o‘zimga kurs sotib oldim. Davronbek Turdiyevdan 

Ishonasilarmi, bir paytlar shu kursni olishni orzu qilganman. Hozir esa o‘tirib darslarini ko‘ryapman. 

Birinchi bo‘limda yomon odatlardan qutulish haqida
 Ikkinchi bo‘limda esa iroda haqida o‘rganyapmiz. Hozircha mazza qilyapman. Sizlarga ham oʻrganganlarimdan aytib turaman.

Aytgancha, sekin-sekin nemis tiliga ham qaytishim kerak 

Siz uzoq vaqt biror narsani to‘xtatib qo‘ysangiz, (masalan: nemis tili) qanday qilib qaytib olasiz oʻsha narsaga, aynan nimadan boshlaysiz?

— Qani, kommentda yozib qoldiringlarchi . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6270';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6276')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6276', N'', N'https://t.me/DinaraDeutsch/6276', N'uz', Id, NULL, N'@DinaraDeutsch', 6276, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6276', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6276';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6279')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sprechenni yaxshilash uchun eng foydali 2 ta odatim haqida videoda gapirib berdim', N'Sprechenni yaxshilash uchun eng foydali 2 ta odatim haqida videoda gapirib berdim

To‘g‘risi, men sprechen uchun alohida oylar davomida tayyorlanmaganman. Lekin aynan shu oddiy mashqlar imtihonda yaxshi natija olishimga yordam bergan 

Video ichida:
 Har kuni nima yozish kerakligi
 Qanday qilib so‘zlarni aktiv lug‘atga aylantirish mumkinligi
 Nemis tilida o‘ylashni boshlash uchun oddiy mashq haqida gapirdim.

— Fikrlaringizni kommentda yozib qoldiring 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6279', N'uz', Id, NULL, N'@DinaraDeutsch', 6279, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sprechenni yaxshilash uchun eng foydali 2 ta odatim haqida videoda gapirib berdim', Description = N'Sprechenni yaxshilash uchun eng foydali 2 ta odatim haqida videoda gapirib berdim

To‘g‘risi, men sprechen uchun alohida oylar davomida tayyorlanmaganman. Lekin aynan shu oddiy mashqlar imtihonda yaxshi natija olishimga yordam bergan 

Video ichida:
 Har kuni nima yozish kerakligi
 Qanday qilib so‘zlarni aktiv lug‘atga aylantirish mumkinligi
 Nemis tilida o‘ylashni boshlash uchun oddiy mashq haqida gapirdim.

— Fikrlaringizni kommentda yozib qoldiring 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6279';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6284')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6284', N'', N'https://t.me/DinaraDeutsch/6284', N'uz', Id, NULL, N'@DinaraDeutsch', 6284, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6284', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6284';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6206')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 4-dars zapisi', N'DeutschPower B1 Challenge — 4-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Verben
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 38, 76-mavzu, kitobdan to''liq mashqlarini ishlash
 . Verben + Predloglar: 3-qism 21ta fe''l yodlash + yozma har bitta fe''lga 2 tadan gap tuzish daftarga 

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

30.05.2026', N'https://t.me/DinaraDeutsch/6206', N'uz', Id, NULL, N'@DinaraDeutsch', 6206, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 4-dars zapisi', Description = N'DeutschPower B1 Challenge — 4-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Verben
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 38, 76-mavzu, kitobdan to''liq mashqlarini ishlash
 . Verben + Predloglar: 3-qism 21ta fe''l yodlash + yozma har bitta fe''lga 2 tadan gap tuzish daftarga 

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

30.05.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6206';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6210')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 5-dars zapisi', N'DeutschPower B1 Challenge — 5-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Podcast va lug''at

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 73, 74, 75-mavzu, kitobdan to''liq mashqlarini ishlash
 . Podcast eshtish va lug''atlarini yodlash 

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

1.06.2026', N'https://t.me/DinaraDeutsch/6210', N'uz', Id, NULL, N'@DinaraDeutsch', 6210, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 5-dars zapisi', Description = N'DeutschPower B1 Challenge — 5-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Podcast va lug''at

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 73, 74, 75-mavzu, kitobdan to''liq mashqlarini ishlash
 . Podcast eshtish va lug''atlarini yodlash 

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

1.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6210';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6216')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6216', N'', N'https://t.me/DinaraDeutsch/6216', N'uz', Id, NULL, N'@DinaraDeutsch', 6216, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6216', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6216';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6233')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 6-dars zapisi', N'DeutschPower B1 Challenge — 6-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Verben
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 70, 72 - mavzu, kitobdan to''liq mashqlarini ishlash
 . Verben + Predloglar: 4-qism 21ta fe''l yodlash + yozma har bitta fe''lga 2 tadan gap tuzish daftarga 

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

4.06.2026', N'https://t.me/DinaraDeutsch/6233', N'uz', Id, NULL, N'@DinaraDeutsch', 6233, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 6-dars zapisi', Description = N'DeutschPower B1 Challenge — 6-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Verben
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 70, 72 - mavzu, kitobdan to''liq mashqlarini ishlash
 . Verben + Predloglar: 4-qism 21ta fe''l yodlash + yozma har bitta fe''lga 2 tadan gap tuzish daftarga 

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

4.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6233';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6237')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 7-dars zapisi', N'DeutschPower B1 Challenge — 7-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Verben

Uyga vazifalar:
Hausaufgabe:
 . Nebensätze uchun 10ta gap tuzish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

5.06.2026', N'https://t.me/DinaraDeutsch/6237', N'uz', Id, NULL, N'@DinaraDeutsch', 6237, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 7-dars zapisi', Description = N'DeutschPower B1 Challenge — 7-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Verben

Uyga vazifalar:
Hausaufgabe:
 . Nebensätze uchun 10ta gap tuzish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

5.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6237';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6242')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 8-dars zapisi', N'DeutschPower B1 Challenge — 8-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Nebensätze uchun 10ta gap tuzish
 . Grammatik Aktiv 71 Thema
 . 3ta sprechen + video qilish
 . lug''atni yozib olib yodlash

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

6.06.2026', N'https://t.me/DinaraDeutsch/6242', N'uz', Id, NULL, N'@DinaraDeutsch', 6242, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 8-dars zapisi', Description = N'DeutschPower B1 Challenge — 8-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Nebensätze uchun 10ta gap tuzish
 . Grammatik Aktiv 71 Thema
 . 3ta sprechen + video qilish
 . lug''atni yozib olib yodlash

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

6.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6242';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6250')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 9-dars zapisi', N'DeutschPower B1 Challenge — 9-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Sprechen
 Verben

Uyga vazifalar:
Hausaufgabe:
 . Grammatik Aktiv 68, 69 - mavzular 
 . Verben 5-qismini yodlash 
 . Sprechen qilish 2ta mavzuda

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

9.06.2026', N'https://t.me/DinaraDeutsch/6250', N'uz', Id, NULL, N'@DinaraDeutsch', 6250, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 9-dars zapisi', Description = N'DeutschPower B1 Challenge — 9-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Sprechen
 Verben

Uyga vazifalar:
Hausaufgabe:
 . Grammatik Aktiv 68, 69 - mavzular 
 . Verben 5-qismini yodlash 
 . Sprechen qilish 2ta mavzuda

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

9.06.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6250';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6175')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 1-dars zapisi', N'DeutschPower B1 Challenge — 1-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Verben
 Podcast eshitish
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 80-mavzu, kitobdan to''liq mashqlarini ishlash
 . Verben + Predloglar: 21ta fe''l yodlash + yozma har bitta fe''lga 2 tadan gap tuzish daftarga 
 . Podcast : Lug''at yodlash , podcastni qayta eshitish + o''sha podcastni qayta gapirishga tayyorlash

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

26.05.2026', N'https://t.me/DinaraDeutsch/6175', N'uz', Id, NULL, N'@DinaraDeutsch', 6175, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 1-dars zapisi', Description = N'DeutschPower B1 Challenge — 1-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Verben
 Podcast eshitish
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 80-mavzu, kitobdan to''liq mashqlarini ishlash
 . Verben + Predloglar: 21ta fe''l yodlash + yozma har bitta fe''lga 2 tadan gap tuzish daftarga 
 . Podcast : Lug''at yodlash , podcastni qayta eshitish + o''sha podcastni qayta gapirishga tayyorlash

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

26.05.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6175';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6194')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 2-dars zapisi', N'DeutschPower B1 Challenge — 2-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Verben
 Podcast eshitish
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 78, 79-mavzu, kitobdan to''liq mashqlarini ishlash
 . Verben + Predloglar: 2-qism 21ta fe''l yodlash + yozma har bitta fe''lga 2 tadan gap tuzish daftarga 
 . 2 - Podcast: Lug''at yodlash, podcastni qayta eshitish + o''sha podcastni qayta gapirishga tayyorlash

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

28.05.2026', N'https://t.me/DinaraDeutsch/6194', N'uz', Id, NULL, N'@DinaraDeutsch', 6194, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 2-dars zapisi', Description = N'DeutschPower B1 Challenge — 2-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Verben
 Podcast eshitish
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 78, 79-mavzu, kitobdan to''liq mashqlarini ishlash
 . Verben + Predloglar: 2-qism 21ta fe''l yodlash + yozma har bitta fe''lga 2 tadan gap tuzish daftarga 
 . 2 - Podcast: Lug''at yodlash, podcastni qayta eshitish + o''sha podcastni qayta gapirishga tayyorlash

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

28.05.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6194';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6199')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 3-dars zapisi', N'DeutschPower B1 Challenge — 3-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 77-mavzu, kitobdan to''liq mashqlarini ishlash
 . Sprechen qilib, ovozli habar tarjida guruhga jo''natish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

29.05.2026', N'https://t.me/DinaraDeutsch/6199', N'uz', Id, NULL, N'@DinaraDeutsch', 6199, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 3-dars zapisi', Description = N'DeutschPower B1 Challenge — 3-dars zapisi 

Bugungi dars rejasi:
 Grammatika
 Sprechen

Uyga vazifalar:
Hausaufgabe:
 . Grammatika: Grammatik Aktiv 77-mavzu, kitobdan to''liq mashqlarini ishlash
 . Sprechen qilib, ovozli habar tarjida guruhga jo''natish

Uyga vazifalarni aynan shu post komentiga joʻnatib qoʻying. 

29.05.2026'
    WHERE Url = N'https://t.me/DinaraDeutsch/6199';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5981')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'ChatGPT’dan foydalanish zararli yoki yo‘qmi — shu savolga video davomida javob berdim', N'ChatGPT’dan foydalanish zararli yoki yo‘qmi — shu savolga video davomida javob berdim 

O‘zim qanday foydalanaman,
qanday foydalansa foyda olish mumkin — barchasini tushuntirib o‘tdim.

— Barchasini video davomida bilib olasiz.', N'https://t.me/DinaraDeutsch/5981', N'uz', Id, NULL, N'@DinaraDeutsch', 5981, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'ChatGPT’dan foydalanish zararli yoki yo‘qmi — shu savolga video davomida javob berdim', Description = N'ChatGPT’dan foydalanish zararli yoki yo‘qmi — shu savolga video davomida javob berdim 

O‘zim qanday foydalanaman,
qanday foydalansa foyda olish mumkin — barchasini tushuntirib o‘tdim.

— Barchasini video davomida bilib olasiz.'
    WHERE Url = N'https://t.me/DinaraDeutsch/5981';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5985')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Rosa videolar qilgim kelardida. Hozircha o‘zim yasamayapman (singlim yordam beryapti ), lekin har doim bitta narsani xohlardim:...', N'Rosa videolar qilgim kelardida. Hozircha o‘zim yasamayapman (singlim yordam beryapti ), lekin har doim bitta narsani xohlardim: videolar oddiy vaqt oladigan emas, aksincha foydali, nimadir o‘rgatadigan bo‘lsin. 

Nihoyat o‘zimga mos ideya topdim . Bu yangi formatdagi birinchi videoyim. Proba uchun qilib ko‘rdik: qanday qabul qilinadi, sizlarga yoqadimi, shuni bilmoqchiman.

— Endi yanayam professional, yanayam foydali qilishga harakat qilaman. Videoni ko‘rib, fikrlaringizni yozib qoldiringlar. Bitta-bitta o‘qiyman, menga juda katta motivatsiya bo‘ladi .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5985', N'uz', Id, NULL, N'@DinaraDeutsch', 5985, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Rosa videolar qilgim kelardida. Hozircha o‘zim yasamayapman (singlim yordam beryapti ), lekin har doim bitta narsani xohlardim:...', Description = N'Rosa videolar qilgim kelardida. Hozircha o‘zim yasamayapman (singlim yordam beryapti ), lekin har doim bitta narsani xohlardim: videolar oddiy vaqt oladigan emas, aksincha foydali, nimadir o‘rgatadigan bo‘lsin. 

Nihoyat o‘zimga mos ideya topdim . Bu yangi formatdagi birinchi videoyim. Proba uchun qilib ko‘rdik: qanday qabul qilinadi, sizlarga yoqadimi, shuni bilmoqchiman.

— Endi yanayam professional, yanayam foydali qilishga harakat qilaman. Videoni ko‘rib, fikrlaringizni yozib qoldiringlar. Bitta-bitta o‘qiyman, menga juda katta motivatsiya bo‘ladi .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5985';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6113')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Videolar - Nemis tili darsi #6113', N'', N'https://t.me/DinaraDeutsch/6113', N'uz', Id, NULL, N'@DinaraDeutsch', 6113, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Videolar - Nemis tili darsi #6113', Description = N''
    WHERE Url = N'https://t.me/DinaraDeutsch/6113';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6145')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A2’dan B1’ga o‘tish aslida o‘ylagandek qiyin emas', N'A2’dan B1’ga o‘tish aslida o‘ylagandek qiyin emas 

Muhimi — to‘g‘ri sistema, muntazam amaliyot va sprechenga urg‘u berish. Darsda aynan qanaqa qilib Schritt für Schritt (qadamma qadam) B1 darajaga chiqish mumkinligini ko‘rsatib berdim . 

Men sizga bu darsda yo‘lni ko‘rsatdim. Lekin natija — faqat amalda keladi.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6145', N'uz', Id, NULL, N'@DinaraDeutsch', 6145, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A2’dan B1’ga o‘tish aslida o‘ylagandek qiyin emas', Description = N'A2’dan B1’ga o‘tish aslida o‘ylagandek qiyin emas 

Muhimi — to‘g‘ri sistema, muntazam amaliyot va sprechenga urg‘u berish. Darsda aynan qanaqa qilib Schritt für Schritt (qadamma qadam) B1 darajaga chiqish mumkinligini ko‘rsatib berdim . 

Men sizga bu darsda yo‘lni ko‘rsatdim. Lekin natija — faqat amalda keladi.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6145';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5888')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5888', N'uz', Id, NULL, N'@DinaraDeutsch', 5888, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', Description = N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5888';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5903')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5903', N'uz', Id, NULL, N'@DinaraDeutsch', 5903, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', Description = N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5903';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5914')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5914', N'uz', Id, NULL, N'@DinaraDeutsch', 5914, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', Description = N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5914';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5750')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5750', N'uz', Id, NULL, N'@DinaraDeutsch', 5750, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', Description = N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5750';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5752')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Yana bitta o‘quvchimiz sertifikat olibdi', N'Yana bitta o‘quvchimiz sertifikat olibdi 

Natija olganlar safi ancha kengayib qoldi. Har safar bunaqa xabar eshitsam, o‘zim olgandek xursand bo‘laman .

Yana may oyiga registratsiya qilganlar ham bor edi. Ularning natijalari ham chiqib qolsa, albatta kanalga joylayman.

— Mehnat hech qachon javobsiz qolmaydi . 
— Tabriklash uchun - " ".

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5752', N'uz', Id, NULL, N'@DinaraDeutsch', 5752, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Yana bitta o‘quvchimiz sertifikat olibdi', Description = N'Yana bitta o‘quvchimiz sertifikat olibdi 

Natija olganlar safi ancha kengayib qoldi. Har safar bunaqa xabar eshitsam, o‘zim olgandek xursand bo‘laman .

Yana may oyiga registratsiya qilganlar ham bor edi. Ularning natijalari ham chiqib qolsa, albatta kanalga joylayman.

— Mehnat hech qachon javobsiz qolmaydi . 
— Tabriklash uchun - " ".

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5752';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5796')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'B1 Standart', N'/ B1 Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim.

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5796', N'uz', Id, NULL, N'@DinaraDeutsch', 5796, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'B1 Standart', Description = N'/ B1 Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim.

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5796';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5820')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun yana yangi odamlar qo‘shildi kanalimizga. Safimiz kundan-kunga kengayib boryapti, bundan faqat xursandman .', N'Bugun yana yangi odamlar qo‘shildi kanalimizga. Safimiz kundan-kunga kengayib boryapti, bundan faqat xursandman .

Yangilar, qalaysizlar? 

Ismim Dinara. 21 yoshman. Yaqinda 21 ga kiraman (05.05.2005) . Xorazmdanman, lekin singlim bilan 3 yildan beri Toshkentda yashaymiz.

Bolaligimdan beri nemis tilini o‘rganaman. Maktabda 11 yil nemis tili muhitida o‘qiganman, hozir esa O‘zbekiston Milliy Universitetida tarjimonlik yo‘nalishida o‘qiyman. Universitetga birinchi grant bilan kirganman. Hozir 3-kursman .

Qisqasi, maktab + universitet hisobida 13 yildan beri nemis tili olamidaman .

Bu yerda esa o‘rganganlarimni sizlarga ulashaman. Kanalimizda deyarli har kuni:

bepul darslar 
 grammatika 
 imtihonga tayyorlov 
 foydali maslahatlar degandek hammasidan bor.

O‘zingiz haqingizda ham yozib ketingchi: ismingiz, yoshingiz, qayerdansiz, nima ish qilasiz yoki nimalarga qiziqasiz? Nemis tilini nima uchun oʻrganyapsiz yoki oʻrganmoqchisiz ? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5820', N'uz', Id, NULL, N'@DinaraDeutsch', 5820, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun yana yangi odamlar qo‘shildi kanalimizga. Safimiz kundan-kunga kengayib boryapti, bundan faqat xursandman .', Description = N'Bugun yana yangi odamlar qo‘shildi kanalimizga. Safimiz kundan-kunga kengayib boryapti, bundan faqat xursandman .

Yangilar, qalaysizlar? 

Ismim Dinara. 21 yoshman. Yaqinda 21 ga kiraman (05.05.2005) . Xorazmdanman, lekin singlim bilan 3 yildan beri Toshkentda yashaymiz.

Bolaligimdan beri nemis tilini o‘rganaman. Maktabda 11 yil nemis tili muhitida o‘qiganman, hozir esa O‘zbekiston Milliy Universitetida tarjimonlik yo‘nalishida o‘qiyman. Universitetga birinchi grant bilan kirganman. Hozir 3-kursman .

Qisqasi, maktab + universitet hisobida 13 yildan beri nemis tili olamidaman .

Bu yerda esa o‘rganganlarimni sizlarga ulashaman. Kanalimizda deyarli har kuni:

bepul darslar 
 grammatika 
 imtihonga tayyorlov 
 foydali maslahatlar degandek hammasidan bor.

O‘zingiz haqingizda ham yozib ketingchi: ismingiz, yoshingiz, qayerdansiz, nima ish qilasiz yoki nimalarga qiziqasiz? Nemis tilini nima uchun oʻrganyapsiz yoki oʻrganmoqchisiz ? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5820';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5846')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5846', N'uz', Id, NULL, N'@DinaraDeutsch', 5846, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', Description = N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5846';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5706')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Standart', N'/ Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5706', N'uz', Id, NULL, N'@DinaraDeutsch', 5706, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Standart', Description = N'/ Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5706';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5710')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DINAR A BILAN TANISHUV', N'DINAR A BILAN TANISHUV 

Bugun yana yangi odamlar qo‘shildi kanalimizga. Safimiz kundan-kunga kengayib boryapti, bundan faqat xursandman .

Yangilar, qalaysizlar? 

Ismim Dinara. 20 yoshman. Yaqinda 21 ga kiraman (05.05.2005) . Xorazmdanman, lekin singlim bilan 2 yildan beri Toshkentda yashaymiz.

Bolaligimdan beri nemis tilini o‘rganaman. Maktabda 11 yil nemis tili muhitida o‘qiganman, hozir esa O‘zbekiston Milliy Universitetida tarjimonlik yo‘nalishida o‘qiyman. Universitetga birinchi grant bilan kirganman. Hozir 2-kursni tugatish arafasidaman .

Qisqasi, maktab + universitet hisobida 13 yildan beri nemis tili olamidaman .

Bu yerda esa o‘rganganlarimni sizlarga ulashaman. Kanalimizda deyarli har kuni:

bepul darslar 
 grammatika 
 imtihonga tayyorlov 
 foydali maslahatlar degandek hammasidan bor.

O‘zingiz haqingizda ham yozib ketingchi: ismingiz, yoshingiz, qayerdansiz, nima ish qilasiz yoki nimalarga qiziqasiz? Nemis tilini nima uchun oʻrganyapsiz? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5710', N'uz', Id, NULL, N'@DinaraDeutsch', 5710, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DINAR A BILAN TANISHUV', Description = N'DINAR A BILAN TANISHUV 

Bugun yana yangi odamlar qo‘shildi kanalimizga. Safimiz kundan-kunga kengayib boryapti, bundan faqat xursandman .

Yangilar, qalaysizlar? 

Ismim Dinara. 20 yoshman. Yaqinda 21 ga kiraman (05.05.2005) . Xorazmdanman, lekin singlim bilan 2 yildan beri Toshkentda yashaymiz.

Bolaligimdan beri nemis tilini o‘rganaman. Maktabda 11 yil nemis tili muhitida o‘qiganman, hozir esa O‘zbekiston Milliy Universitetida tarjimonlik yo‘nalishida o‘qiyman. Universitetga birinchi grant bilan kirganman. Hozir 2-kursni tugatish arafasidaman .

Qisqasi, maktab + universitet hisobida 13 yildan beri nemis tili olamidaman .

Bu yerda esa o‘rganganlarimni sizlarga ulashaman. Kanalimizda deyarli har kuni:

bepul darslar 
 grammatika 
 imtihonga tayyorlov 
 foydali maslahatlar degandek hammasidan bor.

O‘zingiz haqingizda ham yozib ketingchi: ismingiz, yoshingiz, qayerdansiz, nima ish qilasiz yoki nimalarga qiziqasiz? Nemis tilini nima uchun oʻrganyapsiz? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5710';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5729')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Standart', N'/ Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5729', N'uz', Id, NULL, N'@DinaraDeutsch', 5729, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Standart', Description = N'/ Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5729';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5618')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bu — Herr Kleifelt', N'Bu — Herr Kleifelt 

Har yili aprel oyida kelib, 3 kunlik seminar o‘tkazib beradi.

Mavzular:
— Tarix
— Geografiya
— Siyosat

Eng qiziq joyi — har yili yozda albatta qandaydir “Abenteuer” qilib ko‘rarkan.

Bu yil — Fallschirmsprung qilibdi, ya’ni samolyotdan parashyut bilan sakragan . (Videoda oʻzi).

Yana bir yili esa mototsiklda do‘sti bilan dunyo bo‘ylab sayohat qilgan: Germaniyadan chiqib, Rossiya, Ukraina, Polsha, Turkiya va yana qaysidir davlatlardan aylanib, yana Germaniyaga qaytibdi. 50 kunga yaqin boʻlgan sayohati .

— Nechi yosh deb o‘ylaysizlar? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5618', N'uz', Id, NULL, N'@DinaraDeutsch', 5618, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bu — Herr Kleifelt', Description = N'Bu — Herr Kleifelt 

Har yili aprel oyida kelib, 3 kunlik seminar o‘tkazib beradi.

Mavzular:
— Tarix
— Geografiya
— Siyosat

Eng qiziq joyi — har yili yozda albatta qandaydir “Abenteuer” qilib ko‘rarkan.

Bu yil — Fallschirmsprung qilibdi, ya’ni samolyotdan parashyut bilan sakragan . (Videoda oʻzi).

Yana bir yili esa mototsiklda do‘sti bilan dunyo bo‘ylab sayohat qilgan: Germaniyadan chiqib, Rossiya, Ukraina, Polsha, Turkiya va yana qaysidir davlatlardan aylanib, yana Germaniyaga qaytibdi. 50 kunga yaqin boʻlgan sayohati .

— Nechi yosh deb o‘ylaysizlar? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5618';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5658')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Standart', N'/ Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5658', N'uz', Id, NULL, N'@DinaraDeutsch', 5658, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Standart', Description = N'/ Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5658';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5568')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Standart', N'/ Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5568', N'uz', Id, NULL, N'@DinaraDeutsch', 5568, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Standart', Description = N'/ Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5568';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5580')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Dushanba, Chorshanba, Juma, Shanba

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5580', N'uz', Id, NULL, N'@DinaraDeutsch', 5580, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', Description = N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Dushanba, Chorshanba, Juma, Shanba

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5580';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5589')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Standart', N'/ Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5589', N'uz', Id, NULL, N'@DinaraDeutsch', 5589, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Standart', Description = N'/ Standart 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Har kuni boʻlib oʻtadi dars.

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:
 Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5589';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5478')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Dushanba, Chorshanba, Juma, Shanba

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5478', N'uz', Id, NULL, N'@DinaraDeutsch', 5478, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', Description = N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Dushanba, Chorshanba, Juma, Shanba

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5478';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5491')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Dushanba, Chorshanba, Juma, Shanba

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5491', N'uz', Id, NULL, N'@DinaraDeutsch', 5491, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', Description = N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Dushanba, Chorshanba, Juma, Shanba

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5491';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5524')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Dushanba, Chorshanba, Juma, Shanba

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5524', N'uz', Id, NULL, N'@DinaraDeutsch', 5524, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Videolar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', Description = N'/ 

Individual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

— Dushanba, Chorshanba, Juma, Shanba

Darslar Arena B1 kitobidan bo‘ladi.
Darsda oʻzi nimalar qilamiz?
 Lesen
 Hören
 (kerak bo‘lsa grammatika ham o‘tamiz)
 Textlarni birga tarjima qilib, lug‘atlar ustida ishlaymiz
 To‘g‘ri javobni qanday topishni o‘rgataman.

— Real dars jarayonini ko‘rib, o‘zingiz ham o‘rganib borsangiz boʻladi, albatta darsni kuzatish tekin . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5524';
END;
GO

PRINT N'Tugadi: Materiallar muvaffaqiyatli saqlandi.';
GO