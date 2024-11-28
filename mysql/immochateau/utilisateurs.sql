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

-- Listage de la structure de table immochateau. utilisateurs
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id_utilisateur` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_utilisateur` varchar(60) NOT NULL,
  `prenom_utilisateur` varchar(50) NOT NULL,
  `mail_utilisateur` varchar(150) NOT NULL,
  `pass_utilisateur` varchar(400) NOT NULL,
  `id_niveau` int unsigned NOT NULL,
  PRIMARY KEY (`id_utilisateur`),
  KEY `id_niveau` (`id_niveau`),
  CONSTRAINT `utilisateurs_ibfk_1` FOREIGN KEY (`id_niveau`) REFERENCES `habilitations` (`id_niveau`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table immochateau.utilisateurs : ~2 rows (environ)
INSERT INTO `utilisateurs` (`id_utilisateur`, `nom_utilisateur`, `prenom_utilisateur`, `mail_utilisateur`, `pass_utilisateur`, `id_niveau`) VALUES
	(1, 'CASTAFIORE', 'Bianca', 'bcastafiore@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$anZJbWRjRlNPejlKNFFWVA$DYHQUhi8OaN3WyESjvH9jQfRp0ux8Jzl+p6w3d2/SHU', 2),
	(2, 'SZUT', 'Piotr', 'Pszut@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$Z1M2VzEzOWcwa1N6S3dzRg$Q5Cd6qc/EVagXzlltklz8w8Wv7FCyV1+6Gx1syja/sk', 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
