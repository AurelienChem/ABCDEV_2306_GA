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

-- Listage de la structure de table information_schema. INNODB_TRX
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TRX` (
  `trx_id` bigint unsigned NOT NULL DEFAULT '0',
  `trx_state` varchar(13) NOT NULL DEFAULT '',
  `trx_started` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trx_requested_lock_id` varchar(105) DEFAULT NULL,
  `trx_wait_started` datetime DEFAULT NULL,
  `trx_weight` bigint unsigned NOT NULL DEFAULT '0',
  `trx_mysql_thread_id` bigint unsigned NOT NULL DEFAULT '0',
  `trx_query` varchar(1024) DEFAULT NULL,
  `trx_operation_state` varchar(64) DEFAULT NULL,
  `trx_tables_in_use` bigint unsigned NOT NULL DEFAULT '0',
  `trx_tables_locked` bigint unsigned NOT NULL DEFAULT '0',
  `trx_lock_structs` bigint unsigned NOT NULL DEFAULT '0',
  `trx_lock_memory_bytes` bigint unsigned NOT NULL DEFAULT '0',
  `trx_rows_locked` bigint unsigned NOT NULL DEFAULT '0',
  `trx_rows_modified` bigint unsigned NOT NULL DEFAULT '0',
  `trx_concurrency_tickets` bigint unsigned NOT NULL DEFAULT '0',
  `trx_isolation_level` varchar(16) NOT NULL DEFAULT '',
  `trx_unique_checks` int NOT NULL DEFAULT '0',
  `trx_foreign_key_checks` int NOT NULL DEFAULT '0',
  `trx_last_foreign_key_error` varchar(256) DEFAULT NULL,
  `trx_adaptive_hash_latched` int NOT NULL DEFAULT '0',
  `trx_adaptive_hash_timeout` bigint unsigned NOT NULL DEFAULT '0',
  `trx_is_read_only` int NOT NULL DEFAULT '0',
  `trx_autocommit_non_locking` int NOT NULL DEFAULT '0',
  `trx_schedule_weight` bigint unsigned DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table information_schema.INNODB_TRX : 0 rows
/*!40000 ALTER TABLE `INNODB_TRX` DISABLE KEYS */;
/*!40000 ALTER TABLE `INNODB_TRX` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
