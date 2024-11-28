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

-- Listage de la structure de table information_schema. INNODB_TABLESPACES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TABLESPACES` (
  `SPACE` int unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(655) NOT NULL DEFAULT '',
  `FLAG` int unsigned NOT NULL DEFAULT '0',
  `ROW_FORMAT` varchar(22) DEFAULT NULL,
  `PAGE_SIZE` int unsigned NOT NULL DEFAULT '0',
  `ZIP_PAGE_SIZE` int unsigned NOT NULL DEFAULT '0',
  `SPACE_TYPE` varchar(10) DEFAULT NULL,
  `FS_BLOCK_SIZE` int unsigned NOT NULL DEFAULT '0',
  `FILE_SIZE` bigint unsigned NOT NULL DEFAULT '0',
  `ALLOCATED_SIZE` bigint unsigned NOT NULL DEFAULT '0',
  `AUTOEXTEND_SIZE` bigint unsigned NOT NULL DEFAULT '0',
  `SERVER_VERSION` varchar(10) DEFAULT NULL,
  `SPACE_VERSION` int unsigned NOT NULL DEFAULT '0',
  `ENCRYPTION` varchar(1) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table information_schema.INNODB_TABLESPACES : 0 rows
/*!40000 ALTER TABLE `INNODB_TABLESPACES` DISABLE KEYS */;
INSERT INTO `INNODB_TABLESPACES` (`SPACE`, `NAME`, `FLAG`, `ROW_FORMAT`, `PAGE_SIZE`, `ZIP_PAGE_SIZE`, `SPACE_TYPE`, `FS_BLOCK_SIZE`, `FILE_SIZE`, `ALLOCATED_SIZE`, `AUTOEXTEND_SIZE`, `SERVER_VERSION`, `SPACE_VERSION`, `ENCRYPTION`, `STATE`) VALUES
	(4294967294, 'mysql', 18432, 'Any', 16384, 0, 'General', 65536, 25165824, 25165824, 0, '8.0.30', 1, 'N', 'normal'),
	(4294967293, 'innodb_temporary', 4096, 'Compact or Redundant', 16384, 0, 'System', 65536, 12582912, 12582912, 0, '8.0.30', 1, 'N', 'normal'),
	(4294967279, 'innodb_undo_001', 0, 'Undo', 16384, 0, 'Undo', 65536, 16777216, 16777216, 0, '8.0.30', 1, 'N', 'active'),
	(4294967278, 'innodb_undo_002', 0, 'Undo', 16384, 0, 'Undo', 65536, 16777216, 16777216, 0, '8.0.30', 1, 'N', 'active'),
	(1, 'sys/sys_config', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(21, 'employes/dept', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(23, 'employes/emp', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 147456, 147456, 0, '8.0.30', 1, 'N', 'normal'),
	(25, 'employes/projet', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(101, 'tp1/livre', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(102, 'tp1/exemplaire', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(113, 'guide/restaurants', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(133, 'immochateau/categories', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(134, 'immochateau/departements', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(135, 'immochateau/habilitations', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(136, 'immochateau/images', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(137, 'immochateau/proprietaires', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(139, 'immochateau/association_img', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 131072, 131072, 0, '8.0.30', 1, 'N', 'normal'),
	(140, 'immochateau/biens_immobiliers', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 180224, 180224, 0, '8.0.30', 1, 'N', 'normal'),
	(141, 'immochateau/documents', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 131072, 131072, 0, '8.0.30', 1, 'N', 'normal'),
	(142, 'immochateau/utilisateurs', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 131072, 131072, 0, '8.0.30', 1, 'N', 'normal'),
	(143, 'voiliers/utilisateurs', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(144, 'voiliers/candidats', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(150, 'festival/departements', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 114688, 114688, 0, '8.0.30', 1, 'N', 'normal'),
	(151, 'festival/candidats', 16417, 'Dynamic', 16384, 0, 'Single', 65536, 131072, 131072, 0, '8.0.30', 1, 'N', 'normal');
/*!40000 ALTER TABLE `INNODB_TABLESPACES` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
