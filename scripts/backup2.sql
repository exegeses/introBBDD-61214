-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: introDB61214
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `billeteras`
--

DROP TABLE IF EXISTS `billeteras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billeteras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `precio` float(9,2) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billeteras`
--

LOCK TABLES `billeteras` WRITE;
/*!40000 ALTER TABLE `billeteras` DISABLE KEYS */;
INSERT INTO `billeteras` VALUES (1,'Ledger Nano S',16000.00,30),(2,'Trezor One',19500.00,30),(3,'Trezor T',78000.00,20),(4,'Ledger Nano X',56000.00,20);
/*!40000 ALTER TABLE `billeteras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` tinyint NOT NULL AUTO_INCREMENT,
  `catNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Smartphone'),(2,'Cámaras mirorless'),(3,'Lentes'),(4,'Parlantes bluetooth'),(5,'Smart TV'),(6,'Consolas'),(7,'Tablets');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinos`
--

DROP TABLE IF EXISTS `destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinos` (
  `idDestino` tinyint NOT NULL AUTO_INCREMENT,
  `destNombre` varchar(60) NOT NULL,
  `idRegion` tinyint NOT NULL,
  `destPrecio` float(9,2) NOT NULL,
  `destAsientos` tinyint NOT NULL,
  `destDisponibles` tinyint NOT NULL,
  `destActivo` tinyint(1) NOT NULL,
  `prueba2` varchar(30) NOT NULL,
  `fecha` date NOT NULL DEFAULT '2023-01-03',
  PRIMARY KEY (`idDestino`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinos`
--

LOCK TABLES `destinos` WRITE;
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
INSERT INTO `destinos` VALUES (1,'Londres (Heathrow)',5,9711.00,5,5,1,'','2023-01-03'),(2,'Amsterdam (Schiphol)',5,6231.00,5,5,1,'','2023-01-03'),(3,'Miami (Wilcox Field)',4,6517.00,5,5,1,'','2023-01-03'),(4,'Tokio (Narita)',7,8704.00,5,5,1,'','2023-01-03'),(5,'Kuala Lumpur (KLIA)',8,8570.00,5,5,1,'','2023-01-03'),(6,'Bangkok (Suvarnabhumi)',8,8469.00,5,5,1,'','2023-01-03'),(7,'París (Charles de Gaulle)',5,7713.00,5,5,1,'','2023-01-03'),(8,'Cancún (Cancún)',3,6494.00,5,5,1,'','2023-01-03'),(9,'Milán (Malpensa)',5,6756.00,5,5,1,'','2023-01-03'),(11,'prueba',1,25.00,3,3,1,'','2023-01-03');
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` tinyint NOT NULL AUTO_INCREMENT,
  `mkNombre` varchar(30) NOT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Nikon'),(2,'Apple'),(3,'Audiotechnica'),(4,'Marshall'),(5,'Samsung'),(6,'Huawei');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` mediumint NOT NULL AUTO_INCREMENT,
  `prdNombre` varchar(45) NOT NULL,
  `prdPrecio` float(8,2) unsigned NOT NULL,
  `idMarca` tinyint NOT NULL,
  `idCategoria` tinyint NOT NULL,
  `prdDescripcion` varchar(1000) NOT NULL,
  `prdImagen` varchar(45) NOT NULL,
  `prdActivo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idProducto`),
  KEY `fk_productos_marcas_idx` (`idMarca`),
  KEY `fk_productos_categorias1_idx` (`idCategoria`),
  CONSTRAINT `fk_productos_categorias1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`),
  CONSTRAINT `fk_productos_marcas` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Nikon Z6',1650.00,1,2,'Cuerpo de cámara sin espejo formato full frame. Resolución 24.5 MPX. Bluetooth, Wi-Fi, GPS. ISO 100-51200','nikon-z6.jpg',1),(2,'iPhone 12 Pro (256GB) gold',1200.00,2,1,'Apple iPhone 12 Pro de 256GB color dorado, libre de carrier.','iphone-12-pro-gold.png',1),(3,'Marshall Acton II',300.00,4,4,'Altavoz inalámbrico Marshall Acton II. Wi-Fi y Bluetooth multihabitación color negro.','marshall-acton.jpg',1),(4,'Homepod Mini',99.00,2,4,'Altavoz inteligente inalámbrico. Compatible con Siri. Wifi, Bluetooth. Compatible con multihabitación.','homepod-mini.jpg',1),(5,'Samsung Class QLED Q80T Series',1200.00,5,5,'Smart TV Samsung Class QLED Q80T Series, 65\", 4K, UHD','Q80T.jpg',1),(6,'P40 Pro Plus 512GB',1250.00,6,1,'Smartphone Huawei P40 Pro Plus 5G 512GB','P40-pro-plus.jpg',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiones` (
  `idRegion` tinyint NOT NULL AUTO_INCREMENT,
  `regNombre` varchar(30) NOT NULL,
  PRIMARY KEY (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (1,'América del Sur'),(2,'América Central'),(3,'Caribe y México'),(4,'América del Norte'),(5,'Europa Occidental'),(6,'Europa del Este'),(7,'Asia'),(8,'Oceanía');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRol` tinyint NOT NULL AUTO_INCREMENT,
  `rol` varchar(30) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador'),(2,'Supervisor'),(3,'Usuario'),(4,'Invitado');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `clave` varchar(75) NOT NULL,
  `idRol` tinyint NOT NULL,
  `fechaInicio` datetime NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fechaLogin` datetime NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Richard','Hendricks','rhendricks@piedpiper.com','$2a$12$q.80G07y2k4uksRf87/Lt.rwDOknmKDtpWrSni6tRD5vARMSBdR2.',1,'2014-04-06 12:00:00','1983-05-13','2020-04-06 12:00:00'),(2,'Bertram','Gilfoyle','bgilfoyle@piedpiper.com','$2a$12$gIiB70V/SJX3gzPdlbyuduLx6LziqdMEuHB7Ev5TxB.m0Q5cGXUni',2,'2014-04-06 12:00:00','1980-02-06','2020-04-06 12:00:00'),(3,'Dinesh','Chugtai','dchugtai@piedpiper.com','$2a$12$CdZgw2fZ55as5amTBcibUua/WLs653qh36jeSoi/V./6A5YRHaJqi',2,'2014-04-06 12:00:00','1982-11-20','2020-04-05 18:30:00'),(4,'Donald \"Jared\"','Dunn','jdunn@piedpiper.com','$2a$12$jiu3UiKWAAZK6YIGwdE8EeosAn3Ydh1HOv/f7b.B3zTW.C/kG4By2',2,'2014-04-06 12:00:00','1986-08-16','2020-04-06 12:00:00'),(5,'Monica','Hall','mhall@piedpiper.com','$2a$12$4gsRK.0UWzmuCNDATSQG1.KhhY7aPTs1YoF47bPDwFNpvu42f6rWK',3,'2014-04-06 12:00:00','1988-12-15','2020-04-06 12:00:00'),(6,'Nelson','Bighetti','nbighetti@hooli.com','$2a$12$gJZQfimiq4Jx67BKf.PeJ.5VX5BrQGxlYoOrGj7vUDnyxrTK33lxO',4,'2015-08-04 12:00:00','1988-10-01','2019-09-09 12:00:00'),(7,'Ron','LaFlamme','rlaflamme@gmail.com','$2a$12$MXIupMbMBDhToMUb7vSO6.ORcwWrESj0qVWydjnKaWF7m3L/YxKzm',4,'2015-02-02 12:00:00','1989-07-17','2018-06-06 12:00:00'),(8,'Carla','Walton','cwalton@gmail.com','$2a$12$H60D3.9ssnivBV3UKO.xwOsV/pnFoFDUUM3k62R5H7yAgC9faNc8a',4,'2015-09-09 12:00:00','1990-04-14','2016-09-09 12:00:00'),(9,'Becky','Rosenblum','brosenblum@gmail.com','$2a$12$kM2781BYcxQALSI/UQ2o3O3oUnVWUufI0W8qH3g/8cbdjgQY4jUMW',4,'2015-02-02 12:00:00','1998-03-28','2018-06-06 12:00:00'),(10,'Danny','Aquilino','daquilino@gmail.com','$2a$12$X56wqDdBKnIqNzhynxZLNenQdQaD5csIir3yxowPhPlrT7RjvKnrm',4,'2015-02-02 12:00:00','1999-08-21','2018-06-06 12:00:00'),(11,'Priyanka','Singh','psingh@gmail.com','$2a$12$0cT0dG7t9C4XGsBbXZmVduWBF.dEqEppQEZpRHgFqPgc1m/ZSQJH6',4,'2015-02-02 12:00:00','1998-06-14','2018-06-06 12:00:00');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-10 15:48:05
