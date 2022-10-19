-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: dbmsis661.chyifur9l1aw.us-east-1.rds.amazonaws.com    Database: dealership_system
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_first_name` varchar(45) NOT NULL,
  `customer_last_name` varchar(45) NOT NULL,
  `address_line1` varchar(45) NOT NULL,
  `address_line2` varchar(45) NOT NULL,
  `zip_code` varchar(5) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `<zip_code>_idx` (`zip_code`),
  CONSTRAINT `<zip_code>` FOREIGN KEY (`zip_code`) REFERENCES `ZipCode` (`zip_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Rebecca','Bradshaw','2243 Winston Way','','98647','5632341234','partygirl618@blank.com','0000-00-00'),(2,'Kristy','Lan','1546 Layer Street','Apt 341','94109','4156759864','KLan@blank.com','0000-00-00'),(3,'Yuan','Zhu','1234 20th Street','Apt 2','94115','2092368965','','0000-00-00'),(4,'Qiang','Zhang','90 Marina Street','Apt 7','93456','4152347890','princess@love.com','0000-00-00'),(5,'Tobenna ','Musa','789 Cosmos Way ','','94119','7077892345','honeydip@blank.com','0000-00-00'),(6,'Ifeoma','Mihedji','789 Yosemite Way','','96713','8725438900','Boss78@blank.com','0000-00-00'),(7,'Francisco ','Gutierrez ','101 Howard Street','Basement ','95852','4153452311','don@dons.usfca.edu','0000-00-00'),(8,'Derlis','Chavarria','908 Bogus Avenue','Apt 789','94118','5109345567','loverboy@blank.com','0000-00-00'),(9,'Alex','Jackson','1644 Sacramento Ave. ','Apt 2','94109','7898761235','halfbaked@blank.com','0000-00-00'),(10,'Jada','Williams','34 Water Street ','','94119','6784563766','queenB86@love.com','0000-00-00');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-19 16:15:10
