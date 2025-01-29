-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 29 Oca 2025, 16:16:18
-- Sunucu sürümü: 5.5.68-MariaDB-cll-lve
-- PHP Sürümü: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `gencsanliurfa_com_pclab`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `mission` text,
  `vision` text,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `mission`, `vision`, `image_path`) VALUES
(1, 'Hakkımızda', '<p>Şanlıurfa Kadın Destek Merkezleri, kadınların ve çocukların güçlenmesini sağlayarak toplumsal eşitliği teşvik etmek amacıyla çeşitli programlar ve hizmetler sunmaktadır. Şanlıurfa Büyükşehir Belediyesi\'nin desteğiyle, UNICEF iş birliğiyle yürütülen projeler, bu hedef doğrultusunda kadın ve çocuklara eğitim, psikolojik destek, sosyal hizmetler ve dijital imkanlar sunarak yaşam kalitelerini artırmayı amaçlamaktadır.</p><p>UNICEF destekli bilgisayar sınıflarımız, kadınların ve çocukların dijital dünyada yer edinmelerini sağlamak için önemli bir platform sunmaktadır. Bu sınıflarda verilen eğitimlerle katılımcılar, dijital okuryazarlıklarını geliştirirken aynı zamanda teknolojik yeniliklerle de tanışmaktadır. 💻💡</p><p>Ayrıca, robotik ve web tasarım eğitimleri gibi alanlarda sunduğumuz fırsatlar, katılımcıların teknolojiye olan ilgisini artırırken, dijital becerilerini günlük yaşamlarında kullanmalarını sağlamaktadır. 🤖🌐 Eğitimlerimiz, katılımcıların yalnızca bilgisayar kullanımı değil, aynı zamanda yazılım, robotik ve web geliştirme gibi alanlarda da kendilerini geliştirmelerine olanak tanımaktadır.</p><p>Uzay ve teknoloji konularında düzenlediğimiz eğitimlerle, çocukların ve gençlerin hayal güçlerini geliştirmeyi, onları bilim ve teknoloji dünyasına adım atmaya teşvik etmeyi hedefliyoruz. 🌌🚀 Bu sayede, sadece bugünün teknolojilerini değil, yarının dünyasını şekillendirebilecek bireyler yetiştirmeyi amaçlıyoruz.</p><p>Kadın destek merkezlerimiz, yalnızca eğitimle değil, aynı zamanda psikososyal destek hizmetleriyle de toplumsal kalkınmaya katkı sağlamaktadır. Kadınların ve çocukların özgüvenlerini artırarak, onlara kendilerini ifade edebileceği ve gelişebileceği bir ortam sunmayı hedefliyoruz. Toplumda güçlü, lider bireyler yetiştirerek daha adil ve eşitlikçi bir toplum oluşturmayı amaçlıyoruz.</p>', 'Şanlıurfa Kadın Destek Merkezleri olarak misyonumuz, kadınları ve çocukları güçlendirmek, toplumsal cinsiyet eşitliğini teşvik etmek ve her bireyin potansiyelini en iyi şekilde kullanabilmesi için gerekli eğitim, psikolojik destek ve sosyal hizmetleri sunmaktır. UNICEF iş birliğiyle sağladığımız bilgisayar eğitimleri ve diğer programlarla, katılımcılarımıza dijital beceriler kazandırmayı, onları çağdaş dünyada daha güçlü bireyler olarak yetiştirmeyi amaçlıyoruz.', 'Şanlıurfa Kadın Destek Merkezleri olarak vizyonumuz, kadınların ve çocukların toplumsal yaşamda eşit fırsatlara sahip olmalarını sağlamak, dijital dünyada yetkin bireyler yetiştirmek ve psikososyal destekle toplumda güçlü, özgüvenli bireyler oluşturmaktır. UNICEF iş birliğiyle sağladığımız eğitimler ve sosyal hizmetler ile, katılımcılarımızın potansiyellerini en üst düzeye çıkararak, onları hem bireysel olarak hem de toplumsal düzeyde güçlü, lider ve karar verici bireyler haline getirmeyi hedefliyoruz.', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cocuk_meclisi_ayarlar`
--

CREATE TABLE `cocuk_meclisi_ayarlar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deger` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `cocuk_meclisi_ayarlar`
--

INSERT INTO `cocuk_meclisi_ayarlar` (`id`, `baslik`, `deger`, `tip`, `created_at`, `updated_at`) VALUES
(3, 'hero_text', 'Hayallerimizi birlikte gerçekleştiriyoruz!', 'text', '2025-01-24 06:01:14', NULL),
(4, 'dreams_text', 'Her çocuğun sesi duyulsun, fikirleri değer görsün istiyoruz!', 'text', '2025-01-24 06:01:14', NULL),
(5, 'values_text', 'Sevgi, saygı ve eşitlik bizim en önemli değerlerimiz!', 'text', '2025-01-24 06:01:14', NULL),
(6, 'goals_text', 'Daha güzel bir gelecek için fikirlerimizi paylaşıyoruz!', 'text', '2025-01-24 06:01:14', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cocuk_meclisi_etkinlikler`
--

CREATE TABLE `cocuk_meclisi_etkinlikler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aciklama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarih` datetime NOT NULL,
  `konum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `katilimci_sayisi` int(11) DEFAULT '0',
  `durum` enum('aktif','pasif','tamamlandi') COLLATE utf8mb4_unicode_ci DEFAULT 'aktif',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `cocuk_meclisi_etkinlikler`
--

INSERT INTO `cocuk_meclisi_etkinlikler` (`id`, `baslik`, `aciklama`, `resim`, `tarih`, `konum`, `katilimci_sayisi`, `durum`, `created_at`, `updated_at`) VALUES
(1, 'Çocuk Hakları Atölyesi', 'Çocuk haklarını eğlenceli oyunlar ve aktivitelerle öğreniyoruz! Bu atölyede, her çocuğun sahip olduğu hakları interaktif bir şekilde keşfedeceğiz. Yaratıcı drama, resim ve müzik etkinlikleriyle haklarımızı öğreneceğiz.', NULL, '2025-01-31 18:00:00', 'Şanlıurfa Çocuk Kültür Merkezi', 30, 'aktif', '2025-01-24 06:04:34', NULL),
(2, 'Geri Dönüşüm Kahramanları', 'Dünyamızı korumak için neler yapabileceğimizi öğreniyoruz! Geri dönüşümün önemini anlatan eğlenceli atölye çalışmamızda, atık malzemelerden sanat eserleri üreteceğiz ve çevre dostu projeler geliştireceğiz.', NULL, '2025-02-07 10:00:00', 'Şanlıurfa Eyyübiye Gençlik Merkezi', 25, 'aktif', '2025-01-24 06:04:34', NULL),
(3, 'Minik Şefler Mutfakta', 'Sağlıklı beslenmeyi eğlenceli hale getiriyoruz! Bu etkinliğimizde, beslenme uzmanı eşliğinde lezzetli ve sağlıklı tarifler hazırlayacağız. Hijyen kurallarını öğrenecek, takım çalışması yapacağız.', NULL, '2025-02-14 11:00:00', 'Şanlıurfa Belediyesi Mutfak Atölyesi', 20, 'aktif', '2025-01-24 06:04:34', NULL),
(4, 'Teknoloji ve Kodlama Günü', 'Geleceğin teknolojilerini keşfediyoruz! Scratch ile kodlama öğrenecek, basit robotlar tasarlayacak ve teknolojinin doğru kullanımı hakkında bilgi sahibi olacağız.', NULL, '2025-01-29 08:00:00', 'Şanlıurfa Bilim ve Teknoloji Merkezi', 35, 'aktif', '2025-01-24 06:04:34', NULL),
(5, 'Geleneksel Oyunlar Şenliği', 'Unutulmaya yüz tutmuş geleneksel çocuk oyunlarımızı yeniden canlandırıyoruz! Seksek, yakan top, körebe, istop gibi oyunları hep birlikte oynayacağız.', NULL, '2025-01-27 14:00:00', 'Şanlıurfa Çocuk Parkı', 40, 'aktif', '2025-01-24 06:04:34', NULL),
(6, 'Masal Anlatıcılığı Günü', 'Hayal gücümüzü geliştiriyoruz! Profesyonel masal anlatıcıları eşliğinde kendi masallarımızı yazacak ve arkadaşlarımızla paylaşacağız.', NULL, '2025-02-03 16:00:00', 'Şanlıurfa Çocuk Kütüphanesi', 25, 'aktif', '2025-01-24 06:04:34', NULL),
(7, 'Spor ve Sağlık Festivali', 'Farklı spor dallarını tanıyacağız! Profesyonel sporcular eşliğinde çeşitli sporları deneyimleyecek, sağlıklı yaşam hakkında bilgiler öğreneceğiz.', NULL, '2024-01-15 10:00:00', 'Şanlıurfa Spor Kompleksi', 50, 'tamamlandi', '2025-01-24 06:04:34', NULL),
(8, 'Çocuk Meclisi Tanışma Günü', 'Yeni üyelerimizle tanışıyor, fikirlerimizi paylaşıyoruz! Oyunlar oynayacak, projelerimizi konuşacak ve yeni arkadaşlıklar kuracağız.', NULL, '2024-01-20 14:00:00', 'Şanlıurfa Belediyesi Konferans Salonu', 45, 'tamamlandi', '2025-01-24 06:04:34', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cocuk_meclisi_haberler`
--

CREATE TABLE `cocuk_meclisi_haberler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ozet` text COLLATE utf8mb4_unicode_ci,
  `icerik` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yazar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` enum('aktif','pasif') COLLATE utf8mb4_unicode_ci DEFAULT 'aktif',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cocuk_meclisi_haklar`
--

CREATE TABLE `cocuk_meclisi_haklar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aciklama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cocuk_meclisi_iletisim`
--

CREATE TABLE `cocuk_meclisi_iletisim` (
  `id` int(11) NOT NULL,
  `ad_soyad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `konu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mesaj` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `durum` enum('okunmadi','okundu','yanitlandi') COLLATE utf8mb4_unicode_ci DEFAULT 'okunmadi',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cocuk_meclisi_katilimcilar`
--

CREATE TABLE `cocuk_meclisi_katilimcilar` (
  `id` int(11) NOT NULL,
  `etkinlik_id` int(11) NOT NULL,
  `cocuk_adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dogum_tarihi` date NOT NULL,
  `veli_adi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `veli_telefon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `veli_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `durum` enum('beklemede','onaylandi','reddedildi') COLLATE utf8mb4_unicode_ci DEFAULT 'beklemede',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cocuk_meclisi_uyeler`
--

CREATE TABLE `cocuk_meclisi_uyeler` (
  `id` int(11) NOT NULL,
  `ad_soyad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotograf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pozisyon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `okul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sinif` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gorev_baslangic` date DEFAULT NULL,
  `gorev_bitis` date DEFAULT NULL,
  `durum` enum('aktif','pasif') COLLATE utf8mb4_unicode_ci DEFAULT 'aktif',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'test', 'test@gmail.com', 'test', 'tesy', '2025-01-06 19:33:49'),
(2, 'DENEME2', 'manager@gmail.com', 'ds', 'sads', '2025-01-06 19:36:09'),
(3, 'sadsfd', 'a@a.com', 'sad', 'ads', '2025-01-06 23:04:41'),
(4, 'sadsfd', 'a@a.com', 'sad', 'ads', '2025-01-06 23:05:04'),
(5, 'sadsfd', 'a@a.com', 'sad', 'ads', '2025-01-06 23:05:15'),
(6, 'Allen', 'seo-xperts@proton.me', 'Google traffic for gencsanliurfa.com', 'Let&#039;s get your website ranked on Google. If interested reply to this email.', '2025-01-16 08:47:46'),
(7, 'Ranking', 'ranking.marina70@googlemail.com', 'Dear gencsanliurfa.com Webmaster!', 'Want millions of people to explore your video affordably? Visit: http://gmxwlk.contactblastingworks.my', '2025-01-17 19:29:28'),
(8, 'zeynep doğan', 'berfin.tokmak@sanliurfa.bel.tr', 'bilgisayar kursu talebi', 'Ben hilvanda oturuyorum. bilgisayara ilgim var. duydum ki merkezlerde bilgisayar kursunuz varmış, hilvanda da talep ediyorum.', '2025-01-20 08:18:11'),
(9, 'MichealElorp', 'raymondIllighMic@gmail.com', 'Delivery of your emails is a guarantee.', 'Wassup? gencsanliurfa.com \r\n \r\nDid you know that it is possible to send commercial offers wholly legitimately? \r\nWhen such appeals are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals securely. Messages that are sent with the help of Feedback Forms are not viewed as spam since they are seen as important. \r\nWe give you a chance to experience our service for free. \r\nOn your behalf, we can dispatch up to 50,000 messages. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis message was automatically generated. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.', '2025-01-23 07:00:49');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `districts`
--

INSERT INTO `districts` (`id`, `name`) VALUES
(1, 'Halfeti'),
(2, 'Harran'),
(3, 'Viranşehir'),
(4, 'Siverek'),
(5, 'Akçakale'),
(6, 'Ceylanpınar'),
(7, 'Suruç'),
(8, 'Birecik'),
(9, 'Bozova'),
(10, 'Eyyübiye'),
(11, 'Hilvan'),
(12, 'Karaköprü'),
(13, 'Haliliye');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `image_path`, `created_at`, `width`, `height`) VALUES
(7, 'VEX Atölyesi', 'gallery_6792436c1d8a9.jpg', '2025-01-23 13:26:04', 0, 0),
(10, 'Bilim Merkezi', 'gallery_6792465f56725.jpg', '2025-01-23 13:38:39', 0, 0),
(11, 'Bilgisayar Odaları', 'gallery_6792467fe654a.jpg', '2025-01-23 13:39:11', 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `member_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tc_no` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_paper` enum('var','yok') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_paper_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_registration` enum('var','yok') COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_registration_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_amount` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `members`
--

INSERT INTO `members` (`id`, `member_no`, `tc_no`, `first_name`, `last_name`, `address`, `tax_paper`, `tax_paper_file`, `room_registration`, `room_registration_file`, `deposit_amount`, `created_at`) VALUES
(1, 'UYE2025001', '12345553424', 'Muhammed', 'bahçe', 'şanlıurfa', 'yok', NULL, 'yok', NULL, 400000.00, '2025-01-06 19:26:28'),
(2, 'UYE2025002', '12345553423', 'Muhammed', 'bahçe', 'şanlıurfa', 'yok', NULL, 'yok', NULL, 400000.00, '2025-01-06 21:46:36'),
(3, 'UYE2025003', '12345553422', 'Muhammed', 'bahçe', 'şanlıurfa', 'var', '1736200049_cocuk_meclisi_afis_brosür (4).pdf', 'var', '1736200049_cocuk_meclisi_afis_brosür (3).pdf', 400000.00, '2025-01-06 21:47:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `fullname`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'Test Kullanıcı', 'test@example.com', 'Test Mesajı', 'Bu bir test mesajıdır.', '2025-01-06 21:26:24'),
(2, 'John Doe', 'john@example.com', 'Merhaba', 'İkinci test mesajı', '2025-01-06 21:26:24'),
(3, 'Jane Doe', 'jane@example.com', 'Bilgi', 'Üçüncü test mesajı', '2025-01-06 21:26:24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` datetime DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `event_date`, `content`, `image_path`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 'Muhtarlarımıza Önemli Eğitim ve İş Birliği Çağrısı!', '', '2025-01-23 14:42:36', 'Şanlıurfa Büyükşehir Belediyesi Kadın ve Aile Hizmetleri Dairesi Başkanlığı, UNICEF iş birliğiyle muhtarlarımız için kapsamlı bir eğitim programı düzenledi.\r\n\r\nMuhtarlarımız, toplumsal farkındalığın artırılması ve risk durumlarının erken tespiti ile bildirilmesi konularında önemli bir role davet edildi.\r\n\r\nGüçlü bir toplum için birlikte hareket ediyoruz!', 'GfyNr3qXAAAX4A3.jpg', 'approved', NULL, '2025-01-23 11:42:36', '2025-01-23 11:51:35'),
(9, '16 Günlük Aktivizm Farkındalık Kampanyası', '', '2025-01-23 14:42:36', '5-6 Aralık tarihlerinde, Avrupa Birliği\'nin dünya çapında yürüttüğü \"16 Günlük Aktivizm Farkındalık Kampanyası\" dahilinde, Şanlıurfa Büyükşehir Belediyesi Kadın ve Aile Hizmetleri Dairesi Başkanlığı öncülüğünde geniş kapsamlı bir eğitim programı düzenlendi.\r\n\r\nİl Sağlık Müdürlüğü, Harran Üniversitesi, UNICEF, UNFPA, UNHCR, IOM, UNDP, Kamer Vakfı, Hayatta Destek Derneği ve Gençlik Meclisi işbirliğiyle farkındalık eğitimleri gerçekleştirildi.\r\n\r\nBu eğitimde daha sağlıklı ve güçlü bir toplumun oluşumunda kadınların eğitim, kültür, ekonomik, psikolojik ve hukuki açıdan güçlenmesinin önemi vurgulandı.', 'buyuksehir-belediyesinden-16-gunluk-aktivizim-farkindalik-egitimi-4303.jpg', 'approved', NULL, '2025-01-23 11:53:21', '2025-01-23 12:00:08'),
(10, '20 Kasım Dünya Çocuk Hakları Günü\'nde Farkındalık Etkinliği!', '', '2025-01-23 14:42:36', 'Kadın ve Aile Hizmetleri Daire Başkanlığımız ile UNICEF iş birliğinde düzenlenen anlamlı etkinlik, Gençlik Komitesi üyelerimizin de katılımıyla gerçekleştirildi.\r\n\r\nBu özel gün, çocuk haklarının korunması ve geliştirilmesi konusunda toplumsal bilinci artırmak, daha adil ve hak temelli bir dünya için farkındalık oluşturmak adına önemli bir adım oldu. Etkinlikte, çocukların haklarının önemini vurgulayarak, her yaştan bireye çocuk hakları bilinci kazandırılmaya çalışıldı. Bir toplumun her kesimine, çocukların haklarının korunması gerektiğini bir kez daha hatırlattık.\r\n\r\nÇocuklar bizim geleceğimiz, onların hakları bizim sorumluluğumuz!', 'Gc58JkhWgAAL83K.jpg', 'approved', NULL, '2025-01-23 11:54:21', '2025-01-23 11:58:20'),
(11, '🌟 Lösemi Değil İyilik Bulaşır! 🌟', '', '2025-01-23 14:42:36', 'Kadın ve Aile Hizmetleri Daire Başkanlığımız ve UNICEF işbirliğiyle, 2 - 8 Kasım Lösemili Çocuklar Haftası\'nda, lösemiyle mücadele eden çocuklarımız için özel bir etkinlik düzenledik. 🎨\r\n\r\nBu anlamlı günlerde, iyilik ve dayanışma mesajlarımızla lösemiye karşı birlik olduk. \r\n\r\nHerkesi bu önemli farkındalık hareketine destek vermeye davet ediyoruz.', 'sanliurfa-da-losemi-degil-iyilik-bulasir-etkinligi-ile-farkindalik-yukseldi-960851.jpg', 'approved', NULL, '2025-01-23 11:54:55', '2025-01-23 12:03:06');

--
-- Tetikleyiciler `news`
--
DELIMITER $$
CREATE TRIGGER `news_before_insert` BEFORE INSERT ON `news` FOR EACH ROW BEGIN
    SET NEW.created_at = CURRENT_TIMESTAMP;
    SET NEW.updated_at = CURRENT_TIMESTAMP;
    IF NEW.event_date IS NULL THEN
        SET NEW.event_date = NOW();
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `news_before_update` BEFORE UPDATE ON `news` FOR EACH ROW BEGIN
    SET NEW.updated_at = CURRENT_TIMESTAMP;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news_backup`
--

CREATE TABLE `news_backup` (
  `id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `news_backup`
--

INSERT INTO `news_backup` (`id`, `title`, `content`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Teknolojiye İlk Adım: Robotik Kodlama ve Yazılım Eğitimleri!', 'Geleceğin dili kodlama ve robotik sistemleri öğrenmek isteyenler için eşsiz bir fırsat! Robotik kodlama ve yazılım eğitim programımız başlıyor. Hem başlangıç seviyesi katılımcılar hem de bu alanda kendini geliştirmek isteyenler için özel olarak hazırlanan eğitimler, teorik bilgiyi pratik uygulamalarla birleştiriyor.\r\n\r\nNeler Öğreneceksiniz?\r\n\r\nRobot tasarımı ve mekanik sistemlerin temel prensipleri,\r\nYazılım dillerine giriş ve algoritma geliştirme,\r\nProje tabanlı öğrenme ile gerçek hayata yönelik çözümler.\r\nKimler Katılabilir?\r\nTeknolojiye ilgi duyan, hayal gücünü ve problem çözme yeteneklerini geliştirmek isteyen herkes başvuru yapabilir.\r\n\r\nBaşvuru Nasıl Yapılır?\r\nEğitim programına başvurularınızı www.kodlayogren.com adresinden online olarak yapabilirsiniz. Son başvuru tarihi: 25 Şubat 2025.\r\n\r\nDetaylı Bilgi ve İletişim:\r\nE-posta: info@kodlayogren.com\r\nTelefon: 0 530 123 45 67\r\n\r\nBu fırsatı kaçırmayın, siz de geleceğin teknolojilerine yön veren bireyler arasında yer alın!', NULL, '2025-01-06 20:13:03', '2025-01-10 06:42:47'),
(2, 'Robotik Kodlama ve Yazılım Eğitimleri Başladı!', 'Teknoloji ve inovasyona meraklı herkesi heyecanlandıracak bir haber! Robotik kodlama ve yazılım eğitimlerimize başvurular başladı. Bu eğitimlerle teknoloji dünyasında güçlü bir adım atabilirsiniz.\r\n\r\nEğitimler kapsamında, katılımcılar robot tasarımı, programlama temelleri ve yazılım geliştirme süreçleri hakkında bilgi sahibi olacak. Alanında uzman eğitmenler tarafından yürütülecek program, hem teorik dersleri hem de uygulamalı projeleri içeriyor.\r\n\r\nEğitim İçeriği:\r\n\r\nRobotik sistemlerin temel prensipleri,\r\nAlgoritma geliştirme ve problem çözme teknikleri,\r\nPopüler yazılım dilleri ile projeler oluşturma.\r\nKimler Katılabilir?\r\nHer yaştan teknolojiye ilgi duyan bireyler eğitime katılabilir. Daha önce deneyim şartı aranmamaktadır.\r\n\r\nBaşvuru ve Detaylar:\r\nEğitimlere katılmak için www.teknolojibasvuru.com adresini ziyaret ederek başvuru formunu doldurabilirsiniz. Son başvuru tarihi: 10 Mart 2025.\r\n\r\nİletişim:\r\nDetaylı bilgi için iletisim@teknolojibasvuru.com adresine e-posta gönderebilir veya 0 312 456 78 90 numaralı telefondan bize ulaşabilirsiniz.\r\n\r\nGeleceği inşa etmek ve teknoloji dünyasında fark yaratmak için bu fırsatı kaçırmayın!', NULL, '2025-01-06 20:19:11', '2025-01-10 06:42:28'),
(3, 'Robotik ve Yazılım Eğitimleriyle Geleceğe Hazır Olun!', 'Teknoloji dünyasına ilgi duyanlar için heyecan verici bir fırsat! Robotik kodlama ve yazılım eğitimlerine başvurular başladı. Bu eğitimlerle, katılımcılar hem teknolojik bilgi birikimlerini artıracak hem de geleceğin mesleklerine ilk adımı atacaklar.\r\n\r\nEğitim programı, başlangıç seviyesinden ileri düzeye kadar geniş bir yelpazede hazırlanmıştır. Katılımcılar, algoritma geliştirme, robotik tasarım ve yazılım dillerine giriş gibi konularda uzman eğitmenlerden destek alacaklar. Ayrıca, uygulamalı projelerle öğrendiklerini pekiştirme fırsatı bulacaklar.\r\n\r\nKazanımlarınız Neler Olacak?\r\n\r\nTemel ve ileri düzey robotik kodlama becerileri,\r\nUygulamalı projelerle problem çözme yeteneği,\r\nYazılım dillerine dair başlangıç bilgileri ve projeler üretme deneyimi.\r\nBaşvuru Bilgileri:\r\nEğitimlere katılmak için www.egitimbasvuru.com adresinden başvurunuzu gerçekleştirebilirsiniz. Son başvuru tarihi: 15 Şubat 2025. Kontenjanlar sınırlıdır, bu yüzden acele edin!\r\n\r\nDaha Fazla Bilgi:\r\nDetaylı bilgi için destek@egitimbasvuru.com adresine mail atabilir veya 0 850 123 45 67 numarasını arayabilirsiniz.\r\n\r\nGeleceğin teknolojilerini öğrenmek ve bu alanda bir adım önde olmak için şimdi harekete geçin! Unutmayın, her başarı bir adımla başlar!', NULL, '2025-01-06 20:19:44', '2025-01-10 06:42:00'),
(4, 'Robotik Kodlama ve Yazılım Eğitimlerine Başvurular Başladı!', 'Teknolojiye ilgi duyan gençler ve yetişkinler için büyük fırsat! Robotik kodlama ve yazılım alanında kendini geliştirmek isteyenler için düzenlenen eğitimlere başvurular başladı.\r\n\r\nEğitimler, katılımcılara robot tasarımı, algoritma geliştirme ve yazılım dillerine giriş gibi temel ve ileri düzey beceriler kazandırmayı hedefliyor. Uzman eğitmenler eşliğinde gerçekleşecek program, teorik derslerin yanı sıra uygulamalı projelerle zenginleştirilecek.\r\n\r\nKimler Katılabilir?\r\nHer yaştan teknoloji tutkununa açık olan eğitimler, hem yeni başlayanlar hem de bu alanda kendini daha da geliştirmek isteyenler için tasarlandı.\r\n\r\nBaşvuru Nasıl Yapılır?\r\nEğitimlere katılmak isteyenler, websiteadı.com adresinden online başvuru yapabilir. Kontenjanlar sınırlı, bu yüzden hemen başvurarak yerinizi ayırtmayı unutmayın!\r\n\r\nSon Başvuru Tarihi:\r\nSon başvuru tarihi 20 Ocak 2025. Geleceğin teknolojilerini öğrenmek ve yeni beceriler kazanmak için bu fırsatı kaçırmayın.', NULL, '2025-01-06 20:21:45', '2025-01-10 06:42:05'),
(5, 'tes', 'dassd', NULL, NULL, NULL),
(6, 'dsa', 'da', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `user_id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `places`
--

INSERT INTO `places` (`id`, `title`, `description`, `image_path`, `address`, `status`, `user_id`, `district_id`, `created_at`, `updated_at`) VALUES
(5, 'Göbekli Tepe', 'Dünya tarihinin en eski tapınak alanı olarak bilinen Göbekli Tepe, UNESCO Dünya Mirası Listesi\'nde yer alıyor. M.Ö. 10.000 yıllarına kadar uzanan bu antik yerleşim, tarihi yeniden yazdıran buluntulara sahip.', 'tUFBgaObYApThwrfVulJ.jpg', 'Örencik Mahallesi, Haliliye, Şanlıurfa', 'pending', 1, 13, NULL, NULL),
(6, 'Balıklıgöl', 'Balıklıgöl, 150 metre uzunluğunda ve 30 metre genişliğindedir. Derinliği 3-5 metre civarındadır. İçinde efsanelere konu olan sazan türü balıklar bulunmaktadır. Rivayete göre Hz. İbrahim ateşe atıldıktan sonra, bir mucize gerçekleşir ve etraf güllük gülistanlık olur. Bu mucizenin gerçekleştiği mekânın Balıklıgöl ve çevresi olduğuna inanılır.', 'LqrSGDXQjKoMcTU9V0zW.jpg', 'Balıklıgöl, Eyyübiye, Şanlıurfa', 'pending', 1, 10, NULL, NULL),
(7, 'Şanlıurfa Kalesi', '120 metre yüksekliğindeki Dambak Tepesi\'nde bulunan kalenin tarihi, M.Ö. 3. yüzyıla kadar uzanıyor.', 'yA5DB2IJZMbiaTRvcXxK.jpg', 'Dambak Tepesi, Eyyübiye, Şanlıurfa', 'pending', 1, 10, NULL, NULL),
(8, 'Şanlıurfa Arkeoloji ve Mozaik Müzesi', 'Türkiye\'nin en büyük müzelerinden biri olan bu müzede, tarihin farklı dönemlerine ait önemli eserler sergileniyor.', 'NLbzkW3BGcdRuiV89Z5A.jpg', 'Camikebir Mahallesi, Müze Caddesi, Haliliye, Şanlıurfa', 'pending', 1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `url`, `image_path`, `status`, `user_id`, `created_at`) VALUES
(16, 'Çocuk Meclisi için başvurular başladı!', 'Şanlıurfa Büyükşehir Belediyesi ve UNICEF iş birliğiyle hayata geçireceğimiz Çocuk Meclisi için başvurular başladı!\r\n\r\n13-18 yaş arasındaki gençler, çocuk ve genç dostu bir Şanlıurfa için söz sahibi olma zamanı!\r\n\r\nHaydi, sen de meclisimize katıl, fikirlerinle geleceğe yön ver!', 'https://cocukmeclis.sanliurfa.bel.tr/', '67922a460c143.jpg', 'approved', NULL, '2025-01-23 11:38:46'),
(17, 'Mobil Maker Atölyesi', '🚀 Şanlıurfa Büyükşehir Belediyesi olarak Türkiye Kalkınma Vakfı ile birlikte dezavantajlı bölgelerde robotik kodlama ve maker istasyonları kurduk. \r\n\r\n10-14 yaş arası çocuklarımız, psikomotor ve bilişsel becerilerini geliştirip bilim ve teknolojiyle tanışıyor. 🤖📚\r\n\r\nKadın ve Aile Hizmetleri Daire Başkanlığımıza bağlı Süleymaniye Aile Destek Merkezi\'nde başlayan eğitimlerle hedefimiz, yüzlerce çocuğa ulaşmak. \r\n\r\nÇocuklarımızın dijital becerilerini artırmak için çalışmalarımızı sürdürüyoruz.', '', '679230e0cf02c.jpeg', 'approved', NULL, '2025-01-23 12:06:56'),
(18, 'Açık Hava Sinema Etkinliği', 'Kadın ve Aile Hizmetleri Daire Başkanlığımız bünyesinde hizmet veren Ahmet Yesevi Kadın Destek Merkezimizde UNICEF iş birliğiyle düzenlenen açık hava sinema etkinliğinde 8-12 yaş aralığındaki çocuklarımızla keyifli bir akşam geçirdik📽️\r\n\r\nBu tarz etkinliklerle çocuklarımızın duygusal ve sosyal gelişimlerine katkı sağlamayı hedefliyor, onları çok önemsiyoruz.', '', 'GZXlmojXwAAtB7S.jpg', 'approved', NULL, '2025-01-23 12:07:56'),
(19, 'ÜCRETSİZ EĞİTİME DESTEK KURSU 📚', 'Kadın ve Aile Hizmetleri Daire Başkanlığımızın öncülüğünde gençlerin eğitimine destek olmak amacıyla ücretsiz TYT-AYT kursları düzenliyoruz!\r\n\r\n👩‍🎓🧑‍🎓18-22 yaş arası mezun öğrenciler için kontenjan sınırlı, acele edin!\r\n\r\n🌐 Başvuru Linki: https://sbb.im/ogrenci\r\n\r\n📲 QR kodu kullanabilir veya aşağıdaki numaradan bize ulaşabilirsiniz:\r\n\r\n📞 0538 278 97 89', 'https://ogrenci.sanliurfa.bel.tr/', '679232d219379.jpeg', 'approved', NULL, '2025-01-23 12:15:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `page_identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `robots` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'index, follow',
  `og_title` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_card` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page_identifier`, `title`, `description`, `keywords`, `canonical_url`, `robots`, `og_title`, `og_description`, `og_image`, `twitter_card`, `schema_type`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Genç Şanlıurfa | Gençlik ve Kültürün Merkezi - Resmi Web Sitesi', 'Genç Şanlıurfa, gençlere yönelik robotik kodlama, yazılım geliştirme, web tasarım ve teknoloji eğitimleri sunan bir oluşumdur. Ücretsiz eğitimler, mode', 'genç şanlıurfa, şanlıurfa gençlik merkezi, gençlik aktiviteleri, ücretsiz eğitimler, şanlıurfa etkinlikler', 'https://gencsanliurfa.com/', 'index, follow', 'Genç Şanlıurfa - Geleceğin Gençleri Burada Yetişiyor', 'Şanlıurfa\'nın en kapsamlı gençlik ve kültür merkezi. Eğitim, kültür, sanat ve teknoloji alanlarında ücretsiz imkanlar sunuyoruz.', 'https://gencsanliurfa.com/assets/img/og-image.jpg', NULL, 'Organization', '2025-01-15 17:43:42', NULL),
(2, 'about', 'Hakkımızda | Genç Şanlıurfa - Gençlik ve Kültürün Merkezi', 'Genç Şanlıurfa, 2024\'ten bu yana gençlere ücretsiz eğitim ve gelişim fırsatları sunan sosyal sorumluluk projesidir. Misyonumuz ve vizyonumuz.', 'genç şanlıurfa hakkında, şanlıurfa gençlik merkezi, kültür merkezi, eğitim merkezi', 'https://gencsanliurfa.com/about', 'index, follow', 'Genç Şanlıurfa Hakkında - Gençlik ve Kültür Merkezi', 'Genç Şanlıurfa\'nın kuruluş hikayesi, misyonu ve vizyonu. Şanlıurfa gençliğine hizmet eden sosyal sorumluluk projemiz.', 'https://gencsanliurfa.com/assets/img/about-og.jpg', NULL, 'Organization', '2025-01-15 17:43:42', NULL),
(3, 'trainings', 'Eğitimler | Genç Şanlıurfa - Ücretsiz Gençlik Eğitimleri', 'Genç Şanlıurfa\'da sunulan ücretsiz eğitimler: Teknoloji, Sanat, Spor, Kişisel Gelişim ve daha fazlası. Geleceğinizi şekillendirin!', 'ücretsiz eğitimler, gençlik eğitimleri, şanlıurfa kurslar, kişisel gelişim, teknoloji eğitimi', 'https://gencsanliurfa.com/trainings', 'index, follow', 'Genç Şanlıurfa Eğitimleri - Ücretsiz Gençlik Kursları', 'Teknoloji, sanat, spor ve kişisel gelişim alanlarında ücretsiz eğitimler. Geleceğinizi Genç Şanlıurfa ile inşa edin.', 'https://gencsanliurfa.com/assets/img/trainings-og.jpg', NULL, 'Course', '2025-01-15 17:43:42', NULL),
(4, 'contact', 'İletişim | Genç Şanlıurfa - Gençlik ve Kültürün Merkezi', 'Genç Şanlıurfa ile iletişime geçin. Adres: Şanlıurfa Merkez. Telefon ve e-posta bilgilerimiz için tıklayın. Eğitimlerimiz hakkında bilgi alın.', 'genç şanlıurfa iletişim, gençlik merkezi iletişim, şanlıurfa gençlik merkezi adres', 'https://gencsanliurfa.com/contact', 'index, follow', 'Genç Şanlıurfa İletişim - Bize Ulaşın', 'Genç Şanlıurfa iletişim bilgileri. Adres, telefon ve e-posta bilgilerimiz. Eğitim ve etkinliklerimiz hakkında bilgi için bize ulaşın.', 'https://gencsanliurfa.com/assets/img/contact-og.jpg', NULL, 'ContactPage', '2025-01-15 17:43:42', NULL),
(5, 'news', 'Haberler ve Duyurular | Genç Şanlıurfa', 'Genç Şanlıurfa\'dan en güncel haberler, duyurular ve etkinlikler. Yeni eğitimler, gençlik projeleri ve şehrimizden güncel gelişmeler.', 'genç şanlıurfa haberler, gençlik haberleri, şanlıurfa etkinlikler, gençlik duyuruları', 'https://gencsanliurfa.com/news', 'index, follow', 'Genç Şanlıurfa Haberler ve Duyurular', 'Genç Şanlıurfa\'dan güncel haberler ve duyurular. Yeni eğitimler, etkinlikler ve gençlik projeleri hakkında bilgi alın.', 'https://gencsanliurfa.com/assets/img/news-og.jpg', NULL, 'NewsArticle', '2025-01-15 17:43:42', NULL),
(6, 'gallery', 'Galeri | Genç Şanlıurfa Etkinlikleri ve Faaliyetleri', 'Genç Şanlıurfa etkinliklerinden kareler, eğitim görüntüleri ve gençlik faaliyetleri. Şanlıurfa\'nın en aktif gençlik merkezinden görüntüler.', 'genç şanlıurfa galeri, etkinlik fotoğrafları, gençlik merkezi galeri, şanlıurfa gençlik', 'https://gencsanliurfa.com/gallery', 'index, follow', 'Genç Şanlıurfa Fotoğraf Galerisi', 'Genç Şanlıurfa etkinlikleri ve faaliyetlerinden özel anlar. Görüntülerle gençlik merkezimizin dinamik atmosferi.', 'https://gencsanliurfa.com/assets/img/gallery-og.jpg', NULL, 'ImageGallery', '2025-01-15 17:43:42', NULL),
(7, 'projects', 'Projeler | Genç Şanlıurfa Gençlik Projeleri ve Başarıları', 'Genç Şanlıurfa gençlerinin geliştirdiği projeler ve başarı hikayeleri. Sosyal, kültürel ve teknolojik alanlarda örnek projeler.', 'gençlik projeleri, şanlıurfa projeler, genç projeler, başarı hikayeleri', 'https://gencsanliurfa.com/projects', 'index, follow', 'Genç Şanlıurfa Gençlik Projeleri', 'Genç Şanlıurfa üyelerinin geliştirdiği yenilikçi projeler ve başarı hikayeleri. Geleceğin liderleri Genç Şanlıurfa\'da yetişiyor.', 'https://gencsanliurfa.com/assets/img/projects-og.jpg', NULL, 'Project', '2025-01-15 17:43:42', NULL),
(8, 'units', 'Birimler | Genç Şanlıurfa Faaliyet Birimleri', 'Genç Şanlıurfa faaliyet birimleri: Eğitim, Kültür-Sanat, Spor, Teknoloji ve diğer gençlik birimleri hakkında detaylı bilgi.', 'gençlik birimleri, faaliyet alanları, genç şanlıurfa birimler, gençlik faaliyetleri', 'https://gencsanliurfa.com/units', 'index, follow', 'Genç Şanlıurfa Faaliyet Birimleri', 'Genç Şanlıurfa\'nın çeşitli faaliyet birimleri. Her birim gençlerin farklı ilgi alanlarına hitap eden özel programlar sunuyor.', 'https://gencsanliurfa.com/assets/img/units-og.jpg', NULL, 'Organization', '2025-01-15 17:43:42', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tc_no` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Kadın','Erkek') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `tc_no`, `gender`, `status`, `birth_date`, `nationality`, `district_id`, `phone`, `unit_id`, `training_id`, `created_at`) VALUES
(6, 'berfin', 'tokmak', '38681128614', 'Kadın', 'active', '1998-12-01', 'Suriyeli', 13, '5313803063', 1, 3, '2025-01-16 06:54:04'),
(7, 'fatih', 'bahce', '61223232323', 'Erkek', 'active', '2025-01-01', 'Suriyeli', 12, '(533) 317-8198', 1, 3, '2025-01-16 06:54:27'),
(8, 'berfin', 'tokmak', '38681128614', 'Kadın', 'active', '1998-12-01', 'Suriyeli', 13, '5313803063', 1, 2, '2025-01-16 06:54:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `students_backup`
--

CREATE TABLE `students_backup` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tc_no` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `students_backup`
--

INSERT INTO `students_backup` (`id`, `first_name`, `last_name`, `tc_no`, `birth_date`, `nationality`, `district_id`, `neighborhood`, `phone`, `unit_id`, `training_id`, `status`, `created_at`) VALUES
(0, 'fatih', 'bahce', '61223232323', '2025-01-01', 'Suriyeli', 12, '', '(533) 317-8198', 1, 5, 'active', '2025-01-15 21:09:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `submission_history`
--

CREATE TABLE `submission_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `submission_type` enum('announcement','event','place') COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission_id` int(11) NOT NULL,
  `points` int(11) DEFAULT '50',
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `submission_history`
--

INSERT INTO `submission_history` (`id`, `user_id`, `submission_type`, `submission_id`, `points`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'announcement', 14, 50, 'rejected', '2025-01-21 12:15:44', '2025-01-23 13:07:27'),
(2, 1, 'announcement', 15, 50, 'rejected', '2025-01-21 12:15:44', '2025-01-23 13:07:25'),
(3, 1, 'event', 6, 50, 'approved', '2025-01-21 12:15:44', '2025-01-21 12:15:44'),
(4, 1, 'place', 1, 50, 'approved', '2025-01-21 12:15:44', '2025-01-21 12:15:44');

--
-- Tetikleyiciler `submission_history`
--
DELIMITER $$
CREATE TRIGGER `submission_history_before_insert` BEFORE INSERT ON `submission_history` FOR EACH ROW BEGIN
    SET NEW.created_at = CURRENT_TIMESTAMP;
    SET NEW.updated_at = CURRENT_TIMESTAMP;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `submission_history_before_update` BEFORE UPDATE ON `submission_history` FOR EACH ROW BEGIN
    SET NEW.updated_at = CURRENT_TIMESTAMP;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `trainings`
--

CREATE TABLE `trainings` (
  `id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `capacity` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deadline_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `trainings`
--

INSERT INTO `trainings` (`id`, `unit_id`, `title`, `description`, `start_date`, `end_date`, `capacity`, `is_active`, `created_at`, `deadline_date`) VALUES
(3, 1, 'Girişimcilik ve İş Kurma: Kadınlar İçin Adım Adım Başarı', 'Kadınların girişimcilik dünyasında daha fazla yer almasını desteklemek amacıyla hazırlanan bu eğitim, iş kurma sürecini baştan sona kadar ele alacaktır. Katılımcılar, iş fikri oluşturma, planlama, pazarlama ve yönetim gibi temel konularda bilgi sahibi olacak ve girişimcilik dünyasına adım atmaya hazır hale gelecekler.\r\n\r\nEğitim Modülleri:\r\n\r\nGirişimcilik Nedir?\r\n\r\nGirişimcilik kavramı ve önemi\r\nKadın girişimcilerin toplumsal rolü ve fırsatlar\r\nGirişimcilikte karşılaşılan zorluklar ve bu zorlukların üstesinden gelme yolları\r\nİş Fikri Geliştirme:\r\n\r\nİş fikri oluşturma süreci\r\nPazar araştırması yapma ve doğru hedef kitleyi belirleme\r\nYenilikçi ve sürdürülebilir iş fikirleri geliştirme\r\nİş Planı Hazırlama:\r\n\r\nİş planının önemi\r\nİş planında bulunması gereken temel unsurlar (misyon, vizyon, hedefler, finansal plan)\r\nGerçekçi ve ulaşılabilir hedefler koyma\r\nPazarlama Stratejileri:\r\n\r\nDijital pazarlama ve sosyal medya kullanımı\r\nMarka oluşturma ve müşteri kitlesiyle etkileşim\r\nİyi bir pazarlama stratejisinin adımları\r\nFinansal Yönetim ve Bütçeleme:\r\n\r\nGirişimciler için temel finansal bilgiler\r\nİşletme bütçesi oluşturma\r\nYatırımcı arama ve fon sağlama yöntemleri\r\nİşinizi Yönetme ve Büyütme:\r\n\r\nİşletme yönetimi ve liderlik becerileri\r\nEkibinizi oluşturma ve verimli çalışma yöntemleri\r\nİşinizi büyütme ve geliştirme stratejileri\r\nEğitim Süresi: 6 Hafta (Haftada 2 gün, toplamda 12 saat)\r\nEğitim Yeri: TOKİ Kadın Destek Merkezi\r\nEğitim Ücreti: Ücretsiz\r\nKatılım Şartları: Kadın girişimcilik konusunda meraklı olan, iş kurma fikri olan veya girişimcilik alanında kendini geliştirmek isteyen herkes katılabilir.\r\n\r\nBu eğitim, kadınların kendi işlerini kurmalarına ve girişimcilik dünyasında daha güçlü adımlarla yer almalarına yardımcı olmayı hedeflemektedir. Katılımcılar, işlerini kurma sürecinde gerekli tüm bilgi ve becerileri kazanarak, iş dünyasında başarılı bir girişimci olma yolunda emin adımlarla ilerleyecekler.', '2025-01-10', '2025-01-30', 12, 1, '2025-01-10 10:15:08', '2025-01-10'),
(2, 1, 'Dijital Dünyada Kadın: Web Tasarımı ve Bootstrap Eğitimi', 'Bu eğitim, kadınların dijital dünyada daha etkin rol almalarını sağlamak amacıyla web tasarımına giriş yapmaktadır. Katılımcılar, modern web siteleri oluşturabilmek için gerekli temel bilgi ve becerileri kazanacaklar. Eğitimde Bootstrap gibi popüler araçlarla mobil uyumlu web tasarımlarının nasıl yapılacağı adım adım anlatılacaktır.\r\n\r\nEğitim Modülleri:\r\n\r\nWeb Tasarımına Giriş:\r\n\r\nWeb tasarımı nedir ve neden önemlidir?\r\nWeb tasarımının temel prensipleri\r\nWeb tasarımı için gerekli araçlar ve yazılımlar\r\nBootstrap Nedir?\r\n\r\nBootstrap&#39;in temelleri\r\nBootstrap framework’ünün avantajları\r\nBootstrap ile hızlı ve mobil uyumlu tasarımlar yapma\r\nHTML ve CSS Temelleri:\r\n\r\nHTML ile temel sayfa yapısının oluşturulması\r\nCSS ile sayfa tasarımını özelleştirme\r\nBootstrap sınıfları kullanarak stil ve düzen oluşturma\r\nResponsive (Mobil Uyumlu) Tasarım:\r\n\r\nMobil uyumluluk neden önemlidir?\r\nBootstrap ile responsive tasarımlar oluşturma\r\nFarklı cihazlarda uyumlu görseller ve metin düzenlemeleri\r\nPratik Proje - Kendi Web Sitenizi Oluşturun:\r\n\r\nÖğrenciler, öğrendikleri bilgileri kullanarak kişisel veya ticari bir web sitesi tasarlarlar.\r\nAdım adım rehberlikle pratik yapma\r\nEğitim Süresi: 4 Hafta (Haftada 2 gün, toplamda 8 saat)\r\nEğitim Yeri: TOKİ Kadın Destek Merkezi\r\nEğitim Ücreti: Ücretsiz\r\nKatılım Şartları: Kadın katılımcılar, tüm seviyelerden katılabilir.\r\n\r\nBu eğitim, kadınların dijital dünyada yer edinmelerini sağlayarak, onlara kariyerlerinde ve kişisel gelişimlerinde güçlü bir temel oluşturmayı hedeflemektedir.', '2025-01-10', '2025-02-28', 12, 1, '2025-01-10 10:11:42', '2025-01-01'),
(4, 1, 'Robotik Kodlama: Geleceğin Teknolojisine İlk Adım', 'Bu eğitim, katılımcıların robotik teknolojileri ve kodlamayı öğrenerek dijital dünyanın önemli bir parçası olmalarını sağlayacak. Eğitimde, robotların nasıl çalıştığı ve nasıl programlandığı temel düzeyde anlatılacak, katılımcılar kendi robot projelerini geliştirebilecek bilgi ve beceriye sahip olacaklar.\r\n\r\nEğitim Modülleri:\r\n\r\nRobotik Teknolojiye Giriş:\r\n\r\nRobotik nedir ve robotlar hangi alanlarda kullanılır?\r\nRobotik sistemlerin temel bileşenleri (sensörler, aktüatörler, motorlar)\r\nRobot teknolojisinin günlük yaşamda nasıl yer aldığı\r\nTemel Kodlama ve Programlama Dillerine Giriş:\r\n\r\nKodlamaya dair temel kavramlar\r\nRobotik projelerde kullanılan diller (Scratch, Python)\r\nTemel algoritmalar ve mantık yapıları\r\nArduino ile Robot Yapımı:\r\n\r\nArduino nedir ve nasıl çalışır?\r\nArduino ile basit robot projeleri oluşturma\r\nMotorlar ve sensörler ile robot hareketliliği sağlama\r\nRobotları Programlama:\r\n\r\nRobotlara görev atama ve basit hareketler programlama\r\nRobot sensörlerini kullanarak çevreyi algılayan robotlar oluşturma\r\nKendi robot projelerinizi geliştirme\r\nPratik Uygulama - Kendi Robot Projenizi Tasarlayın:\r\n\r\nKatılımcılar, öğrendikleri bilgileri kullanarak kendi robot projelerini tasarlayacaklar.\r\nÇeşitli görevler için robotlar programlanacak, projenin son haliyle bir robot demosu yapılacaktır.\r\nEğitim Süresi: 5 Hafta (Haftada 2 gün, toplamda 10 saat)\r\nEğitim Yeri: TOKİ Kadın Destek Merkezi\r\nEğitim Ücreti: Ücretsiz\r\nKatılım Şartları: Kadın katılımcılar, teknolojiye ilgi duyan herkes katılabilir. Robotik ve kodlama konusunda herhangi bir ön bilgi gerekmemektedir.\r\n\r\nBu eğitim, katılımcıların robotik dünyasına adım atmalarını ve geleceğin teknolojilerine dair temel beceriler kazanmalarını sağlamak amacıyla düzenlenmiştir. Robotik ve kodlama becerileri, günümüz iş dünyasında önemli bir yer tutmakta ve bu eğitim, kadınların teknoloji alanındaki yetkinliklerini artırmaya yardımcı olacaktır.', '2025-01-03', '2025-02-12', 12, 1, '2025-01-10 10:15:33', '2025-01-01'),
(5, 1, 'Uzay Bilimleri ve Keşif: Evreni Anlamak İçin Temel Bir Bakış', 'Bu eğitim, katılımcılara uzay bilimleri ve evren hakkında temel bilgiler sunarak, uzaya olan ilgiyi artırmayı amaçlamaktadır. Katılımcılar, astronomi, gezegen bilimi ve uzay keşfi gibi konularda temel bilgi edinecek ve modern uzay araştırmalarının nasıl yapıldığını öğrenecekler.\r\n\r\nEğitim Modülleri:\r\n\r\nUzay Bilimlerine Giriş:\r\n\r\nUzay bilimi nedir ve nasıl gelişmiştir?\r\nEvrenin oluşumu ve temel yapıları\r\nAstronomi ve uzay bilimlerinin önemi\r\nGök Cisimleri ve Uzay Keşifleri:\r\n\r\nGezegenler, yıldızlar ve galaksiler\r\nUzaydaki temel cisimler: Asteroitler, kuyruklu yıldızlar, kara delikler\r\nUzay teleskopları ve uzay keşif araçları (Hubble, James Webb Teleskobu)\r\nUzay Keşifinde Kullanılan Teknolojiler:\r\n\r\nUzay araçları ve roketler nasıl çalışır?\r\nUzayda yaşam arayışları ve Mars misyonları\r\nİnsanlı uzay uçuşlarının geleceği\r\nAstronomi ve Uzay Haritaları:\r\n\r\nGökyüzü haritaları nasıl okunur?\r\nYıldız kümeleri, gezegenler ve takımyıldızları\r\nGözlem araçlarıyla gökyüzü gözlemi yapma teknikleri\r\nEvrenin Geleceği ve İnsanlığın Rolü:\r\n\r\nEvrenin sonu hakkında teoriler (Big Crunch, Big Freeze)\r\nİnsanlık uzaya nasıl yerleşebilir?\r\nUzayda yaşam ve sürdürülebilirlik\r\nPratik Uygulama - Uzay Gözlemi:\r\n\r\nKatılımcılar, gözleme cihazlarıyla temel astronomik gözlemler yapacaklar.\r\nAstronomi haritalarını kullanarak takımyıldızlarını tanıma ve inceleme\r\nEğitim Süresi: 6 Hafta (Haftada 2 gün, toplamda 12 saat)\r\nEğitim Yeri: TOKİ Kadın Destek Merkezi\r\nEğitim Ücreti: Ücretsiz\r\nKatılım Şartları: Kadın katılımcılar, uzay bilimlerine ilgi duyan herkes katılabilir. Önceden herhangi bir bilimsel bilgi gerekmemektedir.\r\n\r\nBu eğitim, uzay bilimlerine ve evrenin sırlarına olan merakı artırmayı hedeflemektedir. Katılımcılar, uzay hakkında daha derin bir anlayış geliştirecek ve bilimsel düşünme becerilerini güçlendirecekler. Eğitim, kadınları bilim ve keşif alanında daha fazla yer almaya teşvik etmek amacıyla tasarlanmıştır.', '2025-01-10', '2025-03-06', 12, 1, '2025-01-10 10:16:01', '2025-01-01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `training_applications`
--

CREATE TABLE `training_applications` (
  `id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `training_applications`
--

INSERT INTO `training_applications` (`id`, `training_id`, `user_id`, `status`, `created_at`) VALUES
(1, 5, 2, 'pending', '2025-01-15 18:58:34'),
(2, 4, 2, 'approved', '2025-01-15 18:58:56'),
(3, 3, 2, 'approved', '2025-01-15 19:02:56'),
(4, 3, 8, 'approved', '2025-01-16 05:47:41'),
(5, 2, 8, 'approved', '2025-01-16 05:47:56'),
(6, 4, 9, 'pending', '2025-01-16 06:27:47'),
(7, 3, 1, 'pending', '2025-01-23 09:07:13'),
(8, 4, 1, 'pending', '2025-01-23 12:44:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `training_registrations`
--

CREATE TABLE `training_registrations` (
  `id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `registration_type` enum('online','manual') DEFAULT 'online',
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `tc_no` varchar(11) NOT NULL,
  `birth_date` date NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL,
  `neighborhood` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `training_requests`
--

CREATE TABLE `training_requests` (
  `id` int(11) NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_type_id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_date` date NOT NULL,
  `contact_person` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_count` int(11) NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `training_requests`
--

INSERT INTO `training_requests` (`id`, `school_name`, `training_type_id`, `category`, `requested_date`, `contact_person`, `phone`, `address`, `student_count`, `status`, `notes`, `created_at`) VALUES
(12, 'ibrahim tatlıses i.ö.o', 2, NULL, '2025-01-24', '15', '(531) 380-3063', 'Ahmet yesevi mah. Şehit Piyade Ercuma Uçar sokak 84 Şanlıurfa/ Merkez', 20, 'approved', '', '2025-01-16 05:45:01'),
(13, 'Test', 5, NULL, '2025-01-01', 'Muhammed fatih bahçe', '(505) 785-1087', 'şanlıurfa', 64, 'rejected', '', '2025-01-17 05:53:55'),
(14, 'Test', 5, NULL, '2025-01-17', 'Muhammed fatih bahçe', '(533) 317-8198', 'şanlıurfa', 15, 'pending', NULL, '2025-01-17 09:34:07'),
(15, 'dsada', 5, NULL, '2025-01-31', 'Muhammed fatih bahçe', '(505) 785-1087', 'şanlıurfa', 15, 'pending', NULL, '2025-01-17 11:20:16'),
(16, 'Testdsad', 31, 'Çocuk (7 - 14 Yaş)', '2025-01-18', 'Muhammed fatih bahçe', '(505) 785-1087', 'şanlıurfa', 15, 'pending', NULL, '2025-01-17 11:45:38'),
(17, 'Test6', 31, 'Çocuk (7 - 14 Yaş)', '2025-02-01', 'Muhammed fatih bahçe', '(533) 317-8198', 'şanlıurfa', 40, 'approved', '', '2025-01-17 11:52:52'),
(18, 'ibrahim tatlıses i.ö.o', 29, 'Çocuk (7 - 14 Yaş)', '2025-01-30', 'Berfin TOKMAK', '(505) 785-1087', 'hamidiye mah. 258. sokak', 16, 'pending', NULL, '2025-01-20 08:21:52');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `training_types`
--

CREATE TABLE `training_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_audience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `training_types`
--

INSERT INTO `training_types` (`id`, `name`, `description`, `category`, `target_audience`, `duration`, `created_at`) VALUES
(2, 'Pre - Botcamp (Girişimcilik 101) Eğitimi', '15-24 yaş aralığındaki Türk ve yabancı uyruklu gençlerin girişimcilik becerilerini ve inovatif düşünme yetkinliklerini arttırmayı hedefleyen akran eğitim modeline dayalı farkındalık eğitimidir. Eğitim içeriği aşağıdaki başlıklara dayanmaktadır: Girişimciliğin tanımı, Girişimcilerin temel özellikleri, Sosyal Girişimciliğin Temelleri, Pazar Araştırması, İş Planı Oluşturma, Temel Finansal Kavramlar, Hedef Pazar ve Kitle Belirleme ve analizi, Risk Yönetimi, Dünyaca ünlü girişimcilerin başarı hikayeleri', 'Genç - \"Geleceği Eşitle\"', '15-24 yaş', '2- 3 saat\n', '2025-01-14 10:52:25'),
(5, 'Dijital Medya Okuryazarlığı Eğitimi', '15-24 yaş aralığındaki Türk ve yabancı uyruklu gençlerin dijital medya yetkinlikleri konusunda becerilerini arttırmayı hedefleyen akran eğitim modeline dayalı farkındalık eğitimidir. Eğitim içeriği aşağıdaki başlıklara dayanmaktadır: Dijital Medyanın Tanımı ve Önemi, Dijital Medya Türleri ve Özellikleri, Dijital Medya İçeriği ve Kaynak Değerlendirmesi, Dijital Medya Güvenliği, Dijital Medya Reklamcılığı ve Pazarlama, Dijital Medya Bağımlılığı ve Bilinçli Kullanım, Dijital Medya İçerik Üretimi', 'Genç - \"Geleceği Eşitle\"', '15-24 yaş', '2- 3 saat\n', '2025-01-17 05:52:28'),
(6, 'Yapay Zeka Eğitimi', '15-24 yaş aralığındaki Türk ve yabancı uyruklu gençlerin Yapay Zeka hakkında yetkinliğini arttırmayı hedefleyen akran eğitim modeline dayalı farkındalık eğitimidir. Eğitim içeriği aşağıdaki başlıklara dayanmaktadır: Yapay zeka nedir? Nasıl çalışır?  Yapay zekanın toplum üzerindeki dönüştürücü etkisi, Yapay zeka ve gelecek vizyonu, Üretken yapay zeka araçları (Generative AI), Yapay zeka ve robotik uygulamaları, Yapay zeka kullanım alanları', 'Genç - \"Geleceği Eşitle\"', '15-24 yaş', '3- 4 saat\n', '2025-01-17 05:52:36'),
(7, 'Sosyal Becerileri Geliştirme Eğitimi', '15-24 yaş aralığındaki Türk ve yabancı uyruklu gençlerin Sosyal Becerileri Geliştirme noktasında yetkinliğini arttırmayı hedefleyen akran eğitim modeline dayalı farkındalık eğitimidir. Eğitim içeriği aşağıdaki başlıklara dayanmaktadır: Sosyal Becerilerin Önemi ve Tanımı, Grup Çalışmaları ve İşbirliği Becerileri, Empati ve Kültürel Farkındalık, Problem Çözme ve Çatışma Yönetimi, Özgüven ve İş İlişkileri ', 'Genç - \"Geleceği Eşitle\"', '15-24 yaş', '2- 3 saat\n', '2025-01-17 05:52:40'),
(12, 'Google Araçları Eğitimi', '15-24 yaş aralığındaki Türk ve yabancı uyruklu gençlerin Google Araçları hakkında yetkinliğini arttırmayı hedefleyen akran eğitim modeline dayalı farkındalık eğitimidir. Eğitim içeriği 6 alt başlıktan oluşmaktadır: Google Drive, Google Analytics, Google Slides, Google Forms, Google Sites, Google Ads', 'Genç - \"Geleceği Eşitle\"', '15-24 yaş', '3 saat\n', '2025-01-17 08:38:35'),
(13, 'Tasarım Odaklı Düşünme Eğitimi', '15-24 yaş aralığındaki Türk ve yabancı uyruklu gençlerin Tasarım Odaklı Düşünme metodolojisi hakkında yetkinliğini arttırmayı hedefleyen akran eğitim modeline dayalı farkındalık eğitimidir. Eğitim içeriği aşağıdaki başlıklara dayanmaktadır: Tasarım Düşüncesi, Tasarım Düşüncesinin Aşamaları, Tasarım Düşüncesi Örnekleri, Tasarım Düşüncesinde Bilim ve Akılcılık ', 'Genç - \"Geleceği Eşitle\"', '15-24 yaş', '2- 3 saat\n', '2025-01-17 08:38:53'),
(15, 'Ebeveyn ve Öğretmen Buluşmaları', 'Dijital okuryazarlık ve dijital ebeveynlik anlayışının toplum geneline yayılmasını ve genç nesillere bilinçli içerik tüketim alışkanlıkları kazandırılmasını hedefliyor.', 'KADIN', 'Öğretmen & Ebeveyn', '2 gün (4 saat) - Çevrim İçi', '2025-01-17 09:52:48'),
(17, 'Çevrim İçi Güvenlik Eğitimi (Ebeveyn)', 'Meta güvenlik kurallarını öğrenmesi ve çevrim içi ortamda kişisel bilgi güvenliklerini en doğru şekilde sağlamaları konusunda gerekli bilgilerin aktarılması sağlanmaktadır. Kişisel bilgilerin ve sosyal medya hesabının güvenliği konusunda sürekli olumsuz durumlarla karşılaşan bireylerin bu olumsuz durumlar meydana gelmeden alınabilecek önlemler konusunda farkındalık sağlanması hedeflenmektedir.', 'KADIN', 'Ebeveyn', '2 saat', '2025-01-17 09:57:51'),
(18, 'Teknoloji Okuryazarlığı', 'Temel teknoloji eğitimi, e-hizmetler, sosyal medya kullanımı ve dijital okuryazarlık konularında bilgi verirken internet güvenliği, pazarlama, dijital içerik üretimi, veri gizliliği ve siber zorbalık gibi konulara da değinmektedir. Ayrıca, katılımcıların dijital araçları etkin kullanma becerilerini geliştirmek için uygulamalı eğitimler ve interaktif yöntemler sunarak bireylerin hem kişisel hem de profesyonel hayatlarında dijital dönüşüme uyum sağlamalarını desteklemektedir.', 'KADIN', '18 yaş ve üzeri kadınlar', '3 saat', '2025-01-17 09:57:51'),
(19, 'Tasarım ve Mobil Fotoğrafçılık Atölyesi', 'Tasarım Atölyesi, özellikle Canva platformunun etkin kullanımıyla sosyal medya paylaşımları, afiş ve el ilanı gibi görsel materyallerin hazırlanmasına odaklanmaktadır. Atölye, katılımcıların yaratıcı tasarım becerilerini geliştirmelerine olanak sağlarken temel grafik tasarım prensiplerini öğretmeyi de hedeflemektedir. Bunun yanı sıra, görsel hikaye anlatımı, renk uyumu ve dijital platformlara uygun içerik oluşturma gibi konulara da değinilerek katılımcıların hem kişisel hem de profesyonel projelerinde fark yaratacak tasarımlar üretmeleri desteklenmektedir.', 'KADIN', '18 yaş ve üzeri kadınlar', '3 saat', '2025-01-17 09:57:51'),
(20, 'Kariyer Planlama', 'Katılımcıların güçlü yönlerini keşfederek kişisel ve profesyonel hedeflerini belirlemelerine yardımcı olmayı amaçlamaktadır. Özgeçmiş hazırlama, LinkedIn profili oluşturma, iş görüşme teknikleri ve profesyonel iletişim becerileri gibi konular ele alınarak, katılımcıların iş dünyasının dinamiklerine uyum sağlamaları hedeflenmektedir.', 'KADIN', '18 yaş ve üzeri kadınlar', '3 saat', '2025-01-17 09:57:51'),
(21, 'Finansal Okuryazarlık', 'Bu program, katılımcıların temel finansal kavramları öğrenmelerine, gelir ve giderlerini etkili bir şekilde yöneterek bütçe yapma alışkanlıkları kazanmalarına, tasarruf ve yatırım bilincini geliştirmelerine odaklanmaktadır. Aynı zamanda, dijital finansal sistemlerin güvenli bir şekilde kullanımı konusunda katılımcılara rehberlik ederek kazanımcı ödeme sistemleri, mobil bankacılık ve dijital cüzdan gibi araçları bilinçli şekilde kullanmalarını sağlamayı amaçlamaktadır.', 'KADIN', '15-40 yaş', '1.5 -2 saat', '2025-01-17 09:57:51'),
(22, 'Dijital Okuryazarlık', 'Katılımcılara dijital dünyada ihtiyaç duyacakları temel bilgi ve becerileri kazandırmayı hedefleyen bu program, onların dijital teknolojiyi etkili, bilinçli ve güvenli bir şekilde kullanmalarını sağlamayı amaçlamaktadır. Eğitimler, dijital araçların işleyişini anlamaktan çöğe bilgiye erişime, çevrimiçi işbirliği yapmaktan dijital güvenlik ve gizlilik konularına kadar geniş bir yelpazeyı kapsayarak bireylerin hem kişisel hem de profesyonel yaşamlarında dijital becerilerini güçlendirmelerine yardımcı olacaktır.', 'KADIN', '15-40 yaş', '1.5 -2 saat', '2025-01-17 09:57:51'),
(23, 'Dijital Pazarlama Eğitimi', 'Kadınların pazarlama, dijital pazarlama/online satış, e-ticaret gibi konularda yetkinliklerini artırmak ve ekonomiye katılımlarını teşvik etmek amacıyla aşağıdaki eğitim modülleri gerçekleştirilecektir. 1. Pazar ve Müşteri Analizi: Pazar analizi, müşteri analizi, pazarlama araçları ve pazarlama stratejileri geliştirme gibi konulara odaklanılacaktır. 2. Sosyal Medya Pazarlaması: Sosyal medya platformları, sosyal medya reklamcılığı ve etkili sosyal medya içeriği üretimi gibi konulara odaklanılacaktır. 3. E-Ticaret: E-ticarete nasıl başlanacağı, dijital pazar yerleri, e-ticaret sitesi açma gibi konulara odaklanılacaktır.', 'KADIN', 'Kadınlar', '4 saat', '2025-01-17 09:57:51'),
(24, 'Sosyal Medya Fotoğrafçılığı Atölyesi', 'Eğitim içeriğinde yer alan başlıklar: Sosyal Medya Fotoğrafçılığı, Işık ve Zamanlama, Kompozisyon, Düzenleme Uygulamaları, Hikaye Anlatımı, İçerik Planlaması, E-Ticaret Fotoğrafçılığı', 'KADIN', 'Kadınlar', '2 saat', '2025-01-17 09:57:51'),
(25, 'Tasarım Odaklı Düşünme Atölyesi', 'Tasarım Odaklı Düşünme Atölyesi ile üretici kadınlar, kullanıcıları merkeze alarak tasarım odaklı düşünme yöntemini öğrenecek, iyi örneklerden ilham alacak ve ürünlerini nasıl geliştirebileceklerini derinlemesine çözümleme fırsatı yakalayacaktır. Katılımcılar, uygulamalı vaka çalışması ile hedef kitlelerini tanırken, deneyim haritası kanvası ile potansiyel müşterilerinin tüm etkileşimlerini, kullanıcının gözüyle deneyimleyecektir.', 'KADIN', 'Girişimci Kadınlar', '3 saat', '2025-01-17 09:57:51'),
(26, 'Tasarım Odaklı Düşünme ve Dijital Pazarlama', 'Kadınların dijital pazarlama, dijital araç kullanımı, tasarım odaklı düşünme ve girişimcilik becerilerinin geliştirilmesini, kooperatif kurma adımları ile ilgili bilgi ve deneyimlerin artırılması ve girişimlerin desteklenmesi amaçlanmaktadır. Bu amaç doğrultusunda katılımcılara aday ve girişimci kadınlara özgre kaslama ile teorik ve pratik eğitimlerin verilmesi hedeflenmektedir.', 'KADIN', 'Kadınlar', '1.5 - 2 (Her bir başlık 1.5 - 2 saat sürmektedir. ', '2025-01-17 09:57:51'),
(27, 'Çevrim İçi Güvenlik Eğitimi', 'Meta güvenlik kurallarını öğrenmesi ve çevrim içi ortamda kişisel bilgi güvenliklerini en doğru şekilde sağlamaları konusunda gerekli bilginin aktarılması sağlanmaktadır. Kişisel bilgilerin ve sosyal medya hesabının güvenliği konusunda sürekli olumsuz durumlarla karşılaşan bireylerin bu olumsuz durumlar meydana gelmeden alınabilecek önlemler konusunda farkındalık sağlanması hedeflenmektedir.', 'Çocuk (7 - 14 Yaş)', '13-17 Yaş', '2 saat', '2025-01-17 10:23:55'),
(28, 'Tasarım Odaklı Düşünme', 'Tasarım Odaklı Düşünme yaklaşımının 5 aşamasını deneyimleyerek öğrenmeye yönelik interaktif bir eğitim akışı bulunmaktadır.', 'Çocuk (7 - 14 Yaş)', '8-12 sınıf', '3-4 saat', '2025-01-17 10:23:55'),
(29, 'Çocuklar için Scratch Eğitimi', 'Minik Eller Kod Yazıyor Projesi 8-12 yaş aralığındaki çocukların temel bilgisayar programcılığı tanıtıp kod okuryazarlığı bilincinin öğretilmesini amaçlamaktadır.', 'Çocuk (7 - 14 Yaş)', '8-12 yaş', 'Eğitim saati 4-8 saat arası', '2025-01-17 10:23:55'),
(30, 'Yapay Zeka Eğitimi', 'Öğrencileri yapay zeka tanıştırma ve farklı projeler gerçekleştirmeyi amaçlayan bir eğitimdir.', 'Çocuk (7 - 14 Yaş)', '11-14 yaş', '6 saat', '2025-01-17 10:23:55'),
(31, 'Çevre Bilinci Geliştirme ve Afet Farkındalığı Eğitimi 1', 'Çevre, sürdürülebilirlik ve afet farkındalığı konuları hakkında bilinç gelişimi sağlayan ve ileri dönüşüm atölyesiyle atıklardan üretim sağlama eğitimidir.', 'Çocuk (7 - 14 Yaş)', '7-14 yaş', '2 saat', '2025-01-17 10:23:55'),
(32, 'Çocuklar İçin Su Bilinci', 'ÇNB\'nin UNDP ve Habitat Derneği iş birliği ile hayata geçirdiği \"Su ile Hayata Projesi\", su kaynakları ve su tüketiminin gelecekteki önemi ve küresel düzeyde devam eden su gündemini dikkate alarak 7-14 yaş arası çocukların su tüketimi, su tasarrufu ve su kullanımının çevresel etkilerini anlaması ve farkındalık kazanmasını sağlama amacı taşımaktadır.', 'Çocuk (7 - 14 Yaş)', '7-14 Yaş', '1.5 - 2 saat', '2025-01-17 10:23:55'),
(33, 'Çevre Bilinci Geliştirme ve Afet Farkındalığı Eğitimi 2', 'Habitat Derneği ve TikTak iş birliği ile hayata geçirilen \"Bilim Yolu Projesi\", kırsal alanlar başta olmak üzere afet bölgesindeki illerde paylaşım ekonomisi bilincini çocuklara aktarmak ve eğlenceli bilim aktiviteleri yaparak çocukların eğlenerek öğrenmesini amaçlamaktadır.', 'Çocuk (7 - 14 Yaş)', '7-14 yaş', '3 saat', '2025-01-17 10:23:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `working_hours` varchar(255) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `units`
--

INSERT INTO `units` (`id`, `name`, `address`, `working_hours`, `latitude`, `longitude`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ahmet Yesevi Kadın Destek ve Eğitim Merkezi', 'Ahmet Yesevi Mahallesi 2239.Sokak No:1', '08:00 - 17:00', 37.17780900, 38.77844400, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(2, 'Ahmet Yesevi Gençlik Merkezi', 'Ahmet Yesevi Mahallesi', '08:00 - 17:00', 37.17829200, 38.77812600, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(3, 'Toki Kadın Destek Merkezi', 'Akabe Batıkent Mahallesi 8009.Sokak No:7', '08:00 - 17:00', 37.13739100, 38.74437100, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(4, 'Topdağı Kadın Destek Merkezi', 'Topdağı Mahallesi 2708. Sokak No:17', '08:00 - 17:00', 37.14283200, 38.78129700, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(5, 'Viranşehir Kadın Destek Merkezi', 'Yenişehir Mah. Emniyet Müdürlüğü Karşısı', '08:00 - 17:00', 37.22654900, 39.75706800, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(6, 'Birecik Kadın Destek Merkezi', 'Mezra Mah. Güneş Cad.No:6 (Sağlık Ocağı Yanı Park evler)', '08:00 - 17:00', 37.01261700, 37.97272200, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(7, 'Bozova Kadın Destek Merkezi', 'Fevzi Çakmak Mah. Parmaksız Sokak Erdoğan Apt. No :7/2', '08:00 - 17:00', 37.36174500, 38.52708500, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(8, 'Siverek Kadın Destek Merkezi', 'Selahaddin Eyyubi Bulvarı Fırat Mah.No:20', '08:00 - 17:00', 37.74944300, 39.30398900, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(9, 'Halfeti Kadın Destek Merkezi', 'Fırat Mahallesi Açelya Sokak. No:2', '08:00 - 17:00', 37.22834600, 37.94763300, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(10, 'Suruç Kadın Destek Merkezi', 'Dikili Mah. Demsal Sok.No:12 (Eski Kuran Kursu yeri)', '08:00 - 17:00', 36.97268900, 38.42486500, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(19, 'Bilim Merkezi', 'Karsıyaka, 63000 Haliliye/Şanlıurfa', '08:00 - 17:00', 37.17142100, 38.84338700, NULL, '2025-01-23 10:40:08', '2025-01-23 10:40:08'),
(11, 'Hayati Harrani Kadın Destek ve Eğitim Merkezi', 'Hayati Harrani Mahallesi 4008. sokak 4/2', '08:00 - 17:00', 37.12154100, 38.81203000, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(12, 'Süleymaniye Aile Destek Merkezi', 'Süleymaniye Mah. Süleymaniye Cad. Şehit Hasan Ekinci Sok.No:11 Haliliye', '08:00 - 17:00', 37.16665800, 38.76314900, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(13, 'Süleymaniye Meslek Edindirme Merkezi', 'Süleymaniye Mah. Süleymaniye Cad. Faik Güzeloğlu Sağlık Ocağı arkası ( Brikethane bitişiği)', '08:00 - 17:00', 37.16514700, 38.77047900, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(14, 'Yenice Kadın Destek Merkezi', 'Eyüpkent Mahallesi 3980.Sokak no:6/1', '08:00 - 17:00', 37.10720200, 38.81651500, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(15, 'Mehmet Akif Ersoy Kadın Kültür ve Eğitim Merkezi', 'Yenişehir Mah.240.Sok.21/A Şok Market Arkası', '08:00 - 17:00', 37.16700600, 38.80579000, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(16, 'Eyüpkent Kadın Destek ve Eğitim Merkezi', 'Eyüpkent mahallesi 3980.sokak No:1(Eyüpkent cami karşısı)', '08:00 - 17:00', 37.11001200, 38.81623700, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(17, 'Harran Kadın Destek Merkezi', 'İMKB Caddesi No:22/3', '08:00 - 17:00', 36.87328900, 39.02615600, NULL, '2025-01-23 10:27:25', '2025-01-23 10:27:25'),
(20, 'Bilim Merkezi - VEX Robotics', 'Karsıyaka, 63000 Haliliye/Şanlıurfa', '08:00 - 17:00', 37.17142100, 38.84338700, NULL, '2025-01-23 10:40:08', '2025-01-23 10:40:08'),
(21, 'Şanlıurfa Teknokent', 'Ulubağ Mah. No: 287/A, Haliliye, Recep Tayyip Erdoğan Bulvarı, 63290 Şanlıurfa Merkez/Şanlıurfa', '08:00 - 17:00', 37.16161000, 38.87240900, NULL, '2025-01-23 10:40:08', '2025-01-23 10:40:08');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `unit_gallery`
--

CREATE TABLE `unit_gallery` (
  `id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tc_no` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `neighborhood` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Kadın','Erkek') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `first_name`, `last_name`, `tc_no`, `birth_date`, `nationality`, `district_id`, `neighborhood`, `phone`, `gender`, `password`, `role`, `created_at`) VALUES
(1, 'fathbahce', 'fathbahce@gmail.com', 'Fatih', 'Bahce', '12345553422', '2025-01-01', 'Turk', 8, 'test', '(533) 317-8198', 'Kadın', '$2y$10$QMyUDqTrwXeuvukVQW9cAes2YeZUGHtdGLxYD3WKnWw.awvQik3XO', 'admin', '2025-01-06 19:12:54'),
(2, 'Fatih', 'test@gmail.com', 'fatih', 'bahce', '61223232323', '2025-01-01', 'Suriyeli', 12, 'das', '(533) 317-8198', 'Erkek', '$2y$10$fGPKAg581219GZPKYYHqAuQ9Euoi98dAOd7fVf4.fsQ7VY14eyUIy', 'user', '2025-01-06 21:51:58'),
(9, 'admindas', 'customer@archielite.com', 'Zeynep', 'doğan', '12345678911', '2025-01-08', 'Turk', 11, 'ahmet yesevi', '(505) 785-1087', NULL, '$2y$10$3e3KdJoVA534C04wstN9UezsxALefkWesp5nvXywnfK4tf9VAaN6u', 'user', '2025-01-16 05:51:22'),
(8, 'berfin tokmak', 'brfn.tkmk@gmail.com', 'berfin', 'tokmak', '38681128614', '1998-12-01', 'Suriyeli', 13, 'HAMİDİYE', '5313803063', 'Kadın', '$2y$10$OYDj2A5qnRYA1pgWsH8f..SvlUlQo/AFA9H1UADfvuoV1VRrVOYCu', 'user', '2025-01-16 05:45:25'),
(7, 'test-ogrenci', 'testogrenci@gmail.com', 'ayşe', 'yıldık', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MSK0dM1vxejDX5Z593.97eErCdsaw2gELVYxJvU6VeIPCsahfZkAq', 'user', '2025-01-15 20:17:55'),
(10, 'testeadasd', 'admin@website.test', 'Muhammed', 'Bahçe', '12345553422', '2025-01-09', 'Turk', 7, 'ahmet yesevi', '(505) 785-1087', 'Kadın', '$2y$10$t4HmshS8Ist8x6LmIaEJAeIHD2urtJskJuljjpmKdzkmOYISGFOHS', 'user', '2025-01-21 12:17:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_points`
--

CREATE TABLE `user_points` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` int(11) DEFAULT '0',
  `total_submissions` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user_points`
--

INSERT INTO `user_points` (`id`, `user_id`, `points`, `total_submissions`, `created_at`, `updated_at`) VALUES
(1, 1, 700, 0, '2025-01-21 12:17:08', '2025-01-21 12:17:08');

--
-- Tetikleyiciler `user_points`
--
DELIMITER $$
CREATE TRIGGER `user_points_before_insert` BEFORE INSERT ON `user_points` FOR EACH ROW BEGIN
    SET NEW.created_at = CURRENT_TIMESTAMP;
    SET NEW.updated_at = CURRENT_TIMESTAMP;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `user_points_before_update` BEFORE UPDATE ON `user_points` FOR EACH ROW BEGIN
    SET NEW.updated_at = CURRENT_TIMESTAMP;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `youth_surveys`
--

CREATE TABLE `youth_surveys` (
  `id` int(11) NOT NULL,
  `age_group` enum('10-13','14-17','18-24','25-30') COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('kadın','erkek','prefer_not_to_say') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_council_member` tinyint(1) NOT NULL,
  `desired_services` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_details` text COLLATE utf8mb4_unicode_ci,
  `communication_channels` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback_channels` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_suggestion` text COLLATE utf8mb4_unicode_ci,
  `service_rating` enum('very_good','good','average','needs_improvement','insufficient') COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_contact` tinyint(1) NOT NULL,
  `contact_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_feedback` text COLLATE utf8mb4_unicode_ci,
  `contact_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `youth_surveys`
--

INSERT INTO `youth_surveys` (`id`, `age_group`, `gender`, `is_council_member`, `desired_services`, `service_details`, `communication_channels`, `feedback_channels`, `activity_suggestion`, `service_rating`, `previous_contact`, `contact_method`, `additional_feedback`, `contact_info`, `created_at`) VALUES
(1, '14-17', 'kadın', 1, 'coding,fitness,cinema', '', 'social', 'email,inperson', 'kkjkjk', 'very_good', 1, 'social', 'hgh', '', '2025-01-23 09:15:43'),
(2, '18-24', 'kadın', 1, 'sanat,kültür_gezileri', '', 'sosyal_medya', 'eposta', 'dasda', '', 1, 'telefon', 'dsadsa', '', '2025-01-23 09:51:48'),
(3, '14-17', 'kadın', 1, 'staj_is,genc_girisimciler', 'test', 'web_sitesi,mobil_uygulama,toplantılar', 'mobil_uygulama,yüz_yüze', 'testetete', '', 1, 'telefon', 'dsada', 'fathbahce@gmail.com', '2025-01-24 08:01:42');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cocuk_meclisi_ayarlar`
--
ALTER TABLE `cocuk_meclisi_ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cocuk_meclisi_etkinlikler`
--
ALTER TABLE `cocuk_meclisi_etkinlikler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cocuk_meclisi_haberler`
--
ALTER TABLE `cocuk_meclisi_haberler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cocuk_meclisi_haklar`
--
ALTER TABLE `cocuk_meclisi_haklar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cocuk_meclisi_iletisim`
--
ALTER TABLE `cocuk_meclisi_iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cocuk_meclisi_katilimcilar`
--
ALTER TABLE `cocuk_meclisi_katilimcilar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etkinlik_id` (`etkinlik_id`);

--
-- Tablo için indeksler `cocuk_meclisi_uyeler`
--
ALTER TABLE `cocuk_meclisi_uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `member_no` (`member_no`),
  ADD UNIQUE KEY `tc_no` (`tc_no`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Tablo için indeksler `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_identifier` (`page_identifier`);

--
-- Tablo için indeksler `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_student` (`tc_no`,`training_id`);

--
-- Tablo için indeksler `submission_history`
--
ALTER TABLE `submission_history`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Tablo için indeksler `training_applications`
--
ALTER TABLE `training_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application` (`training_id`,`user_id`),
  ADD KEY `training_id` (`training_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `training_registrations`
--
ALTER TABLE `training_registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `training_id` (`training_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Tablo için indeksler `training_requests`
--
ALTER TABLE `training_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `training_type_id` (`training_type_id`);

--
-- Tablo için indeksler `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_users_district` (`district_id`);

--
-- Tablo için indeksler `user_points`
--
ALTER TABLE `user_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `youth_surveys`
--
ALTER TABLE `youth_surveys`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `cocuk_meclisi_ayarlar`
--
ALTER TABLE `cocuk_meclisi_ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `cocuk_meclisi_etkinlikler`
--
ALTER TABLE `cocuk_meclisi_etkinlikler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `cocuk_meclisi_haberler`
--
ALTER TABLE `cocuk_meclisi_haberler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cocuk_meclisi_haklar`
--
ALTER TABLE `cocuk_meclisi_haklar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cocuk_meclisi_iletisim`
--
ALTER TABLE `cocuk_meclisi_iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cocuk_meclisi_katilimcilar`
--
ALTER TABLE `cocuk_meclisi_katilimcilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cocuk_meclisi_uyeler`
--
ALTER TABLE `cocuk_meclisi_uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `submission_history`
--
ALTER TABLE `submission_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `training_applications`
--
ALTER TABLE `training_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `training_requests`
--
ALTER TABLE `training_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `user_points`
--
ALTER TABLE `user_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `youth_surveys`
--
ALTER TABLE `youth_surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `training_requests`
--
ALTER TABLE `training_requests`
  ADD CONSTRAINT `training_requests_ibfk_1` FOREIGN KEY (`training_type_id`) REFERENCES `training_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
