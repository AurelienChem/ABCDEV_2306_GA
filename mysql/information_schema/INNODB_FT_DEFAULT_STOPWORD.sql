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

-- Listage de la structure de table information_schema. INNODB_FT_DEFAULT_STOPWORD
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_DEFAULT_STOPWORD` (
  `value` varchar(18) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table information_schema.INNODB_FT_DEFAULT_STOPWORD : 0 rows
/*!40000 ALTER TABLE `INNODB_FT_DEFAULT_STOPWORD` DISABLE KEYS */;
INSERT INTO `INNODB_FT_DEFAULT_STOPWORD` (`value`) VALUES
	('a'),
	('about'),
	('an'),
	('are'),
	('as'),
	('at'),
	('be'),
	('by'),
	('com'),
	('de'),
	('en'),
	('for'),
	('from'),
	('how'),
	('i'),
	('in'),
	('is'),
	('it'),
	('la'),
	('of'),
	('on'),
	('or'),
	('that'),
	('the'),
	('this'),
	('to'),
	('was'),
	('what'),
	('when'),
	('where'),
	('who'),
	('will'),
	('with'),
	('und'),
	('the'),
	('www');
/*!40000 ALTER TABLE `INNODB_FT_DEFAULT_STOPWORD` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
