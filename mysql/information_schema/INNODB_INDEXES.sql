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

-- Listage de la structure de table information_schema. INNODB_INDEXES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_INDEXES` (
  `INDEX_ID` bigint unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `TABLE_ID` bigint unsigned NOT NULL DEFAULT '0',
  `TYPE` int NOT NULL DEFAULT '0',
  `N_FIELDS` int NOT NULL DEFAULT '0',
  `PAGE_NO` int NOT NULL DEFAULT '0',
  `SPACE` int NOT NULL DEFAULT '0',
  `MERGE_THRESHOLD` int NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table information_schema.INNODB_INDEXES : 0 rows
/*!40000 ALTER TABLE `INNODB_INDEXES` DISABLE KEYS */;
INSERT INTO `INNODB_INDEXES` (`INDEX_ID`, `NAME`, `TABLE_ID`, `TYPE`, `N_FIELDS`, `PAGE_NO`, `SPACE`, `MERGE_THRESHOLD`) VALUES
	(152, 'PRIMARY', 1062, 3, 6, 4, 1, 50),
	(175, 'PRIMARY', 1082, 3, 5, 4, 21, 50),
	(182, 'PRIMARY', 1086, 3, 5, 4, 25, 50),
	(178, 'PRIMARY', 1084, 3, 12, 4, 23, 50),
	(179, 'FK_DEPTNO', 1084, 0, 2, 5, 23, 50),
	(180, 'FK_MGR', 1084, 0, 2, 6, 23, 50),
	(267, 'PRIMARY', 1162, 3, 4, 4, 101, 50),
	(268, 'PRIMARY', 1163, 3, 5, 4, 102, 50),
	(279, 'PRIMARY', 1174, 3, 9, 4, 113, 50),
	(310, 'PRIMARY', 1194, 3, 4, 4, 133, 50),
	(311, 'PRIMARY', 1195, 3, 5, 4, 134, 50),
	(312, 'PRIMARY', 1196, 3, 5, 4, 135, 50),
	(313, 'PRIMARY', 1197, 3, 7, 4, 136, 50),
	(314, 'PRIMARY', 1198, 3, 12, 4, 137, 50),
	(317, 'PRIMARY', 1200, 3, 5, 4, 139, 50),
	(318, 'FK_img', 1200, 0, 2, 5, 139, 50),
	(319, 'PRIMARY', 1201, 3, 18, 4, 140, 50),
	(320, 'id_utilisateur_commercial', 1201, 0, 2, 5, 140, 50),
	(321, 'id_categorie', 1201, 0, 2, 6, 140, 50),
	(322, 'fK_proprietaire', 1201, 0, 2, 7, 140, 50),
	(323, 'fk_departement', 1201, 0, 2, 8, 140, 50),
	(324, 'PRIMARY', 1202, 3, 7, 4, 141, 50),
	(325, 'id', 1202, 0, 2, 5, 141, 50),
	(326, 'PRIMARY', 1203, 3, 8, 4, 142, 50),
	(327, 'id_niveau', 1203, 0, 2, 5, 142, 50),
	(328, 'PRIMARY', 1204, 3, 8, 4, 143, 50),
	(329, 'PRIMARY', 1205, 3, 9, 4, 144, 50),
	(338, 'PRIMARY', 1211, 3, 6, 4, 150, 50),
	(339, 'PRIMARY', 1212, 3, 9, 4, 151, 50),
	(340, 'Fk_departement_user', 1212, 0, 2, 5, 151, 50);
/*!40000 ALTER TABLE `INNODB_INDEXES` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
