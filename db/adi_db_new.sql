-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.34-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table lavensia.d_additonal_booking
CREATE TABLE IF NOT EXISTS `d_additonal_booking` (
  `da_booking_id` int(11) NOT NULL,
  `da_detail` int(11) NOT NULL,
  `da_name` varchar(50) DEFAULT NULL,
  `da_additional_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`da_booking_id`,`da_detail`),
  CONSTRAINT `FK_d_additonal_booking_d_booking` FOREIGN KEY (`da_booking_id`) REFERENCES `d_booking` (`db_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.d_additonal_booking: ~4 rows (approximately)
DELETE FROM `d_additonal_booking`;
/*!40000 ALTER TABLE `d_additonal_booking` DISABLE KEYS */;
INSERT INTO `d_additonal_booking` (`da_booking_id`, `da_detail`, `da_name`, `da_additional_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(1, 1, 'Raiden Mei', 1, '2018-07-22 04:20:42', '2018-07-22 04:20:42', '1', '1'),
	(1, 2, 'Yae Sakura', 1, '2018-07-22 04:20:42', '2018-07-22 04:20:42', '1', '1'),
	(1, 3, 'Himeko', 1, '2018-07-22 04:20:42', '2018-07-22 04:20:42', '1', '1'),
	(1, 4, 'Himeko', 2, '2018-07-22 04:20:42', '2018-07-22 04:20:42', '1', '1'),
	(1, 5, 'Raiden Mei', 3, '2018-07-22 04:20:42', '2018-07-22 04:20:42', '1', '1'),
	(1, 6, 'Yae Sakura', 3, '2018-07-22 04:20:42', '2018-07-22 04:20:42', '1', '1'),
	(2, 1, 'Yae Sakura', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 2, 'Raiden Mei', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 3, 'Himeko', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 4, 'Kallen', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 5, 'Kiana', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 6, 'Karen', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 7, 'Saya', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 8, 'Sita', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 9, 'Sina', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 10, 'Sine', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 11, 'Sinau', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 12, 'Sinai', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 13, 'Bambang', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 14, 'Rahma', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 15, 'Rita', 1, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 16, 'Yae Sakura', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 17, 'Raiden Mei', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 18, 'Himeko', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 19, 'Kallen', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 20, 'Kiana', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 21, 'Karen', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 22, 'Saya', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 23, 'Sita', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 24, 'Sina', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 25, 'Sine', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 26, 'Sinau', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 27, 'Sinai', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 28, 'Bambang', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 29, 'Rahma', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 30, 'Rita', 2, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 31, 'Yae Sakura', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 32, 'Raiden Mei', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 33, 'Himeko', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 34, 'Kallen', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 35, 'Kiana', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 36, 'Karen', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 37, 'Saya', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 38, 'Sita', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 39, 'Sina', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 40, 'Sine', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 41, 'Sinau', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 42, 'Sinai', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 43, 'Bambang', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 44, 'Rahma', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1'),
	(2, 45, 'Rita', 3, '2018-07-22 04:31:28', '2018-07-22 04:31:28', '1', '1');
/*!40000 ALTER TABLE `d_additonal_booking` ENABLE KEYS */;

-- Dumping structure for table lavensia.d_booking
CREATE TABLE IF NOT EXISTS `d_booking` (
  `db_id` int(11) NOT NULL,
  `db_users` int(11) DEFAULT NULL,
  `db_intinerary_id` int(11) DEFAULT NULL,
  `db_detail_intinerary_id` int(11) DEFAULT NULL,
  `db_name` varchar(50) DEFAULT NULL,
  `db_pax` int(11) DEFAULT NULL,
  `db_remark` mediumtext,
  `db_total_additional` double DEFAULT NULL,
  `db_total_room` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.d_booking: ~3 rows (approximately)
DELETE FROM `d_booking`;
/*!40000 ALTER TABLE `d_booking` DISABLE KEYS */;
INSERT INTO `d_booking` (`db_id`, `db_users`, `db_intinerary_id`, `db_detail_intinerary_id`, `db_name`, `db_pax`, `db_remark`, `db_total_additional`, `db_total_room`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(1, 1, 8, 1, 'asd', 3, 'sd', 37200, 210000, '2018-07-22 04:20:42', '2018-07-22 04:20:42', 1, 1),
	(2, 1, 8, 1, 'Safira Jaya', 15, 'Bahwa Harus Dibayar Segera', 21900000, 105000000, '2018-07-22 04:31:27', '2018-07-22 04:31:27', 1, 1);
/*!40000 ALTER TABLE `d_booking` ENABLE KEYS */;

-- Dumping structure for table lavensia.d_party_name
CREATE TABLE IF NOT EXISTS `d_party_name` (
  `dp_booking_id` int(11) NOT NULL,
  `dp_detail` int(11) NOT NULL,
  `dp_fam_name` varchar(50) DEFAULT NULL,
  `dp_name` varchar(50) DEFAULT NULL,
  `dp_price` double NOT NULL,
  `dp_bed` varchar(50) DEFAULT NULL,
  `dp_image` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`dp_booking_id`,`dp_detail`),
  CONSTRAINT `FK_d_party_name_d_booking` FOREIGN KEY (`dp_booking_id`) REFERENCES `d_booking` (`db_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.d_party_name: ~7 rows (approximately)
DELETE FROM `d_party_name`;
/*!40000 ALTER TABLE `d_party_name` DISABLE KEYS */;
INSERT INTO `d_party_name` (`dp_booking_id`, `dp_detail`, `dp_fam_name`, `dp_name`, `dp_price`, `dp_bed`, `dp_image`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(1, 1, 'Yae Sakura', 'Raiden Mei', 7000000, 'Triple', 'booking/Yae Sakura_Raiden Mei_1_1.jpg', '2018-07-22 04:20:42', '2018-07-22 04:20:42', 1, 1),
	(1, 2, 'Yae Sakura', 'Yae Sakura', 7000000, 'Triple', 'booking/Yae Sakura_Yae Sakura_1_2.jpg', '2018-07-22 04:20:42', '2018-07-22 04:20:42', 1, 1),
	(1, 3, 'Yae Sakura', 'Himeko', 7000000, 'Triple', 'booking/Yae Sakura_Himeko_1_3.jpg', '2018-07-22 04:20:42', '2018-07-22 04:20:42', 1, 1),
	(2, 1, 'Yae Sakura', 'Yae Sakura', 7000000, 'Triple', 'booking/Yae Sakura_Yae Sakura_2_1.png', '2018-07-22 04:31:27', '2018-07-22 04:31:27', 1, 1),
	(2, 2, 'Yae Sakura', 'Raiden Mei', 7000000, 'Triple', 'booking/Yae Sakura_Raiden Mei_2_2.png', '2018-07-22 04:31:27', '2018-07-22 04:31:27', 1, 1),
	(2, 3, 'Yae Sakura', 'Himeko', 7000000, 'Triple', 'booking/Yae Sakura_Himeko_2_3.png', '2018-07-22 04:31:27', '2018-07-22 04:31:27', 1, 1),
	(2, 4, 'Kaslana', 'Kallen', 7000000, 'Triple', 'booking/Kaslana_Kallen_2_4.png', '2018-07-22 04:31:27', '2018-07-22 04:31:27', 1, 1),
	(2, 5, 'Kaslana', 'Kiana', 7000000, 'Triple', 'booking/Kaslana_Kiana_2_5.png', '2018-07-22 04:31:27', '2018-07-22 04:31:27', 1, 1),
	(2, 6, 'Kaslana', 'Karen', 7000000, 'Triple', 'booking/Kaslana_Karen_2_6.png', '2018-07-22 04:31:28', '2018-07-22 04:31:28', 1, 1),
	(2, 7, 'Saya', 'Saya', 7000000, 'Triple', 'booking/Saya_Saya_2_7.jpg', '2018-07-22 04:31:28', '2018-07-22 04:31:28', 1, 1),
	(2, 8, 'Saya', 'Sita', 7000000, 'Triple', 'booking/Saya_Sita_2_8.jpg', '2018-07-22 04:31:28', '2018-07-22 04:31:28', 1, 1),
	(2, 9, 'Saya', 'Sina', 7000000, 'Triple', 'booking/Saya_Sina_2_9.jpg', '2018-07-22 04:31:28', '2018-07-22 04:31:28', 1, 1),
	(2, 10, 'Sine', 'Sine', 7000000, 'Triple', 'booking/Sine_Sine_2_10.jpg', '2018-07-22 04:31:28', '2018-07-22 04:31:28', 1, 1),
	(2, 11, 'Sine', 'Sinau', 7000000, 'Triple', 'booking/Sine_Sinau_2_11.jpg', '2018-07-22 04:31:28', '2018-07-22 04:31:28', 1, 1),
	(2, 12, 'Sine', 'Sinai', 7000000, 'Triple', 'booking/Sine_Sinai_2_12.jpg', '2018-07-22 04:31:28', '2018-07-22 04:31:28', 1, 1),
	(2, 13, 'Bambang', 'Bambang', 7000000, 'Triple', 'booking/Bambang_Bambang_2_13.jpg', '2018-07-22 04:31:28', '2018-07-22 04:31:28', 1, 1),
	(2, 14, 'Bambang', 'Rahma', 7000000, 'Triple', 'booking/Bambang_Rahma_2_14.jpg', '2018-07-22 04:31:28', '2018-07-22 04:31:28', 1, 1),
	(2, 15, 'Bambang', 'Rita', 7000000, 'Triple', 'booking/Bambang_Rita_2_15.jpg', '2018-07-22 04:31:28', '2018-07-22 04:31:28', 1, 1);
/*!40000 ALTER TABLE `d_party_name` ENABLE KEYS */;

-- Dumping structure for table lavensia.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lavensia.migrations: ~3 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(16, '2014_10_12_000000_create_users_table', 1),
	(17, '2014_10_12_100000_create_password_resets_table', 1),
	(18, '2018_07_12_172920_role', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table lavensia.m_additional
CREATE TABLE IF NOT EXISTS `m_additional` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_name` varchar(50) DEFAULT NULL,
  `ma_desc` varchar(250) DEFAULT NULL,
  `ma_price` double DEFAULT NULL,
  `ma_created_at` timestamp NULL DEFAULT NULL,
  `ma_updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.m_additional: ~3 rows (approximately)
DELETE FROM `m_additional`;
/*!40000 ALTER TABLE `m_additional` DISABLE KEYS */;
INSERT INTO `m_additional` (`ma_id`, `ma_name`, `ma_desc`, `ma_price`, `ma_created_at`, `ma_updated_at`) VALUES
	(1, 'Assurance', 'Dipersembahkan oleh prudencial', 1000000, '2018-07-15 19:14:27', '2018-07-15 19:14:27'),
	(2, 'Coming Soon', 'xxx', 200000, '2018-07-18 21:34:26', '2018-07-18 21:34:28'),
	(3, 'Scraty', 'xxx', 260000, '2018-07-18 21:34:45', '2018-07-18 21:34:47');
/*!40000 ALTER TABLE `m_additional` ENABLE KEYS */;

-- Dumping structure for table lavensia.m_additional_intinerary
CREATE TABLE IF NOT EXISTS `m_additional_intinerary` (
  `mai_id` int(11) NOT NULL AUTO_INCREMENT,
  `intinerary_mi_id` int(11) DEFAULT NULL,
  `additional_ma_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mai_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.m_additional_intinerary: ~5 rows (approximately)
DELETE FROM `m_additional_intinerary`;
/*!40000 ALTER TABLE `m_additional_intinerary` DISABLE KEYS */;
INSERT INTO `m_additional_intinerary` (`mai_id`, `intinerary_mi_id`, `additional_ma_id`) VALUES
	(4, 7, 1),
	(5, 7, 2),
	(20, 8, 1),
	(21, 8, 2),
	(22, 8, 3);
/*!40000 ALTER TABLE `m_additional_intinerary` ENABLE KEYS */;

-- Dumping structure for table lavensia.m_category
CREATE TABLE IF NOT EXISTS `m_category` (
  `mc_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_name` varchar(200) DEFAULT NULL,
  `mc_created_at` timestamp NULL DEFAULT NULL,
  `mc_updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`mc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.m_category: ~3 rows (approximately)
DELETE FROM `m_category`;
/*!40000 ALTER TABLE `m_category` DISABLE KEYS */;
INSERT INTO `m_category` (`mc_id`, `mc_name`, `mc_created_at`, `mc_updated_at`) VALUES
	(1, 'ASIA', '2018-07-16 23:57:37', '2018-07-16 23:57:39'),
	(2, 'EROPA', '2018-07-16 23:57:51', '2018-07-16 23:57:52'),
	(3, 'LOKAL', '2018-07-16 23:57:59', '2018-07-16 23:58:00');
/*!40000 ALTER TABLE `m_category` ENABLE KEYS */;

-- Dumping structure for table lavensia.m_detail_intinerary
CREATE TABLE IF NOT EXISTS `m_detail_intinerary` (
  `md_intinerary_id` int(11) NOT NULL,
  `md_detail` int(11) NOT NULL,
  `md_nota` varchar(50) NOT NULL,
  `md_seat` int(11) NOT NULL,
  `md_seat_remain` int(11) DEFAULT NULL,
  `md_start` date DEFAULT NULL,
  `md_end` date DEFAULT NULL,
  `md_adult_price` double DEFAULT NULL,
  `md_child_price` double DEFAULT NULL,
  `md_infant_price` double DEFAULT NULL,
  `md_child_w_price` double DEFAULT NULL,
  `md_term` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`md_intinerary_id`,`md_detail`),
  UNIQUE KEY `md_nota` (`md_nota`),
  CONSTRAINT `FK_m_detail_intinerary_m_intinerary` FOREIGN KEY (`md_intinerary_id`) REFERENCES `m_intinerary` (`mi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.m_detail_intinerary: ~10 rows (approximately)
DELETE FROM `m_detail_intinerary`;
/*!40000 ALTER TABLE `m_detail_intinerary` DISABLE KEYS */;
INSERT INTO `m_detail_intinerary` (`md_intinerary_id`, `md_detail`, `md_nota`, `md_seat`, `md_seat_remain`, `md_start`, `md_end`, `md_adult_price`, `md_child_price`, `md_infant_price`, `md_child_w_price`, `md_term`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(4, 1, 'TR0718/004/001', 45, 45, '2018-07-17', '2018-07-17', 2333333, 3232323, 2323232, NULL, '2323232323', '2018-07-17 09:10:30', '2018-07-17 09:10:30', 'adi', 'adi'),
	(5, 3, 'TR0718/005/003', 60, 60, '2018-07-25', '2018-08-03', 1300000000, 1000000000, 700000000, NULL, 'Bila membawa anak lebih dari 1 harap konfirmasi dahulu', '2018-07-17 17:09:12', '2018-07-18 13:10:48', 'adi', 'adi'),
	(5, 4, 'TR0718/005/004', 23, 20, '2018-07-18', '2018-07-18', 2323232, 2323232, 2323232, NULL, '32323232', '2018-07-18 12:58:13', '2018-07-18 12:59:38', 'adi', 'adi'),
	(5, 5, 'TR0718/005/005', 25, 25, '2018-07-18', '2018-07-22', 12500000, 10000000, 5000000, NULL, 'xxx', '2018-07-18 12:59:38', '2018-07-18 13:10:48', 'adi', 'adi'),
	(5, 6, 'TR0718/005/006', 50, 50, '2018-07-21', '2018-07-31', 12500000, 10000000, 5500000, NULL, 'bawa jajan bagi bagi ketemennya', '2018-07-18 13:10:48', '2018-07-18 13:10:48', 'adi', 'adi'),
	(6, 1, 'TR0718/006/001', 23, 23, '2018-07-18', '2018-07-18', 23232, 2323, 3232, 23232, '23232', '2018-07-18 14:43:32', '2018-07-18 14:46:21', 'adi', 'adi'),
	(6, 2, 'TR0718/006/002', 23, 23, '2018-07-18', '2018-07-22', 232333, 333333, 111111, 333222, 'xxx', '2018-07-18 14:46:21', '2018-07-18 14:46:21', 'adi', 'adi'),
	(7, 1, 'TR0718/007/001', 23, 23, '2018-07-19', '2018-07-21', 232323, 232323, 2323, 232332, 'xxx', '2018-07-18 17:48:15', '2018-07-18 18:31:18', 'adi', 'adi'),
	(7, 2, 'TR0718/007/002', 23, 23, '2018-07-19', '2018-07-19', 232323, 232323, 323232, 232323, '23232', '2018-07-18 17:48:15', '2018-07-18 18:31:18', 'adi', 'adi'),
	(8, 1, 'TR0718/008/001', 50, 50, '2018-07-19', '2018-07-21', 7000000, 5000000, 3000000, 6000000, 'Harus mematuhi peraturan', '2018-07-20 12:52:20', '2018-07-20 12:59:22', 'adi', 'adi');
/*!40000 ALTER TABLE `m_detail_intinerary` ENABLE KEYS */;

-- Dumping structure for table lavensia.m_intinerary
CREATE TABLE IF NOT EXISTS `m_intinerary` (
  `mi_id` int(11) NOT NULL,
  `mi_nota` varchar(50) NOT NULL,
  `mi_name` varchar(300) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `mi_image` varchar(50) DEFAULT NULL,
  `mi_highlight` mediumtext,
  `mi_by` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mi_id`),
  UNIQUE KEY `mi_nota` (`mi_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.m_intinerary: ~5 rows (approximately)
DELETE FROM `m_intinerary`;
/*!40000 ALTER TABLE `m_intinerary` DISABLE KEYS */;
INSERT INTO `m_intinerary` (`mi_id`, `mi_nota`, `mi_name`, `category_id`, `mi_image`, `mi_highlight`, `mi_by`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(4, 'TR0718/004', 'xxxxxxxx', 1, 'itinerary/TR0718-004.jpg', 'xxxxx', 'xxss', '2018-07-17 09:10:30', '2018-07-17 09:10:30', 'adi', 'adi'),
	(5, 'TR0718/005', 'TOUR THE NEW BEIJING SHANGHAI HUANGSHAN', 1, 'itinerary/TR0718-005.jpg', 'Great Wall, Tian An Men, Forbidden City, Nanjing Road, Dll', 'Singapore Airlines', '2018-07-17 15:46:46', '2018-07-18 13:10:48', 'adi', 'adi'),
	(6, 'TR0718/006', 'sadsad', 2, 'itinerary/TR0718-006.jpg', 'dssad', 'dsadsad', '2018-07-18 14:43:32', '2018-07-18 14:46:21', 'adi', 'adi'),
	(7, 'TR0718/007', 'xxx', 2, 'itinerary/TR0718-007.jpg', 'xxx', 'xxx', '2018-07-18 17:48:15', '2018-07-18 18:31:17', 'adi', 'adi'),
	(8, 'TR0718/008', 'JALAN JALAN KE SINGAPORE', 1, 'itinerary/TR0718-008.jpg', 'KE SINGAPORE', 'xxx', '2018-07-18 18:34:40', '2018-07-20 12:59:22', 'adi', 'adi');
/*!40000 ALTER TABLE `m_intinerary` ENABLE KEYS */;

-- Dumping structure for table lavensia.m_schedule
CREATE TABLE IF NOT EXISTS `m_schedule` (
  `ms_intinerary_id` int(11) NOT NULL,
  `ms_detail` int(11) NOT NULL,
  `ms_caption` varchar(50) DEFAULT NULL,
  `ms_description` mediumtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ms_intinerary_id`,`ms_detail`),
  CONSTRAINT `FK_m_schedule_m_intinerary` FOREIGN KEY (`ms_intinerary_id`) REFERENCES `m_intinerary` (`mi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.m_schedule: ~18 rows (approximately)
DELETE FROM `m_schedule`;
/*!40000 ALTER TABLE `m_schedule` DISABLE KEYS */;
INSERT INTO `m_schedule` (`ms_intinerary_id`, `ms_detail`, `ms_caption`, `ms_description`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(4, 1, '2323', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sodales orci ante, sed ornare eros vestibulum ut. Ut accumsan vitae eros sit amet tristique. Nullam scelerisque nunc enim, non dignissim nibh faucibus ullamcorper. Fusce pulvinar libero vel ligula iaculis ullamcorper. Integer dapibus, mi ac tempor varius, purus nibh mattis erat, vitae porta nunc nisi non tellus. Vivamus mollis ante non massa egestas fringilla. Vestibulum egestas consectetur nunc at ultricies. Morbi quis consectetur nunc.', '2018-07-17 09:10:30', '2018-07-17 09:10:30', 'adi', 'adi'),
	(4, 2, '2323', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sodales orci ante, sed ornare eros vestibulum ut. Ut accumsan vitae eros sit amet tristique. Nullam scelerisque nunc enim, non dignissim nibh faucibus ullamcorper. Fusce pulvinar libero vel ligula iaculis ullamcorper. Integer dapibus, mi ac tempor varius, purus nibh mattis erat, vitae porta nunc nisi non tellus. Vivamus mollis ante non massa egestas fringilla. Vestibulum egestas consectetur nunc at ultricies. Morbi quis consectetur nunc.', '2018-07-17 09:10:30', '2018-07-17 09:10:30', 'adi', 'adi'),
	(5, 1, 'SURABAYA – SINGAPORE – SHANGHA | NO MEAL', 'Berkumpul di Juanda Surabaya / Cengkareng Jakarta untuk penerbangan ke Beijing dengan transit terlebih dahulu di Singapore. Tiba di Beijing diantar ke hotel untuk istirahat.', '2018-07-18 13:10:48', '2018-07-18 13:10:48', 'adi', 'adi'),
	(5, 2, 'BEIJING | B / L / D', 'Tour mengunjungi Great Wall di pintu Joyungguan , Photo Stop di Bird Nest & Water Cube Building dan dilanjutkan makan malam Bebek Peking yang terkenal.', '2018-07-18 13:10:48', '2018-07-18 13:10:48', 'adi', 'adi'),
	(5, 3, 'BEIJING | B / L / D', 'Tour ke Tian An Men yang merupakan lapangan di pusat kota Beijing yang terkenal, kemudian ke Forbidden City yang merupakan pusat pemerintahan jaman kekaisaran, dilanjutkan ke WangFujing yang merupakan pusat pertokoan terkenal di Beijing.', '2018-07-18 13:10:48', '2018-07-18 13:10:48', 'adi', 'adi'),
	(5, 4, 'BEIJING – HUANGSHAN | B / L / D', 'Naik Bullet Train Ke Huangshan, tiba di Tunxi yang terletak di khaki Huangshan dan pegunungan dilanjutkan berjalan jalan di Tunxi Old Street yang merupakan pusat kota kuno di Tunxi.', '2018-07-18 13:10:48', '2018-07-18 13:10:48', 'adi', 'adi'),
	(5, 5, 'HUANGSHAN | B / L / D', 'Menikmati keindahan Gunung Huangshan yang merupakan tempat pembuatan film Croaching Tiger Hidden Dragon yang dibintangi oleh Cho Yun Fat & Michelle Yeoh.', '2018-07-18 13:10:48', '2018-07-18 13:10:48', 'adi', 'adi'),
	(5, 6, 'HUANGSHAN – SHANGHAI | B / L / D', 'Berkunjung ke Shanghai Fim Park yang merupakan replika Shanghai jaman kuno dan pusat pembuatan film.', '2018-07-18 13:10:48', '2018-07-18 13:10:48', 'adi', 'adi'),
	(5, 7, 'SHANGHAI – SINGAPORE | B / L / D', 'Tour ke The Bund-Pusat bisnis sejak jaman dulu, dilanjutkan ke Nanjing Road – Pusat Pertokoan terkemuka di Shanghai, dan Chenghuangmiao untuk melihat kota kuno Shanghai. Malam hari diantar ke Airport.', '2018-07-18 13:10:48', '2018-07-18 13:10:48', 'adi', 'adi'),
	(5, 8, 'SINGAPORE – SURABAYA', 'Transit di Singapore untuk penerbangan kembali ke Surabaya / Jakarta. Terima kasih atas kepercayaan yang diberikan kepada LAVENSIA.', '2018-07-18 13:10:48', '2018-07-18 13:10:48', 'adi', 'adi'),
	(6, 1, 'ASD232', '2asdasdas', '2018-07-18 14:46:21', '2018-07-18 14:46:21', 'adi', 'adi'),
	(6, 2, '232323', '232', '2018-07-18 14:46:21', '2018-07-18 14:46:21', 'adi', 'adi'),
	(7, 1, 'XXX', 'xxx', '2018-07-18 18:31:17', '2018-07-18 18:31:17', 'adi', 'adi'),
	(7, 2, 'XXX', 'xxx', '2018-07-18 18:31:18', '2018-07-18 18:31:18', 'adi', 'adi'),
	(7, 3, 'XXX', 'xxx', '2018-07-18 18:31:18', '2018-07-18 18:31:18', 'adi', 'adi'),
	(7, 4, 'XXX', 'xxx', '2018-07-18 18:31:18', '2018-07-18 18:31:18', 'adi', 'adi'),
	(8, 1, 'GATHERING', 'Berkumpul dulu diseberang kalimantan', '2018-07-20 12:59:22', '2018-07-20 12:59:22', 'adi', 'adi'),
	(8, 2, 'GOJEK', 'Gojek sampai singapore', '2018-07-20 12:59:22', '2018-07-20 12:59:22', 'adi', 'adi');
/*!40000 ALTER TABLE `m_schedule` ENABLE KEYS */;

-- Dumping structure for table lavensia.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lavensia.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table lavensia.role
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  KEY `role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lavensia.role: ~2 rows (approximately)
DELETE FROM `role`;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`role_id`, `role_name`, `created_at`, `update_at`) VALUES
	(1, 'ADMIN', '2018-07-13 00:54:50', '2018-07-13 00:54:51'),
	(2, 'AGENT', '2018-07-13 00:55:03', '2018-07-13 00:55:04');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table lavensia.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `studies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lavensia.users: ~3 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `password`, `username`, `birthday`, `phone`, `email`, `address`, `studies`, `education`, `class`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'adi', '$2y$10$bTFFCxRtCVNNRMygHy9qCuRD8ejUyMrxnunNlxwq1w/i191mSXXLW', 'dewa17a', NULL, NULL, 'dewa17a@gmail.com', NULL, NULL, NULL, NULL, 2, 'IHyjaw5r0tykJbGthO8d0CDxQtVUL3MV1WsXcs8VVWMXPqcTLUVYsjO2zZ94', '2018-07-12 17:52:15', '2018-07-12 17:52:15'),
	(2, 'adi', '$2y$10$bTFFCxRtCVNNRMygHy9qCuRD8ejUyMrxnunNlxwq1w/i191mSXXLW', 'teses', NULL, NULL, 'a@gmail.com', NULL, NULL, NULL, NULL, 2, 'oWxRve1a9qVO8tgiwHNAqp9tDGzWgdiW8kcAW0nRezRw2RuGKV4xeJRkAgin', '2018-07-12 17:52:15', '2018-07-12 17:52:15'),
	(3, 'adi', '$2y$10$bVwcj838opIS/FHpGLWZiOuKgB3g5BJllZWzOsWXsgLU0Qwxfe9m.', 'dewa17aa', NULL, NULL, 'dewa17aa@gmail.com', NULL, NULL, NULL, NULL, 2, 'GipeeG6KOGFeuv2XCsLWN2i4cTzYPDg7ZXeNmVoCHVRxK6nJbCqqcduUSQYf', '2018-07-15 08:11:17', '2018-07-15 08:11:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
