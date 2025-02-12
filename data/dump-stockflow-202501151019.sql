-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: stockflow
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20250105115006','2025-01-07 12:34:13',411);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `author_id` int NOT NULL,
  `content` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `published_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_53AD8F834B89032C` (`post_id`),
  KEY `IDX_53AD8F83F675F31B` (`author_id`),
  CONSTRAINT `FK_53AD8F834B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `FK_53AD8F83F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,1,'Un blog muy interesante sobre la optimización del espacio. Me ha resultado muy útil.','26-11-2024');

INSERT INTO `comment` VALUES (2,2,1,'Me ha resultado clave toda la información que viene envuelta en este post.','26-11-2024');

INSERT INTO `comment` VALUES (3,1,1,'Muy util, pondre en pràctica este sistema.','26-11-2024');

INSERT INTO `comment` VALUES (4,1,1,'Toda la razon. Estos errores son de lo mas frecuentes.','26-11-2024');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `published_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_58A92E65F675F31B` (`author_id`),
  CONSTRAINT `FK_58A92E65F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,1,'Como optimizar espacio del almacén','info_post','Implementar una estrategia para optimizar el espacio en un almacén permite maximizar la capacidad de almacenamiento y mejorar la eficiencia operativa. Algunas acciones clave incluyen el uso de sistemas de almacenamiento vertical, la clasificación y agrupación de productos por rotación o característica.','La optimización del espacio es una de las habilidades más útiles tanto en la gestión de un hogar, como en la organización de un lugar de trabajo o almacén. Ya sea que busques maximizar el uso de un pequeño apartamento o mejorar la disposición de un almacén, hay varias estrategias y enfoques que puedes aplicar para aprovechar al máximo cada rincón disponible. A continuación, te presentamos algunas estrategias efectivas para optimizar el espacio en diferentes entornos.','26-11-2024');

INSERT INTO `post` VALUES (2,1,'Implementar un sistema de gestión','info_post','Implementar una estrategia para optimizar el espacio en un almacén permite maximizar la capacidad de almacenamiento y mejorar la eficiencia operativa. Algunas acciones clave incluyen el uso de sistemas de almacenamiento vertical, la clasificación y agrupación de productos por rotación o característica.','La optimización del espacio es una de las habilidades más útiles tanto en la gestión de un hogar, como en la organización de un lugar de trabajo o almacén. Ya sea que busques maximizar el uso de un pequeño apartamento o mejorar la disposición de un almacén, hay varias estrategias y enfoques que puedes aplicar para aprovechar al máximo cada rincón disponible. A continuación, te presentamos algunas estrategias efectivas para optimizar el espacio en diferentes entornos.','25-11-2024');

INSERT INTO `post` VALUES (3,1,'Ventajas de la importa digitalización','info_post','Implementar una estrategia para optimizar el espacio en un almacén permite maximizar la capacidad de almacenamiento y mejorar la eficiencia operativa. Algunas acciones clave incluyen el uso de sistemas de almacenamiento vertical, la clasificación y agrupación de productos por rotación o característica.','La optimización del espacio es una de las habilidades más útiles tanto en la gestión de un hogar, como en la organización de un lugar de trabajo o almacén. Ya sea que busques maximizar el uso de un pequeño apartamento o mejorar la disposición de un almacén, hay varias estrategias y enfoques que puedes aplicar para aprovechar al máximo cada rincón disponible. A continuación, te presentamos algunas estrategias efectivas para optimizar el espacio en diferentes entornos.','24-11-2024');

INSERT INTO `post` VALUES (4,1,'Errores comunes en la gestión','info_post','Implementar una estrategia para optimizar el espacio en un almacén permite maximizar la capacidad de almacenamiento y mejorar la eficiencia operativa. Algunas acciones clave incluyen el uso de sistemas de almacenamiento vertical, la clasificación y agrupación de productos por rotación o característica.','La optimización del espacio es una de las habilidades más útiles tanto en la gestión de un hogar, como en la organización de un lugar de trabajo o almacén. Ya sea que busques maximizar el uso de un pequeño apartamento o mejorar la disposición de un almacén, hay varias estrategias y enfoques que puedes aplicar para aprovechar al máximo cada rincón disponible. A continuación, te presentamos algunas estrategias efectivas para optimizar el espacio en diferentes entornos.','23-11-2024');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tag` (
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `IDX_6ABC1CC44B89032C` (`post_id`),
  KEY `IDX_6ABC1CC4BAD26311` (`tag_id`),
  CONSTRAINT `FK_6ABC1CC44B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6ABC1CC4BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (1,2),(1,5),(2,2),(2,9),(3,2),(3,5),(3,7),(3,8),(4,1),(4,4),(4,6),(5,1),(5,2),(5,5),(5,9),(6,3),(6,7),(7,8),(7,9),(8,1),(8,2),(8,3),(8,9),(9,2),(9,3),(9,5),(10,2),(10,4),(10,8),(11,2),(11,5),(11,6),(11,7),(12,3),(12,5),(12,7),(13,6),(13,7),(13,9),(14,1),(14,4),(14,5),(15,4),(15,8),(16,4),(16,6),(17,1),(17,7),(17,8),(18,3),(18,4),(18,5),(19,3),(19,6),(19,7),(19,8),(20,2),(20,8),(20,9),(21,1),(21,2),(21,5),(21,7),(22,5),(22,9),(23,2),(23,7),(23,9),(24,4),(24,6),(25,6),(25,8),(26,3),(26,5),(26,9),(27,4),(27,7),(28,4),(28,6),(28,7),(28,9),(29,1),(29,3),(29,8),(30,1),(30,2),(30,9);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4D5855405E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (4,'adipiscing'),(3,'consectetur'),(8,'dolore'),(5,'incididunt'),(2,'ipsum'),(6,'labore'),(1,'lorem'),(9,'pariatur'),(7,'voluptate');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `roles` json NOT NULL COMMENT '(DC2Type:json)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8FB094A1F85E0677` (`username`),
  UNIQUE KEY `UNIQ_8FB094A1E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Cristina','cris_admin','cris_admin@symfony.com','cristinaBlog','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'stockflow'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-15 10:19:39
