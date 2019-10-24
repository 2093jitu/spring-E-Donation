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
-- Table structure for table `blooddonation`
--

DROP TABLE IF EXISTS `blooddonation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blooddonation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BloodGroup` varchar(255) DEFAULT NULL,
  `ContactNumber` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `lastBloodDonateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blooddonation`
--

LOCK TABLES `blooddonation` WRITE;
/*!40000 ALTER TABLE `blooddonation` DISABLE KEYS */;
INSERT INTO `blooddonation` VALUES (1,'B possitive','01765515354','NotAvableable','ashif@gmail.com','mm jitu','2019-10-02 00:00:00'),(7,'B possitive','dfytuty','Avableable','mmjitu2019@gmail.com','md nuruzzaman','2019-10-03 00:00:00'),(8,'AB possitive','01765515354','Avableable','saiquatsurjo@gmail.com','mm jitu','2019-10-02 00:00:00'),(10,'A Nagative','01765515354','Avableable','mmjitu2019@gmail.com','mm jitu','2019-10-02 00:00:00'),(11,'A Positive','01765515354','Avableable','mmjitu2019@gmail.com','mm jitu','2019-10-01 00:00:00'),(12,'O Positive','01765515354','NotAvableable','adoralim121@gmail.com','alim','2019-10-04 00:00:00'),(13,'A Negative','01765515354','All Raddy Booked','as3339if@gmail.com','mm jitu','2019-09-30 00:00:00'),(14,'A Negative','01765515354','All Raddy Booked','as3339if@gmail.com','abdulla al ashif','2019-10-03 00:00:00');
/*!40000 ALTER TABLE `blooddonation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-24 23:02:24
