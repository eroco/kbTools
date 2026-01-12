-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: kbTools
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
-- Table structure for table `months`
--

DROP TABLE IF EXISTS `months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `months` (
  `id_month` int(11) NOT NULL,
  `pos_month` char(2) NOT NULL,
  `name_month` varchar(10) NOT NULL,
  UNIQUE KEY `pk_id_month` (`id_month`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `months`
--

LOCK TABLES `months` WRITE;
/*!40000 ALTER TABLE `months` DISABLE KEYS */;
INSERT INTO `months` VALUES
(1,'01','Jan'),
(2,'01','January'),
(3,'02','Feb'),
(4,'02','February'),
(5,'03','Mar'),
(6,'03','March'),
(7,'04','Apr'),
(8,'04','April'),
(9,'05','May'),
(10,'05','Mayo'),
(11,'06','Jun'),
(12,'06','June'),
(13,'07','Jul'),
(14,'07','July'),
(15,'08','Aug'),
(16,'08','August'),
(17,'09','Sep'),
(18,'09','September'),
(19,'10','Oct'),
(20,'10','October'),
(21,'11','Nov'),
(22,'11','November'),
(23,'12','Dec'),
(24,'12','December');
/*!40000 ALTER TABLE `months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music` (
  `id_music` int(11) NOT NULL,
  `ext_music` varchar(10) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  UNIQUE KEY `pk_id_music` (`id_music`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES
(1,'MP3'),
(2,'FLAC');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id_tag` int(11) NOT NULL,
  `input_tag` varchar(128) NOT NULL,
  `output_tag` varchar(128) NOT NULL,
  UNIQUE KEY `pk_id_tag` (`id_tag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES
(1,'_',' '),
(2,'.sanet.st',''),
(3,'sanet.st.',''),
(4,'sanet.st ',''),
(5,'.Sanet.st',''),
(6,'Sanet.st.',''),
(7,'-Sanet.st',''),
(8,'Sanet.st ',''),
(9,'sanet.st-',''),
(10,'-sanet.st',''),
(11,'.sanet',''),
(12,'sanet st ',''),
(13,'Sanet st ',''),
(14,'SAnet st ',''),
(15,' sanet',''),
(16,'Sanet ST ',''),
(17,'SaNet st ',''),
(18,'SANET ST ',''),
(19,'sanet st-',''),
(20,'SAnet st-',''),
(21,' SANET',''),
(22,' Sanet',''),
(23,'-sanet',''),
(24,'Sanet.st',''),
(25,'SANET ST-',''),
(26,'sanet st',''),
(27,'sanet.st_',''),
(28,'sanet',''),
(29,'SaNet.st ',''),
(30,'Sanet st',''),
(31,' sAnET',''),
(32,'Various Artists','VA'),
(33,'various artists','VA'),
(34,'SANET.ST',''),
(35,'movieddl.me ',''),
(36,' SAnet',''),
(37,' SaNet',''),
(38,'downtopc com ',''),
(39,'SAnet.cd - ',''),
(40,'Sanet.ws ',''),
(41,'SAnet.st.',''),
(42,'Sanet St ',''),
(43,'-SANET',''),
(44,'Various Artists','VA'),
(45,'sanet.st',''),
(46,'Various Artists','VA'),
(47,'SaNet.st_',''),
(48,' softarchive.is',''),
(49,'Sanet.me',''),
(50,'Sanet me',''),
(51,'SAnet.cd',''),
(52,'SANET',''),
(53,'Sanet.st_','');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
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
