CREATE DATABASE  IF NOT EXISTS `cape_codd` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cape_codd`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cape_codd
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyer` (
  `Buyer` char(30) NOT NULL,
  `Department` char(30) DEFAULT NULL,
  PRIMARY KEY (`Buyer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES ('Cindy Lo','Camping'),('Jerry Martin','Climbing'),('Nancy Meyers','Water Sports'),('Pete Hansen','Water Sports');
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_sku_2014`
--

DROP TABLE IF EXISTS `catalog_sku_2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_sku_2014` (
  `CatalogID` int(11) NOT NULL,
  `SKU` int(11) NOT NULL,
  `SKU_Description` varchar(35) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  `CatalogPage` int(11) DEFAULT NULL,
  `DateOnWebSite` date DEFAULT NULL,
  PRIMARY KEY (`CatalogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_sku_2014`
--

LOCK TABLES `catalog_sku_2014` WRITE;
/*!40000 ALTER TABLE `catalog_sku_2014` DISABLE KEYS */;
INSERT INTO `catalog_sku_2014` VALUES (20140001,100100,'Std. Scuba Tank, Yellow','Water Sports',23,'2014-01-01'),(20140002,100300,'Std. Scuba Tank, Light Blue','Water Sports',23,'2014-01-01'),(20140003,100400,'Std. Scuba Tank, Dark Blue','Water Sports',NULL,'2014-01-08'),(20140004,101100,'Dive Mask, Small Clear','Water Sports',26,'2014-01-01'),(20140005,101200,'Dive Mask, Med Clear','Water Sports',26,'2014-01-01'),(20140006,201000,'Half-dome Tent','Camping',46,'2014-01-01'),(20140007,202000,'Half-dome Tent Vestibule','Camping',46,'2014-01-01'),(20140008,301000,'Light Fly Climbing Harness','Climbing',77,'2014-01-01'),(20140009,302000,'Locking Carabiner, Oval','Climbing',79,'2014-01-01');
/*!40000 ALTER TABLE `catalog_sku_2014` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_sku_2015`
--

DROP TABLE IF EXISTS `catalog_sku_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_sku_2015` (
  `CatalogID` int(11) NOT NULL,
  `SKU` int(11) NOT NULL,
  `SKU_Description` varchar(35) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  `CatalogPage` int(11) DEFAULT NULL,
  `DateOnWebSite` date DEFAULT NULL,
  PRIMARY KEY (`CatalogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_sku_2015`
--

LOCK TABLES `catalog_sku_2015` WRITE;
/*!40000 ALTER TABLE `catalog_sku_2015` DISABLE KEYS */;
INSERT INTO `catalog_sku_2015` VALUES (20150001,100100,'Std. Scuba Tank, Yellow','Water Sports',23,'2015-01-01'),(20150002,100200,'Std. Scuba Tank, Light Blue','Water Sports',23,'2015-01-01'),(20150003,101100,'Dive Mask, Small Clear','Water Sports',27,'2015-01-08'),(20150004,101200,'Dive Mask, Med Clear','Water Sports',27,'2015-01-01'),(20150005,201000,'Half-dome Tent','Camping',45,'2015-01-01'),(20150006,202000,'Half-dome Tent Vestibule','Camping',45,'2015-01-01'),(20150007,203000,'Half-dome Tent Vestibule-Wide','Camping',NULL,'2015-01-04'),(20150008,301000,'Light Fly Climbing Harness','Climbing',76,'2015-01-01'),(20150009,302000,'Locking Carabiner, Oval','Climbing',78,'2015-01-01');
/*!40000 ALTER TABLE `catalog_sku_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `WarehouseID` int(11) NOT NULL,
  `SKU` int(11) NOT NULL,
  `SKU_Description` char(35) NOT NULL,
  `QuantityOnHand` int(11) DEFAULT NULL,
  `QuantityOnOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`SKU`,`WarehouseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (100,100100,'Std. Scuba Tank, Yellow',250,0),(200,100100,'Std. Scuba Tank, Yellow',100,50),(300,100100,'Std. Scuba Tank, Yellow',100,0),(400,100100,'Std. Scuba Tank, Yellow',200,0),(100,100200,'Std. Scuba Tank, Magenta',200,30),(200,100200,'Std. Scuba Tank, Magenta',75,75),(300,100200,'Std. Scuba Tank, Magenta',100,100),(400,100200,'Std. Scuba Tank, Magenta',250,0),(100,101100,'Dive Mask, Small Clear',0,500),(200,101100,'Dive Mask, Small Clear',0,500),(300,101100,'Dive Mask, Small Clear',300,200),(400,101100,'Dive Mask, Small Clear',450,0),(100,101200,'Dive Mask, Med Clear',100,500),(200,101200,'Dive Mask, Med Clear',50,500),(300,101200,'Dive Mask, Med Clear',475,0),(400,101200,'Dive Mask, Med Clear',250,250),(100,201000,'Half-dome Tent',2,100),(200,201000,'Half-dome Tent',10,250),(300,201000,'Half-dome Tent',250,0),(400,201000,'Half-dome Tent',0,250),(100,202000,'Half-dome Tent Vestibule',10,250),(200,202000,'Half-dome Tent Vestibule',1,250),(300,202000,'Half-dome Tent Vestibule',100,0),(400,202000,'Half-dome Tent Vestibule',0,200),(100,301000,'Light Fly Climbing Harness',300,250),(200,301000,'Light Fly Climbing Harness',250,250),(300,301000,'Light Fly Climbing Harness',0,250),(400,301000,'Light Fly Climbing Harness',0,250),(100,302000,'Locking carabiner, Oval',1000,0),(200,302000,'Locking carabiner, Oval',1250,0),(300,302000,'Locking carabiner, Oval',500,500),(400,302000,'Locking carabiner, Oval',0,1000);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item` (
  `OrderNumber` int(11) NOT NULL DEFAULT '0',
  `SKU` int(11) NOT NULL DEFAULT '0',
  `Quantity` int(11) DEFAULT NULL,
  `Price` float(5,2) DEFAULT NULL,
  `ExtendedPrice` float(5,2) DEFAULT NULL,
  PRIMARY KEY (`OrderNumber`,`SKU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1000,201000,1,300.00,300.00),(1000,202000,1,130.00,130.00),(2000,101100,4,50.00,200.00),(2000,101200,2,50.00,100.00),(3000,100200,1,300.00,300.00),(3000,101100,2,50.00,100.00),(3000,101200,1,50.00,50.00);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_order`
--

DROP TABLE IF EXISTS `retail_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_order` (
  `OrderNumber` int(11) NOT NULL DEFAULT '0',
  `StoreNumber` int(11) DEFAULT NULL,
  `StoreZip` char(9) DEFAULT NULL,
  `OrderMonth` char(12) DEFAULT NULL,
  `OrderYear` int(11) DEFAULT NULL,
  `OrderTotal` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_order`
--

LOCK TABLES `retail_order` WRITE;
/*!40000 ALTER TABLE `retail_order` DISABLE KEYS */;
INSERT INTO `retail_order` VALUES (1000,10,'98110','December',2014,445.00),(2000,20,'02335','December',2014,310.00),(3000,10,'98110','January',2015,480.00);
/*!40000 ALTER TABLE `retail_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sku_data`
--

DROP TABLE IF EXISTS `sku_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sku_data` (
  `SKU` int(11) NOT NULL DEFAULT '0',
  `SKU_Description` char(35) DEFAULT NULL,
  `Department` char(30) DEFAULT NULL,
  `Buyer` char(30) DEFAULT NULL,
  PRIMARY KEY (`SKU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sku_data`
--

LOCK TABLES `sku_data` WRITE;
/*!40000 ALTER TABLE `sku_data` DISABLE KEYS */;
INSERT INTO `sku_data` VALUES (100100,'Std. Scuba Tank, Yello','Water Sports','Pete Hansen'),(100200,'Std. Scuba Tank, Magenta','Water Sports','Pete Hansen'),(101100,'Dive Mask, Small Clear','Water Sports','Nancy Meyers'),(101200,'Dive Mask, Med Clear','Water Sports','Nancy Meyers'),(201000,'Half-dome Tent','Camping','Cindy Lo'),(202000,'Half-dome Tent Vestibule','Camping','Cindy Lo'),(301000,'Light Fly Climbing Harness','Climbing','Jerry Martin'),(302000,'Locking Carabiner, Oval','Climbing','Jerry Martin');
/*!40000 ALTER TABLE `sku_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse` (
  `WarehouseID` int(11) NOT NULL,
  `WarehouseCity` char(30) NOT NULL,
  `WarehouseState` char(2) NOT NULL,
  `Manager` char(30) DEFAULT NULL,
  `SquareFeet` int(11) DEFAULT NULL,
  PRIMARY KEY (`WarehouseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (100,'Atlanta','GA','Dave Jones',125000),(200,'Chicago','IL','Lucille Smith',100000),(300,'Bangor','ME','Bart Evans',150000),(400,'Seattle','WA','Dale Rogers',130000),(500,'San Francisco','CA','Grace Jefferson',200000);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cape_codd'
--

--
-- Dumping routines for database 'cape_codd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-08 15:43:38
