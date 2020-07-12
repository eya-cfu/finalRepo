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
) ENGINE=InnoDB AUTO_INCREMENT=1205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrateurs`
--

LOCK TABLES `administrateurs` WRITE;
/*!40000 ALTER TABLE `administrateurs` DISABLE KEYS */;
INSERT INTO `administrateurs` VALUES (1155,'Hallie','Hane','Fae Osinski',719721),(1156,'Jayce','Stark','Arlene Bednar',69309),(1157,'Desmond','Pfannerstill','Luz Marvin',178939),(1158,'Sylvia','Lang','Maureen Swaniawski',158213),(1159,'Buddy','Cummings','Timmy Murphy',69319),(1160,'Benjamin','Schulist','Clair Gulgowski Jr.',578086),(1161,'Joanne','Keeling','Wilburn Paucek',906057),(1162,'Cecelia','Donnelly','Malika Rosenbaum',22026),(1163,'Mathias','Nienow','Ms. Maurine Torp IV',886030),(1164,'Ryleigh','Gerhold','Concepcion O\'Reilly',451921),(1165,'Terence','Spinka','Nikko Brown',640896),(1166,'Eveline','Parisian','Ms. Ollie Mosciski DVM',92434),(1167,'Beatrice','Kuvalis','Jakob Dare',155073),(1168,'Molly','Leuschke','Maverick Corkery',358502),(1169,'Ashlee','Roob','Mr. Bennett Shields',38182),(1170,'Deja','Fay','Mr. Consuelo Hickle II',80865),(1171,'Bell','Schuster','Fae Orn DVM',321249),(1172,'Jany','Nikolaus','Mrs. Jazmyne Wolf DDS',554430),(1173,'Brennon','Sauer','Elva Cruickshank',184862),(1174,'Colin','Bogisich','Stanford Durgan',531002),(1175,'Jerad','Rodriguez','Candace Baumbach',48667),(1176,'Jovan','Bernier','Stevie Weissnat',510521),(1177,'Shayna','Hoeger','Dr. Kay Block',910718),(1178,'Rosie','Hirthe','Leda Moore PhD',233157),(1179,'Lauren','Kunde','Maxwell Turner I',698175),(1180,'Katrine','O\'Hara','Jasen Von',600647),(1181,'Green','Eichmann','Prof. Boris Kunze',902673),(1182,'Gage','Hill','Tyrel Toy',487769),(1183,'Deborah','Swaniawski','Myron Wyman',633864),(1184,'Cindy','Beier','Jettie Pagac',683895),(1185,'Maverick','O\'Reilly','Prof. Isabella Welch',791265),(1186,'Abdullah','Dach','Halie Cummings',534949),(1187,'Gerardo','Haag','Keaton Veum',993403),(1188,'Jack','Murphy','Granville Mertz',160672),(1189,'Jalon','Durgan','Dr. Dayton Schaefer',926679),(1190,'Jaylen','Windler','Brett McDermott',524769),(1191,'Ceasar','Rice','Mireille Kuphal',814085),(1192,'Reanna','Tillman','Sheldon Kassulke',556939),(1193,'Jerel','Crona','Serenity Jacobson',366356),(1194,'Ansley','Block','Mrs. Danielle Shields Sr.',466254),(1195,'Juwan','Powlowski','Danyka McLaughlin',379304),(1196,'Ernestine','Simonis','Pamela Wisoky',805269),(1197,'Narciso','Streich','Abigayle Pollich DVM',23784),(1198,'Caterina','Mills','Litzy Reilly',41931),(1199,'Norene','Reichert','Jakayla Langworth',776854),(1200,'Loyce','Jaskolski','Marcelina Gerhold',765366),(1201,'Peter','Schroeder','Luz Marquardt',187541),(1202,'Anastasia','Armstrong','Helene Klein',503603),(1203,'Lazaro','Lueilwitz','Anastasia Purdy I',934573),(1204,'Colleen','Padberg','Prof. Carmen Nikolaus',283865);
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
) ENGINE=InnoDB AUTO_INCREMENT=1208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boulangeries`
--

LOCK TABLES `boulangeries` WRITE;
/*!40000 ALTER TABLE `boulangeries` DISABLE KEYS */;
INSERT INTO `boulangeries` VALUES (1158,1408,'Lilyan Koelpin','LightSteelBlue',425,NULL,5904,0),(1159,1409,'Darrel McLaughlin','SeaGreen',879,NULL,1349,0),(1160,1410,'Mr. Stephon Quitzon','Khaki',786,NULL,4920,0),(1161,1411,'Estevan Lindgren','Aqua',362,NULL,2237,0),(1162,1412,'Margret Pagac DVM','Olive',213,NULL,5661,0),(1163,1413,'Estelle Botsford','MediumSpringGreen',829,NULL,9075,0),(1164,1414,'Prof. Clement Raynor PhD','LightSeaGreen',652,NULL,5377,0),(1165,1415,'Prof. Alysha Smitham I','DarkBlue',689,NULL,9954,0),(1166,1416,'Stanley Osinski','MediumAquaMarine',647,NULL,3603,0),(1167,1417,'Emmanuelle Feeney','Wheat',463,NULL,9921,0),(1168,1418,'Jayda Konopelski','Linen',398,NULL,3608,0),(1169,1419,'Paxton Dickinson','Beige',388,NULL,9801,0),(1170,1420,'Noelia Marks III','PaleVioletRed',830,NULL,2261,0),(1171,1421,'Brook Olson','Violet',419,NULL,3430,0),(1172,1422,'Prof. Lesly Baumbach MD','Snow',445,NULL,2175,0),(1173,1423,'Mr. Abdiel Stoltenberg II','Lime',371,NULL,7549,0),(1174,1424,'Josefa Spencer','Black',959,NULL,7667,0),(1175,1425,'Dr. Marlin Grimes PhD','Crimson',992,NULL,4084,0),(1176,1426,'Eldridge Bogisich','SlateGray',524,NULL,7647,0),(1177,1427,'Emiliano Schultz','DarkGoldenRod',125,NULL,9617,0),(1178,1428,'Brionna Dach PhD','DarkRed',308,NULL,3580,0),(1179,1429,'Prof. Margarett Towne MD','MistyRose',559,NULL,7574,0),(1180,1430,'Jordi Mertz','Violet',799,NULL,2471,0),(1181,1431,'Anjali Wisoky','Darkorange',929,NULL,8007,0),(1182,1432,'Prof. Levi Kerluke','FireBrick',921,NULL,1231,0),(1183,1433,'Marshall Hilpert','DarkKhaki',658,NULL,2814,0),(1184,1434,'Barton Dickinson III','Indigo',486,NULL,5752,0),(1185,1435,'Taya O\'Kon','DimGrey',137,NULL,4944,0),(1186,1436,'Mr. Torrey Ferry IV','RosyBrown',866,NULL,3709,0),(1187,1437,'Piper Schaden','DarkGray',557,NULL,7074,0),(1188,1438,'Frankie Armstrong MD','ForestGreen',612,NULL,7835,0),(1189,1439,'Elias Turcotte','BlueViolet',818,NULL,4120,0),(1190,1440,'Tillman Nienow Sr.','CornflowerBlue',956,NULL,8079,0),(1191,1441,'Cassandra Medhurst','Silver',767,NULL,3364,0),(1192,1442,'Cooper Parisian','Tomato',389,NULL,4256,0),(1193,1443,'Loraine Bahringer','DarkSeaGreen',664,NULL,3932,0),(1194,1444,'Robin Friesen','Bisque',780,NULL,3417,0),(1195,1445,'Esta Hills','DimGrey',966,NULL,4471,0),(1196,1446,'Leon VonRueden','LightYellow',789,NULL,3059,0),(1197,1447,'Prof. Mose Jerde III','Azure',779,NULL,4538,0),(1198,1448,'Bertrand Treutel','MediumTurquoise',205,NULL,7286,0),(1199,1449,'Hudson Considine','PeachPuff',740,NULL,3349,0),(1200,1450,'Uriah Harvey','Peru',969,NULL,7181,0),(1201,1451,'Elna Auer','IndianRed',591,NULL,6749,0),(1202,1452,'Erika Senger','DarkGray',867,NULL,8738,0),(1203,1453,'Melyna Bergstrom','Khaki',471,NULL,4454,0),(1204,1454,'Lempi Littel','Gold',924,NULL,5165,0),(1205,1455,'Prof. Carolina Moen IV','LightSkyBlue',116,NULL,1235,0),(1206,1456,'Dr. Donnie Schmitt','Peru',781,NULL,3301,0),(1207,1457,'Camilla Muller','DarkGoldenRod',853,NULL,2166,0);
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
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_66DA931FA0DE2F48` (`id_boulangerie_id`),
  KEY `IDX_66DA931FF8646701` (`livreur_id`),
  CONSTRAINT `FK_66DA931FA0DE2F48` FOREIGN KEY (`id_boulangerie_id`) REFERENCES `boulangeries` (`id`),
  CONSTRAINT `FK_66DA931FF8646701` FOREIGN KEY (`livreur_id`) REFERENCES `livreurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1364 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes_bl`
--

LOCK TABLES `commandes_bl` WRITE;
/*!40000 ALTER TABLE `commandes_bl` DISABLE KEYS */;
INSERT INTO `commandes_bl` VALUES (1264,1158,1001,'GoldenRod','nouvelle','1987-04-22','2020-03-20 00:44:36'),(1265,1158,1001,'ForestGreen','nouvelle','2018-09-24','1984-06-26 00:10:24'),(1266,1159,1002,'IndianRed','nouvelle','2005-12-17','2020-03-20 00:44:36'),(1267,1159,1002,'YellowGreen','nouvelle','1977-07-14','1993-05-11 10:42:32'),(1268,1160,1003,'SaddleBrown','nouvelle','2004-01-17','2020-03-20 00:44:36'),(1269,1160,1003,'Gold','nouvelle','2018-07-04','2001-05-12 01:55:17'),(1270,1161,1004,'HoneyDew','nouvelle','1980-02-27','2020-03-20 00:44:36'),(1271,1161,1004,'DimGrey','nouvelle','1996-02-04','2000-07-12 22:55:10'),(1272,1162,1005,'Crimson','nouvelle','1987-11-23','2020-03-20 00:44:36'),(1273,1162,1005,'Chartreuse','nouvelle','2003-07-17','2018-03-12 08:07:31'),(1274,1163,1006,'YellowGreen','nouvelle','1975-02-07','2020-03-20 00:44:36'),(1275,1163,1006,'LightBlue','nouvelle','2018-07-04','1974-04-08 06:34:05'),(1276,1164,1007,'Aqua','nouvelle','2007-08-28','2020-03-20 00:44:36'),(1277,1164,1007,'DarkSeaGreen','nouvelle','1978-09-26','2013-02-20 14:58:05'),(1278,1165,1008,'DarkViolet','nouvelle','2004-10-08','2020-03-20 00:44:36'),(1279,1165,1008,'OrangeRed','nouvelle','2018-04-07','1990-05-17 12:29:29'),(1280,1166,1009,'GhostWhite','nouvelle','2012-01-18','2020-03-20 00:44:36'),(1281,1166,1009,'MediumBlue','nouvelle','1986-08-08','2005-02-02 01:59:51'),(1282,1167,1010,'DarkBlue','nouvelle','1987-09-11','2020-03-20 00:44:36'),(1283,1167,1010,'Beige','nouvelle','2004-01-12','2008-10-02 19:34:46'),(1284,1168,1011,'PaleVioletRed','nouvelle','2000-09-23','2020-03-20 00:44:36'),(1285,1168,1011,'AntiqueWhite','nouvelle','1984-05-30','2008-04-21 07:19:39'),(1286,1169,1012,'PaleGreen','nouvelle','2016-04-17','2020-03-20 00:44:36'),(1287,1169,1012,'DarkTurquoise','nouvelle','2004-11-10','1997-09-13 10:16:27'),(1288,1170,1013,'LightGoldenRodYellow','nouvelle','1989-08-31','2020-03-20 00:44:36'),(1289,1170,1013,'DarkOrchid','nouvelle','1977-03-18','1983-06-18 22:59:07'),(1290,1171,1014,'Snow','nouvelle','2007-07-16','2020-03-20 00:44:36'),(1291,1171,1014,'DarkSlateGray','nouvelle','1998-05-23','2002-04-21 20:51:55'),(1292,1172,1015,'Chocolate','nouvelle','1999-02-28','2020-03-20 00:44:36'),(1293,1172,1015,'Cyan','nouvelle','1993-05-18','2005-08-09 11:27:49'),(1294,1173,1016,'Aqua','nouvelle','1993-04-15','2020-03-20 00:44:36'),(1295,1173,1016,'LightSteelBlue','nouvelle','2003-06-11','2017-10-15 00:16:08'),(1296,1174,1017,'GoldenRod','nouvelle','1982-03-27','2020-03-20 00:44:36'),(1297,1174,1017,'Aqua','nouvelle','1977-07-17','2011-10-15 21:29:48'),(1298,1175,1018,'Silver','nouvelle','1988-11-01','2020-03-20 00:44:36'),(1299,1175,1018,'DarkOliveGreen','nouvelle','2007-01-08','2019-11-27 06:52:35'),(1300,1176,1019,'PowderBlue','nouvelle','2012-01-12','2020-03-20 00:44:36'),(1301,1176,1019,'OliveDrab','nouvelle','1994-03-08','1976-08-01 06:19:10'),(1302,1177,1020,'AliceBlue','nouvelle','1981-09-14','2020-03-20 00:44:36'),(1303,1177,1020,'DodgerBlue','nouvelle','1990-10-26','2000-11-16 12:31:48'),(1304,1178,1021,'Wheat','nouvelle','1993-07-27','2020-03-20 00:44:36'),(1305,1178,1021,'Purple','nouvelle','1972-02-21','1985-12-06 13:21:25'),(1306,1179,1022,'MediumVioletRed','nouvelle','2019-08-09','2020-03-20 00:44:36'),(1307,1179,1022,'RoyalBlue','nouvelle','2013-08-08','1970-06-23 03:11:33'),(1308,1180,1023,'SkyBlue','nouvelle','2008-03-30','2020-03-20 00:44:36'),(1309,1180,1023,'Indigo','nouvelle','2010-10-06','1976-05-21 13:57:07'),(1310,1181,1024,'White','nouvelle','1980-06-22','2020-03-20 00:44:36'),(1311,1181,1024,'LightSkyBlue','nouvelle','2017-03-19','1987-01-25 21:45:38'),(1312,1182,1025,'Chartreuse','nouvelle','1982-07-02','2020-03-20 00:44:36'),(1313,1182,1025,'GreenYellow','nouvelle','1984-01-27','1993-03-26 13:02:53'),(1314,1183,1026,'DarkGray','nouvelle','2004-03-09','2020-03-20 00:44:36'),(1315,1183,1026,'Brown','nouvelle','1976-06-19','1976-04-17 11:57:49'),(1316,1184,1027,'PapayaWhip','nouvelle','2003-12-19','2020-03-20 00:44:36'),(1317,1184,1027,'ForestGreen','nouvelle','1972-01-21','2002-03-16 22:14:13'),(1318,1185,1028,'Fuchsia','nouvelle','2007-05-12','2020-03-20 00:44:36'),(1319,1185,1028,'PaleVioletRed','nouvelle','1981-05-15','2002-06-05 14:12:44'),(1320,1186,1029,'Blue','nouvelle','2003-07-20','2020-03-20 00:44:36'),(1321,1186,1029,'SaddleBrown','nouvelle','2004-03-22','1986-10-17 12:10:47'),(1322,1187,1030,'MediumSlateBlue','nouvelle','1983-08-15','2020-03-20 00:44:36'),(1323,1187,1030,'PapayaWhip','nouvelle','1994-02-25','1992-08-24 05:43:13'),(1324,1188,1031,'DarkSlateBlue','nouvelle','1972-04-09','2020-03-20 00:44:36'),(1325,1188,1031,'DarkSlateGray','nouvelle','2016-01-11','1992-02-17 04:21:16'),(1326,1189,1032,'SkyBlue','nouvelle','1972-01-22','2020-03-20 00:44:36'),(1327,1189,1032,'Orange','nouvelle','1987-05-03','1992-07-26 23:01:03'),(1328,1190,1033,'Orange','nouvelle','2015-05-24','2020-03-20 00:44:36'),(1329,1190,1033,'Crimson','nouvelle','2017-10-26','1974-07-15 10:24:14'),(1330,1191,1034,'DarkGreen','nouvelle','2004-03-12','2020-03-20 00:44:36'),(1331,1191,1034,'LightCoral','nouvelle','2001-07-13','2007-08-04 15:44:52'),(1332,1192,1035,'FloralWhite','nouvelle','1971-06-29','2020-03-20 00:44:36'),(1333,1192,1035,'Violet','nouvelle','2009-05-16','1971-01-03 10:51:06'),(1334,1193,1036,'Violet','nouvelle','1970-07-20','2020-03-20 00:44:36'),(1335,1193,1036,'DarkSeaGreen','nouvelle','2010-06-26','2009-06-23 00:26:20'),(1336,1194,1037,'GoldenRod','nouvelle','1988-11-05','2020-03-20 00:44:36'),(1337,1194,1037,'GhostWhite','nouvelle','1978-10-20','1976-10-10 15:41:06'),(1338,1195,1038,'DarkGray','nouvelle','2006-03-11','2020-03-20 00:44:36'),(1339,1195,1038,'WhiteSmoke','nouvelle','2017-05-08','2009-05-17 21:27:15'),(1340,1196,1039,'Plum','nouvelle','2002-02-04','2020-03-20 00:44:36'),(1341,1196,1039,'DarkGray','nouvelle','2010-07-09','2009-05-12 23:40:08'),(1342,1197,1040,'LightGreen','nouvelle','1973-03-25','2020-03-20 00:44:36'),(1343,1197,1040,'ForestGreen','nouvelle','1970-07-28','1987-02-14 16:01:32'),(1344,1198,1041,'Thistle','nouvelle','2009-01-23','2020-03-20 00:44:36'),(1345,1198,1041,'SaddleBrown','nouvelle','2011-06-13','1991-07-31 12:48:55'),(1346,1199,1042,'Violet','nouvelle','2005-06-20','2020-03-20 00:44:36'),(1347,1199,1042,'Tomato','nouvelle','2012-02-20','1987-02-03 18:26:37'),(1348,1200,1043,'MediumVioletRed','nouvelle','1975-09-04','2020-03-20 00:44:36'),(1349,1200,1043,'DarkViolet','nouvelle','2001-07-25','1971-01-15 11:27:51'),(1350,1201,1044,'Wheat','nouvelle','2016-08-18','2020-03-20 00:44:36'),(1351,1201,1044,'WhiteSmoke','nouvelle','1994-12-02','1991-10-02 14:22:21'),(1352,1202,1045,'Navy','nouvelle','1991-12-06','2020-03-20 00:44:36'),(1353,1202,1045,'SlateBlue','nouvelle','2019-01-13','2013-10-26 06:46:21'),(1354,1203,1046,'DarkGreen','nouvelle','1975-01-01','2020-03-20 00:44:36'),(1355,1203,1046,'DarkBlue','nouvelle','1984-02-24','1995-04-26 04:28:09'),(1356,1204,1047,'Cornsilk','nouvelle','2007-10-29','2020-03-20 00:44:36'),(1357,1204,1047,'Sienna','nouvelle','2009-06-06','1976-10-22 13:34:10'),(1358,1205,1048,'MediumTurquoise','nouvelle','1994-11-10','2020-03-20 00:44:36'),(1359,1205,1048,'MediumPurple','nouvelle','1971-05-26','2006-09-27 07:30:20'),(1360,1206,1049,'RoyalBlue','nouvelle','1972-01-20','2020-03-20 00:44:36'),(1361,1206,1049,'PaleTurquoise','nouvelle','2007-06-20','1970-04-17 19:11:12'),(1362,1207,1050,'WhiteSmoke','nouvelle','2008-01-14','2020-03-20 00:44:36'),(1363,1207,1050,'DeepPink','nouvelle','1996-09-01','2002-01-27 23:37:06');
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
  `libelle` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantite_total` int(11) DEFAULT NULL,
  `due_date` date NOT NULL,
  `code_produit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes_labo`
--

LOCK TABLES `commandes_labo` WRITE;
/*!40000 ALTER TABLE `commandes_labo` DISABLE KEYS */;
INSERT INTO `commandes_labo` VALUES (3,NULL,'label',486,'1970-01-01',300),(4,NULL,'label',9824,'1970-01-01',831),(5,NULL,'label',4655,'1970-01-01',495),(6,NULL,'label',8297,'1970-01-01',351),(7,NULL,'label',8204,'1970-01-01',319),(8,NULL,'label',1721,'1970-01-01',975),(9,NULL,'label',51,'1970-01-01',325),(10,NULL,'label',9011,'1970-01-01',60),(11,NULL,'label',1372,'1970-01-01',26),(12,NULL,'label',469,'1970-01-01',843),(13,NULL,'label',7898,'1970-01-01',202),(14,NULL,'label',2275,'1970-01-01',185),(15,NULL,'label',6655,'1970-01-01',175),(16,NULL,'label',22,'1970-01-01',65),(17,NULL,'label',1388,'1970-01-01',944),(18,NULL,'label',6100,'1970-01-01',310),(19,NULL,'label',5779,'1970-01-01',43),(20,NULL,'label',9179,'1970-01-01',839),(21,NULL,'label',7136,'1970-01-01',230),(22,NULL,'label',2983,'1970-01-01',31),(23,NULL,'label',683,'1970-01-01',515),(24,NULL,'label',514,'1970-01-01',901),(25,NULL,'label',8253,'1970-01-01',214),(26,NULL,'label',435,'1970-01-01',549),(27,NULL,'label',4390,'1970-01-01',306),(28,NULL,'label',4738,'1970-01-01',866),(29,NULL,'label',294,'1970-01-01',311),(30,NULL,'label',6375,'1970-01-01',994),(31,NULL,'label',3003,'1970-01-01',168),(32,NULL,'label',4613,'1970-01-01',693),(33,NULL,'label',836,'1970-01-01',349),(34,NULL,'label',9626,'1970-01-01',910),(35,NULL,'label',1394,'1970-01-01',787),(36,NULL,'label',4465,'1970-01-01',389),(37,NULL,'label',1389,'1970-01-01',493),(38,NULL,'label',5815,'1970-01-01',161),(39,NULL,'label',5732,'1970-01-01',718),(40,NULL,'label',2440,'1970-01-01',993),(41,NULL,'label',3432,'1970-01-01',33),(42,NULL,'label',368,'1970-01-01',584),(43,NULL,'label',9142,'1970-01-01',70),(44,NULL,'label',8817,'1970-01-01',322),(45,NULL,'label',4213,'1970-01-01',647),(46,NULL,'label',8631,'1970-01-01',680),(47,NULL,'label',1483,'1970-01-01',579),(48,NULL,'label',3798,'1970-01-01',459),(49,NULL,'label',4917,'1970-01-01',794),(50,NULL,'label',1051,'1970-01-01',0),(51,NULL,'label',9852,'1970-01-01',749),(52,NULL,'label',7106,'1970-01-01',582),(53,NULL,'produit',699,'1988-04-06',1201);
/*!40000 ALTER TABLE `commandes_labo` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composants`
--

LOCK TABLES `composants` WRITE;
/*!40000 ALTER TABLE `composants` DISABLE KEYS */;
INSERT INTO `composants` VALUES (251,'wicsmm','DeadlyHumanPoison','l'),(252,'kgsfxi','DeadlyHumanPoison','l'),(253,'tryous','DeadlyHumanPoison','l'),(254,'lnscmw','DeadlyHumanPoison','l'),(255,'fnohpn','DeadlyHumanPoison','l'),(256,'lehhbm','DeadlyHumanPoison','l'),(257,'wwkcwn','DeadlyHumanPoison','l'),(258,'npdbsj','DeadlyHumanPoison','l'),(259,'mschdq','DeadlyHumanPoison','l'),(260,'sfkabv','DeadlyHumanPoison','l'),(261,'takenq','DeadlyHumanPoison','l'),(262,'ewhelk','DeadlyHumanPoison','l'),(263,'tqokde','DeadlyHumanPoison','l'),(264,'ttrxqa','DeadlyHumanPoison','l'),(265,'omwxmy','DeadlyHumanPoison','l'),(266,'nbbebt','DeadlyHumanPoison','l'),(267,'nvagor','DeadlyHumanPoison','l'),(268,'ilooqp','DeadlyHumanPoison','l'),(269,'mlggjq','DeadlyHumanPoison','l'),(270,'jutyyt','DeadlyHumanPoison','l'),(271,'uuwmdc','DeadlyHumanPoison','l'),(272,'kbludd','DeadlyHumanPoison','l'),(273,'dhkorb','DeadlyHumanPoison','l'),(274,'cwwclc','DeadlyHumanPoison','l'),(275,'biufhg','DeadlyHumanPoison','l'),(276,'rwpiri','DeadlyHumanPoison','l'),(277,'igetvj','DeadlyHumanPoison','l'),(278,'exthfv','DeadlyHumanPoison','l'),(279,'umelng','DeadlyHumanPoison','l'),(280,'qjfapz','DeadlyHumanPoison','l'),(281,'ayzhck','DeadlyHumanPoison','l'),(282,'scgenb','DeadlyHumanPoison','l'),(283,'dqzgsk','DeadlyHumanPoison','l'),(284,'cfyvsf','DeadlyHumanPoison','l'),(285,'hnthuf','DeadlyHumanPoison','l'),(286,'qsoxxd','DeadlyHumanPoison','l'),(287,'bxcnlh','DeadlyHumanPoison','l'),(288,'ltztqo','DeadlyHumanPoison','l'),(289,'oukbrs','DeadlyHumanPoison','l'),(290,'eranpz','DeadlyHumanPoison','l'),(291,'gnjszx','DeadlyHumanPoison','l'),(292,'cqwsmj','DeadlyHumanPoison','l'),(293,'egeqkg','DeadlyHumanPoison','l'),(294,'stkvys','DeadlyHumanPoison','l'),(295,'zxzvpn','DeadlyHumanPoison','l'),(296,'uwumoh','DeadlyHumanPoison','l'),(297,'avzqxg','DeadlyHumanPoison','l'),(298,'pfdppo','DeadlyHumanPoison','l'),(299,'gmjnal','DeadlyHumanPoison','l'),(300,'nyqbvd','DeadlyHumanPoison','l');
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
) ENGINE=InnoDB AUTO_INCREMENT=904 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositions_produit`
--

LOCK TABLES `compositions_produit` WRITE;
/*!40000 ALTER TABLE `compositions_produit` DISABLE KEYS */;
INSERT INTO `compositions_produit` VALUES (854,19,NULL),(855,1,NULL),(856,24,NULL),(857,23,NULL),(858,74,NULL),(859,32,NULL),(860,22,NULL),(861,64,NULL),(862,20,NULL),(863,51,NULL),(864,55,NULL),(865,22,NULL),(866,37,NULL),(867,92,NULL),(868,44,NULL),(869,35,NULL),(870,35,NULL),(871,67,NULL),(872,43,NULL),(873,50,NULL),(874,64,NULL),(875,100,NULL),(876,36,NULL),(877,33,NULL),(878,35,NULL),(879,9,NULL),(880,3,NULL),(881,62,NULL),(882,96,NULL),(883,25,NULL),(884,32,NULL),(885,91,NULL),(886,74,NULL),(887,37,NULL),(888,79,NULL),(889,93,NULL),(890,89,NULL),(891,3,NULL),(892,4,NULL),(893,46,NULL),(894,40,NULL),(895,19,NULL),(896,24,NULL),(897,46,NULL),(898,64,NULL),(899,76,NULL),(900,76,NULL),(901,72,NULL),(902,50,NULL),(903,12,NULL);
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
INSERT INTO `compositions_produit_composants` VALUES (854,251),(855,252),(856,253),(857,254),(858,255),(859,256),(860,257),(861,258),(862,259),(863,260),(864,261),(865,262),(866,263),(867,264),(868,265),(869,266),(870,267),(871,268),(872,269),(873,270),(874,271),(875,272),(876,273),(877,274),(878,275),(879,276),(880,277),(881,278),(882,279),(883,280),(884,281),(885,282),(886,283),(887,284),(888,285),(889,286),(890,287),(891,288),(892,289),(893,290),(894,291),(895,292),(896,293),(897,294),(898,295),(899,296),(900,297),(901,298),(902,299),(903,300);
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
INSERT INTO `compositions_produit_produits` VALUES (854,1401),(854,1402),(855,1403),(855,1404),(856,1405),(856,1406),(857,1407),(857,1408),(858,1409),(858,1410),(859,1411),(859,1412),(860,1413),(860,1414),(861,1415),(861,1416),(862,1417),(862,1418),(863,1419),(863,1420),(864,1421),(864,1422),(865,1423),(865,1424),(866,1425),(866,1426),(867,1427),(867,1428),(868,1429),(868,1430),(869,1431),(869,1432),(870,1433),(870,1434),(871,1435),(871,1436),(872,1437),(872,1438),(873,1439),(873,1440),(874,1441),(874,1442),(875,1443),(875,1444),(876,1445),(876,1446),(877,1447),(877,1448),(878,1449),(878,1450),(879,1451),(879,1452),(880,1453),(880,1454),(881,1455),(881,1456),(882,1457),(882,1458),(883,1459),(883,1460),(884,1461),(884,1462),(885,1463),(885,1464),(886,1465),(886,1466),(887,1467),(887,1468),(888,1469),(888,1470),(889,1471),(889,1472),(890,1473),(890,1474),(891,1475),(891,1476),(892,1477),(892,1478),(893,1479),(893,1480),(894,1481),(894,1482),(895,1483),(895,1484),(896,1485),(896,1486),(897,1487),(897,1488),(898,1489),(898,1490),(899,1491),(899,1492),(900,1493),(900,1494),(901,1495),(901,1496),(902,1497),(902,1498),(903,1499),(903,1500);
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
) ENGINE=InnoDB AUTO_INCREMENT=955 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details_commandes_bl`
--

LOCK TABLES `details_commandes_bl` WRITE;
/*!40000 ALTER TABLE `details_commandes_bl` DISABLE KEYS */;
INSERT INTO `details_commandes_bl` VALUES (901,NULL,42),(902,NULL,98),(903,NULL,96),(904,NULL,24),(905,NULL,86),(906,NULL,78),(907,NULL,99),(908,NULL,28),(909,NULL,68),(910,NULL,46),(911,NULL,95),(912,NULL,92),(913,NULL,3),(914,NULL,89),(915,NULL,88),(916,NULL,72),(917,NULL,73),(918,NULL,84),(919,NULL,32),(920,NULL,67),(921,NULL,64),(922,NULL,76),(923,NULL,30),(924,NULL,12),(925,NULL,60),(926,NULL,77),(927,NULL,29),(928,NULL,69),(929,NULL,30),(930,NULL,32),(931,NULL,22),(932,NULL,4),(933,NULL,4),(934,NULL,93),(935,NULL,74),(936,NULL,75),(937,NULL,75),(938,NULL,55),(939,NULL,23),(940,NULL,62),(941,NULL,26),(942,NULL,4),(943,NULL,85),(944,NULL,87),(945,NULL,68),(946,NULL,20),(947,NULL,3),(948,NULL,88),(949,NULL,23),(950,NULL,46),(951,NULL,699),(952,NULL,699),(953,NULL,699),(954,NULL,427);
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
INSERT INTO `details_commandes_bl_commandes_bl` VALUES (901,1264),(901,1265),(902,1266),(902,1267),(903,1268),(903,1269),(904,1270),(904,1271),(905,1272),(905,1273),(906,1274),(906,1275),(907,1276),(907,1277),(908,1278),(908,1279),(909,1280),(909,1281),(910,1282),(910,1283),(911,1284),(911,1285),(912,1286),(912,1287),(913,1288),(913,1289),(914,1290),(914,1291),(915,1292),(915,1293),(916,1294),(916,1295),(917,1296),(917,1297),(918,1298),(918,1299),(919,1300),(919,1301),(920,1302),(920,1303),(921,1304),(921,1305),(922,1306),(922,1307),(923,1308),(923,1309),(924,1310),(924,1311),(925,1312),(925,1313),(926,1314),(926,1315),(927,1316),(927,1317),(928,1318),(928,1319),(929,1320),(929,1321),(930,1322),(930,1323),(931,1324),(931,1325),(932,1326),(932,1327),(933,1328),(933,1329),(934,1330),(934,1331),(935,1332),(935,1333),(936,1334),(936,1335),(937,1336),(937,1337),(938,1338),(938,1339),(939,1340),(939,1341),(940,1342),(940,1343),(941,1344),(941,1345),(942,1346),(942,1347),(943,1348),(943,1349),(944,1350),(944,1351),(945,1352),(945,1353),(946,1354),(946,1355),(947,1356),(947,1357),(948,1358),(948,1359),(949,1360),(949,1361),(950,1362),(950,1363),(951,1264),(952,1264),(953,1264),(954,1264);
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
INSERT INTO `details_commandes_bl_produits` VALUES (901,1401),(901,1402),(902,1403),(902,1404),(903,1405),(903,1406),(904,1407),(904,1408),(905,1409),(905,1410),(906,1411),(906,1412),(907,1413),(907,1414),(908,1415),(908,1416),(909,1417),(909,1418),(910,1419),(910,1420),(911,1421),(911,1422),(912,1423),(912,1424),(913,1425),(913,1426),(914,1427),(914,1428),(915,1429),(915,1430),(916,1431),(916,1432),(917,1433),(917,1434),(918,1435),(918,1436),(919,1437),(919,1438),(920,1439),(920,1440),(921,1441),(921,1442),(922,1443),(922,1444),(923,1445),(923,1446),(924,1447),(924,1448),(925,1449),(925,1450),(926,1451),(926,1452),(927,1453),(927,1454),(928,1455),(928,1456),(929,1457),(929,1458),(930,1459),(930,1460),(931,1461),(931,1462),(932,1463),(932,1464),(933,1465),(933,1466),(934,1467),(934,1468),(935,1469),(935,1470),(936,1471),(936,1472),(937,1473),(937,1474),(938,1475),(938,1476),(939,1477),(939,1478),(940,1479),(940,1480),(941,1481),(941,1482),(942,1483),(942,1484),(943,1485),(943,1486),(944,1487),(944,1488),(945,1489),(945,1490),(946,1491),(946,1492),(947,1493),(947,1494),(948,1495),(948,1496),(949,1497),(949,1498),(950,1499),(950,1500),(951,1401),(952,1401),(953,1401),(954,1401);
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
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_28E6A8A09AAADC05` (`matricule_id`),
  CONSTRAINT `FK_28E6A8A09AAADC05` FOREIGN KEY (`matricule_id`) REFERENCES `profils` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1051 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livreurs`
--

LOCK TABLES `livreurs` WRITE;
/*!40000 ALTER TABLE `livreurs` DISABLE KEYS */;
INSERT INTO `livreurs` VALUES (1001,1408,7586,'4485655554783727',NULL),(1002,1409,2146,'4539210054481863',NULL),(1003,1410,3567,'2482729840447426',NULL),(1004,1411,8363,'4532475614414699',NULL),(1005,1412,1769,'4716792695261',NULL),(1006,1413,4909,'2720265948061720',NULL),(1007,1414,3134,'6011907087676623',NULL),(1008,1415,2086,'5138354772220591',NULL),(1009,1416,3065,'4485320980179',NULL),(1010,1417,3136,'2582646732121464',NULL),(1011,1418,7125,'4502160343280274',NULL),(1012,1419,9174,'5103339119656582',NULL),(1013,1420,6056,'5277640231577980',NULL),(1014,1421,6224,'4929692249177886',NULL),(1015,1422,4881,'4539164171559178',NULL),(1016,1423,9982,'2462327318206525',NULL),(1017,1424,7935,'4916720630996161',NULL),(1018,1425,3620,'2547850909856043',NULL),(1019,1426,6770,'2511780445026557',NULL),(1020,1427,1798,'4916150061603815',NULL),(1021,1428,6246,'4871369704259412',NULL),(1022,1429,3931,'5469935023391030',NULL),(1023,1430,8862,'4539148067267608',NULL),(1024,1431,7427,'4485960474006302',NULL),(1025,1432,4963,'4539117238124139',NULL),(1026,1433,2544,'4929334556327750',NULL),(1027,1434,1186,'4916267998237283',NULL),(1028,1435,1246,'5213918520776282',NULL),(1029,1436,9297,'4485721870101265',NULL),(1030,1437,6035,'2720268710560572',NULL),(1031,1438,8187,'5369910549146706',NULL),(1032,1439,9416,'4008580709359876',NULL),(1033,1440,8060,'5365221010858231',NULL),(1034,1441,7483,'2720310252760705',NULL),(1035,1442,6215,'5326395611995846',NULL),(1036,1443,8022,'2720707631458101',NULL),(1037,1444,9443,'4485356575808508',NULL),(1038,1445,6808,'4024007122731929',NULL),(1039,1446,2642,'2720967382613391',NULL),(1040,1447,6794,'4532371774725851',NULL),(1041,1448,7233,'4485563560944',NULL),(1042,1449,3337,'5320537794316532',NULL),(1043,1450,5883,'4539672999341199',NULL),(1044,1451,4246,'4929786964029',NULL),(1045,1452,8953,'376476718378506',NULL),(1046,1453,6280,'5593026890485409',NULL),(1047,1454,6954,'5389091126599801',NULL),(1048,1455,6506,'4716125378963567',NULL),(1049,1456,3129,'2587729601022586',NULL),(1050,1457,8384,'4929315264265432',NULL);
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
INSERT INTO `migration_versions` VALUES ('20200412195421','2020-04-12 19:54:27'),('20200413114512','2020-04-13 11:45:18'),('20200416124933','2020-04-16 12:49:39'),('20200416185256','2020-04-16 18:53:09'),('20200416185503','2020-04-16 18:55:07'),('20200417192649','2020-04-17 19:26:55'),('20200420181953','2020-04-20 18:20:00'),('20200420185256','2020-04-20 18:53:02'),('20200420191907','2020-04-20 19:19:13'),('20200427223920','2020-04-27 22:39:27'),('20200429203654','2020-04-29 20:37:00'),('20200525211018','2020-05-25 21:20:11'),('20200531225448','2020-05-31 22:54:54'),('20200601223704','2020-06-01 22:37:09'),('20200601224112','2020-06-01 22:41:16'),('20200601234456','2020-06-01 23:45:02'),('20200602211016','2020-06-02 21:10:21');
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
) ENGINE=InnoDB AUTO_INCREMENT=1501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1401,NULL,'MediumTurquoise',181325,231578.194872,557.8339,0),(1402,NULL,'PaleGoldenRod',808643.07190101,0.20022,22.6234,0),(1403,NULL,'Peru',4419146.85003,24.21498393,588337.18353529,0),(1404,NULL,'RosyBrown',27.5927959,0,1.512,0),(1405,NULL,'PaleVioletRed',1531943.0071545,4768332.3135699,19607.252419373,0),(1406,NULL,'Coral',54143720.015,990.0014538,4260.3457062,0),(1407,NULL,'WhiteSmoke',209905.3893538,157138177.3,3.8,0),(1408,NULL,'SaddleBrown',28700.36,197.09772,0,0),(1409,NULL,'MediumAquaMarine',11364214.163303,6.291352252,386006.4,0),(1410,NULL,'DimGray',1.666,334.28,86785.75001456,0),(1411,NULL,'CadetBlue',11.9302836,173610801,0,0),(1412,NULL,'AliceBlue',545.0045,12.398623,308633.62087,0),(1413,NULL,'DarkRed',1237387.43,1.375353,812.91,0),(1414,NULL,'CornflowerBlue',10006622.02368,1816.6307614,4747,0),(1415,NULL,'Fuchsia',3811031.9273254,38,10214.0941934,0),(1416,NULL,'IndianRed',11940,410889.68591,60272.874575,0),(1417,NULL,'HoneyDew',530383.9272,4708.6097,0.0772971,0),(1418,NULL,'Bisque',441.982036,29036468.57554,26767.95345,0),(1419,NULL,'Gray',390531933.22828,206421706.85,3182.642073592,0),(1420,NULL,'Gray',70469.7671096,83897734.904397,7876846.89,0),(1421,NULL,'Pink',175286738.00656,676357.76739676,161669158.4341,0),(1422,NULL,'HoneyDew',459614448.75736,156,10.14364131,0),(1423,NULL,'Moccasin',37.6968,17810.31630135,451477200,0),(1424,NULL,'LightCoral',331.11058493,12.2,1118.0677177,0),(1425,NULL,'DimGrey',1109.9572403,71135171.033725,206795.0008231,0),(1426,NULL,'SpringGreen',1192.314,3.056,11.856389,0),(1427,NULL,'DeepSkyBlue',76.53142,171367.2841,452290037.00202,0),(1428,NULL,'Pink',233.193133917,15.7709,208.6075,0),(1429,NULL,'MediumSeaGreen',1982019.3769,25437656,1,0),(1430,NULL,'DarkGoldenRod',38057.244,1.3202574,2827.8044114,0),(1431,NULL,'MediumSlateBlue',1.717667141,196387.56375,35,0),(1432,NULL,'Thistle',517382.8810552,479.4,12619238.634172,0),(1433,NULL,'Bisque',616.92196,2406.793,920.92742795,0),(1434,NULL,'YellowGreen',68113817.718,482.8,7249.45,0),(1435,NULL,'DarkSlateBlue',600954.01198,39318.596091944,1926790.2,0),(1436,NULL,'LightSkyBlue',1347794.97827,41.992,1335.497008,0),(1437,NULL,'BlueViolet',2.41295,0,52363.2525259,0),(1438,NULL,'MintCream',560205.85714871,52184.0799,160.23638,0),(1439,NULL,'SaddleBrown',17.270838,59.222,25435583.250147,0),(1440,NULL,'Lime',26579.6,1216,10600.2,0),(1441,NULL,'DarkOrchid',263823.79009553,386.2908712,6.2,0),(1442,NULL,'BlueViolet',8.015913489,27.15153,1430650.2055918,0),(1443,NULL,'AntiqueWhite',74625219.19949,55.54957952,0,0),(1444,NULL,'MediumOrchid',6,13834963.019221,0.551,0),(1445,NULL,'DarkMagenta',38255.629,4570.2,19797.00497,0),(1446,NULL,'Brown',534974.59822,796853147.11193,7.38,0),(1447,NULL,'PaleGoldenRod',2971.11888822,17119.32716023,2121.599762712,0),(1448,NULL,'DarkViolet',34059796.260279,321530781.80904,282320402.8,0),(1449,NULL,'Aqua',85305.83637,132868185.31,2523362.17054,0),(1450,NULL,'MediumTurquoise',16578.4853,168707.1465,764.658687,0),(1451,NULL,'DarkMagenta',430973.92646,274746.02336,1879278.534,0),(1452,NULL,'DarkSlateGray',7.69634102,1.920005,10871.2372,0),(1453,NULL,'Plum',2150.7,762857296.48,16561.041,0),(1454,NULL,'SkyBlue',519.520282905,168.148,21515.549581691,0),(1455,NULL,'IndianRed',6.1,0,45380.8225455,0),(1456,NULL,'Brown',6919952.889378,555.123033865,2042.284436,0),(1457,NULL,'DarkBlue',17013160.015,3374812.112,218335.3,0),(1458,NULL,'Tan',4566838.2825,145536.72,7.08602,0),(1459,NULL,'LightSkyBlue',1247917.3974195,3957333.19,1403.7029,0),(1460,NULL,'Wheat',118945.97798069,203515.989627,1014350.44,0),(1461,NULL,'SeaShell',10249172,5001696.5181308,184060538.79108,0),(1462,NULL,'MediumSlateBlue',1560954.2343156,96957363.476,300.901,0),(1463,NULL,'FloralWhite',54780.1,417502.12976431,1346.475,0),(1464,NULL,'SlateBlue',3035955.5995397,36417133.308462,50685412.5,0),(1465,NULL,'DimGray',4802770.575,1852783.419423,45322.419,0),(1466,NULL,'Azure',18200274.501361,64,109274.1085,0),(1467,NULL,'DarkRed',65.052443423,248888780.16,0.31726,0),(1468,NULL,'DarkOrchid',10.96,62652.05696,114609445.2007,0),(1469,NULL,'DeepSkyBlue',3848769.40536,4221.827,69.1,0),(1470,NULL,'AntiqueWhite',68.2904711,14739988.90615,0.891,0),(1471,NULL,'HotPink',4179.7607,627565.80455679,25163.23925,0),(1472,NULL,'OliveDrab',742859.029,848852.55,18557.85474,0),(1473,NULL,'IndianRed',11.294521376,596984.5214207,51891.671173537,0),(1474,NULL,'LimeGreen',3777.28095,740757812.59,56895302.541,0),(1475,NULL,'DarkMagenta',223.247392763,66408481.122,16237.69556,0),(1476,NULL,'LightCoral',4.699409575,22920023.447945,0.8828799,0),(1477,NULL,'Linen',598,14422555.53,82.11,0),(1478,NULL,'Navy',3.774,106.22967,897.444560601,0),(1479,NULL,'PeachPuff',1.981,3430.793369,37012,0),(1480,NULL,'AliceBlue',508165.701596,738136.351818,3.15,0),(1481,NULL,'DarkTurquoise',1.647,31.25,42.6592648,0),(1482,NULL,'MidnightBlue',21.48849,198018261.95954,7814,0),(1483,NULL,'Brown',69.257,401125492.7,7.7,0),(1484,NULL,'Orange',4.255852,15.878,1459477.18,0),(1485,NULL,'OrangeRed',44.112,94570.387,378.5984,0),(1486,NULL,'Wheat',753993727.32414,1545805.5154692,40635095.787899,0),(1487,NULL,'PaleGoldenRod',9757133.8150957,3260031,0.723,0),(1488,NULL,'DarkSalmon',80594.355636982,14.83,454425.80200198,0),(1489,NULL,'MediumSeaGreen',9656650.1636515,10677495.7,6342.38,0),(1490,NULL,'LightCyan',9449.28,55550259.067,40290296.40831,0),(1491,NULL,'Wheat',3892461.8351,1.5,105.3305713,0),(1492,NULL,'WhiteSmoke',1313104.3592707,6049984.3062,6.9856,0),(1493,NULL,'DarkGoldenRod',55,26108439.03991,4363.1,0),(1494,NULL,'Aquamarine',288.741410122,0.343327126,90432370.769,0),(1495,NULL,'RosyBrown',1.6,233740.4,21970.789921928,0),(1496,NULL,'DarkGray',224723.341,44.2272,4114.6549673,0),(1497,NULL,'DarkGray',2.6276637,3101.125678,32176.2120158,0),(1498,NULL,'Snow',0,7.96,0.7841,0),(1499,NULL,'YellowGreen',0.5393,459995114.80923,2747.912,0),(1500,NULL,'Fuchsia',5.26129861,3756.11131585,2948492.076,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1458 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profils`
--

LOCK TABLES `profils` WRITE;
/*!40000 ALTER TABLE `profils` DISABLE KEYS */;
INSERT INTO `profils` VALUES (1408,4626,'damore.info','gibson.com','Boop','floopyLong',0),(1409,7917,'terry.biz','medhurst.com','5j~$gU~\\bk^Z3.','Cayla',0),(1410,2519,'hill.net','wyman.com','[tvW\'PE|Y@b3^[R5J/','Braden',0),(1411,3159,'kassulke.org','wunsch.com','bF1^fCAAZDG][{FT','Maurine',0),(1412,3763,'schuster.org','medhurst.biz','cy2a%?}_:13v.F~rz','Dion',0),(1413,8052,'becker.com','runte.net','ah8\"F.{(UhR\"a8L','Carolanne',0),(1414,2065,'bradtke.com','stehr.info','!ghk+1','Bruce',0),(1415,7363,'veum.info','ritchie.com','RK=;\"O\"yvh','Garnett',0),(1416,5159,'veum.com','williamson.com','`zFW(V,M8pR<k#','Retta',0),(1417,4784,'leffler.com','kuphal.net','a?bvtn','Sedrick',0),(1418,6169,'gaylord.com','kautzer.com',']HiZ6[,C','Liliana',0),(1419,3016,'halvorson.com','tremblay.com','z2\\9OT0rLwCL$DFs}','Domingo',0),(1420,3279,'murazik.com','gislason.com','d<VK*^','Mike',0),(1421,3667,'altenwerth.biz','luettgen.com','.]m(3]n8','Leda',0),(1422,6410,'toy.com','reichel.com','}!W2eO_dwX@S@+','Maureen',0),(1423,5268,'emard.biz','mclaughlin.com','kKYujiv33;v(;}]ow2+','Evie',0),(1424,1753,'kreiger.com','deckow.org','{7`#8=pND','Cleveland',0),(1425,8315,'little.com','thiel.com','8WcN~[F6z0lFtl3>Jm4','Abraham',0),(1426,1653,'gislason.com','reichert.com','_;d*9D1LP','Emmet',0),(1427,1760,'emmerich.biz','cormier.org','p}eRByh9(BM95Y5^J','Maegan',0),(1428,1875,'dubuque.com','jones.com','pi3WsSB12SW0.%0\'%)~E','Neal',0),(1429,6072,'carter.biz','harvey.com','S)\\PF}hT$JNzd','Carlotta',0),(1430,9328,'johnson.net','trantow.com','vRAqD[v?vvyI|@8','Hailie',0),(1431,7409,'kessler.com','waters.com','ejTx|YxJciu%KPpz','Madonna',0),(1432,3559,'torphy.biz','reynolds.com','s,8*uUGdN.w`L`\'=wG','Damaris',0),(1433,8647,'dibbert.biz','swift.org','Xg4^i)K]uvSnd(Y^]^Q~','Burdette',0),(1434,9514,'hettinger.info','mante.org','.{UwcE','Aaron',0),(1435,2130,'pacocha.com','murray.com','r8{1~6c\'J','Nona',0),(1436,8394,'wyman.net','nienow.com','<<dqE\\#nwVP36WSaZh+','Garret',0),(1437,7794,'ankunding.com','schimmel.info','5h*yoITW','Jody',0),(1438,3516,'davis.com','rath.com','{hMxroK8[y{i)jX\'','Meagan',0),(1439,7831,'orn.info','hoppe.com','4\':vX+<<v:(','Ian',0),(1440,9720,'weimann.com','kuphal.com','Ob\\6H+mDrXv`ld*cux','Zetta',0),(1441,8290,'stoltenberg.org','mraz.com','cs77_Y\\xUG\"ms','Hilton',0),(1442,8316,'klein.net','mclaughlin.com',':OE)L/%=LSNxwb@:Xb}','Helene',0),(1443,7966,'swift.com','eichmann.com','kqZu&.D%F2ePsq?','Johann',0),(1444,9858,'aufderhar.com','christiansen.org','4.P7j()ht(.5D:','Carter',0),(1445,6060,'kertzmann.com','schultz.com','Q^N`*|n<','Jade',0),(1446,2729,'okon.com','reynolds.com','vNRL@t(py<A+|{','Darrel',0),(1447,5079,'krajcik.org','parisian.com','\'KRm@c{xE','Nathen',0),(1448,6767,'bosco.com','buckridge.info','@\\kW>WEP|\"','Elaina',0),(1449,2028,'howe.info','gaylord.com','$-rDN`dHPT)f?_','Juliana',0),(1450,8260,'wuckert.com','jenkins.net','?JkebuGb[Cb*t\'5[s3}m','Shyanne',0),(1451,6807,'johnston.com','hand.net','%:OI=\\d{=T$x','Lilian',0),(1452,8738,'schinner.com','rice.com','[;H6/0FgX{};5NJ^','Andreanne',0),(1453,3210,'feil.net','oconnell.com','[?zg]qth','Jennifer',0),(1454,9910,'gislason.biz','hane.com','{ktu[1H\'D2O@]>~YV','Delaney',0),(1455,1316,'hermiston.com','russel.com','V;k8sz;cm2jEt','Asia',0),(1456,2561,'franecki.info','volkman.com','D(vM|3\"m\\w<','Arturo',0),(1457,7881,'jast.com','terry.com',']5n:.S-','Sarina',0);
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

-- Dump completed on 2020-06-02 23:11:06
