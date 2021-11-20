-- MySQL dump 10.16  Distrib 10.1.13-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: fidelizacion
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

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
-- Table structure for table `bonos`
--

DROP TABLE IF EXISTS `bonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonos` (
  `id` smallint(6) NOT NULL,
  `puntos` int(11) DEFAULT NULL,
  `codclientes` smallint(6) DEFAULT NULL,
  `codestado` smallint(6) DEFAULT NULL,
  `fechaInicio` varchar(12) DEFAULT NULL,
  `fechaFin` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `codclientes` (`codclientes`),
  KEY `codestado` (`codestado`),
  CONSTRAINT `bonos_ibfk_1` FOREIGN KEY (`codclientes`) REFERENCES `clientes` (`id`),
  CONSTRAINT `bonos_ibfk_2` FOREIGN KEY (`codestado`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonos`
--

LOCK TABLES `bonos` WRITE;
/*!40000 ALTER TABLE `bonos` DISABLE KEYS */;
INSERT INTO `bonos` VALUES (1,100,1,1,'05/09/2017','05/10/2017'),(2,200,2,1,'05/09/2017','05/10/2017'),(3,300,3,1,'05/09/2017','05/10/2017'),(4,103,1,2,'05/09/2017','05/10/2017'),(5,104,1,3,'01/09/2017','01/10/2017'),(6,105,5,3,'01/09/2017','01/10/2017'),(7,106,1,3,'01/09/2017','01/10/2017'),(8,107,1,3,'01/09/2017','01/10/2017'),(9,108,7,1,'01/09/2017','01/10/2017'),(10,109,1,4,'01/09/2017','01/10/2017');
/*!40000 ALTER TABLE `bonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'Bogota'),(2,'Medellin'),(3,'Cali'),(4,'Barranquilla'),(5,'Cartagena'),(6,'Santa marta '),(7,'San andres'),(8,'Popayan');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `ndocumento` int(11) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `codciudad` smallint(6) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `codciudad` (`codciudad`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`codciudad`) REFERENCES `ciudades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'andres','felipe',1002311133,3236765,1,'Cra 59 #35-34','andres@felipe.com'),(2,'luis','antonio',1102311133,3234765,2,'Cra 59 #35-35','luis@antonio.com'),(3,'camila','char',2147483647,3236865,3,'Cra 59 #35-36','camila@char.com'),(4,'luisa','pin',2147483647,3236788,1,'Cra 59 #35-37','luisa@pin.com'),(5,'natali','valencia',2147483647,3436765,5,'Cra 59 #35-38','natalia@valencia.com'),(6,'pedro','luis',657311133,8989365,1,'Cra 59 #35-39','pedro@luis.com'),(7,'antonio','camilo',2147483647,3436765,2,'Cra 59 #35-10','antonio@camilocom'),(8,'tocallo','caicedo',2147483647,5656454,8,'Cra 59 #35-311','tocallo@caicedo.com'),(9,'bety','fea',2147483647,5675788,2,'Cra 59 #35-12','bety@fea.com'),(10,'titan','fin',2147483647,8745465,1,'Cra 59 #35-23','titan@fin.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'valido'),(2,'redimido'),(3,'sin redimir'),(4,'vencido');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones` (
  `id` smallint(6) NOT NULL,
  `archivo` varchar(30) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `codclientes` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `codclientes` (`codclientes`),
  CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`codclientes`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (1,'imagen 1','12/12/2017',1),(2,'imagen 2','12/12/2017',3),(3,'imagen 3','12/12/2017',2),(4,'imagen 4','12/12/2017',4),(5,'imagen 5','12/12/2017',5),(6,'imagen 6','12/12/2017',7),(7,'imagen 7','12/12/2017',6),(8,'imagen 8','12/12/2017',6),(9,'imagen 9','12/12/2017',9),(10,'imagen 10','12/12/2017',10);
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferencias`
--

DROP TABLE IF EXISTS `preferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preferencias` (
  `id` smallint(6) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferencias`
--

LOCK TABLES `preferencias` WRITE;
/*!40000 ALTER TABLE `preferencias` DISABLE KEYS */;
INSERT INTO `preferencias` VALUES (1,'AUDI','Modelo  A5  Palca ijt192 Año 2016 Color gris'),(2,'AUDI','Modelo Q5 Palca TYE192 año 2016 Color negro'),(3,'HONDA','Modelo accord Palca VBB345 Año 2017 Color bla'),(4,'CHEVROLET','Modelo Aveo Palca de234 año 2017 Color azul'),(5,'HYUNDAI','Modelo Electra Palca EEE492 Año 2018 Color ne'),(6,'FERRARI','Modelo 488 Palca AGS234 año 2016 Color gris'),(7,'INFINITI','Modelo Q30 Palca III342 Año 2019 Color negro'),(8,'NISSAN','Modelo Evalia Palca VAB234 año 2018 Color neg'),(9,'SUZUKI','Modelo Baleno Palca BBB563 Año 2016 Color Roj'),(10,'TOYOTA ','Modelo Auris Palca AAA123 año 2016 Color negr');
/*!40000 ALTER TABLE `preferencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferenciasxclientes`
--

DROP TABLE IF EXISTS `preferenciasxclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preferenciasxclientes` (
  `codclientes` smallint(6) DEFAULT NULL,
  `codpreferencias` smallint(6) DEFAULT NULL,
  KEY `codclientes` (`codclientes`),
  KEY `codpreferencias` (`codpreferencias`),
  CONSTRAINT `preferenciasxclientes_ibfk_1` FOREIGN KEY (`codclientes`) REFERENCES `clientes` (`id`),
  CONSTRAINT `preferenciasxclientes_ibfk_2` FOREIGN KEY (`codpreferencias`) REFERENCES `preferencias` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferenciasxclientes`
--

LOCK TABLES `preferenciasxclientes` WRITE;
/*!40000 ALTER TABLE `preferenciasxclientes` DISABLE KEYS */;
INSERT INTO `preferenciasxclientes` VALUES (1,1),(2,2),(3,3),(4,1),(5,1),(6,6),(7,7),(8,8),(9,9),(10,1);
/*!40000 ALTER TABLE `preferenciasxclientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-19 10:40:29
