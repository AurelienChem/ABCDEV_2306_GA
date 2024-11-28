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

-- Listage de la structure de table information_schema. INNODB_TABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TABLES` (
  `TABLE_ID` bigint unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(655) NOT NULL DEFAULT '',
  `FLAG` int NOT NULL DEFAULT '0',
  `N_COLS` int NOT NULL DEFAULT '0',
  `SPACE` bigint NOT NULL DEFAULT '0',
  `ROW_FORMAT` varchar(12) DEFAULT NULL,
  `ZIP_PAGE_SIZE` int unsigned NOT NULL DEFAULT '0',
  `SPACE_TYPE` varchar(10) DEFAULT NULL,
  `INSTANT_COLS` int NOT NULL DEFAULT '0',
  `TOTAL_ROW_VERSIONS` int NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table information_schema.INNODB_TABLES : 0 rows
/*!40000 ALTER TABLE `INNODB_TABLES` DISABLE KEYS */;
INSERT INTO `INNODB_TABLES` (`TABLE_ID`, `NAME`, `FLAG`, `N_COLS`, `SPACE`, `ROW_FORMAT`, `ZIP_PAGE_SIZE`, `SPACE_TYPE`, `INSTANT_COLS`, `TOTAL_ROW_VERSIONS`) VALUES
	(1025, 'mysql/db', 161, 25, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1026, 'mysql/user', 161, 54, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1027, 'mysql/default_roles', 161, 7, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1028, 'mysql/role_edges', 161, 8, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1029, 'mysql/global_grants', 161, 7, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1030, 'mysql/password_history', 161, 7, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1031, 'mysql/func', 161, 7, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1032, 'mysql/plugin', 161, 5, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1058, 'mysql/help_topic', 161, 9, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1059, 'mysql/help_category', 161, 7, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1061, 'mysql/help_relation', 161, 5, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1036, 'mysql/servers', 161, 12, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1037, 'mysql/tables_priv', 161, 11, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1038, 'mysql/columns_priv', 161, 10, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1060, 'mysql/help_keyword', 161, 5, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1040, 'mysql/time_zone_name', 161, 5, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1041, 'mysql/time_zone', 161, 5, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1042, 'mysql/time_zone_transition', 161, 6, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1043, 'mysql/time_zone_transition_type', 161, 8, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1044, 'mysql/time_zone_leap_second', 161, 5, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1045, 'mysql/procs_priv', 161, 11, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1046, 'mysql/component', 161, 6, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1047, 'mysql/slave_relay_log_info', 161, 18, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1048, 'mysql/slave_master_info', 161, 36, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1049, 'mysql/slave_worker_info', 161, 16, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1050, 'mysql/gtid_executed', 161, 6, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1051, 'mysql/replication_asynchronous_connection_failover', 161, 9, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1052, 'mysql/replication_asynchronous_connection_failover_managed', 161, 7, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1053, 'mysql/replication_group_member_actions', 161, 9, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1054, 'mysql/replication_group_configuration_version', 161, 5, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1055, 'mysql/server_cost', 161, 7, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1056, 'mysql/engine_cost', 161, 9, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1057, 'mysql/proxies_priv', 161, 10, 4294967294, 'Dynamic', 0, 'General', 0, 0),
	(1062, 'sys/sys_config', 33, 7, 1, 'Dynamic', 0, 'Single', 0, 0),
	(1082, 'employes/dept', 33, 6, 21, 'Dynamic', 0, 'Single', 0, 0),
	(1086, 'employes/projet', 33, 6, 25, 'Dynamic', 0, 'Single', 0, 0),
	(1084, 'employes/emp', 33, 13, 23, 'Dynamic', 0, 'Single', 0, 4),
	(1162, 'tp1/livre', 33, 5, 101, 'Dynamic', 0, 'Single', 0, 0),
	(1163, 'tp1/exemplaire', 33, 6, 102, 'Dynamic', 0, 'Single', 0, 0),
	(1174, 'guide/restaurants', 33, 10, 113, 'Dynamic', 0, 'Single', 0, 0),
	(1194, 'immochateau/categories', 33, 5, 133, 'Dynamic', 0, 'Single', 0, 0),
	(1195, 'immochateau/departements', 33, 6, 134, 'Dynamic', 0, 'Single', 0, 0),
	(1196, 'immochateau/habilitations', 33, 6, 135, 'Dynamic', 0, 'Single', 0, 0),
	(1197, 'immochateau/images', 33, 8, 136, 'Dynamic', 0, 'Single', 0, 0),
	(1198, 'immochateau/proprietaires', 33, 13, 137, 'Dynamic', 0, 'Single', 0, 0),
	(1200, 'immochateau/association_img', 33, 6, 139, 'Dynamic', 0, 'Single', 0, 0),
	(1201, 'immochateau/biens_immobiliers', 33, 19, 140, 'Dynamic', 0, 'Single', 0, 0),
	(1202, 'immochateau/documents', 33, 8, 141, 'Dynamic', 0, 'Single', 0, 0),
	(1203, 'immochateau/utilisateurs', 33, 9, 142, 'Dynamic', 0, 'Single', 0, 0),
	(1204, 'voiliers/utilisateurs', 33, 9, 143, 'Dynamic', 0, 'Single', 0, 0),
	(1205, 'voiliers/candidats', 33, 10, 144, 'Dynamic', 0, 'Single', 0, 0),
	(1211, 'festival/departements', 33, 7, 150, 'Dynamic', 0, 'Single', 0, 0),
	(1212, 'festival/candidats', 33, 10, 151, 'Dynamic', 0, 'Single', 0, 0);
/*!40000 ALTER TABLE `INNODB_TABLES` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
