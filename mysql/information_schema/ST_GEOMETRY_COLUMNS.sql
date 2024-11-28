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

-- Listage de la structure de table information_schema. ST_GEOMETRY_COLUMNS
CREATE ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`ST_GEOMETRY_COLUMNS` AS select `information_schema`.`cols`.`TABLE_IF NOT EXISTS CATALOG` AS `TABLE_CATALOG`,`information_schema`.`cols`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`cols`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`cols`.`COLUMN_NAME` AS `COLUMN_NAME`,`information_schema`.`srs`.`SRS_NAME` AS `SRS_NAME`,`information_schema`.`cols`.`SRS_ID` AS `SRS_ID`,`information_schema`.`cols`.`DATA_TYPE` AS `GEOMETRY_TYPE_NAME` from (`information_schema`.`COLUMNS` `cols` left join `information_schema`.`ST_SPATIAL_REFERENCE_SYSTEMS` `srs` on((`information_schema`.`cols`.`SRS_ID` = `information_schema`.`srs`.`SRS_ID`))) where (`information_schema`.`cols`.`DATA_TYPE` in ('geometry','point','linestring','polygon','multipoint','multilinestring','multipolygon','geomcollection'));

-- Listage des données de la table information_schema.ST_GEOMETRY_COLUMNS : 0 rows
/*!40000 ALTER TABLE `ST_GEOMETRY_COLUMNS` DISABLE KEYS */;
/*!40000 ALTER TABLE `ST_GEOMETRY_COLUMNS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
