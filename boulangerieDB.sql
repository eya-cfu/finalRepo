-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: boulangerieDB
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `administrateurs`
--

DROP TABLE IF EXISTS `administrateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_admin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_admin` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_admin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tele_admin` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrateurs`
--

LOCK TABLES `administrateurs` WRITE;
/*!40000 ALTER TABLE `administrateurs` DISABLE KEYS */;
INSERT INTO `administrateurs` VALUES (955,'Natasha','Kerluke','Miss Modesta Davis DVM',493180),(956,'Gloria','Nienow','Amira Zemlak Jr.',578522),(957,'Marty','Smitham','Daniela Heller IV',326183),(958,'Regan','Jacobson','Candelario Sanford I',790354),(959,'Brady','Roob','Prof. Micheal Gerhold',499128),(960,'Gilbert','Wilkinson','Linnie Lemke',810510),(961,'Howard','Hammes','Ardith Hudson',886358),(962,'Yadira','Konopelski','Christop Simonis',677158),(963,'Alford','Schiller','Lorna Kutch',148433),(964,'Cara','Boehm','Lawrence Harber',683714),(965,'Wilma','Labadie','Sadye Connelly',691940),(966,'Ardith','Murazik','Maxime Jacobs Sr.',758238),(967,'Keyon','Kub','Kamron Abernathy',265538),(968,'Rosa','Schaefer','Betsy Gulgowski',632323),(969,'Rhiannon','Nolan','Randi Davis MD',46060),(970,'Lottie','Rau','Helga Huel',824182),(971,'Ibrahim','Wintheiser','Sarina Dickens PhD',564867),(972,'Scottie','Kohler','Lucie Lowe',110302),(973,'Katherine','Pagac','Earlene Nitzsche',69489),(974,'Jena','Greenfelder','Damian Bergstrom Sr.',630552),(975,'Arlie','Gibson','Rico Rippin IV',97730),(976,'Taylor','Howell','Raquel Conn',462409),(977,'Rolando','Miller','Prof. Lewis Hammes DDS',704532),(978,'Rachelle','Rowe','Amelie Wintheiser',666020),(979,'Melvin','Abernathy','Jarrett Huel',212648),(980,'Rahsaan','Cummings','Brycen Dickinson',944525),(981,'Rosemarie','Greenfelder','Ignatius Hamill',498512),(982,'Frederique','Murray','Mrs. Kaylee Hane V',140612),(983,'Hayden','Lowe','Dr. Marquis O\'Kon III',510984),(984,'Nick','Schowalter','Prof. Emmet Bartoletti',595301),(985,'Brionna','Deckow','Jonathan Jacobson',50568),(986,'Dallin','Stroman','Dr. Tracey Runolfsson MD',313415),(987,'Eldora','Robel','Devonte Stroman',877650),(988,'Micaela','Homenick','Dr. Lukas Barrows',105312),(989,'Walter','Lynch','Jeremy Friesen',261248),(990,'Jerad','Ratke','Chet Lehner',739450),(991,'Jaylon','Casper','Timothy Armstrong',728805),(992,'Ivah','McCullough','Nestor Schumm',946466),(993,'Nicholaus','Quitzon','Wilfrid Cruickshank',293385),(994,'Lucie','Hessel','Morgan Turcotte PhD',943157),(995,'Thalia','Robel','Isom Koepp I',193753),(996,'Desiree','Morissette','Ms. Christine Cassin DVM',849040),(997,'Destini','Keebler','Ms. Christa Brekke',401345),(998,'Jannie','Kuhic','Mr. Brook Bogisich',948700),(999,'Retha','Hansen','Gerry Senger',89291),(1000,'Delores','Jacobi','Adrianna Mills V',305217),(1001,'Durward','Gibson','Destiny Walsh',685876),(1002,'Missouri','Quitzon','Jordan Goodwin',278842),(1003,'Lonie','Stiedemann','Karina Kuvalis',471206),(1004,'Reyes','Bartell','Dr. Saige Swaniawski',560926);
/*!40000 ALTER TABLE `administrateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boulangeries`
--

DROP TABLE IF EXISTS `boulangeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boulangeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule_id` int(11) DEFAULT NULL,
  `nom_boul` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` bigint(20) NOT NULL,
  `id_boulangerie` int(11) DEFAULT NULL,
  `nb_operateurs` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2FA1DF49AAADC05` (`matricule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boulangeries`
--

LOCK TABLES `boulangeries` WRITE;
/*!40000 ALTER TABLE `boulangeries` DISABLE KEYS */;
INSERT INTO `boulangeries` VALUES (955,1208,'Concepcion Schiller','Moccasin',323,NULL,1807,0),(956,1209,'Miss Rahsaan Prosacco I','Gray',864,NULL,9269,0),(957,1210,'Mr. Davin Kunze','DimGrey',156,NULL,2447,0),(958,1211,'Mr. Antwan Champlin','SkyBlue',194,NULL,6120,0),(959,1212,'Jacklyn Weissnat PhD','Turquoise',825,NULL,6378,0),(960,1213,'Dr. Jordyn Weimann MD','Purple',533,NULL,3320,0),(961,1214,'Cole Roob','LightSeaGreen',835,NULL,5614,0),(962,1215,'Maya White','Blue',133,NULL,2352,0),(963,1216,'Dr. Vivien Johns','Lavender',568,NULL,1764,0),(964,1217,'Ms. Amelia Bednar','LightBlue',745,NULL,4372,0),(965,1218,'Mr. Skye Kuhn','Teal',966,NULL,6655,0),(966,1219,'Lukas Bradtke','BlanchedAlmond',595,NULL,9308,0),(967,1220,'Rahsaan Wiza','CadetBlue',952,NULL,8000,0),(968,1221,'Tess Lebsack II','DarkBlue',445,NULL,3941,0),(969,1222,'Pearlie Dibbert','FloralWhite',182,NULL,4482,0),(970,1223,'Arno Hegmann','YellowGreen',705,NULL,6720,0),(971,1224,'Mr. Kayley Casper','AntiqueWhite',696,NULL,1177,0),(972,1225,'Elody Gislason','LightGray',151,NULL,3511,0),(973,1226,'Nicolette Boyer','MediumAquaMarine',755,NULL,6187,0),(974,1227,'Chelsey Quitzon','Turquoise',289,NULL,7564,0),(975,1228,'Augusta Kiehn','PaleVioletRed',631,NULL,4154,0),(976,1229,'Aron Bogisich MD','Gainsboro',954,NULL,1356,0),(977,1230,'Ms. Marian Howell','Red',570,NULL,9574,0),(978,1231,'Toby Larson','MediumTurquoise',440,NULL,8800,0),(979,1232,'King Dibbert','PaleGoldenRod',200,NULL,7435,0),(980,1233,'Rae Johns PhD','DarkSalmon',371,NULL,6517,0),(981,1234,'Stanton Abshire DVM','Bisque',297,NULL,6599,0),(982,1235,'Anissa Gerhold','Gray',600,NULL,4718,0),(983,1236,'Judd Walter Jr.','Moccasin',810,NULL,7770,0),(984,1237,'Wilson Zulauf PhD','SeaGreen',152,NULL,1054,0),(985,1238,'Levi Wuckert','Orange',240,NULL,9739,0),(986,1239,'Alden Christiansen','LightSlateGray',561,NULL,8549,0),(987,1240,'Dr. Maybelle Beahan','HotPink',611,NULL,1973,0),(988,1241,'Mrs. Cecilia Maggio','Orchid',352,NULL,2816,0),(989,1242,'Maurice Nicolas','DarkViolet',520,NULL,5346,0),(990,1243,'Ervin Mertz PhD','OldLace',388,NULL,4115,0),(991,1244,'Lennie Reichel','Moccasin',515,NULL,1623,0),(992,1245,'Flavio Feeney','Sienna',998,NULL,5891,0),(993,1246,'Prof. Brant Gorczany DVM','Violet',983,NULL,7297,0),(994,1247,'Jeanie Rath','Beige',830,NULL,1257,0),(995,1248,'Miss Olga Beatty Sr.','Aqua',544,NULL,6677,0),(996,1249,'Bruce Hickle Jr.','LightSteelBlue',342,NULL,6994,0),(997,1250,'Marcelina Abbott','LightSkyBlue',318,NULL,2230,0),(998,1251,'Dr. Tito Paucek V','Moccasin',392,NULL,7643,0),(999,1252,'Nathanael Powlowski III','Wheat',714,NULL,1427,0),(1000,1253,'Arlo Stanton','DarkKhaki',856,NULL,6084,0),(1001,1254,'Jerrell Jacobson','LightPink',537,NULL,3323,0),(1002,1255,'Ona Schuster','GoldenRod',329,NULL,6297,0),(1003,1256,'Mr. Xavier Frami','Red',287,NULL,8303,0),(1004,1257,'Mr. Uriel Jones','SaddleBrown',683,NULL,3205,0);
/*!40000 ALTER TABLE `boulangeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandes_bl`
--

DROP TABLE IF EXISTS `commandes_bl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commandes_bl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_boulangerie_id` int(11) DEFAULT NULL,
  `livreur_id` int(11) DEFAULT NULL,
  `id_commande_bl` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_66DA931FA0DE2F48` (`id_boulangerie_id`),
  KEY `IDX_66DA931FF8646701` (`livreur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=960 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes_bl`
--

LOCK TABLES `commandes_bl` WRITE;
/*!40000 ALTER TABLE `commandes_bl` DISABLE KEYS */;
INSERT INTO `commandes_bl` VALUES (860,955,801,'DarkMagenta','nouvelle','1988-01-27','2020-03-20'),(861,955,801,'DarkSlateBlue','nouvelle','1996-03-30','2013-04-12'),(862,956,802,'MediumOrchid','nouvelle','1980-02-25','2020-03-20'),(863,956,802,'SkyBlue','nouvelle','1981-07-10','1993-09-07'),(864,957,803,'Moccasin','nouvelle','1999-06-22','2020-03-20'),(865,957,803,'LightSteelBlue','nouvelle','1970-06-23','2005-09-04'),(866,958,804,'MediumBlue','nouvelle','2006-09-09','2020-03-20'),(867,958,804,'OrangeRed','nouvelle','2003-01-27','1983-05-08'),(868,959,805,'CornflowerBlue','nouvelle','1998-11-14','2020-03-20'),(869,959,805,'Chocolate','nouvelle','2001-10-29','1974-09-14'),(870,960,806,'MidnightBlue','nouvelle','1991-11-03','2020-03-20'),(871,960,806,'Azure','nouvelle','1980-07-01','1971-04-10'),(872,961,807,'DimGrey','nouvelle','1986-02-09','2020-03-20'),(873,961,807,'DarkSlateBlue','nouvelle','2009-07-03','2019-01-17'),(874,962,808,'AliceBlue','nouvelle','1993-02-04','2020-03-20'),(875,962,808,'PeachPuff','nouvelle','2011-12-27','2009-09-11'),(876,963,809,'Tomato','nouvelle','2010-07-04','2020-03-20'),(877,963,809,'DarkSlateBlue','nouvelle','1976-03-16','1974-04-13'),(878,964,810,'Maroon','nouvelle','2013-02-23','2020-03-20'),(879,964,810,'AntiqueWhite','nouvelle','2000-01-14','1986-05-18'),(880,965,811,'Lime','nouvelle','2015-07-09','2020-03-20'),(881,965,811,'Turquoise','nouvelle','2001-03-01','2009-03-30'),(882,966,812,'AliceBlue','nouvelle','2017-06-25','2020-03-20'),(883,966,812,'Brown','nouvelle','1979-09-30','2001-05-10'),(884,967,813,'Aqua','nouvelle','1978-04-13','2020-03-20'),(885,967,813,'Thistle','nouvelle','1980-01-29','1987-08-20'),(886,968,814,'MediumAquaMarine','nouvelle','1973-08-05','2020-03-20'),(887,968,814,'Turquoise','nouvelle','1972-06-26','2017-03-19'),(888,969,815,'DarkTurquoise','nouvelle','2003-09-03','2020-03-20'),(889,969,815,'DarkMagenta','nouvelle','1982-12-30','1993-11-06'),(890,970,816,'OliveDrab','nouvelle','2007-03-26','2020-03-20'),(891,970,816,'Indigo','nouvelle','2016-09-14','1987-06-27'),(892,971,817,'MediumSeaGreen','nouvelle','1981-09-20','2020-03-20'),(893,971,817,'PaleTurquoise','nouvelle','2003-04-06','2012-06-20'),(894,972,818,'White','nouvelle','1983-07-27','2020-03-20'),(895,972,818,'Bisque','nouvelle','1996-03-09','1978-11-28'),(896,973,819,'RosyBrown','nouvelle','1992-02-09','2020-03-20'),(897,973,819,'Cyan','nouvelle','1971-07-13','1998-12-10'),(898,974,820,'Plum','nouvelle','2006-02-21','2020-03-20'),(899,974,820,'MistyRose','nouvelle','1983-05-15','1994-07-28'),(900,975,821,'RosyBrown','nouvelle','2015-04-24','2020-03-20'),(901,975,821,'Pink','nouvelle','2017-02-17','2005-09-03'),(902,976,822,'MediumOrchid','nouvelle','1974-01-21','2020-03-20'),(903,976,822,'SaddleBrown','nouvelle','2015-08-29','2007-12-18'),(904,977,823,'PaleGreen','nouvelle','2001-12-08','2020-03-20'),(905,977,823,'HotPink','nouvelle','1982-10-13','2006-11-24'),(906,978,824,'Gray','nouvelle','1990-12-20','2020-03-20'),(907,978,824,'DarkViolet','nouvelle','1979-07-02','2001-08-11'),(908,979,825,'DodgerBlue','nouvelle','1987-12-17','2020-03-20'),(909,979,825,'OrangeRed','nouvelle','1999-11-01','2008-12-04'),(910,980,826,'FireBrick','nouvelle','1976-08-27','2020-03-20'),(911,980,826,'LightGoldenRodYellow','nouvelle','1976-04-22','1982-07-09'),(912,981,827,'Linen','nouvelle','2001-08-14','2020-03-20'),(913,981,827,'DimGray','nouvelle','2003-09-18','2020-04-09'),(914,982,828,'Thistle','nouvelle','1997-03-28','2020-03-20'),(915,982,828,'Bisque','nouvelle','1975-11-24','1972-02-13'),(916,983,829,'DarkSlateGray','nouvelle','1994-01-27','2020-03-20'),(917,983,829,'LawnGreen','nouvelle','1990-04-14','2018-11-23'),(918,984,830,'DarkSlateGray','nouvelle','1987-06-02','2020-03-20'),(919,984,830,'PapayaWhip','nouvelle','2015-05-12','1970-02-26'),(920,985,831,'Silver','nouvelle','1997-09-29','2020-03-20'),(921,985,831,'MistyRose','nouvelle','2005-06-03','1999-09-11'),(922,986,832,'LightYellow','nouvelle','2003-11-22','2020-03-20'),(923,986,832,'LightSalmon','nouvelle','2010-12-27','2010-09-25'),(924,987,833,'DeepSkyBlue','nouvelle','1986-09-26','2020-03-20'),(925,987,833,'LavenderBlush','nouvelle','1979-01-25','2013-11-21'),(926,988,834,'SteelBlue','nouvelle','1973-04-26','2020-03-20'),(927,988,834,'LightYellow','nouvelle','1983-10-31','1984-07-08'),(928,989,835,'DarkKhaki','nouvelle','2002-03-12','2020-03-20'),(929,989,835,'DarkOliveGreen','nouvelle','2018-04-10','2017-07-13'),(930,990,836,'Navy','nouvelle','1981-12-21','2020-03-20'),(931,990,836,'Silver','nouvelle','1993-05-26','1982-06-02'),(932,991,837,'Snow','nouvelle','1977-02-28','2020-03-20'),(933,991,837,'PowderBlue','nouvelle','1993-06-29','1992-02-19'),(934,992,838,'BlanchedAlmond','nouvelle','2000-04-19','2020-03-20'),(935,992,838,'Red','nouvelle','1975-09-09','1980-11-18'),(936,993,839,'RosyBrown','nouvelle','1988-04-29','2020-03-20'),(937,993,839,'DimGray','nouvelle','2011-12-26','2011-07-03'),(938,994,840,'Bisque','nouvelle','2000-10-01','2020-03-20'),(939,994,840,'LemonChiffon','nouvelle','1981-04-25','2005-04-05'),(940,995,841,'Tomato','nouvelle','1995-07-24','2020-03-20'),(941,995,841,'LightCoral','nouvelle','1982-07-31','2011-07-02'),(942,996,842,'LightSalmon','nouvelle','2011-12-14','2020-03-20'),(943,996,842,'CornflowerBlue','nouvelle','2009-08-18','1999-01-14'),(944,997,843,'MintCream','nouvelle','1999-06-06','2020-03-20'),(945,997,843,'LightSkyBlue','nouvelle','2008-12-01','1991-09-13'),(946,998,844,'MistyRose','nouvelle','2017-10-23','2020-03-20'),(947,998,844,'SlateGray','nouvelle','1994-06-06','1977-09-23'),(948,999,845,'Peru','nouvelle','2000-06-04','2020-03-20'),(949,999,845,'Gray','nouvelle','2002-08-10','2008-01-28'),(950,1000,846,'SlateBlue','nouvelle','1985-05-16','2020-03-20'),(951,1000,846,'Pink','nouvelle','1990-06-30','1989-05-09'),(952,1001,847,'BurlyWood','nouvelle','1992-02-13','2020-03-20'),(953,1001,847,'AliceBlue','nouvelle','1981-01-20','2019-06-29'),(954,1002,848,'RosyBrown','nouvelle','2010-07-31','2020-03-20'),(955,1002,848,'Black','nouvelle','2009-07-04','2011-06-11'),(956,1003,849,'HoneyDew','nouvelle','2007-12-10','2020-03-20'),(957,1003,849,'Gainsboro','nouvelle','1975-04-09','1991-02-10'),(958,1004,850,'SteelBlue','nouvelle','1985-08-05','2020-03-20'),(959,1004,850,'SeaGreen','nouvelle','1983-09-27','1999-08-16');
/*!40000 ALTER TABLE `commandes_bl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandes_labo`
--

DROP TABLE IF EXISTS `commandes_labo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commandes_labo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_commande_labo` int(11) DEFAULT NULL,
  `libelle` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantite_total` int(11) DEFAULT NULL,
  `due_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes_labo`
--

LOCK TABLES `commandes_labo` WRITE;
/*!40000 ALTER TABLE `commandes_labo` DISABLE KEYS */;
/*!40000 ALTER TABLE `commandes_labo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandes_labo_produits`
--

DROP TABLE IF EXISTS `commandes_labo_produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commandes_labo_produits` (
  `commandes_labo_id` int(11) NOT NULL,
  `produits_id` int(11) NOT NULL,
  PRIMARY KEY (`commandes_labo_id`,`produits_id`),
  KEY `IDX_D1412388CDC8721A` (`commandes_labo_id`),
  KEY `IDX_D1412388CD11A2CF` (`produits_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes_labo_produits`
--

LOCK TABLES `commandes_labo_produits` WRITE;
/*!40000 ALTER TABLE `commandes_labo_produits` DISABLE KEYS */;
/*!40000 ALTER TABLE `commandes_labo_produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composants`
--

DROP TABLE IF EXISTS `composants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `composants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_composant` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_comp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unite` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F95A31996CB13AEE` (`id_composant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composants`
--

LOCK TABLES `composants` WRITE;
/*!40000 ALTER TABLE `composants` DISABLE KEYS */;
/*!40000 ALTER TABLE `composants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compositions_produit`
--

DROP TABLE IF EXISTS `compositions_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compositions_produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantite_comp` int(11) NOT NULL,
  `id_composition` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositions_produit`
--

LOCK TABLES `compositions_produit` WRITE;
/*!40000 ALTER TABLE `compositions_produit` DISABLE KEYS */;
INSERT INTO `compositions_produit` VALUES (501,7,NULL),(502,5,NULL),(503,76,NULL),(504,21,NULL),(505,78,NULL),(506,87,NULL),(507,60,NULL),(508,71,NULL),(509,93,NULL),(510,75,NULL),(511,10,NULL),(512,39,NULL),(513,43,NULL),(514,12,NULL),(515,91,NULL),(516,67,NULL),(517,75,NULL),(518,1,NULL),(519,12,NULL),(520,11,NULL),(521,83,NULL),(522,75,NULL),(523,100,NULL),(524,93,NULL),(525,9,NULL),(526,14,NULL),(527,90,NULL),(528,5,NULL),(529,27,NULL),(530,97,NULL),(531,20,NULL),(532,91,NULL),(533,14,NULL),(534,62,NULL),(535,30,NULL),(536,58,NULL),(537,68,NULL),(538,5,NULL),(539,58,NULL),(540,48,NULL),(541,12,NULL),(542,80,NULL),(543,53,NULL),(544,63,NULL),(545,83,NULL),(546,38,NULL),(547,61,NULL),(548,33,NULL),(549,14,NULL),(550,59,NULL);
/*!40000 ALTER TABLE `compositions_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compositions_produit_composants`
--

DROP TABLE IF EXISTS `compositions_produit_composants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compositions_produit_composants` (
  `compositions_produit_id` int(11) NOT NULL,
  `composants_id` int(11) NOT NULL,
  PRIMARY KEY (`compositions_produit_id`,`composants_id`),
  KEY `IDX_D5FF3F3FC5DEA694` (`compositions_produit_id`),
  KEY `IDX_D5FF3F3FD960F9EE` (`composants_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositions_produit_composants`
--

LOCK TABLES `compositions_produit_composants` WRITE;
/*!40000 ALTER TABLE `compositions_produit_composants` DISABLE KEYS */;
/*!40000 ALTER TABLE `compositions_produit_composants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compositions_produit_produits`
--

DROP TABLE IF EXISTS `compositions_produit_produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compositions_produit_produits` (
  `compositions_produit_id` int(11) NOT NULL,
  `produits_id` int(11) NOT NULL,
  PRIMARY KEY (`compositions_produit_id`,`produits_id`),
  KEY `IDX_F2EFD642C5DEA694` (`compositions_produit_id`),
  KEY `IDX_F2EFD642CD11A2CF` (`produits_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositions_produit_produits`
--

LOCK TABLES `compositions_produit_produits` WRITE;
/*!40000 ALTER TABLE `compositions_produit_produits` DISABLE KEYS */;
INSERT INTO `compositions_produit_produits` VALUES (501,1001),(501,1002),(502,1003),(502,1004),(503,1005),(503,1006),(504,1007),(504,1008),(505,1009),(505,1010),(506,1011),(506,1012),(507,1013),(507,1014),(508,1015),(508,1016),(509,1017),(509,1018),(510,1019),(510,1020),(511,1021),(511,1022),(512,1023),(512,1024),(513,1025),(513,1026),(514,1027),(514,1028),(515,1029),(515,1030),(516,1031),(516,1032),(517,1033),(517,1034),(518,1035),(518,1036),(519,1037),(519,1038),(520,1039),(520,1040),(521,1041),(521,1042),(522,1043),(522,1044),(523,1045),(523,1046),(524,1047),(524,1048),(525,1049),(525,1050),(526,1051),(526,1052),(527,1053),(527,1054),(528,1055),(528,1056),(529,1057),(529,1058),(530,1059),(530,1060),(531,1061),(531,1062),(532,1063),(532,1064),(533,1065),(533,1066),(534,1067),(534,1068),(535,1069),(535,1070),(536,1071),(536,1072),(537,1073),(537,1074),(538,1075),(538,1076),(539,1077),(539,1078),(540,1079),(540,1080),(541,1081),(541,1082),(542,1083),(542,1084),(543,1085),(543,1086),(544,1087),(544,1088),(545,1089),(545,1090),(546,1091),(546,1092),(547,1093),(547,1094),(548,1095),(548,1096),(549,1097),(549,1098),(550,1099),(550,1100);
/*!40000 ALTER TABLE `compositions_produit_produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details_commandes_bl`
--

DROP TABLE IF EXISTS `details_commandes_bl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details_commandes_bl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_detail` int(11) DEFAULT NULL,
  `quantite_prod` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=651 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details_commandes_bl`
--

LOCK TABLES `details_commandes_bl` WRITE;
/*!40000 ALTER TABLE `details_commandes_bl` DISABLE KEYS */;
INSERT INTO `details_commandes_bl` VALUES (601,NULL,30),(602,NULL,43),(603,NULL,14),(604,NULL,39),(605,NULL,91),(606,NULL,68),(607,NULL,28),(608,NULL,69),(609,NULL,45),(610,NULL,94),(611,NULL,63),(612,NULL,30),(613,NULL,41),(614,NULL,64),(615,NULL,60),(616,NULL,64),(617,NULL,60),(618,NULL,21),(619,NULL,41),(620,NULL,62),(621,NULL,71),(622,NULL,33),(623,NULL,100),(624,NULL,45),(625,NULL,85),(626,NULL,41),(627,NULL,82),(628,NULL,46),(629,NULL,57),(630,NULL,95),(631,NULL,79),(632,NULL,45),(633,NULL,98),(634,NULL,80),(635,NULL,66),(636,NULL,34),(637,NULL,56),(638,NULL,51),(639,NULL,72),(640,NULL,33),(641,NULL,19),(642,NULL,26),(643,NULL,29),(644,NULL,38),(645,NULL,92),(646,NULL,72),(647,NULL,99),(648,NULL,79),(649,NULL,45),(650,NULL,46);
/*!40000 ALTER TABLE `details_commandes_bl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details_commandes_bl_commandes_bl`
--

DROP TABLE IF EXISTS `details_commandes_bl_commandes_bl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details_commandes_bl_commandes_bl` (
  `details_commandes_bl_id` int(11) NOT NULL,
  `commandes_bl_id` int(11) NOT NULL,
  PRIMARY KEY (`details_commandes_bl_id`,`commandes_bl_id`),
  KEY `IDX_8E9FABD6A93E2F63` (`details_commandes_bl_id`),
  KEY `IDX_8E9FABD64D51C308` (`commandes_bl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details_commandes_bl_commandes_bl`
--

LOCK TABLES `details_commandes_bl_commandes_bl` WRITE;
/*!40000 ALTER TABLE `details_commandes_bl_commandes_bl` DISABLE KEYS */;
INSERT INTO `details_commandes_bl_commandes_bl` VALUES (601,860),(601,861),(602,862),(602,863),(603,864),(603,865),(604,866),(604,867),(605,868),(605,869),(606,870),(606,871),(607,872),(607,873),(608,874),(608,875),(609,876),(609,877),(610,878),(610,879),(611,880),(611,881),(612,882),(612,883),(613,884),(613,885),(614,886),(614,887),(615,888),(615,889),(616,890),(616,891),(617,892),(617,893),(618,894),(618,895),(619,896),(619,897),(620,898),(620,899),(621,900),(621,901),(622,902),(622,903),(623,904),(623,905),(624,906),(624,907),(625,908),(625,909),(626,910),(626,911),(627,912),(627,913),(628,914),(628,915),(629,916),(629,917),(630,918),(630,919),(631,920),(631,921),(632,922),(632,923),(633,924),(633,925),(634,926),(634,927),(635,928),(635,929),(636,930),(636,931),(637,932),(637,933),(638,934),(638,935),(639,936),(639,937),(640,938),(640,939),(641,940),(641,941),(642,942),(642,943),(643,944),(643,945),(644,946),(644,947),(645,948),(645,949),(646,950),(646,951),(647,952),(647,953),(648,954),(648,955),(649,956),(649,957),(650,958),(650,959);
/*!40000 ALTER TABLE `details_commandes_bl_commandes_bl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details_commandes_bl_produits`
--

DROP TABLE IF EXISTS `details_commandes_bl_produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details_commandes_bl_produits` (
  `details_commandes_bl_id` int(11) NOT NULL,
  `produits_id` int(11) NOT NULL,
  PRIMARY KEY (`details_commandes_bl_id`,`produits_id`),
  KEY `IDX_D13C5E7CA93E2F63` (`details_commandes_bl_id`),
  KEY `IDX_D13C5E7CCD11A2CF` (`produits_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details_commandes_bl_produits`
--

LOCK TABLES `details_commandes_bl_produits` WRITE;
/*!40000 ALTER TABLE `details_commandes_bl_produits` DISABLE KEYS */;
INSERT INTO `details_commandes_bl_produits` VALUES (601,1001),(601,1002),(602,1003),(602,1004),(603,1005),(603,1006),(604,1007),(604,1008),(605,1009),(605,1010),(606,1011),(606,1012),(607,1013),(607,1014),(608,1015),(608,1016),(609,1017),(609,1018),(610,1019),(610,1020),(611,1021),(611,1022),(612,1023),(612,1024),(613,1025),(613,1026),(614,1027),(614,1028),(615,1029),(615,1030),(616,1031),(616,1032),(617,1033),(617,1034),(618,1035),(618,1036),(619,1037),(619,1038),(620,1039),(620,1040),(621,1041),(621,1042),(622,1043),(622,1044),(623,1045),(623,1046),(624,1047),(624,1048),(625,1049),(625,1050),(626,1051),(626,1052),(627,1053),(627,1054),(628,1055),(628,1056),(629,1057),(629,1058),(630,1059),(630,1060),(631,1061),(631,1062),(632,1063),(632,1064),(633,1065),(633,1066),(634,1067),(634,1068),(635,1069),(635,1070),(636,1071),(636,1072),(637,1073),(637,1074),(638,1075),(638,1076),(639,1077),(639,1078),(640,1079),(640,1080),(641,1081),(641,1082),(642,1083),(642,1084),(643,1085),(643,1086),(644,1087),(644,1088),(645,1089),(645,1090),(646,1091),(646,1092),(647,1093),(647,1094),(648,1095),(648,1096),(649,1097),(649,1098),(650,1099),(650,1100);
/*!40000 ALTER TABLE `details_commandes_bl_produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livreurs`
--

DROP TABLE IF EXISTS `livreurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livreurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule_id` int(11) NOT NULL,
  `tele_livreur` bigint(20) DEFAULT NULL,
  `num_vehicule` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_28E6A8A09AAADC05` (`matricule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=851 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livreurs`
--

LOCK TABLES `livreurs` WRITE;
/*!40000 ALTER TABLE `livreurs` DISABLE KEYS */;
INSERT INTO `livreurs` VALUES (801,1208,6711,'2514912183925453'),(802,1209,4926,'2356172500940955'),(803,1210,3442,'4539966282910169'),(804,1211,1388,'2221524329686610'),(805,1212,6600,'4556476842126858'),(806,1213,6191,'4916586704332082'),(807,1214,1703,'4929459063834285'),(808,1215,2365,'371037609960300'),(809,1216,9794,'5123737526483928'),(810,1217,4309,'5448644926714076'),(811,1218,5530,'4556356144003'),(812,1219,7402,'4485847215344771'),(813,1220,1747,'4916278466056972'),(814,1221,6445,'341269448083955'),(815,1222,6309,'4929142394420681'),(816,1223,1863,'4782801879212881'),(817,1224,3579,'2593462656444057'),(818,1225,3866,'2541078679793883'),(819,1226,4049,'4485699481583842'),(820,1227,6578,'4556194327358264'),(821,1228,2393,'5172791035635023'),(822,1229,3364,'6011723708710083'),(823,1230,2943,'2629382747695947'),(824,1231,2323,'4485087419247'),(825,1232,2359,'4485255825660596'),(826,1233,2166,'5114496428453890'),(827,1234,8075,'5363941994043607'),(828,1235,3752,'345141240005005'),(829,1236,2987,'4193878732934532'),(830,1237,4773,'2669276885901136'),(831,1238,3114,'4539621940542249'),(832,1239,7708,'2720452363039627'),(833,1240,4365,'4929709907662627'),(834,1241,3100,'4916814142719359'),(835,1242,5113,'4024007196339427'),(836,1243,4392,'4485867705726196'),(837,1244,1854,'6011021966086084'),(838,1245,2160,'5158247032758753'),(839,1246,1423,'2392868912671718'),(840,1247,7672,'4916527546166908'),(841,1248,2709,'2331517218585296'),(842,1249,2103,'5225247052747248'),(843,1250,5783,'4916648339249477'),(844,1251,4170,'4929595351122097'),(845,1252,8702,'372705573035577'),(846,1253,1778,'4929926531927370'),(847,1254,3495,'2720128517837898'),(848,1255,9096,'4929355697539'),(849,1256,2089,'4532090909124935'),(850,1257,6472,'4532307940835638');
/*!40000 ALTER TABLE `livreurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20200412195421','2020-04-12 19:54:27'),('20200413114512','2020-04-13 11:45:18'),('20200416124933','2020-04-16 12:49:39'),('20200416185256','2020-04-16 18:53:09'),('20200416185503','2020-04-16 18:55:07'),('20200417192649','2020-04-17 19:26:55'),('20200420181953','2020-04-20 18:20:00'),('20200420185256','2020-04-20 18:53:02'),('20200420191907','2020-04-20 19:19:13'),('20200427223920','2020-04-27 22:39:27'),('20200429203654','2020-04-29 20:37:00'),('20200525211018','2020-05-25 21:20:11');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_produit` int(11) DEFAULT NULL,
  `libelle` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix_ha` double NOT NULL,
  `tva` double NOT NULL,
  `prix_ttc` double DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1001,NULL,'Ivory',152490.44,0.481,168.45769311,0),(1002,NULL,'LawnGreen',52.127,0,27565,0),(1003,NULL,'LightSalmon',289700.6,1082688,11.499445,0),(1004,NULL,'DarkKhaki',10688490.4716,3004890,105.302464,0),(1005,NULL,'SlateGray',5.4024,25543.218389167,249074.7,0),(1006,NULL,'MidnightBlue',46.174,7,4.5711,0),(1007,NULL,'Silver',17.45237575,125040990.36545,91523269.00964,0),(1008,NULL,'LightBlue',12227.896954,463611,3.4609,0),(1009,NULL,'MediumSpringGreen',22570478.75,9370204.6910735,4.4,0),(1010,NULL,'ForestGreen',168.57051293,33160.59006,0.54077842,0),(1011,NULL,'MediumSlateBlue',2905.68970554,8278710.25626,172.09,0),(1012,NULL,'Green',267.85,804.188906,56.1,0),(1013,NULL,'Azure',78,59399656,20459.90894304,0),(1014,NULL,'AliceBlue',1.68,3293.810304,106565297.763,0),(1015,NULL,'LightSkyBlue',892198.2909585,45840.55,38128,0),(1016,NULL,'BurlyWood',224.32,1041.2452,18009.21,0),(1017,NULL,'SaddleBrown',5021.953642088,0.6912174,33358.517244,0),(1018,NULL,'Green',7983370.6662,3.7799,1.914,0),(1019,NULL,'DarkCyan',2.5,144,222714.85949834,0),(1020,NULL,'DarkSalmon',204.49306002,14005.8,173788.4,0),(1021,NULL,'RoyalBlue',17200422.61775,4173.5,1362.6,0),(1022,NULL,'PowderBlue',10086,28.00026,896933.33,0),(1023,NULL,'DarkMagenta',13.7,97,1083.01834,0),(1024,NULL,'MediumSpringGreen',191.706836,47412627.73,1328,0),(1025,NULL,'Blue',3017334.1037959,39.8796802,113976426.8,0),(1026,NULL,'SlateGray',8.463,815298233.276,5993966.7323339,0),(1027,NULL,'PeachPuff',2649204.592,66.089,34658123.14789,0),(1028,NULL,'YellowGreen',2.15207,47.97664271,3.23053,0),(1029,NULL,'ForestGreen',409178793.75,0,3.986211,0),(1030,NULL,'ForestGreen',946615.8567564,0.9,373.535,0),(1031,NULL,'Turquoise',23.605892714,53,47173.79542191,0),(1032,NULL,'LimeGreen',29.868766,112.82595577,2.839,0),(1033,NULL,'Yellow',181416.4419,180.75,299592.2266692,0),(1034,NULL,'NavajoWhite',511230.2,36119.764638,2.5,0),(1035,NULL,'MediumSeaGreen',714894691,515438.52224787,51564417.063117,0),(1036,NULL,'PaleGoldenRod',0.59,4.58091989,2002,0),(1037,NULL,'CadetBlue',92.11208,15720.07277277,24891649.245935,0),(1038,NULL,'Teal',34652.931536609,563,22975.3822909,0),(1039,NULL,'Bisque',153.278,94.69072,35315444,0),(1040,NULL,'SandyBrown',157.8,0.419,563349.463369,0),(1041,NULL,'DarkCyan',2283.2516661,212.766,0.069,0),(1042,NULL,'HoneyDew',133439.19435,57763.192632569,62872394,0),(1043,NULL,'DarkSalmon',4.45452,4109.501635,351995055,0),(1044,NULL,'SpringGreen',7725.1,993,224869627,0),(1045,NULL,'DarkMagenta',197038.4,254023,29884.96,0),(1046,NULL,'SaddleBrown',2470938.0393556,6484.80840355,3407,0),(1047,NULL,'Aquamarine',0,33380912.6404,0.515719,0),(1048,NULL,'Beige',5827970.3,3418646.3461229,1890478.95,0),(1049,NULL,'PaleGreen',655862.79632194,33766612.03,0,0),(1050,NULL,'DarkCyan',20140.324603507,0.53936,20.1987617,0),(1051,NULL,'SaddleBrown',2348261.1462,2154.872,148.62,0),(1052,NULL,'Silver',339718469,1298265.912,0.7,0),(1053,NULL,'FireBrick',40.6328,329739712.482,998406.9165,0),(1054,NULL,'Cyan',723.7247,181711.28331141,1.842588,0),(1055,NULL,'Linen',0.35,51.56727056,15.0719,0),(1056,NULL,'PaleGoldenRod',655,35786477.5,27.3430897,0),(1057,NULL,'MediumSeaGreen',20028966.001,62031550.51075,41.6509973,0),(1058,NULL,'DarkSlateBlue',13686700.34,783.922622,10.22,0),(1059,NULL,'RosyBrown',0.868,855.38904,596,0),(1060,NULL,'Aquamarine',2990559.398,1703,8.49,0),(1061,NULL,'DarkKhaki',2.7,0.1050933,13.423565,0),(1062,NULL,'MediumBlue',232749.5150642,658425060.658,2.614,0),(1063,NULL,'Olive',546227,11718.210741847,35.455778,0),(1064,NULL,'Darkorange',1658.704138,1785.6643,0,0),(1065,NULL,'SeaGreen',1168505.9960513,2024,517.75367,0),(1066,NULL,'LightPink',393202.0739962,4.9,1205.4,0),(1067,NULL,'Indigo',71278715.77,0.367488519,332.1718,0),(1068,NULL,'MediumSlateBlue',328.44904472,0.28697,1078.41186,0),(1069,NULL,'DarkGray',436980234.841,27916,26.8,0),(1070,NULL,'LimeGreen',265.5778,88.36,14762446.275788,0),(1071,NULL,'SeaGreen',483,602660,1621.83559084,0),(1072,NULL,'DimGrey',1314819,5974.586419277,3257.72,0),(1073,NULL,'MediumSpringGreen',58.5,515969065.2,170.729,0),(1074,NULL,'FireBrick',502252385.10207,1,16177873.5249,0),(1075,NULL,'RosyBrown',8044584.4966,4,2950914.3,0),(1076,NULL,'IndianRed',75.47269093,277642842.64441,58.23539377,0),(1077,NULL,'SlateGray',2.923555297,195.590731,0.37562,0),(1078,NULL,'Red',3171237.2,28.5953545,191631.27726,0),(1079,NULL,'Silver',3037192.621217,91.73689122,39989983.4,0),(1080,NULL,'DarkBlue',214038.12403937,4673.9,45.639,0),(1081,NULL,'MidnightBlue',97.696034,376666.005746,525625.1358,0),(1082,NULL,'Magenta',0,547572.44,0.9,0),(1083,NULL,'Moccasin',516718.94128244,5003,41317.814,0),(1084,NULL,'OliveDrab',22991.0340274,6175019,2.73107,0),(1085,NULL,'BlueViolet',2893711.73782,0.09,7.8509203,0),(1086,NULL,'Thistle',3118.2,6,548133,0),(1087,NULL,'Indigo',3.1291,78.598296,5959278.693248,0),(1088,NULL,'AntiqueWhite',0.5,162831.66983132,625.9104559,0),(1089,NULL,'DeepPink',6611,5590.1707628,323.68924,0),(1090,NULL,'LightCoral',7827.4637,460751238.33752,675316.546,0),(1091,NULL,'Red',177039526.40406,623.31736,12.7468,0),(1092,NULL,'Turquoise',71.56,115,0,0),(1093,NULL,'LightBlue',370091,3.751,11564.036745916,0),(1094,NULL,'AliceBlue',1.4014,257557775.918,147678453.733,0),(1095,NULL,'PaleGoldenRod',4165569.579336,253302982.788,12.0020142,0),(1096,NULL,'Orange',860901573,471377.26604247,55.7946,0),(1097,NULL,'GreenYellow',1787.133,1126793.1735834,128804.12026465,0),(1098,NULL,'HotPink',40196937.76222,3403210.5476234,28.171208,0),(1099,NULL,'Black',23.307,2778718.745,1,0),(1100,NULL,'Brown',75570.3320139,718.7,2921964.9981954,0);
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profils`
--

DROP TABLE IF EXISTS `profils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affectation` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_75831F5EAA08CB10` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=1258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profils`
--

LOCK TABLES `profils` WRITE;
/*!40000 ALTER TABLE `profils` DISABLE KEYS */;
INSERT INTO `profils` VALUES (1208,5638,'upton.org','schinner.org',';QM^NPLK_O9Bx8\"w','Kyle',0),(1209,3429,'ebert.org','stark.com','8,.(RW4RAii','Jordyn',0),(1210,7553,'gusikowski.org','ernser.com','\'$*~J]>*&d?^','Eric',0),(1211,5550,'hand.com','huels.com','m,is,^sO~\\','Zella',0),(1212,8398,'cole.com','johns.biz','\"/R@qF3O.NSiVa','Marvin',0),(1213,5859,'cormier.net','johnston.com','bQ\'7dhbwY','Oleta',0),(1214,9046,'gibson.com','koelpin.org','>tt_m}S','Cornell',0),(1215,6863,'gerlach.com','huels.info','#hxo(9()nt(;_','Hertha',0),(1216,7740,'runolfsson.com','borer.com','qKmm~Bvcc=\\t?VV65IX','Shanel',0),(1217,9329,'ortiz.com','bergnaum.com','u[.$6Wed-;h_8%dba,<','Pansy',0),(1218,2011,'hauck.info','fritsch.com','%>[lhi:','Veronica',0),(1219,5854,'roberts.com','hintz.info','Z-+)sM`nO-','Leonora',0),(1220,1817,'hammes.org','hettinger.com','yoq2~<q\"','Kirstin',0),(1221,9510,'hessel.info','wisozk.net','pmCQ\\L','Nels',0),(1222,3509,'nikolaus.com','bartell.net','p]VwsKsq\"[QbD_*','Dianna',0),(1223,5029,'bayer.com','toy.com','h}M#hrx$','Angela',0),(1224,8212,'olson.com','pfeffer.net','GuR+$!8j*>z(|{x#=6','Ole',0),(1225,5020,'stanton.info','bode.com','T,70yh','Fern',0),(1226,2258,'rice.com','shanahan.org','f)Tn~GH5qrRPd','Sarina',0),(1227,7307,'daugherty.com','huel.org','{Y;(0#Mmv-f!h%aP:','Marcia',0),(1228,1562,'robel.org','auer.biz','XKM{TR','Marilie',0),(1229,7914,'stiedemann.biz','parisian.com','g&e_~\\','Erica',0),(1230,5714,'lockman.org','abernathy.com','\'JDn@09iq_%$sTu3\\V','Briana',0),(1231,2339,'harvey.com','ratke.com','\\B1YH@4:','Milo',0),(1232,6652,'mcdermott.com','orn.biz','YiuD}p/Zfj>','Maynard',0),(1233,2527,'block.com','toy.com','C)POmnGUpMYl`oYu5l{','Oswald',0),(1234,6932,'greenholt.com','zieme.com','shY#5*{tT.ZW[ES#.VM4','Lexie',0),(1235,9495,'spencer.com','rowe.com','l$37yF}{on~ex0T2z\\;','Jadyn',0),(1236,8470,'shanahan.com','frami.org','h)}[M0S7f3:bf>!$','Osbaldo',0),(1237,2479,'welch.info','corkery.com','_GY{LT1eQPqw;s<48','Milo',0),(1238,9069,'langosh.net','greenholt.com','JS,TY}]','Gerardo',0),(1239,4641,'ruecker.com','hansen.com','k!(t(emw>S)t\\-_AJ}','Lacy',0),(1240,4885,'kshlerin.com','schinner.com','Ea7SSF6<(Ab','Madalyn',0),(1241,8071,'schneider.com','gibson.com','ef\\+\'/_i3lo%','Bernadine',0),(1242,7956,'boehm.com','cartwright.com','}k@WpBiq=','Finn',0),(1243,5057,'runte.info','kiehn.com','^qZnjl7(xUFaA[U','Enos',0),(1244,8554,'feil.com','towne.com','X1_S-78=y+$KA4tP~g[','Kaylin',0),(1245,7590,'huels.com','rice.com','/ok;gIE','Jude',0),(1246,8987,'robel.com','gulgowski.biz','HhQGay,','Elian',0),(1247,8682,'harber.com','leannon.com',';kMSRL^n,\\\\;@.X','Damien',0),(1248,3539,'rath.com','nikolaus.com','2IUv&%XpICdP865p','Vida',0),(1249,6771,'padberg.com','rempel.com','1@/6Og#Yuc7Fd','Jaycee',0),(1250,7274,'bradtke.com','senger.com',')G*\'o%SdM{]3zvcQfW.','Winfield',0),(1251,9921,'schneider.biz','batz.com','B:&jCN$B+LhR\\!FTv_F{','Lorenz',0),(1252,1080,'baumbach.com','huel.biz','GxdF\\^i(hF1V]BoCSP*@','Lisa',0),(1253,3262,'oconnell.com','gaylord.net','Q,a;@8cUG82|rTB{u)$U','Frederique',0),(1254,6184,'hoppe.biz','cruickshank.info','J_Gj.7=','Alena',0),(1255,8907,'ohara.com','morissette.net','m-kup(5@)TwLrp5]w5|','Gianni',0),(1256,2479,'bruen.biz','howell.com','dd9V0y{S^q{f','Hanna',0),(1257,6706,'satterfield.info','sipes.net','m8<U)ZlS(0','Foster',0);
/*!40000 ALTER TABLE `profils` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-27 23:39:59
