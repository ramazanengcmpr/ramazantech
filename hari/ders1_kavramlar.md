# Hafta 1 · 1. Ders: Kavramlar

Dersteki kavramların biraz daha uzun açıklamaları. Her birinin altında, müşterinin bunu nasıl söyleyebileceğine dair bir örnek var.

## Sunucu

Sunucu, başka bilgisayarlara hizmet vermek için çalışan bilgisayardır. İçinde laptoptaki parçaların aynısı var: işlemci, RAM, disk, ağ kartı. Farkı şu: 7/24 açık kalır, aynı anda çok sayıda isteğe cevap verir, parçaları yedeklidir (iki güç kaynağı, birden çok disk) ve genelde ekranı yoktur. Uzaktan yönetilir. "Sunucu" kelimesi bazen fiziksel makineyi, bazen de üzerinde çalışan yazılımı ("web sunucusu") anlatmak için kullanılır; bağlamdan anlaşılır.

Müşterinin ağzından: "Raporlama sistemimiz iki fiziksel sunucuda çalışıyor."

## Veri merkezi

Sunucuların raflarda durduğu bina ya da oda. Kesintisiz elektrik, jeneratör, soğutma, yangın söndürme ve fiziksel güvenlik sağlar. Büyük kurumların genelde iki veri merkezi olur: biri ana merkez, diğeri felaket durumunda devreye girecek yedek (DR).

Müşterinin ağzından: "Ana veri merkezimiz İstanbul'da, DR merkezimiz Ankara'da."

## İşletim sistemi

Donanım ile programlar arasındaki katman. İşlemci zamanını programlara paylaştırır, RAM'i böler, diske yazma ve okuma işini yönetir, kullanıcı ve yetkileri kontrol eder. Sunucularda en yaygın olanı Linux (Red Hat Enterprise Linux, Ubuntu gibi); sonra Windows Server geliyor. IBM'in kendi sistemlerinde AIX (Power sunucular) ve z/OS (mainframe) var. Yazılım satın alırken "hangi işletim sisteminde çalışıyor" sorusu bu yüzden önemli.

Müşterinin ağzından: "Sunucularımızın çoğu RHEL, birkaç Windows uygulamamız var."

## Process

Çalışmakta olan program. Diskteki program dosyası bir tarif kitabı gibi; process ise o tarifi şu an pişiren aşçı. Bir uygulama tek bir process olabilir ya da birlikte çalışan birkaç process'ten oluşabilir. Process'ler işlemci ve RAM tüketir; bir sunucu yavaşladığında ilk bakılan şey hangi process'in ne kadar kaynak kullandığıdır.

Müşterinin ağzından: "Gece batch işleri çalışınca sunucu kilitleniyor."

## RAM

Çalışan programların o an kullandığı veriyi tuttuğu hızlı bellek. Diskten yüzlerce, binlerce kat hızlı ama elektrik kesilince boşalır. RAM yetmezse sistem diski RAM gibi kullanmaya başlar ve her şey ciddi yavaşlar. Veritabanları sık kullanılan veriyi RAM'de tutarak hızlanır; bu yüzden veritabanı sunucularında RAM bol olur. Sunucu RAM'i GB ile ölçülür; kurumsal sunucularda 128 GB, 512 GB ya da daha fazlası normaldir.

Müşterinin ağzından: "Veritabanı sunucusuna RAM ekleyince raporlar hızlandı."

## Disk ve depolama

Verinin kalıcı olarak saklandığı yer. İki türü var: eski tip dönen diskler (HDD) ucuz ve yavaş, SSD'ler hızlı ve daha pahalı. Büyük kurumlarda disk çoğunlukla sunucunun içinde değil, ayrı bir depolama sisteminde durur ve sunuculara ağ üzerinden bağlanır; buna storage ya da SAN denir. Kapasite TB ile ölçülür.

Müşterinin ağzından: "Storage'ımız dolmak üzere, arşiv verisini nereye taşıyacağımızı düşünüyoruz."

## IP adresi ve port

IP adresi, ağdaki her sunucunun adresi; bir binanın sokak adresi gibi. Port ise o binadaki kapı numarası. Aynı sunucuda birden çok uygulama çalışabilir; her biri farklı bir porttan dinler. Yaygın örnekler: HTTPS 443, HTTP 80, Db2 50000, Oracle 1521. Güvenlik duvarı (firewall) hangi porta kimin erişebileceğine karar verir; müşterinin "firewall'dan port açtırmamız gerekiyor" demesi bu yüzden.

Müşterinin ağzından: "Yeni sistemin hangi portları kullanacağını güvenlik ekibine bildirmemiz lazım."

## 3-tier mimari ve load balancer

Uygulamayı üç katmana ayırma yöntemi: görünen yüz (web), iş mantığı (uygulama), veri (veritabanı). Her katman ayrı sunucularda durabilir ve ayrı büyütülebilir. Web ve uygulama katmanında genelde birden fazla sunucu olur; gelen istekleri bunlara dağıtan cihaza ya da yazılıma load balancer denir. Bir sunucu düşerse load balancer istekleri diğerlerine yönlendirir, kullanıcı fark etmez.

Müşterinin ağzından: "Ön tarafta iki web sunucusu var, önünde de bir load balancer."

## Socket, core, thread

Socket anakarttaki işlemci yuvası, core işlemcinin içindeki bağımsız çalışan çekirdek, thread ise bir core'un aynı anda yürütebildiği iş sayısı. Hyperthreading açıkken her core 2 thread görünür ama bu performansı ikiye katlamaz; genelde yüzde 15–30 civarı kazanç sağlar. Bu yüzden kapasite ve lisans konuşmalarında thread değil core sayısı esas alınır. Bugünkü sunucu işlemcilerinde socket başına 16, 32, 64 hatta daha fazla core olabilir.

Müşterinin ağzından: "Yeni sunucular 2 socket, toplam 64 core."

## Hypervisor, VM ve vCPU

Hypervisor, fiziksel sunucuyu sanal makinelere (VM) bölen yazılım; en yaygını VMware ESXi, diğerleri Microsoft Hyper-V ve Red Hat OpenShift Virtualization. Her VM kendi işletim sistemiyle ayrı bir bilgisayar gibi davranır. VM'e verilen işlemciye vCPU denir. Hypervisor vCPU'ları fiziksel core'ların üstünde sırayla çalıştırır; VM'ler aynı anda tam yükte olmadığı için toplam vCPU fiziksel core sayısını geçebilir. Birden çok fiziksel sunucu bir araya getirilip cluster yapılabilir; o zaman VM'ler sunucular arasında taşınabilir.

Müşterinin ağzından: "Cognos 3 VM'de, her biri 8 vCPU ve 32 GB RAM."

## Container

Uygulamayı ve ihtiyaç duyduğu kütüphaneleri tek bir paket haline getiren hafif kutu. VM'den farkı: kendi işletim sistemini taşımaz, sunucunun işletim sistemini paylaşır. Bu yüzden saniyeler içinde açılır ve aynı sunucuya çok daha fazla container sığar. Container'ları Kubernetes ya da OpenShift yönetir. Detayı 2. haftada.

Müşterinin ağzından: "Yeni uygulamalarımızı container olarak OpenShift'te çalıştırıyoruz."

## On-prem, cloud, hybrid, multicloud

On-prem: sunucular müşterinin kendi veri merkezinde. Cloud: bir sağlayıcıdan kiralanıyor. Public cloud herkesin kullandığı paylaşımlı altyapı (IBM Cloud, AWS, Azure, Google Cloud); private cloud ise yalnız o kurum için kurulmuş, cloud gibi yönetilen altyapı. Hybrid on-prem ile cloud'un birlikte kullanılması; multicloud ise birden fazla cloud sağlayıcısının aynı anda kullanılması. IBM'in stratejisi hybrid cloud üzerine kurulu: aynı yazılımın hem on-prem hem herhangi bir cloud'da çalışabilmesi.

Müşterinin ağzından: "Çekirdek sistemler on-prem kalacak, analitik işleri Azure'a taşıyoruz."

## IaaS, PaaS, SaaS

Sağlayıcının ne kadarını yönettiğini anlatan üç model. IaaS'ta sağlayıcı donanımı ve sanallaştırmayı verir; müşteri işletim sistemini, yamaları, yazılımı kendisi yönetir. PaaS'ta müşteri sadece uygulamasını ve verisini getirir. SaaS'ta müşteri yalnız kullanır; güncellemeleri ve kurulumu sağlayıcı yapar. Lisans açısından da fark var: IaaS'ta çoğunlukla müşteri yazılım lisansını kendisi getirir, SaaS'ta lisans aboneliğin içindedir.

Müşterinin ağzından: "Bu ürünün SaaS versiyonu var mı, yoksa biz mi kuracağız?"
