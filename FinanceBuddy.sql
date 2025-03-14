# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.18)
# Database: financebuddy
# Generation Time: 2020-03-20 08:20:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `categoryid` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;

INSERT INTO `category` (`categoryid`, `categoryname`, `username`)
VALUES
	(1,'Shoes','limlei'),
	(2,'Biscuits','limlei'),
	(3,'Clothing','limlei'),
	(5,'Drinks','limlei'),
	(6,'Liquid','limlei');

/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `itemid` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `itemname` varchar(100) NOT NULL DEFAULT '',
  `date` date NOT NULL,
  `price` float NOT NULL,
  `categoryname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;

INSERT INTO `item` (`itemid`, `username`, `itemname`, `date`, `price`, `categoryname`)
VALUES
	(1,'mrronald','chestnuts','2019-12-02',2.5,'Food'),
	(2,'limlei','chocolat','2019-12-05',35,'Leisure'),
	(3,'limlei','steak dinner','2019-12-03',400,'Food'),
	(4,'limlei','buffet brunch','2019-12-03',310,'Food'),
	(5,'limlei','subway sandwich','2019-12-03',63,'Food'),
	(6,'limlei','phone case','2019-12-03',45,'Leisure'),
	(7,'limlei','computer screen protector','2019-12-03',89,'Technology'),
	(8,'limlei','chocolate','2019-12-04',25,'Biscuits'),
	(9,'limlei','chair','2019-12-04',25,'Household Items'),
	(10,'limlei','Vishwesh 1\'s Low','2019-12-05',500,'Shoes'),
	(11,'limlei','Soccer Ball','2019-12-05',20,'Leisure'),
	(12,'limlei','Tissue','2019-12-05',20,'Household Items'),
	(19,'limlei','soccer ball','2019-12-09',50,'Leisure'),
	(20,'limlei','basketball','2019-12-10',250,'Leisure'),
	(21,'limlei','table','2019-12-11',300,'Household Items'),
	(22,'limlei','iphone 11','2019-12-13',1500,'Technology'),
	(23,'limlei','ipad','2019-12-12',2000,'Technology'),
	(24,'limlei','steak','2019-12-06',175,'Food'),
	(25,'limlei','jacket','2019-12-07',220,'Clothing'),
	(26,'limlei','pants','2019-12-07',220,'Clothing'),
	(27,'limlei','school pants','2019-12-08',50,'Clothing'),
	(28,'limlei','pockey','2019-12-17',50,'Food'),
	(29,'limlei','sprite','2019-12-17',10,'Food'),
	(30,'limlei','Candy','2019-12-17',39.99,'Food'),
	(31,'limlei','pockey','2020-01-18',25,'Food'),
	(32,'limlei','chocolate','2020-01-18',300,'Food'),
	(33,'limlei','chocolate','2020-02-02',50,'Food'),
	(34,'limlei','banana','2020-02-01',10,'Food'),
	(35,'limlei','arcade','2020-02-03',25,'Leisure'),
	(36,'limlei','jacket','2020-02-02',40,'Clothing'),
	(37,'limlei','steak','2020-02-01',60,'Food'),
	(38,'limlei','drawer','2020-02-03',15,'Household Items'),
	(39,'limlei','pencil case','2020-02-01',25,'Leisure'),
	(40,'limlei','bag','2020-02-04',60,'Leisure'),
	(41,'limlei','bread','2020-02-02',25,'Food'),
	(42,'limlei','mop','2020-02-04',70,'Household Items'),
	(43,'limlei','coke','2020-02-02',10,'Food'),
	(44,'limlei','notebook','2020-02-04',30,'Leisure'),
	(45,'limlei','markers','2020-02-04',40,'Leisure'),
	(46,'limlei','birthday card','2020-02-03',10,'Leisure'),
	(47,'limlei','slippers','2020-02-03',25,'Leisure'),
	(48,'limlei','conditioner','2020-02-05',40,'Household Items'),
	(49,'limlei','milk','2020-02-05',30,'Food'),
	(50,'limlei','water bottle','2020-02-05',50,'Household Items'),
	(51,'limlei','sandpaper','2020-02-06',40,'Household Items'),
	(52,'limlei','shirt','2020-02-06',50,'Clothing'),
	(53,'limlei','chocolate bar','2020-02-07',23,'Food'),
	(54,'limlei','chips','2020-02-07',20,'Food'),
	(55,'limlei','phone','2020-02-07',500,'Technology'),
	(56,'limlei','charger','2020-02-07',50,'Technology'),
	(57,'limlei','trial','2020-02-14',10,'Leisure');

/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `budget` float DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`username`, `password`, `budget`)
VALUES
	('craig','craig',5000),
	('jash','ilikebananas',6000),
	('limlei','password',20000),
	('mrronald','helloworld',8509),
	('trial','password',3000),
	('trial1','trial',2000);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
