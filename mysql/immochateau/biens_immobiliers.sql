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

-- Listage de la structure de table immochateau. biens_immobiliers
CREATE TABLE IF NOT EXISTS `biens_immobiliers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `nbr_pieces` int NOT NULL,
  `surface` decimal(6,2) NOT NULL,
  `prix_vente` decimal(11,2) NOT NULL,
  `description` text,
  `ges` char(1) NOT NULL,
  `classe_eco` char(1) NOT NULL,
  `meuble` tinyint(1) NOT NULL,
  `localisation` mediumtext,
  `num_departement` int unsigned NOT NULL,
  `ville` varchar(70) NOT NULL,
  `charges_annuelles` decimal(11,2) NOT NULL,
  `id_utilisateur_commercial` int unsigned NOT NULL,
  `id_categorie` int unsigned NOT NULL,
  `id_proprietaire` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_utilisateur_commercial` (`id_utilisateur_commercial`),
  KEY `id_categorie` (`id_categorie`),
  KEY `fK_proprietaire` (`id_proprietaire`),
  KEY `fk_departement` (`num_departement`),
  CONSTRAINT `biens_immobiliers_ibfk_1` FOREIGN KEY (`id_utilisateur_commercial`) REFERENCES `utilisateurs` (`id_utilisateur`),
  CONSTRAINT `biens_immobiliers_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`),
  CONSTRAINT `fk_departement` FOREIGN KEY (`num_departement`) REFERENCES `departements` (`id_dep`),
  CONSTRAINT `fK_proprietaire` FOREIGN KEY (`id_proprietaire`) REFERENCES `proprietaires` (`id_proprietaire`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table immochateau.biens_immobiliers : ~10 rows (environ)
INSERT INTO `biens_immobiliers` (`id`, `titre`, `nbr_pieces`, `surface`, `prix_vente`, `description`, `ges`, `classe_eco`, `meuble`, `localisation`, `num_departement`, `ville`, `charges_annuelles`, `id_utilisateur_commercial`, `id_categorie`, `id_proprietaire`) VALUES
	(1, 'Maison de maître au bord du Lac ', 5, 150.00, 550000.00, 'Belle maison de style située au bord du lac D\'Annecy...Emplacement avec vue sur le lac.', 'D', 'C', 0, 'Idéalement situé à 2 pas du centre de la vieille ville, quartier sud  ', 74, 'Annecy', 0.00, 1, 2, 2),
	(2, 'Beau F3 MEUBLE\r\n', 3, 94.00, 220000.00, 'Beau F3 situé au 1er étage d\'une résidence avec vue sur le lac.', 'B', 'C', 0, 'A 2 pas du centre ville et des commerces , dans le quartier vieille ville, rue de l\'Ours', 74, 'Annecy', 2000.00, 2, 1, 3),
	(3, 'Bel appartement 90 m² - 4 pièces - 3 chambres', 4, 90.00, 278200.00, 'Quartier des Maraîchers, Lumineux 4 pièces de 90 m2 dans une résidence de standing de 2015 avec portail motorisé..\r\nAu rez-de-chaussée : Cuisine ouverte sur salon séjour avec un accès sur la terrasse, 1 chambre, WC indépendant avec lave-main. A l\'étage: 1 chambre de 18 m2 avec dressing , une salle de bain avec fenêtre et une mezzanine de 25m2 au sol.\r\nUn garage ainsi qu\'une place de parking complète ce lot.', 'D', 'B', 0, 'Idéalement situé à proximité des commerces, transports en commun et du centre de Colmar.', 68, 'Colmar', 3000.00, 1, 1, 3),
	(4, 'appartement F2 pièces de 67m2 avec orientation SUD', 4, 67.00, 235000.00, 'appartement 2 pièces de 67m2 avec orientation SUD, composant : 2 chambres, une cuisine ouverte sur le salon séjour, salle de bain, WC indépendant, terrasse de 12m2 et jardin de 77m2.\r\nLe bien est vendu avec cave. Le garage est en option. \r\nA proximité de tout accès et commodité.\r\nÉligible à la loi PINEL et au prêt a taux zéro.\r\n', 'B', 'B', 0, 'situé au centre ville de Colmar,A proximité de tout accès et commodité.', 68, 'Colmar', 1500.00, 2, 1, 2),
	(5, 'MAISON 4 PIÈCES AVEC TERRASSE - PROCHE CASTRES', 4, 80.00, 129000.00, 'découvrez cette maison de 4 pièces de 80 m² et de 1 500 m² de terrain. Elle dispose d\'une pièce à vivre et de trois chambres. Elle offre également une salle d\'eau. Un chauffage fonctionnant à l\'électricité est installé dans la maison.\r\n\r\nCe bien dispose aussi d\'une terrasse (30 m²) et d\'un jardin (1 500 m²), l\'idéal pour profiter des beaux jours.\r\n\r\nL\'intérieur nécessite d\'être rafraîchi. Concernant les véhicules, cette maison possède une place sur un parking extérieur et deux places de parking en intérieur.', 'D', 'C', 0, 'La maison se situe dans la commune d\'Anglès. On trouve une école primaire à moins de 10 minutes du bien. Il y a un restaurant à moins de 10 minutes.', 81, 'Anglès', 0.00, 1, 2, 2),
	(6, 'Maison mitoyenne 1 côté à vendre dans un ensemble immobilier de 4 logements réhabilité à neuf', 3, 60.00, 152000.00, 'Idéalement situé à 5 minutes de l\'Eurométropole Strasbourgeoise, maison mitoyenne 1 côté à vendre dans un ensemble immobilier de 4 logements réhabilité à neuf en 2020.\r\n\r\nSur 2 niveaux, le logement comprend 2 chambres, 1 salle de bain, 2 WC, un séjour spacieux ouvert sur une cuisine et une terrasse. Places de stationnement extérieures et/ou garages peuvent venir compléter le bien en sus.\r\n\r\n', 'D', 'C', 0, 'Lumineux et calme, il se trouve proche de toutes commodités et des transports en commun, à 5 minutes de l\'autoroute et à 15 minutes du centre-ville de Strasbourg.', 67, 'Berstett', 2000.00, 2, 2, 2),
	(7, 'Terrain Constructible Burlats 3730 m²', 0, 3730.00, 87000.00, 'Terrain de 3730m2(soit 37 a) dans un endroit très calme sans vis a vis avec une vue magnifique.\r\nA 5mn de castres.\r\n\r\n ', 'a', 'a', 0, 'A 5mn de castres.', 81, 'Burlats 81100', 0.00, 2, 3, 2),
	(9, '\'Grand Appartement Colmar F4 à saisir \'', 4, 94.00, 200000.00, '\' test \'', 'A', 'A', 0, '\' Quartier des Maraîchers\'', 68, 'Colmar', 15000.00, 1, 1, 3),
	(10, 'l\'olibrius thann', 5, 95.00, 200000.00, ' test de m\'étoile?!;:', 'A', 'A', 0, '\' test\'', 68, 'Colmar', 15000.00, 1, 1, 2),
	(11, 'Grand Appartement Colmar F4 à saisir ', 4, 98.00, 250000.00, ' test', 'A', 'A', 0, ' test', 68, 'Colmar', 15000.00, 1, 1, 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
