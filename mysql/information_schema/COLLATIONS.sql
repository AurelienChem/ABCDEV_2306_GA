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

-- Listage de la structure de table information_schema. COLLATIONS
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`COLLATIONS` AS select `col`.`name` AS `COLLATION_NAME`,`cs`.`name` AS `CHARACTER_SET_NAME`,`col`.`id` AS `ID`,if(exists(select 1 from `mysql`.`character_sets` where (`mysql`.`character_sets`.`default_collation_id` = `col`.`id`)),'Yes','') AS `IS_DEFAULT`,if(`col`.`is_compiled`,'Yes','') AS `IS_COMPILED`,`col`.`sort_length` AS `SORTLEN`,`col`.`pad_attribute` AS `PAD_ATTRIBUTE` from (`mysql`.`collations` `col` join `mysql`.`character_sets` `cs` on((`col`.`character_set_id` = `cs`.`id`)));

-- Listage des données de la table information_schema.COLLATIONS : 0 rows
/*!40000 ALTER TABLE `COLLATIONS` DISABLE KEYS */;
