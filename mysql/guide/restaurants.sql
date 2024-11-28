-- --------------------------------------------------------
-- Hôte:                         localhost
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
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

-- Listage de la structure de table guide. restaurants
CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `prix` decimal(8,2) NOT NULL,
  `commentaire` text,
  `note` decimal(4,2) NOT NULL,
  `visite` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table guide.restaurants : ~2 rows (environ)
INSERT INTO `restaurants` (`id`, `nom`, `adresse`, `prix`, `commentaire`, `note`, `visite`) VALUES
	(1, 'JEAN-YVES SCHILLINGER', '17 Rue de la Poissonnerie,68000,Colmar', 50.00, 'Le JY\'S est un restaurant différent des autres avec un décor cosy et résolument contemporain qui attire une très belle clientèle cosmopolite. Jean-Yves Schillinger est un chef doublement étoilé créatif qui vous entraînera dans une ronde dépaysante à souhait où la cuisine du monde est à l\'honneur. Le chef décline la cuisine fusion à sa façon. Une carte régulièrement renouvelée s\'égaye de créations audacieuses et de plats revisités avec modernité et pertinence.', 9.00, '2019-12-05'),
	(2, 'L’ADRIATICO', '6 route de Neuf Brisach, 68000, Colmar, France', 25.00, 'Une des meilleurs pizzéria de la région Service très agréable, efficace et souriant Salle principale un peu bruyante mais cela donne un côté italien je recommande', 8.00, '2019-02-04'),
	(3, 'LE CANARD QUI POND', '75000 PARIS', 5.00, 'sqd', 9.00, '2024-10-10'),
	(4, 'IL RISTORANTE', '68000 Mulhouse', 30.00, 'Très bon resto', 9.00, '2024-10-02');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
