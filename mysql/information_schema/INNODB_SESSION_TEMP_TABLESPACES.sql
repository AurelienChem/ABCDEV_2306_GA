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

-- Listage de la structure de table information_schema. INNODB_SESSION_TEMP_TABLESPACES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SESSION_TEMP_TABLESPACES` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SPACE` int unsigned NOT NULL DEFAULT '0',
  `PATH` varchar(4001) NOT NULL DEFAULT '',
  `SIZE` bigint unsigned NOT NULL DEFAULT '0',
  `STATE` varchar(192) NOT NULL DEFAULT '',
  `PURPOSE` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table information_schema.INNODB_SESSION_TEMP_TABLESPACES : 0 rows
/*!40000 ALTER TABLE `INNODB_SESSION_TEMP_TABLESPACES` DISABLE KEYS */;
INSERT INTO `INNODB_SESSION_TEMP_TABLESPACES` (`ID`, `SPACE`, `PATH`, `SIZE`, `STATE`, `PURPOSE`) VALUES
	(8, 4243767290, '.\\#innodb_temp\\temp_10.ibt', 9437184, 'ACTIVE', 'INTRINSIC'),
	(0, 4243767281, '.\\#innodb_temp\\temp_1.ibt', 81920, 'INACTIVE', 'NONE'),
	(0, 4243767282, '.\\#innodb_temp\\temp_2.ibt', 81920, 'INACTIVE', 'NONE'),
	(0, 4243767283, '.\\#innodb_temp\\temp_3.ibt', 81920, 'INACTIVE', 'NONE'),
	(0, 4243767284, '.\\#innodb_temp\\temp_4.ibt', 81920, 'INACTIVE', 'NONE'),
	(0, 4243767285, '.\\#innodb_temp\\temp_5.ibt', 81920, 'INACTIVE', 'NONE'),
	(0, 4243767286, '.\\#innodb_temp\\temp_6.ibt', 81920, 'INACTIVE', 'NONE'),
	(0, 4243767287, '.\\#innodb_temp\\temp_7.ibt', 81920, 'INACTIVE', 'NONE'),
	(0, 4243767288, '.\\#innodb_temp\\temp_8.ibt', 81920, 'INACTIVE', 'NONE'),
	(0, 4243767289, '.\\#innodb_temp\\temp_9.ibt', 81920, 'INACTIVE', 'NONE');
/*!40000 ALTER TABLE `INNODB_SESSION_TEMP_TABLESPACES` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
