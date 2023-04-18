-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
-- DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE DATABASE externe;
USE externe;
CREATE TABLE `inventory` (`id` INT AUTO_INCREMENT PRIMARY KEY,`name` varchar(255) DEFAULT NULL,`price` FLOAT(10) DEFAU>
INSERT INTO `inventory` VALUES (NULL, 'toupie' , 11.50);
INSERT INTO `inventory` VALUES (NULL, 'bilboquet' , 5.36);
INSERT INTO `inventory` VALUES (NULL, 'train' , 9.99);

CREATE USER 'userb2b'@'%' IDENTIFIED BY 'user123';

GRANT ALL PRIVILEGES ON externe.* TO 'userexterne'@'%';

CREATE DATABASE interne;
USE interne;
CREATE TABLE `employee` (`id` INT AUTO_INCREMENT PRIMARY KEY,`name` varchar(255) DEFAULT NULL,`surname` varchar(255) D>
INSERT INTO `employee` VALUES (NULL, 'Shayann' , 'Gonzalez', 'shayanngonzalez@gmail.com');
INSERT INTO `employee` VALUES (NULL, 'Basile' , 'Lapute', 'BasileLapute@gmail.com');
INSERT INTO `employee` VALUES (NULL,  'Martin' , 'Lefayot', 'MartinLefayot@gmail.com');

CREATE USER 'userinternal'@'%' IDENTIFIED BY 'user123';

GRANT ALL PRIVILEGES ON interne.* TO 'userinterne'@'%';