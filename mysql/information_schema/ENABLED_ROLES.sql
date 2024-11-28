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

-- Listage de la structure de table information_schema. ENABLED_ROLES
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`ENABLED_ROLES` AS select `current_user_enabled_roles`.`ROLE_NAME` AS `ROLE_NAME`,`current_user_enabled_roles`.`ROLE_HOST` AS `ROLE_HOST`,(select if(count(0),'YES','NO') from `mysql`.`default_roles` where ((`mysql`.`default_roles`.`DEFAULT_ROLE_USER` = `current_user_enabled_roles`.`ROLE_NAME`) and (convert(`mysql`.`default_roles`.`DEFAULT_ROLE_HOST` using utf8mb4) = `current_user_enabled_roles`.`ROLE_HOST`) and (`mysql`.`default_roles`.`USER` = internal_get_username()) and (convert(`mysql`.`default_roles`.`HOST` using utf8mb4) = convert(internal_get_hostname() using utf8mb4)))) AS `IS_DEFAULT`,if(internal_is_mandatory_role(`current_user_enabled_roles`.`ROLE_NAME`,`current_user_enabled_roles`.`ROLE_HOST`),'YES','NO') AS `IS_MANDATORY` from json_table(internal_get_enabled_role_json(), '$[*]' columns (`ROLE_NAME` varchar(255) character set utf8mb4 path '$.ROLE_NAME', `ROLE_HOST` varchar(255) character set utf8mb4 path '$.ROLE_HOST')) `current_user_enabled_roles`;

-- Listage des données de la table information_schema.ENABLED_ROLES : 0 rows
/*!40000 ALTER TABLE `ENABLED_ROLES` DISABLE KEYS */;
/*!40000 ALTER TABLE `ENABLED_ROLES` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
