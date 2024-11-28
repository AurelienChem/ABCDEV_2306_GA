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

-- Listage de la structure de table immochateau. proprietaires
CREATE TABLE IF NOT EXISTS `proprietaires` (
  `id_proprietaire` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `code_postal` int NOT NULL,
  `ville` varchar(80) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `statut` varchar(20) NOT NULL,
  `office_notarial_titre` varchar(250) NOT NULL,
  PRIMARY KEY (`id_proprietaire`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table immochateau.proprietaires : ~2 rows (environ)
INSERT INTO `proprietaires` (`id_proprietaire`, `nom`, `prenom`, `adresse`, `code_postal`, `ville`, `telephone`, `mail`, `statut`, `office_notarial_titre`) VALUES
	(2, 'HADDOCK', 'Archibald', 'rue de Moulinsard', 74000, 'Annecy', '0635353535', 'ahaddock@gmail.com', 'nom propre', 'étude de  M. Séraphin Lampion '),
	(3, 'Tournesol', 'Tryphon', '36, Rue Cornavin ', 74000, 'Annecy', '038815151515', 'ttournesol@gmail.com', 'Gérant SCI ', 'Etude de M. Séraphin lampion');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
