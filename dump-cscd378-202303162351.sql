-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (x86_64)
--
-- Host: 127.0.0.1    Database: cscd378
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.12-MariaDB-1:10.6.12+maria~ubu2004-log

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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `ItemID` int(10) NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(50) NOT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `ItemType` varchar(50) NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Cafe item menu, customers can order from.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Americano',3.65,'Coffee'),(2,'Espresso ',3.25,'Coffee'),(3,'Latte ',4.75,'Coffee'),(4,'Mocha',5.25,'Coffee'),(5,'Cold Brew ',4.25,'Coffee'),(6,'Iced Macchiato ',5.25,'Coffee'),(7,'Avocado Toast',9.50,'Breakfast Food'),(8,'Biscuits & Gravy',17.50,'Breakfast Food'),(9,'Egg White Omelet',10.75,'Breakfast Food'),(10,'Waffles',16.00,'Breakfast Food'),(11,'Pancakes',17.00,'Breakfast Food'),(12,'Breakfast Sandwich',NULL,'Breakfast Food'),(13,'Chicken Strips',17.50,'Other Food'),(14,'Fish & Chips',20.50,'Other Food'),(15,'Dirty Fries',17.50,'Other Food'),(16,'Mozzarella Sticks',15.00,'Other Food'),(17,'Onion Rings   ',NULL,'Other Food'),(18,'Nachos',17.50,'Other Food'),(19,'Classic Burger ',NULL,'Burgers'),(20,'Cole\'s Grilled Cheese ',16.50,'Burgers'),(21,'Hawaiian Burger ',17.25,'Burgers'),(22,'Veggie Burger ',16.50,'Burgers'),(23,'Mushroom & Swiss Burger ',17.25,'Burgers'),(24,'Philly Grilled Cheese ',17.00,'Burgers');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logs_default`
--

DROP TABLE IF EXISTS `sys_logs_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logs_default` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(16) NOT NULL,
  `message` varchar(2048) NOT NULL,
  `meta` varchar(2048) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logs_default`
--

LOCK TABLES `sys_logs_default` WRITE;
/*!40000 ALTER TABLE `sys_logs_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_logs_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int(10) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` char(72) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `users_UN` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='User accounts created to place an order.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cscd378'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 23:51:31
