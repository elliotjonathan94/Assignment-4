-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: assignment4
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `Questions`
--

DROP TABLE IF EXISTS `Questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Questions` (
  `Hometown` varchar(255) DEFAULT NULL,
  `Music` varchar(255) DEFAULT NULL,
  `Weather` varchar(255) DEFAULT NULL,
  `Animal` varchar(255) DEFAULT NULL,
  `Flower` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Questions`
--

LOCK TABLES `Questions` WRITE;
/*!40000 ALTER TABLE `Questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyanswers`
--

DROP TABLE IF EXISTS `surveyanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyanswers` (
  `Hometown` varchar(255) DEFAULT NULL,
  `Genre` varchar(255) DEFAULT NULL,
  `Weather` varchar(255) DEFAULT NULL,
  `Animals` varchar(255) DEFAULT NULL,
  `Flowers` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyanswers`
--

LOCK TABLES `surveyanswers` WRITE;
/*!40000 ALTER TABLE `surveyanswers` DISABLE KEYS */;
INSERT INTO `surveyanswers` VALUES ('Linden','Rock','Sunshine','Dog','Dogwood'),('Houston','Rock and Roll','Breezy','Horse','Daisy'),('Greenville','Hip Hop','Snow','Dog','RoseFayetteville'),('Charlotte','Hip Hop','Breezy','Cat','Daisy'),('\'Wilmington','Country','Sunny','Horse','Rose'),('Dunn','Country','Sunny','Dog','Petunia'),('Daytona Beach','Reggae','Sunny','Shark','Sunflower'),('Linden','Rock','Sunshine','Dog','Dogwood'),('Houston','Rock and Roll','Breezy','Horse','Daisy'),('Greenville','Hip Hop','Snow','Dog','RoseFayetteville'),('Charlotte','Hip Hop','Breezy','Cat','Daisy'),('\'Wilmington','Country','Sunny','Horse','Rose'),('Dunn','Country','Sunny','Dog','Petunia'),('Daytona Beach','Reggae','Sunny','Shark','Sunflower'),('Linden','Rock','Sunshine','Dog','Dogwood'),('Houston','Rock and Roll','Breezy','Horse','Daisy'),('Greenville','Hip Hop','Snow','Dog','RoseFayetteville'),('Charlotte','Hip Hop','Breezy','Cat','Daisy'),('\'Wilmington','Country','Sunny','Horse','Rose'),('Dunn','Country','Sunny','Dog','Petunia'),('Daytona Beach','Reggae','Sunny','Shark','Sunflower'),('Linden','Rock','Sunshine','Dog','Dogwood\nHouston');
/*!40000 ALTER TABLE `surveyanswers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-31  1:40:10
