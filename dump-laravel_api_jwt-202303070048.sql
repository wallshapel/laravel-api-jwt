-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: laravel_api_jwt
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(85) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Caleb','Stewart','57543123','auctor@Duiscursus.org','2020-07-07 17:48:24','2020-05-20 20:03:12'),(2,'Troy','Hendricks','14858756','Aenean@risus.com','2020-09-28 21:17:51','2021-08-09 08:57:12'),(3,'Nora','Wooten','46887978','mi.Aliquam.gravida@metusurna.co.uk','2020-08-17 10:26:20','2020-02-09 10:22:56'),(4,'Leigh','Benton','60772660','purus.mauris.a@sociis.org','2019-10-08 23:29:52','2019-12-10 00:38:34'),(5,'Hu','Joseph','75097028','sed.libero.Proin@nondapibus.co.uk','2019-11-22 21:40:20','2021-07-07 08:32:21'),(6,'Kirk','Snider','82497678','tellus@Aeneaneuismodmauris.net','2021-06-27 01:24:06','2021-08-16 13:11:41'),(7,'Wylie','Estes','59942745','ante.ipsum.primis@In.org','2021-04-28 21:45:22','2020-03-26 00:12:51'),(8,'Jaden','Hoffman','91471748','laoreet.posuere@dictumplacerat.co.uk','2020-03-18 21:12:46','2021-09-04 13:04:18'),(9,'Joshua','Herring','54484553','Nam.nulla@magna.net','2020-12-26 03:46:21','2020-02-27 01:50:42'),(10,'Kamal','Holden','85300273','odio.Phasellus@nisiAenean.com','2021-06-14 03:09:28','2020-05-09 06:04:01'),(11,'Grady','White','32837177','egestas@cursuset.net','2021-08-22 13:07:00','2021-07-18 17:32:00'),(12,'Denton','Mcfadden','37857564','a.auctor.non@semperpretiumneque.co.uk','2021-11-23 00:12:09','2020-08-24 14:20:31'),(13,'Nora','Craig','57999556','odio@Inmipede.net','2021-05-13 19:28:45','2021-01-06 01:09:01'),(14,'Colt','Cotton','13160816','semper.pretium@erategetipsum.org','2019-11-28 12:11:59','2020-08-03 21:16:37'),(15,'Xavier','Hardin','86413559','tellus@vel.edu','2020-08-11 08:21:08','2019-11-04 12:30:11'),(16,'Kelsey','Morris','81977398','tincidunt.nibh@nullaCraseu.co.uk','2019-11-25 15:40:08','2021-02-21 00:06:28'),(17,'Leslie','Weber','54581409','nulla@ultriciesornare.net','2021-03-24 15:44:46','2020-01-09 15:01:06'),(18,'Oren','Carr','82784141','non.enim.commodo@neque.edu','2021-02-15 14:07:13','2021-05-27 03:16:51'),(19,'Emma','Leon','96434717','dolor@neque.org','2021-03-28 06:30:24','2021-09-05 14:42:26'),(20,'Gray','Clay','10759081','Morbi@elitEtiam.com','2020-06-11 10:57:55','2021-11-20 00:34:25'),(21,'Quinn','Russell','46775476','semper.et@magna.org','2020-08-14 04:37:20','2020-01-27 15:01:56'),(22,'McKenzie','Browning','91480544','est.ac.facilisis@pede.co.uk','2021-09-17 05:21:49','2020-06-09 23:10:44'),(23,'Kasper','Montgomery','26520645','porttitor@afelis.org','2019-10-17 10:32:11','2020-01-12 06:12:07'),(24,'Hedwig','Warren','88868739','magna.Praesent@velit.ca','2021-03-23 20:39:51','2020-02-04 21:43:29'),(25,'Driscoll','Santiago','26454705','Nam.tempor@Utnecurna.com','2020-05-09 02:04:56','2020-11-17 05:26:54'),(26,'Lane','Barnes','81999325','urna.nec@magnaa.com','2019-10-27 22:45:35','2021-05-22 04:07:33'),(27,'Jenna','Fox','30428935','Cras.vulputate@gravida.com','2021-05-31 00:12:10','2019-11-08 05:55:11'),(28,'Ivor','Hunter','64304627','malesuada.malesuada.Integer@mauriselitdictum.edu','2021-09-08 03:37:34','2019-11-07 17:42:47'),(29,'Iola','Graham','88816998','at.fringilla@sapien.net','2021-01-30 20:26:00','2021-11-07 09:37:07'),(30,'Garrison','Knowles','93109307','tempor.diam.dictum@aliquamarcu.net','2021-07-15 19:23:46','2021-04-25 21:59:57'),(31,'Owen','Harris','86175200','leo.elementum.sem@aauctor.edu','2021-08-28 18:49:41','2020-10-01 20:49:16'),(32,'Jemima','Barr','10857326','tortor@ultriciesornare.edu','2021-07-06 17:45:31','2020-01-29 21:37:37'),(33,'Kareem','Cote','23587805','Maecenas@erat.com','2021-04-26 00:14:06','2021-10-15 22:18:46'),(34,'Fitzgerald','Mays','30375653','leo@estmauris.ca','2021-07-22 17:52:17','2021-10-11 23:26:30'),(35,'Yoko','Carver','70702101','vehicula@porttitorscelerisque.edu','2020-01-14 15:44:04','2021-08-19 14:42:42'),(36,'Echo','Blevins','25080181','Quisque@Pellentesqueultriciesdignissim.co.uk','2020-02-06 07:31:54','2021-09-24 21:31:07'),(37,'Slade','Estrada','58531970','sapien.imperdiet.ornare@estNuncullamcorper.org','2020-02-13 00:15:31','2021-09-28 17:34:11'),(38,'Ralph','Frederick','67665926','Nullam.scelerisque@feugiat.ca','2019-12-28 15:20:15','2020-07-22 08:09:50'),(39,'Walker','Shaw','22362906','Nunc.laoreet@diam.net','2020-03-12 23:06:42','2020-06-25 10:26:40'),(40,'Cheryl','Obrien','97749149','metus@magnaetipsum.edu','2019-12-17 15:49:00','2021-03-05 05:42:31'),(41,'Wyatt','Harrington','75923786','pellentesque@Cras.ca','2021-11-08 02:57:18','2021-01-22 09:34:11'),(42,'Quentin','Fox','66126978','et.malesuada.fames@vitaesemper.org','2020-12-04 16:38:11','2021-10-04 04:12:20'),(43,'Ishmael','Rose','30377155','Donec.dignissim.magna@sed.net','2021-11-12 07:50:41','2021-09-02 08:06:09'),(44,'Seth','Kelly','03629590','tellus.justo@massa.com','2019-11-15 16:15:17','2020-08-29 23:07:17'),(45,'Marvin','Combs','67836404','lectus.Cum@Proinvel.org','2021-03-12 23:51:20','2021-10-27 10:45:58'),(46,'Nerea','Foley','72223826','aliquet@mollisvitae.ca','2020-11-10 20:38:23','2021-11-19 00:14:18'),(47,'Zorita','Kelley','24469290','ante@acmattis.net','2019-10-16 15:28:51','2021-08-12 21:50:39'),(48,'Kameko','Villarreal','46565531','parturient@et.org','2020-05-13 20:50:02','2021-04-27 19:47:45'),(49,'Branden','Griffith','29540975','ac.orci@antelectus.ca','2020-10-28 15:09:13','2020-10-20 21:24:45'),(50,'April','Morrow','16160750','elit.a@aliquet.com','2021-08-17 09:30:53','2021-07-06 10:18:23'),(51,'Cara','Wilkinson','33226982','mus.Donec@neque.co.uk','2020-09-06 16:41:50','2020-03-19 15:25:26'),(52,'Chadwick','Vazquez','76386561','ligula.Aenean@ullamcorpervelitin.edu','2020-06-28 10:17:02','2020-06-03 11:18:25'),(53,'Katelyn','Sanchez','03580314','Curabitur.dictum@inaliquetlobortis.co.uk','2019-11-17 08:14:46','2020-04-01 04:30:23'),(54,'Nina','Reynolds','59173299','a@vehiculaet.org','2021-11-14 13:34:15','2021-07-01 18:10:51'),(55,'Salvador','Olsen','82288531','Nunc.pulvinar@non.net','2020-12-24 10:26:58','2021-07-14 10:50:05'),(56,'Wylie','Ramos','22515382','eu.nulla@ultricesa.ca','2021-06-14 19:23:54','2021-03-21 21:42:27'),(57,'Philip','Gallagher','64459998','placerat@vitaeodio.edu','2020-03-04 22:36:20','2021-02-23 06:32:21'),(58,'Todd','Hartman','70178762','et.netus.et@Donecconsectetuer.com','2020-04-23 01:34:41','2021-03-16 03:35:12'),(59,'Quinlan','Davidson','46840082','in.dolor.Fusce@estNunc.com','2020-02-02 14:07:04','2021-06-18 11:49:06'),(60,'Stephanie','Ware','29745139','Integer.eu.lacus@nuncQuisqueornare.net','2019-10-15 22:18:49','2020-05-13 23:18:22'),(61,'Lars','Durham','75182250','et.nunc@parturientmontes.org','2021-04-26 02:31:33','2019-11-17 22:55:33'),(62,'Bert','Alford','52304296','felis@Duis.co.uk','2019-12-03 22:26:49','2021-07-20 00:44:26'),(63,'Ursa','Murray','03901184','ut@leoVivamus.edu','2021-01-18 09:58:26','2021-09-02 15:03:30'),(64,'Katell','Henderson','90356851','massa.Mauris.vestibulum@perconubia.co.uk','2019-11-04 01:04:55','2021-09-23 23:09:12'),(65,'Dorian','Jacobs','74836633','Vivamus@parturientmontes.co.uk','2021-02-28 00:35:26','2021-06-10 02:38:20'),(66,'Eaton','Carlson','71809738','ac.libero.nec@sed.com','2021-01-10 12:25:15','2020-02-06 19:00:57'),(67,'Ray','Larson','49387606','purus@nunc.co.uk','2020-02-17 20:33:49','2020-04-27 22:11:01'),(68,'Halee','Roy','99285622','mattis.Integer@eusemPellentesque.edu','2019-12-16 06:50:22','2020-07-22 20:51:33'),(69,'Fletcher','Hickman','56473291','ultricies.ligula.Nullam@Nunccommodoauctor.org','2021-06-14 05:33:26','2020-04-30 05:26:19'),(70,'Kaseem','Stafford','63369574','dolor.Quisque@ametorciUt.com','2020-02-19 09:33:50','2020-08-31 23:26:53'),(71,'Xenos','Olsen','29341507','scelerisque.mollis.Phasellus@urnaNunc.ca','2020-03-26 19:03:28','2020-09-23 14:53:31'),(72,'Mia','Langley','47282760','lobortis.quam@tristiquealiquetPhasellus.net','2020-02-15 15:47:03','2020-01-30 02:18:17'),(73,'Beatrice','Lester','03198187','aliquam.iaculis.lacus@nisinibhlacinia.ca','2021-08-05 11:32:05','2019-12-09 13:59:01'),(74,'September','Curtis','80305976','Vestibulum.accumsan@Nuncullamcorper.edu','2020-10-11 07:58:02','2020-02-23 10:37:20'),(75,'Lee','Barr','46918244','Duis.dignissim@conubianostra.com','2019-11-28 09:44:14','2020-07-04 15:11:09'),(76,'Chastity','Clarke','95637804','quis@aptenttaciti.net','2020-01-31 23:26:44','2021-11-15 06:21:21'),(77,'Avram','Warren','97745055','diam@ultriciessemmagna.edu','2019-10-23 19:18:55','2021-07-10 01:27:18'),(78,'Prescott','Rosales','06377645','Donec@augueSedmolestie.net','2020-09-01 09:03:21','2020-09-14 20:05:34'),(79,'Callie','Stout','20897808','iaculis.enim.sit@elitfermentumrisus.co.uk','2019-10-04 02:10:21','2020-07-24 14:18:27'),(80,'Kimberly','Tanner','72907855','diam@Nuncac.co.uk','2020-02-27 07:27:53','2019-12-10 18:41:12'),(81,'Ulla','Underwood','84115992','ipsum@magnaetipsum.co.uk','2021-11-14 16:53:58','2021-04-05 09:26:50'),(82,'Carly','Johnston','62443261','Morbi.sit@egestashendreritneque.com','2020-07-21 01:40:06','2021-01-29 16:42:31'),(83,'Bevis','Lloyd','64703480','felis.purus@risusMorbimetus.ca','2021-02-06 02:05:40','2020-05-14 08:50:32'),(84,'Hoyt','Morgan','21504143','nibh@mi.ca','2019-10-31 15:06:10','2021-04-19 05:09:01'),(85,'Phelan','Guerra','40989402','primis.in.faucibus@faucibusorciluctus.com','2021-03-29 01:27:08','2020-10-19 09:33:47'),(86,'Bethany','Wells','19426192','tellus.id@arcuVestibulum.ca','2021-07-31 02:46:44','2020-11-14 19:25:25'),(87,'Ignatius','Mcclure','94252332','dolor@ultricesposuerecubilia.co.uk','2020-10-25 15:34:24','2021-10-27 14:59:17'),(88,'Justine','Vincent','83595487','dictum@Donecfeugiatmetus.ca','2020-09-13 14:23:32','2021-03-09 15:51:23'),(89,'Quail','Dalton','67188015','aliquet@semperegestas.edu','2021-06-22 06:39:44','2019-11-04 15:37:19'),(90,'Angelica','Guthrie','14837518','quis.diam.Pellentesque@tristique.com','2021-01-03 15:02:22','2021-05-09 13:44:02'),(91,'Deborah','Conway','14419156','mus.Donec@elitCurabitur.co.uk','2021-01-16 08:36:24','2020-11-24 13:19:17'),(92,'Macey','Bernard','61262221','Nulla@egestas.com','2019-10-18 13:18:15','2020-01-10 20:01:17'),(93,'Brenda','Flynn','54448702','Nunc.mauris.Morbi@dolor.org','2021-02-21 01:47:57','2020-03-11 19:22:30'),(94,'Hunter','Lang','77234117','lectus.pede.et@ligulaelit.org','2021-11-10 05:42:39','2021-07-26 15:57:32'),(95,'Ashely','Nicholson','41163492','amet.faucibus@vel.com','2021-01-27 08:37:18','2021-01-17 07:55:12'),(96,'Montana','Bass','11294237','auctor.vitae.aliquet@semegestasblandit.net','2019-10-05 13:03:32','2020-11-10 03:20:43'),(97,'Taylor','Mckay','07024025','taciti.sociosqu.ad@interdumenimnon.co.uk','2020-01-20 07:56:29','2021-03-23 21:03:26'),(98,'Zoe','Watson','74529781','Integer@penatibusetmagnis.com','2020-01-10 15:31:44','2021-05-03 21:52:42'),(99,'Casey','Wright','00779312','nunc.sed@neque.org','2020-03-30 20:02:26','2019-11-08 05:12:20'),(100,'Daniel','Smith','32437544','Mauris.magna@pellentesqueegetdictum.co.uk','2020-09-18 03:54:22','2021-07-26 12:07:56');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuenta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `moneda` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fondo` decimal(8,2) NOT NULL,
  `cliente_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cuenta_cliente_id_foreign` (`cliente_id`),
  CONSTRAINT `cuenta_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2019_12_14_000001_create_personal_access_tokens_table',1),(4,'2023_02_11_230830_create_roles_table',1),(5,'2023_02_11_231057_create_users_table',1),(6,'2023_02_12_201841_create_clientes_table',2),(7,'2023_02_12_202201_create_cuenta_table',2),(9,'2023_02_12_221716_create_tipo_transaccion_table',3),(10,'2023_02_12_225031_create_transaccion_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador','2023-02-12 21:04:29','2023-02-12 21:04:33'),(2,'Cliente','2023-02-13 03:48:10','2023-02-13 03:48:16');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_transaccion`
--

DROP TABLE IF EXISTS `tipo_transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_transaccion` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_transaccion`
--

LOCK TABLES `tipo_transaccion` WRITE;
/*!40000 ALTER TABLE `tipo_transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaccion`
--

DROP TABLE IF EXISTS `transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaccion` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cuenta_id` bigint unsigned NOT NULL,
  `tipo_transaccion_id` bigint unsigned NOT NULL,
  `monto` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaccion_cuenta_id_foreign` (`cuenta_id`),
  KEY `transaccion_tipo_transaccion_id_foreign` (`tipo_transaccion_id`),
  CONSTRAINT `transaccion_cuenta_id_foreign` FOREIGN KEY (`cuenta_id`) REFERENCES `cuenta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transaccion_tipo_transaccion_id_foreign` FOREIGN KEY (`tipo_transaccion_id`) REFERENCES `tipo_transaccion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccion`
--

LOCK TABLES `transaccion` WRITE;
/*!40000 ALTER TABLE `transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol_id` bigint unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_rol_id_foreign` (`rol_id`),
  CONSTRAINT `users_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'legato','abelyimartinez1987@hotmail.com',NULL,'$2y$10$k6zmJLBIm3WkvGxRuGJw2.EW.eN4XMCWOaIY6bWoyOoLnFYHmq9TW',1,NULL,'2023-02-12 22:12:31','2023-02-12 22:12:34'),(2,'claudia','claudia@gmail.com',NULL,'$2y$10$k6zmJLBIm3WkvGxRuGJw2.EW.eN4XMCWOaIY6bWoyOoLnFYHmq9TW',2,NULL,'2023-02-13 03:49:05','2023-02-13 03:49:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'laravel_api_jwt'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07  0:48:05
