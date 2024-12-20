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

-- Listage de la structure de table information_schema. CHARACTER_SETS
CREATIF NOT EXISTS E ALGORITHM=UNDEFINED DEFINER=`mysql.infoschema`@`localhost` SQL SECURITY DEFINER VIEW `information_schema`.`CHARACTER_SETS` AS select `cs`.`name` AS `CHARACTER_SET_NAME`,`col`.`name` AS `DEFAULT_COLLATE_NAME`,`cs`.`comment` AS `DESCRIPTION`,`cs`.`mb_max_length` AS `MAXLEN` from (`mysql`.`character_sets` `cs` join `mysql`.`collations` `col` on((`cs`.`default_collation_id` = `col`.`id`)));

-- Listage des données de la table information_schema.CHARACTER_SETS : 0 rows
/*!40000 ALTER TABLE `CHARACTER_SETS` DISABLE KEYS */;
INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
	('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
	('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
	('cp850', 'cp850_general_ci', 'DOS West European', 1),
	('hp8', 'hp8_english_ci', 'HP West European', 1),
	('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
	('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
	('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
	('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
	('ascii', 'ascii_general_ci', 'US ASCII', 1),
	('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
	('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
	('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
	('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
	('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
	('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
	('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
	('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
	('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
	('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
	('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
	('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
	('utf8mb3', 'utf8mb3_general_ci', 'UTF-8 Unicode', 3),
	('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
	('cp866', 'cp866_general_ci', 'DOS Russian', 1),
	('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
	('macce', 'macce_general_ci', 'Mac Central European', 1),
	('macroman', 'macroman_general_ci', 'Mac West European', 1),
	('cp852', 'cp852_general_ci', 'DOS Central European', 1),
	('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
	('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
	('utf16', 'utf16_general_ci', 'UTF-16 Unicode', 4),
	('utf16le', 'utf16le_general_ci', 'UTF-16LE Unicode', 4),
	('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
	('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
	('utf32', 'utf32_general_ci', 'UTF-32 Unicode', 4),
	('binary', 'binary', 'Binary pseudo charset', 1),
	('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
	('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
	('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3),
	('gb18030', 'gb18030_chinese_ci', 'China National Standard GB18030', 4),
	('utf8mb4', 'utf8mb4_0900_ai_ci', 'UTF-8 Unicode', 4);
/*!40000 ALTER TABLE `CHARACTER_SETS` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
