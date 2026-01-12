-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: kenpo
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
-- Table structure for table `Ataques`
--

DROP TABLE IF EXISTS `Ataques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ataques` (
  `IdAtaques` int(10) NOT NULL,
  `DescAtaques` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `VegenciaAtaques` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Tipos de Ataques';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ataques`
--

LOCK TABLES `Ataques` WRITE;
/*!40000 ALTER TABLE `Ataques` DISABLE KEYS */;
INSERT INTO `Ataques` VALUES
(1,'FRONT Toma Solapa Mano derecha',1),
(2,'FRONT Empujón Dos Manos',1),
(3,'FRONT Puñetazo circular izquierdo',1),
(4,'FRONT Patada Frontal Penetrante',1),
(5,'REAR Abrazo de Oso brazos atrapados',1),
(6,'LEFT FLANK Llave a la Cabeza Brazo Derecho',1),
(7,'FRONT Ataque con Palo sobre la cabeza Paso derecho',1),
(8,'FRONT Toma Solapa con Dos Manos (tirando)',1),
(9,'FRONT puñetazo derecha ',1),
(10,'RIGHT FLANK Toma Hombro con Mano Izquierda',1),
(11,'FRONT Toma Pelo Mano izquierda',1),
(12,'FRONT Empujón Directo Mano Derecha',1),
(13,'FRONT puñetazo Paso Derecho',1),
(14,'FRONT Patada Frontal Derecha',1),
(15,'FRONT Saludo de mano',1),
(16,'FRONT Toma Cabeza',1),
(17,'FRONT Toma Solapa Mazo Izquierda',1),
(18,'FRONT Puñetazo Cruzado Mano Derecha',1),
(19,'FRONT Puñetazo Derecho Circular',1),
(20,'FRONT Patada Frontal Pie Izquierdo',1),
(21,'REAR Tomada Nelson (intento)',1),
(22,'LEFT FLANK Tomada Cabeza Brazo Derecho',1),
(23,'FRONT Toma de Mano Derecha Cruzada',1),
(24,'FRONT Empujón Directo Mano Izquierda',1),
(25,'FRONT Puñetazo Circular Izquierdo',1),
(26,'FRONT Abrazo de Oso con brazos libres',1),
(27,'REAR Toma de Martillo Brazo Derecho',1),
(28,'FRONT Puñetazo con Paso Izquierdo',1),
(29,'FRONT Abrazo Posterior con brazos atrapados',1),
(30,'FRONT Toma Exterior Muñeca',1),
(31,'RIGHT REAR FLANK Toma Hombro Mano Izquierda',1),
(32,'FRONT Uppercut Derecho',1),
(33,'REAR Abrazo Posterior con brazos libres',1),
(34,'REAR Toma Hombros con dos Manos y Brazos Rígidos',1),
(35,'FRONT Puñetazo Directo Mano Izquierda',1),
(36,'FRONT Puñetazo con Paso Derecho',1),
(37,'FRONT Patada Circular Derecha',1),
(38,'RIGHT FLANK Toma Dedos Mano Izquierda',1),
(39,'FRONT Tacle',1),
(40,'FRONT Puñetazo con Paso Derecho',1),
(41,'REAR Abrazo de Oso con brazos atrapados',1),
(42,'REAR Estrangulación dos manos',1),
(43,'FRONT Ataque Circular Derecho con Bastón',1),
(44,'FRONT Toma Muñeca Derecha con dos manos',1),
(45,'FRONT Bloquear las Muñecas hacia Abajo',1),
(46,'FRONT Golpe de Bastón sobre la cabeza con paso derecho',1),
(47,'FRONT Agarre Solapa Dos manos',1),
(48,'FRONT Puñetazo con Paso derecho',1),
(49,'REAR Abrazo de Oso con Brazos Libres',1),
(50,'REAR Toma Martillo Brazo Derecho',1),
(51,'FRONT Toma Directa Muñecas Dos Manos',1),
(52,'FRONT Patada Lateral con Paso Derecho',1),
(53,'REAR Nelson Completa',1),
(54,'FRONT Llave Brazo Doblado Externo',1),
(55,'FRONT Ataque con Bastón Circular Derecho',1),
(56,'FRONT Agarre Solapa con Dos Manos (Tirando)',1),
(57,'FRONT Empujón Dos Manos',1),
(58,'FRONT Patada Frontal Derecha',1),
(59,'FRONT Combinación de Ataque de Bastón hacia dentro y hacia afuera',1),
(60,'REAR Toma Muñecas con Dos Manos',1),
(61,'FRONT Saludo de Mano',1),
(62,'REAR Llave con Dos Brazos',1),
(63,'FRONT Toma de Muñecas Izquierda',1),
(64,'FRONT Puñetazo con Paso Derecho',1),
(65,'FRONT Estrangulación Dos Manos Tirando',1),
(66,'FRONT Tacle',1),
(67,'FRONT Patada Circular Derecha',1),
(68,'RIGHT FLANK Ataque Bastón sobre la Cabeza con Paso Derecho',1),
(69,'REAR Toma Cinturón Mano Izquierda',1),
(70,'REAR Empujón Dos Manos',1),
(71,'FRONT Puñetazo sobre la cabeza con Paso Derecho',1),
(72,'FRONT Estrangulación Dos manos',1),
(73,'FRONT Ataque Bastón Sobre la Cabeza con Paso Derecho',1),
(74,'FRONT Toma Solapa Izquierda (Brazos Tiesos)',1),
(75,'RIGHT FLANK Ataque Bastón  Circular Derecho',1),
(76,'RIGHT FLANK Puñetazo con Paso Derecho',1),
(77,'FRONT Golpe Bastón Derecho',1),
(78,'FRONT Uppercut Izquierdo',1),
(79,'FRONT Agarrón Muñeca Izquierda con Mano Derecha',1),
(80,'REAR Puñetazo con Paso Derecho',1),
(81,'FRONT Combinación Puñetazo Izquierdo y Derecho',1),
(82,'FRONT Combinación de Ataque Patada Frontal Derecha y Posterior Izquierda',1),
(83,'FLANK Toma Hombro Derecho e Izquierdo',1),
(84,'FRONT Puñetazo Derecho REAR Abrazo Oso Brazos Libre',1),
(85,'FRONT Ataque Cuchillo Sobre la Cabeza con Paso Derecho',1),
(86,'FRONT Agarre Muñeca Directo con Dos Manos',1),
(87,'FRONT Puñetazo con Paso Derecho',1),
(88,'FRONT Combinación Patada Frontal Baja Derecha y Patada Circular Alta Derecha',1),
(89,'FLANK Toma de Hombre y Brazo Derecho e Izquierdo',1),
(90,'FRONT Puñetazo Derecho REAR Puñetazo Derecho',1),
(91,'FRONT Punzazo Cuchillo Derecho',1),
(92,'FRONT Mano Derecha Tomando al Hombro Derecho',1),
(93,'LEFT FLANK Puñetazo con Paso Derecho',1),
(94,'FRONT Toma Derecha a Su Solapa Izquierda REAR Toma Brazo Derecho',1),
(95,'FRONT Puñetazo derecho REAR Intento',1),
(96,'FRONT Punzazo Cuchillo con Paso Derecho',1),
(97,'FRONT Agarre Solapa Dos Manos',1),
(98,'FLANK Tomas Hombros Izquierdo y Derecho',1),
(99,'FRONT Agarre Solapa Mano Derecha',1),
(100,'FRONT Empujón Bajo Dos Manos',1),
(101,'FRONT Patada con Paso Derecho',1),
(102,'FRONT Combinación Patada Frontal Derecha y Puñetazo Derecho',1),
(103,'FLANK Agarre Hombros Izquierdo y Derecho',1),
(104,'FRONT Puñetazo Derecho REAR Agarre Izquierdo al Hombro Derecho',1),
(105,'RIGHT FLANK Ataque Bastón Sobre la Cabeza Derecho',1),
(106,'FRONT Empujón frontal Dos Manos y Seguido por un Puñetazo Derecho',1),
(107,'FRONT Patada Circular derecha',1),
(108,'FRONT Combinación patada Circular Izquierda y Puñetazo Izquierdo',1),
(109,'FRONT Puñetazo Derecho REAR Abrazo de Oso Brazos Atrapados',1),
(110,'FRONT Punzazo Derecho con Bastón',1),
(111,'RIGHT REAR FLANK Puñetazo con paso Izquierdo',1),
(112,'FRONT Combinación Patada Frontal Derecha Puñetazo Derecho',1),
(113,'FRONT Punzazo Frontal con paso derecho (Brazos Arriba)',1),
(114,'LEFT REAR FLANK Puñetazo con paso derecho',1),
(115,'FRONT Pistola contra el Pecho con mano derecha',1),
(116,'FRONT Uppercut con paso derecho',1),
(117,'FRONT Pistola contra la Espalda con mano derecha',1);
/*!40000 ALTER TABLE `Ataques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Defensas`
--

DROP TABLE IF EXISTS `Defensas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Defensas` (
  `IdDefensas` int(10) NOT NULL,
  `NombreDefensas` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `idGrado` int(10) NOT NULL,
  `IdAtaques` int(10) NOT NULL,
  `IdWeb` int(10) NOT NULL,
  `IdUbicacion` int(10) NOT NULL,
  `IdRelacion` int(10) NOT NULL,
  `Direccion` int(10) NOT NULL,
  `IdForma` int(10) NOT NULL,
  `URLVideo` varchar(128) DEFAULT NULL,
  `Extension` tinyint(4) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Defensas`
--

LOCK TABLES `Defensas` WRITE;
/*!40000 ALTER TABLE `Defensas` DISABLE KEYS */;
INSERT INTO `Defensas` VALUES
(1,'Delayed Sword',1,1,1,1,1,1,1,'/kenpo/video/1.DelayedSword.mp4',0),
(2,'Alternating Maces',1,2,2,2,1,1,1,NULL,0),
(3,'Sword of Destruction',1,3,3,18,2,1,1,NULL,0),
(4,'Deflecting Hammer',1,4,4,3,1,1,1,NULL,0),
(5,'Captured Twigs',1,5,5,18,1,2,1,NULL,0),
(6,'The Grasp of Death',1,6,6,3,1,3,1,NULL,0),
(7,'Checking the Storm',1,7,7,18,3,1,1,NULL,0),
(8,'Mace of Aggression',1,8,1,4,1,1,1,NULL,0),
(9,'Attacking Mace',1,9,3,3,3,1,1,NULL,0),
(10,'Sword and Hammer',1,10,1,5,2,4,1,NULL,0),
(11,'Clutching Feathers',2,11,1,5,2,1,1,NULL,1),
(12,'Triggered Salute',2,12,2,18,1,1,1,NULL,1),
(13,'Dance of Death',2,13,3,3,3,1,2,NULL,1),
(14,'Thrusting Salute',2,14,4,18,3,1,1,NULL,1),
(15,'Gift of Destruction',2,15,1,6,1,1,1,NULL,1),
(16,'Locking Horns',2,16,6,18,1,1,1,NULL,1),
(17,'Lone Kimono',2,17,1,7,2,1,1,NULL,1),
(18,'Glancing Salute',2,18,3,3,3,1,1,NULL,1),
(19,'Five Sword',2,19,3,18,1,1,3,NULL,1),
(20,'Buckling Branch',2,20,4,3,3,1,1,NULL,1),
(21,'Scraping Hoof',2,21,5,18,4,2,4,NULL,1),
(22,'Grip of Death',2,22,6,6,1,3,6,NULL,1),
(23,'Crossing Talon',2,23,5,6,3,1,4,NULL,1),
(24,'Repeating Mace',2,24,2,3,2,1,1,NULL,1),
(25,'Shielding Hammer',2,25,3,18,2,1,1,NULL,1),
(26,'Strinking Serpent\'s Head',2,26,5,18,3,1,6,NULL,1),
(27,'Locked Wing',2,27,6,3,5,2,6,NULL,1),
(28,'Obscure Wing',2,10,5,5,2,4,1,NULL,1),
(29,'Reversing Mace',2,28,3,3,2,1,1,NULL,1),
(30,'Thrusting Prongs',2,29,5,18,5,1,1,NULL,1),
(31,'Twisted Twig',2,30,6,18,1,1,1,NULL,1),
(32,'Obscure Sword',2,31,5,5,2,5,1,NULL,1),
(33,'Raining Claw',2,32,3,2,1,1,1,NULL,1),
(34,'Crashing Wings',2,33,5,18,5,2,4,NULL,1),
(35,'Twirling Wings',3,34,5,7,5,2,6,NULL,1),
(36,'Snapping Twig',3,35,3,18,2,1,1,NULL,1),
(37,'Leaping Crane',3,36,3,3,2,1,2,NULL,1),
(38,'Swinging Pendulum',3,37,4,18,1,1,1,NULL,1),
(39,'Crushing Hammer',3,5,1,18,2,2,1,NULL,1),
(40,'Captured Leaves',3,38,6,3,2,4,1,NULL,1),
(41,'Evading The Storm',3,7,7,3,3,1,1,NULL,1),
(42,'Charging Ram',3,39,1,7,4,1,1,NULL,1),
(43,'Parting Wings',3,2,2,18,6,1,7,NULL,1),
(44,'Thundering Hammers',3,40,3,3,3,1,3,NULL,1),
(45,'Squeezing the Peach',3,41,5,18,5,2,1,NULL,1),
(46,'Circling Wing',3,42,8,3,2,2,6,NULL,1),
(47,'Calming the Storm',3,43,7,18,1,1,1,NULL,1),
(48,'Darting Mace',3,44,5,8,5,1,1,NULL,1),
(49,'Hooking Wings',3,2,2,18,4,1,1,NULL,1),
(50,'Shield and Sword',3,28,3,3,2,1,1,NULL,1),
(51,'Gift in Return',3,15,5,6,1,1,1,NULL,1),
(52,'Bow of Compulsion',3,45,6,18,4,1,1,NULL,1),
(53,'Obstructing the Storm',3,46,7,9,3,1,1,NULL,1),
(54,'Twin Kimono',3,47,5,7,2,1,1,NULL,1),
(55,'Sleeper',3,48,3,3,3,1,2,NULL,1),
(56,'Spiraling Twig',3,49,5,18,5,2,1,NULL,1),
(57,'Cross of Destruction',3,42,8,18,1,2,1,NULL,1),
(58,'Flight to Freedom',3,50,6,3,5,2,1,NULL,1),
(59,'Begging Hands',4,51,5,10,4,1,1,NULL,1),
(60,'Thrusting Wedge',4,2,2,18,1,1,7,NULL,1),
(61,'Flashing Wings',4,36,3,3,3,1,3,NULL,1),
(62,'Hugging Pendulum',4,52,4,3,1,1,1,NULL,1),
(63,'Repeated Devastation',4,53,5,18,4,2,7,NULL,1),
(64,'Entangled Wing',4,54,6,3,4,1,1,NULL,1),
(65,'Defying the Storm',4,55,7,18,1,1,1,NULL,1),
(66,'Raking Mace',4,56,5,11,4,1,1,NULL,1),
(67,'Snaking Talon',4,57,2,3,4,1,3,NULL,1),
(68,'Shield and Mace',4,40,3,3,3,1,3,NULL,1),
(69,'Retreating Pendulum',4,58,4,3,1,1,1,NULL,1),
(70,'Tripping Arrow',4,26,5,18,7,1,1,NULL,1),
(71,'Fallen Cross',4,42,8,3,4,2,1,NULL,1),
(72,'Returning Storm',4,59,9,3,3,1,1,NULL,1),
(73,'Crossed Twigs',4,60,5,6,4,2,6,NULL,1),
(74,'Twist of Fate',4,57,2,18,3,1,1,NULL,1),
(75,'FLASHING MACE',4,48,3,3,3,1,1,NULL,1),
(76,'Gift of Destiny',4,61,5,1,1,1,1,NULL,1),
(77,'Wings of Silk',4,62,6,3,4,2,4,NULL,1),
(78,'Gripping Talon',4,63,5,7,2,1,1,NULL,1),
(79,'Gathering Clouds',4,64,3,3,1,1,3,NULL,1),
(80,'Destructive Twins',4,65,8,3,4,1,4,NULL,1),
(81,'Broken Ram',4,66,1,5,4,1,1,NULL,1),
(82,'Circling the Horizon',4,48,3,3,1,1,2,NULL,1),
(83,'Oscure Claws',5,31,5,5,4,5,1,NULL,1),
(84,'Encounter with Danger',5,57,2,18,7,1,1,NULL,1),
(85,'Circling Destruction',5,28,3,3,2,1,1,NULL,1),
(86,'Detour from Doom',5,67,4,18,1,1,1,NULL,1),
(87,'Squatting Sacrife',5,49,5,18,4,2,1,NULL,1),
(88,'Escape from Death',5,42,8,18,3,2,1,NULL,1),
(89,'Brushing the Storm',5,68,7,3,1,4,2,NULL,1),
(90,'Menacing Twirl',5,69,1,5,4,2,1,NULL,1),
(91,'Leap from Danger',5,70,2,18,7,2,1,NULL,1),
(92,'Circles of Protection',5,71,3,9,3,1,3,NULL,1),
(93,'Circles of Doom',5,58,4,18,1,1,1,NULL,1),
(94,'Broken Gift',5,15,1,6,3,1,1,NULL,1),
(95,'Heavenly Ascent',5,72,8,18,1,1,1,NULL,1),
(96,'Capturing The Storm',5,73,7,9,3,1,5,NULL,1),
(97,'Conquering Shield',5,74,1,7,4,1,6,NULL,1),
(98,'Taming the Mace',5,40,3,3,3,1,1,NULL,1),
(99,'Twirling Sacrifice',5,53,1,3,4,2,1,NULL,1),
(100,'Cross of Death',5,72,8,3,4,1,1,NULL,1),
(101,'Securing the Storm',5,75,7,3,3,1,1,NULL,1),
(102,'Intercet the Ram',5,39,1,1,4,1,1,NULL,1),
(103,'Kneel of Compulsion',5,76,3,3,1,4,1,NULL,1),
(104,'Clipping the Storm',5,77,7,3,3,1,1,NULL,1),
(105,'Glancing Wing',5,78,3,3,2,1,1,NULL,1),
(106,'The Back Breaker',5,76,3,3,1,4,2,NULL,1),
(107,'Glancing Spear',6,79,1,6,3,1,7,NULL,1),
(108,'Thrust into Darknes',6,80,3,18,3,2,1,NULL,1),
(109,'Circling Fans',6,81,9,18,2,1,3,NULL,1),
(110,'Rotating Destruction',6,82,9,12,1,1,1,NULL,1),
(111,'Falcons of Force',6,83,10,18,8,6,1,NULL,0),
(112,'The Bear and the Ram',6,84,10,3,9,7,1,NULL,0),
(113,'Raining Lance',6,85,11,3,3,1,5,NULL,1),
(114,'Desperate Falcons',6,86,1,6,3,1,7,NULL,1),
(115,'Leap of Death',6,87,3,3,3,1,1,NULL,1),
(116,'Protecting Fans',6,81,9,3,6,1,3,NULL,1),
(117,'Deceptive Panther',6,88,9,18,1,1,1,NULL,1),
(118,'Courting the Tiger',6,89,10,3,10,6,1,NULL,0),
(119,'Gathering of the Snakes',6,90,10,3,10,7,1,NULL,0),
(120,'Glancing Lance',6,91,11,3,3,1,5,NULL,1),
(121,'Dominating Circles',6,92,1,6,1,1,7,NULL,1),
(122,'Destructive Fans',6,93,3,3,3,3,2,NULL,1),
(123,'Unfurling Crane',6,81,9,18,11,1,3,NULL,1),
(124,'Grasping Eagles',6,94,10,12,12,7,1,NULL,0),
(125,'Parting of the Snake',6,95,10,9,12,7,1,NULL,0),
(126,'Thrusting Lance',6,96,11,18,1,1,5,NULL,1),
(127,'Blinding Sacrifice',6,97,1,13,4,1,7,NULL,1),
(128,'Snakes of Wisdom',6,98,10,14,10,6,1,NULL,0),
(129,'Entwined Lance',6,96,11,18,1,1,5,NULL,1),
(130,'Falling Falcon',6,99,1,1,1,1,2,NULL,1),
(131,'Fatal Cross',7,100,2,18,2,1,6,NULL,1),
(132,'Twirling Hammer',7,28,3,3,6,1,3,NULL,1),
(133,'Defensive Cross',7,101,4,18,3,1,3,NULL,1),
(134,'Dance of Darkness',7,102,9,3,1,1,3,NULL,1),
(135,'Marriage of the Rams',7,103,10,15,10,6,1,NULL,0),
(136,'The Ram and the Eagle',7,104,10,16,9,7,1,NULL,0),
(137,'Escape from the Storm',7,105,7,3,13,4,5,NULL,1),
(138,'Circling Windmills',7,106,9,3,3,1,1,NULL,1),
(139,'Destructive Kneel',7,48,3,3,3,1,3,NULL,1),
(140,'Bowing a Buddha',7,107,4,18,1,1,3,NULL,1),
(141,'Reversing Circles',7,108,9,17,2,1,3,NULL,1),
(142,'Reprimanding the Bears',7,109,10,3,8,7,1,NULL,0),
(143,'Circling the Storm',7,110,7,3,3,1,5,NULL,1),
(144,'Unfolding the Dark',7,111,3,3,6,5,1,NULL,1),
(145,'Unwinding Pendulum',7,112,9,3,3,1,3,NULL,1),
(146,'Piercing Lance',7,113,11,3,1,1,1,NULL,1),
(147,'Escape from Darkness',7,114,3,3,1,8,1,NULL,1),
(148,'Capturing the Rod',7,115,12,18,1,1,5,NULL,1),
(149,'Prance the Tiger',7,116,3,18,1,4,3,NULL,1),
(150,'Broken Rod',7,117,12,3,3,2,5,NULL,1),
(151,'Entwined Maces',7,81,9,3,2,1,1,NULL,1),
(152,'Defying the Rod',7,115,12,18,1,1,5,NULL,1),
(153,'Fatal Deviation',7,81,9,18,2,1,1,NULL,1),
(154,'Twisted Rod',7,115,12,3,3,1,5,NULL,1),
(155,'Darting Leaves',8,9,3,1,1,1,3,NULL,1);
/*!40000 ALTER TABLE `Defensas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DefensasFormas`
--

DROP TABLE IF EXISTS `DefensasFormas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DefensasFormas` (
  `IdDefensasFormas` int(10) NOT NULL,
  `IdDefensas` int(10) NOT NULL,
  `IdFormas` int(10) NOT NULL,
  `OrdenDefensa` int(4) NOT NULL DEFAULT 0,
  `VigenciaDefensasFormas` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DefensasFormas`
--

LOCK TABLES `DefensasFormas` WRITE;
/*!40000 ALTER TABLE `DefensasFormas` DISABLE KEYS */;
INSERT INTO `DefensasFormas` VALUES
(1,13,2,0,1),
(2,19,3,19,1),
(4,22,6,8,1),
(6,26,6,13,1),
(7,27,6,9,1),
(9,35,6,3,1),
(10,37,2,0,1),
(11,43,7,4,1),
(12,44,3,9,1),
(13,46,6,4,1),
(14,55,2,0,1),
(15,60,7,7,1),
(16,61,3,5,1),
(17,63,7,10,1),
(18,67,3,12,1),
(19,68,3,18,1),
(20,73,6,10,1),
(22,79,3,6,1),
(24,82,2,0,1),
(25,89,2,0,1),
(26,92,3,7,1),
(27,96,5,0,1),
(28,97,6,12,1),
(29,106,2,0,1),
(30,107,7,5,1),
(31,109,3,13,1),
(32,113,5,0,1),
(33,114,7,12,1),
(34,116,3,1,1),
(35,120,5,0,1),
(36,121,7,3,1),
(37,122,2,0,1),
(38,123,3,3,1),
(39,126,5,0,1),
(40,127,7,8,1),
(41,129,5,0,1),
(42,130,2,0,1),
(43,131,6,7,1),
(44,132,3,20,1),
(45,133,3,15,1),
(46,134,3,8,1),
(47,137,5,0,1),
(48,139,3,4,1),
(49,140,3,16,1),
(50,141,3,11,1),
(51,143,5,0,1),
(52,145,3,10,1),
(53,148,5,0,1),
(54,149,3,17,1),
(55,150,5,0,1),
(56,152,5,0,1),
(57,154,5,0,1),
(3,21,6,11,1),
(5,23,6,6,1),
(8,34,6,2,1),
(21,77,6,9,1),
(23,80,6,1,1),
(3,21,7,11,1),
(5,23,7,6,1),
(8,34,7,2,1),
(21,77,7,9,1),
(23,80,7,1,1),
(59,138,3,14,1),
(60,155,3,2,1),
(81,115,2,0,1);
/*!40000 ALTER TABLE `DefensasFormas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Direccion`
--

DROP TABLE IF EXISTS `Direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Direccion` (
  `IdDireccion` int(10) NOT NULL,
  `DescDireccion` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `VigenciaDireccion` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Direccion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Direccion`
--

LOCK TABLES `Direccion` WRITE;
/*!40000 ALTER TABLE `Direccion` DISABLE KEYS */;
INSERT INTO `Direccion` VALUES
(1,'12:00',1),
(2,'06:00',1),
(3,'09:00',1),
(4,'03:00',1),
(5,'04:30',1),
(6,'3:00 y 9:00',1),
(7,'12:00 y 6:00',1),
(8,'07:30',1);
/*!40000 ALTER TABLE `Direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Formas`
--

DROP TABLE IF EXISTS `Formas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Formas` (
  `IdFormas` int(10) NOT NULL,
  `DescFormas` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `VigenciaFormas` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Formas`
--

LOCK TABLES `Formas` WRITE;
/*!40000 ALTER TABLE `Formas` DISABLE KEYS */;
INSERT INTO `Formas` VALUES
(1,'No',1),
(2,'Larga 5',1),
(3,'Larga 4',1),
(4,'Corta 3 Larga 3',1),
(5,'Larga 6',1),
(6,'Corta 3',1),
(7,'Larga 3',1);
/*!40000 ALTER TABLE `Formas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Grados`
--

DROP TABLE IF EXISTS `Grados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Grados` (
  `IdGrados` int(10) NOT NULL,
  `DescGrados` varchar(16) NOT NULL,
  `ColorGrados` varchar(16) NOT NULL,
  `VigenciaGrados` int(2) NOT NULL,
  `class` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Grados o Cinturones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grados`
--

LOCK TABLES `Grados` WRITE;
/*!40000 ALTER TABLE `Grados` DISABLE KEYS */;
INSERT INTO `Grados` VALUES
(1,'Amarillo','#ffff00',1,'Yellow'),
(2,'Naranja','#ffa500',1,'Orange'),
(3,'Purpura','#800080',1,'Purple'),
(4,'Azul','#0000ff',1,'Blue'),
(5,'Verde','#008000',1,'Green'),
(6,'Cafe 3er','#a52a2a',1,'Brown3'),
(7,'Cafe 2do','#a52a2a',1,'Brown2'),
(8,'Sin Grado','#ffffff',0,'White');
/*!40000 ALTER TABLE `Grados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RelacionPosicional`
--

DROP TABLE IF EXISTS `RelacionPosicional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RelacionPosicional` (
  `IdRelacionPosicional` int(10) NOT NULL,
  `DescRelacionPosicional` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `VigenciaRelacionPosicional` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Relacion Posicional';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RelacionPosicional`
--

LOCK TABLES `RelacionPosicional` WRITE;
/*!40000 ALTER TABLE `RelacionPosicional` DISABLE KEYS */;
INSERT INTO `RelacionPosicional` VALUES
(1,'Derecha a Derecha',1),
(2,'Derecha a Izquierda',1),
(3,'Izquierda a Derecha',1),
(4,'Derecha a Cualquiera',1),
(5,'Izquierda a Cualquiera',1),
(6,'Izquierda a Izquierda',1),
(7,'Cualquiera a Cualquiera',1),
(8,'Derecha a Izquierda Izquierda a Cualquiera',1),
(9,'Izquierda a Derecha Derecha a Cualquiera',1),
(10,'Derecha a Izquierda Izquierda a Derecha',1),
(11,'Derecha e izquierda',1),
(12,'Izquierda a Derecha Derecha a Derecha',1),
(13,'Derecho a derecho',1);
/*!40000 ALTER TABLE `RelacionPosicional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ubicacion`
--

DROP TABLE IF EXISTS `Ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ubicacion` (
  `IdUbicacion` int(10) NOT NULL,
  `DescUbicacion` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `VigenciaUbicacion` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Ubicacion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ubicacion`
--

LOCK TABLES `Ubicacion` WRITE;
/*!40000 ALTER TABLE `Ubicacion` DISABLE KEYS */;
INSERT INTO `Ubicacion` VALUES
(1,'Interior Derecha',1),
(2,'Superior',1),
(3,'Exterior',1),
(4,'Superior Ambos',1),
(5,'Interior Izquierda',1),
(6,'Exterior Derecha',1),
(7,'Exterior Izquierda',1),
(8,'Exterior Derecha a Centro',1),
(9,'Inferior',1),
(10,'Interior Ambos',1),
(11,'Inferior Ambos',1),
(12,'Interior / Exterior',1),
(13,'Inferior Superior',1),
(14,'Interior Inferior',1),
(15,'Exterior Inferior',1),
(16,'Exterior e Interior',1),
(17,'Interior inferior',1),
(18,'Interior',1);
/*!40000 ALTER TABLE `Ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Web`
--

DROP TABLE IF EXISTS `Web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Web` (
  `idWeb` int(10) NOT NULL,
  `DescWeb` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `VigenciaWeb` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Web de Conocimientos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Web`
--

LOCK TABLES `Web` WRITE;
/*!40000 ALTER TABLE `Web` DISABLE KEYS */;
INSERT INTO `Web` VALUES
(1,'Agarres y Tacles',1),
(2,'Empujones',1),
(3,'Puñetazo',1),
(4,'Patadas',1),
(5,'Tomas y Abrazos',1),
(6,'Llaves',1),
(7,'Armas (Bastón)',1),
(8,'Estrangulación',1),
(9,'Ataques Múltiples (Un Atacante)',1),
(10,'Ataques Múltiples (Dos Atacantes)',1),
(11,'Armas (Cuchillo)',1),
(12,'Armas (Pistola)',1);
/*!40000 ALTER TABLE `Web` ENABLE KEYS */;
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
