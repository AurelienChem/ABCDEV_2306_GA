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

-- Listage de la structure de table information_schema. TABLESPACES_EXTENSIONS
CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`TABLESIF NOT EXISTS PACES_EXTENSIONS` AS select `tsps`.`name` AS `TABLESPACE_NAME`,`tsps`.`engine_attribute` AS `ENGINE_ATTRIBUTE` from `mysql`.`tablespaces` `tsps`;

-- Listage des données de la table information_schema.TABLESPACES_EXTENSIONS : 0 rows
/*!40000 ALTER TABLE `TABLESPACES_EXTENSIONS` DISABLE KEYS */;
INSERT INTO `TABLESPACES_EXTENSIONS` (`TABLESPACE_NAME`, `ENGINE_ATTRIBUTE`) VALUES
	('mysql', NULL),
	('innodb_system', NULL),
	('innodb_temporary', NULL),
	('innodb_undo_001', NULL),
	('innodb_undo_002', NULL),
	('sys/sys_config', NULL),
	('employes/dept', NULL),
	('employes/emp', NULL),
	('employes/projet', NULL),
	('tp1/livre', NULL),
	('tp1/exemplaire', NULL),
	('guide/restaurants', NULL),
	('immochateau/categories', NULL),
	('immochateau/departements', NULL),
	('immochateau/habilitations', NULL),
	('immochateau/images', NULL),
	('immochateau/proprietaires', NULL),
	('immochateau/association_img', NULL),
	('immochateau/biens_immobiliers', NULL),
	('immochateau/documents', NULL),
	('immochateau/utilisateurs', NULL),
	('voiliers/utilisateurs', NULL),
	('voiliers/candidats', NULL),
	('festival/departements', NULL),
	('festival/candidats', NULL);
/*!40000 ALTER TABLE `TABLESPACES_EXTENSIONS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
