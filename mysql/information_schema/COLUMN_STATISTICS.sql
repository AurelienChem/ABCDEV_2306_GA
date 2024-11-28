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

-- Listage de la structure de table information_schema. COLUMN_STATISTICS
CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`COLUMN_STATISTICS` AS select `mysql`.`column_statistics`.`schema_name` AS `SCHEMA_NAME`,`mysql`.`column_statistics`.`table_name` AS `TABLE_IF NOT EXISTS NAME`,`mysql`.`column_statistics`.`column_name` AS `COLUMN_NAME`,`mysql`.`column_statistics`.`histogram` AS `HISTOGRAM` from `mysql`.`column_statistics` where (0 <> can_access_table(`mysql`.`column_statistics`.`schema_name`,`mysql`.`column_statistics`.`table_name`));

-- Listage des données de la table information_schema.COLUMN_STATISTICS : 0 rows
/*!40000 ALTER TABLE `COLUMN_STATISTICS` DISABLE KEYS */;
/*!40000 ALTER TABLE `COLUMN_STATISTICS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
