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

-- Listage de la structure de table immochateau. departements
CREATE TABLE IF NOT EXISTS `departements` (
  `id_dep` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_dep` varchar(50) NOT NULL,
  `dep_actif` int unsigned NOT NULL,
  PRIMARY KEY (`id_dep`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3 COMMENT='Departements';

-- Listage des données de la table immochateau.departements : ~95 rows (environ)
INSERT INTO `departements` (`id_dep`, `nom_dep`, `dep_actif`) VALUES
	(1, '01 - Ain', 1),
	(2, '02 - Aisne', 1),
	(3, '03 - Allier', 1),
	(4, '04 - Alpes-de-Haute-Provence', 1),
	(5, '05 - Hautes-Alpes', 1),
	(6, '06 - Alpes-Maritimes', 1),
	(7, '07 - Ardèche', 1),
	(8, '08 - Ardennes', 1),
	(9, '09 - Ariège ', 1),
	(10, '10 - Aube', 1),
	(11, '11 - Aude', 1),
	(12, '12 - Aveyron', 1),
	(13, '13 - Bouches-du-Rhône', 1),
	(14, '14 - Calvados', 1),
	(15, '15 - Cantal', 1),
	(16, '16 - Charente', 1),
	(17, '17 - Charente-Maritime', 1),
	(18, '18 - Cher', 1),
	(19, '19 - Corrèze', 1),
	(20, '2A 2B - Départements Corse', 1),
	(21, '21 - Côte-d\'Or', 1),
	(22, '22 - Côtes-d\'Armor', 1),
	(23, '23 - Creuse', 1),
	(24, '24 - Dordogne', 1),
	(25, '25 - Doubs', 1),
	(26, '26 - Drôme', 1),
	(27, '27 - Eure', 1),
	(28, '28 - Eure-et-Loir', 1),
	(29, '29 - Finistère', 1),
	(30, '30 - Gard', 1),
	(31, '31 - Haute-Garonne', 1),
	(32, '32 - Gers', 1),
	(33, '33 - Gironde', 1),
	(34, '34 - Hérault', 1),
	(35, '35 - Ille-et-Vilaine', 1),
	(36, '36 - Indre', 1),
	(37, '37 - Indre-et-Loire', 1),
	(38, '38 - Isère', 1),
	(39, '39 - Jura', 1),
	(40, '40 - Landes', 1),
	(41, '41 - Loir-et-Cher', 1),
	(42, '42 - Loire', 1),
	(43, '43 - Haute-Loire', 1),
	(44, '44 - Loire-Atlantique', 1),
	(45, '45 - Loiret', 1),
	(46, '46 - Lot', 1),
	(47, '47 - Lot-et-Garonne', 1),
	(48, '48 - Lozère', 1),
	(49, '49 - Maine-et-Loire', 1),
	(50, '50 - Manche', 1),
	(51, '51 - Marne', 1),
	(52, '52 - Haute-Marne', 1),
	(53, '53 - Mayenne', 1),
	(54, '54 - Meurthe-et-Moselle', 1),
	(55, '55 - Meuse', 1),
	(56, '56 - Morbihan', 1),
	(57, '57 - Moselle', 1),
	(58, '58 - Nièvre', 1),
	(59, '59 - Nord', 1),
	(60, '60 - Oise', 1),
	(61, '61 - Orne', 1),
	(62, '62 - Pas-de-Calais', 1),
	(63, '63 - Puy-de-Dôme', 1),
	(64, '64 - Pyrénées-Atlantiques', 1),
	(65, '65 - Hautes-Pyrénées', 1),
	(66, '66 - Pyrénées-Orientales', 1),
	(67, '67 - Bas-Rhin', 1),
	(68, '68 - Haut-Rhin', 1),
	(69, '69 - Rhône', 1),
	(70, '70 - Haute-Saône', 1),
	(71, '71 - Saône-et-Loire', 1),
	(72, '72 - Sarthe', 1),
	(73, '73 - Savoie', 1),
	(74, '74 - Haute-Savoie', 1),
	(75, '75 - Paris', 1),
	(76, '76 - Seine-Maritime', 1),
	(77, '77 - Seine-et-Marne', 1),
	(78, '78 - Yvelines', 1),
	(79, '79 - Deux-Sèvres', 1),
	(80, '80 - Somme', 1),
	(81, '81 - Tarn', 1),
	(82, '82 - Tarn-et-Garonne', 1),
	(83, '83 - Var', 1),
	(84, '84 - Vaucluse', 1),
	(85, '85 - Vendée', 1),
	(86, '86 - Vienne', 1),
	(87, '87 - Haute-Vienne', 1),
	(88, '88 - Vosges', 1),
	(89, '89 - Yonne', 1),
	(90, '90 - Territoire de Belfort', 1),
	(91, '91 - Essonne', 1),
	(92, '92 - Hauts-de-Seine', 1),
	(93, '93 - Seine-Saint-Denis', 1),
	(94, '94 - Val-de-Marne', 1),
	(95, '95 - Val-d Oise', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
