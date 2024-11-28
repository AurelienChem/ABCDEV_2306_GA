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

-- Listage de la structure de table information_schema. INNODB_TABLESTATS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TABLESTATS` (
  `TABLE_ID` bigint unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `STATS_INITIALIZED` varchar(193) NOT NULL DEFAULT '',
  `NUM_ROWS` bigint unsigned NOT NULL DEFAULT '0',
  `CLUST_INDEX_SIZE` bigint unsigned NOT NULL DEFAULT '0',
  `OTHER_INDEX_SIZE` bigint unsigned NOT NULL DEFAULT '0',
  `MODIFIED_COUNTER` bigint unsigned NOT NULL DEFAULT '0',
  `AUTOINC` bigint unsigned NOT NULL DEFAULT '0',
  `REF_COUNT` int NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table information_schema.INNODB_TABLESTATS : 0 rows
/*!40000 ALTER TABLE `INNODB_TABLESTATS` DISABLE KEYS */;
INSERT INTO `INNODB_TABLESTATS` (`TABLE_ID`, `NAME`, `STATS_INITIALIZED`, `NUM_ROWS`, `CLUST_INDEX_SIZE`, `OTHER_INDEX_SIZE`, `MODIFIED_COUNTER`, `AUTOINC`, `REF_COUNT`) VALUES
	(1025, 'mysql/db', 'Initialized', 2, 1, 1, 0, 0, 1),
	(1026, 'mysql/user', 'Initialized', 4, 1, 0, 0, 0, 1),
	(1027, 'mysql/default_roles', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1028, 'mysql/role_edges', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1029, 'mysql/global_grants', 'Initialized', 47, 3, 0, 0, 0, 1),
	(1030, 'mysql/password_history', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1031, 'mysql/func', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1032, 'mysql/plugin', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1058, 'mysql/help_topic', 'Initialized', 689, 97, 6, 0, 0, 1),
	(1059, 'mysql/help_category', 'Initialized', 53, 1, 1, 0, 0, 1),
	(1061, 'mysql/help_relation', 'Initialized', 1942, 6, 0, 0, 0, 1),
	(1036, 'mysql/servers', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1037, 'mysql/tables_priv', 'Initialized', 2, 1, 1, 0, 0, 1),
	(1038, 'mysql/columns_priv', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1060, 'mysql/help_keyword', 'Initialized', 786, 8, 8, 0, 0, 1),
	(1040, 'mysql/time_zone_name', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1041, 'mysql/time_zone', 'Initialized', 0, 1, 0, 0, 1, 1),
	(1042, 'mysql/time_zone_transition', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1043, 'mysql/time_zone_transition_type', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1044, 'mysql/time_zone_leap_second', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1045, 'mysql/procs_priv', 'Initialized', 0, 1, 1, 0, 0, 1),
	(1046, 'mysql/component', 'Uninitialized', 0, 0, 0, 0, 1, 1),
	(1047, 'mysql/slave_relay_log_info', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1048, 'mysql/slave_master_info', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1049, 'mysql/slave_worker_info', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1050, 'mysql/gtid_executed', 'Initialized', 0, 1, 0, 0, 0, 2),
	(1051, 'mysql/replication_asynchronous_connection_failover', 'Initialized', 0, 1, 1, 0, 0, 1),
	(1052, 'mysql/replication_asynchronous_connection_failover_managed', 'Initialized', 0, 1, 0, 0, 0, 1),
	(1053, 'mysql/replication_group_member_actions', 'Initialized', 2, 1, 1, 0, 0, 1),
	(1054, 'mysql/replication_group_configuration_version', 'Initialized', 1, 1, 0, 0, 0, 1),
	(1055, 'mysql/server_cost', 'Initialized', 6, 1, 0, 0, 0, 1),
	(1056, 'mysql/engine_cost', 'Initialized', 2, 1, 0, 0, 0, 1),
	(1057, 'mysql/proxies_priv', 'Initialized', 1, 1, 1, 0, 0, 1),
	(1062, 'sys/sys_config', 'Uninitialized', 0, 0, 0, 0, 0, 1),
	(1082, 'employes/dept', 'Uninitialized', 0, 0, 0, 0, 0, 1),
	(1086, 'employes/projet', 'Uninitialized', 0, 0, 0, 0, 0, 1),
	(1084, 'employes/emp', 'Uninitialized', 0, 0, 0, 0, 7935, 1),
	(1162, 'tp1/livre', 'Uninitialized', 0, 0, 0, 0, 1, 1),
	(1163, 'tp1/exemplaire', 'Uninitialized', 0, 0, 0, 0, 0, 1),
	(1174, 'guide/restaurants', 'Uninitialized', 0, 0, 0, 0, 5, 1),
	(1194, 'immochateau/categories', 'Uninitialized', 0, 0, 0, 0, 5, 1),
	(1195, 'immochateau/departements', 'Uninitialized', 0, 0, 0, 0, 96, 1),
	(1196, 'immochateau/habilitations', 'Uninitialized', 0, 0, 0, 0, 3, 1),
	(1197, 'immochateau/images', 'Uninitialized', 0, 0, 0, 0, 1, 1),
	(1198, 'immochateau/proprietaires', 'Uninitialized', 0, 0, 0, 0, 4, 1),
	(1200, 'immochateau/association_img', 'Uninitialized', 0, 0, 0, 0, 0, 1),
	(1201, 'immochateau/biens_immobiliers', 'Uninitialized', 0, 0, 0, 0, 12, 1),
	(1202, 'immochateau/documents', 'Uninitialized', 0, 0, 0, 0, 0, 1),
	(1203, 'immochateau/utilisateurs', 'Uninitialized', 0, 0, 0, 0, 3, 1),
	(1204, 'voiliers/utilisateurs', 'Uninitialized', 0, 0, 0, 0, 2, 1),
	(1205, 'voiliers/candidats', 'Uninitialized', 0, 0, 0, 0, 1, 1),
	(1211, 'festival/departements', 'Uninitialized', 0, 0, 0, 0, 0, 1),
	(1212, 'festival/candidats', 'Uninitialized', 0, 0, 0, 0, 11, 1);
/*!40000 ALTER TABLE `INNODB_TABLESTATS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
