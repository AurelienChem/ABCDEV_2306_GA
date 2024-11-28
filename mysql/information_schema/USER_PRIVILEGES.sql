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

-- Listage de la structure de table information_schema. USER_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `USER_PRIVILEGES` (
  `GRANTEE` varchar(292) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table information_schema.USER_PRIVILEGES : 0 rows
/*!40000 ALTER TABLE `USER_PRIVILEGES` DISABLE KEYS */;
INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
	('\'mysql.infoschema\'@\'localhost\'', 'def', 'SELECT', 'NO'),
	('\'mysql.infoschema\'@\'localhost\'', 'def', 'AUDIT_ABORT_EXEMPT', 'NO'),
	('\'mysql.infoschema\'@\'localhost\'', 'def', 'FIREWALL_EXEMPT', 'NO'),
	('\'mysql.infoschema\'@\'localhost\'', 'def', 'SYSTEM_USER', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'SHUTDOWN', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'SUPER', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'AUDIT_ABORT_EXEMPT', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'BACKUP_ADMIN', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'CLONE_ADMIN', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'CONNECTION_ADMIN', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'FIREWALL_EXEMPT', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'PERSIST_RO_VARIABLES_ADMIN', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'SESSION_VARIABLES_ADMIN', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'SYSTEM_USER', 'NO'),
	('\'mysql.session\'@\'localhost\'', 'def', 'SYSTEM_VARIABLES_ADMIN', 'NO'),
	('\'mysql.sys\'@\'localhost\'', 'def', 'USAGE', 'NO'),
	('\'mysql.sys\'@\'localhost\'', 'def', 'AUDIT_ABORT_EXEMPT', 'NO'),
	('\'mysql.sys\'@\'localhost\'', 'def', 'FIREWALL_EXEMPT', 'NO'),
	('\'mysql.sys\'@\'localhost\'', 'def', 'SYSTEM_USER', 'NO'),
	('\'root\'@\'localhost\'', 'def', 'SELECT', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'INSERT', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'UPDATE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'DELETE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'CREATE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'DROP', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'RELOAD', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SHUTDOWN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'PROCESS', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'FILE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'REFERENCES', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'INDEX', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'ALTER', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SHOW DATABASES', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SUPER', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'CREATE TEMPORARY TABLES', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'LOCK TABLES', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'EXECUTE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'REPLICATION SLAVE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'REPLICATION CLIENT', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'CREATE VIEW', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SHOW VIEW', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'CREATE ROUTINE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'ALTER ROUTINE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'CREATE USER', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'EVENT', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'TRIGGER', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'CREATE TABLESPACE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'CREATE ROLE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'DROP ROLE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'APPLICATION_PASSWORD_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'AUDIT_ABORT_EXEMPT', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'AUDIT_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'AUTHENTICATION_POLICY_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'BACKUP_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'BINLOG_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'BINLOG_ENCRYPTION_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'CLONE_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'CONNECTION_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'ENCRYPTION_KEY_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'FIREWALL_EXEMPT', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'FLUSH_OPTIMIZER_COSTS', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'FLUSH_STATUS', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'FLUSH_TABLES', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'FLUSH_USER_RESOURCES', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'GROUP_REPLICATION_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'GROUP_REPLICATION_STREAM', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'INNODB_REDO_LOG_ARCHIVE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'INNODB_REDO_LOG_ENABLE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'PASSWORDLESS_USER_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'PERSIST_RO_VARIABLES_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'REPLICATION_APPLIER', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'REPLICATION_SLAVE_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'RESOURCE_GROUP_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'RESOURCE_GROUP_USER', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'ROLE_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SENSITIVE_VARIABLES_OBSERVER', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SERVICE_CONNECTION_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SESSION_VARIABLES_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SET_USER_ID', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SHOW_ROUTINE', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SYSTEM_USER', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'SYSTEM_VARIABLES_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'TABLE_ENCRYPTION_ADMIN', 'YES'),
	('\'root\'@\'localhost\'', 'def', 'XA_RECOVER_ADMIN', 'YES');
/*!40000 ALTER TABLE `USER_PRIVILEGES` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
