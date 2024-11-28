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

-- Listage de la structure de table information_schema. INNODB_TABLESPACES_BRIEF
CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`INNODB_TABLESIF NOT EXISTS PACES_BRIEF` AS select get_dd_tablespace_private_data(`ts`.`se_private_data`,'id') AS `SPACE`,`ts`.`name` AS `NAME`,`ts_files`.`file_name` AS `PATH`,get_dd_tablespace_private_data(`ts`.`se_private_data`,'flags') AS `FLAG`,if((get_dd_tablespace_private_data(`ts`.`se_private_data`,'id') = 0),'System',if((((get_dd_tablespace_private_data(`ts`.`se_private_data`,'flags') & 2048) >> 11) <> 0),'General','Single')) AS `SPACE_TYPE` from (`mysql`.`tablespace_files` `ts_files` join `mysql`.`tablespaces` `ts` on((`ts`.`id` = `ts_files`.`tablespace_id`))) where ((`ts`.`se_private_data` is not null) and (`ts`.`engine` = 'InnoDB') and (`ts`.`name` <> 'mysql') and (`ts`.`name` <> 'innodb_temporary'));

-- Listage des données de la table information_schema.INNODB_TABLESPACES_BRIEF : 0 rows
/*!40000 ALTER TABLE `INNODB_TABLESPACES_BRIEF` DISABLE KEYS */;
INSERT INTO `INNODB_TABLESPACES_BRIEF` (`SPACE`, `NAME`, `PATH`, `FLAG`, `SPACE_TYPE`) VALUES
	(_binary 0x30, 'innodb_system', 'ibdata1', _binary 0x3138343332, 'System'),
	(_binary 0x34323934393637323739, 'innodb_undo_001', '.\\undo_001', _binary 0x30, 'Single'),
	(_binary 0x34323934393637323738, 'innodb_undo_002', '.\\undo_002', _binary 0x30, 'Single'),
	(_binary 0x31, 'sys/sys_config', '.\\sys\\sys_config.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x3231, 'employes/dept', '.\\employes\\dept.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x3233, 'employes/emp', '.\\employes\\emp.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x3235, 'employes/projet', '.\\employes\\projet.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313031, 'tp1/livre', '.\\tp1\\livre.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313032, 'tp1/exemplaire', '.\\tp1\\exemplaire.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313133, 'guide/restaurants', '.\\guide\\restaurants.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313333, 'immochateau/categories', '.\\immochateau\\categories.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313334, 'immochateau/departements', '.\\immochateau\\departements.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313335, 'immochateau/habilitations', '.\\immochateau\\habilitations.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313336, 'immochateau/images', '.\\immochateau\\images.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313337, 'immochateau/proprietaires', '.\\immochateau\\proprietaires.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313339, 'immochateau/association_img', '.\\immochateau\\association_img.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313430, 'immochateau/biens_immobiliers', '.\\immochateau\\biens_immobiliers.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313431, 'immochateau/documents', '.\\immochateau\\documents.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313432, 'immochateau/utilisateurs', '.\\immochateau\\utilisateurs.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313433, 'voiliers/utilisateurs', '.\\voiliers\\utilisateurs.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313434, 'voiliers/candidats', '.\\voiliers\\candidats.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313530, 'festival/departements', '.\\festival\\departements.ibd', _binary 0x3136343137, 'Single'),
	(_binary 0x313531, 'festival/candidats', '.\\festival\\candidats.ibd', _binary 0x3136343137, 'Single');
/*!40000 ALTER TABLE `INNODB_TABLESPACES_BRIEF` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
