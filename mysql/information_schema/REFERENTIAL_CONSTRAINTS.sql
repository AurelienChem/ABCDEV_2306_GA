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

-- Listage de la structure de table information_schema. REFERENTIAL_CONSTRAINTS
CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`REFERENTIAL_CONSTRAINTS` AS select `cat`.`name` AS `CONSTRAINT_CATALOG`,`sch`.`name` AS `CONSTRAINT_SCHEMA`,(`fk`.`name` collate utf8mb3_tolower_ci) AS `CONSTRAINT_NAME`,`fk`.`referenced_table_catalog` AS `UNIQUE_CONSTRAINT_CATALOG`,`fk`.`referenced_table_schema` AS `UNIQUE_CONSTRAINT_SCHEMA`,`fk`.`unique_constraint_name` AS `UNIQUE_CONSTRAINT_NAME`,`fk`.`match_option` AS `MATCH_OPTION`,`fk`.`update_rule` AS `UPDATE_RULE`,`fk`.`delete_rule` AS `DELETE_RULE`,`tbl`.`name` AS `TABLE_IF NOT EXISTS NAME`,`fk`.`referenced_table_name` AS `REFERENCED_TABLE_NAME` from (((`mysql`.`foreign_keys` `fk` join `mysql`.`tables` `tbl` on((`fk`.`table_id` = `tbl`.`id`))) join `mysql`.`schemata` `sch` on((`fk`.`schema_id` = `sch`.`id`))) join `mysql`.`catalogs` `cat` on((`cat`.`id` = `sch`.`catalog_id`))) where ((0 <> can_access_table(`sch`.`name`,`tbl`.`name`)) and (0 <> is_visible_dd_object(`tbl`.`hidden`)));

-- Listage des données de la table information_schema.REFERENTIAL_CONSTRAINTS : 0 rows
/*!40000 ALTER TABLE `REFERENTIAL_CONSTRAINTS` DISABLE KEYS */;
INSERT INTO `REFERENTIAL_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `UNIQUE_CONSTRAINT_CATALOG`, `UNIQUE_CONSTRAINT_SCHEMA`, `UNIQUE_CONSTRAINT_NAME`, `MATCH_OPTION`, `UPDATE_RULE`, `DELETE_RULE`, `TABLE_NAME`, `REFERENCED_TABLE_NAME`) VALUES
	('def', 'employes', 'FK_DEPTNO', 'def', 'employes', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'emp', 'dept'),
	('def', 'employes', 'FK_MGR', 'def', 'employes', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'emp', 'emp'),
	('def', 'tp1', 'FK_Livre', 'def', 'tp1', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'exemplaire', 'livre'),
	('def', 'immochateau', 'FK_bien_immmo', 'def', 'immochateau', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'association_img', 'biens_immobiliers'),
	('def', 'immochateau', 'FK_img', 'def', 'immochateau', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'association_img', 'images'),
	('def', 'immochateau', 'biens_immobiliers_ibfk_1', 'def', 'immochateau', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'biens_immobiliers', 'utilisateurs'),
	('def', 'immochateau', 'biens_immobiliers_ibfk_2', 'def', 'immochateau', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'biens_immobiliers', 'categories'),
	('def', 'immochateau', 'fK_proprietaire', 'def', 'immochateau', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'biens_immobiliers', 'proprietaires'),
	('def', 'immochateau', 'fk_departement', 'def', 'immochateau', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'biens_immobiliers', 'departements'),
	('def', 'immochateau', 'documents_ibfk_1', 'def', 'immochateau', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'documents', 'biens_immobiliers'),
	('def', 'immochateau', 'utilisateurs_ibfk_1', 'def', 'immochateau', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'utilisateurs', 'habilitations'),
	('def', 'festival', 'Fk_departement_user', 'def', 'festival', 'PRIMARY', 'NONE', 'NO ACTION', 'NO ACTION', 'candidats', 'departements');
/*!40000 ALTER TABLE `REFERENTIAL_CONSTRAINTS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
