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

-- Listage de la structure de table information_schema. INNODB_FOREIGN_COLS
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`INNODB_FOREIGN_COLS` AS select (concat(`sch`.`name`,'/',`fk`.`name`) collate utf8mb3_tolower_ci) AS `ID`,`col`.`name` AS `FOR_COL_NAME`,`fk_col`.`referenced_column_name` AS `REF_COL_NAME`,`fk_col`.`ordinal_position` AS `POS` from ((((`mysql`.`foreign_key_column_usage` `fk_col` join `mysql`.`foreign_keys` `fk` on((`fk`.`id` = `fk_col`.`foreign_key_id`))) join `mysql`.`tables` `tbl` on((`fk`.`table_id` = `tbl`.`id`))) join `mysql`.`schemata` `sch` on((`fk`.`schema_id` = `sch`.`id`))) join `mysql`.`columns` `col` on(((`tbl`.`id` = `col`.`table_id`) and (`fk_col`.`column_id` = `col`.`id`)))) where ((`tbl`.`type` <> 'VIEW') and (`tbl`.`hidden` = 'Visible') and (`tbl`.`se_private_id` is not null) and (`tbl`.`engine` = 'INNODB'));

-- Listage des données de la table information_schema.INNODB_FOREIGN_COLS : 0 rows
/*!40000 ALTER TABLE `INNODB_FOREIGN_COLS` DISABLE KEYS */;
INSERT INTO `INNODB_FOREIGN_COLS` (`ID`, `FOR_COL_NAME`, `REF_COL_NAME`, `POS`) VALUES
	('employes/FK_DEPTNO', 'DEPTNO', 'DEPTNO', 1),
	('employes/FK_MGR', 'MGR', 'EMPNO', 1),
	('tp1/FK_Livre', 'ISBN', 'ISBN', 1),
	('immochateau/FK_bien_immmo', 'id', 'id', 1),
	('immochateau/FK_img', 'id_image', 'id_image', 1),
	('immochateau/biens_immobiliers_ibfk_1', 'id_utilisateur_commercial', 'id_utilisateur', 1),
	('immochateau/biens_immobiliers_ibfk_2', 'id_categorie', 'id_categorie', 1),
	('immochateau/fk_departement', 'num_departement', 'id_dep', 1),
	('immochateau/fK_proprietaire', 'id_proprietaire', 'id_proprietaire', 1),
	('immochateau/documents_ibfk_1', 'id', 'id', 1),
	('immochateau/utilisateurs_ibfk_1', 'id_niveau', 'id_niveau', 1),
	('festival/Fk_departement_user', 'departement_user', 'id_dep', 1);
/*!40000 ALTER TABLE `INNODB_FOREIGN_COLS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
