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

-- Listage de la structure de table information_schema. FILES
CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`FILES` AS select internal_tablespace_id(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `FILE_ID`,replace(if(((locate(left(`tsf`.`file_name`,1),'./') = 0) and (substr(`tsf`.`file_name`,2,1) <> ':')),concat('./',`tsf`.`file_name`),`tsf`.`file_name`),'\\','/') AS `FILE_NAME`,internal_tablespace_type(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `FILE_TYPE`,`ts`.`name` AS `TABLESIF NOT EXISTS PACE_NAME`,'' AS `TABLE_CATALOG`,NULL AS `TABLE_SCHEMA`,NULL AS `TABLE_NAME`,internal_tablespace_logfile_group_name(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `LOGFILE_GROUP_NAME`,internal_tablespace_logfile_group_number(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `LOGFILE_GROUP_NUMBER`,`ts`.`engine` AS `ENGINE`,NULL AS `FULLTEXT_KEYS`,NULL AS `DELETED_ROWS`,NULL AS `UPDATE_COUNT`,internal_tablespace_free_extents(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `FREE_EXTENTS`,internal_tablespace_total_extents(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `TOTAL_EXTENTS`,internal_tablespace_extent_size(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `EXTENT_SIZE`,internal_tablespace_initial_size(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `INITIAL_SIZE`,internal_tablespace_maximum_size(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `MAXIMUM_SIZE`,internal_tablespace_autoextend_size(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `AUTOEXTEND_SIZE`,NULL AS `CREATION_TIME`,NULL AS `LAST_UPDATE_TIME`,NULL AS `LAST_ACCESS_TIME`,NULL AS `RECOVER_TIME`,NULL AS `TRANSACTION_COUNTER`,internal_tablespace_version(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `VERSION`,internal_tablespace_row_format(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `ROW_FORMAT`,NULL AS `TABLE_ROWS`,NULL AS `AVG_ROW_LENGTH`,NULL AS `DATA_LENGTH`,NULL AS `MAX_DATA_LENGTH`,NULL AS `INDEX_LENGTH`,internal_tablespace_data_free(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `DATA_FREE`,NULL AS `CREATE_TIME`,NULL AS `UPDATE_TIME`,NULL AS `CHECK_TIME`,NULL AS `CHECKSUM`,internal_tablespace_status(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `STATUS`,internal_tablespace_extra(`ts`.`name`,`tsf`.`file_name`,`ts`.`engine`,`ts`.`se_private_data`) AS `EXTRA` from (`mysql`.`tablespaces` `ts` join `mysql`.`tablespace_files` `tsf` on((`ts`.`id` = `tsf`.`tablespace_id`)));

-- Listage des données de la table information_schema.FILES : 0 rows
/*!40000 ALTER TABLE `FILES` DISABLE KEYS */;
INSERT INTO `FILES` (`FILE_ID`, `FILE_NAME`, `FILE_TYPE`, `TABLESPACE_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `LOGFILE_GROUP_NAME`, `LOGFILE_GROUP_NUMBER`, `ENGINE`, `FULLTEXT_KEYS`, `DELETED_ROWS`, `UPDATE_COUNT`, `FREE_EXTENTS`, `TOTAL_EXTENTS`, `EXTENT_SIZE`, `INITIAL_SIZE`, `MAXIMUM_SIZE`, `AUTOEXTEND_SIZE`, `CREATION_TIME`, `LAST_UPDATE_TIME`, `LAST_ACCESS_TIME`, `RECOVER_TIME`, `TRANSACTION_COUNTER`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `CHECKSUM`, `STATUS`, `EXTRA`) VALUES
	(4294967294, './mysql.ibd', 'TABLESPACE', 'mysql', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 24, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4194304, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(0, './ibdata1', 'TABLESPACE', 'innodb_system', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 2, 12, 1048576, 12582912, NULL, 67108864, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6291456, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(4294967293, './ibtmp1', 'TEMPORARY', 'innodb_temporary', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 2, 12, 1048576, 12582912, NULL, 67108864, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6291456, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(4294967279, './undo_001', 'UNDO LOG', 'innodb_undo_001', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 2, 16, 1048576, 16777216, NULL, 16777216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6291456, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(4294967278, './undo_002', 'UNDO LOG', 'innodb_undo_002', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 2, 16, 1048576, 16777216, NULL, 16777216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6291456, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(1, './sys/sys_config.ibd', 'TABLESPACE', 'sys/sys_config', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(21, './employes/dept.ibd', 'TABLESPACE', 'employes/dept', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(23, './employes/emp.ibd', 'TABLESPACE', 'employes/emp', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(25, './employes/projet.ibd', 'TABLESPACE', 'employes/projet', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(101, './tp1/livre.ibd', 'TABLESPACE', 'tp1/livre', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(102, './tp1/exemplaire.ibd', 'TABLESPACE', 'tp1/exemplaire', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(113, './guide/restaurants.ibd', 'TABLESPACE', 'guide/restaurants', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(133, './immochateau/categories.ibd', 'TABLESPACE', 'immochateau/categories', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(134, './immochateau/departements.ibd', 'TABLESPACE', 'immochateau/departements', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(135, './immochateau/habilitations.ibd', 'TABLESPACE', 'immochateau/habilitations', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(136, './immochateau/images.ibd', 'TABLESPACE', 'immochateau/images', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(137, './immochateau/proprietaires.ibd', 'TABLESPACE', 'immochateau/proprietaires', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(139, './immochateau/association_img.ibd', 'TABLESPACE', 'immochateau/association_img', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(140, './immochateau/biens_immobiliers.ibd', 'TABLESPACE', 'immochateau/biens_immobiliers', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(141, './immochateau/documents.ibd', 'TABLESPACE', 'immochateau/documents', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(142, './immochateau/utilisateurs.ibd', 'TABLESPACE', 'immochateau/utilisateurs', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(143, './voiliers/utilisateurs.ibd', 'TABLESPACE', 'voiliers/utilisateurs', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(144, './voiliers/candidats.ibd', 'TABLESPACE', 'voiliers/candidats', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(150, './festival/departements.ibd', 'TABLESPACE', 'festival/departements', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(151, './festival/candidats.ibd', 'TABLESPACE', 'festival/candidats', '', NULL, NULL, NULL, NULL, 'InnoDB', NULL, NULL, NULL, 0, 0, 1048576, 0, NULL, 1048576, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'NORMAL', NULL);
/*!40000 ALTER TABLE `FILES` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;