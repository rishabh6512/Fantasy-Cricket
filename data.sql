-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `TEAMS`
--

DROP TABLE IF EXISTS `TEAMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEAMS` (
  `NAME` varchar(11) DEFAULT NULL,
  `PLAYERS` varchar(131) DEFAULT NULL,
  `VALUE` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEAMS`
--

LOCK TABLES `TEAMS` WRITE;
/*!40000 ALTER TABLE `TEAMS` DISABLE KEYS */;
INSERT INTO `TEAMS` VALUES ('anku11','Virat Kohli,Rohit Sharma,Kedar Jadav,A Rahane,Manish Pandey,J Bumrah,Kuldeep,Yuvraj Singh,Hardhik Pandya,Y Cahal,MS Dhoni',800),('sammy11','Virat Kohli,Kedar Jadav,S Iyer,Manish Pandey,J Bumrah,Kuldeep,Umesh Yadav,Hardhik Pandya,Yuvraj Singh,R Ashwin,MS Dhoni',952),('bhupi11','Virat Kohli,Shikhar Dhawan,Rohit Sharma,Kedar Jadav,Bhuwaneshwar,Umesh Yadav,J Bumrah,Hardhik Pandya,Yuvraj Singh,R Jadeja,KL Rahul',945),('Internshala','Virat Kohli,Shikhar Dhawan,Rohit Sharma,Kedar Jadav,A Rahane,Bhuwaneshwar,J Bumrah,Kuldeep,R Ashwin,R Jadeja,MS Dhoni',944),('Final','Virat Kohli,Shikhar Dhawan,Rohit Sharma,Bhuwaneshwar,J Bumrah,R Jadeja,Yuvraj Singh,MS Dhoni,R Ashwin,Umesh Yadav,A Rahane',995);
/*!40000 ALTER TABLE `TEAMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match`
--

DROP TABLE IF EXISTS `match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match` (
  `player` varchar(14) DEFAULT NULL,
  `scored` smallint(6) DEFAULT NULL,
  `faced` tinyint(4) DEFAULT NULL,
  `fours` tinyint(4) DEFAULT NULL,
  `sixes` tinyint(4) DEFAULT NULL,
  `Bowled` tinyint(4) DEFAULT NULL,
  `maiden` tinyint(4) DEFAULT NULL,
  `given` tinyint(4) DEFAULT NULL,
  `wkts` tinyint(4) DEFAULT NULL,
  `catches` tinyint(4) DEFAULT NULL,
  `stumping` tinyint(4) DEFAULT NULL,
  `ro` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
INSERT INTO `match` VALUES ('Virat Kohli',102,98,8,2,0,0,0,0,0,0,1),('Yuvraj Singh',12,20,1,0,48,0,36,1,0,0,0),('A Rahane',49,75,3,0,0,0,0,0,1,0,0),('Shikhar Dhawan',32,35,4,0,0,0,0,0,0,0,0),('MS Dhoni',56,45,3,1,0,0,0,0,3,2,0),('Axar Patel',8,4,2,0,48,2,35,1,0,0,0),('Hardhik Pandya',42,36,3,3,30,0,25,0,1,0,0),('R Jadeja',18,10,1,1,60,3,50,2,1,0,1),('Kedar Jadav',65,60,7,0,24,0,24,0,0,0,0),('R Ashwin',23,42,3,0,60,2,45,6,0,0,0),('Umesh Yadav',0,0,0,0,54,0,50,4,1,0,0),('J Bumrah',0,0,0,0,60,2,49,1,0,0,0),('Bhuwaneshwar',15,12,2,0,60,1,46,2,0,0,0),('Rohit Sharma',46,65,5,1,0,0,0,0,1,0,0),('Dinesh Karthik',29,42,3,0,0,0,0,0,2,0,1),('KL Rahul',23,45,5,3,0,0,0,0,2,2,3),('Kuldeep',2,15,1,0,50,6,45,3,2,0,0),('Y Cahal',5,20,2,0,45,3,50,4,1,0,0),('S Iyer',60,70,6,3,0,0,0,0,2,0,0),('Manish Pandey',30,45,3,1,0,0,0,0,1,0,0);
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats` (
  `player` varchar(14) DEFAULT NULL,
  `matches` smallint(6) DEFAULT NULL,
  `runs` smallint(6) DEFAULT NULL,
  `100s` tinyint(4) DEFAULT NULL,
  `50s` tinyint(4) DEFAULT NULL,
  `batavg` decimal(4,2) DEFAULT NULL,
  `sr` decimal(5,2) DEFAULT NULL,
  `wkts` smallint(6) DEFAULT NULL,
  `bwlavg` decimal(5,2) DEFAULT NULL,
  `4WI` tinyint(4) DEFAULT NULL,
  `eco` decimal(3,2) DEFAULT NULL,
  `ctch` smallint(6) DEFAULT NULL,
  `stmp` tinyint(4) DEFAULT NULL,
  `value` smallint(6) DEFAULT NULL,
  `ctg` varchar(3) DEFAULT NULL,
  `team` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` VALUES ('Virat Kohli',189,8257,28,43,54.68,91.06,4,163.25,0,6.22,90,0,120,'BAT','IND'),('Shikhar Dhawan',86,3589,10,21,43.76,91.23,0,0.00,0,0.00,38,0,85,'BAT','IND'),('Rohit Sharma',158,5435,11,31,42.46,84.56,8,64.31,0,5.21,58,0,85,'BAT','IND'),('Kedar Jadav',25,565,2,1,56.50,123.30,11,20.09,0,5.11,13,0,90,'BAT','IND'),('A Rahane',78,2573,3,19,34.77,78.61,0,0.00,0,0.00,43,0,100,'BAT','IND'),('Bhuwaneshwar',67,208,0,0,9.45,72.28,70,37.74,2,4.88,19,0,75,'BWL','IND'),('Umesh Yadav',70,77,0,0,8.55,59.23,98,32.84,3,5.92,20,0,110,'BWL','IND'),('J Bumrah',16,1,0,0,0.50,10.00,26,26.42,2,4.92,5,0,60,'BWL','IND'),('R Ashwin',111,675,0,1,16.07,86.98,150,32.91,1,4.91,30,0,100,'AR','IND'),('R Jadeja',136,1914,0,10,31.37,85.29,155,35.87,6,4.90,51,0,85,'AR','IND'),('MS Dhoni',296,9496,10,64,51.32,88.69,1,31.00,0,5.16,256,38,75,'WK','IND'),('Dinesh Karthik',73,1365,0,8,28.73,73.22,0,0.00,0,0.00,49,7,75,'WK','IND'),('Hardhik Pandya',17,289,0,2,41.28,135.04,19,34.73,0,5.45,7,0,75,'AR','IND'),('Yuvraj Singh',304,8701,14,52,36.55,87.67,111,38.68,3,5.10,94,0,100,'AR','IND'),('Axar Patel',11,111,0,0,12.00,70.00,12,36.00,0,6.50,10,0,100,'BWL','IND'),('Y Cahal',136,1914,0,10,31.37,85.29,155,35.87,6,4.90,51,0,52,'AR','IND'),('Kuldeep',70,77,0,0,8.55,59.23,98,32.84,3,5.92,20,0,69,'BWL','IND'),('KL Rahul',73,1365,0,8,28.73,73.22,0,0.00,0,0.00,49,7,60,'WK','IND'),('S Iyer',78,2573,3,19,34.77,78.61,0,0.00,0,0.00,43,0,75,'BAT','IND'),('Manish Pandey',86,3589,10,21,43.76,91.23,0,0.00,0,0.00,38,0,78,'BAT','IND');
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:25
