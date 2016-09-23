/*
SQLyog Ultimate v9.10 
MySQL - 5.1.32-community : Database - attendanceapi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`attendanceapi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `attendanceapi`;

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `staffId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `firstTime` datetime DEFAULT NULL,
  `lastTime` datetime DEFAULT NULL,
  `workTime` time DEFAULT NULL,
  `late` char(1) DEFAULT NULL,
  `earlyLeave` char(1) DEFAULT NULL,
  `absence` char(1) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `dayOfWeek` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;

/*Data for the table `attendance` */

insert  into `attendance`(`id`,`staffId`,`name`,`firstTime`,`lastTime`,`workTime`,`late`,`earlyLeave`,`absence`,`day`,`month`,`dayOfWeek`,`year`) values (1,0,'samuel','2016-09-22 16:41:09','2016-09-22 18:46:12','02:05:03','Y','N','Y',22,9,4,2016),(2,1,'Wesley Haynes','2016-09-22 04:54:23','2016-09-22 23:57:35','19:03:12','N','N','N',22,9,4,2016),(3,3,'Aimee Forbes','2016-09-22 06:35:44','2016-09-22 14:25:12','07:49:28','N','Y','N',22,9,4,2016),(4,4,'Micah Rollins','2016-09-22 02:42:38','2016-09-22 17:25:27','14:42:49','N','N','N',22,9,4,2016),(5,5,'Carly Lamb','2016-09-22 09:16:48','2016-09-22 16:53:54','07:37:06','Y','Y','N',22,9,4,2016),(6,6,'Octavius Daniel','2016-09-22 06:43:38','2016-09-22 21:49:11','15:05:33','N','N','N',22,9,4,2016),(7,7,'Petra Day','2016-09-22 08:01:46','2016-09-22 23:23:41','15:21:55','N','N','N',22,9,4,2016),(8,8,'Ava Fleming','2016-09-22 17:20:55','2016-09-22 23:57:27','06:36:32','Y','N','N',22,9,4,2016),(9,9,'Stephanie Bond','2016-09-22 00:54:12','2016-09-22 17:21:49','16:27:37','N','N','N',22,9,4,2016),(10,10,'Basia Beasley','2016-09-22 05:46:19','2016-09-22 20:30:31','14:44:12','N','N','N',22,9,4,2016),(11,11,'Martena Nieves','2016-09-22 01:23:42','2016-09-22 21:32:26','20:08:44','N','N','N',22,9,4,2016),(12,12,'Helen Holland','2016-09-22 00:45:28','2016-09-22 22:33:39','21:48:11','N','N','N',22,9,4,2016),(13,13,'Stephanie Lowe','2016-09-22 07:02:36','2016-09-22 19:20:22','12:17:46','N','N','N',22,9,4,2016),(14,14,'Hyacinth Myers','2016-09-22 00:04:04','2016-09-22 22:58:03','22:53:59','N','N','N',22,9,4,2016),(15,15,'Vladimir Vance','2016-09-22 03:26:08','2016-09-22 16:58:27','13:32:19','N','Y','N',22,9,4,2016),(16,16,'Teagan Mosley','2016-09-22 02:33:53','2016-09-22 19:34:46','17:00:53','N','N','N',22,9,4,2016),(17,17,'Zephr Clarke','2016-09-22 02:50:54','2016-09-22 17:48:51','14:57:57','N','N','N',22,9,4,2016),(18,18,'Samantha Chase','2016-09-22 03:23:17','2016-09-22 21:54:16','18:30:59','N','N','N',22,9,4,2016),(19,19,'Adena Baird','2016-09-22 00:02:41','2016-09-22 06:33:14','06:30:33','N','Y','N',22,9,4,2016),(20,20,'Norman Emerson','2016-09-22 08:41:30','2016-09-22 23:23:10','14:41:40','N','N','N',22,9,4,2016),(21,21,'Uta Blevins','2016-09-22 01:21:23','2016-09-22 14:18:11','12:56:48','N','Y','N',22,9,4,2016),(22,22,'Kylynn Nguyen','2016-09-22 03:08:57','2016-09-22 22:08:48','18:59:51','N','N','N',22,9,4,2016),(23,23,'Joseph Manning','2016-09-22 00:51:55','2016-09-22 21:18:19','20:26:24','N','N','N',22,9,4,2016),(24,24,'Mohammad Marshall','2016-09-22 05:35:03','2016-09-22 16:10:38','10:35:35','N','Y','N',22,9,4,2016),(25,25,'Alice Tate','2016-09-22 02:18:44','2016-09-22 16:26:14','14:07:30','N','Y','N',22,9,4,2016),(26,26,'Ivan Powell','2016-09-22 11:13:08','2016-09-22 22:57:44','11:44:36','Y','N','N',22,9,4,2016),(27,27,'Florence Finch','2016-09-22 00:21:00','2016-09-22 08:12:29','07:51:29','N','Y','N',22,9,4,2016),(28,28,'Pascale Thornton','2016-09-22 06:31:48','2016-09-22 19:06:02','12:34:14','N','N','N',22,9,4,2016),(29,29,'Elvis Vargas','2016-09-22 01:09:07','2016-09-22 23:20:53','22:11:46','N','N','N',22,9,4,2016),(30,30,'Tanya Morrison','2016-09-22 00:18:44','2016-09-22 11:06:54','10:48:10','N','Y','N',22,9,4,2016),(31,31,'Julian Sharpe','2016-09-22 08:26:00','2016-09-22 22:53:04','14:27:04','N','N','N',22,9,4,2016),(32,32,'Kelly Rice','2016-09-22 17:26:56','2016-09-22 19:34:54','02:07:58','Y','N','Y',22,9,4,2016),(33,33,'Allegra Mooney','2016-09-22 04:39:43','2016-09-22 17:28:53','12:49:10','N','N','N',22,9,4,2016),(34,34,'Carl Stevenson','2016-09-22 07:47:30','2016-09-22 18:51:55','11:04:25','N','N','N',22,9,4,2016),(35,35,'Ashely Parsons','2016-09-22 08:48:57','2016-09-22 20:42:13','11:53:16','N','N','N',22,9,4,2016),(36,36,'Aretha Weaver','2016-09-22 02:50:39','2016-09-22 11:14:55','08:24:16','N','Y','N',22,9,4,2016),(37,37,'Jesse Kane','2016-09-22 03:23:24','2016-09-22 17:01:37','13:38:13','N','Y','N',22,9,4,2016),(38,38,'Mason Newman','2016-09-22 05:35:51','2016-09-22 13:52:06','08:16:15','N','Y','N',22,9,4,2016),(39,39,'Xander Blair','2016-09-22 11:00:42','2016-09-22 18:58:27','07:57:45','Y','N','N',22,9,4,2016),(40,40,'Rhiannon Mcclure','2016-09-22 02:06:10','2016-09-22 22:08:08','20:01:58','N','N','N',22,9,4,2016),(41,41,'Jessamine Marquez','2016-09-22 07:37:29','2016-09-22 10:33:49','02:56:20','N','Y','Y',22,9,4,2016),(42,42,'Kelsey Cervantes','2016-09-22 05:56:43','2016-09-22 22:02:06','16:05:23','N','N','N',22,9,4,2016),(43,43,'Angelica Vinson','2016-09-22 01:58:16','2016-09-22 20:20:26','18:22:10','N','N','N',22,9,4,2016),(44,44,'Iona Benton','2016-09-22 15:44:21','2016-09-22 22:02:41','06:18:20','Y','N','Y',22,9,4,2016),(45,45,'Lucas Mack','2016-09-22 02:28:29','2016-09-22 23:19:18','20:50:49','N','N','N',22,9,4,2016),(46,46,'Abraham Bridges','2016-09-22 14:24:28','2016-09-22 19:11:52','04:47:24','Y','N','Y',22,9,4,2016),(47,47,'Isadora Patton','2016-09-22 05:25:56','2016-09-22 16:59:31','11:33:35','N','Y','N',22,9,4,2016),(48,48,'Leroy Rice','2016-09-22 01:40:06','2016-09-22 16:12:32','14:32:26','N','Y','N',22,9,4,2016),(49,49,'Eugenia Deleon','2016-09-22 05:43:02','2016-09-22 21:33:47','15:50:45','N','N','N',22,9,4,2016),(50,50,'Blythe Curtis','2016-09-22 10:44:55','2016-09-22 22:36:14','11:51:19','Y','N','N',22,9,4,2016),(51,51,'Benedict Clay','2016-09-22 00:03:24','2016-09-22 15:56:19','15:52:55','N','Y','N',22,9,4,2016),(52,52,'Hadassah Browning','2016-09-22 02:31:12','2016-09-22 21:57:42','19:26:30','N','N','N',22,9,4,2016),(53,53,'Aladdin Hughes','2016-09-22 00:25:58','2016-09-22 18:39:16','18:13:18','N','N','N',22,9,4,2016),(54,54,'Jelani Ortiz','2016-09-22 09:32:30','2016-09-22 22:00:18','12:27:48','Y','N','N',22,9,4,2016),(55,55,'Sydney Harrington','2016-09-22 04:59:30','2016-09-22 11:24:34','06:25:04','N','Y','Y',22,9,4,2016),(56,56,'Aladdin West','2016-09-22 01:05:39','2016-09-22 20:45:15','19:39:36','N','N','N',22,9,4,2016),(57,57,'Jermaine Daugherty','2016-09-22 02:41:42','2016-09-22 21:43:12','19:01:30','N','N','N',22,9,4,2016),(58,58,'Ali Roberts','2016-09-22 09:53:43','2016-09-22 19:29:18','09:35:35','Y','N','N',22,9,4,2016),(59,59,'Ignacia Barlow','2016-09-22 02:08:15','2016-09-22 17:32:27','15:24:12','N','N','N',22,9,4,2016),(60,60,'Octavius Chen','2016-09-22 02:44:11','2016-09-22 15:01:06','12:16:55','N','Y','N',22,9,4,2016),(61,61,'Mary Bradley','2016-09-22 02:06:57','2016-09-22 23:50:02','21:43:05','N','N','N',22,9,4,2016),(62,62,'Colleen Sosa','2016-09-22 01:02:00','2016-09-22 21:40:13','20:38:13','N','N','N',22,9,4,2016),(63,63,'Alisa Grant','2016-09-22 00:35:29','2016-09-22 19:56:17','19:20:48','N','N','N',22,9,4,2016),(64,64,'Darius Odom','2016-09-22 01:56:18','2016-09-22 15:08:32','13:12:14','N','Y','N',22,9,4,2016),(65,65,'Duncan Sawyer','2016-09-22 03:16:08','2016-09-22 12:15:51','08:59:43','N','Y','N',22,9,4,2016),(66,66,'Gloria Harmon','2016-09-22 00:19:07','2016-09-22 05:10:37','04:51:30','N','Y','Y',22,9,4,2016),(67,67,'Shaeleigh Blackwell','2016-09-22 00:38:04','2016-09-22 23:40:02','23:01:58','N','N','N',22,9,4,2016),(68,68,'Derek Duncan','2016-09-22 09:11:20','2016-09-22 11:01:51','01:50:31','Y','Y','Y',22,9,4,2016),(69,69,'Joelle Barker','2016-09-22 00:53:04','2016-09-22 22:42:35','21:49:31','N','N','N',22,9,4,2016),(70,70,'Wyoming Conley','2016-09-22 03:48:02','2016-09-22 22:52:23','19:04:21','N','N','N',22,9,4,2016),(71,71,'Liberty Schneider','2016-09-22 06:57:52','2016-09-22 14:12:11','07:14:19','N','Y','N',22,9,4,2016),(72,72,'Noelle Marsh','2016-09-22 02:07:22','2016-09-22 16:00:15','13:52:53','N','Y','N',22,9,4,2016),(73,73,'Anne Best','2016-09-22 00:17:40','2016-09-22 16:24:46','16:07:06','N','Y','N',22,9,4,2016),(74,74,'Lars Pruitt','2016-09-22 00:14:03','2016-09-22 12:48:03','12:34:00','N','Y','N',22,9,4,2016),(75,75,'Rina Oneil','2016-09-22 00:44:01','2016-09-22 03:03:59','02:19:58','N','Y','Y',22,9,4,2016),(76,76,'Erica Terry','2016-09-22 02:44:45','2016-09-22 22:27:16','19:42:31','N','N','N',22,9,4,2016),(77,77,'Claire Carrillo','2016-09-22 02:13:45','2016-09-22 10:16:28','08:02:43','N','Y','N',22,9,4,2016),(78,78,'Elliott Bryan','2016-09-22 06:34:07','2016-09-22 17:07:29','10:33:22','N','Y','N',22,9,4,2016),(79,79,'Aimee Gates','2016-09-22 02:37:14','2016-09-22 16:54:21','14:17:07','N','Y','N',22,9,4,2016),(80,80,'Leslie Holloway','2016-09-22 09:18:27','2016-09-22 23:05:21','13:46:54','Y','N','N',22,9,4,2016),(81,81,'Stephanie Contreras','2016-09-22 13:33:47','2016-09-22 22:32:49','08:59:02','Y','N','N',22,9,4,2016),(82,82,'Vincent Bryant','2016-09-22 00:02:49','2016-09-22 14:01:47','13:58:58','N','Y','N',22,9,4,2016),(83,83,'Velma Simpson','2016-09-22 04:20:18','2016-09-22 22:49:23','18:29:05','N','N','N',22,9,4,2016),(84,84,'Wyatt Sharpe','2016-09-22 01:13:19','2016-09-22 23:29:50','22:16:31','N','N','N',22,9,4,2016),(85,85,'Marvin Davenport','2016-09-22 00:31:39','2016-09-22 21:46:08','21:14:29','N','N','N',22,9,4,2016),(86,86,'Sloane Newton','2016-09-22 07:24:45','2016-09-22 19:45:21','12:20:36','N','N','N',22,9,4,2016),(87,87,'Shaine Snider','2016-09-22 04:32:34','2016-09-22 22:58:11','18:25:37','N','N','N',22,9,4,2016),(88,88,'Victoria Winters','2016-09-22 00:08:46','2016-09-22 21:41:49','21:33:03','N','N','N',22,9,4,2016),(89,89,'Emmanuel White','2016-09-22 02:34:05','2016-09-22 19:30:38','16:56:33','N','N','N',22,9,4,2016),(90,90,'Uriel Sawyer','2016-09-22 00:31:11','2016-09-22 11:35:31','11:04:20','N','Y','N',22,9,4,2016),(91,91,'Kristen Adkins','2016-09-22 01:46:34','2016-09-22 15:49:21','14:02:47','N','Y','N',22,9,4,2016),(92,92,'Harrison Taylor','2016-09-22 04:18:05','2016-09-22 23:13:23','18:55:18','N','N','N',22,9,4,2016),(93,93,'Howard Talley','2016-09-22 07:47:08','2016-09-22 18:05:01','10:17:53','N','N','N',22,9,4,2016),(94,94,'Sawyer Dominguez','2016-09-22 08:26:47','2016-09-22 22:54:08','14:27:21','N','N','N',22,9,4,2016),(95,95,'Genevieve Armstrong','2016-09-22 10:34:10','2016-09-22 21:42:20','11:08:10','Y','N','N',22,9,4,2016),(96,96,'Evan Mcdaniel','2016-09-22 04:48:16','2016-09-22 22:29:20','17:41:04','N','N','N',22,9,4,2016),(97,97,'Barclay Wiggins','2016-09-22 12:51:05','2016-09-22 22:28:24','09:37:19','Y','N','N',22,9,4,2016),(98,98,'Beau Thompson','2016-09-22 02:42:36','2016-09-22 13:04:56','10:22:20','N','Y','N',22,9,4,2016),(99,99,'Amelia Bowers','2016-09-22 07:23:04','2016-09-22 22:18:09','14:55:05','N','N','N',22,9,4,2016),(100,100,'Iliana Pierce','2016-09-22 06:15:00','2016-09-22 19:55:00','13:40:00','N','N','N',22,9,4,2016),(101,101,'MARCIO',NULL,NULL,NULL,NULL,NULL,NULL,22,9,4,2016),(102,103,'LUBIO',NULL,NULL,NULL,NULL,NULL,NULL,22,9,4,2016),(103,0,'samuel',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(104,1,'Wesley Haynes',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(105,3,'Aimee Forbes',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(106,4,'Micah Rollins',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(107,5,'Carly Lamb',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(108,6,'Octavius Daniel',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(109,7,'Petra Day',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(110,8,'Ava Fleming',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(111,9,'Stephanie Bond',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(112,10,'Basia Beasley',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(113,11,'Martena Nieves',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(114,12,'Helen Holland',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(115,13,'Stephanie Lowe',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(116,14,'Hyacinth Myers',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(117,15,'Vladimir Vance',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(118,16,'Teagan Mosley',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(119,17,'Zephr Clarke',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(120,18,'Samantha Chase',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(121,19,'Adena Baird',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(122,20,'Norman Emerson',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(123,21,'Uta Blevins',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(124,22,'Kylynn Nguyen',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(125,23,'Joseph Manning',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(126,24,'Mohammad Marshall',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(127,25,'Alice Tate',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(128,26,'Ivan Powell',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(129,27,'Florence Finch',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(130,28,'Pascale Thornton',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(131,29,'Elvis Vargas',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(132,30,'Tanya Morrison',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(133,31,'Julian Sharpe',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(134,32,'Kelly Rice',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(135,33,'Allegra Mooney',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(136,34,'Carl Stevenson',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(137,35,'Ashely Parsons',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(138,36,'Aretha Weaver',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(139,37,'Jesse Kane',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(140,38,'Mason Newman',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(141,39,'Xander Blair',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(142,40,'Rhiannon Mcclure',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(143,41,'Jessamine Marquez',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(144,42,'Kelsey Cervantes',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(145,43,'Angelica Vinson',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(146,44,'Iona Benton',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(147,45,'Lucas Mack',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(148,46,'Abraham Bridges',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(149,47,'Isadora Patton',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(150,48,'Leroy Rice',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(151,49,'Eugenia Deleon',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(152,50,'Blythe Curtis',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(153,51,'Benedict Clay',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(154,52,'Hadassah Browning',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(155,53,'Aladdin Hughes',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(156,54,'Jelani Ortiz',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(157,55,'Sydney Harrington',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(158,56,'Aladdin West',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(159,57,'Jermaine Daugherty',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(160,58,'Ali Roberts',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(161,59,'Ignacia Barlow',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(162,60,'Octavius Chen',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(163,61,'Mary Bradley',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(164,62,'Colleen Sosa',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(165,63,'Alisa Grant',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(166,64,'Darius Odom',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(167,65,'Duncan Sawyer',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(168,66,'Gloria Harmon',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(169,67,'Shaeleigh Blackwell',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(170,68,'Derek Duncan',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(171,69,'Joelle Barker',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(172,70,'Wyoming Conley',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(173,71,'Liberty Schneider',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(174,72,'Noelle Marsh',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(175,73,'Anne Best',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(176,74,'Lars Pruitt',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(177,75,'Rina Oneil',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(178,76,'Erica Terry',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(179,77,'Claire Carrillo',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(180,78,'Elliott Bryan',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(181,79,'Aimee Gates',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(182,80,'Leslie Holloway',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(183,81,'Stephanie Contreras',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(184,82,'Vincent Bryant',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(185,83,'Velma Simpson',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(186,84,'Wyatt Sharpe',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(187,85,'Marvin Davenport',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(188,86,'Sloane Newton',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(189,87,'Shaine Snider',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(190,88,'Victoria Winters',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(191,89,'Emmanuel White',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(192,90,'Uriel Sawyer',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(193,91,'Kristen Adkins',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(194,92,'Harrison Taylor',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(195,93,'Howard Talley',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(196,94,'Sawyer Dominguez',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(197,95,'Genevieve Armstrong',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(198,96,'Evan Mcdaniel',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(199,97,'Barclay Wiggins',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(200,98,'Beau Thompson',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(201,99,'Amelia Bowers',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(202,100,'Iliana Pierce',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(203,101,'MARCIO',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016),(204,103,'LUBIO',NULL,NULL,NULL,NULL,NULL,NULL,23,9,5,2016);

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (1);

/*Table structure for table `params` */

DROP TABLE IF EXISTS `params`;

CREATE TABLE `params` (
  `id` int(11) NOT NULL COMMENT 'table id',
  `startTime` time DEFAULT NULL COMMENT 'work begin time',
  `offTime` time DEFAULT NULL COMMENT 'work finish time',
  `lateTime` int(3) DEFAULT NULL COMMENT 'minutes',
  `earlyLeaveTime` int(3) DEFAULT NULL COMMENT 'minutes',
  `absenceTime` double DEFAULT NULL COMMENT 'hour',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `params` */

insert  into `params`(`id`,`startTime`,`offTime`,`lateTime`,`earlyLeaveTime`,`absenceTime`) values (1,'08:30:00','17:30:00',20,15,6.5);

/*Table structure for table `signup` */

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `staffId` bigint(20) DEFAULT NULL,
  `signupTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;

/*Data for the table `signup` */

insert  into `signup`(`id`,`staffId`,`signupTime`) values (1,1,'2016-09-22 18:38:24'),(2,1,'2016-09-22 19:38:58'),(3,1,'2016-09-22 04:54:23'),(4,2,'2016-09-22 13:34:59'),(5,2,'2016-09-22 05:11:51'),(6,3,'2016-09-22 09:14:15'),(7,3,'2016-09-22 06:35:44'),(8,4,'2016-09-22 05:15:54'),(9,4,'2016-09-22 06:32:19'),(10,5,'2016-09-22 16:53:54'),(11,5,'2016-09-22 16:52:37'),(12,6,'2016-09-22 09:41:25'),(13,6,'2016-09-22 21:49:11'),(14,7,'2016-09-22 08:01:46'),(15,7,'2016-09-22 22:41:14'),(16,8,'2016-09-22 17:20:55'),(17,8,'2016-09-22 18:40:54'),(18,9,'2016-09-22 17:21:49'),(19,9,'2016-09-22 06:46:21'),(20,10,'2016-09-22 05:46:19'),(21,10,'2016-09-22 08:32:31'),(22,11,'2016-09-22 01:23:42'),(23,11,'2016-09-22 05:20:57'),(24,12,'2016-09-22 22:33:39'),(25,12,'2016-09-22 00:45:28'),(26,13,'2016-09-22 08:06:22'),(27,13,'2016-09-22 14:15:25'),(28,14,'2016-09-22 22:58:03'),(29,14,'2016-09-22 00:04:04'),(30,15,'2016-09-22 03:26:08'),(31,15,'2016-09-22 16:58:27'),(32,16,'2016-09-22 02:33:53'),(33,16,'2016-09-22 09:54:06'),(34,17,'2016-09-22 17:48:51'),(35,17,'2016-09-22 11:21:58'),(36,18,'2016-09-22 03:23:17'),(37,18,'2016-09-22 06:50:30'),(38,19,'2016-09-22 00:02:41'),(39,19,'2016-09-22 03:41:53'),(40,20,'2016-09-22 18:21:25'),(41,20,'2016-09-22 08:41:30'),(42,21,'2016-09-22 12:23:14'),(43,21,'2016-09-22 11:51:42'),(44,22,'2016-09-22 22:08:48'),(45,22,'2016-09-22 03:08:57'),(46,23,'2016-09-22 21:18:19'),(47,23,'2016-09-22 01:04:48'),(48,24,'2016-09-22 13:29:00'),(49,24,'2016-09-22 16:10:38'),(50,25,'2016-09-22 16:26:14'),(51,25,'2016-09-22 09:39:17'),(52,26,'2016-09-22 22:57:44'),(53,26,'2016-09-22 13:50:50'),(54,27,'2016-09-22 00:21:00'),(55,27,'2016-09-22 08:12:29'),(56,28,'2016-09-22 15:59:26'),(57,28,'2016-09-22 07:19:45'),(58,29,'2016-09-22 12:40:26'),(59,29,'2016-09-22 17:22:57'),(60,30,'2016-09-22 00:53:32'),(61,30,'2016-09-22 00:18:44'),(62,31,'2016-09-22 22:53:04'),(63,31,'2016-09-22 17:29:13'),(64,32,'2016-09-22 18:46:55'),(65,32,'2016-09-22 17:26:56'),(66,33,'2016-09-22 06:53:57'),(67,33,'2016-09-22 06:08:56'),(68,34,'2016-09-22 10:02:52'),(69,34,'2016-09-22 07:47:30'),(70,35,'2016-09-22 08:48:57'),(71,35,'2016-09-22 20:42:13'),(72,36,'2016-09-22 05:04:19'),(73,36,'2016-09-22 11:14:55'),(74,37,'2016-09-22 17:01:37'),(75,37,'2016-09-22 03:23:24'),(76,38,'2016-09-22 13:52:06'),(77,38,'2016-09-22 11:10:22'),(78,39,'2016-09-22 14:15:31'),(79,39,'2016-09-22 13:46:32'),(80,40,'2016-09-22 02:06:10'),(81,40,'2016-09-22 17:11:11'),(82,41,'2016-09-22 07:37:29'),(83,41,'2016-09-22 10:33:49'),(84,42,'2016-09-22 05:56:43'),(85,42,'2016-09-22 22:02:06'),(86,43,'2016-09-22 20:20:26'),(87,43,'2016-09-22 11:35:52'),(88,44,'2016-09-22 20:58:03'),(89,44,'2016-09-22 22:02:41'),(90,45,'2016-09-22 23:19:18'),(91,45,'2016-09-22 02:28:29'),(92,46,'2016-09-22 14:24:28'),(93,46,'2016-09-22 16:36:57'),(94,47,'2016-09-22 15:51:21'),(95,47,'2016-09-22 05:25:56'),(96,48,'2016-09-22 03:35:34'),(97,48,'2016-09-22 01:40:06'),(98,49,'2016-09-22 21:33:47'),(99,49,'2016-09-22 06:48:42'),(100,50,'2016-09-22 17:22:07'),(101,50,'2016-09-22 18:24:32'),(102,51,'2016-09-22 15:56:19'),(103,51,'2016-09-22 00:28:02'),(104,52,'2016-09-22 02:31:12'),(105,52,'2016-09-22 11:11:54'),(106,53,'2016-09-22 00:25:58'),(107,53,'2016-09-22 16:34:04'),(108,54,'2016-09-22 09:32:30'),(109,54,'2016-09-22 22:00:18'),(110,55,'2016-09-22 09:24:05'),(111,55,'2016-09-22 04:59:30'),(112,56,'2016-09-22 20:45:15'),(113,56,'2016-09-22 16:47:47'),(114,57,'2016-09-22 21:43:12'),(115,57,'2016-09-22 10:12:40'),(116,58,'2016-09-22 09:53:43'),(117,58,'2016-09-22 18:50:38'),(118,59,'2016-09-22 16:32:01'),(119,59,'2016-09-22 02:08:15'),(120,60,'2016-09-22 09:05:10'),(121,60,'2016-09-22 15:01:06'),(122,61,'2016-09-22 23:50:02'),(123,61,'2016-09-22 02:06:57'),(124,62,'2016-09-22 11:04:33'),(125,62,'2016-09-22 01:02:00'),(126,63,'2016-09-22 19:56:17'),(127,63,'2016-09-22 00:35:29'),(128,64,'2016-09-22 15:08:32'),(129,64,'2016-09-22 01:56:18'),(130,65,'2016-09-22 12:15:51'),(131,65,'2016-09-22 07:30:22'),(132,66,'2016-09-22 00:44:21'),(133,66,'2016-09-22 05:10:37'),(134,67,'2016-09-22 23:40:02'),(135,67,'2016-09-22 06:48:24'),(136,68,'2016-09-22 11:01:51'),(137,68,'2016-09-22 10:44:06'),(138,69,'2016-09-22 20:34:58'),(139,69,'2016-09-22 22:42:35'),(140,70,'2016-09-22 03:48:02'),(141,70,'2016-09-22 22:52:23'),(142,71,'2016-09-22 06:57:52'),(143,71,'2016-09-22 14:12:11'),(144,72,'2016-09-22 02:07:22'),(145,72,'2016-09-22 16:00:15'),(146,73,'2016-09-22 01:39:13'),(147,73,'2016-09-22 08:15:17'),(148,74,'2016-09-22 12:18:46'),(149,74,'2016-09-22 12:48:03'),(150,75,'2016-09-22 03:03:59'),(151,75,'2016-09-22 00:55:47'),(152,76,'2016-09-22 19:26:55'),(153,76,'2016-09-22 22:27:16'),(154,77,'2016-09-22 05:55:40'),(155,77,'2016-09-22 10:16:28'),(156,78,'2016-09-22 09:35:23'),(157,78,'2016-09-22 17:07:29'),(158,79,'2016-09-22 08:51:22'),(159,79,'2016-09-22 16:54:21'),(160,80,'2016-09-22 09:57:41'),(161,80,'2016-09-22 23:05:21'),(162,81,'2016-09-22 13:33:47'),(163,81,'2016-09-22 22:32:49'),(164,82,'2016-09-22 00:02:49'),(165,82,'2016-09-22 04:35:34'),(166,83,'2016-09-22 22:49:23'),(167,83,'2016-09-22 04:20:18'),(168,84,'2016-09-22 01:13:19'),(169,84,'2016-09-22 17:05:43'),(170,85,'2016-09-22 09:48:39'),(171,85,'2016-09-22 21:46:08'),(172,86,'2016-09-22 07:24:45'),(173,86,'2016-09-22 19:45:21'),(174,87,'2016-09-22 04:32:34'),(175,87,'2016-09-22 11:26:44'),(176,88,'2016-09-22 19:35:58'),(177,88,'2016-09-22 15:39:42'),(178,89,'2016-09-22 19:30:38'),(179,89,'2016-09-22 02:34:05'),(180,90,'2016-09-22 02:18:29'),(181,90,'2016-09-22 03:50:10'),(182,91,'2016-09-22 12:15:24'),(183,91,'2016-09-22 01:46:34'),(184,92,'2016-09-22 20:06:36'),(185,92,'2016-09-22 23:13:23'),(186,93,'2016-09-22 07:47:08'),(187,93,'2016-09-22 17:15:30'),(188,94,'2016-09-22 14:56:07'),(189,94,'2016-09-22 22:54:08'),(190,95,'2016-09-22 21:42:20'),(191,95,'2016-09-22 15:49:17'),(192,96,'2016-09-22 13:59:26'),(193,96,'2016-09-22 22:29:20'),(194,97,'2016-09-22 22:28:24'),(195,97,'2016-09-22 20:54:01'),(196,98,'2016-09-22 13:04:56'),(197,98,'2016-09-22 02:42:36'),(198,99,'2016-09-22 22:18:09'),(199,99,'2016-09-22 07:23:04'),(200,100,'2016-09-22 18:00:50'),(201,100,'2016-09-22 19:55:00'),(202,1,'2016-09-22 21:32:30'),(203,1,'2016-09-22 23:57:35'),(204,2,'2016-09-22 07:10:24'),(205,2,'2016-09-22 11:59:17'),(206,3,'2016-09-22 14:25:12'),(207,3,'2016-09-22 12:08:13'),(208,4,'2016-09-22 17:25:27'),(209,4,'2016-09-22 02:42:38'),(210,5,'2016-09-22 09:16:48'),(211,5,'2016-09-22 14:16:10'),(212,6,'2016-09-22 19:30:25'),(213,6,'2016-09-22 06:43:38'),(214,7,'2016-09-22 23:06:54'),(215,7,'2016-09-22 23:23:41'),(216,8,'2016-09-22 23:37:41'),(217,8,'2016-09-22 23:57:27'),(218,9,'2016-09-22 00:54:12'),(219,9,'2016-09-22 04:38:37'),(220,10,'2016-09-22 20:30:31'),(221,10,'2016-09-22 16:36:48'),(222,11,'2016-09-22 21:32:26'),(223,11,'2016-09-22 09:51:48'),(224,12,'2016-09-22 08:41:42'),(225,12,'2016-09-22 13:53:05'),(226,13,'2016-09-22 19:20:22'),(227,13,'2016-09-22 07:02:36'),(228,14,'2016-09-22 01:11:56'),(229,14,'2016-09-22 08:51:49'),(230,15,'2016-09-22 16:43:18'),(231,15,'2016-09-22 09:01:06'),(232,16,'2016-09-22 18:55:36'),(233,16,'2016-09-22 19:34:46'),(234,17,'2016-09-22 17:07:02'),(235,17,'2016-09-22 02:50:54'),(236,18,'2016-09-22 10:53:23'),(237,18,'2016-09-22 21:54:16'),(238,19,'2016-09-22 04:51:13'),(239,19,'2016-09-22 06:33:14'),(240,20,'2016-09-22 18:12:34'),(241,20,'2016-09-22 23:23:10'),(242,21,'2016-09-22 14:18:11'),(243,21,'2016-09-22 01:21:23'),(244,22,'2016-09-22 11:52:23'),(245,22,'2016-09-22 07:17:49'),(246,23,'2016-09-22 00:51:55'),(247,23,'2016-09-22 06:26:09'),(248,24,'2016-09-22 05:35:03'),(249,24,'2016-09-22 08:36:46'),(250,25,'2016-09-22 02:18:44'),(251,25,'2016-09-22 09:43:22'),(252,26,'2016-09-22 17:40:38'),(253,26,'2016-09-22 11:13:08'),(254,27,'2016-09-22 03:03:47'),(255,27,'2016-09-22 05:39:28'),(256,28,'2016-09-22 19:06:02'),(257,28,'2016-09-22 06:31:48'),(258,29,'2016-09-22 23:20:53'),(259,29,'2016-09-22 01:09:07'),(260,30,'2016-09-22 07:42:50'),(261,30,'2016-09-22 11:06:54'),(262,31,'2016-09-22 08:26:00'),(263,31,'2016-09-22 08:49:19'),(264,32,'2016-09-22 18:48:34'),(265,32,'2016-09-22 19:34:54'),(266,33,'2016-09-22 17:28:53'),(267,33,'2016-09-22 04:39:43'),(268,34,'2016-09-22 18:51:55'),(269,34,'2016-09-22 08:20:27'),(270,35,'2016-09-22 09:06:32'),(271,35,'2016-09-22 20:31:17'),(272,36,'2016-09-22 03:16:54'),(273,36,'2016-09-22 02:50:39'),(274,37,'2016-09-22 04:22:31'),(275,37,'2016-09-22 13:20:40'),(276,38,'2016-09-22 05:35:51'),(277,38,'2016-09-22 11:57:11'),(278,39,'2016-09-22 18:58:27'),(279,39,'2016-09-22 11:00:42'),(280,40,'2016-09-22 22:08:08'),(281,40,'2016-09-22 05:38:39'),(282,41,'2016-09-22 09:48:47'),(283,41,'2016-09-22 08:08:01'),(284,42,'2016-09-22 11:13:45'),(285,42,'2016-09-22 07:44:45'),(286,43,'2016-09-22 05:02:30'),(287,43,'2016-09-22 01:58:16'),(288,44,'2016-09-22 18:43:49'),(289,44,'2016-09-22 15:44:21'),(290,45,'2016-09-22 22:30:18'),(291,45,'2016-09-22 17:18:28'),(292,46,'2016-09-22 19:01:27'),(293,46,'2016-09-22 19:11:52'),(294,47,'2016-09-22 14:55:01'),(295,47,'2016-09-22 16:59:31'),(296,48,'2016-09-22 16:12:32'),(297,48,'2016-09-22 06:04:08'),(298,49,'2016-09-22 05:43:02'),(299,49,'2016-09-22 10:22:48'),(300,50,'2016-09-22 10:44:55'),(301,50,'2016-09-22 22:36:14'),(302,51,'2016-09-22 08:46:25'),(303,51,'2016-09-22 00:03:24'),(304,52,'2016-09-22 21:57:42'),(305,52,'2016-09-22 13:38:24'),(306,53,'2016-09-22 02:18:54'),(307,53,'2016-09-22 18:39:16'),(308,54,'2016-09-22 14:19:42'),(309,54,'2016-09-22 15:40:44'),(310,55,'2016-09-22 11:24:34'),(311,55,'2016-09-22 10:00:38'),(312,56,'2016-09-22 15:49:30'),(313,56,'2016-09-22 01:05:39'),(314,57,'2016-09-22 05:59:44'),(315,57,'2016-09-22 02:41:42'),(316,58,'2016-09-22 19:29:18'),(317,58,'2016-09-22 17:21:27'),(318,59,'2016-09-22 04:19:22'),(319,59,'2016-09-22 17:32:27'),(320,60,'2016-09-22 02:44:11'),(321,60,'2016-09-22 09:03:36'),(322,61,'2016-09-22 13:05:27'),(323,61,'2016-09-22 14:16:27'),(324,62,'2016-09-22 08:05:55'),(325,62,'2016-09-22 21:40:13'),(326,63,'2016-09-22 12:03:25'),(327,63,'2016-09-22 19:16:26'),(328,64,'2016-09-22 12:11:56'),(329,64,'2016-09-22 03:10:23'),(330,65,'2016-09-22 03:16:08'),(331,65,'2016-09-22 06:49:30'),(332,66,'2016-09-22 00:19:07'),(333,66,'2016-09-22 05:07:05'),(334,67,'2016-09-22 00:38:04'),(335,67,'2016-09-22 11:49:06'),(336,68,'2016-09-22 09:11:20'),(337,68,'2016-09-22 10:29:25'),(338,69,'2016-09-22 00:53:04'),(339,69,'2016-09-22 20:57:04'),(340,70,'2016-09-22 06:06:13'),(341,70,'2016-09-22 15:39:52'),(342,71,'2016-09-22 12:00:42'),(343,71,'2016-09-22 13:03:54'),(344,72,'2016-09-22 05:17:25'),(345,72,'2016-09-22 11:15:24'),(346,73,'2016-09-22 16:24:46'),(347,73,'2016-09-22 00:17:40'),(348,74,'2016-09-22 00:14:03'),(349,74,'2016-09-22 00:17:14'),(350,75,'2016-09-22 00:44:01'),(351,75,'2016-09-22 02:48:24'),(352,76,'2016-09-22 11:49:59'),(353,76,'2016-09-22 02:44:45'),(354,77,'2016-09-22 02:13:45'),(355,77,'2016-09-22 02:54:34'),(356,78,'2016-09-22 07:51:33'),(357,78,'2016-09-22 06:34:07'),(358,79,'2016-09-22 09:15:55'),(359,79,'2016-09-22 02:37:14'),(360,80,'2016-09-22 09:18:27'),(361,80,'2016-09-22 14:40:35'),(362,81,'2016-09-22 21:27:34'),(363,81,'2016-09-22 15:16:09'),(364,82,'2016-09-22 11:58:03'),(365,82,'2016-09-22 14:01:47'),(366,83,'2016-09-22 10:14:49'),(367,83,'2016-09-22 09:08:44'),(368,84,'2016-09-22 14:59:12'),(369,84,'2016-09-22 23:29:50'),(370,85,'2016-09-22 00:31:39'),(371,85,'2016-09-22 04:08:42'),(372,86,'2016-09-22 19:08:34'),(373,86,'2016-09-22 11:16:47'),(374,87,'2016-09-22 22:58:11'),(375,87,'2016-09-22 09:00:40'),(376,88,'2016-09-22 00:08:46'),(377,88,'2016-09-22 21:41:49'),(378,89,'2016-09-22 12:02:51'),(379,89,'2016-09-22 19:08:48'),(380,90,'2016-09-22 11:35:31'),(381,90,'2016-09-22 00:31:11'),(382,91,'2016-09-22 15:49:21'),(383,91,'2016-09-22 05:33:13'),(384,92,'2016-09-22 04:18:05'),(385,92,'2016-09-22 04:50:44'),(386,93,'2016-09-22 11:19:26'),(387,93,'2016-09-22 18:05:01'),(388,94,'2016-09-22 08:26:47'),(389,94,'2016-09-22 11:58:54'),(390,95,'2016-09-22 10:34:10'),(391,95,'2016-09-22 16:54:09'),(392,96,'2016-09-22 04:48:16'),(393,96,'2016-09-22 21:18:51'),(394,97,'2016-09-22 20:09:31'),(395,97,'2016-09-22 12:51:05'),(396,98,'2016-09-22 03:46:53'),(397,98,'2016-09-22 04:21:06'),(398,99,'2016-09-22 10:24:55'),(399,99,'2016-09-22 15:01:18'),(400,100,'2016-09-22 19:51:46'),(401,100,'2016-09-22 06:15:00'),(402,0,'2016-09-22 16:41:09'),(403,4,'2016-09-22 16:41:57'),(404,0,'2016-09-22 18:46:12');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `staffId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`id`,`name`,`staffId`) values (1,'Wesley Haynes',1),(2,'samuel',0),(3,'Aimee Forbes',3),(4,'Micah Rollins',4),(5,'Carly Lamb',5),(6,'Octavius Daniel',6),(7,'Petra Day',7),(8,'Ava Fleming',8),(9,'Stephanie Bond',9),(10,'Basia Beasley',10),(11,'Martena Nieves',11),(12,'Helen Holland',12),(13,'Stephanie Lowe',13),(14,'Hyacinth Myers',14),(15,'Vladimir Vance',15),(16,'Teagan Mosley',16),(17,'Zephr Clarke',17),(18,'Samantha Chase',18),(19,'Adena Baird',19),(20,'Norman Emerson',20),(21,'Uta Blevins',21),(22,'Kylynn Nguyen',22),(23,'Joseph Manning',23),(24,'Mohammad Marshall',24),(25,'Alice Tate',25),(26,'Ivan Powell',26),(27,'Florence Finch',27),(28,'Pascale Thornton',28),(29,'Elvis Vargas',29),(30,'Tanya Morrison',30),(31,'Julian Sharpe',31),(32,'Kelly Rice',32),(33,'Allegra Mooney',33),(34,'Carl Stevenson',34),(35,'Ashely Parsons',35),(36,'Aretha Weaver',36),(37,'Jesse Kane',37),(38,'Mason Newman',38),(39,'Xander Blair',39),(40,'Rhiannon Mcclure',40),(41,'Jessamine Marquez',41),(42,'Kelsey Cervantes',42),(43,'Angelica Vinson',43),(44,'Iona Benton',44),(45,'Lucas Mack',45),(46,'Abraham Bridges',46),(47,'Isadora Patton',47),(48,'Leroy Rice',48),(49,'Eugenia Deleon',49),(50,'Blythe Curtis',50),(51,'Benedict Clay',51),(52,'Hadassah Browning',52),(53,'Aladdin Hughes',53),(54,'Jelani Ortiz',54),(55,'Sydney Harrington',55),(56,'Aladdin West',56),(57,'Jermaine Daugherty',57),(58,'Ali Roberts',58),(59,'Ignacia Barlow',59),(60,'Octavius Chen',60),(61,'Mary Bradley',61),(62,'Colleen Sosa',62),(63,'Alisa Grant',63),(64,'Darius Odom',64),(65,'Duncan Sawyer',65),(66,'Gloria Harmon',66),(67,'Shaeleigh Blackwell',67),(68,'Derek Duncan',68),(69,'Joelle Barker',69),(70,'Wyoming Conley',70),(71,'Liberty Schneider',71),(72,'Noelle Marsh',72),(73,'Anne Best',73),(74,'Lars Pruitt',74),(75,'Rina Oneil',75),(76,'Erica Terry',76),(77,'Claire Carrillo',77),(78,'Elliott Bryan',78),(79,'Aimee Gates',79),(80,'Leslie Holloway',80),(81,'Stephanie Contreras',81),(82,'Vincent Bryant',82),(83,'Velma Simpson',83),(84,'Wyatt Sharpe',84),(85,'Marvin Davenport',85),(86,'Sloane Newton',86),(87,'Shaine Snider',87),(88,'Victoria Winters',88),(89,'Emmanuel White',89),(90,'Uriel Sawyer',90),(91,'Kristen Adkins',91),(92,'Harrison Taylor',92),(93,'Howard Talley',93),(94,'Sawyer Dominguez',94),(95,'Genevieve Armstrong',95),(96,'Evan Mcdaniel',96),(97,'Barclay Wiggins',97),(98,'Beau Thompson',98),(99,'Amelia Bowers',99),(100,'Iliana Pierce',100),(108,'MARCIO',101),(109,'LUBIO',103);

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `createAttendanceList` */

/*!50106 DROP EVENT IF EXISTS `createAttendanceList`*/;

DELIMITER $$

/*!50106 CREATE EVENT `createAttendanceList` ON SCHEDULE EVERY 24 HOUR STARTS '2016-09-23 00:00:00' ENDS '2030-02-28 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO CALL createForAll() */$$
DELIMITER ;

/* Event structure for event `updateAttendance` */

/*!50106 DROP EVENT IF EXISTS `updateAttendance`*/;

DELIMITER $$

/*!50106 CREATE EVENT `updateAttendance` ON SCHEDULE EVERY 24 HOUR STARTS '2016-09-22 11:53:19' ENDS '2030-02-28 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO CALL addforAll() */$$
DELIMITER ;

/* Procedure structure for procedure `addforAll` */

/*!50003 DROP PROCEDURE IF EXISTS  `addforAll` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addforAll`()
begin
 DECLARE flag INT DEFAULT 0;
 declare id int default 0;	
 DECLARE fetcher CURSOR FOR
           SELECT  staffId FROM `signup` whERE DATE(signupTime)= CURDATE() GROUP BY staffId;
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag = 1; 
           
           OPEN fetcher;
           
           read_fetcher : LOOP
		   
		   FETCH fetcher INTO id;
		   
		     IF flag=1 THEN
			LEAVE read_fetcher;
		     END IF;
		     call addForEachId(id);
             
           END LOOP;           
           CLOSE fetcher;                   
END */$$
DELIMITER ;

/* Procedure structure for procedure `addForEachId` */

/*!50003 DROP PROCEDURE IF EXISTS  `addForEachId` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addForEachId`(IN id INTEGER)
BEGIN
	SET @id = id;
	
	SET @namme = (SELECT NAME FROM `staff` WHERE staffId=@id);
	SET @firstTime =(SELECT signupTime FROM `signup` WHERE staffId=@id HAVING DATE(signupTime) = CURDATE()  ORDER BY signupTime ASC LIMIT 1 );
	SET @lastTime =(SELECT signupTime FROM `signup` WHERE staffId=@id HAVING DATE(signupTime) = CURDATE()  ORDER BY signupTime DESC LIMIT 1);
	SET  @workTime = TIMEDIFF(@lastTime,@firstTime);
	SET  @workTimeHour = TIME_TO_SEC(TIMEDIFF(@lastTime,@firstTime))/3600;/*change diff to hour*/
	
	SET @dayOfWeekk = DAYOFWEEK(CURDATE())-1;
	SET @dayy = DAY(CURDATE());
	SET @monthh = MONTH(CURDATE());
	SET @yearr = YEAR(CURDATE());
	
	SET @morningCriteria = (SELECT startTime FROM `params`);
	SET @afterCriteria = (SELECT offTime FROM `params`);
	SET @lateCriteria = (SELECT lateTime FROM `params`);
	SET @earlyCriteria =(SELECT  earlyLeaveTime FROM `params`);
	SET @absenceCriteria = (SELECT absenceTime FROM `params`);
	
	SET  @late = IF(  TIME_TO_SEC(TIMEDIFF(TIME(@firstTime),TIME(@morningCriteria)))/60 <@lateCriteria && 0<@dayOfWeekk && @dayOfWeekk<6 ,'N','Y');
	SET  @earlyLeave = IF(TIME_TO_SEC(TIMEDIFF(TIME(@afterCriteria),TIME(@lastTime)))/60>@earlyCriteria  && 0<@dayOfWeekk && @dayOfWeekk<6,'Y','N');
	
	SET  @absence = IF(@workTimeHour<@absenceCriteria && 0<@dayOfWeekk && @dayOfWeekk<6,'Y','N');	
			
	UPDATE `attendance` SET firstTime=@firstTime, lastTime=@lastTime,workTime=@workTime,late=@late,earlyLeave=@earlyLeave,absence=@absence
        WHERE NAME=@namme AND staffId=@id AND DAY=@dayy AND MONTH=@monthh AND YEAR=@yearr;
END */$$
DELIMITER ;

/* Procedure structure for procedure `addSignupTestData` */

/*!50003 DROP PROCEDURE IF EXISTS  `addSignupTestData` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addSignupTestData`()
BEGIN
 DECLARE flag INT DEFAULT 0;
 DECLARE id INT DEFAULT 0;	
 DECLARE fetcher CURSOR FOR
           SELECT staffId FROM `staff` GROUP BY staffId;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag = 1;          
           OPEN fetcher;
           
           read_fetcher : LOOP
		   
		   FETCH fetcher INTO id;
		   
		     IF flag=1 THEN
			LEAVE read_fetcher;
		     END IF;
		     
		     SET @MIN = '2016-09-22 00:00:00';
		     SET @MAX = '2016-09-22 23:59:59';
		     
                     SET @signupTime = TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, @MIN, @MAX)), @MIN);
                     INSERT INTO `signup` VALUES(0,id,@signupTime);
                     
                     SET @signupTime = TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, @MIN, @MAX)), @MIN);
                     INSERT INTO `signup` VALUES(0,id,@signupTime);        
             
           END LOOP;           
           CLOSE fetcher;                   
END */$$
DELIMITER ;

/* Procedure structure for procedure `createForAll` */

/*!50003 DROP PROCEDURE IF EXISTS  `createForAll` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `createForAll`()
BEGIN
 DECLARE flag INT DEFAULT 0;
 DECLARE id INT DEFAULT 0;	
 DECLARE fetcher CURSOR FOR
           SELECT  staffId FROM `staff`  GROUP BY staffId;
           
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag = 1; 
           
           OPEN fetcher;
           
           read_fetcher : LOOP
		   
		   FETCH fetcher INTO id;
		   
		     IF flag=1 THEN
			LEAVE read_fetcher;
		     END IF;
		     		     
		     SET @staffName =(SELECT NAME FROM `staff` WHERE staffId = id);
		     	
		     SET @dayOfWeekk = DAYOFWEEK(CURDATE())-1;
		     SET @dayy = DAY(CURDATE());
	             SET @monthh = MONTH(CURDATE());
	             SET @yearr = YEAR(CURDATE());
		     
		     INSERT INTO `attendance` VALUES(0,id,@staffName,NULL,NULL,NULL,NULL,NULL,NULL,@dayy,@monthh,@dayOfWeekk,@yearr);
             
           END LOOP;           
           CLOSE fetcher;                   
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
