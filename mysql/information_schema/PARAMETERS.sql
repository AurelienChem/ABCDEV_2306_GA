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

-- Listage de la structure de table information_schema. PARAMETERS
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`PARAMETERS` AS select (`cat`.`name` collate utf8mb3_tolower_ci) AS `SPECIFIC_CATALOG`,(`sch`.`name` collate utf8mb3_tolower_ci) AS `SPECIFIC_SCHEMA`,`rtn`.`name` AS `SPECIFIC_NAME`,if((`rtn`.`type` = 'FUNCTION'),(`prm`.`ordinal_position` - 1),`prm`.`ordinal_position`) AS `ORDINAL_POSITION`,if(((`rtn`.`type` = 'FUNCTION') and (`prm`.`ordinal_position` = 1)),NULL,`prm`.`mode`) AS `PARAMETER_MODE`,if(((`rtn`.`type` = 'FUNCTION') and (`prm`.`ordinal_position` = 1)),NULL,`prm`.`name`) AS `PARAMETER_NAME`,substring_index(substring_index(`prm`.`data_type_utf8`,'(',1),' ',1) AS `DATA_TYPE`,internal_dd_char_length(`prm`.`data_type`,`prm`.`char_length`,`col`.`name`,0) AS `CHARACTER_MAXIMUM_LENGTH`,internal_dd_char_length(`prm`.`data_type`,`prm`.`char_length`,`col`.`name`,1) AS `CHARACTER_OCTET_LENGTH`,`prm`.`numeric_precision` AS `NUMERIC_PRECISION`,if((`prm`.`numeric_precision` is null),NULL,ifnull(`prm`.`numeric_scale`,0)) AS `NUMERIC_SCALE`,`prm`.`datetime_precision` AS `DATETIME_PRECISION`,(case `prm`.`data_type` when 'MYSQL_TYPE_STRING' then if((`cs`.`name` = 'binary'),NULL,`cs`.`name`) when 'MYSQL_TYPE_VAR_STRING' then if((`cs`.`name` = 'binary'),NULL,`cs`.`name`) when 'MYSQL_TYPE_VARCHAR' then if((`cs`.`name` = 'binary'),NULL,`cs`.`name`) when 'MYSQL_TYPE_TINY_BLOB' then if((`cs`.`name` = 'binary'),NULL,`cs`.`name`) when 'MYSQL_TYPE_MEDIUM_BLOB' then if((`cs`.`name` = 'binary'),NULL,`cs`.`name`) when 'MYSQL_TYPE_BLOB' then if((`cs`.`name` = 'binary'),NULL,`cs`.`name`) when 'MYSQL_TYPE_LONG_BLOB' then if((`cs`.`name` = 'binary'),NULL,`cs`.`name`) when 'MYSQL_TYPE_ENUM' then if((`cs`.`name` = 'binary'),NULL,`cs`.`name`) when 'MYSQL_TYPE_SET' then if((`cs`.`name` = 'binary'),NULL,`cs`.`name`) else NULL end) AS `CHARACTER_SET_NAME`,(case `prm`.`data_type` when 'MYSQL_TYPE_STRING' then if((`cs`.`name` = 'binary'),NULL,`col`.`name`) when 'MYSQL_TYPE_VAR_STRING' then if((`cs`.`name` = 'binary'),NULL,`col`.`name`) when 'MYSQL_TYPE_VARCHAR' then if((`cs`.`name` = 'binary'),NULL,`col`.`name`) when 'MYSQL_TYPE_TINY_BLOB' then if((`cs`.`name` = 'binary'),NULL,`col`.`name`) when 'MYSQL_TYPE_MEDIUM_BLOB' then if((`cs`.`name` = 'binary'),NULL,`col`.`name`) when 'MYSQL_TYPE_BLOB' then if((`cs`.`name` = 'binary'),NULL,`col`.`name`) when 'MYSQL_TYPE_LONG_BLOB' then if((`cs`.`name` = 'binary'),NULL,`col`.`name`) when 'MYSQL_TYPE_ENUM' then if((`cs`.`name` = 'binary'),NULL,`col`.`name`) when 'MYSQL_TYPE_SET' then if((`cs`.`name` = 'binary'),NULL,`col`.`name`) else NULL end) AS `COLLATION_NAME`,`prm`.`data_type_utf8` AS `DTD_IDENTIFIER`,`rtn`.`type` AS `ROUTINE_TYPE` from (((((`mysql`.`parameters` `prm` join `mysql`.`routines` `rtn` on((`prm`.`routine_id` = `rtn`.`id`))) join `mysql`.`schemata` `sch` on((`rtn`.`schema_id` = `sch`.`id`))) join `mysql`.`catalogs` `cat` on((`cat`.`id` = `sch`.`catalog_id`))) join `mysql`.`collations` `col` on((`prm`.`collation_id` = `col`.`id`))) join `mysql`.`character_sets` `cs` on((`col`.`character_set_id` = `cs`.`id`))) where (0 <> can_access_routine(`sch`.`name`,`rtn`.`name`,`rtn`.`type`,`rtn`.`definer`,false));

-- Listage des données de la table information_schema.PARAMETERS : 0 rows
/*!40000 ALTER TABLE `PARAMETERS` DISABLE KEYS */;
INSERT INTO `PARAMETERS` (`SPECIFIC_CATALOG`, `SPECIFIC_SCHEMA`, `SPECIFIC_NAME`, `ORDINAL_POSITION`, `PARAMETER_MODE`, `PARAMETER_NAME`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `DATETIME_PRECISION`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `DTD_IDENTIFIER`, `ROUTINE_TYPE`) VALUES
	('def', 'sys', 'extract_schema_from_file_name', 0, NULL, NULL, 'varchar', 64, 256, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(64)', 'FUNCTION'),
	('def', 'sys', 'extract_schema_from_file_name', 1, 'IN', 'path', 'varchar', 512, 2048, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(512)', 'FUNCTION'),
	('def', 'sys', 'extract_table_from_file_name', 0, NULL, NULL, 'varchar', 64, 256, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(64)', 'FUNCTION'),
	('def', 'sys', 'extract_table_from_file_name', 1, 'IN', 'path', 'varchar', 512, 2048, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(512)', 'FUNCTION'),
	('def', 'sys', 'format_bytes', 0, NULL, NULL, 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'format_bytes', 1, 'IN', 'bytes', 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'format_path', 0, NULL, NULL, 'varchar', 512, 2048, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(512)', 'FUNCTION'),
	('def', 'sys', 'format_path', 1, 'IN', 'in_path', 'varchar', 512, 2048, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(512)', 'FUNCTION'),
	('def', 'sys', 'format_statement', 0, NULL, NULL, 'longtext', 4294967295, 4294967295, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'longtext', 'FUNCTION'),
	('def', 'sys', 'format_statement', 1, 'IN', 'statement', 'longtext', 4294967295, 4294967295, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'longtext', 'FUNCTION'),
	('def', 'sys', 'format_time', 0, NULL, NULL, 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'format_time', 1, 'IN', 'picoseconds', 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'list_add', 0, NULL, NULL, 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'list_add', 1, 'IN', 'in_list', 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'list_add', 2, 'IN', 'in_add_value', 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'list_drop', 0, NULL, NULL, 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'list_drop', 1, 'IN', 'in_list', 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'list_drop', 2, 'IN', 'in_drop_value', 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'ps_is_account_enabled', 0, NULL, NULL, 'enum', 3, 12, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'enum(\'YES\',\'NO\')', 'FUNCTION'),
	('def', 'sys', 'ps_is_account_enabled', 1, 'IN', 'in_host', 'varchar', 255, 1020, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(255)', 'FUNCTION'),
	('def', 'sys', 'ps_is_account_enabled', 2, 'IN', 'in_user', 'varchar', 32, 128, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(32)', 'FUNCTION'),
	('def', 'sys', 'ps_is_consumer_enabled', 0, NULL, NULL, 'enum', 3, 12, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'enum(\'YES\',\'NO\')', 'FUNCTION'),
	('def', 'sys', 'ps_is_consumer_enabled', 1, 'IN', 'in_consumer', 'varchar', 64, 256, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(64)', 'FUNCTION'),
	('def', 'sys', 'ps_is_instrument_default_enabled', 0, NULL, NULL, 'enum', 3, 12, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'enum(\'YES\',\'NO\')', 'FUNCTION'),
	('def', 'sys', 'ps_is_instrument_default_enabled', 1, 'IN', 'in_instrument', 'varchar', 128, 512, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(128)', 'FUNCTION'),
	('def', 'sys', 'ps_is_instrument_default_timed', 0, NULL, NULL, 'enum', 3, 12, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'enum(\'YES\',\'NO\')', 'FUNCTION'),
	('def', 'sys', 'ps_is_instrument_default_timed', 1, 'IN', 'in_instrument', 'varchar', 128, 512, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(128)', 'FUNCTION'),
	('def', 'sys', 'ps_is_thread_instrumented', 0, NULL, NULL, 'enum', 7, 28, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'enum(\'YES\',\'NO\',\'UNKNOWN\')', 'FUNCTION'),
	('def', 'sys', 'ps_is_thread_instrumented', 1, 'IN', 'in_connection_id', 'bigint', NULL, NULL, 20, 0, NULL, NULL, NULL, 'bigint unsigned', 'FUNCTION'),
	('def', 'sys', 'ps_thread_id', 0, NULL, NULL, 'bigint', NULL, NULL, 20, 0, NULL, NULL, NULL, 'bigint unsigned', 'FUNCTION'),
	('def', 'sys', 'ps_thread_id', 1, 'IN', 'in_connection_id', 'bigint', NULL, NULL, 20, 0, NULL, NULL, NULL, 'bigint unsigned', 'FUNCTION'),
	('def', 'sys', 'ps_thread_account', 0, NULL, NULL, 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'ps_thread_account', 1, 'IN', 'in_thread_id', 'bigint', NULL, NULL, 20, 0, NULL, NULL, NULL, 'bigint unsigned', 'FUNCTION'),
	('def', 'sys', 'ps_thread_stack', 0, NULL, NULL, 'longtext', 4294967295, 4294967295, NULL, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'longtext', 'FUNCTION'),
	('def', 'sys', 'ps_thread_stack', 1, 'IN', 'thd_id', 'bigint', NULL, NULL, 20, 0, NULL, NULL, NULL, 'bigint unsigned', 'FUNCTION'),
	('def', 'sys', 'ps_thread_stack', 2, 'IN', 'debug', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'FUNCTION'),
	('def', 'sys', 'ps_thread_trx_info', 0, NULL, NULL, 'longtext', 4294967295, 4294967295, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'longtext', 'FUNCTION'),
	('def', 'sys', 'ps_thread_trx_info', 1, 'IN', 'in_thread_id', 'bigint', NULL, NULL, 20, 0, NULL, NULL, NULL, 'bigint unsigned', 'FUNCTION'),
	('def', 'sys', 'quote_identifier', 0, NULL, NULL, 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'quote_identifier', 1, 'IN', 'in_identifier', 'text', 65535, 65535, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'text', 'FUNCTION'),
	('def', 'sys', 'sys_get_config', 0, NULL, NULL, 'varchar', 128, 512, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(128)', 'FUNCTION'),
	('def', 'sys', 'sys_get_config', 1, 'IN', 'in_variable_name', 'varchar', 128, 512, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(128)', 'FUNCTION'),
	('def', 'sys', 'sys_get_config', 2, 'IN', 'in_default_value', 'varchar', 128, 512, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(128)', 'FUNCTION'),
	('def', 'sys', 'version_major', 0, NULL, NULL, 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint unsigned', 'FUNCTION'),
	('def', 'sys', 'version_minor', 0, NULL, NULL, 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint unsigned', 'FUNCTION'),
	('def', 'sys', 'version_patch', 0, NULL, NULL, 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint unsigned', 'FUNCTION'),
	('def', 'sys', 'create_synonym_db', 1, 'IN', 'in_db_name', 'varchar', 64, 256, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(64)', 'PROCEDURE'),
	('def', 'sys', 'create_synonym_db', 2, 'IN', 'in_synonym', 'varchar', 64, 256, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(64)', 'PROCEDURE'),
	('def', 'sys', 'execute_prepared_stmt', 1, 'IN', 'in_query', 'longtext', 4294967295, 4294967295, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'longtext', 'PROCEDURE'),
	('def', 'sys', 'diagnostics', 1, 'IN', 'in_max_runtime', 'int', NULL, NULL, 10, 0, NULL, NULL, NULL, 'int unsigned', 'PROCEDURE'),
	('def', 'sys', 'diagnostics', 2, 'IN', 'in_interval', 'int', NULL, NULL, 10, 0, NULL, NULL, NULL, 'int unsigned', 'PROCEDURE'),
	('def', 'sys', 'diagnostics', 3, 'IN', 'in_auto_config', 'enum', 7, 28, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'enum(\'current\',\'medium\',\'full\')', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_statement_digest', 1, 'IN', 'in_digest', 'varchar', 64, 256, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(64)', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_statement_digest', 2, 'IN', 'in_runtime', 'int', NULL, NULL, 10, 0, NULL, NULL, NULL, 'int', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_statement_digest', 3, 'IN', 'in_interval', 'decimal', NULL, NULL, 2, 2, NULL, NULL, NULL, 'decimal(2,2)', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_statement_digest', 4, 'IN', 'in_start_fresh', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_statement_digest', 5, 'IN', 'in_auto_enable', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_thread', 1, 'IN', 'in_thread_id', 'bigint', NULL, NULL, 20, 0, NULL, NULL, NULL, 'bigint unsigned', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_thread', 2, 'IN', 'in_outfile', 'varchar', 255, 1020, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(255)', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_thread', 3, 'IN', 'in_max_runtime', 'decimal', NULL, NULL, 20, 2, NULL, NULL, NULL, 'decimal(20,2)', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_thread', 4, 'IN', 'in_interval', 'decimal', NULL, NULL, 20, 2, NULL, NULL, NULL, 'decimal(20,2)', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_thread', 5, 'IN', 'in_start_fresh', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_thread', 6, 'IN', 'in_auto_setup', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'ps_trace_thread', 7, 'IN', 'in_debug', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_disable_consumer', 1, 'IN', 'consumer', 'varchar', 128, 512, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(128)', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_disable_instrument', 1, 'IN', 'in_pattern', 'varchar', 128, 512, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(128)', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_disable_thread', 1, 'IN', 'in_connection_id', 'bigint', NULL, NULL, 19, 0, NULL, NULL, NULL, 'bigint', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_enable_consumer', 1, 'IN', 'consumer', 'varchar', 128, 512, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(128)', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_enable_instrument', 1, 'IN', 'in_pattern', 'varchar', 128, 512, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(128)', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_enable_thread', 1, 'IN', 'in_connection_id', 'bigint', NULL, NULL, 19, 0, NULL, NULL, NULL, 'bigint', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_reset_to_default', 1, 'IN', 'in_verbose', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_save', 1, 'IN', 'in_timeout', 'int', NULL, NULL, 10, 0, NULL, NULL, NULL, 'int', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_show_disabled', 1, 'IN', 'in_show_instruments', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_show_disabled', 2, 'IN', 'in_show_threads', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_show_enabled', 1, 'IN', 'in_show_instruments', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'ps_setup_show_enabled', 2, 'IN', 'in_show_threads', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'ps_truncate_all_tables', 1, 'IN', 'in_verbose', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, NULL, 'tinyint(1)', 'PROCEDURE'),
	('def', 'sys', 'statement_performance_analyzer', 1, 'IN', 'in_action', 'enum', 12, 48, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'enum(\'snapshot\',\'overall\',\'delta\',\'create_table\',\'create_tmp\',\'save\',\'cleanup\')', 'PROCEDURE'),
	('def', 'sys', 'statement_performance_analyzer', 2, 'IN', 'in_table', 'varchar', 129, 516, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(129)', 'PROCEDURE'),
	('def', 'sys', 'statement_performance_analyzer', 3, 'IN', 'in_views', 'set', 124, 496, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'set(\'with_runtimes_in_95th_percentile\',\'analysis\',\'with_errors_or_warnings\',\'with_full_table_scans\',\'with_sorting\',\'with_temp_tables\',\'custom\')', 'PROCEDURE'),
	('def', 'sys', 'table_exists', 1, 'IN', 'in_db', 'varchar', 64, 256, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(64)', 'PROCEDURE'),
	('def', 'sys', 'table_exists', 2, 'IN', 'in_table', 'varchar', 64, 256, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'varchar(64)', 'PROCEDURE'),
	('def', 'sys', 'table_exists', 3, 'OUT', 'out_exists', 'enum', 10, 40, NULL, NULL, NULL, 'utf8mb4', 'utf8mb4_0900_ai_ci', 'enum(\'\',\'BASE TABLE\',\'VIEW\',\'TEMPORARY\')', 'PROCEDURE');
/*!40000 ALTER TABLE `PARAMETERS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
