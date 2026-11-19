-- ============================================
--  2. Ders Ödevi — Oğuz Tükenmezer
--  Konu: COUNT / SUM / AVG, AND / OR, ORDER BY ve GROUP BY farkı
--  @ramazantech
-- ============================================
--
--  Nasıl yapılır:
--  1) Önce aşağıdaki tabloyu çalıştır (ders1'deki tablonun aynısı).
--  2) Her soruda sorguyu yazmadan önce dört soruyu cevapla:
--       Hangi tablo?  ->  FROM
--       Hangi satırlar kalsın?  ->  WHERE
--       "Her ... için" mi?  ->  GROUP BY
--       Ne göster, nasıl sırala?  ->  SELECT / ORDER BY
--  3) Çalıştırmadan önce tahmin et: KAÇ SATIR gelecek? Sayı mı, satır mı?
--  4) Karşılaştırmalı sorularda "ne değişti?" sorusunun cevabını yorum olarak yaz.
--  5) 20 dakika uğraşıp çıkmazsan bırak, hocaya ekran görüntüsü at.
-- ============================================


-- --- Tabloyu kur (bir kez çalıştır) ---
CREATE OR REPLACE TABLE siparis(musteri VARCHAR, sehir VARCHAR, tutar INT, tarih DATE);
INSERT INTO siparis VALUES
('Ayşe','Malmö',250,'2026-09-14'),
('Mehmet','Göteborg',90,'2026-09-30'),
('Ayşe','Malmö',400,'2026-10-05'),
('Can','Stockholm',60,'2026-10-21'),
('Elif','Göteborg',120,'2026-11-02'),
('Mehmet','Göteborg',310,'2026-11-16');


-- ============================================
--  BÖLÜM A — Süz, sonra say / topla / ortalama al
--  (Hepsinin kalıbı aynı: SELECT <fonksiyon> FROM siparis WHERE <koşul>;)
-- ============================================

-- A1) Göteborg'da kaç sipariş var?
-- Cevabın:

-- A2) Malmö'de kaç sipariş var?
-- Cevabın:

-- A3) Ayşe kaç sipariş vermiş?
-- Cevabın:

-- A4) Mehmet toplam ne kadar harcamış?
-- Cevabın:

-- A5) Ayşe toplam ne kadar harcamış?
-- Cevabın:

-- A6) Göteborg'daki siparişlerin toplamı ne kadar?
-- Cevabın:

-- A7) Malmö'deki siparişlerin ortalaması ne?
-- Cevabın:

-- A8) Göteborg'daki siparişlerin ortalaması ne? (ipucu: ROUND ile yuvarla)
-- Cevabın:

-- A9) Mehmet'in siparişlerinin ortalaması ne?
-- Cevabın:

-- A10) Göteborg'da 100'den büyük kaç sipariş var?
-- Cevabın:

-- A11) Göteborg'da 200'den küçük kaç sipariş var?
-- Cevabın:

-- A12) Kasım'da verilen, 200'den büyük kaç sipariş var? (ipucu: üç koşul)
-- Cevabın:


-- ============================================
--  BÖLÜM B — Karşılaştırmalı: iki soru, tek kelime farkı
--  Her çifti çözdükten sonra "-- Ne değişti:" satırını doldur.
-- ============================================

-- B1a) Malmö'de kaç sipariş var?
-- B1b) Malmö'nün toplam tutarı ne?
-- Cevabın (a):
-- Cevabın (b):
-- Ne değişti:

-- B2a) Göteborg'daki en yüksek sipariş hangisi? (müşteri ve tutar)
-- B2b) Göteborg'daki en düşük sipariş hangisi? (müşteri ve tutar)
-- Cevabın (a):
-- Cevabın (b):
-- Ne değişti:

-- B3a) 100'den büyük siparişler hangileri?
-- B3b) Göteborg'daki 100'den büyük siparişler hangileri?
-- Cevabın (a):
-- Cevabın (b):
-- Ne değişti:

-- B4a) Ayşe'nin VEYA Stockholm'un siparişlerinin toplamı ne?
-- B4b) Ayşe'nin Stockholm'daki siparişlerinin toplamı ne?
-- Cevabın (a):
-- Cevabın (b):
-- Ne değişti:   (ipucu: sonuç boş gelirse sorgu bozuk değildir, neden?)

-- B5a) Göteborg'un toplam tutarı ne?
-- B5b) Her şehrin toplam tutarı ne?
-- Cevabın (a):
-- Cevabın (b):
-- Ne değişti:

-- B6) Ayşe ve Mehmet toplam ne kadar harcamış? Önce ikisinin toplamı tek sayı,
--     sonra her biri ayrı ayrı. (ipucu: "ve" her zaman AND değildir)
-- Cevabın (tek sayı):
-- Cevabın (ayrı ayrı):


-- ============================================
--  BÖLÜM C — ORDER BY mı, GROUP BY mı?
--  Hatırla: ORDER BY sıralar (satır sayısı değişmez),
--           GROUP BY birleştirir (satır sayısı grup sayısına iner).
--  Her soruda önce tahminini yaz: kaç satır gelecek?
-- ============================================

-- C1a) Siparişleri müşteri adına göre sırala.
-- C1b) Her müşterinin toplam harcaması ne?
-- Tahmin (a) kaç satır:      Tahmin (b) kaç satır:
-- Cevabın (a):
-- Cevabın (b):

-- C2a) Bütün siparişleri büyükten küçüğe sırala.
-- C2b) Her şehrin toplamını büyükten küçüğe sırala.
-- Tahmin (a) kaç satır:      Tahmin (b) kaç satır:
-- Cevabın (a):
-- Cevabın (b):

-- C3a) En yüksek sipariş hangisi?
-- C3b) Her şehrin en yüksek siparişi ne? (ipucu: MAX)
-- Tahmin (a) kaç satır:      Tahmin (b) kaç satır:
-- Cevabın (a):
-- Cevabın (b):

-- C4) Her şehrin ortalama sipariş tutarı, yüksekten düşüğe. (ipucu: ROUND)
-- Cevabın:

-- C5) Her müşteri kaç sipariş vermiş, çoktan aza?
-- Cevabın:

-- C6) Her şehrin toplamlarını topla. Sonuç neye eşit çıkıyor? Neden?
-- Cevabın:


-- ============================================
--  BÖLÜM D — Sorgu yazma, sadece karar ver
--  Her satırın sonuna yaz: ORDER BY / GROUP BY / ikisi birden
-- ============================================
-- a) Siparişleri ucuzdan pahalıya diz              ->
-- b) Her şehirde ortalama tutar ne?                 ->
-- c) Müşteri adlarını alfabetik sırala              ->
-- d) Her müşterinin toplamı, en çok harcayan üstte  ->
-- e) Her şehirde kaç sipariş var?                   ->
-- f) En pahalı 2 siparişi getir                     ->


-- ============================================
--  Bitince: bu dosyayı kaydet ve repoya commit et.
-- ============================================
