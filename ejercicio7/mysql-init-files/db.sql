CREATE DATABASE  IF NOT EXISTS `crud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `crud`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: crud
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
-- Table structure for table `crud2`
--

DROP TABLE IF EXISTS `crud2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crud2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `join_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crud2`
--

LOCK TABLES `crud2` WRITE;
/*!40000 ALTER TABLE `crud2` DISABLE KEYS */;
INSERT INTO `crud2` VALUES (1,'Javier','javier@hotmail.com','123465798','2025-12-06'),(2,'Hugo','Hugo@hotmail.com','147852369','2025-12-06'),(3,'Gonzalo','gonzalo@hotmail.com','123654789','2025-12-06'),(4,'Pedro','pedro@hotmail.com','321654987','2025-12-06');
/*!40000 ALTER TABLE `crud2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-06 17:55:00



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



-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para crud_python
CREATE DATABASE IF NOT EXISTS `crud_python` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `crud_python`;

-- Volcando estructura para tabla crud_python.tbl_empleados
CREATE TABLE IF NOT EXISTS `tbl_empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre_empleado` varchar(50) DEFAULT NULL,
  `apellido_empleado` varchar(50) DEFAULT NULL,
  `sexo_empleado` int DEFAULT NULL,
  `telefono_empleado` varchar(50) DEFAULT NULL,
  `email_empleado` varchar(50) DEFAULT NULL,
  `profesion_empleado` varchar(50) DEFAULT NULL,
  `foto_empleado` mediumtext,
  `salario_empleado` bigint DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla crud_python.tbl_empleados: ~3 rows (aproximadamente)
INSERT INTO `tbl_empleados` VALUES (4,'Urian','Viera',1,'54544454','programadorphp2017@gmail.com','Ingeniero de Sistemas','fda30f83ebbc4fb1a2ce2609b2b1e34c6614c1dff6e44460b9ba27ed5bb8e927.png',3500000,'2023-08-23 17:04:49'),(5,'Brenda','Viera',2,'323543543','brenda@gmail.com','Dev','22c055aeec314572a0046ec50b84f21719270dac6ea34c91b8380ac289fff9e5.png',1200000,'2023-08-23 17:05:34'),(6,'Alejandro','Torres',1,'324242342','alejandro@gmail.com','Tecnico','7b84aceb56534d27aa2e8b727a245dca9f60156a070a47c491ff2d21da1742e5.png',2100,'2023-08-23 17:06:13'),(7,'Karla','Ramos',2,'345678','karla@gmail.com','Ingeniera','248cc9c38cfb494bb2300d7cbf4a3b317522f295338b4639a8e025e6b203291c.png',2300,'2023-08-23 17:07:28');

-- Volcando estructura para tabla crud_python.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_surname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_user` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla crud_python.users: ~2 rows (aproximadamente)
INSERT INTO `users` (`id`, `name_surname`, `email_user`, `pass_user`, `created_user`) VALUES
	(1, 'Urian', 'dev@gmail.com', 'scrypt:32768:8:1$ZXqvqovbXYQZdrAB$66758083429739f4f8985992b22cb89fb58c04b99010858e7fb26f73078a23dd3e16019a17bf881108d582a91a635d2c21d26d80da1612c2d9c9bbb9b06452dc', '2023-07-21 20:10:01'),
	(2, 'demo', 'demo@gmail.com', 'scrypt:32768:8:1$Yl2tGU1Ru1Q4Jrzq$d88a0ded538dcfc3a01c8ebf4ea77700576203f6a7cc765f04627464c6047bdcf8eaad84ca3cf0bb5ed058d2dff8ee7a0ba690803538764bedc3ba6173ac6a8a', '2023-07-21 20:29:28');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;


CREATE DATABASE IF NOT EXISTS `wordpress` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wordpress`;

GRANT SELECT, INSERT, UPDATE, DELETE ON crud.* TO 'usuario'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON crud_python.* TO 'usuario'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON productosdb.* TO 'usuario'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON wordpress.* TO 'usuario'@'%';

FLUSH PRIVILEGES;








