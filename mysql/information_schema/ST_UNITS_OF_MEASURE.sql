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

-- Listage de la structure de table information_schema. ST_UNITS_OF_MEASURE
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`ST_UNITS_OF_MEASURE` AS select `st_units_of_measure`.`UNIT_NAME` AS `UNIT_NAME`,`st_units_of_measure`.`UNIT_TYPE` AS `UNIT_TYPE`,`st_units_of_measure`.`CONVERSION_FACTOR` AS `CONVERSION_FACTOR`,`st_units_of_measure`.`DESCRIPTION` AS `DESCRIPTION` from json_table('[["metre","LINEAR","",1],["millimetre","LINEAR","",0.001],["centimetre","LINEAR","",0.01],["German legal metre","LINEAR","",1.0000135965],["foot","LINEAR","",0.3048],["US survey foot","LINEAR","",0.30480060960121924],["Clarke\'s yard","LINEAR","",0.9143917962],["Clarke\'s foot","LINEAR","",0.3047972654],["British link (Sears 1922 truncated)","LINEAR","",0.20116756],["nautical mile","LINEAR","",1852],["fathom","LINEAR","",1.8288],["US survey chain","LINEAR","",20.11684023368047],["US survey link","LINEAR","",0.2011684023368047],["US survey mile","LINEAR","",1609.3472186944375],["Indian yard","LINEAR","",0.9143985307444408],["kilometre","LINEAR","",1000],["Clarke\'s chain","LINEAR","",20.1166195164],["Clarke\'s link","LINEAR","",0.201166195164],["British yard (Benoit 1895 A)","LINEAR","",0.9143992],["British yard (Sears 1922)","LINEAR","",0.9143984146160287],["British foot (Sears 1922)","LINEAR","",0.3047994715386762],["Gold Coast foot","LINEAR","",0.3047997101815088],["British chain (Sears 1922)","LINEAR","",20.116765121552632],["yard","LINEAR","",0.9144],["British link (Sears 1922)","LINEAR","",0.2011676512155263],["British foot (Benoit 1895 A)","LINEAR","",0.3047997333333333],["Indian foot (1962)","LINEAR","",0.3047996],["British chain (Benoit 1895 A)","LINEAR","",20.1167824],["chain","LINEAR","",20.1168],["British link (Benoit 1895 A)","LINEAR","",0.201167824],["British yard (Benoit 1895 B)","LINEAR","",0.9143992042898124],["British foot (Benoit 1895 B)","LINEAR","",0.30479973476327077],["British chain (Benoit 1895 B)","LINEAR","",20.116782494375872],["British link (Benoit 1895 B)","LINEAR","",0.2011678249437587],["British foot (1865)","LINEAR","",0.30480083333333335],["Indian foot","LINEAR","",0.30479951024814694],["Indian foot (1937)","LINEAR","",0.30479841],["Indian foot (1975)","LINEAR","",0.3047995],["British foot (1936)","LINEAR","",0.3048007491],["Indian yard (1937)","LINEAR","",0.91439523],["Indian yard (1962)","LINEAR","",0.9143988],["Indian yard (1975)","LINEAR","",0.9143985],["Statute mile","LINEAR","",1609.344],["link","LINEAR","",0.201168],["British yard (Sears 1922 truncated)","LINEAR","",0.914398],["British foot (Sears 1922 truncated)","LINEAR","",0.30479933333333337],["British chain (Sears 1922 truncated)","LINEAR","",20.116756]]', '$[*]' columns (`UNIT_NAME` varchar(255) character set utf8mb4 path '$[0]', `UNIT_TYPE` varchar(7) character set utf8mb4 path '$[1]', `DESCRIPTION` varchar(255) character set utf8mb4 path '$[2]', `CONVERSION_FACTOR` double path '$[3]')) `st_units_of_measure`;

-- Listage des données de la table information_schema.ST_UNITS_OF_MEASURE : 0 rows
/*!40000 ALTER TABLE `ST_UNITS_OF_MEASURE` DISABLE KEYS */;
INSERT INTO `ST_UNITS_OF_MEASURE` (`UNIT_NAME`, `UNIT_TYPE`, `CONVERSION_FACTOR`, `DESCRIPTION`) VALUES
	('metre', 'LINEAR', 1, ''),
	('millimetre', 'LINEAR', 0.001, ''),
	('centimetre', 'LINEAR', 0.01, ''),
	('German legal metre', 'LINEAR', 1.0000135965, ''),
	('foot', 'LINEAR', 0.3048, ''),
	('US survey foot', 'LINEAR', 0.30480060960121924, ''),
	('Clarke\'s yard', 'LINEAR', 0.9143917962, ''),
	('Clarke\'s foot', 'LINEAR', 0.3047972654, ''),
	('British link (Sears 1922 truncated)', 'LINEAR', 0.20116756, ''),
	('nautical mile', 'LINEAR', 1852, ''),
	('fathom', 'LINEAR', 1.8288, ''),
	('US survey chain', 'LINEAR', 20.11684023368047, ''),
	('US survey link', 'LINEAR', 0.2011684023368047, ''),
	('US survey mile', 'LINEAR', 1609.3472186944375, ''),
	('Indian yard', 'LINEAR', 0.9143985307444408, ''),
	('kilometre', 'LINEAR', 1000, ''),
	('Clarke\'s chain', 'LINEAR', 20.1166195164, ''),
	('Clarke\'s link', 'LINEAR', 0.201166195164, ''),
	('British yard (Benoit 1895 A)', 'LINEAR', 0.9143992, ''),
	('British yard (Sears 1922)', 'LINEAR', 0.9143984146160288, ''),
	('British foot (Sears 1922)', 'LINEAR', 0.3047994715386762, ''),
	('Gold Coast foot', 'LINEAR', 0.3047997101815088, ''),
	('British chain (Sears 1922)', 'LINEAR', 20.116765121552632, ''),
	('yard', 'LINEAR', 0.9144, ''),
	('British link (Sears 1922)', 'LINEAR', 0.2011676512155263, ''),
	('British foot (Benoit 1895 A)', 'LINEAR', 0.3047997333333333, ''),
	('Indian foot (1962)', 'LINEAR', 0.3047996, ''),
	('British chain (Benoit 1895 A)', 'LINEAR', 20.1167824, ''),
	('chain', 'LINEAR', 20.1168, ''),
	('British link (Benoit 1895 A)', 'LINEAR', 0.201167824, ''),
	('British yard (Benoit 1895 B)', 'LINEAR', 0.9143992042898124, ''),
	('British foot (Benoit 1895 B)', 'LINEAR', 0.30479973476327077, ''),
	('British chain (Benoit 1895 B)', 'LINEAR', 20.116782494375872, ''),
	('British link (Benoit 1895 B)', 'LINEAR', 0.2011678249437587, ''),
	('British foot (1865)', 'LINEAR', 0.30480083333333335, ''),
	('Indian foot', 'LINEAR', 0.30479951024814694, ''),
	('Indian foot (1937)', 'LINEAR', 0.30479841, ''),
	('Indian foot (1975)', 'LINEAR', 0.3047995, ''),
	('British foot (1936)', 'LINEAR', 0.3048007491, ''),
	('Indian yard (1937)', 'LINEAR', 0.91439523, ''),
	('Indian yard (1962)', 'LINEAR', 0.9143988, ''),
	('Indian yard (1975)', 'LINEAR', 0.9143985, ''),
	('Statute mile', 'LINEAR', 1609.344, ''),
	('link', 'LINEAR', 0.201168, ''),
	('British yard (Sears 1922 truncated)', 'LINEAR', 0.914398, ''),
	('British foot (Sears 1922 truncated)', 'LINEAR', 0.30479933333333337, ''),
	('British chain (Sears 1922 truncated)', 'LINEAR', 20.116756, '');
/*!40000 ALTER TABLE `ST_UNITS_OF_MEASURE` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
