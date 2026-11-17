-- ============================================
--  1. Ders Ödevi — Oğuz Tükenmezer
--  Konu: SELECT, WHERE, GROUP BY, CASE
--  @ramazantech
-- ============================================
--
--  Nasıl yapılır:
--  1) DuckDB arayüzünde (duckdb -ui) önce aşağıdaki tabloyu çalıştır.
--  2) Her sorunun altına sorguyu KENDİN yaz, çalıştır, sonucu gör.
--  3) Önce kağıda çiz (huni, kovalar), sonra yaz.
--  4) 20 dakika uğraşıp çıkmazsan bırak, hocaya ekran görüntüsü at.
--
--  NOT: Önce okulun videosu (CRUD + GROUP BY) — perşembeye yetişsin.
--       Bu ödev sadece bugünü pekiştirmek için.
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
--  SORULAR
-- ============================================

-- Soru 1) Stockholm'daki siparişleri getir.
--   (ipucu: WHERE)
-- Cevabın:



-- Soru 2) En yüksek tutarlı siparişi bul.
--   (ipucu: ORDER BY ... DESC + LIMIT)
-- Cevabın:



-- Soru 3) Her şehirde kaç sipariş var?
--   (ipucu: GROUP BY + COUNT)
-- Cevabın:



-- Soru 4) Her müşterinin toplam harcamasını, çoktan aza sıralı göster.
--   (ipucu: GROUP BY + SUM + ORDER BY)
-- Cevabın:



-- Soru 5) Her siparişe etiket koy: tutar 200 ve üstüyse 'yüksek', değilse 'düşük'.
--   (ipucu: CASE WHEN ... THEN ... ELSE ... END)
-- Cevabın:



-- ============================================
--  Bitince: bu dosyayı kaydet ve repoya commit et.
--  Böylece portfolyona ilk SQL kaydın girmiş olur.
-- ============================================
