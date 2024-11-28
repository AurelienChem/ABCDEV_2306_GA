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

-- Listage de la structure de table information_schema. VIEW_TABLE_USAGE
CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`VIEW_TABLE_IF NOT EXISTS USAGE` AS select (`cat`.`name` collate utf8mb3_tolower_ci) AS `VIEW_CATALOG`,(`sch`.`name` collate utf8mb3_tolower_ci) AS `VIEW_SCHEMA`,(`vw`.`name` collate utf8mb3_tolower_ci) AS `VIEW_NAME`,(`vtu`.`table_catalog` collate utf8mb3_tolower_ci) AS `TABLE_CATALOG`,(`vtu`.`table_schema` collate utf8mb3_tolower_ci) AS `TABLE_SCHEMA`,(`vtu`.`table_name` collate utf8mb3_tolower_ci) AS `TABLE_NAME` from (((`mysql`.`tables` `vw` join `mysql`.`schemata` `sch` on((`vw`.`schema_id` = `sch`.`id`))) join `mysql`.`catalogs` `cat` on((`cat`.`id` = `sch`.`catalog_id`))) join `mysql`.`view_table_usage` `vtu` on((`vtu`.`view_id` = `vw`.`id`))) where ((0 <> can_access_table(`vtu`.`table_schema`,`vtu`.`table_name`)) and (`vw`.`type` = 'VIEW') and (0 <> can_access_view(`sch`.`name`,`vw`.`name`,`vw`.`view_definer`,`vw`.`options`)));

-- Listage des données de la table information_schema.VIEW_TABLE_USAGE : 0 rows
/*!40000 ALTER TABLE `VIEW_TABLE_USAGE` DISABLE KEYS */;
