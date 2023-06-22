-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: Spotify_2
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `aggregators`
--

DROP TABLE IF EXISTS `aggregators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aggregators` (
  `Agg_ID` varchar(5) NOT NULL,
  `Agg_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Agg_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregators`
--

LOCK TABLES `aggregators` WRITE;
/*!40000 ALTER TABLE `aggregators` DISABLE KEYS */;
INSERT INTO `aggregators` VALUES ('A1','DistroKid'),('A2','Tunecore'),('A3','CD Baby');
/*!40000 ALTER TABLE `aggregators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `Artist_ID` varchar(50) NOT NULL,
  `Artist_name` varchar(100) NOT NULL,
  `Artist_ISNI` varchar(20) DEFAULT NULL,
  `Label_ID` varchar(5) DEFAULT NULL,
  `AGG_ID` varchar(5) DEFAULT NULL,
  `PRO_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Artist_ID`),
  UNIQUE KEY `U_artist` (`Artist_name`),
  UNIQUE KEY `Un_artist` (`Artist_ISNI`),
  KEY `FK_Label_ID` (`Label_ID`),
  KEY `FK_Agg_ID` (`AGG_ID`),
  KEY `FK_PRO_ID` (`PRO_ID`),
  CONSTRAINT `FK_Agg_ID` FOREIGN KEY (`AGG_ID`) REFERENCES `aggregators` (`Agg_ID`),
  CONSTRAINT `FK_Label_ID` FOREIGN KEY (`Label_ID`) REFERENCES `labels` (`Label_ID`),
  CONSTRAINT `FK_PRO_ID` FOREIGN KEY (`PRO_ID`) REFERENCES `pros` (`PRO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES ('0DfTUSX2JjuGPVyO15yxg6','John Heddle Nash','4353462336973800ISNI','L6','A1','PR1'),('0DheT5irCjBTeLybbBDFZ2','John Cameron','1012567510426910ISNI','L1','A1','PR1'),('0DheY5irMjBUeLybbCUEZ2','George Butterworth','5414632385332340ISNI','L1','A1','PR1'),('0DlhY15l3wsrnlfGio2bjU','Roger Quilter','8320692224488870ISNI','L6','A1','PR1'),('0DmhnbHjm1qw6NCYPeZNgJ','Eslabon Armado','6445032451608620ISNI','L2','A1','PR2'),('0DmRESX2JknGPQyO15yxg7','Samuel Barber','3145746777679300ISNI','L6','A1','PR1'),('0Dn11fWM7vHQ3rinvWEl4E','Grupo Frontera & Bad Bunny','4097567510426910ISNI','L7','A1','PR2'),('0DotfDlYMGqkbzfBhcA5r6','Yng Lvcas & Peso Pluma','6391112450177350ISNI','L7','A1','PR3'),('0DpP3bOCiC23L8SR3gK4W9','Leontyne Price','6445032451608320ISNI','L6','A1','PR1'),('0DqP3bOCiC48L8SM9gK4W8','FIFTY FIFTY','4440320276818120ISNI','L7','A2','PR3'),('0Drs3maQb99iRglyTuxizI','Miley Cyrus','6397836754239780ISNI','L7','A2','PR3'),('0DsPeAi1gxPPnYjgpiEGSR','David Kushner','4353595233697380ISNI','L1','A1','PR3'),('0DtvnTxgZ9K5YaPS5jdlQW','SZA','4439974494268670ISNI','L1','A1','PR3'),('0Du4t8UK1lDO8TnOIa3c19','Loreen','5488513529315140ISNI','L1','A1','PR3'),('0DuJ5k2ERoAizEdgUzJGTc','Harry Styles','2277198756239400ISNI','L1','A2','PR3'),('0DujX6vG6qOz2wVBCQg5Vi','KAROL G','7993713473324010ISNI','L1','A3','PR3'),('0DurX6vG6qOz2wVBCQg5Vi','JalRaj','6391672450177350ISNI','L6','A1','PR2'),('0DvGSYDq5ikdlKgp46Yamq','Dhvani Bhanushali','4440320876818120ISNI','L6','A1','PR2'),('0DvvojCDIqsOZ1Btiwvq1h','Pritam','6393336754239780ISNI','L5','A1','PR2'),('0DvvojCMIqsOT1Btiwvq1h','Feid & Young Miko','4369840782322600ISNI','L1','A3','PR3'),('0DxsGcq4ILa7Ss2CmZfipk','Metro Boomin','1625572531534170ISNI','L1','A3','PR3'),('0DzfuBZVzDryD5ZqKla8EW','ROSALA & Rauw Alejandro','4110514274425500ISNI','L3','A2','PR4'),('0DzKNJPHYPMaLDxDVEuznX','Tyler The Creator','1149457139468140ISNI','L1','A3','PR3'),('0DzvgthIK2nmlAPE0A2Uvo','The Weeknd','4864214673812890ISNI','L3','A2','PR4'),('0E01IqK2Q0vhDHOrQHRoHr','Telycast','2752067831233830ISNI','L8','A2','PR4'),('0E01IqK2Q0vhDHOrQHRoHv','Peso Pluma & Natanael Cano','2432814194368650ISNI','L8','A2','PR4'),('0E0afUR6aObnzDTMvjMEuC','Yandel','7534098348048510ISNI','L9','A3','PR4'),('0E0eEzoo3nfBf5efmw6S1Q','Junior H & Peso Pluma','9818933670277910ISNI','L10','A3','PR4'),('0E0eEzoo3nfEf5efmw6S1E','Joseph Sullinger','4669840782322860ISNI','L1','A1','PR3'),('0E0n2GRFDjxWw3NiIAG8O3','PinkPantheress & Ice Spice','8654502641595830ISNI','L4','A3','PR4'),('0E0n2GRFPjxWw3NiIAG8O6','Matt Nathanson','2318784466642420ISNI','L1','A2','PR3'),('0E0rEzod6nfBf5ffmw6S1Q','Donato Dozzi','2354098348048510ISNI','L8','A2','PR4'),('0E0SpAZoIxSSvBefCBLfUB','Rema','9842067831233830ISNI','L8','A2','PR4'),('0E1g9toY6vQ4ANdEWV3H2o','Taylor Swift','7982458515704630ISNI','L4','A3','PR4'),('0E2f4liezEM9Q9OpIovTXJ','Arctic Monkeys','8099752980188250ISNI','L5','A3','PR1'),('0E3abAxpm40VzlkhFxBhUc','Lil Durk & J. Cole','5331221674640940ISNI','L5','A3','PR1'),('0E3hfspo8Y6JaVY7hx9Dbw','Morgan Wallen','9644135390070870ISNI','L5','A3','PR1'),('0E5hfspo9Y6JbVY7hx9Dbd','Gan','9791344994179010ISNI','L5','A3','PR1');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists_song`
--

DROP TABLE IF EXISTS `artists_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists_song` (
  `Artist_ID` varchar(50) NOT NULL,
  `Song_ID` varchar(5) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Artist_Percentage` int DEFAULT '100',
  PRIMARY KEY (`Artist_ID`,`Song_ID`),
  KEY `FK_Arts_SngsS` (`Song_ID`),
  CONSTRAINT `FK_Arts_SngsA` FOREIGN KEY (`Artist_ID`) REFERENCES `artists` (`Artist_ID`),
  CONSTRAINT `FK_Arts_SngsS` FOREIGN KEY (`Song_ID`) REFERENCES `songs` (`Song_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists_song`
--

LOCK TABLES `artists_song` WRITE;
/*!40000 ALTER TABLE `artists_song` DISABLE KEYS */;
INSERT INTO `artists_song` VALUES ('0DfTUSX2JjuGPVyO15yxg6','VOEO0','Author',40),('0DheT5irCjBTeLybbBDFZ2','LLB1H','Author',50),('0DheY5irMjBUeLybbCUEZ2','LLB1H','Author',50),('0DlhY15l3wsrnlfGio2bjU','VOEO0','Author',60),('0DmhnbHjm1qw6NCYPeZNgJ','I1WX9','Singer',70),('0DmRESX2JknGPQyO15yxg7','SRUNK','Author',50),('0Dn11fWM7vHQ3rinvWEl4E','OTHR0','Singer',100),('0DotfDlYMGqkbzfBhcA5r6','KDEZT','Singer',100),('0DpP3bOCiC23L8SR3gK4W9','SRUNK','Author',50),('0DqP3bOCiC48L8SM9gK4W8','MBBA8','Singer',100),('0Drs3maQb99iRglyTuxizI','GPDD6','Singer',100),('0DsPeAi1gxPPnYjgpiEGSR','DBKZD','Singer',100),('0DtvnTxgZ9K5YaPS5jdlQW','54JZO','Singer',100),('0Du4t8UK1lDO8TnOIa3c19','DO68V','Singer',70),('0DuJ5k2ERoAizEdgUzJGTc','PWBGV','Singer',100),('0DujX6vG6qOz2wVBCQg5Vi','AHO5P','Singer',100),('0DurX6vG6qOz2wVBCQg5Vi','I1WX9','Guitar',10),('0DvGSYDq5ikdlKgp46Yamq','I1WX9','Drums',10),('0DvvojCDIqsOZ1Btiwvq1h','I1WX9','Piano',10),('0DvvojCMIqsOT1Btiwvq1h','4YR6M','Singer',100),('0DxsGcq4ILa7Ss2CmZfipk','HMJY9','Singer',100),('0DzfuBZVzDryD5ZqKla8EW','J63UD','Singer',100),('0DzKNJPHYPMaLDxDVEuznX','57RZC','Singer',100),('0DzvgthIK2nmlAPE0A2Uvo','EULW4','Author',100),('0E01IqK2Q0vhDHOrQHRoHr','QZG7H','Author',100),('0E01IqK2Q0vhDHOrQHRoHv','YIQGP','Singer',100),('0E0afUR6aObnzDTMvjMEuC','1NGZE','Singer',100),('0E0eEzoo3nfBf5efmw6S1Q','YFK4N','Singer',100),('0E0eEzoo3nfEf5efmw6S1E','DO68V','Studio Production',20),('0E0n2GRFDjxWw3NiIAG8O3','IH7ML','Singer',100),('0E0n2GRFPjxWw3NiIAG8O6','DO68V','Guitar',10),('0E0rEzod6nfBf5ffmw6S1Q','T8EMN','Author',100),('0E0SpAZoIxSSvBefCBLfUB','TQ6G7','Singer',100),('0E1g9toY6vQ4ANdEWV3H2o','VX2KJ','Singer',100),('0E2f4liezEM9Q9OpIovTXJ','8R9S0','Singer',100),('0E2KoM6UMbdCUigMup7Mm5','PUKYE','Singer',100),('0E3abAxpm40VzlkhFxBhUc','GW53D','Singer',100),('0E3hfspo8Y6JaVY7hx9Dbw','KOSC3','Singer',100),('0E5hfspo9Y6JbVY7hx9Dbd','B58ID','Singer',100);
/*!40000 ALTER TABLE `artists_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `Country_ID` int NOT NULL AUTO_INCREMENT,
  `Country_Name` varchar(40) NOT NULL,
  `Territory_Code` varchar(3) NOT NULL,
  PRIMARY KEY (`Country_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Netherlands','NE'),(2,'Germany','GE'),(3,'Australia','AU'),(4,'New Zealand','NZ'),(5,'Panama','PA'),(6,'Chile','CH'),(7,'Taiwan','TA'),(8,'South Africa','SA'),(9,'Japan','JA'),(10,'Italy','IT'),(11,'Spain','SP'),(12,'Argentina','AR');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labels` (
  `Label_ID` varchar(5) NOT NULL,
  `Label_Name` varchar(40) NOT NULL,
  `Publisher_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Label_ID`),
  KEY `FK_Publisher_ID` (`Publisher_ID`),
  CONSTRAINT `FK_Publisher_ID` FOREIGN KEY (`Publisher_ID`) REFERENCES `publishers` (`Publisher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES ('L1','Parlophone','P2'),('L10','Mercury Records','P3'),('L2','Big Beat Records','P2'),('L3','Cat Records','P2'),('L4','Hip Hop REcords','P4'),('L5','Cult Records','P4'),('L6','Hypnotize Minds','P1'),('L7','Freebandz','P1'),('L8','Blue Note Records','P3'),('L9','mau5trap','P3');
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `netherlands_streams`
--

DROP TABLE IF EXISTS `netherlands_streams`;
/*!50001 DROP VIEW IF EXISTS `netherlands_streams`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `netherlands_streams` AS SELECT 
 1 AS `Song_ID`,
 1 AS `Artist_Id`,
 1 AS `Stream_ID`,
 1 AS `Artist_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pros`
--

DROP TABLE IF EXISTS `pros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pros` (
  `PRO_ID` varchar(5) NOT NULL,
  `PRO_Name` varchar(30) NOT NULL,
  PRIMARY KEY (`PRO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pros`
--

LOCK TABLES `pros` WRITE;
/*!40000 ALTER TABLE `pros` DISABLE KEYS */;
INSERT INTO `pros` VALUES ('PR1','PRS'),('PR2','ASCAP'),('PR3','SESAC'),('PR4','SOCAN'),('PR5','BMI');
/*!40000 ALTER TABLE `pros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `Publisher_ID` varchar(5) NOT NULL,
  `Publisher_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Publisher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES ('P1','Sony'),('P2','Warner Music Group'),('P3','Universal Music Group'),('P4','Kobalt Music');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `royalties`
--

DROP TABLE IF EXISTS `royalties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `royalties` (
  `Payment_Id` int NOT NULL,
  `Artist_ISNI_code` char(20) DEFAULT NULL,
  `Stream_pay` int DEFAULT NULL,
  `Royalties_earned` int DEFAULT NULL,
  `Monthly_streams` int DEFAULT NULL,
  PRIMARY KEY (`Payment_Id`),
  KEY `fk_royalties` (`Artist_ISNI_code`),
  CONSTRAINT `fk_royalties` FOREIGN KEY (`Artist_ISNI_code`) REFERENCES `artists` (`Artist_ISNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `royalties`
--

LOCK TABLES `royalties` WRITE;
/*!40000 ALTER TABLE `royalties` DISABLE KEYS */;
INSERT INTO `royalties` VALUES (1,'6391672450177350ISNI',2,60,30),(2,'6397836754239780ISNI',1,0,0);
/*!40000 ALTER TABLE `royalties` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Royalties_calculation` BEFORE UPDATE ON `royalties` FOR EACH ROW BEGIN
	IF new.Monthly_streams > 0 THEN
	SET NEW.Royalties_earned = (NEW.Monthly_streams * NEW.Stream_pay);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `Song_ID` varchar(5) NOT NULL,
  `Song_ISRC` varchar(12) DEFAULT NULL,
  `Song_URL` varchar(200) NOT NULL,
  `Song_Title` varchar(150) NOT NULL,
  `Split` tinyint(1) NOT NULL,
  `Song_Genre` varchar(50) DEFAULT NULL,
  `Release_date` date NOT NULL,
  `Work_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  KEY `FK_Work_ID` (`Work_ID`),
  CONSTRAINT `FK_Work_ID` FOREIGN KEY (`Work_ID`) REFERENCES `works` (`Work_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES ('1NGZE','USJ3V1127785','https://open.spotify.com/track/7nD2JPaxIKUdxd2UWgnaGL','Yandel 150',0,'dance pop','2022-04-22','W23'),('4YR6M','USA560785824','https://open.spotify.com/track/0sSG83UxY15ft1E2N9THYF','Classy 101',0,'emo rap','2022-10-21','W14'),('54JZO','USIR20400097','https://open.spotify.com/track/2cKiHG16JBiqHdi7Llq0r7','Kill Bill',0,'dance pop','2020-03-24','W10'),('8R9S0','ES8401303322','https://open.spotify.com/track/3Ga6eKrUFf12ouh9Yw3v2D','I Wanna Be Yours',0,'brostep','2020-01-27','W28'),('AHO5P','AULI00511230','https://open.spotify.com/track/2cKiHG16JBiqHdi7Llq0r7','TQG',0,'dfw rap','2020-02-10','W13'),('B58ID','MXF551003229','https://open.spotify.com/track/5FOCkGt7bp22nBVfQ4WSIT','I Wanna Be Yours (Gan remix)',0,'dance pop','2013-06-17','W29'),('CTJY6','FRZ028780030','https://open.spotify.com/track/0sSG83UxY15ft1E2N9THYF','See You Again (feat. Kali Uchis)',0,'melodic rap','2020-05-12','W16'),('DBKZD','DEF058630723','https://open.spotify.com/track/2cKiHG16JBiqHdi7Llq0r7','Daylight',0,'neo soul','2017-07-21','W9'),('DO68V','GBAAA8700473','https://open.spotify.com/track/2cKiHG16JBiqHdi7Llq0r7','Tattoo',1,'emo rap','2020-03-14','W11'),('EULW4','ATA110970109','https://open.spotify.com/track/0sSG83UxY15ft1E2N9THYF','Die For You ',0,'canadian contemporary r&b','2022-08-26','W18'),('GG1G7','USS1Z9900001','https://open.spotify.com/track/77wz2VtAwxAwYOGTJrZBKT','A Shropshire Lad: Oh Fair Enough are Sky and Plain',1,'pop','2020-04-17','W1'),('GPDD6','DKARS8703805','https://open.spotify.com/track/4Z63BQquxqpBi7CxpaGji4','Flowers',0,'chicago rap','2022-12-02','W8'),('GW53D','GBLLH1019617','https://open.spotify.com/track/05rJdH2MRLJ3sQoEUO78qs','All My Life (feat. J. Cole)',0,'dance pop','2016-11-25','W30'),('HMJY9','USHM81048874','https://open.spotify.com/track/0sSG83UxY15ft1E2N9THYF','Creepin (with The Weeknd & 21 Savage)',0,'modern rock','2023-09-09','W15'),('I1WX9','USIR20400095','https://open.spotify.com/track/2iUXsYOEPhVqEBwsqP70rE','Ella Baila Sola',1,'electropop','2022-12-08','W4'),('IH7ML','TCAFJ2103233','https://open.spotify.com/track/4CCYUYAzFBvD2omNu9EGPI','Boy s a Liar Pt. 2',0,'modern rock','2020-03-03','W25'),('J63UD','JPU901000129','https://open.spotify.com/track/0sSG83UxY15ft1E2N9THYF','BESO',0,'melodic rap','2020-03-03','W17'),('KDEZT','USSM19919606','https://open.spotify.com/track/7ATATJztoWLcqDAcVVof0C','La Bebe',0,'electropop','2020-03-31','W6'),('KOSC3','GBLLH1019625','https://open.spotify.com/track/05rJdH2MRLJ3sQoEUO78qs','Last Night',0,'pop rap','2021-06-11','W31'),('MBBA8','NOX9X3975609','https://open.spotify.com/track/3ayrHkyorPEpeOBvZ76SwG','Cupid - Twin Ver.',0,'pop','2020-05-11','W7'),('OTHR0','QM4TX2168287','https://open.spotify.com/track/7ATATJztoWLcqDAcVVof0C','un x100to',0,'dancepop','2020-01-17','W5'),('PUKYE','ITI730901015','https://open.spotify.com/track/3FhWEh7VTAOYK4edZqNWNB','Die For You',0,'irish singer-songwriter','2020-01-11','W27'),('PWBGV','USCA28701084','https://open.spotify.com/track/2cKiHG16JBiqHdi7Llq0r7','As It Was',0,'north carolina hip hop','2020-01-13','W12'),('QZG7H','GBGLM1000047','https://open.spotify.com/track/5h8VHxOBK1VWWj46T8fSly','Die For You - Remix',0,'dfw rap','2022-11-24','W19'),('SRUNK','USHM20419489','https://open.spotify.com/track/2iUXsYOEPhVqEBwsqP70rE','Hermit Songs, Op. 29: Promiscuity',1,'pop','2020-03-10','W3'),('T8EMN','USJ3V1291715','https://open.spotify.com/track/5h8VHxOBK1VWWj46T8fSly','Die For You - Remix',0,'pop','2022-09-22','W20'),('TQ6G7','GBUM70603108','https://open.spotify.com/track/7nD2JPaxIKUdxd2UWgnaGL','Calm Down (with Selena Gomez)',0,'canadian pop','2022-09-23','W22'),('VOEO0','USV291493372','https://open.spotify.com/track/77wz2VtAwxAwYOGTJrZBKT','It Was a Lover and His Lass',1,'cali rap','2020-03-17','W2'),('VX2KJ','DEBL61072263','https://open.spotify.com/track/4CCYUYAzFBvD2omNu9EGPI','Anti-Hero',0,'melodic rap','2019-08-23','W26'),('YFK4N','USCGJ1017202','https://open.spotify.com/track/1BSsv8bVGdxyvW0NPiZy1A','El Azul',0,'dance pop','2020-03-24','W24'),('YIQGP','USIR20400096','https://open.spotify.com/track/2b3JxLi8KAiOsD8ehnOxDZ','PRC',0,'canadian contemporary r&b','2020-11-27','W21');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams`
--

DROP TABLE IF EXISTS `streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streams` (
  `Stream_ID` varchar(10) NOT NULL,
  `Stream_Date` date NOT NULL,
  `Country_ID` int NOT NULL,
  `Song_ID` varchar(5) NOT NULL,
  PRIMARY KEY (`Stream_ID`),
  KEY `FK_Country_ID` (`Country_ID`),
  KEY `FK_Song_ID` (`Song_ID`),
  CONSTRAINT `FK_Country_ID` FOREIGN KEY (`Country_ID`) REFERENCES `countries` (`Country_ID`),
  CONSTRAINT `FK_Song_ID` FOREIGN KEY (`Song_ID`) REFERENCES `songs` (`Song_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams`
--

LOCK TABLES `streams` WRITE;
/*!40000 ALTER TABLE `streams` DISABLE KEYS */;
INSERT INTO `streams` VALUES ('S100','2023-06-18',12,'8R9S0'),('S101','2022-10-07',12,'TQ6G7'),('S103','2022-05-12',12,'8R9S0'),('S104','2023-04-10',12,'4YR6M'),('S105','2022-10-07',12,'YFK4N'),('S106','2022-10-07',12,'KOSC3'),('S107','2023-05-12',12,'PUKYE'),('S108','2022-12-15',12,'KOSC3'),('S11','2022-10-10',6,'OTHR0'),('S12','2023-01-13',7,'KDEZT'),('S13','2023-01-13',8,'MBBA8'),('S14','2023-01-13',9,'GPDD6'),('S15','2023-01-13',9,'DBKZD'),('S16','2022-10-10',9,'54JZO'),('S17','2023-05-12',9,'DO68V'),('S2','2023-06-13',1,'GG1G7'),('S20','2023-06-07',10,'PWBGV'),('S21','2023-06-07',10,'AHO5P'),('S22','2023-06-07',10,'4YR6M'),('S23','2023-06-07',10,'HMJY9'),('S24','2023-05-12',10,'CTJY6'),('S25','2022-10-10',10,'J63UD'),('S26','2022-10-10',10,'EULW4'),('S27','2022-10-10',10,'QZG7H'),('S28','2023-06-22',4,'T8EMN'),('S29','2023-06-22',4,'YIQGP'),('S3','2023-02-05',2,'VOEO0'),('S30','2023-06-22',4,'TQ6G7'),('S31','2022-10-07',4,'1NGZE'),('S32','2022-10-07',4,'YFK4N'),('S33','2022-10-07',5,'IH7ML'),('S34','2023-06-13',5,'VX2KJ'),('S35','2023-06-13',5,'PUKYE'),('S36','2023-06-13',10,'8R9S0'),('S37','2023-05-23',6,'B58ID'),('S38','2023-05-23',6,'GW53D'),('S39','2023-06-07',6,'KOSC3'),('S40','2023-06-07',6,'VOEO0'),('S41','2023-05-12',6,'KOSC3'),('S42','2023-06-07',6,'B58ID'),('S44','2023-06-07',6,'8R9S0'),('S45','2023-06-07',7,'VOEO0'),('S46','2023-06-07',7,'GW53D'),('S47','2023-01-13',7,'1NGZE'),('S49','2023-01-13',7,'YIQGP'),('S5','2022-10-10',3,'SRUNK'),('S50','2023-06-01',7,'VOEO0'),('S51','2023-06-01',7,'B58ID'),('S52','2023-05-23',7,'GW53D'),('S53','2023-05-23',7,'IH7ML'),('S54','2023-06-01',7,'YFK4N'),('S55','2023-06-01',7,'T8EMN'),('S56','2022-12-15',7,'T8EMN'),('S57','2022-12-15',8,'YFK4N'),('S58','2022-12-15',8,'HMJY9'),('S59','2023-06-20',8,'HMJY9'),('S60','2023-06-20',8,'QZG7H'),('S62','2023-05-12',8,'EULW4'),('S63','2023-06-22',8,'B58ID'),('S64','2023-06-22',8,'VX2KJ'),('S65','2023-01-13',10,'EULW4'),('S66','2023-06-13',10,'B58ID'),('S67','2023-06-13',10,'EULW4'),('S68','2023-06-20',10,'GW53D'),('S69','2023-05-23',10,'GW53D'),('S7','2023-05-23',5,'I1WX9'),('S70','2023-05-23',1,'J63UD'),('S71','2023-04-10',6,'VOEO0'),('S72','2023-06-01',7,'SRUNK'),('S74','2023-01-28',3,'J63UD'),('S75','2023-01-28',3,'AHO5P'),('S76','2023-04-10',3,'HMJY9'),('S77','2023-01-28',3,'IH7ML'),('S78','2023-01-28',3,'HMJY9'),('S79','2023-02-05',3,'YFK4N'),('S80','2023-02-05',2,'VOEO0'),('S81','2023-02-05',2,'YFK4N'),('S82','2023-01-28',10,'YFK4N'),('S83','2023-05-12',10,'VOEO0'),('S84','2023-01-28',10,'YFK4N'),('S85','2023-04-10',10,'VOEO0'),('S86','2022-12-15',10,'VOEO0'),('S87','2023-01-28',9,'VOEO0'),('S88','2023-01-28',9,'IH7ML'),('S89','2023-05-23',9,'IH7ML'),('S90','2023-05-23',9,'VOEO0'),('S91','2023-05-23',9,'4YR6M'),('S93','2023-06-18',9,'VX2KJ'),('S94','2023-06-18',9,'SRUNK'),('S96','2022-12-15',11,'PUKYE'),('S97','2023-01-28',11,'CTJY6'),('S99','2023-06-18',12,'PUKYE');
/*!40000 ALTER TABLE `streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works` (
  `Work_ID` varchar(5) NOT NULL,
  `Work_ISWC` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Work_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES ('W1','T-345.246.800-1'),('W10','T-061.515.074-7'),('W11','T-914.539.845-4'),('W12','T-915.547.895-8'),('W13','T-916.065.600-8'),('W14','T-703.350.188-3'),('W15','T-917.103.586-2'),('W16','T-922.798.208-3'),('W17','T-905.027.379-5'),('W18','T-904.810.115-1'),('W19','T-903.157.473-9'),('W2','T-072.338.519-0'),('W20','T-200.687.562-0'),('W21','T-200.348.920-8'),('W22','T-010.149.902-8'),('W23','T-801.922.746-5'),('W24','T-800.579.671-5'),('W25','T-801.117.732-6'),('W26','T-306.279.620-3'),('W27','T-304.930.966-8'),('W28','T-304.906.040-0'),('W29','T-304.577.319-7'),('W3','T-200.351.764-1'),('W30','T-303.846.142-2'),('W31','T-923.275.236-2'),('W4','T-006.248.395-7'),('W5','T-039.011.493-8'),('W6','T-905.269.612-5'),('W7','T-906.342.997-0'),('W8','T-914.151.606-5'),('W9','T-037.532.332-2');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `netherlands_streams`
--

/*!50001 DROP VIEW IF EXISTS `netherlands_streams`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `netherlands_streams` AS select `artists_song`.`Song_ID` AS `Song_ID`,`artists_song`.`Artist_ID` AS `Artist_Id`,`streams`.`Stream_ID` AS `Stream_ID`,`artists`.`Artist_name` AS `Artist_Name` from ((`artists_song` join `streams` on((`artists_song`.`Song_ID` = `streams`.`Song_ID`))) join `artists` on((`artists`.`Artist_ID` = `artists_song`.`Artist_ID`))) where (`streams`.`Country_ID` = '2') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-22 14:01:52
