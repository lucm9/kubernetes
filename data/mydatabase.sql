-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version    5.7.24-0ubuntu0.18.04.1
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

DROP TABLE IF EXISTS `quotes`;

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quote_UNIQUE` (`quote`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO `quotes` (`quote`, `id`) VALUES
('Do not stop when you are tired. STOP when you are DONE. --Unknown', 4),
('Every great story on the planet happened when someone decided not to give up, but kept going no matter what. -- Spryte Loriano', 3),
('Hard work beats talent when talent does not work hard. --Tim Notke', 1),
('Life is 10% what happens to you and 90% how you react to it. -- Charles R. Swindoll', 5),
('test', 6),
('When you want to succeed as bad as you want to breathe then you will be successful. --Eric Thomas', 2);
