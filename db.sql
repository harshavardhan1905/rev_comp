CREATE DATABASE  IF NOT EXISTS `revuteck` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `revuteck`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 51.20.103.75    Database: revuteck
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.29-MariaDB

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
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates` (
  `candidate_id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_domain` varchar(100) DEFAULT NULL,
  `comp_name` varchar(100) DEFAULT NULL,
  `website` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `date_of_register` date DEFAULT curdate(),
  `first_f_date` date DEFAULT NULL,
  `first_f_status` varchar(10) DEFAULT 'PENDING',
  `second_f_date` date DEFAULT NULL,
  `second_f_status` varchar(10) DEFAULT 'PENDING',
  `third_f_date` date DEFAULT NULL,
  `third_f_status` varchar(10) DEFAULT 'PENDING',
  `fourth_f_date` date DEFAULT NULL,
  `fourth_f_status` varchar(10) DEFAULT 'PENDING',
  `final_status` varchar(10) DEFAULT 'PENDING',
  `assigned_emp_id` int(11) DEFAULT NULL,
  `emp_name` varchar(45) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `country_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`candidate_id`),
  KEY `assigned_emp_id` (`assigned_emp_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`assigned_emp_id`) REFERENCES `emp` (`emp_id`),
  CONSTRAINT `candidates_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (1,'deve','dev','qqww','eee','ee','2025-12-04','2025-12-04','PENDING','2025-12-07','PENDING','2025-12-07','PENDING','2025-12-07','PENDING','PENDING',1,'harsha',1,'SSSS'),(2,'wewewe','dev','google.com','harsha@gmail.com','12333','2025-12-04','2025-12-07','PENDING',NULL,'PENDING',NULL,'PENDING',NULL,'PENDING','PENDING',NULL,NULL,NULL,NULL),(3,'hars','dev','google.com','harsha@gmail.com','12333','2025-12-04','2025-12-07','PENDING','2025-12-10','PENDING','2025-12-14','PENDING','2025-12-19','PENDING','PENDING',NULL,NULL,NULL,NULL),(4,'John Doe','Manager','manager','john@example.com','123456','2025-12-05','2025-12-08','PENDING','2025-12-11','PENDING','2025-12-15','PENDING','2025-12-20','PENDING','PENDING',NULL,NULL,NULL,NULL),(5,'rev it','rev','re.com','rev@gmail.com','9966333.','2025-12-05','2025-12-08','PENDING','2025-12-11','PENDING','2025-12-15','PENDING','2025-12-20','PENDING','PENDING',NULL,NULL,NULL,NULL),(6,'John Doe','Manager','manager','john@example.com','123456','2025-12-07','2025-12-09','DONE','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','PENDING',1,'joshita',1,'SOUDI AREBIA'),(7,'John Doe','Manager','manager','john@example.com','123456','2025-12-07','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','PENDING',1,'joshita',1,'SOUDI AREBIA'),(8,'John Doe','Manager','manager','john@example.com','123456','2025-12-07','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','PENDING',1,'joshita',2,'SINGAPOOR'),(9,'ddd','ddd','sss','harsha@gmail.com','1111','2025-12-07','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(10,'dev, it','rev','eeee','harsha@gmail.com','123444','2025-12-08','2025-12-11','PENDING','2025-12-14','PENDING','2025-12-18','PENDING','2025-12-23','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(11,'real estate','resuvve','harsha.com','hasha@gmail.com','7330823490','2025-12-08',NULL,'PENDING',NULL,'PENDING',NULL,'PENDING',NULL,'PENDING','PENDING',1,'joshitha',4,'UAE'),(12,'de','eee','eee','eeee','eee','2025-12-08',NULL,'PENDING',NULL,'PENDING',NULL,'PENDING',NULL,'PENDING','PENDING',NULL,NULL,NULL,NULL),(13,'fff','ff','ff','ff','ff','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-19','PENDING','2025-12-22','PENDING','PENDING',NULL,NULL,NULL,NULL),(14,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-19','PENDING','2025-12-22','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(15,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-07','PENDING','2025-12-13','PENDING','2025-12-19','PENDING','2025-12-22','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(16,'apex','apextec','apex.com','apex@gmail.com','1234','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-19','PENDING','2025-12-22','PENDING','PENDING',6,'harsha',1,'SOUDI AREBIA'),(17,'derrr','dddd','aaa','aaa@gmail.com','8909380983','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-19','PENDING','2025-12-22','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(18,'rev','eee','aaa.com','hahah@gmail.com','790365233','2025-12-08','2025-12-10','PENDING','2025-12-10','PENDING','2025-12-19','PENDING','2025-12-22','PENDING','PENDING',1,'joshitha',1,'SOUDI AREBIA'),(19,'ddddd','dddd','ddd.com','dd@gmail.com','12321','2025-12-08','2025-12-09','DONE','2025-12-13','DONE','2025-12-19','PENDING','2025-12-22','PENDING','PENDING',8,'hr joshita',2,'SINGAPOOR'),(20,'dedd','dddd','gool.com','harh@gmail.com','34444','2025-12-08','2025-12-10','DONE','2025-12-13','PENDING','2025-12-09','DONE','2025-12-09','DONE','COMPLETED',8,'hr joshita',1,'SOUDI AREBIA'),(21,'dev','revute','google.com','hr@gmail.com','1244','2025-12-08','2025-12-10','DONE','2025-12-13','PENDING','2025-12-19','PENDING','2025-12-09','DONE','COMPLETED',8,'hr joshita',2,'SINGAPOOR'),(22,'rev','rev','rec.com','harsh@gmail.com','78893','2025-12-09','2025-12-08','PENDING','2025-12-14','PENDING','2025-12-20','PENDING','2025-12-10','PENDING','PENDING',8,'hr joshita',1,'SOUDI AREBIA'),(23,'APEX','epx','e.com','e@gmail.com','78963','2025-12-09','2025-12-11','PENDING','2025-12-14','PENDING','2025-12-09','DONE','2025-12-08','PENDING','PENDING',8,'hr joshita',4,'UAE'),(24,'salesss','sales','sale.com','sale@gmail.com','1222','2025-12-09','2025-12-08','PENDING','2025-12-14','PENDING','2025-12-20','PENDING','2025-12-23','PENDING','PENDING',7,'joshitah',1,'SOUDI AREBIA'),(25,'dev','dev','t.com','harsh@gmail.com','1244','2025-12-09','2025-12-11','PENDING','2025-12-14','PENDING','2025-12-20','PENDING','2025-12-23','PENDING','PENDING',3,'John Doe',3,'QATAR'),(26,'ddd','dddd','dddd.com','harsh@gmail.com','987595','2025-12-09','2025-12-09','DONE','2025-12-14','DONE','2025-12-20','DONE','2025-12-23','DONE','COMPLETED',3,'John Doe',2,'SINGAPOOR'),(27,'sed','derss','sedd.com','ss@gmail.cpm','','2025-12-09','2025-12-11','PENDING','2025-12-14','PENDING','2025-12-20','PENDING','2025-12-23','PENDING','PENDING',1,'joshitha',1,'SOUDI AREBIA'),(28,'rev','revuteck','revitec.com','revu@gmail.com','799052','2025-12-10','2025-12-12','PENDING','2025-12-15','PENDING','2025-12-21','PENDING','2025-12-24','PENDING','PENDING',8,'hr joshita',3,'QATAR'),(29,'ddd','ddd','rrr.com','haiji@gmail.com','','2025-12-10','2025-12-12','PENDING','2025-12-15','PENDING','2025-12-19','PENDING','2025-12-24','PENDING','PENDING',8,'hr joshita',2,'SINGAPOOR'),(30,'sedd','ddd','ddd','dd@gmail.com','','2025-12-10','2025-12-12','PENDING','2025-12-15','PENDING','2025-12-19','PENDING','2025-12-24','PENDING','PENDING',1,'joshitha',1,'SOUDI AREBIA'),(31,'Apex Technology Systems','Apex Technology Systems','hello.com','hello@gmail.com','07330823490','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',5,'Joshitha',1,'SOUDI AREBIA'),(32,'Helo','heoc.com','heoc.com','hello@gmail.com','7896','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',1,'SOUDI AREBIA'),(33,'sss','ss','podetiharshardhan@gmail.com','podetiharshardhan@gmail.com','1233','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',1,'SOUDI AREBIA'),(34,'Apex Technology Systems','Apex Technology Systems','hello.com','23eg105r39@anurag.edu.in','07330823490','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',1,'SOUDI AREBIA'),(134,'deve','dev','qqww','eee','ee','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'SSSS',1,'harsha'),(135,'deve','dev','qqww','eee','ee','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'harsha',1,'SSSS'),(169,'deve','dev','qqww','eee','ee','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'harsha',1,'SSSS'),(170,'real estate','resuvve','harsha.com','hasha@gmail.com','7330823490','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',4,'UAE'),(171,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(172,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(173,'apex','apextec','apex.com','apex@gmail.com','1234','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',1,'SOUDI AREBIA'),(174,'derrr','dddd','aaa','aaa@gmail.com','8909380983','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(175,'salesss','sales','sale.com','sale@gmail.com','1222','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',7,'joshitah',1,'SOUDI AREBIA'),(176,'dev','dev','t.com','harsh@gmail.com','1244','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',3,'QATAR'),(177,'ddd','dddd','dddd.com','harsh@gmail.com','987595','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',2,'SINGAPOOR'),(178,'sed','derss','sedd.com','ss@gmail.cpm','','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',1,'SOUDI AREBIA'),(179,'rev','revuteck','revitec.com','revu@gmail.com','799052','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',8,'hr joshita',3,'QATAR'),(180,'deve','dev','qqww','eee','ee','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'harsha',1,'SSSS'),(181,'real estate','resuvve','harsha.com','hasha@gmail.com','7330823490','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',4,'UAE'),(182,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(183,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(184,'apex','apextec','apex.com','apex@gmail.com','1234','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',1,'SOUDI AREBIA'),(185,'derrr','dddd','aaa','aaa@gmail.com','8909380983','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(186,'salesss','sales','sale.com','sale@gmail.com','1222','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',7,'joshitah',1,'SOUDI AREBIA'),(187,'dev','dev','t.com','harsh@gmail.com','1244','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',3,'QATAR'),(188,'ddd','dddd','dddd.com','harsh@gmail.com','987595','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',2,'SINGAPOOR'),(189,'sed','derss','sedd.com','ss@gmail.cpm','','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',1,'SOUDI AREBIA'),(190,'rev','revuteck','revitec.com','revu@gmail.com','799052','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',8,'hr joshita',3,'QATAR'),(191,'Apex Technology Systems','Apex Technology Systems','hello.com','23eg105r39@anurag.edu.in','07330823490','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',1,'SOUDI AREBIA'),(192,'deve','dev','qqww','eee','ee','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'harsha',1,'SSSS'),(193,'real estate','resuvve','harsha.com','hasha@gmail.com','7330823490','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',4,'UAE'),(194,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(195,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(196,'apex','apextec','apex.com','apex@gmail.com','1234','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',1,'SOUDI AREBIA'),(197,'derrr','dddd','aaa','aaa@gmail.com','8909380983','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(198,'salesss','sales','sale.com','sale@gmail.com','1222','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',7,'joshitah',1,'SOUDI AREBIA'),(199,'dev','dev','t.com','harsh@gmail.com','1244','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',3,'QATAR'),(200,'ddd','dddd','dddd.com','harsh@gmail.com','987595','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',2,'SINGAPOOR'),(201,'sed','derss','sedd.com','ss@gmail.cpm','','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',1,'SOUDI AREBIA'),(202,'rev','revuteck','revitec.com','revu@gmail.com','799052','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',8,'hr joshita',3,'QATAR'),(203,'deve','dev','qqww','eee','ee','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'harsha',1,'SSSS'),(204,'real estate','resuvve','harsha.com','hasha@gmail.com','7330823490','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',4,'UAE'),(205,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(206,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(207,'apex','apextec','apex.com','apex@gmail.com','1234','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',1,'SOUDI AREBIA'),(208,'derrr','dddd','aaa','aaa@gmail.com','8909380983','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(209,'salesss','sales','sale.com','sale@gmail.com','1222','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',7,'joshitah',1,'SOUDI AREBIA'),(210,'dev','dev','t.com','harsh@gmail.com','1244','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',3,'QATAR'),(211,'ddd','dddd','dddd.com','harsh@gmail.com','987595','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',2,'SINGAPOOR'),(212,'sed','derss','sedd.com','ss@gmail.cpm','','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',1,'SOUDI AREBIA'),(213,'rev','revuteck','revitec.com','revu@gmail.com','799052','2025-12-12','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',8,'hr joshita',3,'QATAR'),(225,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(226,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(227,'apex','apextec','apex.com','apex@gmail.com','1234','2025-12-08','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',1,'SOUDI AREBIA'),(228,'derrr','dddd','aaa','aaa@gmail.com','8909380983','2025-12-08','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(229,'salesss','sales','sale.com','sale@gmail.com','1222','2025-12-09','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',7,'joshitah',1,'SOUDI AREBIA'),(230,'dev','dev','t.com','harsh@gmail.com','1244','2025-12-09','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',3,'QATAR'),(231,'ddd','dddd','dddd.com','harsh@gmail.com','987595','2025-12-09','2025-12-14','DONE','2025-12-17','DONE','2025-12-21','DONE','2025-12-26','DONE','COMPLETED',3,'John Doe',2,'SINGAPOOR'),(232,'sed','derss','sedd.com','ss@gmail.cpm','','2025-12-09','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',1,'SOUDI AREBIA'),(233,'rev','revuteck','revitec.com','revu@gmail.com','799052','2025-12-10','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',8,'hr joshita',3,'QATAR'),(234,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(235,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(236,'apex','apextec','apex.com','apex@gmail.com','1234','2025-12-08','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',1,'SOUDI AREBIA'),(237,'derrr','dddd','aaa','aaa@gmail.com','8909380983','2025-12-08','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(238,'salesss','sales','sale.com','sale@gmail.com','1222','2025-12-09','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',7,'joshitah',1,'SOUDI AREBIA'),(239,'dev','dev','t.com','harsh@gmail.com','1244','2025-12-09','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',3,'John Doe',3,'QATAR'),(240,'ddd','dddd','dddd.com','harsh@gmail.com','987595','2025-12-09','2025-12-14','DONE','2025-12-17','DONE','2025-12-21','DONE','2025-12-26','DONE','COMPLETED',3,'John Doe',2,'SINGAPOOR'),(241,'sed','derss','sedd.com','ss@gmail.cpm','','2025-12-09','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',1,'joshitha',1,'SOUDI AREBIA'),(242,'rev','revuteck','revitec.com','revu@gmail.com','799052','2025-12-10','2025-12-14','PENDING','2025-12-17','PENDING','2025-12-21','PENDING','2025-12-26','PENDING','PENDING',8,'hr joshita',3,'QATAR'),(243,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-15','PENDING','2025-12-18','PENDING','2025-12-22','PENDING','2025-12-27','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(244,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-15','PENDING','2025-12-18','PENDING','2025-12-22','PENDING','2025-12-27','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(245,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-15','PENDING','2025-12-18','PENDING','2025-12-22','PENDING','2025-12-27','PENDING','PENDING',1,'joshitha',2,'SINGAPOOR'),(246,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-15','PENDING','2025-12-18','PENDING','2025-12-22','PENDING','2025-12-27','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(247,'Domain','domain','google.com','google@gmail.com','123444','2025-12-13','2025-12-15','PENDING','2025-12-18','PENDING','2025-12-22','PENDING','2025-12-27','PENDING','PENDING',8,'hr joshita',3,'QATAR'),(248,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','DONE',1,'joshitha',2,'SINGAPOOR'),(249,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-06','PENDING','2025-12-09','PENDING','2025-12-13','PENDING','2025-12-18','PENDING','PENDING',6,'harsha',2,'SINGAPOOR'),(250,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','DONE',8,'hr joshita',2,'SINGAPOOR'),(251,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-06','PENDING','2025-12-09','PENDING','2025-12-13','PENDING','2025-12-18','PENDING','PENDING',8,'hr joshita',2,'SINGAPOOR'),(252,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','DONE',8,'hr joshita',2,'SINGAPOOR'),(253,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-06','PENDING','2025-12-09','PENDING','2025-12-13','PENDING','2025-12-18','PENDING','PENDING',8,'hr joshita',2,'SINGAPOOR'),(254,'Domain','PODETI HARSHA VARDHAN','dd.com','hv8678855@gmail.com','07330823490','2025-12-13','2025-12-15','PENDING','2025-12-18','PENDING','2025-12-22','PENDING','2025-12-27','PENDING','PENDING',8,'hr joshita',1,'SOUDI AREBIA'),(255,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','DONE',8,'hr joshita',2,'SINGAPOOR'),(256,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-06','PENDING','2025-12-09','PENDING','2025-12-13','PENDING','2025-12-18','PENDING','PENDING',8,'hr joshita',2,'SINGAPOOR'),(257,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','DONE',8,'hr joshita',2,'SINGAPOOR'),(258,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-06','PENDING','2025-12-09','PENDING','2025-12-13','PENDING','2025-12-18','PENDING','PENDING',8,'hr joshita',2,'SINGAPOOR'),(259,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','DONE',8,'hr joshita',2,'SINGAPOOR'),(260,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-06','PENDING','2025-12-09','PENDING','2025-12-13','PENDING','2025-12-18','PENDING','PENDING',8,'hr joshita',2,'SINGAPOOR'),(261,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','DONE',12,'ded',2,'SINGAPOOR'),(262,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-06','PENDING','2025-12-09','PENDING','2025-12-13','PENDING','2025-12-18','PENDING','PENDING',12,'ded',2,'SINGAPOOR'),(263,'zzz','zzz','zz','zz@gmail.com','190334','2025-12-08','2025-12-10','PENDING','2025-12-13','PENDING','2025-12-17','PENDING','2025-12-22','PENDING','DONE',8,'hr joshita',2,'SINGAPOOR'),(264,'dev','revuteck','revuteck.com','revuteck@gmail.com','7330823480','2025-12-04','2025-12-06','PENDING','2025-12-09','PENDING','2025-12-13','PENDING','2025-12-18','PENDING','PENDING',8,'hr joshita',2,'SINGAPOOR');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`harsha`@`%`*/ /*!50003 TRIGGER all_follow_ups
BEFORE INSERT ON candidates
FOR EACH ROW
BEGIN
    -- First follow-up: +2 days from register date
    SET NEW.first_f_date = DATE_ADD(NEW.date_of_register, INTERVAL 2 DAY);

    -- Second follow-up: +3 days from first follow-up
    SET NEW.second_f_date = DATE_ADD(NEW.first_f_date, INTERVAL 3 DAY);

    -- Third follow-up: +4 days from second follow-up
    SET NEW.third_f_date = DATE_ADD(NEW.second_f_date, INTERVAL 4 DAY);

    -- Fourth follow-up: +5 days from third follow-up
    SET NEW.fourth_f_date = DATE_ADD(NEW.third_f_date, INTERVAL 5 DAY);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`harsha`@`%`*/ /*!50003 TRIGGER update_final_status
BEFORE UPDATE ON candidates 
FOR EACH ROW
BEGIN
    -- Check if all four statuses are DONE
    IF NEW.first_f_status = 'DONE'
       AND NEW.second_f_status = 'DONE'
       AND NEW.third_f_status = 'DONE'
       AND NEW.fourth_f_status = 'DONE' THEN
       
        SET NEW.final_status = 'COMPLETED';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'SOUDI AREBIA'),(2,'SINGAPOOR'),(3,'QATAR'),(4,'UAE');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(45) DEFAULT NULL,
  `emp_designation` varchar(45) DEFAULT NULL,
  `login_role` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'ACTIVE',
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (1,'joshitha','COO','superadmin','superadmin@gmai.com','123','ACTIVE'),(3,'John Doe','Manager','sales','john@example.com','123456','ACTIVE'),(4,'harsha','Manager','manager','gham@gmail.com','123456','INACTIVE'),(5,'Joshitha','Admin','admin','jos@gmail.com','123','ACTIVE'),(6,'harsha','HR','hr','hr@gmail.com','123','ACTIVE'),(7,'joshitah','Sales','sales','sales@gmail.com','123','ACTIVE'),(8,'hr joshita','HR','hr','johr@gmail.com','123','ACTIVE'),(9,'LV','HR','hr','lv@gmail.com','123','ACTIVE'),(10,'Josji','Sales','sales','salesjos@gmail.com','123','ACTIVE'),(11,'revteck','Admin','admin','rev@123.com','123','ACTIVE'),(12,'ded','Sales','hr','rev@143.com','Harsha@123','ACTIVE');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'revuteck'
--

--
-- Dumping routines for database 'revuteck'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-13 14:33:28
