CREATE DATABASE  IF NOT EXISTS `btredb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `btredb`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: btredb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add listing',1,'add_listing'),(2,'Can change listing',1,'change_listing'),(3,'Can delete listing',1,'delete_listing'),(4,'Can view listing',1,'view_listing'),(5,'Can add realtor',2,'add_realtor'),(6,'Can change realtor',2,'change_realtor'),(7,'Can delete realtor',2,'delete_realtor'),(8,'Can view realtor',2,'view_realtor'),(9,'Can add log entry',3,'add_logentry'),(10,'Can change log entry',3,'change_logentry'),(11,'Can delete log entry',3,'delete_logentry'),(12,'Can view log entry',3,'view_logentry'),(13,'Can add permission',4,'add_permission'),(14,'Can change permission',4,'change_permission'),(15,'Can delete permission',4,'delete_permission'),(16,'Can view permission',4,'view_permission'),(17,'Can add group',5,'add_group'),(18,'Can change group',5,'change_group'),(19,'Can delete group',5,'delete_group'),(20,'Can view group',5,'view_group'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add content type',7,'add_contenttype'),(26,'Can change content type',7,'change_contenttype'),(27,'Can delete content type',7,'delete_contenttype'),(28,'Can view content type',7,'view_contenttype'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session'),(33,'Can add contact',9,'add_contact'),(34,'Can change contact',9,'change_contact'),(35,'Can delete contact',9,'delete_contact'),(36,'Can view contact',9,'view_contact');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$8f0LvnCPE1Wi$cNICQriwxWHoPDtuEcBz+uz+7zExqedL4zNHnId+oF8=','2019-12-02 02:50:38.235058',1,'shyam','','','sykron@gmail.com',1,1,'2019-11-29 03:46:47.585372'),(2,'pbkdf2_sha256$150000$WwdcaxrkiwBy$5NxNz3L5IFs9DMp294/+fj2cfHHMk3EXGAVip0KGTXE=','2019-12-02 07:28:15.804855',0,'devc','Dev','Collins','devc@gmail.com',0,1,'2019-12-02 01:30:22.819601');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_contact`
--

DROP TABLE IF EXISTS `contacts_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listing` varchar(200) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `contact_date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_contact`
--

LOCK TABLES `contacts_contact` WRITE;
/*!40000 ALTER TABLE `contacts_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-11-29 04:17:21.395204','1','Kyle Brown',1,'[{\"added\": {}}]',2,1),(2,'2019-11-29 04:19:19.573185','1','45 Drivewood Cir',1,'[{\"added\": {}}]',1,1),(3,'2019-11-29 04:36:24.982235','1','45 Drivewood Cir',2,'[{\"changed\": {\"fields\": [\"photo_3\", \"photo_4\", \"photo_5\", \"photo_6\"]}}]',1,1),(4,'2019-11-29 05:14:14.272685','2','Mark Hudson',1,'[{\"added\": {}}]',2,1),(5,'2019-11-29 05:14:44.713498','3','Jenny Johnson',1,'[{\"added\": {}}]',2,1),(6,'2019-11-29 05:18:04.837544','2','18 Jefferson Lane',1,'[{\"added\": {}}]',1,1),(7,'2019-11-29 05:19:35.201221','3','187 Woodrow Street',1,'[{\"added\": {}}]',1,1),(8,'2019-11-29 05:20:48.950324','4','28 Gifford Street',1,'[{\"added\": {}}]',1,1),(9,'2019-11-29 05:21:51.415264','5','12 United Road',1,'[{\"added\": {}}]',1,1),(10,'2019-11-29 05:22:49.307911','6','33 Esses Circle',1,'[{\"added\": {}}]',1,1),(11,'2019-11-29 05:23:08.109513','1','45 Drivewood Circle',2,'[{\"changed\": {\"fields\": [\"title\", \"address\"]}}]',1,1),(12,'2019-11-30 02:17:42.646190','6','33 Essex Circle',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',1,1),(13,'2019-11-30 02:17:46.387612','6','33 Essex Circle',2,'[{\"changed\": {\"fields\": [\"is_published\"]}}]',1,1),(14,'2019-11-30 02:17:55.742713','6','33 Essex Circle',2,'[{\"changed\": {\"fields\": [\"is_published\"]}}]',1,1),(15,'2019-11-30 03:46:12.481344','1','Kyle Brown',2,'[{\"changed\": {\"fields\": [\"is_mvp\"]}}]',2,1),(16,'2019-11-30 06:54:43.105393','6','33 Essex Circle',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',1,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(5,'auth','group'),(4,'auth','permission'),(6,'auth','user'),(9,'contacts','contact'),(7,'contenttypes','contenttype'),(1,'listings','listing'),(2,'realtors','realtor'),(8,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-11-29 03:42:35.871526'),(2,'auth','0001_initial','2019-11-29 03:42:37.173143'),(3,'admin','0001_initial','2019-11-29 03:42:45.047848'),(4,'admin','0002_logentry_remove_auto_add','2019-11-29 03:42:49.264239'),(5,'admin','0003_logentry_add_action_flag_choices','2019-11-29 03:42:49.444756'),(6,'contenttypes','0002_remove_content_type_name','2019-11-29 03:42:50.899939'),(7,'auth','0002_alter_permission_name_max_length','2019-11-29 03:42:51.516625'),(8,'auth','0003_alter_user_email_max_length','2019-11-29 03:42:51.667224'),(9,'auth','0004_alter_user_username_opts','2019-11-29 03:42:51.757313'),(10,'auth','0005_alter_user_last_login_null','2019-11-29 03:42:52.509776'),(11,'auth','0006_require_contenttypes_0002','2019-11-29 03:42:52.527728'),(12,'auth','0007_alter_validators_add_error_messages','2019-11-29 03:42:52.574602'),(13,'auth','0008_alter_user_username_max_length','2019-11-29 03:42:53.059874'),(14,'auth','0009_alter_user_last_name_max_length','2019-11-29 03:42:53.860264'),(15,'auth','0010_alter_group_name_max_length','2019-11-29 03:42:54.033771'),(16,'auth','0011_update_proxy_permissions','2019-11-29 03:42:54.065715'),(17,'realtors','0001_initial','2019-11-29 03:42:55.767317'),(18,'listings','0001_initial','2019-11-29 03:42:56.976367'),(19,'sessions','0001_initial','2019-11-29 03:42:58.933736'),(20,'contacts','0001_initial','2019-12-02 04:35:20.020539');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7id39kj1m2mrni85faf2fcfz0q95a298','ZTFkODJlMzI4MjkwZDNmNzAzMTk5NzkzMmVhOTJkY2RkOGNkMTY0Njp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Mzk2YWI1ZGFkZGM2Y2U3MThlMjBjOGQ5ZTNjZWIzZTBjMDExN2NhIn0=','2019-12-16 07:28:15.821836'),('l57d2wsvcm2lmj626iebctr7x9v6em8t','NzdlNTFlZWY3NzlmNTJhMzBkN2JjMDNlZDkzZTMzN2JlM2MwYTE1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTI5MzlhMjViYTFmNjk4OWE0NDFiMmQxMzFlYmQwZDU5MjZmMjM4In0=','2019-12-13 05:12:42.870082'),('xztwf9ktbpthiopbgbndh4t7u3cluwhh','NzdlNTFlZWY3NzlmNTJhMzBkN2JjMDNlZDkzZTMzN2JlM2MwYTE1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTI5MzlhMjViYTFmNjk4OWE0NDFiMmQxMzFlYmQwZDU5MjZmMjM4In0=','2019-12-13 03:46:53.449449');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listings_listing`
--

DROP TABLE IF EXISTS `listings_listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listings_listing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` decimal(2,1) NOT NULL,
  `garage` int(11) NOT NULL,
  `sqft` int(11) NOT NULL,
  `lot_size` decimal(5,1) NOT NULL,
  `photo_main` varchar(100) NOT NULL,
  `photo_1` varchar(100) NOT NULL,
  `photo_2` varchar(100) NOT NULL,
  `photo_3` varchar(100) NOT NULL,
  `photo_4` varchar(100) NOT NULL,
  `photo_5` varchar(100) NOT NULL,
  `photo_6` varchar(100) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `list_date` datetime(6) NOT NULL,
  `realtor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listings_listing_realtor_id_90583529_fk_realtors_realtor_id` (`realtor_id`),
  CONSTRAINT `listings_listing_realtor_id_90583529_fk_realtors_realtor_id` FOREIGN KEY (`realtor_id`) REFERENCES `realtors_realtor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings_listing`
--

LOCK TABLES `listings_listing` WRITE;
/*!40000 ALTER TABLE `listings_listing` DISABLE KEYS */;
INSERT INTO `listings_listing` VALUES (1,'45 Drivewood Circle','45 Drivewood Circle','Norwood','MA','02062','Mauris vehicula, ligula a efficitur blandit, libero erat aliquam ex, a iaculis justo neque ac mi. Maecenas vestibulum sit amet dolor sit amet semper. Duis ultricies at lectus at varius. Sed tincidunt cursus augue in pharetra. Nunc sed dignissim nulla. Cras vehicula eleifend arcu rutrum rutrum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus ultricies in massa sed vulputate. Suspendisse sit amet sapien risus. Nulla eu sapien aliquet, tristique libero vitae, pulvinar elit. Curabitur mollis placerat felis, eget malesuada neque porta at. Suspendisse condimentum justo nec ornare venenatis. Sed maximus tortor sit amet tempor placerat. Mauris at ligula facilisis, pretium erat quis, volutpat justo. In hac habitasse platea dictumst. Pellentesque suscipit risus sed imperdiet bibendum.',49000,3,2.0,2,3298,2.3,'photos/2019/11/29/home-1_qqMU8e8.jpg','photos/2019/11/29/home-inside-1_Debpr1q.jpg','photos/2019/11/29/home-inside-2_QaIAD07.jpg','photos/2019/11/29/home-inside-3_Q21KgUd.jpg','photos/2019/11/29/home-inside-4_ZEKaDlt.jpg','photos/2019/11/29/home-inside-5_ZHFr2EY.jpg','photos/2019/11/29/home-inside-6_G0H2RP3.jpg',1,'2019-11-29 12:17:27.000000',1),(2,'18 Jefferson Lane','18 Jefferson Lane','Wouborn','MA','01801','Mauris vehicula, ligula a efficitur blandit, libero erat aliquam ex, a iaculis justo neque ac mi. Maecenas vestibulum sit amet dolor sit amet semper. Duis ultricies at lectus at varius. Sed tincidunt cursus augue in pharetra. Nunc sed dignissim nulla. Cras vehicula eleifend arcu rutrum rutrum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus ultricies in massa sed vulputate. Suspendisse sit amet sapien risus. Nulla eu sapien aliquet, tristique libero vitae, pulvinar elit. Curabitur mollis placerat felis, eget malesuada neque porta at. Suspendisse condimentum justo nec ornare venenatis. Sed maximus tortor sit amet tempor placerat. Mauris at ligula facilisis, pretium erat quis, volutpat justo. In hac habitasse platea dictumst. Pellentesque suscipit risus sed imperdiet bibendum.',550000,4,2.5,1,3100,1.5,'photos/2019/11/29/home-2.jpg','photos/2019/11/29/home-inside-1_cea0n8B.jpg','photos/2019/11/29/home-inside-2_SL4F6nP.jpg','photos/2019/11/29/home-inside-3_G2rJj2W.jpg','','','',1,'2019-11-29 13:15:12.000000',2),(3,'187 Woodrow Street','187 Woodrow Street','Salem','MA','01815','Mauris vehicula, ligula a efficitur blandit, libero erat aliquam ex, a iaculis justo neque ac mi. Maecenas vestibulum sit amet dolor sit amet semper. Duis ultricies at lectus at varius. Sed tincidunt cursus augue in pharetra. Nunc sed dignissim nulla. Cras vehicula eleifend arcu rutrum rutrum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus ultricies in massa sed vulputate. Suspendisse sit amet sapien risus. Nulla eu sapien aliquet, tristique libero vitae, pulvinar elit. Curabitur mollis placerat felis, eget malesuada neque porta at. Suspendisse condimentum justo nec ornare venenatis. Sed maximus tortor sit amet tempor placerat. Mauris at ligula facilisis, pretium erat quis, volutpat justo. In hac habitasse platea dictumst. Pellentesque suscipit risus sed imperdiet bibendum.',580000,3,3.0,1,3400,1.0,'photos/2019/11/29/home-3.jpg','photos/2019/11/29/home-inside-1_DLTuXLT.jpg','photos/2019/11/29/home-inside-2_dxrz0rA.jpg','photos/2019/11/29/home-inside-4_Vu9whGX.jpg','','','',1,'2019-11-29 13:18:04.000000',3),(4,'28 Gifford Street','28 Gifford Street','Bedford','NH','03103','Mauris vehicula, ligula a efficitur blandit, libero erat aliquam ex, a iaculis justo neque ac mi. Maecenas vestibulum sit amet dolor sit amet semper. Duis ultricies at lectus at varius. Sed tincidunt cursus augue in pharetra. Nunc sed dignissim nulla. Cras vehicula eleifend arcu rutrum rutrum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus ultricies in massa sed vulputate. Suspendisse sit amet sapien risus. Nulla eu sapien aliquet, tristique libero vitae, pulvinar elit. Curabitur mollis placerat felis, eget malesuada neque porta at. Suspendisse condimentum justo nec ornare venenatis. Sed maximus tortor sit amet tempor placerat. Mauris at ligula facilisis, pretium erat quis, volutpat justo. In hac habitasse platea dictumst. Pellentesque suscipit risus sed imperdiet bibendum.',380000,3,2.5,2,2900,4.5,'photos/2019/11/29/home-4.jpg','photos/2019/11/29/home-inside-1_2tu1nrO.jpg','photos/2019/11/29/home-inside-5_mYA1kcV.jpg','','','','',1,'2019-11-29 13:19:35.000000',2),(5,'12 United Road','12 United Road','South Hampton','MA','03827','Mauris vehicula, ligula a efficitur blandit, libero erat aliquam ex, a iaculis justo neque ac mi. Maecenas vestibulum sit amet dolor sit amet semper. Duis ultricies at lectus at varius. Sed tincidunt cursus augue in pharetra. Nunc sed dignissim nulla. Cras vehicula eleifend arcu rutrum rutrum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus ultricies in massa sed vulputate. Suspendisse sit amet sapien risus. Nulla eu sapien aliquet, tristique libero vitae, pulvinar elit. Curabitur mollis placerat felis, eget malesuada neque porta at. Suspendisse condimentum justo nec ornare venenatis. Sed maximus tortor sit amet tempor placerat. Mauris at ligula facilisis, pretium erat quis, volutpat justo. In hac habitasse platea dictumst. Pellentesque suscipit risus sed imperdiet bibendum.',230000,3,1.5,1,1980,3.2,'photos/2019/11/29/home-5.jpg','photos/2019/11/29/home-inside-1_cZEW5gs.jpg','photos/2019/11/29/home-inside-2_g6xu6BV.jpg','photos/2019/11/29/home-inside-3_nL2qDEA.jpg','','','',1,'2019-11-29 13:20:49.000000',1),(6,'33 Essex Circle','33 Essex Circle','Lexintong','MA','01731','Mauris vehicula, ligula a efficitur blandit, libero erat aliquam ex, a iaculis justo neque ac mi. Maecenas vestibulum sit amet dolor sit amet semper. Duis ultricies at lectus at varius. Sed tincidunt cursus augue in pharetra. Nunc sed dignissim nulla. Cras vehicula eleifend arcu rutrum rutrum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus ultricies in massa sed vulputate. Suspendisse sit amet sapien risus. Nulla eu sapien aliquet, tristique libero vitae, pulvinar elit. Curabitur mollis placerat felis, eget malesuada neque porta at. Suspendisse condimentum justo nec ornare venenatis. Sed maximus tortor sit amet tempor placerat. Mauris at ligula facilisis, pretium erat quis, volutpat justo. In hac habitasse platea dictumst. Pellentesque suscipit risus sed imperdiet testword.',780000,5,4.0,1,5023,1.7,'photos/2019/11/29/home-6.jpg','photos/2019/11/29/home-inside-3_mrm6H8v.jpg','photos/2019/11/29/home-inside-5_fHkvf4u.jpg','photos/2019/11/29/home-inside-6_Wyp3PcQ.jpg','','','',1,'2019-11-29 13:21:51.000000',1);
/*!40000 ALTER TABLE `listings_listing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realtors_realtor`
--

DROP TABLE IF EXISTS `realtors_realtor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realtors_realtor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_mvp` tinyint(1) NOT NULL,
  `hire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realtors_realtor`
--

LOCK TABLES `realtors_realtor` WRITE;
/*!40000 ALTER TABLE `realtors_realtor` DISABLE KEYS */;
INSERT INTO `realtors_realtor` VALUES (1,'Kyle Brown','photos/2019/11/29/kyle_VZDRI1c.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium id purus vitae auctor. Integer posuere nunc id risus varius dictum. Nullam lobortis sodales luctus. Sed rhoncus pulvinar augue, eget sollicitudin orci. Donec eleifend mauris sit amet tortor bibendum, et semper nunc placerat. Praesent quis bibendum orci. Nullam ac diam et justo posuere blandit.','555-555-5555','kyle@btrealsestate.co',1,'2018-09-25 11:47:04.000000'),(2,'Mark Hudson','photos/2019/11/29/mark_i6C99Cz.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum quis elit nec pharetra. Nulla sem justo, ullamcorper at mollis mattis, sollicitudin pulvinar massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras pretium, ex consequat mattis cursus, ante turpis posuere enim, vel ullamcorper neque risus nec ligula. Morbi pretium, massa at pretium tempor, augue tellus congue augue, nec ullamcorper ipsum velit commodo nisi. Vivamus quis iaculis leo, vitae venenatis orci. Nunc eget lectus ut turpis vulputate efficitur eget eu felis. Phasellus ultricies neque dui, eget pellentesque ante luctus in. Nullam accumsan a massa nec vehicula.','444-444-4444','mark@btrealestate.co',0,'2019-11-29 13:12:47.000000'),(3,'Jenny Johnson','photos/2019/11/29/jenny_SWpw4UH.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum quis elit nec pharetra. Nulla sem justo, ullamcorper at mollis mattis, sollicitudin pulvinar massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras pretium, ex consequat mattis cursus, ante turpis posuere enim, vel ullamcorper neque risus nec ligula. Morbi pretium, massa at pretium tempor, augue tellus congue augue, nec ullamcorper ipsum velit commodo nisi. Vivamus quis iaculis leo, vitae venenatis orci. Nunc eget lectus ut turpis vulputate efficitur eget eu felis. Phasellus ultricies neque dui, eget pellentesque ante luctus in. Nullam accumsan a massa nec vehicula.','333-333-3333','jenny@btrealestate.co',0,'2019-11-29 13:14:14.000000');
/*!40000 ALTER TABLE `realtors_realtor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-03 11:09:04
