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
-- Table structure for table `myapp_pregunta`
--

DROP TABLE IF EXISTS `myapp_pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_pregunta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha` datetime(6) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `carrera` varchar(25) NOT NULL,
  `votos` int NOT NULL,
  `usuario_pregunta_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_pregunta_usuario_pregunta_id_515c369a_fk_myapp_usuario_id` (`usuario_pregunta_id`),
  CONSTRAINT `myapp_pregunta_usuario_pregunta_id_515c369a_fk_myapp_usuario_id` FOREIGN KEY (`usuario_pregunta_id`) REFERENCES `myapp_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_pregunta`
--

LOCK TABLES `myapp_pregunta` WRITE;
/*!40000 ALTER TABLE `myapp_pregunta` DISABLE KEYS */;
INSERT INTO `myapp_pregunta` VALUES (3,'2021-06-15 00:00:00.000000','Como puedo comparar strings en java?','CComp',4,1),(4,'2023-08-22 00:00:00.000000','Donde podria encontrar una base de datos de las leyes peruanas','Derecho',10,2),(6,'2023-11-05 00:00:00.000000','expo estudios','Evento',2,3);
/*!40000 ALTER TABLE `myapp_pregunta` ENABLE KEYS */;
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
