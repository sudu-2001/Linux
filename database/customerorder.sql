-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: customerorder
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Current Database: `customerorder`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `customerorder` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `customerorder`;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `contactname` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postalcode` int DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Alpha Co.','John Smith','123 Baker St','London',12345,'United Kingdom'),(2,'Beta Solutions','Jane Doe','456 Oak Ave','Toronto',54321,'Canada'),(3,'Gamma Tech','Robert King','789 Maple Dr','New York',10001,'USA'),(4,'Delta Corp','Linda White','10 Pine St','Sydney',2000,'Australia'),(5,'Epsilon Ltd','David Green','11 Birch Rd','Berlin',10115,'Germany'),(6,'Zeta Enterprises','Nancy Brown','20 Cedar Ln','Paris',75001,'France'),(7,'Eta Innovations','Samuel Black','30 Spruce Way','Tokyo',99,'Japan'),(8,'Theta Systems','Martha Adams','40 Fir Blvd','Mexico City',1000,'Mexico'),(9,'Iota Technologies','Henry Grey','50 Palm St','Rio de Janeiro',20040,'Brazil'),(10,'Kappa Solutions','Emma Johnson','60 Willow Ave','Cape Town',8001,'South Africa'),(11,'ABC Corp','John Smith','123 Main St','New York',10001,'USA'),(12,'XYZ Ltd','Jane Doe','456 Market St','Los Angeles',90001,'USA'),(13,'Acme Inc','Alice Brown','789 Oak Ave','Chicago',60601,'USA'),(14,'Widget LLC','Bob Johnson','101 Maple Rd','New York',10001,'USA'),(15,'TechCo','Mary Davis','202 Pine St','Los Angeles',90001,'USA'),(16,'Innovatech','Steve White','303 Birch Dr','New York',10001,'USA'),(17,'FutureWorks','Lucy Green','404 Elm St','Los Angeles',90001,'USA'),(18,'DigiCorp','Mark Brown','505 Cedar St','Chicago',60601,'USA');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_product`
--

DROP TABLE IF EXISTS `new_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_product` (
  `productid` int NOT NULL,
  `productname` varchar(100) NOT NULL,
  `supplierid` int NOT NULL,
  `categoryid` int NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_product`
--

LOCK TABLES `new_product` WRITE;
/*!40000 ALTER TABLE `new_product` DISABLE KEYS */;
INSERT INTO `new_product` VALUES (6,'Keyboard',4,103,'per unit',45.00),(7,'Mouse',4,103,'per unit',25.00),(13,'Charger',8,109,'per unit',30.00),(15,'USB Drive',10,111,'per unit',20.00),(21,'Keyboard',4,103,'per unit',45.00),(22,'Mouse',4,103,'per unit',25.00),(28,'Charger',8,109,'per unit',30.00),(30,'USB Drive',10,111,'per unit',20.00);
/*!40000 ALTER TABLE `new_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL,
  `customerid` int DEFAULT NULL,
  `employeeid` int DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `shipperid` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,101,'2024-09-01',1,30),(2,3,102,'2024-09-02',2,10),(3,5,103,'2024-09-03',3,40),(4,7,104,'2024-09-04',1,70),(5,10,105,'2024-09-05',2,30),(16,3,116,'2024-09-16',1,80),(17,7,117,'2024-09-17',2,50),(18,9,118,'2024-09-18',3,20),(19,2,119,'2024-09-19',2,10),(20,6,120,'2024-09-20',1,30);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productid` int NOT NULL,
  `productname` varchar(100) NOT NULL,
  `supplierid` int NOT NULL,
  `categoryid` int NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `supplierid` (`supplierid`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`supplierid`) REFERENCES `supplier` (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Laptop',1,101,'per unit',1200.00),(2,'Smartphone',2,102,'per unit',800.00),(3,'Tablet',1,101,'per unit',500.00),(4,'Headphones',3,103,'per unit',150.00),(5,'Monitor',2,104,'per unit',300.00),(6,'Keyboard',4,103,'per unit',45.00),(7,'Mouse',4,103,'per unit',25.00),(8,'Smartwatch',3,102,'per unit',250.00),(9,'Printer',5,105,'per unit',200.00),(10,'Webcam',6,106,'per unit',80.00),(11,'External Hard Drive',1,107,'per unit',150.00),(12,'Docking Station',7,108,'per unit',120.00),(13,'Charger',8,109,'per unit',30.00),(14,'Router',9,110,'per unit',100.00),(15,'USB Drive',10,111,'per unit',20.00),(16,'Laptop',1,101,'per unit',1200.00),(17,'Smartphone',2,102,'per unit',800.00),(18,'Tablet',1,101,'per unit',500.00),(19,'Headphones',3,103,'per unit',150.00),(20,'Monitor',2,104,'per unit',300.00),(21,'Keyboard',4,103,'per unit',45.00),(22,'Mouse',4,103,'per unit',25.00),(23,'Smartwatch',3,102,'per unit',250.00),(24,'Printer',5,105,'per unit',200.00),(25,'Webcam',6,106,'per unit',80.00),(26,'External Hard Drive',1,107,'per unit',150.00),(27,'Docking Station',7,108,'per unit',120.00),(28,'Charger',8,109,'per unit',30.00),(29,'Router',9,110,'per unit',100.00),(30,'USB Drive',10,111,'per unit',20.00);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplierid` int NOT NULL,
  `suppliername` varchar(50) DEFAULT NULL,
  `contactname` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postalcode` int DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Tech Supplies Inc.','Alice Johnson','123 Tech Lane','San Francisco',94105,'USA'),(2,'Global Widgets','Bob Smith','456 Widget Rd','Toronto',54321,'Canada'),(3,'Mega Parts Co.','Carol Davis','789 Mega St','London',12345,'United Kingdom'),(4,'Super Gadgets Ltd.','David Brown','101 Gadget Ave','Sydney',2000,'Australia'),(5,'Innovative Solutions','Eva Wilson','202 Innovation Blvd','Berlin',10115,'Germany'),(6,'Precision Instruments','Frank Miller','303 Precision Pkwy','Paris',75001,'France'),(7,'Advanced Tech Supplies','Grace Lee','404 Advanced Dr','Tokyo',99,'Japan'),(8,'Future Electronics','Henry Clark','505 Future Blvd','Mexico City',1000,'Mexico'),(9,'Ultra Components','Ivy Martinez','606 Ultra St','Rio de Janeiro',20040,'Brazil'),(10,'NextGen Devices','Jack Wilson','707 Nextgen Ln','Cape Town',8001,'South Africa');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-24 15:25:11
