-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: expedientes
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Table structure for table `alergias`
--

DROP TABLE IF EXISTS `alergias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alergias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `medicamento` varchar(255) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alergias`
--

LOCK TABLES `alergias` WRITE;
/*!40000 ALTER TABLE `alergias` DISABLE KEYS */;
INSERT INTO `alergias` VALUES (1,'Alergia al látex','esteroide',NULL,NULL,NULL),(2,'Alergia al látex','esteroide',NULL,NULL,NULL),(3,'Alergia al agua','antihistamínicos',NULL,NULL,NULL),(4,'Alergia a las abejas','hidrocortisona',NULL,NULL,NULL),(5,'Alergia a los mariscos','anafilaxia',NULL,NULL,NULL),(6,'Alergia en los ojos','gotas oftálmicas',NULL,NULL,NULL),(7,'Alergia a las mascotas','desloratadina',NULL,NULL,NULL),(8,'Alergia al sol','corticosteroides',NULL,NULL,NULL),(9,'Alergia al frio','loratadina',NULL,NULL,NULL);
/*!40000 ALTER TABLE `alergias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (2,'antihistamínicos');
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `id` char(36) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tiposSangreId` int(11) NOT NULL,
  `alergiaId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pacientes_1_idx` (`alergiaId`),
  KEY `fk_pacientes_2_idx` (`tiposSangreId`),
  CONSTRAINT `fk_pacientes_1` FOREIGN KEY (`alergiaId`) REFERENCES `alergias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pacientes_2` FOREIGN KEY (`tiposSangreId`) REFERENCES `tipos_sangres` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES ('aba33001-e8f6-458e-895f-9b36f61d49ae','jane',3,4,'2020-12-22 17:56:20','2020-12-22 17:56:20'),('aba33001-e8f6-458e-895f-9b36f61d49ee','osmar',1,3,'2020-12-22 16:48:05','2020-12-22 16:48:05'),('aba33201-e8f6-458e-895f-9b36f61d09ep','pedrito',1,1,'2020-12-22 20:50:46','2020-12-22 20:50:46'),('aba33201-e8f6-458e-895f-9b36f61r49ep','pedrito',2,1,'2020-12-22 20:49:48','2020-12-22 20:49:48');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_sangres`
--

DROP TABLE IF EXISTS `tipos_sangres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_sangres` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_sangres`
--

LOCK TABLES `tipos_sangres` WRITE;
/*!40000 ALTER TABLE `tipos_sangres` DISABLE KEYS */;
INSERT INTO `tipos_sangres` VALUES (1,'ORH+','2020-12-22 07:25:41','2020-12-22 07:25:41',NULL),(2,'A+','2020-12-22 07:29:00','2020-12-22 07:25:41',NULL),(3,'AB+','2020-12-22 07:25:41','2020-12-22 07:25:41',NULL),(4,'AB-','2020-12-22 07:25:41','2020-12-22 07:25:41',NULL),(5,'A-','2020-12-22 07:25:41','2020-12-22 07:25:41',NULL),(6,'O-','2020-12-22 07:25:41','2020-12-22 07:25:41',NULL),(7,'B+','2020-12-22 07:25:41','2020-12-22 07:25:41',NULL),(8,'B-','2020-12-22 07:25:41','2020-12-22 07:25:41',NULL);
/*!40000 ALTER TABLE `tipos_sangres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22 16:05:05
