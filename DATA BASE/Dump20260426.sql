-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: resume_screening_db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `analysis_reports`
--

DROP TABLE IF EXISTS `analysis_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analysis_reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidate_name` varchar(100) DEFAULT NULL,
  `match_percentage` int DEFAULT NULL,
  `matched_skills` text,
  `missing_skills` text,
  `resume_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analysis_reports`
--

LOCK TABLES `analysis_reports` WRITE;
/*!40000 ALTER TABLE `analysis_reports` DISABLE KEYS */;
INSERT INTO `analysis_reports` VALUES (28,'neelesh chauhan',63,'[sql, java]','[spring, aws]','NewRESUME.pdf','2026-03-12 04:24:14'),(29,'Sowji',50,'[]','[looking, python, developer, with, experience, python, programming, django, framework, rest, apis, databases, basic, knowledge, cloud, services., candidate, should, have, strong, problem, solving, skills, ability, develop, scalable, backend, systems.]','Resume2.pdf','2026-03-14 17:09:21'),(30,'neelesh',50,'[]','[looking, java, spring, skills]','NewRESUME.pdf','2026-03-14 17:20:24'),(31,'Rahul',50,'[]','[looking, java, spring, skills]','Resume2.pdf','2026-03-14 17:29:42'),(32,'Rahul',62,'[java, skills]','[looking, spring]','Resume2.pdf','2026-03-15 12:51:53'),(33,'neelesh chauhan',50,'[]','[looking, java, spring, skills]','Resume2.pdf','2026-03-15 17:08:16'),(34,'neelesh chauhan',50,'[]','[looking, java, spring, skills]','Resume2.pdf','2026-03-15 17:13:51'),(35,'neelesh chauhan',50,'[]','[looking, java, spring, skills]','Resume2.pdf','2026-03-15 17:15:18'),(36,'neelesh chauhan',50,'[]','[looking, java, spring, skills]','Resume2.pdf','2026-03-15 17:18:21'),(37,'neelesh chauhan',50,'[]','[looking, java, spring, skills]','Resume2.pdf','2026-03-15 17:23:20'),(38,'neelesh chauhan',66,'[java]','[looking, spring, skills]','Resume2.pdf','2026-03-15 17:27:19'),(39,'neelesh chauhan',66,'[java]','[looking, spring, skills]','Resume2.pdf','2026-03-15 17:32:35'),(40,'neelesh chauhan',66,'[java]','[looking, spring, skills]','Resume2.pdf','2026-03-16 13:13:25'),(41,'neelesh chauhan',68,'[aws, sql, java]','[spring]','Resume2.pdf','2026-03-16 13:27:02'),(42,'neelesh',66,'[java, sql]','[spring, aws]','LAKSHMI SOWJANYA.pdf','2026-03-25 13:13:03'),(43,'Sowji',67,'[sql, java]','[spring, aws]','LAKSHMI SOWJANYA.pdf','2026-03-25 13:29:11'),(44,'Rahul',67,'[sql, java]','[spring, aws]','LAKSHMI SOWJANYA.pdf','2026-03-26 06:07:39'),(45,'SowJaynya',74,'[sql, aws, spring, java]','[]','LAKSHMI SOWJANYA.pdf','2026-03-26 06:12:12'),(46,'SowJaynya',74,'[aws, spring, sql, java]','[]','LAKSHMI SOWJANYA.pdf','2026-03-29 13:07:46'),(47,'SowJaynya',65,'[rest api, sql]','[python, django]','LAKSHMI SOWJANYA.pdf','2026-03-29 13:09:05'),(48,'neelesh chauhan',74,'[aws, spring, sql, java]','[]','LAKSHMI SOWJANYA.pdf','2026-03-29 13:38:37'),(49,'neelesh chauhan',51,'[]','[java, sql, spring, aws]','DOCTYPE html.pdf','2026-03-29 13:42:46'),(50,'Sowji',74,'[spring, sql, aws, java]','[]','LAKSHMI SOWJANYA.pdf','2026-03-30 07:25:40'),(51,'M Nilya',74,'[sql, aws, java, spring]','[]','LAKSHMI SOWJANYA.pdf','2026-03-31 03:13:12'),(52,'Madan',74,'[sql, aws, java, spring]','[]','LAKSHMI SOWJANYA.pdf','2026-03-31 10:28:00'),(53,'Madan',74,'[sql, aws, java, spring]','[]','LAKSHMI SOWJANYA.pdf','2026-03-31 10:30:10'),(54,'neelesh chauhan',74,'[aws, spring, sql, java]','[]','LAKSHMI SOWJANYA.pdf','2026-04-01 09:00:12'),(55,'neelesh chauhan',74,'[aws, spring, sql, java]','[]','LAKSHMI SOWJANYA.pdf','2026-04-01 09:35:59'),(56,'nilya',64,'[java, sql]','[spring, aws]','NewRESUME.pdf','2026-04-03 18:15:28'),(57,'Rahul',64,'[java, sql]','[spring, aws]','NewRESUME.pdf','2026-04-03 18:50:15'),(58,'Rahul',64,'[java, sql]','[spring, aws]','NewRESUME.pdf','2026-04-03 18:50:44'),(59,'neelesh chauhan',64,'[sql, java]','[spring, aws]','NewRESUME.pdf','2026-04-04 18:05:29'),(60,'neelesh chauhan',67,'[aws, sql, java]','[spring]','Resume2.pdf','2026-04-04 18:07:00'),(61,'neelesh chauhan',47,'[]','[java, sql, spring, aws]','Resume2.pdf','2026-04-08 16:13:28'),(62,'neelesh chauhan',49,'[]','[java, sql, spring, aws]','LAKSHMI SOWJANYA.pdf','2026-04-09 13:35:09'),(63,'neelesh chauhan',74,'[aws, sql, spring, java]','[]','LAKSHMI SOWJANYA.pdf','2026-04-09 13:44:41'),(64,'neelesh chauhan',74,'[aws, sql, spring, java]','[]','LAKSHMI SOWJANYA.pdf','2026-04-09 13:54:46'),(65,'neelesh chauhan',63,'[sql, spring, java, aws]','[]','LAKSHMI SOWJANYA.pdf','2026-04-09 14:33:49'),(66,'neelesh chauhan',67,'[java, sql, spring, aws]','[]','LAKSHMI SOWJANYA.pdf','2026-04-09 15:09:10'),(67,'neelesh',59,'[java, sql]','[spring, aws]','NewRESUME.pdf','2026-04-09 22:57:42'),(68,'neelesh',109,'[java, sql]','[spring, aws]','NewRESUME.pdf','2026-04-09 23:08:24'),(69,'neelesh',59,'[java, sql]','[spring, aws]','NewRESUME.pdf','2026-04-09 23:10:30'),(70,'neelesh',109,'[java, sql]','[spring, aws]','NewRESUME.pdf','2026-04-09 23:14:17'),(71,'neelesh',59,'[java, sql]','[spring, aws]','NewRESUME.pdf','2026-04-09 23:16:55'),(72,'neelesh',62,'[java, sql]','[spring, aws]','NewRESUME.pdf','2026-04-09 23:21:13'),(73,'neelesh',67,'[java, sql, spring, aws]','[]','LAKSHMI SOWJANYA.pdf','2026-04-09 23:22:11'),(74,'neelesh',72,'[java, sql, spring, aws]','[]','LAKSHMI SOWJANYA.pdf','2026-04-09 23:32:45'),(75,'neelesh',67,'[java, sql]','[spring, aws]','NewRESUME.pdf','2026-04-09 23:33:20'),(76,'neelesh',72,'[java, sql, spring, aws]','[]','Resume1.pdf','2026-04-10 05:06:16'),(77,'neelesh',72,'[java, sql, spring, aws]','[]','Resume1.pdf','2026-04-10 09:10:00'),(78,'Ram',63,'[java]','[sql, spring, aws]','Resume211.pdf','2026-04-10 09:16:06');
/*!40000 ALTER TABLE `analysis_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `hr_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hr_id` (`hr_id`),
  CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`hr_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Java Developer','Looking for Java, SQL, Spring, AWS skills',2),(2,'Python Developer','We are looking for a Python Developer with experience in Python programming, Django framework, REST APIs, SQL databases, and basic knowledge of cloud services. The candidate should have strong problem-solving skills and the ability to develop scalable backend systems.',2);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin User','neeleshchauhan547@gmail.com','admin123','ADMIN'),(2,'HR User','hr@gmail.com','hr123','HR'),(3,'Student User','student@gmail.com','student123','STUDENT');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-26 17:04:23
