-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nakitshop
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `korisnici`
--

DROP TABLE IF EXISTS `korisnici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(145) NOT NULL,
  `password` varchar(45) NOT NULL,
  `admin` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnici`
--

LOCK TABLES `korisnici` WRITE;
/*!40000 ALTER TABLE `korisnici` DISABLE KEYS */;
INSERT INTO `korisnici` VALUES (1,'admin','123','da');
/*!40000 ALTER TABLE `korisnici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korpa`
--

DROP TABLE IF EXISTS `korpa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `korpa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_korisnika` int(11) NOT NULL,
  `id_proizvoda` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korpa`
--

LOCK TABLES `korpa` WRITE;
/*!40000 ALTER TABLE `korpa` DISABLE KEYS */;
INSERT INTO `korpa` VALUES (74,15743,7),(75,81592,6),(76,81592,5),(77,54578,11),(78,51735,5),(79,51735,6),(80,51735,7),(81,5523,5),(82,5523,6),(83,5523,7),(84,81387,5),(85,81387,6),(86,81387,7),(87,48032,5),(88,48032,6),(89,48032,7),(90,21149,6),(91,84366,2),(92,84366,8),(93,10441,5),(94,76565,8),(95,76565,7),(96,76565,6),(97,76565,9),(98,76565,4),(99,89647,5),(100,89647,1),(101,79803,1);
/*!40000 ALTER TABLE `korpa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proizvod`
--

DROP TABLE IF EXISTS `proizvod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proizvod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) DEFAULT NULL,
  `opis` varchar(2000) DEFAULT NULL,
  `brend` varchar(45) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `kategorija` varchar(45) DEFAULT NULL,
  `stanje` varchar(45) DEFAULT NULL,
  `id_tip` int(11) DEFAULT NULL,
  `preporuka` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tip_idx` (`id_tip`),
  CONSTRAINT `id_tip` FOREIGN KEY (`id_tip`) REFERENCES `tip` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proizvod`
--

LOCK TABLES `proizvod` WRITE;
/*!40000 ALTER TABLE `proizvod` DISABLE KEYS */;
INSERT INTO `proizvod` VALUES (1,'Diamonique','One of the most beautiful and high quality rings..','BPM',29,'commemorated','3',4,'novo'),(4,'Love Ring','One of the pretty models..','BPM',14,'commemorated','3',4,'novo'),(5,'Classic Six-Prong Ring','One of the pretty models..','Swarovski',189,'commemorated','2',4,'novo'),(6,'Bracelet','One of the most beautiful models ..','BMP',12,'everyday','7',1,'novo'),(7,'Bracelet','...','GUESS',139,'everyday, commemorated','3',1,'preporuceno'),(8,'Bracelet VITAL','The best-selling model of this brand ..','VITAL',29,'everyday','12',1,'preporuceno'),(9,'VERSACE watch','The best-selling model of this brand ..','VERSACE',429,'everyday, commemorated','5',2,'preporuceno'),(10,'Rings','You will get two rings at the price of one, only through this offer ..','/',19,'everyday','2',1,'istaknuto'),(11,'RING SWAROVSKI','Currently one of the most popular models .. ','SWAROVSKI',349,'wedding, commemorated','3',5,'istaknuto'),(12,'NECKLACE','Very nice fashion detail..','/',49,'everyday','6',1,'istaknuto'),(13,'CERTINA DS-1','Very nice fashion detail..','CERTINA',549,'commemorated','2',2,'istaknutoLevo'),(14,'Fashion accessory','Very nice fashion detail..','/',12,'everyday','22',3,'istaknutoLevo'),(15,'EARRINGS','Very nice fashion detail..','/',69,'wedding, commemorated','22',3,'istaknutoLevo');
/*!40000 ALTER TABLE `proizvod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slike`
--

DROP TABLE IF EXISTS `slike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slika` varchar(300) NOT NULL,
  `id_proizvoda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_proizvod_idx` (`id_proizvoda`),
  CONSTRAINT `id_pro` FOREIGN KEY (`id_proizvoda`) REFERENCES `proizvod` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slike`
--

LOCK TABLES `slike` WRITE;
/*!40000 ALTER TABLE `slike` DISABLE KEYS */;
INSERT INTO `slike` VALUES (1,'/NakitShop/resources/img/bootstrap-ring.png',1),(2,'/NakitShop/resources/img/i.jpg',4),(3,'/NakitShop/resources/img/g.jpg',5),(4,'/NakitShop/resources/img/s.png',6),(5,'/NakitShop/resources/img/b.jpg',7),(6,'/NakitShop/resources/img/c.jpg',8),(7,'/NakitShop/resources/img/a.jpg',9),(8,'/NakitShop/resources/img/d.jpg',10),(9,'/NakitShop/resources/img/e.jpg',11),(10,'/NakitShop/resources/img/f.jpg',12),(11,'resources/img/picture.png',13),(12,'/NakitShop/resources/img/pant.png',14),(13,'/NakitShop/resources/img/bootstrap-template.png',15);
/*!40000 ALTER TABLE `slike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip`
--

DROP TABLE IF EXISTS `tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip`
--

LOCK TABLES `tip` WRITE;
/*!40000 ALTER TABLE `tip` DISABLE KEYS */;
INSERT INTO `tip` VALUES (1,'Fashion'),(2,'Watches'),(3,'Fine Jewelry'),(4,'Fashion Jewelry'),(5,'Engagement & Wedding'),(6,'Men\'s Jewelry'),(7,'Vintage & Antique'),(8,'Loose Diamonds'),(9,'Loose Beads');
/*!40000 ALTER TABLE `tip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-24 10:26:29
