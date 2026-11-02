-- =============================================================
-- Maqolalar, lug'atlar va grammatika
-- Kategoriya: Maqolalar
-- Kanal: t.me/DinaraDeutsch
-- Materiallar soni: 263
-- =============================================================

SET NOCOUNT ON;

PRINT N'Boshlandi: Materiallar saqlanmoqda...';

IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6784')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Qoʻymadilar, qoʻymadilarda ! — Sizlarga darajani aniqlash uchun test topib keldim! Bu test orqali o‘zingizning qaysi bosqichda ...', N'Qoʻymadilar, qoʻymadilarda ! — Sizlarga darajani aniqlash uchun test topib keldim! Bu test orqali o‘zingizning qaysi bosqichda ekaningizni aniqlashingiz mumkin. — daraja uchun: https://www.cornelsen.de/sites/einstufungstest/EINSTUFUNGSTEST_DAF_A1…', N'https://t.me/DinaraDeutsch/6784', N'uz', Id, NULL, N'@DinaraDeutsch', 6784, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Qoʻymadilar, qoʻymadilarda ! — Sizlarga darajani aniqlash uchun test topib keldim! Bu test orqali o‘zingizning qaysi bosqichda ...', Description = N'Qoʻymadilar, qoʻymadilarda ! — Sizlarga darajani aniqlash uchun test topib keldim! Bu test orqali o‘zingizning qaysi bosqichda ekaningizni aniqlashingiz mumkin. — daraja uchun: https://www.cornelsen.de/sites/einstufungstest/EINSTUFUNGSTEST_DAF_A1…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6784';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6785')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 kursga bugun qabul yopiladi ⏳', N'A1 kursga bugun qabul yopiladi ⏳ 

Agar kursda qatnashmoqchi bo''lsangiz adminga "Men kursda qatnashmoqchiman" deb yozib qoldiring. Sizga to''liq ma''lumot beramiz. 

Admin: @deutschmax_admin', N'https://t.me/DinaraDeutsch/6785', N'uz', Id, NULL, N'@DinaraDeutsch', 6785, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 kursga bugun qabul yopiladi ⏳', Description = N'A1 kursga bugun qabul yopiladi ⏳ 

Agar kursda qatnashmoqchi bo''lsangiz adminga "Men kursda qatnashmoqchiman" deb yozib qoldiring. Sizga to''liq ma''lumot beramiz. 

Admin: @deutschmax_admin'
    WHERE Url = N'https://t.me/DinaraDeutsch/6785';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6789')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Xayrli dushanbalaar!', N'Xayrli dushanbalaar! 

Bugun yelkamdan tog’ ag’dariladigan kun. Qanday kun ekanligini topdingizku-a?!', N'https://t.me/DinaraDeutsch/6789', N'uz', Id, NULL, N'@DinaraDeutsch', 6789, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Xayrli dushanbalaar!', Description = N'Xayrli dushanbalaar! 

Bugun yelkamdan tog’ ag’dariladigan kun. Qanday kun ekanligini topdingizku-a?!'
    WHERE Url = N'https://t.me/DinaraDeutsch/6789';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6791')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun soat 23:59 dan keyin bir eshik yopiladi', N'Bugun soat 23:59 dan keyin bir eshik yopiladi 

Va eng qizig‘i, ayrimlar bu imkoniyatning qadrini aynan qabul yopilganidan keyin tushunishadi.

“Yozilsam bo‘larkan…”
“Yana bir kun vaqt berolmaysizmi?”
“Keyingi guruh qachon ochiladi?”

Keyin bu savollarga ijobiy javob bera olmasligimiz mumkin. Bir o‘ylab ko‘ring, hozir ikkita tanlovingiz bor: yana bir necha oy nemis tilini o‘rganishni rejalashtirib yurish yoki shu vaqt ichida ilk natijalaringizga erishish.

3 oy keyingi o‘zingiz bugungi qaroringiz uchun sizga rahmat aytadimi yoki afsuslanadimi? 

@deutschmax_admin', N'https://t.me/DinaraDeutsch/6791', N'uz', Id, NULL, N'@DinaraDeutsch', 6791, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun soat 23:59 dan keyin bir eshik yopiladi', Description = N'Bugun soat 23:59 dan keyin bir eshik yopiladi 

Va eng qizig‘i, ayrimlar bu imkoniyatning qadrini aynan qabul yopilganidan keyin tushunishadi.

“Yozilsam bo‘larkan…”
“Yana bir kun vaqt berolmaysizmi?”
“Keyingi guruh qachon ochiladi?”

Keyin bu savollarga ijobiy javob bera olmasligimiz mumkin. Bir o‘ylab ko‘ring, hozir ikkita tanlovingiz bor: yana bir necha oy nemis tilini o‘rganishni rejalashtirib yurish yoki shu vaqt ichida ilk natijalaringizga erishish.

3 oy keyingi o‘zingiz bugungi qaroringiz uchun sizga rahmat aytadimi yoki afsuslanadimi? 

@deutschmax_admin'
    WHERE Url = N'https://t.me/DinaraDeutsch/6791';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6792')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 kursimiz haqida eng ko‘p berilayotgan 7 ta savolga javob!', N'FAQ 

A1 kursimiz haqida eng ko‘p berilayotgan 7 ta savolga javob! 

1. Kurs uchun kitoblarni alohida sotib olish kerakmi? 

— Yo‘q! Kurs davomida foydalaniladigan kitoblar ham to‘lov ichiga kiritilgan. Ularni pochta orqali yuboramiz. 

2. Darslar online bo‘ladimi? 

— Ha, kurs to‘liq online formatda tashkil etiladi. Qayerda yashashingizdan qat’i nazar, qatnashishingiz mumkin.

3. Darslar qachon bo‘ladi? 

— Haftasiga 3 marta ustoz bilan jonli darslar o‘tkaziladi. Aniq kun va soatlar dars jadvali orqali ma’lum qilinadi. Undan tashqari o’zim o’tgan video darslar mavjud.

4. Kurs qancha davom etadi? 

— 2 oy davom etadi. Bu vaqt ichida sizni 84 ta individual dars, 24 ta jonli dars va 20 ta bonus grammatika hamda imtihonga tayyorgarlik darsi kutmoqda. Uddalasangiz 1 oyda ham tugatsangiz bo’ladi.

5. Kurator bormi? 

— Ha! O‘quv jarayonida kurator nazorati ham mavjud. Ya’ni kursga yozilib, o‘zingiz bilan o‘zingiz qolib ketmaysiz.

6. Uy vazifalari beriladimi? 

— Albatta! Har kuni uy vazifalari beriladi va tekshirib boriladi. Chunki tilni faqat dars tinglash bilan emas, muntazam mashq qilish orqali o‘rganasiz.

7. Kurs kimlar uchun? 

— Nemis tilini 0 dan boshlamoqchi bo‘lganlar, avval o‘rganib, keyin tashlab qo‘yganlar, Germaniyada o‘qish yoki ishlashni rejalashtirayotganlar hamda mustahkam A1 poydevorini shakllantirishni istaganlar uchun.

Qabul tugashiga sanoqli soatlar qoldi. Savollaringizga javob oldingiz, endi qaror sizdan. 

Ro‘yxatdan o‘tish: @deutschmax_admin', N'https://t.me/DinaraDeutsch/6792', N'uz', Id, NULL, N'@DinaraDeutsch', 6792, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 kursimiz haqida eng ko‘p berilayotgan 7 ta savolga javob!', Description = N'FAQ 

A1 kursimiz haqida eng ko‘p berilayotgan 7 ta savolga javob! 

1. Kurs uchun kitoblarni alohida sotib olish kerakmi? 

— Yo‘q! Kurs davomida foydalaniladigan kitoblar ham to‘lov ichiga kiritilgan. Ularni pochta orqali yuboramiz. 

2. Darslar online bo‘ladimi? 

— Ha, kurs to‘liq online formatda tashkil etiladi. Qayerda yashashingizdan qat’i nazar, qatnashishingiz mumkin.

3. Darslar qachon bo‘ladi? 

— Haftasiga 3 marta ustoz bilan jonli darslar o‘tkaziladi. Aniq kun va soatlar dars jadvali orqali ma’lum qilinadi. Undan tashqari o’zim o’tgan video darslar mavjud.

4. Kurs qancha davom etadi? 

— 2 oy davom etadi. Bu vaqt ichida sizni 84 ta individual dars, 24 ta jonli dars va 20 ta bonus grammatika hamda imtihonga tayyorgarlik darsi kutmoqda. Uddalasangiz 1 oyda ham tugatsangiz bo’ladi.

5. Kurator bormi? 

— Ha! O‘quv jarayonida kurator nazorati ham mavjud. Ya’ni kursga yozilib, o‘zingiz bilan o‘zingiz qolib ketmaysiz.

6. Uy vazifalari beriladimi? 

— Albatta! Har kuni uy vazifalari beriladi va tekshirib boriladi. Chunki tilni faqat dars tinglash bilan emas, muntazam mashq qilish orqali o‘rganasiz.

7. Kurs kimlar uchun? 

— Nemis tilini 0 dan boshlamoqchi bo‘lganlar, avval o‘rganib, keyin tashlab qo‘yganlar, Germaniyada o‘qish yoki ishlashni rejalashtirayotganlar hamda mustahkam A1 poydevorini shakllantirishni istaganlar uchun.

Qabul tugashiga sanoqli soatlar qoldi. Savollaringizga javob oldingiz, endi qaror sizdan. 

Ro‘yxatdan o‘tish: @deutschmax_admin'
    WHERE Url = N'https://t.me/DinaraDeutsch/6792';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6793')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'darsi aniq tushuntirilgan sprechenni ham oson oʻrganasiz maslahat beraman oʻrganishni', N'darsi aniq tushuntirilgan sprechenni ham oson oʻrganasiz maslahat beraman oʻrganishni', N'https://t.me/DinaraDeutsch/6793', N'uz', Id, NULL, N'@DinaraDeutsch', 6793, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'darsi aniq tushuntirilgan sprechenni ham oson oʻrganasiz maslahat beraman oʻrganishni', Description = N'darsi aniq tushuntirilgan sprechenni ham oson oʻrganasiz maslahat beraman oʻrganishni'
    WHERE Url = N'https://t.me/DinaraDeutsch/6793';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6794')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'ayniqsa yosh bolangiz boʻlsa oʻziz boʻsh vaqtizda video darslikni qilishiz mumkin va qulay', N'ayniqsa yosh bolangiz boʻlsa oʻziz boʻsh vaqtizda video darslikni qilishiz mumkin va qulay', N'https://t.me/DinaraDeutsch/6794', N'uz', Id, NULL, N'@DinaraDeutsch', 6794, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'ayniqsa yosh bolangiz boʻlsa oʻziz boʻsh vaqtizda video darslikni qilishiz mumkin va qulay', Description = N'ayniqsa yosh bolangiz boʻlsa oʻziz boʻsh vaqtizda video darslikni qilishiz mumkin va qulay'
    WHERE Url = N'https://t.me/DinaraDeutsch/6794';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6795')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'dan keyin adminlarimiz javob bera olishmaydi. Demak ungacha ulgurib qolish kerak. Bu kurs haqida so’nggi eslatmam. Keyin kanald...', N'Eslatma 

22:00 dan keyin adminlarimiz javob bera olishmaydi. Demak ungacha ulgurib qolish kerak. Bu kurs haqida so’nggi eslatmam. Keyin kanalda ko’p-ko’p foydali postlar bo’ladi 

– Xo’sh, kursga qo’shilgan “baxtlilar” yozinglarchi. Darslarni ko’rdingizmi? Sizga ma’qul bo’ldimi?', N'https://t.me/DinaraDeutsch/6795', N'uz', Id, NULL, N'@DinaraDeutsch', 6795, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'dan keyin adminlarimiz javob bera olishmaydi. Demak ungacha ulgurib qolish kerak. Bu kurs haqida so’nggi eslatmam. Keyin kanald...', Description = N'Eslatma 

22:00 dan keyin adminlarimiz javob bera olishmaydi. Demak ungacha ulgurib qolish kerak. Bu kurs haqida so’nggi eslatmam. Keyin kanalda ko’p-ko’p foydali postlar bo’ladi 

– Xo’sh, kursga qo’shilgan “baxtlilar” yozinglarchi. Darslarni ko’rdingizmi? Sizga ma’qul bo’ldimi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6795';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6802')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Şunga öxşaş xabarlarni deyarli har kuni olaman. Öquvçilar şunça yil öqib, kurslarga borib, şunça pul tölaşadiyu lekin gapirişid...', N'Şunga öxşaş xabarlarni deyarli har kuni olaman. Öquvçilar şunça yil öqib, kurslarga borib, şunça pul tölaşadiyu lekin gapirişida ösiş bölmaydi. Ösiş bölmagandan keyin ularda motivatsiya va qiziqiş sönadi, öqigisi kelmaydi. 

Bitta darajada qotib qoliş juda köp odamda kuzatilar ekan. Şu muammo uçun yeçim bölsa juda yaxşi bölardi-ya?

Siz bu muammoga nimadir yeçim topganmisiz?

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6802', N'uz', Id, NULL, N'@DinaraDeutsch', 6802, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Şunga öxşaş xabarlarni deyarli har kuni olaman. Öquvçilar şunça yil öqib, kurslarga borib, şunça pul tölaşadiyu lekin gapirişid...', Description = N'Şunga öxşaş xabarlarni deyarli har kuni olaman. Öquvçilar şunça yil öqib, kurslarga borib, şunça pul tölaşadiyu lekin gapirişida ösiş bölmaydi. Ösiş bölmagandan keyin ularda motivatsiya va qiziqiş sönadi, öqigisi kelmaydi. 

Bitta darajada qotib qoliş juda köp odamda kuzatilar ekan. Şu muammo uçun yeçim bölsa juda yaxşi bölardi-ya?

Siz bu muammoga nimadir yeçim topganmisiz?

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6802';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6762')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kursga qo‘shilmoqchisiz, lekin hali ham savollaringiz bormi?', N'Kursga qo‘shilmoqchisiz, lekin hali ham savollaringiz bormi? 

Unda ertangi efir aynan siz uchun!

A1 kursiga qiziqayotgan, ammo hali qaror qilolmayotganlar uchun maxsus SAVOL-JAVOB EFIRI tashkil qilyapmiz. 

Kurs qanday o‘tiladi? Darslar qaysi formatda bo‘ladi? Nemis tilini mutlaqo 0 dan boshlasa bo‘ladimi? Qancha vaqt ajratish kerak? Kurs yakunida qanday natijaga erishish mumkin?

– Shu va boshqa barcha savollaringizga shaxsan o‘zim javob beraman.

18-oktabr, yakshanba 
 20:00 
 Shu Telegram kanalimizda! 

Kursga qabul yopilishiga 2 kun qoldi. Shuning uchun qaror qilishdan oldin barcha savollaringizga javob olib qoling.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6762', N'uz', Id, NULL, N'@DinaraDeutsch', 6762, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kursga qo‘shilmoqchisiz, lekin hali ham savollaringiz bormi?', Description = N'Kursga qo‘shilmoqchisiz, lekin hali ham savollaringiz bormi? 

Unda ertangi efir aynan siz uchun!

A1 kursiga qiziqayotgan, ammo hali qaror qilolmayotganlar uchun maxsus SAVOL-JAVOB EFIRI tashkil qilyapmiz. 

Kurs qanday o‘tiladi? Darslar qaysi formatda bo‘ladi? Nemis tilini mutlaqo 0 dan boshlasa bo‘ladimi? Qancha vaqt ajratish kerak? Kurs yakunida qanday natijaga erishish mumkin?

– Shu va boshqa barcha savollaringizga shaxsan o‘zim javob beraman.

18-oktabr, yakshanba 
 20:00 
 Shu Telegram kanalimizda! 

Kursga qabul yopilishiga 2 kun qoldi. Shuning uchun qaror qilishdan oldin barcha savollaringizga javob olib qoling.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6762';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6763')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Oramizda o’qib ham ishlaydiganlar bormi?', N'Oramizda o’qib ham ishlaydiganlar bormi?', N'https://t.me/DinaraDeutsch/6763', N'uz', Id, NULL, N'@DinaraDeutsch', 6763, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Oramizda o’qib ham ishlaydiganlar bormi?', Description = N'Oramizda o’qib ham ishlaydiganlar bormi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6763';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6764')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Ishlayman, o‘qiyman. Nemis tilini o‘rganishga qanday vaqt topaman?', N'Ishlayman, o‘qiyman. Nemis tilini o‘rganishga qanday vaqt topaman? 

Kursga qo‘shilishni istayotganlarning ko‘pchiligini aynan shu savol ikkilanib qolishga majbur qilyapti.

Aslida, nemis tilini o‘rganish uchun kun bo‘yi bo‘sh bo‘lishingiz shart emas. Muhimi, bor vaqtingizdan to‘g‘ri foydalanish. Masalan, har kuni ijtimoiy tarmoqlarga sarflaydigan vaqtingizning 30–40 daqiqasini nemis tiliga ajratsangiz-chi? Ishga yoki o‘qishga ketayotganda yangi so‘zlarni takrorlasangiz, kechqurun esa darslarni ko‘rib chiqsangiz-chi?

A1 kursimizdagi video darsliklarning qulayligi ham shunda. Ularni o‘zingizga qulay vaqtda ko‘rishingiz, tushunmagan joyingizni qayta takrorlashingiz mumkin.

Sizga bir narsani aytmoqchiman: hayotingizdagi barcha ishlar tugab, bo‘sh vaqtingiz ko‘payishini kutsangiz, ideal vaqt hech qachon kelmaydi. Ish ham, o‘qish ham, kundalik yumushlar ham davom etaveradi.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6764', N'uz', Id, NULL, N'@DinaraDeutsch', 6764, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Ishlayman, o‘qiyman. Nemis tilini o‘rganishga qanday vaqt topaman?', Description = N'Ishlayman, o‘qiyman. Nemis tilini o‘rganishga qanday vaqt topaman? 

Kursga qo‘shilishni istayotganlarning ko‘pchiligini aynan shu savol ikkilanib qolishga majbur qilyapti.

Aslida, nemis tilini o‘rganish uchun kun bo‘yi bo‘sh bo‘lishingiz shart emas. Muhimi, bor vaqtingizdan to‘g‘ri foydalanish. Masalan, har kuni ijtimoiy tarmoqlarga sarflaydigan vaqtingizning 30–40 daqiqasini nemis tiliga ajratsangiz-chi? Ishga yoki o‘qishga ketayotganda yangi so‘zlarni takrorlasangiz, kechqurun esa darslarni ko‘rib chiqsangiz-chi?

A1 kursimizdagi video darsliklarning qulayligi ham shunda. Ularni o‘zingizga qulay vaqtda ko‘rishingiz, tushunmagan joyingizni qayta takrorlashingiz mumkin.

Sizga bir narsani aytmoqchiman: hayotingizdagi barcha ishlar tugab, bo‘sh vaqtingiz ko‘payishini kutsangiz, ideal vaqt hech qachon kelmaydi. Ish ham, o‘qish ham, kundalik yumushlar ham davom etaveradi.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6764';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6765')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Yakshanbani tongi boshqacha bo’ladi-a. Masalan ba’zilarni tong va abed bitta bo’ladi', N'Yakshanbani tongi boshqacha bo’ladi-a. Masalan ba’zilarni tong va abed bitta bo’ladi 

Xayrli, yakshanbali tong 

– Kim nimalar bilan shug’ullanyapti? Nemis tilida yozib qoldiringchi', N'https://t.me/DinaraDeutsch/6765', N'uz', Id, NULL, N'@DinaraDeutsch', 6765, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Yakshanbani tongi boshqacha bo’ladi-a. Masalan ba’zilarni tong va abed bitta bo’ladi', Description = N'Yakshanbani tongi boshqacha bo’ladi-a. Masalan ba’zilarni tong va abed bitta bo’ladi 

Xayrli, yakshanbali tong 

– Kim nimalar bilan shug’ullanyapti? Nemis tilida yozib qoldiringchi'
    WHERE Url = N'https://t.me/DinaraDeutsch/6765';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6766')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Agar nemis tilini 0 dan boshlashni rejalashtirayotgan bo‘lsangiz, bugungi savol-javob efirini o‘tkazib yubormang!', N'Agar nemis tilini 0 dan boshlashni rejalashtirayotgan bo‘lsangiz, bugungi savol-javob efirini o‘tkazib yubormang! 

Nemis tilini o‘rganishga qiziqasiz, lekin nimadan boshlashni bilmaysizmi? Kursga qo‘shilishni xohlaysiz-u, vaqtingiz yetishidan yoki darslarni o‘zlashtira olmaslikdan xavotirdamisiz?

Unda bugun barcha savollaringizga javob olish imkoniyatingiz bor. A1 kursining o‘qitish tizimi, dars jarayonlari, materiallar va sizni qiziqtirgan boshqa masalalar haqida batafsil suhbatlashamiz.

Bugun soat 20:00 da, shu kanalda! 

Sizni hozir kursga qo‘shilishdan nima to‘xtatib turibdi? Izohlarda yozib qoldiring, efirda javob beraman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6766', N'uz', Id, NULL, N'@DinaraDeutsch', 6766, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Agar nemis tilini 0 dan boshlashni rejalashtirayotgan bo‘lsangiz, bugungi savol-javob efirini o‘tkazib yubormang!', Description = N'Agar nemis tilini 0 dan boshlashni rejalashtirayotgan bo‘lsangiz, bugungi savol-javob efirini o‘tkazib yubormang! 

Nemis tilini o‘rganishga qiziqasiz, lekin nimadan boshlashni bilmaysizmi? Kursga qo‘shilishni xohlaysiz-u, vaqtingiz yetishidan yoki darslarni o‘zlashtira olmaslikdan xavotirdamisiz?

Unda bugun barcha savollaringizga javob olish imkoniyatingiz bor. A1 kursining o‘qitish tizimi, dars jarayonlari, materiallar va sizni qiziqtirgan boshqa masalalar haqida batafsil suhbatlashamiz.

Bugun soat 20:00 da, shu kanalda! 

Sizni hozir kursga qo‘shilishdan nima to‘xtatib turibdi? Izohlarda yozib qoldiring, efirda javob beraman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6766';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6767')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'yil tugashiga necha kun qoldi?', N'2026-yil tugashiga necha kun qoldi?', N'https://t.me/DinaraDeutsch/6767', N'uz', Id, NULL, N'@DinaraDeutsch', 6767, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'yil tugashiga necha kun qoldi?', Description = N'2026-yil tugashiga necha kun qoldi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6767';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6768')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Yil oxirigacha nemis tilida ilk natijalaringizni ko‘rishni xohlaysizmi?', N'Yil oxirigacha nemis tilida ilk natijalaringizni ko‘rishni xohlaysizmi? 

Tasavvur qiling, bugun nemis tilida birgina gap tuzishga qiynalasiz. Yil oxiriga borib esa:

O‘zingizni nemis tilida tanishtira olasiz;

Oilangiz, ishingiz va kundalik hayotingiz haqida gapira olasiz;

Oddiy savollar berib, ularga javob qaytara olasiz;

Kichik matnlarni o‘qib, mazmunini tushuna boshlaysiz.

Katta-katta maqsadlar ham avval kichigidan boshlanadi. Kilometrlab yo’l bosish uchun avval birinchi qadamni qo’yish kerak bo’ladi. Bugun boshlagan harakatingiz yil oxiridagi natijangizga sabab bo‘lishi mumkin. 

Hoziroq joyingizni band qiling: @deutschmax_admin', N'https://t.me/DinaraDeutsch/6768', N'uz', Id, NULL, N'@DinaraDeutsch', 6768, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Yil oxirigacha nemis tilida ilk natijalaringizni ko‘rishni xohlaysizmi?', Description = N'Yil oxirigacha nemis tilida ilk natijalaringizni ko‘rishni xohlaysizmi? 

Tasavvur qiling, bugun nemis tilida birgina gap tuzishga qiynalasiz. Yil oxiriga borib esa:

O‘zingizni nemis tilida tanishtira olasiz;

Oilangiz, ishingiz va kundalik hayotingiz haqida gapira olasiz;

Oddiy savollar berib, ularga javob qaytara olasiz;

Kichik matnlarni o‘qib, mazmunini tushuna boshlaysiz.

Katta-katta maqsadlar ham avval kichigidan boshlanadi. Kilometrlab yo’l bosish uchun avval birinchi qadamni qo’yish kerak bo’ladi. Bugun boshlagan harakatingiz yil oxiridagi natijangizga sabab bo‘lishi mumkin. 

Hoziroq joyingizni band qiling: @deutschmax_admin'
    WHERE Url = N'https://t.me/DinaraDeutsch/6768';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6769')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Efirga 1 soat qoldi!', N'Efirga 1 soat qoldi! 

Nemis tiliga yetmasligidan, darslarni tushunmaslikdan yoki yana boshlab, oxiriga yetkaza olmaslikdan xavotirdadirsiz?

Bugungi efir aynan siz uchun! 

1 soatdan keyin A1 kursi haqida sizni qiziqtirgan barcha savollarga javob beraman. Darslar qanday o‘tilishi, kursni ish yoki o‘qish bilan qanday birga olib borish mumkinligi haqida ham gaplashamiz.

Balki bugungi bir soatlik suhbat nemis tilini o‘rganish yo‘lidagi eng muhim qaroringizga sabab bo‘lar.

20:00 da shu kanalda uchrashamiz! 

Qani kimlar efirga qatnashishni reja qilib turibti?', N'https://t.me/DinaraDeutsch/6769', N'uz', Id, NULL, N'@DinaraDeutsch', 6769, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Efirga 1 soat qoldi!', Description = N'Efirga 1 soat qoldi! 

Nemis tiliga yetmasligidan, darslarni tushunmaslikdan yoki yana boshlab, oxiriga yetkaza olmaslikdan xavotirdadirsiz?

Bugungi efir aynan siz uchun! 

1 soatdan keyin A1 kursi haqida sizni qiziqtirgan barcha savollarga javob beraman. Darslar qanday o‘tilishi, kursni ish yoki o‘qish bilan qanday birga olib borish mumkinligi haqida ham gaplashamiz.

Balki bugungi bir soatlik suhbat nemis tilini o‘rganish yo‘lidagi eng muhim qaroringizga sabab bo‘lar.

20:00 da shu kanalda uchrashamiz! 

Qani kimlar efirga qatnashishni reja qilib turibti?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6769';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6771')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Hamma tayyormi?', N'Hamma tayyormi? 

Biz chatni boshladik', N'https://t.me/DinaraDeutsch/6771', N'uz', Id, NULL, N'@DinaraDeutsch', 6771, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Hamma tayyormi?', Description = N'Hamma tayyormi? 

Biz chatni boshladik'
    WHERE Url = N'https://t.me/DinaraDeutsch/6771';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6774')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Hozir jonli chatda sizlarni qiziqtirgan barcha savollarga javob beryapman.', N'Hozir jonli chatda sizlarni qiziqtirgan barcha savollarga javob beryapman.

Tezroq chatga qo''shiling', N'https://t.me/DinaraDeutsch/6774', N'uz', Id, NULL, N'@DinaraDeutsch', 6774, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Hozir jonli chatda sizlarni qiziqtirgan barcha savollarga javob beryapman.', Description = N'Hozir jonli chatda sizlarni qiziqtirgan barcha savollarga javob beryapman.

Tezroq chatga qo''shiling'
    WHERE Url = N'https://t.me/DinaraDeutsch/6774';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6775')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DAAD nima? DAAD bu — Deutscher Akademischer Austausch Dienst, ya’ni Germaniya Akademik Almashinuv Xizmati. Bu tashkilot talabal...', N'DAAD nima? DAAD bu — Deutscher Akademischer Austausch Dienst, ya’ni Germaniya Akademik Almashinuv Xizmati. Bu tashkilot talabalarga, o‘qituvchilarga va tadqiqotchilarga Germaniyada o‘qish, malaka oshirish va ilmiy izlanish olib borish uchun stipendiyalar…', N'https://t.me/DinaraDeutsch/6775', N'uz', Id, NULL, N'@DinaraDeutsch', 6775, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DAAD nima? DAAD bu — Deutscher Akademischer Austausch Dienst, ya’ni Germaniya Akademik Almashinuv Xizmati. Bu tashkilot talabal...', Description = N'DAAD nima? DAAD bu — Deutscher Akademischer Austausch Dienst, ya’ni Germaniya Akademik Almashinuv Xizmati. Bu tashkilot talabalarga, o‘qituvchilarga va tadqiqotchilarga Germaniyada o‘qish, malaka oshirish va ilmiy izlanish olib borish uchun stipendiyalar…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6775';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6776')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 kurs haqida to''liq ma''lumot beraymi?', N'A1 kurs haqida to''liq ma''lumot beraymi? 

Izohda savollaringizni qoldiring', N'https://t.me/DinaraDeutsch/6776', N'uz', Id, NULL, N'@DinaraDeutsch', 6776, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 kurs haqida to''liq ma''lumot beraymi?', Description = N'A1 kurs haqida to''liq ma''lumot beraymi? 

Izohda savollaringizni qoldiring'
    WHERE Url = N'https://t.me/DinaraDeutsch/6776';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6778')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 daraja bo''lishingiz uchun qaysi mavzularni bilishingiz kerak?', N'A1 daraja bo''lishingiz uchun qaysi mavzularni bilishingiz kerak?

Chatda shu haqida gaplashyapmiz. Tezroq bizga qo''shiling', N'https://t.me/DinaraDeutsch/6778', N'uz', Id, NULL, N'@DinaraDeutsch', 6778, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 daraja bo''lishingiz uchun qaysi mavzularni bilishingiz kerak?', Description = N'A1 daraja bo''lishingiz uchun qaysi mavzularni bilishingiz kerak?

Chatda shu haqida gaplashyapmiz. Tezroq bizga qo''shiling'
    WHERE Url = N'https://t.me/DinaraDeutsch/6778';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6780')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nega yodlagan lug''atni bittada gapda ishlatolmaysiz?', N'Nega yodlagan lug''atni bittada gapda ishlatolmaysiz?', N'https://t.me/DinaraDeutsch/6780', N'uz', Id, NULL, N'@DinaraDeutsch', 6780, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nega yodlagan lug''atni bittada gapda ishlatolmaysiz?', Description = N'Nega yodlagan lug''atni bittada gapda ishlatolmaysiz?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6780';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6738')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Siz joyingizni band qilishga ulgurdingizmi?', N'Siz joyingizni band qilishga ulgurdingizmi? 

Bir necha oydan keyin “O‘shanda boshlaganimda edi…” deb afsuslanmaslik uchun bugun qaror qiling.

Kursga qo‘shilish uchun hoziroq yozing. 

@deutschmax_admin', N'https://t.me/DinaraDeutsch/6738', N'uz', Id, NULL, N'@DinaraDeutsch', 6738, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Siz joyingizni band qilishga ulgurdingizmi?', Description = N'Siz joyingizni band qilishga ulgurdingizmi? 

Bir necha oydan keyin “O‘shanda boshlaganimda edi…” deb afsuslanmaslik uchun bugun qaror qiling.

Kursga qo‘shilish uchun hoziroq yozing. 

@deutschmax_admin'
    WHERE Url = N'https://t.me/DinaraDeutsch/6738';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6742')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Tongni a’lo kayfiyatda boshlashimga sabab:', N'Tongni a’lo kayfiyatda boshlashimga sabab:

O’quvchimga visa chiqibti. Ustozlikning eng yoqimli tomoni - o’rgatganlaringiz kimningdir hayotidagi katta orzulariga yetishishida bir vosita bo‘layotganini ko‘rish 

– Tabriklagan barchaga nasib qilsin! 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6742', N'uz', Id, NULL, N'@DinaraDeutsch', 6742, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Tongni a’lo kayfiyatda boshlashimga sabab:', Description = N'Tongni a’lo kayfiyatda boshlashimga sabab:

O’quvchimga visa chiqibti. Ustozlikning eng yoqimli tomoni - o’rgatganlaringiz kimningdir hayotidagi katta orzulariga yetishishida bir vosita bo‘layotganini ko‘rish 

– Tabriklagan barchaga nasib qilsin! 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6742';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6743')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 kursi haqida ma’lumot', N'A1 kursi haqida ma’lumot 

Kursimizni shunchaki darslar to‘plami emas, aniq tizim va ustoz nazoratiga asoslangan ta’lim shaklida tashkil qildik.

Sizni 2 oy davomida 84 ta individual dars, 24 ta jonli dars, har kungi uy vazifalari va ularning ustoz tomonidan tekshirilishi kutmoqda.

Eng muhimi, materiallarni qayerdan izlashni o‘ylamaysiz, o‘z vaqtingizda o‘rganasiz va haftasiga 3 marta ustoz bilan bilimlaringizni mustahkamlaysiz.

Qabul 19-oktabrgacha davom etadi 

Hoziroq joyingizni band qiling: @deutschmax_admin', N'https://t.me/DinaraDeutsch/6743', N'uz', Id, NULL, N'@DinaraDeutsch', 6743, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 kursi haqida ma’lumot', Description = N'A1 kursi haqida ma’lumot 

Kursimizni shunchaki darslar to‘plami emas, aniq tizim va ustoz nazoratiga asoslangan ta’lim shaklida tashkil qildik.

Sizni 2 oy davomida 84 ta individual dars, 24 ta jonli dars, har kungi uy vazifalari va ularning ustoz tomonidan tekshirilishi kutmoqda.

Eng muhimi, materiallarni qayerdan izlashni o‘ylamaysiz, o‘z vaqtingizda o‘rganasiz va haftasiga 3 marta ustoz bilan bilimlaringizni mustahkamlaysiz.

Qabul 19-oktabrgacha davom etadi 

Hoziroq joyingizni band qiling: @deutschmax_admin'
    WHERE Url = N'https://t.me/DinaraDeutsch/6743';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6748')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Hatto o‘qishingiz uchun kerakli kitoblarni ham pochta orqali yuboramiz!', N'Hatto o‘qishingiz uchun kerakli kitoblarni ham pochta orqali yuboramiz! 

Ularni alohida sotib olishingiz shart emas. Kitoblar kurs to‘loviga kiritilgan 

Bunday mukammal tuzilgan dastur qayerda bor-a 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6748', N'uz', Id, NULL, N'@DinaraDeutsch', 6748, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Hatto o‘qishingiz uchun kerakli kitoblarni ham pochta orqali yuboramiz!', Description = N'Hatto o‘qishingiz uchun kerakli kitoblarni ham pochta orqali yuboramiz! 

Ularni alohida sotib olishingiz shart emas. Kitoblar kurs to‘loviga kiritilgan 

Bunday mukammal tuzilgan dastur qayerda bor-a 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6748';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6750')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Xayrli toooong barchangizga?', N'Xayrli toooong barchangizga? 

Bugun kayfiyatingiz qanday? 

Traurig - g‘amgin
Glücklich - xursand
Nervös - asabiy
Hoffnungsvoll - umidga to’la

Qani izohga yozingchi?', N'https://t.me/DinaraDeutsch/6750', N'uz', Id, NULL, N'@DinaraDeutsch', 6750, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Xayrli toooong barchangizga?', Description = N'Xayrli toooong barchangizga? 

Bugun kayfiyatingiz qanday? 

Traurig - g‘amgin
Glücklich - xursand
Nervös - asabiy
Hoffnungsvoll - umidga to’la

Qani izohga yozingchi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6750';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6751')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kursga qo‘shilmoqchi bo‘lib, ikkilanayotganlarni ko‘rib, ichimda ehh deyman…', N'Kursga qo‘shilmoqchi bo‘lib, ikkilanayotganlarni ko‘rib, ichimda ehh deyman… 

Men ham shu darajaga nemis tilini 0 dan o‘rganish orqali chiqqanman. Bugun 1000 lab o‘quvchilarga dars bergan ustoz ham bir kun kelib hammasini boshidan boshlagan.

Shunday ekan, bilimga qilingan investitsiya o‘zini oqlabgina qolmay, kamida 10x bo‘lib qaytishiga ishonaman.

Siz shunchaki nemis tili kursini sotib olmayapsiz. Siz o‘zingizga yangi imkoniyatlar eshigini ochyapsiz. Bugun kurs uchun sarflagan pulingiz ertaga yaxshiroq ish topishingizga yoki anchadan beri orzu qilib yurgan maqsadingizga yetishingizga, balki Yevropada o’qishingizga sabab bo‘lishi mumkin.

Bilasizmi, eng qizig‘i nima? 

Bir yil oldin boshlaganingizda, bugun qaysi darajada bo‘lishingiz mumkinligini tasavvur qiling 

Bir yil keyin ham xuddi shu savolni o‘zingizga berib qolishingizni istamayman. Men sizga nemis tilini o‘rganish yo‘lini ko‘rsatishga, o‘z tajribam va bilimlarim bilan yordam berishga tayyorman. Ammo birinchi qadamni sizning o‘rningizga tashlay olmayman.

Kursimizga qo‘shilish uchun hoziroq administratorga yozing. Balki bir yil keyin bugungi qaroringiz uchun o‘zingizga rahmat aytarsiz.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6751', N'uz', Id, NULL, N'@DinaraDeutsch', 6751, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kursga qo‘shilmoqchi bo‘lib, ikkilanayotganlarni ko‘rib, ichimda ehh deyman…', Description = N'Kursga qo‘shilmoqchi bo‘lib, ikkilanayotganlarni ko‘rib, ichimda ehh deyman… 

Men ham shu darajaga nemis tilini 0 dan o‘rganish orqali chiqqanman. Bugun 1000 lab o‘quvchilarga dars bergan ustoz ham bir kun kelib hammasini boshidan boshlagan.

Shunday ekan, bilimga qilingan investitsiya o‘zini oqlabgina qolmay, kamida 10x bo‘lib qaytishiga ishonaman.

Siz shunchaki nemis tili kursini sotib olmayapsiz. Siz o‘zingizga yangi imkoniyatlar eshigini ochyapsiz. Bugun kurs uchun sarflagan pulingiz ertaga yaxshiroq ish topishingizga yoki anchadan beri orzu qilib yurgan maqsadingizga yetishingizga, balki Yevropada o’qishingizga sabab bo‘lishi mumkin.

Bilasizmi, eng qizig‘i nima? 

Bir yil oldin boshlaganingizda, bugun qaysi darajada bo‘lishingiz mumkinligini tasavvur qiling 

Bir yil keyin ham xuddi shu savolni o‘zingizga berib qolishingizni istamayman. Men sizga nemis tilini o‘rganish yo‘lini ko‘rsatishga, o‘z tajribam va bilimlarim bilan yordam berishga tayyorman. Ammo birinchi qadamni sizning o‘rningizga tashlay olmayman.

Kursimizga qo‘shilish uchun hoziroq administratorga yozing. Balki bir yil keyin bugungi qaroringiz uchun o‘zingizga rahmat aytarsiz.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6751';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6752')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bu xat hammaga ham yetib bormaydi…', N'Bu xat hammaga ham yetib bormaydi… 

Bilasizmi, bu maktubni yozayotib bir narsani juda xohladim: o‘quvchim bir kun kelib, nemis tilini o‘rganish qiyinlashganida, “Men uddalay olmayman”, deb o‘ylaganida aynan shu xatni qayta o‘qishini…

Chunki bu oddiy tabrik xati emas. Unda hali darslarimiz boshlanmasidanoq har bir o‘quvchimga aytmoqchi bo‘lgan gaplarim bor. ❤️ 

Darslarni boshlanishini intiqlik bilan kutayotgan faqat men emasdirman-a 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6752', N'uz', Id, NULL, N'@DinaraDeutsch', 6752, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bu xat hammaga ham yetib bormaydi…', Description = N'Bu xat hammaga ham yetib bormaydi… 

Bilasizmi, bu maktubni yozayotib bir narsani juda xohladim: o‘quvchim bir kun kelib, nemis tilini o‘rganish qiyinlashganida, “Men uddalay olmayman”, deb o‘ylaganida aynan shu xatni qayta o‘qishini…

Chunki bu oddiy tabrik xati emas. Unda hali darslarimiz boshlanmasidanoq har bir o‘quvchimga aytmoqchi bo‘lgan gaplarim bor. ❤️ 

Darslarni boshlanishini intiqlik bilan kutayotgan faqat men emasdirman-a 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6752';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6753')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Xayrli tong mening sevimli auditoriyam!', N'Xayrli tong mening sevimli auditoriyam! 

– Ichida nima bor deb o’ylaysizlar?', N'https://t.me/DinaraDeutsch/6753', N'uz', Id, NULL, N'@DinaraDeutsch', 6753, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Xayrli tong mening sevimli auditoriyam!', Description = N'Xayrli tong mening sevimli auditoriyam! 

– Ichida nima bor deb o’ylaysizlar?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6753';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6754')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kecha nihoyat kitoblarimizni qo‘limga oldim!', N'Kecha nihoyat kitoblarimizni qo‘limga oldim! 

Rostini aytsam, bu kitoblarni ko‘rib, o‘quvchilarimdan ham ko‘proq xursand bo‘lib ketdim. Eng quvonarlisi, bu kitoblar uchun o‘quvchilarim alohida pul sarflashmaydi.

Endi kitoblarni egalariga jo‘natish qoldi. O‘ylaymanki, ularni qo‘liga olgan o‘quvchilarim ham men kabi xursand bo‘lishadi.

– Aytgancha, shu kitoblardan biri sizniki bo‘lishini xohlarmidingiz? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6754', N'uz', Id, NULL, N'@DinaraDeutsch', 6754, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kecha nihoyat kitoblarimizni qo‘limga oldim!', Description = N'Kecha nihoyat kitoblarimizni qo‘limga oldim! 

Rostini aytsam, bu kitoblarni ko‘rib, o‘quvchilarimdan ham ko‘proq xursand bo‘lib ketdim. Eng quvonarlisi, bu kitoblar uchun o‘quvchilarim alohida pul sarflashmaydi.

Endi kitoblarni egalariga jo‘natish qoldi. O‘ylaymanki, ularni qo‘liga olgan o‘quvchilarim ham men kabi xursand bo‘lishadi.

– Aytgancha, shu kitoblardan biri sizniki bo‘lishini xohlarmidingiz? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6754';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6756')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Universitetdan xayrli kun ‍', N'Universitetdan xayrli kun ‍ 

Rasmdagi bizning darsligimiz 

Belgilab chiqqanlarimdan qaysi so’zlar sizga tanish?

– Va bu qaysi daraja ekan ekanligini ham topinglarchi', N'https://t.me/DinaraDeutsch/6756', N'uz', Id, NULL, N'@DinaraDeutsch', 6756, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Universitetdan xayrli kun ‍', Description = N'Universitetdan xayrli kun ‍ 

Rasmdagi bizning darsligimiz 

Belgilab chiqqanlarimdan qaysi so’zlar sizga tanish?

– Va bu qaysi daraja ekan ekanligini ham topinglarchi'
    WHERE Url = N'https://t.me/DinaraDeutsch/6756';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6758')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Do’stlaar, bu safargi A1 guruhim menga boshqacha qadrli bo’ladi. Negaligini aytaymi?', N'Do’stlaar, bu safargi A1 guruhim menga boshqacha qadrli bo’ladi. Negaligini aytaymi?', N'https://t.me/DinaraDeutsch/6758', N'uz', Id, NULL, N'@DinaraDeutsch', 6758, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Do’stlaar, bu safargi A1 guruhim menga boshqacha qadrli bo’ladi. Negaligini aytaymi?', Description = N'Do’stlaar, bu safargi A1 guruhim menga boshqacha qadrli bo’ladi. Negaligini aytaymi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6758';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6759')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Chunki bu safar o‘quvchilarim orasida o‘z ukam va singlim ham bor', N'Chunki bu safar o‘quvchilarim orasida o‘z ukam va singlim ham bor 

Ukam ham, singlim ham A1 kursimda o‘qiydigan bo‘ldi. Ochig‘i, bu men uchun boshqacha quvonch. Chunki shu paytgacha minglab o‘quvchilarga nemis tilini o‘rgatgan bo‘lsam, endi o‘z yaqinlarimning ham bu yo‘ldagi ilk qadamlariga guvoh bo‘laman.

Bilasizmi, inson o‘zi ishongan, foydasiga amin bo‘lgan narsasini eng avvalo yaqinlariga ham ravo ko‘radi. Men ham nemis tilini bilish ularga kelajakda qanday imkoniyatlar berishi mumkinligini yaxshi tushunaman. Shuning uchun bu bilimdan ukam va singlim ham bahramand bo‘lishini istadim.

Endi ular ham sizlar bilan bir safda, nemis tilini 0 dan boshlashadi. 

Siz ham ular bilan birga A1 ni boshlashingiz mumkin. Hali ham ikkilanib turgan bo‘lsangiz, o‘zingizdan bir narsani so‘rang: “ Hozir boshlamasam, yana qancha vaqt ortga suraman?” 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6759', N'uz', Id, NULL, N'@DinaraDeutsch', 6759, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Chunki bu safar o‘quvchilarim orasida o‘z ukam va singlim ham bor', Description = N'Chunki bu safar o‘quvchilarim orasida o‘z ukam va singlim ham bor 

Ukam ham, singlim ham A1 kursimda o‘qiydigan bo‘ldi. Ochig‘i, bu men uchun boshqacha quvonch. Chunki shu paytgacha minglab o‘quvchilarga nemis tilini o‘rgatgan bo‘lsam, endi o‘z yaqinlarimning ham bu yo‘ldagi ilk qadamlariga guvoh bo‘laman.

Bilasizmi, inson o‘zi ishongan, foydasiga amin bo‘lgan narsasini eng avvalo yaqinlariga ham ravo ko‘radi. Men ham nemis tilini bilish ularga kelajakda qanday imkoniyatlar berishi mumkinligini yaxshi tushunaman. Shuning uchun bu bilimdan ukam va singlim ham bahramand bo‘lishini istadim.

Endi ular ham sizlar bilan bir safda, nemis tilini 0 dan boshlashadi. 

Siz ham ular bilan birga A1 ni boshlashingiz mumkin. Hali ham ikkilanib turgan bo‘lsangiz, o‘zingizdan bir narsani so‘rang: “ Hozir boshlamasam, yana qancha vaqt ortga suraman?” 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6759';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6760')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 kursiga qabul yopilishiga 3 kun qoldi!', N'A1 kursiga qabul yopilishiga 3 kun qoldi! 

Kimdir “bu qiz qanaqa dars o’tarkin o’zi ” deb o’ylagan bo’lsa, marhamat natijalar: @ZertifikatNatijalar 

“Mening darsim kimlarga mos keladi?” 

- intizomli;
- o‘rganishga chanqoq;
- vazifa qilishdan qochmaydigan;
- natija istaydigan.

Mos emas 
“Men uyga vazifa qilmayman, lekin tez natija xohlayman” deydiganlarga.

Kurs haqida ma’lumot 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6760', N'uz', Id, NULL, N'@DinaraDeutsch', 6760, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 kursiga qabul yopilishiga 3 kun qoldi!', Description = N'A1 kursiga qabul yopilishiga 3 kun qoldi! 

Kimdir “bu qiz qanaqa dars o’tarkin o’zi ” deb o’ylagan bo’lsa, marhamat natijalar: @ZertifikatNatijalar 

“Mening darsim kimlarga mos keladi?” 

- intizomli;
- o‘rganishga chanqoq;
- vazifa qilishdan qochmaydigan;
- natija istaydigan.

Mos emas 
“Men uyga vazifa qilmayman, lekin tez natija xohlayman” deydiganlarga.

Kurs haqida ma’lumot 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6760';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6715')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kayfiyatga emas, tizimga tayaning', N'Kayfiyatga emas, tizimga tayaning 

Chunki oramizda kayfiyati har yarim soatda o’zgaradiganlar bor', N'https://t.me/DinaraDeutsch/6715', N'uz', Id, NULL, N'@DinaraDeutsch', 6715, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kayfiyatga emas, tizimga tayaning', Description = N'Kayfiyatga emas, tizimga tayaning 

Chunki oramizda kayfiyati har yarim soatda o’zgaradiganlar bor'
    WHERE Url = N'https://t.me/DinaraDeutsch/6715';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6718')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Ujee” amaliyotga o’tdik. Gap tuzyapmiz', N'“Ujee” amaliyotga o’tdik. Gap tuzyapmiz', N'https://t.me/DinaraDeutsch/6718', N'uz', Id, NULL, N'@DinaraDeutsch', 6718, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Ujee” amaliyotga o’tdik. Gap tuzyapmiz', Description = N'“Ujee” amaliyotga o’tdik. Gap tuzyapmiz'
    WHERE Url = N'https://t.me/DinaraDeutsch/6718';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6719')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Shu yergacha tushunarli bo’ldimi?', N'Shu yergacha tushunarli bo’ldimi?', N'https://t.me/DinaraDeutsch/6719', N'uz', Id, NULL, N'@DinaraDeutsch', 6719, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Shu yergacha tushunarli bo’ldimi?', Description = N'Shu yergacha tushunarli bo’ldimi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6719';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6720')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Mashq uchun 5 daqiqa vaqt berildi.', N'Mashq uchun 5 daqiqa vaqt berildi. 

Vaqt ketdi 

Tuslab izohga yuboring', N'https://t.me/DinaraDeutsch/6720', N'uz', Id, NULL, N'@DinaraDeutsch', 6720, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Mashq uchun 5 daqiqa vaqt berildi.', Description = N'Mashq uchun 5 daqiqa vaqt berildi. 

Vaqt ketdi 

Tuslab izohga yuboring'
    WHERE Url = N'https://t.me/DinaraDeutsch/6720';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6721')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kitoblar ko’p, lekin hammasi hm samarali(mi?)', N'Kitoblar ko’p, lekin hammasi hm samarali(mi?)

Kitoblar haqida gaplashyapmiz', N'https://t.me/DinaraDeutsch/6721', N'uz', Id, NULL, N'@DinaraDeutsch', 6721, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kitoblar ko’p, lekin hammasi hm samarali(mi?)', Description = N'Kitoblar ko’p, lekin hammasi hm samarali(mi?)

Kitoblar haqida gaplashyapmiz'
    WHERE Url = N'https://t.me/DinaraDeutsch/6721';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6722')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nihoyaat mualliflik kursim haqida gapiryapman', N'Nihoyaat mualliflik kursim haqida gapiryapman 

Kursimizning qolganlardan qanday 5 ta farqi bor?', N'https://t.me/DinaraDeutsch/6722', N'uz', Id, NULL, N'@DinaraDeutsch', 6722, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nihoyaat mualliflik kursim haqida gapiryapman', Description = N'Nihoyaat mualliflik kursim haqida gapiryapman 

Kursimizning qolganlardan qanday 5 ta farqi bor?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6722';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6724')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Naq 84 ta dars-a', N'Naq 84 ta dars-a 
Haftasiga 3 marta jonli dars
Umumiy 108 ga dars

Endi ham A1 ni 2 oyda tugata olmasangiz bo’lmas..', N'https://t.me/DinaraDeutsch/6724', N'uz', Id, NULL, N'@DinaraDeutsch', 6724, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Naq 84 ta dars-a', Description = N'Naq 84 ta dars-a 
Haftasiga 3 marta jonli dars
Umumiy 108 ga dars

Endi ham A1 ni 2 oyda tugata olmasangiz bo’lmas..'
    WHERE Url = N'https://t.me/DinaraDeutsch/6724';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6727')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Shuuncha berilgan imkoniyatlar uchun kurs narxini 750.000 qilib belgiladik.', N'Shuuncha berilgan imkoniyatlar uchun kurs narxini 750.000 qilib belgiladik.

Narx yaxshi belgilanganmi, sizningcha?', N'https://t.me/DinaraDeutsch/6727', N'uz', Id, NULL, N'@DinaraDeutsch', 6727, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Shuuncha berilgan imkoniyatlar uchun kurs narxini 750.000 qilib belgiladik.', Description = N'Shuuncha berilgan imkoniyatlar uchun kurs narxini 750.000 qilib belgiladik.

Narx yaxshi belgilanganmi, sizningcha?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6727';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6728')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kursni bugunoq boshlasangiz bo’ladi. To’lov qilishingiz bilan darslar kanaliga qo’shilasiz.', N'Kursni bugunoq boshlasangiz bo’ladi. To’lov qilishingiz bilan darslar kanaliga qo’shilasiz.

Joyingizni hoziroq band qiling: @deutschmax_admin', N'https://t.me/DinaraDeutsch/6728', N'uz', Id, NULL, N'@DinaraDeutsch', 6728, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kursni bugunoq boshlasangiz bo’ladi. To’lov qilishingiz bilan darslar kanaliga qo’shilasiz.', Description = N'Kursni bugunoq boshlasangiz bo’ladi. To’lov qilishingiz bilan darslar kanaliga qo’shilasiz.

Joyingizni hoziroq band qiling: @deutschmax_admin'
    WHERE Url = N'https://t.me/DinaraDeutsch/6728';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6729')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bo’lib to’lash bormi?', N'- Bo’lib to’lash bormi?

19-oktabrgacha bo’lib to’lashingiz mumkin 

Murojaat uchun: @deutschmax_admin', N'https://t.me/DinaraDeutsch/6729', N'uz', Id, NULL, N'@DinaraDeutsch', 6729, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bo’lib to’lash bormi?', Description = N'- Bo’lib to’lash bormi?

19-oktabrgacha bo’lib to’lashingiz mumkin 

Murojaat uchun: @deutschmax_admin'
    WHERE Url = N'https://t.me/DinaraDeutsch/6729';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6730')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Live stream finished (2 hours)', N'Live stream finished (2 hours)', N'https://t.me/DinaraDeutsch/6730', N'uz', Id, NULL, N'@DinaraDeutsch', 6730, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Live stream finished (2 hours)', Description = N'Live stream finished (2 hours)'
    WHERE Url = N'https://t.me/DinaraDeutsch/6730';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6733')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugungi dars boshida sizlarga bonus berishga va’da bergan edim. Va’damda turaman!', N'Bugungi dars boshida sizlarga bonus berishga va’da bergan edim. Va’damda turaman! 

— Darsda qatnashgan o‘quvchilarim, menga shaxsiy xabarda @deutschmax_admin “Bonus” deb yozib yuboring. Sizlarga bonus kanalimiz havolasini jo‘nataman. 

— Darsda qatnashganingiz uchun barchangizga rahmat!', N'https://t.me/DinaraDeutsch/6733', N'uz', Id, NULL, N'@DinaraDeutsch', 6733, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugungi dars boshida sizlarga bonus berishga va’da bergan edim. Va’damda turaman!', Description = N'Bugungi dars boshida sizlarga bonus berishga va’da bergan edim. Va’damda turaman! 

— Darsda qatnashgan o‘quvchilarim, menga shaxsiy xabarda @deutschmax_admin “Bonus” deb yozib yuboring. Sizlarga bonus kanalimiz havolasini jo‘nataman. 

— Darsda qatnashganingiz uchun barchangizga rahmat!'
    WHERE Url = N'https://t.me/DinaraDeutsch/6733';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6734')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Darsga kirganlar darmonda, kirmaganlar armonda..', N'Darsga kirganlar darmonda, kirmaganlar armonda.. 

Energiya va bilimga boy dars bo’ldi o’ziyam. Ikki soat qanday o’tib ketganini bilmay qolibman 

Darsni zapisi yuborilsinmi?

Ha yuborilsin - ❤️ 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6734', N'uz', Id, NULL, N'@DinaraDeutsch', 6734, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Darsga kirganlar darmonda, kirmaganlar armonda..', Description = N'Darsga kirganlar darmonda, kirmaganlar armonda.. 

Energiya va bilimga boy dars bo’ldi o’ziyam. Ikki soat qanday o’tib ketganini bilmay qolibman 

Darsni zapisi yuborilsinmi?

Ha yuborilsin - ❤️ 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6734';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6693')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Savol bilan keldim', N'Savol bilan keldim 

– Biror til o’rganish uchun lingvistik ko’nikma/qobiliyat kerak deb o’ylaysizmi? Yoki boshqa ko’nikmalarmi? 

Marhamat', N'https://t.me/DinaraDeutsch/6693', N'uz', Id, NULL, N'@DinaraDeutsch', 6693, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Savol bilan keldim', Description = N'Savol bilan keldim 

– Biror til o’rganish uchun lingvistik ko’nikma/qobiliyat kerak deb o’ylaysizmi? Yoki boshqa ko’nikmalarmi? 

Marhamat'
    WHERE Url = N'https://t.me/DinaraDeutsch/6693';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6694')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemis tilini o‘rganish uchun qobiliyatli kerakmi?', N'Nemis tilini o‘rganish uchun qobiliyatli kerakmi? 

“Men tillarni o‘rganolmayman”

Bu gapni hech bo‘lmasa bir marta o‘zingizga aytganmisiz? Balki ingliz tilini o‘rganishga urinib, natijaga erishmagandirsiz. Yoki nemis tilidagi uzun so‘zlar va murakkab grammatik qoidalarni ko‘rib, hali boshlamasdan ortga chekingandirsiz.

Ammo bir narsani bilishingiz kerak: til o‘rganish faqat tug‘ma qobiliyatga bog‘liq emas. 

Ko‘pincha natijaga quyidagilar ko‘proq ta’sir qiladi:

To‘g‘ri metodika. Nimani, qachon va qanday o‘rganishni bilish jarayonni ancha yengillashtiradi.

Muntazamlik. Haftada bir marta bir necha soat shug‘ullanishdan ko‘ra, har kuni oz-ozdan mashq qilish foydaliroq bo‘lishi mumkin.

Amaliyot. Faqat qoidalarni yodlash emas, o‘rganganlaringizni gapirishda va tinglashda qo‘llash ham muhim.

Sabr. Yangi tilni o‘rganish vaqt talab qiladi. Dastlabki qiyinchiliklar sizda qobiliyat yo‘qligini anglatmaydi.

Men aniq bilaman, sizga nemis tilini o‘rganishga qobiliyat emas, shunchaki to‘g‘ri boshlanish nuqtasi yetishmayapti. ‍↔️ 

11-oktabr kuni jonli darsimizga qatnashib birinchi qadamni qo’yasiz. Hoziroq kanalni pin qiling. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6694', N'uz', Id, NULL, N'@DinaraDeutsch', 6694, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemis tilini o‘rganish uchun qobiliyatli kerakmi?', Description = N'Nemis tilini o‘rganish uchun qobiliyatli kerakmi? 

“Men tillarni o‘rganolmayman”

Bu gapni hech bo‘lmasa bir marta o‘zingizga aytganmisiz? Balki ingliz tilini o‘rganishga urinib, natijaga erishmagandirsiz. Yoki nemis tilidagi uzun so‘zlar va murakkab grammatik qoidalarni ko‘rib, hali boshlamasdan ortga chekingandirsiz.

Ammo bir narsani bilishingiz kerak: til o‘rganish faqat tug‘ma qobiliyatga bog‘liq emas. 

Ko‘pincha natijaga quyidagilar ko‘proq ta’sir qiladi:

To‘g‘ri metodika. Nimani, qachon va qanday o‘rganishni bilish jarayonni ancha yengillashtiradi.

Muntazamlik. Haftada bir marta bir necha soat shug‘ullanishdan ko‘ra, har kuni oz-ozdan mashq qilish foydaliroq bo‘lishi mumkin.

Amaliyot. Faqat qoidalarni yodlash emas, o‘rganganlaringizni gapirishda va tinglashda qo‘llash ham muhim.

Sabr. Yangi tilni o‘rganish vaqt talab qiladi. Dastlabki qiyinchiliklar sizda qobiliyat yo‘qligini anglatmaydi.

Men aniq bilaman, sizga nemis tilini o‘rganishga qobiliyat emas, shunchaki to‘g‘ri boshlanish nuqtasi yetishmayapti. ‍↔️ 

11-oktabr kuni jonli darsimizga qatnashib birinchi qadamni qo’yasiz. Hoziroq kanalni pin qiling. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6694';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6695')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Xayrli va hayajonli kun azizlar! ️', N'Xayrli va hayajonli kun azizlar! ️ 

Yaqinlashgani sari hayajonlanib ketyapman. Balki jonli dars qaaanchalik foydaga to’la bo’lishini bilganingizda sizni ham hayajon bosardi 

Kutyapsizlarmi o’zi? Kimlar kirmoqchi darsga?', N'https://t.me/DinaraDeutsch/6695', N'uz', Id, NULL, N'@DinaraDeutsch', 6695, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Xayrli va hayajonli kun azizlar! ️', Description = N'Xayrli va hayajonli kun azizlar! ️ 

Yaqinlashgani sari hayajonlanib ketyapman. Balki jonli dars qaaanchalik foydaga to’la bo’lishini bilganingizda sizni ham hayajon bosardi 

Kutyapsizlarmi o’zi? Kimlar kirmoqchi darsga?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6695';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6696')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 daraja nimani anglatadi?', N'A1 daraja nimani anglatadi? 

Nemis tilini endi boshlayotgan bo‘lsangiz, A1 — sizning ilk katta qadamingiz!

A1 — nemis tilini bilishning boshlang‘ich darajasi. Bu bosqichda siz tilning eng asosiy qoidalarini o‘rganib, oddiy kundalik vaziyatlarda muloqot qilishni boshlaysiz.

A1 darajani tugatganingizdan keyin nimalarni qila olasiz? 

– O‘zingizni tanishtira olasiz: ismingiz, yoshingiz, qayerdan ekaningiz va kasbingiz haqida gapirasiz.

– Oddiy savollar bera olasiz va ularga javob qaytarasiz.

– Oila a’zolaringiz, kundalik hayotingiz va qiziqishlaringiz haqida sodda gaplar tuza olasiz.

– Do‘kon, kafe yoki boshqa kundalik vaziyatlarda oddiy iboralardan foydalana olasiz.

– Sekin va aniq gapirilgan, o‘zingizga tanish mavzulardagi sodda jumlalarni tushuna olasiz.

– Qisqa xabarlar va oddiy matnlarni o‘qib, asosiy mazmunini anglay olasiz.

Eng muhimi, siz nemis tilida ilk jumlalaringizni mustaqil tuza boshlaysiz. 

Siz ham nemis tilini noldan boshlamoqchimisiz? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6696', N'uz', Id, NULL, N'@DinaraDeutsch', 6696, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 daraja nimani anglatadi?', Description = N'A1 daraja nimani anglatadi? 

Nemis tilini endi boshlayotgan bo‘lsangiz, A1 — sizning ilk katta qadamingiz!

A1 — nemis tilini bilishning boshlang‘ich darajasi. Bu bosqichda siz tilning eng asosiy qoidalarini o‘rganib, oddiy kundalik vaziyatlarda muloqot qilishni boshlaysiz.

A1 darajani tugatganingizdan keyin nimalarni qila olasiz? 

– O‘zingizni tanishtira olasiz: ismingiz, yoshingiz, qayerdan ekaningiz va kasbingiz haqida gapirasiz.

– Oddiy savollar bera olasiz va ularga javob qaytarasiz.

– Oila a’zolaringiz, kundalik hayotingiz va qiziqishlaringiz haqida sodda gaplar tuza olasiz.

– Do‘kon, kafe yoki boshqa kundalik vaziyatlarda oddiy iboralardan foydalana olasiz.

– Sekin va aniq gapirilgan, o‘zingizga tanish mavzulardagi sodda jumlalarni tushuna olasiz.

– Qisqa xabarlar va oddiy matnlarni o‘qib, asosiy mazmunini anglay olasiz.

Eng muhimi, siz nemis tilida ilk jumlalaringizni mustaqil tuza boshlaysiz. 

Siz ham nemis tilini noldan boshlamoqchimisiz? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6696';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6697')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 daraja nimani anglatadi? Nemis tilini endi boshlayotgan bo‘lsangiz, A1 — sizning ilk katta qadamingiz! A1 — nemis tilini bil...', N'A1 daraja nimani anglatadi? Nemis tilini endi boshlayotgan bo‘lsangiz, A1 — sizning ilk katta qadamingiz! A1 — nemis tilini bilishning boshlang‘ich darajasi. Bu bosqichda siz tilning eng asosiy qoidalarini o‘rganib, oddiy kundalik vaziyatlarda muloqot qilishni…', N'https://t.me/DinaraDeutsch/6697', N'uz', Id, NULL, N'@DinaraDeutsch', 6697, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 daraja nimani anglatadi? Nemis tilini endi boshlayotgan bo‘lsangiz, A1 — sizning ilk katta qadamingiz! A1 — nemis tilini bil...', Description = N'A1 daraja nimani anglatadi? Nemis tilini endi boshlayotgan bo‘lsangiz, A1 — sizning ilk katta qadamingiz! A1 — nemis tilini bilishning boshlang‘ich darajasi. Bu bosqichda siz tilning eng asosiy qoidalarini o‘rganib, oddiy kundalik vaziyatlarda muloqot qilishni…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6697';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6699')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A2 darajadagilar bilan imtihonga tayyorlanyapmiz', N'A2 darajadagilar bilan imtihonga tayyorlanyapmiz', N'https://t.me/DinaraDeutsch/6699', N'uz', Id, NULL, N'@DinaraDeutsch', 6699, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A2 darajadagilar bilan imtihonga tayyorlanyapmiz', Description = N'A2 darajadagilar bilan imtihonga tayyorlanyapmiz'
    WHERE Url = N'https://t.me/DinaraDeutsch/6699';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6700')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun qanday kun ekanligi esingizdami? ‍↔️', N'Bugun qanday kun ekanligi esingizdami? ‍↔️ 

Nemis tilini o‘rganishni anchadan beri rejalashtirib, lekin nimadan boshlashni bilmay yurganlar, bugun aynan siz uchun muhim kun!

Chunki bugun soat 20:00 da uzoq kutilgan jonli seminarimiz bo‘lib o‘tadi! 

Seminarda:

Nemis tilini noldan nimadan boshlash kerak?

Til o‘rganishni qanday qilib oson va samarali tashkil qilish mumkin?

Boshlovchilar eng ko‘p qanday xatolarga yo‘l qo‘yadi?

Nemis tilini o‘rganishda natijaga erishish uchun nimalarga e’tibor berish kerak?

Shu va boshqa savollaringizga javob olasiz.

Hozirdanoq budilnik qo‘yib oling, kanalni yuqoriga qadab qo‘ying va albatta jonli qatnashing!

Kim bugungi seminarga tayyor? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6700', N'uz', Id, NULL, N'@DinaraDeutsch', 6700, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun qanday kun ekanligi esingizdami? ‍↔️', Description = N'Bugun qanday kun ekanligi esingizdami? ‍↔️ 

Nemis tilini o‘rganishni anchadan beri rejalashtirib, lekin nimadan boshlashni bilmay yurganlar, bugun aynan siz uchun muhim kun!

Chunki bugun soat 20:00 da uzoq kutilgan jonli seminarimiz bo‘lib o‘tadi! 

Seminarda:

Nemis tilini noldan nimadan boshlash kerak?

Til o‘rganishni qanday qilib oson va samarali tashkil qilish mumkin?

Boshlovchilar eng ko‘p qanday xatolarga yo‘l qo‘yadi?

Nemis tilini o‘rganishda natijaga erishish uchun nimalarga e’tibor berish kerak?

Shu va boshqa savollaringizga javob olasiz.

Hozirdanoq budilnik qo‘yib oling, kanalni yuqoriga qadab qo‘ying va albatta jonli qatnashing!

Kim bugungi seminarga tayyor? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6700';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6702')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'soatdan keyin kimdir nemis tili o‘rganishni maqsad qiladi', N'2 soatdan keyin kimdir nemis tili o‘rganishni maqsad qiladi 

Yana kimdir esa bir kun o’rganarman deb jonli efirni o’tkazib yuboradi 

Qizig‘i, ikkala insonning ham orzusi bir xil bo‘lishi mumkin.

Farqi nimada, bilasizmi?

Biri boshlash uchun hamma sharoit bo‘lishini kutadi. Ikkinchisi esa bor imkoniyatidan foydalanadi.

Bugun sizga nemis tilini o‘rganish uchun nimadan boshlash, qanday xatolardan qochish va o‘zingizga mos yo‘lni qanday topish haqida gapirib beraman.

Soat 20:00 da. 

Qani, “bir kunmas, bugun boshlayman” deydiganlar bormi? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6702', N'uz', Id, NULL, N'@DinaraDeutsch', 6702, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'soatdan keyin kimdir nemis tili o‘rganishni maqsad qiladi', Description = N'2 soatdan keyin kimdir nemis tili o‘rganishni maqsad qiladi 

Yana kimdir esa bir kun o’rganarman deb jonli efirni o’tkazib yuboradi 

Qizig‘i, ikkala insonning ham orzusi bir xil bo‘lishi mumkin.

Farqi nimada, bilasizmi?

Biri boshlash uchun hamma sharoit bo‘lishini kutadi. Ikkinchisi esa bor imkoniyatidan foydalanadi.

Bugun sizga nemis tilini o‘rganish uchun nimadan boshlash, qanday xatolardan qochish va o‘zingizga mos yo‘lni qanday topish haqida gapirib beraman.

Soat 20:00 da. 

Qani, “bir kunmas, bugun boshlayman” deydiganlar bormi? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6702';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6703')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Yarim soat qoldi', N'Yarim soat qoldi 

Do’stlaringizni taklif qildingizmi? Shunday zo’r bepul ma’lumotlardan qolib ketishmasin-a 

Marhamat, ulashing:
 https://t.me/DinaraDeutsch 
 https://t.me/DinaraDeutsch 
 https://t.me/DinaraDeutsch', N'https://t.me/DinaraDeutsch/6703', N'uz', Id, NULL, N'@DinaraDeutsch', 6703, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Yarim soat qoldi', Description = N'Yarim soat qoldi 

Do’stlaringizni taklif qildingizmi? Shunday zo’r bepul ma’lumotlardan qolib ketishmasin-a 

Marhamat, ulashing:
 https://t.me/DinaraDeutsch 
 https://t.me/DinaraDeutsch 
 https://t.me/DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6703';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6704')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Live stream scheduled for Oct 11 at 15:00', N'Live stream scheduled for Oct 11 at 15:00', N'https://t.me/DinaraDeutsch/6704', N'uz', Id, NULL, N'@DinaraDeutsch', 6704, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Live stream scheduled for Oct 11 at 15:00', Description = N'Live stream scheduled for Oct 11 at 15:00'
    WHERE Url = N'https://t.me/DinaraDeutsch/6704';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6707')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Biz boshladik', N'Biz boshladik 

Ovoz va ekran hammaga ko’rinyaptimi?', N'https://t.me/DinaraDeutsch/6707', N'uz', Id, NULL, N'@DinaraDeutsch', 6707, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Biz boshladik', Description = N'Biz boshladik 

Ovoz va ekran hammaga ko’rinyaptimi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6707';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6708')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dars yozib olinadi. Lekin bu degani jonli darsga qatnashish kerak emas degani emas', N'Dars yozib olinadi. Lekin bu degani jonli darsga qatnashish kerak emas degani emas 

Jonli qatnashamiz. Jonlini vaybi boshqacha ✨', N'https://t.me/DinaraDeutsch/6708', N'uz', Id, NULL, N'@DinaraDeutsch', 6708, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dars yozib olinadi. Lekin bu degani jonli darsga qatnashish kerak emas degani emas', Description = N'Dars yozib olinadi. Lekin bu degani jonli darsga qatnashish kerak emas degani emas 

Jonli qatnashamiz. Jonlini vaybi boshqacha ✨'
    WHERE Url = N'https://t.me/DinaraDeutsch/6708';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6709')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Keling, tanishib olamiz.', N'- Keling, tanishib olamiz. 

Meni haqimda ma’lumotga egamisizlar?', N'https://t.me/DinaraDeutsch/6709', N'uz', Id, NULL, N'@DinaraDeutsch', 6709, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Keling, tanishib olamiz.', Description = N'- Keling, tanishib olamiz. 

Meni haqimda ma’lumotga egamisizlar?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6709';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6710')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Muhim xabar', N'Muhim xabar 

Darsni oxirigacha o’tirganlarga sirli bor. Nimaligini aytmaymiz. Oxirida bilasiz.', N'https://t.me/DinaraDeutsch/6710', N'uz', Id, NULL, N'@DinaraDeutsch', 6710, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Muhim xabar', Description = N'Muhim xabar 

Darsni oxirigacha o’tirganlarga sirli bor. Nimaligini aytmaymiz. Oxirida bilasiz.'
    WHERE Url = N'https://t.me/DinaraDeutsch/6710';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6711')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Ancha avval aka-ukalar Sardor va Shoxruh birga nemis tilini boshlashgandi. Bir oy o‘tib esa A2 darajani qo‘lga kiritishdi. Ular...', N'Ancha avval aka-ukalar Sardor va Shoxruh birga nemis tilini boshlashgandi. Bir oy o‘tib esa A2 darajani qo‘lga kiritishdi. Ular nemis tilini noldan boshlashdi va oldilariga juda qisqa muddat ichida A2 darajaga chiqish maqsadini qo‘yishdi. Odatda A2 darajaga…', N'https://t.me/DinaraDeutsch/6711', N'uz', Id, NULL, N'@DinaraDeutsch', 6711, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Ancha avval aka-ukalar Sardor va Shoxruh birga nemis tilini boshlashgandi. Bir oy o‘tib esa A2 darajani qo‘lga kiritishdi. Ular...', Description = N'Ancha avval aka-ukalar Sardor va Shoxruh birga nemis tilini boshlashgandi. Bir oy o‘tib esa A2 darajani qo‘lga kiritishdi. Ular nemis tilini noldan boshlashdi va oldilariga juda qisqa muddat ichida A2 darajaga chiqish maqsadini qo‘yishdi. Odatda A2 darajaga…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6711';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6712')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemis tilini 0 dan boshlab o’rganayotganlar bormi?', N'❓ Nemis tilini 0 dan boshlab o’rganayotganlar bormi?', N'https://t.me/DinaraDeutsch/6712', N'uz', Id, NULL, N'@DinaraDeutsch', 6712, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemis tilini 0 dan boshlab o’rganayotganlar bormi?', Description = N'❓ Nemis tilini 0 dan boshlab o’rganayotganlar bormi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6712';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6714')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'kundan gapirish va eshitish', N'1 - kundan gapirish va eshitish 

Bu realmi sizningcha?', N'https://t.me/DinaraDeutsch/6714', N'uz', Id, NULL, N'@DinaraDeutsch', 6714, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'kundan gapirish va eshitish', Description = N'1 - kundan gapirish va eshitish 

Bu realmi sizningcha?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6714';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6672')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bejizga bu yo’lda emasligimga amin bo’laman shunday xabarlarni o’qib', N'Bejizga bu yo’lda emasligimga amin bo’laman shunday xabarlarni o’qib 

Bugun men bilan ham oʻqiydigan, ham oflline kursga boradigan qiz bir narsani aytib qoldi. Dolzarb mavzu. Yoki ko’pchilik ustozlar yo’l qo’yadigan xato desak ham bo’ladi. 

– Davom etaymi? Qiziqmi 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6672', N'uz', Id, NULL, N'@DinaraDeutsch', 6672, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bejizga bu yo’lda emasligimga amin bo’laman shunday xabarlarni o’qib', Description = N'Bejizga bu yo’lda emasligimga amin bo’laman shunday xabarlarni o’qib 

Bugun men bilan ham oʻqiydigan, ham oflline kursga boradigan qiz bir narsani aytib qoldi. Dolzarb mavzu. Yoki ko’pchilik ustozlar yo’l qo’yadigan xato desak ham bo’ladi. 

– Davom etaymi? Qiziqmi 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6672';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6673')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'2 soatlik dars deyishadi, lekin…”', N'“2 soatlik dars deyishadi, lekin…” 

U qiz shunday dedi: “Darsga boramiz. 1 soat uyga vazifani tekshiradi. Keyin yo‘qlama… Keyin yana nimadir… 2 soat dars deyishadi, lekin yangi nimadir o‘rganishga vaqt qolmayapti”, — dedi.

Bunday holatni ko’p marta guvohi bo’lganman. O’quvchilarim boshqa ustozlardan shikoyat qilishardi. Chunki o‘quvchi uchun darsning davomiyligi emas, o‘sha vaqt ichida nima olayotgani muhim. Uyga vazifa tekshirilishi kerak. Xatolar ko‘rilishi kerak. Lekin darsning asosiy qismi baribir o‘rganish, tushunish va qo‘llashga ketishi kerak. Shuning uchun men yoki kuratorlarim darsdan avval tekshiramiz vazifalarni!

Ayniqsa til o‘rganayotgan bo‘lsangiz, faqat ustozni tinglab o‘tirish bilan til o‘rganilmaydi. Gapirish kerak. Eshitish kerak. Xato qilish kerak. Qayta urinib ko‘rish kerak. 

Yana bir narsa bor: o‘quvchi darsga kelish uchun o‘z vaqtini, energiyasini, pulini ajratyapti. Shuning uchun uning darsdan qiymat olib chiqishi juda muhim. Men darsni shunchaki “2 soat o‘tdi” deb emas, “2 soatda o‘quvchi nimani o‘zlashtirdi?” deb baholayman.

– Bu haqida sizning fikringiz qanday? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6673', N'uz', Id, NULL, N'@DinaraDeutsch', 6673, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'2 soatlik dars deyishadi, lekin…”', Description = N'“2 soatlik dars deyishadi, lekin…” 

U qiz shunday dedi: “Darsga boramiz. 1 soat uyga vazifani tekshiradi. Keyin yo‘qlama… Keyin yana nimadir… 2 soat dars deyishadi, lekin yangi nimadir o‘rganishga vaqt qolmayapti”, — dedi.

Bunday holatni ko’p marta guvohi bo’lganman. O’quvchilarim boshqa ustozlardan shikoyat qilishardi. Chunki o‘quvchi uchun darsning davomiyligi emas, o‘sha vaqt ichida nima olayotgani muhim. Uyga vazifa tekshirilishi kerak. Xatolar ko‘rilishi kerak. Lekin darsning asosiy qismi baribir o‘rganish, tushunish va qo‘llashga ketishi kerak. Shuning uchun men yoki kuratorlarim darsdan avval tekshiramiz vazifalarni!

Ayniqsa til o‘rganayotgan bo‘lsangiz, faqat ustozni tinglab o‘tirish bilan til o‘rganilmaydi. Gapirish kerak. Eshitish kerak. Xato qilish kerak. Qayta urinib ko‘rish kerak. 

Yana bir narsa bor: o‘quvchi darsga kelish uchun o‘z vaqtini, energiyasini, pulini ajratyapti. Shuning uchun uning darsdan qiymat olib chiqishi juda muhim. Men darsni shunchaki “2 soat o‘tdi” deb emas, “2 soatda o‘quvchi nimani o‘zlashtirdi?” deb baholayman.

– Bu haqida sizning fikringiz qanday? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6673';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6676')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Salomatmisizlar?', N'Salomatmisizlar? 

Bunday yomg’irli havoda issiqqina uyda o’tirib dars qilishga nima yetsin-a? 

- Bir lug’at boyligingizni tekshirishga nima deysiz?', N'https://t.me/DinaraDeutsch/6676', N'uz', Id, NULL, N'@DinaraDeutsch', 6676, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Salomatmisizlar?', Description = N'Salomatmisizlar? 

Bunday yomg’irli havoda issiqqina uyda o’tirib dars qilishga nima yetsin-a? 

- Bir lug’at boyligingizni tekshirishga nima deysiz?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6676';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6682')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kimda nechta to’g’ri chiqdi?', N'– Kimda nechta to’g’ri chiqdi?', N'https://t.me/DinaraDeutsch/6682', N'uz', Id, NULL, N'@DinaraDeutsch', 6682, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kimda nechta to’g’ri chiqdi?', Description = N'– Kimda nechta to’g’ri chiqdi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6682';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6683')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Xayrli kun nemis tili o’rganuvchilari!', N'Xayrli kun nemis tili o’rganuvchilari! 

Amaliy mashg’ulot 

überzeugen fe’liga gap tuzing. Eng chiroyli chiqqan gapga sirli hadya bor 

Marhamat, izohlar sizga muntazir:', N'https://t.me/DinaraDeutsch/6683', N'uz', Id, NULL, N'@DinaraDeutsch', 6683, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Xayrli kun nemis tili o’rganuvchilari!', Description = N'Xayrli kun nemis tili o’rganuvchilari! 

Amaliy mashg’ulot 

überzeugen fe’liga gap tuzing. Eng chiroyli chiqqan gapga sirli hadya bor 

Marhamat, izohlar sizga muntazir:'
    WHERE Url = N'https://t.me/DinaraDeutsch/6683';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6684')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Xayrli kun nemis tili o’rganuvchilari! Amaliy mashg’ulot überzeugen fe’liga gap tuzing. Eng chiroyli chiqqan gapga sirli hadya ...', N'Xayrli kun nemis tili o’rganuvchilari! Amaliy mashg’ulot überzeugen fe’liga gap tuzing. Eng chiroyli chiqqan gapga sirli hadya bor Marhamat, izohlar sizga muntazir:', N'https://t.me/DinaraDeutsch/6684', N'uz', Id, NULL, N'@DinaraDeutsch', 6684, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Xayrli kun nemis tili o’rganuvchilari! Amaliy mashg’ulot überzeugen fe’liga gap tuzing. Eng chiroyli chiqqan gapga sirli hadya ...', Description = N'Xayrli kun nemis tili o’rganuvchilari! Amaliy mashg’ulot überzeugen fe’liga gap tuzing. Eng chiroyli chiqqan gapga sirli hadya bor Marhamat, izohlar sizga muntazir:'
    WHERE Url = N'https://t.me/DinaraDeutsch/6684';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6685')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nega hali ham nemis tilini boshlay olmay yuribsiz?', N'Nega hali ham nemis tilini boshlay olmay yuribsiz? 

Nemis tilini o‘rganish niyatingiz bor. Balki bir necha oydan beri. Ijtimoiy tarmoqlarda nemis tili bo‘yicha sahifalarni kuzatasiz, kurslarni ko‘rasiz, ustozlarni solishtirasiz. Hatto ba’zida “Shu oy boshlayman” deb o‘zingizga va’da ham berasiz. Lekin oy tugaydi — nemis tili yana keyinga qoladi. 

Sabab nimada? Ko’pincha muammo dangasalikda ham, qobiliyat yo‘qligida ham emas.

Birinchidan, nemis tili qiyin degan fikr bor. Artikllar, kelishiklar, uzun so‘zlar, fe’llarning o‘zgarishi… Bularni ko‘rib, hali boshlamasdan turib «Men buni o‘rgana olmasam kerak» degan xulosa qilasiz.

Ikkinchidan, tanlov juda ko‘p. Telegram va Instagram’da o‘nlab kurslar, yuzlab ustozlar bor. Har biri o‘z metodini eng yaxshi deb ko‘rsatadi. Natijada kurs tanlashning o‘zi alohida muammoga aylanadi. 

Uchinchidan, ustoz tanlashga ishonchingiz komil emas. “Bu ustoz bilan o‘qisam, haqiqatan ham gapira olamanmi?”, “Vaqtim va pulim bekorga ketmaydimi?”bdegan savollar paydo bo‘ladi.

To‘rtinchidan, online ta’limga shubha qilasiz. “Uyda o‘tirib til o‘rganib bo‘ladimi?”, “Ustoz meni nazorat qilmasa, o‘zim mustaqil ishlay olamanmi?” deb o‘ylaysiz.

Sizda qaysi biri?

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6685', N'uz', Id, NULL, N'@DinaraDeutsch', 6685, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nega hali ham nemis tilini boshlay olmay yuribsiz?', Description = N'Nega hali ham nemis tilini boshlay olmay yuribsiz? 

Nemis tilini o‘rganish niyatingiz bor. Balki bir necha oydan beri. Ijtimoiy tarmoqlarda nemis tili bo‘yicha sahifalarni kuzatasiz, kurslarni ko‘rasiz, ustozlarni solishtirasiz. Hatto ba’zida “Shu oy boshlayman” deb o‘zingizga va’da ham berasiz. Lekin oy tugaydi — nemis tili yana keyinga qoladi. 

Sabab nimada? Ko’pincha muammo dangasalikda ham, qobiliyat yo‘qligida ham emas.

Birinchidan, nemis tili qiyin degan fikr bor. Artikllar, kelishiklar, uzun so‘zlar, fe’llarning o‘zgarishi… Bularni ko‘rib, hali boshlamasdan turib «Men buni o‘rgana olmasam kerak» degan xulosa qilasiz.

Ikkinchidan, tanlov juda ko‘p. Telegram va Instagram’da o‘nlab kurslar, yuzlab ustozlar bor. Har biri o‘z metodini eng yaxshi deb ko‘rsatadi. Natijada kurs tanlashning o‘zi alohida muammoga aylanadi. 

Uchinchidan, ustoz tanlashga ishonchingiz komil emas. “Bu ustoz bilan o‘qisam, haqiqatan ham gapira olamanmi?”, “Vaqtim va pulim bekorga ketmaydimi?”bdegan savollar paydo bo‘ladi.

To‘rtinchidan, online ta’limga shubha qilasiz. “Uyda o‘tirib til o‘rganib bo‘ladimi?”, “Ustoz meni nazorat qilmasa, o‘zim mustaqil ishlay olamanmi?” deb o‘ylaysiz.

Sizda qaysi biri?

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6685';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6686')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Meni o‘qituvchilik o‘zgartirdi', N'Meni o‘qituvchilik o‘zgartirdi 

5 yil avvalgi Dinara bilan bugungi Dinara — umuman boshqa odam. Avval o‘qituvchilikni faqat dars o‘tish, mavzuni tushuntirish va o‘quvchiga bilim berish deb o‘ylardim. Vaqt o‘tishi bilan esa bitta narsani tushundim: ustoz faqat bilim emas, hayot tarzini ham o’rgatadi. 

O’quvchilarimga biror narsani tavsiya qilishdan oldin, imkon qadar avval o‘zim sinab ko‘raman. Natijasini ko‘raman, xulosa qilaman va keyin ulashaman. Masalan, dars berish uchun shunchaki bilimning o‘zi yetarli emasligini tushundim. Sizda energiya bo‘lishi kerak. Diqqat va kayfiyat dars sifatiga ta’sir qiladi.

Shuning uchun sog‘lom turmush tarziga o‘tdim. Sog‘lomroq ovqatlanaman, jismonan faol bo‘lishga harakat qilaman. Va bu o‘zgarishlar nafaqat hayotimga, balki darslarim sifatiga ham sezilarli ta’sir qildi. Chunki men o‘quvchilarimga faqat nemis tilini o‘rgatishni emas, o‘zimning hayotim bilan ham namuna bo‘lishni xohlayman. 

– Va buni qaysidir ma’noda uddasidan chiqyapman deb o’ylayman 

Mening sadoqatli o’quvchilarim, qani izohga darslarimiz qanday kayfiyatda o’tilishi haqida yozib ketingchi 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6686', N'uz', Id, NULL, N'@DinaraDeutsch', 6686, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Meni o‘qituvchilik o‘zgartirdi', Description = N'Meni o‘qituvchilik o‘zgartirdi 

5 yil avvalgi Dinara bilan bugungi Dinara — umuman boshqa odam. Avval o‘qituvchilikni faqat dars o‘tish, mavzuni tushuntirish va o‘quvchiga bilim berish deb o‘ylardim. Vaqt o‘tishi bilan esa bitta narsani tushundim: ustoz faqat bilim emas, hayot tarzini ham o’rgatadi. 

O’quvchilarimga biror narsani tavsiya qilishdan oldin, imkon qadar avval o‘zim sinab ko‘raman. Natijasini ko‘raman, xulosa qilaman va keyin ulashaman. Masalan, dars berish uchun shunchaki bilimning o‘zi yetarli emasligini tushundim. Sizda energiya bo‘lishi kerak. Diqqat va kayfiyat dars sifatiga ta’sir qiladi.

Shuning uchun sog‘lom turmush tarziga o‘tdim. Sog‘lomroq ovqatlanaman, jismonan faol bo‘lishga harakat qilaman. Va bu o‘zgarishlar nafaqat hayotimga, balki darslarim sifatiga ham sezilarli ta’sir qildi. Chunki men o‘quvchilarimga faqat nemis tilini o‘rgatishni emas, o‘zimning hayotim bilan ham namuna bo‘lishni xohlayman. 

– Va buni qaysidir ma’noda uddasidan chiqyapman deb o’ylayman 

Mening sadoqatli o’quvchilarim, qani izohga darslarimiz qanday kayfiyatda o’tilishi haqida yozib ketingchi 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6686';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6687')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Guten Tag!', N'Guten Tag! 

Sizlar bilan aaanchadan buyon jonli uchrashmayotkan ekanmiz o’ylab qarasam. Bitta jonli darsga nima deysizlar? 

– Mavzusiyam aniq. Lekin oldin sizlarga kerakmi, yo’qmi, bilishim kerak. Qiziq bo’lsa izohda + qoldiring.', N'https://t.me/DinaraDeutsch/6687', N'uz', Id, NULL, N'@DinaraDeutsch', 6687, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Guten Tag!', Description = N'Guten Tag! 

Sizlar bilan aaanchadan buyon jonli uchrashmayotkan ekanmiz o’ylab qarasam. Bitta jonli darsga nima deysizlar? 

– Mavzusiyam aniq. Lekin oldin sizlarga kerakmi, yo’qmi, bilishim kerak. Qiziq bo’lsa izohda + qoldiring.'
    WHERE Url = N'https://t.me/DinaraDeutsch/6687';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6688')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemis tilini 0 dan boshlamoqchisiz, lekin nimadan boshlashni bilmaysizmi?', N'Nemis tilini 0 dan boshlamoqchisiz, lekin nimadan boshlashni bilmaysizmi? 

- Qaysi kitobni olish kerak?
- Grammatikani qachondan boshlash kerak?
- Kuniga qancha vaqt ajratish yetarli?
- Birinchi oyda nimalarni o‘rganish kerak?

Eng muhimi — hammasini bir vaqtda boshlash shartmi? 

Shu savollar atrofida adashib yurganlar uchun jonli dars qilamiz.

Mavzu: Nemis tilini 0 dan qanday boshlash kerak?
 11-oktabr 
 20:00 

Agar nemis tilini o‘rganishni boshlashni anchadan beri ortga surib yurgan bo‘lsangiz — bu safar birga boshlaymiz! 

Do’stlaringizni ham sahifamga taklif qiling! 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6688', N'uz', Id, NULL, N'@DinaraDeutsch', 6688, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemis tilini 0 dan boshlamoqchisiz, lekin nimadan boshlashni bilmaysizmi?', Description = N'Nemis tilini 0 dan boshlamoqchisiz, lekin nimadan boshlashni bilmaysizmi? 

- Qaysi kitobni olish kerak?
- Grammatikani qachondan boshlash kerak?
- Kuniga qancha vaqt ajratish yetarli?
- Birinchi oyda nimalarni o‘rganish kerak?

Eng muhimi — hammasini bir vaqtda boshlash shartmi? 

Shu savollar atrofida adashib yurganlar uchun jonli dars qilamiz.

Mavzu: Nemis tilini 0 dan qanday boshlash kerak?
 11-oktabr 
 20:00 

Agar nemis tilini o‘rganishni boshlashni anchadan beri ortga surib yurgan bo‘lsangiz — bu safar birga boshlaymiz! 

Do’stlaringizni ham sahifamga taklif qiling! 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6688';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6689')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Xayrli kun qadrdonlar!', N'Xayrli kun qadrdonlar! 

– Tez orada safimizga yangilar qo’shilishadi. Ularni qarshilab olish uchun bir-ikki og’iz yozmoqchiman. Sizlar ham kanalni maqtab qo’yarsizlar-a', N'https://t.me/DinaraDeutsch/6689', N'uz', Id, NULL, N'@DinaraDeutsch', 6689, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Xayrli kun qadrdonlar!', Description = N'Xayrli kun qadrdonlar! 

– Tez orada safimizga yangilar qo’shilishadi. Ularni qarshilab olish uchun bir-ikki og’iz yozmoqchiman. Sizlar ham kanalni maqtab qo’yarsizlar-a'
    WHERE Url = N'https://t.me/DinaraDeutsch/6689';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6690')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Assalomu alaykum. Agar siz nemis tilini nimadan boshlashni, qanday o‘rganishni va qaysi tartibda harakat qilishni bilmay yurgan...', N'Assalomu alaykum. Agar siz nemis tilini nimadan boshlashni, qanday o‘rganishni va qaysi tartibda harakat qilishni bilmay yurgan bo‘lsangiz — bu kanal siz uchun.

Bu yerda nemis tilini bosqichma-bosqich, tushunarli va tizimli o‘rganishingizga yordam beradigan foydali kontentlar ulashib boramiz.

11-oktabr kuni soat 20:00 da jonli darsimiz bo‘ladi! 

Darsda:
— Nemis tilini nimadan boshlash kerak? 
— Qanday qilib to‘g‘ri o‘rganish mumkin? 
— Birinchi bosqichda nimalarga e’tibor berish kerak? 
— Qanday xatolardan saqlanish kerak?

kabi savollarga javob beramiz.

Hozirdanoq kanalni PIN qilib qo‘ying , shunda kerakli ma’lumotlarni o’tkazib yubormaysiz.

Va eng muhimi — kanaldagi xabarlarni diqqat bilan o‘qib boring. Chunki sizga kerak bo‘ladigan eng muhim tavsiyalar aynan shu yerda bo‘ladi. 

Nemis tili qiyin emas. Muhimi — uni to‘g‘ri boshlash. ✨ 

11-oktabr kuni jonli darsda ko‘rishamiz!', N'https://t.me/DinaraDeutsch/6690', N'uz', Id, NULL, N'@DinaraDeutsch', 6690, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Assalomu alaykum. Agar siz nemis tilini nimadan boshlashni, qanday o‘rganishni va qaysi tartibda harakat qilishni bilmay yurgan...', Description = N'Assalomu alaykum. Agar siz nemis tilini nimadan boshlashni, qanday o‘rganishni va qaysi tartibda harakat qilishni bilmay yurgan bo‘lsangiz — bu kanal siz uchun.

Bu yerda nemis tilini bosqichma-bosqich, tushunarli va tizimli o‘rganishingizga yordam beradigan foydali kontentlar ulashib boramiz.

11-oktabr kuni soat 20:00 da jonli darsimiz bo‘ladi! 

Darsda:
— Nemis tilini nimadan boshlash kerak? 
— Qanday qilib to‘g‘ri o‘rganish mumkin? 
— Birinchi bosqichda nimalarga e’tibor berish kerak? 
— Qanday xatolardan saqlanish kerak?

kabi savollarga javob beramiz.

Hozirdanoq kanalni PIN qilib qo‘ying , shunda kerakli ma’lumotlarni o’tkazib yubormaysiz.

Va eng muhimi — kanaldagi xabarlarni diqqat bilan o‘qib boring. Chunki sizga kerak bo‘ladigan eng muhim tavsiyalar aynan shu yerda bo‘ladi. 

Nemis tili qiyin emas. Muhimi — uni to‘g‘ri boshlash. ✨ 

11-oktabr kuni jonli darsda ko‘rishamiz!'
    WHERE Url = N'https://t.me/DinaraDeutsch/6690';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6692')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Germaniya — shunchaki orzu emas, maqsad bo‘lishi mumkin.', N'Germaniya — shunchaki orzu emas, maqsad bo‘lishi mumkin. 

Tasavvur qiling: Germaniyada tahsil olyapsiz, xalqaro muhitda ishlayapsiz yoki yangi imkoniyatlar sari ilk qadamingizni qo‘yyapsiz.

Bularning barchasi nemis tilini o‘rganishdan boshlanishi mumkin. 

Nemis tili sizga qanday imkoniyatlar eshigini ochadi?

Ta’lim: Germaniyada ko‘plab davlat universitetlarida bakalavriat va magistratura dasturlari mavjud. Ayrim dasturlarda o‘qish to‘lovi olinmaydi, biroq istisnolar va boshqa xarajatlar ham bor.

Ish: Nemis tilini bilish Germaniyada ish topish imkoniyatlarini kengaytirishi mumkin. Ayrim kasblarda til bilish darajasi va diplom talab qilinadi.

Kasbiy ta’lim: Ausbildung dasturlari orqali kasb o‘rganish va amaliy tajriba orttirish mumkin. Bunda ham dasturga qarab til darajasi va boshqa talablar belgilanadi.

Albatta, faqat tilni bilishning o‘zi Germaniyada o‘qish yoki ishlashni kafolatlamaydi. Hujjatlar, moliyaviy imkoniyatlar, tanlangan dastur va viza talablari ham muhim. Ammo bir narsani unutmang: katta maqsadlarga erishish ko‘pincha kichik, ammo izchil qadamlardan boshlanadi. 

Sizning Germaniya bilan bog‘liq orzuingiz qanday: o‘qishmi, ishlashmi yoki shunchaki sayohat qilishmi? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6692', N'uz', Id, NULL, N'@DinaraDeutsch', 6692, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Germaniya — shunchaki orzu emas, maqsad bo‘lishi mumkin.', Description = N'Germaniya — shunchaki orzu emas, maqsad bo‘lishi mumkin. 

Tasavvur qiling: Germaniyada tahsil olyapsiz, xalqaro muhitda ishlayapsiz yoki yangi imkoniyatlar sari ilk qadamingizni qo‘yyapsiz.

Bularning barchasi nemis tilini o‘rganishdan boshlanishi mumkin. 

Nemis tili sizga qanday imkoniyatlar eshigini ochadi?

Ta’lim: Germaniyada ko‘plab davlat universitetlarida bakalavriat va magistratura dasturlari mavjud. Ayrim dasturlarda o‘qish to‘lovi olinmaydi, biroq istisnolar va boshqa xarajatlar ham bor.

Ish: Nemis tilini bilish Germaniyada ish topish imkoniyatlarini kengaytirishi mumkin. Ayrim kasblarda til bilish darajasi va diplom talab qilinadi.

Kasbiy ta’lim: Ausbildung dasturlari orqali kasb o‘rganish va amaliy tajriba orttirish mumkin. Bunda ham dasturga qarab til darajasi va boshqa talablar belgilanadi.

Albatta, faqat tilni bilishning o‘zi Germaniyada o‘qish yoki ishlashni kafolatlamaydi. Hujjatlar, moliyaviy imkoniyatlar, tanlangan dastur va viza talablari ham muhim. Ammo bir narsani unutmang: katta maqsadlarga erishish ko‘pincha kichik, ammo izchil qadamlardan boshlanadi. 

Sizning Germaniya bilan bog‘liq orzuingiz qanday: o‘qishmi, ishlashmi yoki shunchaki sayohat qilishmi? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6692';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6654')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Assalomu alaykum', N'Assalomu alaykum 

Bilaman, uzoq vaqtdan beri kanalda aktiv emasman. Universitetga moslashish, onlayn darslar va hokazo degandek. Lekin bunday yurib bo’lmaydi. 

— Shuning uchun boshlashdan avval sizlarga savol bilan murojaat qilmoqchiman?', N'https://t.me/DinaraDeutsch/6654', N'uz', Id, NULL, N'@DinaraDeutsch', 6654, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Assalomu alaykum', Description = N'Assalomu alaykum 

Bilaman, uzoq vaqtdan beri kanalda aktiv emasman. Universitetga moslashish, onlayn darslar va hokazo degandek. Lekin bunday yurib bo’lmaydi. 

— Shuning uchun boshlashdan avval sizlarga savol bilan murojaat qilmoqchiman?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6654';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6656')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Xayrli tong, nemis tili shinavandalari!', N'Xayrli tong, nemis tili shinavandalari! 

O’ylab qarasam kanal “informatsion blog”ga o’xshab qolibti. Blogga rang kiritish uchun biroz o’zimda haqimda yozmoqchiman. 

— Faqat blog emas, blog egasi ham qiziq bo’ladiku, tog’rimi?', N'https://t.me/DinaraDeutsch/6656', N'uz', Id, NULL, N'@DinaraDeutsch', 6656, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Xayrli tong, nemis tili shinavandalari!', Description = N'Xayrli tong, nemis tili shinavandalari! 

O’ylab qarasam kanal “informatsion blog”ga o’xshab qolibti. Blogga rang kiritish uchun biroz o’zimda haqimda yozmoqchiman. 

— Faqat blog emas, blog egasi ham qiziq bo’ladiku, tog’rimi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6656';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6657')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'yoshimda boshlangan yo‘l', N'16 yoshimda boshlangan yo‘l 

Men 16 yoshimda dars berishni boshlaganman. O‘sha paytda bu ish bir kun kelib hayotimni bunchalik o‘zgartirishini, minglab insonlar bilan bog‘laydigan yo‘lga aylanishini bilmaganman 
16 yoshli qiz uchun dars berish oson emasdi. Ertalabdan kechgacha darslar, turli o‘quvchilar bilan ishlash, tayyorlanish, charchash…

Onam doim suv yoki ovqat olib kirib berardilar xonamgacha. Ular meni shunchaki “ dars berayotgan qiz” sifatida emas, o‘z orzusining ortidan ketayotgan farzandi sifatida qo‘llab-quvvatlashardi . 

O‘sha paytda men katta natijalar haqida o‘ylamaganman. 
— Shunchaki dars berardim. 
— O‘rgatardim.
— O‘zim ham o‘rganardim.

Lekin bugun ortga qarasam, o‘sha 16 yoshli qizning qilgan kichik qadamlari meni butunlay boshqa joyga olib kelganini ko‘raman. Bugun esa men deyarli 1000 nafar o‘quvchiga dars bergan ustozga aylandim.

Va eng qizig‘i bu yo‘l hali tugamagan. Hali ko’p davom etadi 

— Sizlar meni qanchadan beri kuzatasizlar? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6657', N'uz', Id, NULL, N'@DinaraDeutsch', 6657, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'yoshimda boshlangan yo‘l', Description = N'16 yoshimda boshlangan yo‘l 

Men 16 yoshimda dars berishni boshlaganman. O‘sha paytda bu ish bir kun kelib hayotimni bunchalik o‘zgartirishini, minglab insonlar bilan bog‘laydigan yo‘lga aylanishini bilmaganman 
16 yoshli qiz uchun dars berish oson emasdi. Ertalabdan kechgacha darslar, turli o‘quvchilar bilan ishlash, tayyorlanish, charchash…

Onam doim suv yoki ovqat olib kirib berardilar xonamgacha. Ular meni shunchaki “ dars berayotgan qiz” sifatida emas, o‘z orzusining ortidan ketayotgan farzandi sifatida qo‘llab-quvvatlashardi . 

O‘sha paytda men katta natijalar haqida o‘ylamaganman. 
— Shunchaki dars berardim. 
— O‘rgatardim.
— O‘zim ham o‘rganardim.

Lekin bugun ortga qarasam, o‘sha 16 yoshli qizning qilgan kichik qadamlari meni butunlay boshqa joyga olib kelganini ko‘raman. Bugun esa men deyarli 1000 nafar o‘quvchiga dars bergan ustozga aylandim.

Va eng qizig‘i bu yo‘l hali tugamagan. Hali ko’p davom etadi 

— Sizlar meni qanchadan beri kuzatasizlar? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6657';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6658')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Introvertlar bormi oramizda?', N'Introvertlar bormi oramizda? 

Maktabda juda introvert qiz edim. Qizlar bilan tez chiqishib keta olmasdim. Tengdoshlarimning qiziqishlari (make up, kiyinish) menga unchalik mos kelmasdi. Ular uchun qiziq bo‘lgan narsalar men uchun qiziq emas, men qiziqqan narsalar esa ko‘pincha ular uchun oddiy tuyulardi.

Shuning uchun ko‘pincha o‘zim bilan o‘zim yurardim. Ko‘p gapirishni emas, kuzatishni yaxshi ko‘rardim. Katta davralarda o‘zimni erkin his qilmasdim. Yangi inson bilan tanishish ham men uchun oson emasdi. Haligacha shunaqa 

O‘sha paytda buni o‘zimdagi kamchilik deb o‘ylardim.

“Balki men juda tortinchoqdirman?”
“Balki odamlar bilan chiqishishni bilmasman?” Keyinchalik esa bir narsani tushundim:

Aynan shu xarakterim meni bugungi insonimga aylantirgan. Chunki men ko‘proq tinglashni, kuzatishni, chuqur o‘ylashni va biror narsani chin dildan o‘rganishni yaxshi ko‘rardim. 

Bugun yuzlab insonlar oldida dars berayotganimda, ba’zan o‘sha maktabdagi qizni eslayman. U bunga ishonmagan bo‘lardi. Chunki u bir kun kelib shuncha odamga bilim berishini tasavvur ham qilmagan. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6658', N'uz', Id, NULL, N'@DinaraDeutsch', 6658, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Introvertlar bormi oramizda?', Description = N'Introvertlar bormi oramizda? 

Maktabda juda introvert qiz edim. Qizlar bilan tez chiqishib keta olmasdim. Tengdoshlarimning qiziqishlari (make up, kiyinish) menga unchalik mos kelmasdi. Ular uchun qiziq bo‘lgan narsalar men uchun qiziq emas, men qiziqqan narsalar esa ko‘pincha ular uchun oddiy tuyulardi.

Shuning uchun ko‘pincha o‘zim bilan o‘zim yurardim. Ko‘p gapirishni emas, kuzatishni yaxshi ko‘rardim. Katta davralarda o‘zimni erkin his qilmasdim. Yangi inson bilan tanishish ham men uchun oson emasdi. Haligacha shunaqa 

O‘sha paytda buni o‘zimdagi kamchilik deb o‘ylardim.

“Balki men juda tortinchoqdirman?”
“Balki odamlar bilan chiqishishni bilmasman?” Keyinchalik esa bir narsani tushundim:

Aynan shu xarakterim meni bugungi insonimga aylantirgan. Chunki men ko‘proq tinglashni, kuzatishni, chuqur o‘ylashni va biror narsani chin dildan o‘rganishni yaxshi ko‘rardim. 

Bugun yuzlab insonlar oldida dars berayotganimda, ba’zan o‘sha maktabdagi qizni eslayman. U bunga ishonmagan bo‘lardi. Chunki u bir kun kelib shuncha odamga bilim berishini tasavvur ham qilmagan. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6658';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6659')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Darslar boshlanishidan avval o’quvchilarimdan doim nemis tilini nima uchun o’rganayotganini so’rayman.', N'Herbst 

Darslar boshlanishidan avval o’quvchilarimdan doim nemis tilini nima uchun o’rganayotganini so’rayman. 

– Siz bu tilni nima uchun o’rganmoqchisiz/o’rganmoqdasiz?', N'https://t.me/DinaraDeutsch/6659', N'uz', Id, NULL, N'@DinaraDeutsch', 6659, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Darslar boshlanishidan avval o’quvchilarimdan doim nemis tilini nima uchun o’rganayotganini so’rayman.', Description = N'Herbst 

Darslar boshlanishidan avval o’quvchilarimdan doim nemis tilini nima uchun o’rganayotganini so’rayman. 

– Siz bu tilni nima uchun o’rganmoqchisiz/o’rganmoqdasiz?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6659';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6660')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bitta sirni aytaymi sizlarga?', N'Bitta sirni aytaymi sizlarga? 

Nemis tilini o‘zim tanlamaganman. Hatto bolaligimda nemis tilini o‘rganishimga sabab bo‘ladigan qarorni ham men qabul qilmaganman. Onam meni ixtisoslashtirilgan maktabga hujjat topshirgan. Bu maktabda 1-sinfdan 11-sinfgacha nemis tili o‘qitilardi.

Shunday qilib, men 1-sinfdan boshlab nemis tilini o‘rgana boshlaganman. O‘sha paytda esa buning hayotimda qanday o‘rin tutishini umuman bilmaganman. Hamma ingliz tilini o’qisa, men nemis tili o’qirdim. 

Balki o‘sha paytda men buni tushunmagandirman. Lekin hozir ortga qarab, hayotimdagi ko‘p narsalarni aynan shu til bilan bog‘lay olaman. Bugun nemis tilini yaxshi ko‘rishim, shu sohada rivojlanishim, ko’plab odamlarga nemis tilini o‘rgatishim — bularning barchasi bir qarashda oddiygina bir qarordan boshlangan 

— Ba’zdan hayotimizdagi eng chiroyli imkoniyatlar bizning rejamiz bilan kelmaydi. Ular shunchaki hayotimizga kirib keladi. Biz esa yillar o‘tibgina uning aslida qanday katta ne’mat bo‘lganini tushunamiz.

Nemis tili - hayotimdagi eng yaxshi “tasodif”lardan biri! 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6660', N'uz', Id, NULL, N'@DinaraDeutsch', 6660, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bitta sirni aytaymi sizlarga?', Description = N'Bitta sirni aytaymi sizlarga? 

Nemis tilini o‘zim tanlamaganman. Hatto bolaligimda nemis tilini o‘rganishimga sabab bo‘ladigan qarorni ham men qabul qilmaganman. Onam meni ixtisoslashtirilgan maktabga hujjat topshirgan. Bu maktabda 1-sinfdan 11-sinfgacha nemis tili o‘qitilardi.

Shunday qilib, men 1-sinfdan boshlab nemis tilini o‘rgana boshlaganman. O‘sha paytda esa buning hayotimda qanday o‘rin tutishini umuman bilmaganman. Hamma ingliz tilini o’qisa, men nemis tili o’qirdim. 

Balki o‘sha paytda men buni tushunmagandirman. Lekin hozir ortga qarab, hayotimdagi ko‘p narsalarni aynan shu til bilan bog‘lay olaman. Bugun nemis tilini yaxshi ko‘rishim, shu sohada rivojlanishim, ko’plab odamlarga nemis tilini o‘rgatishim — bularning barchasi bir qarashda oddiygina bir qarordan boshlangan 

— Ba’zdan hayotimizdagi eng chiroyli imkoniyatlar bizning rejamiz bilan kelmaydi. Ular shunchaki hayotimizga kirib keladi. Biz esa yillar o‘tibgina uning aslida qanday katta ne’mat bo‘lganini tushunamiz.

Nemis tili - hayotimdagi eng yaxshi “tasodif”lardan biri! 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6660';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6661')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Herbst Darslar boshlanishidan avval o’quvchilarimdan doim nemis tilini nima uchun o’rganayotganini so’rayman. – Siz bu tilni ni...', N'Herbst Darslar boshlanishidan avval o’quvchilarimdan doim nemis tilini nima uchun o’rganayotganini so’rayman. – Siz bu tilni nima uchun o’rganmoqchisiz/o’rganmoqdasiz?', N'https://t.me/DinaraDeutsch/6661', N'uz', Id, NULL, N'@DinaraDeutsch', 6661, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Herbst Darslar boshlanishidan avval o’quvchilarimdan doim nemis tilini nima uchun o’rganayotganini so’rayman. – Siz bu tilni ni...', Description = N'Herbst Darslar boshlanishidan avval o’quvchilarimdan doim nemis tilini nima uchun o’rganayotganini so’rayman. – Siz bu tilni nima uchun o’rganmoqchisiz/o’rganmoqdasiz?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6661';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6662')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'NEMIS TILI MENGA NIMA BERDI?', N'NEMIS TILI MENGA NIMA BERDI? 

Nemis tili menga faqat bilim va sevimli kasbimni bermadi. U menga moliyaviy tomondan ham juda ko‘p imkoniyatlar berdi.

O‘z pulimga dars o’tish uchun 2 marta noutbuk oldim. Onamga telefon sovg‘a qildim. Bularning har biri men uchun shunchaki xarid emas.

Chunki ularning ortida darslar, izlanishlar, o‘quvchilar, ba’zan charchoq, ba’zan esa “uddalay olamanmi?” degan savollar bor edi.

Lekin asta-sekin o‘z mehnatim orqali topgan pulim bilan nafaqat o‘zimga kerakli narsalarni ola boshladim, balki oilamga ham yordam bera oladigan bo‘ldim. Ayniqsa, o‘zingiz ishlab topgan pulingizga onangizga biror narsa olib berishning hissi boshqacha ekan, ishonavering 

Bir paytlar menga berilgan yordam va qo‘llab-quvvatlashlarni endi men yaqinlarimga bera olayotganimni his qilish — men uchun juda katta baxt.

Shuning uchun men pulni hayotdagi eng asosiy maqsad deb bilmayman. Pul — vosita. O‘zingiz xohlagan narsani mustaqil ravishda sotib olish imkoniyati. Yaqinlaringizga kerakli narsani olib berish imkoniyati. O‘zingizga investitsiya qilish imkoniyati. 

Va menimcha, ayol kishi uchun o‘z bilimiga tayangan holda daromad qila olish juda muhim. Lekin moliyaviy tomoni — bu hikoyaning faqat bir qismi.

Nemis tili orqali hayotimda yana nimalar o‘zgarganini ham aytib beraman.

Davomi bor… 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6662', N'uz', Id, NULL, N'@DinaraDeutsch', 6662, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'NEMIS TILI MENGA NIMA BERDI?', Description = N'NEMIS TILI MENGA NIMA BERDI? 

Nemis tili menga faqat bilim va sevimli kasbimni bermadi. U menga moliyaviy tomondan ham juda ko‘p imkoniyatlar berdi.

O‘z pulimga dars o’tish uchun 2 marta noutbuk oldim. Onamga telefon sovg‘a qildim. Bularning har biri men uchun shunchaki xarid emas.

Chunki ularning ortida darslar, izlanishlar, o‘quvchilar, ba’zan charchoq, ba’zan esa “uddalay olamanmi?” degan savollar bor edi.

Lekin asta-sekin o‘z mehnatim orqali topgan pulim bilan nafaqat o‘zimga kerakli narsalarni ola boshladim, balki oilamga ham yordam bera oladigan bo‘ldim. Ayniqsa, o‘zingiz ishlab topgan pulingizga onangizga biror narsa olib berishning hissi boshqacha ekan, ishonavering 

Bir paytlar menga berilgan yordam va qo‘llab-quvvatlashlarni endi men yaqinlarimga bera olayotganimni his qilish — men uchun juda katta baxt.

Shuning uchun men pulni hayotdagi eng asosiy maqsad deb bilmayman. Pul — vosita. O‘zingiz xohlagan narsani mustaqil ravishda sotib olish imkoniyati. Yaqinlaringizga kerakli narsani olib berish imkoniyati. O‘zingizga investitsiya qilish imkoniyati. 

Va menimcha, ayol kishi uchun o‘z bilimiga tayangan holda daromad qila olish juda muhim. Lekin moliyaviy tomoni — bu hikoyaning faqat bir qismi.

Nemis tili orqali hayotimda yana nimalar o‘zgarganini ham aytib beraman.

Davomi bor… 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6662';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6663')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemis tili menga bergan yana bir imkoniyatlardan biri — sevimli ustozim bo‘lishimga sabab bo‘lgani ‍', N'Nemis tili menga bergan yana bir imkoniyatlardan biri — sevimli ustozim bo‘lishimga sabab bo‘lgani ‍ 

Men shunchaki nemis tilini o‘rganib, keyin sertifikat olib qo‘ymadim. Bu til meni o‘zim juda yaxshi ko‘radigan kasb — ustozlikka olib keldi.

Bugun dars berish men uchun oddiy ish emas. U meni shaxs tomonlama o’stirdi deb bemalol ayta olaman. 

O‘quvchilarim bilan ishlash, ularga nimanidir tushuntirish, biror mavzuni tushunib olganidagi ko‘zlaridagi o‘zgarishni ko‘rish chin dildan zavq beradi. Eng yoqimli tomoni esa — buni o‘quvchilarim ham his qilishadi.

Ular menga ko‘pincha:

“Ustoz, siz juda energiyalisiz.”
“Darsingizga kirganimdan keyin o‘zim ham energiyaga to‘lib ketaman.” deyishadi. 

Menimcha, ustoz uchun chiroyliroq feedback bo‘lmasa kerak…)

Ustoz faqat bilim berib qolmasligi kerak, deb o‘ylayman. U o‘quvchisiga ishonch, motivatsiya va harakat qilish uchun energiya ham bera olishi kerak. Men esa shu kasb orqali o‘zim ham juda ko‘p narsani o‘rgandim. Har bir o‘quvchim menga nimanidir o‘rgatdi. Har bir dars meni yana izlanishga majbur qildi.

Har bir natija esa “ha, men to‘g‘ri yo‘ldaman” degan ishonchni berdi. U menga sevimli kasbimni topishimga sabab bo‘lgan 

– Va menimcha, inson uchun o‘z ishini sevib qilishdan katta ne’matlardan. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6663', N'uz', Id, NULL, N'@DinaraDeutsch', 6663, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemis tili menga bergan yana bir imkoniyatlardan biri — sevimli ustozim bo‘lishimga sabab bo‘lgani ‍', Description = N'Nemis tili menga bergan yana bir imkoniyatlardan biri — sevimli ustozim bo‘lishimga sabab bo‘lgani ‍ 

Men shunchaki nemis tilini o‘rganib, keyin sertifikat olib qo‘ymadim. Bu til meni o‘zim juda yaxshi ko‘radigan kasb — ustozlikka olib keldi.

Bugun dars berish men uchun oddiy ish emas. U meni shaxs tomonlama o’stirdi deb bemalol ayta olaman. 

O‘quvchilarim bilan ishlash, ularga nimanidir tushuntirish, biror mavzuni tushunib olganidagi ko‘zlaridagi o‘zgarishni ko‘rish chin dildan zavq beradi. Eng yoqimli tomoni esa — buni o‘quvchilarim ham his qilishadi.

Ular menga ko‘pincha:

“Ustoz, siz juda energiyalisiz.”
“Darsingizga kirganimdan keyin o‘zim ham energiyaga to‘lib ketaman.” deyishadi. 

Menimcha, ustoz uchun chiroyliroq feedback bo‘lmasa kerak…)

Ustoz faqat bilim berib qolmasligi kerak, deb o‘ylayman. U o‘quvchisiga ishonch, motivatsiya va harakat qilish uchun energiya ham bera olishi kerak. Men esa shu kasb orqali o‘zim ham juda ko‘p narsani o‘rgandim. Har bir o‘quvchim menga nimanidir o‘rgatdi. Har bir dars meni yana izlanishga majbur qildi.

Har bir natija esa “ha, men to‘g‘ri yo‘ldaman” degan ishonchni berdi. U menga sevimli kasbimni topishimga sabab bo‘lgan 

– Va menimcha, inson uchun o‘z ishini sevib qilishdan katta ne’matlardan. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6663';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6664')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kecha B1 darajadagi guruhim bilan podkast eshitdik. Keyin ular podkastdan nima tushunganlarini gapirib berishdi.', N'Kecha B1 darajadagi guruhim bilan podkast eshitdik. Keyin ular podkastdan nima tushunganlarini gapirib berishdi. 

4 minutdan oshdi, yomonmas-a?! 

Odatda A1 darajada gapirish ko’nikmasi ustida ishlashni boshlaymiz. Dastlabki lug’atlarni gapda qo’llashni o’rganamiz.

Til o‘rganishdagi haqiqiy natija — daftar to‘lib ketgani yoki grammatik qoidalarni yod olganingiz emas.

– O‘rgangan narsangizdan real hayotda foydalana boshlaganingiz 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6664', N'uz', Id, NULL, N'@DinaraDeutsch', 6664, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kecha B1 darajadagi guruhim bilan podkast eshitdik. Keyin ular podkastdan nima tushunganlarini gapirib berishdi.', Description = N'Kecha B1 darajadagi guruhim bilan podkast eshitdik. Keyin ular podkastdan nima tushunganlarini gapirib berishdi. 

4 minutdan oshdi, yomonmas-a?! 

Odatda A1 darajada gapirish ko’nikmasi ustida ishlashni boshlaymiz. Dastlabki lug’atlarni gapda qo’llashni o’rganamiz.

Til o‘rganishdagi haqiqiy natija — daftar to‘lib ketgani yoki grammatik qoidalarni yod olganingiz emas.

– O‘rgangan narsangizdan real hayotda foydalana boshlaganingiz 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6664';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6665')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Ancha avval aka-ukalar Sardor va Shoxruh birga nemis tilini boshlashgandi. Bir oy o‘tib esa A2 darajani qo‘lga kiritishdi.', N'Ancha avval aka-ukalar Sardor va Shoxruh birga nemis tilini boshlashgandi. Bir oy o‘tib esa A2 darajani qo‘lga kiritishdi. 

Ular nemis tilini noldan boshlashdi va oldilariga juda qisqa muddat ichida A2 darajaga chiqish maqsadini qo‘yishdi. Odatda A2 darajaga chiqish uchun bir necha oy kerak bo‘ladi. Lekin ular 1 oy davomida juda intensiv ishlashdi. 

Lekin bu yerda bir narsani alohida aytib qo‘yishim kerak. Bu natija “nemis tilini hamma 1 oyda A2 darajada o‘rganadi” degani emas. Har bir o‘quvchining boshlang‘ich darajasi, vaqti, intizomi va o‘zlashtirish tezligi har xil.

Sardor va Shoxruhning natijasida esa intensivlik, muntazamlik va o‘z ustida juda ko‘p ishlash bor. 

Men ustoz sifatida o‘quvchiga yo‘lni ko‘rsatishim mumkin. Lekin o‘sha yo‘ldan yurish — o‘quvchining o‘ziga bog‘liq.

Bu natija esa to‘g‘ri maqsad + kuchli intizom + ustoz va o‘quvchi hamkorligi qanday natija berishining bir misoli 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6665', N'uz', Id, NULL, N'@DinaraDeutsch', 6665, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Ancha avval aka-ukalar Sardor va Shoxruh birga nemis tilini boshlashgandi. Bir oy o‘tib esa A2 darajani qo‘lga kiritishdi.', Description = N'Ancha avval aka-ukalar Sardor va Shoxruh birga nemis tilini boshlashgandi. Bir oy o‘tib esa A2 darajani qo‘lga kiritishdi. 

Ular nemis tilini noldan boshlashdi va oldilariga juda qisqa muddat ichida A2 darajaga chiqish maqsadini qo‘yishdi. Odatda A2 darajaga chiqish uchun bir necha oy kerak bo‘ladi. Lekin ular 1 oy davomida juda intensiv ishlashdi. 

Lekin bu yerda bir narsani alohida aytib qo‘yishim kerak. Bu natija “nemis tilini hamma 1 oyda A2 darajada o‘rganadi” degani emas. Har bir o‘quvchining boshlang‘ich darajasi, vaqti, intizomi va o‘zlashtirish tezligi har xil.

Sardor va Shoxruhning natijasida esa intensivlik, muntazamlik va o‘z ustida juda ko‘p ishlash bor. 

Men ustoz sifatida o‘quvchiga yo‘lni ko‘rsatishim mumkin. Lekin o‘sha yo‘ldan yurish — o‘quvchining o‘ziga bog‘liq.

Bu natija esa to‘g‘ri maqsad + kuchli intizom + ustoz va o‘quvchi hamkorligi qanday natija berishining bir misoli 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6665';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6667')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Shaxs sifatida shu kungacha erishgan eng katta yutug’ingiz nima” deb savol berishsa nima deb javob bergan bo’lar edingiz?', N'“Shaxs sifatida shu kungacha erishgan eng katta yutug’ingiz nima” deb savol berishsa nima deb javob bergan bo’lar edingiz?

– Izohlar sizga muntazir', N'https://t.me/DinaraDeutsch/6667', N'uz', Id, NULL, N'@DinaraDeutsch', 6667, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Shaxs sifatida shu kungacha erishgan eng katta yutug’ingiz nima” deb savol berishsa nima deb javob bergan bo’lar edingiz?', Description = N'“Shaxs sifatida shu kungacha erishgan eng katta yutug’ingiz nima” deb savol berishsa nima deb javob bergan bo’lar edingiz?

– Izohlar sizga muntazir'
    WHERE Url = N'https://t.me/DinaraDeutsch/6667';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6668')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Agar mendan “ustoz sifatida eng katta natijangiz nima?” deb so‘rasangiz, balki quyidagilarni aytishim mumkin:', N'Agar mendan “ustoz sifatida eng katta natijangiz nima?” deb so‘rasangiz, balki quyidagilarni aytishim mumkin:

• 2 ta xalqaro B2 sertifikat 

• O‘quvchilarim orasida Speaking’dan 96/100 olganlar bor

• Shu vaqtgacha 1000 ga yaqin o‘quvchiga dars berganim

Bularning har biri men uchun albatta qadrli. Chunki har bir sertifikat ortida mehnat bor. Har bir natija ortida o‘rganilgan mavzular, xatolar, qayta-qayta takrorlangan so‘zlar va ko‘p soatlik tayyorgarlik bor.

Lekin vaqt o‘tgan sari bir narsani tushundim:

Ustozning haqiqiy natijasi — uning o‘zi bilgan narsalari bilan emas, o‘quvchisiga bera olgan natijasi bilan o‘lchanadi 

Shuning uchun o‘quvchim birinchi marta nemis tilida gapirganida… 
 Biror mavzuni nihoyat tushunganida… 
 Imtihondan qo‘rqib turgan bo‘lsa-yu, natijasini ko‘rib xursand bo‘lganida… 
 Yoki “Ustoz, men uddaladim!” deb yozganida — men uchun shu juda katta natija.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6668', N'uz', Id, NULL, N'@DinaraDeutsch', 6668, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Agar mendan “ustoz sifatida eng katta natijangiz nima?” deb so‘rasangiz, balki quyidagilarni aytishim mumkin:', Description = N'Agar mendan “ustoz sifatida eng katta natijangiz nima?” deb so‘rasangiz, balki quyidagilarni aytishim mumkin:

• 2 ta xalqaro B2 sertifikat 

• O‘quvchilarim orasida Speaking’dan 96/100 olganlar bor

• Shu vaqtgacha 1000 ga yaqin o‘quvchiga dars berganim

Bularning har biri men uchun albatta qadrli. Chunki har bir sertifikat ortida mehnat bor. Har bir natija ortida o‘rganilgan mavzular, xatolar, qayta-qayta takrorlangan so‘zlar va ko‘p soatlik tayyorgarlik bor.

Lekin vaqt o‘tgan sari bir narsani tushundim:

Ustozning haqiqiy natijasi — uning o‘zi bilgan narsalari bilan emas, o‘quvchisiga bera olgan natijasi bilan o‘lchanadi 

Shuning uchun o‘quvchim birinchi marta nemis tilida gapirganida… 
 Biror mavzuni nihoyat tushunganida… 
 Imtihondan qo‘rqib turgan bo‘lsa-yu, natijasini ko‘rib xursand bo‘lganida… 
 Yoki “Ustoz, men uddaladim!” deb yozganida — men uchun shu juda katta natija.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6668';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6669')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Alles Gute zum Lehrertag!', N'Alles Gute zum Lehrertag! 

Herzlichen Glückwunsch zum Lehrertag! Ich wünsche Ihnen von Herzen viel Gesundheit, Glück, Erfolg und Freude an Ihrer Arbeit.

Möge Ihre Geduld, Ihr Wissen und Ihre Mühe immer wertgeschätzt werden und mögen Sie viele erfolgreiche und dankbare Schüler haben.

Vielen Dank für Ihre wertvolle Arbeit und Ihren großen Einsatz! 

Alles Gute zum Lehrertag! 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6669', N'uz', Id, NULL, N'@DinaraDeutsch', 6669, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Alles Gute zum Lehrertag!', Description = N'Alles Gute zum Lehrertag! 

Herzlichen Glückwunsch zum Lehrertag! Ich wünsche Ihnen von Herzen viel Gesundheit, Glück, Erfolg und Freude an Ihrer Arbeit.

Möge Ihre Geduld, Ihr Wissen und Ihre Mühe immer wertgeschätzt werden und mögen Sie viele erfolgreiche und dankbare Schüler haben.

Vielen Dank für Ihre wertvolle Arbeit und Ihren großen Einsatz! 

Alles Gute zum Lehrertag! 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6669';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6670')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Diqqat, savol', N'Diqqat, savol 

– Nemis tilini boshlashda nimadan qo‘rqasiz? 

Variantlar:
1. Grammatikasi qiyin
2. So‘zlari uzun 
3. Talaffuzi
4. Gapira olmay qolishdan
5. Umuman nimadan boshlashni bilmayman
6. Boshqa sabab

— Qaysi biri?', N'https://t.me/DinaraDeutsch/6670', N'uz', Id, NULL, N'@DinaraDeutsch', 6670, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Diqqat, savol', Description = N'Diqqat, savol 

– Nemis tilini boshlashda nimadan qo‘rqasiz? 

Variantlar:
1. Grammatikasi qiyin
2. So‘zlari uzun 
3. Talaffuzi
4. Gapira olmay qolishdan
5. Umuman nimadan boshlashni bilmayman
6. Boshqa sabab

— Qaysi biri?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6670';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6614')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'SPRECHENDA SHABLONLAR O‘ZI NIMAGA KERAK?', N'SPRECHENDA SHABLONLAR O‘ZI NIMAGA KERAK? 

Nemis tilida gapirish yoki Schreiben qilayotganda ba’zida fikrimiz bor, lekin uni nemis tilida qanday boshlashni bilmay qolamiz. Shunday vaziyatlarda tayyor Redemittel va shablonlar juda qo‘l keladi.

Meiner Meinung nach … 
 Ein weiterer wichtiger Punkt ist … 
 Ich bin der Meinung, dass … 
 Zusammenfassend lässt sich sagen, dass … 

❓ Lekin shablonlarni shunchaki yodlab olishning o‘zi yetarlimi?
 ❓ Sprechen va Schreiben’da shablonlardan qanday qilib to‘g‘ri foydalanish kerak? 

— Javobingizni kommentariyada yozib qoldiring. Keyin men o‘zimning variantimni aytaman. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6614', N'uz', Id, NULL, N'@DinaraDeutsch', 6614, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'SPRECHENDA SHABLONLAR O‘ZI NIMAGA KERAK?', Description = N'SPRECHENDA SHABLONLAR O‘ZI NIMAGA KERAK? 

Nemis tilida gapirish yoki Schreiben qilayotganda ba’zida fikrimiz bor, lekin uni nemis tilida qanday boshlashni bilmay qolamiz. Shunday vaziyatlarda tayyor Redemittel va shablonlar juda qo‘l keladi.

Meiner Meinung nach … 
 Ein weiterer wichtiger Punkt ist … 
 Ich bin der Meinung, dass … 
 Zusammenfassend lässt sich sagen, dass … 

❓ Lekin shablonlarni shunchaki yodlab olishning o‘zi yetarlimi?
 ❓ Sprechen va Schreiben’da shablonlardan qanday qilib to‘g‘ri foydalanish kerak? 

— Javobingizni kommentariyada yozib qoldiring. Keyin men o‘zimning variantimni aytaman. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6614';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6615')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kuz kelganini sizlaram his qilyapsilarmi', N'Kuz kelganini sizlaram his qilyapsilarmi', N'https://t.me/DinaraDeutsch/6615', N'uz', Id, NULL, N'@DinaraDeutsch', 6615, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kuz kelganini sizlaram his qilyapsilarmi', Description = N'Kuz kelganini sizlaram his qilyapsilarmi'
    WHERE Url = N'https://t.me/DinaraDeutsch/6615';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6616')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'SPRECHEN VA SCHREIBENDA SHABLONLAR O‘ZI NIMAGA KERAK?', N'SPRECHEN VA SCHREIBENDA SHABLONLAR O‘ZI NIMAGA KERAK?

Nemis tilini o‘rganayotgan bo‘lsangiz, Sprechen yoki Schreiben qilayotganda quyidagi kabi iboralarni juda ko‘p uchratgansiz:

Meiner Meinung nach …
 Ich bin der Meinung, dass …
 Ein weiterer wichtiger Punkt ist …
 Zusammenfassend lässt sich sagen, dass …

Lekin savol: “Nega Sprechen va Schreiben’da bunday shablonlardan foydalanish kerak?”

Shablonlar fikrimizni aniq, tartibli va grammatik jihatdan to‘g‘ri ifodalashimizga yordam beradi.

Masalan:

Ich finde das gut. Es gibt viele Vorteile.
 Meiner Meinung nach bietet diese Möglichkeit viele Vorteile.

Ich habe noch einen Punkt.
 Ein weiterer wichtiger Punkt ist, dass …

Das ist meine Meinung.
 Zusammenfassend lässt sich sagen, dass …

Shablonlarning eng katta foydasi har safar gapni noldan o‘ylab o‘tirmaysiz. Siz tayyor konstruksiyaga o‘z fikringizni qo‘shasiz. 

Masalan:

Meiner Meinung nach ist …
 Meiner Meinung nach ist Homeoffice sehr praktisch.

Ein weiterer Vorteil ist, dass …
 Ein weiterer Vorteil ist, dass man Zeit spart.

Allerdings muss man berücksichtigen, dass …
 Allerdings muss man berücksichtigen, dass nicht jeder zu Hause konzentriert arbeiten kann.

Shuning uchun yangi shablonlarni o‘rganganingizda, ularni o‘z misollaringiz bilan ishlatib ko‘ring.

— Post davomida yozgan shablonlarimni oʻzbek tiliga tarjima qiling. Kommentariyada yozib qoldiring. Balki boshqalarga ham foydasi tegib qolar 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6616', N'uz', Id, NULL, N'@DinaraDeutsch', 6616, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'SPRECHEN VA SCHREIBENDA SHABLONLAR O‘ZI NIMAGA KERAK?', Description = N'SPRECHEN VA SCHREIBENDA SHABLONLAR O‘ZI NIMAGA KERAK?

Nemis tilini o‘rganayotgan bo‘lsangiz, Sprechen yoki Schreiben qilayotganda quyidagi kabi iboralarni juda ko‘p uchratgansiz:

Meiner Meinung nach …
 Ich bin der Meinung, dass …
 Ein weiterer wichtiger Punkt ist …
 Zusammenfassend lässt sich sagen, dass …

Lekin savol: “Nega Sprechen va Schreiben’da bunday shablonlardan foydalanish kerak?”

Shablonlar fikrimizni aniq, tartibli va grammatik jihatdan to‘g‘ri ifodalashimizga yordam beradi.

Masalan:

Ich finde das gut. Es gibt viele Vorteile.
 Meiner Meinung nach bietet diese Möglichkeit viele Vorteile.

Ich habe noch einen Punkt.
 Ein weiterer wichtiger Punkt ist, dass …

Das ist meine Meinung.
 Zusammenfassend lässt sich sagen, dass …

Shablonlarning eng katta foydasi har safar gapni noldan o‘ylab o‘tirmaysiz. Siz tayyor konstruksiyaga o‘z fikringizni qo‘shasiz. 

Masalan:

Meiner Meinung nach ist …
 Meiner Meinung nach ist Homeoffice sehr praktisch.

Ein weiterer Vorteil ist, dass …
 Ein weiterer Vorteil ist, dass man Zeit spart.

Allerdings muss man berücksichtigen, dass …
 Allerdings muss man berücksichtigen, dass nicht jeder zu Hause konzentriert arbeiten kann.

Shuning uchun yangi shablonlarni o‘rganganingizda, ularni o‘z misollaringiz bilan ishlatib ko‘ring.

— Post davomida yozgan shablonlarimni oʻzbek tiliga tarjima qiling. Kommentariyada yozib qoldiring. Balki boshqalarga ham foydasi tegib qolar 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6616';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6617')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Lekin yana bitta muhim jarayonni hisobga olish kerak', N'Lekin yana bitta muhim jarayonni hisobga olish kerak 

Sprechen va Schreiben uchun shablonlarni shunchaki yodlab olish yetarli emas. Ularni qaysi vaziyatda va qanday davom ettirishni ham bilish kerak.

Masalan:

Meiner Meinung nach …
— deb yodlab olib, keyin gapni qanday davom ettirishni bilmaslik.

Meiner Meinung nach ist diese Möglichkeit sehr praktisch.
— Menimcha, bu imkoniyat juda qulay.

Ein weiterer Vorteil ist …
— deb to‘xtab qolish.

Ein weiterer Vorteil ist, dass man viel Zeit sparen kann.
— Yana bir afzalligi shundaki, ko‘p vaqtni tejash mumkin.

Sprechen’da:

Meiner Meinung nach …
 Meiner Meinung nach ist Sport sehr wichtig.

Schreiben’da:

Allerdings muss man berücksichtigen, dass …
 Allerdings muss man berücksichtigen, dass nicht jeder genug Zeit dafür hat.

Shuning uchun shablonlarni o‘rganganingizda, ularni tayyor gap sifatida emas, balki fikringizni ifodalashga yordam beradigan qolip sifatida o‘rganing.

Masalan:

Meiner Meinung nach …
 Ein weiterer Vorteil ist, dass …
 Allerdings muss man berücksichtigen, dass …
 Zusammenfassend lässt sich sagen, dass …

Shablon + o‘z fikringiz = kuchliroq Sprechen va Schreiben 

— Hammasi tushunarli bo‘ldimi?
Agar tushunarli bo‘lgan bo‘lsa, " " bosib qo‘ying. Tushunarsiz joyi bo‘lsa, bemalol kommentariyada so‘rashingiz mumkin.

— 22:00da esa sizlarga Sprechen va Schreiben’da eng ko‘p ishlatiladigan shablonlar ro‘yxatini jo‘nataman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6617', N'uz', Id, NULL, N'@DinaraDeutsch', 6617, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Lekin yana bitta muhim jarayonni hisobga olish kerak', Description = N'Lekin yana bitta muhim jarayonni hisobga olish kerak 

Sprechen va Schreiben uchun shablonlarni shunchaki yodlab olish yetarli emas. Ularni qaysi vaziyatda va qanday davom ettirishni ham bilish kerak.

Masalan:

Meiner Meinung nach …
— deb yodlab olib, keyin gapni qanday davom ettirishni bilmaslik.

Meiner Meinung nach ist diese Möglichkeit sehr praktisch.
— Menimcha, bu imkoniyat juda qulay.

Ein weiterer Vorteil ist …
— deb to‘xtab qolish.

Ein weiterer Vorteil ist, dass man viel Zeit sparen kann.
— Yana bir afzalligi shundaki, ko‘p vaqtni tejash mumkin.

Sprechen’da:

Meiner Meinung nach …
 Meiner Meinung nach ist Sport sehr wichtig.

Schreiben’da:

Allerdings muss man berücksichtigen, dass …
 Allerdings muss man berücksichtigen, dass nicht jeder genug Zeit dafür hat.

Shuning uchun shablonlarni o‘rganganingizda, ularni tayyor gap sifatida emas, balki fikringizni ifodalashga yordam beradigan qolip sifatida o‘rganing.

Masalan:

Meiner Meinung nach …
 Ein weiterer Vorteil ist, dass …
 Allerdings muss man berücksichtigen, dass …
 Zusammenfassend lässt sich sagen, dass …

Shablon + o‘z fikringiz = kuchliroq Sprechen va Schreiben 

— Hammasi tushunarli bo‘ldimi?
Agar tushunarli bo‘lgan bo‘lsa, " " bosib qo‘ying. Tushunarsiz joyi bo‘lsa, bemalol kommentariyada so‘rashingiz mumkin.

— 22:00da esa sizlarga Sprechen va Schreiben’da eng ko‘p ishlatiladigan shablonlar ro‘yxatini jo‘nataman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6617';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6625')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 DARAJADA LUG‘AT YODLASH O‘ZI NIMAGA KERAK?', N'A1 DARAJADA LUG‘AT YODLASH O‘ZI NIMAGA KERAK?

Nemis tilini o‘rganishni boshlaganingizda juda ko‘p yangi so‘zlarga duch kelasiz:

der Tisch — stol
 die Schule — maktab
 das Buch — kitob
 lernen — o‘rganmoq
 sprechen — gapirmoq

Lekin A1 darajadan lug‘at ko‘p yodlash muhimmi ?
 Yangi so‘zlarni qanday tartibda va qanday usulda yodlash kerak?

— Javobingizni kommentariyada yozib qoldiring. Keyin men o‘zimning variantimni aytaman. 
 @DinaraDeutsch', N'https://t.me/DinaraDeutsch/6625', N'uz', Id, NULL, N'@DinaraDeutsch', 6625, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 DARAJADA LUG‘AT YODLASH O‘ZI NIMAGA KERAK?', Description = N'A1 DARAJADA LUG‘AT YODLASH O‘ZI NIMAGA KERAK?

Nemis tilini o‘rganishni boshlaganingizda juda ko‘p yangi so‘zlarga duch kelasiz:

der Tisch — stol
 die Schule — maktab
 das Buch — kitob
 lernen — o‘rganmoq
 sprechen — gapirmoq

Lekin A1 darajadan lug‘at ko‘p yodlash muhimmi ?
 Yangi so‘zlarni qanday tartibda va qanday usulda yodlash kerak?

— Javobingizni kommentariyada yozib qoldiring. Keyin men o‘zimning variantimni aytaman. 
 @DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6625';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6626')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'SO‘Z YODLASH BO‘YICHA FOYDALI VIDEO', N'SO‘Z YODLASH BO‘YICHA FOYDALI VIDEO 

Nemis tilida yangi so‘zlarni tezroq va samaraliroq yodlash uchun kichik video tayyorlagandim 

— Videoni koʻrish uchun: https://t.me/DinaraStudyBlog/165', N'https://t.me/DinaraDeutsch/6626', N'uz', Id, NULL, N'@DinaraDeutsch', 6626, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'SO‘Z YODLASH BO‘YICHA FOYDALI VIDEO', Description = N'SO‘Z YODLASH BO‘YICHA FOYDALI VIDEO 

Nemis tilida yangi so‘zlarni tezroq va samaraliroq yodlash uchun kichik video tayyorlagandim 

— Videoni koʻrish uchun: https://t.me/DinaraStudyBlog/165'
    WHERE Url = N'https://t.me/DinaraDeutsch/6626';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6627')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 DARAJADA LUG‘ATNI KO‘P YODLASH MUHIMMI?', N'A1 DARAJADA LUG‘ATNI KO‘P YODLASH MUHIMMI? 

Ha, A1 darajada lug‘at bilan ko‘p ishlash juda muhim. Chunki grammatikani bilsangiz ham, yetarli so‘z boyligingiz bo‘lmasa, nemis tilida gap tuzish va fikringizni ifodalash qiyin bo‘ladi.

Masalan, siz:
 Ich bin … 
 Ich habe … 
 Ich möchte … 
kabi grammatik konstruksiyalarni bilishingiz mumkin. Lekin kerakli so‘zlarni bilmasangiz, gapni davom ettira olmaysiz.

Shuning uchun A1 darajada grammatika + lug‘at birga rivojlanishi kerak. 

Lekin yangi so‘zlarni qanday tartibda yodlash kerak? 

So‘zlarni shunchaki aralashtirib yodlashdan ko‘ra, mavzular bo‘yicha o‘rganish ancha qulay:

Uy: das Zimmer, die Küche, der Tisch...
 Oila: die Mutter, der Vater, die Schwester...
 Oziq-ovqat: das Brot, der Apfel, die Milch...
 O‘qish: lernen, lesen, schreiben...

Yana bir muhim qoida:
 Tisch — stol 
 der Tisch — stol 

lernen — o‘rganmoq 
 Ich lerne Deutsch. — Men nemis tilini o‘rganyapman. 

Ya’ni so‘zni alohida emas, artikli yoki gap ichidagi qo‘llanilishi bilan yodlashga harakat qiling.

— Siz yangi so‘zlarni qanday yodlaysiz?

— Kommentariyada o‘z usulingizni yozib qoldiring. Balki boshqalarga ham foydasi tegib qolar. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6627', N'uz', Id, NULL, N'@DinaraDeutsch', 6627, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 DARAJADA LUG‘ATNI KO‘P YODLASH MUHIMMI?', Description = N'A1 DARAJADA LUG‘ATNI KO‘P YODLASH MUHIMMI? 

Ha, A1 darajada lug‘at bilan ko‘p ishlash juda muhim. Chunki grammatikani bilsangiz ham, yetarli so‘z boyligingiz bo‘lmasa, nemis tilida gap tuzish va fikringizni ifodalash qiyin bo‘ladi.

Masalan, siz:
 Ich bin … 
 Ich habe … 
 Ich möchte … 
kabi grammatik konstruksiyalarni bilishingiz mumkin. Lekin kerakli so‘zlarni bilmasangiz, gapni davom ettira olmaysiz.

Shuning uchun A1 darajada grammatika + lug‘at birga rivojlanishi kerak. 

Lekin yangi so‘zlarni qanday tartibda yodlash kerak? 

So‘zlarni shunchaki aralashtirib yodlashdan ko‘ra, mavzular bo‘yicha o‘rganish ancha qulay:

Uy: das Zimmer, die Küche, der Tisch...
 Oila: die Mutter, der Vater, die Schwester...
 Oziq-ovqat: das Brot, der Apfel, die Milch...
 O‘qish: lernen, lesen, schreiben...

Yana bir muhim qoida:
 Tisch — stol 
 der Tisch — stol 

lernen — o‘rganmoq 
 Ich lerne Deutsch. — Men nemis tilini o‘rganyapman. 

Ya’ni so‘zni alohida emas, artikli yoki gap ichidagi qo‘llanilishi bilan yodlashga harakat qiling.

— Siz yangi so‘zlarni qanday yodlaysiz?

— Kommentariyada o‘z usulingizni yozib qoldiring. Balki boshqalarga ham foydasi tegib qolar. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6627';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6628')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 UCHUN LUG‘ATNI QANDAY YODLASH KERAK?', N'A1 UCHUN LUG‘ATNI QANDAY YODLASH KERAK? 

A1 darajada eng katta xatolardan biri — so‘zlarni faqat tarjimasi bilan yodlab olish. 

Nemis tilida yangi so‘zni o‘rganganingizda:

Otlarni — artikli bilan 
→ der Tisch, die Lampe, das Buch

Fe’llarni — gap ichida 
→ lernen → Ich lerne Deutsch.

Sifatlarni — misol bilan 
→ wichtig → Deutsch ist wichtig.
shaklida o‘rganishga odatlaning.

Shunda so‘zlarni nafaqat eslab qolasiz, balki gapirish va yozishda ham ishlata olasiz. 

— Bugun soat 22:00 da sizlarga A1 daraja uchun kerakli lug‘atlar jamlangan faylni jo‘nataman. 

— Saqlab qo‘ying va yangi so‘zlarni artikli + tarjimasi + misoli bilan o‘rganishni boshlang. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6628', N'uz', Id, NULL, N'@DinaraDeutsch', 6628, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 UCHUN LUG‘ATNI QANDAY YODLASH KERAK?', Description = N'A1 UCHUN LUG‘ATNI QANDAY YODLASH KERAK? 

A1 darajada eng katta xatolardan biri — so‘zlarni faqat tarjimasi bilan yodlab olish. 

Nemis tilida yangi so‘zni o‘rganganingizda:

Otlarni — artikli bilan 
→ der Tisch, die Lampe, das Buch

Fe’llarni — gap ichida 
→ lernen → Ich lerne Deutsch.

Sifatlarni — misol bilan 
→ wichtig → Deutsch ist wichtig.
shaklida o‘rganishga odatlaning.

Shunda so‘zlarni nafaqat eslab qolasiz, balki gapirish va yozishda ham ishlata olasiz. 

— Bugun soat 22:00 da sizlarga A1 daraja uchun kerakli lug‘atlar jamlangan faylni jo‘nataman. 

— Saqlab qo‘ying va yangi so‘zlarni artikli + tarjimasi + misoli bilan o‘rganishni boshlang. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6628';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6630')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Rahmat kattakon yana bir bor lugʻat juda chiroyli koʻrinishga ega yorqin yodlashga juda qulay.', N'Rahmat kattakon yana bir bor lugʻat juda chiroyli koʻrinishga ega yorqin yodlashga juda qulay.
Yana zoʻr tomoni tartibli ekan', N'https://t.me/DinaraDeutsch/6630', N'uz', Id, NULL, N'@DinaraDeutsch', 6630, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Rahmat kattakon yana bir bor lugʻat juda chiroyli koʻrinishga ega yorqin yodlashga juda qulay.', Description = N'Rahmat kattakon yana bir bor lugʻat juda chiroyli koʻrinishga ega yorqin yodlashga juda qulay.
Yana zoʻr tomoni tartibli ekan'
    WHERE Url = N'https://t.me/DinaraDeutsch/6630';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6631')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'O‘zim o‘ylab topgan tizimim', N'O‘zim o‘ylab topgan tizimim 

Har bir uyga vazifadan keyin o‘quvchilar grammatikani, muhim so‘zlarni va ularning ishlatilishini ustozga qayta gapirib berishlari kerak.

Ya’ni, shunchaki “uyga vazifani bajardim” yetarli emas. O‘quvchi mavzuni haqiqatan ham o‘rganganini o‘z gaplari va misollari bilan isbotlashi kerak 

Necha soatlik ovozli xabarlarni eshitib bo‘lganimizdan keyin ham hali shuncha uyga vazifa turibdi, albatta tekshirish kerak 

Bu xabarning ichida ham har bir o‘quvchidan kamida 30 daqiqalik ovozli xabarlar kelgan ishonavering.

— Lekin natija uchun aynan shu tizim kerak. Chunki o‘rganish faqat tushunish emas, o‘rgangan narsangni mustaqil ishlata olish . 

Hammaga hayrli tun 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6631', N'uz', Id, NULL, N'@DinaraDeutsch', 6631, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'O‘zim o‘ylab topgan tizimim', Description = N'O‘zim o‘ylab topgan tizimim 

Har bir uyga vazifadan keyin o‘quvchilar grammatikani, muhim so‘zlarni va ularning ishlatilishini ustozga qayta gapirib berishlari kerak.

Ya’ni, shunchaki “uyga vazifani bajardim” yetarli emas. O‘quvchi mavzuni haqiqatan ham o‘rganganini o‘z gaplari va misollari bilan isbotlashi kerak 

Necha soatlik ovozli xabarlarni eshitib bo‘lganimizdan keyin ham hali shuncha uyga vazifa turibdi, albatta tekshirish kerak 

Bu xabarning ichida ham har bir o‘quvchidan kamida 30 daqiqalik ovozli xabarlar kelgan ishonavering.

— Lekin natija uchun aynan shu tizim kerak. Chunki o‘rganish faqat tushunish emas, o‘rgangan narsangni mustaqil ishlata olish . 

Hammaga hayrli tun 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6631';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6633')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A2 darajaga lugʻat joʻnatiymi?', N'— A2 darajaga lugʻat joʻnatiymi?', N'https://t.me/DinaraDeutsch/6633', N'uz', Id, NULL, N'@DinaraDeutsch', 6633, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A2 darajaga lugʻat joʻnatiymi?', Description = N'— A2 darajaga lugʻat joʻnatiymi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6633';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6587')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Presentatsiyada bir dunyo shablon, bir dunyo mativatsiya yozgan ekanman oʻziyam', N'— Presentatsiyada bir dunyo shablon, bir dunyo mativatsiya yozgan ekanman oʻziyam 

Rasmdagi Sprechen paytida o‘ylab olish yoki fikrni qanday ifodalashni bilmay qolganda ishlatiladigan shablonlar: 

Lass mich kurz überlegen. 
→ Bir oz o‘ylab olay.
→ Biroz o‘ylab ko‘ray.

Wie soll ich das sagen? 
→ Buni qanday desam ekan?

Wie kann ich das ausdrücken? 
→ Buni qanday ifodalashim mumkin?

Es ist so etwas wie … 
→ Bu taxminan … ga o‘xshash narsa.
→ Bu shunga o‘xshash…

Du weißt schon. 
→ Bilasan-ku.
→ Tushunyapsan-ku.

Ich meine … 
→ Ya’ni… 
→ Demoqchimanki… 
→ Men shuni nazarda tutyapman…

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6587', N'uz', Id, NULL, N'@DinaraDeutsch', 6587, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Presentatsiyada bir dunyo shablon, bir dunyo mativatsiya yozgan ekanman oʻziyam', Description = N'— Presentatsiyada bir dunyo shablon, bir dunyo mativatsiya yozgan ekanman oʻziyam 

Rasmdagi Sprechen paytida o‘ylab olish yoki fikrni qanday ifodalashni bilmay qolganda ishlatiladigan shablonlar: 

Lass mich kurz überlegen. 
→ Bir oz o‘ylab olay.
→ Biroz o‘ylab ko‘ray.

Wie soll ich das sagen? 
→ Buni qanday desam ekan?

Wie kann ich das ausdrücken? 
→ Buni qanday ifodalashim mumkin?

Es ist so etwas wie … 
→ Bu taxminan … ga o‘xshash narsa.
→ Bu shunga o‘xshash…

Du weißt schon. 
→ Bilasan-ku.
→ Tushunyapsan-ku.

Ich meine … 
→ Ya’ni… 
→ Demoqchimanki… 
→ Men shuni nazarda tutyapman…

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6587';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6594')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'SICH OLMOSHI O‘ZI NIMAGA KERAK?', N'SICH OLMOSHI O‘ZI NIMAGA KERAK? 

Nemis tilida sichni juda ko‘p ko‘ramiz:

sich freuen
 sich interessieren
 sich erinnern
 sich treffen
 sich vorstellen

— Lekin sich o‘zi nimaga kerak? Javobingizni kommentariyada yozib qoldiring . Keyin men o‘zimning variantimni aytaman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6594', N'uz', Id, NULL, N'@DinaraDeutsch', 6594, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'SICH OLMOSHI O‘ZI NIMAGA KERAK?', Description = N'SICH OLMOSHI O‘ZI NIMAGA KERAK? 

Nemis tilida sichni juda ko‘p ko‘ramiz:

sich freuen
 sich interessieren
 sich erinnern
 sich treffen
 sich vorstellen

— Lekin sich o‘zi nimaga kerak? Javobingizni kommentariyada yozib qoldiring . Keyin men o‘zimning variantimni aytaman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6594';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6595')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'SICH OLMOSHI O‘ZI NIMAGA KERAK?', N'SICH OLMOSHI O‘ZI NIMAGA KERAK? 

Nemis tilini o‘rganayotgan bo‘lsangiz, sich so‘zini juda ko‘p uchratgansiz:

sich freuen
 sich erinnern
 sich interessieren
 sich treffen
 sich vorstellen

❓ Lekin savol: “Nega bu yerda sich kerak?”

❗️ Sich — o‘zlik olmoshi (Reflexivpronomen). Ya’ni ish-harakatning o‘zimizga yoki boshqa shaxsning o‘ziga qaytishini bildiradi.

Masalan:

️ Ich wasche mich.
— Men yuvinyapman.
(Ya’ni o‘zimni yuvyapman.)

️ Du wäschst dich.
— Sen yuvinyapsan.

️ Er wäscht sich.
— U yuvinyapti.

— Siz SICH olmoshi bilan keladigan qancha fe’lni bilasiz? Kommentariyada bilgan fe’llaringizni yozib qoldiring 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6595', N'uz', Id, NULL, N'@DinaraDeutsch', 6595, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'SICH OLMOSHI O‘ZI NIMAGA KERAK?', Description = N'SICH OLMOSHI O‘ZI NIMAGA KERAK? 

Nemis tilini o‘rganayotgan bo‘lsangiz, sich so‘zini juda ko‘p uchratgansiz:

sich freuen
 sich erinnern
 sich interessieren
 sich treffen
 sich vorstellen

❓ Lekin savol: “Nega bu yerda sich kerak?”

❗️ Sich — o‘zlik olmoshi (Reflexivpronomen). Ya’ni ish-harakatning o‘zimizga yoki boshqa shaxsning o‘ziga qaytishini bildiradi.

Masalan:

️ Ich wasche mich.
— Men yuvinyapman.
(Ya’ni o‘zimni yuvyapman.)

️ Du wäschst dich.
— Sen yuvinyapsan.

️ Er wäscht sich.
— U yuvinyapti.

— Siz SICH olmoshi bilan keladigan qancha fe’lni bilasiz? Kommentariyada bilgan fe’llaringizni yozib qoldiring 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6595';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6596')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Lekin yana bitta muhim jarayonni hisobga olish kerak', N'Lekin yana bitta muhim jarayonni hisobga olish kerak 

Ba’zi nemis fe’llari shunchaki sich bilan birga ishlatiladi va ularni oddiy fe’l sifatida yodlab bo‘lmaydi:

❌ Ich interessiere für Deutsch.
 ✅ Ich interessiere mich für Deutsch.
— Men nemis tiliga qiziqaman.

❌ Ich freue auf den Urlaub.
 ✅ Ich freue mich auf den Urlaub.
— Men ta’tilni intiqlik bilan kutyapman.

Shuning uchun sich ko‘rganingizda uni alohida so‘z sifatida emas, fe’lning bir qismi sifatida ham qabul qilish kerak.

Masalan:
 sich interessieren für + Akk.
 sich freuen auf + Akk.
 sich erinnern an + Akk.

Demak, lug‘atda:

❌ interessieren — qiziqmoq deb emas,
 ✅ sich interessieren für — ...ga qiziqmoq deb yodlasangiz, gap tuzish ancha osonlashadi.

— Hammasi tushunarli bo‘ldimi?
Agar tushunarli bo‘lgan bo‘lsa, " " bosib qo‘ying. Tushunarsiz joyi bo‘lsa, bemalol kommentariyada so‘rashingiz mumkin. 

— 22:00da esa sizlarga A1dan B2gacha eng koʻp ishlatiladigan sich olmoshli fe''llar roʻyxatini joʻnataman. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6596', N'uz', Id, NULL, N'@DinaraDeutsch', 6596, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Lekin yana bitta muhim jarayonni hisobga olish kerak', Description = N'Lekin yana bitta muhim jarayonni hisobga olish kerak 

Ba’zi nemis fe’llari shunchaki sich bilan birga ishlatiladi va ularni oddiy fe’l sifatida yodlab bo‘lmaydi:

❌ Ich interessiere für Deutsch.
 ✅ Ich interessiere mich für Deutsch.
— Men nemis tiliga qiziqaman.

❌ Ich freue auf den Urlaub.
 ✅ Ich freue mich auf den Urlaub.
— Men ta’tilni intiqlik bilan kutyapman.

Shuning uchun sich ko‘rganingizda uni alohida so‘z sifatida emas, fe’lning bir qismi sifatida ham qabul qilish kerak.

Masalan:
 sich interessieren für + Akk.
 sich freuen auf + Akk.
 sich erinnern an + Akk.

Demak, lug‘atda:

❌ interessieren — qiziqmoq deb emas,
 ✅ sich interessieren für — ...ga qiziqmoq deb yodlasangiz, gap tuzish ancha osonlashadi.

— Hammasi tushunarli bo‘ldimi?
Agar tushunarli bo‘lgan bo‘lsa, " " bosib qo‘ying. Tushunarsiz joyi bo‘lsa, bemalol kommentariyada so‘rashingiz mumkin. 

— 22:00da esa sizlarga A1dan B2gacha eng koʻp ishlatiladigan sich olmoshli fe''llar roʻyxatini joʻnataman. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6596';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6598')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'AJRALADIGAN OLD QO‘SHIMCHALI FE’LLAR O‘ZI NIMAGA KERAK?', N'AJRALADIGAN OLD QO‘SHIMCHALI FE’LLAR O‘ZI NIMAGA KERAK? 

Nemis tilida ajraladigan old qo‘shimchali fe’llarni juda ko‘p ko‘ramiz:

aufstehen
 einkaufen
 anrufen
 mitkommen
 aufmachen

Lekin nega bu fe’llarda old qo‘shimcha alohida ajralib ketadi? 

Qachon ajraladi va gapda qanday ishlatiladi?

— Javobingizni kommentariyada yozib qoldiring. Keyin men o‘zimning variantimni aytaman. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6598', N'uz', Id, NULL, N'@DinaraDeutsch', 6598, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'AJRALADIGAN OLD QO‘SHIMCHALI FE’LLAR O‘ZI NIMAGA KERAK?', Description = N'AJRALADIGAN OLD QO‘SHIMCHALI FE’LLAR O‘ZI NIMAGA KERAK? 

Nemis tilida ajraladigan old qo‘shimchali fe’llarni juda ko‘p ko‘ramiz:

aufstehen
 einkaufen
 anrufen
 mitkommen
 aufmachen

Lekin nega bu fe’llarda old qo‘shimcha alohida ajralib ketadi? 

Qachon ajraladi va gapda qanday ishlatiladi?

— Javobingizni kommentariyada yozib qoldiring. Keyin men o‘zimning variantimni aytaman. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6598';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6600')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'AJRALADIGAN OLD QO‘SHIMCHALAR O‘ZI NIMAGA KERAK?', N'AJRALADIGAN OLD QO‘SHIMCHALAR O‘ZI NIMAGA KERAK? 

Nemis tilini o‘rganayotgan bo‘lsangiz, auf-, an-, ein-, mit-, aus- kabi old qo‘shimchalarni juda ko‘p uchratgansiz:

aufstehen
 anrufen
 einkaufen
 mitkommen
 ausgehen

❓ Lekin savol: “Nega bu fe’llarga old qo‘shimcha kerak?”

❗️ Old qo‘shimcha fe’lga qo‘shilib, uning ma’nosini o‘zgartiradi yoki unga yangi ma’no beradi.

Masalan:

stehen — turmoq
aufstehen — o‘rnidan turmoq

rufen — chaqirmoq
anrufen — qo‘ng‘iroq qilmoq

kaufen — sotib olmoq
einkaufen — xarid qilmoq

gehen — bormoq
ausgehen — tashqariga chiqmoq

Ya’ni:

auf + stehen = aufstehen
 an + rufen = anrufen
 ein + kaufen = einkaufen

Lekin yana bitta muhim jihati bor 

Bu old qo‘shimchalar ajraladigan bo‘lsa, oddiy gapda fe’ldan ajralib, gapning oxiriga o‘tadi:

️ Ich stehe jeden Morgen um 7 Uhr auf.
— Men har kuni ertalab soat 7 da turaman.

️ Ich rufe meine Mutter an.
— Men onamga qo‘ng‘iroq qilaman.
 ️ Wir kaufen heute ein.
— Biz bugun xarid qilamiz.

— Siz ajraladigan old qo‘shimchali qancha feʼlni bilasiz? Kommentariyada bilgan fe’llaringizni yozib qoldiring 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6600', N'uz', Id, NULL, N'@DinaraDeutsch', 6600, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'AJRALADIGAN OLD QO‘SHIMCHALAR O‘ZI NIMAGA KERAK?', Description = N'AJRALADIGAN OLD QO‘SHIMCHALAR O‘ZI NIMAGA KERAK? 

Nemis tilini o‘rganayotgan bo‘lsangiz, auf-, an-, ein-, mit-, aus- kabi old qo‘shimchalarni juda ko‘p uchratgansiz:

aufstehen
 anrufen
 einkaufen
 mitkommen
 ausgehen

❓ Lekin savol: “Nega bu fe’llarga old qo‘shimcha kerak?”

❗️ Old qo‘shimcha fe’lga qo‘shilib, uning ma’nosini o‘zgartiradi yoki unga yangi ma’no beradi.

Masalan:

stehen — turmoq
aufstehen — o‘rnidan turmoq

rufen — chaqirmoq
anrufen — qo‘ng‘iroq qilmoq

kaufen — sotib olmoq
einkaufen — xarid qilmoq

gehen — bormoq
ausgehen — tashqariga chiqmoq

Ya’ni:

auf + stehen = aufstehen
 an + rufen = anrufen
 ein + kaufen = einkaufen

Lekin yana bitta muhim jihati bor 

Bu old qo‘shimchalar ajraladigan bo‘lsa, oddiy gapda fe’ldan ajralib, gapning oxiriga o‘tadi:

️ Ich stehe jeden Morgen um 7 Uhr auf.
— Men har kuni ertalab soat 7 da turaman.

️ Ich rufe meine Mutter an.
— Men onamga qo‘ng‘iroq qilaman.
 ️ Wir kaufen heute ein.
— Biz bugun xarid qilamiz.

— Siz ajraladigan old qo‘shimchali qancha feʼlni bilasiz? Kommentariyada bilgan fe’llaringizni yozib qoldiring 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6600';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6601')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Lekin yana bitta muhim jarayonni hisobga olish kerak', N'Lekin yana bitta muhim jarayonni hisobga olish kerak 

Ajraladigan old qo‘shimchali fe’llar modal fe’llar bilan kelganda, old qo‘shimcha alohida ajralmaydi. Ular gap oxirida butun fe’l holida keladi.

Masalan:

❌ Ich muss jeden Morgen auf.
 ✅ Ich muss jeden Morgen aufstehen.
— Men har kuni ertalab turishim kerak.

❌ Ich kann meine Mutter an.
 ✅ Ich kann meine Mutter anrufen.
— Men onamga qo‘ng‘iroq qila olaman.

❌ Wir wollen heute ein.
 ✅ Wir wollen heute einkaufen.
— Biz bugun xarid qilmoqchimiz.

Oddiy gapda:
Ich stehe um 7 Uhr auf.
— Men soat 7 da turaman.

Modal fe’l bilan:
Ich muss um 7 Uhr aufstehen.
— Men soat 7 da turishim kerak.

Shuning uchun modal fe’lni ko‘rganingizda, ajraladigan fe’lning old qo‘shimchasini alohida ajratib yubormang. Fe’l infinitiv shaklida gap oxirida qoladi.

Masalan:

aufstehen → muss aufstehen
 anrufen → kann anrufen
 einkaufen → will einkaufen
 mitkommen → darf mitkommen

— Hammasi tushunarli bo‘ldimi?
Agar tushunarli bo‘lgan bo‘lsa, " " bosib qo‘ying. Tushunarsiz joyi bo‘lsa, bemalol kommentariyada so‘rashingiz mumkin.

— 22:00da esa sizlarga eng ko‘p ishlatiladigan ajraladigan old qo‘shimchali fe’llar ro‘yxatini jo‘nataman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6601', N'uz', Id, NULL, N'@DinaraDeutsch', 6601, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Lekin yana bitta muhim jarayonni hisobga olish kerak', Description = N'Lekin yana bitta muhim jarayonni hisobga olish kerak 

Ajraladigan old qo‘shimchali fe’llar modal fe’llar bilan kelganda, old qo‘shimcha alohida ajralmaydi. Ular gap oxirida butun fe’l holida keladi.

Masalan:

❌ Ich muss jeden Morgen auf.
 ✅ Ich muss jeden Morgen aufstehen.
— Men har kuni ertalab turishim kerak.

❌ Ich kann meine Mutter an.
 ✅ Ich kann meine Mutter anrufen.
— Men onamga qo‘ng‘iroq qila olaman.

❌ Wir wollen heute ein.
 ✅ Wir wollen heute einkaufen.
— Biz bugun xarid qilmoqchimiz.

Oddiy gapda:
Ich stehe um 7 Uhr auf.
— Men soat 7 da turaman.

Modal fe’l bilan:
Ich muss um 7 Uhr aufstehen.
— Men soat 7 da turishim kerak.

Shuning uchun modal fe’lni ko‘rganingizda, ajraladigan fe’lning old qo‘shimchasini alohida ajratib yubormang. Fe’l infinitiv shaklida gap oxirida qoladi.

Masalan:

aufstehen → muss aufstehen
 anrufen → kann anrufen
 einkaufen → will einkaufen
 mitkommen → darf mitkommen

— Hammasi tushunarli bo‘ldimi?
Agar tushunarli bo‘lgan bo‘lsa, " " bosib qo‘ying. Tushunarsiz joyi bo‘lsa, bemalol kommentariyada so‘rashingiz mumkin.

— 22:00da esa sizlarga eng ko‘p ishlatiladigan ajraladigan old qo‘shimchali fe’llar ro‘yxatini jo‘nataman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6601';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6603')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 guruhda 20ta oʻquvchi dars olyapti ekan, bugun sanab chiqsam', N'A1 guruhda 20ta oʻquvchi dars olyapti ekan, bugun sanab chiqsam 

— Eng qizigʻi hammasi individual', N'https://t.me/DinaraDeutsch/6603', N'uz', Id, NULL, N'@DinaraDeutsch', 6603, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 guruhda 20ta oʻquvchi dars olyapti ekan, bugun sanab chiqsam', Description = N'A1 guruhda 20ta oʻquvchi dars olyapti ekan, bugun sanab chiqsam 

— Eng qizigʻi hammasi individual'
    WHERE Url = N'https://t.me/DinaraDeutsch/6603';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6606')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'kurslarga', N', , kurslarga 

qoʻshgan yangiligimiz haqida bilishni istasangiz 

Marhamat, eshitish uchun bosing!', N'https://t.me/DinaraDeutsch/6606', N'uz', Id, NULL, N'@DinaraDeutsch', 6606, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'kurslarga', Description = N', , kurslarga 

qoʻshgan yangiligimiz haqida bilishni istasangiz 

Marhamat, eshitish uchun bosing!'
    WHERE Url = N'https://t.me/DinaraDeutsch/6606';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6607')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'kurslarga qoʻshgan yangiligimiz haqida bilishni istasangiz Marhamat, eshitish uchun bosing!', N', , kurslarga qoʻshgan yangiligimiz haqida bilishni istasangiz Marhamat, eshitish uchun bosing!', N'https://t.me/DinaraDeutsch/6607', N'uz', Id, NULL, N'@DinaraDeutsch', 6607, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'kurslarga qoʻshgan yangiligimiz haqida bilishni istasangiz Marhamat, eshitish uchun bosing!', Description = N', , kurslarga qoʻshgan yangiligimiz haqida bilishni istasangiz Marhamat, eshitish uchun bosing!'
    WHERE Url = N'https://t.me/DinaraDeutsch/6607';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6610')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'ANİQ ARTIKLLI SO‘ZLAR O‘ZI NIMAGA KERAK?', N'ANİQ ARTIKLLI SO‘ZLAR O‘ZI NIMAGA KERAK? 

Nemis tilida aniq artiklli so‘zlarni juda ko‘p ko‘ramiz:

der Tisch
 die Lampe
 das Buch
 die Schule
 der Lehrer

Lekin nega nemis tilida otlarning oldidan der, die, das kabi artikllar keladi?

Qachon der, qachon die, qachon das ishlatiladi?

— Javobingizni kommentariyada yozib qoldiring. Keyin men o‘zimning variantimni aytaman. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6610', N'uz', Id, NULL, N'@DinaraDeutsch', 6610, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'ANİQ ARTIKLLI SO‘ZLAR O‘ZI NIMAGA KERAK?', Description = N'ANİQ ARTIKLLI SO‘ZLAR O‘ZI NIMAGA KERAK? 

Nemis tilida aniq artiklli so‘zlarni juda ko‘p ko‘ramiz:

der Tisch
 die Lampe
 das Buch
 die Schule
 der Lehrer

Lekin nega nemis tilida otlarning oldidan der, die, das kabi artikllar keladi?

Qachon der, qachon die, qachon das ishlatiladi?

— Javobingizni kommentariyada yozib qoldiring. Keyin men o‘zimning variantimni aytaman. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6610';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6611')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'ANIQ ARTIKLLAR O‘ZI NIMAGA KERAK?', N'ANIQ ARTIKLLAR O‘ZI NIMAGA KERAK?

Nemis tilini o‘rganayotgan bo‘lsangiz, der, die, das kabi aniq artikllarni juda ko‘p uchratgansiz:

der Tisch
 die Lampe
 das Buch
 der Lehrer
 die Schule

Lekin savol: “Nega bu otlarning oldidan der, die, das kerak?”

Aniq artikl otning ma’lum, aniq yoki oldindan ma’lum bo‘lgan narsa/shaxs ekanini bildiradi.

Masalan:

ein Tisch — bir stol
der Tisch — o‘sha stol / ma’lum stol

eine Lampe — bir chiroq
die Lampe — o‘sha chiroq / ma’lum chiroq

ein Buch — bir kitob
das Buch — o‘sha kitob / ma’lum kitob

Lekin qachon der, qachon die, qachon das bo‘ladi?

der — maskulin otlar bilan
 die — feminin otlar bilan
 das — neytral otlar bilan

Buni aniqlashning eng oson usullaridan biri — so‘zning oxirgi qo‘shimchasiga qarash. Chunki ayrim qo‘shimchalar so‘zning artiklini aniqlashga yordam beradi.

Masalan:

-ung → die
die Zeitung, die Wohnung

-heit → die
die Freiheit, die Gesundheit

-keit → die
die Möglichkeit, die Freundlichkeit

-chen → das
das Mädchen, das Häuschen

-lein → das
das Büchlein, das Fräulein

-er → ko‘pincha der
der Lehrer, der Fahrer

⚠️ Lekin bu qoida 100% emas. Istisnolar ham bor. Shuning uchun yangi so‘zlarni artikli bilan birga yodlash eng to‘g‘ri usul:

❌ Tisch — stol
 ✅ der Tisch — stol

— Siz der, die, das ni aniqlashda yana qanday qoidalarni bilasiz? Kommentariyada bilganlaringizni yozib qoldiring 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6611', N'uz', Id, NULL, N'@DinaraDeutsch', 6611, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'ANIQ ARTIKLLAR O‘ZI NIMAGA KERAK?', Description = N'ANIQ ARTIKLLAR O‘ZI NIMAGA KERAK?

Nemis tilini o‘rganayotgan bo‘lsangiz, der, die, das kabi aniq artikllarni juda ko‘p uchratgansiz:

der Tisch
 die Lampe
 das Buch
 der Lehrer
 die Schule

Lekin savol: “Nega bu otlarning oldidan der, die, das kerak?”

Aniq artikl otning ma’lum, aniq yoki oldindan ma’lum bo‘lgan narsa/shaxs ekanini bildiradi.

Masalan:

ein Tisch — bir stol
der Tisch — o‘sha stol / ma’lum stol

eine Lampe — bir chiroq
die Lampe — o‘sha chiroq / ma’lum chiroq

ein Buch — bir kitob
das Buch — o‘sha kitob / ma’lum kitob

Lekin qachon der, qachon die, qachon das bo‘ladi?

der — maskulin otlar bilan
 die — feminin otlar bilan
 das — neytral otlar bilan

Buni aniqlashning eng oson usullaridan biri — so‘zning oxirgi qo‘shimchasiga qarash. Chunki ayrim qo‘shimchalar so‘zning artiklini aniqlashga yordam beradi.

Masalan:

-ung → die
die Zeitung, die Wohnung

-heit → die
die Freiheit, die Gesundheit

-keit → die
die Möglichkeit, die Freundlichkeit

-chen → das
das Mädchen, das Häuschen

-lein → das
das Büchlein, das Fräulein

-er → ko‘pincha der
der Lehrer, der Fahrer

⚠️ Lekin bu qoida 100% emas. Istisnolar ham bor. Shuning uchun yangi so‘zlarni artikli bilan birga yodlash eng to‘g‘ri usul:

❌ Tisch — stol
 ✅ der Tisch — stol

— Siz der, die, das ni aniqlashda yana qanday qoidalarni bilasiz? Kommentariyada bilganlaringizni yozib qoldiring 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6611';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6612')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Lekin yana bitta muhim jarayonni hisobga olish kerak', N'Lekin yana bitta muhim jarayonni hisobga olish kerak 

Aniq artikllar gapdagi vazifasiga qarab o‘zgaradi. Ya’ni der, die, das har doim bir xil shaklda qolmaydi.

Masalan:

️ Der Mann ist nett.
— Erkak mehribon.

️ Ich sehe den Mann.
— Men erkakni ko‘ryapman.

️ Ich helfe dem Mann.
— Men erkakka yordam beraman.

Bu yerda der Mann gapda turli vazifada kelgani uchun artikl ham o‘zgaryapti:

der → den → dem

Yana:

️ Die Frau ist nett.
— Ayol mehribon.

️ Ich sehe die Frau.
— Men ayolni ko‘ryapman.

️ Ich helfe der Frau.
— Men ayolga yordam beraman.

Bu yerda:

die → die → der

Das Kind bilan esa:

️ Das Kind spielt.
— Bola o‘ynayapti.

️ Ich sehe das Kind.
— Men bolani ko‘ryapman.

️ Ich helfe dem Kind.
— Men bolaga yordam beraman.

das → das → dem

Shuning uchun artikllarni faqat der = ..., die = ..., das = ... deb yodlab qolish yetarli emas. Ularning Akkusativ va Dativdagi shakllarini ham bilish kerak.

— Hammasi tushunarli bo‘ldimi? Agar tushunarli bo‘lgan bo‘lsa, " " bosib qo‘ying. Tushunarsiz joyi bo‘lsa, bemalol kommentariyada so‘rashingiz mumkin.

— 22:00da esa sizlarga der, die, das ning Akkusativ va Dativdagi shakllarini oson yodlab olish uchun jadval va misollarni jo‘nataman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6612', N'uz', Id, NULL, N'@DinaraDeutsch', 6612, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Lekin yana bitta muhim jarayonni hisobga olish kerak', Description = N'Lekin yana bitta muhim jarayonni hisobga olish kerak 

Aniq artikllar gapdagi vazifasiga qarab o‘zgaradi. Ya’ni der, die, das har doim bir xil shaklda qolmaydi.

Masalan:

️ Der Mann ist nett.
— Erkak mehribon.

️ Ich sehe den Mann.
— Men erkakni ko‘ryapman.

️ Ich helfe dem Mann.
— Men erkakka yordam beraman.

Bu yerda der Mann gapda turli vazifada kelgani uchun artikl ham o‘zgaryapti:

der → den → dem

Yana:

️ Die Frau ist nett.
— Ayol mehribon.

️ Ich sehe die Frau.
— Men ayolni ko‘ryapman.

️ Ich helfe der Frau.
— Men ayolga yordam beraman.

Bu yerda:

die → die → der

Das Kind bilan esa:

️ Das Kind spielt.
— Bola o‘ynayapti.

️ Ich sehe das Kind.
— Men bolani ko‘ryapman.

️ Ich helfe dem Kind.
— Men bolaga yordam beraman.

das → das → dem

Shuning uchun artikllarni faqat der = ..., die = ..., das = ... deb yodlab qolish yetarli emas. Ularning Akkusativ va Dativdagi shakllarini ham bilish kerak.

— Hammasi tushunarli bo‘ldimi? Agar tushunarli bo‘lgan bo‘lsa, " " bosib qo‘ying. Tushunarsiz joyi bo‘lsa, bemalol kommentariyada so‘rashingiz mumkin.

— 22:00da esa sizlarga der, die, das ning Akkusativ va Dativdagi shakllarini oson yodlab olish uchun jadval va misollarni jo‘nataman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6612';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6554')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Hozirda qabuli ochiq kurslar:', N'Hozirda qabuli ochiq kurslar: 

— 

— 

— 

Murojaat uchun: @deutschmax_admin', N'https://t.me/DinaraDeutsch/6554', N'uz', Id, NULL, N'@DinaraDeutsch', 6554, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Hozirda qabuli ochiq kurslar:', Description = N'Hozirda qabuli ochiq kurslar: 

— 

— 

— 

Murojaat uchun: @deutschmax_admin'
    WHERE Url = N'https://t.me/DinaraDeutsch/6554';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6556')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bilasizmi, men nemis tilini majburlikdan o‘rganganman', N'Bilasizmi, men nemis tilini majburlikdan o‘rganganman 

Maktabda ingliz tili o‘rniga faqat nemis tili o‘tilardi (Ixtisoslashtirilgan maktabda oʻqiganmanda). 

Boshida esa bu til menga juda qiyin tuyulgan. (U maktabga adashib berib qoʻyishgan meni).

“Men bu tilni umuman o‘rganolmayman” , deb o‘ylardim. Yoqmasdi ham. Lekin biroz ulg‘ayganimdan keyin nimadir o‘zgardi — nemis tili sekin-sekin yuragimga o‘tirib qoldi 

Eng qizig‘i, o‘sha paytlarda menga hech kim: “Tilni mana bunday o‘rgansang, tezroq natija olasan” 
deb tushuntirmagan.

Faqat dars.
 Faqat grammatika.
 Faqat yangi so‘zlar.
 Har kuni to‘garak.
 Lekin natija juda sekin kelardi.

— Kimda yana shunaqa? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6556', N'uz', Id, NULL, N'@DinaraDeutsch', 6556, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bilasizmi, men nemis tilini majburlikdan o‘rganganman', Description = N'Bilasizmi, men nemis tilini majburlikdan o‘rganganman 

Maktabda ingliz tili o‘rniga faqat nemis tili o‘tilardi (Ixtisoslashtirilgan maktabda oʻqiganmanda). 

Boshida esa bu til menga juda qiyin tuyulgan. (U maktabga adashib berib qoʻyishgan meni).

“Men bu tilni umuman o‘rganolmayman” , deb o‘ylardim. Yoqmasdi ham. Lekin biroz ulg‘ayganimdan keyin nimadir o‘zgardi — nemis tili sekin-sekin yuragimga o‘tirib qoldi 

Eng qizig‘i, o‘sha paytlarda menga hech kim: “Tilni mana bunday o‘rgansang, tezroq natija olasan” 
deb tushuntirmagan.

Faqat dars.
 Faqat grammatika.
 Faqat yangi so‘zlar.
 Har kuni to‘garak.
 Lekin natija juda sekin kelardi.

— Kimda yana shunaqa? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6556';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6557')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun o‘sha “majburlikdan o‘rgangan” tilimni sizlarga o‘rgatyapman', N'Bugun o‘sha “majburlikdan o‘rgangan” tilimni sizlarga o‘rgatyapman 

Va bilaman, orangizda ham har kuni kursga boradigan, dars qiladigan, lekin baribir “Nega natijam chiqmayapti?” deb o‘ylayotganlar bor. 

— Agar siz ham hozir nemis tilini o‘rganishda qiynalayotgan bo‘lsangiz, kommentda aynan nimada qiynalayotganingizni yozib qoldiring. 

— Koʻpchilikka sprechen qiyinlik qilsa kerak deb oʻylayman, men 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6557', N'uz', Id, NULL, N'@DinaraDeutsch', 6557, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun o‘sha “majburlikdan o‘rgangan” tilimni sizlarga o‘rgatyapman', Description = N'Bugun o‘sha “majburlikdan o‘rgangan” tilimni sizlarga o‘rgatyapman 

Va bilaman, orangizda ham har kuni kursga boradigan, dars qiladigan, lekin baribir “Nega natijam chiqmayapti?” deb o‘ylayotganlar bor. 

— Agar siz ham hozir nemis tilini o‘rganishda qiynalayotgan bo‘lsangiz, kommentda aynan nimada qiynalayotganingizni yozib qoldiring. 

— Koʻpchilikka sprechen qiyinlik qilsa kerak deb oʻylayman, men 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6557';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6558')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sprechen’da qiynalayotganlar uchun 2 qismdan iborat qo‘llanma tayyorlab qo‘ydim', N'Sprechen’da qiynalayotganlar uchun 2 qismdan iborat qo‘llanma tayyorlab qo‘ydim 

- → https://t.me/DinaraDeutsch/6446 

- → https://t.me/DinaraDeutsch/6457 

Bu qo‘llanmada Sprechen’da qiynalishingizga sabab bo‘layotgan muammolarni batafsil tushuntirib, har biriga o‘zim ishlatadigan va tavsiya qiladigan yechimlarni yozib chiqqanman.

Qanday muammo bo‘lishidan qat’i nazar:

gap boshlay olmayapsizmi?
 so‘zlarni bilasiz-u, gapira olmayapsizmi?
 gapirayotganda miyangiz “qotib” qoladimi?
 xato qilishdan qo‘rqasizmi?
 lug‘atingiz yetarli emasdek tuyuladimi?

Hammasini birma-bir yoritganman. 

— Qoʻllanmalar bilan tanishib chiqib, fikrlaringiz albatta qoldiring 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6558', N'uz', Id, NULL, N'@DinaraDeutsch', 6558, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sprechen’da qiynalayotganlar uchun 2 qismdan iborat qo‘llanma tayyorlab qo‘ydim', Description = N'Sprechen’da qiynalayotganlar uchun 2 qismdan iborat qo‘llanma tayyorlab qo‘ydim 

- → https://t.me/DinaraDeutsch/6446 

- → https://t.me/DinaraDeutsch/6457 

Bu qo‘llanmada Sprechen’da qiynalishingizga sabab bo‘layotgan muammolarni batafsil tushuntirib, har biriga o‘zim ishlatadigan va tavsiya qiladigan yechimlarni yozib chiqqanman.

Qanday muammo bo‘lishidan qat’i nazar:

gap boshlay olmayapsizmi?
 so‘zlarni bilasiz-u, gapira olmayapsizmi?
 gapirayotganda miyangiz “qotib” qoladimi?
 xato qilishdan qo‘rqasizmi?
 lug‘atingiz yetarli emasdek tuyuladimi?

Hammasini birma-bir yoritganman. 

— Qoʻllanmalar bilan tanishib chiqib, fikrlaringiz albatta qoldiring 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6558';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6560')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'https://t.me/DinaraDeutsch/6290', N'https://t.me/DinaraDeutsch/6290 
 https://t.me/DinaraDeutsch/6291 
 https://t.me/DinaraDeutsch/6309 
 https://t.me/DinaraDeutsch/6315 
 https://t.me/DinaraDeutsch/6316 
 https://t.me/DinaraDeutsch/6317 
 https://t.me/DinaraDeutsch/6320 
 https://t.me/DinaraDeutsch/6322 
 https://t.me/DinaraDeutsch/6325 
 https://t.me/DinaraDeutsch/6359 
 https://t.me/DinaraDeutsch/6386 
 https://t.me/DinaraDeutsch/6396 
 https://t.me/DinaraDeutsch/6444 
 https://t.me/DinaraDeutsch/6457 
 https://t.me/DinaraDeutsch/6470 
 https://t.me/DinaraDeutsch/6472 
 https://t.me/DinaraDeutsch/6480 
 https://t.me/DinaraDeutsch/6482 
 https://t.me/DinaraDeutsch/6491 
 https://t.me/DinaraDeutsch/6494 
 https://t.me/DinaraDeutsch/6498 
 https://t.me/DinaraDeutsch/6501 
 https://t.me/DinaraDeutsch/6503 
 https://t.me/DinaraDeutsch/6507?single 
 https://t.me/DinaraDeutsch/6509 
 https://t.me/DinaraDeutsch/6531 
 https://t.me/DinaraDeutsch/6541 
 https://t.me/DinaraDeutsch/6546?single 
 https://t.me/DinaraDeutsch/6577 
 https://t.me/DinaraDeutsch/6590?single 
 https://t.me/DinaraDeutsch/6591 
 https://t.me/DinaraDeutsch/6597 
 https://t.me/DinaraDeutsch/6605 

Birinchi qism bu yerda: https://t.me/DinaraDeutsch/5515 

— Listimiz davom etgay 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6560', N'uz', Id, NULL, N'@DinaraDeutsch', 6560, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'https://t.me/DinaraDeutsch/6290', Description = N'https://t.me/DinaraDeutsch/6290 
 https://t.me/DinaraDeutsch/6291 
 https://t.me/DinaraDeutsch/6309 
 https://t.me/DinaraDeutsch/6315 
 https://t.me/DinaraDeutsch/6316 
 https://t.me/DinaraDeutsch/6317 
 https://t.me/DinaraDeutsch/6320 
 https://t.me/DinaraDeutsch/6322 
 https://t.me/DinaraDeutsch/6325 
 https://t.me/DinaraDeutsch/6359 
 https://t.me/DinaraDeutsch/6386 
 https://t.me/DinaraDeutsch/6396 
 https://t.me/DinaraDeutsch/6444 
 https://t.me/DinaraDeutsch/6457 
 https://t.me/DinaraDeutsch/6470 
 https://t.me/DinaraDeutsch/6472 
 https://t.me/DinaraDeutsch/6480 
 https://t.me/DinaraDeutsch/6482 
 https://t.me/DinaraDeutsch/6491 
 https://t.me/DinaraDeutsch/6494 
 https://t.me/DinaraDeutsch/6498 
 https://t.me/DinaraDeutsch/6501 
 https://t.me/DinaraDeutsch/6503 
 https://t.me/DinaraDeutsch/6507?single 
 https://t.me/DinaraDeutsch/6509 
 https://t.me/DinaraDeutsch/6531 
 https://t.me/DinaraDeutsch/6541 
 https://t.me/DinaraDeutsch/6546?single 
 https://t.me/DinaraDeutsch/6577 
 https://t.me/DinaraDeutsch/6590?single 
 https://t.me/DinaraDeutsch/6591 
 https://t.me/DinaraDeutsch/6597 
 https://t.me/DinaraDeutsch/6605 

Birinchi qism bu yerda: https://t.me/DinaraDeutsch/5515 

— Listimiz davom etgay 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6560';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6561')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'https://t.me/DinaraDeutsch/6290 https://t.me/DinaraDeutsch/6291 https://t.me/DinaraDeutsch/6309 https://t.me/DinaraDeutsch/6315...', N'https://t.me/DinaraDeutsch/6290 https://t.me/DinaraDeutsch/6291 https://t.me/DinaraDeutsch/6309 https://t.me/DinaraDeutsch/6315 https://t.me/DinaraDeutsch/6316 https://t.me/DinaraDeutsch/6317…', N'https://t.me/DinaraDeutsch/6561', N'uz', Id, NULL, N'@DinaraDeutsch', 6561, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'https://t.me/DinaraDeutsch/6290 https://t.me/DinaraDeutsch/6291 https://t.me/DinaraDeutsch/6309 https://t.me/DinaraDeutsch/6315...', Description = N'https://t.me/DinaraDeutsch/6290 https://t.me/DinaraDeutsch/6291 https://t.me/DinaraDeutsch/6309 https://t.me/DinaraDeutsch/6315 https://t.me/DinaraDeutsch/6316 https://t.me/DinaraDeutsch/6317…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6561';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6565')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Anna: Hallo! Schön, dich kennenzulernen. Wie heißt du und woher kommst du?', N'Anna: Hallo! Schön, dich kennenzulernen. Wie heißt du und woher kommst du?

Ali: Hallo! Ich heiße Ali und komme aus Usbekistan. Ich wohne seit meiner Kindheit in Taschkent. Und du?

Anna: Ich heiße Anna. Ich komme auch aus Usbekistan, aber meine Familie lebt inzwischen in einer anderen Stadt.

Ali: Interessant! Wie alt bist du eigentlich?

Anna: Ich bin 17 Jahre alt. Und du?

Ali: Ich bin 18. Zurzeit besuche ich die Schule und lerne Deutsch, weil ich später in Deutschland studieren möchte.

Anna: Das klingt interessant. Was möchtest du denn studieren?

Ali: Ich interessiere mich besonders für Informatik. Ich finde dieses Fach spannend, weil man damit später viele verschiedene Möglichkeiten hat. Und was möchtest du machen?

Anna: Ich möchte später im Bereich Wirtschaft arbeiten. Deshalb versuche ich, meine Deutschkenntnisse so gut wie möglich zu verbessern.

Ali: Seit wann lernst du Deutsch?

Anna: Seit ungefähr einem Jahr. Am Anfang fand ich die deutsche Grammatik ziemlich schwierig, besonders die Artikel und die verschiedenen Fälle. Aber inzwischen verstehe ich vieles besser.

Ali: Bei mir war es genauso. Obwohl Deutsch manchmal kompliziert ist, lerne ich die Sprache sehr gern.

Anna: Wie lernst du normalerweise Deutsch?

Ali: Ich lerne jeden Tag ungefähr zwei Stunden. Ich lese Texte, höre Podcasts und versuche, neue Wörter sofort in Sätzen zu benutzen. Außerdem spreche ich regelmäßig mit anderen Deutschlernenden.

Anna: Das ist eine gute Lernmethode. Ich glaube auch, dass man eine Sprache nicht nur durch Grammatiklernen verbessern kann. Man muss sie möglichst oft im Alltag benutzen.

Ali: Genau! Früher hatte ich Angst, beim Sprechen Fehler zu machen. Deshalb habe ich oft geschwiegen. Jetzt versuche ich einfach zu sprechen, auch wenn ich nicht immer alles richtig sage.

Anna: Das finde ich richtig. Fehler gehören schließlich zum Sprachenlernen dazu.

Vazifa:

Uyga vazifa:

Dialogni o‘rganing
Dialogni kamida 3 marta ovoz chiqarib o‘qing va imkon qadar qaramasdan aytib berishga harakat qiling.

Bog‘lovchilarni tahlil qiling
Dialog ichidan bog‘lovchilarni toping va ularning gapdagi vazifasini tahlil qiling.
Masalan: weil, obwohl, deshalb, wenn, dass, aber.

Gap tuzing
Har bir bog‘lovchi bilan kamida 2 tadan o‘zingiz mustaqil gap tuzing.

Sprechen 
Dialogdagi mavzu asosida “Warum lernst du Deutsch und wie lernst du Deutsch?” savoliga 1–2 daqiqa davomida o‘zingiz mustaqil gapirib bering.

— Uyga vazifalarni bajarib jo''natselar, tekshirib beraman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6565', N'uz', Id, NULL, N'@DinaraDeutsch', 6565, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Anna: Hallo! Schön, dich kennenzulernen. Wie heißt du und woher kommst du?', Description = N'Anna: Hallo! Schön, dich kennenzulernen. Wie heißt du und woher kommst du?

Ali: Hallo! Ich heiße Ali und komme aus Usbekistan. Ich wohne seit meiner Kindheit in Taschkent. Und du?

Anna: Ich heiße Anna. Ich komme auch aus Usbekistan, aber meine Familie lebt inzwischen in einer anderen Stadt.

Ali: Interessant! Wie alt bist du eigentlich?

Anna: Ich bin 17 Jahre alt. Und du?

Ali: Ich bin 18. Zurzeit besuche ich die Schule und lerne Deutsch, weil ich später in Deutschland studieren möchte.

Anna: Das klingt interessant. Was möchtest du denn studieren?

Ali: Ich interessiere mich besonders für Informatik. Ich finde dieses Fach spannend, weil man damit später viele verschiedene Möglichkeiten hat. Und was möchtest du machen?

Anna: Ich möchte später im Bereich Wirtschaft arbeiten. Deshalb versuche ich, meine Deutschkenntnisse so gut wie möglich zu verbessern.

Ali: Seit wann lernst du Deutsch?

Anna: Seit ungefähr einem Jahr. Am Anfang fand ich die deutsche Grammatik ziemlich schwierig, besonders die Artikel und die verschiedenen Fälle. Aber inzwischen verstehe ich vieles besser.

Ali: Bei mir war es genauso. Obwohl Deutsch manchmal kompliziert ist, lerne ich die Sprache sehr gern.

Anna: Wie lernst du normalerweise Deutsch?

Ali: Ich lerne jeden Tag ungefähr zwei Stunden. Ich lese Texte, höre Podcasts und versuche, neue Wörter sofort in Sätzen zu benutzen. Außerdem spreche ich regelmäßig mit anderen Deutschlernenden.

Anna: Das ist eine gute Lernmethode. Ich glaube auch, dass man eine Sprache nicht nur durch Grammatiklernen verbessern kann. Man muss sie möglichst oft im Alltag benutzen.

Ali: Genau! Früher hatte ich Angst, beim Sprechen Fehler zu machen. Deshalb habe ich oft geschwiegen. Jetzt versuche ich einfach zu sprechen, auch wenn ich nicht immer alles richtig sage.

Anna: Das finde ich richtig. Fehler gehören schließlich zum Sprachenlernen dazu.

Vazifa:

Uyga vazifa:

Dialogni o‘rganing
Dialogni kamida 3 marta ovoz chiqarib o‘qing va imkon qadar qaramasdan aytib berishga harakat qiling.

Bog‘lovchilarni tahlil qiling
Dialog ichidan bog‘lovchilarni toping va ularning gapdagi vazifasini tahlil qiling.
Masalan: weil, obwohl, deshalb, wenn, dass, aber.

Gap tuzing
Har bir bog‘lovchi bilan kamida 2 tadan o‘zingiz mustaqil gap tuzing.

Sprechen 
Dialogdagi mavzu asosida “Warum lernst du Deutsch und wie lernst du Deutsch?” savoliga 1–2 daqiqa davomida o‘zingiz mustaqil gapirib bering.

— Uyga vazifalarni bajarib jo''natselar, tekshirib beraman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6565';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6581')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Anna: Hallo! Wie geht es dir? Was machst du normalerweise am Wochenende?', N'Anna: Hallo! Wie geht es dir? Was machst du normalerweise am Wochenende?

Ali: Hallo Anna! Mir geht es gut, danke. Am Wochenende habe ich meistens mehr Freizeit. Deshalb treffe ich mich gern mit meinen Freunden.

Anna: Das klingt schön. Was macht ihr zusammen?

Ali: Wir gehen manchmal ins Café oder spazieren im Park. Wenn das Wetter gut ist, spielen wir auch Fußball.

Anna: Ich verbringe meine Freizeit etwas anders. Ich bleibe oft zu Hause, weil ich unter der Woche sehr beschäftigt bin.

Ali: Was machst du dann zu Hause?

Anna: Ich höre Musik, sehe Filme und lese manchmal Bücher. Außerdem lerne ich Deutsch, obwohl ich am Wochenende eigentlich nicht so viel lernen möchte.

Ali: Warum lernst du auch am Wochenende Deutsch?

Anna: Ich möchte meine Deutschkenntnisse verbessern, weil ich später in Deutschland studieren möchte. Deshalb versuche ich, jeden Tag ein bisschen Deutsch zu lernen.

Ali: Das ist eine gute Idee. Ich lerne auch jeden Tag neue Wörter. Aber manchmal ist es schwierig, genug Zeit zum Lernen zu finden.

Anna: Das kenne ich. Wenn ich viele Hausaufgaben habe, habe ich am Abend keine Energie mehr.

Ali: Bei mir ist es genauso. Trotzdem versuche ich, mindestens 30 Minuten Deutsch zu lernen.

Anna: Wie lernst du neue Wörter?

Ali: Ich schreibe neue Wörter in mein Heft und bilde damit eigene Sätze. Außerdem höre ich deutsche Podcasts, damit ich mein Hörverstehen verbessern kann.

Anna: Das mache ich auch. Ich glaube, dass man eine Sprache regelmäßig üben muss.

Ali: Genau! Wenn man jeden Tag ein bisschen übt, kann man langsam bessere Ergebnisse bekommen.

Anna: Stimmt. Lernen ist manchmal anstrengend, aber wenn man ein klares Ziel hat, wird es leichter.

Uyga vazifa:

Dialogni o‘rganing
Dialogni kamida 3 marta ovoz chiqarib o‘qing va imkon qadar qaramasdan aytib berishga harakat qiling.

Bog‘lovchilarni tahlil qiling
Dialog ichidan bog‘lovchilarni toping va ularning gapdagi vazifasini tahlil qiling.

Masalan: weil, obwohl, deshalb, wenn, dass, aber, trotzdem, außerdem.

Gap tuzing
Har bir bog‘lovchi bilan kamida 2 tadan o‘zingiz mustaqil gap tuzing.

Sprechen 
Dialogdagi mavzu asosida:

„Wie verbringst du deine Freizeit und wie lernst du Deutsch?“ savoliga 1–2 daqiqa davomida o‘zingiz mustaqil gapirib bering.

Neue Wörter 
Dialogdan o‘zingiz uchun 10 ta yangi so‘z tanlang, tarjimasini yozing va har biri bilan bittadan gap tuzing.

— Uyga vazifalarni bajarib jo‘natselar, tekshirib beraman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6581', N'uz', Id, NULL, N'@DinaraDeutsch', 6581, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Anna: Hallo! Wie geht es dir? Was machst du normalerweise am Wochenende?', Description = N'Anna: Hallo! Wie geht es dir? Was machst du normalerweise am Wochenende?

Ali: Hallo Anna! Mir geht es gut, danke. Am Wochenende habe ich meistens mehr Freizeit. Deshalb treffe ich mich gern mit meinen Freunden.

Anna: Das klingt schön. Was macht ihr zusammen?

Ali: Wir gehen manchmal ins Café oder spazieren im Park. Wenn das Wetter gut ist, spielen wir auch Fußball.

Anna: Ich verbringe meine Freizeit etwas anders. Ich bleibe oft zu Hause, weil ich unter der Woche sehr beschäftigt bin.

Ali: Was machst du dann zu Hause?

Anna: Ich höre Musik, sehe Filme und lese manchmal Bücher. Außerdem lerne ich Deutsch, obwohl ich am Wochenende eigentlich nicht so viel lernen möchte.

Ali: Warum lernst du auch am Wochenende Deutsch?

Anna: Ich möchte meine Deutschkenntnisse verbessern, weil ich später in Deutschland studieren möchte. Deshalb versuche ich, jeden Tag ein bisschen Deutsch zu lernen.

Ali: Das ist eine gute Idee. Ich lerne auch jeden Tag neue Wörter. Aber manchmal ist es schwierig, genug Zeit zum Lernen zu finden.

Anna: Das kenne ich. Wenn ich viele Hausaufgaben habe, habe ich am Abend keine Energie mehr.

Ali: Bei mir ist es genauso. Trotzdem versuche ich, mindestens 30 Minuten Deutsch zu lernen.

Anna: Wie lernst du neue Wörter?

Ali: Ich schreibe neue Wörter in mein Heft und bilde damit eigene Sätze. Außerdem höre ich deutsche Podcasts, damit ich mein Hörverstehen verbessern kann.

Anna: Das mache ich auch. Ich glaube, dass man eine Sprache regelmäßig üben muss.

Ali: Genau! Wenn man jeden Tag ein bisschen übt, kann man langsam bessere Ergebnisse bekommen.

Anna: Stimmt. Lernen ist manchmal anstrengend, aber wenn man ein klares Ziel hat, wird es leichter.

Uyga vazifa:

Dialogni o‘rganing
Dialogni kamida 3 marta ovoz chiqarib o‘qing va imkon qadar qaramasdan aytib berishga harakat qiling.

Bog‘lovchilarni tahlil qiling
Dialog ichidan bog‘lovchilarni toping va ularning gapdagi vazifasini tahlil qiling.

Masalan: weil, obwohl, deshalb, wenn, dass, aber, trotzdem, außerdem.

Gap tuzing
Har bir bog‘lovchi bilan kamida 2 tadan o‘zingiz mustaqil gap tuzing.

Sprechen 
Dialogdagi mavzu asosida:

„Wie verbringst du deine Freizeit und wie lernst du Deutsch?“ savoliga 1–2 daqiqa davomida o‘zingiz mustaqil gapirib bering.

Neue Wörter 
Dialogdan o‘zingiz uchun 10 ta yangi so‘z tanlang, tarjimasini yozing va har biri bilan bittadan gap tuzing.

— Uyga vazifalarni bajarib jo‘natselar, tekshirib beraman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6581';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6583')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 kursdan lavhalar', N'A1 kursdan lavhalar 

Uyga vazifa tekshiraman deb, oʻzim videoga tushishga uspet qilmayapman endi. Ertalab telegramga qarasam, 100ta sms keb turgan boʻladi. Dam olish kuniga nechi kun qoldi deb uygʻonyapman 

— Allohumma baarik, koʻz tegmasin oʻquvchilarimga, hammalari aqlli, gapga tushunadigan, tez ilgʻab, oʻrganib oladigan oʻquvchilar 

P.s. Uyga vazifalarni oʻzim tekshiraman degandimdee.', N'https://t.me/DinaraDeutsch/6583', N'uz', Id, NULL, N'@DinaraDeutsch', 6583, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 kursdan lavhalar', Description = N'A1 kursdan lavhalar 

Uyga vazifa tekshiraman deb, oʻzim videoga tushishga uspet qilmayapman endi. Ertalab telegramga qarasam, 100ta sms keb turgan boʻladi. Dam olish kuniga nechi kun qoldi deb uygʻonyapman 

— Allohumma baarik, koʻz tegmasin oʻquvchilarimga, hammalari aqlli, gapga tushunadigan, tez ilgʻab, oʻrganib oladigan oʻquvchilar 

P.s. Uyga vazifalarni oʻzim tekshiraman degandimdee.'
    WHERE Url = N'https://t.me/DinaraDeutsch/6583';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6586')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Qaysidir yili Sprechen va Schreiben’dan jonli dars o‘tgandim', N'Qaysidir yili Sprechen va Schreiben’dan jonli dars o‘tgandim 

Hozir o‘sha darsdagi prezentatsiyani topib oldim. Unda Sprechen va Schreiben’da qiynalmasdan, bir darajadan keyingi darajaga qanday o‘tish mumkinligini bosqichma-bosqich tushuntirgan ekanman.

— Sizlarga ham jo‘nataymi? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6586', N'uz', Id, NULL, N'@DinaraDeutsch', 6586, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Qaysidir yili Sprechen va Schreiben’dan jonli dars o‘tgandim', Description = N'Qaysidir yili Sprechen va Schreiben’dan jonli dars o‘tgandim 

Hozir o‘sha darsdagi prezentatsiyani topib oldim. Unda Sprechen va Schreiben’da qiynalmasdan, bir darajadan keyingi darajaga qanday o‘tish mumkinligini bosqichma-bosqich tushuntirgan ekanman.

— Sizlarga ham jo‘nataymi? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6586';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6506')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemis tilini o‘rganish uchun men tavsiya qiladigan ilovalar:', N'Nemis tilini o‘rganish uchun men tavsiya qiladigan ilovalar: 

Der Die Das 
Bu ilova orqali so‘zlarning artikllarini (der, die, das) osonroq topishingiz va yodlab olishingiz mumkin. 

14 000 Deutsche Verben 
Fe''llarni o‘rganish uchun juda yaxshi ilova. Unda minglab fe''llar tarjimasi, ularning tuslanishi va ishlatilishi berilgan. Ayniqsa A1 darajadagi o‘quvchilarga tavsiya qilaman.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6506', N'uz', Id, NULL, N'@DinaraDeutsch', 6506, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemis tilini o‘rganish uchun men tavsiya qiladigan ilovalar:', Description = N'Nemis tilini o‘rganish uchun men tavsiya qiladigan ilovalar: 

Der Die Das 
Bu ilova orqali so‘zlarning artikllarini (der, die, das) osonroq topishingiz va yodlab olishingiz mumkin. 

14 000 Deutsche Verben 
Fe''llarni o‘rganish uchun juda yaxshi ilova. Unda minglab fe''llar tarjimasi, ularning tuslanishi va ishlatilishi berilgan. Ayniqsa A1 darajadagi o‘quvchilarga tavsiya qilaman.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6506';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6517')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun A1 darslarga qabul ochamiz, esilardami ishqilib .', N'— Bugun A1 darslarga qabul ochamiz, esilardami ishqilib .', N'https://t.me/DinaraDeutsch/6517', N'uz', Id, NULL, N'@DinaraDeutsch', 6517, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun A1 darslarga qabul ochamiz, esilardami ishqilib .', Description = N'— Bugun A1 darslarga qabul ochamiz, esilardami ishqilib .'
    WHERE Url = N'https://t.me/DinaraDeutsch/6517';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6530')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun sizlarga A2 daraja uchun Sprechen va Schreiben shablonlarini jo‘nataman', N'Bugun sizlarga A2 daraja uchun Sprechen va Schreiben shablonlarini jo‘nataman 

Imtihonda gapirish va yozishda qiynalayotganlar uchun juda foydali bo‘ladi , reaksiya bosib turila sila ho''pmi', N'https://t.me/DinaraDeutsch/6530', N'uz', Id, NULL, N'@DinaraDeutsch', 6530, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun sizlarga A2 daraja uchun Sprechen va Schreiben shablonlarini jo‘nataman', Description = N'Bugun sizlarga A2 daraja uchun Sprechen va Schreiben shablonlarini jo‘nataman 

Imtihonda gapirish va yozishda qiynalayotganlar uchun juda foydali bo‘ladi , reaksiya bosib turila sila ho''pmi'
    WHERE Url = N'https://t.me/DinaraDeutsch/6530';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6533')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 o‘quvchilar allaqachon uyga vazifalarni bajarishga kirishib ketishgan', N'A1 o‘quvchilar allaqachon uyga vazifalarni bajarishga kirishib ketishgan 

— Qolganlar "Boshlasammikan, yo‘qmi?" deb o‘ylab boʻlguncha, ular 1 oy 10 kunda A1 darajani tugatgan bo‘lishadi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6533', N'uz', Id, NULL, N'@DinaraDeutsch', 6533, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 o‘quvchilar allaqachon uyga vazifalarni bajarishga kirishib ketishgan', Description = N'A1 o‘quvchilar allaqachon uyga vazifalarni bajarishga kirishib ketishgan 

— Qolganlar "Boshlasammikan, yo‘qmi?" deb o‘ylab boʻlguncha, ular 1 oy 10 kunda A1 darajani tugatgan bo‘lishadi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6533';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6475')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dialog A1 - Tanishuv', N'Dialog A1 - Tanishuv 

Anna: Hallo! Wie heißt du?

Ali: Hallo! Ich heiße Ali. Und wie heißt du?

Anna: Ich heiße Anna. Wie alt bist du?

Ali: Ich bin 18 Jahre alt. Und du?

Anna: Ich bin 17 Jahre alt. Woher kommst du?

Ali: Ich komme aus Usbekistan. Und du?

Anna: Ich komme auch aus Usbekistan.

Ali: Welche Sprachen sprichst du?

Anna: Ich spreche Usbekisch, Englisch und ein bisschen Deutsch. Und du?

Ali: Ich spreche Usbekisch und ein bisschen Englisch.

Anna: Warum lernst du Deutsch?

Ali: Ich lerne Deutsch, weil ich in Deutschland studieren möchte. Und du?

Anna: Ich lerne Deutsch, weil ich dort arbeiten möchte.

Ali: Seit wann lernst du Deutsch?

Anna: Ich lerne Deutsch seit sechs Monaten. Und du?

Ali: Ich lerne Deutsch seit drei Monaten.

Anna: Lernst du jeden Tag Deutsch?

Ali: Ja, ich lerne jeden Tag etwa zwei Stunden. Und du?

Anna: Ja, ich lerne auch jeden Tag. Ich höre Podcasts und lerne neue Wörter.

Ali: Das ist eine gute Idee.

Anna: Hast du ein Hobby?

Ali: Ja, ich lese gern Bücher und höre Musik. Und du?

Anna: Ich gehe gern spazieren und treffe meine Freunde.

Ali: Sehr schön! Viel Erfolg beim Deutschlernen!

Anna: Danke! Dir auch. Bis bald!

Ali: Tschüss!

Vazifa: 
 . Dialogni ovoz chiqarib kamida 3 marta o‘qing (Vorlesen) va talaffuzingizni mashq qiling. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6475', N'uz', Id, NULL, N'@DinaraDeutsch', 6475, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dialog A1 - Tanishuv', Description = N'Dialog A1 - Tanishuv 

Anna: Hallo! Wie heißt du?

Ali: Hallo! Ich heiße Ali. Und wie heißt du?

Anna: Ich heiße Anna. Wie alt bist du?

Ali: Ich bin 18 Jahre alt. Und du?

Anna: Ich bin 17 Jahre alt. Woher kommst du?

Ali: Ich komme aus Usbekistan. Und du?

Anna: Ich komme auch aus Usbekistan.

Ali: Welche Sprachen sprichst du?

Anna: Ich spreche Usbekisch, Englisch und ein bisschen Deutsch. Und du?

Ali: Ich spreche Usbekisch und ein bisschen Englisch.

Anna: Warum lernst du Deutsch?

Ali: Ich lerne Deutsch, weil ich in Deutschland studieren möchte. Und du?

Anna: Ich lerne Deutsch, weil ich dort arbeiten möchte.

Ali: Seit wann lernst du Deutsch?

Anna: Ich lerne Deutsch seit sechs Monaten. Und du?

Ali: Ich lerne Deutsch seit drei Monaten.

Anna: Lernst du jeden Tag Deutsch?

Ali: Ja, ich lerne jeden Tag etwa zwei Stunden. Und du?

Anna: Ja, ich lerne auch jeden Tag. Ich höre Podcasts und lerne neue Wörter.

Ali: Das ist eine gute Idee.

Anna: Hast du ein Hobby?

Ali: Ja, ich lese gern Bücher und höre Musik. Und du?

Anna: Ich gehe gern spazieren und treffe meine Freunde.

Ali: Sehr schön! Viel Erfolg beim Deutschlernen!

Anna: Danke! Dir auch. Bis bald!

Ali: Tschüss!

Vazifa: 
 . Dialogni ovoz chiqarib kamida 3 marta o‘qing (Vorlesen) va talaffuzingizni mashq qiling. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6475';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6476')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Ko‘rdilarmi, kanalimizga anchagina yangi obunachilar qo‘shilibdi', N'Ko‘rdilarmi, kanalimizga anchagina yangi obunachilar qo‘shilibdi 

— Qani, "dinozavrlar davridan" beri kanalni kuzatib kelayotganlar yangi kelganlarga meni bitta gap bilan tanishtirib beringchi 

— Kommentariyani oʻzimam o‘qiyman-a 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6476', N'uz', Id, NULL, N'@DinaraDeutsch', 6476, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Ko‘rdilarmi, kanalimizga anchagina yangi obunachilar qo‘shilibdi', Description = N'Ko‘rdilarmi, kanalimizga anchagina yangi obunachilar qo‘shilibdi 

— Qani, "dinozavrlar davridan" beri kanalni kuzatib kelayotganlar yangi kelganlarga meni bitta gap bilan tanishtirib beringchi 

— Kommentariyani oʻzimam o‘qiyman-a 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6476';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6478')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Xush kelibsiz! Keling, avval tanishib olaylik.', N'Xush kelibsiz! Keling, avval tanishib olaylik.

Bu kanal — nemis tilini shunchaki o‘rganish uchun emas, balki Germaniyada yashash, ishlash yoki o‘qish maqsadini ko‘zlaganlar uchun. 

Ismim Dinara . Nemis tili olamida 10 yildan ortiq tarjibam bor. Soʻnggi 3 yil davomida esa bu bilimlarimni boshqalarga oʻrgatib kelyapman 

Bu kanalda sizga foydali boʻladigan nimalar bor, koʻrib chiqamiz 

Har bir daraja (A1–B2) uchun bepul darslar
 Kundalik hayotda ishlatiladigan eng kerakli so‘z va iboralar
 TELC va Goethe imtihonlariga tayyorgarlik bo‘yicha tavsiyalar
 Gapirish (Sprechen)ni rivojlantirish uchun amaliy usullar
 O‘quvchilarimning haqiqiy natijalari va tajribalari

Bugungi kunda minglab o‘quvchilar aynan shu bepul darslar orqali nemis tili darajalarini yaxshilashni boshlashgan 

• Bepul darslarga o‘tish: 
 https://t.me/DinaraDeutsch/5944 
 https://t.me/DinaraDeutsch/5987 
 https://t.me/DinaraDeutsch/6380 

• Foydali postlar roʻyxati:
 https://t.me/DinaraDeutsch/5515 

• Sprechenni yaxshilash uchun 2ta qismdan iborat oʻzim tayyorlagan qoʻllanma: 
 https://t.me/DinaraDeutsch/6446 
 https://t.me/DinaraDeutsch/6457 

— Savollaringiz bo‘lsa, izohlarda bemalol yozing. Imkon qadar barchaga javob berishga harakat qilaman. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6478', N'uz', Id, NULL, N'@DinaraDeutsch', 6478, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Xush kelibsiz! Keling, avval tanishib olaylik.', Description = N'Xush kelibsiz! Keling, avval tanishib olaylik.

Bu kanal — nemis tilini shunchaki o‘rganish uchun emas, balki Germaniyada yashash, ishlash yoki o‘qish maqsadini ko‘zlaganlar uchun. 

Ismim Dinara . Nemis tili olamida 10 yildan ortiq tarjibam bor. Soʻnggi 3 yil davomida esa bu bilimlarimni boshqalarga oʻrgatib kelyapman 

Bu kanalda sizga foydali boʻladigan nimalar bor, koʻrib chiqamiz 

Har bir daraja (A1–B2) uchun bepul darslar
 Kundalik hayotda ishlatiladigan eng kerakli so‘z va iboralar
 TELC va Goethe imtihonlariga tayyorgarlik bo‘yicha tavsiyalar
 Gapirish (Sprechen)ni rivojlantirish uchun amaliy usullar
 O‘quvchilarimning haqiqiy natijalari va tajribalari

Bugungi kunda minglab o‘quvchilar aynan shu bepul darslar orqali nemis tili darajalarini yaxshilashni boshlashgan 

• Bepul darslarga o‘tish: 
 https://t.me/DinaraDeutsch/5944 
 https://t.me/DinaraDeutsch/5987 
 https://t.me/DinaraDeutsch/6380 

• Foydali postlar roʻyxati:
 https://t.me/DinaraDeutsch/5515 

• Sprechenni yaxshilash uchun 2ta qismdan iborat oʻzim tayyorlagan qoʻllanma: 
 https://t.me/DinaraDeutsch/6446 
 https://t.me/DinaraDeutsch/6457 

— Savollaringiz bo‘lsa, izohlarda bemalol yozing. Imkon qadar barchaga javob berishga harakat qilaman. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6478';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6480')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bu iboralarni bilsangiz nemislar bilan gaplashganda qiynalmaysiz, ishonuring', N'Bu iboralarni bilsangiz nemislar bilan gaplashganda qiynalmaysiz, ishonuring 

Alles klar?
 Hammasi joyidami?
 Tushunarlimi?
Salomlashganda yoki biror narsani tushuntirib bo‘lgandan keyin ishlatiladi.

Kein Ding!
 Arzimaydi!
 Hech gap emas!
"Danke" (raxmat) degan odamga samimiy javob sifatida yoshlar orasida juda ko‘p ishlatiladi.

Das macht Sinn.
 Bu mantiqan to‘g‘ri.
 Tushunarli.
Kimningdir fikriga qo‘shilganda ishlatiladi.

Ich muss los.
 Men ketishim kerak.
Suhbatni tugatib, shoshilayotganingizni bildiradi.

Mach''s gut!
 Hammasi yaxshi bo‘lsin! 
 Sog‘ bo‘l!
Samimiy xayrlashuv iborasi. "Tschüss" o‘rnida ham ishlatish mumkin.

— Bugungi vazifa: shu 5 ta iborani yodlang va har doim dialoglarda ishlating. 

— Postni nemis tilini o‘rganayotgan do‘stingizga joʻnatib qoʻying 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6480', N'uz', Id, NULL, N'@DinaraDeutsch', 6480, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bu iboralarni bilsangiz nemislar bilan gaplashganda qiynalmaysiz, ishonuring', Description = N'Bu iboralarni bilsangiz nemislar bilan gaplashganda qiynalmaysiz, ishonuring 

Alles klar?
 Hammasi joyidami?
 Tushunarlimi?
Salomlashganda yoki biror narsani tushuntirib bo‘lgandan keyin ishlatiladi.

Kein Ding!
 Arzimaydi!
 Hech gap emas!
"Danke" (raxmat) degan odamga samimiy javob sifatida yoshlar orasida juda ko‘p ishlatiladi.

Das macht Sinn.
 Bu mantiqan to‘g‘ri.
 Tushunarli.
Kimningdir fikriga qo‘shilganda ishlatiladi.

Ich muss los.
 Men ketishim kerak.
Suhbatni tugatib, shoshilayotganingizni bildiradi.

Mach''s gut!
 Hammasi yaxshi bo‘lsin! 
 Sog‘ bo‘l!
Samimiy xayrlashuv iborasi. "Tschüss" o‘rnida ham ishlatish mumkin.

— Bugungi vazifa: shu 5 ta iborani yodlang va har doim dialoglarda ishlating. 

— Postni nemis tilini o‘rganayotgan do‘stingizga joʻnatib qoʻying 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6480';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6481')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'O‘tgan zamon fe''llarini hali yodlab ulgurmaganlar ko‘p bo‘lsa kerak', N'O‘tgan zamon fe''llarini hali yodlab ulgurmaganlar ko‘p bo‘lsa kerak 

— Reaksiya bosib turilar, hozir ro‘yxatni kanalga ham joʻnataman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6481', N'uz', Id, NULL, N'@DinaraDeutsch', 6481, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'O‘tgan zamon fe''llarini hali yodlab ulgurmaganlar ko‘p bo‘lsa kerak', Description = N'O‘tgan zamon fe''llarini hali yodlab ulgurmaganlar ko‘p bo‘lsa kerak 

— Reaksiya bosib turilar, hozir ro‘yxatni kanalga ham joʻnataman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6481';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6485')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1 darajadagi ya''ni nemis tilini endi o''rganishni boshlagan talabalar uchun dars yozyapman men', N'A1 darajadagi ya''ni nemis tilini endi o''rganishni boshlagan talabalar uchun dars yozyapman men 

Dahshat dars bo''lyapti lekin, ishonilaaaaaa 

— Men darsni tayyorlab bo''lgunimcha, siz videodan harflarni o''rganib turing. Videoni ko''rib bo''lib, daftarga harflarni yozib olib, jo''natila yozganariyizni, ho''pmiiii 

— Harflar o''rgatilgan video: https://youtu.be/wSmp39PZg9g?si=mCTUNzlrhmZ9G1CB 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6485', N'uz', Id, NULL, N'@DinaraDeutsch', 6485, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1 darajadagi ya''ni nemis tilini endi o''rganishni boshlagan talabalar uchun dars yozyapman men', Description = N'A1 darajadagi ya''ni nemis tilini endi o''rganishni boshlagan talabalar uchun dars yozyapman men 

Dahshat dars bo''lyapti lekin, ishonilaaaaaa 

— Men darsni tayyorlab bo''lgunimcha, siz videodan harflarni o''rganib turing. Videoni ko''rib bo''lib, daftarga harflarni yozib olib, jo''natila yozganariyizni, ho''pmiiii 

— Harflar o''rgatilgan video: https://youtu.be/wSmp39PZg9g?si=mCTUNzlrhmZ9G1CB 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6485';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6489')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Harflar mavzusini o‘rganib bo‘ldilarmi?', N'Harflar mavzusini o‘rganib bo‘ldilarmi? 

Rostini aytsam, vazifani bajarganlar unchalik ko‘p emas ekan. Bir nechta o‘quvchi yozibdi, xolos. Yomon oʻquvchi boʻlyapsila-yu, bunaqasi ketmaydi 

— Keyingi mavzuga o''tishni istayotganlar bormi oʻzi? 
— Dars qilganlarga hech boʻlmasa bittadan reaksiya bosib ketila endi 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6489', N'uz', Id, NULL, N'@DinaraDeutsch', 6489, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Harflar mavzusini o‘rganib bo‘ldilarmi?', Description = N'Harflar mavzusini o‘rganib bo‘ldilarmi? 

Rostini aytsam, vazifani bajarganlar unchalik ko‘p emas ekan. Bir nechta o‘quvchi yozibdi, xolos. Yomon oʻquvchi boʻlyapsila-yu, bunaqasi ketmaydi 

— Keyingi mavzuga o''tishni istayotganlar bormi oʻzi? 
— Dars qilganlarga hech boʻlmasa bittadan reaksiya bosib ketila endi 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6489';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6492')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Harflarni o‘rganib bo‘lganlarga esa alohida vazifa bor', N'Harflarni o‘rganib bo‘lganlarga esa alohida vazifa bor 

Harflarni haqiqatan ham o‘rganib olganmisiz yoki yo‘qmi, buni endi birga tekshiramiz. Quyidagi matnni ovoz chiqarib o‘qing:

Hallo! 
Ich heiße Ali.
Ich bin 18 Jahre alt.
Ich komme aus Usbekistan.
Ich wohne in Taschkent.
Ich lerne Deutsch.
Ich habe ein Buch.
Das Buch ist neu.
Ich habe einen Freund.
Er heißt Amir.
Wir lernen zusammen.
Wir lesen ein Buch.
Wir schreiben Wörter.
Deutsch macht Spaß.
Ich lerne jeden Tag.
Auf Wiedersehen!

— Matnni ovoz chiqarib o‘qing va kommentariyaga ovozli xabar qilib yuboring. Talaffuzingizni tekshirib, xatolaringiz bo‘lsa yozib yuboraman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6492', N'uz', Id, NULL, N'@DinaraDeutsch', 6492, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Harflarni o‘rganib bo‘lganlarga esa alohida vazifa bor', Description = N'Harflarni o‘rganib bo‘lganlarga esa alohida vazifa bor 

Harflarni haqiqatan ham o‘rganib olganmisiz yoki yo‘qmi, buni endi birga tekshiramiz. Quyidagi matnni ovoz chiqarib o‘qing:

Hallo! 
Ich heiße Ali.
Ich bin 18 Jahre alt.
Ich komme aus Usbekistan.
Ich wohne in Taschkent.
Ich lerne Deutsch.
Ich habe ein Buch.
Das Buch ist neu.
Ich habe einen Freund.
Er heißt Amir.
Wir lernen zusammen.
Wir lesen ein Buch.
Wir schreiben Wörter.
Deutsch macht Spaß.
Ich lerne jeden Tag.
Auf Wiedersehen!

— Matnni ovoz chiqarib o‘qing va kommentariyaga ovozli xabar qilib yuboring. Talaffuzingizni tekshirib, xatolaringiz bo‘lsa yozib yuboraman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6492';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6493')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Hayrli tong, yaxshi dam oldilarmi?', N'Hayrli tong, yaxshi dam oldilarmi? 

Kechagi textni ovozli habar qilganlariyz eshitib chiqdim yarim tunda boʻlsayam. Hammalariyz judayam zoʻr oʻqib bergansila, qoil. Endi shu textni lug‘atini yodlab qoʻyamiz sizlar bilan bugun 

Hallo! — Salom!
 ich — men
 heißen — deb atalmoq (ismi bo‘lmoq)
 sein — bo‘lmoq
 18 Jahre alt — 18 yoshda
 kommen — kelmoq
 aus — dan
 Usbekistan — Oʻzbekiston
 wohnen — yashamoq
 in — da
 Taschkent — Toshkent
 lernen — o‘rganmoq
 Deutsch — nemis tili
 haben — ega bo‘lmoq (bor bo‘lmoq)
 das Buch — kitob
 neu — yangi
 der Freund — do‘st (erkak)
 er — u (erkak)
 wir — biz
 zusammen — birga
 lesen — o‘qimoq
 schreiben — yozmoq
 die Wörter — so‘zlar
 Spaß machen — zavq bag‘ishlamoq, yoqmoq
 Deutsch macht Spaß. — Nemis tili qiziqarli
 jeden Tag — har kuni
 Auf Wiedersehen! — Xayr! (Yana ko‘rishguncha!)

— Lugʻatlarni yodlab boʻlib habar bersela, quiz test ishlab koʻramiz birga, yodlaganilani tekshirish uchu n.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6493', N'uz', Id, NULL, N'@DinaraDeutsch', 6493, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Hayrli tong, yaxshi dam oldilarmi?', Description = N'Hayrli tong, yaxshi dam oldilarmi? 

Kechagi textni ovozli habar qilganlariyz eshitib chiqdim yarim tunda boʻlsayam. Hammalariyz judayam zoʻr oʻqib bergansila, qoil. Endi shu textni lug‘atini yodlab qoʻyamiz sizlar bilan bugun 

Hallo! — Salom!
 ich — men
 heißen — deb atalmoq (ismi bo‘lmoq)
 sein — bo‘lmoq
 18 Jahre alt — 18 yoshda
 kommen — kelmoq
 aus — dan
 Usbekistan — Oʻzbekiston
 wohnen — yashamoq
 in — da
 Taschkent — Toshkent
 lernen — o‘rganmoq
 Deutsch — nemis tili
 haben — ega bo‘lmoq (bor bo‘lmoq)
 das Buch — kitob
 neu — yangi
 der Freund — do‘st (erkak)
 er — u (erkak)
 wir — biz
 zusammen — birga
 lesen — o‘qimoq
 schreiben — yozmoq
 die Wörter — so‘zlar
 Spaß machen — zavq bag‘ishlamoq, yoqmoq
 Deutsch macht Spaß. — Nemis tili qiziqarli
 jeden Tag — har kuni
 Auf Wiedersehen! — Xayr! (Yana ko‘rishguncha!)

— Lugʻatlarni yodlab boʻlib habar bersela, quiz test ishlab koʻramiz birga, yodlaganilani tekshirish uchu n.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6493';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6496')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Va alaykum assalom', N'Va alaykum assalom 

Kim aytdi Germaniyaga oʻqishga topshirmagan deb 

— Germaniyaga, Koreaga oʻqishga topshirganman . Oʻzbekistonda 1-grand bilan oʻqishga kirganimni eshitganimdan keyin Oʻzbekistonda qolganman, magistraturani chetda qilaman endi nasib boʻlsa. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6496', N'uz', Id, NULL, N'@DinaraDeutsch', 6496, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Va alaykum assalom', Description = N'Va alaykum assalom 

Kim aytdi Germaniyaga oʻqishga topshirmagan deb 

— Germaniyaga, Koreaga oʻqishga topshirganman . Oʻzbekistonda 1-grand bilan oʻqishga kirganimni eshitganimdan keyin Oʻzbekistonda qolganman, magistraturani chetda qilaman endi nasib boʻlsa. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6496';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6497')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Ingliz tili bilsa nemis tili oson boʻladimi?', N'Ingliz tili bilsa nemis tili oson boʻladimi? 

Nemis tili bilan ingliz tili aka - uka tillar deyishadiyu , ingliz tilini bilgan oʻquvchi nemis tilini oʻqimasdan turib ham 30 foizini uje biladi.

Grammatika, soʻzlar tomondan juda oʻxshash ya''ni 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6497', N'uz', Id, NULL, N'@DinaraDeutsch', 6497, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Ingliz tili bilsa nemis tili oson boʻladimi?', Description = N'Ingliz tili bilsa nemis tili oson boʻladimi? 

Nemis tili bilan ingliz tili aka - uka tillar deyishadiyu , ingliz tilini bilgan oʻquvchi nemis tilini oʻqimasdan turib ham 30 foizini uje biladi.

Grammatika, soʻzlar tomondan juda oʻxshash ya''ni 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6497';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6501')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun sizlar bilan nemis tilidagi kishilik olmoshlarini (Personalpronomen) o‘rganamiz', N'Bugun sizlar bilan nemis tilidagi kishilik olmoshlarini (Personalpronomen) o‘rganamiz 

Bularni bilmasdan turib gap tuzishni boshlash qiyin. Shuning uchun avval ularni yodlab olamiz.

— Keyingi postda aynan shu olmoshlar bilan fe''llarni tuslashni o‘rganamiz 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6501', N'uz', Id, NULL, N'@DinaraDeutsch', 6501, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun sizlar bilan nemis tilidagi kishilik olmoshlarini (Personalpronomen) o‘rganamiz', Description = N'Bugun sizlar bilan nemis tilidagi kishilik olmoshlarini (Personalpronomen) o‘rganamiz 

Bularni bilmasdan turib gap tuzishni boshlash qiyin. Shuning uchun avval ularni yodlab olamiz.

— Keyingi postda aynan shu olmoshlar bilan fe''llarni tuslashni o‘rganamiz 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6501';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6433')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Hech nemis tili darajangizni aniqlab ko‘rganmisiz?', N'Hech nemis tili darajangizni aniqlab ko‘rganmisiz? 

Oldinroq kanalga darajani aniqlash testini joylagan edim. Qani, kirib ishlab ko‘ring. Ko‘p vaqtingizni olmaydi.

Test havolasi https://t.me/DinaraDeutsch/4837 

— Testni ishlab bo‘lgach, natijangizning albatta skrinshot qilib kommentariyada qoldiring 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6433', N'uz', Id, NULL, N'@DinaraDeutsch', 6433, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Hech nemis tili darajangizni aniqlab ko‘rganmisiz?', Description = N'Hech nemis tili darajangizni aniqlab ko‘rganmisiz? 

Oldinroq kanalga darajani aniqlash testini joylagan edim. Qani, kirib ishlab ko‘ring. Ko‘p vaqtingizni olmaydi.

Test havolasi https://t.me/DinaraDeutsch/4837 

— Testni ishlab bo‘lgach, natijangizning albatta skrinshot qilib kommentariyada qoldiring 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6433';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6436')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A2 darajada Sprechenga qiynaladiganlar bormi?', N'— A2 darajada Sprechenga qiynaladiganlar bormi?', N'https://t.me/DinaraDeutsch/6436', N'uz', Id, NULL, N'@DinaraDeutsch', 6436, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A2 darajada Sprechenga qiynaladiganlar bormi?', Description = N'— A2 darajada Sprechenga qiynaladiganlar bormi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6436';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6437')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A2 darajada Sprechenga qiynaladiganlar bormi?', N'— A2 darajada Sprechenga qiynaladiganlar bormi?', N'https://t.me/DinaraDeutsch/6437', N'uz', Id, NULL, N'@DinaraDeutsch', 6437, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A2 darajada Sprechenga qiynaladiganlar bormi?', Description = N'— A2 darajada Sprechenga qiynaladiganlar bormi?'
    WHERE Url = N'https://t.me/DinaraDeutsch/6437';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6443')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Tugatdim', N'Tugatdim 

Barcha ma''lumotlarni tartib bilan yozib chiqdim. "Fayl qilib tashlab bering" deb soʻraganlarga fayl qilib beraman.

"Ovozli qilib tushuntirib bering" degan takliflar ham ko‘p bo‘lgandi. Sizlarga shu mavzu bo‘yicha jonli dars o‘tib beraman.

— Menimcha hamma hursand 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6443', N'uz', Id, NULL, N'@DinaraDeutsch', 6443, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Tugatdim', Description = N'Tugatdim 

Barcha ma''lumotlarni tartib bilan yozib chiqdim. "Fayl qilib tashlab bering" deb soʻraganlarga fayl qilib beraman.

"Ovozli qilib tushuntirib bering" degan takliflar ham ko‘p bo‘lgandi. Sizlarga shu mavzu bo‘yicha jonli dars o‘tib beraman.

— Menimcha hamma hursand 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6443';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6454')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sprechen 2-qism 13 bet boʻldi', N'Sprechen 2-qism 13 bet boʻldi 

Noushnikniyam, noutbukniyam zaryadi tugadi, oʻzimniyam 

Gapga shunchalik ustaman deb oʻylamagandim umuman. 

— Fayl ichida aytilayotgan har bitta soʻz oʻzimniki, shunaqa erinmasdan yozadigan ustozni yana qatdan topasila, aytila', N'https://t.me/DinaraDeutsch/6454', N'uz', Id, NULL, N'@DinaraDeutsch', 6454, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sprechen 2-qism 13 bet boʻldi', Description = N'Sprechen 2-qism 13 bet boʻldi 

Noushnikniyam, noutbukniyam zaryadi tugadi, oʻzimniyam 

Gapga shunchalik ustaman deb oʻylamagandim umuman. 

— Fayl ichida aytilayotgan har bitta soʻz oʻzimniki, shunaqa erinmasdan yozadigan ustozni yana qatdan topasila, aytila'
    WHERE Url = N'https://t.me/DinaraDeutsch/6454';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6455')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bonusda aytmoqchi bo''lgan usulimni o''zim o''ylab topganman, shunaqayam aqlli bo''lamanmi eee', N'— Bonusda aytmoqchi bo''lgan usulimni o''zim o''ylab topganman, shunaqayam aqlli bo''lamanmi eee', N'https://t.me/DinaraDeutsch/6455', N'uz', Id, NULL, N'@DinaraDeutsch', 6455, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bonusda aytmoqchi bo''lgan usulimni o''zim o''ylab topganman, shunaqayam aqlli bo''lamanmi eee', Description = N'— Bonusda aytmoqchi bo''lgan usulimni o''zim o''ylab topganman, shunaqayam aqlli bo''lamanmi eee'
    WHERE Url = N'https://t.me/DinaraDeutsch/6455';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6464')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Biz kuzda imtihon topshirishga tayyorlanyapmiz bitta o''quvchim bilan', N'Biz kuzda imtihon topshirishga tayyorlanyapmiz bitta o''quvchim bilan 

- Tartibni o''ta darajada yoqtiradigan ustozila doimgidek birinchi reja tuzib oladi 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6464', N'uz', Id, NULL, N'@DinaraDeutsch', 6464, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Biz kuzda imtihon topshirishga tayyorlanyapmiz bitta o''quvchim bilan', Description = N'Biz kuzda imtihon topshirishga tayyorlanyapmiz bitta o''quvchim bilan 

- Tartibni o''ta darajada yoqtiradigan ustozila doimgidek birinchi reja tuzib oladi 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6464';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6465')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Lisa: Hallo, Tom! Was machst du am Wochenende?', N'Dialog 

Lisa: Hallo, Tom! Was machst du am Wochenende?

Tom: Ich möchte meine Großeltern besuchen, denn ich habe sie lange nicht gesehen.

Lisa: Das ist schön. Fährst du mit dem Zug oder mit dem Bus?

Tom: Ich fahre mit dem Zug, weil es schneller ist.

Lisa: Nach dem Besuch kannst du mir Fotos schicken.

Tom: Ja, natürlich. Wenn ich nach Hause komme, schicke ich sie dir sofort.

Lisa: Vielen Dank! Ich wünsche dir eine schöne Reise.

Tom: Danke! Bis Montag.

Vazifa

Dialogni o‘zbek tiliga tarjima qiling.
 Dialog ichidagi barcha bog‘lovchilarni (Konjunktionen) toping va ularning qanday ma''noda ishlatilganini yozing.
 Dialogdagi bog‘lovchilardan xohlaganlaringizni tanlang va har biri bilan bittadan o‘zingiz mustaqil gap tuzing.
 Dialogni ovoz chiqarib kamida 3 marta o‘qing (Vorlesen) va talaffuzingizni mashq qiling.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6465', N'uz', Id, NULL, N'@DinaraDeutsch', 6465, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Lisa: Hallo, Tom! Was machst du am Wochenende?', Description = N'Dialog 

Lisa: Hallo, Tom! Was machst du am Wochenende?

Tom: Ich möchte meine Großeltern besuchen, denn ich habe sie lange nicht gesehen.

Lisa: Das ist schön. Fährst du mit dem Zug oder mit dem Bus?

Tom: Ich fahre mit dem Zug, weil es schneller ist.

Lisa: Nach dem Besuch kannst du mir Fotos schicken.

Tom: Ja, natürlich. Wenn ich nach Hause komme, schicke ich sie dir sofort.

Lisa: Vielen Dank! Ich wünsche dir eine schöne Reise.

Tom: Danke! Bis Montag.

Vazifa

Dialogni o‘zbek tiliga tarjima qiling.
 Dialog ichidagi barcha bog‘lovchilarni (Konjunktionen) toping va ularning qanday ma''noda ishlatilganini yozing.
 Dialogdagi bog‘lovchilardan xohlaganlaringizni tanlang va har biri bilan bittadan o‘zingiz mustaqil gap tuzing.
 Dialogni ovoz chiqarib kamida 3 marta o‘qing (Vorlesen) va talaffuzingizni mashq qiling.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6465';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6469')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'B2–C1 daraja uchun oʻzimam ishlamoqchi boʻb yurgan kitobimni tashlab beraman sizlarga ham PDF qilib', N'B2–C1 daraja uchun oʻzimam ishlamoqchi boʻb yurgan kitobimni tashlab beraman sizlarga ham PDF qilib 

Kitob ichida nimalar bor desela:
 B2–C1 grammatikasi
 Shu darajada eng ko‘p ishlatiladigan fe''llar
 Har bir mavzu uchun mashqlar

— Aniq bilaman, sizlarga ham yoqadi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6469', N'uz', Id, NULL, N'@DinaraDeutsch', 6469, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'B2–C1 daraja uchun oʻzimam ishlamoqchi boʻb yurgan kitobimni tashlab beraman sizlarga ham PDF qilib', Description = N'B2–C1 daraja uchun oʻzimam ishlamoqchi boʻb yurgan kitobimni tashlab beraman sizlarga ham PDF qilib 

Kitob ichida nimalar bor desela:
 B2–C1 grammatikasi
 Shu darajada eng ko‘p ishlatiladigan fe''llar
 Har bir mavzu uchun mashqlar

— Aniq bilaman, sizlarga ham yoqadi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6469';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6471')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun qaysi darajaga mos kitob tashlay?', N'Bugun qaysi darajaga mos kitob tashlay? 

— Yozila chi kommentga', N'https://t.me/DinaraDeutsch/6471', N'uz', Id, NULL, N'@DinaraDeutsch', 6471, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun qaysi darajaga mos kitob tashlay?', Description = N'Bugun qaysi darajaga mos kitob tashlay? 

— Yozila chi kommentga'
    WHERE Url = N'https://t.me/DinaraDeutsch/6471';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6474')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Assalomu alaykum hammaga', N'Assalomu alaykum hammaga 

Sizlar uchun nemis tilida kim bilandir birinchi marta tanishsangiz, ishlatiladigan eng kerakli gaplardan iborat dialog tuzib qoʻydim. 

— Dialogni yaxshilab oʻrganib olish va suhbatlarda ishlatish sharti bilan hozir joʻnataman 

— Reaksiyalar bosib turing siz ungacha 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6474', N'uz', Id, NULL, N'@DinaraDeutsch', 6474, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Assalomu alaykum hammaga', Description = N'Assalomu alaykum hammaga 

Sizlar uchun nemis tilida kim bilandir birinchi marta tanishsangiz, ishlatiladigan eng kerakli gaplardan iborat dialog tuzib qoʻydim. 

— Dialogni yaxshilab oʻrganib olish va suhbatlarda ishlatish sharti bilan hozir joʻnataman 

— Reaksiyalar bosib turing siz ungacha 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6474';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6371')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Aaaaaa... Bugun A2 kursimizning birinchi darsi bo‘ldi', N'Aaaaaa... Bugun A2 kursimizning birinchi darsi bo‘ldi 

— O‘quvchilarimga, dars qanchalik yoqdi ekan-a? Qiziq, qiziq ...', N'https://t.me/DinaraDeutsch/6371', N'uz', Id, NULL, N'@DinaraDeutsch', 6371, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Aaaaaa... Bugun A2 kursimizning birinchi darsi bo‘ldi', Description = N'Aaaaaa... Bugun A2 kursimizning birinchi darsi bo‘ldi 

— O‘quvchilarimga, dars qanchalik yoqdi ekan-a? Qiziq, qiziq ...'
    WHERE Url = N'https://t.me/DinaraDeutsch/6371';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6380')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'davomida ishlatilgan barcha darslar havolalarini shu yerga jamladim', N'davomida ishlatilgan barcha darslar havolalarini shu yerga jamladim 

Kerakli darsni tez topish va qayta ko‘rib chiqish uchun ushbu ro‘yxatdan foydalanishingiz mumkin. Barchaga foydali bo‘lishiga umid qilaman. 

-dars
 https://t.me/DinaraDeutsch/6175 
 -dars
 https://t.me/DinaraDeutsch/6194 
 -dars
 https://t.me/DinaraDeutsch/6199 
 -dars
 https://t.me/DinaraDeutsch/6206 
 -dars
 https://t.me/DinaraDeutsch/6210 
 -dars
 https://t.me/DinaraDeutsch/6233 
 -dars
 https://t.me/DinaraDeutsch/6237 
 -dars
 https://t.me/DinaraDeutsch/6242 
 -dars
 https://t.me/DinaraDeutsch/6250 
 -dars
 https://t.me/DinaraDeutsch/6257 
 -dars
 https://t.me/DinaraDeutsch/6263 
 -dars
 https://t.me/DinaraDeutsch/6297 
 -dars
 https://t.me/DinaraDeutsch/6301 
 -dars
 https://t.me/DinaraDeutsch/6305 
 -dars
 https://t.me/DinaraDeutsch/6308 
 -dars
 https://t.me/DinaraDeutsch/6323 

— Yoqimli tomosha tilayman .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6380', N'uz', Id, NULL, N'@DinaraDeutsch', 6380, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'davomida ishlatilgan barcha darslar havolalarini shu yerga jamladim', Description = N'davomida ishlatilgan barcha darslar havolalarini shu yerga jamladim 

Kerakli darsni tez topish va qayta ko‘rib chiqish uchun ushbu ro‘yxatdan foydalanishingiz mumkin. Barchaga foydali bo‘lishiga umid qilaman. 

-dars
 https://t.me/DinaraDeutsch/6175 
 -dars
 https://t.me/DinaraDeutsch/6194 
 -dars
 https://t.me/DinaraDeutsch/6199 
 -dars
 https://t.me/DinaraDeutsch/6206 
 -dars
 https://t.me/DinaraDeutsch/6210 
 -dars
 https://t.me/DinaraDeutsch/6233 
 -dars
 https://t.me/DinaraDeutsch/6237 
 -dars
 https://t.me/DinaraDeutsch/6242 
 -dars
 https://t.me/DinaraDeutsch/6250 
 -dars
 https://t.me/DinaraDeutsch/6257 
 -dars
 https://t.me/DinaraDeutsch/6263 
 -dars
 https://t.me/DinaraDeutsch/6297 
 -dars
 https://t.me/DinaraDeutsch/6301 
 -dars
 https://t.me/DinaraDeutsch/6305 
 -dars
 https://t.me/DinaraDeutsch/6308 
 -dars
 https://t.me/DinaraDeutsch/6323 

— Yoqimli tomosha tilayman .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6380';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6385')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A1–A2 darajadagilar, zerikib qolmadilarmi kanalda?', N'A1–A2 darajadagilar, zerikib qolmadilarmi kanalda? 

Hozir sizlar uchun maxsus A1–A2 darajada eng ko‘p ishlatiladigan o‘tgan zamon fe’llarini tashlayman.

— Oldindan ogohlantirish: Bu fe’llar Sprechen, Schreiben va imtihonlarda juda ko‘p oldiyizdan chiqadi.

Shunga yodlab olishni maslahat beraman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6385', N'uz', Id, NULL, N'@DinaraDeutsch', 6385, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A1–A2 darajadagilar, zerikib qolmadilarmi kanalda?', Description = N'A1–A2 darajadagilar, zerikib qolmadilarmi kanalda? 

Hozir sizlar uchun maxsus A1–A2 darajada eng ko‘p ishlatiladigan o‘tgan zamon fe’llarini tashlayman.

— Oldindan ogohlantirish: Bu fe’llar Sprechen, Schreiben va imtihonlarda juda ko‘p oldiyizdan chiqadi.

Shunga yodlab olishni maslahat beraman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6385';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6390')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Ko‘pchilik kanalimiz reklamasini ko‘rgan bo‘lsa kerak', N'Ko‘pchilik kanalimiz reklamasini ko‘rgan bo‘lsa kerak 

Unda B1 darslar 
 deb e''lon berganmiz 

Lekin iltimos, kanalga kirganingizdan keyin qadalgan xabarlarni ham albatta o‘qib chiqing. 

Hali ham bepul darslar qayerda ekanini so‘rayotganlar bor. Barcha muhim ma''lumotlar, darslar qadalgan xabarlarda joylangan boʻladi. 

— Hozir pastda darslarni linkini yana bir marta qoldiraman, topib olishingizga qulay boʻlishi uchun 

https://t.me/DinaraDeutsch/5944 
 https://t.me/DinaraDeutsch/5987 
 https://t.me/DinaraDeutsch/6380 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6390', N'uz', Id, NULL, N'@DinaraDeutsch', 6390, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Ko‘pchilik kanalimiz reklamasini ko‘rgan bo‘lsa kerak', Description = N'Ko‘pchilik kanalimiz reklamasini ko‘rgan bo‘lsa kerak 

Unda B1 darslar 
 deb e''lon berganmiz 

Lekin iltimos, kanalga kirganingizdan keyin qadalgan xabarlarni ham albatta o‘qib chiqing. 

Hali ham bepul darslar qayerda ekanini so‘rayotganlar bor. Barcha muhim ma''lumotlar, darslar qadalgan xabarlarda joylangan boʻladi. 

— Hozir pastda darslarni linkini yana bir marta qoldiraman, topib olishingizga qulay boʻlishi uchun 

https://t.me/DinaraDeutsch/5944 
 https://t.me/DinaraDeutsch/5987 
 https://t.me/DinaraDeutsch/6380 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6390';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6395')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dativ talab qiladigan fe''llar ro‘yxatiyam tayyor bo''lib qoldi', N'Dativ talab qiladigan fe''llar ro‘yxatiyam tayyor bo''lib qoldi 

— Hozir jo''nataman 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6395', N'uz', Id, NULL, N'@DinaraDeutsch', 6395, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dativ talab qiladigan fe''llar ro‘yxatiyam tayyor bo''lib qoldi', Description = N'Dativ talab qiladigan fe''llar ro‘yxatiyam tayyor bo''lib qoldi 

— Hozir jo''nataman 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6395';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6428')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Anna: Hallo, Ben! Hast du heute Zeit?', N'Dialog 

Anna: Hallo, Ben! Hast du heute Zeit?

Ben: Ja, ein bisschen. Warum fragst du?

Anna: Ich möchte in die Stadt gehen, weil ich ein Geschenk für meine Schwester kaufen muss.

Ben: Gerne. Ich komme mit, aber wir müssen uns beeilen.

Anna: Kein Problem. Danach können wir im Café etwas trinken.

Ben: Das klingt gut. Ich habe auch Hunger, deshalb esse ich dort einen Kuchen.

Anna: Super! Dann treffen wir uns um 15 Uhr vor dem Bahnhof.

Ben: Einverstanden. Bis später!

Vazifa
Quyidagi dialog asosida topshiriqlarni bajaring:

Dialogni o‘zbek tiliga tarjima qiling.

Dialog ichidagi barcha bog‘lovchilarni (Konjunktionen) toping va ularning qanday ma''noda ishlatilganini yozing.

Dialogdagi bog‘lovchilardan xohlaganlaringizni tanlang va har biri bilan bittadan o‘zingiz mustaqil gap tuzing.

Dialogni ovoz chiqarib kamida 3 marta o‘qing (Vorlesen) va talaffuzingizni mashq qiling.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6428', N'uz', Id, NULL, N'@DinaraDeutsch', 6428, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Anna: Hallo, Ben! Hast du heute Zeit?', Description = N'Dialog 

Anna: Hallo, Ben! Hast du heute Zeit?

Ben: Ja, ein bisschen. Warum fragst du?

Anna: Ich möchte in die Stadt gehen, weil ich ein Geschenk für meine Schwester kaufen muss.

Ben: Gerne. Ich komme mit, aber wir müssen uns beeilen.

Anna: Kein Problem. Danach können wir im Café etwas trinken.

Ben: Das klingt gut. Ich habe auch Hunger, deshalb esse ich dort einen Kuchen.

Anna: Super! Dann treffen wir uns um 15 Uhr vor dem Bahnhof.

Ben: Einverstanden. Bis später!

Vazifa
Quyidagi dialog asosida topshiriqlarni bajaring:

Dialogni o‘zbek tiliga tarjima qiling.

Dialog ichidagi barcha bog‘lovchilarni (Konjunktionen) toping va ularning qanday ma''noda ishlatilganini yozing.

Dialogdagi bog‘lovchilardan xohlaganlaringizni tanlang va har biri bilan bittadan o‘zingiz mustaqil gap tuzing.

Dialogni ovoz chiqarib kamida 3 marta o‘qing (Vorlesen) va talaffuzingizni mashq qiling.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6428';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6432')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dialog Anna: Hallo, Ben! Hast du heute Zeit? Ben: Ja, ein bisschen. Warum fragst du? Anna: Ich möchte in die Stadt gehen, weil ...', N'Dialog Anna: Hallo, Ben! Hast du heute Zeit? Ben: Ja, ein bisschen. Warum fragst du? Anna: Ich möchte in die Stadt gehen, weil ich ein Geschenk für meine Schwester kaufen muss. Ben: Gerne. Ich komme mit, aber wir müssen uns beeilen. Anna: Kein Problem.…', N'https://t.me/DinaraDeutsch/6432', N'uz', Id, NULL, N'@DinaraDeutsch', 6432, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dialog Anna: Hallo, Ben! Hast du heute Zeit? Ben: Ja, ein bisschen. Warum fragst du? Anna: Ich möchte in die Stadt gehen, weil ...', Description = N'Dialog Anna: Hallo, Ben! Hast du heute Zeit? Ben: Ja, ein bisschen. Warum fragst du? Anna: Ich möchte in die Stadt gehen, weil ich ein Geschenk für meine Schwester kaufen muss. Ben: Gerne. Ich komme mit, aber wir müssen uns beeilen. Anna: Kein Problem.…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6432';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6304')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kechadan beri kimni sprechen qilganini eshitsam, eng ko‘p adashayotgan joyi — Präpositionlar', N'Kechadan beri kimni sprechen qilganini eshitsam, eng ko‘p adashayotgan joyi — Präpositionlar 

So‘zlarni biladi. Grammatikani ham biladi. Lekin auf, an, mit, zu, für, bei, nach ga kelganda 

Iltimos, shuni yodlab tashela endi. Sizlar uchun tayyor qilib qo‘yganman: 
 https://t.me/DinaraDeutsch/4952 

— Eng oson qism sprechen deb o‘ylayman men. Kerakli shablonlar, Präpositionlar va iboralarni yodlab olsangiz, mazza qilib gapirasiz 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6304', N'uz', Id, NULL, N'@DinaraDeutsch', 6304, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kechadan beri kimni sprechen qilganini eshitsam, eng ko‘p adashayotgan joyi — Präpositionlar', Description = N'Kechadan beri kimni sprechen qilganini eshitsam, eng ko‘p adashayotgan joyi — Präpositionlar 

So‘zlarni biladi. Grammatikani ham biladi. Lekin auf, an, mit, zu, für, bei, nach ga kelganda 

Iltimos, shuni yodlab tashela endi. Sizlar uchun tayyor qilib qo‘yganman: 
 https://t.me/DinaraDeutsch/4952 

— Eng oson qism sprechen deb o‘ylayman men. Kerakli shablonlar, Präpositionlar va iboralarni yodlab olsangiz, mazza qilib gapirasiz 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6304';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6309')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kechadan beri kimni sprechen qilganini eshitsam, eng ko‘p adashayotgan joyi — Präpositionlar So‘zlarni biladi. Grammatikani ham...', N'Kechadan beri kimni sprechen qilganini eshitsam, eng ko‘p adashayotgan joyi — Präpositionlar So‘zlarni biladi. Grammatikani ham biladi. Lekin auf, an, mit, zu, für, bei, nach ga kelganda Iltimos, shuni yodlab tashela endi. Sizlar uchun tayyor qilib…', N'https://t.me/DinaraDeutsch/6309', N'uz', Id, NULL, N'@DinaraDeutsch', 6309, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kechadan beri kimni sprechen qilganini eshitsam, eng ko‘p adashayotgan joyi — Präpositionlar So‘zlarni biladi. Grammatikani ham...', Description = N'Kechadan beri kimni sprechen qilganini eshitsam, eng ko‘p adashayotgan joyi — Präpositionlar So‘zlarni biladi. Grammatikani ham biladi. Lekin auf, an, mit, zu, für, bei, nach ga kelganda Iltimos, shuni yodlab tashela endi. Sizlar uchun tayyor qilib…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6309';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6310')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bu 10 ta fe''l A2 darajasida eng ko‘p ishlatiladigan Präposition + fe''l birikmalaridan hisoblanadi sich interessieren für ➝ Ich ...', N'Bu 10 ta fe''l A2 darajasida eng ko‘p ishlatiladigan Präposition + fe''l birikmalaridan hisoblanadi sich interessieren für ➝ Ich interessiere mich für Deutsch. (Men nemis tiliga qiziqaman.) warten auf ➝ Wir warten auf den Bus. (Biz avtobusni kutyapmiz.)…', N'https://t.me/DinaraDeutsch/6310', N'uz', Id, NULL, N'@DinaraDeutsch', 6310, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bu 10 ta fe''l A2 darajasida eng ko‘p ishlatiladigan Präposition + fe''l birikmalaridan hisoblanadi sich interessieren für ➝ Ich ...', Description = N'Bu 10 ta fe''l A2 darajasida eng ko‘p ishlatiladigan Präposition + fe''l birikmalaridan hisoblanadi sich interessieren für ➝ Ich interessiere mich für Deutsch. (Men nemis tiliga qiziqaman.) warten auf ➝ Wir warten auf den Bus. (Biz avtobusni kutyapmiz.)…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6310';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6315')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Lug‘atlarni deyarli doim o‘zim tayyorlagan fayllardan yodlayman', N'Lug‘atlarni deyarli doim o‘zim tayyorlagan fayllardan yodlayman 

Har safar yangi so‘z yodlasam, yoniga imkon qadar qo‘shimcha ma''lumot ham yozib boraman.

Masalan:

Sinonimi
 Antonimi
 Misol gap
 Dativ yoki Akkusativ talab qiladimi
 Agar ot bo‘lsa — verb shakli
 Agar verb bo‘lsa — ot shakli
 O‘sha so‘z qatnashgan ibora yoki birikmalar

Natijada bitta so‘zni emas, uning atrofidagi butun "oilasi"ni o‘rganaman. Shuning uchun lug‘atlar esimda uzoqroq qoladi va gapirayotganda ham osonroq esga tushadi.

— Maslahatim: so‘zlarni yolg‘iz o‘rganmang. Uni boshqa so‘zlar bilan bog‘lab o‘rganing. Miya aynan shunday ma''lumotlarni yaxshiroq eslab qoladi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6315', N'uz', Id, NULL, N'@DinaraDeutsch', 6315, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Lug‘atlarni deyarli doim o‘zim tayyorlagan fayllardan yodlayman', Description = N'Lug‘atlarni deyarli doim o‘zim tayyorlagan fayllardan yodlayman 

Har safar yangi so‘z yodlasam, yoniga imkon qadar qo‘shimcha ma''lumot ham yozib boraman.

Masalan:

Sinonimi
 Antonimi
 Misol gap
 Dativ yoki Akkusativ talab qiladimi
 Agar ot bo‘lsa — verb shakli
 Agar verb bo‘lsa — ot shakli
 O‘sha so‘z qatnashgan ibora yoki birikmalar

Natijada bitta so‘zni emas, uning atrofidagi butun "oilasi"ni o‘rganaman. Shuning uchun lug‘atlar esimda uzoqroq qoladi va gapirayotganda ham osonroq esga tushadi.

— Maslahatim: so‘zlarni yolg‘iz o‘rganmang. Uni boshqa so‘zlar bilan bog‘lab o‘rganing. Miya aynan shunday ma''lumotlarni yaxshiroq eslab qoladi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6315';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6316')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Lug‘atlarni deyarli doim o‘zim tayyorlagan fayllardan yodlayman Har safar yangi so‘z yodlasam, yoniga imkon qadar qo‘shimcha ma...', N'Lug‘atlarni deyarli doim o‘zim tayyorlagan fayllardan yodlayman Har safar yangi so‘z yodlasam, yoniga imkon qadar qo‘shimcha ma''lumot ham yozib boraman. Masalan: Sinonimi Antonimi Misol gap Dativ yoki Akkusativ talab qiladimi Agar ot bo‘lsa —…', N'https://t.me/DinaraDeutsch/6316', N'uz', Id, NULL, N'@DinaraDeutsch', 6316, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Lug‘atlarni deyarli doim o‘zim tayyorlagan fayllardan yodlayman Har safar yangi so‘z yodlasam, yoniga imkon qadar qo‘shimcha ma...', Description = N'Lug‘atlarni deyarli doim o‘zim tayyorlagan fayllardan yodlayman Har safar yangi so‘z yodlasam, yoniga imkon qadar qo‘shimcha ma''lumot ham yozib boraman. Masalan: Sinonimi Antonimi Misol gap Dativ yoki Akkusativ talab qiladimi Agar ot bo‘lsa —…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6316';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6317')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Masalan, men das Interesse so‘zini yodlayotgan bo‘lsam, shunchaki "qiziqish" deb o‘tib ketmasdan: Yoniga darrov shu so‘z bilan ...', N'Masalan, men das Interesse so‘zini yodlayotgan bo‘lsam, shunchaki "qiziqish" deb o‘tib ketmasdan: Yoniga darrov shu so‘z bilan eng ko‘p ishlatiladigan birikmalarni ham yozaman: Interesse haben an + Dativ Interesse zeigen an + Dativ Interesse wecken…', N'https://t.me/DinaraDeutsch/6317', N'uz', Id, NULL, N'@DinaraDeutsch', 6317, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Masalan, men das Interesse so‘zini yodlayotgan bo‘lsam, shunchaki "qiziqish" deb o‘tib ketmasdan: Yoniga darrov shu so‘z bilan ...', Description = N'Masalan, men das Interesse so‘zini yodlayotgan bo‘lsam, shunchaki "qiziqish" deb o‘tib ketmasdan: Yoniga darrov shu so‘z bilan eng ko‘p ishlatiladigan birikmalarni ham yozaman: Interesse haben an + Dativ Interesse zeigen an + Dativ Interesse wecken…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6317';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6319')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Akkusativ va Dativ talab qiladigan fe''llar haqida hali gaplashmagan ekanmiz', N'Akkusativ va Dativ talab qiladigan fe''llar haqida hali gaplashmagan ekanmiz 

Eng ko‘p ishlatiladigan fe''llarni ro‘yxat qilib, yodlab olishga qulay qilib yozib beraman bugun sizlarga.

— Oʻzi hozir Akkusativ yoki Dativ talab qiladigan fe''llardan nechtasini bilasiz? Qani, kommentda yozilachi 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6319', N'uz', Id, NULL, N'@DinaraDeutsch', 6319, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Akkusativ va Dativ talab qiladigan fe''llar haqida hali gaplashmagan ekanmiz', Description = N'Akkusativ va Dativ talab qiladigan fe''llar haqida hali gaplashmagan ekanmiz 

Eng ko‘p ishlatiladigan fe''llarni ro‘yxat qilib, yodlab olishga qulay qilib yozib beraman bugun sizlarga.

— Oʻzi hozir Akkusativ yoki Dativ talab qiladigan fe''llardan nechtasini bilasiz? Qani, kommentda yozilachi 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6319';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6322')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Eng ko''p ishlatiladigan Akkusativ fe''li va ular bilan namunaviy gaplar:', N'Eng ko''p ishlatiladigan Akkusativ fe''li va ular bilan namunaviy gaplar: 

haben - ega bo''lmoq 

Ich habe einen Hund.
Mening itim bor.

brauchen - kerak bo''lmoq 

Wir brauchen mehr Zeit.
Bizga ko''proq vaqt kerak.

sehen - ko''rmoq 

Ich sehe den Lehrer.
Men o''qituvchini ko''ryapman.

finden - topmoq 

Sie findet den Schlüssel.
U kalitni topyapti.

kaufen - sotib olmoq 

Er kauft ein neues Auto.
U yangi mashina sotib olyapti.

besuchen - tashrif buyurmoq 

Ich besuche meine Großeltern.
Men buvim va bobomni yo''qlab boraman.

nehmen - olmoq 

Bitte nimm den Stift.
Iltimos, ruchkani ol.

lesen - o''qimoq 

Sie liest ein interessantes Buch.
U qiziqarli kitob o''qiyapti.

verstehen - tushunmoq 

Ich verstehe die Aufgabe.
Men vazifani tushunyapman.

empfehlen - tavsiya qilmoq 

Ich empfehle dieses Restaurant.
Men bu restoranni tavsiya qilaman.

— Qolgan feʼllar bilan esa siz misol gaplar tuzib commentda qoldiring. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6322', N'uz', Id, NULL, N'@DinaraDeutsch', 6322, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Eng ko''p ishlatiladigan Akkusativ fe''li va ular bilan namunaviy gaplar:', Description = N'Eng ko''p ishlatiladigan Akkusativ fe''li va ular bilan namunaviy gaplar: 

haben - ega bo''lmoq 

Ich habe einen Hund.
Mening itim bor.

brauchen - kerak bo''lmoq 

Wir brauchen mehr Zeit.
Bizga ko''proq vaqt kerak.

sehen - ko''rmoq 

Ich sehe den Lehrer.
Men o''qituvchini ko''ryapman.

finden - topmoq 

Sie findet den Schlüssel.
U kalitni topyapti.

kaufen - sotib olmoq 

Er kauft ein neues Auto.
U yangi mashina sotib olyapti.

besuchen - tashrif buyurmoq 

Ich besuche meine Großeltern.
Men buvim va bobomni yo''qlab boraman.

nehmen - olmoq 

Bitte nimm den Stift.
Iltimos, ruchkani ol.

lesen - o''qimoq 

Sie liest ein interessantes Buch.
U qiziqarli kitob o''qiyapti.

verstehen - tushunmoq 

Ich verstehe die Aufgabe.
Men vazifani tushunyapman.

empfehlen - tavsiya qilmoq 

Ich empfehle dieses Restaurant.
Men bu restoranni tavsiya qilaman.

— Qolgan feʼllar bilan esa siz misol gaplar tuzib commentda qoldiring. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6322';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6324')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun nemis tilidan rosa lug‘at takrorladim', N'Bugun nemis tilidan rosa lug‘at takrorladim 

Deyarli 5 - 6 yil oldin sotib olgan kitobimni (nemischa-inglizcha lug‘at) yana bitta oʻqib chiqyapman.

Kitobni eng yoqqan tomoni: har bir so‘z uchun namunaviy gaplar ham berilgan. Shuning uchun shunchaki lug‘at emas, gap tuzishni ham o‘rganasiz.

— Kim ingliz tilini ham bilsa, kanalga joylab qo‘yaman. Bir vaqtning o‘zida ham nemis tilini, ham ingliz tilini takrorlash uchun juda zo‘r kitob. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6324', N'uz', Id, NULL, N'@DinaraDeutsch', 6324, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun nemis tilidan rosa lug‘at takrorladim', Description = N'Bugun nemis tilidan rosa lug‘at takrorladim 

Deyarli 5 - 6 yil oldin sotib olgan kitobimni (nemischa-inglizcha lug‘at) yana bitta oʻqib chiqyapman.

Kitobni eng yoqqan tomoni: har bir so‘z uchun namunaviy gaplar ham berilgan. Shuning uchun shunchaki lug‘at emas, gap tuzishni ham o‘rganasiz.

— Kim ingliz tilini ham bilsa, kanalga joylab qo‘yaman. Bir vaqtning o‘zida ham nemis tilini, ham ingliz tilini takrorlash uchun juda zo‘r kitob. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6324';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6348')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Anna: Hallo, Ben! Hast du heute Zeit?', N'Dialog 

Anna: Hallo, Ben! Hast du heute Zeit?

Ben: Ja, aber nur am Nachmittag, denn ich muss morgens arbeiten.

Anna: Kein Problem. Wollen wir zusammen einen Kaffee trinken oder spazieren gehen?

Ben: Ich möchte lieber spazieren gehen, weil das Wetter heute schön ist.

Anna: Gute Idee! Danach können wir ein Eis essen.

Ben: Ja, gern. Ich habe heute gute Laune, deshalb möchte ich etwas draußen machen.

Anna: Super! Dann treffen wir uns um 16 Uhr im Park.

Ben: Perfekt! Bis später.

Vazifa

Quyidagi dialog asosida quyidagi topshiriqlarni bajaring:
 Dialogni o‘zbek tiliga tarjima qiling.
 Dialog ichidagi barcha bog‘lovchilarni toping va ularning qanday ma''noda ishlatilganini yozing.
 Dialogdagi bog‘lovchilardan xohlaganlaringizni tanlab, har biri bilan bittadan o‘zingiz mustaqil gap tuzing.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6348', N'uz', Id, NULL, N'@DinaraDeutsch', 6348, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Anna: Hallo, Ben! Hast du heute Zeit?', Description = N'Dialog 

Anna: Hallo, Ben! Hast du heute Zeit?

Ben: Ja, aber nur am Nachmittag, denn ich muss morgens arbeiten.

Anna: Kein Problem. Wollen wir zusammen einen Kaffee trinken oder spazieren gehen?

Ben: Ich möchte lieber spazieren gehen, weil das Wetter heute schön ist.

Anna: Gute Idee! Danach können wir ein Eis essen.

Ben: Ja, gern. Ich habe heute gute Laune, deshalb möchte ich etwas draußen machen.

Anna: Super! Dann treffen wir uns um 16 Uhr im Park.

Ben: Perfekt! Bis später.

Vazifa

Quyidagi dialog asosida quyidagi topshiriqlarni bajaring:
 Dialogni o‘zbek tiliga tarjima qiling.
 Dialog ichidagi barcha bog‘lovchilarni toping va ularning qanday ma''noda ishlatilganini yozing.
 Dialogdagi bog‘lovchilardan xohlaganlaringizni tanlab, har biri bilan bittadan o‘zingiz mustaqil gap tuzing.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6348';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6359')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemis tilida "kerak" deyishda 90% odam xato qiladi', N'Nemis tilida "kerak" deyishda 90% odam xato qiladi 

O‘zbek tilida biz har doim bitta so‘zni ishlatamiz: "kerak".

Lekin nemis tilida vaziyatga qarab ikki xil so‘z ishlatiladi. Ularni adashtirsangiz, gapingiz nemislar uchun g‘alati eshitiladi. Bugun shu xatoni bir martada va butunlay yo‘q qilamiz: 

Ich muss + FE’L
 Biror ishni qilishim shart! (majburiyat, vazifa)

Ich muss arbeiten.
— Men ishlashim kerak.

Ich muss Deutsch lernen.
— Men nemis tilini o‘rganishim kerak.

Ich brauche + OT
 Menga nimadir kerak! (narsa, yordam, ehtiyoj)

Ich brauche Hilfe.
— Menga yordam kerak.

Ich brauche einen Stift.
— Menga ruchka kerak.

Ich brauche arbeiten.
 Ich muss Hilfe.

Bu ikkala gap ham noto‘g‘ri! 

Esda saqlang:

MUSS → HARAKAT (FE’L)
BRAUCHE → NARSA (OT)

— Endi shu 2ta soʻzga gaplar tuzib kommentariyada qoldiring 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6359', N'uz', Id, NULL, N'@DinaraDeutsch', 6359, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemis tilida "kerak" deyishda 90% odam xato qiladi', Description = N'Nemis tilida "kerak" deyishda 90% odam xato qiladi 

O‘zbek tilida biz har doim bitta so‘zni ishlatamiz: "kerak".

Lekin nemis tilida vaziyatga qarab ikki xil so‘z ishlatiladi. Ularni adashtirsangiz, gapingiz nemislar uchun g‘alati eshitiladi. Bugun shu xatoni bir martada va butunlay yo‘q qilamiz: 

Ich muss + FE’L
 Biror ishni qilishim shart! (majburiyat, vazifa)

Ich muss arbeiten.
— Men ishlashim kerak.

Ich muss Deutsch lernen.
— Men nemis tilini o‘rganishim kerak.

Ich brauche + OT
 Menga nimadir kerak! (narsa, yordam, ehtiyoj)

Ich brauche Hilfe.
— Menga yordam kerak.

Ich brauche einen Stift.
— Menga ruchka kerak.

Ich brauche arbeiten.
 Ich muss Hilfe.

Bu ikkala gap ham noto‘g‘ri! 

Esda saqlang:

MUSS → HARAKAT (FE’L)
BRAUCHE → NARSA (OT)

— Endi shu 2ta soʻzga gaplar tuzib kommentariyada qoldiring 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6359';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6365')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Lisa: Hallo, Tom! Was machst du am Wochenende?', N'Dialog 

Lisa: Hallo, Tom! Was machst du am Wochenende?

Tom: Ich möchte meine Großeltern besuchen, weil ich sie lange nicht gesehen habe.

Lisa: Das ist schön. Kommst du danach zu mir?

Tom: Ja, gern. Ich habe am Nachmittag frei, deshalb kann ich kommen.

Lisa: Super! Dann können wir zusammen einen Film schauen oder Pizza essen.

Tom: Gute Idee! Aber ich muss zuerst meine Hausaufgaben machen.

Lisa: Kein Problem. Ruf mich an, wenn du fertig bist.

Tom: Mache ich. Bis Samstag!

Vazifa
Quyidagi dialog asosida quyidagi topshiriqlarni bajaring:
 Dialogni o‘zbek tiliga tarjima qiling.
 Dialog ichidagi barcha bog‘lovchilarni (Konjunktionen) toping va ularning qanday ma''noda ishlatilganini yozing.
 Dialogdagi bog‘lovchilardan xohlaganlaringizni tanlab, har biri bilan bittadan o‘zingiz mustaqil gap tuzing.
 Dialogdan 5 ta yangi so‘z tanlab, ularning o‘zbekcha ma''nosini yozing.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6365', N'uz', Id, NULL, N'@DinaraDeutsch', 6365, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Lisa: Hallo, Tom! Was machst du am Wochenende?', Description = N'Dialog 

Lisa: Hallo, Tom! Was machst du am Wochenende?

Tom: Ich möchte meine Großeltern besuchen, weil ich sie lange nicht gesehen habe.

Lisa: Das ist schön. Kommst du danach zu mir?

Tom: Ja, gern. Ich habe am Nachmittag frei, deshalb kann ich kommen.

Lisa: Super! Dann können wir zusammen einen Film schauen oder Pizza essen.

Tom: Gute Idee! Aber ich muss zuerst meine Hausaufgaben machen.

Lisa: Kein Problem. Ruf mich an, wenn du fertig bist.

Tom: Mache ich. Bis Samstag!

Vazifa
Quyidagi dialog asosida quyidagi topshiriqlarni bajaring:
 Dialogni o‘zbek tiliga tarjima qiling.
 Dialog ichidagi barcha bog‘lovchilarni (Konjunktionen) toping va ularning qanday ma''noda ishlatilganini yozing.
 Dialogdagi bog‘lovchilardan xohlaganlaringizni tanlab, har biri bilan bittadan o‘zingiz mustaqil gap tuzing.
 Dialogdan 5 ta yangi so‘z tanlab, ularning o‘zbekcha ma''nosini yozing.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6365';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6366')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dialog Lisa: Hallo, Tom! Was machst du am Wochenende? Tom: Ich möchte meine Großeltern besuchen, weil ich sie lange nicht geseh...', N'Dialog Lisa: Hallo, Tom! Was machst du am Wochenende? Tom: Ich möchte meine Großeltern besuchen, weil ich sie lange nicht gesehen habe. Lisa: Das ist schön. Kommst du danach zu mir? Tom: Ja, gern. Ich habe am Nachmittag frei, deshalb kann ich kommen.…', N'https://t.me/DinaraDeutsch/6366', N'uz', Id, NULL, N'@DinaraDeutsch', 6366, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dialog Lisa: Hallo, Tom! Was machst du am Wochenende? Tom: Ich möchte meine Großeltern besuchen, weil ich sie lange nicht geseh...', Description = N'Dialog Lisa: Hallo, Tom! Was machst du am Wochenende? Tom: Ich möchte meine Großeltern besuchen, weil ich sie lange nicht gesehen habe. Lisa: Das ist schön. Kommst du danach zu mir? Tom: Ja, gern. Ich habe am Nachmittag frei, deshalb kann ich kommen.…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6366';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6264')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Motivation Brief yozishni boshlab yubordim', N'Motivation Brief yozishni boshlab yubordim 

"Motivation Brief nima o‘zi?" desangiz, qisqacha aytganda, nega aynan sizga grant berishlari kerakligini tushuntiradigan hujjat.

Ya''ni:

— Nega aynan siz?
— Bu imkoniyat sizga nima uchun kerak?
— Siz o‘sha dasturga nima bera olasiz?
— Nega ular yuzlab odamlar orasidan sizni tanlashi kerak?

Shu savollarga 200–300, baʼzan 1000 - 2000 so‘z bilan javob berishingiz kerak bo‘ladi. Buni ChatGPT''da yozdirib yuborish bilan ish bitmaydi. Chunki ular sizning motivatsiyangizni, hayotiy tajribangizni va boshqalardan ajralib turadigan tomonlaringizni ko‘rishni xohlashadi. 

Yana bir gap. Men muvaffaqiyatni ham, muvaffaqiyatsizlikni ham birdek qabul qilaman. O‘tsam ham sizlarga aytaman. Rad javobi olsam ham aytaman. Yashirib o‘tirmayman. Agar oʻtsam sizlarga ham oʻrgataman. 

— Lekin duo qilib turinglar baribir. Nasib qilsa, aylanib kelarmidik birga xixixixi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6264', N'uz', Id, NULL, N'@DinaraDeutsch', 6264, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Motivation Brief yozishni boshlab yubordim', Description = N'Motivation Brief yozishni boshlab yubordim 

"Motivation Brief nima o‘zi?" desangiz, qisqacha aytganda, nega aynan sizga grant berishlari kerakligini tushuntiradigan hujjat.

Ya''ni:

— Nega aynan siz?
— Bu imkoniyat sizga nima uchun kerak?
— Siz o‘sha dasturga nima bera olasiz?
— Nega ular yuzlab odamlar orasidan sizni tanlashi kerak?

Shu savollarga 200–300, baʼzan 1000 - 2000 so‘z bilan javob berishingiz kerak bo‘ladi. Buni ChatGPT''da yozdirib yuborish bilan ish bitmaydi. Chunki ular sizning motivatsiyangizni, hayotiy tajribangizni va boshqalardan ajralib turadigan tomonlaringizni ko‘rishni xohlashadi. 

Yana bir gap. Men muvaffaqiyatni ham, muvaffaqiyatsizlikni ham birdek qabul qilaman. O‘tsam ham sizlarga aytaman. Rad javobi olsam ham aytaman. Yashirib o‘tirmayman. Agar oʻtsam sizlarga ham oʻrgataman. 

— Lekin duo qilib turinglar baribir. Nasib qilsa, aylanib kelarmidik birga xixixixi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6264';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6285')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kanalda foydali postlar ro‘yxatini tayyorlab qo‘yganman', N'Kanalda foydali postlar ro‘yxatini tayyorlab qo‘yganman

Ichida 42 ta foydali post bor: A2, B1, B2, sprechen, grammatika, lug‘at yodlash, imtihonlar va nemis tilini o‘rganish bo‘yicha eng kerakli postlarni bitta joyga yigʻilgan. Kanalga endi qo‘shilganlar uchun ham, eski postlarni topolmayotganlar uchun ham qulay bo‘ladi.

Saqlab qo‘ying: https://t.me/DinaraDeutsch/5515 

— Balki izlayotgan savolingizning javobi allaqachon shu ro‘yxatda bordir. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6285', N'uz', Id, NULL, N'@DinaraDeutsch', 6285, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kanalda foydali postlar ro‘yxatini tayyorlab qo‘yganman', Description = N'Kanalda foydali postlar ro‘yxatini tayyorlab qo‘yganman

Ichida 42 ta foydali post bor: A2, B1, B2, sprechen, grammatika, lug‘at yodlash, imtihonlar va nemis tilini o‘rganish bo‘yicha eng kerakli postlarni bitta joyga yigʻilgan. Kanalga endi qo‘shilganlar uchun ham, eski postlarni topolmayotganlar uchun ham qulay bo‘ladi.

Saqlab qo‘ying: https://t.me/DinaraDeutsch/5515 

— Balki izlayotgan savolingizning javobi allaqachon shu ro‘yxatda bordir. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6285';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6290')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DAAD stipendiyasi hamma xarajatlarni qoplaydimi?', N'DAAD stipendiyasi hamma xarajatlarni qoplaydimi? 

Ha, agar siz DAADning to‘liq stipendiyasini yutsangiz, odatda Germaniya vizasi uchun alohida bank schot ochib, katta summa ko‘rsatishingiz talab qilinmaydi.

Ko‘pchilik DAAD stipendiyalari odatda quyidagilarni qoplaydi:
 Har oy stipendiya puli
 Tibbiy sug‘urta
 Safar xarajatlari uchun yordam
 Ba''zi dasturlarda ijara yoki oila uchun qo‘shimcha to‘lovlar

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6290', N'uz', Id, NULL, N'@DinaraDeutsch', 6290, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DAAD stipendiyasi hamma xarajatlarni qoplaydimi?', Description = N'DAAD stipendiyasi hamma xarajatlarni qoplaydimi? 

Ha, agar siz DAADning to‘liq stipendiyasini yutsangiz, odatda Germaniya vizasi uchun alohida bank schot ochib, katta summa ko‘rsatishingiz talab qilinmaydi.

Ko‘pchilik DAAD stipendiyalari odatda quyidagilarni qoplaydi:
 Har oy stipendiya puli
 Tibbiy sug‘urta
 Safar xarajatlari uchun yordam
 Ba''zi dasturlarda ijara yoki oila uchun qo‘shimcha to‘lovlar

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6290';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6291')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DAAD nima?', N'DAAD nima? 
 DAAD (Deutsche Akademische Austausch Dienst) — Germaniyada o‘qish va ilmiy almashinuv dasturlarini qo‘llab-quvvatlaydigan tashkilot. U talabalar, magistrlar va doktorantlarga stipendiya beradi.

Kimlar ariza bera oladi? 
 Bakalavr (ba’zi maxsus dasturlar)
 Magistratura
 Doktorantura
 Tadqiqotchilar

Odatda yaxshi akademik natija, til sertifikati (IELTS/TestDaF/DAF) talab qilinadi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6291', N'uz', Id, NULL, N'@DinaraDeutsch', 6291, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DAAD nima?', Description = N'DAAD nima? 
 DAAD (Deutsche Akademische Austausch Dienst) — Germaniyada o‘qish va ilmiy almashinuv dasturlarini qo‘llab-quvvatlaydigan tashkilot. U talabalar, magistrlar va doktorantlarga stipendiya beradi.

Kimlar ariza bera oladi? 
 Bakalavr (ba’zi maxsus dasturlar)
 Magistratura
 Doktorantura
 Tadqiqotchilar

Odatda yaxshi akademik natija, til sertifikati (IELTS/TestDaF/DAF) talab qilinadi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6291';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6292')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kanaldagi yana boshqa qoʻshimcha maʼlumotlar:', N'Kanaldagi yana boshqa qoʻshimcha maʼlumotlar: 

https://t.me/DinaraDeutsch/5198 
 https://t.me/DinaraDeutsch/5300?single 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6292', N'uz', Id, NULL, N'@DinaraDeutsch', 6292, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kanaldagi yana boshqa qoʻshimcha maʼlumotlar:', Description = N'Kanaldagi yana boshqa qoʻshimcha maʼlumotlar: 

https://t.me/DinaraDeutsch/5198 
 https://t.me/DinaraDeutsch/5300?single 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6292';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6208')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kanalda 100 000 ta boʻlishimizga atigi 92 732 ta obunachi kera k.', N'— Kanalda 100 000 ta boʻlishimizga atigi 92 732 ta obunachi kera k.', N'https://t.me/DinaraDeutsch/6208', N'uz', Id, NULL, N'@DinaraDeutsch', 6208, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kanalda 100 000 ta boʻlishimizga atigi 92 732 ta obunachi kera k.', Description = N'— Kanalda 100 000 ta boʻlishimizga atigi 92 732 ta obunachi kera k.'
    WHERE Url = N'https://t.me/DinaraDeutsch/6208';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6234')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 6-dars zapisi Bugungi dars rejasi: Grammatika Verben Sprechen Uyga vazifalar: Hausaufgabe: . Gramma...', N'DeutschPower B1 Challenge — 6-dars zapisi Bugungi dars rejasi: Grammatika Verben Sprechen Uyga vazifalar: Hausaufgabe: . Grammatika: Grammatik Aktiv 70, 72 - mavzu, kitobdan to''liq mashqlarini ishlash . Verben + Predloglar: 4-qism 21ta fe''l…', N'https://t.me/DinaraDeutsch/6234', N'uz', Id, NULL, N'@DinaraDeutsch', 6234, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 6-dars zapisi Bugungi dars rejasi: Grammatika Verben Sprechen Uyga vazifalar: Hausaufgabe: . Gramma...', Description = N'DeutschPower B1 Challenge — 6-dars zapisi Bugungi dars rejasi: Grammatika Verben Sprechen Uyga vazifalar: Hausaufgabe: . Grammatika: Grammatik Aktiv 70, 72 - mavzu, kitobdan to''liq mashqlarini ishlash . Verben + Predloglar: 4-qism 21ta fe''l…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6234';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6247')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun butun kunimni bitta savol bilan o‘tkazdim', N'Bugun butun kunimni bitta savol bilan o‘tkazdim 

"Nega sen emas?"

Ertalab podcast eshitayotgandim. Shu savol qulog‘imga chalindi, darrov yozib oldim.

Keyin nima qildim bilasizlarmi?

Har kuni eng ko‘p ko‘zim tushadigan joyga yopishtirib qo‘ydim.

"Ho‘sh, shunga nima qilibdi?" deyishingiz mumkin.

Eshiting, men juda ko‘p duch keladigan gaplarim:

— Charchadim.
— Motivatsiyam yo‘q.
— Zerikdim.
— Hech narsa qilgim kelmayapti.

Shunaqa paytlarda o‘ziyizdan bitta savolni so‘rang: Nega sen emas?

Boshqalar til o‘rganayotgan bo‘lsa, nega sen emas?

Boshqalar kitob o‘qiyotgan bo‘lsa, nega sen emas?

Boshqalar ota-onasi faxrlanadigan farzand bo‘lishga harakat qilayotgan bo‘lsa, nega sen emas?

Podcastda yoshligidan o‘z ustida ishlayotgan, maqsadini topgan, moliyaviy tomondan o‘sayotgan yoshlar haqida gap ketayotgandi.

Shoshilmang, "ular boy oilada tug‘ilgan", "ularga hamma narsa tayyor bo‘lgan" degan xulosaga kelishga.

Ha, ba''zilarining sharoiti yaxshiroqdir.

Lekin bir narsani tan olish kerak:

Ko‘pchiligimiz ularning natijasiga havas qilamiz-u, lekin qilayotgan harakatining hatto 5 foizini ham qilmaymiz.

Qilolmayapmizmi?
Yoki qilishni istamayapmizmi?

Bugun men o‘zimga shu savolni berdim. Siz ham berib ko‘ring.

Nega sen emas? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6247', N'uz', Id, NULL, N'@DinaraDeutsch', 6247, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun butun kunimni bitta savol bilan o‘tkazdim', Description = N'Bugun butun kunimni bitta savol bilan o‘tkazdim 

"Nega sen emas?"

Ertalab podcast eshitayotgandim. Shu savol qulog‘imga chalindi, darrov yozib oldim.

Keyin nima qildim bilasizlarmi?

Har kuni eng ko‘p ko‘zim tushadigan joyga yopishtirib qo‘ydim.

"Ho‘sh, shunga nima qilibdi?" deyishingiz mumkin.

Eshiting, men juda ko‘p duch keladigan gaplarim:

— Charchadim.
— Motivatsiyam yo‘q.
— Zerikdim.
— Hech narsa qilgim kelmayapti.

Shunaqa paytlarda o‘ziyizdan bitta savolni so‘rang: Nega sen emas?

Boshqalar til o‘rganayotgan bo‘lsa, nega sen emas?

Boshqalar kitob o‘qiyotgan bo‘lsa, nega sen emas?

Boshqalar ota-onasi faxrlanadigan farzand bo‘lishga harakat qilayotgan bo‘lsa, nega sen emas?

Podcastda yoshligidan o‘z ustida ishlayotgan, maqsadini topgan, moliyaviy tomondan o‘sayotgan yoshlar haqida gap ketayotgandi.

Shoshilmang, "ular boy oilada tug‘ilgan", "ularga hamma narsa tayyor bo‘lgan" degan xulosaga kelishga.

Ha, ba''zilarining sharoiti yaxshiroqdir.

Lekin bir narsani tan olish kerak:

Ko‘pchiligimiz ularning natijasiga havas qilamiz-u, lekin qilayotgan harakatining hatto 5 foizini ham qilmaymiz.

Qilolmayapmizmi?
Yoki qilishni istamayapmizmi?

Bugun men o‘zimga shu savolni berdim. Siz ham berib ko‘ring.

Nega sen emas? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6247';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6248')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun butun kunimni bitta savol bilan o‘tkazdim "Nega sen emas?" Ertalab podcast eshitayotgandim. Shu savol qulog‘imga chalindi...', N'Bugun butun kunimni bitta savol bilan o‘tkazdim "Nega sen emas?" Ertalab podcast eshitayotgandim. Shu savol qulog‘imga chalindi, darrov yozib oldim. Keyin nima qildim bilasizlarmi? Har kuni eng ko‘p ko‘zim tushadigan joyga yopishtirib qo‘ydim. "Ho‘sh…', N'https://t.me/DinaraDeutsch/6248', N'uz', Id, NULL, N'@DinaraDeutsch', 6248, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun butun kunimni bitta savol bilan o‘tkazdim "Nega sen emas?" Ertalab podcast eshitayotgandim. Shu savol qulog‘imga chalindi...', Description = N'Bugun butun kunimni bitta savol bilan o‘tkazdim "Nega sen emas?" Ertalab podcast eshitayotgandim. Shu savol qulog‘imga chalindi, darrov yozib oldim. Keyin nima qildim bilasizlarmi? Har kuni eng ko‘p ko‘zim tushadigan joyga yopishtirib qo‘ydim. "Ho‘sh…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6248';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6249')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun video qilaman deb turgandim shunda aytib qolishdi — Videoni qisqaroq qiling. — Odamlarning diqqati juda pas hozir. — 1 mi...', N'Bugun video qilaman deb turgandim shunda aytib qolishdi — Videoni qisqaroq qiling. — Odamlarning diqqati juda pas hozir. — 1 minutdan uzun bo‘lsa, ko‘rmay qo‘yadi. Qiziqib statistikalarga qarab chiqdim. Ba''zi tadqiqotlarda insonning o‘rtacha diqqat davomiyligi…', N'https://t.me/DinaraDeutsch/6249', N'uz', Id, NULL, N'@DinaraDeutsch', 6249, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun video qilaman deb turgandim shunda aytib qolishdi — Videoni qisqaroq qiling. — Odamlarning diqqati juda pas hozir. — 1 mi...', Description = N'Bugun video qilaman deb turgandim shunda aytib qolishdi — Videoni qisqaroq qiling. — Odamlarning diqqati juda pas hozir. — 1 minutdan uzun bo‘lsa, ko‘rmay qo‘yadi. Qiziqib statistikalarga qarab chiqdim. Ba''zi tadqiqotlarda insonning o‘rtacha diqqat davomiyligi…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6249';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6252')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Kanalda tekin darslar juda ko‘p', N'Kanalda tekin darslar juda ko‘p 

A2 ham bor
 https://t.me/DinaraDeutsch/5335 
B1 ham bor
 https://t.me/DinaraDeutsch/5944 
B2 ham bor 
 https://t.me/DinaraDeutsch/4655 

Menda qadriyat biroz boshqacharoq. Toʻgʻri kelajakda millioner bo‘lishni xohlayman. Lekin hamma narsani pullab boy bo‘lishni xohlamayman. Bunaqa boylikni keragi ham yoʻq. 

— Pullik kurslarim bormi?
— Ha, bor.

Lekin hozir qabul yopilgan.

Lekin bepul darslarim, foydali postlarim va materiallarim kanalda doim bor. Foydalanishni istagan odam uchun eshiklar doim ochiq: https://t.me/DinaraDeutsch/5515 

— Bilim olishni xohlagan odam uchun bu kanalda material yetarlicha koʻp. Toʻgʻrimi? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6252', N'uz', Id, NULL, N'@DinaraDeutsch', 6252, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Kanalda tekin darslar juda ko‘p', Description = N'Kanalda tekin darslar juda ko‘p 

A2 ham bor
 https://t.me/DinaraDeutsch/5335 
B1 ham bor
 https://t.me/DinaraDeutsch/5944 
B2 ham bor 
 https://t.me/DinaraDeutsch/4655 

Menda qadriyat biroz boshqacharoq. Toʻgʻri kelajakda millioner bo‘lishni xohlayman. Lekin hamma narsani pullab boy bo‘lishni xohlamayman. Bunaqa boylikni keragi ham yoʻq. 

— Pullik kurslarim bormi?
— Ha, bor.

Lekin hozir qabul yopilgan.

Lekin bepul darslarim, foydali postlarim va materiallarim kanalda doim bor. Foydalanishni istagan odam uchun eshiklar doim ochiq: https://t.me/DinaraDeutsch/5515 

— Bilim olishni xohlagan odam uchun bu kanalda material yetarlicha koʻp. Toʻgʻrimi? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6252';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6172')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Germaniyaga Ausbildung orqali qanday ketish mumkin? Ausbildung — bu Germaniyada o‘qish + ishlash tizimi. Ya’ni siz bir vaqtning...', N'Germaniyaga Ausbildung orqali qanday ketish mumkin? Ausbildung — bu Germaniyada o‘qish + ishlash tizimi. Ya’ni siz bir vaqtning o‘zida kasb o‘rganasiz va oylik ham olasiz . Kerak bo‘ladigan asosiy talablar: — Nemis tili kamida B1/B2 — CV va motivatsion…', N'https://t.me/DinaraDeutsch/6172', N'uz', Id, NULL, N'@DinaraDeutsch', 6172, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Germaniyaga Ausbildung orqali qanday ketish mumkin? Ausbildung — bu Germaniyada o‘qish + ishlash tizimi. Ya’ni siz bir vaqtning...', Description = N'Germaniyaga Ausbildung orqali qanday ketish mumkin? Ausbildung — bu Germaniyada o‘qish + ishlash tizimi. Ya’ni siz bir vaqtning o‘zida kasb o‘rganasiz va oylik ham olasiz . Kerak bo‘ladigan asosiy talablar: — Nemis tili kamida B1/B2 — CV va motivatsion…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6172';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6173')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Studienkolleg nima?', N'Studienkolleg nima? 

Studienkolleg — Germaniyada universitetga kirishdan oldingi 1 yillik tayyorlov dasturi.

Agar sizning maktab attestatingiz Germaniya Abitur (bitiruv) darajasiga teng bo‘lmasa, unda avval Studienkollegda o‘qish talab qilinadi. Chunki Germaniyada oliy ta’limga kirish uchun odatda 12 yillik ta’lim kerak bo‘ladi.

O‘zbekistonda esa ta’lim 11 yillik bo‘lgani uchun ko‘p hollarda aynan shu 1 yillik tayyorlov bosqichi kerak bo‘ladi .

Yo‘nalishlar:
- M-Kurs: tibbiyot va biologiya
- T-Kurs: IT, engineering, matematika
- W-Kurs: biznes va iqtisod
- G-Kurs: gumanitar yo‘nalishlar

Kerak bo‘ladiganlar:
— Nemis tili B1/B2
— Attestat
— Kirish imtihoni (Aufnahmeprüfung)

Eng yaxshi tomoni:
Davlat Studienkolleglari deyarli bepul (faqat semestr to‘lovi bor). Xususiylari esa qimmatroq bo‘lishi mumkin.

Eng katta imkoniyat esa Studienkollegdan keyin Germaniya universitetlariga kirish yo‘li ochiladi.

— Reaksiyaxo''r ustozilaga 77 ta " " reaksiya yigʻib bersela, to‘liqroq ma’lumot beraman .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6173', N'uz', Id, NULL, N'@DinaraDeutsch', 6173, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Studienkolleg nima?', Description = N'Studienkolleg nima? 

Studienkolleg — Germaniyada universitetga kirishdan oldingi 1 yillik tayyorlov dasturi.

Agar sizning maktab attestatingiz Germaniya Abitur (bitiruv) darajasiga teng bo‘lmasa, unda avval Studienkollegda o‘qish talab qilinadi. Chunki Germaniyada oliy ta’limga kirish uchun odatda 12 yillik ta’lim kerak bo‘ladi.

O‘zbekistonda esa ta’lim 11 yillik bo‘lgani uchun ko‘p hollarda aynan shu 1 yillik tayyorlov bosqichi kerak bo‘ladi .

Yo‘nalishlar:
- M-Kurs: tibbiyot va biologiya
- T-Kurs: IT, engineering, matematika
- W-Kurs: biznes va iqtisod
- G-Kurs: gumanitar yo‘nalishlar

Kerak bo‘ladiganlar:
— Nemis tili B1/B2
— Attestat
— Kirish imtihoni (Aufnahmeprüfung)

Eng yaxshi tomoni:
Davlat Studienkolleglari deyarli bepul (faqat semestr to‘lovi bor). Xususiylari esa qimmatroq bo‘lishi mumkin.

Eng katta imkoniyat esa Studienkollegdan keyin Germaniya universitetlariga kirish yo‘li ochiladi.

— Reaksiyaxo''r ustozilaga 77 ta " " reaksiya yigʻib bersela, to‘liqroq ma’lumot beraman .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6173';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6174')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Studienkolleg nima? Studienkolleg — Germaniyada universitetga kirishdan oldingi 1 yillik tayyorlov dasturi. Agar sizning maktab...', N'Studienkolleg nima? Studienkolleg — Germaniyada universitetga kirishdan oldingi 1 yillik tayyorlov dasturi. Agar sizning maktab attestatingiz Germaniya Abitur (bitiruv) darajasiga teng bo‘lmasa, unda avval Studienkollegda o‘qish talab qilinadi. Chunki…', N'https://t.me/DinaraDeutsch/6174', N'uz', Id, NULL, N'@DinaraDeutsch', 6174, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Studienkolleg nima? Studienkolleg — Germaniyada universitetga kirishdan oldingi 1 yillik tayyorlov dasturi. Agar sizning maktab...', Description = N'Studienkolleg nima? Studienkolleg — Germaniyada universitetga kirishdan oldingi 1 yillik tayyorlov dasturi. Agar sizning maktab attestatingiz Germaniya Abitur (bitiruv) darajasiga teng bo‘lmasa, unda avval Studienkollegda o‘qish talab qilinadi. Chunki…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6174';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6176')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'DeutschPower B1 Challenge — 1-dars zapisi Bugungi dars rejasi: Grammatika Verben Podcast eshitish Sprechen Uyga vazifalar: Haus...', N'DeutschPower B1 Challenge — 1-dars zapisi Bugungi dars rejasi: Grammatika Verben Podcast eshitish Sprechen Uyga vazifalar: Hausaufgabe: . Grammatika: Grammatik Aktiv 80-mavzu, kitobdan to''liq mashqlarini ishlash . Verben + Predloglar: 21ta…', N'https://t.me/DinaraDeutsch/6176', N'uz', Id, NULL, N'@DinaraDeutsch', 6176, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'DeutschPower B1 Challenge — 1-dars zapisi Bugungi dars rejasi: Grammatika Verben Podcast eshitish Sprechen Uyga vazifalar: Haus...', Description = N'DeutschPower B1 Challenge — 1-dars zapisi Bugungi dars rejasi: Grammatika Verben Podcast eshitish Sprechen Uyga vazifalar: Hausaufgabe: . Grammatika: Grammatik Aktiv 80-mavzu, kitobdan to''liq mashqlarini ishlash . Verben + Predloglar: 21ta…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6176';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6178')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nega o‘qituvchi bo‘lganman?', N'Nega o‘qituvchi bo‘lganman? 

Men boy oilada katta bo‘lmaganman. Shu kungacha qilmagan ishim ham qolmagan, shekilli . 

Dalada ishlaganman.
Ofitsiant bo‘lganman.
Tikuvchilik ham qilganman. 

Va oxiri ustozlik sohasiga kirib kelganman. 

Birinchi marta dars berishni boshlaganimda hali 9–10 yoshlar atrofida edim. Yoz oylarida ko‘chamizdagi bolalarni yig‘ib, yozish va o‘qishni mashq qildirardim . Qo‘shnilarimiz ertalab ishga ketayotib bolalarini daftar-ruchkasi bilan uyimizga tashlab ketishardi. Men esa “kichkina ustoz” bo‘lib ularni o‘qitardim .

Balki o‘sha paytdanoq ichimda ustozlikka mehr paydo bo‘lgandir. Chunki 16 yoshimda mendan ancha katta insonlarga nemis tilidan dars bera boshlaganimda ham menda qo‘rquv bo‘lmagan. Uddalay olishimga ishonganman .

Lekin rostini aytsam, ustozlikni tanlashimga buning o‘zi sabab bo‘lmagan. Issiq kunlarda dalada ishlab yurgan paytlarim oʻylardim: “Bir kuni meni ham salqin xonam boʻladi, o‘zim yaxshi ko‘rgan ish bilan shug‘ullanaman…” derdim .

O‘sha paytda meni o‘sha hayotdan olib chiqib ketadigan bittagina imkoniyat bor edi — nemis tilidagi bilimim. Shu bilimni ushlab, sekin-sekin bugungi darajagacha chiqdim .

Bir paytlar o‘zimni qutqarish uchun tanlagan yo‘lim… hozir hayotimning mazmuniga aylanib ketdi .

— Endi dars bersam, o‘quvchilar bilan soatlab gaplashsam, ularning natijasini ko‘rsam, boshqacha xursand bo‘laman . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6178', N'uz', Id, NULL, N'@DinaraDeutsch', 6178, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nega o‘qituvchi bo‘lganman?', Description = N'Nega o‘qituvchi bo‘lganman? 

Men boy oilada katta bo‘lmaganman. Shu kungacha qilmagan ishim ham qolmagan, shekilli . 

Dalada ishlaganman.
Ofitsiant bo‘lganman.
Tikuvchilik ham qilganman. 

Va oxiri ustozlik sohasiga kirib kelganman. 

Birinchi marta dars berishni boshlaganimda hali 9–10 yoshlar atrofida edim. Yoz oylarida ko‘chamizdagi bolalarni yig‘ib, yozish va o‘qishni mashq qildirardim . Qo‘shnilarimiz ertalab ishga ketayotib bolalarini daftar-ruchkasi bilan uyimizga tashlab ketishardi. Men esa “kichkina ustoz” bo‘lib ularni o‘qitardim .

Balki o‘sha paytdanoq ichimda ustozlikka mehr paydo bo‘lgandir. Chunki 16 yoshimda mendan ancha katta insonlarga nemis tilidan dars bera boshlaganimda ham menda qo‘rquv bo‘lmagan. Uddalay olishimga ishonganman .

Lekin rostini aytsam, ustozlikni tanlashimga buning o‘zi sabab bo‘lmagan. Issiq kunlarda dalada ishlab yurgan paytlarim oʻylardim: “Bir kuni meni ham salqin xonam boʻladi, o‘zim yaxshi ko‘rgan ish bilan shug‘ullanaman…” derdim .

O‘sha paytda meni o‘sha hayotdan olib chiqib ketadigan bittagina imkoniyat bor edi — nemis tilidagi bilimim. Shu bilimni ushlab, sekin-sekin bugungi darajagacha chiqdim .

Bir paytlar o‘zimni qutqarish uchun tanlagan yo‘lim… hozir hayotimning mazmuniga aylanib ketdi .

— Endi dars bersam, o‘quvchilar bilan soatlab gaplashsam, ularning natijasini ko‘rsam, boshqacha xursand bo‘laman . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6178';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6181')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Shunaqa fikrlarni o‘qiganimdan keyin… men qanaqasiga to‘xtab qolishim mumkin?', N'Shunaqa fikrlarni o‘qiganimdan keyin… men qanaqasiga to‘xtab qolishim mumkin? 

To‘g‘risi, mendagi energiya, motivatsiya va harakatning katta sababchisi — sizlar.

Sizlarning “foydali bo‘ldi”, “ tushundim ”, “ motivatsiya oldim” , "energiyali ustozsiz " degan gaplaringiz mendagi barcha energiyani qayta yoqadi. Shuning uchun har bir fikringizni qadrlayman .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6181', N'uz', Id, NULL, N'@DinaraDeutsch', 6181, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Shunaqa fikrlarni o‘qiganimdan keyin… men qanaqasiga to‘xtab qolishim mumkin?', Description = N'Shunaqa fikrlarni o‘qiganimdan keyin… men qanaqasiga to‘xtab qolishim mumkin? 

To‘g‘risi, mendagi energiya, motivatsiya va harakatning katta sababchisi — sizlar.

Sizlarning “foydali bo‘ldi”, “ tushundim ”, “ motivatsiya oldim” , "energiyali ustozsiz " degan gaplaringiz mendagi barcha energiyani qayta yoqadi. Shuning uchun har bir fikringizni qadrlayman .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6181';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6190')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Shadowing — nemis tilini tezroq gapirishga o‘rgatadigan eng kuchli usullardan biri', N'Shadowing — nemis tilini tezroq gapirishga o‘rgatadigan eng kuchli usullardan biri 

Qanday qilinadi?

Nemischa audio yoki video qo‘yasiz
 Eshitgan gapiyizni darrov ortidan qaytarasiz
 Aynan o‘sha intonatsiya va talaffuz bilan takrorlashingiz kerak

Masalan:
“Hallo zusammen!” desa, siz ham: “Hallo zusammen!” deysiz .

Boshida qiyin bo‘lishi tabiiy. Hatto tilingiz “bo‘ysunmay” qoladi. Lekin aynan shu mashq sprechendagi qo‘rquvni yoʻqotadi va erkin gapirishga o‘rgatadi .

— Siz ham oldin shadowing qilib ko‘rganmisiz? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6190', N'uz', Id, NULL, N'@DinaraDeutsch', 6190, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Shadowing — nemis tilini tezroq gapirishga o‘rgatadigan eng kuchli usullardan biri', Description = N'Shadowing — nemis tilini tezroq gapirishga o‘rgatadigan eng kuchli usullardan biri 

Qanday qilinadi?

Nemischa audio yoki video qo‘yasiz
 Eshitgan gapiyizni darrov ortidan qaytarasiz
 Aynan o‘sha intonatsiya va talaffuz bilan takrorlashingiz kerak

Masalan:
“Hallo zusammen!” desa, siz ham: “Hallo zusammen!” deysiz .

Boshida qiyin bo‘lishi tabiiy. Hatto tilingiz “bo‘ysunmay” qoladi. Lekin aynan shu mashq sprechendagi qo‘rquvni yoʻqotadi va erkin gapirishga o‘rgatadi .

— Siz ham oldin shadowing qilib ko‘rganmisiz? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6190';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6191')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Shadowing — nemis tilini tezroq gapirishga o‘rgatadigan eng kuchli usullardan biri Qanday qilinadi? Nemischa audio yoki video q...', N'Shadowing — nemis tilini tezroq gapirishga o‘rgatadigan eng kuchli usullardan biri Qanday qilinadi? Nemischa audio yoki video qo‘yasiz Eshitgan gapiyizni darrov ortidan qaytarasiz Aynan o‘sha intonatsiya va talaffuz bilan takrorlashingiz kerak…', N'https://t.me/DinaraDeutsch/6191', N'uz', Id, NULL, N'@DinaraDeutsch', 6191, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Shadowing — nemis tilini tezroq gapirishga o‘rgatadigan eng kuchli usullardan biri Qanday qilinadi? Nemischa audio yoki video q...', Description = N'Shadowing — nemis tilini tezroq gapirishga o‘rgatadigan eng kuchli usullardan biri Qanday qilinadi? Nemischa audio yoki video qo‘yasiz Eshitgan gapiyizni darrov ortidan qaytarasiz Aynan o‘sha intonatsiya va talaffuz bilan takrorlashingiz kerak…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6191';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6192')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sprechenni oshirish uchun eng oddiy, lekin eng foydali mashqlardan biri — monolog qilish', N'Sprechenni oshirish uchun eng oddiy, lekin eng foydali mashqlardan biri — monolog qilish 

Qanday qilinadi? 

Telefon kamerasi yoki voice recorderni yoqasiz
 5–10 daqiqa nemischada o‘zingiz gapirasiz

Nima haqida gapirish mumkin?
 Kuningiz qanday o‘tgani
 Qayerlarga borganingiz
 Kimlar bilan uchrashganingiz

Boshida juda oddiy va qisqa gapirasiz — bu normal. Keyin esa asta-sekin yangi so‘zlar va iboralarni qo‘shib borasiz .

Eng muhimi — grammatika emas.
Muhimi — miyani nemischada fikrlash va gapirishga o‘rgatish 

— Postni 7 yildan beri nemis tili o‘rganib ham hali gapira olmayotgan tanishingizga yuborib qo‘ying .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6192', N'uz', Id, NULL, N'@DinaraDeutsch', 6192, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sprechenni oshirish uchun eng oddiy, lekin eng foydali mashqlardan biri — monolog qilish', Description = N'Sprechenni oshirish uchun eng oddiy, lekin eng foydali mashqlardan biri — monolog qilish 

Qanday qilinadi? 

Telefon kamerasi yoki voice recorderni yoqasiz
 5–10 daqiqa nemischada o‘zingiz gapirasiz

Nima haqida gapirish mumkin?
 Kuningiz qanday o‘tgani
 Qayerlarga borganingiz
 Kimlar bilan uchrashganingiz

Boshida juda oddiy va qisqa gapirasiz — bu normal. Keyin esa asta-sekin yangi so‘zlar va iboralarni qo‘shib borasiz .

Eng muhimi — grammatika emas.
Muhimi — miyani nemischada fikrlash va gapirishga o‘rgatish 

— Postni 7 yildan beri nemis tili o‘rganib ham hali gapira olmayotgan tanishingizga yuborib qo‘ying .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6192';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5979')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Live stream finished (23 minutes)', N'Live stream finished (23 minutes)', N'https://t.me/DinaraDeutsch/5979', N'uz', Id, NULL, N'@DinaraDeutsch', 5979, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Live stream finished (23 minutes)', Description = N'Live stream finished (23 minutes)'
    WHERE Url = N'https://t.me/DinaraDeutsch/5979';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5983')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Foydali postlar roʻyxatimiz esingizdami?', N'Foydali postlar roʻyxatimiz esingizdami?

Oʻshani yangilab, yana bir ikkita narsa qoʻshib qoʻydim. 

Agar shunaqa roʻyxat borligidan hali xabaringiz boʻlmasa, bemalol bu yerda oʻqib olsangiz boʻladi: 

Foydali postlar roʻyxati: https://t.me/DinaraDeutsch/5515 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5983', N'uz', Id, NULL, N'@DinaraDeutsch', 5983, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Foydali postlar roʻyxatimiz esingizdami?', Description = N'Foydali postlar roʻyxatimiz esingizdami?

Oʻshani yangilab, yana bir ikkita narsa qoʻshib qoʻydim. 

Agar shunaqa roʻyxat borligidan hali xabaringiz boʻlmasa, bemalol bu yerda oʻqib olsangiz boʻladi: 

Foydali postlar roʻyxati: https://t.me/DinaraDeutsch/5515 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5983';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5987')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'i ndividual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', N'i ndividual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:

Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

1-dars 
 2-dars 
 3-dars 
 4-dars 
 5-dars 
 6-dars 

— Hozircha kanalda shu darslar bor. B1 endi boshlaganlar uchun juda mos keladi. 

@ DinaraDeutsch', N'https://t.me/DinaraDeutsch/5987', N'uz', Id, NULL, N'@DinaraDeutsch', 5987, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'i ndividual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim', Description = N'i ndividual darsimni kanalda, sizlarni ko‘z oldingizda o‘tmoqchiman degandim 

Darslar Pluspunkt B1 kitobidan bo‘ladi. Dars davomida shu kitob boʻyicha:

Har bitta kapitelni ishlab chiqamiz
 Lesen textlarni birga tarjima qilamiz 
 Tahlil qilamiz
 Grammatika o''tamiz

1-dars 
 2-dars 
 3-dars 
 4-dars 
 5-dars 
 6-dars 

— Hozircha kanalda shu darslar bor. B1 endi boshlaganlar uchun juda mos keladi. 

@ DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5987';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5993')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Hammaga katta rahmat', N'Hammaga katta rahmat 

Ertalabdan shunchalik e’tibor bilan tabriklab chiqdila… to‘g‘risi, shu e’tibor meni hammasidan ham koʻproq xursand qildi .

Shunchaki “tug‘ilgan bo‘lsa tug‘ilibdi” demasdan, iliq va samimiy tilaklaringiz bilan bugungi kunimni eng chiroyli kunlardan biriga aylantirdila .

Universitetda ham guruhdoshlarim tabriklashdi, hammangizga rahmat, hammangizni yaxshi ko‘raman .

O‘zi tug‘ilgan kunimni katta qilib nishonlamayman, shuning uchun bu safar ham tort-shirinlik qilib o‘tirmadim . Kecha-bugun biroz og‘rib yurdim, shundayam 2 para o‘qishga borib keldim… keyin kelib yana yotdim. Shu bilan bir kun oʻtib ketdi.

Lekin A1 o‘quvchilar bilan dars o‘tdik baribir. Bugun marafonning 5-kunni edi, qiziqarli dars bilan tugatdik. Shunaqa berilib dars o‘tdim oʻziyam, og‘rig‘im ham esimdan chiqib ketdi .

Orada sovg‘alarimniyam ovoldim. Kitoblar berishdi. Oldindan aytib qo‘yaman, o‘qishga berib turmayman . 4 ta kitob sovg‘a qilishibdi… rosa qimmatga tushgandir .

To‘g‘risi, boshqalar tomonidan qadrlanish, e’zozlanish — juda boshqacha his. Hammangizdan xursandman. Siz bor ekansiz — men borman. 

﻿
Iliq tabriklar, gullar, shirinliklar va kitoblar uchun yana bir bor rahmat .

— Bir paytlar “o‘qituvchi bo‘lib nima toparding, boshqa ish top” deyishganda juda hafa bo‘lardim. Endi esa yana shunaqa savol berishsa, javobim tayyor:
o‘qituvchi bo‘lib sizdek mehribon obunachilarimni, do‘stlarimni va yaqinlarimni topdim . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5993', N'uz', Id, NULL, N'@DinaraDeutsch', 5993, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Hammaga katta rahmat', Description = N'Hammaga katta rahmat 

Ertalabdan shunchalik e’tibor bilan tabriklab chiqdila… to‘g‘risi, shu e’tibor meni hammasidan ham koʻproq xursand qildi .

Shunchaki “tug‘ilgan bo‘lsa tug‘ilibdi” demasdan, iliq va samimiy tilaklaringiz bilan bugungi kunimni eng chiroyli kunlardan biriga aylantirdila .

Universitetda ham guruhdoshlarim tabriklashdi, hammangizga rahmat, hammangizni yaxshi ko‘raman .

O‘zi tug‘ilgan kunimni katta qilib nishonlamayman, shuning uchun bu safar ham tort-shirinlik qilib o‘tirmadim . Kecha-bugun biroz og‘rib yurdim, shundayam 2 para o‘qishga borib keldim… keyin kelib yana yotdim. Shu bilan bir kun oʻtib ketdi.

Lekin A1 o‘quvchilar bilan dars o‘tdik baribir. Bugun marafonning 5-kunni edi, qiziqarli dars bilan tugatdik. Shunaqa berilib dars o‘tdim oʻziyam, og‘rig‘im ham esimdan chiqib ketdi .

Orada sovg‘alarimniyam ovoldim. Kitoblar berishdi. Oldindan aytib qo‘yaman, o‘qishga berib turmayman . 4 ta kitob sovg‘a qilishibdi… rosa qimmatga tushgandir .

To‘g‘risi, boshqalar tomonidan qadrlanish, e’zozlanish — juda boshqacha his. Hammangizdan xursandman. Siz bor ekansiz — men borman. 

﻿
Iliq tabriklar, gullar, shirinliklar va kitoblar uchun yana bir bor rahmat .

— Bir paytlar “o‘qituvchi bo‘lib nima toparding, boshqa ish top” deyishganda juda hafa bo‘lardim. Endi esa yana shunaqa savol berishsa, javobim tayyor:
o‘qituvchi bo‘lib sizdek mehribon obunachilarimni, do‘stlarimni va yaqinlarimni topdim . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5993';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6029')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemis tilida eng muhim skill qaysi deb o‘ylaysiz?', N'Nemis tilida eng muhim skill qaysi deb o‘ylaysiz? 

Grammatikami?
 So‘z yodlashmi?
 Yoki test ishlashmi?

Yo‘q.

Eng muhimi — GAPIRISH

Ko‘pchilikda bitta muammo:
Grammatikani tushunadi, test ham ishlaydi, lekin gapirishga kelganda miyasi “qotib” qoladi. 

Imtixonda ham aynan GAPIRISH qismidan ko''pchilik yiqiladi. Lekin mening o''quvchilarim emas. 

Chunki men har bir kursni aynan gapirish qismiga urg''u bergan holda ishlab chiqaman. O''quvchilar bilan sprechen qilish uchun kuratorlar olaman. 

Har bir dars davomida:
 gapirtirish
 savol-javob
 dialoglar
 qo‘rqmasdan fikr aytish ustida ishlaymiz

Va natija?

21 kunlik marathon qatnashchilari natijalari sizga o‘zi hammasini ko‘rsatadi… 

Bu yerda natijalarni koʻrsangiz boʻladi.

Diskussion qilishni bilmaydigan o''quvchilarim kurs oxirida to''xtamasdan 2 minut "sayrashni" o''rganib olishgan .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6029', N'uz', Id, NULL, N'@DinaraDeutsch', 6029, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemis tilida eng muhim skill qaysi deb o‘ylaysiz?', Description = N'Nemis tilida eng muhim skill qaysi deb o‘ylaysiz? 

Grammatikami?
 So‘z yodlashmi?
 Yoki test ishlashmi?

Yo‘q.

Eng muhimi — GAPIRISH

Ko‘pchilikda bitta muammo:
Grammatikani tushunadi, test ham ishlaydi, lekin gapirishga kelganda miyasi “qotib” qoladi. 

Imtixonda ham aynan GAPIRISH qismidan ko''pchilik yiqiladi. Lekin mening o''quvchilarim emas. 

Chunki men har bir kursni aynan gapirish qismiga urg''u bergan holda ishlab chiqaman. O''quvchilar bilan sprechen qilish uchun kuratorlar olaman. 

Har bir dars davomida:
 gapirtirish
 savol-javob
 dialoglar
 qo‘rqmasdan fikr aytish ustida ishlaymiz

Va natija?

21 kunlik marathon qatnashchilari natijalari sizga o‘zi hammasini ko‘rsatadi… 

Bu yerda natijalarni koʻrsangiz boʻladi.

Diskussion qilishni bilmaydigan o''quvchilarim kurs oxirida to''xtamasdan 2 minut "sayrashni" o''rganib olishgan .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6029';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6111')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dinaraxon yaxwimsiz singlim salomatmisiz Hörendan ötibman singlim menga bergan bilimlaringiz u.n raxmat katta uko Alloh rozi bö...', N'Dinaraxon yaxwimsiz singlim salomatmisiz Hörendan ötibman singlim menga bergan bilimlaringiz u.n raxmat katta uko Alloh rozi bölsin. Bitta lesen qoldi xudo xoxlasa', N'https://t.me/DinaraDeutsch/6111', N'uz', Id, NULL, N'@DinaraDeutsch', 6111, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dinaraxon yaxwimsiz singlim salomatmisiz Hörendan ötibman singlim menga bergan bilimlaringiz u.n raxmat katta uko Alloh rozi bö...', Description = N'Dinaraxon yaxwimsiz singlim salomatmisiz Hörendan ötibman singlim menga bergan bilimlaringiz u.n raxmat katta uko Alloh rozi bölsin. Bitta lesen qoldi xudo xoxlasa'
    WHERE Url = N'https://t.me/DinaraDeutsch/6111';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6112')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dinaraxon yaxwimsiz singlim salomatmisiz Hörendan ötibman singlim menga bergan bilimlaringiz u.n raxmat katta uko Alloh rozi bö...', N'Dinaraxon yaxwimsiz singlim salomatmisiz Hörendan ötibman singlim menga bergan bilimlaringiz u.n raxmat katta uko Alloh rozi bölsin. Bitta lesen qoldi xudo xoxlasa', N'https://t.me/DinaraDeutsch/6112', N'uz', Id, NULL, N'@DinaraDeutsch', 6112, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dinaraxon yaxwimsiz singlim salomatmisiz Hörendan ötibman singlim menga bergan bilimlaringiz u.n raxmat katta uko Alloh rozi bö...', Description = N'Dinaraxon yaxwimsiz singlim salomatmisiz Hörendan ötibman singlim menga bergan bilimlaringiz u.n raxmat katta uko Alloh rozi bölsin. Bitta lesen qoldi xudo xoxlasa'
    WHERE Url = N'https://t.me/DinaraDeutsch/6112';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6146')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'A2’dan B1’ga o‘tish aslida o‘ylagandek qiyin emas Muhimi — to‘g‘ri sistema, muntazam amaliyot va sprechenga urg‘u berish. Darsd...', N'A2’dan B1’ga o‘tish aslida o‘ylagandek qiyin emas Muhimi — to‘g‘ri sistema, muntazam amaliyot va sprechenga urg‘u berish. Darsda aynan qanaqa qilib Schritt für Schritt (qadamma qadam) B1 darajaga chiqish mumkinligini ko‘rsatib berdim . Men sizga bu darsda…', N'https://t.me/DinaraDeutsch/6146', N'uz', Id, NULL, N'@DinaraDeutsch', 6146, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'A2’dan B1’ga o‘tish aslida o‘ylagandek qiyin emas Muhimi — to‘g‘ri sistema, muntazam amaliyot va sprechenga urg‘u berish. Darsd...', Description = N'A2’dan B1’ga o‘tish aslida o‘ylagandek qiyin emas Muhimi — to‘g‘ri sistema, muntazam amaliyot va sprechenga urg‘u berish. Darsda aynan qanaqa qilib Schritt für Schritt (qadamma qadam) B1 darajaga chiqish mumkinligini ko‘rsatib berdim . Men sizga bu darsda…'
    WHERE Url = N'https://t.me/DinaraDeutsch/6146';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/6171')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Germaniyaga Ausbildung orqali qanday ketish mumkin?', N'Germaniyaga Ausbildung orqali qanday ketish mumkin? 

Ausbildung — bu Germaniyada o‘qish + ishlash tizimi. Ya’ni siz bir vaqtning o‘zida kasb o‘rganasiz va oylik ham olasiz .

Kerak bo‘ladigan asosiy talablar:
— Nemis tili kamida B1/B2 
— CV va motivatsion xat
— Ausbildung uchun shartnoma
— Viza hujjatlari

Eng ko‘p tanlanadigan yo‘nalishlar:
— Hamshiralik
— IT
— Mehmonxona va restoran sohasi
— Avtomexanik
— Elektrik

Eng yaxshi tomoni:
— O‘qish bepul 
— Oylik beriladi (o‘rtacha 900€ dan boshlab)
— Germaniyada qolish imkoniyati yuqori

— Reaksiyaxo''r ustozilaga 77 ta " " reaksiya yigʻib bersela, to‘liqroq ma’lumot beraman . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/6171', N'uz', Id, NULL, N'@DinaraDeutsch', 6171, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Germaniyaga Ausbildung orqali qanday ketish mumkin?', Description = N'Germaniyaga Ausbildung orqali qanday ketish mumkin? 

Ausbildung — bu Germaniyada o‘qish + ishlash tizimi. Ya’ni siz bir vaqtning o‘zida kasb o‘rganasiz va oylik ham olasiz .

Kerak bo‘ladigan asosiy talablar:
— Nemis tili kamida B1/B2 
— CV va motivatsion xat
— Ausbildung uchun shartnoma
— Viza hujjatlari

Eng ko‘p tanlanadigan yo‘nalishlar:
— Hamshiralik
— IT
— Mehmonxona va restoran sohasi
— Avtomexanik
— Elektrik

Eng yaxshi tomoni:
— O‘qish bepul 
— Oylik beriladi (o‘rtacha 900€ dan boshlab)
— Germaniyada qolish imkoniyati yuqori

— Reaksiyaxo''r ustozilaga 77 ta " " reaksiya yigʻib bersela, to‘liqroq ma’lumot beraman . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/6171';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5847')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sizlarga uyga vazifa bugungi darsdan', N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 7 ishlab kelish, kelasi darsda tahlil qilamiz
 Lug‘atlarni yodlash

— Albatta bajaring.', N'https://t.me/DinaraDeutsch/5847', N'uz', Id, NULL, N'@DinaraDeutsch', 5847, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sizlarga uyga vazifa bugungi darsdan', Description = N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 7 ishlab kelish, kelasi darsda tahlil qilamiz
 Lug‘atlarni yodlash

— Albatta bajaring.'
    WHERE Url = N'https://t.me/DinaraDeutsch/5847';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5852')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sprechen qiyin bo‘layotgani tabiiy. Muammo til bilmaslikda emas, tez fikrni tartiblab ayta olishda. Buni mashq bilan tez tuzati...', N'Sprechen qiyin bo‘layotgani tabiiy. Muammo til bilmaslikda emas, tez fikrni tartiblab ayta olishda. Buni mashq bilan tez tuzatish mumkin 

Tayyor “qutqaruvchi” jumlalarni yodlang. Fikr kelmaganda vaqt yutadi.
— Ich denke, dass …
— Meiner Meinung nach …
— Ich bin der Meinung, dass …
— Das ist ein interessantes Thema.
— Darüber habe ich noch nie nachgedacht, aber …
— Einerseits … andererseits …
Shularni ayguncha miyangiz keyingi gapni topadi.

Javob formulasi bo‘lsin
Ko‘p savollarga shu ishlaydi:
Meinung → Grund → Beispiel → Schluss
Masalan:
— Ich denke, dass Handys wichtig sind, weil …
— Zum Beispiel …
— Deshalb finde ich …
Struktura bo‘lsa, to‘xtash kamayadi.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5852', N'uz', Id, NULL, N'@DinaraDeutsch', 5852, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sprechen qiyin bo‘layotgani tabiiy. Muammo til bilmaslikda emas, tez fikrni tartiblab ayta olishda. Buni mashq bilan tez tuzati...', Description = N'Sprechen qiyin bo‘layotgani tabiiy. Muammo til bilmaslikda emas, tez fikrni tartiblab ayta olishda. Buni mashq bilan tez tuzatish mumkin 

Tayyor “qutqaruvchi” jumlalarni yodlang. Fikr kelmaganda vaqt yutadi.
— Ich denke, dass …
— Meiner Meinung nach …
— Ich bin der Meinung, dass …
— Das ist ein interessantes Thema.
— Darüber habe ich noch nie nachgedacht, aber …
— Einerseits … andererseits …
Shularni ayguncha miyangiz keyingi gapni topadi.

Javob formulasi bo‘lsin
Ko‘p savollarga shu ishlaydi:
Meinung → Grund → Beispiel → Schluss
Masalan:
— Ich denke, dass Handys wichtig sind, weil …
— Zum Beispiel …
— Deshalb finde ich …
Struktura bo‘lsa, to‘xtash kamayadi.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5852';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5858')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Va alaykum assalom', N'Va alaykum assalom 

— Lugʻat yodlash boʻyicha bu yerda va mana bu yerda maʼlumotlar bor .

— Yaxshi eslab qolish haqida esa bu yerda oʻqisangiz boʻladi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5858', N'uz', Id, NULL, N'@DinaraDeutsch', 5858, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Va alaykum assalom', Description = N'Va alaykum assalom 

— Lugʻat yodlash boʻyicha bu yerda va mana bu yerda maʼlumotlar bor .

— Yaxshi eslab qolish haqida esa bu yerda oʻqisangiz boʻladi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5858';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5867')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun darsda o‘quvchim bilan rosa zo‘r iborani kashf qildik', N'Bugun darsda o‘quvchim bilan rosa zo‘r iborani kashf qildik 

Die Tür gegen den Kopf bekommen - to‘g‘ridan-to‘g‘ri tarjima qilsak: “eshikni boshiga olmoq” 

— Lekin ma’nosi boshqacharoq. Sizningcha nima bo‘lishi mumkin? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5867', N'uz', Id, NULL, N'@DinaraDeutsch', 5867, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun darsda o‘quvchim bilan rosa zo‘r iborani kashf qildik', Description = N'Bugun darsda o‘quvchim bilan rosa zo‘r iborani kashf qildik 

Die Tür gegen den Kopf bekommen - to‘g‘ridan-to‘g‘ri tarjima qilsak: “eshikni boshiga olmoq” 

— Lekin ma’nosi boshqacharoq. Sizningcha nima bo‘lishi mumkin? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5867';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5883')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun darsda o‘quvchim bilan rosa zo‘r iborani kashf qildik Die Tür gegen den Kopf bekommen - to‘g‘ridan-to‘g‘ri tarjima qilsak...', N'Bugun darsda o‘quvchim bilan rosa zo‘r iborani kashf qildik Die Tür gegen den Kopf bekommen - to‘g‘ridan-to‘g‘ri tarjima qilsak: “eshikni boshiga olmoq” — Lekin ma’nosi boshqacharoq. Sizningcha nima bo‘lishi mumkin? @DinaraDeutsch', N'https://t.me/DinaraDeutsch/5883', N'uz', Id, NULL, N'@DinaraDeutsch', 5883, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun darsda o‘quvchim bilan rosa zo‘r iborani kashf qildik Die Tür gegen den Kopf bekommen - to‘g‘ridan-to‘g‘ri tarjima qilsak...', Description = N'Bugun darsda o‘quvchim bilan rosa zo‘r iborani kashf qildik Die Tür gegen den Kopf bekommen - to‘g‘ridan-to‘g‘ri tarjima qilsak: “eshikni boshiga olmoq” — Lekin ma’nosi boshqacharoq. Sizningcha nima bo‘lishi mumkin? @DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5883';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5896')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Va alaykum assalom', N'Va alaykum assalom 

— 0 dan aniq reja va muntazam dars bilan 8-9 oyda B2 darajaga chiqish mumkin.

— Kurs narxlari esa turiga qarab farq qiladi, masalan 210 ming, 500 ming yoki 800 ming atrofida. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5896', N'uz', Id, NULL, N'@DinaraDeutsch', 5896, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Va alaykum assalom', Description = N'Va alaykum assalom 

— 0 dan aniq reja va muntazam dars bilan 8-9 oyda B2 darajaga chiqish mumkin.

— Kurs narxlari esa turiga qarab farq qiladi, masalan 210 ming, 500 ming yoki 800 ming atrofida. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5896';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5898')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Va alaykum assalom', N'Va alaykum assalom 

Yangi til o‘rganganda doim qiyinchilik bo‘ladi. Men ham o‘yin bolasi bo‘lib yurgan paytim boshlaganman nemis tilini .

Lekin hozirgacha menga yordam beradigan eng katta narsa ichki xotirjamlik.

Agar o‘rganishimga vaqt ketsa ham o‘zimga o‘zim gapiraman:
— Bu boshqa til, qiyin bo‘lishi aniq edi.
— Hech kim senga oson bo‘ladi deb va’da bermagan.
— Qiyin ekan nima qilibdi, yana 5 daqiqa o‘tirib mashq qil, o‘rganib ketasan. Shu ichki gaplar meni ushlab turadi.

Yana bir muhim narsa: qiynalayotgan joyizni soʻrashdan uyalish kerak emas, + o‘rgangan narsangizni kimgadir aytib bering doim. Shunda til yanayam yoqishni boshlaydi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5898', N'uz', Id, NULL, N'@DinaraDeutsch', 5898, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Va alaykum assalom', Description = N'Va alaykum assalom 

Yangi til o‘rganganda doim qiyinchilik bo‘ladi. Men ham o‘yin bolasi bo‘lib yurgan paytim boshlaganman nemis tilini .

Lekin hozirgacha menga yordam beradigan eng katta narsa ichki xotirjamlik.

Agar o‘rganishimga vaqt ketsa ham o‘zimga o‘zim gapiraman:
— Bu boshqa til, qiyin bo‘lishi aniq edi.
— Hech kim senga oson bo‘ladi deb va’da bermagan.
— Qiyin ekan nima qilibdi, yana 5 daqiqa o‘tirib mashq qil, o‘rganib ketasan. Shu ichki gaplar meni ushlab turadi.

Yana bir muhim narsa: qiynalayotgan joyizni soʻrashdan uyalish kerak emas, + o‘rgangan narsangizni kimgadir aytib bering doim. Shunda til yanayam yoqishni boshlaydi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5898';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5899')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun kech boʻldi, endi ertaga olaman .', N'Bugun kech boʻldi, endi ertaga olaman .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5899', N'uz', Id, NULL, N'@DinaraDeutsch', 5899, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun kech boʻldi, endi ertaga olaman .', Description = N'Bugun kech boʻldi, endi ertaga olaman .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5899';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5900')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Javob bermasam, qayta-qayta eslataveringlar', N'Javob bermasam, qayta-qayta eslataveringlar 

— Shuncha ishni orasida ba’zi narsalar yoddan ko‘tarilib ketadi-da baribir. Toʻgʻri tushasizlar deb umid qilaman. Bu savolga esa hozir javob beraman.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5900', N'uz', Id, NULL, N'@DinaraDeutsch', 5900, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Javob bermasam, qayta-qayta eslataveringlar', Description = N'Javob bermasam, qayta-qayta eslataveringlar 

— Shuncha ishni orasida ba’zi narsalar yoddan ko‘tarilib ketadi-da baribir. Toʻgʻri tushasizlar deb umid qilaman. Bu savolga esa hozir javob beraman.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5900';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5908')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Live stream finished (49 minutes)', N'Live stream finished (49 minutes)', N'https://t.me/DinaraDeutsch/5908', N'uz', Id, NULL, N'@DinaraDeutsch', 5908, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Live stream finished (49 minutes)', Description = N'Live stream finished (49 minutes)'
    WHERE Url = N'https://t.me/DinaraDeutsch/5908';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5944')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'individual darsimni kanalda sizlar bilan o‘tgandik. Shu darslarning videolarini bitta joyga yig‘ib xarita qilib qoʻyyapman — qi...', N'individual darsimni kanalda sizlar bilan o‘tgandik. Shu darslarning videolarini bitta joyga yig‘ib xarita qilib qoʻyyapman — qidirib topish oson bo‘lishi uchun. 

Darslar Arena B1 kitobidan bo‘lgan. Dars davomida nimalar qilganmiz: 
— Lesen
— Textlarni birga tarjima qilib, lug‘atlar ustida ishlaganmiz
— To‘g‘ri javobni qanday topishni o‘rgatganman

1-dars 
 2-dars 
 3-dars 
 4-dars 
 5-dars 
 6-dars 
 7-dars 
 8-dars 
 9-dars 
 10-dars 
 11-dars 
 12-dars 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5944', N'uz', Id, NULL, N'@DinaraDeutsch', 5944, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'individual darsimni kanalda sizlar bilan o‘tgandik. Shu darslarning videolarini bitta joyga yig‘ib xarita qilib qoʻyyapman — qi...', Description = N'individual darsimni kanalda sizlar bilan o‘tgandik. Shu darslarning videolarini bitta joyga yig‘ib xarita qilib qoʻyyapman — qidirib topish oson bo‘lishi uchun. 

Darslar Arena B1 kitobidan bo‘lgan. Dars davomida nimalar qilganmiz: 
— Lesen
— Textlarni birga tarjima qilib, lug‘atlar ustida ishlaganmiz
— To‘g‘ri javobni qanday topishni o‘rgatganman

1-dars 
 2-dars 
 3-dars 
 4-dars 
 5-dars 
 6-dars 
 7-dars 
 8-dars 
 9-dars 
 10-dars 
 11-dars 
 12-dars 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5944';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5953')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemis tiliga aslida bilmasdan kirib qolganman', N'Nemis tiliga aslida bilmasdan kirib qolganman 

Oyim meni oddiy davlat maktabi deb o‘ylab, nemis tiliga ixtisoslashgan maktabga berib qo‘ygan. Maktabga borib boshlaganimdan keyin bilganmiz, keyin oʻzgartirishmagan maktabimni, mayli oʻqitaversin endi deb.

Keyin o‘qib ketaverganman va oxiri nemis tili hayotimning bir qismiga aylanib qolgan .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5953', N'uz', Id, NULL, N'@DinaraDeutsch', 5953, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemis tiliga aslida bilmasdan kirib qolganman', Description = N'Nemis tiliga aslida bilmasdan kirib qolganman 

Oyim meni oddiy davlat maktabi deb o‘ylab, nemis tiliga ixtisoslashgan maktabga berib qo‘ygan. Maktabga borib boshlaganimdan keyin bilganmiz, keyin oʻzgartirishmagan maktabimni, mayli oʻqitaversin endi deb.

Keyin o‘qib ketaverganman va oxiri nemis tili hayotimning bir qismiga aylanib qolgan .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5953';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5954')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Valaykum assalom', N'Valaykum assalom 

— Bu holat juda ko‘pchilikda boʻladi oʻzi. Ovozli habar qilib tushuntirib beraman hozir. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5954', N'uz', Id, NULL, N'@DinaraDeutsch', 5954, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Valaykum assalom', Description = N'Valaykum assalom 

— Bu holat juda ko‘pchilikda boʻladi oʻzi. Ovozli habar qilib tushuntirib beraman hozir. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5954';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5749')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Live stream finished (55 minutes)', N'Live stream finished (55 minutes)', N'https://t.me/DinaraDeutsch/5749', N'uz', Id, NULL, N'@DinaraDeutsch', 5749, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Live stream finished (55 minutes)', Description = N'Live stream finished (55 minutes)'
    WHERE Url = N'https://t.me/DinaraDeutsch/5749';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5751')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sizlarga uyga vazifa bugungi darsdan', N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 7 ishlab kelish, kelasi darsda tahlil qilamiz
 Lug‘atlarni yodlash

— Albatta bajaring.', N'https://t.me/DinaraDeutsch/5751', N'uz', Id, NULL, N'@DinaraDeutsch', 5751, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sizlarga uyga vazifa bugungi darsdan', Description = N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 7 ishlab kelish, kelasi darsda tahlil qilamiz
 Lug‘atlarni yodlash

— Albatta bajaring.'
    WHERE Url = N'https://t.me/DinaraDeutsch/5751';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5771')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dars oʻtmoqchi boʻlganlarga...', N'Dars oʻtmoqchi boʻlganlarga... 

Men odatda kitobni tanlaganda, oʻquvchini zeriktirib qoʻymasligiga eʼtibor beraman. 

Masalan Schritte, men eng birinchi dars oʻtgan kitobim. Keyin Pluspunkt, hozir ham foydalanaman. Momente kitobidan ham dars oʻtib koʻrganman, uyam qiziqarli kitob.

Variantlar:
Schritte A1
Menschen A1
Momente A1
Pluspunkt A1
Netzwerk A1

— Eng muhimi kitobni oʻziyiz yaxshi bilishiyz kerak, birinchi marta dars oʻtishiyz boʻlsa oʻziyz eng yaxshi biladigan kitobni tanlang. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5771', N'uz', Id, NULL, N'@DinaraDeutsch', 5771, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dars oʻtmoqchi boʻlganlarga...', Description = N'Dars oʻtmoqchi boʻlganlarga... 

Men odatda kitobni tanlaganda, oʻquvchini zeriktirib qoʻymasligiga eʼtibor beraman. 

Masalan Schritte, men eng birinchi dars oʻtgan kitobim. Keyin Pluspunkt, hozir ham foydalanaman. Momente kitobidan ham dars oʻtib koʻrganman, uyam qiziqarli kitob.

Variantlar:
Schritte A1
Menschen A1
Momente A1
Pluspunkt A1
Netzwerk A1

— Eng muhimi kitobni oʻziyiz yaxshi bilishiyz kerak, birinchi marta dars oʻtishiyz boʻlsa oʻziyz eng yaxshi biladigan kitobni tanlang. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5771';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5795')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'alltagsrelevant', N'alltagsrelevant 

kundalik hayot uchun muhim, har kungi ishlar va turmushda kerakli

Misollar:
— Diese Kenntnisse sind alltagsrelevant.
— Bu bilimlar kundalik hayot uchun muhim.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5795', N'uz', Id, NULL, N'@DinaraDeutsch', 5795, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'alltagsrelevant', Description = N'alltagsrelevant 

kundalik hayot uchun muhim, har kungi ishlar va turmushda kerakli

Misollar:
— Diese Kenntnisse sind alltagsrelevant.
— Bu bilimlar kundalik hayot uchun muhim.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5795';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5823')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Aytgancha hozir kanalda bepul darslar sezoni boshlangan', N'Aytgancha hozir kanalda bepul darslar sezoni boshlangan 

Bu yerdan boshlab tomosha qilsangiz boʻladi va bu yerda ham darslar bor. Ketma - ketlikda darslar raqamlab qoʻyilgan, xavotir olmang, adashib qolmaysiz .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5823', N'uz', Id, NULL, N'@DinaraDeutsch', 5823, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Aytgancha hozir kanalda bepul darslar sezoni boshlangan', Description = N'Aytgancha hozir kanalda bepul darslar sezoni boshlangan 

Bu yerdan boshlab tomosha qilsangiz boʻladi va bu yerda ham darslar bor. Ketma - ketlikda darslar raqamlab qoʻyilgan, xavotir olmang, adashib qolmaysiz .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5823';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5824')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nima uchun rostdan ham nemis tili o‘qituvchilar Germaniyaga ketmaydi?', N'Nima uchun rostdan ham nemis tili o‘qituvchilar Germaniyaga ketmaydi? 

Rostdan ham qiziq savol. Hozir o‘zimdan kelib chiqib javob berishga harakat qilaman.

Birinchidan:
Tabiatan singlimdan uzoqda yurishga o‘rganmaganman, ketgim kelmaydi. Borsam ham ko‘pi bilan 4–5 kunga dam olishga yoki grant orqali borishim mumkin. Yoki taqdir bo‘lib, oilaviy sharoit to‘g‘ri kelib qolsa. Lekin to‘g‘risi, Germaniyada doimiy ishlash niyatim yo‘q. Lekin ketmoqchi bo‘lganlarga jonim bilan yordam beraman . 

Ikkinchidan:
Shu yerda topayotgan daromadim yomon emas, yashash ham qulay. O‘zbekistonda turib bemalol nemis tilidan dars bera olaman. Germaniyaga borib kimga dars beraman? Yana vaqt farqi ham bor, ikki davlat orasida 3–4 soat farq bor, bu ham ish rejimini qiyinlashtiradi . 

Uchinchidan:
O‘zbekistonda birinchi grant bilan o‘qiyapman. 

Ingliz tili o‘qituvchilari hammasi Angliya yoki Amerikada yashamaydi-ku, ingliz tilidan dars bergani bilan.

— Bugungi qarashlarim hammasi. Ertaga nima bo‘lishini bilmayman, balki shu fikrimda qolarman, balki o‘zgarar ham. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5824', N'uz', Id, NULL, N'@DinaraDeutsch', 5824, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nima uchun rostdan ham nemis tili o‘qituvchilar Germaniyaga ketmaydi?', Description = N'Nima uchun rostdan ham nemis tili o‘qituvchilar Germaniyaga ketmaydi? 

Rostdan ham qiziq savol. Hozir o‘zimdan kelib chiqib javob berishga harakat qilaman.

Birinchidan:
Tabiatan singlimdan uzoqda yurishga o‘rganmaganman, ketgim kelmaydi. Borsam ham ko‘pi bilan 4–5 kunga dam olishga yoki grant orqali borishim mumkin. Yoki taqdir bo‘lib, oilaviy sharoit to‘g‘ri kelib qolsa. Lekin to‘g‘risi, Germaniyada doimiy ishlash niyatim yo‘q. Lekin ketmoqchi bo‘lganlarga jonim bilan yordam beraman . 

Ikkinchidan:
Shu yerda topayotgan daromadim yomon emas, yashash ham qulay. O‘zbekistonda turib bemalol nemis tilidan dars bera olaman. Germaniyaga borib kimga dars beraman? Yana vaqt farqi ham bor, ikki davlat orasida 3–4 soat farq bor, bu ham ish rejimini qiyinlashtiradi . 

Uchinchidan:
O‘zbekistonda birinchi grant bilan o‘qiyapman. 

Ingliz tili o‘qituvchilari hammasi Angliya yoki Amerikada yashamaydi-ku, ingliz tilidan dars bergani bilan.

— Bugungi qarashlarim hammasi. Ertaga nima bo‘lishini bilmayman, balki shu fikrimda qolarman, balki o‘zgarar ham. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5824';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5826')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'qanday qilib samaraga erishish mumkinligi haqida juda ko‘p so‘rashardi', N'qanday qilib samaraga erishish mumkinligi haqida juda ko‘p so‘rashardi 

Shuning uchun o‘qiyotgan kitobimdan chiqargan xulosalarimni ovozli xabarlar orqali ulashib borishni o‘ylab ko‘rdim.

Soʻz boshi - Audio tarzda eshitish 
 -bob - Audio tarzda eshitish 
 -bob - Audio tarzda eshitish 
 -bob - Audio tarzda eshitish 
 -bob - Audio tarzda eshitish 
 -bob - Audio tarzda eshitish 

Samaradorlikning 21 yoʻli kitobidan 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5826', N'uz', Id, NULL, N'@DinaraDeutsch', 5826, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'qanday qilib samaraga erishish mumkinligi haqida juda ko‘p so‘rashardi', Description = N'qanday qilib samaraga erishish mumkinligi haqida juda ko‘p so‘rashardi 

Shuning uchun o‘qiyotgan kitobimdan chiqargan xulosalarimni ovozli xabarlar orqali ulashib borishni o‘ylab ko‘rdim.

Soʻz boshi - Audio tarzda eshitish 
 -bob - Audio tarzda eshitish 
 -bob - Audio tarzda eshitish 
 -bob - Audio tarzda eshitish 
 -bob - Audio tarzda eshitish 
 -bob - Audio tarzda eshitish 

Samaradorlikning 21 yoʻli kitobidan 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5826';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5827')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'mit leeren Händen — bo‘sh qo‘l bilan, hech narsa olib kelmasdan, hech narsa bermasdan', N'mit leeren Händen — bo‘sh qo‘l bilan, hech narsa olib kelmasdan, hech narsa bermasdan

— Er kam mit leeren Händen zur Party.
— U ziyofatga bo‘sh qo‘l bilan keldi.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5827', N'uz', Id, NULL, N'@DinaraDeutsch', 5827, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'mit leeren Händen — bo‘sh qo‘l bilan, hech narsa olib kelmasdan, hech narsa bermasdan', Description = N'mit leeren Händen — bo‘sh qo‘l bilan, hech narsa olib kelmasdan, hech narsa bermasdan

— Er kam mit leeren Händen zur Party.
— U ziyofatga bo‘sh qo‘l bilan keldi.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5827';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5845')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Live stream finished (44 minutes)', N'Live stream finished (44 minutes)', N'https://t.me/DinaraDeutsch/5845', N'uz', Id, NULL, N'@DinaraDeutsch', 5845, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Live stream finished (44 minutes)', Description = N'Live stream finished (44 minutes)'
    WHERE Url = N'https://t.me/DinaraDeutsch/5845';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5659')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sizlarga uyga vazifa bugungi darsdan', N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Pluspunkt B1 Kursbuch 31-betgacha hamma mashqlarini bajarish + lugʻatlarini yodlash 
 Sprechen über ihre Erfahrung beim Bewerben
 Pluspunkt Arbeitsbuch Kapitel 2ni ishlash 

— Albatta bajaring.', N'https://t.me/DinaraDeutsch/5659', N'uz', Id, NULL, N'@DinaraDeutsch', 5659, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sizlarga uyga vazifa bugungi darsdan', Description = N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Pluspunkt B1 Kursbuch 31-betgacha hamma mashqlarini bajarish + lugʻatlarini yodlash 
 Sprechen über ihre Erfahrung beim Bewerben
 Pluspunkt Arbeitsbuch Kapitel 2ni ishlash 

— Albatta bajaring.'
    WHERE Url = N'https://t.me/DinaraDeutsch/5659';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5661')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'auf der Strecke bleiben', N'auf der Strecke bleiben 

e’tiborsiz qolmoq, chetda qolmoq

Misollar:
— Bei der Arbeit bleibt die Familie oft auf der Strecke.
— Ish sababli oila ko‘pincha e’tiborsiz qoladi.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5661', N'uz', Id, NULL, N'@DinaraDeutsch', 5661, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'auf der Strecke bleiben', Description = N'auf der Strecke bleiben 

e’tiborsiz qolmoq, chetda qolmoq

Misollar:
— Bei der Arbeit bleibt die Familie oft auf der Strecke.
— Ish sababli oila ko‘pincha e’tiborsiz qoladi.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5661';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5662')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bugun yodlagan eng foydali lugʻatlarim:', N'Bugun yodlagan eng foydali lugʻatlarim: 

Einen Einsatz fassen - qaror qabul qilmoq 
 Die medizinische Behandlung leisten - tibbiy davolashlarga qurbi yetmoq 
 Einen Satz aus dem Bett machen - toʻsatdan karavotdan sakrab turmoq 
 Durch den Wind sein - gangib qolmoq
 jemandem eines Besseren belehren - kimnidir toʻgʻri yoʻlga solmoq 
 keine Notiz von etwas nehmen - e''tibor bermaslik 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5662', N'uz', Id, NULL, N'@DinaraDeutsch', 5662, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bugun yodlagan eng foydali lugʻatlarim:', Description = N'Bugun yodlagan eng foydali lugʻatlarim: 

Einen Einsatz fassen - qaror qabul qilmoq 
 Die medizinische Behandlung leisten - tibbiy davolashlarga qurbi yetmoq 
 Einen Satz aus dem Bett machen - toʻsatdan karavotdan sakrab turmoq 
 Durch den Wind sein - gangib qolmoq
 jemandem eines Besseren belehren - kimnidir toʻgʻri yoʻlga solmoq 
 keine Notiz von etwas nehmen - e''tibor bermaslik 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5662';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5664')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Ich habe immerhin versucht.', N'Ich habe immerhin versucht. 

Immerhin - hech boʻlmaganda.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5664', N'uz', Id, NULL, N'@DinaraDeutsch', 5664, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Ich habe immerhin versucht.', Description = N'Ich habe immerhin versucht. 

Immerhin - hech boʻlmaganda.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5664';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5665')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nach dem Studium trete ich ins Berufsleben.', N'Nach dem Studium trete ich ins Berufsleben. 

O‘qishni tugatgach men ish faoliyatimni boshlayman.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5665', N'uz', Id, NULL, N'@DinaraDeutsch', 5665, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nach dem Studium trete ich ins Berufsleben.', Description = N'Nach dem Studium trete ich ins Berufsleben. 

O‘qishni tugatgach men ish faoliyatimni boshlayman.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5665';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5666')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Endlich hat er seine eigenen vier Wände.', N'Endlich hat er seine eigenen vier Wände.
 Nihoyat uning o‘z uyi bor.

Eigenen vier Wände haben - oʻz uyi boʻlishi

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5666', N'uz', Id, NULL, N'@DinaraDeutsch', 5666, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Endlich hat er seine eigenen vier Wände.', Description = N'Endlich hat er seine eigenen vier Wände.
 Nihoyat uning o‘z uyi bor.

Eigenen vier Wände haben - oʻz uyi boʻlishi

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5666';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5667')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Man muss sich nach den Regeln richten.', N'Man muss sich nach den Regeln richten.
 Qoidalarga amal qilish kerak.

Sich nach den Regeln richten - qoidalarga amal qilmoq

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5667', N'uz', Id, NULL, N'@DinaraDeutsch', 5667, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Man muss sich nach den Regeln richten.', Description = N'Man muss sich nach den Regeln richten.
 Qoidalarga amal qilish kerak.

Sich nach den Regeln richten - qoidalarga amal qilmoq

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5667';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5730')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sizlarga uyga vazifa bugungi darsdan', N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Pluspunkt B1 Kursbuch 41-betgacha hamma mashqlarini bajarish + lugʻatlarini yodlash 
 Sprechen savollarga tayyorlanish
 Grammatik uchun (um zu, damit, statt zu, sondern) 3tadan gap tuzish

— Albatta bajaring.', N'https://t.me/DinaraDeutsch/5730', N'uz', Id, NULL, N'@DinaraDeutsch', 5730, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sizlarga uyga vazifa bugungi darsdan', Description = N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Pluspunkt B1 Kursbuch 41-betgacha hamma mashqlarini bajarish + lugʻatlarini yodlash 
 Sprechen savollarga tayyorlanish
 Grammatik uchun (um zu, damit, statt zu, sondern) 3tadan gap tuzish

— Albatta bajaring.'
    WHERE Url = N'https://t.me/DinaraDeutsch/5730';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5734')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'B1 pdf lug''at kutib qolamiz so''zlar 1000+ bo''lsa yaxshi bo''lardi', N'B1 pdf lug''at kutib qolamiz so''zlar 1000+ bo''lsa yaxshi bo''lardi', N'https://t.me/DinaraDeutsch/5734', N'uz', Id, NULL, N'@DinaraDeutsch', 5734, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'B1 pdf lug''at kutib qolamiz so''zlar 1000+ bo''lsa yaxshi bo''lardi', Description = N'B1 pdf lug''at kutib qolamiz so''zlar 1000+ bo''lsa yaxshi bo''lardi'
    WHERE Url = N'https://t.me/DinaraDeutsch/5734';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5735')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'B1 pdf lug''at kutib qolamiz so''zlar 1000+ bo''lsa yaxshi bo''lardi', N'B1 pdf lug''at kutib qolamiz so''zlar 1000+ bo''lsa yaxshi bo''lardi', N'https://t.me/DinaraDeutsch/5735', N'uz', Id, NULL, N'@DinaraDeutsch', 5735, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'B1 pdf lug''at kutib qolamiz so''zlar 1000+ bo''lsa yaxshi bo''lardi', Description = N'B1 pdf lug''at kutib qolamiz so''zlar 1000+ bo''lsa yaxshi bo''lardi'
    WHERE Url = N'https://t.me/DinaraDeutsch/5735';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5606')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemischa „Ich bin guter Dinge“ degani:', N'Nemischa „Ich bin guter Dinge“ degani: 

“Kayfiyatim yaxshi”
 “Yaxshi umiddaman”
 “Optimistikman”

Bu ibora odamning ichki holati yaxshi, ijobiy fikrda ekanini bildiradi.

Misol uchun: 
— Ich bin guter Dinge, dass ich die Prüfung bestehe.
— Imtihondan o‘tishimga ishonchim komil / umidim yaxshi. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5606', N'uz', Id, NULL, N'@DinaraDeutsch', 5606, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemischa „Ich bin guter Dinge“ degani:', Description = N'Nemischa „Ich bin guter Dinge“ degani: 

“Kayfiyatim yaxshi”
 “Yaxshi umiddaman”
 “Optimistikman”

Bu ibora odamning ichki holati yaxshi, ijobiy fikrda ekanini bildiradi.

Misol uchun: 
— Ich bin guter Dinge, dass ich die Prüfung bestehe.
— Imtihondan o‘tishimga ishonchim komil / umidim yaxshi. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5606';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5617')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Universitetimizga juda ko‘p mehmonlar keladi — biram mazza', N'Universitetimizga juda ko‘p mehmonlar keladi — biram mazza 

Faqat shu semestrning o‘zida 3 ta mehmonni kutib oldik:

— Herr Kleifelt, aus Deutschland, 3 kunlik Blockseminar o‘tib berdi. Geografiya, tarix va siyosat mavzularida bo‘ldi darslar. 

— Herr Algermießen, aus deutscher Stiftung. Nemis grantlarini qanday yutib olishni tushuntirdi. Hozir Toshkentda ekan, kerak bo‘lsa offline Beratung ham berarkan.

— Kecha esa Schweiz elchixonasidan mehmon keldi. Schweiz haqida ma’lumotlar berdi.

Eng qizig‘i — hammalari sovg‘a bilan kelishgan . Hali rasmga olishga ulgurmadim, keyinroq albatta ulashaman. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5617', N'uz', Id, NULL, N'@DinaraDeutsch', 5617, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Universitetimizga juda ko‘p mehmonlar keladi — biram mazza', Description = N'Universitetimizga juda ko‘p mehmonlar keladi — biram mazza 

Faqat shu semestrning o‘zida 3 ta mehmonni kutib oldik:

— Herr Kleifelt, aus Deutschland, 3 kunlik Blockseminar o‘tib berdi. Geografiya, tarix va siyosat mavzularida bo‘ldi darslar. 

— Herr Algermießen, aus deutscher Stiftung. Nemis grantlarini qanday yutib olishni tushuntirdi. Hozir Toshkentda ekan, kerak bo‘lsa offline Beratung ham berarkan.

— Kecha esa Schweiz elchixonasidan mehmon keldi. Schweiz haqida ma’lumotlar berdi.

Eng qizig‘i — hammalari sovg‘a bilan kelishgan . Hali rasmga olishga ulgurmadim, keyinroq albatta ulashaman. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5617';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5620')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bu — Herr Algermießen', N'Bu — Herr Algermießen 

Toshkentda joylashgan Adenauer jamg‘armasi rahbari.

— Bu jamg‘arma Markaziy Osiyo talabalari uchun grantlar ajratadi (bakalavr va magistratura uchun). Iyun oyidan hujjat qabul qilishni boshlashar ekan.

Agar hujjatlaringiz qabul qilinsa, Germaniyada o‘qishingiz uchun to‘lovlarni qoplab berishadi .

Kerakli hujjatlar:
— Lebenslauf
— Motivation Brief
— Yutuqlaringiz
— Ijtimoiy hayotda faol ekanligingiz tasdiqlaydigan sertifikatlar

Raqamlari va email manzillari rasmda koʻrsatilgan.Bemalol aloqaga chiqishingiz mumkin — “albatta javob beramiz”, deb aytdi oʻziyam . Ofislari ham Toshkentda joylashgan, offline borib Beratung olish mumkin.

Sayt linki: https://www.kas.de/de/web/zentralasien 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5620', N'uz', Id, NULL, N'@DinaraDeutsch', 5620, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bu — Herr Algermießen', Description = N'Bu — Herr Algermießen 

Toshkentda joylashgan Adenauer jamg‘armasi rahbari.

— Bu jamg‘arma Markaziy Osiyo talabalari uchun grantlar ajratadi (bakalavr va magistratura uchun). Iyun oyidan hujjat qabul qilishni boshlashar ekan.

Agar hujjatlaringiz qabul qilinsa, Germaniyada o‘qishingiz uchun to‘lovlarni qoplab berishadi .

Kerakli hujjatlar:
— Lebenslauf
— Motivation Brief
— Yutuqlaringiz
— Ijtimoiy hayotda faol ekanligingiz tasdiqlaydigan sertifikatlar

Raqamlari va email manzillari rasmda koʻrsatilgan.Bemalol aloqaga chiqishingiz mumkin — “albatta javob beramiz”, deb aytdi oʻziyam . Ofislari ham Toshkentda joylashgan, offline borib Beratung olish mumkin.

Sayt linki: https://www.kas.de/de/web/zentralasien 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5620';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5624')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Bu — 3-chi mehmonimiz, Schweiz elchixonasidan kelgan', N'Bu — 3-chi mehmonimiz, Schweiz elchixonasidan kelgan 

Toshkentda joylashgan Schweiz elchixonasidan kelib, kecha Schweiz haqida qiziqarli ma’lumotlar berib o‘tdi.

Bundan keyin Schweizda ham nemis tilida gapirishadi desa, ishonmanglar . Talaffuz, so‘z ishlatilishi — hammasi boshqacha, sheva juda farq qilarkan. Yaxshiyam Hochdeutschda (adabiy nemis tilida) gapirdi, bo‘lmasa umuman tushunmasdigov .

Eng qizig‘i: Schweizda Präteritum yoʻq ekan, faqat Perfekt ishlatiladi. Kim o‘tgan zamon yodlay olmayapti — chiqila .

Masalan: “ich” o‘rniga “i” deb ishlatisharkan.

Yana bir qiziq tomoni — Schweiz Italiya va Fransiya bilan chegaradosh bo‘lgani uchun ularni madaniyati va arxitekturasi ham seziladi. Palma daraxtlari ham o‘sarkan Schweizda .

Schweizning 4 ta davlat tili bor:
— Deutsch
— Französisch
— Italienisch
— Romanisch

Hududi kichik davlatlardan biri bo‘lsayam, bank sohasi bo‘yicha eng kuchlilardan hisoblanadi (Schweizer Banken).

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5624', N'uz', Id, NULL, N'@DinaraDeutsch', 5624, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Bu — 3-chi mehmonimiz, Schweiz elchixonasidan kelgan', Description = N'Bu — 3-chi mehmonimiz, Schweiz elchixonasidan kelgan 

Toshkentda joylashgan Schweiz elchixonasidan kelib, kecha Schweiz haqida qiziqarli ma’lumotlar berib o‘tdi.

Bundan keyin Schweizda ham nemis tilida gapirishadi desa, ishonmanglar . Talaffuz, so‘z ishlatilishi — hammasi boshqacha, sheva juda farq qilarkan. Yaxshiyam Hochdeutschda (adabiy nemis tilida) gapirdi, bo‘lmasa umuman tushunmasdigov .

Eng qizig‘i: Schweizda Präteritum yoʻq ekan, faqat Perfekt ishlatiladi. Kim o‘tgan zamon yodlay olmayapti — chiqila .

Masalan: “ich” o‘rniga “i” deb ishlatisharkan.

Yana bir qiziq tomoni — Schweiz Italiya va Fransiya bilan chegaradosh bo‘lgani uchun ularni madaniyati va arxitekturasi ham seziladi. Palma daraxtlari ham o‘sarkan Schweizda .

Schweizning 4 ta davlat tili bor:
— Deutsch
— Französisch
— Italienisch
— Romanisch

Hududi kichik davlatlardan biri bo‘lsayam, bank sohasi bo‘yicha eng kuchlilardan hisoblanadi (Schweizer Banken).

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5624';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5636')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Koʻchishga doir B2 soʻzlar yigʻib keldim sizlarga, yodlab olilar', N'Koʻchishga doir B2 soʻzlar yigʻib keldim sizlarga, yodlab olilar 

der Umzug – ko‘chish
 die Umzugsfirma – ko‘chirish kompaniyasi
 der Wohnortwechsel – yashash joyini o‘zgartirish
 der Haushalt – ro‘zg‘or
 die Wohnfläche – yashash maydoni
 die Nebenkosten – qo‘shimcha xarajatlar
 die Übergabe – topshirish (kvartirani)
 das Übergabeprotokoll – topshirish hujjati
 die Kündigungsfrist – bekor qilish muddati
 die Wohnungsbesichtigung – kvartirani ko‘rish

den Umzug organisieren – ko‘chishni tashkil qilmoq
 sorgfältig planen – puxta rejalashtirmoq
 Kartons beschriften – qutilarni belgilamoq
 Möbel abbauen – mebellarni qismlarga ajratmoq
 Möbel aufbauen – mebellarni yig‘moq
 etwas transportieren – nimanidir tashimoq
 einen Transporter mieten – yuk mashinasini ijaraga olmoq
 Hilfe in Anspruch nehmen – yordamdan foydalanmoq
 etwas erledigen – ishni bitirmoq
 etwas rechtzeitig schaffen – o‘z vaqtida ulgurmoq

das Verpackungsmaterial – qadoqlash materiali
 die Luftpolsterfolie – pufakchali plyonka
 das Klebeband – yopishtiruvchi lenta
 der Umzugskarton – ko‘chish qutisi
 sperrige Möbel – katta/noqulay mebellar
 empfindliche Gegenstände – nozik buyumlar
 der Elektroanschluss – elektr ulanishi
 der Wasseranschluss – suv ulanishi
 die Einrichtung – jihozlash
 der Haushaltgegenstand – ro‘zg‘or buyumi

die Wohnung renovieren – kvartirani ta’mirlamoq
 die Wände streichen – devorlarni bo‘yamoq
 gründlich putzen – chuqur tozalamoq
 Ordnung schaffen – tartib o‘rnatmoq
 etwas entsorgen – chiqindiga tashlamoq

geräumig – keng
 hell – yorug‘
 renovierungsbedürftig – ta’mirtalab
 bezugsfertig – yashashga tayyor
 zentral gelegen – markazda joylashgan

im Voraus – oldindan
 nach und nach – asta-sekin
 gleichzeitig – bir vaqtning o‘zida
 mühelos – osonlik bilan
 reibungslos – muammosiz

sich ummelden – ro‘yxatdan qayta o‘tmoq
 die Adresse bekannt geben – manzilni bildirmoq
 sich einleben – moslashib ketmoq
 Kontakte knüpfen – tanishlar orttirmoq
 sich wohlfühlen – o‘zini qulay his qilmoq

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5636', N'uz', Id, NULL, N'@DinaraDeutsch', 5636, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Koʻchishga doir B2 soʻzlar yigʻib keldim sizlarga, yodlab olilar', Description = N'Koʻchishga doir B2 soʻzlar yigʻib keldim sizlarga, yodlab olilar 

der Umzug – ko‘chish
 die Umzugsfirma – ko‘chirish kompaniyasi
 der Wohnortwechsel – yashash joyini o‘zgartirish
 der Haushalt – ro‘zg‘or
 die Wohnfläche – yashash maydoni
 die Nebenkosten – qo‘shimcha xarajatlar
 die Übergabe – topshirish (kvartirani)
 das Übergabeprotokoll – topshirish hujjati
 die Kündigungsfrist – bekor qilish muddati
 die Wohnungsbesichtigung – kvartirani ko‘rish

den Umzug organisieren – ko‘chishni tashkil qilmoq
 sorgfältig planen – puxta rejalashtirmoq
 Kartons beschriften – qutilarni belgilamoq
 Möbel abbauen – mebellarni qismlarga ajratmoq
 Möbel aufbauen – mebellarni yig‘moq
 etwas transportieren – nimanidir tashimoq
 einen Transporter mieten – yuk mashinasini ijaraga olmoq
 Hilfe in Anspruch nehmen – yordamdan foydalanmoq
 etwas erledigen – ishni bitirmoq
 etwas rechtzeitig schaffen – o‘z vaqtida ulgurmoq

das Verpackungsmaterial – qadoqlash materiali
 die Luftpolsterfolie – pufakchali plyonka
 das Klebeband – yopishtiruvchi lenta
 der Umzugskarton – ko‘chish qutisi
 sperrige Möbel – katta/noqulay mebellar
 empfindliche Gegenstände – nozik buyumlar
 der Elektroanschluss – elektr ulanishi
 der Wasseranschluss – suv ulanishi
 die Einrichtung – jihozlash
 der Haushaltgegenstand – ro‘zg‘or buyumi

die Wohnung renovieren – kvartirani ta’mirlamoq
 die Wände streichen – devorlarni bo‘yamoq
 gründlich putzen – chuqur tozalamoq
 Ordnung schaffen – tartib o‘rnatmoq
 etwas entsorgen – chiqindiga tashlamoq

geräumig – keng
 hell – yorug‘
 renovierungsbedürftig – ta’mirtalab
 bezugsfertig – yashashga tayyor
 zentral gelegen – markazda joylashgan

im Voraus – oldindan
 nach und nach – asta-sekin
 gleichzeitig – bir vaqtning o‘zida
 mühelos – osonlik bilan
 reibungslos – muammosiz

sich ummelden – ro‘yxatdan qayta o‘tmoq
 die Adresse bekannt geben – manzilni bildirmoq
 sich einleben – moslashib ketmoq
 Kontakte knüpfen – tanishlar orttirmoq
 sich wohlfühlen – o‘zini qulay his qilmoq

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5636';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5639')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemischa „den Kopf freibekommen“ degani:', N'Nemischa „den Kopf freibekommen“ degani: 

Boshni tozalab olmoq, ya’ni dam olib, fikrni yengillashtirib, yana yaxshi ishlashga tayyor bo‘lmoq
— sayr qilish 
— musiqa tinglash 
— dam olish 
orqali “Kopf freibekommen” qiladi.

Misol:
— Ich gehe spazieren, um den Kopf freizubekommen.
— Men boshimni dam oldirish uchun sayr qilaman.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5639', N'uz', Id, NULL, N'@DinaraDeutsch', 5639, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemischa „den Kopf freibekommen“ degani:', Description = N'Nemischa „den Kopf freibekommen“ degani: 

Boshni tozalab olmoq, ya’ni dam olib, fikrni yengillashtirib, yana yaxshi ishlashga tayyor bo‘lmoq
— sayr qilish 
— musiqa tinglash 
— dam olish 
orqali “Kopf freibekommen” qiladi.

Misol:
— Ich gehe spazieren, um den Kopf freizubekommen.
— Men boshimni dam oldirish uchun sayr qilaman.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5639';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5640')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Nemischa „etwas auf Vordermann bringen“ degani:', N'Nemischa „etwas auf Vordermann bringen“ degani:

Biror narsani tartibga keltirmoq, yaxshilamoq, juda yaxshi holatga keltirmoq

Agar biror narsa tartibsiz bo‘lsa eski yoki yomon holatda bo‘lsa uni tozalab, tuzatib, yaxshilab qo‘yish — „auf Vordermann bringen“

Misollar:
— Ich muss mein Zimmer auf Vordermann bringen.
— Men xonamni tartibga keltirishim kerak.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5640', N'uz', Id, NULL, N'@DinaraDeutsch', 5640, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Nemischa „etwas auf Vordermann bringen“ degani:', Description = N'Nemischa „etwas auf Vordermann bringen“ degani:

Biror narsani tartibga keltirmoq, yaxshilamoq, juda yaxshi holatga keltirmoq

Agar biror narsa tartibsiz bo‘lsa eski yoki yomon holatda bo‘lsa uni tozalab, tuzatib, yaxshilab qo‘yish — „auf Vordermann bringen“

Misollar:
— Ich muss mein Zimmer auf Vordermann bringen.
— Men xonamni tartibga keltirishim kerak.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5640';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5654')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Eng koʻp ishlatiladigan kirish soʻzlar', N'Eng koʻp ishlatiladigan kirish soʻzlar 

Sozusagen - shunday aytadigan boʻlsak 
 Offen gesagt - ochiq (ochigʻini) aytganda
 Ehrlich gesagt - toʻgʻrisini aytganda
 Es versteht sich von selbst - oʻz-oʻzidan tushinarliki
 Überhaupt - umuman (olganda) 
 Auf jeden Fall - har qanday holatda
 Möglicherweise - boʻlishi mumkin 
 Wahrscheinlich - hoynahoy
 Übrigens - aytganday, lekin 
 In der Tat - aslida 
 Tatsächlich - haqiqatan/aslida 
 Soweit ich weiß - menga ma''lum boʻlishicha
 Streng genommen - jiddiy aytadigan boʻlsak
 Selbstverständlich - tabiiyki, oʻz-oʻzidan ma''lumki
 Eigentlich - xullas

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5654', N'uz', Id, NULL, N'@DinaraDeutsch', 5654, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Eng koʻp ishlatiladigan kirish soʻzlar', Description = N'Eng koʻp ishlatiladigan kirish soʻzlar 

Sozusagen - shunday aytadigan boʻlsak 
 Offen gesagt - ochiq (ochigʻini) aytganda
 Ehrlich gesagt - toʻgʻrisini aytganda
 Es versteht sich von selbst - oʻz-oʻzidan tushinarliki
 Überhaupt - umuman (olganda) 
 Auf jeden Fall - har qanday holatda
 Möglicherweise - boʻlishi mumkin 
 Wahrscheinlich - hoynahoy
 Übrigens - aytganday, lekin 
 In der Tat - aslida 
 Tatsächlich - haqiqatan/aslida 
 Soweit ich weiß - menga ma''lum boʻlishicha
 Streng genommen - jiddiy aytadigan boʻlsak
 Selbstverständlich - tabiiyki, oʻz-oʻzidan ma''lumki
 Eigentlich - xullas

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5654';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5525')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'S izlarga uyga vazifa bugungi darsdan', N'S izlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 5 ishlab kelish, kelasi darsda tahlil qilamiz
 Lug‘atlarni yodlang

— Albatta bajaring .', N'https://t.me/DinaraDeutsch/5525', N'uz', Id, NULL, N'@DinaraDeutsch', 5525, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'S izlarga uyga vazifa bugungi darsdan', Description = N'S izlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 5 ishlab kelish, kelasi darsda tahlil qilamiz
 Lug‘atlarni yodlang

— Albatta bajaring .'
    WHERE Url = N'https://t.me/DinaraDeutsch/5525';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5529')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Tarjimasi:', N'Tarjimasi:

So kannst du auf Deutsch zu Ostern gratulieren:

Frohe Ostern!
— Pasxa muborak!

Fröhliche Ostern!
— Quvonchli Pasxa tilayman!

Ich wünsche dir frohe Ostern!
— Senga Pasxa bayrami muborak bo‘lsin, deb tilayman!

Ich wünsche dir ein frohes und gesegnetes Osterfest! 
— Senga quvonchli va barakali Pasxa bayramini tilayman! 

Erholsame Feiertage und viel Erfolg bei der Eiersuche! 
— Yaxshi dam olish kunlari va tuxum qidirishda omad tilayman! 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5529', N'uz', Id, NULL, N'@DinaraDeutsch', 5529, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Tarjimasi:', Description = N'Tarjimasi:

So kannst du auf Deutsch zu Ostern gratulieren:

Frohe Ostern!
— Pasxa muborak!

Fröhliche Ostern!
— Quvonchli Pasxa tilayman!

Ich wünsche dir frohe Ostern!
— Senga Pasxa bayrami muborak bo‘lsin, deb tilayman!

Ich wünsche dir ein frohes und gesegnetes Osterfest! 
— Senga quvonchli va barakali Pasxa bayramini tilayman! 

Erholsame Feiertage und viel Erfolg bei der Eiersuche! 
— Yaxshi dam olish kunlari va tuxum qidirishda omad tilayman! 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5529';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5532')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Die Woche drauf“', N'„Die Woche drauf“ 

— bu norasmiy (oddiy, kundalik) uslubda aytiladigan ibora bo‘lib,
ma’nosi:
— keyingi hafta yoki undan keyingi hafta degani.

Ya’ni, bu ibora “nächste Woche” yoki “darauffolgende Woche” bilan bir xil ma’noni beradi, faqat biroz erkinroq (gaplashuv uslubida) ishlatilarkan .

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5532', N'uz', Id, NULL, N'@DinaraDeutsch', 5532, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Die Woche drauf“', Description = N'„Die Woche drauf“ 

— bu norasmiy (oddiy, kundalik) uslubda aytiladigan ibora bo‘lib,
ma’nosi:
— keyingi hafta yoki undan keyingi hafta degani.

Ya’ni, bu ibora “nächste Woche” yoki “darauffolgende Woche” bilan bir xil ma’noni beradi, faqat biroz erkinroq (gaplashuv uslubida) ishlatilarkan .

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5532';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5533')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'baff sein', N'baff sein 
— juda hayron bo‘lmoq, lol qolmoq; 

z.B. Ich bin total baff! 
— Men juda hayratdaman! 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5533', N'uz', Id, NULL, N'@DinaraDeutsch', 5533, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'baff sein', Description = N'baff sein 
— juda hayron bo‘lmoq, lol qolmoq; 

z.B. Ich bin total baff! 
— Men juda hayratdaman! 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5533';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5545')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'das A und O sein = eng muhim narsa, asosiy masala', N'das A und O sein = eng muhim narsa, asosiy masala

Biror narsaning eng kerakli, eng asosiy qismi degani

Misol:
— Disziplin ist das A und O beim Lernen.
— O‘qishda intizom eng muhim narsa.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5545', N'uz', Id, NULL, N'@DinaraDeutsch', 5545, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'das A und O sein = eng muhim narsa, asosiy masala', Description = N'das A und O sein = eng muhim narsa, asosiy masala

Biror narsaning eng kerakli, eng asosiy qismi degani

Misol:
— Disziplin ist das A und O beim Lernen.
— O‘qishda intizom eng muhim narsa.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5545';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5569')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sizlarga uyga vazifa bugungi darsdan', N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Pluspunkt B1 Kursbuch 14-betgacha hamma mashqlarini bajarish + lugʻatlarini yodlash 
 Pluspunkt B1 Kapitel 1dagi hamma bogʻlovchilarni oʻrganib kelish 
 Grammatik Aktiv 63-mavzu

— Albatta bajaring.', N'https://t.me/DinaraDeutsch/5569', N'uz', Id, NULL, N'@DinaraDeutsch', 5569, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sizlarga uyga vazifa bugungi darsdan', Description = N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Pluspunkt B1 Kursbuch 14-betgacha hamma mashqlarini bajarish + lugʻatlarini yodlash 
 Pluspunkt B1 Kapitel 1dagi hamma bogʻlovchilarni oʻrganib kelish 
 Grammatik Aktiv 63-mavzu

— Albatta bajaring.'
    WHERE Url = N'https://t.me/DinaraDeutsch/5569';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5581')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sizlarga uyga vazifa bugungi darsdan', N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 6 ishlab kelish, kelasi darsda tahlil qilamiz
 Lug‘atlarni yodlang

— Albatta bajaring.', N'https://t.me/DinaraDeutsch/5581', N'uz', Id, NULL, N'@DinaraDeutsch', 5581, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sizlarga uyga vazifa bugungi darsdan', Description = N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 6 ishlab kelish, kelasi darsda tahlil qilamiz
 Lug‘atlarni yodlang

— Albatta bajaring.'
    WHERE Url = N'https://t.me/DinaraDeutsch/5581';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5582')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'das Schmankerl = juda yoqimli, ajoyib yoki alohida yaxshi narsa (Bavariyada)', N'das Schmankerl = juda yoqimli, ajoyib yoki alohida yaxshi narsa (Bavariyada)

mazali “bonus” yoki yoqimli syurpriz

Misol:
— Zum Schluss gab es noch ein Schmankerl.
— Oxirida yana yoqimli bir narsa (syurpriz) bo‘ldi.

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5582', N'uz', Id, NULL, N'@DinaraDeutsch', 5582, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'das Schmankerl = juda yoqimli, ajoyib yoki alohida yaxshi narsa (Bavariyada)', Description = N'das Schmankerl = juda yoqimli, ajoyib yoki alohida yaxshi narsa (Bavariyada)

mazali “bonus” yoki yoqimli syurpriz

Misol:
— Zum Schluss gab es noch ein Schmankerl.
— Oxirida yana yoqimli bir narsa (syurpriz) bo‘ldi.

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5582';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5590')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Sizlarga uyga vazifa bugungi darsdan', N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Pluspunkt B1 Kursbuch 23-betgacha hamma mashqlarini bajarish + lugʻatlarini yodlash 
 Grammatik Aktiv 68-mavzu
 2ta sprechen qilish (Medien, Einkaufen)
 Pluspunkt Arbeitsbuch Kapitel 1ni ishlash 

— Albatta bajaring.', N'https://t.me/DinaraDeutsch/5590', N'uz', Id, NULL, N'@DinaraDeutsch', 5590, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Sizlarga uyga vazifa bugungi darsdan', Description = N'Sizlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Pluspunkt B1 Kursbuch 23-betgacha hamma mashqlarini bajarish + lugʻatlarini yodlash 
 Grammatik Aktiv 68-mavzu
 2ta sprechen qilish (Medien, Einkaufen)
 Pluspunkt Arbeitsbuch Kapitel 1ni ishlash 

— Albatta bajaring.'
    WHERE Url = N'https://t.me/DinaraDeutsch/5590';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5452')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Shu savolga hozir birga javob topamiz', N'Shu savolga hozir birga javob topamiz 

— Shu paytgacha sprechenni yaxshilash uchun nimalar qilib ko‘rgansiz? Qaysi usullar sizga foyda bergan — yozib qoldiring . 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5452', N'uz', Id, NULL, N'@DinaraDeutsch', 5452, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Shu savolga hozir birga javob topamiz', Description = N'Shu savolga hozir birga javob topamiz 

— Shu paytgacha sprechenni yaxshilash uchun nimalar qilib ko‘rgansiz? Qaysi usullar sizga foyda bergan — yozib qoldiring . 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5452';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5457')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Dars qilib boʻlib, tanaffusga chiqqanimizda, nima uchun "telefondan foydalanma" deyishadi? Axir tanaffusdamizku?', N'Savol: 

— Dars qilib boʻlib, tanaffusga chiqqanimizda, nima uchun "telefondan foydalanma" deyishadi? Axir tanaffusdamizku? 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5457', N'uz', Id, NULL, N'@DinaraDeutsch', 5457, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Dars qilib boʻlib, tanaffusga chiqqanimizda, nima uchun "telefondan foydalanma" deyishadi? Axir tanaffusdamizku?', Description = N'Savol: 

— Dars qilib boʻlib, tanaffusga chiqqanimizda, nima uchun "telefondan foydalanma" deyishadi? Axir tanaffusdamizku? 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5457';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5460')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'O‘ylardim : nega ko‘pchilik (men kuzatib keladigan insonlar) telefondan foydalanmaslik challenge qilayapti, hatto ijtimoiy tarm...', N'O‘ylardim : nega ko‘pchilik (men kuzatib keladigan insonlar) telefondan foydalanmaslik challenge qilayapti, hatto ijtimoiy tarmoqlardan chiqib ketayapti? Telefon shu darajada yomonmi? Axir undan yaxshi maqsadda ham foydalanish mumkin-ku: lug‘at qidirish, muhim xabarlarni olish va hokazo.

Lekin bitta narsani tushundim. Telefonni aynan dars qilayotgan paytda, ayniqsa tanaffus vaqtida ishlatmaslik kerak ekan. Biz esa aksincha qilamiz: “5–10 minut dam olaman” deb video ko‘ramiz.

Gap uzoq qolib ketish haqida ham emas aslida. Gap — o‘rgangan ma’lumotimizni saqlab qolishda.

Shu joyda video qoldiraman, albatta ko‘rib chiqing. O‘zim shu savolga javob berishni o‘ylagandim. Lekin shu sohani borini berib o‘rganayotgan insondan eshitsangiz, ko‘proq esingizda qoladi, menimcha.

Video: https://youtu.be/u0LObbpCxF4?si=MsLmPz9FiJnistdt 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5460', N'uz', Id, NULL, N'@DinaraDeutsch', 5460, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'O‘ylardim : nega ko‘pchilik (men kuzatib keladigan insonlar) telefondan foydalanmaslik challenge qilayapti, hatto ijtimoiy tarm...', Description = N'O‘ylardim : nega ko‘pchilik (men kuzatib keladigan insonlar) telefondan foydalanmaslik challenge qilayapti, hatto ijtimoiy tarmoqlardan chiqib ketayapti? Telefon shu darajada yomonmi? Axir undan yaxshi maqsadda ham foydalanish mumkin-ku: lug‘at qidirish, muhim xabarlarni olish va hokazo.

Lekin bitta narsani tushundim. Telefonni aynan dars qilayotgan paytda, ayniqsa tanaffus vaqtida ishlatmaslik kerak ekan. Biz esa aksincha qilamiz: “5–10 minut dam olaman” deb video ko‘ramiz.

Gap uzoq qolib ketish haqida ham emas aslida. Gap — o‘rgangan ma’lumotimizni saqlab qolishda.

Shu joyda video qoldiraman, albatta ko‘rib chiqing. O‘zim shu savolga javob berishni o‘ylagandim. Lekin shu sohani borini berib o‘rganayotgan insondan eshitsangiz, ko‘proq esingizda qoladi, menimcha.

Video: https://youtu.be/u0LObbpCxF4?si=MsLmPz9FiJnistdt 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5460';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5461')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'O‘ylardim: nega ko‘pchilik (men kuzatib keladigan insonlar) telefondan foydalanmaslik challenge qilayapti, hatto ijtimoiy tarmo...', N'O‘ylardim: nega ko‘pchilik (men kuzatib keladigan insonlar) telefondan foydalanmaslik challenge qilayapti, hatto ijtimoiy tarmoqlardan chiqib ketayapti? Telefon shu darajada yomonmi? Axir undan yaxshi maqsadda ham foydalanish mumkin-ku: lug‘at qidirish, muhim…', N'https://t.me/DinaraDeutsch/5461', N'uz', Id, NULL, N'@DinaraDeutsch', 5461, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'O‘ylardim: nega ko‘pchilik (men kuzatib keladigan insonlar) telefondan foydalanmaslik challenge qilayapti, hatto ijtimoiy tarmo...', Description = N'O‘ylardim: nega ko‘pchilik (men kuzatib keladigan insonlar) telefondan foydalanmaslik challenge qilayapti, hatto ijtimoiy tarmoqlardan chiqib ketayapti? Telefon shu darajada yomonmi? Axir undan yaxshi maqsadda ham foydalanish mumkin-ku: lug‘at qidirish, muhim…'
    WHERE Url = N'https://t.me/DinaraDeutsch/5461';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5479')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'S izlarga uyga vazifa bugungi darsdan', N'S izlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 2 textlarnini o‘zingiz ham tarjima qilishga harakat qiling, ovozingizni chiqarib uyda mashq qiling
 Lug‘atlarni yodlang
 Yangi Lesen Test 3ni ishlab kelish, darsda yana tahlil qilamiz

— Albatta ishlab chiqing .', N'https://t.me/DinaraDeutsch/5479', N'uz', Id, NULL, N'@DinaraDeutsch', 5479, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'S izlarga uyga vazifa bugungi darsdan', Description = N'S izlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 2 textlarnini o‘zingiz ham tarjima qilishga harakat qiling, ovozingizni chiqarib uyda mashq qiling
 Lug‘atlarni yodlang
 Yangi Lesen Test 3ni ishlab kelish, darsda yana tahlil qilamiz

— Albatta ishlab chiqing .'
    WHERE Url = N'https://t.me/DinaraDeutsch/5479';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5492')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'S izlarga uyga vazifa bugungi darsdan', N'S izlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 3 textlarnini o‘zingiz ham tarjima qilishga harakat qiling, ovozingizni chiqarib uyda mashq qiling
 Lug‘atlarni yodlang
 Yangi Lesen Test 4ni ishlab kelish, darsda yana tahlil qilamiz

— Albatta ishlab chiqing .', N'https://t.me/DinaraDeutsch/5492', N'uz', Id, NULL, N'@DinaraDeutsch', 5492, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'S izlarga uyga vazifa bugungi darsdan', Description = N'S izlarga uyga vazifa bugungi darsdan 

Hausaufgabe:
 Lesen Test 3 textlarnini o‘zingiz ham tarjima qilishga harakat qiling, ovozingizni chiqarib uyda mashq qiling
 Lug‘atlarni yodlang
 Yangi Lesen Test 4ni ishlab kelish, darsda yana tahlil qilamiz

— Albatta ishlab chiqing .'
    WHERE Url = N'https://t.me/DinaraDeutsch/5492';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5505')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Assalomu alaykum, hayrli kech', N'Assalomu alaykum, hayrli kech 

Ko‘pchilik til o‘rganishni boshlaydi-yu, lekin oxirigacha yetib bora olmaydi. Buning bir nechta aniq sabablari bor albatta: 

Sabablari:
1. Aniq maqsad yo‘qligi – “til o‘rganaman” degan umumiy niyat bor, lekin nima uchun (ish, o‘qish, sayohat) aniq belgilanmagan.
2. Motivatsiyaning pasayishi – boshida qiziqish kuchli bo‘ladi, keyin natija tez ko‘rinmagani uchun qiziqish so‘nadi.
3. Tizimsizlik – reja asosida emas, kayfiyatga qarab o‘rganish.
4. Qo‘rquv va uyat – gapirishdan qo‘rqish (“xato qilib qo‘ysam-chi?”).
5. Tez natija kutish – til o‘rganish vaqt talab qiladi, sabr yetishmaydi.
6. Muhit yetishmasligi – tilni ishlatish uchun amaliyot kam bo‘ladi.

❌ Shularni hisobiga: 
- Boshlangan ishlar oxiriga yetmaslik odatga aylanadi
- O‘ziga ishonch kamayadi
- Har safar “yana boshlayman” degan, lekin natijasiz aylana paydo bo‘ladi
- Vaqt va energiya behuda ketadi
- Til bilish orqali keladigan imkoniyatlar qo‘ldan boy beriladi

✅ Yechim sifatida:
- Aniq maqsad qo‘yish (masalan: 3 oyda A2 darajaga chiqish)
- Har kuni kamida 20–30 daqiqa ajratish
- Kichik natijalarni nishonlash
- Ko‘proq gapirish (xato bo‘lsa ham)
- O‘zingizni majburiy tizimga qo‘yish (kurs, sherik, reja)

— Eng muhimi: til o‘rganishda natija doimiylikka bog‘liq. 

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5505', N'uz', Id, NULL, N'@DinaraDeutsch', 5505, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Assalomu alaykum, hayrli kech', Description = N'Assalomu alaykum, hayrli kech 

Ko‘pchilik til o‘rganishni boshlaydi-yu, lekin oxirigacha yetib bora olmaydi. Buning bir nechta aniq sabablari bor albatta: 

Sabablari:
1. Aniq maqsad yo‘qligi – “til o‘rganaman” degan umumiy niyat bor, lekin nima uchun (ish, o‘qish, sayohat) aniq belgilanmagan.
2. Motivatsiyaning pasayishi – boshida qiziqish kuchli bo‘ladi, keyin natija tez ko‘rinmagani uchun qiziqish so‘nadi.
3. Tizimsizlik – reja asosida emas, kayfiyatga qarab o‘rganish.
4. Qo‘rquv va uyat – gapirishdan qo‘rqish (“xato qilib qo‘ysam-chi?”).
5. Tez natija kutish – til o‘rganish vaqt talab qiladi, sabr yetishmaydi.
6. Muhit yetishmasligi – tilni ishlatish uchun amaliyot kam bo‘ladi.

❌ Shularni hisobiga: 
- Boshlangan ishlar oxiriga yetmaslik odatga aylanadi
- O‘ziga ishonch kamayadi
- Har safar “yana boshlayman” degan, lekin natijasiz aylana paydo bo‘ladi
- Vaqt va energiya behuda ketadi
- Til bilish orqali keladigan imkoniyatlar qo‘ldan boy beriladi

✅ Yechim sifatida:
- Aniq maqsad qo‘yish (masalan: 3 oyda A2 darajaga chiqish)
- Har kuni kamida 20–30 daqiqa ajratish
- Kichik natijalarni nishonlash
- Ko‘proq gapirish (xato bo‘lsa ham)
- O‘zingizni majburiy tizimga qo‘yish (kurs, sherik, reja)

— Eng muhimi: til o‘rganishda natija doimiylikka bog‘liq. 

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5505';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5514')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'So‘zlarni eslab qolish uchun top usul nima?', N'So‘zlarni eslab qolish uchun top usul nima?

Javob oddiy: takrorlash va ishlatish.

Agar so‘zni faqat bir marta yodlasangiz — tez unutiladi.
Lekin uni bir necha marta ko‘rsangiz, yozsangiz va gap ichida ishlatsangiz, miyangiz uni eslab qoladi.

Shuning uchun yangi so‘zlarni:
— yozing
— gap ichida ishlating
— va muntazam takrorlab boring.

Shunda lug‘at boyligingiz asta-sekin, lekin mustahkam oshib boradi.

Yangi so‘zlarni eslab qolishning samarali usuli shuki, har bitta yangi so‘zni shu belgilangan davrlarda takrorlang:

- 1 kun
- 3 kun
- 7 kun
- 10 kun

Shu tarzda so‘zlar miyada mustahkam joylashadi va tez unutilmaydi.

Men oʻzim qiladigan usulim, o‘zimga juda muhim deb hisoblaydigan so‘zlarni doim ko‘zim ostida qo‘yaman .

U so‘zlarni keyin schreiben va sprechen mashqlarimga ham ishlatib ketishga harakat qilaman.

— Sizdan 1ta " ".

@DinaraDeutsch', N'https://t.me/DinaraDeutsch/5514', N'uz', Id, NULL, N'@DinaraDeutsch', 5514, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'So‘zlarni eslab qolish uchun top usul nima?', Description = N'So‘zlarni eslab qolish uchun top usul nima?

Javob oddiy: takrorlash va ishlatish.

Agar so‘zni faqat bir marta yodlasangiz — tez unutiladi.
Lekin uni bir necha marta ko‘rsangiz, yozsangiz va gap ichida ishlatsangiz, miyangiz uni eslab qoladi.

Shuning uchun yangi so‘zlarni:
— yozing
— gap ichida ishlating
— va muntazam takrorlab boring.

Shunda lug‘at boyligingiz asta-sekin, lekin mustahkam oshib boradi.

Yangi so‘zlarni eslab qolishning samarali usuli shuki, har bitta yangi so‘zni shu belgilangan davrlarda takrorlang:

- 1 kun
- 3 kun
- 7 kun
- 10 kun

Shu tarzda so‘zlar miyada mustahkam joylashadi va tez unutilmaydi.

Men oʻzim qiladigan usulim, o‘zimga juda muhim deb hisoblaydigan so‘zlarni doim ko‘zim ostida qo‘yaman .

U so‘zlarni keyin schreiben va sprechen mashqlarimga ham ishlatib ketishga harakat qilaman.

— Sizdan 1ta " ".

@DinaraDeutsch'
    WHERE Url = N'https://t.me/DinaraDeutsch/5514';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5515')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Erinmasdan deyarli hamma postlarni shu yerga yigʻib chiqdim. Siz ham erinmasdan oʻqib chiqing, muammolaringizga aniq yechim top...', N'Erinmasdan deyarli hamma postlarni shu yerga yigʻib chiqdim. Siz ham erinmasdan oʻqib chiqing, muammolaringizga aniq yechim topasiz.

https://t.me/DinaraDeutsch/5514 
 https://t.me/DinaraDeutsch/5505 
 https://t.me/DinaraDeutsch/5454 
 https://t.me/DinaraDeutsch/5453 
 https://t.me/DinaraDeutsch/5401 
 https://t.me/DinaraDeutsch/5358 
 https://t.me/DinaraDeutsch/5316 
 https://t.me/DinaraDeutsch/5313 
 https://t.me/DinaraDeutsch/5292 
 https://t.me/DinaraDeutsch/5287 
 https://t.me/DinaraDeutsch/5288 
 https://t.me/DinaraDeutsch/5289 
 https://t.me/DinaraDeutsch/5237 
 https://t.me/DinaraDeutsch/5233 
 https://t.me/DinaraDeutsch/5231 
 https://t.me/DinaraDeutsch/5226 
 https://t.me/DinaraDeutsch/5198 
 https://t.me/DinaraDeutsch/5197 
 https://t.me/DinaraDeutsch/5183 
 https://t.me/DinaraDeutsch/5180 
 https://t.me/DinaraDeutsch/5140?single 
 https://t.me/DinaraDeutsch/4624 
 https://t.me/DinaraDeutsch/4605 
 https://t.me/DinaraDeutsch/4434 
 https://t.me/DinaraDeutsch/4416 
 https://t.me/DinaraDeutsch/5896 
 https://t.me/DinaraDeutsch/5898 
 https://t.me/DinaraDeutsch/5900 
 https://t.me/DinaraDeutsch/5954 
 https://t.me/DinaraDeutsch/6171 
 https://t.me/DinaraDeutsch/6172 
 https://t.me/DinaraDeutsch/6173 
 https://t.me/DinaraDeutsch/6174 
 https://t.me/DinaraDeutsch/6190 
 https://t.me/DinaraDeutsch/6192 
 https://t.me/DinaraDeutsch/6195 
 https://t.me/DinaraDeutsch/6227?single 
 https://t.me/DinaraDeutsch/6231 
 https://t.me/DinaraDeutsch/6255 
 https://t.me/DinaraDeutsch/6264 
 https://t.me/DinaraDeutsch/6265 
 https://t.me/DinaraDeutsch/6279 

— Listimiz davom etgay .', N'https://t.me/DinaraDeutsch/5515', N'uz', Id, NULL, N'@DinaraDeutsch', 5515, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Erinmasdan deyarli hamma postlarni shu yerga yigʻib chiqdim. Siz ham erinmasdan oʻqib chiqing, muammolaringizga aniq yechim top...', Description = N'Erinmasdan deyarli hamma postlarni shu yerga yigʻib chiqdim. Siz ham erinmasdan oʻqib chiqing, muammolaringizga aniq yechim topasiz.

https://t.me/DinaraDeutsch/5514 
 https://t.me/DinaraDeutsch/5505 
 https://t.me/DinaraDeutsch/5454 
 https://t.me/DinaraDeutsch/5453 
 https://t.me/DinaraDeutsch/5401 
 https://t.me/DinaraDeutsch/5358 
 https://t.me/DinaraDeutsch/5316 
 https://t.me/DinaraDeutsch/5313 
 https://t.me/DinaraDeutsch/5292 
 https://t.me/DinaraDeutsch/5287 
 https://t.me/DinaraDeutsch/5288 
 https://t.me/DinaraDeutsch/5289 
 https://t.me/DinaraDeutsch/5237 
 https://t.me/DinaraDeutsch/5233 
 https://t.me/DinaraDeutsch/5231 
 https://t.me/DinaraDeutsch/5226 
 https://t.me/DinaraDeutsch/5198 
 https://t.me/DinaraDeutsch/5197 
 https://t.me/DinaraDeutsch/5183 
 https://t.me/DinaraDeutsch/5180 
 https://t.me/DinaraDeutsch/5140?single 
 https://t.me/DinaraDeutsch/4624 
 https://t.me/DinaraDeutsch/4605 
 https://t.me/DinaraDeutsch/4434 
 https://t.me/DinaraDeutsch/4416 
 https://t.me/DinaraDeutsch/5896 
 https://t.me/DinaraDeutsch/5898 
 https://t.me/DinaraDeutsch/5900 
 https://t.me/DinaraDeutsch/5954 
 https://t.me/DinaraDeutsch/6171 
 https://t.me/DinaraDeutsch/6172 
 https://t.me/DinaraDeutsch/6173 
 https://t.me/DinaraDeutsch/6174 
 https://t.me/DinaraDeutsch/6190 
 https://t.me/DinaraDeutsch/6192 
 https://t.me/DinaraDeutsch/6195 
 https://t.me/DinaraDeutsch/6227?single 
 https://t.me/DinaraDeutsch/6231 
 https://t.me/DinaraDeutsch/6255 
 https://t.me/DinaraDeutsch/6264 
 https://t.me/DinaraDeutsch/6265 
 https://t.me/DinaraDeutsch/6279 

— Listimiz davom etgay .'
    WHERE Url = N'https://t.me/DinaraDeutsch/5515';
END;
GO
IF NOT EXISTS (SELECT 1 FROM Resources WHERE Url = N'https://t.me/DinaraDeutsch/5516')
BEGIN
    INSERT INTO Resources (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
    SELECT N'Erinmasdan deyarli hamma postlarni shu yerga yigʻib chiqdim. Siz ham erinmasdan oʻqib chiqing, muammolaringizga aniq yechim top...', N'Erinmasdan deyarli hamma postlarni shu yerga yigʻib chiqdim. Siz ham erinmasdan oʻqib chiqing, muammolaringizga aniq yechim topasiz. https://t.me/DinaraDeutsch/5514 https://t.me/DinaraDeutsch/5505 https://t.me/DinaraDeutsch/5454…', N'https://t.me/DinaraDeutsch/5516', N'uz', Id, NULL, N'@DinaraDeutsch', 5516, 0, SYSUTCDATETIME()
    FROM Categories WHERE Name = N'Maqolalar';
END
ELSE
BEGIN
    UPDATE Resources
    SET Title = N'Erinmasdan deyarli hamma postlarni shu yerga yigʻib chiqdim. Siz ham erinmasdan oʻqib chiqing, muammolaringizga aniq yechim top...', Description = N'Erinmasdan deyarli hamma postlarni shu yerga yigʻib chiqdim. Siz ham erinmasdan oʻqib chiqing, muammolaringizga aniq yechim topasiz. https://t.me/DinaraDeutsch/5514 https://t.me/DinaraDeutsch/5505 https://t.me/DinaraDeutsch/5454…'
    WHERE Url = N'https://t.me/DinaraDeutsch/5516';
END;
GO

PRINT N'Tugadi: Materiallar muvaffaqiyatli saqlandi.';
GO