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

-- Listage de la structure de table information_schema. TRIGGERS
CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`TRIGGERS` AS select (`cat`.`name` collate utf8mb3_tolower_ci) AS `TRIGGER_CATALOG`,(`sch`.`name` collate utf8mb3_tolower_ci) AS `TRIGGER_SCHEMA`,`trg`.`name` AS `TRIGGER_NAME`,`trg`.`event_type` AS `EVENT_MANIPULATION`,(`cat`.`name` collate utf8mb3_tolower_ci) AS `EVENT_OBJECT_CATALOG`,(`sch`.`name` collate utf8mb3_tolower_ci) AS `EVENT_OBJECT_SCHEMA`,(`tbl`.`name` collate utf8mb3_tolower_ci) AS `EVENT_OBJECT_TABLE`IF NOT EXISTS ,`trg`.`action_order` AS `ACTION_ORDER`,NULL AS `ACTION_CONDITION`,`trg`.`action_statement_utf8` AS `ACTION_STATEMENT`,'ROW' AS `ACTION_ORIENTATION`,`trg`.`action_timing` AS `ACTION_TIMING`,NULL AS `ACTION_REFERENCE_OLD_TABLE`,NULL AS `ACTION_REFERENCE_NEW_TABLE`,'OLD' AS `ACTION_REFERENCE_OLD_ROW`,'NEW' AS `ACTION_REFERENCE_NEW_ROW`,`trg`.`created` AS `CREATED`,`trg`.`sql_mode` AS `SQL_MODE`,`trg`.`definer` AS `DEFINER`,`cs_client`.`name` AS `CHARACTER_SET_CLIENT`,`coll_conn`.`name` AS `COLLATION_CONNECTION`,`coll_db`.`name` AS `DATABASE_COLLATION` from (((((((`mysql`.`triggers` `trg` join `mysql`.`tables` `tbl` on((`tbl`.`id` = `trg`.`table_id`))) join `mysql`.`schemata` `sch` on((`tbl`.`schema_id` = `sch`.`id`))) join `mysql`.`catalogs` `cat` on((`cat`.`id` = `sch`.`catalog_id`))) join `mysql`.`collations` `coll_client` on((`coll_client`.`id` = `trg`.`client_collation_id`))) join `mysql`.`character_sets` `cs_client` on((`cs_client`.`id` = `coll_client`.`character_set_id`))) join `mysql`.`collations` `coll_conn` on((`coll_conn`.`id` = `trg`.`connection_collation_id`))) join `mysql`.`collations` `coll_db` on((`coll_db`.`id` = `trg`.`schema_collation_id`))) where ((`tbl`.`type` <> 'VIEW') and (0 <> can_access_trigger(`sch`.`name`,`tbl`.`name`)) and (0 <> is_visible_dd_object(`tbl`.`hidden`)));

-- Listage des données de la table information_schema.TRIGGERS : 0 rows
/*!40000 ALTER TABLE `TRIGGERS` DISABLE KEYS */;
INSERT INTO `TRIGGERS` (`TRIGGER_CATALOG`, `TRIGGER_SCHEMA`, `TRIGGER_NAME`, `EVENT_MANIPULATION`, `EVENT_OBJECT_CATALOG`, `EVENT_OBJECT_SCHEMA`, `EVENT_OBJECT_TABLE`, `ACTION_ORDER`, `ACTION_CONDITION`, `ACTION_STATEMENT`, `ACTION_ORIENTATION`, `ACTION_TIMING`, `ACTION_REFERENCE_OLD_TABLE`, `ACTION_REFERENCE_NEW_TABLE`, `ACTION_REFERENCE_OLD_ROW`, `ACTION_REFERENCE_NEW_ROW`, `CREATED`, `SQL_MODE`, `DEFINER`, `CHARACTER_SET_CLIENT`, `COLLATION_CONNECTION`, `DATABASE_COLLATION`) VALUES
	('def', 'sys', 'sys_config_insert_set_user', 'INSERT', 'def', 'sys', 'sys_config', 1, NULL, 'BEGIN\n    IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN\n        SET NEW.set_by = USER();\n    END IF;\nEND', 'ROW', 'BEFORE', NULL, NULL, 'OLD', 'NEW', '2023-02-15 13:32:39.31', 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION', 'mysql.sys@localhost', 'utf8mb4', 'utf8mb4_0900_ai_ci', 'utf8mb4_0900_ai_ci'),
	('def', 'sys', 'sys_config_update_set_user', 'UPDATE', 'def', 'sys', 'sys_config', 1, NULL, 'BEGIN\n    IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN\n        SET NEW.set_by = USER();\n    END IF;\nEND', 'ROW', 'BEFORE', NULL, NULL, 'OLD', 'NEW', '2023-02-15 13:32:39.31', 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION', 'mysql.sys@localhost', 'utf8mb4', 'utf8mb4_0900_ai_ci', 'utf8mb4_0900_ai_ci');
/*!40000 ALTER TABLE `TRIGGERS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
