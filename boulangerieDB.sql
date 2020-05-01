-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: boulangerieDB
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=905 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrateurs`
--

LOCK TABLES `administrateurs` WRITE;
/*!40000 ALTER TABLE `administrateurs` DISABLE KEYS */;
INSERT INTO `administrateurs` VALUES (855,'Gino','Heaney','Queenie Hudson',600313),(856,'Wilhelm','Hansen','Dr. Kyra Hyatt PhD',134406),(857,'Beatrice','Rutherford','Consuelo Stracke',993850),(858,'Clovis','Braun','Angelita Jenkins',924587),(859,'Zita','Lakin','Mr. Simeon White',407704),(860,'Zackary','Kunze','Olin Feest',649480),(861,'Briana','Greenfelder','Mr. Vincenzo Howell IV',939911),(862,'Ludie','Bode','Yoshiko Beatty',110045),(863,'Bella','Hintz','Ms. Lenore Sipes Jr.',869780),(864,'Stewart','Sauer','Kacie Keebler',189186),(865,'Loma','Ondricka','Jewell Jaskolski',942273),(866,'Larry','Okuneva','Peyton Howell Jr.',171292),(867,'Karianne','Mosciski','Josh Abbott',898783),(868,'Annamarie','Baumbach','Samara Mueller',608460),(869,'Shanie','Nicolas','Blaze Stiedemann',855339),(870,'Leonor','Konopelski','Dr. Hillard Conroy',379321),(871,'Margarita','Durgan','Fae Murphy',133930),(872,'Celine','Fritsch','Santino Fisher',817171),(873,'Emmanuelle','Medhurst','Prof. Leslie Kohler PhD',642881),(874,'Antonina','Langosh','Gustave Runolfsdottir',408153),(875,'Halle','Lehner','Armani Boyle I',553145),(876,'Zackary','Hartmann','Dr. Pierre Hamill',977692),(877,'Maureen','O\'Connell','Keely Terry',307726),(878,'Glenda','Cummerata','Rosa Ullrich V',139126),(879,'Estelle','Walker','Zakary Hermiston DVM',900062),(880,'Jayne','Harvey','Dr. Jamarcus Cruickshank',439790),(881,'Camron','Abbott','Emmanuel Marks',288469),(882,'Trystan','Dicki','Barry Thiel',317849),(883,'Gerald','Hermiston','Ahmad Miller',826206),(884,'Felton','Dietrich','Juana Larkin',448441),(885,'Jessy','O\'Keefe','Meghan Davis',45610),(886,'Matilde','Brakus','Mrs. Shana Raynor',279205),(887,'Aubree','Dickinson','Dolores Spinka II',34949),(888,'Dana','Buckridge','Raegan Larson',258742),(889,'Duane','Bergnaum','Maiya Stracke',345695),(890,'Kathryne','Runolfsdottir','Miss Jennyfer Turner',938975),(891,'Jordan','Wiza','Brycen Hartmann',771633),(892,'Brendon','Ortiz','Angelo Ullrich',897734),(893,'Kaleb','Lueilwitz','Bertram Hilpert',857312),(894,'Daisha','Funk','Dr. Vladimir Pouros',676944),(895,'Keegan','Funk','Corine Wiegand',352106),(896,'Lucius','Mante','Samanta Farrell',839537),(897,'Juliana','Fisher','Dr. Mikel Pouros',22136),(898,'Gordon','Conroy','Mr. Jadon Sawayn',81983),(899,'Doris','Hermiston','Bernice O\'Conner',630800),(900,'Kade','Grant','Katelin Cummerata',313530),(901,'Mazie','Bauch','Prof. Lue Kuphal',228513),(902,'Kacie','Hand','Mr. Ellsworth Parisian',118349),(903,'Rodger','Upton','Prof. Wayne Grimes',571391),(904,'Anabel','Hoppe','Sibyl Jerde',504515);
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
  UNIQUE KEY `UNIQ_2FA1DF49AAADC05` (`matricule_id`),
  CONSTRAINT `FK_2FA1DF49AAADC05` FOREIGN KEY (`matricule_id`) REFERENCES `profils` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=855 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boulangeries`
--

LOCK TABLES `boulangeries` WRITE;
/*!40000 ALTER TABLE `boulangeries` DISABLE KEYS */;
INSERT INTO `boulangeries` VALUES (805,1058,'Dr. Jabari Sipes Sr.','Cornsilk',982,NULL,1484,0),(806,1059,'Ms. Mina Sauer III','Ivory',897,NULL,5809,0),(807,1060,'Priscilla Barrows','Fuchsia',753,NULL,2408,0),(808,1061,'Mr. Darwin Feeney V','IndianRed',860,NULL,2377,0),(809,1062,'Kenny Luettgen IV','GoldenRod',838,NULL,3574,0),(810,1063,'Enrique Koelpin','Crimson',402,NULL,1924,0),(811,1064,'Dr. Guido King IV','LawnGreen',585,NULL,8621,0),(812,1065,'Izaiah Schamberger','LemonChiffon',637,NULL,7321,0),(813,1066,'Marcos Krajcik','OrangeRed',416,NULL,8611,0),(814,1067,'Helmer Ondricka','Navy',915,NULL,9578,0),(815,1068,'Sid Rolfson','MediumSpringGreen',538,NULL,1129,0),(816,1069,'Prof. Jonatan Runolfsdottir PhD','Tomato',281,NULL,9691,0),(817,1070,'Kamryn Fritsch','SandyBrown',700,NULL,6017,0),(818,1071,'Cora Bogisich','Silver',637,NULL,4036,0),(819,1072,'Lamont Waelchi','LavenderBlush',821,NULL,4273,0),(820,1073,'Dr. Owen Bailey IV','BlanchedAlmond',607,NULL,6560,0),(821,1074,'Frida Padberg','Turquoise',748,NULL,7764,0),(822,1075,'Edmond Mosciski','RosyBrown',107,NULL,4411,0),(823,1076,'Louvenia Thiel','DeepSkyBlue',724,NULL,7505,0),(824,1077,'Elyse Mitchell','DeepSkyBlue',178,NULL,2193,0),(825,1078,'Talia Windler DVM','Lavender',758,NULL,2051,0),(826,1079,'Prof. Rosendo Will PhD','Azure',839,NULL,6046,0),(827,1080,'Miss Grace Breitenberg PhD','Violet',251,NULL,6852,0),(828,1081,'Mr. Christophe Howe I','MediumVioletRed',366,NULL,7024,0),(829,1082,'Wallace Ankunding','MidnightBlue',811,NULL,2293,0),(830,1083,'Bradly Hodkiewicz','HoneyDew',288,NULL,9279,0),(831,1084,'Natasha Ebert I','MediumPurple',234,NULL,4566,0),(832,1085,'Prof. Delilah Senger','DarkGray',950,NULL,2944,0),(833,1086,'Dr. Barry Johnston','BlanchedAlmond',762,NULL,6564,0),(834,1087,'Prof. Dolly Grady DDS','MintCream',583,NULL,5851,0),(835,1088,'Benedict Oberbrunner','Fuchsia',489,NULL,4197,0),(836,1089,'Dr. Dallin Wiza V','GreenYellow',146,NULL,4477,0),(837,1090,'Dr. Holden Nitzsche','MediumSlateBlue',781,NULL,7243,0),(838,1091,'Fletcher Jast','DarkSlateGray',696,NULL,2046,0),(839,1092,'Minnie Wintheiser','MidnightBlue',768,NULL,3601,0),(840,1093,'Keara Labadie','LawnGreen',174,NULL,1056,0),(841,1094,'Toni Schinner','MistyRose',754,NULL,1138,0),(842,1095,'Elouise Wunsch','Bisque',652,NULL,6215,0),(843,1096,'Luella Green','SeaShell',696,NULL,4894,0),(844,1097,'Aleen Rogahn','LightYellow',898,NULL,4077,0),(845,1098,'Kara Grant','FireBrick',707,NULL,7231,0),(846,1099,'Makenna Wuckert','Magenta',218,NULL,7168,0),(847,1100,'Kolby Hand','Purple',147,NULL,5897,0),(848,1101,'Mr. Alvah Nader IV','PaleTurquoise',435,NULL,2168,0),(849,1102,'Mrs. Darlene King DVM','Silver',448,NULL,1615,0),(850,1103,'Mr. Carol O\'Hara','MediumOrchid',744,NULL,5094,0),(851,1104,'Billy Fahey','RosyBrown',247,NULL,1581,0),(852,1105,'Ms. Flossie Steuber','CornflowerBlue',566,NULL,4142,0),(853,1106,'Callie Wunsch','LightBlue',306,NULL,4140,0),(854,1107,'Edwin Orn','CadetBlue',728,NULL,3017,0);
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
  KEY `IDX_66DA931FF8646701` (`livreur_id`),
  CONSTRAINT `FK_66DA931FA0DE2F48` FOREIGN KEY (`id_boulangerie_id`) REFERENCES `boulangeries` (`id`),
  CONSTRAINT `FK_66DA931FF8646701` FOREIGN KEY (`livreur_id`) REFERENCES `livreurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=760 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes_bl`
--

LOCK TABLES `commandes_bl` WRITE;
/*!40000 ALTER TABLE `commandes_bl` DISABLE KEYS */;
INSERT INTO `commandes_bl` VALUES (660,805,651,'LightGray','nouvelle','2014-09-30','2018-03-05'),(661,805,651,'Yellow','nouvelle','2007-05-14','1974-02-11'),(662,806,652,'NavajoWhite','nouvelle','2005-07-23','2018-11-25'),(663,806,652,'LightSkyBlue','nouvelle','1993-04-01','1973-08-16'),(664,807,653,'MediumBlue','nouvelle','1989-08-19','1971-07-12'),(665,807,653,'MediumOrchid','nouvelle','2018-09-09','1996-06-02'),(666,808,654,'ForestGreen','nouvelle','1988-08-22','1995-07-07'),(667,808,654,'Purple','nouvelle','1999-03-30','1983-01-05'),(668,809,655,'Orange','nouvelle','2001-07-01','2003-11-04'),(669,809,655,'Khaki','nouvelle','2015-11-22','2020-01-18'),(670,810,656,'Wheat','nouvelle','2018-10-22','1980-11-06'),(671,810,656,'Tomato','nouvelle','1989-11-19','1983-12-03'),(672,811,657,'Teal','nouvelle','1986-05-25','1985-03-22'),(673,811,657,'DimGrey','nouvelle','2017-06-10','2005-08-09'),(674,812,658,'MediumAquaMarine','nouvelle','2014-01-25','2019-07-12'),(675,812,658,'Linen','nouvelle','1995-05-05','1990-04-24'),(676,813,659,'Snow','nouvelle','2015-12-06','2000-07-07'),(677,813,659,'Olive','nouvelle','1970-02-20','1998-11-29'),(678,814,660,'Plum','nouvelle','1986-07-21','2008-11-20'),(679,814,660,'DarkOrchid','nouvelle','2010-09-15','2013-01-16'),(680,815,661,'ForestGreen','nouvelle','1979-04-23','2005-10-31'),(681,815,661,'PapayaWhip','nouvelle','1992-02-15','2016-05-26'),(682,816,662,'MediumOrchid','nouvelle','1993-06-12','1983-02-10'),(683,816,662,'Salmon','nouvelle','2010-03-17','2008-05-08'),(684,817,663,'SlateBlue','nouvelle','1998-05-13','1992-08-07'),(685,817,663,'Tomato','nouvelle','1975-03-31','2011-08-19'),(686,818,664,'Lavender','nouvelle','2006-01-31','2008-10-27'),(687,818,664,'OliveDrab','nouvelle','2010-11-25','1984-06-25'),(688,819,665,'IndianRed','nouvelle','2001-05-24','1980-04-11'),(689,819,665,'DeepSkyBlue','nouvelle','1970-07-03','1973-03-03'),(690,820,666,'FireBrick','nouvelle','2015-03-14','1982-10-19'),(691,820,666,'Coral','nouvelle','1978-11-07','1980-10-10'),(692,821,667,'Coral','nouvelle','1978-11-20','1993-10-06'),(693,821,667,'DarkSeaGreen','nouvelle','1972-03-19','2005-11-25'),(694,822,668,'Crimson','nouvelle','1973-01-05','2017-03-17'),(695,822,668,'DarkOrchid','nouvelle','2012-06-24','1986-01-19'),(696,823,669,'PaleGreen','nouvelle','2018-12-18','1983-09-24'),(697,823,669,'PaleVioletRed','nouvelle','1973-05-05','2009-07-18'),(698,824,670,'BlanchedAlmond','nouvelle','2018-09-23','2016-06-08'),(699,824,670,'Blue','nouvelle','1996-05-11','1983-03-10'),(700,825,671,'DarkGoldenRod','nouvelle','1972-08-01','2012-04-28'),(701,825,671,'White','nouvelle','2002-05-24','2018-04-02'),(702,826,672,'PeachPuff','nouvelle','1975-11-05','1975-02-06'),(703,826,672,'HotPink','nouvelle','1988-07-19','2014-06-10'),(704,827,673,'DarkGray','nouvelle','2018-11-10','1973-11-08'),(705,827,673,'Turquoise','nouvelle','2008-07-24','1973-12-26'),(706,828,674,'Chocolate','nouvelle','2016-04-29','1980-12-23'),(707,828,674,'LightCoral','nouvelle','1990-03-26','2011-08-04'),(708,829,675,'Yellow','nouvelle','1983-11-12','2018-09-09'),(709,829,675,'BlanchedAlmond','nouvelle','2008-07-24','1978-04-15'),(710,830,676,'Peru','nouvelle','2001-11-09','1983-03-01'),(711,830,676,'Beige','nouvelle','2014-01-14','1979-12-06'),(712,831,677,'Chocolate','nouvelle','1991-01-21','2009-06-02'),(713,831,677,'DarkSeaGreen','nouvelle','1970-07-04','2012-07-09'),(714,832,678,'OldLace','nouvelle','1970-09-04','1975-10-01'),(715,832,678,'DimGray','nouvelle','1987-10-23','2004-06-12'),(716,833,679,'MediumPurple','nouvelle','1993-10-02','1990-01-13'),(717,833,679,'MediumPurple','nouvelle','1999-02-24','2011-05-04'),(718,834,680,'LavenderBlush','nouvelle','2016-08-19','2011-01-10'),(719,834,680,'Azure','nouvelle','1998-08-31','1971-08-04'),(720,835,681,'LemonChiffon','nouvelle','2006-11-29','2010-02-20'),(721,835,681,'DarkOliveGreen','nouvelle','2009-05-07','2005-05-01'),(722,836,682,'PaleGoldenRod','nouvelle','1984-07-24','1989-05-10'),(723,836,682,'Yellow','nouvelle','1976-05-12','1976-09-24'),(724,837,683,'Beige','nouvelle','1978-09-09','1970-12-19'),(725,837,683,'Purple','nouvelle','1973-07-15','2019-05-04'),(726,838,684,'PowderBlue','nouvelle','2010-11-08','1981-01-09'),(727,838,684,'DarkGreen','nouvelle','1981-12-12','1986-02-03'),(728,839,685,'DarkBlue','nouvelle','1975-09-10','2000-01-04'),(729,839,685,'DodgerBlue','nouvelle','1978-05-31','1977-04-09'),(730,840,686,'Plum','nouvelle','2018-08-31','2004-04-23'),(731,840,686,'HotPink','nouvelle','2009-01-14','1980-10-18'),(732,841,687,'LightGreen','nouvelle','1978-05-11','2009-06-19'),(733,841,687,'LightPink','nouvelle','1990-04-26','2019-09-10'),(734,842,688,'DarkCyan','nouvelle','2005-09-30','1975-04-01'),(735,842,688,'SlateGray','nouvelle','1982-02-25','1991-05-27'),(736,843,689,'LightPink','nouvelle','1971-06-21','1975-09-19'),(737,843,689,'AliceBlue','nouvelle','2014-06-09','2015-01-31'),(738,844,690,'LightSlateGray','nouvelle','2004-11-03','2019-03-21'),(739,844,690,'Teal','nouvelle','1990-09-17','1999-02-16'),(740,845,691,'DarkBlue','nouvelle','1973-05-14','1986-03-27'),(741,845,691,'DarkSalmon','nouvelle','2016-08-22','2007-09-12'),(742,846,692,'HoneyDew','nouvelle','1994-09-15','1978-05-08'),(743,846,692,'SpringGreen','nouvelle','1984-01-22','2018-04-18'),(744,847,693,'SeaShell','nouvelle','2010-06-03','1986-03-10'),(745,847,693,'Magenta','nouvelle','2006-06-13','1987-02-13'),(746,848,694,'Gainsboro','nouvelle','2001-06-25','1970-07-24'),(747,848,694,'Salmon','nouvelle','1980-01-25','2013-06-12'),(748,849,695,'Darkorange','nouvelle','2004-03-24','2012-04-09'),(749,849,695,'BlueViolet','nouvelle','2005-09-03','1983-09-03'),(750,850,696,'DarkSalmon','nouvelle','1971-02-18','2004-12-23'),(751,850,696,'DarkBlue','nouvelle','1977-01-02','1982-04-04'),(752,851,697,'DarkTurquoise','nouvelle','1999-04-11','1989-02-15'),(753,851,697,'OrangeRed','nouvelle','1987-03-03','2002-04-01'),(754,852,698,'SkyBlue','nouvelle','1994-05-07','1997-04-10'),(755,852,698,'LightGreen','nouvelle','1979-09-07','2008-09-29'),(756,853,699,'PapayaWhip','nouvelle','1983-05-30','1982-08-13'),(757,853,699,'Khaki','nouvelle','1973-01-05','2017-01-23'),(758,854,700,'LightGoldenRodYellow','nouvelle','1991-03-07','1971-02-14'),(759,854,700,'RoyalBlue','nouvelle','2006-02-20','1973-08-15');
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
  KEY `IDX_D1412388CD11A2CF` (`produits_id`),
  CONSTRAINT `FK_D1412388CD11A2CF` FOREIGN KEY (`produits_id`) REFERENCES `produits` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D1412388CDC8721A` FOREIGN KEY (`commandes_labo_id`) REFERENCES `commandes_labo` (`id`) ON DELETE CASCADE
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composants`
--

LOCK TABLES `composants` WRITE;
/*!40000 ALTER TABLE `composants` DISABLE KEYS */;
INSERT INTO `composants` VALUES (209,'snoots','long','floopy'),(210,'snoots','long','floopy'),(211,'snoots','long','floopy'),(212,'snoots','long','floopy'),(213,'snoots','long','floopy'),(214,'snoots','long','floopy'),(215,'snoots','long','floopy'),(216,'snoots','long','floopy'),(217,'snoots','long','floopy'),(218,'snoots','long','floopy'),(219,'snoots','long','floopy'),(220,'snoots','long','floopy'),(221,'snoots','long','floopy'),(222,'snoots','long','floopy'),(223,'snoots','long','floopy'),(224,'snoots','long','floopy'),(225,'snoots','long','floopy'),(226,'snoots','long','floopy'),(227,'snoots','long','floopy'),(228,'snoots','long','floopy'),(229,'snoots','long','floopy'),(230,'snoots','long','floopy'),(231,'snoots','long','floopy'),(232,'snoots','long','floopy'),(233,'snoots','long','floopy'),(234,'snoots','long','floopy'),(235,'snoots','long','floopy'),(236,'snoots','long','floopy'),(237,'snoots','long','floopy'),(238,'snoots','long','floopy'),(239,'snoots','long','floopy'),(240,'snoots','long','floopy'),(241,'snoots','long','floopy'),(242,'snoots','long','floopy'),(243,'snoots','long','floopy'),(244,'snoots','long','floopy'),(245,'snoots','long','floopy'),(246,'snoots','long','floopy'),(247,'snoots','long','floopy'),(248,'snoots','long','floopy'),(249,'snoots','long','floopy'),(250,'snoots','long','floopy'),(251,'snoots','long','floopy'),(252,'snoots','long','floopy'),(253,'snoots','long','floopy'),(254,'snoots','long','floopy'),(255,'snoots','long','floopy'),(256,'snoots','long','floopy'),(257,'snoots','long','floopy'),(258,'snoots','long','floopy');
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
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositions_produit`
--

LOCK TABLES `compositions_produit` WRITE;
/*!40000 ALTER TABLE `compositions_produit` DISABLE KEYS */;
INSERT INTO `compositions_produit` VALUES (352,46,NULL),(353,27,NULL),(354,43,NULL),(355,14,NULL),(356,55,NULL),(357,64,NULL),(358,20,NULL),(359,29,NULL),(360,36,NULL),(361,86,NULL),(362,91,NULL),(363,90,NULL),(364,46,NULL),(365,99,NULL),(366,38,NULL),(367,14,NULL),(368,38,NULL),(369,72,NULL),(370,80,NULL),(371,72,NULL),(372,58,NULL),(373,83,NULL),(374,30,NULL),(375,48,NULL),(376,49,NULL),(377,25,NULL),(378,75,NULL),(379,9,NULL),(380,12,NULL),(381,21,NULL),(382,9,NULL),(383,44,NULL),(384,73,NULL),(385,23,NULL),(386,71,NULL),(387,14,NULL),(388,55,NULL),(389,30,NULL),(390,79,NULL),(391,36,NULL),(392,32,NULL),(393,96,NULL),(394,55,NULL),(395,83,NULL),(396,98,NULL),(397,77,NULL),(398,76,NULL),(399,100,NULL),(400,33,NULL);
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
  KEY `IDX_D5FF3F3FD960F9EE` (`composants_id`),
  CONSTRAINT `FK_D5FF3F3FC5DEA694` FOREIGN KEY (`compositions_produit_id`) REFERENCES `compositions_produit` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D5FF3F3FD960F9EE` FOREIGN KEY (`composants_id`) REFERENCES `composants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositions_produit_composants`
--

LOCK TABLES `compositions_produit_composants` WRITE;
/*!40000 ALTER TABLE `compositions_produit_composants` DISABLE KEYS */;
INSERT INTO `compositions_produit_composants` VALUES (352,210),(353,211),(354,212),(355,213),(356,214),(357,215),(358,216),(359,217),(360,218),(361,219),(362,220),(363,221),(364,222),(365,223),(366,224),(367,225),(368,226),(369,227),(370,228),(371,229),(372,230),(373,231),(374,232),(375,233),(376,234),(377,235),(378,236),(379,237),(380,238),(381,239),(382,240),(383,241),(384,242),(385,243),(386,244),(387,245),(388,246),(389,247),(390,248),(391,249),(392,250),(393,251),(394,252),(395,253),(396,254),(397,255),(398,256),(399,257),(400,258);
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
  KEY `IDX_F2EFD642CD11A2CF` (`produits_id`),
  CONSTRAINT `FK_F2EFD642C5DEA694` FOREIGN KEY (`compositions_produit_id`) REFERENCES `compositions_produit` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F2EFD642CD11A2CF` FOREIGN KEY (`produits_id`) REFERENCES `produits` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositions_produit_produits`
--

LOCK TABLES `compositions_produit_produits` WRITE;
/*!40000 ALTER TABLE `compositions_produit_produits` DISABLE KEYS */;
INSERT INTO `compositions_produit_produits` VALUES (352,703),(352,704),(353,705),(353,706),(354,707),(354,708),(355,709),(355,710),(356,711),(356,712),(357,713),(357,714),(358,715),(358,716),(359,717),(359,718),(360,719),(360,720),(361,721),(361,722),(362,723),(362,724),(363,725),(363,726),(364,727),(364,728),(365,729),(365,730),(366,731),(366,732),(367,733),(367,734),(368,735),(368,736),(369,737),(369,738),(370,739),(370,740),(371,741),(371,742),(372,743),(372,744),(373,745),(373,746),(374,747),(374,748),(375,749),(375,750),(376,751),(376,752),(377,753),(377,754),(378,755),(378,756),(379,757),(379,758),(380,759),(380,760),(381,761),(381,762),(382,763),(382,764),(383,765),(383,766),(384,767),(384,768),(385,769),(385,770),(386,771),(386,772),(387,773),(387,774),(388,775),(388,776),(389,777),(389,778),(390,779),(390,780),(391,781),(391,782),(392,783),(392,784),(393,785),(393,786),(394,787),(394,788),(395,789),(395,790),(396,791),(396,792),(397,793),(397,794),(398,795),(398,796),(399,797),(399,798),(400,799),(400,800);
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
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details_commandes_bl`
--

LOCK TABLES `details_commandes_bl` WRITE;
/*!40000 ALTER TABLE `details_commandes_bl` DISABLE KEYS */;
INSERT INTO `details_commandes_bl` VALUES (451,NULL,75),(452,NULL,80),(453,NULL,38),(454,NULL,99),(455,NULL,80),(456,NULL,72),(457,NULL,86),(458,NULL,77),(459,NULL,50),(460,NULL,57),(461,NULL,45),(462,NULL,66),(463,NULL,39),(464,NULL,40),(465,NULL,26),(466,NULL,24),(467,NULL,33),(468,NULL,9),(469,NULL,91),(470,NULL,12),(471,NULL,76),(472,NULL,23),(473,NULL,9),(474,NULL,71),(475,NULL,22),(476,NULL,80),(477,NULL,63),(478,NULL,54),(479,NULL,90),(480,NULL,22),(481,NULL,92),(482,NULL,64),(483,NULL,81),(484,NULL,84),(485,NULL,34),(486,NULL,68),(487,NULL,54),(488,NULL,1),(489,NULL,51),(490,NULL,21),(491,NULL,75),(492,NULL,22),(493,NULL,52),(494,NULL,8),(495,NULL,56),(496,NULL,61),(497,NULL,72),(498,NULL,33),(499,NULL,50),(500,NULL,19);
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
  KEY `IDX_8E9FABD64D51C308` (`commandes_bl_id`),
  CONSTRAINT `FK_8E9FABD64D51C308` FOREIGN KEY (`commandes_bl_id`) REFERENCES `commandes_bl` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8E9FABD6A93E2F63` FOREIGN KEY (`details_commandes_bl_id`) REFERENCES `details_commandes_bl` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details_commandes_bl_commandes_bl`
--

LOCK TABLES `details_commandes_bl_commandes_bl` WRITE;
/*!40000 ALTER TABLE `details_commandes_bl_commandes_bl` DISABLE KEYS */;
INSERT INTO `details_commandes_bl_commandes_bl` VALUES (451,660),(451,661),(452,662),(452,663),(453,664),(453,665),(454,666),(454,667),(455,668),(455,669),(456,670),(456,671),(457,672),(457,673),(458,674),(458,675),(459,676),(459,677),(460,678),(460,679),(461,680),(461,681),(462,682),(462,683),(463,684),(463,685),(464,686),(464,687),(465,688),(465,689),(466,690),(466,691),(467,692),(467,693),(468,694),(468,695),(469,696),(469,697),(470,698),(470,699),(471,700),(471,701),(472,702),(472,703),(473,704),(473,705),(474,706),(474,707),(475,708),(475,709),(476,710),(476,711),(477,712),(477,713),(478,714),(478,715),(479,716),(479,717),(480,718),(480,719),(481,720),(481,721),(482,722),(482,723),(483,724),(483,725),(484,726),(484,727),(485,728),(485,729),(486,730),(486,731),(487,732),(487,733),(488,734),(488,735),(489,736),(489,737),(490,738),(490,739),(491,740),(491,741),(492,742),(492,743),(493,744),(493,745),(494,746),(494,747),(495,748),(495,749),(496,750),(496,751),(497,752),(497,753),(498,754),(498,755),(499,756),(499,757),(500,758),(500,759);
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
  KEY `IDX_D13C5E7CCD11A2CF` (`produits_id`),
  CONSTRAINT `FK_D13C5E7CA93E2F63` FOREIGN KEY (`details_commandes_bl_id`) REFERENCES `details_commandes_bl` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D13C5E7CCD11A2CF` FOREIGN KEY (`produits_id`) REFERENCES `produits` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details_commandes_bl_produits`
--

LOCK TABLES `details_commandes_bl_produits` WRITE;
/*!40000 ALTER TABLE `details_commandes_bl_produits` DISABLE KEYS */;
INSERT INTO `details_commandes_bl_produits` VALUES (451,701),(451,702),(452,703),(452,704),(453,705),(453,706),(454,707),(454,708),(455,709),(455,710),(456,711),(456,712),(457,713),(457,714),(458,715),(458,716),(459,717),(459,718),(460,719),(460,720),(461,721),(461,722),(462,723),(462,724),(463,725),(463,726),(464,727),(464,728),(465,729),(465,730),(466,731),(466,732),(467,733),(467,734),(468,735),(468,736),(469,737),(469,738),(470,739),(470,740),(471,741),(471,742),(472,743),(472,744),(473,745),(473,746),(474,747),(474,748),(475,749),(475,750),(476,751),(476,752),(477,753),(477,754),(478,755),(478,756),(479,757),(479,758),(480,759),(480,760),(481,761),(481,762),(482,763),(482,764),(483,765),(483,766),(484,767),(484,768),(485,769),(485,770),(486,771),(486,772),(487,773),(487,774),(488,775),(488,776),(489,777),(489,778),(490,779),(490,780),(491,781),(491,782),(492,783),(492,784),(493,785),(493,786),(494,787),(494,788),(495,789),(495,790),(496,791),(496,792),(497,793),(497,794),(498,795),(498,796),(499,797),(499,798),(500,799),(500,800);
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
  UNIQUE KEY `UNIQ_28E6A8A09AAADC05` (`matricule_id`),
  CONSTRAINT `FK_28E6A8A09AAADC05` FOREIGN KEY (`matricule_id`) REFERENCES `profils` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livreurs`
--

LOCK TABLES `livreurs` WRITE;
/*!40000 ALTER TABLE `livreurs` DISABLE KEYS */;
INSERT INTO `livreurs` VALUES (651,1058,4822,'2680742607626819'),(652,1059,9260,'5488865826358422'),(653,1060,5111,'373108115439606'),(654,1061,3206,'5216307496937440'),(655,1062,9107,'4716746975635454'),(656,1063,4915,'372382622709220'),(657,1064,8946,'4485171799396903'),(658,1065,5028,'5189788779025792'),(659,1066,9328,'4532933234956135'),(660,1067,5921,'2532604953530229'),(661,1068,1112,'5360692551752915'),(662,1069,1142,'4916260708451419'),(663,1070,9664,'6011640773113037'),(664,1071,5069,'4537449824497765'),(665,1072,6549,'2221226350919726'),(666,1073,5163,'4916202879683'),(667,1074,9944,'2565857401784851'),(668,1075,8278,'2606142320612868'),(669,1076,9298,'2221531724272037'),(670,1077,9510,'4532834128365690'),(671,1078,3512,'2720578223617671'),(672,1079,2309,'5162648808734460'),(673,1080,3172,'5529594616209915'),(674,1081,1023,'4201797370307423'),(675,1082,9404,'4532697534865847'),(676,1083,2019,'2221832235551582'),(677,1084,8936,'6011153731327186'),(678,1085,5084,'4532343836544802'),(679,1086,2266,'4024007189414708'),(680,1087,9618,'2613418368146279'),(681,1088,4512,'4716130624005098'),(682,1089,7335,'5223369304071599'),(683,1090,4352,'2720854376826827'),(684,1091,7498,'4532013604325'),(685,1092,6488,'2645468731978678'),(686,1093,9230,'4929330396728'),(687,1094,6158,'4916131362006478'),(688,1095,2687,'2641689359966299'),(689,1096,8063,'5196737551586076'),(690,1097,1761,'5325726722634505'),(691,1098,4213,'4532143081410'),(692,1099,2178,'4539126408310527'),(693,1100,5546,'4716886692691669'),(694,1101,3379,'4539865774803256'),(695,1102,1503,'4916898904589670'),(696,1103,9658,'5491795365707967'),(697,1104,8616,'5426968518816940'),(698,1105,3198,'4916596976923856'),(699,1106,9113,'5105573260218648'),(700,1107,7107,'2653549460855309');
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
INSERT INTO `migration_versions` VALUES ('20200412195421','2020-04-12 19:54:27'),('20200413114512','2020-04-13 11:45:18'),('20200416124933','2020-04-16 12:49:39'),('20200416185256','2020-04-16 18:53:09'),('20200416185503','2020-04-16 18:55:07'),('20200417192649','2020-04-17 19:26:55'),('20200420181953','2020-04-20 18:20:00'),('20200420185256','2020-04-20 18:53:02'),('20200420191907','2020-04-20 19:19:13'),('20200427223920','2020-04-27 22:39:27'),('20200429203654','2020-04-29 20:37:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=801 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (701,NULL,'Snow',161.2,12742950.244854,272278297.55,1),(702,NULL,'DarkOrchid',63447317.242264,2.27686,49490593.723436,1),(703,NULL,'DeepPink',25019842.317029,6021.26707566,33.936770136,0),(704,NULL,'NavajoWhite',3777518.697168,31076639.200731,0,0),(705,NULL,'PaleTurquoise',0.58171086,336882.77,472782.49,0),(706,NULL,'SeaShell',1411.9986,891.215837,648604.8734707,0),(707,NULL,'CadetBlue',208958462.29648,93798.07594985,4671.80138331,0),(708,NULL,'Chartreuse',311.59472,658836818.88122,4.507,0),(709,NULL,'Aquamarine',716.57292605,7.480601,120.74254653,0),(710,NULL,'GreenYellow',5.351301,233.7234703,6346167.1582468,0),(711,NULL,'BlanchedAlmond',7708263.699,221079.720507,255503.4,0),(712,NULL,'Snow',718.7,74.2958871,752.3833,0),(713,NULL,'OrangeRed',5510.56,0.969437,10466,0),(714,NULL,'Tan',62059.227,3251.6810472,3.07,0),(715,NULL,'DarkGreen',18404.18,0,688.158644238,0),(716,NULL,'DarkRed',0.085423925,52.1563266,47415323.112,0),(717,NULL,'Tan',4.207354,932.80159,301,0),(718,NULL,'Aquamarine',11021.01654302,7155556.1073,132882271.95978,0),(719,NULL,'SeaGreen',64365.780463897,24443327.761,0.20558484,0),(720,NULL,'Pink',276.8,8130.4179,1151.912,0),(721,NULL,'DarkOrchid',25.129,1.5,5.06406,0),(722,NULL,'DarkViolet',1982165.98,8851483.3203702,0.135,0),(723,NULL,'Brown',203.018,16.5059988,5.5037564,0),(724,NULL,'DarkGreen',179.09103,18383585.55,43057.638,0),(725,NULL,'SlateBlue',108598.0326,60861.94472466,0.499985,0),(726,NULL,'DeepSkyBlue',1.48714,142999.65,41931.9773,0),(727,NULL,'PaleGoldenRod',189262277.18903,4.60553013,6773,0),(728,NULL,'SlateBlue',40103995.61,2.298215738,0.5931234,0),(729,NULL,'AntiqueWhite',94.33,1651.17,18972.82,0),(730,NULL,'NavajoWhite',12.9733,1673249.776,200.725603,0),(731,NULL,'PeachPuff',5661.159,42085.64896411,147222.46927,0),(732,NULL,'RoyalBlue',1826867.2,43545142.837524,30004.8,0),(733,NULL,'Gold',3228688.348,16247,0.902435753,0),(734,NULL,'Cyan',20.9624634,4535.35562,3977630.5748245,0),(735,NULL,'Wheat',2.503484,2.36,243630.47413548,0),(736,NULL,'MediumPurple',31469484.567646,2.692895,121905.74921555,0),(737,NULL,'PeachPuff',108017.1350111,3.451823,84152.9785432,0),(738,NULL,'LightSeaGreen',0.5,63932750.36,543,0),(739,NULL,'BlueViolet',43387565.515,1,3532210,0),(740,NULL,'PaleGoldenRod',4015419.9,3546179,7711,0),(741,NULL,'LightPink',18.406883047,1810312.68,157843058.44,0),(742,NULL,'Aqua',11661274.915845,654.91901887,10718702.541325,0),(743,NULL,'RoyalBlue',44.66,756.67712284,85.5758,0),(744,NULL,'RosyBrown',86629790.92731,60.95,253883.76,0),(745,NULL,'DarkSlateGray',3.31,11.701,312695.63097227,0),(746,NULL,'BlanchedAlmond',36,13753.95,48837561.961271,0),(747,NULL,'Tomato',276.656286,178394091,23546288.2358,0),(748,NULL,'Azure',29661.2921,22344944,19,0),(749,NULL,'DarkGreen',182137.01993483,87219216,3406.388482,0),(750,NULL,'Snow',57.65304316,36464304,3331914.562731,0),(751,NULL,'PaleGreen',2628668.05295,11.831805,79479.6686194,0),(752,NULL,'Turquoise',17716.9191244,7138.426604,514.1652471,0),(753,NULL,'Orchid',6285.5798,1329.66017,748204.41,0),(754,NULL,'Coral',38724.141137174,437682543.51168,106652.371,0),(755,NULL,'MidnightBlue',333.29977639,526.5268602,0.33215,0),(756,NULL,'SaddleBrown',8269931.272698,2861024.39027,0.802333,0),(757,NULL,'MediumSlateBlue',18309.98835,351732595.95224,323114643,0),(758,NULL,'DarkRed',664.850322,10615608.257798,7.06,0),(759,NULL,'DarkRed',45321413.54228,3031.346827,158441014.04577,0),(760,NULL,'DarkSeaGreen',83.4501,1086258.5892171,5334109.8968,0),(761,NULL,'OldLace',1.479,7793090.792885,500814199.247,0),(762,NULL,'Beige',504551.1693045,222246.72917491,69394797,0),(763,NULL,'GhostWhite',0.7,43080803.3042,17781.1,0),(764,NULL,'Violet',266.308,5.1466,43669.7021,0),(765,NULL,'MediumPurple',2512.793402385,76071079.605878,9415.971,0),(766,NULL,'LawnGreen',30064.95036152,37,2520.36414863,0),(767,NULL,'LawnGreen',59.82,27.85,572.2121969,0),(768,NULL,'Yellow',1256394,3.638,7568296.1053779,0),(769,NULL,'Lavender',26.000323496,276.45,320999648.89872,0),(770,NULL,'SandyBrown',3.251419572,3565,11290035.127068,0),(771,NULL,'Chocolate',139.60271322,73289183.059088,37782507.903916,0),(772,NULL,'MediumTurquoise',1259204.7085864,2652047.43,34663.4,0),(773,NULL,'RoyalBlue',374.033972818,61.56886,47865.2254,0),(774,NULL,'Cyan',33.27037,7818411.85009,148.6,0),(775,NULL,'AntiqueWhite',3380.986703,242.376442,30.16937774,0),(776,NULL,'Pink',24581595.799143,2.67654,2.025408532,0),(777,NULL,'Gold',1432.9354644,15331319.00612,493.062,0),(778,NULL,'LemonChiffon',31.7,4.2261354,150507813.95,0),(779,NULL,'Khaki',6.25,5211986.69381,567.90337859,0),(780,NULL,'Brown',1347695.4,1,0,0),(781,NULL,'DarkBlue',10870.4521,26.5839504,7303.99776135,0),(782,NULL,'Brown',15.626,213660.098,24211738.7662,0),(783,NULL,'HotPink',1130962,47.640595,15.03692524,0),(784,NULL,'AntiqueWhite',0.248,72084.0088,241477.41054,0),(785,NULL,'Plum',4815.80630409,1427538.5235413,133.25,0),(786,NULL,'Plum',54656427.72261,45213,19928.10470957,0),(787,NULL,'BlanchedAlmond',44.6418444,85.674204008,55.811,0),(788,NULL,'Navy',7.9390812,49442225.119363,146,0),(789,NULL,'Lavender',43524,45,6989.3289,0),(790,NULL,'Violet',242.1,76608.3347,19801997.73,0),(791,NULL,'LightSeaGreen',0.1047,6.88240486,19768.24524,0),(792,NULL,'WhiteSmoke',8.284878053,35.47197825,7836940.195763,0),(793,NULL,'MediumOrchid',287714,4546133.75849,20.952066644,0),(794,NULL,'DarkBlue',393.349,154764253.47875,13979.6451,0),(795,NULL,'LightGoldenRodYellow',36139.632,592157.774,479354.892939,0),(796,NULL,'MediumVioletRed',480380,7747.19918595,0,0),(797,NULL,'MediumBlue',4.98472645,7322.95809,14162,0),(798,NULL,'GoldenRod',18248595.909349,18.0527428,46.346526049,0),(799,NULL,'Sienna',2801.8734606,4441476.17,234037069.1,0),(800,NULL,'HotPink',325.84889413,9.39565437,106828876.40105,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profils`
--

LOCK TABLES `profils` WRITE;
/*!40000 ALTER TABLE `profils` DISABLE KEYS */;
INSERT INTO `profils` VALUES (1058,8988,'ryan.net','jast.net','Wj.9rEkJJc5fP\"p8','Ettie',0),(1059,2328,'walsh.com','wiegand.com','7scK.]ZVB*VD\\J@KWm','Jaylen',0),(1060,9385,'runte.com','mayert.com','1FynqJb\'Y_f,cz8]=','Dustin',0),(1061,2880,'padberg.com','cormier.net','O\'riQ]Ioa.%R6,MV-\\','Harmony',0),(1062,9642,'kuhlman.com','leuschke.com','6^>NI|*L','Jermaine',0),(1063,8370,'witting.com','powlowski.com','0I*#XW','Ophelia',0),(1064,3317,'hartmann.net','koch.info','nD_xsQVaDpC]!M_;J','Jace',0),(1065,2964,'parker.com','leuschke.com','n[({)C*T!0#~FyW\\+','Alize',0),(1066,5211,'pouros.com','dach.org','U1p.&pD,bVTmNV>Qm','Rosalee',0),(1067,9127,'hagenes.info','gottlieb.com','rAiOb{jUF>','Francis',0),(1068,3507,'predovic.org','reinger.com','OcfkW#1tJS6<F!;?*','Tatyana',0),(1069,7182,'oberbrunner.com','sauer.biz','S?+9W,M`9','Adonis',0),(1070,6137,'lehner.com','veum.org','g`e`#wUHPzwZ\'-}n`w#\"','Yesenia',0),(1071,4630,'smith.org','miller.com','YUqvzo)\'b0\'l)&J^','Camryn',0),(1072,5919,'reichert.net','senger.com','%l=]_+93k$];MyL{','Griffin',0),(1073,1945,'renner.com','marvin.com','d&n+R##w^7#8w','Kiley',0),(1074,8309,'rippin.com','bailey.com','G8E173','Dianna',0),(1075,8379,'morar.com','homenick.net','@B!%q2U0*\'N\"-d','Ophelia',0),(1076,9600,'pfeffer.com','kovacek.com','`vVJCP>i7Pg','Adrianna',0),(1077,9077,'satterfield.com','parisian.org','Zk]<.V\\3o}','Fannie',0),(1078,3819,'howell.com','lehner.com','w],C(%OKwq!','Lukas',0),(1079,4068,'tillman.com','moen.net','C0=MAF>Ifi1}E924#DP`','Aditya',0),(1080,9113,'kemmer.com','prosacco.com','iB]_Hfx.1|Xk4\"]7c;-H','Darrion',0),(1081,9997,'ritchie.com','bernhard.com','[FJgn+JD','Hudson',0),(1082,2238,'padberg.info','beahan.com','e^\"k%IR`','Ellen',0),(1083,2170,'graham.biz','ebert.com','oP!VkT{Uf@S7','Maritza',0),(1084,9473,'borer.com','huel.com','$XLSHh!uOYA\\(S4+d4','Dayana',0),(1085,4391,'bechtelar.com','mayer.com','m}CK3\"8_BS`adec','Angelita',0),(1086,6906,'fritsch.net','leffler.org','c?xfd0g#$^u6tSEN','Dane',0),(1087,9106,'weissnat.com','crooks.com','`slH3k>.','Ethyl',0),(1088,7313,'bayer.com','nienow.com','/lJ#!wK=:faP}L|M\\j','Savannah',0),(1089,5961,'sipes.com','wolff.biz','ld94|hkr\\','Jamal',0),(1090,2743,'gislason.com','koss.com','G\"e\"*#`a!kh<E$dbs','Kade',0),(1091,9887,'wolff.com','pacocha.info','U:@#{p,','Zion',0),(1092,3200,'schumm.com','bruen.info','NDZB,XkK','Isom',0),(1093,5041,'greenfelder.info','mckenzie.com','ix!/%@;%!.!w','Alford',0),(1094,1085,'hackett.com','rosenbaum.com','565Ye!\\@','Grace',0),(1095,9601,'kreiger.com','king.net','L&l6ThB8M@yYz#$Esd','Lloyd',0),(1096,4417,'vandervort.com','powlowski.com','6CE>v#','Kale',0),(1097,8111,'runolfsdottir.com','funk.info',']g8MMcSIAeJt\"','Mertie',0),(1098,8555,'schiller.biz','goldner.com','zXlljsaX*','Erna',0),(1099,5908,'langosh.com','boyer.org','4#}Ca>','Briana',0),(1100,9040,'considine.com','murazik.com','H;L7%:Z0DW@>(','Lamont',0),(1101,1347,'williamson.info','powlowski.com','KJ\'[V?:f>vRE;]','Geo',0),(1102,2396,'stokes.info','bernhard.com','^FPXzLP|/','Scarlett',0),(1103,7267,'fadel.com','kirlin.biz','Z}GkJfY~;I[J?<S|3)|$','Elias',0),(1104,6205,'hammes.net','wuckert.org','^6][LYi60#@2W#pla0','Alycia',0),(1105,7093,'schamberger.org','toy.com','N#aN,.Xc2X8','Alvina',0),(1106,5926,'goldner.com','daniel.com','uz]80ZO}GPe>B','Abbigail',0),(1107,5682,'langworth.net','denesik.com','NU\'dqI','Tanya',0);
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

-- Dump completed on 2020-05-01 22:55:26
