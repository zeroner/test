-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: examen
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_productos`
--

DROP TABLE IF EXISTS `categorias_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias_productos` (
  `id_categoria_producto` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_categoria_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_productos`
--

LOCK TABLES `categorias_productos` WRITE;
/*!40000 ALTER TABLE `categorias_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lanzamientosspacex`
--

DROP TABLE IF EXISTS `lanzamientosspacex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lanzamientosspacex` (
  `idLanzamiento` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMision` varchar(60) DEFAULT NULL,
  `yearLanzamiento` int(11) DEFAULT NULL,
  `nombreModeloCohete` varchar(60) DEFAULT NULL,
  `lugarLanzamiento` varchar(60) DEFAULT NULL,
  `lanzamiento` varchar(60) DEFAULT NULL,
  `recuperacion` int(11) DEFAULT NULL,
  `reutilizacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLanzamiento`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lanzamientosspacex`
--

LOCK TABLES `lanzamientosspacex` WRITE;
/*!40000 ALTER TABLE `lanzamientosspacex` DISABLE KEYS */;
INSERT INTO `lanzamientosspacex` VALUES (1,'Trailblazer',2008,'Falcon 1','Kwajalein Atoll','false',0,0),(2,'RatSat',2008,'Falcon 1','Kwajalein Atoll','true',0,0),(3,'RazakSat',2009,'Falcon 1','Kwajalein Atoll','true',0,0),(4,'COTS 2',2012,'Falcon 9','CCAFS SLC 40','true',0,0),(5,'CRS-1',2012,'Falcon 9','CCAFS SLC 40','true',0,0),(6,'COTS 1',2010,'Falcon 9','CCAFS SLC 40','true',0,0),(7,'CRS-2',2013,'Falcon 9','CCAFS SLC 40','true',0,0),(8,'CASSIOPE',2013,'Falcon 9','VAFB SLC 4E','true',0,0),(9,'Falcon 9 Test Flight',2010,'Falcon 9','CCAFS SLC 40','true',0,0),(10,'SES-8',2013,'Falcon 9','CCAFS SLC 40','true',0,0),(11,'Thaicom 6',2014,'Falcon 9','CCAFS SLC 40','true',0,0),(12,'CRS-3',2014,'Falcon 9','CCAFS SLC 40','true',0,0),(13,'OG-2 Mission 1',2014,'Falcon 9','CCAFS SLC 40','true',0,0),(14,'AsiaSat 8',2014,'Falcon 9','CCAFS SLC 40','true',0,0),(15,'AsiaSat 6',2014,'Falcon 9','CCAFS SLC 40','true',0,0),(16,'CRS-4',2014,'Falcon 9','CCAFS SLC 40','true',0,0),(17,'CRS-5',2015,'Falcon 9','CCAFS SLC 40','true',0,0),(18,'DSCOVR',2015,'Falcon 9','CCAFS SLC 40','true',0,0),(19,'ABS-3A / Eutelsat 115W B',2015,'Falcon 9','CCAFS SLC 40','true',0,0),(20,'CRS-6',2015,'Falcon 9','CCAFS SLC 40','true',0,0),(21,'TürkmenÄlem 52°E / MonacoSAT',2015,'Falcon 9','CCAFS SLC 40','true',0,0),(22,'CRS-7',2015,'Falcon 9','CCAFS SLC 40','false',0,0),(23,'OG-2 Mission 2',2015,'Falcon 9','CCAFS SLC 40','true',0,0),(24,'CRS-8',2016,'Falcon 9','CCAFS SLC 40','true',0,0),(25,'JCSAT-2B',2016,'Falcon 9','CCAFS SLC 40','true',0,0),(26,'Thaicom 8',2016,'Falcon 9','CCAFS SLC 40','true',0,0),(27,'ABS-2A / Eutelsat 117W B',2016,'Falcon 9','CCAFS SLC 40','true',0,0),(28,'Jason 3',2016,'Falcon 9','VAFB SLC 4E','true',0,0),(29,'SES-9',2016,'Falcon 9','CCAFS SLC 40','true',0,0),(30,'CRS-9',2016,'Falcon 9','CCAFS SLC 40','true',0,0),(31,'JCSAT-16',2016,'Falcon 9','CCAFS SLC 40','true',0,0),(32,'Amos-6',2016,'Falcon 9','CCAFS SLC 40','false',0,0),(33,'Iridium NEXT Mission 1',2017,'Falcon 9','VAFB SLC 4E','true',0,0),(34,'CRS-10',2017,'Falcon 9','KSC LC 39A','true',0,0),(35,'EchoStar 23',2017,'Falcon 9','KSC LC 39A','true',0,0),(36,'SES-10',2017,'Falcon 9','KSC LC 39A','true',0,0),(37,'NROL-76',2017,'Falcon 9','KSC LC 39A','true',0,0),(38,'Inmarsat-5 F4',2017,'Falcon 9','KSC LC 39A','true',0,0),(39,'CRS-11',2017,'Falcon 9','KSC LC 39A','true',0,0),(40,'BulgariaSat-1',2017,'Falcon 9','KSC LC 39A','true',0,0),(41,'Intelsat 35e',2017,'Falcon 9','KSC LC 39A','true',0,0),(42,'Iridium NEXT Mission 2',2017,'Falcon 9','VAFB SLC 4E','true',0,0),(43,'CRS-12',2017,'Falcon 9','KSC LC 39A','true',0,0),(44,'FormoSat-5',2017,'Falcon 9','VAFB SLC 4E','true',0,0),(45,'Iridium NEXT Mission 3',2017,'Falcon 9','VAFB SLC 4E','true',0,0),(46,'KoreaSat 5A',2017,'Falcon 9','KSC LC 39A','true',0,0),(47,'SES-11 / Echostar 105',2017,'Falcon 9','KSC LC 39A','true',0,0),(48,'CRS-13',2017,'Falcon 9','CCAFS SLC 40','true',0,0),(49,'Iridium NEXT Mission 4',2017,'Falcon 9','VAFB SLC 4E','true',0,0),(50,'ZUMA',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(51,'SES-16 / GovSat-1',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(52,'Falcon Heavy Test Flight',2018,'Falcon Heavy','KSC LC 39A','true',0,0),(53,'Paz / Starlink Demo',2018,'Falcon 9','VAFB SLC 4E','true',0,0),(54,'Iridium NEXT Mission 5',2018,'Falcon 9','VAFB SLC 4E','true',0,0),(55,'CRS-14',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(56,'Bangabandhu-1',2018,'Falcon 9','KSC LC 39A','true',0,0),(57,'TESS',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(58,'Boeing X-37B OTV-5',2017,'Falcon 9','KSC LC 39A','true',0,0),(59,'Iridium NEXT Mission 6',2018,'Falcon 9','VAFB SLC 4E','true',0,0),(60,'SES-12',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(61,'CRS-15',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(62,'Telstar 19V',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(63,'Iridium NEXT Mission 7',2018,'Falcon 9','VAFB SLC 4E','true',0,0),(64,'Merah Putih',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(65,'Hispasat 30W-6',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(66,'SAOCOM 1A',2018,'Falcon 9','VAFB SLC 4E','true',0,0),(67,'Telstar 18V',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(68,'Es’hail 2',2018,'Falcon 9','KSC LC 39A','true',0,0),(69,'CRS-16',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(70,'GPS III SV01',2018,'Falcon 9','CCAFS SLC 40','true',0,0),(71,'SSO-A',2018,'Falcon 9','VAFB SLC 4E','true',0,0),(72,'Iridium NEXT Mission 8',2019,'Falcon 9','VAFB SLC 4E','true',0,0),(73,'Nusantara Satu (PSN-6) / S5 / Beresheet',2019,'Falcon 9','CCAFS SLC 40','true',0,0),(74,'CCtCap Demo Mission 1',2019,'Falcon 9','KSC LC 39A','true',0,0),(75,'CRS-17',2019,'Falcon 9','CCAFS SLC 40','true',0,0),(76,'ArabSat 6A',2019,'Falcon Heavy','KSC LC 39A','true',0,0),(77,'RADARSAT Constellation',2019,'Falcon 9','VAFB SLC 4E','true',0,0),(78,'Starlink v0.9',2019,'Falcon 9','CCAFS SLC 40','true',0,0),(79,'STP-2',2019,'Falcon Heavy','KSC LC 39A','true',0,0),(80,'CRS-18',2019,'Falcon 9','CCAFS SLC 40','true',0,0),(81,'Amos-17',2019,'Falcon 9','CCAFS SLC 40','true',0,0),(82,'Starlink 1',2019,'Falcon 9','CCAFS SLC 40','true',0,0),(83,'CRS-19',2019,'Falcon 9','CCAFS SLC 40','true',0,0),(84,'JCSat 18 / Kacific 1',2019,'Falcon 9','CCAFS SLC 40','true',0,0),(85,'Starlink 2',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(86,'Crew Dragon In Flight Abort Test',2020,'Falcon 9','KSC LC 39A','true',0,0),(87,'Starlink 3',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(88,'Starlink 4',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(89,'CRS-20',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(90,'Starlink 5',2020,'Falcon 9','KSC LC 39A','true',0,0),(91,'Starlink 7',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(92,'Starlink-8 & SkySat 16-18',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(93,'GPS III SV03 (Columbus)',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(94,'ANASIS-II',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(95,'Starlink-9 (v1.0) & BlackSky Global 5-6',2020,'Falcon 9','KSC LC 39A','true',0,0),(96,'Starlink 6',2020,'Falcon 9','KSC LC 39A','true',0,0),(97,'Starlink-10 (v1.0) & SkySat 19-21',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(98,'SAOCOM 1B, GNOMES-1, Tyvak-0172',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(99,'Starlink-12 (v1.0)',2020,'Falcon 9','KSC LC 39A','',0,0),(100,'Starlink-11 (v1.0)',2020,'Falcon 9','KSC LC 39A','true',0,0),(101,'Starlink-13 (v1.0)',2020,'Falcon 9','KSC LC 39A','true',0,0),(102,'Starlink-14 (v1.0)',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(103,'GPS III SV04 (Sacagawea)',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(104,'CCtCap Demo Mission 2',2020,'Falcon 9','KSC LC 39A','true',0,0),(105,'Starlink-15 (v1.0)',2020,'Falcon 9','CCAFS SLC 40','true',0,0),(106,'Sentinel-6 Michael Freilich',2020,'Falcon 9','VAFB SLC 4E','true',0,0),(107,'CRS-21',2020,'Falcon 9','KSC LC 39A','',0,0),(108,'Crew-1',2020,'Falcon 9','KSC LC 39A','true',0,0),(109,'SXM-7',2020,'Falcon 9','CCAFS SLC 40','',0,0);
/*!40000 ALTER TABLE `lanzamientosspacex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miembros`
--

DROP TABLE IF EXISTS `miembros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miembros` (
  `mail` varchar(150) NOT NULL DEFAULT '',
  `ts_alta` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembros`
--

LOCK TABLES `miembros` WRITE;
/*!40000 ALTER TABLE `miembros` DISABLE KEYS */;
INSERT INTO `miembros` VALUES ('angelito@gmail.com','2021-03-08 03:05:28'),('rosalio.cp@gmail.com','2021-03-08 03:05:28'),('sacro86@hotmail.com','2021-03-08 03:40:08'),('yazir.solis@gmail.com','2021-03-08 03:05:02');
/*!40000 ALTER TABLE `miembros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recomendaciones`
--

DROP TABLE IF EXISTS `recomendaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recomendaciones` (
  `mail_miembro` varchar(150) NOT NULL DEFAULT '',
  `mails_recomendados` text DEFAULT NULL,
  `ts_recomendacion` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`mail_miembro`),
  CONSTRAINT `fk_miembros` FOREIGN KEY (`mail_miembro`) REFERENCES `miembros` (`mail`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recomendaciones`
--

LOCK TABLES `recomendaciones` WRITE;
/*!40000 ALTER TABLE `recomendaciones` DISABLE KEYS */;
INSERT INTO `recomendaciones` VALUES ('angelito@gmail.com','amigo7@gmail.com,amigo8@hotmail.com,amigo9@yahoo.com','2021-03-08 03:39:52'),('rosalio.cp@gmail.com','amigo4@gmail.com,amigo5@hotmail.com,amigo6@yahoo.com','2021-03-08 03:07:28'),('yazir.solis@gmail.com','amigo1@gmail.com,amigo2@hotmail.com,amigo3@yahoo.com','2020-03-08 03:06:55');
/*!40000 ALTER TABLE `recomendaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-04 20:05:28
