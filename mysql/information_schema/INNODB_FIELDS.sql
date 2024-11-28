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

-- Listage de la structure de table information_schema. INNODB_FIELDS
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`INNODB_FIELDS` AS select get_dd_index_private_data(`idx`.`se_private_data`,'id') AS `INDEX_ID`,`col`.`name` AS `NAME`,(`fld`.`ordinal_position` - 1) AS `POS` from (((`mysql`.`index_column_usage` `fld` join `mysql`.`columns` `col` on((`fld`.`column_id` = `col`.`id`))) join `mysql`.`indexes` `idx` on((`fld`.`index_id` = `idx`.`id`))) join `mysql`.`tables` `tbl` on((`tbl`.`id` = `idx`.`table_id`))) where ((`tbl`.`type` <> 'VIEW') and (`tbl`.`hidden` = 'Visible') and (0 = `fld`.`hidden`) and (`tbl`.`se_private_id` is not null) and (`tbl`.`engine` = 'INNODB'));

-- Listage des données de la table information_schema.INNODB_FIELDS : 0 rows
/*!40000 ALTER TABLE `INNODB_FIELDS` DISABLE KEYS */;
INSERT INTO `INNODB_FIELDS` (`INDEX_ID`, `NAME`, `POS`) VALUES
	(_binary 0x33, 'database_name', 0),
	(_binary 0x33, 'table_name', 1),
	(_binary 0x34, 'database_name', 0),
	(_binary 0x34, 'table_name', 1),
	(_binary 0x34, 'index_name', 2),
	(_binary 0x34, 'stat_name', 3),
	(_binary 0x313033, 'Host', 0),
	(_binary 0x313033, 'User', 1),
	(_binary 0x313033, 'Db', 2),
	(_binary 0x313034, 'User', 0),
	(_binary 0x313035, 'Host', 0),
	(_binary 0x313035, 'User', 1),
	(_binary 0x313036, 'HOST', 0),
	(_binary 0x313036, 'USER', 1),
	(_binary 0x313036, 'DEFAULT_ROLE_HOST', 2),
	(_binary 0x313036, 'DEFAULT_ROLE_USER', 3),
	(_binary 0x313037, 'FROM_HOST', 0),
	(_binary 0x313037, 'FROM_USER', 1),
	(_binary 0x313037, 'TO_HOST', 2),
	(_binary 0x313037, 'TO_USER', 3),
	(_binary 0x313038, 'USER', 0),
	(_binary 0x313038, 'HOST', 1),
	(_binary 0x313038, 'PRIV', 2),
	(_binary 0x313039, 'Host', 0),
	(_binary 0x313039, 'User', 1),
	(_binary 0x313039, 'Password_timestamp', 2),
	(_binary 0x313130, 'name', 0),
	(_binary 0x313131, 'name', 0),
	(_binary 0x313436, 'name', 0),
	(_binary 0x313435, 'help_topic_id', 0),
	(_binary 0x313438, 'name', 0),
	(_binary 0x313437, 'help_category_id', 0),
	(_binary 0x313531, 'help_keyword_id', 0),
	(_binary 0x313531, 'help_topic_id', 1),
	(_binary 0x313137, 'Server_name', 0),
	(_binary 0x313139, 'Grantor', 0),
	(_binary 0x313138, 'Host', 0),
	(_binary 0x313138, 'User', 1),
	(_binary 0x313138, 'Db', 2),
	(_binary 0x313138, 'Table_name', 3),
	(_binary 0x313230, 'Host', 0),
	(_binary 0x313230, 'User', 1),
	(_binary 0x313230, 'Db', 2),
	(_binary 0x313230, 'Table_name', 3),
	(_binary 0x313230, 'Column_name', 4),
	(_binary 0x313530, 'name', 0),
	(_binary 0x313439, 'help_keyword_id', 0),
	(_binary 0x313233, 'Name', 0),
	(_binary 0x313234, 'Time_zone_id', 0),
	(_binary 0x313235, 'Time_zone_id', 0),
	(_binary 0x313235, 'Transition_time', 1),
	(_binary 0x313236, 'Time_zone_id', 0),
	(_binary 0x313236, 'Transition_type_id', 1),
	(_binary 0x313237, 'Transition_time', 0),
	(_binary 0x313239, 'Grantor', 0),
	(_binary 0x313238, 'Host', 0),
	(_binary 0x313238, 'User', 1),
	(_binary 0x313238, 'Db', 2),
	(_binary 0x313238, 'Routine_name', 3),
	(_binary 0x313238, 'Routine_type', 4),
	(_binary 0x313330, 'component_id', 0),
	(_binary 0x313331, 'Channel_name', 0),
	(_binary 0x313332, 'Channel_name', 0),
	(_binary 0x313333, 'Channel_name', 0),
	(_binary 0x313333, 'Id', 1),
	(_binary 0x313334, 'source_uuid', 0),
	(_binary 0x313334, 'interval_start', 1),
	(_binary 0x313336, 'Channel_name', 0),
	(_binary 0x313336, 'Managed_name', 1),
	(_binary 0x313335, 'Channel_name', 0),
	(_binary 0x313335, 'Host', 1),
	(_binary 0x313335, 'Port', 2),
	(_binary 0x313335, 'Network_namespace', 3),
	(_binary 0x313335, 'Managed_name', 4),
	(_binary 0x313337, 'Channel_name', 0),
	(_binary 0x313337, 'Managed_name', 1),
	(_binary 0x313339, 'event', 0),
	(_binary 0x313338, 'name', 0),
	(_binary 0x313338, 'event', 1),
	(_binary 0x313430, 'name', 0),
	(_binary 0x313431, 'cost_name', 0),
	(_binary 0x313432, 'cost_name', 0),
	(_binary 0x313432, 'engine_name', 1),
	(_binary 0x313432, 'device_type', 2),
	(_binary 0x313434, 'Grantor', 0),
	(_binary 0x313433, 'Host', 0),
	(_binary 0x313433, 'User', 1),
	(_binary 0x313433, 'Proxied_host', 2),
	(_binary 0x313433, 'Proxied_user', 3),
	(_binary 0x313532, 'variable', 0),
	(_binary 0x313735, 'DEPTNO', 0),
	(_binary 0x313832, 'NUMPROJ', 0),
	(_binary 0x313739, 'DEPTNO', 0),
	(_binary 0x313830, 'MGR', 0),
	(_binary 0x313738, 'EMPNO', 0),
	(_binary 0x323637, 'ISBN', 0),
	(_binary 0x323638, 'ISBN', 0),
	(_binary 0x323638, 'num_Exempl', 1),
	(_binary 0x323739, 'id', 0),
	(_binary 0x333130, 'id_categorie', 0),
	(_binary 0x333131, 'id_dep', 0),
	(_binary 0x333132, 'id_niveau', 0),
	(_binary 0x333133, 'id_image', 0),
	(_binary 0x333134, 'id_proprietaire', 0),
	(_binary 0x333138, 'id_image', 0),
	(_binary 0x333137, 'id', 0),
	(_binary 0x333137, 'id_image', 1),
	(_binary 0x333233, 'num_departement', 0),
	(_binary 0x333232, 'id_proprietaire', 0),
	(_binary 0x333231, 'id_categorie', 0),
	(_binary 0x333230, 'id_utilisateur_commercial', 0),
	(_binary 0x333139, 'id', 0),
	(_binary 0x333235, 'id', 0),
	(_binary 0x333234, 'id_document', 0),
	(_binary 0x333237, 'id_niveau', 0),
	(_binary 0x333236, 'id_utilisateur', 0),
	(_binary 0x333238, 'id_user', 0),
	(_binary 0x333239, 'id_user', 0),
	(_binary 0x333338, 'id_dep', 0),
	(_binary 0x333430, 'departement_user', 0),
	(_binary 0x333339, 'id_user', 0);
/*!40000 ALTER TABLE `INNODB_FIELDS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
