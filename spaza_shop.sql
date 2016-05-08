-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: spaza_shop
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Current Database: `spaza_shop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `spaza_shop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `spaza_shop`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'junk_food'),(2,'dairy'),(3,'not_edible'),(4,'veg_and_carbs'),(5,'fruit');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
INSERT INTO `days` VALUES (1,'Sunday'),(2,'Monday'),(3,'Tuesday'),(4,'Wednesday'),(5,'Thursday'),(6,'Friday'),(7,'Saturday');
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_bookmark`
--

DROP TABLE IF EXISTS `pma_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_bookmark`
--

LOCK TABLES `pma_bookmark` WRITE;
/*!40000 ALTER TABLE `pma_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_column_info`
--

DROP TABLE IF EXISTS `pma_column_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_column_info`
--

LOCK TABLES `pma_column_info` WRITE;
/*!40000 ALTER TABLE `pma_column_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_column_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_designer_coords`
--

DROP TABLE IF EXISTS `pma_designer_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_designer_coords`
--

LOCK TABLES `pma_designer_coords` WRITE;
/*!40000 ALTER TABLE `pma_designer_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_designer_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_history`
--

DROP TABLE IF EXISTS `pma_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_history`
--

LOCK TABLES `pma_history` WRITE;
/*!40000 ALTER TABLE `pma_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_pdf_pages`
--

DROP TABLE IF EXISTS `pma_pdf_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_pdf_pages`
--

LOCK TABLES `pma_pdf_pages` WRITE;
/*!40000 ALTER TABLE `pma_pdf_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_pdf_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_recent`
--

DROP TABLE IF EXISTS `pma_recent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_recent`
--

LOCK TABLES `pma_recent` WRITE;
/*!40000 ALTER TABLE `pma_recent` DISABLE KEYS */;
INSERT INTO `pma_recent` VALUES ('root','[{\"db\":\"spaza_shop\",\"table\":\"sales_history\"},{\"db\":\"spaza_shop\",\"table\":\"suppliers\"},{\"db\":\"spaza_shop\",\"table\":\"purchase_history\"},{\"db\":\"spaza_shop\",\"table\":\"product_sold\"},{\"db\":\"spaza_shop\",\"table\":\"days\"},{\"db\":\"spaza_shop\",\"table\":\"categories\"}]');
/*!40000 ALTER TABLE `pma_recent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_relation`
--

DROP TABLE IF EXISTS `pma_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_relation`
--

LOCK TABLES `pma_relation` WRITE;
/*!40000 ALTER TABLE `pma_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_coords`
--

DROP TABLE IF EXISTS `pma_table_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_coords`
--

LOCK TABLES `pma_table_coords` WRITE;
/*!40000 ALTER TABLE `pma_table_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_info`
--

DROP TABLE IF EXISTS `pma_table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_info`
--

LOCK TABLES `pma_table_info` WRITE;
/*!40000 ALTER TABLE `pma_table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_uiprefs`
--

DROP TABLE IF EXISTS `pma_table_uiprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_uiprefs`
--

LOCK TABLES `pma_table_uiprefs` WRITE;
/*!40000 ALTER TABLE `pma_table_uiprefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_uiprefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_tracking`
--

DROP TABLE IF EXISTS `pma_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_tracking`
--

LOCK TABLES `pma_tracking` WRITE;
/*!40000 ALTER TABLE `pma_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_userconfig`
--

DROP TABLE IF EXISTS `pma_userconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_userconfig`
--

LOCK TABLES `pma_userconfig` WRITE;
/*!40000 ALTER TABLE `pma_userconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_userconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sold`
--

DROP TABLE IF EXISTS `product_sold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_sold` (
  `product_name` varchar(30) DEFAULT NULL,
  `no_sold` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sold`
--

LOCK TABLES `product_sold` WRITE;
/*!40000 ALTER TABLE `product_sold` DISABLE KEYS */;
INSERT INTO `product_sold` VALUES ('Apples - looses',63704,1),('Bananas - loose',114,2),('Bread',130,3),('Chakalaka Can',94,4),('Coke 500ml',159,5),('Cream Soda 500ml',75,6),('Fanta 500ml',94,7),('Gold Dish Vegetable Curry Can',86,8),('Heart Chocolates',20,9),('Imasi',125,10),('Iwisa Pap 5kg',59,11),('Milk 1l',142,12),('Mixed Sweets 5s',272,13),('Rose (plastic)',14,14),('Shampoo 1 litre',26,15),('Soap Bar',50,16),('Top Class Soy Mince',98,17),('Valentine Cards',14,20),('Building',2,21);
/*!40000 ALTER TABLE `product_sold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_history`
--

DROP TABLE IF EXISTS `purchase_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(15) DEFAULT NULL,
  `shop` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `cost` varchar(10) DEFAULT NULL,
  `total_cost` varchar(17) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `purchase_history_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_history`
--

LOCK TABLES `purchase_history` WRITE;
/*!40000 ALTER TABLE `purchase_history` DISABLE KEYS */;
INSERT INTO `purchase_history` VALUES (1,'23-Jan','Makro','Chakalaka Can',3,'R7.00','R21.00',1),(2,'23-Jan','Makro','Coke 500ml',3,'R3.50','R10.50\r',1),(3,'23-Jan','Makro','Cream Soda 500ml',4,'R4.50','R18.00\r',1),(4,'23-Jan','Makro','Fanta 500ml',2,'R4.50','R9.00\r',1),(5,'23-Jan','Makro','Gold Dish Vegetable Curry Can',2,'R5.00','R10.00\r',1),(6,'23-Jan','Makro','Imasi',1,'R17.00','R17.00\r',1),(7,'23-Jan','Makro','Iwisa Pap 5kg',3,'R20.00','R60.00\r',1),(8,'23-Jan','Makro','Milk 1l',4,'R7.00','R28.00\r',1),(9,'23-Jan','Makro','Top Class Soy Mince',5,'R8.00','R40.00\r',1),(10,'28-Jan','Epping Market','Bananas - loose',4,'R1.00','R4.00\r',2),(11,'28-Jan','Epping Market','Apples - loose',10,'R1.50','R15.00\r',2),(12,'28-Jan','Epping Market','Mixed Sweets 5s',60,'R3.00','R180.00\r',2),(13,'28-Jan','HomeMade','Shampoo 1 litre',1,'R20.00','R20.00\r',3),(14,'28-Jan','HomeMade','Soap Bar',3,'R3.00','R9.00\r',3),(15,'28-Jan','Makro','Bread',30,'R9.00','R270.00\r',1),(16,'28-Jan','Makro','Chakalaka Can',15,'R7.00','R105.00\r',1),(17,'28-Jan','Makro','Coke 500ml',36,'R3.50','R126.00\r',1),(18,'28-Jan','Makro','Cream Soda 500ml',24,'R4.50','R108.00\r',1),(19,'28-Jan','Makro','Fanta 500ml',24,'R4.50','R108.00\r',1),(20,'28-Jan','Makro','Gold Dish Vegetable Curry Can',15,'R5.00','R75.00\r',1),(21,'28-Jan','Makro','Imasi',15,'R17.00','R255.00\r',1),(22,'28-Jan','Makro','Iwisa Pap 5kg',15,'R20.00','R300.00\r',1),(23,'28-Jan','Makro','Milk 1l',25,'R7.00','R175.00\r',1),(24,'28-Jan','Makro','Top Class Soy Mince',10,'R8.00','R80.00\r',1),(25,'02-Feb','HomeMade','Shampoo 1 litre',1,'R20.00','R20.00\r',3),(26,'02-Feb','HomeMade','Soap Bar',3,'R3.00','R9.00\r',3),(27,'03-Feb','Epping Market','Bananas - loose',12,'R1.00','R12.00\r',2),(28,'03-Feb','Epping Market','Apples - loose',100,'R1.50','R150.00\r',2),(29,'03-Feb','Epping Market','Mixed Sweets 5s',240,'R3.00','R720.00\r',2),(30,'04-Feb','HomeMade','Shampoo 1 litre',2,'R20.00','R40.00\r',3),(31,'04-Feb','HomeMade','Soap Bar',5,'R3.00','R15.00\r',3),(32,'04-Feb','Joe Spaza Shop','Bread',4,'R11.00','R44.00\r',4),(33,'04-Feb','Joe Spaza Shop','Imasi',4,'R24.00','R96.00\r',4),(34,'06-Feb','Epping Market','Bananas - loose',8,'R1.00','R8.00\r',2),(35,'06-Feb','Epping Market','Apples - loose',100,'R1.50','R150.00\r',2),(36,'06-Feb','Epping Market','Mixed Sweets 5s',150,'R3.00','R450.00\r',2),(37,'06-Feb','HomeMade','Soap Bar',5,'R3.00','R15.00\r',3),(38,'6-Feb','Makro','Bread',30,'R9.00','R270.00\r',1),(39,'6-Feb','Makro','Chakalaka Can',15,'R7.00','R105.00\r',1),(40,'6-Feb','Makro','Coke 500ml',36,'R3.50','R126.00\r',1),(41,'6-Feb','Makro','Cream Soda 500ml',18,'R4.50','R81.00\r',1),(42,'6-Feb','Makro','Fanta 500ml',24,'R4.50','R108.00\r',1),(43,'6-Feb','Makro','Gold Dish Vegetable Curry Can',15,'R5.00','R75.00\r',1),(44,'6-Feb','Makro','Imasi',25,'R17.00','R425.00\r',1),(45,'6-Feb','Makro','Iwisa Pap 5kg',5,'R20.00','R100.00\r',1),(46,'6-Feb','Makro','Milk 1l',10,'R7.00','R70.00\r',1),(47,'6-Feb','Makro','Top Class Soy Mince',10,'R8.00','R80.00\r',1),(48,'09-Feb','ChinaTown','Rose (plastic)',20,'R10.00','R200.00\r',5),(49,'09-Feb','Joe Spaza Shop','Milk 1l',3,'R9.50','R28.50\r',4),(50,'10-Feb','Epping Market','Bananas - loose',4,'R1.00','R4.00\r',2),(51,'10-Feb','Epping Market','Apples - loose',20,'R1.50','R30.00\r',2),(52,'10-Feb','Epping Market','Mixed Sweets 5s',150,'R3.00','R450.00\r',2),(53,'10-Feb','Makro','Bread',10,'R9.00','R90.00\r',1),(54,'10-Feb','Makro','Chakalaka Can',15,'R7.00','R105.00\r',1),(55,'10-Feb','Makro','Coke 500ml',18,'R3.50','R63.00\r',1),(56,'10-Feb','Makro','Gold Dish Vegetable Curry Can',5,'R5.00','R25.00\r',1),(57,'10-Feb','Makro','Heart Chocolates',20,'R25.00','R500.00\r',1),(58,'10-Feb','Makro','Imasi',10,'R17.00','R170.00\r',1),(59,'10-Feb','Makro','Iwisa Pap 5kg',5,'R20.00','R100.00\r',1),(60,'10-Feb','Makro','Milk 1l',10,'R7.00','R70.00\r',1),(61,'10-Feb','Makro','Top Class Soy Mince',15,'R8.00','R120.00\r',1),(62,'11-Feb','HomeMade','Shampoo 1 litre',2,'R20.00','R40.00\r',3),(63,'11-Feb','HomeMade','Valentine Cards',20,'R2.00','R40.00\r',3),(64,'12-Feb','Joe Spaza Shop','Milk 1l',3,'R9.50','R28.50\r',4),(65,'13-Feb','Epping Market','Bananas - loose',4,'R1.00','R4.00\r',2),(66,'13-Feb','Epping Market','Mixed Sweets 5s',50,'R3.00','R150.00\r',2),(67,'13-Feb','HomeMade','Shampoo 1 litre',3,'R20.00','R60.00\r',3),(68,'13-Feb','HomeMade','Soap Bar',5,'R3.00','R15.00\r',3),(69,'13-Feb','Joe Spaza Shop','Gold Dish Vegetable Curry Can',5,'R8.50','R42.50\r',4),(70,'13-Feb','Makro','Bread',5,'R9.00','R45.00\r',1),(71,'13-Feb','Makro','Coke 500ml',12,'R3.50','R42.00\r',1),(72,'13-Feb','Makro','Fanta 500ml',12,'R4.50','R54.00\r',1),(73,'13-Feb','Makro','Imasi',20,'R17.00','R340.00\r',1),(74,'13-Feb','Makro','Milk 1l',15,'R7.00','R105.00\r',1),(75,'13-Feb','Makro','Top Class Soy Mince',5,'R8.00','R40.00\r',1),(76,'14-Feb','HomeMade','Shampoo 1 litre',1,'R20.00','R20.00\r',3),(77,'14-Feb','Joe Spaza Shop','Gold Dish Vegetable Curry Can',2,'R8.50','R17.00\r',4),(78,'16-Feb','Joe Spaza Shop','Chakalaka Can',2,'R8.50','R17.00\r',4),(79,'16-Feb','Joe Spaza Shop','Cream Soda 500ml',2,'R7.50','R15.00\r',4),(80,'16-Feb','Joe Spaza Shop','Fanta 500ml',1,'R6.50','R6.50\r',4),(81,'16-Feb','Joe Spaza Shop','Gold Dish Vegetable Curry Can',2,'R8.50','R17.00\r',4),(82,'16-Feb','Joe Spaza Shop','Iwisa Pap 5kg',1,'R30.00','R30.00\r',4),(83,'16-Feb','Joe Spaza Shop','Milk 1l',6,'R9.50','R57.00\r',4),(84,'17-Feb','Epping Market','Apples - loose',60,'R1.50','R90.00\r',2),(85,'17-Feb','Epping Market','Mixed Sweets 5s',12,'R3.00','R36.00\r',2),(86,'17-Feb','Makro','Bread',15,'R9.00','R135.00\r',1),(87,'17-Feb','Makro','Chakalaka Can',10,'R7.00','R70.00\r',1),(88,'17-Feb','Makro','Coke 500ml',24,'R3.50','R84.00\r',1),(89,'17-Feb','Makro','Cream Soda 500ml',12,'R4.50','R54.00\r',1),(90,'17-Feb','Makro','Fanta 500ml',12,'R4.50','R54.00\r',1),(91,'17-Feb','Makro','Gold Dish Vegetable Curry Can',10,'R5.00','R50.00\r',1),(92,'17-Feb','Makro','Imasi',15,'R17.00','R255.00\r',1),(93,'17-Feb','Makro','Iwisa Pap 5kg',5,'R20.00','R100.00\r',1),(94,'17-Feb','Makro','Milk 1l',15,'R7.00','R105.00\r',1),(95,'17-Feb','Makro','Top Class Soy Mince',5,'R8.00','R40.00\r',1),(96,'18-Feb','HomeMade','Shampoo 1 litre',1,'R20.00','R20.00\r',3),(97,'18-Feb','HomeMade','Soap Bar',5,'R3.00','R15.00\r',3),(98,'19-Feb','HomeMade','Shampoo 1 litre',2,'R20.00','R40.00\r',3),(99,'19-Feb','Joe Spaza Shop','Milk 1l',1,'R9.50','R9.50\r',4),(100,'20-Feb','Epping Market','Bananas - loose',20,'R1.00','R20.00\r',2),(101,'20-Feb','Epping Market','Apples - loose',90,'R1.50','R135.00\r',2),(102,'20-Feb','Epping Market','Mixed Sweets 5s',20,'R3.00','R60.00\r',2),(103,'20-Feb','HomeMade','Shampoo 1 litre',2,'R20.00','R40.00\r',3),(104,'20-Feb','HomeMade','Soap Bar',3,'R3.00','R9.00\r',3),(105,'20-Feb','Makro','Bread',10,'R9.00','R90.00\r',1),(106,'20-Feb','Makro','Imasi',10,'R17.00','R170.00\r',1),(107,'20-Feb','Makro','Iwisa Pap 5kg',5,'R20.00','R100.00\r',1),(108,'20-Feb','Makro','Milk 1l',15,'R7.00','R105.00\r',1),(109,'20-Feb','Makro','Top Class Soy Mince',10,'R8.00','R80.00\r',1),(110,'23-Feb','Joe Spaza Shop','Chakalaka Can',3,'R9.00','R27.00\r',4),(111,'24-Feb','Epping Market','Bananas - loose',10,'R1.00','R10.00\r',2),(112,'24-Feb','Epping Market','Apples - loose',90,'R1.50','R135.00\r',2),(113,'24-Feb','Epping Market','Mixed Sweets 5s',8,'R3.00','R24.00\r',2),(114,'24-Feb','Makro','Bread',15,'R9.00','R135.00\r',1),(115,'24-Feb','Makro','Chakalaka Can',10,'R7.00','R70.00\r',1),(116,'24-Feb','Makro','Coke 500ml',18,'R3.50','R63.00\r',1),(117,'24-Feb','Makro','Cream Soda 500ml',6,'R4.50','R27.00\r',1),(118,'24-Feb','Makro','Fanta 500ml',6,'R4.50','R27.00\r',1),(119,'24-Feb','Makro','Gold Dish Vegetable Curry Can',10,'R5.00','R50.00\r',1),(120,'24-Feb','Makro','Imasi',15,'R17.00','R255.00\r',1),(121,'24-Feb','Makro','Milk 1l',20,'R7.00','R140.00\r',1),(122,'24-Feb','Makro','Top Class Soy Mince',15,'R8.00','R120.00\r',1),(123,'25-Feb','HomeMade','Soap Bar',5,'R3.00','R15.00\r',3),(124,'26-Feb','HomeMade','Shampoo 1 litre',2,'R20.00','R40.00\r',3),(125,'26-Feb','HomeMade','Soap Bar',5,'R3.00','R15.00\r',3),(126,'26-Feb','Joe Spaza Shop','Bread',1,'R11.00','R11.00\r',4),(127,'26-Feb','Joe Spaza Shop','Fanta 500ml',2,'R6.50','R13.00\r',4),(128,'26-Feb','Joe Spaza Shop','Gold Dish Vegetable Curry Can',1,'R8.50','R8.50\r',4),(129,'26-Feb','Joe Spaza Shop','Iwisa Pap 5kg',1,'R30.00','R30.00\r',4),(130,'27-Feb','Epping Market','Bananas - loose',10,'R1.00','R10.00\r',2),(131,'27-Feb','Epping Market','Apples - loose',60,'R1.50','R90.00\r',2),(132,'27-Feb','HomeMade','Shampoo 1 litre',5,'R20.00','R100.00\r',3),(133,'27-Feb','HomeMade','Soap Bar',5,'R3.00','R15.00\r',3),(134,'27-Feb','Makro','Bread',20,'R9.00','R180.00\r',1),(135,'27-Feb','Makro','Chakalaka Can',15,'R7.00','R105.00\r',1),(136,'27-Feb','Makro','Coke 500ml',24,'R3.50','R84.00\r',1),(137,'27-Feb','Makro','Cream Soda 500ml',12,'R4.50','R54.00\r',1),(138,'27-Feb','Makro','Fanta 500ml',12,'R4.50','R54.00\r',1),(139,'27-Feb','Makro','Gold Dish Vegetable Curry Can',15,'R5.00','R75.00\r',1),(140,'27-Feb','Makro','Imasi',15,'R17.00','R255.00\r',1),(141,'27-Feb','Makro','Iwisa Pap 5kg',10,'R20.00','R200.00\r',1),(142,'27-Feb','Makro','Milk 1l',20,'R7.00','R140.00\r',1),(143,'27-Feb','Makro','Top Class Soy Mince',15,'R8.00','R120.00\r',1),(144,'28-Feb','HomeMade','Shampoo 1 litre',2,'R20.00','R40.00\r',3),(145,'28-Feb','HomeMade','Soap Bar',3,'R3.00','R9.00\r',3),(146,'28-Feb','Joe Spaza Shop','Chakalaka Can',3,'R8.50','R25.50\r',4),(147,'28-Feb','Joe Spaza Shop','Gold Dish Vegetable Curry Can',2,'R8.50','R17.00\r',4),(148,'28-Feb','Joe Spaza Shop','Top Class Soy Mince',5,'R11.00','R55.00\r',4),(149,'01-Mar','HomeMade','Shampoo 1 litre',2,'R20.00','R40.00\r',3),(150,'01-Mar','HomeMade','Soap Bar',5,'R3.00','R15.00\r',3),(151,'01-Mar','Joe Spaza Shop','Chakalaka Can',3,'R8.50','R25.50\r',4),(152,'01-Mar','Joe Spaza Shop','Gold Dish Vegetable Curry Can',2,'R8.50','R17.00\r',4),(153,'01-Mar','Joe Spaza Shop','Top Class Soy Mince',3,'R11.00','R33.00\r',4);
/*!40000 ALTER TABLE `purchase_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_history`
--

DROP TABLE IF EXISTS `sales_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_history` (
  `day` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `stock_item` varchar(30) DEFAULT NULL,
  `no_sold` int(11) DEFAULT NULL,
  `sales_price` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`cat_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_history`
--

LOCK TABLES `sales_history` WRITE;
/*!40000 ALTER TABLE `sales_history` DISABLE KEYS */;
INSERT INTO `sales_history` VALUES ('Sunday','1-Feb','Imasi',1,'R25.00',2,'dairy',2),('Sunday','1-Feb','Bread',2,'R12.00',3,'veg_and_carbs',4),('Sunday','1-Feb','Chakalaka Can',3,'R10.00',4,'veg_and_carbs',4),('Sunday','1-Feb','Gold Dish Vegetable Curry Can',2,'R9.00',5,'veg_and_carbs',4),('Sunday','1-Feb','Fanta 500ml',3,'R6.50',6,'junk_food',1),('Sunday','1-Feb','Coke 500ml',2,'R6.50',7,'junk_food',1),('Sunday','1-Feb','Cream Soda 500ml',2,'R7.50',8,'junk_food',1),('Sunday','1-Feb','Iwisa Pap 5kg',0,'R30.00',9,'veg_and_carbs',4),('Sunday','1-Feb','Top Class Soy Mince',2,'R12.00',10,'veg_and_carbs',4),('Sunday','1-Feb','Shampoo 1 litre',1,'R30.00',11,'not_edible',3),('Sunday','1-Feb','Soap Bar',0,'R6.00',12,'not_edible',3),('Sunday','1-Feb','Bananas - loose',3,'R2.00',13,'fruit',5),('Sunday','1-Feb','Apples - loose',5,'R2.00',14,'fruit',5),('Sunday','1-Feb','Mixed Sweets 5s',9,'R3.00',15,'junk_food',1),('Monday','2-Feb','Milk 1l',4,'R10.00',16,'dairy',2),('Monday','2-Feb','Imasi',4,'R25.00',17,'dairy',2),('Monday','2-Feb','Bread',5,'R12.00',18,'veg_and_carbs',4),('Monday','2-Feb','Chakalaka Can',4,'R10.00',19,'veg_and_carbs',4),('Monday','2-Feb','Gold Dish Vegetable Curry Can',5,'R9.00',20,'veg_and_carbs',4),('Monday','2-Feb','Fanta 500ml',5,'R6.50',21,'junk_food',1),('Monday','2-Feb','Coke 500ml',8,'R6.50',22,'junk_food',1),('Monday','2-Feb','Cream Soda 500ml',4,'R7.50',23,'junk_food',1),('Monday','2-Feb','Iwisa Pap 5kg',5,'R30.00',24,'veg_and_carbs',4),('Monday','2-Feb','Top Class Soy Mince',3,'R12.00',25,'veg_and_carbs',4),('Monday','2-Feb','Shampoo 1 litre',0,'R30.00',26,'not_edible',3),('Monday','2-Feb','Soap Bar',2,'R6.00',27,'not_edible',3),('Monday','2-Feb','Bananas - loose',0,'R2.00',28,'fruit',5),('Monday','2-Feb','Apples - loose',0,'R2.00',29,'fruit',5),('Monday','2-Feb','Mixed Sweets 5s',0,'R3.00',30,'junk_food',1),('Tuesday','3-Feb','Milk 1l',7,'R10.00',31,'dairy',2),('Tuesday','3-Feb','Imasi',4,'R25.00',32,'dairy',2),('Tuesday','3-Feb','Bread',7,'R12.00',33,'veg_and_carbs',4),('Tuesday','3-Feb','Chakalaka Can',4,'R10.00',34,'veg_and_carbs',4),('Tuesday','3-Feb','Gold Dish Vegetable Curry Can',2,'R9.00',35,'veg_and_carbs',4),('Tuesday','3-Feb','Fanta 500ml',5,'R6.50',36,'junk_food',1),('Tuesday','3-Feb','Coke 500ml',8,'R6.50',37,'junk_food',1),('Tuesday','3-Feb','Cream Soda 500ml',3,'R7.50',38,'junk_food',1),('Tuesday','3-Feb','Iwisa Pap 5kg',3,'R30.00',39,'veg_and_carbs',4),('Tuesday','3-Feb','Top Class Soy Mince',3,'R12.00',40,'veg_and_carbs',4),('Tuesday','3-Feb','Shampoo 1 litre',0,'R30.00',41,'not_edible',3),('Tuesday','3-Feb','Soap Bar',2,'R6.00',42,'not_edible',3),('Tuesday','3-Feb','Bananas - loose',10,'R2.00',43,'fruit',5),('Tuesday','3-Feb','Apples - loose',8,'R2.00',44,'fruit',5),('Tuesday','3-Feb','Mixed Sweets 5s',15,'R2.00',45,'junk_food',1),('Wednesday','4-Feb','Milk 1l',5,'R10.00',46,'dairy',2),('Wednesday','4-Feb','Imasi',8,'R25.00',47,'dairy',2),('Wednesday','4-Feb','Bread',8,'R12.00',48,'veg_and_carbs',4),('Wednesday','4-Feb','Chakalaka Can',2,'R10.00',49,'veg_and_carbs',4),('Wednesday','4-Feb','Gold Dish Vegetable Curry Can',0,'R9.00',50,'veg_and_carbs',4),('Wednesday','4-Feb','Fanta 500ml',7,'R6.50',51,'junk_food',1),('Wednesday','4-Feb','Coke 500ml',12,'R6.50',52,'junk_food',1),('Wednesday','4-Feb','Cream Soda 500ml',2,'R7.50',53,'junk_food',1),('Wednesday','4-Feb','Iwisa Pap 5kg',1,'R30.00',54,'veg_and_carbs',4),('Wednesday','4-Feb','Top Class Soy Mince',4,'R12.00',55,'veg_and_carbs',4),('Wednesday','4-Feb','Shampoo 1 litre',1,'R30.00',56,'not_edible',3),('Wednesday','4-Feb','Soap Bar',3,'R6.00',57,'not_edible',3),('Wednesday','4-Feb','Bananas - loose',16,'R2.00',58,'fruit',5),('Wednesday','4-Feb','Apples - loose',8,'R2.00',59,'fruit',5),('Wednesday','4-Feb','Mixed Sweets 5s',12,'R2.00',60,'junk_food',1),('Thursday','5-Feb','Milk 1l',10,'R10.00',61,'dairy',2),('Thursday','5-Feb','Imasi',3,'R25.00',62,'dairy',2),('Thursday','5-Feb','Bread',12,'R12.00',63,'veg_and_carbs',4),('Thursday','5-Feb','Chakalaka Can',3,'R10.00',64,'veg_and_carbs',4),('Thursday','5-Feb','Gold Dish Vegetable Curry Can',6,'R9.00',65,'veg_and_carbs',4),('Thursday','5-Feb','Fanta 500ml',3,'R6.50',66,'junk_food',1),('Thursday','5-Feb','Coke 500ml',9,'R6.50',67,'junk_food',1),('Thursday','5-Feb','Cream Soda 500ml',8,'R7.50',68,'junk_food',1),('Thursday','5-Feb','Iwisa Pap 5kg',2,'R30.00',69,'veg_and_carbs',4),('Thursday','5-Feb','Top Class Soy Mince',1,'R12.00',70,'veg_and_carbs',4),('Thursday','5-Feb','Shampoo 1 litre',0,'R30.00',71,'not_edible',3),('Thursday','5-Feb','Soap Bar',1,'R6.00',72,'not_edible',3),('Thursday','5-Feb','Bananas - loose',8,'R2.00',73,'fruit',5),('Thursday','5-Feb','Apples - loose',12,'R2.00',74,'fruit',5),('Thursday','5-Feb','Mixed Sweets 5s',5,'R3.00',75,'junk_food',1),('Friday','6-Feb','Milk 1l',6,'R10.00',76,'dairy',2),('Friday','6-Feb','Imasi',4,'R25.00',77,'dairy',2),('Friday','6-Feb','Bread',7,'R12.00',78,'veg_and_carbs',4),('Friday','6-Feb','Chakalaka Can',5,'R10.00',79,'veg_and_carbs',4),('Friday','6-Feb','Gold Dish Vegetable Curry Can',2,'R9.00',80,'veg_and_carbs',4),('Friday','6-Feb','Fanta 500ml',7,'R6.50',81,'junk_food',1),('Friday','6-Feb','Coke 500ml',8,'R6.50',82,'junk_food',1),('Friday','6-Feb','Cream Soda 500ml',3,'R7.50',83,'junk_food',1),('Friday','6-Feb','Iwisa Pap 5kg',6,'R30.00',84,'veg_and_carbs',4),('Friday','6-Feb','Top Class Soy Mince',8,'R12.00',85,'veg_and_carbs',4),('Friday','6-Feb','Shampoo 1 litre',1,'R30.00',86,'not_edible',3),('Friday','6-Feb','Soap Bar',3,'R6.00',87,'not_edible',3),('Friday','6-Feb','Bananas - loose',2,'R2.00',88,'fruit',5),('Friday','6-Feb','Apples - loose',0,'R2.00',89,'fruit',5),('Friday','6-Feb','Mixed Sweets 5s',5,'R3.00',90,'junk_food',1),('Saturday','7-Feb','Milk 1l',4,'R10.00',91,'dairy',2),('Saturday','7-Feb','Imasi',6,'R25.00',92,'dairy',2),('Saturday','7-Feb','Bread',4,'R12.00',93,'veg_and_carbs',4),('Saturday','7-Feb','Chakalaka Can',2,'R10.00',94,'veg_and_carbs',4),('Saturday','7-Feb','Gold Dish Vegetable Curry Can',0,'R9.00',95,'veg_and_carbs',4),('Saturday','7-Feb','Fanta 500ml',3,'R6.50',96,'junk_food',1),('Saturday','7-Feb','Coke 500ml',7,'R6.50',97,'junk_food',1),('Saturday','7-Feb','Cream Soda 500ml',0,'R7.50',98,'junk_food',1),('Saturday','7-Feb','Iwisa Pap 5kg',0,'R30.00',99,'veg_and_carbs',4),('Saturday','7-Feb','Top Class Soy Mince',1,'R12.00',100,'veg_and_carbs',4),('Saturday','7-Feb','Shampoo 1 litre',0,'R30.00',101,'not_edible',3),('Saturday','7-Feb','Soap Bar',1,'R6.00',102,'not_edible',3),('Saturday','7-Feb','Bananas - loose',8,'R2.00',103,'fruit',5),('Saturday','7-Feb','Apples - loose',3,'R2.00',104,'fruit',5),('Saturday','7-Feb','Mixed Sweets 5s',3,'R3.00',105,'junk_food',1),('Sunday','8-Feb','Milk 1l',0,'R10.00',106,'dairy',2),('Sunday','8-Feb','Imasi',2,'R25.00',107,'dairy',2),('Sunday','8-Feb','Bread',2,'R12.00',108,'veg_and_carbs',4),('Sunday','8-Feb','Chakalaka Can',1,'R10.00',109,'veg_and_carbs',4),('Sunday','8-Feb','Gold Dish Vegetable Curry Can',0,'R9.00',110,'veg_and_carbs',4),('Sunday','8-Feb','Fanta 500ml',4,'R6.50',111,'junk_food',1),('Sunday','8-Feb','Coke 500ml',4,'R6.50',112,'junk_food',1),('Sunday','8-Feb','Cream Soda 500ml',1,'R7.50',113,'junk_food',1),('Sunday','8-Feb','Iwisa Pap 5kg',1,'R30.00',114,'veg_and_carbs',4),('Sunday','8-Feb','Top Class Soy Mince',2,'R12.00',115,'veg_and_carbs',4),('Sunday','8-Feb','Shampoo 1 litre',0,'R30.00',116,'not_edible',3),('Sunday','8-Feb','Soap Bar',1,'R6.00',117,'not_edible',3),('Sunday','8-Feb','Bananas - loose',5,'R2.00',118,'fruit',5),('Sunday','8-Feb','Apples - loose',2,'R2.00',119,'fruit',5),('Sunday','8-Feb','Mixed Sweets 5s',9,'R3.00',120,'junk_food',1),('Monday','9-Feb','Milk 1l',3,'R10.00',121,'dairy',2),('Monday','9-Feb','Imasi',6,'R25.00',122,'dairy',2),('Monday','9-Feb','Bread',7,'R12.00',123,'veg_and_carbs',4),('Monday','9-Feb','Chakalaka Can',5,'R10.00',124,'veg_and_carbs',4),('Monday','9-Feb','Gold Dish Vegetable Curry Can',6,'R9.00',125,'veg_and_carbs',4),('Monday','9-Feb','Fanta 500ml',3,'R6.50',126,'junk_food',1),('Monday','9-Feb','Coke 500ml',8,'R6.50',127,'junk_food',1),('Monday','9-Feb','Cream Soda 500ml',5,'R7.50',128,'junk_food',1),('Monday','9-Feb','Iwisa Pap 5kg',2,'R30.00',129,'veg_and_carbs',4),('Monday','9-Feb','Top Class Soy Mince',1,'R12.00',130,'veg_and_carbs',4),('Monday','9-Feb','Shampoo 1 litre',0,'R30.00',131,'not_edible',3),('Monday','9-Feb','Soap Bar',0,'R6.00',132,'not_edible',3),('Monday','9-Feb','Bananas - loose',5,'R2.00',133,'fruit',5),('Monday','9-Feb','Apples - loose',0,'R2.00',134,'fruit',5),('Monday','9-Feb','Mixed Sweets 5s',3,'R3.00',135,'junk_food',1),('Tuesday','10-Feb','Milk 1l',5,'R10.00',136,'dairy',2),('Tuesday','10-Feb','Imasi',4,'R25.00',137,'dairy',2),('Tuesday','10-Feb','Bread',2,'R12.00',138,'veg_and_carbs',4),('Tuesday','10-Feb','Chakalaka Can',0,'R10.00',139,'veg_and_carbs',4),('Tuesday','10-Feb','Gold Dish Vegetable Curry Can',0,'R9.00',140,'veg_and_carbs',4),('Tuesday','10-Feb','Fanta 500ml',1,'R6.50',141,'junk_food',1),('Tuesday','10-Feb','Coke 500ml',3,'R6.50',142,'junk_food',1),('Tuesday','10-Feb','Cream Soda 500ml',2,'R7.50',143,'junk_food',1),('Tuesday','10-Feb','Iwisa Pap 5kg',1,'R30.00',144,'veg_and_carbs',4),('Tuesday','10-Feb','Top Class Soy Mince',3,'R12.00',145,'veg_and_carbs',4),('Tuesday','10-Feb','Shampoo 1 litre',1,'R30.00',146,'not_edible',3),('Tuesday','10-Feb','Soap Bar',0,'R6.00',147,'not_edible',3),('Tuesday','10-Feb','Bananas - loose',3,'R2.00',148,'fruit',5),('Tuesday','10-Feb','Apples - loose',2,'R2.00',149,'fruit',5),('Tuesday','10-Feb','Mixed Sweets 5s',7,'R2.00',150,'junk_food',1),('Tuesday','10-Feb','Heart Chocolates',3,'R35.00',151,'junk_food',1),('Tuesday','10-Feb','Rose (plastic)',1,'R15.00',152,'not_edible',3),('Wednesday','11-Feb','Milk 1l',5,'R10.00',153,'dairy',2),('Wednesday','11-Feb','Imasi',4,'R25.00',154,'dairy',2),('Wednesday','11-Feb','Bread',3,'R12.00',155,'veg_and_carbs',4),('Wednesday','11-Feb','Chakalaka Can',2,'R10.00',156,'veg_and_carbs',4),('Wednesday','11-Feb','Gold Dish Vegetable Curry Can',1,'R9.00',157,'veg_and_carbs',4),('Wednesday','11-Feb','Fanta 500ml',2,'R6.50',158,'junk_food',1),('Wednesday','11-Feb','Coke 500ml',3,'R6.50',159,'junk_food',1),('Wednesday','11-Feb','Cream Soda 500ml',1,'R7.50',160,'junk_food',1),('Wednesday','11-Feb','Iwisa Pap 5kg',0,'R30.00',161,'veg_and_carbs',4),('Wednesday','11-Feb','Top Class Soy Mince',2,'R12.00',162,'veg_and_carbs',4),('Wednesday','11-Feb','Shampoo 1 litre',1,'R30.00',163,'not_edible',3),('Wednesday','11-Feb','Soap Bar',0,'R6.00',164,'not_edible',3),('Wednesday','11-Feb','Bananas - loose',4,'R2.00',165,'fruit',5),('Wednesday','11-Feb','Apples - loose',3,'R2.00',166,'fruit',5),('Wednesday','11-Feb','Mixed Sweets 5s',8,'R2.00',167,'junk_food',1),('Wednesday','11-Feb','Heart Chocolates',5,'R35.00',168,'junk_food',1),('Wednesday','11-Feb','Rose (plastic)',3,'R15.00',169,'not_edible',3),('Thursday','12-Feb','Milk 1l',3,'R10.00',170,'dairy',2),('Thursday','12-Feb','Imasi',9,'R25.00',171,'dairy',2),('Thursday','12-Feb','Bread',2,'R12.00',172,'veg_and_carbs',4),('Thursday','12-Feb','Chakalaka Can',3,'R10.00',173,'veg_and_carbs',4),('Thursday','12-Feb','Gold Dish Vegetable Curry Can',1,'R9.00',174,'veg_and_carbs',4),('Thursday','12-Feb','Fanta 500ml',0,'R6.50',175,'junk_food',1),('Thursday','12-Feb','Coke 500ml',2,'R6.50',176,'junk_food',1),('Thursday','12-Feb','Cream Soda 500ml',1,'R7.50',177,'junk_food',1),('Thursday','12-Feb','Iwisa Pap 5kg',0,'R30.00',178,'veg_and_carbs',4),('Thursday','12-Feb','Top Class Soy Mince',2,'R12.00',179,'veg_and_carbs',4),('Thursday','12-Feb','Shampoo 1 litre',0,'R30.00',180,'not_edible',3),('Thursday','12-Feb','Soap Bar',2,'R6.00',181,'not_edible',3),('Thursday','12-Feb','Bananas - loose',2,'R2.00',182,'fruit',5),('Thursday','12-Feb','Apples - loose',3,'R2.00',183,'fruit',5),('Thursday','12-Feb','Mixed Sweets 5s',3,'R3.00',184,'junk_food',1),('Thursday','12-Feb','Heart Chocolates',2,'R35.00',185,'junk_food',1),('Thursday','12-Feb','Valentine Cards',6,'R4.00',186,'not_edible',3),('Thursday','12-Feb','Rose (plastic)',2,'R15.00',187,'not_edible',3),('Friday','13-Feb','Milk 1l',6,'R10.00',188,'dairy',2),('Friday','13-Feb','Imasi',6,'R25.00',189,'dairy',2),('Friday','13-Feb','Bread',5,'R12.00',190,'veg_and_carbs',4),('Friday','13-Feb','Chakalaka Can',7,'R10.00',191,'veg_and_carbs',4),('Friday','13-Feb','Gold Dish Vegetable Curry Can',15,'R9.00',192,'veg_and_carbs',4),('Friday','13-Feb','Fanta 500ml',6,'R6.50',193,'junk_food',1),('Friday','13-Feb','Coke 500ml',8,'R6.50',194,'junk_food',1),('Friday','13-Feb','Cream Soda 500ml',4,'R7.50',195,'junk_food',1),('Friday','13-Feb','Iwisa Pap 5kg',3,'R30.00',196,'veg_and_carbs',4),('Friday','13-Feb','Top Class Soy Mince',4,'R12.00',197,'veg_and_carbs',4),('Friday','13-Feb','Shampoo 1 litre',4,'R30.00',198,'not_edible',3),('Friday','13-Feb','Soap Bar',2,'R6.00',199,'not_edible',3),('Friday','13-Feb','Bananas - loose',4,'R2.00',200,'fruit',5),('Friday','13-Feb','Apples - loose',2,'R2.00',201,'fruit',5),('Friday','13-Feb','Mixed Sweets 5s',6,'R3.00',202,'junk_food',1),('Friday','13-Feb','Heart Chocolates',10,'R35.00',203,'junk_food',1),('Friday','13-Feb','Valentine Cards',5,'R4.00',204,'not_edible',3),('Friday','13-Feb','Rose (plastic)',7,'R15.00',205,'not_edible',3),('Saturday','14-Feb','Milk 1l',6,'R10.00',206,'dairy',2),('Saturday','14-Feb','Imasi',5,'R25.00',207,'dairy',2),('Saturday','14-Feb','Bread',7,'R12.00',208,'veg_and_carbs',4),('Saturday','14-Feb','Chakalaka Can',3,'R10.00',209,'veg_and_carbs',4),('Saturday','14-Feb','Gold Dish Vegetable Curry Can',4,'R9.00',210,'veg_and_carbs',4),('Saturday','14-Feb','Fanta 500ml',7,'R6.50',211,'junk_food',1),('Saturday','14-Feb','Coke 500ml',14,'R6.50',212,'junk_food',1),('Saturday','14-Feb','Cream Soda 500ml',8,'R7.50',213,'junk_food',1),('Saturday','14-Feb','Iwisa Pap 5kg',3,'R30.00',214,'veg_and_carbs',4),('Saturday','14-Feb','Top Class Soy Mince',7,'R12.00',215,'veg_and_carbs',4),('Saturday','14-Feb','Shampoo 1 litre',0,'R30.00',216,'not_edible',3),('Saturday','14-Feb','Soap Bar',0,'R6.00',217,'not_edible',3),('Saturday','14-Feb','Bananas - loose',5,'R2.00',218,'fruit',5),('Saturday','14-Feb','Apples - loose',9,'R2.00',219,'fruit',5),('Saturday','14-Feb','Mixed Sweets 5s',18,'R3.00',220,'junk_food',1),('Saturday','14-Feb','Heart Chocolates',0,'R35.00',221,'junk_food',1),('Saturday','14-Feb','Valentine Cards',3,'R4.00',222,'not_edible',3),('Saturday','14-Feb','Rose (plastic)',1,'R15.00',223,'not_edible',3),('Sunday','15-Feb','Milk 1l',2,'R10.00',224,'dairy',2),('Sunday','15-Feb','Imasi',2,'R25.00',225,'dairy',2),('Sunday','15-Feb','Bread',1,'R12.00',226,'veg_and_carbs',4),('Sunday','15-Feb','Chakalaka Can',3,'R10.00',227,'veg_and_carbs',4),('Sunday','15-Feb','Gold Dish Vegetable Curry Can',0,'R9.00',228,'veg_and_carbs',4),('Sunday','15-Feb','Fanta 500ml',5,'R6.50',229,'junk_food',1),('Sunday','15-Feb','Coke 500ml',4,'R6.50',230,'junk_food',1),('Sunday','15-Feb','Cream Soda 500ml',2,'R7.50',231,'junk_food',1),('Sunday','15-Feb','Iwisa Pap 5kg',0,'R30.00',232,'veg_and_carbs',4),('Sunday','15-Feb','Top Class Soy Mince',1,'R12.00',233,'veg_and_carbs',4),('Sunday','15-Feb','Shampoo 1 litre',0,'R30.00',234,'not_edible',3),('Sunday','15-Feb','Soap Bar',1,'R6.00',235,'not_edible',3),('Sunday','15-Feb','Bananas - loose',1,'R2.00',236,'fruit',5),('Sunday','15-Feb','Apples - loose',1,'R2.00',237,'fruit',5),('Sunday','15-Feb','Mixed Sweets 5s',3,'R3.00',238,'junk_food',1),('Monday','16-Feb','Milk 1l',7,'R10.00',239,'dairy',2),('Monday','16-Feb','Imasi',6,'R25.00',240,'dairy',2),('Monday','16-Feb','Bread',4,'R12.00',241,'veg_and_carbs',4),('Monday','16-Feb','Chakalaka Can',3,'R10.00',242,'veg_and_carbs',4),('Monday','16-Feb','Gold Dish Vegetable Curry Can',2,'R9.00',243,'veg_and_carbs',4),('Monday','16-Feb','Fanta 500ml',2,'R6.50',244,'junk_food',1),('Monday','16-Feb','Coke 500ml',1,'R6.50',245,'junk_food',1),('Monday','16-Feb','Cream Soda 500ml',2,'R7.50',246,'junk_food',1),('Monday','16-Feb','Iwisa Pap 5kg',2,'R30.00',247,'veg_and_carbs',4),('Monday','16-Feb','Top Class Soy Mince',1,'R12.00',248,'veg_and_carbs',4),('Monday','16-Feb','Shampoo 1 litre',0,'R30.00',249,'not_edible',3),('Monday','16-Feb','Soap Bar',2,'R6.00',250,'not_edible',3),('Monday','16-Feb','Bananas - loose',2,'R2.00',251,'fruit',5),('Monday','16-Feb','Apples - loose',3,'R2.00',252,'fruit',5),('Monday','16-Feb','Mixed Sweets 5s',5,'R3.00',253,'junk_food',1),('Tuesday','17-Feb','Milk 1l',8,'R10.00',254,'dairy',2),('Tuesday','17-Feb','Imasi',6,'R25.00',255,'dairy',2),('Tuesday','17-Feb','Bread',3,'R12.00',256,'veg_and_carbs',4),('Tuesday','17-Feb','Chakalaka Can',0,'R10.00',257,'veg_and_carbs',4),('Tuesday','17-Feb','Gold Dish Vegetable Curry Can',0,'R9.00',258,'veg_and_carbs',4),('Tuesday','17-Feb','Fanta 500ml',0,'R6.50',259,'junk_food',1),('Tuesday','17-Feb','Coke 500ml',2,'R6.50',260,'junk_food',1),('Tuesday','17-Feb','Cream Soda 500ml',0,'R7.50',261,'junk_food',1),('Tuesday','17-Feb','Iwisa Pap 5kg',1,'R30.00',262,'veg_and_carbs',4),('Tuesday','17-Feb','Top Class Soy Mince',2,'R12.00',263,'veg_and_carbs',4),('Tuesday','17-Feb','Shampoo 1 litre',0,'R30.00',264,'not_edible',3),('Tuesday','17-Feb','Soap Bar',1,'R6.00',265,'not_edible',3),('Tuesday','17-Feb','Bananas - loose',2,'R2.00',266,'fruit',5),('Tuesday','17-Feb','Apples - loose',6,'R2.00',267,'fruit',5),('Tuesday','17-Feb','Mixed Sweets 5s',5,'R2.00',268,'junk_food',1),('Wednesday','18-Feb','Milk 1l',3,'R10.00',269,'dairy',2),('Wednesday','18-Feb','Imasi',5,'R25.00',270,'dairy',2),('Wednesday','18-Feb','Bread',5,'R12.00',271,'veg_and_carbs',4),('Wednesday','18-Feb','Chakalaka Can',1,'R10.00',272,'veg_and_carbs',4),('Wednesday','18-Feb','Gold Dish Vegetable Curry Can',0,'R9.00',273,'veg_and_carbs',4),('Wednesday','18-Feb','Fanta 500ml',0,'R6.50',274,'junk_food',1),('Wednesday','18-Feb','Coke 500ml',3,'R6.50',275,'junk_food',1),('Wednesday','18-Feb','Cream Soda 500ml',2,'R7.50',276,'junk_food',1),('Wednesday','18-Feb','Iwisa Pap 5kg',1,'R30.00',277,'veg_and_carbs',4),('Wednesday','18-Feb','Top Class Soy Mince',1,'R12.00',278,'veg_and_carbs',4),('Wednesday','18-Feb','Shampoo 1 litre',1,'R30.00',279,'not_edible',3),('Wednesday','18-Feb','Soap Bar',1,'R6.00',280,'not_edible',3),('Wednesday','18-Feb','Bananas - loose',1,'R2.00',281,'fruit',5),('Wednesday','18-Feb','Apples - loose',3,'R2.00',282,'fruit',5),('Wednesday','18-Feb','Mixed Sweets 5s',2,'R2.00',283,'junk_food',1),('Thursday','19-Feb','Milk 1l',5,'R10.00',284,'dairy',2),('Thursday','19-Feb','Imasi',3,'R25.00',285,'dairy',2),('Thursday','19-Feb','Bread',5,'R12.00',286,'veg_and_carbs',4),('Thursday','19-Feb','Chakalaka Can',2,'R10.00',287,'veg_and_carbs',4),('Thursday','19-Feb','Gold Dish Vegetable Curry Can',1,'R9.00',288,'veg_and_carbs',4),('Thursday','19-Feb','Fanta 500ml',1,'R6.50',289,'junk_food',1),('Thursday','19-Feb','Coke 500ml',1,'R6.50',290,'junk_food',1),('Thursday','19-Feb','Cream Soda 500ml',0,'R7.50',291,'junk_food',1),('Thursday','19-Feb','Iwisa Pap 5kg',0,'R30.00',292,'veg_and_carbs',4),('Thursday','19-Feb','Top Class Soy Mince',2,'R12.00',293,'veg_and_carbs',4),('Thursday','19-Feb','Shampoo 1 litre',2,'R30.00',294,'not_edible',3),('Thursday','19-Feb','Soap Bar',0,'R6.00',295,'not_edible',3),('Thursday','19-Feb','Bananas - loose',3,'R2.00',296,'fruit',5),('Thursday','19-Feb','Apples - loose',5,'R2.00',297,'fruit',5),('Thursday','19-Feb','Mixed Sweets 5s',4,'R3.00',298,'junk_food',1),('Friday','20-Feb','Milk 1l',4,'R10.00',299,'dairy',2),('Friday','20-Feb','Imasi',2,'R25.00',300,'dairy',2),('Friday','20-Feb','Bread',3,'R12.00',301,'veg_and_carbs',4),('Friday','20-Feb','Chakalaka Can',5,'R10.00',302,'veg_and_carbs',4),('Friday','20-Feb','Gold Dish Vegetable Curry Can',3,'R9.00',303,'veg_and_carbs',4),('Friday','20-Feb','Fanta 500ml',3,'R6.50',304,'junk_food',1),('Friday','20-Feb','Coke 500ml',5,'R6.50',305,'junk_food',1),('Friday','20-Feb','Cream Soda 500ml',6,'R7.50',306,'junk_food',1),('Friday','20-Feb','Iwisa Pap 5kg',0,'R30.00',307,'veg_and_carbs',4),('Friday','20-Feb','Top Class Soy Mince',3,'R12.00',308,'veg_and_carbs',4),('Friday','20-Feb','Shampoo 1 litre',1,'R30.00',309,'not_edible',3),('Friday','20-Feb','Soap Bar',3,'R6.00',310,'not_edible',3),('Friday','20-Feb','Bananas - loose',6,'R2.00',311,'fruit',5),('Friday','20-Feb','Apples - loose',4,'R2.00',312,'fruit',5),('Friday','20-Feb','Mixed Sweets 5s',8,'R3.00',313,'junk_food',1),('Saturday','21-Feb','Milk 1l',1,'R10.00',314,'dairy',2),('Saturday','21-Feb','Imasi',1,'R25.00',315,'dairy',2),('Saturday','21-Feb','Bread',3,'R12.00',316,'veg_and_carbs',4),('Saturday','21-Feb','Chakalaka Can',3,'R10.00',317,'veg_and_carbs',4),('Saturday','21-Feb','Gold Dish Vegetable Curry Can',2,'R9.00',318,'veg_and_carbs',4),('Saturday','21-Feb','Fanta 500ml',3,'R6.50',319,'junk_food',1),('Saturday','21-Feb','Coke 500ml',2,'R6.50',320,'junk_food',1),('Saturday','21-Feb','Cream Soda 500ml',0,'R7.50',321,'junk_food',1),('Saturday','21-Feb','Iwisa Pap 5kg',0,'R30.00',322,'veg_and_carbs',4),('Saturday','21-Feb','Top Class Soy Mince',2,'R12.00',323,'veg_and_carbs',4),('Saturday','21-Feb','Shampoo 1 litre',0,'R30.00',324,'not_edible',3),('Saturday','21-Feb','Soap Bar',0,'R6.00',325,'not_edible',3),('Saturday','21-Feb','Bananas - loose',2,'R2.00',326,'fruit',5),('Saturday','21-Feb','Apples - loose',3,'R2.00',327,'fruit',5),('Saturday','21-Feb','Mixed Sweets 5s',2,'R3.00',328,'junk_food',1),('Sunday','22-Feb','Milk 1l',2,'R10.00',329,'dairy',2),('Sunday','22-Feb','Imasi',2,'R25.00',330,'dairy',2),('Sunday','22-Feb','Bread',3,'R12.00',331,'veg_and_carbs',4),('Sunday','22-Feb','Chakalaka Can',0,'R10.00',332,'veg_and_carbs',4),('Sunday','22-Feb','Gold Dish Vegetable Curry Can',1,'R9.00',333,'veg_and_carbs',4),('Sunday','22-Feb','Fanta 500ml',2,'R6.50',334,'junk_food',1),('Sunday','22-Feb','Coke 500ml',0,'R6.50',335,'junk_food',1),('Sunday','22-Feb','Cream Soda 500ml',0,'R7.50',336,'junk_food',1),('Sunday','22-Feb','Iwisa Pap 5kg',0,'R30.00',337,'veg_and_carbs',4),('Sunday','22-Feb','Top Class Soy Mince',0,'R12.00',338,'veg_and_carbs',4),('Sunday','22-Feb','Shampoo 1 litre',0,'R30.00',339,'not_edible',3),('Sunday','22-Feb','Soap Bar',1,'R6.00',340,'not_edible',3),('Sunday','22-Feb','Bananas - loose',0,'R2.00',341,'fruit',5),('Sunday','22-Feb','Apples - loose',1,'R2.00',342,'fruit',5),('Sunday','22-Feb','Mixed Sweets 5s',3,'R3.00',343,'junk_food',1),('Monday','23-Feb','Milk 1l',8,'R10.00',344,'dairy',2),('Monday','23-Feb','Imasi',6,'R25.00',345,'dairy',2),('Monday','23-Feb','Bread',2,'R12.00',346,'veg_and_carbs',4),('Monday','23-Feb','Chakalaka Can',2,'R10.00',347,'veg_and_carbs',4),('Monday','23-Feb','Gold Dish Vegetable Curry Can',1,'R9.00',348,'veg_and_carbs',4),('Monday','23-Feb','Fanta 500ml',1,'R6.50',349,'junk_food',1),('Monday','23-Feb','Coke 500ml',3,'R6.50',350,'junk_food',1),('Monday','23-Feb','Cream Soda 500ml',0,'R7.50',351,'junk_food',1),('Monday','23-Feb','Iwisa Pap 5kg',2,'R30.00',352,'veg_and_carbs',4),('Monday','23-Feb','Top Class Soy Mince',1,'R12.00',353,'veg_and_carbs',4),('Monday','23-Feb','Shampoo 1 litre',0,'R30.00',354,'not_edible',3),('Monday','23-Feb','Soap Bar',0,'R6.00',355,'not_edible',3),('Monday','23-Feb','Bananas - loose',2,'R2.00',356,'fruit',5),('Monday','23-Feb','Apples - loose',1,'R2.00',357,'fruit',5),('Monday','23-Feb','Mixed Sweets 5s',3,'R3.00',358,'junk_food',1),('Tuesday','24-Feb','Milk 1l',4,'R10.00',359,'dairy',2),('Tuesday','24-Feb','Imasi',2,'R25.00',360,'dairy',2),('Tuesday','24-Feb','Bread',6,'R12.00',361,'veg_and_carbs',4),('Tuesday','24-Feb','Chakalaka Can',1,'R10.00',362,'veg_and_carbs',4),('Tuesday','24-Feb','Gold Dish Vegetable Curry Can',2,'R9.00',363,'veg_and_carbs',4),('Tuesday','24-Feb','Fanta 500ml',1,'R6.50',364,'junk_food',1),('Tuesday','24-Feb','Coke 500ml',2,'R6.50',365,'junk_food',1),('Tuesday','24-Feb','Cream Soda 500ml',1,'R7.50',366,'junk_food',1),('Tuesday','24-Feb','Iwisa Pap 5kg',1,'R30.00',367,'veg_and_carbs',4),('Tuesday','24-Feb','Top Class Soy Mince',2,'R12.00',368,'veg_and_carbs',4),('Tuesday','24-Feb','Shampoo 1 litre',0,'R30.00',369,'not_edible',3),('Tuesday','24-Feb','Soap Bar',1,'R6.00',370,'not_edible',3),('Tuesday','24-Feb','Bananas - loose',5,'R2.00',371,'fruit',5),('Tuesday','24-Feb','Apples - loose',3,'R2.00',372,'fruit',5),('Tuesday','24-Feb','Mixed Sweets 5s',7,'R2.00',373,'junk_food',1),('Wednesday','25-Feb','Milk 1l',8,'R10.00',374,'dairy',2),('Wednesday','25-Feb','Imasi',6,'R25.00',375,'dairy',2),('Wednesday','25-Feb','Bread',7,'R12.00',376,'veg_and_carbs',4),('Wednesday','25-Feb','Chakalaka Can',5,'R10.00',377,'veg_and_carbs',4),('Wednesday','25-Feb','Gold Dish Vegetable Curry Can',4,'R9.00',378,'veg_and_carbs',4),('Wednesday','25-Feb','Fanta 500ml',6,'R6.50',379,'junk_food',1),('Wednesday','25-Feb','Coke 500ml',8,'R6.50',380,'junk_food',1),('Wednesday','25-Feb','Cream Soda 500ml',5,'R7.50',381,'junk_food',1),('Wednesday','25-Feb','Iwisa Pap 5kg',3,'R30.00',382,'veg_and_carbs',4),('Wednesday','25-Feb','Top Class Soy Mince',7,'R12.00',383,'veg_and_carbs',4),('Wednesday','25-Feb','Shampoo 1 litre',1,'R30.00',384,'not_edible',3),('Wednesday','25-Feb','Soap Bar',4,'R6.00',385,'not_edible',3),('Wednesday','25-Feb','Bananas - loose',2,'R2.00',386,'fruit',5),('Wednesday','25-Feb','Apples - loose',8,'R2.00',387,'fruit',5),('Wednesday','25-Feb','Mixed Sweets 5s',5,'R2.00',388,'junk_food',1),('Thursday','26-Feb','Milk 1l',8,'R10.00',389,'dairy',2),('Thursday','26-Feb','Imasi',8,'R25.00',390,'dairy',2),('Thursday','26-Feb','Bread',5,'R12.00',391,'veg_and_carbs',4),('Thursday','26-Feb','Chakalaka Can',3,'R10.00',392,'veg_and_carbs',4),('Thursday','26-Feb','Gold Dish Vegetable Curry Can',7,'R9.00',393,'veg_and_carbs',4),('Thursday','26-Feb','Fanta 500ml',3,'R6.50',394,'junk_food',1),('Thursday','26-Feb','Coke 500ml',7,'R6.50',395,'junk_food',1),('Thursday','26-Feb','Cream Soda 500ml',4,'R7.50',396,'junk_food',1),('Thursday','26-Feb','Iwisa Pap 5kg',3,'R30.00',397,'veg_and_carbs',4),('Thursday','26-Feb','Top Class Soy Mince',8,'R12.00',398,'veg_and_carbs',4),('Thursday','26-Feb','Shampoo 1 litre',0,'R30.00',399,'not_edible',3),('Thursday','26-Feb','Soap Bar',3,'R6.00',400,'not_edible',3),('Thursday','26-Feb','Bananas - loose',2,'R2.00',401,'fruit',5),('Thursday','26-Feb','Apples - loose',3,'R2.00',402,'fruit',5),('Thursday','26-Feb','Mixed Sweets 5s',1,'R3.00',403,'junk_food',1),('Friday','27-Feb','Milk 1l',8,'R10.00',404,'dairy',2),('Friday','27-Feb','Imasi',5,'R25.00',405,'dairy',2),('Friday','27-Feb','Bread',3,'R12.00',406,'veg_and_carbs',4),('Friday','27-Feb','Chakalaka Can',12,'R10.00',407,'veg_and_carbs',4),('Friday','27-Feb','Gold Dish Vegetable Curry Can',9,'R9.00',408,'veg_and_carbs',4),('Friday','27-Feb','Fanta 500ml',6,'R6.50',409,'junk_food',1),('Friday','27-Feb','Coke 500ml',18,'R6.50',410,'junk_food',1),('Friday','27-Feb','Cream Soda 500ml',3,'R7.50',411,'junk_food',1),('Friday','27-Feb','Iwisa Pap 5kg',4,'R30.00',412,'veg_and_carbs',4),('Friday','27-Feb','Top Class Soy Mince',12,'R12.00',413,'veg_and_carbs',4),('Friday','27-Feb','Shampoo 1 litre',5,'R30.00',414,'not_edible',3),('Friday','27-Feb','Soap Bar',3,'R6.00',415,'not_edible',3),('Friday','27-Feb','Bananas - loose',1,'R2.00',416,'fruit',5),('Friday','27-Feb','Apples - loose',3,'R2.00',417,'fruit',5),('Friday','27-Feb','Mixed Sweets 5s',1,'R3.00',418,'junk_food',1),('Saturday','28-Feb','Milk 1l',3,'R10.00',419,'dairy',2),('Saturday','28-Feb','Imasi',2,'R25.00',420,'dairy',2),('Saturday','28-Feb','Bread',4,'R12.00',421,'veg_and_carbs',4),('Saturday','28-Feb','Chakalaka Can',5,'R10.00',422,'veg_and_carbs',4),('Saturday','28-Feb','Gold Dish Vegetable Curry Can',6,'R9.00',423,'veg_and_carbs',4),('Saturday','28-Feb','Fanta 500ml',3,'R6.50',424,'junk_food',1),('Saturday','28-Feb','Coke 500ml',4,'R6.50',425,'junk_food',1),('Saturday','28-Feb','Cream Soda 500ml',6,'R7.50',426,'junk_food',1),('Saturday','28-Feb','Iwisa Pap 5kg',2,'R30.00',427,'veg_and_carbs',4),('Saturday','28-Feb','Top Class Soy Mince',9,'R12.00',428,'veg_and_carbs',4),('Saturday','28-Feb','Soap Bar',7,'R6.00',430,'not_edible',3),('Saturday','28-Feb','Apples - loose',8,'R2.00',432,'fruit',5),('Sunday','1-Mar','Milk 1l',4,'R10.00',434,'dairy',2),('Sunday','1-Mar','Imasi',3,'R25.00',435,'dairy',2),('Wednesday','2015-12-09','Mixed Sweets 5s',100,'R251',436,'junk_food',1);
/*!40000 ALTER TABLE `sales_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Makro'),(2,'Epping Market'),(3,'HomeMade'),(4,'Joe Spaza Shop'),(5,'ChinaTown');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('\" -->\">\'>\'\"<vvv','$2a$10$yM.wX3dGmdihnDB3atPzBuFFGn9Re6ndswuoVjjMJ5cD7DdbHrbmS',0,0),('\" onMouseOver=v','$2a$10$lsT6K5jxlYHz7cBEzhyZAOBaj0FX7nJxs3rtVfgwzl4MItOOO0VzC',0,0),('\" style=vvv0000','$2a$10$DswXthPbioQJrlBWMLfJSuxrD8a4tMU2BpmAenCMbTgjLIZGlWLuK',0,0),('\' -->\">\'>\'\"<vvv','$2a$10$rIz2wGzmBsPae8wt/z1oN.phD4af1lRj00YE0D46OexailfqmiP4K',0,0),('\' onMouseOver=v','$2a$10$oipptuGTdMRcYlwDtNJvIukmk12PITZf5sKd21hgtbLEYZsssrdb.',0,0),('\' style=vvv0000','$2a$10$jxV6pONwI/NG6vea1NUSOeiU0SduUQf9Q92l8LPROHOttGwmztXsi',0,0),('admin','$2a$10$eXqR6A74EF2oxYh4TgyYtOBH3Q7bd4gerY5KS.4eAERhGHn32KYB2',1,0),('asdf5072','$2a$10$GJ1rGDFDGLyWVXDTjhVjVOnho06aGR.oRYyGqQcypTGQRVUm/mLxq',0,0),('avee','$2a$10$08Ty3/1dwy9YprceC9MCY.Q/F8bYcJjmTMJzU6ZZ0cbR1Eph1cpEK',0,0),('brix','$2a$10$Yb3WIf7sfsadVsRKM.Gmt.n9J.kejLJ9E5l/7UuqKpBQtGLxC8CdK',0,0),('cara','$2a$10$22N6p1q2GmgpV2xNQ1rDpOKENEfA/R0sYf8KsA4K/M4MRVdfXufwe',0,0),('cara1','$2a$10$s7qlltWqLqjB0ALD9pDDLe.65T3NxnhVrcYRLNjUu4QnYMrYLJ/xm',0,0),('connectoid','$2a$10$1or3J/GrIUEA5tWGy0nnGOZhvs2lsDO.3UVJyZbC0lOWRjL3PyoM6',0,0),('elizabeth','$2a$10$fHoV9.B1QQG1f0hiC7sX1eS7zW5vI9pnQuLV04Rlsaa94Qjj2z5k6',0,0),('flounder','$2a$10$8MAJDoVuJe.Xqhg1ME9pe.g.vZb7.yBc1PVDSsw.2rNLf4USCsk7y',0,0),('gugulethu','$2a$10$YJhxdMOTNaVGEWiGv0tSOOxZLHCqucCCXOReBuH17/E9mR7zrpS3y',0,0),('hax0r','$2a$10$G7Erl5gwDCufOBNnf3N3ce6tNaQiGwsqVaWr47gDskNTllgha5p5S',0,0),('haxor','$2a$10$1u2.jXuppw.XudMktRkr0uZi8gX2J3vG.uyaeL7htiJ70Wys6vPrK',1,0),('hthttpttp://www','$2a$10$nwAbBGXq59s7r0aR8Z/EOeKNo2906ndQdys1ADoZrZkpDKGX7YQ7i',0,0),('http://www.goog','$2a$10$PVQJCxXSfT2xw1hsbmy2IOtcdYNmyWnhng.HURzSmgTIrb1nG9TZi',0,0),('infinity','$2a$10$hHWS5JiFTPOXPu/HOFq12.N8Z6k1jb6duCNh4INXhiOPeiNiiL0sq',0,0),('jabu','$2a$10$/GpNFXt/Ze.8TaOCaCN4denlIjwJ3cJ5Phy6rRISuErPfyPeXOMC.',0,0),('javascript:vvv0','$2a$10$sKYxX6gX.4Sa6VEmJz57qOoVc.TJafbGZRsrpFwN/dGO8y0ipodFK',0,0),('Joey\n -->\">\'>\'\"','$2a$10$lr33Cm9jEjxyGgarSXEjc.Axk6ceHQBxOiaokcZfHIbbJKkKJxroq',0,0),('Joey','$2a$10$ro6QoQZHrWbsNdRLVXW7W.xYTMiH8yfAjS5x.1/8CG/dD3B3NE0ZG',0,0),('Joey src=-->\">\'','$2a$10$PsHSP1SRKrfKeH835msEv.4kVCG6wAjeRuovzY1jtfoYUgvUrNzQm',0,0),('Joey\" src=-->\">','$2a$10$8QpTXnrHKMvly90o1zHcsO7T1zHl1xMmPGrumQTpOZKaHQiqEVyGe',0,0),('Joey\' -->\">\'>\'\"','$2a$10$7Bimf747Un.0wd.eiTxPD.4pPaKTXDCPffQL/cyqDgT6fv3VfmzmW',0,0),('Joey*/ -->\">\'>\'','$2a$10$.xnimzO5Lr0TrsXh9onhgO82YGpgFbsTmCJsaLwJ79YcmVmA1a1di',0,0),('Joey-->\">\'>\'\"<v','$2a$10$ZM809D8BH3EDnApdpodgo.Y3stbhLa.h8zRSKQT7ehNQjJsuZWSE.',0,0),('Joey.htaccess.a','$2a$10$Hb8W6hVWQ21EWRhvuJ7GEugQgDS25G3KhfLMrXWw05KlfhuXvcDCK',0,0),('Joey</textarea>','$2a$10$4pMcwZ3GwnXFfmX6lAYUIuVsuLfYwmIcfFNuU7c7KQU2p29GbMT7e',0,0),('laurrain','$2a$10$OFNzqbzdo2vV3gMvuyv/f..xqCPyVeTf7hVbYBv5cAQqNJCLCBxoa',1,0),('lezinda','$2a$10$/yQi.zyhIqqUMl8Q9bTVHe/ubNU7FBxZIAf4a4l1T3khPb3AaKlqq',0,1),('link','$2a$10$uscj12Q/XFQ.gruXUfSo.eMNl8qbG688ksVF2t2qcJ8eohT2aEaia',0,0),('lisa','$2a$10$5WnDauQsDEuhCKHm2pTXwuPBCJSG607pX6.uDTOUQa9GVABSVUco.',0,0),('mama','$2a$10$O20bwyaAicIQ35MWcG28YuPW3z.OCvQ6.Tf6/jz9ol9CLHXuXoOSC',0,0),('me','$2a$10$kANZGkOSiEOQSypWSdje0Oi6q4GjYJiStYJnuG9exqagPjCi2H5t.',0,1),('nelisa','$2a$10$sdaGUhiXCTZNZ5h6UjMtCeckHXk8GiVHfaPk0rCqXU.iQFj0dFTiG',0,0),('rob123','$2a$10$plphdlTz9mAcCFiYOoLwjOHnxivBZ9RP2oE1whZhV0/A/QDavZxxa',0,0),('sandy','$2a$10$.tbxWhrWcDubB8pNH1aAzOFtqinac0IAvWXaPLBGcVYs7ktRu04M2',0,0),('sisonke','$2a$10$q4avXXu0HdlvgTMSdGNuouUz.90GtmFm41w1Ulj.1qv519HAxuR0i',0,1),('team','$2a$10$ci4Ljazh9wZj0Fb1.ky0TuZ2L7goK8jLm6p9MZbX7l65WM31Dc6ja',0,0),('Test','$2a$10$xEse/In/g/z7fKPpvcvRfu442TrZJf92xyB8eV9q0qclUGr3UNtw2',0,0),('thabo','$2a$10$.0jpD0swnizRpq/CCVAbR.TSWy3duskWIeRVQoHcVUGUqBdCyFs0C',0,0),('user','$2a$10$hXXHGbCp0t.U5k.sjnOqPORRkw9.XtmoTnrTepH5d93oNktObCUg.',1,0),('username','$2a$10$CvP3Yn/1yQJ64DyRQs0KEeDEC4po2BwnoDhWT5BJ.aiUWwKx5IAKi',0,0),('vbscript:vvv000','$2a$10$KXTUqP8rqCjeQ6mH9ZpoeOptDPJBowk8ZpEY8iLfgR1/8Ok2avSSq',0,0);
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

-- Dump completed on 2016-05-08  7:10:00
