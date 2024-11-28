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

-- Listage de la structure de table information_schema. RESOURCE_GROUPS
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`RESOURCE_GROUPS` AS select `res`.`resource_group_name` AS `RESOURCE_GROUP_NAME`,`res`.`resource_group_type` AS `RESOURCE_GROUP_TYPE`,`res`.`resource_group_enabled` AS `RESOURCE_GROUP_ENABLED`,convert_cpu_id_mask(`res`.`cpu_id_mask`) AS `VCPU_IDS`,`res`.`thread_priority` AS `THREAD_PRIORITY` from `mysql`.`resource_groups` `res` where (0 <> can_access_resource_group(`res`.`resource_group_name`));

-- Listage des données de la table information_schema.RESOURCE_GROUPS : 0 rows
/*!40000 ALTER TABLE `RESOURCE_GROUPS` DISABLE KEYS */;
INSERT INTO `RESOURCE_GROUPS` (`RESOURCE_GROUP_NAME`, `RESOURCE_GROUP_TYPE`, `RESOURCE_GROUP_ENABLED`, `VCPU_IDS`, `THREAD_PRIORITY`) VALUES
	('USR_default', 'USER', 1, _binary 0x302d33, 0),
	('SYS_default', 'SYSTEM', 1, _binary 0x302d33, 0);
/*!40000 ALTER TABLE `RESOURCE_GROUPS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
