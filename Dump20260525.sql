-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pv412_411_db
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `core_tag`
--

DROP TABLE IF EXISTS `core_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_tag` (
  `id` char(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tag`
--

LOCK TABLES `core_tag` WRITE;
/*!40000 ALTER TABLE `core_tag` DISABLE KEYS */;
INSERT INTO `core_tag` VALUES ('079aa0e4713e43a28fd7722177a53b38','Hit'),('32a9fd1a8d6f41bf8b54c09d69852d5a','Sale'),('4f0efcaefe154c6a8b546b4d4788af21','Limited'),('751db61e57bd4012888c4d9f5ee6773b','Coming Soon'),('995e915e150c44228db358ca61cf6eb7','In-Stock'),('a2846da26b084378ba3e34624814bd05','New'),('bbf81697090e4a6e9620a9a1b066ca7d','Recommended');
/*!40000 ALTER TABLE `core_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dj_categories`
--

DROP TABLE IF EXISTS `dj_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dj_categories` (
  `id` char(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dj_categories`
--

LOCK TABLES `dj_categories` WRITE;
/*!40000 ALTER TABLE `dj_categories` DISABLE KEYS */;
INSERT INTO `dj_categories` VALUES ('393192fe094b45e889e7a09a04ffdd2d','Laptops','2026-05-18',NULL),('a695d9a15cf84560aecdd2c8eca1bf40','Clothes','2026-05-18',NULL),('b35627b4ed154401822cdf5ef5d7c74b','Toys','2026-05-18','2026-05-22'),('c3830a6b71fa41b0b9474ab2020c67c6','Food','2026-05-18',NULL),('e1164564684547ff939f419d13ebb13c','Smartphones','2026-05-18',NULL);
/*!40000 ALTER TABLE `dj_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dj_products`
--

DROP TABLE IF EXISTS `dj_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dj_products` (
  `id` char(32) NOT NULL,
  `name` varchar(300) NOT NULL,
  `price` double NOT NULL,
  `description` longtext,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `category_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dj_products_category_id_8d71f6d4_fk_dj_categories_id` (`category_id`),
  CONSTRAINT `dj_products_category_id_8d71f6d4_fk_dj_categories_id` FOREIGN KEY (`category_id`) REFERENCES `dj_categories` (`id`),
  CONSTRAINT `price_gt_zero` CHECK ((`price` > 0.0e0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dj_products`
--

LOCK TABLES `dj_products` WRITE;
/*!40000 ALTER TABLE `dj_products` DISABLE KEYS */;
INSERT INTO `dj_products` VALUES ('04bcef4606fd4a3f97e4569515e0b9a5','product3',141.19,NULL,'http://eheziskel.lr/mov','2026-05-15',NULL,NULL),('19bbada37d484db0ab812a569afd46fc','product1',488.99,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.','http://eheziskel.lr/mov','2026-05-15',NULL,NULL),('1b11462d24af4cff84d227961a0539ca','product6',488.91,NULL,NULL,'2026-05-15',NULL,NULL),('215c5ebff3a747678de6f13ba58fcf09','Tovar2',255.79,NULL,NULL,'2026-05-18',NULL,'393192fe094b45e889e7a09a04ffdd2d'),('22aa0fb7b8fd43a6b969f90e8a09ae40','product2',118.71,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.','http://eheziskel.lr/mov','2026-05-15',NULL,NULL),('3437928febf742b0b349d6e9e21a4e9c','product5',278.41,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',NULL,'2026-05-15',NULL,NULL),('3c2b8766d7704699bf164862ccda9dde','product4',375.62,NULL,NULL,'2026-05-15',NULL,NULL),('583e0766080f4a77894d74cca770ae53','Tovar4',153.66,NULL,NULL,'2026-05-18',NULL,'393192fe094b45e889e7a09a04ffdd2d'),('79e041220c154e509c9e1aebcddbac68','Tovar3',299.79,NULL,NULL,'2026-05-18',NULL,'393192fe094b45e889e7a09a04ffdd2d'),('936278dfc9414d109d1767eec75b537e','Samsung s-25 ultra',499.99,'Cool smartphone',NULL,'2026-05-18',NULL,'e1164564684547ff939f419d13ebb13c'),('9dff83f54a164f1ba8e12aa3c625e068','Tovar5',656.9,NULL,NULL,'2026-05-18',NULL,'393192fe094b45e889e7a09a04ffdd2d'),('b4421e2691694c3bb36da1ffb6c62e5a','product7',229,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.','http://eheziskel.lr/mov','2026-05-15',NULL,NULL),('d8e96ec8291e44589e45391e9db1ea57','Tovar1',249.41,NULL,NULL,'2026-05-18',NULL,'393192fe094b45e889e7a09a04ffdd2d'),('f8a7a02ad9b34881be34894f44b6836f','New tovar',299.99,'description',NULL,'2026-05-22',NULL,'c3830a6b71fa41b0b9474ab2020c67c6'),('fe0e74b4b6e65b008d204d6cf71fe4d6','Samsung',316.53,NULL,NULL,'2026-05-15',NULL,'e1164564684547ff939f419d13ebb13c');
/*!40000 ALTER TABLE `dj_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dj_products_tags`
--

DROP TABLE IF EXISTS `dj_products_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dj_products_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` char(32) NOT NULL,
  `tag_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dj_products_tags_product_id_tag_id_2d536fdb_uniq` (`product_id`,`tag_id`),
  KEY `dj_products_tags_tag_id_6f4d8a3c_fk_core_tag_id` (`tag_id`),
  CONSTRAINT `dj_products_tags_product_id_c5e8ecaf_fk_dj_products_id` FOREIGN KEY (`product_id`) REFERENCES `dj_products` (`id`),
  CONSTRAINT `dj_products_tags_tag_id_6f4d8a3c_fk_core_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `core_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dj_products_tags`
--

LOCK TABLES `dj_products_tags` WRITE;
/*!40000 ALTER TABLE `dj_products_tags` DISABLE KEYS */;
INSERT INTO `dj_products_tags` VALUES (1,'f8a7a02ad9b34881be34894f44b6836f','32a9fd1a8d6f41bf8b54c09d69852d5a'),(2,'f8a7a02ad9b34881be34894f44b6836f','751db61e57bd4012888c4d9f5ee6773b');
/*!40000 ALTER TABLE `dj_products_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (3,'core','0001_initial','2026-05-15 16:52:41.394392'),(4,'core','0002_category_product_category','2026-05-18 15:26:42.412607'),(5,'core','0003_alter_product_category','2026-05-18 16:09:58.355719'),(28,'core','0004_tag_product_tags','2026-05-22 15:32:35.132338'),(30,'core','0005_alter_product_options_alter_category_created_at_and_more','2026-05-25 15:22:38.905256');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-25 18:54:03
