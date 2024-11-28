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

-- Listage de la structure de table information_schema. SCHEMATA_EXTENSIONS
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`SCHEMATA_EXTENSIONS` AS select (`cat`.`name` collate utf8mb3_tolower_ci) AS `CATALOG_NAME`,(`sch`.`name` collate utf8mb3_tolower_ci) AS `SCHEMA_NAME`,get_dd_schema_options(`sch`.`options`) AS `OPTIONS` from (`mysql`.`schemata` `sch` join `mysql`.`catalogs` `cat` on((`cat`.`id` = `sch`.`catalog_id`))) where (0 <> can_access_database(`sch`.`name`));

-- Listage des données de la table information_schema.SCHEMATA_EXTENSIONS : 0 rows
/*!40000 ALTER TABLE `SCHEMATA_EXTENSIONS` DISABLE KEYS */;
