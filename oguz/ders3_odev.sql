-- ============================================
--  3. Ders Ödevi — Oğuz Tükenmezer
--  Konu: aggregation, WHERE/HAVING, metin temizleme, tırnak, LIKE, temiz tablo
--  @ramazantech
-- ============================================
--
--  Nasıl yapılır:
--  1) Her konuda önce MİNİ TABLO sorularını çöz, sonra aynı kalıbı KURSUN VERİSİNDE dene.
--  2) B ve C sorularında yazmadan önce "bir öncekinden ne değişti?" satırını doldur.
--  3) Çalışan sorguyu "Cevabın:" satırının altına yaz.
--  4) Acele yok: her konudan A ve B'yi yapman yeterli, gerisi bonus.
--  5) 20 dakika uğraşıp çıkmazsan bırak, hocaya ekran görüntüsü at.
-- ============================================

-- ---------- KURULUM 1: mini tablolar (DuckDB'de bir kez çalıştır) ----------
CREATE OR REPLACE TABLE siparis(musteri VARCHAR, sehir VARCHAR, tutar INT);
INSERT INTO siparis VALUES
('Ayşe','Malmö',250), ('Mehmet','Göteborg',90), ('Ayşe','Malmö',400),
('Can','Stockholm',60), ('Elif','Göteborg',120), ('Mehmet','Göteborg',310);

CREATE OR REPLACE TABLE sozluk(sql_word VARCHAR, example VARCHAR);
INSERT INTO sozluk VALUES
(' SELECT ', ' SeLEcT column1 FROM table_name ;'),
('  from', '   select  column1   from   table_name  ;'),
('wheRE', 'SeLECT * FROM table_name where condition ;'),
(' JOIN  ', 'SELECT * from table1 join table2 ON table1.id = table2.id ;'),
('GrOUP by', 'Select column_name, COUNT(*) from table_name group by column_name;'),
('orderBY  ', '  SELECT * FROM table_name ORDER by column_name ASC;'),
('INSert  ', ' insert into table_name (column1, column2) values (value1, value2);'),
(' upDate ', ' update table_name set column1 = value1 WHERE condition ;'),
('  DELETE', '  DELETE FROM table_name where condition ;'),
('AlTER', '   ALTER TABLE table_name ADD column_name datatype;');

-- ---------- KURULUM 2: kursun verisi (Git Bash terminalinde) ----------
--   cd ~/duckdb_sql_analytics_course/08_strings
--   duckdb glossary.duckdb < sql/ingest_glossary.sql     (sadece ilk sefer)
--   duckdb glossary.duckdb
--   Kontrol:  SELECT * FROM staging.sql_glossary LIMIT 5;
--   Tablolar dosyaya kaydedilir; bir dahaki sefere sadece: duckdb glossary.duckdb


-- ============================================
--  1 · Aggregation
--  Çok satırı tek sayıya indirmek: COUNT, SUM, AVG, MIN, MAX
-- ============================================

-- --- Mini tablo (önce burada) ---

-- A) Kaç sipariş var?
-- Cevabın:


-- B) Bütün siparişlerin toplam tutarı ne?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Ortalama sipariş tutarı ne?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · terminalde glossary.duckdb ---

-- A) Sözlükte kaç kelime var?
-- Cevabın:


-- B) Temizlenmiş kelimelerin en uzunu kaç harf?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Temizlenmiş kelimelerin ortalama uzunluğu ne?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Mini tablo · 2. tur ---

-- A) En ucuz sipariş tutarı ne?
-- Cevabın:


-- B) En pahalı sipariş tutarı ne?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Malmö'de kaç sipariş var?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · 2. tur ---

-- A) En kısa temiz kelime kaç harf?
-- Cevabın:


-- B) example sütununun en uzunu kaç karakter?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Açıklamalar (description) ortalama kaç karakter?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- ============================================
--  2 · WHERE ve HAVING
--  WHERE satırı eler, HAVING kovayı. Koşulda SUM/COUNT varsa HAVING.
-- ============================================

-- --- Mini tablo (önce burada) ---

-- A) 100'den büyük siparişleri getir.
-- Cevabın:


-- B) Toplamı 500'den büyük olan şehirler hangileri?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) 100'den büyük siparişler arasında, toplamı 500'ü geçen şehir hangisi?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · terminalde glossary.duckdb ---

-- A) 6 harften uzun kelimeler hangileri?
-- Cevabın:


-- B) Her uzunlukta kaç kelime var? 2'den fazla kelimesi olan uzunlukları göster.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) 5 harften uzun kelimeler arasında, 1'den fazla kelimesi olan uzunluklar?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Mini tablo · 2. tur ---

-- A) Göteborg'daki siparişleri getir.
-- Cevabın:


-- B) Her şehirde kaç sipariş var? 1'den fazla olanları göster.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Aynısını sadece 100'den büyük siparişlerle yap.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · 2. tur ---

-- A) Örneği 'select' ile başlayan kelimeler hangileri?
-- Cevabın:


-- B) Her ilk harfle kaç kelime başlıyor? 1'den fazla olanları göster.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Aynısını sadece gizli boşluğu olan kelimelerle yap.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- ============================================
--  3 · Gizli boşluk ve karakter
--  Sayma 1'den başlar: [1] ilk, [-1] son karakter
-- ============================================

-- --- Mini tablo (önce burada) ---

-- A) Ham kelimenin ilk karakteri ne? (köşeli parantezle göster)
-- Cevabın:


-- B) Temizlenmiş kelimenin ilk harfi ne?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Temizlenmiş kelimenin son harfi ne?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · terminalde glossary.duckdb ---

-- A) Başında ya da sonunda gizli boşluk olan kaç kelime var?
-- Cevabın:


-- B) Hiç gizli boşluğu olmayan kelimeler hangileri?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Temizlenmiş hali D harfiyle başlayan kelimeler?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Mini tablo · 2. tur ---

-- A) Ham kelimenin son karakteri ne? (köşeli parantezle)
-- Cevabın:


-- B) Temiz kelimenin ikinci harfi ne?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Temiz kelimenin ilk iki harfi ne?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · 2. tur ---

-- A) Temiz kelimenin ilk 3 harfi ne? (hocanın slicing.sql dosyasındaki gibi)
-- Cevabın:


-- B) Son harfi T olan kelimeler hangileri?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Son harfi T olan kaç kelime var?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- ============================================
--  4 · İç içe fonksiyon
--  İçten dışa okunur: önce en içteki çalışır
-- ============================================

-- --- Mini tablo (önce burada) ---

-- A) Kelimelerin boşluklarını at.
-- Cevabın:


-- B) Boşlukları at, sonra büyük harf yap.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Temiz kelimenin kaç harf olduğunu da göster.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · terminalde glossary.duckdb ---

-- A) Bütün kelimeleri temizleyip küçük harfe çevir.
-- Cevabın:


-- B) Temiz, büyük harfli kelimenin sonuna ' command' ekle. (ilk 3 satır)
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) En uzun 4 kelimeyi uzunluklarıyla göster.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Mini tablo · 2. tur ---

-- A) Temiz, büyük harfli kelimeyi ters çevir.
-- Cevabın:


-- B) Temiz, büyük harfli kelimenin ilk 3 harfi?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) İlk 3 harfi ters çevir.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · 2. tur ---

-- A) Açıklamadaki fazla boşlukları teke indir. (ilk 2 satır)
-- Cevabın:


-- B) Aynısını hocanın replace yöntemiyle dene: iki boşluğu bire çevir.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Açıklamada 'select' kelimesi kaçıncı karakterde başlıyor? (0 = hiç yok)
--    Bir öncekinden ne değişti:
-- Cevabın:


-- ============================================
--  5 · Tek tırnak mı, çift tırnak mı?
--  Tek tırnak metin, çift tırnak sütun adı
-- ============================================

-- --- Mini tablo (önce burada) ---

-- A) Malmö'deki siparişleri getir.
-- Cevabın:


-- B) Bunu çift tırnakla yaz: WHERE sehir = "Malmö". Ne olur, neden?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Mehmet'in siparişlerini getir.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · terminalde glossary.duckdb ---

-- A) JOIN kelimesinin açıklamasını getir.
-- Cevabın:


-- B) Aynısını "JOIN" (çift tırnak) ile yaz. Ne olur?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Temizlemeden yaz: WHERE sql_word = 'JOIN'. Kaç satır gelir, neden?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Mini tablo · 2. tur ---

-- A) Stockholm'daki siparişleri getir.
-- Cevabın:


-- B) Tırnaksız yaz: WHERE sehir = Stockholm. Ne olur?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Küçük harfle yaz: WHERE sehir = 'stockholm'. Kaç satır gelir?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · 2. tur ---

-- A) SELECT kelimesinin satırı kaç tane?
-- Cevabın:


-- B) Aynısını 'select' (küçük harf) ile ara.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Küçük harfle aramak istiyorsan ne değişmeli?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- ============================================
--  6 · LIKE ile arama
--  % = gerisi ne olursa · _ = tam bir karakter
-- ============================================

-- --- Mini tablo (önce burada) ---

-- A) S harfiyle başlayan kelimeler?
-- Cevabın:


-- B) İçinde S harfi geçen kelimeler?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Tam 4 harfli kelimeler?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- D) İçinde E geçmeyen kelimeler?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · terminalde glossary.duckdb ---

-- A) Örneği 'select' ile başlayan kaç satır var? Önce temizlemeden dene.
-- Cevabın:


-- B) Aynısı, ama önce temizleyerek.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Açıklamasında 'table' geçen komutlar?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- D) Tam 4 harfli komutlar?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Mini tablo · 2. tur ---

-- A) D harfiyle başlayan kelimeler?
-- Cevabın:


-- B) İçinde D geçen kelimeler?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) E harfiyle biten kelimeler?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- D) İkinci harfi E olan kelimeler?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · 2. tur ---

-- A) IN ile başlayan komutlar?
-- Cevabın:


-- B) İçinde IN geçen komutlar?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) Açıklamasında 'rows' geçen komutlar?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- D) Açıklamasında 'table' geçmeyen kaç komut var?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- ============================================
--  7 · Ham tablodan temiz tablo
--  Ham veriye dokunmadan temiz kopyasını ayrı kaydet
-- ============================================

-- --- Mini tablo (önce burada) ---

-- A) Temizlenmiş kelimelerden 'temiz' adında bir tablo yap ve göster.
-- Cevabın:


-- B) Temiz tabloda kaç kelime var?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) SELECT kelimesini iki tabloda da = ile ara. Fark ne?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · terminalde glossary.duckdb ---

-- A) Hocanın yaptığı gibi refined.sql_glossary tablosunu oluştur.
-- Cevabın:


-- B) Temiz tabloda kaç kelime var?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) SELECT kelimesini staging ve refined'da = ile ara.
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Mini tablo · 2. tur ---

-- A) Temiz kelime ve uzunluğuyla 'temiz2' tablosu yap, ilk 3 satırı göster.
-- Cevabın:


-- B) temiz2'deki en uzun 3 kelime?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) temiz2'de tam 6 harfli kelimeler?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- --- Kursun verisi · 2. tur ---

-- A) refined tablosunda ORDER ile başlayan kelimeyi bul.
-- Cevabın:


-- B) refined'da 'ORDER BY' (boşluklu) var mı?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- C) refined'da içinde E geçen kaç kelime var?
--    Bir öncekinden ne değişti:
-- Cevabın:


-- ============================================
--  BONUS (zor, istersen): Bütün tablodaki en uzun kelimeler
--  İpucu: metni regexp_split_to_array(lower(...), '[^a-z]+') ile kelimelere böl,
--         unnest ile satırlara aç, sonra length'e göre sırala.
-- ============================================
-- Cevabın:

-- ============================================
--  Bitince: dosyayı kaydet ve repoya commit et.
-- ============================================
