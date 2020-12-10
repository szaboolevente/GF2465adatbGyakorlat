-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: gyak11
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auto`
--

DROP TABLE IF EXISTS `auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto` (
  `Rendszam` char(7) NOT NULL,
  `Tipus` varchar(25) NOT NULL,
  `Szin` varchar(15) DEFAULT NULL,
  `Kor` int(2) DEFAULT NULL,
  `Ar` int(8) DEFAULT NULL,
  `Tulaj` int(4) DEFAULT NULL,
  PRIMARY KEY (`Rendszam`),
  KEY `Tulaj` (`Tulaj`),
  CONSTRAINT `auto_ibfk_1` FOREIGN KEY (`Tulaj`) REFERENCES `tulajdonos` (`Tkod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto`
--

LOCK TABLES `auto` WRITE;
/*!40000 ALTER TABLE `auto` DISABLE KEYS */;
INSERT INTO `auto` VALUES ('FER-831','Opel Corsa','piros',18,390,1001),('GFD-525','Renault Twingo','fekete',16,280,NULL),('HUB-936','Suzuki Swift','fekete',16,500,NULL),('IXJ-239','Suzuki Swift','zold',15,450,1005),('JAH-425','Sokda Fabia','piros',13,620,1002),('JCD-433','Opel Astra','feher',12,990,1007),('KAP-290','BMW 316','fekete',6,3250,1002),('KFT-204','Opel Astra','szurke',7,1250,1006),('MLM-211','Toyota Yaris','feher',3,1850,1005);
/*!40000 ALTER TABLE `auto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoria`
--

DROP TABLE IF EXISTS `kategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategoria` (
  `Knev` varchar(12) DEFAULT NULL,
  `AlsoHP` int(4) DEFAULT NULL,
  `FelsoHP` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoria`
--

LOCK TABLES `kategoria` WRITE;
/*!40000 ALTER TABLE `kategoria` DISABLE KEYS */;
INSERT INTO `kategoria` VALUES ('Selejt',0,200),('Olcso',201,500),('Atlagos',501,1000),('Draga',1001,5000);
/*!40000 ALTER TABLE `kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tulajdonos`
--

DROP TABLE IF EXISTS `tulajdonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tulajdonos` (
  `Tkod` int(4) NOT NULL,
  `Nev` varchar(20) NOT NULL,
  `Varos` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Tkod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tulajdonos`
--

LOCK TABLES `tulajdonos` WRITE;
/*!40000 ALTER TABLE `tulajdonos` DISABLE KEYS */;
INSERT INTO `tulajdonos` VALUES (1001,'Kis Janos','Miskolc'),(1002,'Kis Eva','Malyi'),(1003,'Retek Odon','Miskolc'),(1004,'Virag Zoltan','Nyek'),(1005,'Nagy Eszter','Nyek'),(1006,'Kovacs Magor','Malyi'),(1007,'Asztal Antal','Miskolc');
/*!40000 ALTER TABLE `tulajdonos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-24  9:45:48