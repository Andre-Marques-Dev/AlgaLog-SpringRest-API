-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: algalog
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint NOT NULL,
  `taxa` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data_pedido` datetime NOT NULL,
  `data_finalizacao` datetime DEFAULT NULL,
  `destinatario_nome` varchar(60) NOT NULL,
  `destinatario_logradouro` varchar(255) NOT NULL,
  `destinatario_numero` varchar(30) NOT NULL,
  `destinatario_complemento` varchar(60) NOT NULL,
  `destinatario_bairro` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_entrega_cliente` (`cliente_id`),
  CONSTRAINT `fk_entrega_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
INSERT INTO `entrega` VALUES (2,2,100.50,'PENDENTE','2022-03-15 01:57:27',NULL,'Joaquim da Silva','Rua das Goiabas','100','Apto 200','Centro'),(3,3,100.50,'PENDENTE','2022-03-15 02:08:53',NULL,'Joaquim da Silva','Rua das Goiabas','100','Apto 200','Centro'),(4,3,100.50,'PENDENTE','2022-03-15 02:10:50','2021-04-30 23:00:00','Joaquim da Silva','Rua das Goiabas','100','Apto 200','Centro'),(5,3,100.50,'PENDENTE','2022-03-15 02:15:15',NULL,'Joaquim da Silva','Rua das Goiabas','100','Apto 200','Centro');
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15 12:34:05
