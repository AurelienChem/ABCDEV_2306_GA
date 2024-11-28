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

-- Listage de la structure de table information_schema. INNODB_FOREIGN
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`INNODB_FOREIGN` AS select (concat(`sch`.`name`,'/',`fk`.`name`) collate utf8mb3_tolower_ci) AS `ID`,concat(`sch`.`name`,'/',`tbl`.`name`) AS `FOR_NAME`,concat(`fk`.`referenced_table_schema`,'/',`fk`.`referenced_table_name`) AS `REF_NAME`,count(0) AS `N_COLS`,(((((if((`fk`.`delete_rule` = 'CASCADE'),1,0) | if((`fk`.`delete_rule` = 'SET NULL'),2,0)) | if((`fk`.`update_rule` = 'CASCADE'),4,0)) | if((`fk`.`update_rule` = 'SET NULL'),8,0)) | if((`fk`.`delete_rule` = 'NO ACTION'),16,0)) | if((`fk`.`update_rule` = 'NO ACTION'),32,0)) AS `TYPE` from (((`mysql`.`foreign_keys` `fk` join `mysql`.`tables` `tbl` on((`fk`.`table_id` = `tbl`.`id`))) join `mysql`.`schemata` `sch` on((`fk`.`schema_id` = `sch`.`id`))) join `mysql`.`foreign_key_column_usage` `col` on((`fk`.`id` = `col`.`foreign_key_id`))) where ((`tbl`.`type` <> 'VIEW') and (`tbl`.`hidden` = 'Visible') and (`tbl`.`se_private_id` is not null) and (`tbl`.`engine` = 'INNODB')) group by `fk`.`id`;

-- Listage des données de la table information_schema.INNODB_FOREIGN : 0 rows
/*!40000 ALTER TABLE `INNODB_FOREIGN` DISABLE KEYS */;
INSERT INTO `INNODB_FOREIGN` (`ID`, `FOR_NAME`, `REF_NAME`, `N_COLS`, `TYPE`) VALUES
	('employes/FK_DEPTNO', 'employes/emp', 'employes/dept', 1, 48),
	('employes/FK_MGR', 'employes/emp', 'employes/emp', 1, 48),
	('tp1/FK_Livre', 'tp1/exemplaire', 'tp1/livre', 1, 48),
	('immochateau/FK_bien_immmo', 'immochateau/association_img', 'immochateau/biens_immobiliers', 1, 48),
	('immochateau/FK_img', 'immochateau/association_img', 'immochateau/images', 1, 48),
	('immochateau/biens_immobiliers_ibfk_1', 'immochateau/biens_immobiliers', 'immochateau/utilisateurs', 1, 48),
	('immochateau/biens_immobiliers_ibfk_2', 'immochateau/biens_immobiliers', 'immochateau/categories', 1, 48),
	('immochateau/fk_departement', 'immochateau/biens_immobiliers', 'immochateau/departements', 1, 48),
	('immochateau/fK_proprietaire', 'immochateau/biens_immobiliers', 'immochateau/proprietaires', 1, 48),
	('immochateau/documents_ibfk_1', 'immochateau/documents', 'immochateau/biens_immobiliers', 1, 48),
	('immochateau/utilisateurs_ibfk_1', 'immochateau/utilisateurs', 'immochateau/habilitations', 1, 48),
	('festival/Fk_departement_user', 'festival/candidats', 'festival/departements', 1, 48);
/*!40000 ALTER TABLE `INNODB_FOREIGN` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
