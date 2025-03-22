-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: coder_inventory
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `auditory`
--

DROP TABLE IF EXISTS `auditory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_name` varchar(10) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `newfile_oldfile` varchar(200) DEFAULT NULL,
  `user` varchar(60) NOT NULL,
  `action_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditory`
--

LOCK TABLES `auditory` WRITE;
/*!40000 ALTER TABLE `auditory` DISABLE KEYS */;
INSERT INTO `auditory` VALUES (1,'INSERT','client','ID de cliente: 1','root@localhost','2025-03-22 18:09:25'),(2,'INSERT','client','ID de cliente: 2','root@localhost','2025-03-22 18:09:25'),(3,'INSERT','client','ID de cliente: 3','root@localhost','2025-03-22 18:09:25'),(4,'INSERT','client','ID de cliente: 4','root@localhost','2025-03-22 18:09:25'),(5,'INSERT','client','ID de cliente: 5','root@localhost','2025-03-22 18:09:25'),(6,'INSERT','client','ID de cliente: 6','root@localhost','2025-03-22 18:09:25'),(7,'INSERT','client','ID de cliente: 7','root@localhost','2025-03-22 18:09:25'),(8,'INSERT','client','ID de cliente: 8','root@localhost','2025-03-22 18:09:25'),(9,'INSERT','client','ID de cliente: 9','root@localhost','2025-03-22 18:09:25'),(10,'INSERT','client','ID de cliente: 10','root@localhost','2025-03-22 18:09:25'),(11,'INSERT','client','ID de cliente: 11','root@localhost','2025-03-22 18:09:25'),(12,'INSERT','client','ID de cliente: 12','root@localhost','2025-03-22 18:09:25'),(13,'INSERT','client','ID de cliente: 13','root@localhost','2025-03-22 18:09:25'),(14,'INSERT','client','ID de cliente: 14','root@localhost','2025-03-22 18:09:25'),(15,'INSERT','client','ID de cliente: 15','root@localhost','2025-03-22 18:09:25'),(16,'INSERT','client','ID de cliente: 16','root@localhost','2025-03-22 18:09:25'),(17,'UPDATE','sale','Viejo ID: 1 - Nuevo ID: 1 | Vieja fecha: 2025-03-22 15:09:25 - Nueva fecha: 2025-03-22 15:11:14 | Viejo ID cliente: 1 - Nuevo ID cliente: 10','root@localhost','2025-03-22 18:11:14'),(18,'UPDATE','sale_detail','Viejo ID Venta: 1 - Nuevo ID Venta: 1 | Viejo ID Producto: 3 - Nuevo ID Producto: 2 | Vieja Cantidad: 2 - Nueva Cantidad: 4','root@localhost','2025-03-22 18:11:16'),(19,'DELETE','sale_detail','Venta ID: 2 - Producto ID: 1 - Cantidad: 1','root@localhost','2025-03-22 18:11:17'),(20,'DELETE','sale_detail','Venta ID: 2 - Producto ID: 7 - Cantidad: 2','root@localhost','2025-03-22 18:11:17'),(22,'DELETE','sale','ID: 2 - Fecha: 2025-03-22 15:09:25 - ID cliente: 2','root@localhost','2025-03-22 18:11:17');
/*!40000 ALTER TABLE `auditory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (8,'Accesorios de Viaje'),(7,'Almacenamiento'),(2,'Audio y Sonido'),(10,'Camaras y Fotografia'),(14,'Cargadores y Energia'),(15,'Consolas y Videojuegos'),(1,'Electrodomesticos'),(9,'Iluminacion'),(12,'Impresion'),(4,'Monitores'),(5,'Muebles de Oficina'),(3,'Perifericos'),(13,'Produccion Musical'),(11,'Redes y Conectividad'),(6,'Tecnologia Wearable');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT 'Sin Nombre',
  `email` varchar(70) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Federico Di Iorio','fede.diiorio@email.com','1122334455'),(2,'Maria Gonzalez','maria.gonzalez@email.com','1144556677'),(3,'Carlos Rodriguez','carlos.rodriguez@email.com','1166778899'),(4,'Ana Fernandez','ana.fernandez@email.com','1188990011'),(5,'Diego Lopez','diego.lopez@email.com','1122446688'),(6,'Laura Martinez','laura.martinez@email.com','1133557799'),(7,'Pedro Sanchez','pedro.sanchez@email.com','1155667788'),(8,'Sofia Ramirez','sofia.ramirez@email.com','1177889900'),(9,'Martin Herrera','martin.herrera@email.com','1199001122'),(10,'Gabriela Castro','gabriela.castro@email.com','1100112233'),(11,'Ricardo Vargas','ricardo.vargas@email.com','1122113344'),(12,'Elena Duarte','elena.duarte@email.com','1133224455'),(13,'Roberto Molina','roberto.molina@email.com','1144335566'),(14,'Patricia Guzman','patricia.guzman@email.com','1155446677'),(15,'Fernando Rios','fernando.rios@email.com','1166557788'),(16,'Carlos Carloni','carlosenllamas@email.com','1222334455');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_insert_client` AFTER INSERT ON `client` FOR EACH ROW BEGIN
	INSERT INTO auditory (action_name, table_name, newfile_oldfile, user) 
    VALUES ('INSERT', 'client', CONCAT('ID de cliente: ', NEW.id), CURRENT_USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-03-22 18:09:25','root@localhost'),(2,'2025-03-22 18:09:25','root@localhost'),(3,'2025-03-22 18:09:25','root@localhost'),(4,'2025-03-22 18:09:25','root@localhost'),(5,'2025-03-22 18:09:25','root@localhost'),(6,'2025-03-22 18:10:45','root@localhost'),(7,'2025-03-22 18:10:48','root@localhost'),(8,'2025-03-22 18:10:52','root@localhost'),(9,'2025-03-22 18:10:59','root@localhost');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_before_insert_order` BEFORE INSERT ON `orders` FOR EACH ROW BEGIN
    SET NEW.user = CURRENT_USER();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_detail` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `fk_orders_detail_product` (`product_id`),
  CONSTRAINT `fk_orders_detail_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_orders_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `orders_detail_chk_1` CHECK ((`quantity` >= 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_detail`
--

LOCK TABLES `orders_detail` WRITE;
/*!40000 ALTER TABLE `orders_detail` DISABLE KEYS */;
INSERT INTO `orders_detail` VALUES (1,3,2),(2,10,3),(2,14,1),(3,5,1),(3,8,3),(3,17,2),(4,21,1),(4,22,2),(5,9,2),(5,18,1),(6,4,3),(7,4,3),(7,7,1),(8,1,4),(8,7,1),(9,1,4);
/*!40000 ALTER TABLE `orders_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_product_category` (`category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `product_chk_1` CHECK ((`price` >= 0.01)),
  CONSTRAINT `product_chk_2` CHECK ((`stock` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Cafetera Express','Cafetera automatica con espumador de leche',199.99,17,1),(2,'Auriculares Bluetooth','Auriculares inalambricos con cancelacion de ruido',89.99,25,2),(3,'Teclado Mecanico','Teclado mecanico RGB con switches rojos',79.50,11,3),(4,'Monitor 24\"','Monitor LED Full HD de 24 pulgadas',159.99,14,4),(5,'Silla Gamer','Silla ergonomica para gaming con reposabrazos ajustables',249.00,3,5),(6,'Smartwatch','Reloj inteligente con monitor de actividad fisica',129.99,20,6),(7,'Disco SSD 1TB','Unidad de estado solido de 1TB NVMe',119.50,14,7),(8,'Mochila Antirrobo','Mochila impermeable con puerto USB',45.99,18,8),(9,'Lampara LED Escritorio','Lampara LED regulable con carga inalambrica',39.90,22,9),(10,'Mouse Inalambrico','Mouse ergonomico con sensor optico de alta precision',29.99,30,3),(11,'Camara Web HD','Camara web 1080p con microfono integrado',59.99,10,10),(12,'Parlante Bluetooth','Altavoz portatil con sonido envolvente',55.00,14,2),(13,'Tablet 10\"','Tableta Android de 10 pulgadas con 64GB de almacenamiento',199.00,7,6),(14,'Router WiFi 6','Router de última generacion con alta velocidad y cobertura',89.99,9,11),(15,'Impresora Multifuncion','Impresora 3 en 1 (escaner, copiadora, impresora)',179.00,6,12),(16,'Ventilador USB','Mini ventilador portatil con carga USB',12.99,35,9),(17,'Power Bank 20000mAh','Bateria externa de alta capacidad con carga rapida',39.99,17,8),(18,'Alfombrilla Gaming','Mousepad XL con base antideslizante',19.50,40,3),(19,'Controlador MIDI','Controlador de audio para produccion musical',249.99,3,13),(20,'Cargador Inalambrico','Cargador Qi compatible con dispositivos iOS y Android',25.99,28,14),(21,'Consola de Videojuegos','Consola de última generacion con graficos en 4K',499.99,10,15),(22,'Control Inalambrico','Mando inalambrico con vibracion y gatillos adaptativos',69.99,25,15),(23,'Tarjeta de Memoria 256GB','Memoria microSD con alta velocidad de lectura',49.99,30,7),(24,'Lentes de Realidad Virtual','Gafas VR compatibles con PC y consolas',299.99,5,15),(25,'Soporte para Monitor','Base ajustable para monitor con espacio de almacenamiento',35.99,20,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `client_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sale_client` (`client_id`),
  CONSTRAINT `fk_sale_client` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,'2025-03-22 18:11:14',10),(3,'2025-03-22 18:09:25',3),(4,'2025-03-22 18:09:25',4),(5,'2025-03-22 18:09:25',5),(6,'2025-03-22 18:09:25',6),(7,'2025-03-22 18:09:25',7),(8,'2025-03-22 18:09:25',8),(9,'2025-03-22 18:09:25',9),(10,'2025-03-22 18:09:25',10),(11,'2025-03-22 18:09:25',11),(12,'2025-03-22 18:09:25',12),(13,'2025-03-22 18:09:25',13),(14,'2025-03-22 18:09:25',14),(15,'2025-03-22 18:09:25',15),(16,'2025-03-22 18:09:25',1),(17,'2025-03-22 18:09:25',2),(18,'2025-03-22 18:09:25',3),(19,'2025-03-22 18:09:25',1),(20,'2025-03-22 18:09:25',14),(21,'2025-03-22 18:10:33',1),(22,'2025-03-22 18:10:40',1),(23,'2025-03-22 18:10:42',1);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_sale` AFTER UPDATE ON `sale` FOR EACH ROW BEGIN
	INSERT INTO auditory (action_name, table_name, newfile_oldfile, user)
    VALUES ('UPDATE', 'sale', 
		CONCAT('Viejo ID: ', OLD.id, ' - Nuevo ID: ', NEW.id, ' | Vieja fecha: ', OLD.date, ' - Nueva fecha: ', NEW.date, ' | Viejo ID cliente: ', OLD.client_id, ' - Nuevo ID cliente: ', NEW.client_id), 
        CURRENT_USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_before_delete_sale` BEFORE DELETE ON `sale` FOR EACH ROW BEGIN
    -- Guardar todos los detalles de la venta en auditory antes de que se eliminen por el cascade
    INSERT INTO auditory (action_name, table_name, newfile_oldfile, user)
    SELECT 'DELETE', 'sale_detail',
        CONCAT('Venta ID: ', sale_id, ' - Producto ID: ', product_id, ' - Cantidad: ', quantity),
        CURRENT_USER()
    FROM coder_inventory.sale_detail
    WHERE sale_id = OLD.id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_sale` AFTER DELETE ON `sale` FOR EACH ROW BEGIN
	INSERT INTO auditory (action_name, table_name, newfile_oldfile, user)
    VALUES ('DELETE', 'sale',
		CONCAT('ID: ', OLD.id, ' - Fecha: ', OLD.date, ' - ID cliente: ', OLD.client_id),
        CURRENT_USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sale_detail`
--

DROP TABLE IF EXISTS `sale_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_detail` (
  `sale_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`sale_id`,`product_id`),
  KEY `fk_sale_detail_product` (`product_id`),
  CONSTRAINT `fk_sale_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fk_sale_detail_sale` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sale_detail_chk_1` CHECK ((`quantity` >= 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_detail`
--

LOCK TABLES `sale_detail` WRITE;
/*!40000 ALTER TABLE `sale_detail` DISABLE KEYS */;
INSERT INTO `sale_detail` VALUES (1,2,4),(1,5,1),(1,8,3),(3,2,1),(3,9,4),(3,10,2),(4,4,2),(5,6,3),(5,8,1),(6,2,2),(6,7,1),(7,5,3),(7,10,2),(8,3,1),(8,6,1),(9,1,2),(9,4,3),(9,9,2),(10,2,1),(10,8,2),(11,5,1),(11,6,2),(12,3,3),(13,1,1),(13,7,2),(14,4,1),(14,8,1),(15,2,3),(15,9,1),(16,5,2),(16,10,1),(17,1,3),(17,6,2),(18,2,1),(18,7,1),(19,4,2),(19,8,3),(20,3,2),(20,9,1),(21,1,1),(21,3,2),(21,5,1),(22,3,2),(23,5,1);
/*!40000 ALTER TABLE `sale_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_sale_detail` AFTER UPDATE ON `sale_detail` FOR EACH ROW BEGIN
	INSERT INTO auditory (action_name, table_name, newfile_oldfile, user)
    VALUES ('UPDATE', 'sale_detail', 
    CONCAT(
		'Viejo ID Venta: ', OLD.sale_id, ' - Nuevo ID Venta: ', NEW.sale_id, 
        ' | Viejo ID Producto: ', OLD.product_id, ' - Nuevo ID Producto: ', NEW.product_id, 
        ' | Vieja Cantidad: ', OLD.quantity, ' - Nueva Cantidad: ', NEW.quantity),
    CURRENT_USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vw_category`
--

DROP TABLE IF EXISTS `vw_category`;
/*!50001 DROP VIEW IF EXISTS `vw_category`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_category` AS SELECT 
 1 AS `id`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_client`
--

DROP TABLE IF EXISTS `vw_client`;
/*!50001 DROP VIEW IF EXISTS `vw_client`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_client` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `email`,
 1 AS `phone`,
 1 AS `total_purchases`,
 1 AS `purchased_products`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_orders`
--

DROP TABLE IF EXISTS `vw_orders`;
/*!50001 DROP VIEW IF EXISTS `vw_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_orders` AS SELECT 
 1 AS `id`,
 1 AS `date`,
 1 AS `user`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_orders_detail`
--

DROP TABLE IF EXISTS `vw_orders_detail`;
/*!50001 DROP VIEW IF EXISTS `vw_orders_detail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_orders_detail` AS SELECT 
 1 AS `order_id`,
 1 AS `product_id`,
 1 AS `name`,
 1 AS `unit_price`,
 1 AS `quantity`,
 1 AS `subtotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_product`
--

DROP TABLE IF EXISTS `vw_product`;
/*!50001 DROP VIEW IF EXISTS `vw_product`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_product` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `price`,
 1 AS `stock`,
 1 AS `category`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_sale`
--

DROP TABLE IF EXISTS `vw_sale`;
/*!50001 DROP VIEW IF EXISTS `vw_sale`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_sale` AS SELECT 
 1 AS `id`,
 1 AS `date`,
 1 AS `name`,
 1 AS `email`,
 1 AS `phone`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_sale_detail`
--

DROP TABLE IF EXISTS `vw_sale_detail`;
/*!50001 DROP VIEW IF EXISTS `vw_sale_detail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_sale_detail` AS SELECT 
 1 AS `sale_id`,
 1 AS `name`,
 1 AS `unit_price`,
 1 AS `quantity`,
 1 AS `subtotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'coder_inventory'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_get_client_spent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_client_spent`(client_id INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total_spent DECIMAL(10,2);
    
    SELECT COALESCE(SUM(p.price * sd.quantity), 0) 
    INTO total_spent
    FROM sale AS s
    JOIN sale_detail AS sd ON s.id = sd.sale_id
    JOIN product AS p ON sd.product_id = p.id
    WHERE s.client_id = client_id;
    
    RETURN total_spent;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_top_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_top_client`() RETURNS varchar(150) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE top_client VARCHAR(150);
    
    SELECT CONCAT(c.id, ' - ', c.name, ' (', COUNT(s.id), ' compras)') 
    INTO top_client
    FROM client AS c
    JOIN sale AS s ON c.id = s.client_id
    GROUP BY c.id
    ORDER BY COUNT(s.id) DESC
    LIMIT 1;

    RETURN top_client;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_stock`(
	IN p_quantity INT,
    IN p_product_id INT
)
BEGIN
	UPDATE product
    SET stock = stock + p_quantity
    WHERE id = p_product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_create_order`(
	OUT p_order_id INT
)
BEGIN
	INSERT INTO orders () VALUES ();
    SET p_order_id = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_sale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_create_sale`(
	IN p_client_id INT, 
    OUT p_sale_id INT
)
BEGIN
    INSERT INTO sale (client_id) VALUES (p_client_id);
    SET p_sale_id = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_discount_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_discount_stock`(
	IN p_quantity INT, 
    IN p_product_id INT
)
BEGIN
 
    UPDATE product
    SET stock = stock - p_quantity
    WHERE id = p_product_id 
    AND stock >= p_quantity;

    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Stock insuficiente';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_process_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_process_order`(
	IN p_order_id INT,
    IN p_product_id INT,
    IN p_quantity INT
)
BEGIN

	START TRANSACTION;
    
    CALL sp_add_stock(p_quantity, p_product_id);
    
    INSERT INTO orders_detail (order_id, product_id, quantity) 
    VALUES (p_order_id, p_product_id, p_quantity);
    
    COMMIT;
    
    SELECT 'Orden procesada correctamente' AS message;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_process_sale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_process_sale`(
	IN p_sale_id INT, 
    IN p_product_id INT, 
    IN p_quantity INT
)
BEGIN

    START TRANSACTION;

    CALL sp_discount_stock(p_quantity, p_product_id);

    INSERT INTO sale_detail (sale_id, product_id, quantity) 
    VALUES (p_sale_id, p_product_id, p_quantity);

    COMMIT;

    SELECT 'Venta procesada correctamente' AS message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_category`
--

/*!50001 DROP VIEW IF EXISTS `vw_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_category` AS select `category`.`id` AS `id`,`category`.`name` AS `name` from `category` order by `category`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_client`
--

/*!50001 DROP VIEW IF EXISTS `vw_client`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_client` AS select `c`.`id` AS `id`,`c`.`name` AS `name`,`c`.`email` AS `email`,`c`.`phone` AS `phone`,count(`s`.`id`) AS `total_purchases`,coalesce(sum(`sd`.`quantity`),0) AS `purchased_products` from ((`client` `c` left join `sale` `s` on((`c`.`id` = `s`.`client_id`))) left join `sale_detail` `sd` on((`s`.`id` = `sd`.`sale_id`))) group by `c`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_orders`
--

/*!50001 DROP VIEW IF EXISTS `vw_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_orders` AS select `orders`.`id` AS `id`,`orders`.`date` AS `date`,`orders`.`user` AS `user` from `orders` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_orders_detail`
--

/*!50001 DROP VIEW IF EXISTS `vw_orders_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_orders_detail` AS select `o`.`order_id` AS `order_id`,`p`.`id` AS `product_id`,`p`.`name` AS `name`,`p`.`price` AS `unit_price`,`o`.`quantity` AS `quantity`,(`o`.`quantity` * `p`.`price`) AS `subtotal` from (`orders_detail` `o` join `product` `p` on((`p`.`id` = `o`.`product_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_product`
--

/*!50001 DROP VIEW IF EXISTS `vw_product`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_product` AS select `p`.`id` AS `id`,`p`.`name` AS `name`,`p`.`description` AS `description`,`p`.`price` AS `price`,`p`.`stock` AS `stock`,`c`.`name` AS `category` from (`product` `p` join `category` `c` on((`c`.`id` = `p`.`category_id`))) order by `p`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_sale`
--

/*!50001 DROP VIEW IF EXISTS `vw_sale`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_sale` AS select `s`.`id` AS `id`,`s`.`date` AS `date`,`c`.`name` AS `name`,`c`.`email` AS `email`,`c`.`phone` AS `phone`,sum((`sd`.`quantity` * `p`.`price`)) AS `total` from (((`sale` `s` join `client` `c` on((`c`.`id` = `s`.`client_id`))) join `sale_detail` `sd` on((`s`.`id` = `sd`.`sale_id`))) join `product` `p` on((`sd`.`product_id` = `p`.`id`))) group by `s`.`id`,`s`.`date`,`s`.`client_id` order by `s`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_sale_detail`
--

/*!50001 DROP VIEW IF EXISTS `vw_sale_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_sale_detail` AS select `sd`.`sale_id` AS `sale_id`,`p`.`name` AS `name`,`p`.`price` AS `unit_price`,`sd`.`quantity` AS `quantity`,(`sd`.`quantity` * `p`.`price`) AS `subtotal` from (`sale_detail` `sd` join `product` `p` on((`p`.`id` = `sd`.`product_id`))) order by `sd`.`sale_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-22 15:15:45
