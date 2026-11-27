# Odev 4: Tenis Ligi projesine baslangic

Teslim: 5. dersten once. Sure: 4 saat, UC ayri gune bolun.
Takildiginizda: 20 dakikadan fazla ugrasirsaniz ekran goruntusuyle bana yazin.

Bundan sonra dersler ve odev ayri: derste plandaki konulari ogreniyoruz, odevde kendi projenizde uyguluyorsunuz. Proje: Tenis Ligi Takip. Kitap/dil uygulamasi ikinci proje olarak sonra gelecek.

Bugunku dersin komutlari: /context, /clear, /compact, /usage, /review, /simplify, /verify, /btw, /rename. Odevde hepsini kullanacaksiniz.

## A. Tenis Ligi (yeni depo: tenis-ligi)

1. Yeni klasor "tenis-ligi". Icine gereksinim.md yazin (iskelet asagida). Her bolum dolu; "Simdilik yok" en az 4 madde. Bu bolum en onemlisi: oyunlar sayfasinda bu liste olsaydi dort oyun degil bir oyun olurdu.
2. 2. Excel'in ekran goruntusunu ve son 10 macin sonucunu ornek-veri.md olarak depoya koyun. 5. derste sizin uygulamanizin siralamasi Excel'le ayni cikiyor mu, ona bakacagim.
   3. 3. CLAUDE.md: sitem'deki kurallar + su iki satir:
      4.    - gereksinim.md'deki "Simdilik yok" listesindekileri onerme bile.
            -    - Her ozellik bittikten sonra bana hatirlat: yeni oturumda /review calistir, en az 2 bulguyu duzelt.
                 - 4. Plan modunda (Shift+Tab > Plan): "gereksinim.md'yi oku. ilk surum icin EN KUCUK cozumu oner: 3 secenek, her biri icin arac, zorluk, neyi yapamayacagi, sonra Supabase'e gecis kolay mi. kod yazma". Birini secin, nedenini gereksinim.md'ye bir satir yazin.
                   5. 5. Ilk calisan adim, fazlasi yok: mac sonucu girebiliyorum, listede gorunuyor, sayfayi kapatip acinca duruyor. Siralama bile yok. Planda kapsami asan bir sey gorurseniz: "No, keep planning: bunu simdilik yok listesine al".
                      6. 6. Gercek veriyle test: ornek-veri.md'deki 10 maci girin. Bitti olcutunuze gore calisti mi?
                         7. 7. git init, git branch -M main, GitHub'da depo, push. Vercel'e alin.
                           
                            8. ## B. Inceleme dongusu (tenis-ligi'nde, ilk adim bitince)
                           
                            9. 8. Sirayla: /clear > /review > en onemli 2 bulguyu plan modunda duzelt > yeni dalda /simplify > tarayicida test > /verify ile Claude'a da test ettir > PR ac > merge. Her adimi gunluge: komut ne yapti, ben ne gordum.
                              
                               9. ## C. Sitem
                              
                               10. 9. /clear, sonra: /review index.html js/main.js. 2 bulgu duzeltin, commit.
                                   10. 10. 4 oyun icin test.md'ye ucer cumle: ne yapiyor, nasil test ettim, neyi bozabilir.
                                       11. 11. Ana dali main yapin (sektor standardi), sirayla:
                                           12.     git branch -m master main
                                           13.     git push -u origin main
                                           14.     GitHub: Settings > Branches > Default branch > main
                                           15.     Vercel: Project > Settings > Git > Production Branch > main
                                           16.     Sonra: git push origin --delete master
                                           17.     Gunluge: neden main, neyi degistirmek zorunda kaldim.
                                          
                                           18. ## D. Her seyde
                                          
                                           19. 12. Gunluk, tam bicim: her istekten sonra kendi elinizle iki satir: "istedim: ... / gordum: ...". Claude'a yazdirmayin.
                                               13. 13. Her oturum basinda /context'e bakin, dolu mu bos mu, gunluge not edin. Yeni ise baslarken /clear.
                                                   14. 14. Her oturuma /rename ile isim verin (odev4-tenis-adim1 gibi).
                                                       15. 15. En az 6 commit, 3 gunde, en az 2'si elle.
                                                          
                                                           16. ## Teslim
                                                          
                                                           17. - tenis-ligi depo linki + canli link (Vercel)
                                                               - - gunluk.md
                                                                 - - sitem'de merge edilmis simplify PR'i
                                                                  
                                                                   - ## 5. derste bakacagim bes sey
                                                                  
                                                                   - 1. gereksinim.md'de "Simdilik yok" listesi var mi ve ilk surum ona uymus mu.
                                                                     2. 2. 10 maci girince liste dogru mu (siralama henuz yok, sadece liste).
                                                                        3. 3. /review kac bulgu cikardi, hangi ikisini neden sectiniz.
                                                                           4. 4. Gunlukte her istek icin "gordum" satiri var mi.
                                                                              5. 5. sitem'de ana dal main mi.
                                                                                
                                                                                 6. ---
                                                                                
                                                                                 7. ## gereksinim.md iskeleti
                                                                                
                                                                                 8.     # Proje: Tenis Ligi Takip
                                                                                
                                                                                 9.     ## Dert
                                                                                 10.     Kulup liginde skorlar ve siralama Excel'e elle giriliyor.
                                                                                 11.     [kim dolduruyor, ne siklikla, kac oyuncu, herkes herkesle mi]
                                                                                
                                                                                 12.     ## Kim kullanacak
                                                                                 13.     Ilk surum: sadece ben (yonetici). Sonra: oyuncular kendi skorunu girer.
                                                                                
                                                                                 14.     ## Girdi
                                                                                 15.     Bir mac: iki oyuncu, tarih, skor [set mi oyun mu, biçim].
                                                                                
                                                                                 16.     ## Cikti
                                                                                 17.     Siralama tablosu: oyuncu, oynanan, galibiyet, maglubiyet, puan, [averaj].
                                                                                 18.     Puanlama kurali: [galibiyet kac puan, beraberlik var mi]
                                                                                
                                                                                 19.     ## Olmazsa olmaz (ilk surum, en fazla 3)
                                                                                 20.     1. Mac sonucu girebiliyorum.
                                                                                 21.     2. Siralama otomatik hesaplaniyor ve ekranda gorunuyor.
                                                                                 22.     3. Veriler kaybolmuyor.
                                                                                
                                                                                 23.     ## Simdilik yok
                                                                                 24.     - Mac teklifi ve kabul
                                                                                 25.     - Bildirim / WhatsApp
                                                                                 26.     - Oyuncu girisi ve sifre
                                                                                 27.     - Fikstur olusturma
                                                                                 28.     - Gecmis sezonlar
                                                                                
                                                                                 29.     ## Bitti olcutu
                                                                                 30.     Excel'deki son 10 maci girince siralama Excel'dekiyle birebir ayni cikiyor.
                                                                                
                                                                                 31.     ## Secilen arac ve nedeni
                                                                                 32.     [4. maddeden sonra doldurulacak]
                                                                                 33. 
