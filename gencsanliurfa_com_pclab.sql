-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 15 Oca 2025, 19:51:38
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
(5, 'sadsfd', 'a@a.com', 'sad', 'ads', '2025-01-06 23:05:15');

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
(15, 'test', 'gallery_6785025da84ad.jpeg', '2025-01-13 12:09:01', 0, 0),
(13, 'test', 'gallery_678501e1bffcf.jpg', '2025-01-13 12:06:57', 0, 0),
(11, 'test', 'gallery_6785019be113d.jpg', '2025-01-13 12:05:47', 0, 0),
(10, 'test', 'gallery_6785018e7de1d.jpg', '2025-01-13 12:05:34', 0, 0),
(12, 'test', 'gallery_678501a48619f.jpg', '2025-01-13 12:05:56', 0, 0),
(14, 'test', 'gallery_678502409b4d0.jpg', '2025-01-13 12:08:32', 0, 0);

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
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image_path`, `created_at`, `updated_at`) VALUES
(2, 'Teknolojiye İlk Adım: Robotik Kodlama ve Yazılım Eğitimleri!', 'Geleceğin dili kodlama ve robotik sistemleri öğrenmek isteyenler için eşsiz bir fırsat! Robotik kodlama ve yazılım eğitim programımız başlıyor. Hem başlangıç seviyesi katılımcılar hem de bu alanda kendini geliştirmek isteyenler için özel olarak hazırlanan eğitimler, teorik bilgiyi pratik uygulamalarla birleştiriyor.\r\n\r\nNeler Öğreneceksiniz?\r\n\r\nRobot tasarımı ve mekanik sistemlerin temel prensipleri,\r\nYazılım dillerine giriş ve algoritma geliştirme,\r\nProje tabanlı öğrenme ile gerçek hayata yönelik çözümler.\r\nKimler Katılabilir?\r\nTeknolojiye ilgi duyan, hayal gücünü ve problem çözme yeteneklerini geliştirmek isteyen herkes başvuru yapabilir.\r\n\r\nBaşvuru Nasıl Yapılır?\r\nEğitim programına başvurularınızı www.kodlayogren.com adresinden online olarak yapabilirsiniz. Son başvuru tarihi: 25 Şubat 2025.\r\n\r\nDetaylı Bilgi ve İletişim:\r\nE-posta: info@kodlayogren.com\r\nTelefon: 0 530 123 45 67\r\n\r\nBu fırsatı kaçırmayın, siz de geleceğin teknolojilerine yön veren bireyler arasında yer alın!', NULL, '2025-01-06 20:13:03', '2025-01-10 06:42:47'),
(3, 'Robotik Kodlama ve Yazılım Eğitimleri Başladı!', 'Teknoloji ve inovasyona meraklı herkesi heyecanlandıracak bir haber! Robotik kodlama ve yazılım eğitimlerimize başvurular başladı. Bu eğitimlerle teknoloji dünyasında güçlü bir adım atabilirsiniz.\r\n\r\nEğitimler kapsamında, katılımcılar robot tasarımı, programlama temelleri ve yazılım geliştirme süreçleri hakkında bilgi sahibi olacak. Alanında uzman eğitmenler tarafından yürütülecek program, hem teorik dersleri hem de uygulamalı projeleri içeriyor.\r\n\r\nEğitim İçeriği:\r\n\r\nRobotik sistemlerin temel prensipleri,\r\nAlgoritma geliştirme ve problem çözme teknikleri,\r\nPopüler yazılım dilleri ile projeler oluşturma.\r\nKimler Katılabilir?\r\nHer yaştan teknolojiye ilgi duyan bireyler eğitime katılabilir. Daha önce deneyim şartı aranmamaktadır.\r\n\r\nBaşvuru ve Detaylar:\r\nEğitimlere katılmak için www.teknolojibasvuru.com adresini ziyaret ederek başvuru formunu doldurabilirsiniz. Son başvuru tarihi: 10 Mart 2025.\r\n\r\nİletişim:\r\nDetaylı bilgi için iletisim@teknolojibasvuru.com adresine e-posta gönderebilir veya 0 312 456 78 90 numaralı telefondan bize ulaşabilirsiniz.\r\n\r\nGeleceği inşa etmek ve teknoloji dünyasında fark yaratmak için bu fırsatı kaçırmayın!', NULL, '2025-01-06 20:19:11', '2025-01-10 06:42:28'),
(4, 'Robotik ve Yazılım Eğitimleriyle Geleceğe Hazır Olun!', 'Teknoloji dünyasına ilgi duyanlar için heyecan verici bir fırsat! Robotik kodlama ve yazılım eğitimlerine başvurular başladı. Bu eğitimlerle, katılımcılar hem teknolojik bilgi birikimlerini artıracak hem de geleceğin mesleklerine ilk adımı atacaklar.\r\n\r\nEğitim programı, başlangıç seviyesinden ileri düzeye kadar geniş bir yelpazede hazırlanmıştır. Katılımcılar, algoritma geliştirme, robotik tasarım ve yazılım dillerine giriş gibi konularda uzman eğitmenlerden destek alacaklar. Ayrıca, uygulamalı projelerle öğrendiklerini pekiştirme fırsatı bulacaklar.\r\n\r\nKazanımlarınız Neler Olacak?\r\n\r\nTemel ve ileri düzey robotik kodlama becerileri,\r\nUygulamalı projelerle problem çözme yeteneği,\r\nYazılım dillerine dair başlangıç bilgileri ve projeler üretme deneyimi.\r\nBaşvuru Bilgileri:\r\nEğitimlere katılmak için www.egitimbasvuru.com adresinden başvurunuzu gerçekleştirebilirsiniz. Son başvuru tarihi: 15 Şubat 2025. Kontenjanlar sınırlıdır, bu yüzden acele edin!\r\n\r\nDaha Fazla Bilgi:\r\nDetaylı bilgi için destek@egitimbasvuru.com adresine mail atabilir veya 0 850 123 45 67 numarasını arayabilirsiniz.\r\n\r\nGeleceğin teknolojilerini öğrenmek ve bu alanda bir adım önde olmak için şimdi harekete geçin! Unutmayın, her başarı bir adımla başlar!', NULL, '2025-01-06 20:19:44', '2025-01-10 06:42:00'),
(5, 'Robotik Kodlama ve Yazılım Eğitimlerine Başvurular Başladı!', 'Teknolojiye ilgi duyan gençler ve yetişkinler için büyük fırsat! Robotik kodlama ve yazılım alanında kendini geliştirmek isteyenler için düzenlenen eğitimlere başvurular başladı.\r\n\r\nEğitimler, katılımcılara robot tasarımı, algoritma geliştirme ve yazılım dillerine giriş gibi temel ve ileri düzey beceriler kazandırmayı hedefliyor. Uzman eğitmenler eşliğinde gerçekleşecek program, teorik derslerin yanı sıra uygulamalı projelerle zenginleştirilecek.\r\n\r\nKimler Katılabilir?\r\nHer yaştan teknoloji tutkununa açık olan eğitimler, hem yeni başlayanlar hem de bu alanda kendini daha da geliştirmek isteyenler için tasarlandı.\r\n\r\nBaşvuru Nasıl Yapılır?\r\nEğitimlere katılmak isteyenler, websiteadı.com adresinden online başvuru yapabilir. Kontenjanlar sınırlı, bu yüzden hemen başvurarak yerinizi ayırtmayı unutmayın!\r\n\r\nSon Başvuru Tarihi:\r\nSon başvuru tarihi 20 Ocak 2025. Geleceğin teknolojilerini öğrenmek ve yeni beceriler kazanmak için bu fırsatı kaçırmayın.', NULL, '2025-01-06 20:21:45', '2025-01-10 06:42:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `url`, `image_path`, `created_at`) VALUES
(8, '💡 Robotik ve Yazılım Eğitimleri için Kayıtlar Başladı!', 'Teknolojiyle geleceği inşa etmek isteyen herkesi eğitimlerimize bekliyoruz! Robotik kodlama ve yazılım temellerini öğrenerek, yenilikçi projelere imza atabilirsiniz.\r\n\r\nEğitimde Neler Var?\r\n\r\nRobotik sistemlerin tasarımı ve kullanımı,\r\nAlgoritma mantığı ve programlama dillerine giriş,\r\nUygulamalı projelerle deneyim kazanma.\r\n📌 Kimler Katılabilir?\r\nHer seviyeden katılımcı için uygun eğitimler. Deneyim şartı aranmamaktadır.\r\n\r\n📅 Son Başvuru Tarihi: 15 Mart 2025\r\n🌐 Kayıt için Tıklayın: www.robotikegitim.com\r\n📞 Detaylı Bilgi: 0 850 123 45 67\r\n\r\nGeleceğin teknolojileriyle tanışmak ve fark yaratmak için bu fırsatı kaçırmayın!', '', '6780e5f6f02a3.jpg', '2025-01-10 09:18:46'),
(7, '🎓 Robotik Kodlama ve Yazılım Eğitimleri Başlıyor!', 'Teknoloji dünyasına adım atmak isteyenler için harika bir fırsat! Robotik kodlama ve yazılım alanında düzenlenen eğitim programımıza başvurular başladı.\r\n\r\nEğitim İçeriği:\r\n\r\nRobot tasarımı ve temel prensipler,\r\nAlgoritma geliştirme ve yazılım dillerine giriş,\r\nUygulamalı projelerle öğrenim.\r\nKimler Katılabilir?\r\nEğitimlerimize her yaştan ve seviyeden teknoloji meraklısı katılabilir.\r\n\r\n📅 Son Başvuru Tarihi: 20 Şubat 2025\r\n🌐 Başvuru Adresi: www.teknolojibasvuru.com\r\n📞 İletişim: 0 312 456 78 90\r\n\r\nKontenjan sınırlı! Hemen başvurun, geleceğin teknolojilerini öğrenme fırsatını kaçırmayın!', '', '6780e5bb3c203.jpg', '2025-01-10 09:17:47'),
(9, '🎓 Bootstrap Eğitimi ile Modern Web Tasarımlarına İlk Adım!', 'Web tasarımına ilgi duyanlar için mükemmel bir fırsat! Bootstrap eğitimine katılarak, modern, mobil uyumlu ve estetik web siteleri oluşturmayı öğrenebilirsiniz.\r\n\r\nEğitim İçeriği:\r\n\r\nBootstrap kütüphanesi kullanımı,\r\nMobil uyumlu tasarım teknikleri,\r\nPratik projelerle web tasarım becerileri geliştirme.\r\n📌 Kimler Katılabilir?\r\nWeb tasarımı öğrenmek isteyen her seviyeden katılımcıya uygundur.\r\n\r\n📅 Son Başvuru Tarihi: 10 Mart 2025\r\n🌐 Kayıt için Tıklayın: www.webegitimi.com\r\n📞 Detaylı Bilgi: 0 532 123 45 67\r\n\r\nWeb tasarımında bir adım öne geçmek ve profesyonel projeler oluşturmak için bu fırsatı kaçırmayın!', '', '6780e643ad897.jpg', '2025-01-10 09:20:03'),
(10, '🌐 Web Tasarımı ve Bootstrap Eğitimi Başlıyor!', 'Web tasarımına başlamak ya da becerilerinizi geliştirmek isteyenler için mükemmel bir fırsat! Bootstrap eğitimiyle modern web siteleri oluşturmayı ve mobil uyumlu tasarımlar yapmayı öğrenin.\r\n\r\nEğitim İçeriği:\r\n\r\nBootstrap Temelleri: Web sayfalarını hızla oluşturma,\r\nResponsive Tasarım: Her cihazda mükemmel görünüm,\r\nPratik Uygulamalar: Gerçek projelerle deneyim kazanma.\r\nKimler Katılabilir?\r\nWeb tasarımına ilgi duyan, sıfırdan başlamak isteyen ya da bilgi ve becerilerini geliştirmek isteyen herkes katılabilir.\r\n\r\n📅 Son Başvuru Tarihi: 20 Mart 2025\r\n🌐 Başvuru İçin: www.webtasarimkursu.com\r\n📞 Bilgi ve İletişim: 0 536 234 56 78\r\n\r\nTeknolojiye adım atın, web tasarım dünyasında kendinizi geliştirin ve yaratıcı projeler üretmeye başlayın!', '', '6780e6cff3af4.jpg', '2025-01-10 09:22:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `students`
--

CREATE TABLE `students` (
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
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `tc_no`, `birth_date`, `nationality`, `district_id`, `neighborhood`, `phone`, `unit_id`, `training_id`, `status`, `created_at`) VALUES
(3, 'Muhammed', 'bahçe', '61223232323', '2025-01-01', 'Türk', 4, 'ahmet yesevi', '(533) 317-8198', 1, 4, 'active', '2025-01-12 21:38:53'),
(0, 'Muhammed', 'bah&ccedil;e', '12345553422', '2025-01-01', 'T&uuml;rk', 7, 'ahmet yesevi', '(533) 317-8198', 1, 4, 'active', '2025-01-14 13:46:17');

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
(3, 1, 'Girişimcilik ve İş Kurma: Kadınlar İçin Adım Adım Başarı', 'Kadınların girişimcilik dünyasında daha fazla yer almasını desteklemek amacıyla hazırlanan bu eğitim, iş kurma sürecini baştan sona kadar ele alacaktır. Katılımcılar, iş fikri oluşturma, planlama, pazarlama ve yönetim gibi temel konularda bilgi sahibi olacak ve girişimcilik dünyasına adım atmaya hazır hale gelecekler.\r\n\r\nEğitim Modülleri:\r\n\r\nGirişimcilik Nedir?\r\n\r\nGirişimcilik kavramı ve önemi\r\nKadın girişimcilerin toplumsal rolü ve fırsatlar\r\nGirişimcilikte karşılaşılan zorluklar ve bu zorlukların üstesinden gelme yolları\r\nİş Fikri Geliştirme:\r\n\r\nİş fikri oluşturma süreci\r\nPazar araştırması yapma ve doğru hedef kitleyi belirleme\r\nYenilikçi ve sürdürülebilir iş fikirleri geliştirme\r\nİş Planı Hazırlama:\r\n\r\nİş planının önemi\r\nİş planında bulunması gereken temel unsurlar (misyon, vizyon, hedefler, finansal plan)\r\nGerçekçi ve ulaşılabilir hedefler koyma\r\nPazarlama Stratejileri:\r\n\r\nDijital pazarlama ve sosyal medya kullanımı\r\nMarka oluşturma ve müşteri kitlesiyle etkileşim\r\nİyi bir pazarlama stratejisinin adımları\r\nFinansal Yönetim ve Bütçeleme:\r\n\r\nGirişimciler için temel finansal bilgiler\r\nİşletme bütçesi oluşturma\r\nYatırımcı arama ve fon sağlama yöntemleri\r\nİşinizi Yönetme ve Büyütme:\r\n\r\nİşletme yönetimi ve liderlik becerileri\r\nEkibinizi oluşturma ve verimli çalışma yöntemleri\r\nİşinizi büyütme ve geliştirme stratejileri\r\nEğitim Süresi: 6 Hafta (Haftada 2 gün, toplamda 12 saat)\r\nEğitim Yeri: TOKİ Kadın Destek Merkezi\r\nEğitim Ücreti: Ücretsiz\r\nKatılım Şartları: Kadın girişimcilik konusunda meraklı olan, iş kurma fikri olan veya girişimcilik alanında kendini geliştirmek isteyen herkes katılabilir.\r\n\r\nBu eğitim, kadınların kendi işlerini kurmalarına ve girişimcilik dünyasında daha güçlü adımlarla yer almalarına yardımcı olmayı hedeflemektedir. Katılımcılar, işlerini kurma sürecinde gerekli tüm bilgi ve becerileri kazanarak, iş dünyasında başarılı bir girişimci olma yolunda emin adımlarla ilerleyecekler.', '2025-01-10', '2025-01-30', 12, 1, '2025-01-10 10:15:08', '2025-01-01'),
(2, 1, 'Dijital Dünyada Kadın: Web Tasarımı ve Bootstrap Eğitimi', 'Bu eğitim, kadınların dijital dünyada daha etkin rol almalarını sağlamak amacıyla web tasarımına giriş yapmaktadır. Katılımcılar, modern web siteleri oluşturabilmek için gerekli temel bilgi ve becerileri kazanacaklar. Eğitimde Bootstrap gibi popüler araçlarla mobil uyumlu web tasarımlarının nasıl yapılacağı adım adım anlatılacaktır.\r\n\r\nEğitim Modülleri:\r\n\r\nWeb Tasarımına Giriş:\r\n\r\nWeb tasarımı nedir ve neden önemlidir?\r\nWeb tasarımının temel prensipleri\r\nWeb tasarımı için gerekli araçlar ve yazılımlar\r\nBootstrap Nedir?\r\n\r\nBootstrap&#39;in temelleri\r\nBootstrap framework’ünün avantajları\r\nBootstrap ile hızlı ve mobil uyumlu tasarımlar yapma\r\nHTML ve CSS Temelleri:\r\n\r\nHTML ile temel sayfa yapısının oluşturulması\r\nCSS ile sayfa tasarımını özelleştirme\r\nBootstrap sınıfları kullanarak stil ve düzen oluşturma\r\nResponsive (Mobil Uyumlu) Tasarım:\r\n\r\nMobil uyumluluk neden önemlidir?\r\nBootstrap ile responsive tasarımlar oluşturma\r\nFarklı cihazlarda uyumlu görseller ve metin düzenlemeleri\r\nPratik Proje - Kendi Web Sitenizi Oluşturun:\r\n\r\nÖğrenciler, öğrendikleri bilgileri kullanarak kişisel veya ticari bir web sitesi tasarlarlar.\r\nAdım adım rehberlikle pratik yapma\r\nEğitim Süresi: 4 Hafta (Haftada 2 gün, toplamda 8 saat)\r\nEğitim Yeri: TOKİ Kadın Destek Merkezi\r\nEğitim Ücreti: Ücretsiz\r\nKatılım Şartları: Kadın katılımcılar, tüm seviyelerden katılabilir.\r\n\r\nBu eğitim, kadınların dijital dünyada yer edinmelerini sağlayarak, onlara kariyerlerinde ve kişisel gelişimlerinde güçlü bir temel oluşturmayı hedeflemektedir.', '2025-01-10', '2025-02-28', 12, 1, '2025-01-10 10:11:42', '2025-01-01'),
(4, 1, 'Robotik Kodlama: Geleceğin Teknolojisine İlk Adım', 'Bu eğitim, katılımcıların robotik teknolojileri ve kodlamayı öğrenerek dijital dünyanın önemli bir parçası olmalarını sağlayacak. Eğitimde, robotların nasıl çalıştığı ve nasıl programlandığı temel düzeyde anlatılacak, katılımcılar kendi robot projelerini geliştirebilecek bilgi ve beceriye sahip olacaklar.\r\n\r\nEğitim Modülleri:\r\n\r\nRobotik Teknolojiye Giriş:\r\n\r\nRobotik nedir ve robotlar hangi alanlarda kullanılır?\r\nRobotik sistemlerin temel bileşenleri (sensörler, aktüatörler, motorlar)\r\nRobot teknolojisinin günlük yaşamda nasıl yer aldığı\r\nTemel Kodlama ve Programlama Dillerine Giriş:\r\n\r\nKodlamaya dair temel kavramlar\r\nRobotik projelerde kullanılan diller (Scratch, Python)\r\nTemel algoritmalar ve mantık yapıları\r\nArduino ile Robot Yapımı:\r\n\r\nArduino nedir ve nasıl çalışır?\r\nArduino ile basit robot projeleri oluşturma\r\nMotorlar ve sensörler ile robot hareketliliği sağlama\r\nRobotları Programlama:\r\n\r\nRobotlara görev atama ve basit hareketler programlama\r\nRobot sensörlerini kullanarak çevreyi algılayan robotlar oluşturma\r\nKendi robot projelerinizi geliştirme\r\nPratik Uygulama - Kendi Robot Projenizi Tasarlayın:\r\n\r\nKatılımcılar, öğrendikleri bilgileri kullanarak kendi robot projelerini tasarlayacaklar.\r\nÇeşitli görevler için robotlar programlanacak, projenin son haliyle bir robot demosu yapılacaktır.\r\nEğitim Süresi: 5 Hafta (Haftada 2 gün, toplamda 10 saat)\r\nEğitim Yeri: TOKİ Kadın Destek Merkezi\r\nEğitim Ücreti: Ücretsiz\r\nKatılım Şartları: Kadın katılımcılar, teknolojiye ilgi duyan herkes katılabilir. Robotik ve kodlama konusunda herhangi bir ön bilgi gerekmemektedir.\r\n\r\nBu eğitim, katılımcıların robotik dünyasına adım atmalarını ve geleceğin teknolojilerine dair temel beceriler kazanmalarını sağlamak amacıyla düzenlenmiştir. Robotik ve kodlama becerileri, günümüz iş dünyasında önemli bir yer tutmakta ve bu eğitim, kadınların teknoloji alanındaki yetkinliklerini artırmaya yardımcı olacaktır.', '2025-01-03', '2025-02-12', 12, 1, '2025-01-10 10:15:33', '2025-01-01'),
(5, 1, 'Uzay Bilimleri ve Keşif: Evreni Anlamak İçin Temel Bir Bakış', 'Bu eğitim, katılımcılara uzay bilimleri ve evren hakkında temel bilgiler sunarak, uzaya olan ilgiyi artırmayı amaçlamaktadır. Katılımcılar, astronomi, gezegen bilimi ve uzay keşfi gibi konularda temel bilgi edinecek ve modern uzay araştırmalarının nasıl yapıldığını öğrenecekler.\r\n\r\nEğitim Modülleri:\r\n\r\nUzay Bilimlerine Giriş:\r\n\r\nUzay bilimi nedir ve nasıl gelişmiştir?\r\nEvrenin oluşumu ve temel yapıları\r\nAstronomi ve uzay bilimlerinin önemi\r\nGök Cisimleri ve Uzay Keşifleri:\r\n\r\nGezegenler, yıldızlar ve galaksiler\r\nUzaydaki temel cisimler: Asteroitler, kuyruklu yıldızlar, kara delikler\r\nUzay teleskopları ve uzay keşif araçları (Hubble, James Webb Teleskobu)\r\nUzay Keşifinde Kullanılan Teknolojiler:\r\n\r\nUzay araçları ve roketler nasıl çalışır?\r\nUzayda yaşam arayışları ve Mars misyonları\r\nİnsanlı uzay uçuşlarının geleceği\r\nAstronomi ve Uzay Haritaları:\r\n\r\nGökyüzü haritaları nasıl okunur?\r\nYıldız kümeleri, gezegenler ve takımyıldızları\r\nGözlem araçlarıyla gökyüzü gözlemi yapma teknikleri\r\nEvrenin Geleceği ve İnsanlığın Rolü:\r\n\r\nEvrenin sonu hakkında teoriler (Big Crunch, Big Freeze)\r\nİnsanlık uzaya nasıl yerleşebilir?\r\nUzayda yaşam ve sürdürülebilirlik\r\nPratik Uygulama - Uzay Gözlemi:\r\n\r\nKatılımcılar, gözleme cihazlarıyla temel astronomik gözlemler yapacaklar.\r\nAstronomi haritalarını kullanarak takımyıldızlarını tanıma ve inceleme\r\nEğitim Süresi: 6 Hafta (Haftada 2 gün, toplamda 12 saat)\r\nEğitim Yeri: TOKİ Kadın Destek Merkezi\r\nEğitim Ücreti: Ücretsiz\r\nKatılım Şartları: Kadın katılımcılar, uzay bilimlerine ilgi duyan herkes katılabilir. Önceden herhangi bir bilimsel bilgi gerekmemektedir.\r\n\r\nBu eğitim, uzay bilimlerine ve evrenin sırlarına olan merakı artırmayı hedeflemektedir. Katılımcılar, uzay hakkında daha derin bir anlayış geliştirecek ve bilimsel düşünme becerilerini güçlendirecekler. Eğitim, kadınları bilim ve keşif alanında daha fazla yer almaya teşvik etmek amacıyla tasarlanmıştır.', '2025-01-10', '2025-03-06', 12, 1, '2025-01-10 10:16:01', '2025-01-01');

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

--
-- Tablo döküm verisi `training_registrations`
--

INSERT INTO `training_registrations` (`id`, `training_id`, `registration_type`, `first_name`, `last_name`, `tc_no`, `birth_date`, `nationality`, `district_id`, `neighborhood`, `phone`, `created_at`) VALUES
(7, 4, 'online', 'Muhammed', 'bah&ccedil;e', '12345553422', '2025-01-01', 'T&uuml;rk', 7, 'ahmet yesevi', '(533) 317-8198', '2025-01-13 10:53:27'),
(5, 4, 'online', 'Muhammed', 'bahçe', '61223232323', '2025-01-01', 'Türk', 4, 'ahmet yesevi', '(533) 317-8198', '2025-01-12 21:38:24'),
(0, 3, 'online', 'Muhammed', 'bah&ccedil;e', '61223232323', '2025-01-02', 'Suriyeli', 7, 'ahmet yesevi', '(533) 317-8198', '2025-01-15 05:48:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `training_requests`
--

CREATE TABLE `training_requests` (
  `id` int(11) NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_type_id` int(11) NOT NULL,
  `requested_date` date NOT NULL,
  `contact_person` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_count` int(11) NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `training_types`
--

CREATE TABLE `training_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `training_types`
--

INSERT INTO `training_types` (`id`, `name`, `description`, `created_at`) VALUES
(2, 'Pre - Botcamp (Girişimcilik 101) Eğitimi', '', '2025-01-14 10:52:25');

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
(1, 'Toki Kadın Destek Merkezi', 'Topdağı, 2708. Sk. No:17, 63200 Şanlıurfa Merkez/Şanlıurfa', '08:00 - 17:00', 37.14281680, 38.77904350, 'TOKİ Kadın Destek Merkezi, kadınların yaşamlarını daha güçlü, bağımsız ve sağlıklı bir şekilde sürdürebilmeleri için çeşitli hizmetler sunan bir kuruluştur. Şanlıurfa&#39;da, TOKİ konutlarında yaşayan kadınlara özel olarak tasarlanmış olan bu merkez, kadınların eğitim, psikolojik destek, sosyal hizmetler ve hukuki yardım gibi pek çok alanda destek alabilecekleri bir ortam yaratmaktadır.\r\n\r\nMerkezimiz, kadınların potansiyellerini en üst düzeye çıkarmalarını sağlamak için çeşitli eğitimler düzenlemektedir. Eğitimlerimiz arasında kişisel gelişim, dijital okuryazarlık, girişimcilik, mesleki beceri kazandırma, aile içi ilişkiler ve psikolojik destek gibi konular yer almaktadır. Kadınların, toplumsal yaşamda daha aktif ve güçlü bireyler olmalarına yardımcı olmak için sürekli olarak programlarımızı güncel tutmaktayız.\r\n\r\nAyrıca, kadınların sosyal hayatta karşılaştığı zorlukları aşabilmeleri için hukuki danışmanlık hizmetleri sunulmakta, psikolojik destek ve sosyal hizmetlerle de yaşam kalitelerinin artırılması hedeflenmektedir. TOKİ Kadın Destek Merkezi, kadınların ihtiyaç duyduğu her türlü desteği sağlayarak, onları hem ailelerinde hem de toplumsal yaşamda daha güçlü bir konuma getirmeyi amaçlamaktadır.\r\n\r\nKadınların toplumsal hayata daha aktif katılımlarını sağlamak ve onları güçlendirmek amacıyla yapılan tüm çalışmalar, merkezimizin vizyonuna uygun olarak sürekli olarak geliştirilmekte ve genişletilmektedir.', '2025-01-09 21:35:42', '2025-01-10 10:10:41'),
(0, 'Hayati Harrani Kadın Destek Merkezi', 'Hayati Harrani Kadın Destek Merkezi', '08:00 - 17:00', 37.12154100, 38.81203000, 'Hayati Harrani Kadın Destek Merkezi', NULL, NULL),
(0, 'Sırrın Kadın Destek Merkezi', 'Sırrın Kadın Destek Merkezi', '08:00 - 17:00', 37.16458300, 38.83472000, 'Sırrın Kadın Destek Merkez', NULL, NULL),
(0, 'Karakoyunlu Kadın Destek Merkezi', 'Karakoyunlu Kadın Destek Merkezi', '08:00 - 17:00', 37.16087600, 38.78169000, 'Karakoyunlu Kadın Destek Merkezi', NULL, NULL),
(0, 'Bozova Kadın Destek Merkezi', 'Bozova Kadın Destek Merkezi', '08:00 - 17:00', 37.36174500, 38.52708500, '', NULL, NULL),
(0, 'Birecik Kadın Destek Merkezi ', 'Birecik Kadın Destek Merkezi ', '08:00 - 17:00', 37.01261700, 37.97272200, 'Birecik Kadın Destek Merkezi ', NULL, NULL),
(0, 'Ahmet Yesevi Kadın Destek Merkezi', 'Ahmet Yesevi Kadın Destek Merkezi', '08:00 - 17:00', 37.17780900, 38.77844400, '', NULL, NULL),
(0, 'Yenice Aile Destek Merkezi', 'Yenice Aile Destek Merkezi', '08:00 - 17:00', 37.10720200, 38.81651500, 'Yenice Aile Destek Merkezi', NULL, NULL);

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
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `first_name`, `last_name`, `tc_no`, `birth_date`, `nationality`, `district_id`, `neighborhood`, `phone`, `password`, `role`, `created_at`) VALUES
(1, 'fathbahce', 'fathbahce@gmail.com', 'Fatih', 'Bahce', '12345553422', '2025-01-01', 'T&uuml;rk', 8, 'test', '(533) 317-8198', '$2y$10$QMyUDqTrwXeuvukVQW9cAes2YeZUGHtdGLxYD3WKnWw.awvQik3XO', 'admin', '2025-01-06 19:12:54'),
(2, 'deneme', 'test@gmail.com', 'Muhammed', 'bah&ccedil;e', '61223232323', '2025-01-01', 'Suriyeli', 12, 'das', '(533) 317-8198', '$2y$10$fGPKAg581219GZPKYYHqAuQ9Euoi98dAOd7fVf4.fsQ7VY14eyUIy', 'user', '2025-01-06 21:51:58'),
(3, 'Oap', 'osmanali6363@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VupH9RMoPolOA1NCDR/ZHegqq8raS1fyzXlIvxbF0k3bjC5bAHH.S', 'user', '2025-01-06 21:56:02'),
(4, 'oap_123', 'firatbyrm7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$p/3LMulhoClh9AFVaOf4reWfgdk2ta6eL9eiv8V5t4cXzPWDM4FiW', 'user', '2025-01-07 13:28:36'),
(5, 'oap_123456', 'osmnaliplt@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GU0Mi9aN86S2EqtPNkrfR.kHjZtTsMABl3QPLRwr9uG6T2sxmnHbK', 'user', '2025-01-07 13:29:21'),
(6, 'test deneme', 'staff@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mBCrJ5c4hfeP.NsjQtPEBO3QWmJuHW699hyQsDRfA25NwnpVqhG0O', 'user', '2025-01-14 07:23:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tc_no` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `neighborhood` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `first_name`, `last_name`, `tc_no`, `birth_date`, `nationality`, `district_id`, `neighborhood`, `phone`) VALUES
(1, 2, 'Muhammed', 'bah&ccedil;e', '61223232323', '2025-01-01', 'T&uuml;rk', 5, 'ahmet yesevi', '(533) 317-8198'),
(2, 2, 'Muhammed', 'bah&ccedil;e', '61223232323', '2025-01-01', 'T&uuml;rk', 5, 'ahmet yesevi', '(533) 317-8198'),
(3, 2, 'Muhammed', 'bah&ccedil;e', '61223232323', '2025-01-01', 'Suriyeli', 5, 'ahmet yesevi', '(533) 317-8198'),
(4, 2, 'Muhammed', 'bah&ccedil;e', '61223232323', '2025-01-01', 'T&uuml;rk', 5, 'ahmet yesevi', '(533) 317-8198'),
(5, 2, 'Muhammed', 'bah&ccedil;e', '61223232323', '2025-01-01', 'T&uuml;rk', 5, 'ahmet yesevi', '(533) 317-8198'),
(6, 2, 'Muhammed', 'bah&ccedil;e', '61223232323', '2025-01-01', 'Suriyeli', 5, 'ahmet yesevi', '(533) 317-8198');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about`
--
ALTER TABLE `about`
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
-- Tablo için indeksler `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `unit_id` (`unit_id`),
  ADD KEY `training_id` (`training_id`);

--
-- Tablo için indeksler `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_id` (`unit_id`);

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
-- Tablo için indeksler `unit_gallery`
--
ALTER TABLE `unit_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_users_district` (`district_id`);

--
-- Tablo için indeksler `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_district_id` (`district_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `training_requests`
--
ALTER TABLE `training_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
