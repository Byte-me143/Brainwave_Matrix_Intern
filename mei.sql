-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: lib
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `Book_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `Author_name` varchar(20) DEFAULT NULL,
  `available` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (123,10,'J.K.Rowling',9),(124,20,'Shiva',18),(125,20,'Ram L',14),(126,15,'Nehru',13),(127,15,'Danny',12),(128,10,'Mithres',8),(129,20,'Imran',16),(130,15,'Navin',8),(131,20,'Jithu',13),(132,25,'Jerial',20),(133,10,'Lucky',7),(134,25,'Suresh',22),(135,10,'Ramesh G',7),(136,20,'Rakshan',14),(137,25,'Bharat',24);
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det`
--

DROP TABLE IF EXISTS `det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `det` (
  `S_no` int NOT NULL,
  `Book_id` int DEFAULT NULL,
  `Book_name` varchar(25) DEFAULT NULL,
  `QUANTITY` int DEFAULT NULL,
  PRIMARY KEY (`S_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det`
--

LOCK TABLES `det` WRITE;
/*!40000 ALTER TABLE `det` DISABLE KEYS */;
INSERT INTO `det` VALUES (1,123,'Harry Potter',10),(2,124,'The Giving Tree',20),(3,125,'The Velveteen',20),(4,126,'Little Bear',15),(5,127,' The Red',15),(6,128,' Bear The Starter',10),(7,129,' The Wind',20),(8,130,' My Dear',15),(9,131,'Harry Winner',20),(10,132,'The Boss',25),(11,133,'Oh My God',10),(12,134,'The Dad-Son',25),(13,135,'Money Bank ',10),(14,136,'The Ghost Ride ',20),(15,137,'Ball and Bat',25);
/*!40000 ALTER TABLE `det` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
select* from det;
select count(*) from data;
select* from data;
select Book_name, quantity from det;
update det set quantity=20 where S_NO=8;
alter table data add Type char(8) default "Handbook";
select*from det where quantity<>10;
select* from data where quantity>10 and available<20;
select Book_id,Author_name from data where available between 15 and 25;
select*from det where Book_name like "H%";
select Book_id,Author_name,quantity,available from data order by available;
select* from det order by quantity desc;
select QUANTITY, count(*) as num_books from data group by QUANTITY;
select QUANTITY, count(*) as num_books from data group by QUANTITY having count(*) > 2;
select max(available) from data;
select avg(quantity) from det;
Alter table data drop Type;
delete from data where Book_id = 123;
insert into data (Book_id,quantity,Author_name,available) values ( 123,10,"J.K.Rowling",9);
-- Dump completed on 2025-07-06 23:14:59
