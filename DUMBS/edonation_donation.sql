CREATE DATABASE  IF NOT EXISTS `edonation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `edonation`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: edonation
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountno` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bKashAcc` varchar(255) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `needammount` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` VALUES (30,'','','','','',NULL,'                               \r\n                        ','','mm jitu',0,NULL,NULL,1),(31,'','','','','',NULL,'                               \r\n                        ','','mm jitu',0,NULL,NULL,1),(32,'12-14-45-20','faridpur','01765515354',NULL,'01765515354','2019-10-03 00:00:00','i need some money                               \r\n                        ','mmjitu2019@gmail.com','mm jitu',200000,NULL,NULL,1),(33,'12-25-14','faridpur','01765515354',NULL,'01765515354','2019-10-01 00:00:00','nedd money                               \r\n                        ','as3339if@gmail.com','mm jitu',50000,NULL,NULL,1),(34,'12-32-27','gazipur','01765515354','IFIC BANK','01754525458','2019-10-01 00:00:00','i need Some Monney                               \r\n                        ','adoralim121@gmail.com','md nuruzzaman',1000000,NULL,NULL,1),(35,'12-32-27','gazipur','01765515354','IFIC BANK','01765515354','2019-10-01 00:00:00','dfyhythu                               \r\n                        ','ashif@gmail.com','abdulla al ashif',100000,NULL,NULL,1);
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-24 23:02:23
