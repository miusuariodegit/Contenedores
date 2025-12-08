CREATE DATABASE  IF NOT EXISTS `productosdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `productosdb`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: productosdb
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Teclados'),(2,'Raton'),(3,'Accesorios');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id_personas` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(100) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `colonia` varchar(100) DEFAULT NULL,
  `municpio` varchar(100) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `codigo_postal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_personas`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Javier','','6546546546','','kjlhdlkjsahkjlh','dsakjhdklsjahdslk','Corregidora','Queretaro',''),(2,'Javier','','6546546546','','kjlhdlkjsahkjlh','dsakjhdklsjahdslk','Corregidora','Queretaro',''),(3,'Javier','','6546546546','','kjlhdlkjsahkjlh','dsakjhdklsjahdslk','Corregidora','Queretaro',''),(4,'Javier','','0444421382841','','Josefa O ','Las Fuentes','Corregidora','Queretaro',''),(5,'Javier','','0444421382841','','Josefa O ','Las Fuentes','Corregidora','Queretaro',''),(6,'Javier','','0444421382841','','Josefa O ','Las Fuentes','Corregidora','Queretaro',''),(7,'Javier','','6546546546','','Josefa O ','Las Fuentes','Corregidora','Queretaro','53689'),(8,'Javier','','6546546546','','Josefa O ','Las Fuentes','Corregidora','Queretaro','53689'),(9,'Javier','','6546546546','jjcreell@hotmail.com','kjlhdlkjsahkjlh','dsakjhdklsjahdslk','Corregidora','Queretaro','53689'),(10,'Javier','','6546546546','jjcreell@hotmail.com','kjlhdlkjsahkjlh','dsakjhdklsjahdslk','Corregidora','Queretaro','53689'),(11,'','','','','','','','','');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `categoria` int DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `precioreal` float DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(5000) DEFAULT NULL,
  `nombre_archivo` varchar(200) DEFAULT NULL,
  `proveedor` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,'Teclado y mouse inalambrico',214,215,'Logitech','MK220','USB, teclado bateria 2xAA, mouse 2xAAA, inalambrico, mouse optico, receptor incluido','MK220.jpg','sumitel'),(2,1,'Teclado todo en uno inalambrico ',434,435,'Logitech','K400 TOUCH','','K400 TOUCH.png','sumitel'),(3,1,'Teclado y mouse inalambrico ',494,495,'Logitech','MK330','','MK330.jpg','sumitel'),(4,1,'Combo teclado y mouse inalambrico',394,395,'Logitech','MK270',NULL,'MK270.jpg','sumitel'),(5,1,'Teclado y mouse USB',194,195,'Logitech','MK120',NULL,'MK120.jpg','sumitel'),(6,1,'Teclado y mouse USB con shortcuts',208,209,'Logitech','MK200',NULL,'MK200.jpg','sumitel'),(7,1,'Teclado',114,115,'Logitech','K120',NULL,'K120.jpg','sumitel'),(8,1,'Teclado',198,199,'Logitech','K230',NULL,'K230.jpg','sumitel'),(9,1,'Teclado Basico USB',148,125,'Microsoft','Basico',NULL,'Basico.jpg','sumitel'),(10,1,'Teclado mouse alambrico',268,269,'Microsoft','Kit Wired 400',NULL,'Kit Wired 400.jpg','sumitel'),(11,1,'Teclado mouse alambrico',468,469,'Microsoft','Kit Wired 600',NULL,'Kit Wired 600.jpg','sumitel'),(12,1,'Teclado y mouse inalambrico',494,495,'Microsoft','Kit Desktop 800',NULL,'Kit Desktop 800.jpg','sumitel'),(13,1,'Teclado, mouse,numpad ergonomico',1994,1995,'Microsoft','Kit Sculpt',NULL,'Kit Sculpt.jpg','sumitel'),(14,1,'Teclado numerico',148,149,'Microsoft','KP300',NULL,'KP300.jpg','sumitel'),(15,2,'Mouse inalambrico Blanco',194,195,'Acteck','Xplotion Blanco',NULL,'Xplotion Blanco.jpg','sumitel'),(16,2,'Mouse inalambrico Negro',194,195,'Actek','Xplotion Negro',NULL,'Xplotion Negro.jpg','sumitel'),(17,1,'Kit Teclado y mouse',194,195,'Actek','WKTE-005',NULL,'WKTE-005.jpg','sumitel'),(18,3,'Joypad USB 10 botones',238,239,'Actek','Xtreme',NULL,'Xtreme.jpg','sumitel'),(19,3,'Mini teclado',278,279,'Actek','Miniteclado',NULL,'Miniteclado.jpg','sumitel');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-06  1:08:42
