-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: profind
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `pf_assignedprojects`
--

DROP TABLE IF EXISTS `pf_assignedprojects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_assignedprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assignation_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_assignedprojects`
--

LOCK TABLES `pf_assignedprojects` WRITE;
/*!40000 ALTER TABLE `pf_assignedprojects` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_assignedprojects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_category`
--

DROP TABLE IF EXISTS `pf_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_category`
--

LOCK TABLES `pf_category` WRITE;
/*!40000 ALTER TABLE `pf_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_contact`
--

DROP TABLE IF EXISTS `pf_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `phone_num` varchar(20) NOT NULL,
  `Description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_contact`
--

LOCK TABLES `pf_contact` WRITE;
/*!40000 ALTER TABLE `pf_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_portfolio`
--

DROP TABLE IF EXISTS `pf_portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `creation_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_portfolio`
--

LOCK TABLES `pf_portfolio` WRITE;
/*!40000 ALTER TABLE `pf_portfolio` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_portfolioelement`
--

DROP TABLE IF EXISTS `pf_portfolioelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_portfolioelement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(11) NOT NULL,
  `img_url` varchar(500) NOT NULL,
  `order` int(11) NOT NULL,
  `creation_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_portfolioelement`
--

LOCK TABLES `pf_portfolioelement` WRITE;
/*!40000 ALTER TABLE `pf_portfolioelement` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_portfolioelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_postulation`
--

DROP TABLE IF EXISTS `pf_postulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_postulation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `postulation_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `offered` float NOT NULL,
  `active` bit(1) NOT NULL,
  `descripction` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_postulation`
--

LOCK TABLES `pf_postulation` WRITE;
/*!40000 ALTER TABLE `pf_postulation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_postulation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_projects`
--

DROP TABLE IF EXISTS `pf_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `category_id` int(11) NOT NULL,
  `active` bit(1) NOT NULL,
  `publish_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `end_date` date DEFAULT NULL,
  `start_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_projects`
--

LOCK TABLES `pf_projects` WRITE;
/*!40000 ALTER TABLE `pf_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_users`
--

DROP TABLE IF EXISTS `pf_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `nickname` varchar(250) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `start_date` timestamp(6) NULL DEFAULT NULL,
  `picture` varchar(250) DEFAULT NULL,
  `ispublisher` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_users`
--

LOCK TABLES `pf_users` WRITE;
/*!40000 ALTER TABLE `pf_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'profind'
--

--
-- Dumping routines for database 'profind'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-08 10:38:40
