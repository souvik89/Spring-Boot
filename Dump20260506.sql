CREATE DATABASE  IF NOT EXISTS `ecommerce_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce_db`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_db
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
-- Table structure for table `job_post`
--

DROP TABLE IF EXISTS `job_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_post` (
  `post_id` int NOT NULL,
  `post_desc` varchar(255) DEFAULT NULL,
  `post_profile` varchar(255) DEFAULT NULL,
  `post_tech_stack` json DEFAULT NULL,
  `req_experience` int NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post`
--

LOCK TABLES `job_post` WRITE;
/*!40000 ALTER TABLE `job_post` DISABLE KEYS */;
INSERT INTO `job_post` VALUES (1,'Must have good experience in core Java and advanced Java','Java Developer','[\"Core Java\", \"J2EE\", \"Spring Boot\", \"Hibernate\"]',2),(3,'Strong background in machine learning and data analysis','Data Scientist','[\"Python\", \"Machine Learning\", \"Data Analysis\"]',4),(4,'Design and implement computer networks for efficient data communication','Network Engineer','[\"Networking\", \"Cisco\", \"Routing\", \"Switching\"]',5),(5,'Experience in mobile app development for iOS and Android','Mobile App Developer','[\"iOS Development\", \"Android Development\", \"Mobile App\"]',3);
/*!40000 ALTER TABLE `job_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question_title` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `right_answer` varchar(255) DEFAULT NULL,
  `difficultylevel` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Which Java keyword is used to create a subclass?','class','interface','extends','implements','extends','Easy','Java'),(2,'What is the output of the following Java code snippet?','4','5','6','Compile error','5','Easy','Java'),(3,'In Java, what is the default value of an uninitialized boolean variable?','true','false','0','null','false','Easy','Java'),(4,'Which Java keyword is used to explicitly throw an exception?','try','throw','catch','finally','throw','Easy','Java'),(5,'What does the \"static\" keyword mean in Java?','It indicates that a variable is constant.','It indicates that a method can be accessed without creating an instance of the class.','It indicates that a class cannot be extended.','It indicates that a variable is of primitive type.','It indicates that a method can be accessed without creating an instance of the class.','Easy','Java'),(6,'What is the correct way to declare a constant variable in Java?','constant int x = 5;','final int x = 5;','static int x = 5;','readonly int x = 5;','final int x = 5;','Easy','Java'),(7,'Which loop in Java allows the code to be executed at least once?','for loop','while loop','do-while loop','switch loop','do-while loop','Easy','Java'),(8,'What is the purpose of the \"break\" statement in Java?','To terminate a loop or switch statement and transfer control to the next statement.','To skip the rest of the code in a loop and move to the next iteration.','To define a label for a loop or switch statement.','To check a condition and execute a block of code repeatedly.','To terminate a loop or switch statement and transfer control to the next statement.','Easy','Java'),(9,'Which Java operator is used to concatenate two strings?','+','-','*','/','+','Easy','Java'),(10,'In Java, which collection class provides an implementation of a dynamic array?','HashMap','ArrayList','LinkedList','HashSet','ArrayList','Easy','Java'),(11,'Max value of byte in Java?','100','127','255','512','127','Easy','Java'),(12,'What is the output of the following Python code snippet?','[1, 2, 3]','[1, 2, 3, 4]','[4, 3, 2, 1]','Error','[1, 2, 3, 4]','Easy','Python'),(13,'Which Python statement is used to exit from a loop prematurely?','break','continue','pass','return','break','Easy','Python'),(14,'What is the purpose of the \"range()\" function in Python?','To generate a random number within a given range.','To iterate over a sequence of numbers.','To sort a list in ascending order.','To calculate the length of a string.','To iterate over a sequence of numbers.','Easy','Python'),(15,'In Python, which data type is mutable?','int','float','str','list','list','Easy','Python'),(16,'Which Python module is used for working with dates and times?','datetime','math','os','sys','datetime','Easy','Python'),(17,'Max value of byte in Java?','100','127','255','512','127','Easy','Java'),(18,'Max value of short in Java?','1','2','3','4','2','Easy','Java');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'JQuiz');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_questions`
--

DROP TABLE IF EXISTS `quiz_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_questions` (
  `quiz_id` int NOT NULL,
  `questions_id` int NOT NULL,
  KEY `FKcgp9e1c6ww3t383aui4w8feae` (`quiz_id`),
  CONSTRAINT `FKcgp9e1c6ww3t383aui4w8feae` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_questions`
--

LOCK TABLES `quiz_questions` WRITE;
/*!40000 ALTER TABLE `quiz_questions` DISABLE KEYS */;
INSERT INTO `quiz_questions` VALUES (1,6),(1,11),(1,10),(1,3),(1,2);
/*!40000 ALTER TABLE `quiz_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `rollno` int NOT NULL,
  `marks` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (101,80,'Souvik'),(102,90,'Saadrik Karmakar');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'souvik','123'),(2,'test','444'),(3,'Leo','1234'),(4,'chandra','$2a$12$Ju28O1co7zxMPJKcn4iwpuY6ML34uC8bJKzkwGBJ3ZFnJozNOcgq6'),(5,'sk','$2a$12$wQW.rGv3kqTnn8osJ9AaGuPRAboDoS/lpdiWMGWhGbLUxo7lQz2cO'),(6,'sk123','$2a$12$2w6x3b27clkXA379.oGd3eEHDtk9p8rRMY.KEyyvI9NM53Lg6C/AC'),(8,'leo','$2a$12$QDuX1.1gW/8gabUUZmGMmuFDA6kH.B87pEurdW/KnGL4G0SOMaI7q'),(9,'leo','$2a$12$VmRict1a26QEHJqVfk.q/eDJueFktLUvikTgLRr4vAAkSk3ZfDZQS');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_seq`
--

DROP TABLE IF EXISTS `users_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_seq`
--

LOCK TABLES `users_seq` WRITE;
/*!40000 ALTER TABLE `users_seq` DISABLE KEYS */;
INSERT INTO `users_seq` VALUES (51);
/*!40000 ALTER TABLE `users_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-06 17:21:54
