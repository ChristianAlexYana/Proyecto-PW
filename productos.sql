-- MySQL dump 10.13  Distrib 9.1.0, for Linux (x86_64)
--
-- Host: localhost    Database: productos
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Accesorios`
--

DROP TABLE IF EXISTS `Accesorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accesorios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accesorios`
--

LOCK TABLES `Accesorios` WRITE;
/*!40000 ALTER TABLE `Accesorios` DISABLE KEYS */;
INSERT INTO `Accesorios` VALUES (1,'Auriculares Bluetooth',39.99),(2,'Cargador USB-C',19.99),(3,'Funda para telfono',14.99),(4,'Power Bank 10000mAh',29.99),(5,'Teclado mecnico',49.99),(6,'Mouse inalmbrico',24.99),(7,'Cables HDMI',12.99),(8,'Estacin de carga',34.99),(9,'Soporte para telfono',9.99),(10,'Funda para tablet',15.99);
/*!40000 ALTER TABLE `Accesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accesorios_Ropa`
--

DROP TABLE IF EXISTS `Accesorios_Ropa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accesorios_Ropa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accesorios_Ropa`
--

LOCK TABLES `Accesorios_Ropa` WRITE;
/*!40000 ALTER TABLE `Accesorios_Ropa` DISABLE KEYS */;
INSERT INTO `Accesorios_Ropa` VALUES (1,'Bufanda de lana',12.99),(2,'Gorra de bisbol',8.99),(3,'Cinturn de cuero',25.99),(4,'Guantes de invierno',18.99),(5,'Zapatos deportivos',49.99),(6,'Sombrero de paja',15.99),(7,'Reloj de pulsera',19.99),(8,'Corbata de seda',22.99),(9,'Cartera de cuero',35.99),(10,'Billetera',17.99);
/*!40000 ALTER TABLE `Accesorios_Ropa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Arte`
--

DROP TABLE IF EXISTS `Arte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arte`
--

LOCK TABLES `Arte` WRITE;
/*!40000 ALTER TABLE `Arte` DISABLE KEYS */;
INSERT INTO `Arte` VALUES (1,'Pintura abstracta',150.00),(2,'Escultura de madera',200.00),(3,'Fotografa en blanco y negro',50.00),(4,'Cuadro de paisaje',120.00),(5,'Boceto de retrato',80.00),(6,'Mural urbano',300.00),(7,'Pintura de leo',250.00),(8,'Escultura moderna',400.00),(9,'Dibujo de lpiz',30.00),(10,'Instalacin artstica',500.00);
/*!40000 ALTER TABLE `Arte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bebidas`
--

DROP TABLE IF EXISTS `Bebidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bebidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bebidas`
--

LOCK TABLES `Bebidas` WRITE;
/*!40000 ALTER TABLE `Bebidas` DISABLE KEYS */;
INSERT INTO `Bebidas` VALUES (1,'Coca Cola',1.50),(2,'Agua mineral',0.99),(3,'Jugo de naranja',2.50),(4,'Cerveza artesanal',3.00),(5,'Red Bull',2.00),(6,'T verde',1.80),(7,'Caf espresso',2.20),(8,'Soda de manzana',1.60),(9,'Limonada',2.10),(10,'Fresca',1.75);
/*!40000 ALTER TABLE `Bebidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ciencia`
--

DROP TABLE IF EXISTS `Ciencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ciencia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ciencia`
--

LOCK TABLES `Ciencia` WRITE;
/*!40000 ALTER TABLE `Ciencia` DISABLE KEYS */;
INSERT INTO `Ciencia` VALUES (1,'El Universo',10.99),(2,'Biologa Molecular',20.00),(3,'Fsica cuntica',30.50),(4,'Astronoma avanzada',25.00),(5,'Gentica',18.00),(6,'La teora de la relatividad',15.00),(7,'Qumica orgnica',22.00),(8,'Estudio de la materia',14.50),(9,'Fsica nuclear',26.00),(10,'Ecologa y medio ambiente',12.99);
/*!40000 ALTER TABLE `Ciencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Computadoras`
--

DROP TABLE IF EXISTS `Computadoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Computadoras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Computadoras`
--

LOCK TABLES `Computadoras` WRITE;
/*!40000 ALTER TABLE `Computadoras` DISABLE KEYS */;
INSERT INTO `Computadoras` VALUES (1,'Laptop HP',499.99),(2,'PC de escritorio',799.99),(3,'MacBook Pro',1299.99),(4,'Monitor 24 pulgadas',159.99),(5,'Teclado mecnico',79.99),(6,'Mouse ptico',29.99),(7,'Almacenamiento externo 1TB',89.99),(8,'Tarjeta grfica GTX 1660',229.99),(9,'Router Wi-Fi',59.99),(10,'Cargador para laptop',39.99);
/*!40000 ALTER TABLE `Computadoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ficcion`
--

DROP TABLE IF EXISTS `Ficcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ficcion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ficcion`
--

LOCK TABLES `Ficcion` WRITE;
/*!40000 ALTER TABLE `Ficcion` DISABLE KEYS */;
INSERT INTO `Ficcion` VALUES (1,'Harry Potter y la piedra filosofal',12.99),(2,'El seor de los anillos',19.99),(3,'1984',15.99),(4,'Crnica de una muerte anunciada',10.50),(5,'Cien aos de soledad',20.00),(6,'El gran Gatsby',14.99),(7,'Matar a un ruiseor',18.00),(8,'La sombra del viento',13.99),(9,'Orgullo y prejuicio',11.99),(10,'Drcula',9.99);
/*!40000 ALTER TABLE `Ficcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Galletas`
--

DROP TABLE IF EXISTS `Galletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Galletas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Galletas`
--

LOCK TABLES `Galletas` WRITE;
/*!40000 ALTER TABLE `Galletas` DISABLE KEYS */;
INSERT INTO `Galletas` VALUES (1,'Galletas de chocolate',2.50),(2,'Galletas integrales',1.80),(3,'Galletas de avena',2.20),(4,'Galletas de mantequilla',1.90),(5,'Galletas Oreo',2.00),(6,'Galletas de jengibre',3.00),(7,'Galletas de frutas',2.50),(8,'Galletas de vainilla',1.60),(9,'Galletas con trozos de nuez',2.30),(10,'Galletas sin azcar',1.70);
/*!40000 ALTER TABLE `Galletas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hombres`
--

DROP TABLE IF EXISTS `Hombres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hombres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hombres`
--

LOCK TABLES `Hombres` WRITE;
/*!40000 ALTER TABLE `Hombres` DISABLE KEYS */;
INSERT INTO `Hombres` VALUES (1,'Camisa de algodn',25.99),(2,'Pantalones de mezclilla',39.99),(3,'Chaqueta de cuero',79.99),(4,'Zapatos de cuero',59.99),(5,'Cinturn de tela',12.99),(6,'Sudadera con capucha',34.99),(7,'Reloj de pulsera',40.99),(8,'Sombrero de lana',18.99),(9,'Gorra deportiva',15.99),(10,'Guantes de invierno',22.99);
/*!40000 ALTER TABLE `Hombres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lamparas`
--

DROP TABLE IF EXISTS `Lamparas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lamparas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lamparas`
--

LOCK TABLES `Lamparas` WRITE;
/*!40000 ALTER TABLE `Lamparas` DISABLE KEYS */;
INSERT INTO `Lamparas` VALUES (1,'Lmpara de mesa',29.99),(2,'Lmpara de pie',49.99),(3,'Lmpara LED',19.99),(4,'Lmpara de escritorio',39.99),(5,'Lmpara de techo',59.99),(6,'Lmpara de noche',14.99),(7,'Lmpara decorativa',22.99),(8,'Lmpara de pie con regulador',34.99),(9,'Lmpara de escritorio USB',24.99),(10,'Lmpara inteligente',79.99);
/*!40000 ALTER TABLE `Lamparas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mesas`
--

DROP TABLE IF EXISTS `Mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mesas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mesas`
--

LOCK TABLES `Mesas` WRITE;
/*!40000 ALTER TABLE `Mesas` DISABLE KEYS */;
INSERT INTO `Mesas` VALUES (1,'Mesa de comedor',199.99),(2,'Mesa de caf',99.99),(3,'Mesa de escritorio',149.99),(4,'Mesa auxiliar',79.99),(5,'Mesa de jardn',129.99),(6,'Mesa de noche',59.99),(7,'Mesa de centro',89.99),(8,'Mesa plegable',49.99),(9,'Mesa de oficina',199.99),(10,'Mesa de conferencia',499.99);
/*!40000 ALTER TABLE `Mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mujeres`
--

DROP TABLE IF EXISTS `Mujeres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mujeres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mujeres`
--

LOCK TABLES `Mujeres` WRITE;
/*!40000 ALTER TABLE `Mujeres` DISABLE KEYS */;
INSERT INTO `Mujeres` VALUES (1,'Vestido de gala',99.99),(2,'Blusa de seda',49.99),(3,'Falda de algodn',29.99),(4,'Chaqueta de cuero',79.99),(5,'Zapatos de tacn',59.99),(6,'Cartera de mano',45.99),(7,'Gafas de sol',19.99),(8,'Bufanda de lana',12.99),(9,'Sombrero de paja',18.99),(10,'Pendientes de plata',25.99);
/*!40000 ALTER TABLE `Mujeres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ninos`
--

DROP TABLE IF EXISTS `Ninos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ninos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ninos`
--

LOCK TABLES `Ninos` WRITE;
/*!40000 ALTER TABLE `Ninos` DISABLE KEYS */;
INSERT INTO `Ninos` VALUES (1,'Juguete de construccin',15.99),(2,'Mueca de trapo',9.99),(3,'Bicicleta infantil',49.99),(4,'Pelota de ftbol',12.99),(5,'Juego de mesa',19.99),(6,'Carrito de juguete',8.99),(7,'Rompecabezas',7.99),(8,'Coche de carreras',22.99),(9,'Set de juguetes de playa',14.99),(10,'Libro de cuentos',5.99);
/*!40000 ALTER TABLE `Ninos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `No_ficcion`
--

DROP TABLE IF EXISTS `No_ficcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `No_ficcion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `No_ficcion`
--

LOCK TABLES `No_ficcion` WRITE;
/*!40000 ALTER TABLE `No_ficcion` DISABLE KEYS */;
INSERT INTO `No_ficcion` VALUES (1,'Sapiens',22.99),(2,'El diario de Ana Frank',10.99),(3,'Educated',14.50),(4,'Los secretos de la mente millonaria',16.99),(5,'El poder del ahora',12.50),(6,'Cmo ganar amigos',18.00),(7,'El arte de la guerra',11.99),(8,'Piense y hgase rico',20.00),(9,'El hombre en busca de sentido',13.99),(10,'La magia del orden',19.99);
/*!40000 ALTER TABLE `No_ficcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Productos_Frescos`
--

DROP TABLE IF EXISTS `Productos_Frescos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos_Frescos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos_Frescos`
--

LOCK TABLES `Productos_Frescos` WRITE;
/*!40000 ALTER TABLE `Productos_Frescos` DISABLE KEYS */;
INSERT INTO `Productos_Frescos` VALUES (1,'Lechuga',1.99),(2,'Tomate',2.50),(3,'Zanahorias',1.30),(4,'Pap',0.80),(5,'Manzanas',2.20),(6,'Pltanos',1.10),(7,'Fresas',3.00),(8,'Aguacates',1.80),(9,'Brcoli',2.80),(10,'Cebollas',1.40);
/*!40000 ALTER TABLE `Productos_Frescos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sillas`
--

DROP TABLE IF EXISTS `Sillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sillas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sillas`
--

LOCK TABLES `Sillas` WRITE;
/*!40000 ALTER TABLE `Sillas` DISABLE KEYS */;
INSERT INTO `Sillas` VALUES (1,'Silla de oficina',89.99),(2,'Silla ergonmica',129.99),(3,'Silla de comedor',49.99),(4,'Silla plegable',19.99),(5,'Silla de jardn',59.99),(6,'Silla de madera',79.99),(7,'Silla lounge',99.99),(8,'Silla de trabajo',109.99),(9,'Silla para nios',39.99),(10,'Silla de bar',49.99);
/*!40000 ALTER TABLE `Sillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Smartphones`
--

DROP TABLE IF EXISTS `Smartphones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Smartphones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Smartphones`
--

LOCK TABLES `Smartphones` WRITE;
/*!40000 ALTER TABLE `Smartphones` DISABLE KEYS */;
INSERT INTO `Smartphones` VALUES (1,'iPhone 15',999.99),(2,'Samsung Galaxy S23',899.99),(3,'Google Pixel 8',799.99),(4,'OnePlus 11',749.99),(5,'Xiaomi Mi 13',699.99),(6,'Realme 10',299.99),(7,'Motorola Edge 40',499.99),(8,'Oppo Find X6',1099.99),(9,'Huawei P60',899.99),(10,'Sony Xperia 1 V',1299.99);
/*!40000 ALTER TABLE `Smartphones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Snacks`
--

DROP TABLE IF EXISTS `Snacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Snacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Snacks`
--

LOCK TABLES `Snacks` WRITE;
/*!40000 ALTER TABLE `Snacks` DISABLE KEYS */;
INSERT INTO `Snacks` VALUES (1,'Papas fritas',1.50),(2,'Galletas saladas',2.00),(3,'Chicles',0.99),(4,'Barra de granola',1.80),(5,'Almendras',2.50),(6,'Frutos secos',3.00),(7,'Chocolate',2.20),(8,'Crispetas',1.60),(9,'Cacahuates',1.40),(10,'Trozos de queso',2.30);
/*!40000 ALTER TABLE `Snacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sofas`
--

DROP TABLE IF EXISTS `Sofas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sofas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sofas`
--

LOCK TABLES `Sofas` WRITE;
/*!40000 ALTER TABLE `Sofas` DISABLE KEYS */;
INSERT INTO `Sofas` VALUES (1,'Sof de tres plazas',499.99),(2,'Sof cama',599.99),(3,'Silln reclinable',349.99),(4,'Sof modular',799.99),(5,'Sof seccional',699.99),(6,'Sof de cuero',899.99),(7,'Sof de tela',399.99),(8,'Silln de dos plazas',229.99),(9,'Sof chaise longue',799.99),(10,'Sof de esquina',499.99);
/*!40000 ALTER TABLE `Sofas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Televisores`
--

DROP TABLE IF EXISTS `Televisores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Televisores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Televisores`
--

LOCK TABLES `Televisores` WRITE;
/*!40000 ALTER TABLE `Televisores` DISABLE KEYS */;
INSERT INTO `Televisores` VALUES (1,'Samsung 55 pulgadas 4K',599.99),(2,'LG 50 pulgadas UHD',549.99),(3,'Sony 65 pulgadas OLED',1499.99),(4,'Philips 40 pulgadas',299.99),(5,'TCL 32 pulgadas HD',189.99),(6,'Hisense 43 pulgadas 4K',349.99),(7,'Panasonic 58 pulgadas LED',649.99),(8,'Vizio 70 pulgadas',799.99),(9,'Samsung 43 pulgadas Smart TV',379.99),(10,'Sharp 55 pulgadas 4K',529.99);
/*!40000 ALTER TABLE `Televisores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-15 19:54:06
