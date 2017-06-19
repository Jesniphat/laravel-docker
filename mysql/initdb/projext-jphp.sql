-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.22-MariaDB - Source distribution
-- Server OS:                    Linux
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for project-jphp
CREATE DATABASE IF NOT EXISTS `project-jphp` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `project-jphp`;

-- Dumping structure for table project-jphp.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cate_description` text COLLATE utf8_unicode_ci,
  `product_qty` int(11) DEFAULT NULL,
  `cover_pic` longblob,
  `status` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `uuid` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 2` (`uuid`(100))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table project-jphp.category: ~3 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `cate_name`, `cate_description`, `product_qty`, `cover_pic`, `status`, `uuid`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(10, 'กบยาง', 'กบยางหลากสี', NULL, NULL, 'Y', 'de4c9c17-3fb7-11e7-93f0-1867b02605c0', '2017-05-23 20:00:59', 1, '2017-05-23 20:00:59', 1),
	(11, 'กบไม้', 'กบไม่คุณภาพดี', NULL, NULL, 'Y', 'e85b1465-3fb7-11e7-93f0-1867b02605c0', '2017-05-23 20:01:16', 1, '2017-05-23 20:01:16', 1),
	(12, 'กุ้งเครฟิส', 'กุ้งเครฟิสสีสวยๆ', NULL, NULL, 'Y', '13c79714-3fb8-11e7-93f0-1867b02605c0', '2017-05-23 20:02:29', 1, '2017-05-23 20:02:29', 1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table project-jphp.order
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL,
  `cname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `clastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `addr` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdistrict` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `cphone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cemail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalprice` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table project-jphp.order: ~0 rows (approximately)
DELETE FROM `order`;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- Dumping structure for table project-jphp.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P0001',
  `product_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8_unicode_ci,
  `status` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'Y',
  `product_price` double NOT NULL DEFAULT '0',
  `product_qty` bigint(20) NOT NULL DEFAULT '0',
  `uuid` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 2` (`uuid`(100),`code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table project-jphp.product: ~4 rows (approximately)
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `category_id`, `code`, `product_name`, `product_description`, `status`, `product_price`, `product_qty`, `uuid`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
	(26, 10, 'P00001', 'กบยางลายจุด', 'กบยางลายจุดรับรองคุณภาพ', 'Y', 80, 100, 'd7031921-3fbb-11e7-93f0-1867b02605c0', '2017-05-23 20:29:25', 1, '2017-06-12 01:02:47', 6),
	(27, 10, 'P00002', 'กบสาดเลือด', 'กบลายสาดเลือด', 'Y', 80, 100, '9b99aab2-3fc1-11e7-93f0-1867b02605c0', '2017-05-23 21:10:42', 1, '2017-06-12 01:02:47', 6),
	(28, 10, 'P00003', 'กบแก้คัน', 'กบทรงแก้คัน', 'Y', 80, 100, '7623fcd3-3fc2-11e7-93f0-1867b02605c0', '2017-05-23 21:16:49', 1, '2017-06-12 00:06:43', 6),
	(29, 10, 'P00004', 'กบวัดกระจาย', '', 'Y', 80, 150, 'a03d3660-3fc2-11e7-93f0-1867b02605c0', '2017-05-23 21:18:00', 1, '2017-06-12 00:06:43', 6);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table project-jphp.product_order
CREATE TABLE IF NOT EXISTS `product_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table project-jphp.product_order: ~0 rows (approximately)
DELETE FROM `product_order`;
/*!40000 ALTER TABLE `product_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_order` ENABLE KEYS */;

-- Dumping structure for table project-jphp.product_pic
CREATE TABLE IF NOT EXISTS `product_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `productpic_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `productpic_path` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `productpic_type` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `productpic_size` int(11) NOT NULL DEFAULT '0',
  `status` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `uuid` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`(100))
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table project-jphp.product_pic: ~37 rows (approximately)
DELETE FROM `product_pic`;
/*!40000 ALTER TABLE `product_pic` DISABLE KEYS */;
INSERT INTO `product_pic` (`id`, `product_id`, `productpic_name`, `productpic_path`, `productpic_type`, `productpic_size`, `status`, `uuid`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
	(82, 26, '12521045_1165132126851728_1719504070_n.jpg', 'product-img/20170523032757pm_12521045_1165132126851728_1719504070_n.jpg', 'image/jpeg', 48309, 'N', 'a2ad117c-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:27:57', 0, '2017-06-05 12:33:35'),
	(83, 26, '14546652_1299935063392818_61225089516961792_n.jpg', 'product-img/20170523032802pm_14546652_1299935063392818_61225089516961792_n.jpg', 'image/jpeg', 49313, 'N', 'a5b66dbd-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:28:02', 0, '2017-06-05 12:33:35'),
	(84, 26, '14546653_1129514337129863_888066711301914624_n.jpg', 'product-img/20170523032812pm_14546653_1129514337129863_888066711301914624_n.jpg', 'image/jpeg', 50407, 'N', 'ab39da38-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:28:12', 0, '2017-06-05 12:33:35'),
	(85, 26, '14546971_1205688339492804_2559577024087719936_n.jpg', 'product-img/20170523032819pm_14546971_1205688339492804_2559577024087719936_n.jpg', 'image/jpeg', 48373, 'N', 'afb73c8a-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:28:19', 0, '2017-06-05 12:33:35'),
	(86, 26, '14546996_1376065605744818_6238710211012460544_n.jpg', 'product-img/20170523032827pm_14546996_1376065605744818_6238710211012460544_n.jpg', 'image/jpeg', 49946, 'N', 'b4584460-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:28:27', 0, '2017-06-05 12:33:35'),
	(87, 26, '14547022_1306007669418908_6912761253165268992_n.jpg', 'product-img/20170523032833pm_14547022_1306007669418908_6912761253165268992_n.jpg', 'image/jpeg', 48439, 'N', 'b80d2104-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:28:33', 0, '2017-06-05 12:33:35'),
	(88, 26, '14547025_1286113224752504_5067565705629532160_n.jpg', 'product-img/20170523032840pm_14547025_1286113224752504_5067565705629532160_n.jpg', 'image/jpeg', 51038, 'N', 'bbeae8a1-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:28:40', 0, '2017-06-05 12:33:35'),
	(89, 26, '14750771_1093929240720475_6887073294286061568_n.jpg', 'product-img/20170523032846pm_14750771_1093929240720475_6887073294286061568_n.jpg', 'image/jpeg', 47564, 'N', 'bfb7cce2-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:28:46', 0, '2017-06-05 12:33:35'),
	(90, 26, '14750872_1279224742098890_6041011513462882304_n.jpg', 'product-img/20170523032853pm_14750872_1279224742098890_6041011513462882304_n.jpg', 'image/jpeg', 51517, 'N', 'c3e7c93c-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:28:53', 0, '2017-06-05 12:33:35'),
	(91, 26, '14751081_1212089765532725_1998236270358167552_n.jpg', 'product-img/20170523032903pm_14751081_1212089765532725_1998236270358167552_n.jpg', 'image/jpeg', 53294, 'N', 'c9f16ef9-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:29:03', 0, '2017-06-05 12:33:35'),
	(92, 26, '14751140_1083118478470125_85480762702299136_n.jpg', 'product-img/20170523032911pm_14751140_1083118478470125_85480762702299136_n.jpg', 'image/jpeg', 50316, 'N', 'ce54d4ef-3fbb-11e7-93f0-1867b02605c0', 0, '2017-05-23 20:29:11', 0, '2017-06-05 12:33:35'),
	(93, 27, '12384990_1388474084503438_612937110_n.jpg', 'product-img/20170523041024pm_12384990_1388474084503438_612937110_n.jpg', 'image/jpeg', 31065, 'N', '90b816db-3fc1-11e7-93f0-1867b02605c0', 0, '2017-05-23 21:10:24', 0, '2017-06-05 12:34:13'),
	(94, 28, '15729381_1607619272588333_2390009443203940352_n.jpg', 'product-img/20170523041610pm_15729381_1607619272588333_2390009443203940352_n.jpg', 'image/jpeg', 38796, 'N', '5eb751a8-3fc2-11e7-93f0-1867b02605c0', 0, '2017-05-23 21:16:10', 0, '2017-06-05 12:35:48'),
	(95, 28, '15729489_1133272966770846_7790129901012516864_n.jpg', 'product-img/20170523041617pm_15729489_1133272966770846_7790129901012516864_n.jpg', 'image/jpeg', 34699, 'N', '633b4e38-3fc2-11e7-93f0-1867b02605c0', 0, '2017-05-23 21:16:17', 0, '2017-06-05 12:35:48'),
	(96, 28, '16175035_1372592912811000_9215124084738752512_n.jpg', 'product-img/20170523041626pm_16175035_1372592912811000_9215124084738752512_n.jpg', 'image/jpeg', 40633, 'N', '6811dff6-3fc2-11e7-93f0-1867b02605c0', 0, '2017-05-23 21:16:26', 0, '2017-06-05 12:35:48'),
	(97, 28, '16175054_1326127310795892_2478462778541604864_n.jpg', 'product-img/20170523041630pm_16175054_1326127310795892_2478462778541604864_n.jpg', 'image/jpeg', 35548, 'N', '6ad76d31-3fc2-11e7-93f0-1867b02605c0', 0, '2017-05-23 21:16:30', 0, '2017-06-05 12:35:48'),
	(98, 28, '16175636_1290077997752004_1302611581707747328_n.jpg', 'product-img/20170523041639pm_16175636_1290077997752004_1302611581707747328_n.jpg', 'image/jpeg', 35400, 'N', '7006a75b-3fc2-11e7-93f0-1867b02605c0', 0, '2017-05-23 21:16:39', 0, '2017-06-05 12:35:48'),
	(99, 29, '12600805_1025718510817022_1732530515_n.jpg', 'product-img/20170523041755pm_12600805_1025718510817022_1732530515_n.jpg', 'image/jpeg', 38592, 'N', '9d689dec-3fc2-11e7-93f0-1867b02605c0', 0, '2017-05-23 21:17:55', 0, '2017-06-05 12:36:33'),
	(100, 0, '12521045_1165132126851728_1719504070_n.jpg', 'product-img/20170605073000am_12521045_1165132126851728_1719504070_n.jpg', 'image/jpeg', 48309, 'Y', '05072b4c-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:30:00', 0, '2017-06-05 12:30:00'),
	(101, 26, '12521045_1165132126851728_1719504070_n.jpg', 'product-img/20170605073231am_12521045_1165132126851728_1719504070_n.jpg', 'image/jpeg', 48309, 'Y', '5f1821b9-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:32:31', 0, '2017-06-05 12:33:35'),
	(102, 26, '14546652_1299935063392818_61225089516961792_n.jpg', 'product-img/20170605073234am_14546652_1299935063392818_61225089516961792_n.jpg', 'image/jpeg', 49313, 'Y', '61170c6e-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:32:35', 0, '2017-06-05 12:33:35'),
	(103, 26, '14546653_1129514337129863_888066711301914624_n.jpg', 'product-img/20170605073238am_14546653_1129514337129863_888066711301914624_n.jpg', 'image/jpeg', 50407, 'Y', '631193fe-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:32:38', 0, '2017-06-05 12:33:35'),
	(104, 26, '14546971_1205688339492804_2559577024087719936_n.jpg', 'product-img/20170605073242am_14546971_1205688339492804_2559577024087719936_n.jpg', 'image/jpeg', 48373, 'Y', '6592cb78-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:32:42', 0, '2017-06-05 12:33:35'),
	(105, 26, '14546996_1376065605744818_6238710211012460544_n.jpg', 'product-img/20170605073247am_14546996_1376065605744818_6238710211012460544_n.jpg', 'image/jpeg', 49946, 'Y', '68d41423-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:32:47', 0, '2017-06-05 12:33:35'),
	(106, 26, '14547022_1306007669418908_6912761253165268992_n.jpg', 'product-img/20170605073254am_14547022_1306007669418908_6912761253165268992_n.jpg', 'image/jpeg', 48439, 'Y', '6cdbb76f-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:32:54', 0, '2017-06-05 12:33:35'),
	(107, 26, '14547025_1286113224752504_5067565705629532160_n.jpg', 'product-img/20170605073301am_14547025_1286113224752504_5067565705629532160_n.jpg', 'image/jpeg', 51038, 'Y', '70c2cb68-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:33:01', 0, '2017-06-05 12:33:35'),
	(108, 26, '14750771_1093929240720475_6887073294286061568_n.jpg', 'product-img/20170605073308am_14750771_1093929240720475_6887073294286061568_n.jpg', 'image/jpeg', 47564, 'Y', '75376555-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:33:08', 0, '2017-06-05 12:33:35'),
	(109, 26, '14750872_1279224742098890_6041011513462882304_n.jpg', 'product-img/20170605073315am_14750872_1279224742098890_6041011513462882304_n.jpg', 'image/jpeg', 51517, 'Y', '793ce515-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:33:15', 0, '2017-06-05 12:33:35'),
	(110, 26, '14751081_1212089765532725_1998236270358167552_n.jpg', 'product-img/20170605073320am_14751081_1212089765532725_1998236270358167552_n.jpg', 'image/jpeg', 53294, 'Y', '7c6e0f57-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:33:20', 0, '2017-06-05 12:33:35'),
	(111, 26, '14751140_1083118478470125_85480762702299136_n.jpg', 'product-img/20170605073328am_14751140_1083118478470125_85480762702299136_n.jpg', 'image/jpeg', 50316, 'Y', '80eed044-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:33:28', 0, '2017-06-05 12:33:35'),
	(112, 27, '12384990_1388474084503438_612937110_n.jpg', 'product-img/20170605073409am_12384990_1388474084503438_612937110_n.jpg', 'image/jpeg', 31065, 'Y', '99377f8f-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:34:09', 0, '2017-06-05 12:34:13'),
	(113, 28, '15729381_1607619272588333_2390009443203940352_n.jpg', 'product-img/20170605073517am_15729381_1607619272588333_2390009443203940352_n.jpg', 'image/jpeg', 38796, 'Y', 'c1a5e1a0-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:35:17', 0, '2017-06-05 12:35:48'),
	(114, 28, '15729489_1133272966770846_7790129901012516864_n.jpg', 'product-img/20170605073520am_15729489_1133272966770846_7790129901012516864_n.jpg', 'image/jpeg', 34699, 'Y', 'c386bd79-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:35:20', 0, '2017-06-05 12:35:48'),
	(115, 28, '16175035_1372592912811000_9215124084738752512_n.jpg', 'product-img/20170605073524am_16175035_1372592912811000_9215124084738752512_n.jpg', 'image/jpeg', 40633, 'Y', 'c640ba11-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:35:24', 0, '2017-06-05 12:35:48'),
	(116, 28, '16175636_1290077997752004_1302611581707747328_n.jpg', 'product-img/20170605073529am_16175636_1290077997752004_1302611581707747328_n.jpg', 'image/jpeg', 35400, 'Y', 'c924e20d-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:35:29', 0, '2017-06-05 12:35:48'),
	(117, 28, '16175054_1326127310795892_2478462778541604864_n.jpg', 'product-img/20170605073543am_16175054_1326127310795892_2478462778541604864_n.jpg', 'image/jpeg', 35548, 'Y', 'd166c075-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:35:43', 0, '2017-06-05 12:35:48'),
	(118, 29, '12600805_1025718510817022_1732530515_n.jpg', 'product-img/20170605073629am_12600805_1025718510817022_1732530515_n.jpg', 'image/jpeg', 38592, 'Y', 'ecc84e22-49b0-11e7-bab9-1867b05430d2', 0, '2017-06-05 12:36:29', 0, '2017-06-05 12:36:33'),
	(119, 0, '12600805_1025718510817022_1732530515_n.jpg', 'product-img/20170609055633pm_12600805_1025718510817022_1732530515_n.jpg', 'image/jpeg', 38592, 'Y', '648cc1f6-4c59-11e7-ac95-1867b05430d2', 0, '2017-06-09 22:56:33', 0, '2017-06-09 22:56:33'),
	(120, 0, '12384990_1388474084503438_612937110_n.jpg', 'product-img/20170609060022pm_12384990_1388474084503438_612937110_n.jpg', 'image/jpeg', 31065, 'Y', 'ed32a051-4c59-11e7-ac95-1867b05430d2', 0, '2017-06-09 23:00:22', 0, '2017-06-09 23:00:22'),
	(121, 0, '16175636_1290077997752004_1302611581707747328_n.jpg', 'product-img/20170612083903am_16175636_1290077997752004_1302611581707747328_n.jpg', 'image/jpeg', 35400, 'Y', 'bc393822-4dd3-11e7-ac95-1867b05430d2', 0, '2017-06-12 13:39:03', 0, '2017-06-12 13:39:03'),
	(122, 0, '16175054_1326127310795892_2478462778541604864_n.jpg', 'product-img/20170612084041am_16175054_1326127310795892_2478462778541604864_n.jpg', 'image/jpeg', 35548, 'Y', 'f6cc7c6f-4dd3-11e7-ac95-1867b05430d2', 0, '2017-06-12 13:40:41', 0, '2017-06-12 13:40:41');
/*!40000 ALTER TABLE `product_pic` ENABLE KEYS */;

-- Dumping structure for table project-jphp.slider
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `link_to` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_name` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `status` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'Y',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table project-jphp.slider: ~5 rows (approximately)
DELETE FROM `slider`;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` (`id`, `name`, `description`, `link_to`, `link_id`, `pic_name`, `pic_path`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(4, 'กบยาง', 'กบยางหลากหลายสี เลือกได้เลยครับ', 'product', 'all_product', 'head1.png', 'project_shop_api/slider-img/20170613032446pm_head1.png', 'Y', '2017-06-10 22:36:46', 6, '2017-06-13 20:24:50', 6),
	(5, 'กบแบบใหม่', 'กบออกใหม่', 'category', '10', 'head2.png', 'project_shop_api/slider-img/20170613032457pm_head2.png', 'Y', '2017-06-10 22:42:43', 6, '2017-06-13 20:25:00', 6),
	(6, 'ทดสอบ', 'ทดลอง', 'product', 'all_product', '15729381_1607619272588333_2390009443203940352_n.jpg', 'slider-img/20170612015733pm_15729381_1607619272588333_2390009443203940352_n.jpg', 'N', '2017-06-12 18:57:52', 6, '2017-06-12 21:39:43', 6),
	(7, 'test', 'test', 'product', 'all_product', '15729489_1133272966770846_7790129901012516864_n.jpg', 'project_shop_api/slider-img/20170613032325pm_15729489_1133272966770846_7790129901012516864_n.jpg', 'N', '2017-06-13 20:24:26', 6, '2017-06-13 20:25:03', 6),
	(8, 'ทดสอบ', '', 'product', 'all_product', 'head2.png', 'project_shop_api/slider-img/20170613033841pm_head2.png', 'N', '2017-06-13 20:39:01', 6, '2017-06-13 20:39:08', 6);
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;

-- Dumping structure for table project-jphp.slider_pic
CREATE TABLE IF NOT EXISTS `slider_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_id` int(11) DEFAULT NULL,
  `pic_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table project-jphp.slider_pic: ~6 rows (approximately)
DELETE FROM `slider_pic`;
/*!40000 ALTER TABLE `slider_pic` DISABLE KEYS */;
INSERT INTO `slider_pic` (`id`, `slider_id`, `pic_name`, `pic_path`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(7, NULL, '14750872_1279224742098890_6041011513462882304_n.jpg', 'slider-img/20170609061201pm_14750872_1279224742098890_6041011513462882304_n.jpg', '2017-06-09 23:12:01', 0, '2017-06-09 23:12:01', NULL),
	(8, NULL, '14546971_1205688339492804_2559577024087719936_n.jpg', 'slider-img/20170609061450pm_14546971_1205688339492804_2559577024087719936_n.jpg', '2017-06-09 23:14:50', 0, '2017-06-09 23:14:50', NULL),
	(9, NULL, '14750872_1279224742098890_6041011513462882304_n.jpg', 'slider-img/20170609065808pm_14750872_1279224742098890_6041011513462882304_n.jpg', '2017-06-09 23:58:08', 0, '2017-06-09 23:58:08', NULL),
	(10, NULL, '14547022_1306007669418908_6912761253165268992_n.jpg', 'slider-img/20170609065824pm_14547022_1306007669418908_6912761253165268992_n.jpg', '2017-06-09 23:58:24', 0, '2017-06-09 23:58:24', NULL),
	(11, NULL, '14751081_1212089765532725_1998236270358167552_n.jpg', 'slider-img/20170609065933pm_14751081_1212089765532725_1998236270358167552_n.jpg', '2017-06-09 23:59:33', 0, '2017-06-09 23:59:33', NULL),
	(12, NULL, '14750872_1279224742098890_6041011513462882304_n.jpg', 'slider-img/20170609065941pm_14750872_1279224742098890_6041011513462882304_n.jpg', '2017-06-09 23:59:41', 0, '2017-06-09 23:59:41', NULL),
	(13, NULL, '14751140_1083118478470125_85480762702299136_n.jpg', 'slider-img/20170610082038am_14751140_1083118478470125_85480762702299136_n.jpg', '2017-06-10 13:20:38', 0, '2017-06-10 13:20:38', NULL);
/*!40000 ALTER TABLE `slider_pic` ENABLE KEYS */;

-- Dumping structure for table project-jphp.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci,
  `uuid` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 2` (`uuid`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table project-jphp.staff: ~7 rows (approximately)
DELETE FROM `staff`;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`id`, `name`, `lastname`, `user`, `password`, `uuid`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
	(1, 'Jes Jesniphat', 'Jesniphat', 'jesse', '0f359740bd1cda994f8b55330c86d845', '4616785a-bd79-11e6-a27b-1867b02605c0', '2016-12-09 02:05:12', 1, '2017-05-15 20:31:44', 1),
	(2, 'Jedniphan', 'Pukkham', 'Jeni', 'a4060150e6895a5efc19e16bbf9e9755', 'bd5512c4-c159-11e6-b305-1867b02605c0', '2016-12-14 00:29:49', 0, '2016-12-14 00:29:49', 0),
	(5, 'Jesniphat', 'Pukkham', 'Jes', '90f2c9c53f66540e67349e0ab83d8cd0', '102baefd-c15c-11e6-b305-1867b02605c0', '2016-12-14 00:46:27', 0, '2016-12-14 00:46:27', 0),
	(6, 'ผู้ดูแลระบบ นะครับ', 'ของเรา', 'admin', '0f359740bd1cda994f8b55330c86d845', '6291e192-c161-11e6-b305-1867b02605c0', '2016-12-14 01:24:32', 0, '2017-05-15 20:31:03', 0),
	(7, 'test', 'commit', 'commit', '0f359740bd1cda994f8b55330c86d845', 'acc971df-c164-11e6-b305-1867b02605c0', '2016-12-14 01:48:05', 0, '2016-12-14 01:48:05', 0),
	(8, 'Reload', 'Example', 'reload', '098f6bcd4621d373cade4e832627b4f6', '93ef8e2f-c2db-11e6-8621-1867b02605c0', '2016-12-15 22:31:41', 0, '2016-12-15 22:31:41', 0),
	(9, 'Out', 'Staff', 'staff', '25f9e794323b453885f5181f1b624d0b', 'a289bbd2-3815-11e7-a392-1867b02605c0', '2017-05-14 02:52:03', NULL, '2017-05-14 02:52:03', NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
