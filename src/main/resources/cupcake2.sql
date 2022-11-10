CREATE DATABASE  IF NOT EXISTS `cupcake2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cupcake2`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cupcake2
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `bottom`
--

DROP TABLE IF EXISTS `bottom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bottom` (
                          `bottom_id` int NOT NULL AUTO_INCREMENT,
                          `name` varchar(45) NOT NULL,
                          `price` int NOT NULL,
                          PRIMARY KEY (`bottom_id`),
                          UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottom`
--

LOCK TABLES `bottom` WRITE;
/*!40000 ALTER TABLE `bottom` DISABLE KEYS */;
INSERT INTO `bottom` VALUES (1,'Chocolate',5),(2,'Vanilla',5),(3,'orange',10);
/*!40000 ALTER TABLE `bottom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cake`
--

DROP TABLE IF EXISTS `cake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cake` (
                        `top_id` int NOT NULL,
                        `cream_id` int NOT NULL,
                        `quantity` varchar(45) NOT NULL,
                        `bottom_id` int NOT NULL,
                        `total_price` varchar(45) NOT NULL,
                        `orderId` int NOT NULL,
                        PRIMARY KEY (`total_price`),
                        UNIQUE KEY `cream_id_UNIQUE` (`cream_id`),
                        UNIQUE KEY `total_price_UNIQUE` (`total_price`),
                        UNIQUE KEY `top_id_UNIQUE` (`top_id`),
                        UNIQUE KEY `bottom_id_UNIQUE` (`bottom_id`),
                        KEY `fk_cake_order1_idx` (`orderId`),
                        CONSTRAINT `fk_cake_bottom1` FOREIGN KEY (`bottom_id`) REFERENCES `bottom` (`bottom_id`),
                        CONSTRAINT `fk_cake_cream1` FOREIGN KEY (`cream_id`) REFERENCES `cream` (`cream_id`),
                        CONSTRAINT `fk_cake_order1` FOREIGN KEY (`orderId`) REFERENCES `order` (`order_id`),
                        CONSTRAINT `fk_cake_top1` FOREIGN KEY (`top_id`) REFERENCES `top` (`top_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cake`
--

LOCK TABLES `cake` WRITE;
/*!40000 ALTER TABLE `cake` DISABLE KEYS */;
INSERT INTO `cake` VALUES (1,1,'1',1,'122',0),(3,3,'45',3,'154',0),(2,2,'10',2,'155',0);
/*!40000 ALTER TABLE `cake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cream`
--

DROP TABLE IF EXISTS `cream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cream` (
                         `cream_id` int NOT NULL AUTO_INCREMENT,
                         `name` varchar(45) NOT NULL,
                         `price` int NOT NULL,
                         PRIMARY KEY (`cream_id`),
                         UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cream`
--

LOCK TABLES `cream` WRITE;
/*!40000 ALTER TABLE `cream` DISABLE KEYS */;
INSERT INTO `cream` VALUES (1,'Chocolate',5),(2,'Vanilla',5),(3,'orange',15),(4,'strawberry',25);
/*!40000 ALTER TABLE `cream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
                         `order_id` int NOT NULL AUTO_INCREMENT,
                         `orderdate` varchar(45) NOT NULL,
                         `User_username` varchar(45) NOT NULL,
                         PRIMARY KEY (`order_id`),
                         KEY `fk_Order_User_idx` (`User_username`),
                         CONSTRAINT `fk_Order_User` FOREIGN KEY (`User_username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (2,'1234','mayas');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top`
--

DROP TABLE IF EXISTS `top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top` (
                       `top_id` int NOT NULL AUTO_INCREMENT,
                       `name` varchar(45) NOT NULL,
                       `price` int NOT NULL,
                       PRIMARY KEY (`top_id`),
                       UNIQUE KEY `name_UNIQUE` (`name`),
                       UNIQUE KEY `price_UNIQUE` (`price`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top`
--

LOCK TABLES `top` WRITE;
/*!40000 ALTER TABLE `top` DISABLE KEYS */;
INSERT INTO `top` VALUES (1,'Chocolate',5),(2,'skinke',100),(3,'vanilla',125),(4,'orange',142);
/*!40000 ALTER TABLE `top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
                        `username` varchar(45) NOT NULL,
                        `password` varchar(45) NOT NULL,
                        `userrole` varchar(45) NOT NULL,
                        `balance` int NOT NULL,
                        PRIMARY KEY (`username`),
                        UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('mayas','6465','user',1124);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-09 13:55:18

