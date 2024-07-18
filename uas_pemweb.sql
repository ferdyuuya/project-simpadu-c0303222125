-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for uas_pemweb
CREATE DATABASE IF NOT EXISTS `uas_pemweb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `uas_pemweb`;

-- Dumping structure for table uas_pemweb.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_pemweb.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table uas_pemweb.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_pemweb.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2023_11_24_020425_add_roles_phone_address_to_users', 1),
	(7, '2023_12_10_144713_create_subjects_table', 1),
	(8, '2023_12_10_152059_create_schedules_table', 1),
	(9, '2024_01_17_024236_create_table_pemesanan_produk', 1),
	(10, '2024_07_18_051750_create_produks_table', 1),
	(11, '2024_07_18_053659_make_foreign_key', 1);

-- Dumping structure for table uas_pemweb.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_pemweb.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table uas_pemweb.pemesanans
CREATE TABLE IF NOT EXISTS `pemesanans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodepos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pemesanans_produk_id_foreign` (`produk_id`),
  CONSTRAINT `pemesanans_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_pemweb.pemesanans: ~70 rows (approximately)
INSERT INTO `pemesanans` (`id`, `nama_lengkap`, `email`, `no_hp`, `alamat`, `kota`, `kodepos`, `produk_id`, `created_at`, `updated_at`) VALUES
	(1, 'Renee Kovacek', 'berta25@example.net', '1-601-233-3209', '31218 Witting Dale\nEast Karen, VA 50180', 'Lake Vestaburgh', '59341', 17, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(2, 'Roscoe Skiles', 'melissa.howell@example.org', '+12567688404', '669 Glover Union\nNorth Biankaborough, MA 14981', 'Framiton', '40757', 19, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(3, 'Prof. Pablo Luettgen I', 'rruecker@example.com', '1-484-852-4209', '1087 Zackery Circles\nClaudiastad, TN 21497', 'Aylastad', '57795', 4, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(4, 'Mr. Helmer Schuppe', 'devonte87@example.net', '+1 (725) 272-6331', '2481 Lubowitz Valley\nPacochachester, AZ 59741', 'East Gerdamouth', '51401', 14, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(5, 'Esta Daugherty', 'miller.dylan@example.net', '+12819811976', '945 Austen Pass Suite 315\nRoobfurt, GA 76027-0694', 'North Lilly', '92836', 4, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(6, 'Johann Rogahn DDS', 'jwunsch@example.net', '+1 (574) 780-0899', '1730 Lulu Vista\nPort Rosanna, SC 60968-1158', 'South Santiagofort', '16635', 21, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(7, 'Peyton Fay Jr.', 'jherzog@example.org', '(832) 987-8226', '1293 Chet Mountains Apt. 553\nLake Kelsiemouth, DC 42920', 'North Johannaview', '57456', 45, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(8, 'Bertha Hermiston', 'hfeeney@example.net', '(313) 614-8209', '49723 Becker Cove\nNorth Osvaldomouth, TX 69886', 'Linwoodport', '24544', 69, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(9, 'Louisa Hansen', 'senger.cindy@example.net', '+1-425-475-3910', '43022 Jasen Brook Suite 937\nPort Alicia, MT 08243', 'East Keven', '88773', 29, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(10, 'Brycen Koch', 'uriel.friesen@example.com', '+1.440.268.7090', '7463 Bruen Ports\nErnestobury, KY 99995', 'Port Abdulchester', '92249', 40, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(11, 'Brice Wiegand', 'dach.elsie@example.com', '+1-737-798-3794', '412 Hoppe Lane\nRaubury, NM 75613-0317', 'Lynchville', '82075', 70, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(12, 'Trevor Crooks', 'kirstin.kutch@example.net', '+1-641-224-1777', '4760 Nakia Lodge\nAlanfort, NY 22407-7744', 'North Jaydaberg', '45119', 10, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(13, 'Ms. Kristina Jacobs IV', 'jaime68@example.com', '1-607-955-0353', '72236 Cara Gardens\nNorth Zoilahaven, TN 39991-0659', 'New Richmond', '69176', 53, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(14, 'Mr. Lyric Rath IV', 'xmoen@example.net', '(541) 544-3324', '282 Predovic Light Apt. 566\nNorth Katarina, CA 51523', 'Lorafort', '86691', 1, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(15, 'Taya Luettgen', 'perry05@example.net', '+1.404.776.7569', '14135 Franecki Stream\nSouth Pascalestad, NY 29143-2091', 'Pagacland', '87537', 14, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(16, 'Dr. Watson Waelchi V', 'jaleel.bode@example.com', '+1-878-367-3570', '87191 Kiera Via Suite 491\nSouth Jadaland, KS 23253', 'New Carlee', '97942', 45, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(17, 'Elmo O\'Hara', 'waldo.herman@example.com', '+1-423-247-9313', '7340 Yost Plains\nHenrychester, ID 09712-8400', 'Port Dax', '54016', 57, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(18, 'Dr. Maria Dare Sr.', 'vallie97@example.org', '+1-619-629-7724', '739 Alessia Neck Apt. 562\nAntoniettaland, DE 80142-1775', 'Lake Isabel', '75028', 10, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(19, 'Dr. Drake Labadie', 'weldon48@example.com', '(657) 605-5401', '8467 Adam Bridge\nMcClurehaven, VA 26975', 'Bashirianport', '65597', 58, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(20, 'Frankie Barrows', 'erice@example.com', '+13644529160', '69536 Hessel Underpass Suite 442\nPort Aylabury, SC 97029', 'Port Maybellport', '22597', 65, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(21, 'Lacy Rogahn', 'lon47@example.org', '+1-774-806-5099', '7779 Mann Street\nEast Ansleyberg, PA 15224-8298', 'Nolanville', '41638', 60, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(22, 'Mrs. Citlalli Kuvalis Jr.', 'adrian.bechtelar@example.net', '1-240-235-5372', '61197 Simonis Islands Suite 818\nWest Marilieport, MO 94467', 'New Angusshire', '55328', 55, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(23, 'Hector Leannon', 'kirlin.kelly@example.net', '(323) 301-4705', '41612 Anita Landing Suite 938\nMilesport, TX 51640', 'Hyattbury', '38980', 4, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(24, 'Alana Windler', 'glenna.terry@example.net', '+1-308-255-9418', '16338 Guido Gateway Apt. 753\nLockmantown, FL 89104-4648', 'Kentonberg', '29131', 4, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(25, 'Cristopher DuBuque', 'mina.wisoky@example.net', '(859) 739-3210', '9454 Amani Plains Apt. 124\nNorth Kaylitown, ME 94290-3559', 'Lizaburgh', '47800', 70, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(26, 'Cicero Towne', 'carmen.ruecker@example.net', '+1-401-831-1529', '942 Spencer Summit\nVickyfurt, OH 60215', 'New Heleneside', '27193', 25, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(27, 'Maci Fritsch PhD', 'dewayne58@example.net', '(702) 934-1889', '4855 Littel Mountain\nWest Royce, OH 23541', 'North Jayson', '28566', 44, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(28, 'Miss Kaylah Pfannerstill DDS', 'alaina.schimmel@example.org', '(510) 873-7297', '470 Jaron Estate\nLake Adolphushaven, SC 39806-6680', 'Port Maryam', '25654', 69, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(29, 'Santina Bauch', 'susana56@example.net', '657-776-1800', '7156 Gorczany Groves\nGrahambury, DC 36414-8345', 'Lake Janaefort', '41979', 21, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(30, 'Buck Ankunding', 'howell.eldridge@example.org', '(707) 458-8302', '9155 Cornelius Port Suite 851\nEast Wendymouth, NH 93746', 'Michaelaport', '20544', 24, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(31, 'Scarlett Brekke', 'kolby66@example.net', '+1-650-524-9724', '20659 Aiden Coves Suite 835\nNew Trever, MI 52676-3427', 'Jeramyview', '92559', 30, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(32, 'Prof. Bill Schoen I', 'vlittle@example.net', '(775) 616-0587', '435 Maud Points Apt. 492\nWest Garrison, SC 74920-2127', 'West Ezequiel', '84368', 15, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(33, 'Mr. Giuseppe Welch', 'uhermann@example.net', '405-969-2294', '28239 Colin Spring Apt. 216\nEast Tressie, OH 78393-9049', 'New Reece', '28766', 49, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(34, 'Mrs. Lauriane Tromp', 'carter.ayla@example.com', '+1.949.824.4143', '873 Estell Motorway Apt. 992\nNew Isobelmouth, WA 52130', 'Schinnerport', '67070', 4, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(35, 'Leilani Little', 'skiles.tanner@example.net', '973-841-0822', '918 Duncan Manors Apt. 652\nBaileyberg, TX 25638', 'Paucekside', '10819', 60, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(36, 'Marilou Lang II', 'gaylord.marlon@example.com', '1-559-585-1181', '7463 Cummings Freeway Suite 871\nSouth Kaya, NJ 76867-5432', 'Medhursttown', '64591', 60, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(37, 'Jerad Walsh', 'rutherford.elbert@example.com', '(630) 477-1351', '38113 McClure Run Suite 989\nWestburgh, NH 58017', 'Lorainefurt', '63763', 16, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(38, 'Cierra Lesch V', 'domingo.greenfelder@example.org', '+1-518-792-7798', '647 Kovacek Valleys Suite 703\nArnulfoburgh, MT 11187', 'Nikolasmouth', '43493', 38, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(39, 'Clara Kiehn', 'langosh.allan@example.net', '351-200-9481', '524 Adalberto Row Suite 138\nEast Frances, ME 91177', 'Elverafort', '26836', 53, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(40, 'Danial Kris', 'marjolaine95@example.com', '346-355-9056', '367 Kreiger Park\nJohnsonberg, VT 55155', 'Port Matteoview', '66242', 67, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(41, 'Nyah Pfannerstill', 'wmoore@example.com', '213.365.3808', '84427 Bennett Crossroad Suite 323\nHartmannfurt, NC 43829', 'Lake Reinholdfort', '91928', 18, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(42, 'Gerhard Rempel', 'lue24@example.org', '+1 (907) 803-9111', '198 Ralph Lodge Apt. 768\nHahnstad, DE 48925-3348', 'East Clevelandfort', '55524', 51, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(43, 'Geovany Hickle', 'harber.adrienne@example.net', '1-737-828-5789', '167 Brionna Island Suite 792\nPort Rossside, RI 69411-0588', 'Borerberg', '86949', 52, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(44, 'Alphonso Hessel', 'schulist.scarlett@example.net', '1-352-751-4466', '68009 Annie Spurs Suite 535\nClydestad, OH 53691', 'Maziebury', '24216', 26, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(45, 'Ms. Piper Murazik', 'maritza82@example.net', '1-573-348-4521', '571 Nolan Islands\nEast Valerieside, KY 04580-0168', 'Nitzscheview', '76950', 38, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(46, 'Dr. Tom Mayer Sr.', 'wshields@example.net', '701-602-9977', '956 Keanu Fords Suite 876\nEast Elfriedaton, WA 39328-5651', 'New Janaview', '37051', 54, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(47, 'Lavada Zulauf', 'wiza.gabriella@example.com', '+1 (469) 383-7284', '810 Reilly Radial Suite 406\nGutkowskiside, AK 83535', 'Turnerbury', '22223', 22, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(48, 'Eladio Kuphal IV', 'mferry@example.org', '(815) 767-4328', '91850 Leann Avenue\nVivianmouth, NC 25313-1368', 'Nikolausside', '44972', 39, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(49, 'Prof. Jessie Bailey', 'wyman.ken@example.com', '(352) 643-6221', '5980 Skye Flat\nWest Carmelo, KS 90272-7841', 'Lake Patrickchester', '16360', 40, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(50, 'Mr. Uriel Berge DVM', 'jacobson.madie@example.com', '1-425-356-0724', '95150 Celestine Rapid Apt. 219\nEast Eliezer, OR 45133-8716', 'South Henrietteland', '69447', 30, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(51, 'Kiarra McDermott', 'lind.elian@example.org', '+13528450530', '37208 Durward Corners Apt. 344\nNorth Gonzalo, CO 64546-1053', 'Kertzmannborough', '13568', 66, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(52, 'Dolly O\'Hara', 'giovani.wisozk@example.org', '1-480-298-9532', '3682 Osinski Circle Suite 316\nLake Josiah, VA 88659', 'East Hailey', '55272', 47, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(53, 'Kristin Tillman', 'pdicki@example.net', '747-381-7104', '48366 Wilmer Club\nWest Leilachester, AL 36311-0028', 'Judgeborough', '50650', 50, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(54, 'Willis Fahey', 'alek52@example.org', '337-786-8618', '84358 Jazmyn Estates\nGeovanyberg, FL 21776-8172', 'Queenburgh', '42856', 12, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(55, 'Amie Johnston', 'koelpin.stevie@example.org', '1-731-961-4589', '65103 Bogan Place Apt. 062\nWhiteborough, CA 80570', 'Jammieview', '14791', 65, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(56, 'Kamron Vandervort', 'augustus.littel@example.org', '+1 (231) 840-9696', '8713 Mante Orchard Suite 026\nErdmanburgh, NY 85306', 'Berylfort', '89984', 31, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(57, 'Prof. Malcolm Runte', 'kshlerin.eldred@example.net', '+1.208.802.6636', '87019 Hazle Drives Apt. 416\nJamilville, SD 89278-5717', 'Priceside', '44898', 36, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(58, 'Lambert Denesik', 'geovanni91@example.net', '(803) 262-4944', '746 Rodriguez Trafficway Suite 522\nDevyntown, IN 23555', 'Nicklausfort', '87302', 67, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(59, 'Marc Quigley', 'ybarrows@example.com', '(781) 681-6956', '5510 Hettinger Ferry Apt. 247\nPort Louveniastad, IN 28197-3662', 'Willmsborough', '66031', 69, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(60, 'Ashlynn Fay', 'wayne.hartmann@example.net', '+1-571-826-2998', '91962 Little Rue Apt. 823\nPort David, IN 89904-5423', 'New Toby', '54443', 28, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(61, 'Shana Price', 'ygaylord@example.org', '424-869-4158', '29035 Audreanne Mews Suite 397\nPfannerstillshire, MI 69745', 'Pansystad', '66622', 47, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(62, 'Jermain Rau', 'anissa21@example.com', '+1-332-247-0887', '31758 Aufderhar Fields\nLake Robbie, CT 39423', 'Lake Keven', '95606', 23, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(63, 'Gladyce Jacobi', 'delaney.braun@example.com', '1-754-700-6716', '4265 Francis Parkways\nKavonhaven, DC 75763', 'Deckowhaven', '56367', 11, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(64, 'Lambert Watsica', 'toreilly@example.com', '+1-914-520-4431', '28724 Thurman Mall\nEast Damonside, NM 48338-7819', 'Purdyburgh', '31230', 59, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(65, 'Jackie Moen', 'cordie07@example.org', '+1-848-531-0290', '6952 Kshlerin Walks\nMoenshire, RI 86486', 'Moenburgh', '63486', 31, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(66, 'Dr. Elton Dooley IV', 'upton.connie@example.net', '(951) 979-3795', '576 Loren Way Suite 397\nMariahburgh, MN 88284-9021', 'Shyannshire', '37315', 50, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(67, 'Ismael Streich', 'doyle.newell@example.net', '734-641-3928', '30348 Williamson Forges Suite 871\nPort Vladimir, WV 59788-4139', 'Wunschshire', '97798', 25, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(68, 'Mrs. Mia Altenwerth PhD', 'araceli83@example.net', '+1 (559) 869-3084', '623 Jacinto Rest\nSouth Kayden, UT 49776', 'Kochhaven', '73214', 25, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(69, 'Emelia Toy', 'candace.douglas@example.org', '(312) 806-4908', '1651 Magdalena Shores Suite 512\nGwenton, MA 71293-0981', 'South Micaelahaven', '74083', 65, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(70, 'Marina Bode', 'hollis72@example.org', '(949) 676-0865', '737 Naomi Throughway Apt. 566\nKuhlmanborough, KS 48700', 'Aufderharstad', '57821', 44, '2024-07-17 22:54:25', '2024-07-17 22:54:25');

-- Dumping structure for table uas_pemweb.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_pemweb.personal_access_tokens: ~0 rows (approximately)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\User', 26, 'api-token', '0138cf3a3c7680e83e80115ad39bc71a86a35dc8da2216faa62b13e66cf8ba1d', '["*"]', '2024-07-17 23:13:29', NULL, '2024-07-17 22:55:27', '2024-07-17 23:13:29');

-- Dumping structure for table uas_pemweb.produks
CREATE TABLE IF NOT EXISTS `produks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_pemweb.produks: ~70 rows (approximately)
INSERT INTO `produks` (`id`, `nama_produk`, `harga`, `created_at`, `updated_at`) VALUES
	(1, 'delectus', 419, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(2, 'velit', 141, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(3, 'aliquid', 450, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(4, 'quidem', 103, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(5, 'a', 804, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(6, 'sunt', 852, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(7, 'totam', 173, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(8, 'ea', 845, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(9, 'ut', 950, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(10, 'in', 391, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(11, 'est', 188, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(12, 'est', 32, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(13, 'et', 493, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(14, 'quis', 139, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(15, 'exercitationem', 358, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(16, 'cumque', 383, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(17, 'dolorem', 673, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(18, 'voluptates', 164, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(19, 'necessitatibus', 941, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(20, 'excepturi', 129, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(21, 'ipsa', 930, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(22, 'voluptatem', 833, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(23, 'tempore', 744, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(24, 'provident', 891, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(25, 'quasi', 460, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(26, 'ut', 228, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(27, 'omnis', 74, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(28, 'tenetur', 332, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(29, 'a', 177, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(30, 'quia', 723, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(31, 'ipsum', 240, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(32, 'occaecati', 880, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(33, 'accusantium', 366, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(34, 'accusamus', 348, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(35, 'suscipit', 636, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(36, 'eos', 581, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(37, 'officiis', 332, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(38, 'facere', 286, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(39, 'ut', 7, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(40, 'autem', 893, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(41, 'aut', 69, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(42, 'quae', 870, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(43, 'nihil', 123, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(44, 'consequuntur', 587, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(45, 'natus', 229, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(46, 'et', 480, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(47, 'aut', 723, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(48, 'quas', 776, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(49, 'doloremque', 563, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(50, 'iusto', 867, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(51, 'quia', 415, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(52, 'hic', 93, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(53, 'enim', 666, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(54, 'neque', 189, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(55, 'ducimus', 798, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(56, 'libero', 120, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(57, 'voluptate', 670, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(58, 'ea', 944, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(59, 'asperiores', 641, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(60, 'ratione', 451, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(61, 'culpa', 710, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(62, 'odit', 373, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(63, 'in', 457, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(64, 'eligendi', 544, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(65, 'dolores', 0, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(66, 'assumenda', 558, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(67, 'laboriosam', 381, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(68, 'porro', 380, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(69, 'consequuntur', 110, '2024-07-17 22:54:25', '2024-07-17 22:54:25'),
	(70, 'omnis', 168, '2024-07-17 22:54:25', '2024-07-17 22:54:25');

-- Dumping structure for table uas_pemweb.schedules
CREATE TABLE IF NOT EXISTS `schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` bigint unsigned NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_mulai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_selesai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_absensi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_akademik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_pemweb.schedules: ~30 rows (approximately)
INSERT INTO `schedules` (`id`, `subject_id`, `hari`, `jam_mulai`, `jam_selesai`, `ruangan`, `kode_absensi`, `tahun_akademik`, `semester`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 101, 'Senin', '08:00', '08:00', 'A6', 'A3', '2021/2022', 'Ganjil', '2', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(2, 102, 'Senin', '10:00', '13:00', 'A2', 'A2', '2021/2022', 'Ganjil', '1', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(3, 103, 'Senin', '08:00', '09:00', 'A1', 'A6', '2023/2024', 'Ganjil', '1', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(4, 104, 'Jumat', '13:00', '13:00', 'A6', 'A2', '2022/2023', 'Ganjil', '3', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(5, 105, 'Senin', '14:00', '11:00', 'A1', 'A1', '2022/2023', 'Ganjil', '2', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(6, 106, 'Kamis', '07:00', '12:00', 'A2', 'A2', '2023/2024', 'Ganjil', '2', '2', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(7, 107, 'Senin', '08:00', '09:00', 'A2', 'A6', '2023/2024', 'Genap', '3', '2', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(8, 108, 'Jumat', '10:00', '13:00', 'A2', 'A6', '2021/2022', 'Genap', '1', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(9, 109, 'Kamis', '11:00', '07:00', 'A4', 'A6', '2023/2024', 'Ganjil', '3', '2', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(10, 110, 'Rabu', '12:00', '07:00', 'A4', 'A3', '2023/2024', 'Genap', '2', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(11, 111, 'Senin', '10:00', '12:00', 'A2', 'A6', '2023/2024', 'Genap', '3', '2', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(12, 112, 'Senin', '11:00', '09:00', 'A3', 'A4', '2023/2024', 'Ganjil', '1', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(13, 113, 'Kamis', '10:00', '11:00', 'A4', 'A1', '2021/2022', 'Genap', '2', '2', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(14, 114, 'Kamis', '14:00', '10:00', 'A4', 'A6', '2021/2022', 'Genap', '3', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(15, 115, 'Senin', '07:00', '10:00', 'A1', 'A4', '2023/2024', 'Genap', '1', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(16, 116, 'Senin', '12:00', '10:00', 'A6', 'A2', '2021/2022', 'Ganjil', '1', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(17, 117, 'Selasa', '12:00', '13:00', 'A6', 'A4', '2023/2024', 'Ganjil', '3', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(18, 118, 'Senin', '14:00', '07:00', 'A5', 'A4', '2022/2023', 'Genap', '1', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(19, 119, 'Rabu', '07:00', '13:00', 'A5', 'A1', '2022/2023', 'Genap', '1', '2', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(20, 120, 'Jumat', '11:00', '12:00', 'A1', 'A1', '2023/2024', 'Genap', '2', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(21, 121, 'Senin', '09:00', '14:00', 'A3', 'A6', '2023/2024', 'Genap', '2', '2', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(22, 122, 'Jumat', '07:00', '07:00', 'A2', 'A2', '2022/2023', 'Ganjil', '3', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(23, 123, 'Senin', '09:00', '10:00', 'A5', 'A3', '2021/2022', 'Genap', '3', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(24, 124, 'Rabu', '07:00', '11:00', 'A1', 'A6', '2023/2024', 'Genap', '1', '2', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(25, 125, 'Kamis', '07:00', '13:00', 'A2', 'A1', '2021/2022', 'Genap', '2', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(26, 126, 'Senin', '11:00', '13:00', 'A3', 'A6', '2022/2023', 'Genap', '1', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(27, 127, 'Rabu', '08:00', '12:00', 'A3', 'A6', '2021/2022', 'Ganjil', '3', '3', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(28, 128, 'Rabu', '08:00', '14:00', 'A2', 'A1', '2022/2023', 'Ganjil', '2', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(29, 129, 'Rabu', '14:00', '13:00', 'A2', 'A2', '2021/2022', 'Ganjil', '1', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL),
	(30, 130, 'Jumat', '14:00', '14:00', 'A1', 'A2', '2021/2022', 'Genap', '1', '1', NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24', NULL);

-- Dumping structure for table uas_pemweb.subjects
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lecturer_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lecturerid_foreign` (`lecturer_id`),
  CONSTRAINT `lecturerid_foreign` FOREIGN KEY (`lecturer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_pemweb.subjects: ~100 rows (approximately)
INSERT INTO `subjects` (`id`, `title`, `lecturer_id`, `created_at`, `updated_at`) VALUES
	(1, 'repellendus', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(2, 'quidem', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(3, 'illo', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(4, 'atque', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(5, 'quia', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(6, 'minus', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(7, 'iusto', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(8, 'consectetur', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(9, 'sint', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(10, 'et', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(11, 'amet', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(12, 'velit', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(13, 'a', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(14, 'maiores', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(15, 'libero', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(16, 'voluptatem', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(17, 'autem', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(18, 'sit', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(19, 'ea', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(20, 'consectetur', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(21, 'maxime', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(22, 'qui', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(23, 'soluta', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(24, 'quo', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(25, 'qui', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(26, 'voluptas', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(27, 'qui', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(28, 'incidunt', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(29, 'et', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(30, 'odio', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(31, 'natus', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(32, 'ut', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(33, 'ut', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(34, 'enim', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(35, 'at', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(36, 'aut', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(37, 'omnis', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(38, 'totam', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(39, 'omnis', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(40, 'eaque', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(41, 'magnam', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(42, 'maxime', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(43, 'rerum', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(44, 'tempore', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(45, 'a', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(46, 'voluptatem', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(47, 'voluptas', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(48, 'inventore', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(49, 'rerum', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(50, 'qui', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(51, 'ipsum', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(52, 'debitis', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(53, 'maiores', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(54, 'ea', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(55, 'et', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(56, 'consectetur', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(57, 'ratione', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(58, 'et', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(59, 'officia', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(60, 'dolorem', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(61, 'officia', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(62, 'iusto', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(63, 'tempore', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(64, 'sit', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(65, 'corporis', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(66, 'inventore', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(67, 'voluptas', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(68, 'quis', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(69, 'ducimus', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(70, 'beatae', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(71, 'unde', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(72, 'iste', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(73, 'vero', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(74, 'non', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(75, 'ut', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(76, 'molestiae', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(77, 'dignissimos', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(78, 'corporis', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(79, 'velit', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(80, 'assumenda', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(81, 'ut', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(82, 'consequuntur', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(83, 'dolores', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(84, 'veritatis', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(85, 'ab', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(86, 'eum', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(87, 'doloribus', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(88, 'incidunt', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(89, 'in', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(90, 'expedita', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(91, 'officia', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(92, 'nisi', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(93, 'quia', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(94, 'minima', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(95, 'ut', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(96, 'neque', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(97, 'a', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(98, 'voluptate', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(99, 'occaecati', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(100, 'unde', 3, '2024-07-17 22:54:24', '2024-07-17 22:54:24');

-- Dumping structure for table uas_pemweb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mahasiswa',
  `handphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uas_pemweb.users: ~26 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `roles`, `handphone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Dr. Lexus Kub DDS', 'winnifred.carter@example.org', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:23', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'RsIAkunJvU', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(2, 'Melyna Ullrich', 'kuhic.gardner@example.net', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'ymfsdkDWmc', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(3, 'Angus Ernser', 'zbartell@example.org', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, '3GDyD1ZFhB', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(4, 'Miss Beaulah Robel Jr.', 'cwyman@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'TECzvzniCU', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(5, 'Katrine Oberbrunner', 'jeramie.bednar@example.org', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'fATku7drl6', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(6, 'Merlin Hettinger', 'hintz.tamara@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, '59EjEPuIMx', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(7, 'Mrs. Madeline Dibbert', 'kerluke.leon@example.net', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'oUtRubcMAo', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(8, 'Nathanial Schumm', 'camylle42@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'd38Z8kwKr1', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(9, 'Mrs. Bettie Mertz IV', 'devin14@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'ZyROsG5Ku9', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(10, 'Dr. Clifford Bode PhD', 'von.xzavier@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, '7PPklno3aZ', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(11, 'Stewart Robel I', 'stokes.skylar@example.net', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'WgIUhdkaVh', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(12, 'Prof. Christ Tremblay', 'delores41@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'A0qjgEgdoc', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(13, 'Reece Franecki', 'prohaska.loyal@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'A19hLKJDs8', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(14, 'Skyla Gutmann DDS', 'rortiz@example.net', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'onJtJTtUg6', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(15, 'Oral Skiles Sr.', 'misty.bosco@example.net', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'QHxumOTVLJ', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(16, 'Prof. Fern Stamm MD', 'kelsi.brakus@example.org', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, '901eDAkt41', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(17, 'Felicita Crist DDS', 'arnaldo.jacobs@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'AWJzH6gTKL', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(18, 'Mr. Jamison Kemmer II', 'volkman.adam@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, '9Dxpcx1MGj', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(19, 'Dr. Agnes Corkery', 'erling.hand@example.net', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'auO8xf02Kd', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(20, 'Norberto Koss', 'sporer.philip@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'giQvKqDVa4', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(21, 'Marc Koelpin PhD', 'stiedemann.assunta@example.net', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'HlTsGCEnDs', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(22, 'Allison Carroll', 'noe.graham@example.org', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'l7StVmkTV8', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(23, 'Princess Rolfson', 'shields.immanuel@example.com', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'PTmxCRDiHX', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(24, 'Brice Goyette', 'jtrantow@example.net', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 's9b6Wu7YTn', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(25, 'Raheem Goyette', 'ebins@example.org', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$O4osLcYt4zEK0rmEpAJ15.BzWJwpzQvIJvZqGVGZs/hYJyqsfpnr6', NULL, NULL, NULL, 'Vckod7XqyJ', '2024-07-17 22:54:24', '2024-07-17 22:54:24'),
	(26, 'Muhammad Ferdy Maulana', 'c030322125@mahasiswa.poliban.ac.id', 'mahasiswa', NULL, NULL, '2024-07-17 22:54:24', '$2y$12$AtlMQxXc6Z7.kYRoQl7g/e6ptalNw06FTNje3/EOE8YIhcW1xtyvK', NULL, NULL, NULL, NULL, '2024-07-17 22:54:24', '2024-07-17 22:54:24');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
