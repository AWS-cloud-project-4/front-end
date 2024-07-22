-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mozzy_guard_db
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location_district` varchar(45) NOT NULL,
  `location_x` int NOT NULL,
  `location_y` int NOT NULL,
  `location_lon` float NOT NULL,
  `location_lat` float NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='location table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'종로구',60,127,126.982,37.5704),(2,'중구',60,127,127,37.561),(3,'용산구',60,126,126.968,37.5361),(4,'성동구',61,127,127.039,37.5606),(5,'광진구',62,126,127.085,37.5357),(6,'동대문구',61,127,127.042,37.5716),(7,'중랑구',62,128,127.095,37.6038),(8,'성북구',61,127,127.02,37.5864),(9,'강북구',61,128,127.028,37.637),(10,'도봉구',61,129,127.05,37.6658),(11,'노원구',61,129,127.058,37.6515),(12,'은평구',59,127,126.931,37.6),(13,'서대문구',59,127,126.939,37.5764),(14,'마포구',59,127,126.911,37.5607),(15,'양천구',58,126,126.869,37.5142),(16,'강서구',58,126,126.852,37.5482),(17,'구로구',58,125,126.89,37.4926),(18,'금천구',59,124,126.904,37.4491),(19,'영등포구',58,126,126.898,37.5236),(20,'동작구',59,125,126.942,37.5097),(21,'관악구',59,125,126.954,37.4754),(22,'서초구',61,125,127.035,37.4808),(23,'강남구',61,126,127.05,37.5146),(24,'송파구',62,126,127.108,37.5118),(25,'강동구',62,126,127.126,37.5274);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-22 10:19:58