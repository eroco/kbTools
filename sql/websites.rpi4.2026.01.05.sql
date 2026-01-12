-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: websites
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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `desc_categoria` varchar(20) NOT NULL,
  `vigencia_categoria` tinyint(1) NOT NULL DEFAULT 1,
  `fecha_creacion_categoria` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES
(1,'Favoritos',1,'2019-05-28'),
(2,'Raspberry Pi',1,'2019-05-28'),
(3,'Subtitles',1,'2019-05-28'),
(4,'Movies',1,'2019-05-28'),
(5,'Warez',1,'2019-05-28'),
(6,'Hardware Store',1,'2019-05-29'),
(7,'Linux',1,'2019-05-29'),
(8,'Design',1,'2019-05-29'),
(9,'WebMail',1,'2019-05-29'),
(10,'Anime',1,'2019-05-30'),
(11,'eBook',1,'2019-05-30'),
(12,'Games',1,'2019-05-30'),
(13,'News and Papers',1,'2019-05-30'),
(14,'Sports',1,'2019-05-30'),
(15,'CD-DVD-BD Covers',1,'2019-05-30'),
(16,'Social Networks',1,'2019-05-30'),
(17,'eComerce',1,'2019-05-30'),
(18,'Comics',1,'2019-05-30'),
(19,'Fitness',1,'2019-05-30'),
(21,'Astronomy',1,'2019-05-30'),
(22,'DIY',1,'2019-05-30'),
(23,'Web Development',1,'2019-05-30'),
(24,'Streaming',1,'2021-07-11'),
(25,'Agiles',1,'2022-02-15'),
(26,'Virtual Machine',1,'2022-10-31'),
(27,'Apple macOS',1,'2022-10-31'),
(28,'Music',1,'2025-03-09');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weblist`
--

DROP TABLE IF EXISTS `weblist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weblist` (
  `id_weblist` int(11) NOT NULL,
  `desc_weblist` varchar(40) NOT NULL,
  `url_weblist` varchar(65) NOT NULL,
  `favorito_weblist` tinyint(1) NOT NULL,
  `vigencia_weblist` tinyint(4) DEFAULT NULL,
  `fecha_creacion_weblist` date NOT NULL,
  `id_categoria_weblist` int(11) NOT NULL,
  PRIMARY KEY (`id_weblist`),
  UNIQUE KEY `id_weblist_UNIQUE` (`id_weblist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weblist`
--

LOCK TABLES `weblist` WRITE;
/*!40000 ALTER TABLE `weblist` DISABLE KEYS */;
INSERT INTO `weblist` VALUES
(1,'Raspberry Pi','http://www.raspberrypi.org',0,1,'2019-06-06',2),
(2,'PiWeekly','https://www.raspberrypi.org/weekly/',0,1,'2019-06-06',2),
(3,'Raspbian','http://raspbian.org/',0,1,'2019-06-06',2),
(4,'Pidora','http://pidora.ca/',0,1,'2019-06-06',2),
(5,'RaspBMC','http://www.raspbmc.com/',0,1,'2019-06-06',2),
(6,'Openelec','http://www.openelec.tv',0,1,'2019-06-06',2),
(7,'RISC OS','https://www.riscosopen.org/',0,1,'2019-06-06',2),
(8,'RasPI.TV','http://raspi.tv/',0,1,'2019-06-06',2),
(9,'MagPi','https://www.raspberrypi.org/magpi/',0,1,'2019-06-06',2),
(10,'HackSpace Magazine','https://hackspace.raspberrypi.org/issues',0,1,'2019-06-06',2),
(11,'WireFrame Magazine','https://wireframe.raspberrypi.org/issues',0,1,'2019-06-06',2),
(12,'SubDivx','https://www.subdivx.com/',0,1,'2019-06-06',3),
(13,'Tusubtitulo.com','http://www.tusubtitulo.com',0,1,'2019-06-06',3),
(14,'Internet Movie Database','http://www.imdb.com',0,1,'2019-06-06',4),
(15,'Rotten Tomatoes','http://www.rottentomatoes.com',0,1,'2019-06-06',4),
(16,'TheTVDB','http://thetvdb.com',0,1,'2019-06-06',4),
(17,'sanet','http://sanet.st',0,1,'2019-06-20',5),
(18,'Hackstore','http://hackstore.net/',0,1,'2019-06-20',5),
(19,'ADIT-HD','http://www.adit-hd.com/',0,1,'2019-06-20',5),
(20,'myDDL','http://myddl.me',0,1,'2019-06-21',5),
(21,'GMail','http://www.gmail.com/',0,1,'2019-06-21',9),
(22,'Hotmail','http://www.outlook.com/',0,1,'2019-06-21',9),
(23,'Ubuntu','http://www.ubuntu.com/',0,1,'2019-06-22',7),
(24,'Debian','http://www.debian.org/',0,1,'2019-06-22',7),
(25,'CentOS','http://www.centos.org/',0,1,'2019-06-22',7),
(26,'PHPmyAdmin','http://nas/phpMyAdmin/index.php',0,1,'2019-06-22',1),
(27,'Fedora','http://fedoraproject.org/',0,1,'2019-06-23',7),
(28,'RedHat','http://www.redhat.com/',0,1,'2019-06-23',7),
(29,'WEI','http://www.wei.cl/',0,1,'2019-06-23',6),
(30,'PCFactory','http://www.pcfactory.cl/',0,1,'2019-06-23',6),
(31,'TecnoPicada','http://www.tecnopicada.cl/',0,1,'2019-06-23',6),
(32,'SoloTodo','http://www.solotodo.com/',0,1,'2019-06-23',6),
(33,'Mercado Libre','http://www.mercadolibre.cl/',0,1,'2019-06-23',6),
(34,'Smashing Magazine','http://www.smashingmagazine.com/',0,1,'2019-06-23',8),
(35,'Wikimedia Commons','http://commons.wikimedia.org/wiki/Portada',0,1,'2019-06-24',8),
(36,'TigerDirect','http://www.tigerdirect.com/',0,1,'2019-06-24',6),
(37,'AliExpress','http://cl.aliexpress.com/',0,1,'2019-06-24',6),
(38,'Amazon','http://www.amazon.com/',0,1,'2019-06-24',6),
(39,'BookDll','http://bookdl.com/',0,1,'2019-06-24',11),
(40,'MegaePub','http://www.megaepub.com/',0,0,'2019-06-24',11),
(41,'BluRay','http://www.blu-ray.com/',0,1,'2019-06-24',4),
(42,'Blank Page','about:blank',0,1,'2019-06-24',1),
(43,'DC Comics','http://www.dccomics.com/',0,1,'2019-06-24',18),
(44,'Marvel','http://www.marvel.com/',0,1,'2019-06-24',18),
(45,'Dark Horse','http://www.darkhorse.com/',0,1,'2019-06-24',18),
(46,'GetComics','https://getcomics.info/',0,1,'2019-06-24',18),
(47,'Digital Comic Museum','http://digitalcomicmuseum.com/',0,1,'2019-06-24',18),
(48,'El Mercurio Online','http://www.emol.cl/',0,1,'2019-06-24',13),
(49,'Las Ultimas Noticias','http://www.lun.cl/',0,1,'2019-06-24',13),
(50,'Kali Linux','https://www.kali.org/',0,1,'2019-06-24',7),
(51,'Damn Small Linux','http://www.damnsmalllinux.org/',0,1,'2019-06-24',7),
(52,'LiveCD List','http://www.livecdlist.com/',0,1,'2019-06-24',7),
(53,'Hubble Space Telescope','http://hubblesite.org/',0,1,'2019-06-24',21),
(54,'Amazing Space','http://amazingspace.org/',0,1,'2019-06-24',21),
(55,'Darebee','http://darebee.com/',0,1,'2019-06-24',19),
(56,'Paris','http://www.paris.cl/',0,1,'2019-06-24',17),
(57,'Ripley','http://www.ripley.cl/',0,1,'2019-06-24',17),
(58,'Falabella','http://www.falabella.com/',0,1,'2019-06-24',17),
(59,'Facebook','http://www.facebook.com/',0,1,'2019-06-24',16),
(60,'Twitter','http://www.twitter.com/',0,1,'2019-06-24',16),
(61,'Instagram','http://www.instagram.com/',0,1,'2019-06-24',16),
(62,'Tumblr','http://www.tumblr.com/',0,1,'2019-06-24',16),
(63,'La Tercera','http://www.tercera.cl/',0,1,'2019-06-24',13),
(64,'La Cuarta','http://www.lacuarta.cl/',0,1,'2019-06-24',13),
(65,'La Nacion','http://lanacion.cl/',0,1,'2019-06-24',13),
(66,'La Hora','http://www.lahora.cl/',0,1,'2019-06-24',13),
(67,'La Segunda','http://www.lasegunda.com/',0,1,'2019-06-24',13),
(68,'El Mercurio ValparaÃ­so','http://www.mercuriovalpo.cl/',0,1,'2019-06-24',13),
(69,'La Estrella Valpo','http://www.estrellavalpo.cl/',0,1,'2019-06-24',13),
(70,'NewEgg','http://www.newegg.com/',0,1,'2019-06-24',6),
(71,'Google','http://www.google.cl',0,1,'2019-06-25',1),
(72,'BCI','http://www.bci.cl/',0,0,'2019-06-25',1),
(73,'W3 Schools','http://www.w3schools.com/default.asp',0,1,'2019-06-25',23),
(74,'CSSFontStack Dan\'s Tools','http://www.cssfontstack.com/',0,1,'2019-06-25',23),
(75,'C#2JSON','http://csharp2json.azurewebsites.net/',0,1,'2019-06-25',23),
(76,'JSONLint - The JSON Validator','https://jsonlint.com/',0,1,'2019-06-25',23),
(77,'PHP Code Checker','https://phpcodechecker.com/',0,1,'2019-06-25',23),
(78,'unminify','http://unminify.com/',0,1,'2019-06-25',23),
(79,'Javascript Event KeyCodes','http://keycode.info/',0,1,'2019-06-25',23),
(80,'Amazing TV Shows','http://www.amazingtvshows.info',0,1,'2019-06-25',5),
(81,'Real-Debrid','https://real-debrid.com/',0,1,'2019-06-25',1),
(82,'Youtube','http://www.youtube.com/',0,1,'2019-06-25',1),
(83,'WOM','http://www.wom.cl/',0,1,'2019-06-25',1),
(84,'Is It Down Right Now?','http://www.isitdownrightnow.com/',0,1,'2019-06-25',1),
(85,'Warez-BB','http://www.warez-bb.org/',0,1,'2019-06-25',5),
(86,'Instructables','http://www.instructables.com/',0,1,'2019-06-30',22),
(87,'Makezine','https://makezine.com/',0,1,'2019-07-03',22),
(88,'CoverCaratulas','http://www.covercaratulas.com/',0,1,'2019-07-03',15),
(89,'MovieDDL','http://movieddl.me',0,1,'2019-07-16',5),
(90,'RAID Calculator','http://www.raid-calculator.com/',0,1,'2019-07-17',6),
(91,'WD My Cloud','https://home.mycloud.com/sessions/new',0,1,'2019-08-05',1),
(92,'YouTube','http://www.youtube.com',0,1,'2019-10-07',16),
(93,'DisneyPlus','http://disneyplus.com',1,1,'2021-07-11',24),
(94,'Netflix','http://www.netflix.com',1,1,'2021-07-11',24),
(95,'HBOMax','http://hbomax.com',1,1,'2021-07-11',24),
(96,'DirecTV GO','https://www.directvgo.com',0,1,'2021-07-20',24),
(97,'Swarzycustom','https://www.swarzycustom.com/index.php',0,1,'2021-07-20',15),
(98,'Frozen Layer','http://www.frozen-layer.com/',0,1,'2021-07-20',10),
(99,'AnimeNewsNetwork.com','http://www.animenewsnetwork.com',0,1,'2021-07-21',10),
(100,'Ghibli Wiki','http://www.nausicaa.net/wiki/Main_Page',0,1,'2021-07-21',10),
(101,'animewallpapers.com/','https://www.animewallpapers.com/',0,1,'2021-07-21',10),
(102,'NBA','http://www.nba.com',0,1,'2021-07-24',14),
(103,'NFL','http://nfl.com',0,1,'2021-07-24',14),
(104,'WRC','http://www.wrc.com',0,1,'2021-07-24',14),
(105,'MotoGP','http://www.motogp.com',0,1,'2021-07-24',14),
(106,'Formula 1','http://www.formula1.com',0,1,'2021-07-24',14),
(107,'Formula E','https://www.fiaformulae.com/',0,1,'2021-07-24',14),
(108,'TVNPlay','https://tvnplay.cl/',0,1,'2021-07-25',24),
(109,'CoverCentury','https://www.covercentury.com/',0,1,'2021-07-25',15),
(110,'Caratulas de CD','http://caratulasdecd.blogspot.com/',0,1,'2021-07-25',15),
(111,'ANFP','https://www.anfp.cl/',0,1,'2021-07-29',14),
(112,'SubtitleCat','https://www.subtitlecat.com/',0,1,'2021-08-05',3),
(113,'NAS','http://nas/',0,1,'2021-08-05',1),
(114,'CodeProject','https://www.codeproject.com/',0,1,'2021-08-08',23),
(115,'AllDebrid','http://alldebrid.com',0,1,'2021-08-11',1),
(116,'ILovePDF','https://www.ilovepdf.com/',0,1,'2021-09-03',23),
(117,'DistroWatch','https://distrowatch.com/',0,1,'2021-09-09',7),
(118,'BuscaLibre','https://www.buscalibre.cl/',0,1,'2021-10-15',6),
(119,'FaviCon Generator','https://www.favicon-generator.org/',0,1,'2021-10-25',23),
(120,'XML Formatter','https://jsonformatter.org/xml-formatter',0,1,'2021-10-26',23),
(121,'EML 2 MSG','https://www.aconvert.com/document/eml-to-msg/',0,1,'2021-10-26',23),
(122,'HTML Validator','https://jsonformatter.org/html-validator',0,1,'2021-11-03',23),
(123,'Fernapet','https://www.fernapet.cl/',0,1,'2021-12-17',17),
(124,'Star+','https://www.starplus.com',0,1,'2021-12-21',24),
(125,'Cheatgraphy','https://cheatography.com/',0,1,'2021-12-24',23),
(126,'Webb Space Telescope','https://webbtelescope.org/',0,1,'2021-12-27',21),
(127,'MagnetDL','https://www.magnetdl.com/',0,1,'2022-01-09',5),
(128,'RARBG','https://rarbgcore.org/torrents.php',0,1,'2022-01-10',5),
(129,'ASCII Table','https://www.asciitable.com/',0,1,'2022-01-19',23),
(130,'BancoEstado','https://www.bancoestado.cl/',0,1,'2022-01-25',1),
(131,'Subscene','https://subscene.com/',0,1,'2022-02-08',3),
(132,'Phoronix','https://www.phoronix.com/',0,1,'2022-02-11',7),
(133,'Agile Manifest','https://agilemanifesto.org/',0,1,'2022-02-15',25),
(134,'Scrum Alliance','https://www.scrumalliance.org/',0,1,'2022-02-15',25),
(135,'Amazon Prime Video','https://www.primevideo.com/?_encoding=UTF8&language=es_ES',0,1,'2022-03-03',24),
(136,'TinyWOW','https://tinywow.com/',0,1,'2022-04-20',23),
(137,'MercadoLibre','https://www.mercadolibre.cl/',0,1,'2022-04-29',17),
(138,'OMG! Ubuntu','https://www.omgubuntu.co.uk/',0,1,'2022-05-17',7),
(139,'Raspberry Pi Seller Locator','https://rpilocator.com/',0,1,'2022-08-24',2),
(140,'DuckDNS','https://www.duckdns.org/',0,1,'2022-09-06',1),
(141,'DuckDNS Kenpo','http://kenpo.duckdns.org/',0,1,'2022-09-06',1),
(142,'Linux Images','https://www.linuxvmimages.com/',0,1,'2022-09-13',7),
(143,'The Numbers','https://www.the-numbers.com/',0,1,'2022-10-31',4),
(144,'TheMovieDataBase','https://www.themoviedb.org/',0,1,'2022-10-31',4),
(145,'Virtual Box','https://www.virtualbox.org/',0,1,'2022-10-31',26),
(146,'VMWare','https://www.vmware.com/',0,1,'2022-10-31',26),
(147,'InsanelyMac','https://www.insanelymac.com/',0,1,'2022-10-31',27),
(148,'Apple','https://www.apple.com/',0,1,'2022-10-31',27),
(149,'PlayStation','https://www.playstation.com/es-cl/',0,1,'2022-11-23',12),
(150,'TinyWOW','https://tinywow.com',0,1,'2023-06-02',23),
(151,'GitHub','https://github.com/',0,1,'2023-07-26',1),
(152,'Apple TV+','https://tv.apple.com/',0,1,'2023-09-20',24),
(153,'ePubLibre','https://epublibre.org/inicio/index',0,1,'2023-09-29',11),
(154,'Sci-Hub','https://www.sci-hub.se/',0,1,'2023-09-29',11),
(155,'Disk Price ','https://diskprices.com/?locale=us',0,1,'2023-12-24',6),
(156,'CineMapper','https://cinemapper.com/',0,1,'2024-01-03',4),
(157,'Markdown Cheatsheet','https://github.com/lifeparticle/Markdown-Cheatsheet',0,1,'2024-04-04',23),
(158,'Markdown Cheat Sheet','https://www.markdownguide.org/cheat-sheet/',0,1,'2024-04-04',23),
(159,'Markdown Cheatsheet','https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet',0,1,'2024-04-04',23),
(160,'Vertex42 - Excel in Everything','https://www.vertex42.com/',0,1,'2024-05-29',23),
(161,'FlatIcon','https://www.flaticon.com/',0,1,'2024-08-29',23),
(162,'TV Series Subtitles','https://www.tvsubtitles.net/',0,1,'2024-11-12',3),
(163,'eBay','www.ebay.com',0,1,'2025-02-16',6),
(164,'Spotify','http://www.spotify.com',0,1,'2025-03-09',28),
(165,'YIFY Subtitles','https://yifysubtitles.ch/',0,1,'2025-03-14',3),
(166,'YTS','https://yts.mx/',0,1,'2025-03-14',5),
(167,'Macworld Magazine','https://www.macworld.com/',0,1,'2025-06-17',27),
(168,'RAID Calculator','https://www.raid-calculator.com/Default.aspx',0,1,'2025-08-09',23),
(169,'Placas Chinas','https://placaschinas.com/',0,1,'2025-09-08',6),
(170,'MajorGeek','https://www.majorgeeks.com/',0,1,'2025-12-08',7),
(171,'C# Corner','https://www.c-sharpcorner.com/',0,1,'2025-12-15',23);
/*!40000 ALTER TABLE `weblist` ENABLE KEYS */;
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
