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
-- Table structure for table `teammember`
--

DROP TABLE IF EXISTS `teammember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teammember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birthDate` varchar(255) DEFAULT NULL,
  `countryName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `profilepic` varchar(255) DEFAULT NULL,
  `qus` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teammember`
--

LOCK TABLES `teammember` WRITE;
/*!40000 ALTER TABLE `teammember` DISABLE KEYS */;
INSERT INTO `teammember` VALUES (8,'rteyrty','2019-10-02','Bangladesh','saiquatsurjo@gmail.com','mm jitu','Male','## Select your Occupation ##','uplod.jpg','trdyty','Team Member'),(9,'rteyrty','2019-10-02','Bangladesh','saiquatsurjo@gmail.com','mm jitu','Male','## Select your Occupation ##','uplod.jpg','trdyty','Team Member'),(10,'retyrrt','2019-10-02','Bangladesh','ashif@gmail.com','abdulla al ashif','Male','Student','about-us.jpg','4tey6rty','Team Member'),(11,'satgert','2019-10-01','India','ashif@gmail.com','abdulla al ashif','Female','Student','event-details.jpg','rtretert','Team Member'),(12,'satgert','2019-10-01','India','ashif@gmail.com','abdulla al ashif','Female','Student','event-details.jpg','rtretert','Team Member'),(13,'lm m, m','2019-10-04','Bangladesh','ashif@gmail.com','mm jitu','Male','Student','d6.jpg',';klmkomkl','Team Member'),(14,'asfser','2019-10-04','Bangladesh','mmjitu2019@gmail.com','sdfdf','Male','Student','uplod.jpg','areewrew','Team Member'),(15,'3q4345234','2019-10-03','India','mmjitu2019@gmail.com','sdfdf','Male','Student','d2.jpg','435234543','Team Member'),(16,'xfdghdrty','2019-10-04','Bangladesh','mmjitu2019@gmail.com','sdfdf','Male','Student','d6.jpg','tdryrty','Team Member'),(17,'faridpur					\r\n						','2019-10-01','Bangladesh','mmjitu2019@gmail.com','mm jitu','male','student','Capture.PNG','i help some people						\r\n						','Team Member'),(19,'dgfhdfgh						\r\n						','2019-10-02','Bangladesh','mmjitu2019@gmail.com','mm jitu','male','student','Capture.PNG','fghfdhfgh						\r\n						','Request Pending');
/*!40000 ALTER TABLE `teammember` ENABLE KEYS */;
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
