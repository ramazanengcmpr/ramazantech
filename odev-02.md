# Odev 2: Kisisel web sitesi

Teslim: 3. dersten once. Sure: toplam 3-4 saat, en az iki ayri gune bolun.
Takildiginizda: 20 dakikadan fazla ugrasirsaniz ekran goruntusuyle bana yazin.

Bu odevde kod yazmak yok, kod okumak yok. Uc is var: istemek, plani okuyup onaylamak, tarayicida test etmek.

## 1. Klasor ve Git

1. Masaustunde "sitem" diye yeni klasor acin, VS Code'da acin (File > Open Folder), terminale claude yazin. Bugunku deneme2 klasorunu kullanmayin.
2. 2. Claude'a sunu yapistirin:
  
   3.    bu klasoru git deposu yap ve CLAUDE.md olustur. kurallar: turkce cevap ver, kod yazmadan once planini anlat ve onayimi bekle, hicbir dosyayi silme, her degisiklikten sonra nasil test edecegimi soyle. her sayfada title, meta description, lang="tr", viewport ve gorsellerde alt yazisi olsun.
  
   4.3. Izin ekranini okuyun, onaylayin.
   4. GitHub'da "sitem" deposu acip baglayin (1. dersteki gibi). Hatirlamazsaniz Claude'a "bu klasoru github'a nasil baglarim, adim adim soyle" deyin.
  
   5. ## 2. Site (her maddeden sonra tarayicida F5, sonra commit)
  
   6. 1. Ana sayfa: adiniz, kisa tanitim, fotograf yeri, iletisim (e-posta ya da Instagram). Tek dosya: index.html. Dis kutuphane yok.
      2. 2. Projeler bolumu: "Dosya duzenleyici" projenizi ekleyin: ne yapiyor, GitHub linki: https://github.com/yunussorgut1984/odev1
         3. 3. Gorunum: koyu veya acik tema secin, renkleri degistirin. Begenene kadar Claude'a "sunu soyle yap" deyin. En az 3 degisiklik isteyin.
            4. 4. Telefon testi: Chrome'da F12, sonra Ctrl+Shift+M (telefon gorunumu). Ustten iPhone secin. Bozulan yer varsa ekran goruntusu alip Claude'a "telefonda boyle gorunuyor, duzelt" deyin.
               5. 5. Fotograf ve yazi tipi: unsplash.com'dan bir fotograf, fonts.google.com'dan bir yazi tipi secin. Claude'a "bu fotografi arka plan yap, bu yazi tipini kullan" deyin. Izin ekraninda ne yaptigini okuyun.
                 
                  6. ## 3. Arama motoru testi (Lighthouse)
                 
                  7. 1. Chrome'da siteyi acin, F12, ustteki sekmelerden "Lighthouse" (gorunmuyorsa >> isaretine tiklayin).
                     2. 2. Sadece "SEO" ve "Performance" kutularini isaretleyin, "Analyze page load" deyin.
                        3. 3. Cikan puani ve kirmizi maddeleri TEST.md'ye yazin.
                           4. 4. Kirmizi maddeleri oldugu gibi kopyalayip Claude'a verin: "lighthouse su eksikleri buldu: ... bunlari duzelt, once planini anlat"
                              5. 5. Tekrar Lighthouse calistirin, yeni puani yazin. Hedef: SEO 90 ve ustu.
                                 6. 6. Lighthouse yerel dosyada calismazsa Claude'a "siteyi yerel sunucuda ac" deyin, verdigi localhost adresinde deneyin.
                                   
                                    7. ## 4. TEST.md
                                   
                                    8. Her degisiklikten sonra iki satir: ne istedim, tarayicida ne gordum. Bozulan bir sey olduysa onu da yazin, nasil duzelttiginizi de. Lighthouse puanlari da buraya.
                                   
                                    9. ## 5. Kayit
                                   
                                    10. En az 5 commit, en az 2 ayri gun. Mesajlar Turkce ve ne degistigini soylesin. Bazen elle (git add / git commit / git push), bazen Claude'a yaptirin ("degisiklikleri kaydet ve gonder"). Ikisini de yapin.
                                   
                                    11. ## 6. Izin provasi
                                   
                                    12. Bir kere Claude'a "index.html dosyasini sil" deyin. Izin ekrani gelince HAYIR deyin. TEST.md'ye ne oldugunu yazin. Izin ekrani bunun icin var.
                                   
                                    13. ## 7. 3. derse hazirlik
                                   
                                    14. 1. 3. derste siteyi internete acacagiz. vercel.com'a GitHub hesabinizla ucretsiz kaydolun, baska bir sey yapmayin.
                                           4. 2. Terminale "node --version" yazin, cikani bana gonderin.
                                              3. 3. Kendi hayatinizdan "sunu otomatik yapan bir sey istiyorum" dediginiz bir derdi 3-5 cumleyle TEST.md'nin sonuna yazin.
                                                
                                                 4. ## Teslim
                                                
                                                 5. GitHub'daki "sitem" deposunun linkini dersten once gonderin.
                                                
                                                 6. ## 3. derste bakacagim uc sey
                                                
                                                 7. 1. Site tarayicida aciliyor ve telefon genisliginde bozulmuyor mu.
                                                    2. 2. Depoda en az 5 commit, 2 ayri gunde; en az biri Claude'un, biri elle.
                                                       3. 3. TEST.md'de "ne istedim, ne gordum" kayitlari, Lighthouse puanlari ve reddedilen silme provasi var mi.
                                                          4. 
