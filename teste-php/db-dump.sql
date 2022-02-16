# ************************************************************
# Sequel Ace SQL dump
# Version 3013
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 8.0.22)
# Database: teste
# Generation Time: 2021-01-20 21:07:04 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Hobbies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Hobbies`;

CREATE TABLE `Hobbies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `hobbie` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `Hobbies` WRITE;
/*!40000 ALTER TABLE `Hobbies` DISABLE KEYS */;

INSERT INTO `Hobbies` (`id`, `hobbie`)
VALUES
	(1,'Escutar música'),
	(2,'Escrever'),
	(3,'Jogar videogame'),
	(4,'Assitir séries'),
	(5,'Ler livros'),
	(6,'Viajar'),
	(7,'Cozinhar'),
	(8,'Esportes'),
	(9,'Fotografia'),
	(10,'Compras');

/*!40000 ALTER TABLE `Hobbies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Hobbies_X_Users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Hobbies_X_Users`;

CREATE TABLE `Hobbies_X_Users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `idUser` int unsigned NOT NULL,
  `idHobby` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUser` (`idUser`),
  KEY `idHobby` (`idHobby`),
  CONSTRAINT `hobbies_x_users_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hobbies_x_users_ibfk_2` FOREIGN KEY (`idHobby`) REFERENCES `Hobbies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `Hobbies_X_Users` WRITE;
/*!40000 ALTER TABLE `Hobbies_X_Users` DISABLE KEYS */;

INSERT INTO `Hobbies_X_Users` (`id`, `idUser`, `idHobby`)
VALUES
	(1,1,3),
	(3,1,4),
	(4,2,2),
	(5,2,4),
	(6,3,4),
	(7,3,5),
	(8,3,6),
	(9,4,6),
	(10,4,8),
	(11,6,9);

/*!40000 ALTER TABLE `Hobbies_X_Users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;

INSERT INTO `Users` (`id`, `name`, `birthDate`, `created_at`, `country`)
VALUES
	(1,'Pedro Carlos','2000-10-13','2020-03-20 17:34:38','Portugal'),
	(2,'Vinicius Barros Cardoso','1984-01-20','2020-05-19 20:24:18','Brasil'),
	(3,'Beatriz Dias Ferreira','1992-07-02','2020-06-13 02:10:01','Brasil'),
	(4,'Leila Cavalcanti Correia','1995-12-27','2020-09-28 20:45:09','Angola'),
	(5,'Tomás Costa Dias','1965-03-29','2021-01-20 19:14:04','Brasil'),
	(6,'Cauã Barbosa Pereira','1992-05-02','2021-01-22 10:12:30','Macau');

/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
