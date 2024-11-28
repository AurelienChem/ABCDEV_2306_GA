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

-- Listage de la structure de table information_schema. SCHEMATA
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`SCHEMATA` AS select (`cat`.`name` collate utf8mb3_tolower_ci) AS `CATALOG_NAME`,(`sch`.`name` collate utf8mb3_tolower_ci) AS `SCHEMA_NAME`,`cs`.`name` AS `DEFAULT_CHARACTER_SET_NAME`,`col`.`name` AS `DEFAULT_COLLATION_NAME`,NULL AS `SQL_PATH`,`sch`.`default_encryption` AS `DEFAULT_ENCRYPTION` from (((`mysql`.`schemata` `sch` join `mysql`.`catalogs` `cat` on((`cat`.`id` = `sch`.`catalog_id`))) join `mysql`.`collations` `col` on((`sch`.`default_collation_id` = `col`.`id`))) join `mysql`.`character_sets` `cs` on((`col`.`character_set_id` = `cs`.`id`))) where (0 <> can_access_database(`sch`.`name`));

-- Listage des données de la table information_schema.SCHEMATA : 0 rows
/*!40000 ALTER TABLE `SCHEMATA` DISABLE KEYS */;
INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`, `DEFAULT_ENCRYPTION`) VALUES
	('def', 'mysql', 'utf8mb4', 'utf8mb4_0900_ai_ci', NULL, 'NO'),
	('def', 'information_schema', 'utf8mb3', 'utf8mb3_general_ci', NULL, 'NO'),
	('def', 'performance_schema', 'utf8mb4', 'utf8mb4_0900_ai_ci', NULL, 'NO'),
	('def', 'sys', 'utf8mb4', 'utf8mb4_0900_ai_ci', NULL, 'NO'),
	('def', 'employes', 'utf8mb4', 'utf8mb4_0900_ai_ci', NULL, 'NO'),
	('def', 'tp1', 'utf8mb4', 'utf8mb4_0900_ai_ci', NULL, 'NO'),
	('def', 'guide', 'utf8mb4', 'utf8mb4_0900_ai_ci', NULL, 'NO'),
	('def', 'immochateau', 'utf8mb4', 'utf8mb4_0900_ai_ci', NULL, 'NO'),
	('def', 'voiliers', 'utf8mb4', 'utf8mb4_0900_ai_ci', NULL, 'NO'),
	('def', 'festival', 'utf8mb4', 'utf8mb4_0900_ai_ci', NULL, 'NO');
/*!40000 ALTER TABLE `SCHEMATA` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
