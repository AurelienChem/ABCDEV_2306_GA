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

-- Listage de la structure de table festival. candidats
CREATE TABLE IF NOT EXISTS `candidats` (
  `id_user` int unsigned NOT NULL AUTO_INCREMENT,
  `lastname_user` varchar(50) NOT NULL,
  `firstname_user` varchar(50) NOT NULL,
  `mail_user` varchar(150) NOT NULL,
  `pass_user` varchar(500) NOT NULL,
  `departement_user` int unsigned NOT NULL,
  `age_user` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `Fk_departement_user` (`departement_user`),
  CONSTRAINT `Fk_departement_user` FOREIGN KEY (`departement_user`) REFERENCES `departements` (`id_dep`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table festival.candidats : ~8 rows (environ)
INSERT INTO `candidats` (`id_user`, `lastname_user`, `firstname_user`, `mail_user`, `pass_user`, `departement_user`, `age_user`) VALUES
	(1, 'Tryphon', 'Tournesol', 'tryphon@outlook.fr', 'Tournedisque', 12, 12),
	(2, 'Tryphon', 'Tournesol', 'tryphon@outlook.fr', 'Tournedisque', 12, 12),
	(3, 'Tryphon', 'Tournesol', 'tryphon@outlook.fr', 'Tournedisque', 10, 10),
	(4, 'Tryphon', 'Tournesol', 'tryphon@outlook.fr', 'Tournedisque', 10, 10),
	(5, 'Tryphon', 'Tournesol', 'tryphon@outlook.fr', 'Tournedisque', 10, 10),
	(6, 'Tryphon', 'Tournesol', 'tryphon@outlook.fr', 'Tournedisque', 10, 10),
	(7, 'Tryphon', 'Tournesol', 'tryphon@outlook.fr', '$argon2i$v=19$m=65536,t=4,p=1$ZG9QYm5pazMyZWg4c2V0VA$uSjKTnJR8Rdd7LQFNGKdzDJEt/JQimhaYPpCWUdmCRI', 2, 2),
	(8, 'Bianca', 'Castafiore', 'bianca@outlook.fr', '$argon2i$v=19$m=65536,t=4,p=1$WC5ORU9jZkExTmhTSHJ4bA$4NqbQadpWrm+ewpRMWf/XuLjzlkgNQl1ietGFTe6afA', 78, 62),
	(9, 'Tryphon', 'Tournesol', 'tryphon@outlook.fr', 'Tournedisque', 1, 10),
	(10, 'Haddock', 'Archibald', 'Archibald@outlook.fr', '$argon2i$v=19$m=65536,t=4,p=1$T2MvUlJkeEZFWFRNVHJreg$kJhynCfa0niZs97GJ4BmbuUVQd8j/Zi/napEbzu7+Eg', 1, 45);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
