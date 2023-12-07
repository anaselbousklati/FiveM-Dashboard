CREATE TABLE IF NOT EXISTS `webusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `webusers` (`id`, `full_name`, `email`, `password`) VALUES
	(1, 'Owners', 'owner@dulcyrp.nl', '$2y$10$P.2u4shJ4gTV1vpSLWnRfOT90o0SDxM.VC2EykGUcGEGD4ERKEk3e'),
	(2, 'Anas', 'anas@anas.nl', '$2y$10$ERvBHb5Zkkx.qCrclrt7keIqBx5TYolnltqHzU/R6zTiDwe.81N1C');