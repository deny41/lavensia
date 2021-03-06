-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for lavensia
CREATE DATABASE IF NOT EXISTS `lavensia` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lavensia`;

-- Dumping structure for table lavensia.d_additonal_booking
CREATE TABLE IF NOT EXISTS `d_additonal_booking` (
  `da_booking_id` int(11) NOT NULL,
  `da_detail` int(11) NOT NULL,
  `da_name` varchar(50) DEFAULT NULL,
  `da_price` double DEFAULT NULL,
  `da_status` enum('Waiting List','Holding Confirm','hx by agent','hx by system') DEFAULT 'Waiting List',
  `da_additional_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`da_booking_id`,`da_detail`),
  CONSTRAINT `FK_d_additonal_booking_d_booking` FOREIGN KEY (`da_booking_id`) REFERENCES `d_booking` (`db_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.d_additonal_booking: ~78 rows (approximately)
/*!40000 ALTER TABLE `d_additonal_booking` DISABLE KEYS */;
INSERT INTO `d_additonal_booking` (`da_booking_id`, `da_detail`, `da_name`, `da_price`, `da_status`, `da_additional_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(1, 1, 'Yae', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 2, 'Mei', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 3, 'Theresa', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 4, 'Kallen', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 5, 'Keslana', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 6, 'Kiana', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 7, 'Wahyudi', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 8, 'Victoria', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 9, 'Riska', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 10, 'Bocah', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 11, 'Ngapa', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 12, 'Ya', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 13, 'Galih', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 14, 'Ratna', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 15, 'Sinta', 1000000, 'Waiting List', 1, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 16, 'Yae', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 17, 'Mei', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 18, 'Theresa', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 19, 'Kallen', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 20, 'Keslana', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 21, 'Kiana', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 22, 'Wahyudi', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 23, 'Victoria', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 24, 'Riska', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 25, 'Bocah', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 26, 'Ngapa', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 27, 'Ya', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 28, 'Galih', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 29, 'Ratna', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 30, 'Sinta', 200000, 'Waiting List', 2, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 31, 'Yae', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 32, 'Mei', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 33, 'Theresa', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 34, 'Kallen', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 35, 'Keslana', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 36, 'Kiana', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 37, 'Wahyudi', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 38, 'Victoria', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 39, 'Riska', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 40, 'Bocah', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 41, 'Ngapa', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 42, 'Ya', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 43, 'Galih', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 44, 'Ratna', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(1, 45, 'Sinta', 260000, 'Waiting List', 3, '2018-07-23 14:14:32', '2018-07-23 14:14:32', '1', '1'),
	(2, 1, 'xxxx', 1000000, 'Waiting List', 1, '2018-07-30 16:51:12', '2018-07-30 16:51:12', '4', '4'),
	(2, 2, 'xxxx', 1000000, 'Waiting List', 1, '2018-07-30 16:51:12', '2018-07-30 16:51:12', '4', '4'),
	(3, 1, 'Dadang', 1000000, 'Waiting List', 1, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 2, 'AS', 1000000, 'Waiting List', 1, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 3, 'dada', 1000000, 'Waiting List', 1, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 4, 'dadai', 1000000, 'Waiting List', 1, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 5, 'dadau', 1000000, 'Waiting List', 1, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 6, 'Dadang', 200000, 'Waiting List', 2, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 7, 'AS', 200000, 'Waiting List', 2, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 8, 'dada', 200000, 'Waiting List', 2, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 9, 'dadai', 200000, 'Waiting List', 2, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 10, 'dadau', 200000, 'Waiting List', 2, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 11, 'Dadang', 260000, 'Waiting List', 3, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 12, 'AS', 260000, 'Waiting List', 3, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 13, 'dada', 260000, 'Waiting List', 3, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 14, 'dadai', 260000, 'Waiting List', 3, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(3, 15, 'dadau', 260000, 'Waiting List', 3, '2018-07-23 14:52:47', '2018-07-23 14:52:47', '1', '1'),
	(4, 1, 'Anjh', 1000000, 'Waiting List', 1, '2018-07-23 14:55:48', '2018-07-23 14:55:48', '1', '1'),
	(4, 2, 'Anjhasd', 1000000, 'Waiting List', 1, '2018-07-23 14:55:48', '2018-07-23 14:55:48', '1', '1'),
	(4, 3, 'asd', 1000000, 'Waiting List', 1, '2018-07-23 14:55:48', '2018-07-23 14:55:48', '1', '1'),
	(4, 4, 'asdasd', 1000000, 'Waiting List', 1, '2018-07-23 14:55:48', '2018-07-23 14:55:48', '1', '1'),
	(4, 5, 'Anjhasd', 200000, 'Waiting List', 2, '2018-07-23 14:55:48', '2018-07-23 14:55:48', '1', '1'),
	(4, 6, 'asd', 200000, 'Waiting List', 2, '2018-07-23 14:55:48', '2018-07-23 14:55:48', '1', '1'),
	(4, 7, 'asdasd', 200000, 'Waiting List', 2, '2018-07-23 14:55:48', '2018-07-23 14:55:48', '1', '1'),
	(4, 8, 'Anjhasd', 260000, 'Waiting List', 3, '2018-07-23 14:55:48', '2018-07-23 14:55:48', '1', '1'),
	(4, 9, 'asd', 260000, 'Waiting List', 3, '2018-07-23 14:55:48', '2018-07-23 14:55:48', '1', '1'),
	(4, 10, 'asdasd', 260000, 'Waiting List', 3, '2018-07-23 14:55:48', '2018-07-23 14:55:48', '1', '1'),
	(5, 1, 'Tese', 1000000, 'Waiting List', 1, '2018-07-23 14:57:26', '2018-07-23 14:57:26', '1', '1'),
	(5, 2, 'dsa', 1000000, 'Waiting List', 1, '2018-07-23 14:57:26', '2018-07-23 14:57:26', '1', '1'),
	(5, 3, 'asd', 200000, 'Waiting List', 2, '2018-07-23 14:57:26', '2018-07-23 14:57:26', '1', '1'),
	(5, 4, 'Tese', 260000, 'Waiting List', 3, '2018-07-23 14:57:26', '2018-07-23 14:57:26', '1', '1'),
	(5, 5, 'asd', 260000, 'Waiting List', 3, '2018-07-23 14:57:26', '2018-07-23 14:57:26', '1', '1'),
	(6, 1, 'asd', 1000000, 'Waiting List', 1, '2018-07-23 14:58:28', '2018-07-23 14:58:28', '1', '1'),
	(6, 2, 'ASdasd', 1000000, 'Waiting List', 1, '2018-07-23 14:58:28', '2018-07-23 14:58:28', '1', '1'),
	(6, 3, 'ASdasd', 260000, 'Waiting List', 3, '2018-07-23 14:58:28', '2018-07-23 14:58:28', '1', '1');
/*!40000 ALTER TABLE `d_additonal_booking` ENABLE KEYS */;

-- Dumping structure for table lavensia.d_booking
CREATE TABLE IF NOT EXISTS `d_booking` (
  `db_id` int(11) NOT NULL,
  `db_users` int(11) DEFAULT NULL,
  `db_telp` int(20) DEFAULT NULL,
  `db_intinerary_id` int(11) DEFAULT NULL,
  `db_status` enum('Waiting List','Holding Confirm','Hx By Agent','Hx By System') DEFAULT 'Waiting List',
  `db_handle_by` varchar(200) DEFAULT NULL,
  `db_name` varchar(50) DEFAULT NULL,
  `db_total_adult` int(11) DEFAULT NULL,
  `db_total_child` int(11) DEFAULT NULL,
  `db_total_infant` int(11) DEFAULT NULL,
  `db_remark` mediumtext,
  `db_total_additional` double DEFAULT NULL,
  `db_total_room` double DEFAULT NULL,
  `db_total` double DEFAULT NULL,
  `db_total_remain` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.d_booking: ~2 rows (approximately)
/*!40000 ALTER TABLE `d_booking` DISABLE KEYS */;
INSERT INTO `d_booking` (`db_id`, `db_users`, `db_telp`, `db_intinerary_id`, `db_status`, `db_handle_by`, `db_name`, `db_total_adult`, `db_total_child`, `db_total_infant`, `db_remark`, `db_total_additional`, `db_total_room`, `db_total`, `db_total_remain`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(1, 1, 13123123, 10, 'Waiting List', NULL, 'asd', 2, 0, 2, NULL, 2920000, 20000000, 22920000, 22920000, '2018-07-29 13:59:35', '2018-07-29 13:59:35', 1, 1),
	(2, 4, 999999922, 1, 'Holding Confirm', NULL, 'lolololol', 3, 0, 0, NULL, 2000000, 30000000, 32000000, 32000000, '2018-07-30 16:51:12', '2018-07-30 16:51:44', 4, 4);
/*!40000 ALTER TABLE `d_booking` ENABLE KEYS */;

-- Dumping structure for table lavensia.d_history_bayar
CREATE TABLE IF NOT EXISTS `d_history_bayar` (
  `dh_id` int(11) NOT NULL,
  `dh_booking_id` int(11) DEFAULT NULL,
  `dh_account_name` varchar(50) NOT NULL,
  `dh_account_number` int(50) NOT NULL,
  `dh_image` varchar(100) DEFAULT NULL,
  `dh_nominal` int(11) DEFAULT NULL,
  `dh_payment_method` enum('dp','fp') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.d_history_bayar: ~0 rows (approximately)
/*!40000 ALTER TABLE `d_history_bayar` DISABLE KEYS */;
INSERT INTO `d_history_bayar` (`dh_id`, `dh_booking_id`, `dh_account_name`, `dh_account_number`, `dh_image`, `dh_nominal`, `dh_payment_method`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Bambang', 2361287, 'payment_proof/bukti_Bambang_2361287_1.jpg', 70000000, 'dp', '2018-07-24 11:29:37', '2018-07-24 11:29:37'),
	(2, 2, '12', 12, 'payment_proof/bukti_12_12_2.jpg', 20000000, 'dp', '2018-07-30 16:51:44', '2018-07-30 16:51:44');
/*!40000 ALTER TABLE `d_history_bayar` ENABLE KEYS */;

-- Dumping structure for table lavensia.d_party_name
CREATE TABLE IF NOT EXISTS `d_party_name` (
  `dp_booking_id` int(11) NOT NULL,
  `dp_detail` int(11) NOT NULL,
  `dp_bed` varchar(50) DEFAULT NULL,
  `dp_name` varchar(50) DEFAULT NULL,
  `dp_passport` varchar(50) DEFAULT NULL,
  `dp_exp_date` date NOT NULL,
  `dp_issuing` varchar(50) DEFAULT NULL,
  `dp_gender` enum('male','female') DEFAULT NULL,
  `dp_birth_date` date NOT NULL,
  `dp_birth_place` varchar(50) DEFAULT NULL,
  `dp_reference` varchar(300) DEFAULT NULL,
  `dp_image` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dp_booking_id`,`dp_detail`),
  CONSTRAINT `FK_d_party_name_d_booking` FOREIGN KEY (`dp_booking_id`) REFERENCES `d_booking` (`db_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.d_party_name: ~6 rows (approximately)
/*!40000 ALTER TABLE `d_party_name` DISABLE KEYS */;
INSERT INTO `d_party_name` (`dp_booking_id`, `dp_detail`, `dp_bed`, `dp_name`, `dp_passport`, `dp_exp_date`, `dp_issuing`, `dp_gender`, `dp_birth_date`, `dp_birth_place`, `dp_reference`, `dp_image`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(1, 1, 'Single', 'asdsa', 'asxwaxda', '2018-07-18', 'asxwd', 'male', '2018-07-18', '12d12', 'asdsad', 'b', '2018-07-29 13:59:35', '2018-07-29 13:59:35', NULL, NULL),
	(1, 2, 'Single', 'asd', '12dsadc', '2018-07-28', 'dsasx', 'male', '2018-07-22', 'qwafdascf', 'was', 'o', '2018-07-29 13:59:35', '2018-07-29 13:59:35', NULL, NULL),
	(1, 3, 'Single', 'as', 'dasd12', '2018-07-16', 'asdas', 'male', '2018-07-20', '1dsac', 'dasd', 'o', '2018-07-29 13:59:35', '2018-07-29 13:59:35', NULL, NULL),
	(1, 4, 'Single', 'asdas', 'd12ds', '2018-07-29', 'asd123vfsd', 'female', '2018-07-28', 'wfgfdg', 'fsd', 'k', '2018-07-29 13:59:35', '2018-07-29 13:59:35', NULL, NULL),
	(2, 1, 'Single', 'xxxx', '1212', '2018-08-22', 'xxx', 'male', '2018-07-23', '22', 'xx', 'b', '2018-07-30 16:51:12', '2018-07-30 16:51:12', NULL, NULL),
	(2, 2, 'Double', 'xxx', '21212', '2018-07-10', 'xxx', 'male', '2018-07-10', '10/07/2018', '10/07/2018', 'o', '2018-07-30 16:51:12', '2018-07-30 16:51:12', NULL, NULL),
	(2, 3, 'Double', 'xxxxx', '1212', '2018-07-18', 'xxx', 'male', '2018-07-10', '10/07/2018', '10/07/2018', 'o', '2018-07-30 16:51:12', '2018-07-30 16:51:12', NULL, NULL);
/*!40000 ALTER TABLE `d_party_name` ENABLE KEYS */;

-- Dumping structure for table lavensia.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lavensia.migrations: ~3 rows (approximately)
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.m_additional_intinerary: ~2 rows (approximately)
/*!40000 ALTER TABLE `m_additional_intinerary` DISABLE KEYS */;
INSERT INTO `m_additional_intinerary` (`mai_id`, `intinerary_mi_id`, `additional_ma_id`) VALUES
	(1, 1, 1),
	(2, 1, 3);
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
/*!40000 ALTER TABLE `m_category` DISABLE KEYS */;
INSERT INTO `m_category` (`mc_id`, `mc_name`, `mc_created_at`, `mc_updated_at`) VALUES
	(1, 'ASIA', '2018-07-16 23:57:37', '2018-07-16 23:57:39'),
	(2, 'EROPA', '2018-07-16 23:57:51', '2018-07-16 23:57:52'),
	(3, 'LOKAL', '2018-07-16 23:57:59', '2018-07-16 23:58:00');
/*!40000 ALTER TABLE `m_category` ENABLE KEYS */;

-- Dumping structure for table lavensia.m_detail_intinerary
CREATE TABLE IF NOT EXISTS `m_detail_intinerary` (
  `md_id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`md_id`,`md_intinerary_id`),
  UNIQUE KEY `md_nota` (`md_nota`),
  KEY `FK_m_detail_intinerary_m_intinerary` (`md_intinerary_id`),
  CONSTRAINT `FK_m_detail_intinerary_m_intinerary` FOREIGN KEY (`md_intinerary_id`) REFERENCES `m_intinerary` (`mi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table lavensia.m_detail_intinerary: ~2 rows (approximately)
/*!40000 ALTER TABLE `m_detail_intinerary` DISABLE KEYS */;
INSERT INTO `m_detail_intinerary` (`md_id`, `md_intinerary_id`, `md_detail`, `md_nota`, `md_seat`, `md_seat_remain`, `md_start`, `md_end`, `md_adult_price`, `md_child_price`, `md_infant_price`, `md_child_w_price`, `md_term`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(1, 1, 1, 'TR0718/001/001', 21, 21, '2018-07-30', '2018-07-30', 10000000, 9000000, 0, 9000000, 'x', '2018-07-30 16:47:32', '2018-07-30 16:51:12', 'Asep Hidayat', 'Asep Hidayat'),
	(2, 1, 2, 'TR0718/001/002', 10, 10, '2018-07-30', '2018-07-30', 9000000, 8000000, 0, 8000000, 'x', '2018-07-30 16:47:32', '2018-07-30 16:47:32', 'Asep Hidayat', 'Asep Hidayat');
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

-- Dumping data for table lavensia.m_intinerary: ~0 rows (approximately)
/*!40000 ALTER TABLE `m_intinerary` DISABLE KEYS */;
INSERT INTO `m_intinerary` (`mi_id`, `mi_nota`, `mi_name`, `category_id`, `mi_image`, `mi_highlight`, `mi_by`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(1, 'TR0718/001', 'xxxx', 1, 'itinerary/TR0718-001.jpg', 'xxxx', 'xxxxx', '2018-07-30 16:47:31', '2018-07-30 16:47:31', 'Asep Hidayat', 'Asep Hidayat');
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
/*!40000 ALTER TABLE `m_schedule` DISABLE KEYS */;
INSERT INTO `m_schedule` (`ms_intinerary_id`, `ms_detail`, `ms_caption`, `ms_description`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(1, 1, '1XXX', 'xxxxxxxxx', '2018-07-30 16:47:32', '2018-07-30 16:47:32', 'Asep Hidayat', 'Asep Hidayat'),
	(1, 2, '2XXX', 'cccccccccc', '2018-07-30 16:47:32', '2018-07-30 16:47:32', 'Asep Hidayat', 'Asep Hidayat'),
	(1, 3, '3XXXX', 'vvvvvvvvvvvv', '2018-07-30 16:47:32', '2018-07-30 16:47:32', 'Asep Hidayat', 'Asep Hidayat'),
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
	(8, 1, 'GATHERING', 'Berkumpul dulu diseberang kalimantan', '2018-07-23 13:41:16', '2018-07-23 13:41:16', 'adi', 'adi'),
	(8, 2, 'GOJEK', 'Gojek sampai singapore', '2018-07-23 13:41:16', '2018-07-23 13:41:16', 'adi', 'adi');
/*!40000 ALTER TABLE `m_schedule` ENABLE KEYS */;

-- Dumping structure for table lavensia.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lavensia.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table lavensia.role
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lavensia.role: ~4 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`role_id`, `role_name`, `created_at`, `update_at`) VALUES
	(1, 'MASTER ADMIN', '2018-07-13 00:55:03', '2018-07-13 00:55:04'),
	(2, 'SUPER ADMIN', '2018-07-13 00:55:03', '2018-07-13 00:55:04'),
	(3, 'ADMIN', '2018-07-13 00:54:50', '2018-07-13 00:54:51'),
	(4, 'AGENT', '2018-07-13 00:55:03', '2018-07-13 00:55:04');
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
  `role_id` int(11) NOT NULL DEFAULT '4',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_phone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mg_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mg_phone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mg_email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('AKTIF','TIDAK AKTIF') COLLATE utf8mb4_unicode_ci DEFAULT 'TIDAK AKTIF',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lavensia.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `password`, `username`, `birthday`, `phone`, `email`, `address`, `role_id`, `remember_token`, `image`, `co_name`, `co_phone`, `co_address`, `co_email`, `mg_name`, `mg_phone`, `mg_email`, `created_at`, `updated_at`, `status`) VALUES
	(4, 'Asep Hidayat', '$2y$10$yPxkV6VDgkodh1FDsMDvv.LKugCI/Mb5j9UvI2JFxRkS7z87ID7MG', 'deny', NULL, '089999999999', 'ASEP@GMAIL.COM', 'Jl gatau dimana', 4, 'fYCuJaRRVJmpe8Ek4TeUFjycWdPSiwPVFxJiOO2uJF84b8zGwEz9huKUmlA5', '4.jpg', 'PT . GUARD SEEKER', '03141902211', 'Jl . Wonorejo indah timur 3a no 66', 'guardseeker@gmail.com', 'Deny Prasetyo', '0821231211231', 'denyprasetyo41@gmail.com', '2018-07-18 03:57:46', '2018-07-18 03:57:46', 'TIDAK AKTIF'),
	(5, 'Admin utama', '$2y$10$v0HuWw6oYq30vBqvtBJ9UO1YXLY0CcHFkMrA.Y.kvbfKH8CPGscrW', 'admin', NULL, '089999999999', 'admin@gmail.com', 'xxxx', 3, NULL, '5.jpg', 'Pt . Alamraya', '62812123123123', 'Jl Alamraya', 'Alamraya@gmail.com', 'xxx', '0821231211231', 'xxxx', '2018-07-31 07:04:25', '2018-07-31 07:04:25', 'TIDAK AKTIF');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
