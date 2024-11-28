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

-- Listage de la structure de table information_schema. ADMINISTRABLE_ROLE_AUTHORIZATIONS
CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`ADMINISTRABLE_ROLE_AUTHORIZATIONS` AS select `information_schema`.`applicable_roles`.`USER` AS `USER`,`information_schema`.`applicable_roles`.`HOST` AS `HOST`,`information_schema`.`applicable_roles`.`GRANTEE` AS `GRANTEE`,`information_schema`.`applicable_roles`.`GRANTEE_HOST` AS `GRANTEE_HOST`,`information_schema`.`applicable_roles`.`ROLE_NAME` AS `ROLE_NAME`,`information_schema`.`applicable_roles`.`ROLE_HOST` AS `ROLE_HOST`,`information_schema`.`applicable_roles`.`IS_GRANTABLE`IF NOT EXISTS  AS `IS_GRANTABLE`,`information_schema`.`applicable_roles`.`IS_DEFAULT` AS `IS_DEFAULT`,`information_schema`.`applicable_roles`.`IS_MANDATORY` AS `IS_MANDATORY` from `information_schema`.`APPLICABLE_ROLES` where (`information_schema`.`applicable_roles`.`IS_GRANTABLE` = 'YES');

-- Listage des données de la table information_schema.ADMINISTRABLE_ROLE_AUTHORIZATIONS : 0 rows
/*!40000 ALTER TABLE `ADMINISTRABLE_ROLE_AUTHORIZATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADMINISTRABLE_ROLE_AUTHORIZATIONS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
