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

-- Listage de la structure de table information_schema. CHECK_CONSTRAINTS
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`CHECK_CONSTRAINTS` AS select (`cat`.`name` collate utf8mb3_tolower_ci) AS `CONSTRAINT_CATALOG`,(`sch`.`name` collate utf8mb3_tolower_ci) AS `CONSTRAINT_SCHEMA`,`cc`.`name` AS `CONSTRAINT_NAME`,`cc`.`check_clause_utf8` AS `CHECK_CLAUSE` from (((`mysql`.`check_constraints` `cc` join `mysql`.`tables` `tbl` on((`cc`.`table_id` = `tbl`.`id`))) join `mysql`.`schemata` `sch` on((`tbl`.`schema_id` = `sch`.`id`))) join `mysql`.`catalogs` `cat` on((`cat`.`id` = `sch`.`catalog_id`))) where ((0 <> can_access_table(`sch`.`name`,`tbl`.`name`)) and (0 <> is_visible_dd_object(`tbl`.`hidden`)));

-- Listage des données de la table information_schema.CHECK_CONSTRAINTS : 0 rows
/*!40000 ALTER TABLE `CHECK_CONSTRAINTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CHECK_CONSTRAINTS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
