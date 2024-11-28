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

-- Listage de la structure de table information_schema. VIEW_ROUTINE_USAGE
CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`VIEW_ROUTINE_USAGE` AS select (`cat`.`name` collate utf8mb3_tolower_ci) AS `TABLE_IF NOT EXISTS CATALOG`,(`sch`.`name` collate utf8mb3_tolower_ci) AS `TABLE_SCHEMA`,(`vw`.`name` collate utf8mb3_tolower_ci) AS `TABLE_NAME`,(`vru`.`routine_catalog` collate utf8mb3_tolower_ci) AS `SPECIFIC_CATALOG`,(`vru`.`routine_schema` collate utf8mb3_tolower_ci) AS `SPECIFIC_SCHEMA`,`vru`.`routine_name` AS `SPECIFIC_NAME` from ((((`mysql`.`tables` `vw` join `mysql`.`schemata` `sch` on((`vw`.`schema_id` = `sch`.`id`))) join `mysql`.`catalogs` `cat` on((`cat`.`id` = `sch`.`catalog_id`))) join `mysql`.`view_routine_usage` `vru` on((`vru`.`view_id` = `vw`.`id`))) join `mysql`.`routines` `rtn` on(((`vru`.`routine_catalog` = `cat`.`name`) and (`vru`.`routine_schema` = `sch`.`name`) and (`vru`.`routine_name` = `rtn`.`name`)))) where ((`vw`.`type` = 'VIEW') and (0 <> can_access_routine(`vru`.`routine_schema`,`vru`.`routine_name`,`rtn`.`type`,`rtn`.`definer`,false)) and (0 <> can_access_view(`sch`.`name`,`vw`.`name`,`vw`.`view_definer`,`vw`.`options`)));

-- Listage des données de la table information_schema.VIEW_ROUTINE_USAGE : 0 rows
/*!40000 ALTER TABLE `VIEW_ROUTINE_USAGE` DISABLE KEYS */;
INSERT INTO `VIEW_ROUTINE_USAGE` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `SPECIFIC_CATALOG`, `SPECIFIC_SCHEMA`, `SPECIFIC_NAME`) VALUES
	('def', 'sys', 'x$ps_schema_table_statistics_io', 'def', 'sys', 'extract_schema_from_file_name'),
	('def', 'sys', 'x$ps_schema_table_statistics_io', 'def', 'sys', 'extract_table_from_file_name'),
	('def', 'sys', 'io_global_by_file_by_latency', 'def', 'sys', 'format_path'),
	('def', 'sys', 'io_global_by_file_by_bytes', 'def', 'sys', 'format_path'),
	('def', 'sys', 'latest_file_io', 'def', 'sys', 'format_path'),
	('def', 'sys', 'processlist', 'def', 'sys', 'format_statement'),
	('def', 'sys', 'statements_with_temp_tables', 'def', 'sys', 'format_statement'),
	('def', 'sys', 'statements_with_sorting', 'def', 'sys', 'format_statement'),
	('def', 'sys', 'statements_with_runtimes_in_95th_percentile', 'def', 'sys', 'format_statement'),
	('def', 'sys', 'statements_with_full_table_scans', 'def', 'sys', 'format_statement'),
	('def', 'sys', 'statements_with_errors_or_warnings', 'def', 'sys', 'format_statement'),
	('def', 'sys', 'statement_analysis', 'def', 'sys', 'format_statement'),
	('def', 'sys', 'schema_table_lock_waits', 'def', 'sys', 'format_statement'),
	('def', 'sys', 'innodb_lock_waits', 'def', 'sys', 'format_statement'),
	('def', 'sys', 'x$schema_table_lock_waits', 'def', 'sys', 'ps_thread_account'),
	('def', 'sys', 'schema_table_lock_waits', 'def', 'sys', 'ps_thread_account'),
	('def', 'sys', 'x$innodb_lock_waits', 'def', 'sys', 'quote_identifier'),
	('def', 'sys', 'innodb_lock_waits', 'def', 'sys', 'quote_identifier');
/*!40000 ALTER TABLE `VIEW_ROUTINE_USAGE` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
