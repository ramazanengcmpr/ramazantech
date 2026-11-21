# Odev 3: Siteyi gercek bir urune cevirmek

Teslim: 4. dersten once. Sure: toplam 5-6 saat, en az UC ayri gune bolun (arada uyku olsun).
Takildiginizda: 20 dakikadan fazla ugrasirsaniz ekran goruntusuyle bana yazin.

Bu odev oncekilerden zor. Dort parca var, her biri kendi icinde biter. Siraya uyun; her parca bir oncekinin uzerine kuruluyor. Kod yazmak yok, kod okumak yok. Ama her parcada: istegi uc parcayla yaz, plan modunda ver, planda en az bir seyi degistirt, her izni oku, bitti olcutuyle test et, gunluge yaz, commit at.

## Degismeyen kurallar

- Her istek once test.md'ye yazilir: ne istiyorum, kisitlar, bitti olcutu.
- - Her istek plan modunda verilir (Shift+Tab ile Plan). Planda en az bir kere "No, keep planning" ile degisiklik istenir.
  - - Onay her zaman "Yes, manually approve edits". Auto yok.
    - - Her istekten sonra gunluge kendi elinizle iki satir: ne istedim, tarayicida ne gordum.
      - - Her parca bitince commit. Toplam en az 8 commit, en az 3'u elle.
        - - Her push'tan sonra canli siteyi telefondan kontrol edin.
         
          - ## Parca 1: Calisan iletisim formu (1.5 saat)
         
          - Su an formunuz gercek mesaj gondermiyor. Gercek gonderecek.
         
          - 1. formspree.io'ya ucretsiz kaydolun, "New form" ile bir form olusturun, size verdigi adresi kopyalayin (https://formspree.io/f/xxxx gibi).
            2. 2. test.md'ye istegi yazin. Ornek ne istiyorum: "Iletisim formu Formspree ile gercek mesaj gondersin. Form adresi: ... Gonderince sayfa yenilenmesin, 'Mesajiniz ulasti' yazsin. Hata olursa 'Gonderilemedi, tekrar deneyin' yazsin."
               3. 3. Kisitlar: mevcut tasarim ve alan kontrolleri bozulmayacak, dis kutuphane yok.
                  4. 4. Bitti olcutu: formu doldurup gonderince e-postaniza mesaj geliyor. Bos gonderince hata uyarilari hala cikiyor. Internet kapaliyken gonderince "Gonderilemedi" yaziyor.
                     5. 5. Plan modunda verin, plani okuyun, bir sey degistirtin, onaylayin, test edin.
                        6. 6. Canli sitede telefondan gercek bir mesaj gonderin, e-postaniza dustugunu gorun.
                          
                           7. Zor kisim: Formspree adresi herkese acik depoda duracak. Claude'a sorun: "bu adres depoda acik durursa ne olur, risk var mi?" Cevabi gunluge yazin.
                          
                           8. ## Parca 2: Ikinci sayfa, kucuk bir web araci (2 saat)
                          
                           9. Siteye "Araclar" diye ikinci bir sayfa ve icine tarayicida calisan kucuk bir arac. Konuyu siz secin, uc oneri:
                          
                           10. - KDV hesaplayici: tutar gir, KDV orani sec, KDV'li ve KDV'siz tutari goster.
                               - - Dosya uzanti rehberi: uzanti yaz (.pdf, .mp4), hangi turde oldugunu ve odev1'deki betigin onu hangi klasore koyacagini soylesin.
                                 - - Metin sayaci: metin yapistir, kelime, karakter ve okuma suresini goster.
                                  
                                   - Sartlar:
                                  
                                   - 1. Ayri dosya: araclar.html. Ana sayfadaki menuden link, araclar sayfasindan ana sayfaya donus linki.
                                     2. 2. CLAUDE.md'deki HTML standartlari bu sayfada da gecerli (title, description, lang, viewport, alt). Lighthouse SEO 100, Accessibility 100.
                                        3. 3. Arac klavyeyle kullanilabilmeli: Tab ile alanlara gidiliyor, Enter ile hesapliyor.
                                           4. 4. Bitti olcutunu siz yazin, en az 4 madde. Birinde "yanlis giris" olsun: harf girince ne olacak, bos birakinca ne olacak.
                                              5. 5. Istegi uc parcayla yazin, plan modunda verin, degistirtin, onaylayin.
                                                 6. 6. Telefon testi ve Lighthouse canli adreste.
                                                   
                                                    7. Zor kisim: Plani okurken sunu sorun: "bu arac internete bagli olmadan da calisir mi?" Calismali. Calismiyorsa "No, keep planning" deyip degistirtin.
                                                   
                                                    8. ## Parca 3: Dal ve degisiklik istegi (1 saat, yeni konu)
                                                   
                                                    9. Simdiye kadar her seyi dogrudan main'e attiniz. Gercek projelerde boyle yapilmaz; once ayri bir dalda calisilir, sonra birlestirilir. Bunu Claude'a yaptirarak ogreneceksiniz.
                                                   
                                                    10. 1. Claude'a: "ozellik/koyu-tema-dugmesi adinda yeni bir git dali ac ve o dala gec. ne yaptigini acikla". Izni okuyun. Sonra terminale "git branch" yazin: yildizli olan hangi dal?
                                                        2. 2. Bu dalda kucuk bir ozellik: sag ustte koyu/acik tema dugmesi, secim tarayicida hatirlansin. Istegi uc parcayla yazin, plan modunda verin.
                                                           3. 3. Claude'a: "bu dali github'a gonder ve bir pull request ac. aciklamasini turkce yaz: ne degisti, nasil test edilir". Izni okuyun.
                                                              4. 4. GitHub'da Pull requests sekmesini acin. "Files changed" sekmesinde kirmizi ve yesil satirlara bakin. Bir yorum yazin (kendinize): "test ettim, telefonda calisiyor".
                                                                 5. 5. "Merge pull request" dugmesine basin. Sonra bilgisayarda: "git checkout main" ve "git pull". Dugme ana sayfada gorunuyor mu?
                                                                    6. 6. Gunluge yazin: dal ne ise yaradi, PR ne ise yaradi, kendi cumlelerinizle.
                                                                      
                                                                       7. Zor kisim: Vercel, PR acilinca "Preview" adinda ayri bir link uretir. PR sayfasinda Vercel yorumunu bulun, preview linkini acin. Main'deki site degismeden yeni ozelligi canli gormek bu.
                                                                      
                                                                       8. ## Parca 4: Hata ayiklama, kendi basiniza (45 dk)
                                                                      
                                                                       9. 1. Claude'a: "js/main.js icinde bir satiri bilerek boz, hangi satir oldugunu bana soyleme. amac hata ayiklama pratigi". (Evet, Claude bunu yapar; CLAUDE.md'deki silme yasagi bozmayi kapsamaz.)
                                                                          2. 2. Tarayicida F12 > Console. Kirmizi hatayi okuyun: tur, dosya, satir.
                                                                             3. 3. Hatayi oldugu gibi kopyalayip Claude'a verin, duzelttirin, diff'i okuyun, test edin.
                                                                                4. 4. Ayni seyi css/style.css icin yapin. Bu sefer console'da hata cikmaz; gozle bulacaksiniz.
                                                                                   5. 5. Gunluge: iki hatayi nasil buldunuz, aradaki fark ne.
                                                                                     
                                                                                      6. ## Kendi derdiniz (zorunlu, 15 dk)
                                                                                     
                                                                                      7. test.md'nin sonuna, tekrar eden ve sizi sikan bir isi 5 cumleyle yazin: ne yapiyorsunuz, ne siklikla, ne kadar suruyor, hangi programda, en can sikici kismi ne. Kod dusunmeyin. 5. derste gercek proje bu olacak; yazmazsaniz 5. ders bos gecer.
                                                                                     
                                                                                      8. ## Teslim
                                                                                     
                                                                                      9. - Canli site linki (ana sayfa + araclar sayfasi)
                                                                                         - - Depo linki; Pull requests sekmesinde merge edilmis 1 PR gorunmeli
                                                                                           - - test.md'de: 4 istek (uc parcali), gunluk, kendi derdiniz
                                                                                            
                                                                                             - ## 4. derste bakacagim bes sey
                                                                                            
                                                                                             - 1. Formdan telefonla mesaj gonderiyorum, e-postaniza dusuyor mu.
                                                                                               2. 2. Araclar sayfasinda yanlis giris yapiyorum, ne oluyor.
                                                                                                  3. 3. GitHub'da merge edilmis PR ve "Files changed" sekmesini bana anlatiyor musunuz.
                                                                                                     4. 4. Gunlukte her istek icin "ne gordum" satiri var mi.
                                                                                                        5. 5. "Kendi derdiniz" yazilmis mi.
                                                                                                          
                                                                                                           6. Bu odev zor. Bir parcayi bitiremezseniz atlamayin, nerede takildiginizi gunluge yazip bana gonderin. Yarim parca sifir parcadan iyidir.
                                                                                                           7. 
