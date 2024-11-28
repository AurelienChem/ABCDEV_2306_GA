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

-- Listage de la structure de table information_schema. PLUGINS
CREATE TEMPORARY TABLE IF NOT EXISTS `PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_STATUS` varchar(10) NOT NULL DEFAULT '',
  `PLUGIN_TYPE` varchar(80) NOT NULL DEFAULT '',
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_LIBRARY` varchar(64) DEFAULT NULL,
  `PLUGIN_LIBRARY_VERSION` varchar(20) DEFAULT NULL,
  `PLUGIN_AUTHOR` varchar(64) DEFAULT NULL,
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) DEFAULT NULL,
  `LOAD_OPTION` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table information_schema.PLUGINS : 0 rows
/*!40000 ALTER TABLE `PLUGINS` DISABLE KEYS */;
INSERT INTO `PLUGINS` (`PLUGIN_NAME`, `PLUGIN_VERSION`, `PLUGIN_STATUS`, `PLUGIN_TYPE`, `PLUGIN_TYPE_VERSION`, `PLUGIN_LIBRARY`, `PLUGIN_LIBRARY_VERSION`, `PLUGIN_AUTHOR`, `PLUGIN_DESCRIPTION`, `PLUGIN_LICENSE`, `LOAD_OPTION`) VALUES
	('binlog', '1.0', 'ACTIVE', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', 'This is a pseudo storage engine to represent the binlog in a transaction', 'GPL', 'FORCE'),
	('mysql_native_password', '1.1', 'ACTIVE', 'AUTHENTICATION', '2.1', NULL, NULL, 'Oracle Corporation', 'Native MySQL authentication', 'GPL', 'FORCE'),
	('sha256_password', '1.1', 'ACTIVE', 'AUTHENTICATION', '2.1', NULL, NULL, 'Oracle Corporation', 'SHA256 password authentication', 'GPL', 'FORCE'),
	('caching_sha2_password', '1.0', 'ACTIVE', 'AUTHENTICATION', '2.1', NULL, NULL, 'Oracle Corporation', 'Caching sha2 authentication', 'GPL', 'FORCE'),
	('sha2_cache_cleaner', '1.0', 'ACTIVE', 'AUDIT', '4.1', NULL, NULL, 'Oracle Corporation', 'Cache cleaner for Caching sha2 authentication', 'GPL', 'FORCE'),
	('daemon_keyring_proxy_plugin', '1.0', 'ACTIVE', 'DAEMON', '80030.0', NULL, NULL, 'Oracle', 'A plugin that implements the keyring component services atop of the keyring plugin', 'GPL', 'FORCE'),
	('CSV', '1.0', 'ACTIVE', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', 'CSV storage engine', 'GPL', 'FORCE'),
	('MEMORY', '1.0', 'ACTIVE', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', 'Hash based, stored in memory, useful for temporary tables', 'GPL', 'FORCE'),
	('InnoDB', '8.0', 'ACTIVE', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', 'Supports transactions, row-level locking, and foreign keys', 'GPL', 'FORCE'),
	('INNODB_TRX', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB transactions', 'GPL', 'FORCE'),
	('INNODB_CMP', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compression', 'GPL', 'FORCE'),
	('INNODB_CMP_RESET', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compression; reset cumulated counts', 'GPL', 'FORCE'),
	('INNODB_CMPMEM', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compressed buffer pool', 'GPL', 'FORCE'),
	('INNODB_CMPMEM_RESET', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compressed buffer pool; reset cumulated counts', 'GPL', 'FORCE'),
	('INNODB_CMP_PER_INDEX', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compression (per index)', 'GPL', 'FORCE'),
	('INNODB_CMP_PER_INDEX_RESET', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compression (per index); reset cumulated counts', 'GPL', 'FORCE'),
	('INNODB_BUFFER_PAGE', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Buffer Page Information', 'GPL', 'FORCE'),
	('INNODB_BUFFER_PAGE_LRU', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Buffer Page in LRU', 'GPL', 'FORCE'),
	('INNODB_BUFFER_POOL_STATS', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Buffer Pool Statistics Information ', 'GPL', 'FORCE'),
	('INNODB_TEMP_TABLE_INFO', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Temp Table Stats', 'GPL', 'FORCE'),
	('INNODB_METRICS', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Metrics Info', 'GPL', 'FORCE'),
	('INNODB_FT_DEFAULT_STOPWORD', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'Default stopword list for InnDB Full Text Search', 'GPL', 'FORCE'),
	('INNODB_FT_DELETED', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'INNODB AUXILIARY FTS DELETED TABLE', 'GPL', 'FORCE'),
	('INNODB_FT_BEING_DELETED', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'INNODB AUXILIARY FTS BEING DELETED TABLE', 'GPL', 'FORCE'),
	('INNODB_FT_CONFIG', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'INNODB AUXILIARY FTS CONFIG TABLE', 'GPL', 'FORCE'),
	('INNODB_FT_INDEX_CACHE', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'INNODB AUXILIARY FTS INDEX CACHED', 'GPL', 'FORCE'),
	('INNODB_FT_INDEX_TABLE', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'INNODB AUXILIARY FTS INDEX TABLE', 'GPL', 'FORCE'),
	('INNODB_TABLES', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB INNODB_TABLES', 'GPL', 'FORCE'),
	('INNODB_TABLESTATS', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB INNODB_TABLESTATS', 'GPL', 'FORCE'),
	('INNODB_INDEXES', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB INNODB_INDEXES', 'GPL', 'FORCE'),
	('INNODB_TABLESPACES', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB INNODB_TABLESPACES', 'GPL', 'FORCE'),
	('INNODB_COLUMNS', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB INNODB_COLUMNS', 'GPL', 'FORCE'),
	('INNODB_VIRTUAL', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB INNODB_VIRTUAL', 'GPL', 'FORCE'),
	('INNODB_CACHED_INDEXES', '8.2', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB cached indexes', 'GPL', 'FORCE'),
	('INNODB_SESSION_TEMP_TABLESPACES', '8.0', 'ACTIVE', 'INFORMATION SCHEMA', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Session Temporary tablespaces', 'GPL', 'FORCE'),
	('MyISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', 'MyISAM storage engine', 'GPL', 'FORCE'),
	('MRG_MYISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', 'Collection of identical MyISAM tables', 'GPL', 'FORCE'),
	('PERFORMANCE_SCHEMA', '0.1', 'ACTIVE', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', 'Performance Schema', 'GPL', 'FORCE'),
	('TempTable', '1.0', 'ACTIVE', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', 'InnoDB temporary storage engine', 'GPL', 'FORCE'),
	('ARCHIVE', '3.0', 'ACTIVE', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', 'Archive storage engine', 'GPL', 'ON'),
	('BLACKHOLE', '1.0', 'ACTIVE', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', '/dev/null storage engine (anything you write to it disappears)', 'GPL', 'ON'),
	('FEDERATED', '1.0', 'DISABLED', 'STORAGE ENGINE', '80030.0', NULL, NULL, 'Oracle Corporation', 'Federated MySQL storage engine', 'GPL', 'OFF'),
	('ngram', '0.1', 'ACTIVE', 'FTPARSER', '1.1', NULL, NULL, 'Oracle Corporation', 'Ngram Full-Text Parser', 'GPL', 'ON'),
	('mysqlx_cache_cleaner', '1.0', 'ACTIVE', 'AUDIT', '4.1', NULL, NULL, 'Oracle Corporation', 'Cache cleaner for sha2 authentication in X plugin', 'GPL', 'ON'),
	('mysqlx', '1.0', 'ACTIVE', 'DAEMON', '80030.0', NULL, NULL, 'Oracle Corporation', 'X Plugin for MySQL', 'GPL', 'ON');
/*!40000 ALTER TABLE `PLUGINS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
