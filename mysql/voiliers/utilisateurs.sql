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

-- Listage de la structure de table voiliers. utilisateurs
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id_user` int unsigned NOT NULL AUTO_INCREMENT,
  `lastname_user` varchar(50) NOT NULL,
  `firstname_user` varchar(50) NOT NULL,
  `mail_user` varchar(150) NOT NULL,
  `pass_user` varchar(400) NOT NULL,
  `level` int unsigned NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table voiliers.utilisateurs : ~2 rows (environ)
INSERT INTO `utilisateurs` (`id_user`, `lastname_user`, `firstname_user`, `mail_user`, `pass_user`, `level`) VALUES
	(1, 'Castafiore', 'Bianca', 'b.castafiore@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$UHJaT2JkUWtqLmpORmZhMw$vnWHfOrVu8W7fRYTz1eVdB3tXRLzBTGVxTB0NrPzh24', 2),
	(2, 'Tournesol', 'Tryphon', 't.tournesol@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$M1FHUnFpdFg1WHpBdXZKSQ$gA3yI/EM/HUYHnRpzaFHABdx8T5+rmyQicm30DZTbD4', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
