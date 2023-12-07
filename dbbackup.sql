-- --------------------------------------------------------
-- Host:                         141.11.196.138
-- Server version:               11.3.0-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dulcy_rp
CREATE DATABASE IF NOT EXISTS `dulcy_rp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `dulcy_rp`;

-- Dumping structure for table dulcy_rp.abonnementen
CREATE TABLE IF NOT EXISTS `abonnementen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `expiration_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.abonnementen: ~14 rows (approximately)
INSERT INTO `abonnementen` (`id`, `identifier`, `expiration_date`) VALUES
	(17, 'cf37a64f859760b15161caa66b63b195f6d73254', '2023-08-04 12:10:28'),
	(18, '99564d5bcb7d72d4d22653c6f7f50e472ce0e7f6', '2023-10-04 18:50:10'),
	(19, '3748293a476ddf05dbd7ce21c2c4d77e94bd20f0', '2023-10-15 21:56:54'),
	(20, '0b77719d448d924c6ca53f9ca430a3a6039711c9', '2023-10-25 16:38:02'),
	(21, 'a353684843c50613e6f834abf4adad855dee3ad1', '2023-10-25 17:16:36'),
	(22, '1ac931fdd1f4eb0f40bc79552e92f0f4b8d50f34', '2023-10-25 19:30:45'),
	(23, '9183e0532280aae6246f29447834b932e78bf7ce', '2023-10-18 19:58:57'),
	(24, 'cc5af00f4923e21e97826ba18cf84e131f295989', '2023-10-29 12:34:24'),
	(25, '4eee243aded98674fc1f3149328efaf60acf38ec', '2023-10-29 16:12:19'),
	(26, 'baf80440a3f4560b6bb4f5924f1b43f43b7362c0', '2023-10-27 14:48:33'),
	(27, '9bbc9e1516d752759f9a5f80ac6111d6ccf9c077', '2023-11-03 19:31:26'),
	(28, 'facca4c27f468c6d3580e5310f9bf28050920dc1', '2023-10-28 14:44:24'),
	(29, '29918ddbc531cd2ddbf18fc994f6748ea0c2a224', '2023-10-29 19:04:34'),
	(30, '28669505a7cb0c1f627d1cef2f5511b412b84b45', '2023-11-08 12:58:16');

-- Dumping structure for table dulcy_rp.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.addon_account: ~14 rows (approximately)
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('caution', 'caution', 0),
	('property', 'Property', 0),
	('society_ambulance', 'Ambulance', 1),
	('society_mechanic', 'Anwb', 1),
	('society_ministers', 'Ministers ', 1),
	('society_MS13', 'MS13', 1),
	('society_peaky', 'Peaky Blinders', 1),
	('society_police', 'Politie', 1),
	('society_realestate', 'Real estate agent', 1),
	('society_saints', 'Saints', 1),
	('society_satudarah', 'Satudarah', 1),
	('society_shops', 'Winkelen', 1),
	('society_taxi', 'Taxi', 1),
	('society_young', 'Young', 1);

-- Dumping structure for table dulcy_rp.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1712 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.addon_account_data: ~1.572 rows (approximately)
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1710, 'caution', 0, '73d67cda9470711051987b542a65c1896a3fdc9d'),
	(1711, 'property', 0, '73d67cda9470711051987b542a65c1896a3fdc9d');

-- Dumping structure for table dulcy_rp.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.addon_inventory: ~14 rows (approximately)
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('caution', 'caution', 0),
	('loods', 'Loods', 0),
	('property', 'Property', 0),
	('society_ambulance', 'Ambulance', 1),
	('society_mechanic', 'Anwb', 1),
	('society_ministers', 'Ministers', 1),
	('society_MS13', 'MS13', 1),
	('society_peaky', 'Peaky Blinders', 1),
	('society_police', 'Politie', 1),
	('society_saints', 'Saints', 1),
	('society_satudarah', 'Satudarah', 1),
	('society_shops', 'Winkelen', 1),
	('society_taxi', 'Taxi', 1),
	('society_young', 'Young', 1);

-- Dumping structure for table dulcy_rp.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.addon_inventory_items: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.anpr
CREATE TABLE IF NOT EXISTS `anpr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eigenaar` varchar(255) DEFAULT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `voornaam` varchar(255) DEFAULT NULL,
  `achternaam` varchar(255) DEFAULT NULL,
  `reden` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.anpr: ~4 rows (approximately)
INSERT INTO `anpr` (`id`, `eigenaar`, `plate`, `voornaam`, `achternaam`, `reden`) VALUES
	(21, '2481ad660fdd006b76844c688b4a13443dc55b51', 'UVA 828', 'Egbert', 'Kaas', 'Vluchten.'),
	(22, '4d7ec9e23aeda8fa696669a2fb03fc5efaf53e4a', 'EOC 515', 'Pablito', 'Ott', 'Gijzeling - Steekwapens'),
	(23, '0b77719d448d924c6ca53f9ca430a3a6039711c9', 'HHM 885', 'Zakaria', 'Amezian', 'Gijzeling, winkel overval met geweld en bezit van steekwapen'),
	(24, '4dfe90733a73f4cbdf7cd7402de316221d8c1c76', 'BHF 779', 'Sentex', 'Aka', 'Poging doodslag AIF');

-- Dumping structure for table dulcy_rp.appa
CREATE TABLE IF NOT EXISTS `appa` (
  `identifier` varchar(60) NOT NULL,
  `locationIndex` int(2) NOT NULL,
  `ownership` varchar(10) NOT NULL,
  `lastTimePayedRent` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.appa: ~69 rows (approximately)
INSERT INTO `appa` (`identifier`, `locationIndex`, `ownership`, `lastTimePayedRent`) VALUES
	('e0eadfc2adbafdbda85772d46f35badac0211ccf', 4, 'rent', '2023-10-24'),
	('1b38d19fa21613690967bb37557db808fe0e92ea', 1, 'rent', '2023-10-30'),
	('f1bbfb0c0d426aff6499a7d26af66a9a29d018a8', 3, 'rent', '2023-10-21'),
	('3748293a476ddf05dbd7ce21c2c4d77e94bd20f0', 1, 'rent', '2023-10-26'),
	('46f0fc4d8a67a554e703e214b1f2b024be47dd6f', 3, 'rent', '2023-10-30'),
	('052a3814c37263ba10ba5293762dfcf82d2af04c', 3, 'rent', '2023-10-23'),
	('74b2adcd46b5df1fd7a56f820a161c33b604d895', 3, 'rent', '2023-10-27'),
	('23f12364e0258db01ee56b7d9f0c41cf71e8795c', 3, 'rent', '2023-10-31'),
	('64aa844662984231311d0f7041a6f2b3589cab0e', 3, 'rent', '2023-10-29'),
	('dbf209a5a3fbc04e8bbdfc91e8ac1372b2415c02', 3, 'rent', '2023-10-31'),
	('ab51f896cc741ad2a52a794ee796fbba92d788cc', 1, 'rent', '2023-10-29'),
	('28669505a7cb0c1f627d1cef2f5511b412b84b45', 2, 'rent', '2023-10-30'),
	('4635b6faafbd8e6ca6774bce16b54f7b766ecd1a', 2, 'rent', '2023-10-31'),
	('241af900b7e8569f7a6f7eb42aae47f769d9fcdf', 3, 'rent', '2023-10-28'),
	('5e3b2675b6c03db713613ce22b4b73655d8cbe56', 4, 'rent', '2023-10-29'),
	('41beafe4393013dbe3d9d6111182e8296e577e72', 2, 'rent', '2023-10-29'),
	('aa5f203d767019b81e64bb47f3eae3d49d78c171', 3, 'rent', '2023-10-31'),
	('46c4937a29a1502dcf75fb76086c019fcdef90b8', 3, 'owner', NULL),
	('cc5af00f4923e21e97826ba18cf84e131f295989', 1, 'rent', '2023-10-30'),
	('df2b8ae75cdf25f1185e480a77ba5106241b44cd', 1, 'rent', '2023-10-30'),
	('70eb18bd2d1663d1cb563d424300c9e634e0f73d', 2, 'rent', '2023-10-30'),
	('9183e0532280aae6246f29447834b932e78bf7ce', 2, 'rent', '2023-10-30'),
	('404dd89956a8e59c2f9190ad85669b5960049617', 3, 'rent', '2023-10-30'),
	('29918ddbc531cd2ddbf18fc994f6748ea0c2a224', 2, 'rent', '2023-10-31'),
	('e465386e93fc478804e5b4c26076e1e604f17133', 2, 'rent', '2023-10-30');

-- Dumping structure for table dulcy_rp.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `split` tinyint(1) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1536 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.billing: ~1.069 rows (approximately)
INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`, `split`, `paid`) VALUES
	(1521, '4d7ec9e23aeda8fa696669a2fb03fc5efaf53e4a', '0777b7ef1c61c25901828be2758ebc316a295f40', 'society', 'society_mechanic', 'ANWB', 750, 0, 1),
	(1522, '46f0fc4d8a67a554e703e214b1f2b024be47dd6f', 'cf37a64f859760b15161caa66b63b195f6d73254', 'society', 'society_mechanic', 'Motorreparatie', 550, 0, 0),
	(1523, '41f0ecaf1ed737cbbbde0a6e8bb3ed35d63d9928', 'cf37a64f859760b15161caa66b63b195f6d73254', 'society', 'society_mechanic', 'Motor reparatie', 550, 0, 1),
	(1524, '9c0a474c80bcbb5a06c8cc15f31f9f532492682d', 'f8fc26015d48e5a060f81fba41a31732509745d5', 'society', 'society_police', 'Door rood rijden', 560, 0, 0),
	(1525, '9c0a474c80bcbb5a06c8cc15f31f9f532492682d', 'f8fc26015d48e5a060f81fba41a31732509745d5', 'society', 'society_police', 'Geen geldig rijbewijs', 1200, 0, 0),
	(1526, 'c648b666eedc681fb7718858fc45d6dd131d1aef', '2bcae84c1fbc8a1c18313c4dcf82ac6b5fbb595d', 'society', 'society_police', 'Het niet tonen van je ID of rijbewijs', 800, 0, 0),
	(1527, '88e46488e13a740fa500d5281aeab643289a70fc', 'f8ba3be7aa26a0d313403818253ca3aef34a45c7', 'society', 'society_mechanic', 'ramen kapot', 350, 0, 0),
	(1528, '844487cd76cd4ee50ecbf5ff225186fd8f135972', '99a695609fd65428dd71345dbe5eefbdef4d3d79', 'society', 'society_police', 'Niet stoppen bij stopteken', 1900, 0, 1),
	(1529, '844487cd76cd4ee50ecbf5ff225186fd8f135972', '99a695609fd65428dd71345dbe5eefbdef4d3d79', 'society', 'society_police', 'Geen rijbewijs', 1200, 0, 1),
	(1530, '844487cd76cd4ee50ecbf5ff225186fd8f135972', '99a695609fd65428dd71345dbe5eefbdef4d3d79', 'society', 'society_police', '50+ kilometer te hard', 1500, 0, 1),
	(1531, '0d47e9fd65d3784c19f7153e3e87ac117ab9209f', 'cf37a64f859760b15161caa66b63b195f6d73254', 'society', 'society_mechanic', 'Voertuig repaaratie', 550, 0, 0),
	(1532, 'c648b666eedc681fb7718858fc45d6dd131d1aef', '2bcae84c1fbc8a1c18313c4dcf82ac6b5fbb595d', 'society', 'society_police', 'Door rood rijden', 560, 0, 0),
	(1533, '1cc87b5d45ccfce5a927654e6a68cb4729a5d613', 'b876f1f0f2f20d096e3779377a48950a7e3b9ce9', 'society', 'society_mechanic', 'auto kapot lak schade', 175, 0, 0),
	(1534, 'c648b666eedc681fb7718858fc45d6dd131d1aef', '2bcae84c1fbc8a1c18313c4dcf82ac6b5fbb595d', 'society', 'society_police', 'Door rood rijden', 560, 0, 1),
	(1535, 'dbf209a5a3fbc04e8bbdfc91e8ac1372b2415c02', 'b876f1f0f2f20d096e3779377a48950a7e3b9ce9', 'society', 'society_mechanic', ' bumper', 300, 0, 0);

-- Dumping structure for table dulcy_rp.boombox_songs
CREATE TABLE IF NOT EXISTS `boombox_songs` (
  `identifier` varchar(64) NOT NULL,
  `label` varchar(30) NOT NULL,
  `link` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.boombox_songs: ~3 rows (approximately)
INSERT INTO `boombox_songs` (`identifier`, `label`, `link`) VALUES
	('99564d5bcb7d72d4d22653c6f7f50e472ce0e7f6', 'ezg', 'https://www.youtube.com/watch?v=92YxzMFFsRk'),
	('99564d5bcb7d72d4d22653c6f7f50e472ce0e7f6', 'slim', 'https://www.youtube.com/watch?v=GdYw2HTJhkw'),
	('29918ddbc531cd2ddbf18fc994f6748ea0c2a224', 'lange ritch', 'https://www.youtube.com/watch?v=HCPMKWZFlVo');

-- Dumping structure for table dulcy_rp.buty_jobs
CREATE TABLE IF NOT EXISTS `buty_jobs` (
  `identifier` varchar(80) DEFAULT NULL,
  `job` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `experience` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.buty_jobs: ~9.036 rows (approximately)
INSERT INTO `buty_jobs` (`identifier`, `job`, `experience`) VALUES
	('c7b158070f5f33d7ef830575759a6175f0a487cf', 'Tank vervoer', 0),
	('c7b158070f5f33d7ef830575759a6175f0a487cf', 'Trailer schoonmaker', 0),
	('c7b158070f5f33d7ef830575759a6175f0a487cf', 'Olie Tapper', 0);

-- Dumping structure for table dulcy_rp.communityservice
CREATE TABLE IF NOT EXISTS `communityservice` (
  `identifier` varchar(100) NOT NULL,
  `actions_remaining` int(10) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.communityservice: ~73 rows (approximately)
INSERT INTO `communityservice` (`identifier`, `actions_remaining`) VALUES
	
	('e6af9fec0b9894e54ee038b3505932ae33adc074', 0),
	('e76272f9b490f2930577ba595929bce08dedddb7', 0),
	('ec29631bdf38add48e316920be38344b5c3091f2', 0),
	('edbea4417cb974c43f06948a8d6b126c9a8e8796', 25),
	('f580e31bbf6ef502cabda2564917c5458d86ed38', 0),
	('f611b83967e4b9d17e4025429bb074a2531a4d83', 0),
	('fe3a68db8586ba660c453a310716263cd40f4b91', 20),
	('ff9228d39f3c33ae2e1f3481f0e575fba86b1f36', 15),
	('ffaabfe0d4b4efc9eeeb9f7da208ea9f4ce20410', 0);

-- Dumping structure for table dulcy_rp.d3_cocaine
CREATE TABLE IF NOT EXISTS `d3_cocaine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `h` float NOT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `progress_time` timestamp NULL DEFAULT NULL,
  `auto_delete` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.d3_cocaine: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.datastore: ~8 rows (approximately)
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Property', 0),
	('society_ambulance', 'Ambulance', 1),
	('society_mechanic', 'Anwb', 1),
	('society_police', 'Politie', 1),
	('user_ears', 'Ooren', 0),
	('user_glasses', 'Brillen', 0),
	('user_helmet', 'Helmen', 0),
	('user_mask', 'Maskers', 0);

-- Dumping structure for table dulcy_rp.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5492 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.datastore_data: ~5.488 rows (approximately)
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(5487, 'user_helmet', '73d67cda9470711051987b542a65c1896a3fdc9d', '{}'),
	(5488, 'user_ears', '73d67cda9470711051987b542a65c1896a3fdc9d', '{}'),
	(5489, 'user_glasses', '73d67cda9470711051987b542a65c1896a3fdc9d', '{}'),
	(5490, 'property', '73d67cda9470711051987b542a65c1896a3fdc9d', '{}'),
	(5491, 'user_mask', '73d67cda9470711051987b542a65c1896a3fdc9d', '{}');

-- Dumping structure for table dulcy_rp.drp_ambu
CREATE TABLE IF NOT EXISTS `drp_ambu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `bezoek` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci DEFAULT NULL,
  `ingecheckt` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.drp_ambu: ~29 rows (approximately)
INSERT INTO `drp_ambu` (`id`, `identifier`, `bezoek`, `ingecheckt`) VALUES
	(37, 'b07367f2269046fb9aa872278fe2b90e677f30ce', '', 0),
	(38, 'c558acf42dc834cf64d0cc85f6d539bfff6ff507', '', 0),
	(39, '4ecfea12e74556e7c96942114bbaf7ba73a93c4a', '', 0),
	(40, '8026bb2ba87248d81484d8d67c6dd208604ffec2', '', 0),
	(41, 'dbf209a5a3fbc04e8bbdfc91e8ac1372b2415c02', '', 0),
	(42, '2bcae84c1fbc8a1c18313c4dcf82ac6b5fbb595d', '', 0);

-- Dumping structure for table dulcy_rp.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.fine_types: ~99 rows (approximately)
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Door rood rijden', 560, 0),
	(2, 'Niet stoppen bij stopteken', 1900, 0),
	(3, 'Niet opvolgen van aanwijzing verkeersregelaar', 300, 0),
	(4, 'Mobiel bellen', 450, 0),
	(5, 'Rijden zonder verlichting', 325, 0),
	(6, 'Rijden met kapotte verlichting', 325, 0),
	(7, 'Rijden onder invloed drank/drugs', 3100, 0),
	(8, 'Illegaal off-road rijden', 365, 0),
	(9, 'Doorrijden na ongeval (VPO)', 6000, 0),
	(10, 'Rijden met een actieve WOK-status', 580, 0),
	(11, 'Rijden met neon verlichting', 1500, 0),
	(12, 'Roekeloos rijgedrag (Artikel 5 WvW)', 1950, 0),
	(13, 'U-turn maken', 220, 0),
	(14, 'Doorgetrokken streep negeren', 440, 0),
	(15, 'Veroorzaken verkeershinder', 220, 0),
	(16, 'Veroorzaken verkeersongeval licht letsel', 240, 0),
	(17, 'Veroorzaken verkeersongeval zwaar letsel', 2100, 0),
	(18, 'Veroorzaken dodelijk verkeersongeval', 5500, 0),
	(19, 'Onnodig claxoneren', 200, 0),
	(20, 'Onnodig reven', 200, 0),
	(21, 'Geen rijbewijs', 1200, 0),
	(22, 'Geen geldig rijbewijs', 1200, 0),
	(23, 'Het niet tonen van je ID of rijbewijs', 800, 0),
	(24, 'Bumperkleven', 400, 0),
	(25, 'Rechts inhalen', 285, 0),
	(26, 'Over vluchtstrook inhalen', 285, 0),
	(27, 'Onnodig links blijven rijden', 250, 0),
	(28, 'Fout parkeren', 400, 0),
	(29, 'Geen geldige apk', 580, 0),
	(30, 'Te donkere ramen', 2460, 0),
	(31, 'Geen APK waardig voertuig', 580, 0),
	(32, 'Geen beschermende kleding op motor', 200, 0),
	(33, 'Geen helm op', 250, 0),
	(34, 'Rijden terwijl rijbewijs is ingevorderd/ingenomen', 1200, 0),
	(35, 'Verboden te keren', 220, 0),
	(36, 'Stilstaan op rijbaan', 310, 0),
	(37, 'Spookrijden', 1300, 0),
	(38, 'Geen kenteken op voertuig', 5980, 0),
	(39, 'Niet mee werken van drugs of adem test', 600, 0),
	(40, 'Door rijden na een ongeval', 6000, 0),
	(41, 'Door rijden van een afzetting', 2200, 0),
	(42, 'Geen voorrang verlenen', 700, 0),
	(43, '10 kilometer te hard', 120, 0),
	(44, '10/20 kilometer te hard', 240, 0),
	(45, '20/30 kilometer te hard', 360, 0),
	(46, '30/40 kilometer te hard', 450, 0),
	(47, '40/50 kilometer te hard', 805, 0),
	(48, '50+ kilometer te hard', 1500, 0),
	(49, 'Beledigen ambtenaar in functie', 640, 0),
	(50, 'Diefstal (goederen)', 1120, 0),
	(51, 'Dragen van gezichtsbedekkende kleding', 600, 0),
	(52, 'Huisinbraak/Huisvredebreuk', 1900, 0),
	(53, 'Negeren van het ambtelijk bevel', 230, 0),
	(54, 'Openbare dronkenschap', 110, 0),
	(55, 'Valse melding', 400, 0),
	(56, 'Wanordelijk gedrag', 350, 0),
	(57, 'Minder dan 0.5 Kilogram Heroine of Cocaine', 2500, 0),
	(58, 'T/m 5 Kilogram softdrugs', 2710, 0),
	(59, 'Meer dan 5 Kilogram en minder dan 30 Kilogram softdrugs', 4000, 0),
	(60, 'Meer dan 5 Kilogram en minder dan 30 Kilogram harddrugs', 6000, 0),
	(61, 'Meer dan 30 Kilogram softdrugs', 5500, 0),
	(62, 'Meer dan 30 Kilogram harddrugs', 7520, 0),
	(63, 'Softdrugs gebruiken waar niet toegestaan is', 350, 0),
	(64, 'Op openbare plek harddrugs gebruiken', 500, 0),
	(65, 'Handelen in softdrugs', 3600, 0),
	(66, 'Handelen in harddrugs', 5500, 0),
	(67, 'Het dealen in soft/harddrugs', 4000, 0),
	(68, 'Niet opvolgen van een bevel van de politie', 230, 0),
	(69, 'Valse identiteit opgeven', 300, 0),
	(70, 'Inbraak gereedschap op zak hebben', 150, 0),
	(71, 'Verstore van openbare orde', 220, 0),
	(72, 'Betreden van verboden terrein', 120, 0),
	(73, 'Diefstal (voertuig)', 410, 0),
	(74, 'Inbraak gevangenis', 1200, 0),
	(75, 'Medeplichtig uitbraak onsuccesvol', 600, 0),
	(76, 'Medeplichtig uitbraak succesvol', 610, 0),
	(77, 'Overval op een burger', 650, 0),
	(78, 'Succesvolle uitbraak', 610, 0),
	(79, 'Het vluchten voor politie', 600, 0),
	(80, 'Het ontvoeren van een burger', 1500, 0),
	(81, 'Het ontvoeren van een ambtenaar in functie', 2000, 0),
	(82, 'Mishandeling van een burger', 350, 0),
	(83, 'Mishandeling van ambtenaar in functie', 620, 0),
	(84, 'Het dragen van een categorie 1 wapen', 9000, 0),
	(85, 'Het dragen van een categorie 2 wapen', 12500, 0),
	(86, 'Het dragen van een categorie 3 wapen', 20010, 0),
	(87, 'Winkel overval met wapen', 12000, 0),
	(88, 'Medeplichting winkel overval', 8000, 0),
	(89, 'Kleine bank overval met vuurwapen', 19500, 0),
	(90, 'Medeplichtig Kleine bank overval', 12000, 0),
	(91, 'Grote bank overval met vuurwapen', 30050, 0),
	(92, 'Medeplichtig grotebank overval', 20050, 0),
	(93, 'Poging tot moord/doodslag burger', 2200, 0),
	(94, 'Poging tot moord/doodslag ambtenaar in functie', 5000, 0),
	(95, 'Het vermoorden van een burger', 3500, 0),
	(96, 'Het vermoorden van een ambtenaar in functie', 6000, 0),
	(97, 'Het plegen van een terroristische daad', 35000, 0),
	(98, 'Medeplichtig zijn van een terroristische daad', 26000, 0),
	(99, 'Het gijzelen van meerdere burgers', 12000, 0);

-- Dumping structure for table dulcy_rp.houselocations
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `houseID` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` text DEFAULT NULL,
  `garage` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `mlo` text DEFAULT NULL,
  `ipl` text DEFAULT NULL,
  `garageShell` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table dulcy_rp.houselocations: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.house_plants
CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB AUTO_INCREMENT=7123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.house_plants: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.items: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.jobs: ~24 rows (approximately)
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'Ambulance', 1),
	('burgemeester', 'Burgemeester', 0),
	('dsi', 'DSI', 1),
	('fisherman', 'Visser', 0),
	('fueler', 'Olie', 0),
	('lumberjack', 'Houthakker', 0),
	('mechanic', 'ANWB', 1),
	('miner', 'Mijnwerker', 0),
	('ministers', 'Ministers', 1),
	('MS13', 'MS-13', 1),
	('offambulance', 'Uit-Dienst', 1),
	('offmechanic', 'Uit-Dienst', 1),
	('offpolice', 'Uit-Dienst', 1),
	('offtaxi', 'Uit-Dienst', 1),
	('peaky', 'Peaky Blinders', 1),
	('police', 'Politie', 1),
	('poolcleaner', 'Neptunes Pools', 0),
	('realestate', 'Real estate agent', 0),
	('saints', 'Saints', 0),
	('satudarah', 'Satudarah MC', 0),
	('slaughterer', 'Butcher', 0),
	('tailor', 'Kleermaker', 0),
	('taxi', 'Taxi', 1),
	('unemployed', 'Koos', 0);

-- Dumping structure for table dulcy_rp.jobxp
CREATE TABLE IF NOT EXISTS `jobxp` (
  `identifier` varchar(60) NOT NULL,
  `job` varchar(20) NOT NULL,
  `xp` int(5) NOT NULL DEFAULT 0,
  UNIQUE KEY `identifier` (`identifier`,`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.jobxp: ~2.468 rows (approximately)
INSERT INTO `jobxp` (`identifier`, `job`, `xp`) VALUES
	('ffd138bcccafe79402f7b6c34d14ffb491e89464', 'fueler', 0),
	('ffd138bcccafe79402f7b6c34d14ffb491e89464', 'miner', 0),
	('fff9649bea9da777e722529c4f8799b793caa07b', 'fueler', 0),
	('fff9649bea9da777e722529c4f8799b793caa07b', 'miner', 0);

-- Dumping structure for table dulcy_rp.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.job_grades: ~114 rows (approximately)
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Werkloos', 105, '{}', '{}'),
	(2, 'police', 0, 'recruit', 'Aspirant', 700, '{}', '{}'),
	(3, 'police', 1, 'officer', 'Surveillant', 850, '{}', '{}'),
	(4, 'police', 2, 'officer', 'Agent', 900, '{}', '{}'),
	(5, 'police', 3, 'sergeant', 'Hoofdagent', 1000, '{}', '{}'),
	(6, 'police', 4, 'lieutenant', 'Hoofdinspecteur', 1200, '{}', '{}'),
	(7, 'police', 5, 'sergeant', 'Brigadier', 1400, '{}', '{}'),
	(8, 'police', 6, 'sergeant', 'Inspecteur', 1600, '{}', '{}'),
	(9, 'police', 7, 'lieutenant', 'Commissaris', 1700, '{}', '{}'),
	(10, 'police', 8, 'boss', 'Hoofdcommissaris', 1900, '{}', '{}'),
	(11, 'police', 9, 'boss', 'Eerste hoofdcommissaris', 2200, '{}', '{}'),
	(12, 'ambulance', 0, 'ambulance', 'Student', 700, '{}', '{}'),
	(13, 'ambulance', 1, 'doctor', 'Chauffeur', 1000, '{}', '{}'),
	(14, 'ambulance', 2, 'doctor', 'Verpleegkundige', 1400, '{}', '{}'),
	(15, 'ambulance', 3, 'docter', 'Hoofd Verpleegkundige', 1600, '{}', '{}'),
	(16, 'ambulance', 4, 'chief_doctor', 'Arts', 1800, '{}', '{}'),
	(17, 'ambulance', 5, 'chief_docter', 'Hoofd Arts', 2000, '{}', '{}'),
	(18, 'ambulance', 6, 'chief_docter', 'Geneeskundige', 2200, '{}', '{}'),
	(19, 'mechanic', 0, 'recrue', 'In Opleiding', 700, '{}', '{}'),
	(20, 'mechanic', 1, 'novice', 'Monteur', 1400, '{}', '{}'),
	(21, 'mechanic', 3, 'experimente', 'Hoofd Monteur', 1700, '{}', '{}'),
	(22, 'mechanic', 6, 'boss', 'Leiding', 2000, '{}', '{}'),
	(23, 'offpolice', 0, 'recruit', 'Aspirant', 300, '{}', '{}'),
	(24, 'offpolice', 1, 'officer', 'Surveillant', 300, '{}', '{}'),
	(25, 'offpolice', 2, 'officer', 'Agent', 300, '{}', '{}'),
	(26, 'offpolice', 3, 'sergeant', 'Hoofdagent', 300, '{}', '{}'),
	(27, 'offpolice', 4, 'sergeant', 'Brigadier', 300, '{}', '{}'),
	(28, 'offpolice', 5, 'sergeant', 'Inspecteur', 300, '{}', '{}'),
	(29, 'offpolice', 6, 'lieutenant', 'Hoofdinspecteur', 300, '{}', '{}'),
	(30, 'offpolice', 7, 'lieutenant', 'Commissaris', 300, '{}', '{}'),
	(31, 'offpolice', 8, 'boss', 'Hoofdcommissaris', 300, '{}', '{}'),
	(32, 'offpolice', 9, 'boss', 'Eerste hoofdcommissaris', 300, '{}', '{}'),
	(33, 'offambulance', 0, 'ambulance', 'OP in opleiding', 300, '{}', '{}'),
	(34, 'offambulance', 1, 'doctor', 'Ondersteunend Personeel', 300, '{}', '{}'),
	(35, 'offambulance', 2, 'doctor', 'Broeder', 300, '{}', '{}'),
	(36, 'offambulance', 3, 'chief_doctor', 'Verpleegkundige', 300, '{}', '{}'),
	(37, 'offambulance', 4, 'boss', 'Geneeskundige', 300, '{}', '{}'),
	(38, 'offambulance', 5, 'boss', 'Hoofd Geneeskunde', 300, '{}', '{}'),
	(39, 'offambulance', 6, 'chief_doctor', 'Specialist', 300, '{}', '{}'),
	(44, 'miner', 0, 'employee', 'Medewerker', 205, '{}', '{}'),
	(45, 'slaughterer', 0, 'employee', 'Medewerker', 205, '{}', '{}'),
	(46, 'tailor', 0, 'employee', 'Medewerker', 205, '{}', '{}'),
	(47, 'fisherman', 0, 'employee', 'Medewerker', 205, '{}', '{}'),
	(48, 'fueler', 0, 'employee', 'Medewerker', 205, '{}', '{}'),
	(49, 'lumberjack', 0, 'employee', 'Medewerker', 205, '{}', '{}'),
	(50, 'dsi', 0, 'recruit', 'Operator in Opleiding', 0, '{}', '{}'),
	(51, 'dsi', 1, 'officer', 'Operator', 0, '{}', '{}'),
	(52, 'dsi', 2, 'lieutenant', 'Plaatsvervangend Commandant', 0, '{}', '{}'),
	(53, 'dsi', 3, 'boss', 'Commandant', 0, '{}', '{}'),
	(57, 'peaky', 1, 'soldier', 'Soldier', 10, '{}', '{}'),
	(59, 'ministers', 1, 'loper ', 'Loper ', 10, '{}', '{}'),
	(60, 'ministers', 2, 'Member ', 'Member ', 10, '{}', '{}'),
	(61, 'ministers', 3, 'Fullmember', 'Full Member', 10, '{}', '{}'),
	(62, 'ministers', 4, 'hitman', 'hitman ', 10, '{}', '{}'),
	(63, 'ministers', 5, 'underboss', 'Underboss ', 10, '{}', '{}'),
	(64, 'ministers', 6, 'boss', 'boss', 10, '{}', '{}'),
	(65, 'peaky', 0, 'associate', 'Captain ', 10, '{}', '{}'),
	(66, 'peaky', 2, 'captians', 'Captians', 10, '{}', '{}'),
	(67, 'peaky', 3, 'Corporals', 'Corporals', 10, '{}', '{}'),
	(68, 'peaky', 4, 'general', 'General', 10, '{}', '{}'),
	(69, 'peaky', 5, 'underboss', 'Underboss', 10, '{}', '{}'),
	(70, 'peaky', 6, 'boss', 'Boss', 10, '{}', '{}'),
	(71, 'poolcleaner', 0, 'interim', 'Cleaner', 400, '{}', '{}'),
	(72, 'taxi', 0, 'Opleiding', 'In Opleiding', 200, '{}', '{}'),
	(73, 'taxi', 1, 'werknemer', 'Medewerker', 300, '{}', '{}'),
	(74, 'taxi', 2, 'manager', 'Manager', 500, '{}', '{}'),
	(75, 'taxi', 3, 'boss', 'Baas', 1000, '{}', '{}'),
	(76, 'peaky', 0, 'associates', 'Associates', 10, '{}', '{}'),
	(77, 'burgemeester', 0, 'boss', 'Burgemeester', 3000, '{}', '{}'),
	(78, 'ambulance', 7, 'boss', 'Hoofd Geneeskundige', 2450, '{}', '{}'),
	(79, 'ambulance', 8, 'boss', 'Ambulance Leidinggevende ', 2500, '{}', '{}'),
	(80, 'saints', 0, 'member', 'Club Medewerker', 100, '{}', '{}'),
	(81, 'saints', 1, 'member', 'Club Security', 100, '{}', '{}'),
	(82, 'saints', 2, 'member', 'Specialist', 100, '{}', '{}'),
	(83, 'saints', 3, 'member', 'Captain ', 100, '{}', '{}'),
	(84, 'saints', 4, 'member', 'Hitman', 100, '{}', '{}'),
	(85, 'saints', 5, 'underboss', 'Commander ', 300, '{}', '{}'),
	(86, 'saints', 6, 'underboss', 'Secretary ', 400, '{}', '{}'),
	(87, 'saints', 7, 'boss', 'Lead Team', 500, '{}', '{}'),
	(88, 'saints', 8, 'member', 'Club DJ', 10, '{}', '{}'),
	(89, 'satudarah', 0, 'member', 'Prospect ', 10, '{}', '{}'),
	(90, 'satudarah', 1, 'member', 'Member', 10, '{}', '{}'),
	(91, 'satudarah', 2, 'member', 'Full Member', 10, '{}', '{}'),
	(92, 'satudarah', 3, 'member', 'Road Captain', 10, '{}', '{}'),
	(93, 'satudarah', 4, 'member', 'Secretary ', 10, '{}', '{}'),
	(94, 'satudarah', 5, 'member', 'SGT at Arms', 10, '{}', '{}'),
	(95, 'satudarah', 6, 'underboss', 'Vice President', 10, '{}', '{}'),
	(96, 'satudarah', 7, 'boss', 'President ', 10, '{}', '{}'),
	(97, 'MS13', 0, 'member', 'Soldier', 10, '{}', '{}'),
	(98, 'MS13', 1, 'member', 'Hoofd Capo', 10, '{}', '{}'),
	(99, 'MS13', 2, 'member', 'Hoofd Hitman', 10, '{}', '{}'),
	(100, 'MS13', 3, 'underboss', 'Underboss', 10, '{}', '{}'),
	(101, 'MS13', 4, 'underboss', 'Consigliere', 10, '{}', '{}'),
	(102, 'MS13', 5, 'boss', 'godfather', 10, '{}', '{}'),
	(103, 'offambulance', 7, 'boss', 'Hoofd Geneeskundige', 300, '{}', '{}'),
	(104, 'offambulance', 8, 'boss', 'Ambulance Leidinggevende ', 300, '{}', '{}'),
	(105, 'offtaxi', 0, 'Opleiding', 'In Opleiding', 200, '{}', '{}'),
	(106, 'offtaxi', 1, 'werknemer', 'Medewerker', 300, '{}', '{}'),
	(107, 'offtaxi', 2, 'manager', 'Manager', 500, '{}', '{}'),
	(108, 'offtaxi', 3, 'boss', 'Baas', 1000, '{}', '{}'),
	(109, 'mechanic', 2, 'novice', 'Eerste Monteur', 1600, '{}', '{}'),
	(111, 'mechanic', 4, 'experimente', 'Rijkswaterstaat', 1800, '{}', '{}'),
	(112, 'mechanic', 5, 'experimente', 'Keurmeester', 1900, '{}', '{}'),
	(113, 'offmechanic', 0, 'recrue', 'In Opleiding', 600, '{}', '{}'),
	(114, 'offmechanic', 1, 'novice', 'Monteur', 600, '{}', '{}'),
	(115, 'offmechanic', 2, 'novice', 'Eerste Monteur', 600, '{}', '{}'),
	(116, 'offmechanic', 3, 'experimente', 'Hoofd Monteur', 600, '{}', '{}'),
	(117, 'offmechanic', 4, 'experimente', 'Rijkswaterstaat', 600, '{}', '{}'),
	(118, 'offmechanic', 5, 'experimente', 'Keurmeester', 600, '{}', '{}'),
	(119, 'offmechanic', 6, 'boss', 'Leiding', 600, '{}', '{}'),
	(121, 'realestate', 0, 'rookie', 'Rookie', 10, '{}', '{}'),
	(122, 'realestate', 1, 'seller', 'Seller', 25, '{}', '{}'),
	(123, 'realestate', 2, 'manager', 'Manager', 40, '{}', '{}'),
	(124, 'realestate', 3, 'boss', 'Boss', 0, '{}', '{}');

-- Dumping structure for table dulcy_rp.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.licenses: ~5 rows (approximately)
INSERT INTO `licenses` (`type`, `label`) VALUES
	('dmv', 'Theorie Examen'),
	('drive', 'Rijbewijs B (auto)'),
	('drive_bike', 'Rijbewijs A (motor)'),
	('drive_truck', 'Rijbewijs C (vrachtwagen)'),
	('weapon', 'Weapon License');

-- Dumping structure for table dulcy_rp.outfits
CREATE TABLE IF NOT EXISTS `outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `name` longtext DEFAULT NULL,
  `ped` longtext DEFAULT NULL,
  `components` longtext DEFAULT NULL,
  `props` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=705 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dulcy_rp.outfits: ~591 rows (approximately)
INSERT INTO `outfits` (`id`, `identifier`, `name`, `ped`, `components`, `props`) VALUES
	(702, '6976f40d0c2894d458132eb8b61d958a186519cc', 'GANG GOEDE', '"mp_m_freemode_01"', '[{"texture":0,"component_id":0,"drawable":0},{"texture":0,"component_id":1,"drawable":55},{"texture":0,"component_id":2,"drawable":48},{"texture":0,"component_id":3,"drawable":19},{"texture":1,"component_id":4,"drawable":154},{"texture":1,"component_id":5,"drawable":122},{"texture":0,"component_id":6,"drawable":125},{"texture":0,"component_id":7,"drawable":17},{"texture":0,"component_id":8,"drawable":9},{"texture":0,"component_id":9,"drawable":0},{"texture":0,"component_id":10,"drawable":92},{"texture":0,"component_id":11,"drawable":491}]', '[{"texture":20,"prop_id":0,"drawable":104},{"texture":16,"prop_id":1,"drawable":29},{"texture":0,"prop_id":2,"drawable":0},{"texture":-1,"prop_id":6,"drawable":-1},{"texture":0,"prop_id":7,"drawable":0}]'),
	(703, '524eb7916bbf092c2cdf68310d87e199e6e5501e', 'FF', '"mp_m_freemode_01"', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":17,"texture":16,"component_id":1},{"drawable":88,"texture":0,"component_id":2},{"drawable":16,"texture":0,"component_id":3},{"drawable":37,"texture":0,"component_id":4},{"drawable":0,"texture":0,"component_id":5},{"drawable":27,"texture":0,"component_id":6},{"drawable":4,"texture":0,"component_id":7},{"drawable":86,"texture":0,"component_id":8},{"drawable":27,"texture":0,"component_id":9},{"drawable":9,"texture":0,"component_id":10},{"drawable":53,"texture":0,"component_id":11}]', '[{"prop_id":0,"drawable":39,"texture":1},{"prop_id":1,"drawable":-1,"texture":-1},{"prop_id":2,"drawable":-1,"texture":-1},{"prop_id":6,"drawable":-1,"texture":-1},{"prop_id":7,"drawable":-1,"texture":-1}]'),
	(704, '524eb7916bbf092c2cdf68310d87e199e6e5501e', 'DD', '"mp_m_freemode_01"', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":17,"texture":0,"component_id":1},{"drawable":88,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":155,"texture":0,"component_id":4},{"drawable":0,"texture":0,"component_id":5},{"drawable":119,"texture":0,"component_id":6},{"drawable":6,"texture":0,"component_id":7},{"drawable":15,"texture":0,"component_id":8},{"drawable":21,"texture":0,"component_id":9},{"drawable":0,"texture":0,"component_id":10},{"drawable":102,"texture":0,"component_id":11}]', '[{"prop_id":0,"drawable":142,"texture":0},{"prop_id":1,"drawable":-1,"texture":-1},{"prop_id":2,"drawable":-1,"texture":-1},{"prop_id":6,"drawable":-1,"texture":-1},{"prop_id":7,"drawable":-1,"texture":-1}]');

-- Dumping structure for table dulcy_rp.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(46) DEFAULT NULL,
  `grantkeys` varchar(60) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `locatie` varchar(50) DEFAULT 'Zuiden',
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0,
  `opslot` tinyint(4) NOT NULL DEFAULT 0,
  `engineHealth` int(11) DEFAULT 1000,
  `bodyHealth` int(11) DEFAULT 1000,
  `fuel` int(3) DEFAULT 100,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  `tijd` int(100) DEFAULT 0,
  `flitsmeister` int(2) DEFAULT 0,
  `motor` int(11) DEFAULT NULL,
  `carseller` int(11) DEFAULT 0,
  `handling` longtext DEFAULT '[]',
  `apk` int(11) DEFAULT 0,
  `wok` int(11) DEFAULT 0,
  `datum` timestamp NULL DEFAULT '2023-01-01 10:07:12',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=897 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.owned_vehicles: ~745 rows (approximately)
INSERT INTO `owned_vehicles` (`owner`, `grantkeys`, `plate`, `vehicle`, `locatie`, `type`, `job`, `stored`, `opslot`, `engineHealth`, `bodyHealth`, `fuel`, `glovebox`, `trunk`, `tijd`, `flitsmeister`, `motor`, `carseller`, `handling`, `apk`, `wok`, `datum`, `id`) VALUES
	('be7beba918f17c172dfbcd3a2018c7a52c334646', NULL, 'ZGZ 037', '{"tyreBurst":{"0":false,"1":false,"4":false,"5":false},"modSpeakers":-1,"modAPlate":-1,"modTank":-1,"modArmor":-1,"modSuspension":-1,"wheels":0,"model":44044998,"modTurbo":false,"modXenon":false,"modVanityPlate":-1,"modSteeringWheel":-1,"modLightbar":-1,"modSpoilers":-1,"windowsBroken":{"6":false,"5":false,"0":false,"7":false,"2":false,"1":false,"4":false,"3":false},"tyreSmokeColor":[255,255,255],"modSmokeEnabled":1,"modDashboard":-1,"modSideSkirt":-1,"modBrakes":-1,"color2":112,"modRoof":-1,"tankHealth":999.7,"pearlescentColor":29,"modArchCover":-1,"modRightFender":-1,"modAerials":-1,"modPlateHolder":-1,"xenonColor":255,"modFrontWheels":-1,"plateIndex":4,"modDial":-1,"engineHealth":937.7,"modEngineBlock":-1,"modDoorR":-1,"neonEnabled":[false,false,false,false],"modGrille":-1,"modFrontBumper":-1,"dirtLevel":9.9,"wheelColor":27,"modTransmission":-1,"modAirFilter":-1,"modDoorSpeaker":-1,"modLivery":0,"modFender":-1,"neonColor":[255,255,255],"modEngine":-1,"modTrimA":-1,"windowTint":-1,"modBackWheels":-1,"doorsBroken":{"6":false,"5":false,"0":false,"2":false,"1":false,"4":false,"3":false},"modSeats":-1,"color1":29,"modOrnaments":-1,"fuelLevel":32.7,"bodyHealth":992.8,"modExhaust":-1,"modRearBumper":-1,"modStruts":-1,"modTrimB":-1,"modHydrolic":-1,"extras":[],"modFrame":-1,"modTrunk":-1,"modHorns":-1,"modHood":-1,"modShifterLeavers":-1,"plate":"ZGZ 037"}', 'BP', 'car', NULL, 1, 0, 938, 993, 33, '[]', '[]', 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 576),
	('0204352a68da45cfb19b82bb90943b0774a352ad', NULL, 'ZHS 716', '{"xenonColor":255,"windowTint":-1,"pearlescentColor":0,"modFrontBumper":-1,"color1":0,"bodyHealth":1000.0,"modSideSkirt":-1,"modSpoilers":-1,"modSeats":-1,"plateIndex":4,"doorsBroken":{"4":false,"5":false,"2":false,"3":false,"0":false,"1":false},"modHydrolic":-1,"modVanityPlate":-1,"modTank":-1,"modExhaust":-1,"modTurbo":false,"modArmor":-1,"modRearBumper":-1,"modFrontWheels":-1,"modAirFilter":-1,"modXenon":false,"modOrnaments":-1,"modSteeringWheel":-1,"modDashboard":-1,"tyreSmokeColor":[255,255,255],"modLightbar":-1,"modSpeakers":-1,"neonEnabled":[false,false,false,false],"modFrame":-1,"modDoorR":-1,"modEngineBlock":-1,"modTrimA":-1,"tyreBurst":{"0":false,"5":false,"4":false,"1":false},"wheels":5,"windowsBroken":{"4":true,"5":true,"2":false,"3":false,"0":false,"1":false,"6":false,"7":false},"color2":0,"dirtLevel":2.0,"extras":[],"model":-516616829,"modSuspension":-1,"wheelColor":128,"modAPlate":-1,"modShifterLeavers":-1,"modAerials":-1,"modSmokeEnabled":false,"modPlateHolder":-1,"fuelLevel":65.0,"modFender":-1,"modDial":-1,"modEngine":-1,"modDoorSpeaker":-1,"plate":"ZHS 716","engineHealth":1000.0,"modLivery":-1,"modHorns":-1,"modBrakes":-1,"tankHealth":1000.0,"modStruts":-1,"modGrille":-1,"modTrunk":-1,"modTrimB":-1,"modRoof":-1,"modRightFender":-1,"modBackWheels":-1,"modArchCover":-1,"modHood":-1,"neonColor":[255,0,255],"modTransmission":-1}', 'Zuiden', 'car', NULL, 0, 0, 1000, 1000, 100, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 501),
	('43443cd8581b4079fa303b95c1e24444b6d23418', NULL, 'ZLI 324', '{"modTank":-1,"modBackWheels":-1,"modAPlate":-1,"modHood":-1,"modSuspension":-1,"modBrakes":-1,"modTransmission":-1,"model":210550081,"xenonColor":255,"modOrnaments":-1,"modExhaust":-1,"modEngineBlock":-1,"modSpeakers":-1,"modHorns":-1,"modDoorR":-1,"tankHealth":1000.0,"modTrunk":-1,"modEngine":-1,"tyreSmokeColor":[255,255,255],"bodyHealth":1000.0,"modRightFender":-1,"modGrille":-1,"dirtLevel":1.0,"neonEnabled":[false,false,false,false],"modTurbo":false,"modXenon":false,"wheelColor":156,"modAerials":-1,"modRearBumper":-1,"modFender":-1,"plateIndex":0,"modPlateHolder":-1,"modSeats":-1,"modSpoilers":-1,"modTrimA":-1,"neonColor":[255,0,255],"modDashboard":-1,"modLivery":-1,"modFrontBumper":-1,"modFrame":-1,"modArchCover":-1,"modSteeringWheel":-1,"tyreBurst":{"5":false,"4":false,"0":false,"1":false},"modLightbar":-1,"modShifterLeavers":-1,"modSideSkirt":-1,"windowsBroken":{"5":true,"4":true,"7":true,"6":true,"1":true,"0":true,"3":true,"2":true},"modSmokeEnabled":false,"color2":0,"modRoof":-1,"doorsBroken":{"5":false,"4":false,"6":false,"1":false,"0":false,"3":false,"2":false},"color1":0,"modDial":-1,"modTrimB":-1,"modAirFilter":-1,"wheels":0,"extras":[],"modStruts":-1,"modDoorSpeaker":-1,"plate":"ZLI 324","modHydrolic":-1,"windowTint":-1,"fuelLevel":65.0,"modArmor":-1,"modVanityPlate":-1,"modFrontWheels":-1,"engineHealth":1000.0,"pearlescentColor":2}', 'Zuiden', 'car', NULL, 0, 1, 1000, 1000, 100, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 643),
	('29918ddbc531cd2ddbf18fc994f6748ea0c2a224', NULL, 'ZME 304', '{"modDoorR":-1,"modOrnaments":-1,"windowsBroken":{"5":true,"4":true,"3":true,"2":true,"1":true,"0":true,"7":true,"6":true},"engineHealth":1000.0,"modGrille":-1,"modSteeringWheel":-1,"modTrimB":-1,"modDial":-1,"neonEnabled":[false,false,false,false],"modSmokeEnabled":1,"modBackWheels":-1,"wheelColor":128,"modAirFilter":-1,"modRearBumper":-1,"modFrontWheels":-1,"modStruts":-1,"modTransmission":-1,"modLivery":-1,"color2":208,"modFrontBumper":-1,"dirtLevel":5.7,"modHorns":-1,"tyreSmokeColor":[255,255,255],"windowTint":-1,"tyreBurst":{"1":false,"0":false,"5":false,"4":false},"modTrunk":-1,"model":2088999036,"neonColor":[255,255,255],"tankHealth":1000.0,"modFender":-1,"pearlescentColor":119,"modSuspension":-1,"modTurbo":false,"wheels":0,"modShifterLeavers":-1,"modDoorSpeaker":-1,"modSpeakers":-1,"extras":{"1":1},"plate":"ZME 304","color1":0,"doorsBroken":{"4":false,"3":false,"2":false,"1":false,"0":false},"modSideSkirt":-1,"modDashboard":-1,"modEngineBlock":-1,"modLightbar":-1,"modHydrolic":-1,"fuelLevel":54.9,"modBrakes":-1,"bodyHealth":1000.0,"modSpoilers":-1,"plateIndex":4,"modHood":-1,"modTank":-1,"modExhaust":-1,"modTrimA":-1,"xenonColor":255,"modRightFender":-1,"modArchCover":-1,"modAerials":-1,"modXenon":false,"modVanityPlate":-1,"modAPlate":-1,"modSeats":-1,"modArmor":-1,"modFrame":-1,"modEngine":-1,"modPlateHolder":-1,"modRoof":-1}', 'BP', 'car', NULL, 1, 1, 1000, 1000, 55, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 326),
	('dde2ba34032947d17ec53038df59df25f6abf92f', NULL, 'ZMO 890', '{"neonEnabled":[false,false,false,false],"xenonColor":255,"modRearBumper":-1,"modRoof":-1,"color2":0,"model":-210759474,"modFrame":-1,"modBrakes":-1,"pearlescentColor":3,"modVanityPlate":-1,"tyreSmokeColor":[255,255,255],"modEngineBlock":-1,"modHydrolic":-1,"modSpoilers":-1,"modBackWheels":-1,"color1":0,"modPlateHolder":-1,"plateIndex":0,"modFrontBumper":-1,"bodyHealth":1000.0,"modTrunk":-1,"modXenon":false,"windowTint":-1,"modFender":-1,"modSmokeEnabled":false,"extras":{"11":false,"12":false,"7":1,"2":false,"1":false,"4":false,"3":1,"9":false,"5":1},"modDoorR":-1,"modSideSkirt":-1,"fuelLevel":65.0,"modExhaust":-1,"neonColor":[255,0,255],"modAPlate":-1,"modEngine":-1,"modHorns":-1,"wheels":6,"modSuspension":-1,"modSteeringWheel":-1,"modArchCover":-1,"modOrnaments":-1,"tankHealth":1000.0,"windowsBroken":{"6":true,"5":true,"0":true,"7":true,"2":true,"1":true,"4":true,"3":true},"modDoorSpeaker":-1,"modTurbo":false,"wheelColor":156,"modSeats":-1,"modLightbar":-1,"modSpeakers":-1,"tyreBurst":{"0":false,"4":false},"engineHealth":1000.0,"modTrimA":-1,"modDial":-1,"plate":"ZMO 890","modDashboard":-1,"modTransmission":-1,"modArmor":-1,"modTrimB":-1,"modStruts":-1,"modAirFilter":-1,"modRightFender":-1,"modAerials":-1,"modShifterLeavers":-1,"modTank":-1,"dirtLevel":4.0,"modHood":-1,"modFrontWheels":-1,"modGrille":-1,"doorsBroken":{"0":false,"1":false},"modLivery":0}', 'Zuiden', 'car', NULL, 0, 1, 1000, 1000, 100, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 515),
	('05021e99e8a6541b7340b91b5072a2aab9d6e325', NULL, 'ZMS 302', '{"plate":"ZMS 302","wheelColor":156,"windowTint":-1,"modLightbar":-1,"modFrontWheels":-1,"tankHealth":1000.0,"modHydrolic":-1,"modSpoilers":-1,"engineHealth":1000.0,"modDoorSpeaker":-1,"modBackWheels":-1,"tyreSmokeColor":[255,255,255],"model":-196017845,"modSmokeEnabled":false,"fuelLevel":80.0,"modOrnaments":-1,"modTransmission":-1,"modFender":-1,"modTrimA":-1,"modArmor":-1,"modPlateHolder":-1,"modSteeringWheel":-1,"modTurbo":false,"modSeats":-1,"modExhaust":-1,"modDoorR":-1,"modAerials":-1,"modDial":-1,"modRearBumper":-1,"modSideSkirt":-1,"dirtLevel":0.0,"color2":0,"modRoof":-1,"modDashboard":-1,"doorsBroken":{"5":false,"6":false,"0":false,"1":false,"2":false,"3":false,"4":false},"modAPlate":-1,"modGrille":-1,"modVanityPlate":-1,"windowsBroken":{"5":true,"6":true,"7":true,"0":true,"1":true,"2":true,"3":true,"4":true},"tyreBurst":{"1":false,"5":false,"4":false,"0":false},"modSuspension":-1,"modHorns":-1,"modLivery":-1,"wheels":7,"modRightFender":-1,"neonEnabled":[false,false,false,false],"modStruts":-1,"pearlescentColor":111,"modArchCover":-1,"modAirFilter":-1,"modFrame":-1,"modSpeakers":-1,"extras":[],"modTrunk":-1,"plateIndex":0,"modEngineBlock":-1,"modTank":-1,"modHood":-1,"color1":0,"modXenon":false,"modEngine":-1,"modFrontBumper":-1,"neonColor":[255,0,255],"xenonColor":255,"modTrimB":-1,"modBrakes":-1,"bodyHealth":1000.0,"modShifterLeavers":-1}', 'Zuiden', 'car', NULL, 0, 1, 1000, 1000, 100, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 327),
	('bedd8e25ca7049ad079bccad3b2ae759fa687fe7', NULL, 'ZMS 990', '{"color1":135,"modSmokeEnabled":1,"modSteeringWheel":-1,"modDoorSpeaker":-1,"modDashboard":-1,"modLightbar":-1,"tankHealth":996.0,"modHorns":-1,"tyreBurst":{"1":false,"4":false,"5":false,"0":false},"modTrimA":-1,"model":-1943656060,"modLivery":-1,"modVanityPlate":-1,"windowsBroken":{"5":true,"6":false,"3":false,"4":true,"1":false,"2":false,"7":true,"0":false},"bodyHealth":969.0,"modEngineBlock":-1,"plate":"ZMS 990","neonEnabled":[false,false,false,false],"modSpeakers":-1,"modArmor":-1,"modTransmission":2,"engineHealth":793.0,"modFender":-1,"modPlateHolder":-1,"modBackWheels":-1,"modTank":-1,"modFrontWheels":-1,"modBrakes":2,"xenonColor":255,"modSideSkirt":-1,"modAPlate":-1,"modSpoilers":-1,"modFrame":-1,"modDial":-1,"fuelLevel":27.7,"modRoof":-1,"modHood":-1,"modTrunk":-1,"doorsBroken":{"3":false,"4":false,"1":false,"2":false,"0":false},"extras":[],"modStruts":-1,"modExhaust":-1,"modEngine":3,"modHydrolic":-1,"tyreSmokeColor":[255,255,255],"modXenon":false,"modAerials":-1,"wheels":0,"modAirFilter":-1,"neonColor":[255,0,255],"modTrimB":-1,"modDoorR":-1,"modSuspension":4,"pearlescentColor":0,"modArchCover":-1,"wheelColor":27,"modRearBumper":-1,"modTurbo":1,"plateIndex":0,"modShifterLeavers":-1,"modOrnaments":-1,"modRightFender":-1,"modGrille":-1,"windowTint":-1,"modFrontBumper":-1,"color2":135,"modSeats":-1,"dirtLevel":11.1}', 'Zuiden', 'car', NULL, 1, 1, 793, 969, 28, '[{"name":"medbag","count":7,"slot":1}]', NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-10-28 11:37:00', 628),
	('88e46488e13a740fa500d5281aeab643289a70fc', NULL, 'ZNJ 021', '{"modSmokeEnabled":1,"modXenon":false,"dirtLevel":15.0,"modHood":-1,"modAerials":-1,"color1":111,"neonColor":[255,0,255],"modSeats":-1,"fuelLevel":76.4,"plateIndex":0,"modShifterLeavers":-1,"modSpeakers":-1,"modLightbar":-1,"modTank":-1,"modHydrolic":-1,"modDoorR":-1,"wheelColor":0,"modRearBumper":-1,"modAPlate":-1,"modRightFender":-1,"engineHealth":1000.0,"modSuspension":4,"wheels":0,"model":-1943656060,"windowsBroken":{"6":false,"7":false,"4":true,"5":true,"2":false,"3":false,"0":false,"1":false},"modStruts":-1,"modTurbo":1,"tankHealth":1000.0,"modTrimB":-1,"modGrille":-1,"modExhaust":-1,"modTrunk":-1,"modVanityPlate":-1,"modArchCover":-1,"modDial":-1,"modFrontBumper":2,"modLivery":-1,"color2":26,"modHorns":-1,"modRoof":-1,"modFender":-1,"windowTint":1,"modEngineBlock":-1,"modSideSkirt":-1,"modTrimA":-1,"xenonColor":255,"tyreBurst":{"4":false,"5":false,"0":false,"1":false},"doorsBroken":{"4":false,"2":false,"3":false,"0":false,"1":false},"modDoorSpeaker":-1,"modSteeringWheel":-1,"modBackWheels":-1,"modFrontWheels":63,"modFrame":-1,"modAirFilter":-1,"modArmor":-1,"modEngine":3,"bodyHealth":1000.0,"tyreSmokeColor":[255,255,255],"modBrakes":2,"plate":"ZNJ 021","modOrnaments":-1,"extras":[],"modSpoilers":0,"modTransmission":2,"pearlescentColor":0,"neonEnabled":[false,false,false,false],"modDashboard":-1,"modPlateHolder":-1}', 'BP', 'car', NULL, 0, 0, 1000, 1000, 76, '[]', NULL, 0, 0, NULL, 0, '[]', 0, 1, '2023-01-01 10:07:12', 688),
	('187c3e3a1591098aba733efe1855a76247842b0d', NULL, 'ZQA 145', '{"modSpeakers":-1,"modEngineBlock":-1,"modExhaust":-1,"model":-210759474,"modSpoilers":-1,"modBackWheels":-1,"modVanityPlate":-1,"modHorns":-1,"color1":131,"modTrunk":-1,"modStruts":-1,"tyreBurst":{"4":false,"0":false},"doorsBroken":{"1":false,"0":false},"modFrontWheels":-1,"modFrontBumper":-1,"xenonColor":255,"windowsBroken":{"7":true,"6":true,"5":true,"4":true,"3":true,"2":true,"1":true,"0":true},"modTurbo":false,"modXenon":false,"wheelColor":156,"modArchCover":-1,"modAerials":-1,"modArmor":-1,"modHood":-1,"fuelLevel":63.4,"modDashboard":-1,"modDial":-1,"modOrnaments":-1,"modSmokeEnabled":1,"modBrakes":-1,"modSteeringWheel":-1,"modTransmission":-1,"modPlateHolder":-1,"modDoorSpeaker":-1,"modGrille":-1,"modTrimA":-1,"modAPlate":-1,"modTank":-1,"modSuspension":-1,"modAirFilter":-1,"modRearBumper":-1,"pearlescentColor":3,"dirtLevel":5.0,"bodyHealth":990.0,"extras":{"7":1,"5":1,"4":false,"11":false,"12":false,"3":1,"2":false,"1":false,"9":1},"modLightbar":-1,"plateIndex":0,"color2":0,"windowTint":-1,"modShifterLeavers":-1,"modFrame":-1,"modEngine":-1,"modSeats":-1,"neonColor":[255,0,255],"modRightFender":-1,"neonEnabled":[false,false,false,false],"engineHealth":945.2,"modHydrolic":-1,"modFender":-1,"modRoof":-1,"wheels":6,"modLivery":0,"plate":"ZQA 145","modSideSkirt":-1,"modTrimB":-1,"tankHealth":990.6,"modDoorR":-1,"tyreSmokeColor":[255,255,255]}', 'Zuiden', 'car', NULL, 1, 0, 945, 990, 63, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 480),
	('4d7ec9e23aeda8fa696669a2fb03fc5efaf53e4a', NULL, 'ZSF 134', '{"modRearBumper":-1,"wheelColor":156,"modLightbar":-1,"bodyHealth":758.0,"plate":"ZSF 134","modGrille":-1,"pearlescentColor":112,"modHorns":-1,"modArmor":4,"windowsBroken":{"3":true,"2":true,"1":true,"0":true,"7":true,"6":true,"5":true,"4":true},"modDashboard":-1,"tyreSmokeColor":[41,36,33],"modBrakes":2,"wheels":4,"modExhaust":-1,"modOrnaments":-1,"modXenon":1,"modDoorSpeaker":-1,"modRoof":-1,"modPlateHolder":-1,"modTurbo":1,"modHydrolic":-1,"modAerials":-1,"modTransmission":2,"modDial":-1,"modSpeakers":-1,"modDoorR":-1,"modTrimA":-1,"modHood":-1,"modAirFilter":-1,"engineHealth":325.1,"modFrontBumper":-1,"color1":134,"dirtLevel":15.0,"xenonColor":4,"modFrame":-1,"modAPlate":-1,"modTank":-1,"modSmokeEnabled":1,"doorsBroken":{"1":false,"0":false},"modTrimB":-1,"modVanityPlate":-1,"extras":[],"tankHealth":886.0,"neonColor":[255,255,255],"modBackWheels":-1,"modShifterLeavers":-1,"modTrunk":-1,"tyreBurst":{"0":1,"4":1},"modArchCover":-1,"modSpoilers":0,"modFender":-1,"windowTint":-1,"modEngine":3,"modSuspension":-1,"modRightFender":-1,"color2":0,"modStruts":-1,"modSideSkirt":-1,"modSteeringWheel":-1,"modEngineBlock":-1,"plateIndex":1,"model":1709518892,"neonEnabled":[1,1,1,1],"modFrontWheels":11,"modSeats":-1,"modLivery":0,"fuelLevel":66.9}', 'Zuiden', 'car', NULL, 1, 0, 325, 758, 67, '[]', NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 505),
	('f845aa50096f17c67a2d3595fc030ffcabf08f61', NULL, 'ZUB 591', '{"modEngineBlock":-1,"modHorns":-1,"modExhaust":-1,"modRoof":-1,"modPlateHolder":-1,"tankHealth":968.8,"modFrontBumper":-1,"modTurbo":false,"model":1293242969,"wheelColor":0,"tyreBurst":{"0":false,"4":false},"modDoorR":-1,"engineHealth":631.7,"plateIndex":4,"bodyHealth":676.8,"fuelLevel":76.3,"modSideSkirt":-1,"modTrunk":-1,"pearlescentColor":0,"modRightFender":-1,"color1":0,"modFrame":-1,"wheels":6,"modGrille":-1,"modArmor":-1,"modAPlate":-1,"extras":{"1":false,"2":1},"windowTint":-1,"modHydrolic":-1,"windowsBroken":{"3":true,"4":true,"5":true,"6":true,"7":true,"0":true,"1":true,"2":true},"modTrimB":-1,"neonColor":[255,0,255],"modSmokeEnabled":1,"modBackWheels":-1,"modShifterLeavers":-1,"modArchCover":-1,"modStruts":-1,"modFrontWheels":-1,"modOrnaments":-1,"modSeats":-1,"modDashboard":-1,"modRearBumper":-1,"neonEnabled":[false,false,false,false],"modSpoilers":-1,"modDial":-1,"modTrimA":-1,"modTransmission":-1,"modXenon":1,"doorsBroken":{"1":false,"0":false},"modBrakes":-1,"modSpeakers":-1,"modFender":-1,"modAirFilter":-1,"modSteeringWheel":-1,"modAerials":-1,"modHood":-1,"modLivery":-1,"xenonColor":7,"plate":"ZUB 591","dirtLevel":15.0,"modSuspension":-1,"modVanityPlate":-1,"tyreSmokeColor":[255,255,255],"modEngine":-1,"modDoorSpeaker":-1,"modLightbar":-1,"modTank":-1,"color2":0}', 'BP', 'car', NULL, 1, 1, 632, 677, 76, NULL, NULL, 0, 0, NULL, 0, '[]', 1, 0, '2023-10-13 14:56:33', 328),
	('f5978867efbc294bd764502ab5c854aeefa1c9c9', NULL, 'ZUT 704', '{"xenonColor":255,"extras":{"12":false,"5":false,"2":1,"3":1,"6":false,"7":1,"11":false,"10":false,"1":1,"4":1},"pearlescentColor":74,"modFrontBumper":-1,"color1":0,"modEngine":-1,"tankHealth":1000.0,"modSpoilers":-1,"modSeats":-1,"plateIndex":0,"modPlateHolder":-1,"modHydrolic":-1,"modVanityPlate":-1,"modTank":-1,"modExhaust":-1,"modTurbo":false,"modHood":-1,"modRearBumper":-1,"modFrontWheels":-1,"modAirFilter":-1,"modXenon":false,"modOrnaments":-1,"modSteeringWheel":-1,"modDashboard":-1,"tyreSmokeColor":[255,255,255],"modLightbar":-1,"modSpeakers":-1,"neonEnabled":[false,false,false,false],"modFrame":-1,"modDoorR":-1,"modTransmission":-1,"modTrimA":-1,"tyreBurst":{"0":false,"1":false,"4":false,"5":false},"modArchCover":-1,"windowsBroken":{"4":true,"5":true,"2":false,"3":false,"0":false,"1":false,"6":false,"7":false},"color2":0,"dirtLevel":3.0,"modTrimB":-1,"windowTint":-1,"modSuspension":-1,"wheelColor":156,"doorsBroken":{"4":false,"5":false,"2":false,"3":false,"0":false,"1":false,"6":false},"modShifterLeavers":-1,"modAPlate":-1,"modSmokeEnabled":false,"bodyHealth":1000.0,"fuelLevel":65.0,"modFender":-1,"modDial":-1,"modRightFender":-1,"wheels":0,"plate":"ZUT 704","engineHealth":1000.0,"modGrille":-1,"modAerials":-1,"modBrakes":-1,"modTrunk":-1,"modStruts":-1,"modLivery":-1,"modArmor":-1,"model":-728835624,"modRoof":-1,"modDoorSpeaker":-1,"modBackWheels":-1,"modSideSkirt":-1,"modEngineBlock":-1,"neonColor":[255,0,255],"modHorns":-1}', 'Zuiden', 'car', NULL, 0, 0, 1000, 1000, 100, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 502),
	('aa5f203d767019b81e64bb47f3eae3d49d78c171', NULL, 'ZWZ 253', '{"neonColor":[255,0,255],"bodyHealth":990.5,"wheelColor":156,"modSuspension":-1,"modBrakes":2,"modOrnaments":-1,"plate":"ZWZ 253","engineHealth":971.7,"modSeats":-1,"xenonColor":255,"modXenon":false,"modRearBumper":0,"pearlescentColor":160,"modPlateHolder":-1,"modArmor":-1,"modDoorSpeaker":-1,"modDashboard":-1,"modFrontWheels":54,"modAerials":-1,"model":-210759474,"modStruts":-1,"windowsBroken":{"3":true,"2":true,"5":true,"4":true,"7":true,"6":true,"1":true,"0":true},"modSmokeEnabled":1,"modBackWheels":54,"modDoorR":-1,"modSpoilers":-1,"modLivery":0,"modGrille":-1,"tyreSmokeColor":[255,255,255],"modSpeakers":-1,"modHorns":-1,"modFrontBumper":0,"neonEnabled":[false,false,false,false],"modEngine":3,"modTrimB":-1,"modFender":-1,"modDial":-1,"modRightFender":0,"modTank":-1,"modHydrolic":-1,"modLightbar":-1,"dirtLevel":15.0,"modHood":-1,"modEngineBlock":-1,"fuelLevel":53.7,"modRoof":-1,"modExhaust":-1,"extras":{"3":1,"2":1,"5":1,"4":1,"7":1,"9":false,"12":1,"1":1,"11":1},"modShifterLeavers":-1,"tankHealth":996.8,"tyreBurst":{"0":false,"4":false},"modTrimA":-1,"color1":0,"windowTint":-1,"modTransmission":2,"doorsBroken":{"1":false,"0":false},"modSideSkirt":-1,"color2":0,"modFrame":-1,"plateIndex":1,"modTurbo":1,"modVanityPlate":-1,"modTrunk":-1,"modArchCover":-1,"modAPlate":-1,"modSteeringWheel":-1,"modAirFilter":-1,"wheels":6}', 'Noorden', 'car', NULL, 1, 0, 972, 991, 54, '[]', NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 390),
	('3769ab4082d369a735bbd0d37a3667679563a954', NULL, 'ZXL 333', '{"modStruts":-1,"modDoorSpeaker":-1,"modEngine":-1,"wheelColor":0,"modFrontWheels":-1,"modAerials":-1,"dirtLevel":5.0,"modHood":-1,"tyreSmokeColor":[255,255,255],"modEngineBlock":-1,"fuelLevel":67.8,"modVanityPlate":-1,"modShifterLeavers":-1,"tyreBurst":{"5":false,"0":false,"1":false,"4":false},"wheels":0,"neonColor":[255,0,255],"modSideSkirt":-1,"modExhaust":-1,"modHorns":-1,"modBackWheels":-1,"modTrimB":-1,"modSeats":-1,"modTurbo":false,"engineHealth":1000.0,"doorsBroken":{"5":false,"6":false,"3":false,"4":false,"1":false,"2":false,"0":false},"modFrontBumper":-1,"xenonColor":255,"modTrimA":-1,"plate":"ZXL 333","modSuspension":-1,"modDial":-1,"modSpeakers":-1,"modRightFender":-1,"modRoof":-1,"modDashboard":-1,"modBrakes":-1,"modRearBumper":-1,"plateIndex":3,"modAirFilter":-1,"modSteeringWheel":-1,"neonEnabled":[false,false,false,false],"modFrame":-1,"modGrille":-1,"modTank":-1,"color2":27,"bodyHealth":917.0,"modDoorR":-1,"windowsBroken":{"5":true,"6":false,"3":false,"4":true,"1":false,"2":false,"7":false,"0":false},"tankHealth":1000.0,"modPlateHolder":-1,"modTrunk":-1,"modArchCover":-1,"modXenon":false,"modLivery":-1,"modHydrolic":-1,"modSpoilers":-1,"modFender":-1,"modLightbar":-1,"pearlescentColor":0,"color1":27,"modTransmission":-1,"windowTint":-1,"modArmor":-1,"modSmokeEnabled":1,"modAPlate":-1,"extras":{"5":false,"3":false,"4":1,"1":false,"2":false,"10":false},"modOrnaments":-1,"model":294558265}', 'BP', 'car', NULL, 0, 1, 1000, 917, 68, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 530),
	('5ae361e676d7ec7b2e488730e802ae97d33f49a7', NULL, 'ZXO 444', '{"modTrimB":-1,"modRoof":-1,"modHood":-1,"modHydrolic":-1,"modAirFilter":-1,"modShifterLeavers":-1,"xenonColor":255,"modLightbar":-1,"modSpoilers":-1,"modGrille":-1,"modFrontBumper":-1,"tyreBurst":{"5":false,"0":false,"4":false,"1":false},"modDial":-1,"modDoorR":-1,"color2":0,"model":-1164861661,"modLivery":-1,"modBackWheels":-1,"engineHealth":978.6,"extras":{"3":1,"2":1,"1":1,"12":false,"11":1},"plateIndex":0,"wheels":0,"tyreSmokeColor":[255,255,255],"color1":0,"modDoorSpeaker":-1,"windowTint":-1,"pearlescentColor":68,"tankHealth":999.8,"modSmokeEnabled":1,"modSeats":-1,"modTrimA":-1,"modEngine":-1,"dirtLevel":2.2,"modRightFender":-1,"modStruts":-1,"bodyHealth":997.8,"modArmor":-1,"modFrontWheels":-1,"modAPlate":-1,"modOrnaments":-1,"modFrame":-1,"modFender":-1,"windowsBroken":{"5":true,"4":true,"3":true,"2":true,"1":true,"0":true,"7":true,"6":false},"modVanityPlate":-1,"modXenon":false,"modAerials":-1,"modDashboard":-1,"modSpeakers":-1,"fuelLevel":93.5,"neonColor":[255,255,255],"modTurbo":false,"modBrakes":-1,"modRearBumper":-1,"modEngineBlock":-1,"modTrunk":-1,"modPlateHolder":-1,"modHorns":-1,"modExhaust":-1,"modSteeringWheel":-1,"modTransmission":-1,"wheelColor":4,"modArchCover":-1,"neonEnabled":[false,false,false,false],"plate":"ZXO 444","modSuspension":-1,"modTank":-1,"modSideSkirt":-1,"doorsBroken":{"1":false,"0":false,"3":false,"2":false}}', 'Zuiden', 'car', NULL, 1, 0, 979, 998, 94, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 722),
	('f279a6f3056ea33962174d9c142fad6b1ad8f42e', NULL, 'ZXP 070', '{"neonEnabled":[false,false,false,false],"xenonColor":255,"modRearBumper":-1,"modRoof":-1,"modRightFender":-1,"model":-1245365530,"modFrame":-1,"modBrakes":-1,"pearlescentColor":134,"modVanityPlate":-1,"tyreSmokeColor":[255,255,255],"modEngineBlock":-1,"modHydrolic":-1,"modSpoilers":-1,"modBackWheels":-1,"color1":0,"modPlateHolder":-1,"plateIndex":0,"tyreBurst":{"4":false,"1":false,"0":false,"5":false},"bodyHealth":1000.0,"modTrimA":-1,"modXenon":false,"windowTint":-1,"modFender":-1,"modSmokeEnabled":false,"extras":[],"modDoorR":-1,"modSideSkirt":-1,"fuelLevel":65.0,"modArchCover":-1,"modDoorSpeaker":-1,"modAPlate":-1,"modEngine":-1,"modLivery":-1,"wheels":0,"modGrille":-1,"modSteeringWheel":-1,"modFrontBumper":-1,"engineHealth":1000.0,"tankHealth":1000.0,"color2":0,"modTrunk":-1,"modTurbo":false,"wheelColor":156,"neonColor":[255,0,255],"modLightbar":-1,"modSpeakers":-1,"modHood":-1,"modDial":-1,"modSuspension":-1,"modShifterLeavers":-1,"modAerials":-1,"modTransmission":-1,"doorsBroken":{"0":false,"2":false,"1":false,"4":false,"3":false},"modArmor":-1,"modTrimB":-1,"modStruts":-1,"modOrnaments":-1,"modExhaust":-1,"modDashboard":-1,"plate":"ZXP 070","modTank":-1,"modAirFilter":-1,"modFrontWheels":-1,"modSeats":-1,"modHorns":-1,"dirtLevel":0.0,"windowsBroken":{"6":false,"5":true,"0":false,"7":false,"2":false,"1":false,"4":true,"3":false}}', 'Zuiden', 'car', NULL, 0, 0, 1000, 1000, 100, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 519),
	('78dcd6bf9290404cc75cac10575e2f19f82f820c', NULL, 'ZXS 091', '{"dirtLevel":1.0,"modGrille":-1,"tyreSmokeColor":[255,255,255],"neonColor":[255,0,255],"modSeats":-1,"windowTint":-1,"pearlescentColor":0,"modArmor":-1,"modRoof":-1,"modRearBumper":-1,"modLivery":-1,"modFrontBumper":-1,"modAirFilter":-1,"modTurbo":false,"modAerials":-1,"modRightFender":-1,"modFender":-1,"modHydrolic":-1,"modSideSkirt":-1,"modHorns":-1,"modXenon":false,"doorsBroken":{"4":false,"2":false,"3":false,"0":false,"1":false},"modSpeakers":-1,"modTank":-1,"modArchCover":-1,"modStruts":-1,"xenonColor":255,"modSteeringWheel":-1,"modHood":-1,"modTrunk":-1,"modSpoilers":-1,"modFrame":-1,"modAPlate":-1,"modTrimB":-1,"plate":"ZXS 091","modEngine":-1,"extras":{"12":1,"10":false},"wheels":2,"modDoorSpeaker":-1,"modTrimA":-1,"windowsBroken":{"4":true,"5":true,"2":false,"3":false,"0":true,"1":true,"6":true,"7":false},"neonEnabled":[false,false,false,false],"modExhaust":-1,"modFrontWheels":-1,"modOrnaments":-1,"modBackWheels":-1,"tankHealth":998.7,"modBrakes":-1,"color1":0,"modDoorR":-1,"fuelLevel":94.8,"modSmokeEnabled":1,"wheelColor":0,"modDial":-1,"tyreBurst":{"0":false,"5":false,"4":false,"1":false},"modEngineBlock":-1,"modLightbar":-1,"modSuspension":-1,"engineHealth":833.2,"model":1938131410,"color2":0,"modVanityPlate":-1,"bodyHealth":986.8,"modShifterLeavers":-1,"plateIndex":0,"modPlateHolder":-1,"modTransmission":-1,"modDashboard":-1}', 'Zuiden', 'car', NULL, 1, 0, 833, 987, 95, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 813),
	('19e29fd640d838599595c493ace8e80f1d1ede99', NULL, 'ZYW 918', '{"modFrontBumper":-1,"plateIndex":4,"modSuspension":-1,"wheels":5,"modTrimA":-1,"modSmokeEnabled":false,"tankHealth":1000.0,"modAirFilter":-1,"modEngineBlock":-1,"neonColor":[255,0,255],"modTransmission":-1,"bodyHealth":1000.0,"modTrimB":-1,"modAerials":-1,"modRoof":-1,"doorsBroken":{"5":false,"4":false,"3":false,"2":false,"1":false,"0":false},"modAPlate":-1,"modLivery":-1,"xenonColor":255,"modVanityPlate":-1,"modDoorSpeaker":-1,"modSpoilers":-1,"neonEnabled":[false,false,false,false],"modBackWheels":-1,"modTank":-1,"modGrille":-1,"modArchCover":-1,"engineHealth":1000.0,"color2":0,"modEngine":-1,"modRightFender":-1,"modSideSkirt":-1,"modHood":-1,"tyreSmokeColor":[255,255,255],"modSpeakers":-1,"tyreBurst":{"4":false,"5":false,"1":false,"0":false},"modExhaust":-1,"modLightbar":-1,"plate":"ZYW 918","modBrakes":-1,"modShifterLeavers":-1,"modPlateHolder":-1,"modArmor":-1,"pearlescentColor":0,"modDoorR":-1,"color1":0,"modOrnaments":-1,"modDashboard":-1,"modSteeringWheel":-1,"modXenon":false,"modFrame":-1,"modHorns":-1,"modRearBumper":-1,"modSeats":-1,"modFender":-1,"model":-516616829,"modDial":-1,"extras":[],"modHydrolic":-1,"fuelLevel":65.0,"modFrontWheels":-1,"windowTint":-1,"modTurbo":false,"dirtLevel":5.0,"modTrunk":-1,"modStruts":-1,"windowsBroken":{"7":false,"6":false,"5":true,"4":true,"3":false,"2":false,"1":false,"0":false},"wheelColor":128}', 'Noorden', 'car', NULL, 0, 0, 1000, 1000, 100, NULL, NULL, 0, 0, NULL, 0, '[]', 0, 0, '2023-01-01 10:07:12', 329);

-- Dumping structure for table dulcy_rp.ox_doorlock
CREATE TABLE IF NOT EXISTS `ox_doorlock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.ox_doorlock: ~230 rows (approximately)
INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
	(398, 'ministers-OutsideDoors', '{"doors":false,"coords":{"x":-75.53903198242188,"y":823.4364624023438,"z":230.36837768554688},"maxDistance":2,"state":1,"groups":{"ministers":1},"auto":true,"model":899688483,"heading":10,"doorRate":1}'),
	(399, 'ministers-meetingRoom', '{"doors":false,"coords":{"x":-83.46321868896485,"y":833.1470947265625,"z":228.16937255859376},"hideUi":true,"maxDistance":2,"state":1,"groups":{"ministers":6},"heading":280,"model":1340490605}'),
	(400, 'ministers-Outside', '{"doors":false,"coords":{"x":-75.53903198242188,"y":823.4364624023438,"z":226.7791748046875},"maxDistance":2,"state":1,"groups":{"ministers":1},"auto":true,"model":-1309269811,"heading":10,"doorRate":1}'),
	(401, 'ministers-Secret-MartelKamer', '{"doors":false,"coords":{"x":-92.55339813232422,"y":820.5333251953125,"z":226.575439453125},"hideUi":true,"maxDistance":2,"state":1,"groups":{"ministers":1},"auto":true,"model":-2028162640,"heading":190,"doorRate":2}');

-- Dumping structure for table dulcy_rp.ox_inventory
CREATE TABLE IF NOT EXISTS `ox_inventory` (
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  UNIQUE KEY `owner` (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.ox_inventory: ~176 rows (approximately)
INSERT INTO `ox_inventory` (`owner`, `name`, `data`, `lastupdated`) VALUES
	('4eee243aded98674fc1f3149328efaf60acf38ec', 'policelocker', '[{"name":"WEAPON_NIGHTSTICK","slot":1,"count":1,"metadata":{"durability":97.30000000000014,"components":[]}},{"name":"WEAPON_STUNGUN","slot":2,"count":1,"metadata":{"registered":"Dimitri Pidar","components":[],"serial":"163494ORB190716","durability":100}},{"name":"WEAPON_FLASHLIGHT","slot":3,"count":1,"metadata":{"registered":true,"components":[],"serial":"POL","durability":100}},{"name":"handcuffs","slot":4,"count":1,"metadata":{"type":0}},{"name":"medbag","slot":6,"count":1,"metadata":{"serial":"POL","registered":true}}]', '2023-10-30 17:20:00'),
	('', 'ministers_stash', '[{"count":123,"slot":1,"name":"weed_packed"},{"count":36,"slot":2,"name":"rubber"},{"count":107,"slot":3,"name":"stone"},{"count":96,"slot":4,"name":"rommel"},{"count":314,"slot":5,"name":"weed"},{"count":127,"slot":6,"name":"metaalschroot"},{"count":1,"slot":7,"name":"hack_laptop"},{"count":15,"slot":8,"name":"cocaine_leaf"},{"count":1,"slot":11,"name":"filter"},{"count":5602,"slot":12,"name":"black_money"},{"count":2,"slot":16,"name":"sodium_bicarbonate"},{"count":1,"slot":17,"name":"drug_bag"},{"count":5,"slot":18,"name":"calcium_hydroxide"},{"count":1,"slot":19,"name":"lighter"},{"count":1,"slot":20,"name":"gas_mask"},{"count":1,"slot":21,"name":"kerosene_canister"},{"count":1,"slot":22,"name":"barrel"},{"count":2,"slot":23,"name":"microwave"},{"count":5,"slot":24,"name":"cement_bag"},{"count":2,"slot":25,"name":"grater"}]', '2023-10-30 21:40:00'),
	('facca4c27f468c6d3580e5310f9bf28050920dc1', 'policelocker', '[{"metadata":{"durability":100,"serial":"418837POL882293","registered":"Peter Steelpan","components":[]},"slot":1,"count":1,"name":"WEAPON_STUNGUN"},{"metadata":{"durability":99.8,"serial":"POL","registered":true,"components":[]},"slot":2,"count":1,"name":"WEAPON_NIGHTSTICK"},{"metadata":{"durability":100,"serial":"POL","registered":true,"components":[]},"slot":3,"count":1,"name":"WEAPON_FLASHLIGHT"},{"slot":5,"count":5,"name":"pilon"},{"metadata":{"durability":100,"serial":"311697POL790823","registered":"Kaj Steelpan","components":[]},"slot":6,"count":1,"name":"WEAPON_STUNGUN"},{"metadata":{"registered":true,"serial":"POL"},"slot":10,"count":1,"name":"handcuffs"}]', '2023-10-30 15:45:00'),
	('', 'bag_675432WGI508974', '[{"count":19,"slot":1,"name":"rommel"},{"count":15,"slot":2,"name":"rubber"},{"count":14,"slot":3,"name":"stone"},{"count":18,"slot":4,"name":"metaalschroot"},{"count":17,"slot":5,"name":"weed"}]', '2023-10-30 20:10:00'),
	('', 'bag_461485TGC997231', '[]', '2023-10-30 19:40:00'),
	('cf7e093e2c11690ae6f06e0b538d833c4186912b', 'policelocker', '[{"count":17,"slot":1,"name":"pilon"},{"count":1,"slot":2,"name":"hek"},{"count":1,"metadata":{"dateofbirth":"07/09/2000","description":"Naam: Silvio Sonetti\\nGeslacht: m\\nLengte: 200\\nGeboortedatum: 07/09/2000","sex":"m","height":200,"charactername":"Silvio Sonetti"},"slot":3,"name":"identification"},{"count":4,"slot":4,"name":"repairkit"},{"count":100,"metadata":{"serial":"POL","registered":true},"slot":5,"name":"ammo-9"}]', '2023-10-30 19:40:00'),
	('29918ddbc531cd2ddbf18fc994f6748ea0c2a224', 'Huis2', '[]', '2023-10-30 20:55:00'),
	('e465386e93fc478804e5b4c26076e1e604f17133', 'Huis2', '[]', '2023-10-30 21:30:00');

-- Dumping structure for table dulcy_rp.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dulcy_rp.phone_app_chat: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_backups
CREATE TABLE IF NOT EXISTS `phone_backups` (
  `identifier` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`identifier`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_backups_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_backups: ~107 rows (approximately)
INSERT INTO `phone_backups` (`identifier`, `phone_number`) VALUES
	('29918ddbc531cd2ddbf18fc994f6748ea0c2a224', '0688580433'),
	('1e2c82c7ea9c87d608be018a707f13bc1c12cc04', '0691995768'),
	('c21976adff8fd846e2ade7116dd60520e819b568', '0693864546'),
	('844487cd76cd4ee50ecbf5ff225186fd8f135972', '0694345261'),
	('f8ba3be7aa26a0d313403818253ca3aef34a45c7', '0694580711'),
	('0fbbcfd3063411757932e44f9cb8a34367a343f4', '0696258993'),
	('46f0fc4d8a67a554e703e214b1f2b024be47dd6f', '0697052704'),
	('cf37a64f859760b15161caa66b63b195f6d73254', '0697518979'),
	('99a695609fd65428dd71345dbe5eefbdef4d3d79', '0698933633'),
	('88e46488e13a740fa500d5281aeab643289a70fc', '0699049293');

-- Dumping structure for table dulcy_rp.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Eigenaar nummer',
  `num` varchar(10) NOT NULL COMMENT 'Contactreferentienummer',
  `incoming` int(11) NOT NULL COMMENT 'Inkomende oproep',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Oproep accepteren',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2812 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dulcy_rp.phone_calls: ~2.627 rows (approximately)
INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
	(2808, '0669115169', '0664783090', 1, '2023-10-28 20:47:49', 0),
	(2809, '0664783090', '0669115169', 0, '2023-10-28 20:47:49', 0),
	(2810, '0664783090', '0669115169', 0, '2023-10-28 21:01:19', 0),
	(2811, '0669115169', '0664783090', 1, '2023-10-28 21:01:19', 0);

-- Dumping structure for table dulcy_rp.phone_clock_alarms
CREATE TABLE IF NOT EXISTS `phone_clock_alarms` (
  `id` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `hours` int(2) NOT NULL DEFAULT 0,
  `minutes` int(2) NOT NULL DEFAULT 0,
  `label` varchar(50) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_clock_alarms_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_clock_alarms: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_crypto
CREATE TABLE IF NOT EXISTS `phone_crypto` (
  `identifier` varchar(100) NOT NULL,
  `coin` varchar(15) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `invested` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`,`coin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_crypto: ~90 rows (approximately)
INSERT INTO `phone_crypto` (`identifier`, `coin`, `amount`, `invested`) VALUES
	('fd8b9c221d9b1896499456f0699c6e20281e5267', 'solana', 0, 0);

-- Dumping structure for table dulcy_rp.phone_darkchat_accounts
CREATE TABLE IF NOT EXISTS `phone_darkchat_accounts` (
  `phone_number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_darkchat_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_darkchat_accounts: ~38 rows (approximately)
INSERT INTO `phone_darkchat_accounts` (`phone_number`, `username`) VALUES
	('0605671199', 'SAINTS'),
	('0607617468', 'jy.9713'),
	('0608996455', 'lange'),
	('0610722059', 'korbijn'),
	('0611948111', 'Willem Bond'),
	('0612828144', 'Jan.F'),
	('0615434986', 'Egbert Kaas de ambu'),
	('0617298699', 'Klaas Dekker'),
	('0618624526', 'XDdd'),
	('0620748140', 'Ruben'),
	('0628273962', 'Appie'),
	('0630047170', 'HDC'),
	('0630121470', 'meneerzwart'),
	('0630384159', 'S. Minister.'),
	('0633077193', 'Haan'),
	('0636087287', 'Farao'),
	('0636119357', 'shevano'),
	('0637174603', 'L.Minister.'),
	('0637216600', 'Troy'),
	('0640419601', 'T.Minister.'),
	('0652151954', 'bikelife #01'),
	('0652663031', 'Jaapjan'),
	('0653196530', 'wiet'),
	('0654595037', 'Unkown '),
	('0658799996', 'al_anomous'),
	('0658865981', 'Jente M.'),
	('0663273471', 'Andrew Shelby'),
	('0670034209', 'Delano S '),
	('0674654063', 'Montrez'),
	('0676440555', 'Amin A.'),
	('0676825156', 'wapens'),
	('0677592049', 'LOVER35'),
	('0680843227', 'Rico | Satudarah MC'),
	('0683482535', 'ms13'),
	('0685603521', 'satudarahzaken'),
	('0688580433', 'Adam Dijk'),
	('0693864546', 'annoniem'),
	('0694580711', 'joey_');

-- Dumping structure for table dulcy_rp.phone_darkchat_channels
CREATE TABLE IF NOT EXISTS `phone_darkchat_channels` (
  `name` varchar(50) NOT NULL,
  `last_message` varchar(50) NOT NULL DEFAULT '',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_darkchat_channels: ~13 rows (approximately)
INSERT INTO `phone_darkchat_channels` (`name`, `last_message`, `timestamp`) VALUES
	('Bikelife', 'hoi', '2023-10-30 11:31:00'),
	('BikelifeBB', 'kom porto', '2023-10-31 07:42:27'),
	('brutuskecar', '', '2023-10-29 16:12:08'),
	('CLUB77', '', '2023-10-28 22:36:57'),
	('coke', '', '2023-10-29 13:11:32'),
	('Drugs', '', '2023-10-29 15:13:17'),
	('MS13', 'HEY', '2023-10-30 14:25:11'),
	('PAARS', 'test', '2023-10-28 23:12:15'),
	('peakyzaken', '', '2023-10-29 09:38:45'),
	('SAINTS', 'positief', '2023-10-29 21:21:05'),
	('SatudarahZaken', 'Mes te koop (steen) bieden - 340 steen - 143 metaa', '2023-10-30 19:17:37'),
	('satudarazaken', '', '2023-10-30 10:18:08'),
	('wiet', '', '2023-10-29 13:11:20');

-- Dumping structure for table dulcy_rp.phone_darkchat_members
CREATE TABLE IF NOT EXISTS `phone_darkchat_members` (
  `channel_name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`channel_name`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_darkchat_members: ~37 rows (approximately)
INSERT INTO `phone_darkchat_members` (`channel_name`, `username`) VALUES
	('Bikelife', 'annoniem'),
	('Bikelife', 'Ruben'),
	('BikelifeBB', 'annoniem'),
	('Bikelifebb', 'bikelife #01'),
	('Bikelifebb', 'joey_'),
	('BikelifeBB', 'Ruben'),
	('brutuskecar', 'satudarahzaken'),
	('CLUB77', 'SAINTS'),
	('coke', 'wiet'),
	('drugs', 'annoniem'),
	('MS13', 'Haan'),
	('MS13', 'Klaas Dekker'),
	('MS13', 'ms13'),
	('ms13', 'Willem Bond'),
	('PAARS', 'SAINTS'),
	('paars', 'Troy'),
	('peakyzaken', 'Andrew Shelby'),
	('Saints', 'Haan'),
	('Saints', 'Klaas Dekker'),
	('saints', 'LOVER35'),
	('saints', 'Rico | Satudarah MC'),
	('SAINTS', 'SAINTS'),
	('saints', 'Troy'),
	('sATUDARAHzAKEN', 'Amin A.'),
	('SatudarahZaken', 'Appie'),
	('SatudarahZaken', 'Delano S '),
	('SatudarahZaken', 'Farao'),
	('satudarahzaken', 'Jaapjan'),
	('satudarahzaken', 'Jan.F'),
	('satudarahzaken', 'korbijn'),
	('SatudarahZaken', 'lange'),
	('SatudarahZaken', 'Rico | Satudarah MC'),
	('satudarahzaken', 'satudarahzaken'),
	('satudarahzaken', 'shevano'),
	('satudarazaken', 'korbijn'),
	('wiet', 'annoniem'),
	('wiet', 'wiet');

-- Dumping structure for table dulcy_rp.phone_darkchat_messages
CREATE TABLE IF NOT EXISTS `phone_darkchat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(50) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_darkchat_messages: ~74 rows (approximately)
INSERT INTO `phone_darkchat_messages` (`id`, `channel`, `sender`, `content`, `timestamp`) VALUES
	(1, 'SAINTS', 'SAINTS', 'SSS', '2023-10-28 23:10:18'),
	(2, 'paars', 'Troy', 'test', '2023-10-28 23:12:15'),
	(3, 'Saints', 'Haan', 'Hallo', '2023-10-29 13:44:47'),
	(4, 'saints', 'Rico | Satudarah MC', 'hoi', '2023-10-29 14:28:18'),
	(5, 'SAINTS', 'Haan', 'Waar is iedereen?', '2023-10-29 14:29:55'),
	(6, 'SAINTS', 'Troy', 'satu', '2023-10-29 14:40:07'),
	(7, 'SatudarahZaken', 'Delano S ', '.', '2023-10-29 14:59:37'),
	(8, 'SatudarahZaken', 'Rico | Satudarah MC', 'n', '2023-10-29 14:59:53'),
	(9, 'SatudarahZaken', 'Appie', 'ewa', '2023-10-29 15:00:00'),
	(10, 'SatudarahZaken', 'Appie', 'maak ook een darkchat voor de gang als we achtervolgd worden voor locas ofso rico', '2023-10-29 15:00:22'),
	(11, 'SatudarahZaken', 'Rico | Satudarah MC', 'Ja ga ik doen komt meer info', '2023-10-29 15:00:40'),
	(12, 'SAINTS', 'SAINTS', 'wij zijn opgeroepen door julius wat is er gaande?', '2023-10-29 15:19:49'),
	(13, 'SAINTS', 'Rico | Satudarah MC', 'Schijnbaar scenatio van hoger op', '2023-10-29 15:20:17'),
	(14, 'SatudarahZaken', 'Farao', 'Salam Alaikum', '2023-10-29 18:50:05'),
	(15, 'SatudarahZaken', 'lange', 'yo', '2023-10-29 18:50:17'),
	(16, 'SAINTS', 'SAINTS', 'GRAAG UITKIUJKEN VOOR PEAKY BIJ ZICHT HIER LATEN WETEN', '2023-10-29 19:14:14'),
	(17, 'MS13', 'Klaas Dekker', 'Yo', '2023-10-29 19:20:38'),
	(18, 'SAINTS', 'SAINTS', 'MS13 AANWEZIG?', '2023-10-29 19:31:25'),
	(19, 'SAINTS', 'Haan', 'Ja', '2023-10-29 19:31:41'),
	(20, 'SAINTS', 'SAINTS', 'KAN JE ONS MEETEN IN DE RODE GARAGE', '2023-10-29 19:31:54'),
	(21, 'Saints', 'Klaas Dekker', 'omw', '2023-10-29 19:32:07'),
	(22, 'SAINTS', 'Haan', 'Hoofdletter gebruik', '2023-10-29 19:37:44'),
	(23, 'SAINTS', 'SAINTS', 'WE HEBBEN ER EEN PAAR KNOOPUNT a MINISTERS', '2023-10-29 19:44:28'),
	(24, 'SAINTS', 'SAINTS', 'GRAAG AANKOPPELEN OM TRANSPORT', '2023-10-29 19:44:36'),
	(25, 'SAINTS', 'Rico | Satudarah MC', 'postcode?', '2023-10-29 19:44:55'),
	(26, 'SAINTS', 'SAINTS', 'KNOOPUNT A MIDDENSNELWEG', '2023-10-29 19:45:08'),
	(27, 'ms13', 'Adam Dijk', 'Jo pik', '2023-10-29 19:47:03'),
	(28, 'SAINTS', 'Rico | Satudarah MC', 'WAAR MOET DIE HEEN', '2023-10-29 19:50:32'),
	(29, 'SAINTS', 'SAINTS', 'EVEN BIJ HOUDEN TOT WIJ VRIJ ZIJN', '2023-10-29 19:50:50'),
	(30, 'SAINTS', 'Troy', 'rij even rondjes ', '2023-10-29 19:50:53'),
	(31, 'SAINTS', 'Klaas Dekker', 'ok', '2023-10-29 19:51:01'),
	(32, 'SAINTS', 'SAINTS', 'postcode 6000', '2023-10-29 19:54:53'),
	(33, 'SatudarahZaken', 'Amin A.', 'kom allemaal porto 185', '2023-10-29 19:58:22'),
	(34, 'SatudarahZaken', 'Appie', 'wij zitten in gezamelijke porto amin', '2023-10-29 19:58:42'),
	(35, 'SatudarahZaken', 'Appie', '676', '2023-10-29 19:58:45'),
	(36, 'SAINTS', 'Klaas Dekker', 'Wij staan bij 6070 ', '2023-10-29 20:14:35'),
	(37, 'SAINTS', 'SAINTS', 'tigri ophalen en bevestigen dat we hem hebben', '2023-10-29 20:15:01'),
	(38, 'SAINTS', 'Klaas Dekker', 'opsitief', '2023-10-29 20:15:15'),
	(39, 'SAINTS', 'Klaas Dekker', 'positief', '2023-10-29 20:15:18'),
	(40, 'SAINTS', 'Rico | Satudarah MC', 'Hebben jullie hem?', '2023-10-29 20:16:08'),
	(41, 'SAINTS', 'SAINTS', 'negatief', '2023-10-29 20:16:17'),
	(42, 'SAINTS', 'SAINTS', 'hou zou op die locatie moeten zijn', '2023-10-29 20:16:25'),
	(43, 'SAINTS', 'Klaas Dekker', 'Negatief niet aanwezig', '2023-10-29 20:16:42'),
	(44, 'SAINTS', 'Klaas Dekker', 'Wij starten nu de zoektocht op tigri.', '2023-10-29 20:17:26'),
	(45, 'SAINTS', 'Rico | Satudarah MC', 'POSTCODE 6000 WE HEBBEN HEM', '2023-10-29 20:22:23'),
	(46, 'SAINTS', 'SAINTS', 'KOM MAARLEGERBASIS LAATSTE HANGAR MET HEM', '2023-10-29 20:23:05'),
	(47, 'SAINTS', 'Klaas Dekker', 'Wij hadden de verkeerde persoon.', '2023-10-29 20:25:27'),
	(48, 'SAINTS', 'SAINTS', 'MAG OOK GEBRACHT WORDEN EN VERDER TIGRI ZOEKEN AUB', '2023-10-29 20:25:46'),
	(49, 'SAINTS', 'Klaas Dekker', 'Wij hebben er 1 leveren hem nu nog altijd op zoek naar tigri', '2023-10-29 20:30:22'),
	(50, 'SAINTS', 'SAINTS', 'YES LEVER MAAR EN ZOEK MAAR VERDER', '2023-10-29 20:30:42'),
	(51, 'SAINTS', 'Klaas Dekker', 'Positief', '2023-10-29 20:30:54'),
	(52, 'SAINTS', 'SAINTS', 'STOP DE ZOEKACTIE MAAR kom maar allemaal naar legerbasis en dan komt die naar hier of ze gaan er aan', '2023-10-29 20:37:25'),
	(53, 'SAINTS', 'Klaas Dekker', 'Positief we wachten op ambu ', '2023-10-29 20:37:53'),
	(54, 'SAINTS', 'SAINTS', 'vernomen', '2023-10-29 20:38:03'),
	(55, 'SAINTS', 'Rico | Satudarah MC', 'wE HEBBEN ER NOG 1', '2023-10-29 20:38:04'),
	(56, 'SAINTS', 'Klaas Dekker', 'staan naast legerbasis meneer is uit de auto gevallen', '2023-10-29 20:38:08'),
	(57, 'SAINTS', 'SAINTS', 'vernomen', '2023-10-29 20:38:39'),
	(58, 'SAINTS', 'SAINTS', 'nieuwe meeting point 5009 als je vrij bent', '2023-10-29 20:44:18'),
	(59, 'SAINTS', 'SAINTS', '9264 MEETING POINT', '2023-10-29 20:47:39'),
	(60, 'SAINTS', 'SAINTS', 'rico waar ben je', '2023-10-29 21:13:23'),
	(61, 'SAINTS', 'Rico | Satudarah MC', 'Geef me locatie waar ik heen moet', '2023-10-29 21:13:44'),
	(62, 'SAINTS', 'SAINTS', 'wat er verder gebeurd met ministers licht volledig in hun handen als ze een gesprek aanvragen met jullie laat het ons weten en dan gaan we duidelijker zijn', '2023-10-29 21:19:37'),
	(63, 'SAINTS', 'Klaas Dekker', 'positief', '2023-10-29 21:21:05'),
	(64, 'satudarahzaken', 'korbijn', '.', '2023-10-30 10:18:41'),
	(65, 'satudarahzaken', 'shevano', 'samamalaleikum', '2023-10-30 10:19:16'),
	(66, 'Bikelife', 'annoniem', 'hoi', '2023-10-30 11:31:00'),
	(67, 'MS13', 'ms13', 'HEY', '2023-10-30 14:25:11'),
	(68, 'BikelifeBB', 'annoniem', 'hoi', '2023-10-30 15:28:16'),
	(69, 'Bikelifebb', 'joey_', 'yo', '2023-10-30 15:28:57'),
	(70, 'BikelifeBB', 'Ruben', '<!SENT-LOCATION-X=-36.55Y=-1216.57!>', '2023-10-30 15:29:50'),
	(71, 'SatudarahZaken', 'Amin A.', 'salam', '2023-10-30 16:15:16'),
	(72, 'Bikelifebb', 'bikelife #01', '<!SENT-LOCATION-X=1959.37Y=4971.1!>', '2023-10-30 19:15:49'),
	(73, 'SatudarahZaken', 'Amin A.', 'Mes te koop (steen) bieden - 340 steen - 143 metaal - 200+ rommel - 100+ rubber te koop!!! bieden! ik heb ook 190 coke bladeren te koop', '2023-10-30 19:17:37'),
	(74, 'BikelifeBB', 'annoniem', 'kom porto', '2023-10-31 07:42:27');

-- Dumping structure for table dulcy_rp.phone_instagram_accounts
CREATE TABLE IF NOT EXISTS `phone_instagram_accounts` (
  `display_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` varchar(200) DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `post_count` int(11) NOT NULL DEFAULT 0,
  `story_count` int(11) NOT NULL DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(15) NOT NULL,
  `private` tinyint(1) DEFAULT 0,
  `verified` tinyint(1) DEFAULT 0,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_instagram_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_accounts: ~48 rows (approximately)
INSERT INTO `phone_instagram_accounts` (`display_name`, `username`, `password`, `profile_image`, `bio`, `post_count`, `story_count`, `follower_count`, `following_count`, `phone_number`, `private`, `verified`, `date_joined`) VALUES
	('Ambulance Team Dulcy', '01vandeambu', '$2a$11$CKFqUD4MwZwlOOm34ObJceGRGWPY7YrCt2jqiQM0vVIQLlSwSj5kK', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168165588162580530/file.png', 'Gewoon de 01 van de Ambulance\nMauricee!', 4, 0, 1, 2, '0683734761', 0, 0, '2023-10-29 11:19:11'),
	('Achmed Abdel', 'achi', '$2a$11$NjcDxBKmOOUzpnI.KM7ct.QwAuqhLSAbZ9CcMX7lIb0XX6DGXuySW', NULL, NULL, 0, 0, 0, 0, '0636087287', 0, 0, '2023-10-29 15:35:03'),
	('Ambulance Team Dulcy', 'ambulancedulcy', '$2a$11$GPyRAiLUbgS803.6Ty.r6eGhgh5S/hlYLd7e3Tf6Jfe95251Dklke', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168283589239111811/file.png', 'Gewoon de 01 van de Ambulance\nMauricee!', 0, 0, 1, 0, '0683734761', 0, 0, '2023-10-29 12:31:53'),
	('Amin A.', 'amin2000', '$2a$11$PE8XCVocxBFpdwCg1PYQ6.E8yPeKXUYmrj9D1yzDhzwXWDxQ9WZXK', NULL, NULL, 2, 0, 0, 0, '0676440555', 0, 0, '2023-10-29 21:04:22'),
	('Bart E.', 'b.enormus', '$2a$11$LRPJ0KAeABfZfWKmGoeYlORWaN48.8S04dNFiGinEXFjOgkNT.M0S', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168609450437902457/file.png', 'Hardwerkende Ambulancier in hart en nieren. ', 0, 0, 0, 0, '0634238976', 0, 0, '2023-10-30 17:59:47'),
	('bramm', 'brammm', '$2a$11$/xZz5ZkB23Ml.I/LBtplHer2O/5/D2c9YJoW2bmio3qnJFQstC2vm', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168166960656298054/file.png', 'ambu medewerker ', 1, 0, 1, 1, '0677307049', 0, 0, '2023-10-29 12:33:55'),
	('Diego', 'diego_politie', '$2a$11$/6vLSoFuJ/LVY.H5rBptN..8Czpo5Co2JzHlsI8LmknOwkDYD8T8G', NULL, NULL, 0, 0, 1, 2, '0616173418', 0, 0, '2023-10-29 17:59:37'),
	('Egbert Kaas de ambu', 'egbertkaas', '$2a$11$7.uxXlImbcPkN.Kn46emIOtcm8n.rWDGJ9umA/ARW3ilIUwMYNxp2', NULL, NULL, 0, 0, 1, 1, '0615434986', 0, 0, '2023-10-30 18:57:10'),
	('Emma', 'emma', '$2a$11$9y5e/u21huB11Wi2O5JHqeNDASCRsCmEsG/zinMkNn3s9awdgLvUW', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168189578428031116/file.png', NULL, 1, 0, 7, 2, '0683482535', 0, 0, '2023-10-29 14:08:08'),
	('Glen', 'glen', '$2a$11$YaXrgRtL3l5Dpa4BOGQ5VuoQWMtU7VRJzNujhlYMdqSWIOB7icmdK', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168135150723403816/file.png', NULL, 2, 0, 3, 3, '0677592049', 0, 0, '2023-10-29 10:31:40'),
	('hansdeambu', 'hansdeambu', '$2a$11$vJPXM4UGTJ0YXp7h96bPzOJ687O/UJYQwEBpjfG2808QvRqpPJYpW', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168134895139303444/file.png', 'hier zie je alles van het ambu werk!', 12, 0, 8, 11, '0634239516', 0, 0, '2023-10-29 10:30:20'),
	('Hans Schmidt', 'hansie', '$2a$11$X3h/NUCDxNBCdDduDnjUpOeyFAFkVBMGRoPyVyF9XixMMYUyMIfRa', NULL, NULL, 3, 0, 0, 1, '0697518979', 0, 0, '2023-10-30 19:15:09'),
	('Jan', 'jan.f', '$2a$11$5xMQiyBktxJillsbcteG6OXBu8UT3fgz240k2x5VjopqMGBfSmSeq', NULL, NULL, 0, 0, 0, 0, '0612828144', 0, 0, '2023-10-29 13:06:36'),
	('Jan van jan', 'jannie', '$2a$11$JphcSz/cZPMPQOF.s7wB5OEnYsgpNLVa3gUciKq7JgLnm3pa0YR4y', NULL, NULL, 1, 0, 1, 0, '0665600610', 0, 0, '2023-10-29 14:14:23'),
	('Janssens Moer', 'janssens', '$2a$11$zeZA68Z5ZUMG/2VP/IIMy.Is6dc6bLCzwGjpNGB6xm/T2SkNEdstq', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168132020799553556/file.png', NULL, 0, 0, 0, 0, '0654595037', 0, 0, '2023-10-29 10:26:39'),
	('JULIUS', 'juliusclub77', '$2a$11$Px4w36477.EekzR4nzb5LOWsZLl/kbQx44HfoV.Yg85VBGFpQNCKK', 'https://cdn.discordapp.com/attachments/1161576472994127872/1167962643512967210/file.png', 'ceo club77', 2, 0, 5, 0, '0605671199', 0, 0, '2023-10-28 22:37:37'),
	('jy.9713', 'jy.9713', '$2a$11$d7jOoMXUbIErn/PgqFbWcuy0rNF8kjYluomc8Bd5qYtS0YGgA8dRm', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168339892489683024/file.png', NULL, 3, 0, 4, 4, '0607617468', 0, 0, '2023-10-29 01:13:58'),
	('Kaj', 'kaj.steelpan', '$2a$11$3qKFDNTk5zocDAV8HEv6V.X5wF0K8ULC7AztRbEIS1m4UcI2KgLHC', NULL, NULL, 0, 0, 0, 0, '0660396543', 0, 0, '2023-10-29 14:38:32'),
	('FieldChinger-', 'kvzuid11', '$2a$11$h0fdlRKGDAqW9T98bieTq.hK6lk.TBWuiyXQ9rIeBLVwdRhKLOpLK', NULL, NULL, 2, 1, 3, 5, '0610722059', 0, 0, '2023-10-30 14:43:54'),
	('LingLing', 'lingling', '$2a$11$xAzaPPLytDXGbw4cuha6GOUOGTAsWWmtklcKP8M7R7izwcD5eGvPW', NULL, NULL, 1, 0, 3, 1, '0620996849', 0, 0, '2023-10-29 14:08:07'),
	('Eva', 'lion', '$2a$11$boBk1lZBxEpYbl1fGi5G6uO1krCj13.RUYlUZqGEoyHrQbyYMB5Du', NULL, NULL, 0, 0, 1, 1, '0682609513', 0, 0, '2023-10-29 18:26:41'),
	('Mo Taghi', 'm.97lb', '$2a$11$E4.pmFG6aS2nFKIjFaporunY1c6G0Ygka9sntQI6x61wmelbdxRKW', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168335327346311339/file.png', NULL, 3, 1, 8, 11, '0667751915', 0, 0, '2023-10-29 21:11:31'),
	('Manu', 'manudezwart', '$2a$11$hfHa.78ftpsJDg9MokUhWu.LztOSKVJwhfkTSSKWwSxNZYtBycMT2', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168584739440033963/file.png', '13 me favoriete getal!', 1, 0, 2, 3, '0665935525', 0, 0, '2023-10-30 16:17:10'),
	('MARIO', 'mariom', '$2a$11$kUSvScSZHcTapv4HSFZYSO67SyhOoej/19RLsxTZ4Wg8F5VAhl6xe', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168268775116775495/file.png', NULL, 0, 0, 0, 0, '0652873518', 0, 0, '2023-10-29 20:47:19'),
	('Maxxie', 'maxxie', '$2a$11$53V9duldGNEpvHMKRpy.je6meEn7Vo0v5GXfTXIOFfojKrEBMssyq', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168232413294506005/file.png', 'Eeyy Boys', 1, 0, 0, 1, '0627398746', 0, 0, '2023-10-29 19:52:20'),
	('milan lange', 'milanlange', '$2a$11$8w.t0wXP7zYDDba5CGFNVukSFiwiSpvVmcfi6lpmwT/cYkJt0Ou0a', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168147339303723079/file.png', NULL, 2, 0, 3, 3, '0608996455', 0, 0, '2023-10-29 10:14:24'),
	('MENEER ZWART ', 'mmeneerzwart', '$2a$11$n62.7AqOzX85E.XxXqVqne7pmalRcpBzOFHA7KVaUUSUAY13Xgsj2', 'https://cdn.discordapp.com/attachments/1161576472994127872/1167955219515183235/file.png', 'jij weet niet wie ik ben \n', 1, 0, 0, 2, '0630121470', 0, 0, '2023-10-30 15:42:32'),
	('Montrez Santos', 'montrzs', '$2a$11$vjj1CC6BRGstgVZwQ/Fceu.ILwCPdYBgV/ibrF1qxfMQ/is99yS4m', NULL, NULL, 0, 0, 0, 0, '0674654063', 0, 0, '2023-10-30 20:37:54'),
	('BRUTUSKE', 'mr-satestokje', '$2a$11$xDoNfCpTr7UmK7quzS38fOmwK1DpXMIDPsvE9vqOGWTeOjZjmchY2', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168556615457329192/file.png', NULL, 3, 0, 4, 4, '0685603521', 0, 0, '2023-10-29 06:52:10'),
	('Naomi', 'naomi030', '$2a$11$UoSqnV45ckR1/8HjMqRFSet7aMzAQg.quF/RwysWGD/DyBo615qnC', NULL, NULL, 0, 0, 0, 0, '0609836007', 0, 0, '2023-10-29 15:07:48'),
	('neus', 'neus', '$2a$11$IAX5h.NnVAFP7j0ZAQ7IUuZUibFzV0GTH4XzdmcNnauM25rtsuv4G', NULL, NULL, 0, 0, 6, 6, '0668188200', 0, 0, '2023-10-29 18:04:52'),
	('olafdebrolaf', 'olafdebrolaf', '$2a$11$2QApAAD/Y/glQjx3Vd3fq.A5aMU6TIkt9ry93s41jXclrdlwIIB2.', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168165918329810984/file.png', NULL, 1, 0, 2, 1, '0651779209', 0, 0, '2023-10-29 12:36:06'),
	('Opie OneKnoopie', 'opie_og', '$2a$11$qi1.brrGHfAXhKcIhcFwtOmAFptSYg/ucIMeJZQ0WU7sR5Kl5Dq8m', NULL, NULL, 0, 0, 0, 0, '0676334728', 0, 0, '2023-10-30 13:48:40'),
	('pep', 'pephartgring', '$2a$11$QrR4YF9ByDjX7v/a0OQHk.VWmJjotGPR02KGZQwRfj14rgGJMrgcq', NULL, NULL, 0, 0, 0, 0, '0662317966', 0, 0, '2023-10-29 20:41:04'),
	('Peter Steelpan', 'peters', '$2a$11$619JD5tFersQZok3tfpE2.JFt0Rfra4EiYc/f/zv8PzLLPztBiLca', 'https://cdn.discordapp.com/attachments/1161576472994127872/1167961723697889352/file.png', NULL, 0, 0, 0, 0, '0601191246', 0, 0, '2023-10-28 23:01:11'),
	('Mason', 'politie_dulcy', '$2a$11$.TY54KqWKjmVXxA3kn8sV.ZdzaA5SVr.2HBPG2l69IrveGMvlxmau', NULL, NULL, 0, 0, 0, 0, '0647978429', 0, 0, '2023-10-29 12:19:16'),
	('Rico | Satudarah MC', 'rico', '$2a$11$4ndGih1.KQ52t64tPhXHKOorypVsl3ieOl0pCRzo2OUUtexkbfe7u', NULL, NULL, 0, 0, 0, 0, '0680843227', 0, 0, '2023-10-30 11:20:31'),
	('ricodomingo', 'ricodomingo', '$2a$11$clr33qbUPR6Mp2aZ6I5MkOjhF1TZqo5FpFqsWIqvUTuo10tv69IY.', NULL, NULL, 0, 0, 0, 0, '0605673646', 0, 0, '2023-10-31 07:35:01'),
	('sevn', 'sevn209', '$2a$11$EhdGW69wsVJ47VGM7J/nDO2rxG5mG7GqTOGh2tm9I4sKCmPURb83O', NULL, NULL, 1, 0, 2, 2, '0699049293', 0, 0, '2023-10-29 01:55:18'),
	('shevano', 'shevano', '$2a$11$xZGXUSM7thS/NHZBVNcq0OWfO84GYmc2bjgpj1pUasw6oHt6LeXSu', NULL, NULL, 0, 0, 2, 2, '0636119357', 0, 0, '2023-10-30 15:33:29'),
	('altan', 'son', '$2a$11$b9p39y9NHH8z27NVNlrPVeOJITaXEmRDWtAsMqqupvJbSYNtFw2YW', NULL, NULL, 0, 0, 0, 0, '0658799996', 0, 0, '2023-10-29 11:37:28'),
	('Stijn M.', 'stijnm.', '$2a$11$pBZDz2eW0mk.oyDxoE5mze7KqIKw.cEdA4rc4AV3/60V1kwNSPLfa', NULL, NULL, 0, 0, 0, 0, '0630384159', 0, 0, '2023-10-29 23:16:21'),
	('thy', 't.minister', '$2a$11$DntxNbnWJ74z6Mkmm007ze4RmWxqUdyUf8g8NJlrLVJR6mXA9Dy/S', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168268969518583828/file.png', NULL, 0, 0, 1, 1, '0640419601', 0, 0, '2023-10-29 16:04:16'),
	('Haki', 'taki', '$2a$11$qHKiHskVQk4Mvd1vUMtavuAUckda22sjVsIcwo0fxHZ2428WSeZQu', NULL, NULL, 0, 0, 0, 0, '0698933633', 0, 0, '2023-10-30 20:27:34'),
	('Tigri', 'tigri.m', '$2a$11$/49.B2SxVWrcMrH45knb6.aIr5C.9DDKzIKLfc77A0W26FBlrXx7C', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168269330945941564/file.png', 'come catch me.', 1, 0, 3, 3, '0605282895', 0, 0, '2023-10-29 19:17:17'),
	('Tony Taghi', 'tonytaghi', '$2a$11$sVyofU6I4L/Gw/wcH175OuLsuDCFBbHTwcY2aE8Z50EzureQmPNNi', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168218511143866469/file.png', NULL, 0, 0, 1, 1, '0694345261', 0, 0, '2023-10-30 20:20:15'),
	('CLUB77', 'troyclub77', '$2a$11$muabqbki4NnqkXo6PDa7KeGGZqPME9CiZ1K6eQt6R1Zz7d/jbcjti', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168136895922970704/file.png', 'CLUB 77 the best in town ', 0, 0, 0, 0, '0637216600', 0, 0, '2023-10-29 10:35:31'),
	('Willem hunk', 'willemhunk', '$2a$11$pqETGf05PlCilbrt04TFf.l5V4OA/dnhlNft3jZ.sPtX.iw9gOOyi', NULL, NULL, 1, 1, 0, 0, '0623283668', 0, 0, '2023-10-30 22:07:09');

-- Dumping structure for table dulcy_rp.phone_instagram_comments
CREATE TABLE IF NOT EXISTS `phone_instagram_comments` (
  `id` varchar(10) NOT NULL,
  `post_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` varchar(500) NOT NULL DEFAULT '',
  `like_count` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `phone_instagram_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_instagram_comments_ibfk_2` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_comments: ~11 rows (approximately)
INSERT INTO `phone_instagram_comments` (`id`, `post_id`, `username`, `comment`, `like_count`, `timestamp`) VALUES
	('1558g', '3fu83', 't.minister', 'mooie autos man ', 0, '2023-10-29 21:55:10'),
	('17h28', '918yO', 'mmeneerzwart', 'HEEY SEXY', 0, '2023-10-30 16:19:23'),
	('18583', 'D27T5', 'sevn209', '100', 1, '2023-10-30 16:19:46'),
	('3Xu5v', '918yO', 'mmeneerzwart', 'emmmaaaaa', 0, '2023-10-30 21:25:42'),
	('4Szd7', 'Jt79U', 'tigri.m', 'hans on top!', 0, '2023-10-30 18:48:07'),
	('65SGb', '621Tn', 'tigri.m', 'Vuur!', 0, '2023-10-29 19:37:58'),
	('8w8G1', 'sazkR', 'manudezwart', 'Hot mannetje', 0, '2023-10-30 16:20:02'),
	('aLMu7', 'd5Cor', 'milanlange', 'haha', 0, '2023-10-30 18:35:32'),
	('e386N', '6gSNJ', 'jannie', 'Zo Zo zakenman!', 0, '2023-10-30 19:20:43'),
	('r8134', 'r1V55', 'emma', 'LIEFF', 1, '2023-10-30 14:39:49'),
	('xO562', '918yO', 'mr-satestokje', 'mijn liefste', 1, '2023-10-30 14:48:57');

-- Dumping structure for table dulcy_rp.phone_instagram_follows
CREATE TABLE IF NOT EXISTS `phone_instagram_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_instagram_follows_ibfk_1` FOREIGN KEY (`followed`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_follows_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_follows: ~74 rows (approximately)
INSERT INTO `phone_instagram_follows` (`followed`, `follower`) VALUES
	('hansdeambu', '01vandeambu'),
	('m.97lb', '01vandeambu'),
	('hansdeambu', 'brammm'),
	('emma', 'diego_politie'),
	('hansdeambu', 'diego_politie'),
	('hansdeambu', 'egbertkaas'),
	('m.97lb', 'emma'),
	('mr-satestokje', 'emma'),
	('emma', 'glen'),
	('juliusclub77', 'glen'),
	('lingling', 'glen'),
	('01vandeambu', 'hansdeambu'),
	('brammm', 'hansdeambu'),
	('diego_politie', 'hansdeambu'),
	('egbertkaas', 'hansdeambu'),
	('emma', 'hansdeambu'),
	('glen', 'hansdeambu'),
	('lion', 'hansdeambu'),
	('milanlange', 'hansdeambu'),
	('neus', 'hansdeambu'),
	('olafdebrolaf', 'hansdeambu'),
	('tigri.m', 'hansdeambu'),
	('jannie', 'hansie'),
	('kvzuid11', 'jy.9713'),
	('m.97lb', 'jy.9713'),
	('neus', 'jy.9713'),
	('sevn209', 'jy.9713'),
	('ambulancedulcy', 'kvzuid11'),
	('glen', 'kvzuid11'),
	('jy.9713', 'kvzuid11'),
	('m.97lb', 'kvzuid11'),
	('shevano', 'kvzuid11'),
	('neus', 'lingling'),
	('hansdeambu', 'lion'),
	('emma', 'm.97lb'),
	('juliusclub77', 'm.97lb'),
	('jy.9713', 'm.97lb'),
	('kvzuid11', 'm.97lb'),
	('lingling', 'm.97lb'),
	('manudezwart', 'm.97lb'),
	('mr-satestokje', 'm.97lb'),
	('neus', 'm.97lb'),
	('shevano', 'm.97lb'),
	('tigri.m', 'm.97lb'),
	('tonytaghi', 'm.97lb'),
	('juliusclub77', 'manudezwart'),
	('m.97lb', 'manudezwart'),
	('sevn209', 'manudezwart'),
	('milanlange', 'maxxie'),
	('glen', 'milanlange'),
	('hansdeambu', 'milanlange'),
	('mr-satestokje', 'milanlange'),
	('emma', 'mmeneerzwart'),
	('neus', 'mmeneerzwart'),
	('emma', 'mr-satestokje'),
	('m.97lb', 'mr-satestokje'),
	('milanlange', 'mr-satestokje'),
	('neus', 'mr-satestokje'),
	('emma', 'neus'),
	('hansdeambu', 'neus'),
	('juliusclub77', 'neus'),
	('jy.9713', 'neus'),
	('lingling', 'neus'),
	('mr-satestokje', 'neus'),
	('juliusclub77', 'olafdebrolaf'),
	('jy.9713', 'sevn209'),
	('manudezwart', 'sevn209'),
	('kvzuid11', 'shevano'),
	('m.97lb', 'shevano'),
	('tigri.m', 't.minister'),
	('hansdeambu', 'tigri.m'),
	('olafdebrolaf', 'tigri.m'),
	('t.minister', 'tigri.m'),
	('m.97lb', 'tonytaghi');

-- Dumping structure for table dulcy_rp.phone_instagram_follow_requests
CREATE TABLE IF NOT EXISTS `phone_instagram_follow_requests` (
  `requester` varchar(20) NOT NULL,
  `requestee` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`requester`,`requestee`),
  KEY `requestee` (`requestee`),
  CONSTRAINT `phone_instagram_follow_requests_ibfk_1` FOREIGN KEY (`requester`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_follow_requests_ibfk_2` FOREIGN KEY (`requestee`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_follow_requests: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_instagram_likes
CREATE TABLE IF NOT EXISTS `phone_instagram_likes` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `is_comment` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_likes: ~63 rows (approximately)
INSERT INTO `phone_instagram_likes` (`id`, `username`, `is_comment`) VALUES
	('18583', 'manudezwart', 1),
	('1y2sX', 'juliusclub77', 0),
	('1y2sX', 'm.97lb', 0),
	('1y2sX', 'milanlange', 0),
	('1y2sX', 'olafdebrolaf', 0),
	('27A6h', 'hansdeambu', 0),
	('2M84P', 'glen', 0),
	('2M84P', 'hansdeambu', 0),
	('2M84P', 'troyclub77', 0),
	('3F9j9', 'willemhunk', 0),
	('3fu83', 'hansdeambu', 0),
	('3fu83', 't.minister', 0),
	('3fu83', 'tigri.m', 0),
	('621Tn', 'hansdeambu', 0),
	('621Tn', 'tigri.m', 0),
	('6gSNJ', 'jannie', 0),
	('722Ko', 'olafdebrolaf', 0),
	('782v3', 'm.97lb', 0),
	('918yO', 'emma', 0),
	('918yO', 'glen', 0),
	('918yO', 'hansdeambu', 0),
	('918yO', 'mr-satestokje', 0),
	('92Jac', 'glen', 0),
	('92Jac', 'milanlange', 0),
	('98r1V', 'hansdeambu', 0),
	('98r1V', 'milanlange', 0),
	('9b253', 'milanlange', 0),
	('ci598', 'hansdeambu', 0),
	('D27T5', 'manudezwart', 0),
	('D27T5', 'sevn209', 0),
	('d5Cor', 'glen', 0),
	('d5Cor', 'hansdeambu', 0),
	('d5Cor', 'milanlange', 0),
	('d5Cor', 'rico', 0),
	('g7m8U', 'emma', 0),
	('g7m8U', 'milanlange', 0),
	('G9duX', 'milanlange', 0),
	('H842k', 'm.97lb', 0),
	('H842k', 'tonytaghi', 0),
	('Jt79U', 'tigri.m', 0),
	('KW5Zv', 'milanlange', 0),
	('l4236', 'milanlange', 0),
	('lX7f3', 'emma', 0),
	('lX7f3', 'milanlange', 0),
	('ob22q', 'lingling', 0),
	('otA84', 'hansdeambu', 0),
	('otA84', 'milanlange', 0),
	('P5412', 'm.97lb', 0),
	('P66GD', 'hansdeambu', 0),
	('PY1aL', 'milanlange', 0),
	('Q7888', 'maxxie', 0),
	('QB959', '01vandeambu', 0),
	('QB959', 'hansdeambu', 0),
	('r1V55', 'emma', 0),
	('r1V55', 'milanlange', 0),
	('r57k8', 'maxxie', 0),
	('r8134', 'mr-satestokje', 1),
	('sazkR', 'manudezwart', 0),
	('sm7jE', 'm.97lb', 0),
	('UR938', 'glen', 0),
	('UR938', 'hansdeambu', 0),
	('UR938', 'milanlange', 0),
	('xO562', 'mr-satestokje', 1);

-- Dumping structure for table dulcy_rp.phone_instagram_loggedin
CREATE TABLE IF NOT EXISTS `phone_instagram_loggedin` (
  `phone_number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`phone_number`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_loggedin_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_loggedin_ibfk_2` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_loggedin: ~46 rows (approximately)
INSERT INTO `phone_instagram_loggedin` (`phone_number`, `username`) VALUES
	('0683734761', '01vandeambu'),
	('0636087287', 'achi'),
	('0676440555', 'amin2000'),
	('0634238976', 'b.enormus'),
	('0677307049', 'brammm'),
	('0616173418', 'diego_politie'),
	('0615434986', 'egbertkaas'),
	('0683482535', 'emma'),
	('0677592049', 'glen'),
	('0634239516', 'hansdeambu'),
	('0697518979', 'hansie'),
	('0612828144', 'jan.f'),
	('0665600610', 'jannie'),
	('0654595037', 'janssens'),
	('0605671199', 'juliusclub77'),
	('0607617468', 'jy.9713'),
	('0660396543', 'kaj.steelpan'),
	('0610722059', 'kvzuid11'),
	('0620996849', 'lingling'),
	('0682609513', 'lion'),
	('0667751915', 'm.97lb'),
	('0665935525', 'manudezwart'),
	('0652873518', 'mariom'),
	('0627398746', 'maxxie'),
	('0608996455', 'milanlange'),
	('0630121470', 'mmeneerzwart'),
	('0674654063', 'montrzs'),
	('0685603521', 'mr-satestokje'),
	('0609836007', 'naomi030'),
	('0668188200', 'neus'),
	('0651779209', 'olafdebrolaf'),
	('0676334728', 'opie_og'),
	('0601191246', 'peters'),
	('0647978429', 'politie_dulcy'),
	('0680843227', 'rico'),
	('0605673646', 'ricodomingo'),
	('0699049293', 'sevn209'),
	('0636119357', 'shevano'),
	('0658799996', 'son'),
	('0630384159', 'stijnm.'),
	('0640419601', 't.minister'),
	('0698933633', 'taki'),
	('0605282895', 'tigri.m'),
	('0694345261', 'tonytaghi'),
	('0637216600', 'troyclub77'),
	('0623283668', 'willemhunk');

-- Dumping structure for table dulcy_rp.phone_instagram_messages
CREATE TABLE IF NOT EXISTS `phone_instagram_messages` (
  `id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_instagram_messages_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_messages_ibfk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_messages: ~16 rows (approximately)
INSERT INTO `phone_instagram_messages` (`id`, `sender`, `recipient`, `content`, `attachments`, `timestamp`) VALUES
	('1GTTn', 'diego_politie', 'emma', 'hey emma', NULL, '2023-10-29 19:42:10'),
	('23fLB', 'emma', 'mr-satestokje', 'JA KAN WEL', NULL, '2023-10-29 16:21:12'),
	('37Z7O', 'mr-satestokje', 'emma', 'ben je aant werk nu', NULL, '2023-10-29 16:21:31'),
	('3q198', 'mr-satestokje', 'emma', 'oke kom wel ff broodje brengen:D', NULL, '2023-10-29 16:21:54'),
	('3xG68', 'hansdeambu', 'emma', 'voor taan niet meer steken he ', NULL, '2023-10-30 11:56:22'),
	('4L1J4', 'mr-satestokje', 'emma', ':D', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168560748071493633/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168556615457329192/file.png"]', '2023-10-30 15:02:44'),
	('68d3f', 'lingling', 'neus', 'whadeh neus enzo', NULL, '2023-10-29 19:56:17'),
	('6ykJI', 'mr-satestokje', 'emma', 'als er ooit wat is of wilt chillen weet me te vinden altyd gezellig', NULL, '2023-10-29 16:17:00'),
	('8qWc8', 'mr-satestokje', 'emma', 'mooie emma maak er wat leuks van in de stad', NULL, '2023-10-29 16:16:06'),
	('A2286', 'emma', 'mr-satestokje', 'hahaha dankje', NULL, '2023-10-29 16:16:28'),
	('B3Bo6', 'emma', 'mr-satestokje', 'ja', NULL, '2023-10-29 16:19:50'),
	('D1756', 'hansdeambu', 'emma', 'ik ben gelukkig net niet geraakt in een orgaan of iets', NULL, '2023-10-30 11:56:35'),
	('iAujn', 'emma', 'mr-satestokje', 'isg', NULL, '2023-10-29 16:17:17'),
	('pzh13', 'mr-satestokje', 'emma', 'wel doewn he', NULL, '2023-10-29 16:19:39'),
	('sUW71', 'mr-satestokje', 'emma', ':D kunne van de week wle ff gaan chillen ', NULL, '2023-10-29 16:20:47'),
	('Yo33y', 'emma', 'mr-satestokje', 'ja', NULL, '2023-10-29 16:21:41');

-- Dumping structure for table dulcy_rp.phone_instagram_notifications
CREATE TABLE IF NOT EXISTS `phone_instagram_notifications` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `post_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  CONSTRAINT `phone_instagram_notifications_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_notifications_ibfk_2` FOREIGN KEY (`from`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_notifications: ~134 rows (approximately)
INSERT INTO `phone_instagram_notifications` (`id`, `username`, `from`, `type`, `post_id`, `timestamp`) VALUES
	('15X44', 'ambulancedulcy', 'kvzuid11', 'follow', NULL, '2023-10-30 15:33:20'),
	('19d66', 'm.97lb', 'manudezwart', 'follow', NULL, '2023-10-30 20:19:34'),
	('1Biw2', 'tigri.m', 't.minister', 'comment', '1558g', '2023-10-29 21:55:10'),
	('1FXi7', 'mr-satestokje', 'milanlange', 'like_photo', 'g7m8U', '2023-10-29 16:23:26'),
	('2317J', 'sevn209', 'manudezwart', 'comment', '8w8G1', '2023-10-30 16:20:02'),
	('266N7', 'shevano', 'kvzuid11', 'follow', NULL, '2023-10-30 15:34:18'),
	('26n7k', 'juliusclub77', 'jy.9713', 'follow', NULL, '2023-10-29 01:51:46'),
	('2H6ri', 'emma', 'mr-satestokje', 'like_photo', '918yO', '2023-10-29 17:13:28'),
	('2LZy5', 'sevn209', 'manudezwart', 'follow', NULL, '2023-10-30 16:17:32'),
	('2S432', 'emma', 'mr-satestokje', 'comment', 'xO562', '2023-10-30 14:48:57'),
	('32elC', 'hansdeambu', 'egbertkaas', 'follow', NULL, '2023-10-30 18:57:29'),
	('33242', 'neus', 'mr-satestokje', 'follow', NULL, '2023-10-30 15:02:12'),
	('356IE', 'hansdeambu', 'tigri.m', 'like_photo', 'Jt79U', '2023-10-30 18:48:00'),
	('35777', 'olafdebrolaf', 'hansdeambu', 'like_photo', '621Tn', '2023-10-29 13:45:34'),
	('35p56', 'glen', 'kvzuid11', 'follow', NULL, '2023-10-30 15:33:24'),
	('3838n', 'brammm', 'hansdeambu', 'follow', NULL, '2023-10-29 12:38:22'),
	('38F1p', 'manudezwart', 'sevn209', 'comment', '18583', '2023-10-30 16:19:46'),
	('3mmT7', 'manudezwart', 'm.97lb', 'follow', NULL, '2023-10-30 20:20:51'),
	('3R6R3', 'kvzuid11', 'jy.9713', 'follow', NULL, '2023-10-30 17:13:40'),
	('3vRt6', 'emma', 'mr-satestokje', 'like_comment', 'r8134', '2023-10-30 14:40:37'),
	('41crt', 'm.97lb', 'mr-satestokje', 'follow', NULL, '2023-10-30 15:29:18'),
	('42258', 'juliusclub77', 'neus', 'follow', NULL, '2023-10-29 18:06:36'),
	('447lU', 'mr-satestokje', 'emma', 'follow', NULL, '2023-10-29 16:09:35'),
	('45a66', 'neus', 'm.97lb', 'follow', NULL, '2023-10-29 23:55:41'),
	('474m6', 't.minister', 'tigri.m', 'follow', NULL, '2023-10-30 18:47:51'),
	('48Z2r', 'olafdebrolaf', 'tigri.m', 'follow', NULL, '2023-10-29 19:37:48'),
	('4ch83', 'glen', 'hansdeambu', 'follow', NULL, '2023-10-29 10:35:04'),
	('4GIfO', 'brammm', 'hansdeambu', 'like_photo', '27A6h', '2023-10-29 13:01:54'),
	('4K84e', 'hansdeambu', 'milanlange', 'like_photo', '98r1V', '2023-10-29 14:07:46'),
	('4mXf5', 'mr-satestokje', 'milanlange', 'like_photo', 'lX7f3', '2023-10-30 18:36:19'),
	('522j8', 'hansdeambu', 'lion', 'follow', NULL, '2023-10-29 18:27:01'),
	('532ha', 'juliusclub77', 'manudezwart', 'follow', NULL, '2023-10-30 20:20:23'),
	('537q2', 'mr-satestokje', 'neus', 'follow', NULL, '2023-10-29 18:06:59'),
	('53A9k', 'jannie', 'hansie', 'follow', NULL, '2023-10-30 19:21:09'),
	('53E2g', 'hansdeambu', 'milanlange', 'like_photo', 'l4236', '2023-10-30 18:36:26'),
	('549IO', 'kvzuid11', 'shevano', 'follow', NULL, '2023-10-30 15:34:11'),
	('5g33Q', '01vandeambu', 'hansdeambu', 'follow', NULL, '2023-10-29 11:24:21'),
	('5O9n6', 'hansdeambu', 'tigri.m', 'follow', NULL, '2023-10-30 18:47:58'),
	('5y5jY', 'emma', 'hansdeambu', 'follow', NULL, '2023-10-29 14:12:20'),
	('64I38', 'm.97lb', 'tonytaghi', 'follow', NULL, '2023-10-30 20:20:27'),
	('66zI8', '01vandeambu', 'hansdeambu', 'like_photo', 'QB959', '2023-10-29 11:25:11'),
	('6J918', 'hansdeambu', 'glen', 'like_photo', '92Jac', '2023-10-29 10:35:01'),
	('6zRCz', 'mr-satestokje', 'emma', 'comment', 'r8134', '2023-10-30 14:39:49'),
	('77q4C', 'glen', 'troyclub77', 'like_photo', '2M84P', '2023-10-29 10:45:28'),
	('795ap', 'neus', 'lingling', 'follow', NULL, '2023-10-29 19:56:23'),
	('79811', 'hansdeambu', 'milanlange', 'like_photo', 'PY1aL', '2023-10-30 18:36:04'),
	('7B5U7', 'olafdebrolaf', 'tigri.m', 'comment', '65SGb', '2023-10-29 19:37:58'),
	('7GShk', 'emma', 'mr-satestokje', 'follow', NULL, '2023-10-29 16:09:20'),
	('7Gub2', 'm.97lb', '01vandeambu', 'follow', NULL, '2023-10-30 20:29:58'),
	('7M7kD', 'tigri.m', 'm.97lb', 'follow', NULL, '2023-10-30 20:16:29'),
	('7yqxj', 'm.97lb', 'kvzuid11', 'follow', NULL, '2023-10-30 15:36:52'),
	('82AWa', 'hansdeambu', 'milanlange', 'comment', 'aLMu7', '2023-10-30 18:35:32'),
	('83p74', 'sevn209', 'manudezwart', 'like_comment', '18583', '2023-10-30 16:19:51'),
	('87956', 'lingling', 'm.97lb', 'follow', NULL, '2023-10-29 23:55:50'),
	('88n2L', 'juliusclub77', 'glen', 'follow', NULL, '2023-10-29 17:31:03'),
	('88Zid', 'tigri.m', 't.minister', 'like_photo', '3fu83', '2023-10-29 21:54:34'),
	('8Cq21', 'glen', 'milanlange', 'follow', NULL, '2023-10-29 11:02:00'),
	('8id98', 'lingling', 'glen', 'follow', NULL, '2023-10-30 11:21:32'),
	('8yZ69', 'sevn209', 'manudezwart', 'like_photo', 'sazkR', '2023-10-30 16:17:35'),
	('93xx1', 'tonytaghi', 'm.97lb', 'follow', NULL, '2023-10-30 20:20:49'),
	('94569', 'emma', 'glen', 'follow', NULL, '2023-10-30 11:21:40'),
	('94S61', 'juliusclub77', 'm.97lb', 'like_photo', '1y2sX', '2023-10-30 00:10:02'),
	('9DsJ3', 'milanlange', 'maxxie', 'follow', NULL, '2023-10-30 17:49:35'),
	('9LVq4', 'jy.9713', 'neus', 'follow', NULL, '2023-10-29 18:06:40'),
	('9q766', 'emma', 'glen', 'like_photo', '918yO', '2023-10-30 11:22:16'),
	('9r9Sg', 'manudezwart', 'sevn209', 'like_photo', 'D27T5', '2023-10-30 16:19:26'),
	('9X99k', 'tigri.m', 'hansdeambu', 'like_photo', '3fu83', '2023-10-30 12:05:09'),
	('b66MM', 'shevano', 'm.97lb', 'follow', NULL, '2023-10-30 15:44:10'),
	('bdqs4', 'hansdeambu', 'milanlange', 'like_photo', '9b253', '2023-10-29 10:51:56'),
	('Ct7W4', 'lingling', 'neus', 'follow', NULL, '2023-10-29 18:06:43'),
	('Cvw96', 'hansdeambu', 'neus', 'follow', NULL, '2023-10-29 18:06:54'),
	('Cz9nh', 'sevn209', 'jy.9713', 'follow', NULL, '2023-10-29 02:00:48'),
	('di4w1', 'emma', 'diego_politie', 'follow', NULL, '2023-10-29 17:59:55'),
	('e4NZ5', 'm.97lb', 'emma', 'follow', NULL, '2023-10-30 15:29:21'),
	('EyG57', 'hansdeambu', 'glen', 'follow', NULL, '2023-10-29 10:34:57'),
	('f1b44', 'hansie', 'jannie', 'comment', 'e386N', '2023-10-30 19:20:43'),
	('f98s8', 'mr-satestokje', 'emma', 'like_photo', 'lX7f3', '2023-10-29 17:13:31'),
	('FGH84', 'glen', 'hansdeambu', 'like_photo', '2M84P', '2023-10-29 10:39:30'),
	('FZ614', 'emma', 'mmeneerzwart', 'follow', NULL, '2023-10-30 15:45:25'),
	('g67bE', 'jy.9713', 'm.97lb', 'follow', NULL, '2023-10-29 23:55:37'),
	('g74ut', 'hansdeambu', 'brammm', 'follow', NULL, '2023-10-29 12:38:04'),
	('GX931', 'hansdeambu', 'tigri.m', 'comment', '4Szd7', '2023-10-30 18:48:07'),
	('Hi683', 'emma', 'mmeneerzwart', 'comment', '3Xu5v', '2023-10-30 21:25:42'),
	('hq3FH', 'juliusclub77', 'milanlange', 'like_photo', '1y2sX', '2023-10-29 11:02:24'),
	('hZ429', 'olafdebrolaf', 'tigri.m', 'like_photo', '621Tn', '2023-10-29 19:37:50'),
	('I3125', '01vandeambu', 'hansdeambu', 'like_photo', 'P66GD', '2023-10-29 12:37:50'),
	('IAKj3', 'hansdeambu', 'milanlange', 'follow', NULL, '2023-10-29 10:37:16'),
	('J8B18', 'diego_politie', 'hansdeambu', 'follow', NULL, '2023-10-29 18:03:35'),
	('Jj4EE', 'tigri.m', 'hansdeambu', 'follow', NULL, '2023-10-30 11:21:46'),
	('JuzIV', 'emma', 'olafdebrolaf', 'follow', NULL, '2023-10-29 19:59:45'),
	('jwD3h', 'hansdeambu', 'diego_politie', 'follow', NULL, '2023-10-29 17:59:49'),
	('k2a8r', 'jy.9713', 'sevn209', 'follow', NULL, '2023-10-30 16:18:40'),
	('K696q', 'olafdebrolaf', 'hansdeambu', 'follow', NULL, '2023-10-29 13:02:10'),
	('K74b3', 'glen', 'hansdeambu', 'like_photo', 'UR938', '2023-10-29 11:01:03'),
	('k8GRQ', 'jy.9713', 'm.97lb', 'like_photo', 'P5412', '2023-10-30 00:09:57'),
	('k9589', 'milanlange', 'maxxie', 'like_photo', 'Q7888', '2023-10-30 17:49:33'),
	('KWhw9', 'hansdeambu', 'glen', 'like_photo', 'd5Cor', '2023-10-30 11:19:25'),
	('LIt9D', 'manudezwart', 'sevn209', 'follow', NULL, '2023-10-30 16:18:38'),
	('lv4jj', 'hansdeambu', 'milanlange', 'like_photo', '92Jac', '2023-10-29 10:37:22'),
	('mDf2Q', 'emma', 'neus', 'follow', NULL, '2023-10-29 18:06:50'),
	('mjqKh', 'hansdeambu', 'milanlange', 'like_photo', 'd5Cor', '2023-10-30 18:35:16'),
	('mM472', 'milanlange', 'hansdeambu', 'follow', NULL, '2023-10-29 14:07:37'),
	('Mq927', 'glen', 'milanlange', 'like_photo', 'UR938', '2023-10-29 11:01:57'),
	('N4E23', 'hansdeambu', 'rico', 'like_photo', 'd5Cor', '2023-10-30 11:20:56'),
	('o23D1', 'emma', 'm.97lb', 'follow', NULL, '2023-10-30 15:29:32'),
	('o2498', 'm.97lb', 'shevano', 'follow', NULL, '2023-10-30 15:36:41'),
	('O5rnh', 'mr-satestokje', 'milanlange', 'follow', NULL, '2023-10-29 10:52:08'),
	('P3349', 'mr-satestokje', 'emma', 'like_photo', 'r1V55', '2023-10-30 14:39:41'),
	('P3lfj', 'emma', 'mmeneerzwart', 'comment', '17h28', '2023-10-30 16:19:24'),
	('P7832', 'juliusclub77', 'olafdebrolaf', 'follow', NULL, '2023-10-29 12:37:02'),
	('p8K31', 'egbertkaas', 'hansdeambu', 'follow', NULL, '2023-10-30 18:57:53'),
	('pNqG8', 'hansdeambu', 'milanlange', 'like_photo', 'KW5Zv', '2023-10-30 18:36:16'),
	('Qvmaq', 'm.97lb', 'tonytaghi', 'like_photo', 'H842k', '2023-10-30 20:20:42'),
	('r5u68', 'hansdeambu', 'milanlange', 'like_photo', 'otA84', '2023-10-29 11:19:54'),
	('R6C1A', 'jy.9713', 'kvzuid11', 'follow', NULL, '2023-10-30 15:33:15'),
	('rH683', 'neus', 'mmeneerzwart', 'follow', NULL, '2023-10-30 15:45:20'),
	('rv658', 'kvzuid11', 'm.97lb', 'follow', NULL, '2023-10-30 15:44:09'),
	('RZ17I', 'juliusclub77', 'm.97lb', 'follow', NULL, '2023-10-29 23:55:45'),
	('soX86', 'milanlange', 'mr-satestokje', 'follow', NULL, '2023-10-29 16:09:36'),
	('T6R5Z', 'hansdeambu', '01vandeambu', 'follow', NULL, '2023-10-29 11:21:32'),
	('U12an', 'hansie', 'jannie', 'like_photo', '6gSNJ', '2023-10-30 19:20:30'),
	('uu874', 'hansdeambu', 'milanlange', 'like_photo', 'G9duX', '2023-10-29 16:23:29'),
	('uYYx3', 'neus', 'jy.9713', 'follow', NULL, '2023-10-29 23:55:47'),
	('W2D56', 'emma', 'hansdeambu', 'like_photo', '918yO', '2023-10-29 17:28:23'),
	('W3rKR', 'm.97lb', 'jy.9713', 'follow', NULL, '2023-10-29 23:55:46'),
	('wj145', 'mr-satestokje', 'm.97lb', 'follow', NULL, '2023-10-30 15:29:31'),
	('x6oU8', 'juliusclub77', 'olafdebrolaf', 'like_photo', '1y2sX', '2023-10-29 12:36:59'),
	('X7961', 'lion', 'hansdeambu', 'follow', NULL, '2023-10-29 18:27:16'),
	('x8El3', 'tigri.m', 't.minister', 'follow', NULL, '2023-10-29 21:54:36'),
	('XRj12', 'mr-satestokje', 'emma', 'like_photo', 'g7m8U', '2023-10-29 17:05:48'),
	('YAj11', 'neus', 'hansdeambu', 'follow', NULL, '2023-10-29 18:27:17'),
	('Ysx15', 'juliusclub77', 'olafdebrolaf', 'like_photo', '722Ko', '2023-10-29 19:59:13'),
	('z8lSe', 'mr-satestokje', 'milanlange', 'like_photo', 'r1V55', '2023-10-30 18:35:13'),
	('zNS2U', '01vandeambu', 'hansdeambu', 'like_photo', 'ci598', '2023-10-29 12:37:46');

-- Dumping structure for table dulcy_rp.phone_instagram_posts
CREATE TABLE IF NOT EXISTS `phone_instagram_posts` (
  `id` varchar(10) NOT NULL,
  `media` text DEFAULT NULL,
  `caption` varchar(500) NOT NULL DEFAULT '',
  `location` varchar(50) DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `comment_count` int(11) NOT NULL DEFAULT 0,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_posts_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_posts: ~49 rows (approximately)
INSERT INTO `phone_instagram_posts` (`id`, `media`, `caption`, `location`, `like_count`, `comment_count`, `username`, `timestamp`) VALUES
	('16Z88', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168136766193143818/file.png"]', '', '6200', 0, 0, 'milanlange', '2023-10-29 10:39:05'),
	('1y2sX', '["https://cdn.discordapp.com/attachments/1161576472994127872/1167955493621346414/file.png"]', 'gaslek?', 'grovestreet', 4, 0, 'juliusclub77', '2023-10-28 22:38:46'),
	('27A6h', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168166960656298054/file.png"]', 'eerste training', 'ambu hb', 1, 0, 'brammm', '2023-10-29 12:39:31'),
	('2M84P', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168134654168154233/file.png"]', 'Een vriendelijk gebaar van mijn baas', 'Blokkenpark', 3, 0, 'glen', '2023-10-29 10:35:37'),
	('38F3Q', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168644569605353604/file.png"]', 'Oeps', NULL, 0, 0, 'hansie', '2023-10-30 21:37:23'),
	('3F9j9', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168631778689425508/file.png"]', 'Ewa', 'Eindhoven', 1, 0, 'willemhunk', '2023-10-30 22:07:40'),
	('3fu83', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168270180057616485/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168269168638972037/file.png"]', 'welkom op de page.', 'Ministers', 3, 1, 'tigri.m', '2023-10-29 19:31:21'),
	('621Tn', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168165553584738304/file.png"]', 'lekker chillenn', NULL, 2, 1, 'olafdebrolaf', '2023-10-29 12:36:35'),
	('67323', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168630670818545855/file.png"]', 'Met de collega\'s! ', 'ANWB', 0, 0, 'jannie', '2023-10-30 19:21:33'),
	('6gSNJ', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168630201324929065/file.png"]', '#350Z#Tuning', 'A', 1, 1, 'hansie', '2023-10-30 19:20:06'),
	('722Ko', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168204246483738634/file.png"]', 'party!!!', 'club77', 1, 0, 'juliusclub77', '2023-10-29 15:06:57'),
	('782v3', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168339429610504232/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168340732730409130/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168335284505690202/file.png"]', 'dagen lang en de nachten kort\n', NULL, 1, 0, 'm.97lb', '2023-10-30 00:10:31'),
	('7kS63', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168561869305430037/file.mp4"]', 'DRIPPEN #DRIP #NIETGROOTDOEN', NULL, 0, 0, 'kvzuid11', '2023-10-30 14:48:06'),
	('918yO', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168196277150957568/file.png"]', 'Heey ', 'Blokkenpark', 4, 3, 'emma', '2023-10-29 17:06:14'),
	('92Jac', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168134895139303444/file.png"]', 'het begin van hand op insta', NULL, 2, 0, 'hansdeambu', '2023-10-29 10:31:48'),
	('97t4z', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168164424331317378/file.png"]', 'spoed rit van een gewonden agent was niet aanspreek baar reanimatie gestart en geslaagt!', NULL, 0, 0, 'hansdeambu', '2023-10-29 12:32:41'),
	('98r1V', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168173436238045235/file.png"]', 'Momenteel zijn we bezig met een training voor de nieuwe leden van ons team! ', 'haven', 2, 0, 'hansdeambu', '2023-10-29 13:04:58'),
	('9b253', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168136805627994252/file.png"]', 'ik heb vandaag nog geen meldingen gehad ik sta nu voor de rapid responder q8 ', 'ziekenhuis', 1, 0, 'hansdeambu', '2023-10-29 10:39:28'),
	('ci598', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168165588162580530/file.png"]', 'Kom ook werken bij de Ambulance! ', NULL, 1, 0, '01vandeambu', '2023-10-29 12:34:29'),
	('D27T5', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168584851415384104/file.png"]', 'Met @sven209', 'Blokkenpark garage', 2, 1, 'manudezwart', '2023-10-30 16:19:18'),
	('d5Cor', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168509223525691452/file.png"]', 'bijna neer gestoken door dit persoon!!', NULL, 4, 1, 'hansdeambu', '2023-10-30 11:18:50'),
	('f889E', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168339892489683024/file.png"]', '', NULL, 0, 0, 'jy.9713', '2023-10-30 17:52:52'),
	('F9499', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168638763799429260/file.png"]', '@jannie hard aan het werk', 'ANWB Gebouw', 0, 0, 'hansie', '2023-10-30 19:54:07'),
	('g7m8U', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168221468350480384/file.png"]', 'weer fresh:D', NULL, 2, 0, 'mr-satestokje', '2023-10-29 16:15:48'),
	('G9duX', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168189506013384735/file.png"]', 'Wij kregen een melding van een steek partij op blokkenpark we waren tp en 1 agent dood', NULL, 1, 0, 'hansdeambu', '2023-10-29 14:08:50'),
	('H842k', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168336444226547733/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168335284505690202/file.png"]', 'big bandzz', NULL, 2, 0, 'm.97lb', '2023-10-29 23:55:26'),
	('Hefqn', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168572508006535219/file.png"]', '𝙆𝙫𝙕𝙪𝙞𝙙𝙙 #𝙆𝙫𝙕𝙪𝙞𝙙𝙙', NULL, 0, 0, 'kvzuid11', '2023-10-30 15:30:54'),
	('i5766', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168296412342128812/file.png"]', 'L a zehb #laag #kinky #fetisj #mesje', NULL, 0, 0, 'amin2000', '2023-10-29 21:13:57'),
	('Jt79U', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168619227377303592/file.png"]', 'Vandaag als OVDG in dienst net een melding gehad van ANWBER dood', NULL, 1, 1, 'hansdeambu', '2023-10-30 18:36:34'),
	('KW5Zv', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168242646691631264/file.png"]', 'Net hebben we een spoed rit gekregen van iemand die van de moter is afgevallen alles bleek meetevallen', NULL, 1, 0, 'hansdeambu', '2023-10-29 17:39:50'),
	('l4236', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168223678148923452/file.png"]', 'We hadden een melding van een schot wond er bleek uiteindelijk meerdere personene geraakt zijn en hebben we een reanimatie gestart', NULL, 1, 0, 'hansdeambu', '2023-10-29 16:24:35'),
	('lX7f3', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168235830993756200/file.png"]', ':D', NULL, 2, 0, 'mr-satestokje', '2023-10-29 17:12:39'),
	('m3863', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168290839001309184/file.png"]', '\'Hey meisje, ben jij een garage? Want ik zou hem er wel inwillen parkeren\' #fun #prank', 'Dulcy', 0, 0, '01vandeambu', '2023-10-30 20:29:35'),
	('ob22q', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168190832399106220/file.png"]', 'LingLing is weer fresh!sd', NULL, 1, 0, 'lingling', '2023-10-29 14:13:59'),
	('OCZqh', '["https://cdn.discordapp.com/attachments/1161576472994127872/1167955346988486767/file.mp4"]', 'gas lek maar we kwamen weg ', NULL, 0, 0, 'mmeneerzwart', '2023-10-30 15:45:54'),
	('otA84', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168145119162150944/file.png"]', 'Ik heb net een A1 rid gekregen dat iemand niet aanspreekbaar was ik heb hun omhoog geholpen en verder w=is er niks aan de hand.\n\nheeft u een vraag aan de ambu stel het gerust!', NULL, 2, 0, 'hansdeambu', '2023-10-29 11:12:41'),
	('P3V66', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168294561639047351/file.png"]', '#love #hostage #killurfriendday #dumbfucks', NULL, 0, 0, 'amin2000', '2023-10-29 21:06:32'),
	('P5412', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168335977920606290/file.png"]', 'rs4', NULL, 1, 0, 'jy.9713', '2023-10-29 23:50:29'),
	('P66GD', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168165588162580530/file.png"]', 'Kom ook werken bij de Ambulance!  ', NULL, 1, 0, '01vandeambu', '2023-10-29 12:33:43'),
	('PY1aL', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168252183897190451/file.png"]', 'Net een melding steekwond in been alles was verder in orde en mee gebragt voor een operatie naar ziekenhuis', NULL, 1, 0, 'hansdeambu', '2023-10-29 18:17:51'),
	('Q7888', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168147339303723079/file.png"]', 'nou daar sta je dan met auto pech\n', 'bank op linkersnelweg', 1, 0, 'milanlange', '2023-10-29 11:21:05'),
	('QB959', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168147316176330813/file.png"]', 'Beetje meldingen draaien!\n#solliciteerookbijambu\n#chill', 'Dulcy ', 2, 0, '01vandeambu', '2023-10-29 11:21:21'),
	('r1V55', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168556615457329192/file.png"]', 'gezellig met me meisje', NULL, 2, 1, 'mr-satestokje', '2023-10-30 14:27:20'),
	('r57k8', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168272989792501860/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168273094931132446/file.png"]', 'Elk leven hier begint klein, en ik begin hier weer aan een nieuw tijdperk in mijn leven... Het Dulcy tijdperk!', NULL, 1, 0, 'maxxie', '2023-10-29 19:54:07'),
	('sazkR', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168006280263250031/file.png"]', 'sevje', NULL, 1, 1, 'sevn209', '2023-10-29 02:00:32'),
	('sm7jE', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168318299944271982/file.png"]', 'nieuwste rs6 en ik stuur m richting spanje -- lijpe\n', NULL, 1, 0, 'm.97lb', '2023-10-29 23:57:30'),
	('UR938', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168136958007054336/file.png"]', 'Komen jullie ook eens langs?', 'Club 77 | 10079', 3, 0, 'glen', '2023-10-29 10:40:05'),
	('W3TMD', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168338373291802676/file.png"]', 'toys', NULL, 0, 0, 'jy.9713', '2023-10-29 23:59:50'),
	('X87MD', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168632345205690469/file.png"]', 'Vandaag hebben we een melding gekregen van voertuig op de kop IK als OVDG was tp ', NULL, 0, 0, 'hansdeambu', '2023-10-30 19:28:25');

-- Dumping structure for table dulcy_rp.phone_instagram_stories
CREATE TABLE IF NOT EXISTS `phone_instagram_stories` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_stories_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_stories: ~3 rows (approximately)
INSERT INTO `phone_instagram_stories` (`id`, `username`, `image`, `timestamp`) VALUES
	('71d8j', 'willemhunk', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168631736054333531/file.mp4', '2023-10-30 22:22:00'),
	('7am2H', 'kvzuid11', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168572508006535219/file.png', '2023-10-30 15:33:41'),
	('oh72D', 'm.97lb', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168685046950010920/file.png', '2023-10-30 22:57:34');

-- Dumping structure for table dulcy_rp.phone_instagram_stories_views
CREATE TABLE IF NOT EXISTS `phone_instagram_stories_views` (
  `story_id` varchar(50) NOT NULL,
  `viewer` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`story_id`,`viewer`),
  KEY `viewer` (`viewer`),
  CONSTRAINT `phone_instagram_stories_views_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `phone_instagram_stories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_instagram_stories_views_ibfk_2` FOREIGN KEY (`viewer`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_instagram_stories_views: ~25 rows (approximately)
INSERT INTO `phone_instagram_stories_views` (`story_id`, `viewer`, `timestamp`) VALUES
	('71d8j', 'hansie', '2023-10-30 23:39:12'),
	('71d8j', 'jy.9713', '2023-10-30 22:43:40'),
	('71d8j', 'm.97lb', '2023-10-30 22:57:42'),
	('71d8j', 'ricodomingo', '2023-10-31 07:35:06'),
	('71d8j', 'willemhunk', '2023-10-30 22:30:04'),
	('7am2H', '01vandeambu', '2023-10-30 16:17:41'),
	('7am2H', 'b.enormus', '2023-10-30 18:50:51'),
	('7am2H', 'emma', '2023-10-30 16:19:46'),
	('7am2H', 'glen', '2023-10-30 19:21:07'),
	('7am2H', 'hansdeambu', '2023-10-30 18:00:57'),
	('7am2H', 'hansie', '2023-10-30 19:15:42'),
	('7am2H', 'jannie', '2023-10-30 19:16:10'),
	('7am2H', 'jy.9713', '2023-10-30 17:13:44'),
	('7am2H', 'kvzuid11', '2023-10-30 15:33:45'),
	('7am2H', 'm.97lb', '2023-10-30 15:43:37'),
	('7am2H', 'manudezwart', '2023-10-30 20:19:29'),
	('7am2H', 'mmeneerzwart', '2023-10-30 15:44:32'),
	('7am2H', 'montrzs', '2023-10-30 20:37:59'),
	('7am2H', 'peters', '2023-10-30 15:49:41'),
	('7am2H', 'ricodomingo', '2023-10-31 07:35:07'),
	('7am2H', 't.minister', '2023-10-30 18:48:07'),
	('7am2H', 'tigri.m', '2023-10-30 18:47:17'),
	('7am2H', 'willemhunk', '2023-10-30 22:07:14'),
	('oh72D', 'm.97lb', '2023-10-30 22:57:41'),
	('oh72D', 'ricodomingo', '2023-10-31 07:35:04');

-- Dumping structure for table dulcy_rp.phone_last_phone
CREATE TABLE IF NOT EXISTS `phone_last_phone` (
  `identifier` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`identifier`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_last_phone_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_last_phone: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_logged_in_accounts
CREATE TABLE IF NOT EXISTS `phone_logged_in_accounts` (
  `phone_number` varchar(15) NOT NULL,
  `app` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`phone_number`,`app`,`username`),
  CONSTRAINT `phone_logged_in_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_logged_in_accounts: ~131 rows (approximately)
INSERT INTO `phone_logged_in_accounts` (`phone_number`, `app`, `username`) VALUES
	('0600199921', 'TikTok', 'jesse'),
	('0601191246', 'Instagram', 'peters'),
	('0601191246', 'TikTok', 'peters'),
	('0601191246', 'Twitter', 'peterss.'),
	('0605282895', 'Instagram', 'tigri.m'),
	('0605671199', 'Instagram', 'juliusclub77'),
	('0605671199', 'Twitter', 'juliusclub77'),
	('0605673646', 'Instagram', 'ricodomingo'),
	('0605673646', 'TikTok', 'ricodomingo'),
	('0607617468', 'Instagram', 'jy.9713'),
	('0607617468', 'TikTok', 'jy9713'),
	('0607617468', 'Twitter', 'jy.9713'),
	('0608996455', 'Instagram', 'milanlange'),
	('0608996455', 'Mail', 'milanlangen@dulcyroleplay.com'),
	('0608996455', 'Twitter', 'milanlange'),
	('0609836007', 'Instagram', 'naomi030'),
	('0609836007', 'TikTok', 'naomi030'),
	('0609836007', 'Twitter', 'naomi_dam030'),
	('0610722059', 'Instagram', 'kvzuid11'),
	('0610722059', 'TikTok', 'kvanzuid'),
	('0611034199', 'Twitter', 'rosi'),
	('0611621771', 'Twitter', 'jeroen'),
	('0612828144', 'Instagram', 'jan.f'),
	('0612828144', 'TikTok', 'janf'),
	('0615434986', 'Instagram', 'egbertkaas'),
	('0615434986', 'TikTok', 'egbertkaasdeambu'),
	('0616173418', 'Instagram', 'diego_politie'),
	('0616173418', 'Mail', 'Diego@dulcyroleplay.com'),
	('0616173418', 'TikTok', 'diego_politie'),
	('0616173418', 'Twitter', 'diego'),
	('0617298699', 'Twitter', 'klaasdekker'),
	('0620996849', 'Instagram', 'lingling'),
	('0620996849', 'TikTok', 'lingling'),
	('0620996849', 'Twitter', 'lingling'),
	('0623283668', 'Instagram', 'willemhunk'),
	('0623283668', 'TikTok', 'willemhunk'),
	('0623283668', 'Twitter', 'willemhunk'),
	('0627398746', 'Instagram', 'maxxie'),
	('0627398746', 'TikTok', 'maxxie'),
	('0627398746', 'Twitter', 'maxxiemax'),
	('0630047170', 'Mail', 'Hector@dulcyroleplay.com'),
	('0630121470', 'Instagram', 'mmeneerzwart'),
	('0630121470', 'Twitter', 'blackmen'),
	('0630384159', 'Instagram', 'stijnm.'),
	('0630384159', 'Twitter', 'stijnm.'),
	('0630613220', 'Mail', 'amuse@dulcyroleplay.com'),
	('0630613220', 'Twitter', 'amuse_050'),
	('0634238976', 'Instagram', 'b.enormus'),
	('0634238976', 'TikTok', 'benormus'),
	('0634238976', 'Twitter', 'b.enormus'),
	('0634239516', 'Instagram', 'hansdeambu'),
	('0634239516', 'TikTok', 'hans'),
	('0634239516', 'Twitter', 'hansv.'),
	('0634693320', 'TikTok', 'pakitakipolitie'),
	('0636087287', 'Instagram', 'achi'),
	('0636087287', 'Mail', 'Farao@dulcyroleplay.com'),
	('0636087287', 'TikTok', 'achi'),
	('0636087287', 'Twitter', 'achi'),
	('0636119357', 'Instagram', 'shevano'),
	('0637216600', 'Instagram', 'troyclub77'),
	('0637216600', 'Twitter', 'troyclub77'),
	('0638621412', 'TikTok', 'mayronl'),
	('0640419601', 'Instagram', 't.minister'),
	('0640419601', 'TikTok', 'tminister'),
	('0640419601', 'Twitter', 't.minister.'),
	('0645648271', 'Twitter', 'solix'),
	('0647978429', 'Instagram', 'politie_dulcy'),
	('0651779209', 'Instagram', 'olafdebrolaf'),
	('0651779209', 'Twitter', 'olafje'),
	('0652151954', 'TikTok', 'jayjay'),
	('0652151954', 'Twitter', 'jayjay'),
	('0652873518', 'Instagram', 'mariom'),
	('0652905358', 'Twitter', 'nigeldam'),
	('0654595037', 'Instagram', 'janssens'),
	('0654595037', 'Mail', 'Janssens@dulcyroleplay.com'),
	('0654595037', 'TikTok', 'janssens'),
	('0654595037', 'Twitter', 'janssens'),
	('0658799996', 'Instagram', 'son'),
	('0658799996', 'TikTok', 'jeoma'),
	('0659620793', 'Twitter', 'mootjeaanslag'),
	('0660396543', 'Instagram', 'kaj.steelpan'),
	('0662411755', 'TikTok', 'rakitaki123'),
	('0663273471', 'Twitter', 'anoniem'),
	('0665600610', 'Instagram', 'jannie'),
	('0665600610', 'Twitter', 'jannie'),
	('0665935525', 'Instagram', 'manudezwart'),
	('0667751915', 'Instagram', 'm.97lb'),
	('0667751915', 'TikTok', 'taghi'),
	('0667751915', 'Twitter', 'motaghi'),
	('0668188200', 'Instagram', 'neus'),
	('0668188200', 'Twitter', 'neus'),
	('0668770599', 'Twitter', 'bobdebouwer'),
	('0669459842', 'Twitter', 'billy'),
	('0670034209', 'Twitter', 'schouten'),
	('0674654063', 'Instagram', 'montrzs'),
	('0674654063', 'TikTok', 'montrezs'),
	('0674654063', 'Twitter', 'monnie77'),
	('0676334728', 'Instagram', 'opie_og'),
	('0676334728', 'Twitter', 'opie'),
	('0676440555', 'Instagram', 'amin2000'),
	('0676440555', 'Twitter', 'amina.'),
	('0676825156', 'Twitter', 'pablito'),
	('0677307049', 'Instagram', 'brammm'),
	('0677307049', 'TikTok', 'brammm'),
	('0677592049', 'Instagram', 'glen'),
	('0677592049', 'Twitter', 'glen'),
	('0680843227', 'Instagram', 'rico'),
	('0680843227', 'Twitter', 'rico'),
	('0682609513', 'Instagram', 'lion'),
	('0682609513', 'Twitter', 'lion'),
	('0683482535', 'Instagram', 'emma'),
	('0683482535', 'Twitter', 'emma'),
	('0683734761', 'Instagram', '01vandeambu'),
	('0683734761', 'Instagram', 'ambulancedulcy'),
	('0683734761', 'Mail', 'ambu01@dulcyroleplay.com'),
	('0683734761', 'TikTok', 'mauricedeambulance'),
	('0683734761', 'Twitter', 'brutuscars'),
	('0685603521', 'Instagram', 'mr-satestokje'),
	('0685603521', 'Twitter', 'satestokje040'),
	('0686072564', 'Twitter', 'jochehh'),
	('0688580433', 'Twitter', 'adamdijk'),
	('0691995768', 'TikTok', 'octo'),
	('0693864546', 'TikTok', 'gwn_jens'),
	('0693864546', 'Twitter', 'gwn_jens23'),
	('0694345261', 'Instagram', 'tonytaghi'),
	('0694345261', 'Twitter', 'tony'),
	('0697518979', 'Instagram', 'hansie'),
	('0697518979', 'TikTok', 'hansie'),
	('0697518979', 'Twitter', 'hansie'),
	('0698933633', 'Instagram', 'taki'),
	('0699049293', 'Instagram', 'sevn209');

-- Dumping structure for table dulcy_rp.phone_mail_accounts
CREATE TABLE IF NOT EXISTS `phone_mail_accounts` (
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_mail_accounts: ~7 rows (approximately)
INSERT INTO `phone_mail_accounts` (`address`, `password`) VALUES
	('ambu01@dulcyroleplay.com', '$2a$11$tSlSg2oIUAW.Cgaqa5vHc.nE049iPlvEKs0SGptD7bQHet.jrpgRW'),
	('amuse@dulcyroleplay.com', '$2a$11$vXqDeH4PvizaHUsHqdHWQe87gA3GE3s5HzSu7hV2ZZMvTeg.RhWWq'),
	('Diego@dulcyroleplay.com', '$2a$11$GnJ63PH9oVEsAzRGeuqSVe2dtpyjmCIs7iAlt2tjyFcjMqMD/S1AC'),
	('Farao@dulcyroleplay.com', '$2a$11$NRb.QKj5QN9Mift4Mz4a7ewSVGa8lXqLV0sOdGeO5OIr8ymUbISDG'),
	('Hector@dulcyroleplay.com', '$2a$11$YeEwpuSt7vQDxvCODFSczO.vK6wNRTAUKH/j1G0CAyZWDsqEp5ZI2'),
	('Janssens@dulcyroleplay.com', '$2a$11$nWFRXDl/RGlwiGHovWSmueg0GECQ1hCP/fkfv3jV3ouOr79ZLy0zS'),
	('milanlangen@dulcyroleplay.com', '$2a$11$MTQTmIxSLv3IMRgNs7SGn.OtxrWnsoQpv7ZT.PMfIxHRbseN0ujZe');

-- Dumping structure for table dulcy_rp.phone_mail_loggedin
CREATE TABLE IF NOT EXISTS `phone_mail_loggedin` (
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`phone_number`),
  KEY `address` (`address`),
  CONSTRAINT `phone_mail_loggedin_ibfk_1` FOREIGN KEY (`address`) REFERENCES `phone_mail_accounts` (`address`) ON DELETE CASCADE,
  CONSTRAINT `phone_mail_loggedin_ibfk_2` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_mail_loggedin: ~7 rows (approximately)
INSERT INTO `phone_mail_loggedin` (`address`, `phone_number`) VALUES
	('ambu01@dulcyroleplay.com', '0683734761'),
	('amuse@dulcyroleplay.com', '0630613220'),
	('Diego@dulcyroleplay.com', '0616173418'),
	('Farao@dulcyroleplay.com', '0636087287'),
	('Hector@dulcyroleplay.com', '0630047170'),
	('Janssens@dulcyroleplay.com', '0654595037'),
	('milanlangen@dulcyroleplay.com', '0608996455');

-- Dumping structure for table dulcy_rp.phone_mail_messages
CREATE TABLE IF NOT EXISTS `phone_mail_messages` (
  `id` varchar(10) NOT NULL,
  `recipient` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `attachments` longtext DEFAULT NULL,
  `actions` longtext DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_mail_messages: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_maps_locations
CREATE TABLE IF NOT EXISTS `phone_maps_locations` (
  `id` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `x_pos` float NOT NULL,
  `y_pos` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_maps_locations_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_maps_locations: ~3 rows (approximately)
INSERT INTO `phone_maps_locations` (`id`, `phone_number`, `name`, `x_pos`, `y_pos`) VALUES
	('17r23', '0630384159', 'Ministers', -108.249, 871.773),
	('4xy5v', '0647978429', 'NOODGEVAAL', -3112.53, 780.141),
	('L59jk', '0694345261', 'kleding', 184.523, -1014.92);

-- Dumping structure for table dulcy_rp.phone_marketplace_posts
CREATE TABLE IF NOT EXISTS `phone_marketplace_posts` (
  `id` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `attachments` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_marketplace_posts: ~14 rows (approximately)
INSERT INTO `phone_marketplace_posts` (`id`, `phone_number`, `title`, `description`, `attachments`, `price`, `timestamp`) VALUES
	(13123, '0628909545', '0630543008', 'EWA', '2023-10-27 17:31:25', 1, 1),
	(13122, '0630543008', '0628909545', 'EWA', '2023-10-27 17:31:25', 1, 0);
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumping structure for table dulcy_rp.phone_message_channels
CREATE TABLE IF NOT EXISTS `phone_message_channels` (
  `channel_id` varchar(50) NOT NULL,
  `is_group` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  `last_message` varchar(50) NOT NULL DEFAULT '',
  `last_message_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_message_channels: ~88 rows (approximately)
INSERT INTO `phone_message_channels` (`channel_id`, `is_group`, `name`, `last_message`, `last_message_timestamp`) VALUES
	('1fu9u', 0, NULL, '', '2023-10-30 22:50:37'),
	('1Z5vR', 0, NULL, 'jo', '2023-10-30 15:23:44'),
	('23yv5', 0, NULL, '<!SENT-LOCATION-X=-125.76Y=-238.75!>', '2023-10-30 17:15:07'),
	('27I34', 0, NULL, '', '2023-10-30 13:23:49'),
	('28117', 0, NULL, '<!SENT-PAYMENT-100000!>', '2023-10-30 19:07:00'),
	('299lC', 0, NULL, 'ainaa', '2023-10-30 19:40:22'),
	('2g976', 0, NULL, 'HOI', '2023-10-29 16:09:11'),
	('2m852', 0, NULL, 'yo', '2023-10-29 21:12:46'),
	('2XW4h', 0, NULL, 'toppie', '2023-10-30 19:30:49'),
	('2Z6lu', 0, NULL, 'pearlecent full gold standaard kleur full gold als', '2023-10-30 22:39:30'),
	('31161', 0, NULL, 'Je had me gistervaond gebeld?', '2023-10-30 12:26:43'),
	('31k53', 0, NULL, 'ok', '2023-10-30 21:20:04'),
	('34HbZ', 0, NULL, 'JA', '2023-10-30 19:57:26'),
	('3847I', 0, NULL, 'Niall', '2023-10-30 20:05:59'),
	('3uyCP', 0, NULL, 'Oke kan je ook appen/', '2023-10-30 15:19:09'),
	('442eu', 0, NULL, 'yo fin', '2023-10-30 19:35:39'),
	('511zg', 0, NULL, '.', '2023-10-29 17:38:39'),
	('537Ib', 0, NULL, 'x)', '2023-10-30 21:11:18'),
	('54l3f', 0, NULL, 'yo anwb ben ik', '2023-10-30 22:48:23'),
	('553P1', 0, NULL, 'sorry man da ik u heb aan gereden ', '2023-10-30 21:17:10'),
	('57445', 0, NULL, '<!REQUESTED-PAYMENT-10000!>', '2023-10-30 19:22:16'),
	('58p1a', 0, NULL, '', '2023-10-30 22:56:35'),
	('5AWgQ', 0, NULL, 'laat maar weten als je kan', '2023-10-30 15:45:03'),
	('5Qr49', 0, NULL, '', '2023-10-29 18:22:00'),
	('667qX', 0, NULL, 'YOO', '2023-10-30 23:20:06'),
	('6741I', 0, NULL, '', '2023-10-30 23:38:51'),
	('6VN2i', 0, NULL, '', '2023-10-29 12:55:06'),
	('715QC', 0, NULL, '<!AUDIO-MESSAGE-IMAGE="https://cdn.discordapp.com/', '2023-10-29 14:31:52'),
	('72Iay', 0, NULL, '', '2023-10-29 11:01:58'),
	('78UA9', 0, NULL, '', '2023-10-29 21:54:16'),
	('7984V', 0, NULL, '', '2023-10-30 22:04:35'),
	('7lp13', 0, NULL, '', '2023-10-30 21:35:30'),
	('7mOg3', 0, NULL, '<!AUDIO-MESSAGE-IMAGE="https://cdn.discordapp.com/', '2023-10-29 15:32:13'),
	('81o1b', 0, NULL, 'Zou je nu kunnen?', '2023-10-30 16:21:03'),
	('83JI4', 0, NULL, 'Appie', '2023-10-30 21:27:57'),
	('83YB1', 0, NULL, 'yo ben je in de stad', '2023-10-30 13:04:26'),
	('84fby', 0, NULL, 'k ben telefoon winkel naast die autohandelaar', '2023-10-29 15:03:47'),
	('8ax7b', 0, NULL, 'Attachment', '2023-10-30 15:30:35'),
	('8O5D6', 0, NULL, '', '2023-10-30 23:09:54'),
	('91fwJ', 0, NULL, '', '2023-10-30 15:53:09'),
	('94g89', 0, NULL, '<!SENT-LOCATION-X=-243.77Y=-884.49!>', '2023-10-29 18:51:29'),
	('9hiTX', 0, NULL, '<!SENT-PAYMENT-500!>', '2023-10-28 22:11:12'),
	('9OBo4', 0, NULL, 'refresh hem', '2023-10-30 11:47:32'),
	('a48k4', 0, NULL, 'y0o', '2023-10-30 17:00:35'),
	('cl651', 0, NULL, 'IK HEB . GESTUURD IN ALGEMEEN', '2023-10-29 14:49:31'),
	('cvULL', 0, NULL, 'hallo', '2023-10-30 18:54:03'),
	('E6G4P', 0, NULL, 'hallo', '2023-10-29 15:54:11'),
	('F1zn3', 0, NULL, '<!REQUESTED-PAYMENT-1000!>', '2023-10-30 21:18:09'),
	('F595E', 0, NULL, 'Stuur ff loca', '2023-10-30 22:05:49'),
	('FCz67', 0, NULL, '<!SENT-LOCATION-X=474.95Y=-1593.97!>', '2023-10-29 13:10:21'),
	('G862S', 0, NULL, '', '2023-10-30 23:14:38'),
	('Gu2zX', 0, NULL, '', '2023-10-30 19:02:54'),
	('h3EJK', 0, NULL, '', '2023-10-29 12:21:18'),
	('h462W', 0, NULL, 'yo', '2023-10-30 19:14:32'),
	('Hpi8c', 0, NULL, '<!REQUESTED-PAYMENT-1000!>', '2023-10-30 21:18:18'),
	('I8ovX', 0, NULL, '<!SENT-PAYMENT-52999!>', '2023-10-30 15:38:50'),
	('IE7c5', 0, NULL, 'haha', '2023-10-30 19:33:00'),
	('iST5g', 0, NULL, 'hallo', '2023-10-30 16:56:27'),
	('J11cB', 0, NULL, '<!SENT-PAYMENT-1000!>', '2023-10-30 16:18:24'),
	('j9811', 0, NULL, '', '2023-10-29 21:16:12'),
	('JJ6p8', 0, NULL, 'Attachment', '2023-10-29 12:40:07'),
	('jo2TZ', 0, NULL, '<!SENT-PAYMENT-20000!>', '2023-10-30 20:38:53'),
	('jtsf8', 0, NULL, '', '2023-10-30 22:04:27'),
	('KM2HX', 0, NULL, '<!SENT-PAYMENT-100!>', '2023-10-30 21:36:26'),
	('L64v9', 0, NULL, 'k ga de stad uit, miss nog fftjes maarsseveen mr v', '2023-10-30 20:41:27'),
	('lNpb9', 0, NULL, '.', '2023-10-30 12:46:11'),
	('m6116', 0, NULL, '', '2023-10-29 18:17:43'),
	('n3F52', 0, NULL, 'wij', '2023-10-30 21:21:48'),
	('ODr85', 0, NULL, '<!REQUESTED-PAYMENT-100!>', '2023-10-30 21:17:57'),
	('ok4jQ', 0, NULL, '', '2023-10-29 17:28:44'),
	('OwC6t', 0, NULL, '<!SENT-PAYMENT-10000!>', '2023-10-30 20:36:59'),
	('p7925', 0, NULL, '<!AUDIO-MESSAGE-IMAGE="https://cdn.discordapp.com/', '2023-10-29 14:31:29'),
	('P8s81', 0, NULL, '', '2023-10-29 20:38:19'),
	('PAJH3', 0, NULL, '<!SENT-PAYMENT-15000!>', '2023-10-30 16:13:28'),
	('q4cpz', 0, NULL, 'waar ben je', '2023-10-30 19:39:09'),
	('QlpmX', 0, NULL, 'Welke motor is dat', '2023-10-29 16:17:11'),
	('R9595', 0, NULL, 'Manu', '2023-10-30 22:57:57'),
	('S7Qj7', 0, NULL, 'dood*', '2023-10-30 16:52:06'),
	('ToD2Z', 0, NULL, 'sorry voor caps', '2023-10-30 20:08:29'),
	('uN8x4', 0, NULL, 'isgoed ik ben bph', '2023-10-30 21:57:38'),
	('V967C', 0, NULL, '', '2023-10-29 16:22:47'),
	('vI7Ss', 0, NULL, 'yoooo', '2023-10-29 11:14:50'),
	('vshy4', 0, NULL, 'zou ik anwb gaan of crimineel', '2023-10-30 19:22:48'),
	('W45b4', 0, NULL, ',', '2023-10-29 11:14:48'),
	('W81YN', 0, NULL, 'yo anwb  ben ik', '2023-10-30 22:47:53'),
	('W9452', 0, NULL, '', '2023-10-30 22:04:48'),
	('WU1Jt', 0, NULL, '', '2023-10-29 18:02:37'),
	('x1Bph', 0, NULL, 'ewa', '2023-10-30 21:28:20');

-- Dumping structure for table dulcy_rp.phone_message_members
CREATE TABLE IF NOT EXISTS `phone_message_members` (
  `channel_id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `unread` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`channel_id`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_message_members: ~176 rows (approximately)
INSERT INTO `phone_message_members` (`channel_id`, `phone_number`, `is_owner`, `deleted`, `unread`) VALUES
	('x1Bph', '0645648271', 0, 0, 0),
	('x1Bph', '0680843227', 0, 0, 1);

-- Dumping structure for table dulcy_rp.phone_message_messages
CREATE TABLE IF NOT EXISTS `phone_message_messages` (
  `id` varchar(10) NOT NULL,
  `channel_id` varchar(50) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_message_messages: ~527 rows (approximately)
INSERT INTO `phone_message_messages` (`id`, `channel_id`, `sender`, `content`, `attachments`, `timestamp`) VALUES
	('ZMWfE', 'V967C', '0605673646', '<!CALL-NO-ANSWER!>', NULL, '2023-10-29 16:22:54'),
	('zoi46', '5AWgQ', '0634239516', 'gebeld', NULL, '2023-10-30 15:31:41'),
	('zSZS4', '9hiTX', '0688580433', '<!SENT-PAYMENT-500!>', NULL, '2023-10-28 22:11:12');

-- Dumping structure for table dulcy_rp.phone_music_playlists
CREATE TABLE IF NOT EXISTS `phone_music_playlists` (
  `id` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cover` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_music_playlists_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_music_playlists: ~2 rows (approximately)
INSERT INTO `phone_music_playlists` (`id`, `phone_number`, `name`, `cover`) VALUES
	('h539I', '0601191246', 'Jean Paul', 'https://cdn.discordapp.com/attachments/1161576472994127872/1167965519660458024/file.png'),
	('VzvJZ', '0607617468', 'jetoch', NULL);

-- Dumping structure for table dulcy_rp.phone_music_saved_playlists
CREATE TABLE IF NOT EXISTS `phone_music_saved_playlists` (
  `playlist_id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`playlist_id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_music_saved_playlists_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_music_saved_playlists_ibfk_2` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_music_saved_playlists: ~2 rows (approximately)
INSERT INTO `phone_music_saved_playlists` (`playlist_id`, `phone_number`) VALUES
	('h539I', '0601191246'),
	('VzvJZ', '0607617468');

-- Dumping structure for table dulcy_rp.phone_music_songs
CREATE TABLE IF NOT EXISTS `phone_music_songs` (
  `song_id` varchar(100) NOT NULL,
  `playlist_id` varchar(50) NOT NULL,
  PRIMARY KEY (`song_id`,`playlist_id`),
  KEY `playlist_id` (`playlist_id`),
  CONSTRAINT `phone_music_songs_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_music_songs: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_notes
CREATE TABLE IF NOT EXISTS `phone_notes` (
  `id` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` longtext DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_notes_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_notes: ~2 rows (approximately)
INSERT INTO `phone_notes` (`id`, `phone_number`, `title`, `content`, `timestamp`) VALUES
	('it8F1', '0612828144', 'Nieuwe notitie', '', '2023-10-29 19:49:07'),
	('w158H', '0605673646', 'Nieuwe notitie', '', '2023-10-31 07:34:37');

-- Dumping structure for table dulcy_rp.phone_notifications
CREATE TABLE IF NOT EXISTS `phone_notifications` (
  `id` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `app` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `show_avatar` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_notifications_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_notifications: ~160 rows (approximately)
INSERT INTO `phone_notifications` (`id`, `phone_number`, `app`, `title`, `content`, `thumbnail`, `avatar`, `show_avatar`, `timestamp`) VALUES
	('z8Gd2', '0638621412', 'Services', 'Nieuw bericht van hulpdienst', 'Ik sta voor de hoofdingang', NULL, NULL, NULL, '2023-10-30 15:18:55'),
	('zaX3O', '0652905358', 'Phone', 'Naomi\'s Phone ', 'Gemiste oproep', NULL, NULL, 1, '2023-10-29 15:30:52'),
	('ZDaP6', '0652873518', 'Wallet', 'Rico\'s Phone ', '€10 000', NULL, NULL, NULL, '2023-10-30 20:37:00'),
	('ZmA81', '0620748140', 'Messages', 'Joris\'s Phone ', 'hallo', NULL, NULL, 1, '2023-10-30 16:56:27'),
	('Zw6L2', '0609836007', 'Tinder', 'Nieuwe match', 'Je hebt een match met Maurice Doos.', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168147171112124459/file.png', NULL, NULL, '2023-10-29 20:21:25'),
	('ZWl97', '0618911458', 'Services', 'Nieuw bericht van hulpdienst', 'fIN aanwerzig?', NULL, NULL, NULL, '2023-10-30 15:43:37');

-- Dumping structure for table dulcy_rp.phone_phones
CREATE TABLE IF NOT EXISTS `phone_phones` (
  `id` varchar(100) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pin` varchar(4) DEFAULT NULL,
  `face_id` varchar(100) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `is_setup` tinyint(1) DEFAULT 0,
  `assigned` tinyint(1) DEFAULT 0,
  `battery` int(11) NOT NULL DEFAULT 100,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_phones: ~115 rows (approximately)
INSERT INTO `phone_phones` (`id`, `owner`, `phone_number`, `name`, `pin`, `face_id`, `settings`, `is_setup`, `assigned`, `battery`) VALUES
	('facca4c27f468c6d3580e5310f9bf28050920dc1', 'facca4c27f468c6d3580e5310f9bf28050920dc1', '0601191246', 'Peter\'s Phone', '0000', 'facca4c27f468c6d3580e5310f9bf28050920dc1', '{"streamerMode":false,"lockscreen":{"fontStyle":1,"color":"gradient"},"display":{"size":0.7,"automatic":false,"brightness":1,"theme":"dark"},"weather":{"celcius":false},"time":{"twelveHourClock":false},"version":"1.4.3","notifications":[],"latestVersion":"1.4.3","locale":"nl","security":{"pinCode":true,"faceId":true},"airplaneMode":false,"name":"Peter\'s Phone","sound":{"volume":0.5,"silent":false,"ringtone":"default"},"apps":[["Phone","Messages","Camera","Photos"],["Settings","AppStore","Clock","Garage","Notes","Calculator","Weather","Maps","Wallet","Home","Music","Mail","VoiceMemo","Services","Twitter","Instagram","Flappybird","Tinder","Crypto","MarketPlace","DarkChat","TikTok","YellowPages","2048"]],"wallpaper":{"background":"IOS16_2"},"doNotDisturb":false,"phone":{"showCallerId":true},"storage":{"total":128000000,"used":9070700.479999997}}', 1, 0, 100),
	('fd8b9c221d9b1896499456f0699c6e20281e5267', 'fd8b9c221d9b1896499456f0699c6e20281e5267', '0652873518', 'Mario\'s Phone', '0000', 'fd8b9c221d9b1896499456f0699c6e20281e5267', '{"doNotDisturb":false,"streamerMode":false,"sound":{"silent":false,"volume":0.5,"ringtone":"default"},"version":"1.4.3","airplaneMode":false,"phone":{"showCallerId":true},"apps":[["Phone","Messages","Camera","Photos"],["Settings","AppStore","Clock","Garage","Notes","Calculator","Weather","Maps","Wallet","Home","Music","Mail","VoiceMemo","Services","Crypto","Instagram"]],"locale":"nl","weather":{"celcius":false},"security":{"faceId":true,"pinCode":true},"display":{"automatic":false,"brightness":1,"theme":"dark","size":0.7},"name":"Mario\'s Phone","storage":{"total":128000000,"used":8834205.34},"lockscreen":{"fontStyle":1,"color":"gradient"},"notifications":[],"wallpaper":{"background":"IOS16_2"},"time":{"twelveHourClock":false},"latestVersion":"1.4.3"}', 1, 0, 100),
	('ffaabfe0d4b4efc9eeeb9f7da208ea9f4ce20410', 'ffaabfe0d4b4efc9eeeb9f7da208ea9f4ce20410', '0658524457', NULL, NULL, NULL, NULL, 0, 0, 100);

-- Dumping structure for table dulcy_rp.phone_phone_blocked_numbers
CREATE TABLE IF NOT EXISTS `phone_phone_blocked_numbers` (
  `phone_number` varchar(15) NOT NULL,
  `blocked_number` varchar(15) NOT NULL,
  PRIMARY KEY (`phone_number`,`blocked_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_phone_blocked_numbers: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_phone_calls
CREATE TABLE IF NOT EXISTS `phone_phone_calls` (
  `id` varchar(10) NOT NULL,
  `caller` varchar(15) NOT NULL,
  `callee` varchar(15) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `answered` tinyint(1) DEFAULT 0,
  `hide_caller_id` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_phone_calls: ~271 rows (approximately)
INSERT INTO `phone_phone_calls` (`id`, `caller`, `callee`, `duration`, `answered`, `hide_caller_id`, `timestamp`) VALUES
	('zwoIH', '0676825156', '0636087287', 20, 0, 0, '2023-10-29 18:17:43'),
	('ZY3a5', '0679764946', '0686072564', 0, 0, 0, '2023-10-29 16:28:06'),
	('zZT5u', '0611621771', '0683734761', 0, 0, 0, '2023-10-30 23:14:38');

-- Dumping structure for table dulcy_rp.phone_phone_contacts
CREATE TABLE IF NOT EXISTS `phone_phone_contacts` (
  `contact_phone_number` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `profile_image` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `favourite` tinyint(1) DEFAULT 0,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`contact_phone_number`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_phone_contacts: ~259 rows (approximately)
INSERT INTO `phone_phone_contacts` (`contact_phone_number`, `firstname`, `lastname`, `profile_image`, `email`, `address`, `favourite`, `phone_number`) VALUES
	('0697518979', 'Hans\'s Phone', '', NULL, NULL, NULL, 0, '0685603521'),
	('112', 'Politie', '', NULL, NULL, NULL, 0, '0630613220');

-- Dumping structure for table dulcy_rp.phone_phone_voicemail
CREATE TABLE IF NOT EXISTS `phone_phone_voicemail` (
  `id` varchar(10) NOT NULL,
  `caller` varchar(15) NOT NULL,
  `callee` varchar(15) NOT NULL,
  `url` varchar(500) NOT NULL,
  `duration` int(11) NOT NULL,
  `hide_caller_id` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_phone_voicemail: ~3 rows (approximately)
INSERT INTO `phone_phone_voicemail` (`id`, `caller`, `callee`, `url`, `duration`, `hide_caller_id`, `timestamp`) VALUES
	('7p7Z4', '0612828144', '0608996455', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168265483229855744/file.ogg?ex=65512304&is=653eae04&hm=09c8808eb8604cfc58602f02e67661acb8b0b536e22aeb30b72177d2d9abeabb&', 12703, 0, '2023-10-29 19:09:56'),
	('8841I', '0691995768', '0611621771', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168171823960170496/file.ogg?ex=6550cbca&is=653e56ca&hm=0f091a0db685fa3327ac64723170b2764c66214c101f041ecc1592db02fcb0c0&', 6655, 0, '2023-10-29 12:57:46'),
	('vOL9v', '0605671199', '0680843227', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168248651471126688/file.ogg?ex=65511357&is=653e9e57&hm=e2eab71a1fb531ea555144a3f46a406b3a8a75d540642db12c2860dda106f82c&', 3730, 0, '2023-10-29 18:03:03');

-- Dumping structure for table dulcy_rp.phone_photos
CREATE TABLE IF NOT EXISTS `phone_photos` (
  `phone_number` varchar(15) NOT NULL,
  `link` varchar(500) NOT NULL,
  `is_video` tinyint(1) DEFAULT 0,
  `size` float NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`phone_number`,`link`),
  CONSTRAINT `phone_photos_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_photos: ~306 rows (approximately)
INSERT INTO `phone_photos` (`phone_number`, `link`, `is_video`, `size`, `timestamp`) VALUES
	('0696258993', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168161903319724134/file.png', 0, 1405.97, '2023-10-29 12:18:21'),
	('0697518979', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168630201324929065/file.png', 0, 2006.13, '2023-10-30 19:19:12'),
	('0697518979', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168638763799429260/file.png', 0, 1670.15, '2023-10-30 19:53:13'),
	('0697518979', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168644569605353604/file.png', 0, 1839.85, '2023-10-30 20:16:18'),
	('0699049293', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168006280263250031/file.png', 0, 824.25, '2023-10-29 01:59:58');

-- Dumping structure for table dulcy_rp.phone_services_channels
CREATE TABLE IF NOT EXISTS `phone_services_channels` (
  `id` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `company` varchar(50) NOT NULL,
  `last_message` varchar(100) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_services_channels: ~95 rows (approximately)
INSERT INTO `phone_services_channels` (`id`, `phone_number`, `company`, `last_message`, `timestamp`) VALUES
	('y626v', '0679764946', 'mechanic', 'ik lig op de brug', '2023-10-30 19:26:12'),
	('zBC48', '0668188200', 'ambulance', '`kan ambu kome', '2023-10-30 19:41:33');

-- Dumping structure for table dulcy_rp.phone_services_messages
CREATE TABLE IF NOT EXISTS `phone_services_messages` (
  `id` varchar(10) NOT NULL,
  `channel_id` varchar(50) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `x_pos` int(11) DEFAULT NULL,
  `y_pos` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_services_messages_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_services_channels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_services_messages: ~369 rows (approximately)
INSERT INTO `phone_services_messages` (`id`, `channel_id`, `sender`, `message`, `x_pos`, `y_pos`, `timestamp`) VALUES
	('yR9mP', '48739', '0636087287', '<!SENT-LOCATION-X=-1880.7Y=2997.54!>', -1881, 2998, '2023-10-30 12:50:40'),
	('Z6aci', '1t6A7', '0612828144', 'ANWB: Auto gekantelt meneer heeft last van zijn hoofd', 37, -1260, '2023-10-29 12:48:15'),
	('z9845', '63fKX', '0647978429', '5041', -3113, 780, '2023-10-29 15:59:19'),
	('zNg53', '13TcI', '0652151954', 'laat even weten als je eraan komt alvast bedankt', -1655, -596, '2023-10-29 18:00:58'),
	('ZTF38', '6K4qI', '0697518979', 'Prima. dan komt hans van de anwb er aan', NULL, NULL, '2023-10-30 16:27:25');

-- Dumping structure for table dulcy_rp.phone_tiktok_accounts
CREATE TABLE IF NOT EXISTS `phone_tiktok_accounts` (
  `name` varchar(30) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `video_count` int(11) NOT NULL DEFAULT 0,
  `twitter` varchar(20) DEFAULT NULL,
  `instagram` varchar(20) DEFAULT NULL,
  `show_likes` tinyint(1) DEFAULT 1,
  `phone_number` varchar(15) NOT NULL,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_tiktok_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_accounts: ~29 rows (approximately)
INSERT INTO `phone_tiktok_accounts` (`name`, `bio`, `avatar`, `username`, `password`, `verified`, `follower_count`, `following_count`, `like_count`, `video_count`, `twitter`, `instagram`, `show_likes`, `phone_number`, `date_joined`) VALUES
	('Peter Steelpan', NULL, 'https://cdn.discordapp.com/attachments/1161576472994127872/1167961723697889352/file.png', 'peters', '$2a$11$Rbh5x/sE/jNjVj9GZxqmY.dIrIuYk7IZzGjd1xJhmo4gQIUp7K5.G', 0, 1, 0, 10, 2, NULL, NULL, 0, '0601191246', '2023-10-28 23:22:55'),
	('raki', 'ik hou van geile wijfen', 'https://cdn.discordapp.com/attachments/1161576472994127872/1167962421219053568/file.png', 'rakitaki123', '$2a$11$VbA/KOl57ZTmFg37IFcOue5sQ8gT4WbeMKB6pZKBZhuu0c9Dg3UL6', 0, 2, 0, 10, 2, NULL, NULL, 0, '0662411755', '2023-10-28 23:28:01'),
	('ricodomingo', NULL, 'https://cdn.discordapp.com/attachments/1161576472994127872/1168218728299761684/file.png', 'ricodomingo', '$2a$11$SkLCqwAS3nhj4WYCX3yir.4jTRJZE8jD5jsEhUxIlwEfgxN.DIAKK', 0, 2, 0, 8, 1, NULL, NULL, 1, '0605673646', '2023-10-29 16:58:06'),
	('Bigpapi', 'jongen van de bodem', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168336444226547733/file.png', 'taghi', '$2a$11$ZkqyUeJtsjwD7TEv.3dKQu/WT.8fyOeKRLRjBM9JsfESSz3hA5ig6', 0, 0, 1, 0, 0, 'motaghi', 'm.97lb', 1, '0667751915', '2023-10-30 00:11:18'),
	('thy', NULL, NULL, 'tminister', '$2a$11$jvQ4oju7KZ0s9WTowPAM7.gkPnWc/r1CIIGu4hHwhTKYunSxIxcxq', 0, 0, 0, 0, 0, NULL, NULL, 1, '0640419601', '2023-10-29 16:02:40'),
	('Willem hunk`', NULL, NULL, 'willemhunk', '$2a$11$n2umrX5T008tp9BaVYcSdOiZm9GoH/YlmKcdJbyVi6f0vJ.L4FbvG', 0, 0, 0, 0, 0, NULL, NULL, 1, '0623283668', '2023-10-30 19:24:13');

-- Dumping structure for table dulcy_rp.phone_tiktok_channels
CREATE TABLE IF NOT EXISTS `phone_tiktok_channels` (
  `id` varchar(10) NOT NULL,
  `last_message` varchar(50) NOT NULL,
  `member_1` varchar(20) NOT NULL,
  `member_2` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_1` (`member_1`,`member_2`),
  KEY `member_2` (`member_2`),
  CONSTRAINT `phone_tiktok_channels_ibfk_1` FOREIGN KEY (`member_1`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_channels_ibfk_2` FOREIGN KEY (`member_2`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_channels: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_tiktok_comments
CREATE TABLE IF NOT EXISTS `phone_tiktok_comments` (
  `id` varchar(10) NOT NULL,
  `reply_to` varchar(10) DEFAULT NULL,
  `video_id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` varchar(550) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `replies` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `video_id` (`video_id`),
  KEY `username` (`username`),
  KEY `reply_to` (`reply_to`),
  CONSTRAINT `phone_tiktok_comments_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_ibfk_2` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_ibfk_3` FOREIGN KEY (`reply_to`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_comments: ~3 rows (approximately)
INSERT INTO `phone_tiktok_comments` (`id`, `reply_to`, `video_id`, `username`, `comment`, `likes`, `replies`, `timestamp`) VALUES
	('2361R', NULL, '1l7I7', 'pakitakipolitie', 'eet poep', 0, 0, '2023-10-29 17:06:43'),
	('Uu65b', NULL, '9769d', 'mayronl', 'HAHAHAH', 0, 0, '2023-10-30 18:26:32'),
	('w32da', NULL, '9X51C', 'rakitaki123', 'Beste taxi', 0, 0, '2023-10-28 23:34:16');

-- Dumping structure for table dulcy_rp.phone_tiktok_comments_likes
CREATE TABLE IF NOT EXISTS `phone_tiktok_comments_likes` (
  `username` varchar(20) NOT NULL,
  `comment_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`comment_id`),
  KEY `comment_id` (`comment_id`),
  CONSTRAINT `phone_tiktok_comments_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_likes_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_comments_likes: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_tiktok_follows
CREATE TABLE IF NOT EXISTS `phone_tiktok_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_tiktok_follows_ibfk_1` FOREIGN KEY (`followed`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_follows_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_follows: ~6 rows (approximately)
INSERT INTO `phone_tiktok_follows` (`followed`, `follower`) VALUES
	('ricodomingo', 'diego_politie'),
	('peters', 'kvanzuid'),
	('rakitaki123', 'naomi030'),
	('rakitaki123', 'pakitakipolitie'),
	('ricodomingo', 'pakitakipolitie'),
	('diego_politie', 'taghi');

-- Dumping structure for table dulcy_rp.phone_tiktok_likes
CREATE TABLE IF NOT EXISTS `phone_tiktok_likes` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_likes_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_likes: ~37 rows (approximately)
INSERT INTO `phone_tiktok_likes` (`username`, `video_id`) VALUES
	('lingling', '1l7I7'),
	('maxxie', '1l7I7'),
	('naomi030', '1l7I7'),
	('pakitakipolitie', '1l7I7'),
	('peters', '1l7I7'),
	('rakitaki123', '1l7I7'),
	('gwn_jens', '5A4kU'),
	('naomi030', '5A4kU'),
	('pakitakipolitie', '5A4kU'),
	('rakitaki123', '5A4kU'),
	('diego_politie', '7yN15'),
	('jayjay', '7yN15'),
	('mauricedeambulance', '7yN15'),
	('maxxie', '7yN15'),
	('octo', '7yN15'),
	('diego_politie', '9769d'),
	('egbertkaasdeambu', '9769d'),
	('hans', '9769d'),
	('mayronl', '9769d'),
	('octo', '9769d'),
	('pakitakipolitie', '9769d'),
	('ricodomingo', '9769d'),
	('taghi', '9769d'),
	('gwn_jens', '9X51C'),
	('pakitakipolitie', '9X51C'),
	('peters', '9X51C'),
	('rakitaki123', '9X51C'),
	('gwn_jens', 'cmX72'),
	('hans', 'cmX72'),
	('kvanzuid', 'cmX72'),
	('pakitakipolitie', 'cmX72'),
	('peters', 'cmX72'),
	('rakitaki123', 'cmX72'),
	('mayronl', 'nj1U8'),
	('kvanzuid', 'py5vr'),
	('octo', 'py5vr'),
	('octo', 'S34t3');

-- Dumping structure for table dulcy_rp.phone_tiktok_loggedin
CREATE TABLE IF NOT EXISTS `phone_tiktok_loggedin` (
  `username` varchar(20) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`phone_number`),
  KEY `username` (`username`),
  CONSTRAINT `phone_tiktok_loggedin_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_loggedin_ibfk_2` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_loggedin: ~29 rows (approximately)
INSERT INTO `phone_tiktok_loggedin` (`username`, `phone_number`) VALUES
	('achi', '0636087287'),
	('benormus', '0634238976'),
	('brammm', '0677307049'),
	('diego_politie', '0616173418'),
	('egbertkaasdeambu', '0615434986'),
	('gwn_jens', '0693864546'),
	('hans', '0634239516'),
	('hansie', '0697518979'),
	('janf', '0612828144'),
	('janssens', '0654595037'),
	('jayjay', '0652151954'),
	('jeoma', '0658799996'),
	('jesse', '0600199921'),
	('jy9713', '0607617468'),
	('kvanzuid', '0610722059'),
	('lingling', '0620996849'),
	('mauricedeambulance', '0683734761'),
	('maxxie', '0627398746'),
	('mayronl', '0638621412'),
	('montrezs', '0674654063'),
	('naomi030', '0609836007'),
	('octo', '0691995768'),
	('pakitakipolitie', '0634693320'),
	('peters', '0601191246'),
	('rakitaki123', '0662411755'),
	('ricodomingo', '0605673646'),
	('taghi', '0667751915'),
	('tminister', '0640419601'),
	('willemhunk', '0623283668');

-- Dumping structure for table dulcy_rp.phone_tiktok_messages
CREATE TABLE IF NOT EXISTS `phone_tiktok_messages` (
  `id` varchar(10) NOT NULL,
  `channel_id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `content` varchar(500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `sender` (`sender`),
  CONSTRAINT `phone_tiktok_messages_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_tiktok_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_messages_ibfk_2` FOREIGN KEY (`sender`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_messages: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_tiktok_notifications
CREATE TABLE IF NOT EXISTS `phone_tiktok_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `video_id` varchar(10) DEFAULT NULL,
  `comment_id` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  KEY `video_id` (`video_id`),
  KEY `comment_id` (`comment_id`),
  CONSTRAINT `phone_tiktok_notifications_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_ibfk_2` FOREIGN KEY (`from`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_ibfk_3` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_ibfk_4` FOREIGN KEY (`comment_id`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_notifications: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_tiktok_pinned_videos
CREATE TABLE IF NOT EXISTS `phone_tiktok_pinned_videos` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_pinned_videos_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_pinned_videos_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_pinned_videos: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_tiktok_saves
CREATE TABLE IF NOT EXISTS `phone_tiktok_saves` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_saves_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_saves_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_saves: ~1 rows (approximately)
INSERT INTO `phone_tiktok_saves` (`username`, `video_id`) VALUES
	('kvanzuid', 'py5vr');

-- Dumping structure for table dulcy_rp.phone_tiktok_unread_messages
CREATE TABLE IF NOT EXISTS `phone_tiktok_unread_messages` (
  `username` varchar(20) NOT NULL,
  `channel_id` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`username`,`channel_id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_tiktok_unread_messages_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_unread_messages_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `phone_tiktok_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_unread_messages: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_tiktok_videos
CREATE TABLE IF NOT EXISTS `phone_tiktok_videos` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `src` varchar(200) NOT NULL,
  `caption` varchar(100) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `music` text DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `saves` int(11) NOT NULL DEFAULT 0,
  `pinned_comment` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_tiktok_videos_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_videos: ~9 rows (approximately)
INSERT INTO `phone_tiktok_videos` (`id`, `username`, `src`, `caption`, `metadata`, `music`, `likes`, `comments`, `views`, `saves`, `pinned_comment`, `timestamp`) VALUES
	('1l7I7', 'rakitaki123', 'https://cdn.discordapp.com/attachments/1161576472994127872/1167969324909211688/file.mp4', 'hend having #politie #gemeemte dulcy', NULL, NULL, 6, 1, 26, 0, NULL, '2023-10-28 23:33:52'),
	('5A4kU', 'rakitaki123', 'https://cdn.discordapp.com/attachments/1161576472994127872/1167968797714567199/file.mp4', 'pov je bent aan het chillen met agenten op blokkepark', NULL, NULL, 4, 0, 24, 0, NULL, '2023-10-28 23:32:13'),
	('7yN15', 'diego_politie', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168267195462201395/file.mp4', 'gefocust op flappy bird', NULL, NULL, 5, 0, 22, 0, NULL, '2023-10-29 19:17:31'),
	('9769d', 'ricodomingo', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168234770556260463/file.mp4', 'HOMO🟥🟧🟨🟩🟦🟪', NULL, NULL, 8, 1, 24, 0, NULL, '2023-10-29 17:09:03'),
	('9X51C', 'peters', 'https://cdn.discordapp.com/attachments/1161576472994127872/1167967384372519014/file.mp4', 'ZIT VAST', NULL, NULL, 4, 1, 24, 0, NULL, '2023-10-28 23:25:39'),
	('cmX72', 'peters', 'https://cdn.discordapp.com/attachments/1161576472994127872/1167967021896564806/file.mp4', 'HELLUP!', NULL, NULL, 6, 0, 23, 0, NULL, '2023-10-28 23:24:55'),
	('nj1U8', 'diego_politie', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168616260561547396/file.mp4', 'Collega gefocust', '{"ttsUrl":"https://cdn.discordapp.com/attachments/1161576472994127872/1168616630918586368/file.ogg?ex=65526a0c&is=653ff50c&hm=bb9203f9c3a8738236e26b14b6e13137e6dbbb8b7766dc8aa49b35d0063fc261&","tts":"Cop is focust"}', NULL, 1, 0, 11, 0, NULL, '2023-10-30 18:25:19'),
	('py5vr', 'kvanzuid', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168561869305430037/file.mp4', '𝙆𝙫𝙕𝙪𝙞𝙙𝙙', '{"tts":"yo vandaag nieuwe outfit","ttsUrl":"https://cdn.discordapp.com/attachments/1161576472994127872/1168562676323069982/file.ogg?ex=655237cc&is=653fc2cc&hm=a0916c5e07d4a5e73e4355c9dec6bca45e8752a1d0f8eda0b5cbe06d0435c455&"}', NULL, 2, 0, 18, 1, NULL, '2023-10-30 14:51:01'),
	('S34t3', 'kvanzuid', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168573197889839104/file.mp4', '𝙆𝙫𝙕𝙪𝙞𝙙𝙙', NULL, NULL, 1, 0, 17, 0, NULL, '2023-10-30 15:33:04');

-- Dumping structure for table dulcy_rp.phone_tiktok_views
CREATE TABLE IF NOT EXISTS `phone_tiktok_views` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_views_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_views_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tiktok_views: ~189 rows (approximately)
INSERT INTO `phone_tiktok_views` (`username`, `video_id`) VALUES
	('tminister', 'S34t3'),
	('willemhunk', 'S34t3');

-- Dumping structure for table dulcy_rp.phone_tinder_accounts
CREATE TABLE IF NOT EXISTS `phone_tinder_accounts` (
  `name` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `photos` text DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `dob` date NOT NULL,
  `is_male` tinyint(1) NOT NULL,
  `interested_men` tinyint(1) NOT NULL,
  `interested_women` tinyint(1) NOT NULL,
  PRIMARY KEY (`phone_number`),
  CONSTRAINT `phone_tinder_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tinder_accounts: ~32 rows (approximately)
INSERT INTO `phone_tinder_accounts` (`name`, `phone_number`, `photos`, `bio`, `dob`, `is_male`, `interested_men`, `interested_women`) VALUES
	('Peter Steelpan', '0601191246', '["https://cdn.discordapp.com/attachments/1161576472994127872/1167961723697889352/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1167962361387286579/file.png"]', 'Goede kerel, aardig, werkzaam Politie Dulcy. Zoek een leuke compagnon', '1999-05-08', 1, 1, 1),
	('julius', '0605671199', '["https://cdn.discordapp.com/attachments/1161576472994127872/1167962643512967210/file.png"]', 'ceo club77', '1995-04-25', 1, 0, 1),
	('ricodomingo', '0605673646', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168236846753525830/file.png"]', 'Ik ben lekker', '2000-06-22', 1, 1, 1),
	('jos', '0607617468', '["https://cdn.discordapp.com/attachments/1161576472994127872/1167999638582861844/file.png"]', 'sssssssssssssssss', '2000-09-03', 1, 0, 1),
	('Naomi', '0609836007', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168168105961345054/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168168180125012078/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168168204191940708/file.png"]', 'Hoi ik ben naomi!\n\nMijn stem is wat zwaarder door shag', '2000-12-11', 0, 1, 1),
	('𝙆𝙫𝙕𝙪𝙞𝙙𝙙regeltje', '0610722059', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168563112274837524/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168563066787610634/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168561779786387516/file.png"]', 'Ik regel een zieke date voor ons schatje', '1998-12-31', 1, 0, 1),
	('Jan.F', '0612828144', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168191357702123560/file.png"]', 'Ik zoek een leuk vrouwtje\n', '2000-12-31', 1, 0, 1),
	('Diego', '0616173418', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168237230872080487/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168237213239214210/file.png"]', 'Liefste Handhaving van de stad\nSociale jongen\nLief', '2000-03-21', 1, 0, 1),
	('Dimi', '0618624526', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168275444865441882/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168275364716482700/file.png"]', 'Hawaii op pizza is hetzelfde als kinderen lokken', '1999-12-02', 1, 1, 1),
	('LingLing', '0620996849', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168190832399106220/file.png"]', 'Hoi ik ben lingling\n- Ik ben 21 jaar\n- IK kom uit china\n- Ik ben een ambu\n', '2000-02-19', 1, 1, 1),
	('Maxxie', '0627398746', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168232413294506005/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168272989792501860/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168595280904585487/file.png"]', 'Max hiero! Weet niet veel en is een nieuw leven hier op aan t bouwen, wie kan hem helpen!? :)', '2000-06-30', 1, 1, 1),
	('Norah Jones', '0627886276', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168555698389516399/file.png"]', 'tja wat moet ik hier kwijt ', '2002-02-01', 0, 1, 0),
	('Hector Dolby', '0630047170', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168660859229307030/file.png"]', 'Singel man, zoekt een lieve vrouw die gelukkig met elkaar kunnen zijn.', '1993-07-12', 1, 0, 1),
	('Jeroen', '0633077193', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168196797039124541/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168196724288929792/file.png"]', 'Knappe jonge vent met veel geld, op zoek naar een leuk avondje.', '2000-09-09', 1, 0, 1),
	('Bart E.', '0634238976', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168609450437902457/file.png"]', 'Hard werkende ambulancier, zorgzaam, humor en lief. Worden wij een match? Ik hou van dikke billen en grote ..... ', '1991-04-07', 1, 1, 1),
	('Paki Taki', '0634693320', '["https://cdn.discordapp.com/attachments/1161576472994127872/1167968828685299793/file.png"]', 'ik ben echt een lekker snoepje hoor!!!', '1983-11-16', 0, 1, 1),
	('Luuk', '0637174603', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168266346384085053/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168270524888137868/file.png"]', 'Ministers .................', '2004-07-08', 1, 0, 1),
	('thy', '0640419601', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168268969518583828/file.png"]', 'aardige gozer ', '2004-11-28', 1, 0, 1),
	('Mason', '0647978429', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168161406307274772/file.png"]', 'hahahahahahahha', '2001-01-08', 1, 1, 1),
	('Mahmut ', '0649478162', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168259310707556543/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168259347093127218/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168259391686987836/file.png"]', 'Koerdisch\nHete man\nMooie gezicht\nMercedes AMG', '2000-01-24', 1, 0, 1),
	('olafdebrolaf', '0651779209', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168165553584738304/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168165620576165988/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168165918329810984/file.png"]', 'rustige jongen veel verstand van auto\'s', '1994-10-08', 1, 0, 1),
	('Janssens Moer', '0654595037', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168132020799553556/file.png"]', '#DulcyOnTop', '2002-04-06', 1, 1, 1),
	('Teun', '0664163582', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168682976725438624/file.png"]', 'Ik ben een lekkere jongen', '2000-09-08', 1, 0, 1),
	('Manu de Wit', '0665935525', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168543059294822430/file.png"]', 'Een lieve man!', '2004-07-15', 1, 0, 1),
	('Opie', '0676334728', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168588453244567642/file.png"]', 'Werkzaam als Chief Club Operations bij Club77', '1995-11-24', 1, 0, 1),
	('joris', '0679764946', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168264662975004732/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168264683090886687/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168264789894643805/file.png"]', 'hallo ik ben joris ben net hier naar toe verhuist en ben singel', '2000-10-10', 1, 1, 1),
	('Emma.', '0683482535', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168196277150957568/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168189578428031116/file.png"]', 'Heyy ik ben Emma.', '1999-11-20', 0, 1, 0),
	('Maurice Doos.', '0683734761', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168283589239111811/file.png"]', 'Gewoon rijk snapje!\nBaas van de Ambulance. \nDus ben jij nou een meisje, en zoekt nog een leuke baan met een leuke baas, kom naar de Ambulance xD', '2003-02-04', 1, 0, 1),
	('brutuske', '0685603521', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168078807522099231/file.png","https://cdn.discordapp.com/attachments/1161576472994127872/1168221468350480384/file.png"]', 'IK BEN BRUTUS DE GEZELLIGE BOY IN DE STAD', '1988-07-27', 1, 0, 1),
	('jeboyvistick', '0686072564', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168118656442572840/file.png"]', 'ik houd van milfs', '2000-02-16', 1, 1, 1),
	('Tony Taghi', '0694345261', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168218511143866469/file.png"]', 'Jatochhhhhh!', '1999-10-03', 1, 0, 1),
	('Dieter', '0696258993', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168161903319724134/file.png"]', 'Ben Politie Agent', '2000-11-06', 1, 0, 1);

-- Dumping structure for table dulcy_rp.phone_tinder_matches
CREATE TABLE IF NOT EXISTS `phone_tinder_matches` (
  `phone_number_1` varchar(15) NOT NULL,
  `phone_number_2` varchar(15) NOT NULL,
  `latest_message` varchar(1000) DEFAULT NULL,
  `latest_message_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`phone_number_1`,`phone_number_2`),
  KEY `phone_number_2` (`phone_number_2`),
  CONSTRAINT `phone_tinder_matches_ibfk_1` FOREIGN KEY (`phone_number_1`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_matches_ibfk_2` FOREIGN KEY (`phone_number_2`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tinder_matches: ~26 rows (approximately)
INSERT INTO `phone_tinder_matches` (`phone_number_1`, `phone_number_2`, `latest_message`, `latest_message_timestamp`) VALUES
	('0601191246', '0605673646', 'He lekker ding', NULL),
	('0601191246', '0620996849', 'hey mopje', NULL),
	('0601191246', '0634693320', 'jAZEKER\\\\', NULL),
	('0601191246', '0654595037', 'Hey hey', NULL),
	('0601191246', '0686072564', '', NULL),
	('0605673646', '0634238976', 'He snorretje', NULL),
	('0605673646', '0654595037', '', NULL),
	('0609836007', '0605671199', 'Jaa gaat prima', NULL),
	('0609836007', '0612828144', 'Met jou', NULL),
	('0618624526', '0601191246', NULL, NULL),
	('0618624526', '0605673646', NULL, NULL),
	('0618624526', '0654595037', NULL, NULL),
	('0620996849', '0605673646', '', NULL),
	('0620996849', '0616173418', 'hey lekkerding', NULL),
	('0620996849', '0618624526', 'match met dimi wodeeh', NULL),
	('0620996849', '0654595037', 'wadeeh match met janssens', NULL),
	('0620996849', '0679764946', 'aaaah cutie putie', NULL),
	('0634693320', '0605673646', 'wanneer je wilt', NULL),
	('0634693320', '0609836007', 'hey waaneer is onze eerste date', NULL),
	('0634693320', '0616173418', 'vanavond', NULL),
	('0634693320', '0654595037', 'het lekkerd gaan we een keertje samen koppel rijden', NULL),
	('0634693320', '0696258993', 'hey schat patatje waaneer gaan we een keertje koppel rijden dan?', NULL),
	('0647978429', '0620996849', 'skill issue', NULL),
	('0654595037', '0609836007', NULL, NULL),
	('0683482535', '0633077193', 'Bonjour', NULL),
	('0683734761', '0609836007', 'Hé naomi!', NULL);

-- Dumping structure for table dulcy_rp.phone_tinder_messages
CREATE TABLE IF NOT EXISTS `phone_tinder_messages` (
  `id` varchar(10) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `recipient` varchar(15) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_tinder_messages_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_messages_ibfk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tinder_messages: ~60 rows (approximately)
INSERT INTO `phone_tinder_messages` (`id`, `sender`, `recipient`, `content`, `attachments`, `timestamp`) VALUES
	('yIF79', '0683734761', '0609836007', 'Hé naomi!', NULL, '2023-10-29 20:21:34'),
	('z1VGo', '0620996849', '0679764946', 'CUTIE PUTIE', NULL, '2023-10-30 11:45:18');

-- Dumping structure for table dulcy_rp.phone_tinder_swipes
CREATE TABLE IF NOT EXISTS `phone_tinder_swipes` (
  `swiper` varchar(15) NOT NULL,
  `swipee` varchar(15) NOT NULL,
  `liked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`swiper`,`swipee`),
  KEY `swipee` (`swipee`),
  CONSTRAINT `phone_tinder_swipes_ibfk_1` FOREIGN KEY (`swiper`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_swipes_ibfk_2` FOREIGN KEY (`swipee`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_tinder_swipes: ~221 rows (approximately)
INSERT INTO `phone_tinder_swipes` (`swiper`, `swipee`, `liked`) VALUES
	('0696258993', '0609836007', 0),
	('0696258993', '0634693320', 1),
	('0696258993', '0683482535', 1);

-- Dumping structure for table dulcy_rp.phone_twitter_accounts
CREATE TABLE IF NOT EXISTS `phone_twitter_accounts` (
  `display_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `profile_image` varchar(200) DEFAULT NULL,
  `profile_header` varchar(200) DEFAULT NULL,
  `pinned_tweet` varchar(50) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `private` tinyint(1) DEFAULT 0,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_twitter_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_accounts: ~49 rows (approximately)
INSERT INTO `phone_twitter_accounts` (`display_name`, `username`, `password`, `phone_number`, `bio`, `profile_image`, `profile_header`, `pinned_tweet`, `verified`, `follower_count`, `following_count`, `private`, `date_joined`) VALUES
	('thy.M', 't.minister.', '$2a$11$BHLNK0uZaidDh4ETrshzduWJr4JWGwMJxO9UUyIGHYgrB62wGxK0G', '0640419601', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '2023-10-29 16:01:47'),
	('Tony Taghi', 'tony', '$2a$11$MjAl7nKo5jWSpnsG8NjuRuA1czF4TDlST59ozYKOi.mi9lBP5iWGK', '0694345261', NULL, NULL, NULL, NULL, 0, 0, 0, 0, '2023-10-29 14:52:00'),
	('Troy club77', 'troyclub77', '$2a$11$0tgMgbIKhDOMxkbvY9sBFuJesAxY0P39S.rB81KWlGwpACkm.2EA2', '0637216600', 'CLUB 77 is the best in town ', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168137092858118165/file.png', 'https://cdn.discordapp.com/attachments/1161576472994127872/1168136895922970704/file.png', NULL, 0, 2, 0, 0, '2023-10-29 10:32:17'),
	('Willem hunk', 'willemhunk', '$2a$11$lTotJLdyZABO52b5a2YmSuBhgweZfx8q2JL72o90uWgxVKb/9fAia', '0623283668', NULL, NULL, NULL, NULL, 0, 0, 1, 0, '2023-10-30 22:30:53');

-- Dumping structure for table dulcy_rp.phone_twitter_follows
CREATE TABLE IF NOT EXISTS `phone_twitter_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  `notifications` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_twitter_follows_ibfk_1` FOREIGN KEY (`followed`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_follows_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_follows: ~11 rows (approximately)
INSERT INTO `phone_twitter_follows` (`followed`, `follower`, `notifications`) VALUES
	('b.enormus', 'willemhunk', 0),
	('hansv.', 'jochehh', 1),
	('hansv.', 'lingling', 0),
	('jeroen', 'jochehh', 1),
	('juliusclub77', 'rico', 0),
	('naomi_dam030', 'nigeldam', 0),
	('naomi_dam030', 'satestokje040', 0),
	('neus', 'milanlange', 0),
	('rico', 'juliusclub77', 0),
	('troyclub77', 'glen', 0),
	('troyclub77', 'rico', 0);

-- Dumping structure for table dulcy_rp.phone_twitter_follow_requests
CREATE TABLE IF NOT EXISTS `phone_twitter_follow_requests` (
  `requester` varchar(20) NOT NULL,
  `requestee` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`requester`,`requestee`),
  KEY `requestee` (`requestee`),
  CONSTRAINT `phone_twitter_follow_requests_ibfk_1` FOREIGN KEY (`requester`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_follow_requests_ibfk_2` FOREIGN KEY (`requestee`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_follow_requests: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_twitter_hashtags
CREATE TABLE IF NOT EXISTS `phone_twitter_hashtags` (
  `hashtag` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `last_used` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`hashtag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_hashtags: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_twitter_likes
CREATE TABLE IF NOT EXISTS `phone_twitter_likes` (
  `tweet_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`tweet_id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_likes: ~9 rows (approximately)
INSERT INTO `phone_twitter_likes` (`tweet_id`, `username`, `timestamp`) VALUES
	('231L9', 'lingling', '2023-10-29 12:40:24'),
	('231L9', 'naomi_dam030', '2023-10-29 12:46:55'),
	('26174', 'naomi_dam030', '2023-10-29 14:09:36'),
	('26174', 'nigeldam', '2023-10-29 13:22:21'),
	('562h3', 'milanlange', '2023-10-29 18:18:44'),
	('6R3d6', 'brutuscars', '2023-10-30 20:55:25'),
	('fyhe9', 'opie', '2023-10-30 16:32:51'),
	('K4kE4', 'brutuscars', '2023-10-30 15:37:36'),
	('pA4O9', 'hansv.', '2023-10-29 11:17:54');

-- Dumping structure for table dulcy_rp.phone_twitter_loggedin
CREATE TABLE IF NOT EXISTS `phone_twitter_loggedin` (
  `phone_number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`phone_number`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_loggedin_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_loggedin_ibfk_2` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_loggedin: ~48 rows (approximately)
INSERT INTO `phone_twitter_loggedin` (`phone_number`, `username`) VALUES
	('0636087287', 'achi'),
	('0688580433', 'adamdijk'),
	('0676440555', 'amina.'),
	('0630613220', 'amuse_050'),
	('0663273471', 'anoniem'),
	('0634238976', 'b.enormus'),
	('0669459842', 'billy'),
	('0630121470', 'blackmen'),
	('0668770599', 'bobdebouwer'),
	('0683734761', 'brutuscars'),
	('0616173418', 'diego'),
	('0683482535', 'emma'),
	('0677592049', 'glen'),
	('0693864546', 'gwn_jens23'),
	('0697518979', 'hansie'),
	('0634239516', 'hansv.'),
	('0665600610', 'jannie'),
	('0654595037', 'janssens'),
	('0652151954', 'jayjay'),
	('0611621771', 'jeroen'),
	('0686072564', 'jochehh'),
	('0605671199', 'juliusclub77'),
	('0607617468', 'jy.9713'),
	('0617298699', 'klaasdekker'),
	('0620996849', 'lingling'),
	('0682609513', 'lion'),
	('0627398746', 'maxxiemax'),
	('0608996455', 'milanlange'),
	('0674654063', 'monnie77'),
	('0659620793', 'mootjeaanslag'),
	('0667751915', 'motaghi'),
	('0609836007', 'naomi_dam030'),
	('0668188200', 'neus'),
	('0652905358', 'nigeldam'),
	('0651779209', 'olafje'),
	('0676334728', 'opie'),
	('0676825156', 'pablito'),
	('0601191246', 'peterss.'),
	('0680843227', 'rico'),
	('0611034199', 'rosi'),
	('0685603521', 'satestokje040'),
	('0670034209', 'schouten'),
	('0645648271', 'solix'),
	('0630384159', 'stijnm.'),
	('0640419601', 't.minister.'),
	('0694345261', 'tony'),
	('0637216600', 'troyclub77'),
	('0623283668', 'willemhunk');

-- Dumping structure for table dulcy_rp.phone_twitter_messages
CREATE TABLE IF NOT EXISTS `phone_twitter_messages` (
  `id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_twitter_messages_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_messages_ibfk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_messages: ~8 rows (approximately)
INSERT INTO `phone_twitter_messages` (`id`, `sender`, `recipient`, `content`, `attachments`, `timestamp`) VALUES
	('48x1T', 'milanlange', 'neus', 'YO', '[]', '2023-10-29 18:18:22'),
	('544HR', 'stijnm.', 'juliusclub77', 'ik moest contact met je opnemen?', '[]', '2023-10-30 22:13:51'),
	('99tlf', 'glen', 'troyclub77', 'Hey', '[]', '2023-10-29 10:33:21'),
	('Ip76D', 'juliusclub77', 'stijnm.', 'ben onderweg', '[]', '2023-10-30 22:15:41'),
	('MNMR8', 'stijnm.', 'juliusclub77', 'nu', '[]', '2023-10-30 22:15:12'),
	('qyIS3', 'stijnm.', 'juliusclub77', 'zijn we', '[]', '2023-10-30 22:15:27'),
	('t6Z62', 'juliusclub77', 'stijnm.', 'kom maar naar de club als je wil', '[]', '2023-10-30 22:15:22'),
	('vVOuZ', 'juliusclub77', 'stijnm.', 'wanneer kunnen jullie mij meeten?', '[]', '2023-10-30 22:15:03');

-- Dumping structure for table dulcy_rp.phone_twitter_notifications
CREATE TABLE IF NOT EXISTS `phone_twitter_notifications` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `tweet_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  CONSTRAINT `phone_twitter_notifications_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_notifications_ibfk_2` FOREIGN KEY (`from`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_notifications: ~22 rows (approximately)
INSERT INTO `phone_twitter_notifications` (`id`, `username`, `from`, `type`, `tweet_id`, `timestamp`) VALUES
	('1E9P5', 'naomi_dam030', 'satestokje040', 'follow', NULL, '2023-10-29 16:13:13'),
	('1I82r', 'rico', 'juliusclub77', 'follow', NULL, '2023-10-29 14:57:15'),
	('25Wl1', 'jeroen', 'jochehh', 'reply', '3C7zL', '2023-10-29 08:37:39'),
	('2y8BB', 'emma', 'anoniem', 'reply', 'i6927', '2023-10-29 20:48:31'),
	('4q826', 'troyclub77', 'glen', 'reply', '3x46S', '2023-10-29 10:32:42'),
	('51q7m', 'hansv.', 'jochehh', 'follow', NULL, '2023-10-29 10:30:58'),
	('5Yin3', 'neus', 'milanlange', 'follow', NULL, '2023-10-29 18:18:13'),
	('7eABR', 'hansv.', 'lingling', 'follow', NULL, '2023-10-29 14:07:41'),
	('7j61F', 'jochehh', 'jeroen', 'reply', 'aV1NG', '2023-10-29 08:19:22'),
	('7T89C', 'troyclub77', 'glen', 'follow', NULL, '2023-10-29 10:33:15'),
	('934TP', 'troyclub77', 'rico', 'follow', NULL, '2023-10-29 15:05:45'),
	('99169', 'anoniem', 'emma', 'reply', 'Ysxpn', '2023-10-29 20:47:51'),
	('9C14h', 'naomi_dam030', 'nigeldam', 'like', '26174', '2023-10-29 13:22:22'),
	('e5e8U', 'jeroen', 'jochehh', 'follow', NULL, '2023-10-29 08:37:43'),
	('FcOg6', 'b.enormus', 'willemhunk', 'follow', NULL, '2023-10-30 22:31:17'),
	('G7KAM', 'lingling', 'naomi_dam030', 'like', '231L9', '2023-10-29 12:46:55'),
	('i2XT4', 'pablito', 'milanlange', 'like', '562h3', '2023-10-29 18:18:44'),
	('J9mD4', 'jochehh', 'hansv.', 'tweet', 'lg98v', '2023-10-29 18:27:46'),
	('LO8I2', 'naomi_dam030', 'nigeldam', 'follow', NULL, '2023-10-29 13:22:17'),
	('PGK3D', 'jochehh', 'hansv.', 'tweet', '4IO7K', '2023-10-29 10:32:30'),
	('Q6q3d', 'juliusclub77', 'rico', 'follow', NULL, '2023-10-29 15:05:37'),
	('UO6sA', 'jochehh', 'hansv.', 'tweet', 'pA4O9', '2023-10-29 10:40:11');

-- Dumping structure for table dulcy_rp.phone_twitter_promoted
CREATE TABLE IF NOT EXISTS `phone_twitter_promoted` (
  `tweet_id` varchar(50) NOT NULL,
  `promotions` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tweet_id`),
  CONSTRAINT `phone_twitter_promoted_ibfk_1` FOREIGN KEY (`tweet_id`) REFERENCES `phone_twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_promoted: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_twitter_retweets
CREATE TABLE IF NOT EXISTS `phone_twitter_retweets` (
  `tweet_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`tweet_id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_retweets_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_retweets: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.phone_twitter_tweets
CREATE TABLE IF NOT EXISTS `phone_twitter_tweets` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `content` varchar(280) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `reply_to` varchar(50) DEFAULT NULL,
  `like_count` int(11) DEFAULT 0,
  `reply_count` int(11) DEFAULT 0,
  `retweet_count` int(11) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_tweets_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_twitter_tweets: ~59 rows (approximately)
INSERT INTO `phone_twitter_tweets` (`id`, `username`, `content`, `attachments`, `reply_to`, `like_count`, `reply_count`, `retweet_count`, `timestamp`) VALUES
	('186ET', 'brutuscars', '', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168288693036007444/file.png"]', NULL, 0, 0, 0, '2023-10-29 20:43:48'),
	('19978', 'jochehh', 'weet iemandf wrm ik niks kan kppen bij de cardealer ik zi ehier 2 autos staan mr dr is nergens iets waar k t kan kopen', NULL, NULL, 0, 1, 0, '2023-10-29 08:09:19'),
	('1AB24', 'anoniem', 'Is er een MC in stad\n', NULL, NULL, 0, 0, 0, '2023-10-29 10:26:27'),
	('231L9', 'lingling', 'LINGLING IN AMBULANCE OUTFIT MET HANS!\n', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168167240936464494/file.png"]', NULL, 2, 0, 0, '2023-10-29 12:40:15'),
	('26174', 'naomi_dam030', 'Lekker stukje rijden. ', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168168204191940708/file.png"]', NULL, 2, 0, 0, '2023-10-29 12:44:37'),
	('3734Y', 'milanlange', '7312 bedoel ik\n', NULL, NULL, 0, 0, 0, '2023-10-29 11:31:35'),
	('3C7zL', 'jochehh', 'ja ik sta dr nu\n', NULL, 'aV1NG', 0, 0, 0, '2023-10-29 08:37:39'),
	('3g6i6', 'jayjay', 'iemand die rotzooi verkoopt\n', NULL, NULL, 0, 0, 0, '2023-10-30 00:07:46'),
	('3x46S', 'glen', 'Hey @troy', NULL, '88f4o', 0, 0, 0, '2023-10-29 10:32:42'),
	('3Z7fw', 'peterss.', 'Subaru Impreza te koop! Dealer: 90k, nu 60k\n', NULL, NULL, 0, 0, 0, '2023-10-29 20:32:57'),
	('48P2r', 'nigeldam', 'Nieuw in de stad wie koopt er rubber en metaal op?', NULL, NULL, 0, 0, 0, '2023-10-29 12:58:56'),
	('4E98D', 'billy', 'waar kan ik repair kit kopen me auto is kapoet\n', NULL, NULL, 0, 0, 0, '2023-10-30 14:20:59'),
	('4IO7K', 'hansv.', 'volg me oip insta: hans v', NULL, NULL, 0, 0, 0, '2023-10-29 10:32:30'),
	('4nA8K', 'jy.9713', 'toys', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168338754063314954/file.png"]', NULL, 0, 0, 0, '2023-10-30 00:01:29'),
	('562h3', 'pablito', 'Prachtautos', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168251395581939763/file.png"]', NULL, 1, 0, 0, '2023-10-29 18:14:13'),
	('5K554', 'brutuscars', 'Brutus Cars is open! Locatie 9145. Op dit moment 1 fully golf 8 tekoop. Vanaf volgende week meer!', NULL, NULL, 0, 0, 0, '2023-10-29 20:43:38'),
	('62g38', 'gwn_jens23', '.', NULL, NULL, 0, 0, 0, '2023-10-30 15:48:55'),
	('6aAN6', 'amina.', 'yoo', NULL, NULL, 0, 0, 0, '2023-10-29 18:47:14'),
	('6h398', 'stijnm.', 'Kan er iemand naar de club komen die ook de club in kan ?', NULL, NULL, 0, 0, 0, '2023-10-30 22:14:55'),
	('6JtZf', 'juliusclub77', 'club77 is geopend!!!!!', NULL, NULL, 0, 0, 0, '2023-10-29 14:50:30'),
	('6R3d6', 'brutuscars', 'Brutus Cars | Tekoop Subaru Fully \n0683734761', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168653057186344990/file.png"]', NULL, 1, 0, 0, '2023-10-30 20:53:51'),
	('799oM', 'achi', 'Iemand die ze voertuig voor goedkoop fully wilt, connect me\n', NULL, NULL, 0, 0, 0, '2023-10-30 19:00:30'),
	('7vdFL', 'mootjeaanslag', 'AGENTEN GA IN DIENST\n', NULL, NULL, 0, 0, 0, '2023-10-29 17:30:17'),
	('81Fj5', 'rosi', 'iemand mooir RS^ABT FULLY\nzelf bieden ', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168236727970844762/file.png"]', NULL, 0, 0, 0, '2023-10-29 17:19:05'),
	('83565', 'jochehh', 'jeroen ik ben dr nog\n', NULL, NULL, 0, 0, 0, '2023-10-29 08:36:47'),
	('869i1', 'jochehh', 'wie wilt dr een goedkope motor kopenm?!', NULL, NULL, 0, 0, 0, '2023-10-29 10:30:55'),
	('88f4o', 'troyclub77', 'Een goede morgen \n', NULL, NULL, 0, 1, 0, '2023-10-29 10:32:29'),
	('89m3G', 'bobdebouwer', 'peter s aanwezig ?\n', NULL, NULL, 0, 0, 0, '2023-10-30 17:29:36'),
	('917Oo', 'b.enormus', 'Ambulancier tot uw dienst, check ook me tinder profiel! ', NULL, NULL, 0, 0, 0, '2023-10-30 17:59:15'),
	('932s3', 'hansv.', 'heyy\n', NULL, NULL, 0, 0, 0, '2023-10-29 10:29:26'),
	('9p86I', 'schouten', 'C8 supersport  fully Tekoop \n\nC 63 AMG fully\n\nRS6apt fully ', NULL, NULL, 0, 0, 0, '2023-10-30 16:38:09'),
	('A7XoE', 'solix', 'te koop brabus voor 1.1 mil hij is fully ', NULL, NULL, 0, 0, 0, '2023-10-30 16:30:59'),
	('aV1NG', 'jeroen', 'Ben je er nog steeds?\nw', NULL, '19978', 0, 1, 0, '2023-10-29 08:19:22'),
	('d753k', 'jochehh', 'Wie heeft dr voor mij een goedkoope beginners auto tekoop?', NULL, NULL, 0, 0, 0, '2023-10-29 11:52:07'),
	('df3f4', 'klaasdekker', 'Tesla te koop fully 300k normaal 420k stock\n', NULL, NULL, 0, 0, 0, '2023-10-29 19:18:46'),
	('DT148', 'jochehh', 'wie wilt me ff ophalen bij de autohandelaa ik kan dr niks kopen??\n', NULL, NULL, 0, 0, 0, '2023-10-29 08:04:19'),
	('E81B4', 'juliusclub77', 'rico kom buiten\n', NULL, NULL, 0, 0, 0, '2023-10-29 14:05:17'),
	('fyhe9', 'opie', 'Brabus G900 Rocket te koop!! Fully tuned. Richtprijs 1,4M. Nieuewprijs is 1.5M stock!!', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168588063774089276/file.png"]', NULL, 1, 0, 0, '2023-10-30 16:32:46'),
	('h27zH', 'jy.9713', '', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168235644619862118/file.png"]', NULL, 0, 0, 0, '2023-10-29 17:16:21'),
	('h9573', 'amina.', '340 steen 200+ metaal 100+ rubber 200+ rommel te koop (bieden!!!))\n', NULL, NULL, 0, 0, 0, '2023-10-30 18:57:27'),
	('HFbKt', 'peterss.', 'Brutus Cars aanwezig?', NULL, NULL, 0, 0, 0, '2023-10-30 13:03:13'),
	('i6927', 'anoniem', 'Zou je me  toch even willen bellen, 0663273471\n', NULL, 'Ysxpn', 0, 0, 0, '2023-10-29 20:48:30'),
	('jyVRN', 'solix', 'Brabus 800 te koop voor 1.1 MIL \n', NULL, NULL, 0, 0, 0, '2023-10-30 15:30:47'),
	('K4kE4', 'brutuscars', 'Brutus Cars is aanwezig voor auto\'s verkoop! We hebben een paar leuke auto\'s staan! Kom zeker even kijken! 8037', NULL, NULL, 1, 0, 0, '2023-10-30 15:36:00'),
	('kJA3I', 'anoniem', 'Is emma MS-13 beschikbaar.', NULL, NULL, 0, 1, 0, '2023-10-29 20:43:47'),
	('lg98v', 'hansv.', 'volg me ff op insta hansdeambu', NULL, NULL, 0, 0, 0, '2023-10-29 18:27:46'),
	('m59PZ', 'neus', 'kan er eff politie in dienst gaan', NULL, NULL, 0, 0, 0, '2023-10-29 17:58:25'),
	('N5PTy', 'troyclub77', 'rico kom naar jullie poort', NULL, NULL, 0, 0, 0, '2023-10-29 14:04:17'),
	('n815t', 'milanlange', 'iemand die mij ff kan helpen op 7212?\n', NULL, NULL, 0, 0, 0, '2023-10-29 11:31:23'),
	('p3O86', 'anoniem', 'kan er een God naar 48 toekomen (mogelijk tovenaar) op gebedjes worden nie gereageerd\n', NULL, NULL, 0, 0, 0, '2023-10-30 17:33:37'),
	('pA4O9', 'hansv.', 'wil jij ook alles zien van de ambulance? volg dan nu hansdeambu  op instagram!!', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168136805627994252/file.png"]', NULL, 1, 0, 0, '2023-10-29 10:40:11'),
	('st937', 'olafje', 'eyh mensen van de legendary peaky blinders aanwezig??\n', NULL, NULL, 0, 0, 0, '2023-10-29 19:27:08'),
	('T2m6m', 'jochehh', 'hoe kan ej een auto kopen het is geclitcht?!?!?!', NULL, NULL, 0, 0, 0, '2023-10-29 08:52:48'),
	('vY9j7', 'satestokje040', 'te koop fully cayenne gt', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168224304874397806/file.png"]', NULL, 0, 0, 0, '2023-10-30 14:53:47'),
	('WTbIz', 'anoniem', 'Hoe start je de moter van je auto?\n', NULL, NULL, 0, 0, 0, '2023-10-29 10:09:20'),
	('XWPd3', 'rico', 'Mogguh\n', NULL, NULL, 0, 0, 0, '2023-10-29 14:41:49'),
	('Ysxpn', 'emma', 'nope', NULL, 'kJA3I', 0, 1, 0, '2023-10-29 20:47:51'),
	('Z683W', 'jy.9713', '110 120 130 geen enkel probleem', '["https://cdn.discordapp.com/attachments/1161576472994127872/1168239668698025994/file.png"]', NULL, 0, 0, 0, '2023-10-29 17:27:41'),
	('zcD31', 'jy.9713', 'mo taghi soon in de stad man boys\n', NULL, NULL, 0, 0, 0, '2023-10-29 20:15:31');

-- Dumping structure for table dulcy_rp.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=416 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dulcy_rp.phone_users_contacts: 398 rows
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
	(411, 'b2521f5613e0652c110e3a73b487324700cf6b1a', '0634370740', 'rubben'),
	(412, 'f3be726db240a6c1a7be5b96db00dea4c01da053', '0691342598', 'Pep'),
	(413, 'f8fc26015d48e5a060f81fba41a31732509745d5', '0664783090', 'achie'),
	(414, 'e465386e93fc478804e5b4c26076e1e604f17133', '0669115169', 'Joris'),
	(415, '0d47e9fd65d3784c19f7153e3e87ac117ab9209f', '0692264614', 'brutus');
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Dumping structure for table dulcy_rp.phone_voice_memos_recordings
CREATE TABLE IF NOT EXISTS `phone_voice_memos_recordings` (
  `id` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_url` varchar(500) NOT NULL,
  `file_length` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_voice_memos_recordings_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_voice_memos_recordings: ~1 rows (approximately)
INSERT INTO `phone_voice_memos_recordings` (`id`, `phone_number`, `file_name`, `file_url`, `file_length`, `created_at`) VALUES
	('Y78pz', '0662411755', 'New Recording', 'https://cdn.discordapp.com/attachments/1161576472994127872/1167979193406074880/file.ogg?ex=65501863&is=653da363&hm=69cac90c514f81aa764dfbcbb42515e1a9b1703a091a17df36b6e7501c10e20e&', 4, '2023-10-29 00:12:20');

-- Dumping structure for table dulcy_rp.phone_wallet_transactions
CREATE TABLE IF NOT EXISTS `phone_wallet_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `amount` int(11) NOT NULL,
  `company` varchar(50) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_wallet_transactions_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_wallet_transactions: ~50 rows (approximately)
INSERT INTO `phone_wallet_transactions` (`id`, `phone_number`, `amount`, `company`, `logo`, `timestamp`) VALUES
	(1, '0688580433', -500, 'Olaf\'s Phone ', NULL, '2023-10-28 22:11:12'),
	(2, '0651779209', 500, '0688580433', NULL, '2023-10-28 22:11:12'),
	(3, '0688580433', -500, 'Olaf\'s Phone ', NULL, '2023-10-28 22:11:27'),
	(4, '0651779209', 500, '0688580433', NULL, '2023-10-28 22:11:27'),
	(5, '0688580433', 500, 'Olaf\'s Phone ', NULL, '2023-10-28 22:13:59'),
	(6, '0651779209', -500, 'adam ', NULL, '2023-10-28 22:13:59'),
	(7, '0651779209', -10, 'Janssens\'s Phone ', NULL, '2023-10-29 10:21:33'),
	(8, '0654595037', 10, 'Olaf\'s Phone ', NULL, '2023-10-29 10:21:33'),
	(9, '0654595037', -10, 'Olaf\'s Phone ', NULL, '2023-10-29 10:46:18'),
	(10, '0651779209', 10, 'Janssens\'s Phone ', NULL, '2023-10-29 10:46:18'),
	(11, '0612828144', 1, 'Silentmonky ', NULL, '2023-10-29 14:17:52'),
	(12, '0665600610', -1, 'Gevuldekoek Jan', NULL, '2023-10-29 14:17:52'),
	(13, '0665600610', 1, 'Gevuldekoek Jan', NULL, '2023-10-29 14:17:57'),
	(14, '0612828144', -1, 'Silentmonky ', NULL, '2023-10-29 14:17:57'),
	(15, '0628273962', -11000, '0620996849', NULL, '2023-10-29 14:24:53'),
	(16, '0620996849', 11000, '0628273962', NULL, '2023-10-29 14:24:53'),
	(17, '0685603521', -50000, '[MS-13] Emma ', NULL, '2023-10-29 17:15:38'),
	(18, '0683482535', 50000, 'Brutus\'s Phone ', NULL, '2023-10-29 17:15:38'),
	(19, '0608996455', 5000, 'max baas', NULL, '2023-10-29 17:19:09'),
	(20, '0627398746', -5000, '0608996455', NULL, '2023-10-29 17:19:09'),
	(21, '0601191246', 10000, '[MS-13] Emma ', NULL, '2023-10-30 14:06:23'),
	(22, '0683482535', -10000, '0601191246', NULL, '2023-10-30 14:06:23'),
	(23, '0683482535', -5000, '0601191246', NULL, '2023-10-30 14:15:52'),
	(24, '0601191246', 5000, '[MS-13] Emma ', NULL, '2023-10-30 14:15:52'),
	(25, '0685603521', -50000, '[MS-13] Emma ', NULL, '2023-10-30 14:30:15'),
	(26, '0683482535', 50000, 'Brutus\'s Phone ', NULL, '2023-10-30 14:30:15'),
	(27, '0685603521', -29000, '[MS-13] Emma ', NULL, '2023-10-30 15:05:30'),
	(28, '0683482535', 29000, 'Brutus\'s Phone ', NULL, '2023-10-30 15:05:30'),
	(29, '0683734761', -1, 'Tactix Klant Brutus', NULL, '2023-10-30 15:38:40'),
	(30, '0601191246', 1, '0683734761', NULL, '2023-10-30 15:38:40'),
	(31, '0683734761', -52999, 'Tactix Klant Brutus', NULL, '2023-10-30 15:38:50'),
	(32, '0601191246', 52999, '0683734761', NULL, '2023-10-30 15:38:50'),
	(33, '0683482535', -15000, '0600199921', NULL, '2023-10-30 16:13:28'),
	(34, '0600199921', 15000, '[MS-13] Emma ', NULL, '2023-10-30 16:13:28'),
	(35, '0637174603', -1000, 'stijn Minister', NULL, '2023-10-30 16:18:24'),
	(36, '0630384159', 1000, 'Luukie ', NULL, '2023-10-30 16:18:24'),
	(37, '0607617468', -1000000, 'Solix\'s Phone ', NULL, '2023-10-30 17:18:08'),
	(38, '0645648271', 1000000, 'Jos\'s Phone ', NULL, '2023-10-30 17:18:08'),
	(39, '0645648271', -500000, 'Brutus\'s Phone ', NULL, '2023-10-30 18:53:25'),
	(40, '0685603521', 500000, 'Solix\'s Phone ', NULL, '2023-10-30 18:53:25'),
	(41, '0685603521', 100000, 'Solix\'s Phone ', NULL, '2023-10-30 19:07:00'),
	(42, '0645648271', -100000, 'Brutus\'s Phone ', NULL, '2023-10-30 19:07:00'),
	(43, '0680843227', -10000, 'Mario\'s Phone ', NULL, '2023-10-30 20:36:59'),
	(44, '0652873518', 10000, 'Rico\'s Phone ', NULL, '2023-10-30 20:36:59'),
	(45, '0628273962', 20000, 'Rico\'s Phone ', NULL, '2023-10-30 20:38:53'),
	(46, '0680843227', -20000, 'Appie\'s Phone ', NULL, '2023-10-30 20:38:53'),
	(47, '0617298699', 100, 'Troy club77 ', NULL, '2023-10-30 21:17:33'),
	(48, '0637216600', -100, 'Klaas MS-13 ', NULL, '2023-10-30 21:17:33'),
	(49, '0617298699', -100, 'Pablito\'s Phone ', NULL, '2023-10-30 21:36:26'),
	(50, '0676825156', 100, 'Klaas MS-13 ', NULL, '2023-10-30 21:36:26');

-- Dumping structure for table dulcy_rp.phone_yellow_pages_posts
CREATE TABLE IF NOT EXISTS `phone_yellow_pages_posts` (
  `id` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `attachment` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.phone_yellow_pages_posts: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.player_handlings
CREATE TABLE IF NOT EXISTS `player_handlings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `handlingData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `carName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `handlingName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `creator` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `handlingData` CHECK (json_valid(`handlingData`))
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.player_handlings: ~108 rows (approximately)
INSERT INTO `player_handlings` (`id`, `identifier`, `handlingData`, `carName`, `handlingName`, `creator`) VALUES
	(158, 'license:9bbc9e1516d752759f9a5f80ac6111d6ccf9c077', '{"drift":[],"handling":{"fRollCentreHeightRear":{"value":0.40000000596046},"fSeatOffsetDistZ":{"value":0.05000000074505},"stanceRearWidth":{"Label":"stanceRearWidth","value":0.85,"Group":"Stance","Min":{"value":-1.3},"Max":{"value":1.5},"Description":""},"fSuspensionLowerLimit":{"value":-0.23999999463558},"fClutchChangeRateScaleDownShift":{"value":1.29999995231628},"fDeformationDamageMult":{"value":0.80000001192092},"fDownforceModifier":{"value":0.0},"fTractionBiasFront":{"value":0.49000000953674},"driftfInitialDriveForce":{"Group":"Drift","value":1.0},"fSeatOffsetDistY":{"value":0.0},"fDriveInertia":{"value":1.0},"fBrakeBiasFront":{"value":0.60000002384185},"fHandBrakeForce":{"value":0.89999997615814},"fSteeringLock":{"value":35.0},"fWeaponDamageScaledToVehHealthMult":{"value":0.5},"fSeatOffsetDistX":{"value":0.0},"fTractionCurveMin":{"value":1.85000002384185},"fInitialDriveMaxFlatVel":{"value":155.0},"fInitialDragCoeff":{"value":2.5},"fRollCentreHeightFront":{"value":0.40000000596046},"driftfSteeringLock":{"Group":"Drift","value":1.0},"fBoostMaxSpeed":{"value":70.0},"fEngineDamageMult":{"value":1.32820129394531},"fSuspensionForce":{"value":1.60000002384185},"fMass":{"value":2400.0},"fAntiRollBarForce":{"value":0.60000002384185},"fWeaponDamageMult":{"value":0.10000000149011},"stanceFrontWidth":{"Label":"stanceFrontWidth","value":0.85,"Group":"Stance","Min":{"value":-1.3},"Max":{"value":1.5},"Description":""},"driftfDriveBiasFront":{"Group":"Drift","value":1.0},"fDriveBiasFront":{"value":0.44999998807907},"stanceFrontCamber":{"Label":"stanceFrontCamber","value":-0.0,"Group":"Stance","Min":{"value":-0.5},"Max":{"value":0.5},"Description":""},"fTractionLossMult":{"value":0.80000001192092},"fSuspensionCompDamp":{"value":1.0},"fCollisionDamageMult":{"value":1.0},"fInitialDriveForce":{"value":0.34799998998641},"fBrakeForce":{"value":0.80000001192092},"fCamberStiffnesss":{"value":0.0},"fOilVolume":{"value":5.0},"fAntiRollBarBiasFront":{"value":0.64999997615814},"fClutchChangeRateScaleUpShift":{"value":1.98000001907348},"fSuspensionReboundDamp":{"value":1.60000014305114},"driftfTractionCurveMin":{"Group":"Drift","value":1.0},"fRocketBoostCapacity":{"value":1.25},"fSuspensionRaise":{"value":0.0},"vecInertiaMultiplier":{"value":{"x":1.20000004768371,"y":1.5,"z":2.0}},"fPopUpLightRotation":{"value":0.0},"fSuspensionUpperLimit":{"value":0.10000000149011},"fSuspensionBiasFront":{"value":0.51999998092651},"fTractionCurveMax":{"value":2.15000009536743},"stanceRearCamber":{"Label":"stanceRearCamber","value":-0.0,"Group":"Stance","Min":{"value":-0.5},"Max":{"value":0.5},"Description":""},"fPercentSubmerged":{"value":85.0},"vecCentreOfMassOffset":{"value":{"x":0.0,"y":0.05000000074505,"z":0.15000000596046}},"fLowSpeedTractionLossMult":{"value":0.9200000166893},"nInitialDriveGears":{"value":5.0},"fTractionSpringDeltaMax":{"value":0.12999999523162},"fTractionCurveLateral":{"value":19.5}}}', 'D35', 'd35', NULL),
	(160, 'license:ab9e6df7ef7eef57e378b0e5837b838e85db797c', '{"handling":{"fTractionLossMult":{"value":1.0},"fInitialDriveMaxFlatVel":{"value":110.0},"fCamberStiffnesss":{"value":0.0},"fTractionCurveMax":{"value":1.79999995231628},"fCollisionDamageMult":{"value":1.0},"fSeatOffsetDistY":{"value":0.0},"vecInertiaMultiplier":{"value":{"x":1.0,"y":1.29999995231628,"z":1.5}},"stanceRearCamber":{"Label":"stanceRearCamber","Min":{"value":-0.5},"Group":"Stance","Description":"","value":9.910099834087305e-7,"Max":{"value":0.5}},"driftfTractionCurveMin":{"Group":"Drift","value":1.0},"fDriveInertia":{"value":0.63810002803802},"fPercentSubmerged":{"value":80.0},"fSuspensionReboundDamp":{"value":1.79999995231628},"driftfInitialDriveForce":{"Group":"Drift","value":1.0},"fSuspensionCompDamp":{"value":0.80000007152557},"fTractionSpringDeltaMax":{"value":0.5},"driftfDriveBiasFront":{"Group":"Drift","value":1.0},"fTractionBiasFront":{"value":0.48500001430511},"driftfSteeringLock":{"Group":"Drift","value":1.0},"fAntiRollBarForce":{"value":0.5},"fPopUpLightRotation":{"value":0.0},"stanceRearWidth":{"Label":"stanceRearWidth","Min":{"value":-1.3},"Group":"Stance","Description":"","value":0.86548048257827,"Max":{"value":1.5}},"fMass":{"value":2500.0},"stanceFrontWidth":{"Label":"stanceFrontWidth","Min":{"value":-1.3},"Group":"Stance","Description":"","value":0.86548048257827,"Max":{"value":1.5}},"fOilVolume":{"value":5.0},"vecCentreOfMassOffset":{"value":{"x":0.0,"y":0.0,"z":0.0}},"fClutchChangeRateScaleUpShift":{"value":2.09800004959106},"fRocketBoostCapacity":{"value":5.32110023498535},"fWeaponDamageScaledToVehHealthMult":{"value":0.5},"fDriveBiasFront":{"value":0.0},"fBrakeBiasFront":{"value":0.63999998569488},"fInitialDriveForce":{"value":0.2267999947071},"fAntiRollBarBiasFront":{"value":0.30000001192092},"fLowSpeedTractionLossMult":{"value":1.0},"fTractionCurveLateral":{"value":22.0},"fRollCentreHeightRear":{"value":0.46000000834465},"stanceFrontCamber":{"Label":"stanceFrontCamber","Min":{"value":-0.5},"Group":"Stance","Description":"","value":9.910099834087305e-7,"Max":{"value":0.5}},"fDownforceModifier":{"value":0.0},"fHandBrakeForce":{"value":0.40000000596046},"fDeformationDamageMult":{"value":0.80000001192092},"fRollCentreHeightFront":{"value":0.40999999642372},"fSuspensionBiasFront":{"value":0.5},"fSeatOffsetDistZ":{"value":0.0},"fSuspensionForce":{"value":1.20000004768371},"fSuspensionRaise":{"value":0.0},"fEngineDamageMult":{"value":1.32820129394531},"fWeaponDamageMult":{"value":0.10000000149011},"fSuspensionUpperLimit":{"value":0.10000000149011},"fSteeringLock":{"value":35.0},"nInitialDriveGears":{"value":5.0},"fInitialDragCoeff":{"value":6.0},"fSuspensionLowerLimit":{"value":-0.14000000059604},"fBoostMaxSpeed":{"value":70.0},"fTractionCurveMin":{"value":1.54999995231628},"fBrakeForce":{"value":0.60000002384185},"fClutchChangeRateScaleDownShift":{"value":1.29999995231628},"fSeatOffsetDistX":{"value":0.0}},"drift":[]}', 'SPEEDO2', 'speedo2 Clow', NULL),
	(165, 'license:29918ddbc531cd2ddbf18fc994f6748ea0c2a224', '{"drift":[],"handling":{"fRocketBoostCapacity":{"value":1.25},"stanceRearWidth":{"Max":{"value":1.5},"Label":"stanceRearWidth","Group":"Stance","Description":"","value":0.84073400497436,"Min":{"value":-1.3}},"fSuspensionCompDamp":{"value":1.39999997615814},"fClutchChangeRateScaleDownShift":{"value":9.0},"fSteeringLock":{"value":42.0},"fCamberStiffnesss":{"value":0.0},"fBrakeBiasFront":{"value":0.44999998807907},"driftfInitialDriveForce":{"value":1.0,"Group":"Drift"},"fTractionLossMult":{"value":1.0},"fEngineDamageMult":{"value":1.21978902816772},"fInitialDriveMaxFlatVel":{"value":54.82220077514648},"fTractionCurveMin":{"value":2.38000011444091},"vecCentreOfMassOffset":{"value":{"x":0.0,"y":0.0,"z":0.0}},"fPercentSubmerged":{"value":85.0},"fInitialDriveForce":{"value":1.74059998989105},"fInitialDragCoeff":{"value":7.80000019073486},"fHandBrakeForce":{"value":0.69999998807907},"fSeatOffsetDistY":{"value":0.0},"fTractionBiasFront":{"value":0.48500001430511},"fDownforceModifier":{"value":0.0},"fDriveBiasFront":{"value":0.5},"fCollisionDamageMult":{"value":0.879498898983},"fRollCentreHeightFront":{"value":0.40999999642372},"fTractionCurveLateral":{"value":22.5},"vecInertiaMultiplier":{"value":{"x":1.0,"y":1.29999995231628,"z":1.5}},"fSuspensionRaise":{"value":0.0},"driftfTractionCurveMin":{"value":1.0,"Group":"Drift"},"stanceFrontCamber":{"Max":{"value":0.5},"Label":"stanceFrontCamber","Group":"Stance","Description":"","value":-0.0,"Min":{"value":-0.5}},"driftfDriveBiasFront":{"value":1.0,"Group":"Drift"},"fMass":{"value":1800.0},"fTractionCurveMax":{"value":2.5},"driftfSteeringLock":{"value":1.0,"Group":"Drift"},"fAntiRollBarBiasFront":{"value":0.60000002384185},"fSeatOffsetDistZ":{"value":0.0},"fTractionSpringDeltaMax":{"value":0.15000000596046},"fBrakeForce":{"value":0.60000002384185},"fOilVolume":{"value":5.0},"nInitialDriveGears":{"value":1.0},"stanceFrontWidth":{"Max":{"value":1.5},"Label":"stanceFrontWidth","Group":"Stance","Description":"","value":0.81746393442153,"Min":{"value":-1.3}},"fDeformationDamageMult":{"value":0.69999998807907},"fWeaponDamageMult":{"value":0.10000000149011},"fDriveInertia":{"value":1.0},"fPopUpLightRotation":{"value":0.0},"fSuspensionUpperLimit":{"value":0.11999999731779},"fSuspensionLowerLimit":{"value":-0.10000000149011},"fBoostMaxSpeed":{"value":23.63170051574707},"fWeaponDamageScaledToVehHealthMult":{"value":0.5},"fLowSpeedTractionLossMult":{"value":0.02199999988079},"fSuspensionReboundDamp":{"value":2.09999990463256},"fSuspensionBiasFront":{"value":0.5},"fSeatOffsetDistX":{"value":0.0},"fAntiRollBarForce":{"value":0.89999997615814},"fSuspensionForce":{"value":2.40000009536743},"stanceRearCamber":{"Max":{"value":0.5},"Label":"stanceRearCamber","Group":"Stance","Description":"","value":-0.0,"Min":{"value":-0.5}},"fRollCentreHeightRear":{"value":0.40999999642372},"fClutchChangeRateScaleUpShift":{"value":6.54129981994628}}}', 'Handhaving ', 'handhaving', NULL),
	(166, 'license:29918ddbc531cd2ddbf18fc994f6748ea0c2a224', '{"drift":[],"handling":{"fRocketBoostCapacity":{"value":1.25},"stanceRearWidth":{"Max":{"value":1.5},"Label":"stanceRearWidth","Group":"Stance","Description":"","value":0.84073400497436,"Min":{"value":-1.3}},"fSuspensionCompDamp":{"value":1.39999997615814},"fClutchChangeRateScaleDownShift":{"value":9.0},"fSteeringLock":{"value":42.0},"fCamberStiffnesss":{"value":0.0},"fBrakeBiasFront":{"value":0.44999998807907},"driftfInitialDriveForce":{"value":1.0,"Group":"Drift"},"fTractionLossMult":{"value":1.0},"fEngineDamageMult":{"value":1.21978902816772},"fInitialDriveMaxFlatVel":{"value":26.11300086975097},"fTractionCurveMin":{"value":2.38000011444091},"vecCentreOfMassOffset":{"value":{"x":0.0,"y":0.0,"z":0.0}},"fPercentSubmerged":{"value":85.0},"fInitialDriveForce":{"value":1.74059998989105},"fInitialDragCoeff":{"value":7.80000019073486},"fHandBrakeForce":{"value":0.69999998807907},"fSeatOffsetDistY":{"value":0.0},"fTractionBiasFront":{"value":0.48500001430511},"fDownforceModifier":{"value":0.0},"fDriveBiasFront":{"value":0.5},"fCollisionDamageMult":{"value":0.879498898983},"fRollCentreHeightFront":{"value":0.40999999642372},"fTractionCurveLateral":{"value":22.5},"vecInertiaMultiplier":{"value":{"x":1.0,"y":1.29999995231628,"z":1.5}},"fSuspensionRaise":{"value":0.0},"driftfTractionCurveMin":{"value":1.0,"Group":"Drift"},"stanceFrontCamber":{"Max":{"value":0.5},"Label":"stanceFrontCamber","Group":"Stance","Description":"","value":-0.0,"Min":{"value":-0.5}},"driftfDriveBiasFront":{"value":1.0,"Group":"Drift"},"fMass":{"value":1800.0},"fTractionCurveMax":{"value":2.5},"driftfSteeringLock":{"value":1.0,"Group":"Drift"},"fAntiRollBarBiasFront":{"value":0.60000002384185},"fSeatOffsetDistZ":{"value":0.0},"fTractionSpringDeltaMax":{"value":0.15000000596046},"fBrakeForce":{"value":0.60000002384185},"fOilVolume":{"value":5.0},"nInitialDriveGears":{"value":1.0},"stanceFrontWidth":{"Max":{"value":1.5},"Label":"stanceFrontWidth","Group":"Stance","Description":"","value":0.81746393442153,"Min":{"value":-1.3}},"fDeformationDamageMult":{"value":0.69999998807907},"fWeaponDamageMult":{"value":0.10000000149011},"fDriveInertia":{"value":1.0},"fPopUpLightRotation":{"value":0.0},"fSuspensionUpperLimit":{"value":0.11999999731779},"fSuspensionLowerLimit":{"value":-0.10000000149011},"fBoostMaxSpeed":{"value":18.92799949645996},"fWeaponDamageScaledToVehHealthMult":{"value":0.5},"fLowSpeedTractionLossMult":{"value":0.02199999988079},"fSuspensionReboundDamp":{"value":2.09999990463256},"fSuspensionBiasFront":{"value":0.5},"fSeatOffsetDistX":{"value":0.0},"fAntiRollBarForce":{"value":0.89999997615814},"fSuspensionForce":{"value":2.40000009536743},"stanceRearCamber":{"Max":{"value":0.5},"Label":"stanceRearCamber","Group":"Stance","Description":"","value":-0.0,"Min":{"value":-0.5}},"fRollCentreHeightRear":{"value":0.40999999642372},"fClutchChangeRateScaleUpShift":{"value":5.75729990005493}}}', 'Handhaving ', 'handhaving official', NULL);

-- Dumping structure for table dulcy_rp.player_houses
CREATE TABLE IF NOT EXISTS `player_houses` (
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `insideId` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` longtext DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `houseID` varchar(50) DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  `decorateStash` text DEFAULT NULL,
  `charge` text DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL,
  `creditPrice` varchar(50) DEFAULT NULL,
  `timer` int(11) DEFAULT 0,
  PRIMARY KEY (`house`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.player_houses: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.player_mails
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dulcy_rp.player_mails: ~0 rows (approximately)

-- Dumping structure for table dulcy_rp.reportovi
CREATE TABLE IF NOT EXISTS `reportovi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player` varchar(50) DEFAULT NULL,
  `pid` varchar(50) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `admin` varchar(50) DEFAULT NULL,
  `tijd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.reportovi: ~11 rows (approximately)
INSERT INTO `reportovi` (`id`, `player`, `pid`, `message`, `status`, `admin`, `tijd`) VALUES
	(2, '.', '30', 'ik heb net een auto gekocht en meneer schrijft de auto over en dat heb ik gezien en ik heb ook de sleutels maar hij kan niet in me garage en hij staat ook niet in me garage', 1, '29918ddbc531cd2ddbf18fc994f6748ea0c2a224', '18:30:26'),
	(7, '[FAMT] Valentijn', '72', 'me rol is weg kan iemand komen', 1, '99564d5bcb7d72d4d22653c6f7f50e472ce0e7f6', '18:54:41'),
	(10, 'milano4life4', '21', 'Ik heb de auto glitch waarin je niet in je auto kan stappen en weet ff niet meer hoe ik erin kom... Kan iemand ffkes helpen?', 1, '99564d5bcb7d72d4d22653c6f7f50e472ce0e7f6', '19:26:40'),
	(12, 'brutuske040', '104', 'ambu helpt me niet ze komen en gaan weer', 1, '23f12364e0258db01ee56b7d9f0c41cf71e8795c', '19:40:13'),
	(15, 'youss', '129', 'ik wil auot kopen maar lukt niet', 1, '23f12364e0258db01ee56b7d9f0c41cf71e8795c', '20:14:30'),
	(21, '[VS] Dilan', '157', 'vdm op blokkenpark', 1, '23f12364e0258db01ee56b7d9f0c41cf71e8795c', '20:40:29'),
	(33, 'Hansie!', '31', 'mag ik een repair me auto stuurde in eens naar rechts en heb spoed melding', 1, '0777b7ef1c61c25901828be2758ebc316a295f40', '20:54:06'),
	(39, 'Matthew', '119', 'menu abuse hij zit een outfit te maken wanneer er een mes op hem staat.', 1, '99564d5bcb7d72d4d22653c6f7f50e472ce0e7f6', '21:08:05'),
	(75, 'frego', '13', 'adam ik lig doo', 1, '8d3b77111d0dbfa4c7768aa82982ef1634e21099', '00:51:03'),
	(76, 'SOLIX', '34', 'halp kevin', 1, '8d3b77111d0dbfa4c7768aa82982ef1634e21099', '00:57:48'),
	(77, 'ricod', '3', 'is er staff in dienst?', 0, NULL, '08:17:07');

-- Dumping structure for table dulcy_rp.reportstats
CREATE TABLE IF NOT EXISTS `reportstats` (
  `admin` varchar(50) DEFAULT NULL,
  `repauth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.reportstats: ~21 rows (approximately)
INSERT INTO `reportstats` (`admin`, `repauth`) VALUES
	('Anas', 14),
	('FeedStealRageRPT', 1564),
	('dclightningtv', 1600),
	('thedutchcore', 81),
	('DODO', 7),
	('AnneFrankStillHiding', 2),
	('Tigri', 650),
	('Bigiie', 227),
	('TheUnMega', 46),
	('Mitchell', 120),
	('Kevin.v.D', 25),
	('A2', 731),
	('Reaper[NL]', 12),
	('ByLuciferr', 40),
	('Victrrrr(;', 74),
	('Ma3lish', 303),
	('silentmonkeynl', 82),
	('Gebruiker', 18),
	('Delano S.', 5),
	('Daan lann', 2),
	('Nightmare', 74);

-- Dumping structure for table dulcy_rp.scoreboard
CREATE TABLE IF NOT EXISTS `scoreboard` (
  `identifier` varchar(60) NOT NULL,
  `strength` int(11) NOT NULL DEFAULT 0,
  `stamina` int(11) NOT NULL DEFAULT 0,
  `driving` int(11) NOT NULL DEFAULT 0,
  `drugs` int(11) NOT NULL DEFAULT 0,
  `playtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.scoreboard: ~1.234 rows (approximately)
INSERT INTO `scoreboard` (`identifier`, `strength`, `stamina`, `driving`, `drugs`, `playtime`) VALUES
	('ffd138bcccafe79402f7b6c34d14ffb491e89464', 0, 0, 0, 0, 18735),
	('fff9649bea9da777e722529c4f8799b793caa07b', 0, 0, 0, 0, 144);

-- Dumping structure for procedure dulcy_rp.tiktok_insert_notification_if_unique
DELIMITER //
CREATE PROCEDURE `tiktok_insert_notification_if_unique`(
    IN p_username VARCHAR(20),
    IN p_from VARCHAR(20),
    IN p_type VARCHAR(20),
    IN p_video_id VARCHAR(10),
    IN p_comment_id VARCHAR(10)
)
BEGIN
    DECLARE duplicate_entry INT DEFAULT 0;

    SELECT COUNT(*)
    INTO duplicate_entry
    FROM phone_tiktok_notifications
    WHERE (username = p_username)
    AND (`from` = p_from)
    AND (`type` = p_type)
    AND (video_id = p_video_id OR (video_id IS NULL AND p_video_id IS NULL))
    AND (comment_id = p_comment_id OR (comment_id IS NULL AND p_comment_id IS NULL));

    IF duplicate_entry = 0 THEN
        INSERT INTO phone_tiktok_notifications (username, `from`, `type`, video_id, comment_id)
        VALUES (p_username, p_from, p_type, p_video_id, p_comment_id);
    END IF;
END//
DELIMITER ;

-- Dumping structure for table dulcy_rp.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table dulcy_rp.twitter_accounts: ~189 rows (approximately)
INSERT INTO `twitter_accounts` (`id`, `username`, `password`, `avatar_url`) VALUES
	(243, 'Nakie', 'ikbenjoepklemann', NULL),
	(244, 'Willem hunk', 'Dean123!', NULL),
	(245, 'Adam Dijk', 'Dijk@12', NULL);

-- Dumping structure for table dulcy_rp.twitter_likes
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table dulcy_rp.twitter_likes: ~26 rows (approximately)
INSERT INTO `twitter_likes` (`id`, `authorId`, `tweetId`) VALUES
	(138, 57, 226),
	(139, 80, 396),
	(140, 84, 430),
	(141, 89, 466),
	(142, 73, 571),
	(144, 122, 897),
	(145, 134, 928),
	(147, 146, 1098),
	(148, 164, 1386),
	(149, 72, 1501),
	(150, 131, 1500),
	(151, 72, 1502),
	(152, 131, 1502),
	(153, 163, 1518),
	(154, 127, 1530),
	(155, 127, 1517),
	(157, 116, 1599),
	(158, 134, 1758),
	(159, 116, 1811),
	(160, 198, 1963),
	(161, 199, 1988),
	(163, 196, 1502),
	(164, 203, 2208),
	(165, 204, 2209),
	(166, 219, 2436),
	(167, 114, 1386);

-- Dumping structure for table dulcy_rp.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) DEFAULT NULL,
  `message` varchar(256) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2689 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dulcy_rp.twitter_tweets: ~2.510 rows (approximately)
INSERT INTO `twitter_tweets` (`id`, `authorId`, `realUser`, `message`, `time`, `likes`) VALUES
	(2688, 53, 'dcb200dfd710f8a57e83e57c740aa94f70d2ed50', 'Kom eraan', '2023-10-28 21:19:17', 0);

-- Dumping structure for table dulcy_rp.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(255) NOT NULL,
  `steam` varchar(255) NOT NULL,
  `steamnaam` varchar(255) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(20) DEFAULT 'unemployed',
  `job2_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `jail_time` int(11) NOT NULL DEFAULT 0,
  `is_dead` tinyint(1) DEFAULT 0,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` longtext DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `zorgvz` int(11) DEFAULT 0,
  `zorgafloop` varchar(50) DEFAULT '0',
  `healthData` text NOT NULL DEFAULT '{"bodyPulse":80,"bodyBloodLevel":6.0,"victimBleeding":false,"recievingBloodInfusion":0,"bodyPain":0,"bodyInPain":false,"bloodPressureL":80.0,"needSewed":[],"isUnconscious":false,"bloodPressureH":120.0,"logs":[],"bodyPartDamage":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0},"bloodParts":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0}}',
  `radionaam` varchar(75) NOT NULL DEFAULT '',
  `phone_number` varchar(10) DEFAULT NULL,
  `inside` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.users: ~931 rows (approximately)
INSERT INTO `users` (`identifier`, `steam`, `steamnaam`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `job2`, `job2_grade`, `loadout`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `jail_time`, `is_dead`, `id`, `status`, `disabled`, `created_at`, `last_seen`, `zorgvz`, `zorgafloop`, `healthData`, `radionaam`, `phone_number`, `inside`) VALUES
	('ff2e90a888365e7377e24dd36678780104367998', 'steam:11000015a63793f', 'vsoyty', '{"black_money":0,"bank":-1580,"money":591}', 'user', '[{"metadata":{"charactername":"Luuk Kollenaar","dateofbirth":"11/03/2000","description":"Naam: Luuk Kollenaar\\nGeslacht: m\\nLengte: 200\\nGeboortedatum: 11/03/2000","sex":"m","height":"200"},"slot":1,"count":1,"name":"identification"},{"slot":2,"count":591,"name":"money"},{"metadata":{"type":"Theorie, Auto","description":"Naam: Luuk Kollenaar\\nGeslacht: m\\nLengte: 200\\nGeboortedatum: 11/03/2000"},"slot":3,"count":1,"name":"driverslicense"},{"metadata":{"charactername":"Patriek Saints","dateofbirth":"13/01/2003","description":"Naam: Patriek Saints\\nGeslacht: m\\nLengte: 190\\nGeboortedatum: 13/01/2003","sex":"m","height":190},"slot":50,"count":1,"name":"identification"}]', 'unemployed', 0, 'unemployed', 0, '[]', '{"z":29.3472900390625,"heading":331.6535339355469,"x":161.55165100097657,"y":-994.7340698242188}', 'Luuk', 'Kollenaar', '11/03/2000', 'm', 200, '{"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":4,"component_id":4},{"texture":0,"drawable":7,"component_id":6},{"texture":0,"drawable":15,"component_id":8},{"texture":0,"drawable":3,"component_id":11}],"hair":{"highlight":0,"style":12,"color":0},"eyeColor":-1,"model":"mp_m_freemode_01","tattoos":[],"headOverlays":{"moleAndFreckles":{"opacity":0,"color":0,"style":0},"blemishes":{"opacity":0,"color":0,"style":0},"ageing":{"opacity":0,"color":0,"style":0},"sunDamage":{"opacity":0,"color":0,"style":0},"bodyBlemishes":{"opacity":0,"color":0,"style":0},"complexion":{"opacity":0,"color":0,"style":0},"blush":{"opacity":0,"color":0,"style":0},"lipstick":{"opacity":0,"color":0,"style":0},"chestHair":{"opacity":0,"color":0,"style":0},"eyebrows":{"opacity":0,"color":0,"style":0},"makeUp":{"opacity":0,"color":0,"style":0},"beard":{"opacity":0,"color":0,"style":0}},"faceFeatures":{"nosePeakSize":0,"nosePeakHigh":0,"cheeksBoneHigh":0,"chinBoneLowering":0,"cheeksBoneWidth":0,"neckThickness":0,"noseBoneHigh":0,"eyeBrownForward":0,"cheeksWidth":0,"jawBoneBackSize":0,"chinBoneLenght":0,"noseWidth":0,"nosePeakLowering":0,"eyeBrownHigh":0,"lipsThickness":0,"jawBoneWidth":0,"eyesOpening":0,"chinBoneSize":0,"noseBoneTwist":0,"chinHole":0},"headBlend":{"skinSecond":0,"shapeMix":0,"skinFirst":0,"shapeFirst":0,"shapeSecond":0,"skinMix":0}}', 0, 0, 1050, '[{"percent":74.9,"val":749000,"name":"hunger"},{"percent":81.175,"val":811750,"name":"thirst"}]', 0, '2023-10-20 19:02:37', '2023-10-30 16:42:06', 0, '0', '{"bodyPulse":80,"bodyBloodLevel":6.0,"victimBleeding":false,"recievingBloodInfusion":0,"bodyPain":0,"bodyInPain":false,"bloodPressureL":80.0,"needSewed":[],"isUnconscious":false,"bloodPressureH":120.0,"logs":[],"bodyPartDamage":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0},"bloodParts":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0}}', '', '0653412941', NULL),
	('ff4cf99a5ed4d5ced74de8c3dfd1edef8f607136', 'steam:110000103634084', 'FiTM3NT', '{"black_money":0,"bank":4105,"money":0}', 'user', '[]', 'unemployed', 0, 'unemployed', 0, '[]', '{"y":-853.2000122070313,"x":219.04615783691407,"heading":204.094482421875,"z":29.6673583984375}', 'Papa', 'Tjappie', '01/01/1990', 'm', 200, '{"eyeColor":-1,"hair":{"color":0,"highlight":0,"style":48},"faceFeatures":{"cheeksBoneHigh":0,"cheeksBoneWidth":0,"eyeBrownHigh":0,"nosePeakHigh":0,"neckThickness":0,"chinHole":0,"chinBoneSize":0,"nosePeakLowering":0,"noseBoneTwist":0,"chinBoneLenght":0,"noseWidth":0,"jawBoneWidth":0,"chinBoneLowering":0,"lipsThickness":0,"jawBoneBackSize":0,"noseBoneHigh":0,"cheeksWidth":0,"eyesOpening":0,"eyeBrownForward":0,"nosePeakSize":0},"model":"mp_m_freemode_01","headOverlays":{"lipstick":{"color":0,"opacity":0,"style":0},"beard":{"color":0,"opacity":1,"style":18},"makeUp":{"color":0,"opacity":0,"style":0},"complexion":{"color":0,"opacity":0,"style":0},"moleAndFreckles":{"color":0,"opacity":0,"style":0},"blemishes":{"color":0,"opacity":0,"style":0},"sunDamage":{"color":0,"opacity":0,"style":0},"bodyBlemishes":{"color":0,"opacity":0,"style":0},"blush":{"color":0,"opacity":0,"style":0},"chestHair":{"color":0,"opacity":0,"style":0},"eyebrows":{"color":0,"opacity":0,"style":0},"ageing":{"color":0,"opacity":0,"style":0}},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":2,"component_id":9},{"texture":0,"drawable":33,"component_id":11},{"texture":0,"drawable":6,"component_id":4},{"texture":0,"drawable":6,"component_id":6}],"headBlend":{"shapeSecond":0,"shapeMix":0,"skinMix":0,"skinFirst":0,"shapeFirst":0,"skinSecond":0},"props":[{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1},{"prop_id":1,"texture":0,"drawable":12},{"prop_id":0,"texture":0,"drawable":9}],"tattoos":[]}', 0, 0, 694, '[{"percent":89.25999999999999,"name":"hunger","val":892600},{"percent":91.945,"name":"thirst","val":919450}]', 0, '2023-10-12 19:33:29', '2023-10-12 19:51:46', 0, '0', '{"bodyPulse":80,"bodyBloodLevel":6.0,"victimBleeding":false,"recievingBloodInfusion":0,"bodyPain":0,"bodyInPain":false,"bloodPressureL":80.0,"needSewed":[],"isUnconscious":false,"bloodPressureH":120.0,"logs":[],"bodyPartDamage":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0},"bloodParts":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0}}', '', '0614539128', NULL),
	('ff537653ddf5edd15d20ab122306d9f23cbd1132', 'steam:110000147639213', 'bomboclat', '{"money":0,"bank":30105,"black_money":0}', 'user', '[]', 'unemployed', 0, 'unemployed', 0, '[]', '{"x":-518.4263916015625,"heading":204.094482421875,"z":35.4974365234375,"y":-259.8988952636719}', 'Bel', 'Kees', '05/05/2000', 'f', 200, '{"hair":{"style":66,"color":33,"highlight":0},"eyeColor":0,"tattoos":{"ZONE_LEFT_ARM":[{"name":"TAT_AR_003","hashFemale":"MP_Airraces_Tattoo_003_F","label":"Toxic Trails","hashMale":"MP_Airraces_Tattoo_003_M","zone":"ZONE_LEFT_ARM","collection":"mpairraces_overlays"}],"ZONE_HEAD":[{"name":"TAT_BB_031","hashFemale":"","label":"Shark","hashMale":"MP_Bea_M_Head_002","zone":"ZONE_HEAD","collection":"mpbeach_overlays"}],"ZONE_RIGHT_ARM":[{"name":"TAT_BB_026","hashFemale":"","label":"Tribal Sun","hashMale":"MP_Bea_M_RArm_000","zone":"ZONE_RIGHT_ARM","collection":"mpbeach_overlays"}],"ZONE_HAIR":[{"name":"hair-29-0","hashFemale":"MP_Vinewood_Hair_F_000_M","label":"hair-29-0","hashMale":"MP_Vinewood_Hair_M_000_M","zone":"ZONE_HAIR","collection":"mpVinewood_overlays"}],"ZONE_LEFT_LEG":[{"name":"TAT_BB_027","hashFemale":"","label":"Tribal Star","hashMale":"MP_Bea_M_Lleg_000","zone":"ZONE_LEFT_LEG","collection":"mpbeach_overlays"}]},"faceFeatures":{"chinBoneLenght":0,"cheeksWidth":0,"chinBoneSize":0,"noseWidth":1,"nosePeakHigh":0,"neckThickness":0,"cheeksBoneWidth":0,"jawBoneWidth":0,"nosePeakSize":0,"cheeksBoneHigh":0,"eyeBrownHigh":0,"eyesOpening":0,"eyeBrownForward":0,"noseBoneTwist":0,"jawBoneBackSize":0,"chinHole":0,"chinBoneLowering":0,"noseBoneHigh":0,"lipsThickness":0,"nosePeakLowering":0},"components":[{"drawable":0,"texture":0,"component_id":0},{"drawable":0,"texture":0,"component_id":2},{"drawable":0,"texture":0,"component_id":3},{"drawable":0,"texture":0,"component_id":8},{"drawable":0,"texture":0,"component_id":10},{"drawable":0,"texture":0,"component_id":1},{"drawable":154,"texture":0,"component_id":4},{"drawable":0,"texture":0,"component_id":5},{"drawable":104,"texture":0,"component_id":6},{"drawable":0,"texture":0,"component_id":7},{"drawable":0,"texture":0,"component_id":9},{"drawable":427,"texture":0,"component_id":11}],"props":[{"drawable":-1,"texture":-1,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}],"model":"mp_f_freemode_01","headOverlays":{"moleAndFreckles":{"style":0,"color":0,"opacity":0},"blemishes":{"style":0,"color":0,"opacity":0},"blush":{"style":0,"color":0,"opacity":0},"chestHair":{"style":0,"color":0,"opacity":0},"eyebrows":{"style":0,"color":0,"opacity":0},"lipstick":{"style":0,"color":0,"opacity":0},"bodyBlemishes":{"style":0,"color":0,"opacity":0},"makeUp":{"style":0,"color":0,"opacity":0},"ageing":{"style":0,"color":0,"opacity":0},"sunDamage":{"style":0,"color":0,"opacity":0},"beard":{"style":0,"color":0,"opacity":0},"complexion":{"style":0,"color":0,"opacity":0}},"headBlend":{"skinSecond":0,"skinFirst":0,"shapeFirst":0,"shapeMix":0,"shapeSecond":0,"skinMix":0}}', 0, 0, 45, '[{"percent":97.95,"val":979500,"name":"hunger"},{"percent":98.46249999999999,"val":984625,"name":"thirst"}]', 0, '2023-07-28 12:04:45', '2023-07-28 12:08:42', 0, '0', '{"bodyPulse":80,"bodyBloodLevel":6.0,"victimBleeding":false,"recievingBloodInfusion":0,"bodyPain":0,"bodyInPain":false,"bloodPressureL":80.0,"needSewed":[],"isUnconscious":false,"bloodPressureH":120.0,"logs":[],"bodyPartDamage":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0},"bloodParts":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0}}', '', NULL, NULL),
	('ff7f6053978fa020747c2d9091b9809cff1c2579', 'steam:110000150fefe0a', 'Niks', '{"bank":35000,"black_money":0,"money":0}', 'user', '[]', 'unemployed', 0, 'unemployed', 0, '[]', '{"heading":340.157470703125,"z":30.189697265625,"y":-560.7033081054688,"x":-1277.063720703125}', 'Henk', 'Jan', '08/09/1999', 'm', 200, '{"faceFeatures":{"nosePeakSize":0,"chinBoneLowering":0,"noseBoneHigh":0,"chinBoneSize":0,"eyeBrownForward":0,"eyeBrownHigh":0,"cheeksBoneWidth":0,"chinHole":0,"lipsThickness":0,"noseBoneTwist":0,"nosePeakHigh":0,"neckThickness":0,"noseWidth":0,"eyesOpening":0,"cheeksBoneHigh":0,"nosePeakLowering":0,"jawBoneBackSize":0,"jawBoneWidth":0,"cheeksWidth":0,"chinBoneLenght":0},"components":[{"component_id":0,"texture":0,"drawable":0},{"component_id":1,"texture":0,"drawable":17},{"component_id":2,"texture":0,"drawable":0},{"component_id":3,"texture":0,"drawable":0},{"component_id":4,"texture":0,"drawable":4},{"component_id":5,"texture":0,"drawable":0},{"component_id":6,"texture":0,"drawable":26},{"component_id":7,"texture":0,"drawable":0},{"component_id":8,"texture":0,"drawable":0},{"component_id":9,"texture":0,"drawable":0},{"component_id":10,"texture":0,"drawable":0},{"component_id":11,"texture":0,"drawable":53}],"tattoos":[],"hair":{"color":0,"style":5,"highlight":0},"headBlend":{"skinFirst":0,"skinSecond":0,"skinMix":0,"shapeMix":0,"shapeFirst":0,"shapeSecond":0},"headOverlays":{"beard":{"color":0,"style":0,"opacity":0},"complexion":{"color":0,"style":0,"opacity":0},"lipstick":{"color":0,"style":0,"opacity":0},"blush":{"color":0,"style":0,"opacity":0},"ageing":{"color":0,"style":0,"opacity":0},"sunDamage":{"color":0,"style":0,"opacity":0},"eyebrows":{"color":0,"style":0,"opacity":0},"makeUp":{"color":0,"style":0,"opacity":0},"moleAndFreckles":{"color":0,"style":0,"opacity":0},"chestHair":{"color":0,"style":0,"opacity":0},"blemishes":{"color":0,"style":0,"opacity":0},"bodyBlemishes":{"color":0,"style":0,"opacity":0}},"eyeColor":-1,"model":"mp_m_freemode_01","props":[{"texture":-1,"prop_id":0,"drawable":-1},{"texture":-1,"prop_id":1,"drawable":-1},{"texture":-1,"prop_id":2,"drawable":-1},{"texture":-1,"prop_id":6,"drawable":-1},{"texture":-1,"prop_id":7,"drawable":-1}]}', 0, 0, 279, '[{"val":973300,"percent":97.33000000000001,"name":"hunger"},{"val":979975,"percent":97.9975,"name":"thirst"}]', 0, '2023-10-06 22:39:32', '2023-10-06 22:44:05', 0, '0', '{"bodyPulse":80,"bodyBloodLevel":6.0,"victimBleeding":false,"recievingBloodInfusion":0,"bodyPain":0,"bodyInPain":false,"bloodPressureL":80.0,"needSewed":[],"isUnconscious":false,"bloodPressureH":120.0,"logs":[],"bodyPartDamage":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0},"bloodParts":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0}}', '', '0695832049', NULL),
	('ff9228d39f3c33ae2e1f3481f0e575fba86b1f36', 'steam:11000015404a1d3', 'ci222349', '{"money":0,"bank":14210,"black_money":0}', 'user', '[]', 'unemployed', 0, 'unemployed', 0, '[]', '{"x":1456.905517578125,"y":-2608.852783203125,"z":48.5560302734375,"heading":337.3228454589844}', 'Behazd', 'Nechjeur', '12/12/1970', 'm', 199, '{"model":"mp_m_freemode_01","headOverlays":{"sunDamage":{"opacity":0,"color":0,"style":0},"complexion":{"opacity":0,"color":0,"style":0},"chestHair":{"opacity":0,"color":0,"style":0},"makeUp":{"opacity":0,"color":0,"style":0},"lipstick":{"opacity":0,"color":0,"style":0},"bodyBlemishes":{"opacity":0,"color":0,"style":0},"blemishes":{"opacity":0,"color":0,"style":0},"moleAndFreckles":{"opacity":0,"color":0,"style":0},"eyebrows":{"opacity":0,"color":0,"style":0},"ageing":{"opacity":0,"color":0,"style":0},"blush":{"opacity":0,"color":0,"style":0},"beard":{"opacity":0,"color":0,"style":0}},"eyeColor":-1,"components":[{"component_id":0,"drawable":0,"texture":0},{"component_id":1,"drawable":0,"texture":0},{"component_id":2,"drawable":0,"texture":0},{"component_id":3,"drawable":0,"texture":0},{"component_id":8,"drawable":0,"texture":0},{"component_id":10,"drawable":0,"texture":0},{"component_id":4,"drawable":167,"texture":0},{"component_id":6,"drawable":128,"texture":0},{"component_id":5,"drawable":130,"texture":0},{"component_id":7,"drawable":162,"texture":0},{"component_id":9,"drawable":0,"texture":0},{"component_id":11,"drawable":467,"texture":0}],"tattoos":[],"props":[{"prop_id":0,"drawable":-1,"texture":-1},{"prop_id":1,"drawable":-1,"texture":-1},{"prop_id":2,"drawable":-1,"texture":-1},{"prop_id":6,"drawable":-1,"texture":-1},{"prop_id":7,"drawable":-1,"texture":-1}],"headBlend":{"skinFirst":42,"skinSecond":43,"skinMix":0,"shapeFirst":39,"shapeMix":0,"shapeSecond":39},"hair":{"style":93,"highlight":0,"color":0},"faceFeatures":{"nosePeakSize":-1,"chinHole":0,"neckThickness":0,"chinBoneSize":0,"jawBoneWidth":-1,"noseWidth":1,"noseBoneTwist":1,"chinBoneLowering":1,"lipsThickness":1,"cheeksBoneWidth":1,"jawBoneBackSize":0,"chinBoneLenght":0,"nosePeakHigh":1,"cheeksWidth":1,"eyeBrownHigh":-1,"eyeBrownForward":-1,"eyesOpening":1,"noseBoneHigh":-1,"cheeksBoneHigh":1,"nosePeakLowering":1}}', 0, 0, 993, '[{"percent":91.03,"name":"hunger","val":910300},{"percent":93.27250000000001,"name":"thirst","val":932725}]', 0, '2023-10-18 17:38:19', '2023-10-18 18:08:29', 0, '0', '{"bodyPulse":80,"bodyBloodLevel":6.0,"victimBleeding":false,"recievingBloodInfusion":0,"bodyPain":0,"bodyInPain":false,"bloodPressureL":80.0,"needSewed":[],"isUnconscious":false,"bloodPressureH":120.0,"logs":[],"bodyPartDamage":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0},"bloodParts":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0}}', '', '0654789519', NULL),
	('ffaabfe0d4b4efc9eeeb9f7da208ea9f4ce20410', 'steam:110000144c24a0f', 'Joep ', '{"bank":3339,"money":0,"black_money":0}', 'user', '[{"count":1,"slot":1,"name":"phone"},{"count":1,"slot":2,"name":"gps"},{"metadata":{"charactername":"Nakie Takie","height":"195","dateofbirth":"20/10/1999","description":"Naam: Nakie Takie\\nGeslacht: m\\nLengte: 195\\nGeboortedatum: 20/10/1999","sex":"m"},"count":1,"slot":6,"name":"identification"},{"count":6,"slot":7,"name":"bread"},{"count":1,"slot":8,"name":"pizza"},{"count":2,"slot":9,"name":"chocomel"}]', 'unemployed', 0, 'unemployed', 0, '[]', '{"x":220.60220336914063,"y":-803.3934326171875,"z":30.7288818359375,"heading":226.77166748046876}', 'Nakie', 'Takie', '20/10/1999', 'm', 195, '{"faceFeatures":{"chinBoneSize":0,"noseWidth":0,"cheeksBoneHigh":0,"jawBoneBackSize":0,"cheeksBoneWidth":0,"eyesOpening":0,"eyeBrownForward":0,"noseBoneTwist":0,"jawBoneWidth":0,"chinBoneLenght":0,"chinBoneLowering":0,"chinHole":0,"neckThickness":0,"nosePeakSize":0,"cheeksWidth":0,"nosePeakHigh":0,"nosePeakLowering":0,"noseBoneHigh":0,"eyeBrownHigh":0,"lipsThickness":0},"model":"mp_m_freemode_01","hair":{"color":0,"highlight":0,"style":82},"headOverlays":{"complexion":{"style":0,"color":0,"opacity":0},"beard":{"style":3,"color":0,"opacity":1},"blush":{"style":0,"color":0,"opacity":0},"sunDamage":{"style":0,"color":0,"opacity":0},"lipstick":{"style":0,"color":0,"opacity":0},"makeUp":{"style":0,"color":0,"opacity":0},"ageing":{"style":0,"color":0,"opacity":0},"moleAndFreckles":{"style":0,"color":0,"opacity":0},"eyebrows":{"style":0,"color":0,"opacity":0},"bodyBlemishes":{"style":0,"color":0,"opacity":0},"chestHair":{"style":0,"color":0,"opacity":0},"blemishes":{"style":0,"color":0,"opacity":0}},"components":[{"component_id":0,"drawable":0,"texture":0},{"component_id":1,"drawable":17,"texture":0},{"component_id":2,"drawable":82,"texture":0},{"component_id":3,"drawable":17,"texture":0},{"component_id":4,"drawable":162,"texture":0},{"component_id":5,"drawable":0,"texture":0},{"component_id":6,"drawable":120,"texture":0},{"component_id":7,"drawable":17,"texture":0},{"component_id":8,"drawable":15,"texture":0},{"component_id":9,"drawable":0,"texture":0},{"component_id":10,"drawable":0,"texture":0},{"component_id":11,"drawable":419,"texture":9}],"eyeColor":0,"props":[{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1},{"prop_id":0,"texture":0,"drawable":173}],"headBlend":{"skinSecond":0,"shapeFirst":0,"skinMix":0,"shapeMix":0,"skinFirst":9,"shapeSecond":0},"tattoos":[]}', 0, 0, 1202, '[{"name":"hunger","percent":69.35,"val":693500},{"name":"thirst","percent":61.5125,"val":615125}]', 0, '2023-10-26 17:25:29', '2023-10-29 15:20:33', 0, '0', '{"bodyPulse":80,"bodyBloodLevel":6.0,"victimBleeding":false,"recievingBloodInfusion":0,"bodyPain":0,"bodyInPain":false,"bloodPressureL":80.0,"needSewed":[],"isUnconscious":false,"bloodPressureH":120.0,"logs":[],"bodyPartDamage":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0},"bloodParts":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0}}', '', '0685968737', NULL),
	('ffd138bcccafe79402f7b6c34d14ffb491e89464', 'steam:11000013cdf35b0', 'Chelmer', '{"black_money":0,"bank":5494,"money":0}', 'user', '[{"count":2,"slot":1,"name":"water"},{"count":1,"slot":15,"name":"phone"},{"count":2,"slot":16,"name":"rubber"},{"count":1,"slot":11,"name":"gps"},{"metadata":{"type":"Theorie, Auto","description":"Naam: Wil Bierman\\nGeslacht: m\\nLengte: 180\\nGeboortedatum: 12/01/2000"},"count":1,"slot":12,"name":"driverslicense"},{"metadata":{"height":180,"charactername":"Wil Bierman","description":"Naam: Wil Bierman\\nGeslacht: m\\nLengte: 180\\nGeboortedatum: 12/01/2000","dateofbirth":"12/01/2000","sex":"m"},"count":1,"slot":13,"name":"identification"},{"count":1,"slot":5,"name":"radio"}]', 'unemployed', 0, 'unemployed', 0, '[]', '{"x":214.45713806152345,"heading":133.2283477783203,"z":30.4256591796875,"y":-838.03515625}', 'Wil', 'Bierman', '12/01/2000', 'm', 180, '{"hair":{"highlight":0,"style":12,"color":58},"model":"mp_m_freemode_01","components":[{"drawable":0,"texture":0,"component_id":0},{"drawable":0,"texture":0,"component_id":1},{"drawable":0,"texture":0,"component_id":2},{"drawable":0,"texture":0,"component_id":5},{"drawable":0,"texture":0,"component_id":7},{"drawable":0,"texture":0,"component_id":9},{"drawable":0,"texture":0,"component_id":10},{"drawable":17,"texture":0,"component_id":11},{"drawable":11,"texture":0,"component_id":8},{"drawable":8,"texture":0,"component_id":3},{"drawable":47,"texture":0,"component_id":4},{"drawable":35,"texture":0,"component_id":6}],"faceFeatures":{"chinBoneLowering":0,"jawBoneBackSize":0,"nosePeakHigh":0.1,"noseBoneHigh":0,"chinBoneLenght":0,"noseWidth":0.1,"neckThickness":0,"lipsThickness":0,"chinHole":0,"chinBoneSize":0,"noseBoneTwist":0,"cheeksBoneWidth":0,"cheeksBoneHigh":0,"jawBoneWidth":0,"cheeksWidth":0,"eyeBrownHigh":0,"nosePeakSize":0,"eyeBrownForward":0,"eyesOpening":0,"nosePeakLowering":0},"eyeColor":-1,"headBlend":{"skinSecond":0,"shapeMix":0,"skinFirst":0,"skinMix":0,"shapeFirst":2,"shapeSecond":2},"headOverlays":{"chestHair":{"style":0,"color":0,"opacity":0},"makeUp":{"style":0,"color":0,"opacity":0},"eyebrows":{"style":0,"color":0,"opacity":0.8},"lipstick":{"style":0,"color":0,"opacity":0},"blush":{"style":0,"color":0,"opacity":0},"bodyBlemishes":{"style":0,"color":0,"opacity":0},"ageing":{"style":0,"color":0,"opacity":0},"beard":{"style":7,"color":0,"opacity":1},"moleAndFreckles":{"style":0,"color":0,"opacity":0},"sunDamage":{"style":0,"color":0,"opacity":0},"blemishes":{"style":0,"color":0,"opacity":0},"complexion":{"style":0,"color":0,"opacity":0}},"tattoos":{"ZONE_HAIR":[{"collection":"multiplayer_overlays","hashFemale":"FM_F_Hair_003_b","zone":"ZONE_HAIR","hashMale":"FM_M_Hair_003_b","label":"hair-0-187","name":"hair-0-187"}]},"props":[{"drawable":-1,"texture":-1,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":5,"texture":0,"prop_id":1},{"drawable":10,"texture":0,"prop_id":6},{"drawable":9,"texture":1,"prop_id":7}]}', 0, 0, 427, '[{"name":"hunger","val":401400,"percent":40.14},{"name":"thirst","val":712450,"percent":71.245}]', 0, '2023-10-08 11:21:22', '2023-10-13 20:26:09', 0, '0', '{"bodyPulse":80,"bodyBloodLevel":6.0,"victimBleeding":false,"recievingBloodInfusion":0,"bodyPain":0,"bodyInPain":false,"bloodPressureL":80.0,"needSewed":[],"isUnconscious":false,"bloodPressureH":120.0,"logs":[],"bodyPartDamage":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0},"bloodParts":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0}}', '', '0680127201', NULL),
	('fff9649bea9da777e722529c4f8799b793caa07b', 'steam:11000015b667620', 'Lucann1', '{"black_money":0,"bank":30000,"money":0}', 'user', '[]', 'unemployed', 0, 'unemployed', 0, '[]', '{"heading":0.0,"x":0.0,"y":0.0,"z":1.2923583984375}', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 662, '[{"name":"hunger","percent":99.97,"val":999700},{"name":"thirst","percent":99.97749999999999,"val":999775}]', 0, '2023-10-12 06:59:22', '2023-10-12 07:01:46', 0, '0', '{"bodyPulse":80,"bodyBloodLevel":6.0,"victimBleeding":false,"recievingBloodInfusion":0,"bodyPain":0,"bodyInPain":false,"bloodPressureL":80.0,"needSewed":[],"isUnconscious":false,"bloodPressureH":120.0,"logs":[],"bodyPartDamage":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0},"bloodParts":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0}}', '', '0642903366', NULL);

-- Dumping structure for table dulcy_rp.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.user_licenses: ~430 rows (approximately)
INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
	(442, 'dmv', '67f40c4b7d178e5bccc18b57a6063cfc125e0e09'),
	(443, 'drive_truck', '9c0a474c80bcbb5a06c8cc15f31f9f532492682d');

-- Dumping structure for table dulcy_rp.webusers
CREATE TABLE IF NOT EXISTS `webusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `subusers` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dulcy_rp.webusers: ~2 rows (approximately)
INSERT INTO `webusers` (`id`, `full_name`, `email`, `password`, `identifier`, `subusers`) VALUES
	(1, 'Owners', 'owner@dulcyrp.nl', '$2y$10$P.2u4shJ4gTV1vpSLWnRfOT90o0SDxM.VC2EykGUcGEGD4ERKEk3e', '1b38d19fa21613690967bb37557db808fe0e92ea', 1),
	(2, 'Anas', 'anas@anas.nl', '$2y$10$ERvBHb5Zkkx.qCrclrt7keIqBx5TYolnltqHzU/R6zTiDwe.81N1C', NULL, NULL);

-- Dumping structure for trigger dulcy_rp.phone_instagram_decrement_comment_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_decrement_comment_count
AFTER DELETE ON phone_instagram_comments
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_posts
    SET comment_count = comment_count - 1
    WHERE id = OLD.post_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_instagram_decrement_like_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_decrement_like_count
AFTER DELETE ON phone_instagram_likes
FOR EACH ROW
BEGIN
    IF OLD.is_comment = 0 THEN
        UPDATE phone_instagram_posts
        SET like_count = like_count - 1
        WHERE id = OLD.id;
    ELSE
        UPDATE phone_instagram_comments
        SET like_count = like_count - 1
        WHERE id = OLD.id;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_instagram_decrement_post_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_decrement_post_count
AFTER DELETE ON phone_instagram_posts
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET post_count = post_count - 1
    WHERE username = OLD.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_instagram_decrement_story_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_decrement_story_count
AFTER DELETE ON phone_instagram_stories
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET story_count = story_count - 1
    WHERE username = OLD.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_instagram_increment_comment_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_increment_comment_count
AFTER INSERT ON phone_instagram_comments
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_posts
    SET comment_count = comment_count + 1
    WHERE id = NEW.post_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_instagram_increment_like_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_increment_like_count
AFTER INSERT ON phone_instagram_likes
FOR EACH ROW
BEGIN
    IF NEW.is_comment = 0 THEN
        UPDATE phone_instagram_posts
        SET like_count = like_count + 1
        WHERE id = NEW.id;
    ELSE
        UPDATE phone_instagram_comments
        SET like_count = like_count + 1
        WHERE id = NEW.id;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_instagram_increment_post_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_increment_post_count
AFTER INSERT ON phone_instagram_posts
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET post_count = post_count + 1
    WHERE username = NEW.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_instagram_increment_story_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_increment_story_count
AFTER INSERT ON phone_instagram_stories
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET story_count = story_count + 1
    WHERE username = NEW.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_instagram_update_counts_after_follow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_update_counts_after_follow
AFTER INSERT ON phone_instagram_follows
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    UPDATE phone_instagram_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_instagram_update_counts_after_unfollow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_update_counts_after_unfollow
AFTER DELETE ON phone_instagram_follows
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    UPDATE phone_instagram_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_decrement_account_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_account_likes
AFTER DELETE ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    JOIN phone_tiktok_videos ON phone_tiktok_videos.username = phone_tiktok_accounts.username
    SET phone_tiktok_accounts.like_count = phone_tiktok_accounts.like_count - 1
    WHERE phone_tiktok_videos.id = OLD.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_decrement_comment_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_comment_likes
AFTER DELETE ON phone_tiktok_comments_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_comments
    SET likes = likes - 1
    WHERE id = OLD.comment_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_decrement_video_comments
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_comments
BEFORE DELETE ON phone_tiktok_comments
FOR EACH ROW
BEGIN
    DECLARE v_replies_count INT;

    -- Count the replies for the comment
    SELECT COUNT(*) INTO v_replies_count
    FROM phone_tiktok_comments
    WHERE reply_to = OLD.id;

    -- Update the video's comments count
    UPDATE phone_tiktok_videos
    SET comments = comments - (1 + v_replies_count)
    WHERE id = OLD.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_decrement_video_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_likes
AFTER DELETE ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET likes = likes - 1
    WHERE id = OLD.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_decrement_video_saves
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_saves
AFTER DELETE ON phone_tiktok_saves
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET saves = saves - 1
    WHERE id = OLD.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_increment_account_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_account_likes
AFTER INSERT ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    JOIN phone_tiktok_videos ON phone_tiktok_videos.username = phone_tiktok_accounts.username
    SET phone_tiktok_accounts.like_count = phone_tiktok_accounts.like_count + 1
    WHERE phone_tiktok_videos.id = NEW.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_increment_comment_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_comment_likes
AFTER INSERT ON phone_tiktok_comments_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_comments
    SET likes = likes + 1
    WHERE id = NEW.comment_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_increment_video_comments
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_comments
AFTER INSERT ON phone_tiktok_comments
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET comments = comments + 1
    WHERE id = NEW.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_increment_video_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_count
AFTER INSERT ON phone_tiktok_videos
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    SET video_count = video_count + 1
    WHERE username = NEW.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_increment_video_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_likes
AFTER INSERT ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET likes = likes + 1
    WHERE id = NEW.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_increment_video_saves
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_saves
AFTER INSERT ON phone_tiktok_saves
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET saves = saves + 1
    WHERE id = NEW.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_increment_video_views
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_views
AFTER INSERT ON phone_tiktok_views
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET views = views + 1
    WHERE id = NEW.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_update_counts_after_follow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_update_counts_after_follow
AFTER INSERT ON phone_tiktok_follows
FOR EACH ROW
BEGIN
    -- Increment the follower_count for the followed user
    UPDATE phone_tiktok_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    -- Increment the following_count for the follower user
    UPDATE phone_tiktok_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_update_counts_after_unfollow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_update_counts_after_unfollow
AFTER DELETE ON phone_tiktok_follows
FOR EACH ROW
BEGIN
    -- Decrement the follower_count for the followed user
    UPDATE phone_tiktok_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    -- Decrement the following_count for the follower user
    UPDATE phone_tiktok_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_tiktok_update_last_message
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_update_last_message
AFTER INSERT ON phone_tiktok_messages
FOR EACH ROW
BEGIN
    DECLARE modified_content TEXT CHARACTER SET utf8mb4;
    
    IF NEW.content LIKE '<!SHARED-VIDEO-URL%' THEN
        SET modified_content = 'Shared a video';
    ELSEIF LENGTH(NEW.content) > 50 THEN
        SET modified_content = CONCAT(SUBSTR(NEW.content, 1, 17), '...');
    ELSE
        SET modified_content = NEW.content;
    END IF;
    
    UPDATE phone_tiktok_channels
    SET last_message = modified_content
    WHERE id = NEW.channel_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_twitter_update_counts_after_follow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_counts_after_follow
AFTER INSERT ON phone_twitter_follows
FOR EACH ROW
BEGIN
    -- Increment the follower_count for the followed user
    UPDATE phone_twitter_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    -- Increment the following_count for the follower user
    UPDATE phone_twitter_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_twitter_update_counts_after_unfollow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_counts_after_unfollow
AFTER DELETE ON phone_twitter_follows
FOR EACH ROW
BEGIN
    -- Decrement the follower_count for the followed user
    UPDATE phone_twitter_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    -- Decrement the following_count for the follower user
    UPDATE phone_twitter_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_twitter_update_like_count_after_like
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_like_count_after_like
AFTER INSERT ON phone_twitter_likes
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET like_count = like_count + 1
    WHERE id = NEW.tweet_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_twitter_update_like_count_after_unlike
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_like_count_after_unlike
AFTER DELETE ON phone_twitter_likes
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET like_count = like_count - 1
    WHERE id = OLD.tweet_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_twitter_update_retweet_count_after_retweet
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_retweet_count_after_retweet
AFTER INSERT ON phone_twitter_retweets
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET retweet_count = retweet_count + 1
    WHERE id = NEW.tweet_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dulcy_rp.phone_twitter_update_retweet_count_after_unretweet
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_retweet_count_after_unretweet
AFTER DELETE ON phone_twitter_retweets
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET retweet_count = retweet_count - 1
    WHERE id = OLD.tweet_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
