-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: app
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `myapp_valoraciones`
--

DROP TABLE IF EXISTS `myapp_valoraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_valoraciones` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `estrellas` int NOT NULL,
  `comentario` varchar(200) NOT NULL,
  `tutor_valoraciones_id` bigint NOT NULL,
  `usuario_valoraciones_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_valoraciones_tutor_valoraciones_i_6509c21a_fk_myapp_tut` (`tutor_valoraciones_id`),
  KEY `myapp_valoraciones_usuario_valoraciones_6c7fe799_fk_myapp_usu` (`usuario_valoraciones_id`),
  CONSTRAINT `myapp_valoraciones_tutor_valoraciones_i_6509c21a_fk_myapp_tut` FOREIGN KEY (`tutor_valoraciones_id`) REFERENCES `myapp_tutor` (`id`),
  CONSTRAINT `myapp_valoraciones_usuario_valoraciones_6c7fe799_fk_myapp_usu` FOREIGN KEY (`usuario_valoraciones_id`) REFERENCES `myapp_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_valoraciones`
--

LOCK TABLES `myapp_valoraciones` WRITE;
/*!40000 ALTER TABLE `myapp_valoraciones` DISABLE KEYS */;
INSERT INTO `myapp_valoraciones` VALUES (1,4,'Buen profesor, se le entiende bien y es paciente',1,2),(3,2,'Buen profesor, es muy facil de entender.',2,2);
/*!40000 ALTER TABLE `myapp_valoraciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20  2:34:50
