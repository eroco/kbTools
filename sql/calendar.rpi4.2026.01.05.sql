-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: calendar
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB-1+rpi1

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
-- Table structure for table `tb_calendar`
--

DROP TABLE IF EXISTS `tb_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_calendar` (
  `id_cal` int(11) NOT NULL AUTO_INCREMENT,
  `title_cal` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `description_cal` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `start_cal` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `end_cal` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `url_cal` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `color_cal` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `textColor_cal` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `vigencia_cal` int(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_cal`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_calendar`
--

LOCK TABLES `tb_calendar` WRITE;
/*!40000 ALTER TABLE `tb_calendar` DISABLE KEYS */;
INSERT INTO `tb_calendar` VALUES
(1,'Mi Cumpleaños','Mi cumpleaños numero 56','2021-08-04',NULL,NULL,'#B80626','#FFFFFF',1),
(2,'Evento Fin Mes','Evento Fin de Mes de Abril 2021','2021-04-30',NULL,NULL,'#3A87AD','#FFFFFF',0),
(3,'Prueba de Agenda','Prueba de Agenda','2021-04-07',NULL,NULL,'#3A87AD','#FFFFFF',0),
(4,'Cumpleaños Isabella','Cumeplaños 12 de Isabella','2021-11-27',NULL,NULL,'#00FF00','#FFFFFF',1),
(5,'Afeitarse','Afeitarse','2021-04-06',NULL,NULL,'#3A87AD','#FFFFFF',0),
(6,'Almorzar','Almorzar','2021-04-06T14:30:00',NULL,NULL,'#3A87AD','#FFFFFF',0),
(7,'Once','Once','2021-04-06T20:00:00','2021-04-06T20:30:00',NULL,'#3A87AD','#FFFFFF',0),
(8,'Sobremesa','Sobremesa','2021-04-06T15:30:00',NULL,NULL,'#3A87AD','#FFFFFF',0),
(9,'Test','Test Delete','2021-04-01',NULL,NULL,'#34EBBA','#FFFFFF',0),
(10,'','','',NULL,NULL,'','',0),
(11,'','','',NULL,NULL,'','',0),
(12,'Cargar Bateria MiBand','Cargar Bateria MiBand','2021-04-08',NULL,NULL,'#FF0000','#FFFFFF',1),
(13,'The Falcon and The Winter Soldier','The Falcon and The Winter Soldier Cap 04','2021-04-09',NULL,NULL,'#22B14B','#FFFFFF',1),
(14,'The Falcon and The Winter Soldier','The Falcon and The Winter Soldier Cap 05','2021-04-16',NULL,NULL,'#22B14B','#FFFFFF',1),
(15,'The Falcon and The Winter Soldier','The Falcon and The Winter Soldier Cap 06','2021-04-23',NULL,NULL,'#22B14B','#FFFFFF',1),
(16,'Partido Inter ','Partido Inter - Cagliari','2021-04-11T06:00:00',NULL,NULL,'#000000','#FFFFFF',1),
(17,'Clase Kenpo','Clases de Kenpo con Maestro Garay','2021-04-10T18:00:00','2021-04-10T19:30:00',NULL,'#B87957','#FFFFFF',1),
(18,'Comics','Marvel, DC , Image & Indi.','2021-04-07',NULL,NULL,'#00A1E7','#FFFFFF',1),
(19,'Comics','Marvel, DC , Image & Indi.','2021-03-31',NULL,NULL,'#00A1E7','#FFFFFF',1),
(20,'Comics','Marvel, DC , Image & Indi.','2021-03-24',NULL,NULL,'#00A1E7','#FFFFFF',1),
(21,'Comics','Marvel, DC , Image & Indi.','2021-03-17',NULL,NULL,'#00A1E7','#FFFFFF',1),
(22,'Comics','Marvel, DC , Image & Indi.','2021-03-10',NULL,NULL,'#00A1E7','#FFFFFF',1),
(23,'Comics','Marvel, DC , Image & Indi.','2021-03-03',NULL,NULL,'#00A1E7','#FFFFFF',1),
(24,'Clase Kenpo','Clases de Kenpo con Maestro Garay','2021-04-17T18:00:00',NULL,NULL,'#B87957','#FFFFFF',1),
(25,'Comics','Marvel, DC , Image & Indi.','2021-02-24',NULL,NULL,'#00A1E7','#FFFFFF',1),
(26,'Comics','Marvel, DC , Image & Indi.','2021-02-17',NULL,NULL,'#00A1E7','#FFFFFF',1),
(27,'Comics','Marvel, DC , Image & Indi.','2021-02-10',NULL,NULL,'#00A1E7','#FFFFFF',1),
(28,'La Roja Femenina','Chile vs Camerun','2021-04-13T12:00:00',NULL,NULL,'#000000','#FFFFFF',1),
(29,'Vacuna Sinovac','Segunda Dosis de Vacuna Sinovac','2021-04-27',NULL,NULL,'#EC1C23','#FFFFFF',1),
(30,'Vacuna Sinovac','Primera Dosis Vacuna Sinovac','2021-03-30',NULL,NULL,'#EC1C23','#FFFFFF',1),
(31,'Dia del Trabajo','Dia Internacional del Trabajo','2021-05-01',NULL,NULL,'#000000','#FFFFFF',1),
(32,'21 de Mayo','Combate Naval de Iquique','2021-05-21',NULL,NULL,'#000000','#FFFFFF',1),
(33,'Debris','Season 01 Episode 07 - You Can Call Her Caroline','2021-04-12',NULL,NULL,'#7D7D7D','#FFFFFF',1),
(34,'Debris','Season 01 Episode 08 - Spaceman','2021-04-19',NULL,NULL,'#7D7D7D','#FFFFFF',1),
(35,'Partido Inter ','Napoli vs Inter','2021-04-18T14:30:00',NULL,NULL,'#000000','#FFFFFF',1),
(36,'The Falcon and The Winter Soldier','The Falcon and The Winter Soldier Cap 06','2021-04-24',NULL,NULL,'#22B14B','#FFFFFF',0),
(37,'Cargar Bateria MiBand','Cargar Bateria MiBand','2021-04-22',NULL,NULL,'#EC1C23','#FFFFFF',1),
(38,'Reunion','Marvel, DC , Image & Indi.','2021-04-28',NULL,NULL,'#EC1C23','#000000',0),
(39,'Clase Kenpo','Clases de Kenpo con Maestro Garay','2021-04-24',NULL,NULL,'#B87957','#FFFFFF',1),
(40,'3er Retiro 10%','3er Retiro 10% desde la AFP','2021-05-03',NULL,NULL,'#EC1C23','#FFFFFF',1),
(41,'Cargar Bateria MiBand','Cargar Bateria MiBand','2021-05-06',NULL,NULL,'#3A87AD','#FFFFFF',1),
(42,'Deposito 3er Retiro','Deposito 3er Retiro','2021-05-07',NULL,NULL,'#EC1C23','#FFFFFF',1),
(43,'Deposito 3er Retiro','Deposito 3er Retiro','2021-05-07',NULL,NULL,'#EC1C23','#FFFFFF',0),
(44,'Cargar Bateria MiBand','Cargar Bateria MiBand','2021-05-20',NULL,NULL,'#EC1C23','#FFFFFF',1);
/*!40000 ALTER TABLE `tb_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user_user` varchar(12) NOT NULL,
  `pass_user` varchar(24) NOT NULL,
  `vigencia_user` int(11) NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `user_user` (`user_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES
(1,'eugenio','/VYFn09V4zwOneHT0FNxiA==',1),
(2,'pamela','/VYFn09V4zwOneHT0FNxiA==',1);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-05  1:00:01
