# Örnek görüşme: "VMware faturamız katlandı"

Müşteri bir bankanın altyapı müdürü, karşısında sen varsın. Bu örnek, altyapı konuşmasının gerçekte nasıl aktığını gösteriyor.

---

**Müşteri:** "Broadcom'dan sonra VMware faturamız neredeyse üç katına çıktı. Bütçe onaylanmıyor, bir şey yapmamız lazım."

**Sen:** "Anlıyorum, bunu son dönemde çok müşteriden duyuyoruz. Doğru bir şey önerebilmek için önce ortamınızı anlamam lazım. Kaç fiziksel host'unuz var, üstünde kaç VM çalışıyor?"

**Müşteri:** "İki veri merkezinde toplam 40 host, yaklaşık 900 VM."

**Sen:** "Bu 900 VM'in içinde neler var? Hepsi klasik uygulamalar mı, yoksa yeni geliştirdiğiniz, container'a uygun uygulamalar da var mı?"

**Müşteri:** "Çoğu eski uygulama: Windows sunucular, Oracle, birkaç paket yazılım. Yeni mobil projelerimiz ise zaten container olarak geliştiriliyor; onlar için Kubernetes kurmayı düşünüyorduk."

**Sen:** "O zaman iki ayrı grup var: taşınması zor eski VM'ler ve container'a hazır yeni uygulamalar. Red Hat OpenShift ikisini de tek platformda çalıştırabiliyor. Yeni uygulamalarınız container olarak çalışır. Eski VM'lerinizi ise OpenShift Virtualization ile, uygulamaya dokunmadan, VM olarak taşıyabilirsiniz. Böylece VMware'e bağlı kalan VM sayısını adım adım azaltırsınız; her şeyi bir gecede taşımak zorunda kalmazsınız."

**Müşteri:** "Kulağa iyi geliyor ama gerçekten daha ucuz mu olur?"

**Sen:** "Bu ortama göre değişiyor, tahminle cevap vermek istemem. Önerim şu: teknik ekibimizle kısa bir keşif çalışması yapalım. Mevcut VMware lisansınızı ve donanımınızı, ilk aşamada taşınabilecek VM'leri ve OpenShift'in maliyetini rakamlarla yan yana koyalım. Bunun için ekibinizden VM envanterini ve VMware sözleşmenizin yenileme tarihini alabilir miyim?"

**Müşteri:** "Sözleşme 8 ay sonra yenileniyor."

**Sen:** "O zaman zamanımız var. Yenilemeden önce hangi VM'lerin taşınabileceğini netleştirirsek, yenilemede daha küçük bir VMware paketiyle devam edebilirsiniz."

---

## Bu konuşmada kendin yaptıkların

- Ortamı sordun: kaç host, kaç VM, içlerinde ne var.
- Eski VM'leri ve container'a hazır yeni uygulamaları iki ayrı grup olarak ayırdın.
- OpenShift ve OpenShift Virtualization'ı doğru yerde açtın.
- Satış için kritik iki bilgiyi aldın: VM envanteri ve sözleşme yenileme tarihi.

## Teknik ekibe bıraktıkların

- Maliyet karşılaştırması.
- Hangi VM'lerin taşınabileceğinin teknik analizi.
- Sizing ve geçiş planı.
