-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `pat_id` int DEFAULT NULL,
  `app_id` int DEFAULT NULL,
  `doc_id` int DEFAULT NULL,
  `app_date` date DEFAULT NULL,
  `app_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (100,10000,1000,'2025-03-21','10:30:00'),(101,10001,1001,'2025-02-02','12:30:00'),(102,10002,1002,'2025-02-21','08:30:00'),(104,10004,1004,'2025-03-02','10:00:00'),(105,10005,1005,'2025-02-23','06:30:00'),(106,10006,1006,'2025-03-12','20:15:00'),(107,10007,1007,'2025-03-13','08:30:00'),(108,10008,1008,'2025-02-22','10:15:00'),(109,10009,1009,'2025-03-25','12:20:00');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doc_id` int DEFAULT NULL,
  `doc_name` varchar(20) DEFAULT NULL,
  `speciality` varchar(20) DEFAULT NULL,
  `doc_num` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1000,'Aswin','Radiology',9865321245),(1001,'Mani','Dermatologist',9632147885),(1003,'Revathy','Neurologist',9862541245),(1004,'Sittu','Oncologist',9615417885),(1005,'Muthu','Psychiatrist',9563214756);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `pat_id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `contact` bigint DEFAULT NULL,
  PRIMARY KEY (`pat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (100,'Marry',25,'F',944112233),(101,'Hari',30,'M',9145652510),(102,'Mahesh',60,'M',9120406021),(103,'Shiva',18,'F',9584602512),(104,'Imran',16,'M',9865321245),(105,'Rary G',45,'F',9445623213),(106,'Ramesh',30,'M',9123252550),(107,'Mith',20,'M',9120246031),(108,'Kutty',58,'F',9254602512),(109,'Logesh',36,'M',9821451278);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `pay_id` int DEFAULT NULL,
  `pat_id` int DEFAULT NULL,
  `pay_amu` int DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `pay_method` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (10,100,214520,'2025-02-12','Online'),(11,101,21548,'2025-02-14','Online'),(12,102,21400,'2025-02-22','Offline'),(13,103,25548,'2025-01-17','Online'),(14,104,254611,'2025-03-12','Offline'),(15,105,54564,'2025-04-20','Online'),(16,106,217000,'2025-03-22','Offline'),(17,103,12548,'2025-03-17','Online'),(18,108,25611,'2025-03-12','Offline'),(19,109,14564,'2025-04-22','Online');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment` (
  `treat_id` int DEFAULT NULL,
  `pat_id` int DEFAULT NULL,
  `Treatmentdate` date DEFAULT NULL,
  `cost` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES (1,100,'2025-01-20',200000),(2,101,'2025-01-21',213000),(3,102,'2025-01-22',50123),(4,103,'2025-01-23',234511),(5,104,'2025-01-24',40000),(6,105,'2025-01-25',31000),(7,106,'2025-01-26',8923),(8,107,'2025-01-27',14511),(9,108,'2025-01-28',54000),(10,109,'2025-01-30',31050);
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
select*from treatment;
select*from payments;
select*from patient;
select*from doctor;
select*from appointments;
select sum(cost) as total_cost from treatment;
select count(*) from treatment;
select p.name, p.gender, pm.pay_amu,pm.pay_date from patient p join payments pm on p.pat_id=pm.pat_id where p.gender='F';
select* from appointments order by app_time desc;
select max(cost) from treatment;
select treat_id,pat_id from treatment;
update patient set contact=9441122331 where pat_id=100;
select* from treatment where cost>20000 and cost<200000;
select pay_method, sum(pay_amu) as total_amount from payments group by pay_method;
select pat_id,name,age from patient where age between 20 and 50;
select*from doctor where doc_name like "A%";
select d.doc_name, count(a.app_id) as Total_appointments from doctor d join appointments a on d.doc_id group by d.doc_name;
select*from patient where name like "R%";
select pat_id,app_id,doc_id from appointments order by app_date;
select doc_name as Doctor_name, speciality from doctor;
select p.name , d.doc_name, t.cost, pm.pay_amu from patient p join appointments a on p.pat_id=a.pat_id join doctor d on a.doc_id=d.doc_id join treatment t on p.pat_id=t.pat_id join payments pm on p.pat_id=pm.pat_id;
select avg(pay_amu) from  payments;
select  gender,count(*) as Patients_Count from patient group by gender;
select count(*) from doctor;
select* from payments where pay_amu>200000;
select min(cost) as min_cost, max(cost) as max_cost from treatment;
select p.name, pm.pay_date,pm.pay_amu from patient p join payments pm on p.pat_id=pm.pat_id;
update appointments set doc_id=1002 where pat_id=109;
update appointments set doc_id=1003 where pat_id=108;
update appointments set doc_id=1001 where pat_id=107;
update appointments set doc_id=1002 where pat_id=106;
select p.pat_id, p.name, p.age, p.gender, a.doc_id,d.doc_name as Doctor_name from patient p join appointments a on p.pat_id=a.pat_id join doctor d on a.doc_id=d.doc_id;
alter table payments add column Discount int default 5000;
delete from appointments where pat_id=109;
delete from payments where pay_id=19;
select*from treatment;
select*from payments;
select*from patient;
select*from doctor;
select*from appointments;
-- Dump completed on 2025-07-17 21:47:40
