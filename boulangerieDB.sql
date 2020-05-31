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
) ENGINE=InnoDB AUTO_INCREMENT=1155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrateurs`
--

LOCK TABLES `administrateurs` WRITE;
/*!40000 ALTER TABLE `administrateurs` DISABLE KEYS */;
INSERT INTO `administrateurs` VALUES (1105,'Junius','Hansen','Mrs. Clementine Conroy IV',612272),(1106,'Angela','Strosin','Rahul Kihn Jr.',235179),(1107,'Lenora','Senger','Dashawn Hessel',579603),(1108,'Kenton','Lemke','Dora Rosenbaum',613576),(1109,'David','Bogisich','Kathryne Tromp',888221),(1110,'Anabel','Bradtke','Santina Pollich',908793),(1111,'Albert','McLaughlin','Horace Flatley',277784),(1112,'Jeffery','Tillman','Duane Padberg',351310),(1113,'Stanford','Gaylord','Ms. Dorothy Gusikowski V',50934),(1114,'Alejandra','Jenkins','Aurore Kerluke',735964),(1115,'Zakary','Franecki','Abdullah Ernser DVM',647872),(1116,'Olaf','Morar','Palma Gutkowski DDS',158099),(1117,'Burdette','Larkin','Dr. Ayden Raynor',900282),(1118,'Otto','Hoeger','Jaylin McDermott',981526),(1119,'Manley','Hyatt','Adolphus Strosin',530947),(1120,'Elvera','Beatty','Terence Medhurst',942063),(1121,'Hailey','Pagac','Mr. Nicholas Graham',827186),(1122,'Ahmed','Murray','Sam Conroy',239885),(1123,'Kathlyn','Kilback','Jerrell Reilly',513305),(1124,'Lera','Beahan','Mrs. Eldridge Macejkovic',13223),(1125,'Norberto','Russel','Dr. Ezequiel Hudson',768758),(1126,'Vicenta','Cummerata','Rosalee Crona Sr.',616847),(1127,'Jaida','Watsica','Lauretta Orn',305099),(1128,'Alexandria','Volkman','Dayna Hand',959639),(1129,'Roselyn','Heidenreich','Dahlia Moore',42730),(1130,'Hank','Shanahan','Antonia Wyman IV',753329),(1131,'Abby','Hintz','Kamren Treutel',494510),(1132,'Jairo','Kling','Matteo Champlin',849765),(1133,'Elouise','Bayer','Hassie Schmidt',867733),(1134,'Keven','Satterfield','Gwen Howe',199296),(1135,'Cara','Gottlieb','Elouise Powlowski',232417),(1136,'Marshall','Johns','Daisha Dicki II',723761),(1137,'Kamren','Marks','Herminio Kohler',103921),(1138,'Ewell','Mohr','Sydni Eichmann',203969),(1139,'Concepcion','Walsh','Salvatore Harris',825196),(1140,'Emilio','Harvey','Lewis Price',585405),(1141,'Freddie','Smith','Ida Brekke',234839),(1142,'Richie','Boyle','Orlando Maggio',44534),(1143,'Yasmine','Barton','Mr. Jarod Beahan DVM',887379),(1144,'Myron','Thompson','Emanuel Stark',137886),(1145,'Keeley','Durgan','Lavon Marquardt',729038),(1146,'Amya','Mitchell','Joseph McKenzie',128882),(1147,'Brionna','Stamm','Amber Dietrich',900723),(1148,'Trinity','Torp','Ms. Casandra Batz I',918952),(1149,'Keegan','Upton','Mrs. Caterina Sipes Jr.',757435),(1150,'Kaela','O\'Connell','Raegan Murazik',328393),(1151,'Gay','Kassulke','Dr. Quinton Buckridge II',440080),(1152,'Vickie','Keeling','Letha Denesik',51523),(1153,'Tyson','Moore','Annalise Schuppe',295175),(1154,'Emery','Oberbrunner','Dr. Golden Becker III',935079);
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
) ENGINE=InnoDB AUTO_INCREMENT=1155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boulangeries`
--

LOCK TABLES `boulangeries` WRITE;
/*!40000 ALTER TABLE `boulangeries` DISABLE KEYS */;
INSERT INTO `boulangeries` VALUES (1105,1358,'Dora West','PaleGreen',687,NULL,3246,0),(1106,1359,'Deborah O\'Kon','CornflowerBlue',430,NULL,4339,0),(1107,1360,'Ms. Lysanne Gusikowski MD','Black',920,NULL,7334,0),(1108,1361,'Caroline Berge','RosyBrown',813,NULL,1265,0),(1109,1362,'Dr. Kurt Feest','DeepSkyBlue',899,NULL,3765,0),(1110,1363,'Prof. Lorena Casper MD','MidnightBlue',528,NULL,6724,0),(1111,1364,'Litzy Ziemann','Black',762,NULL,8808,0),(1112,1365,'Prof. Ubaldo Wisoky','PaleTurquoise',990,NULL,8549,0),(1113,1366,'Arlie DuBuque','Crimson',986,NULL,1113,0),(1114,1367,'Dr. Belle Hand DDS','DarkSalmon',221,NULL,5338,0),(1115,1368,'Korbin Stoltenberg I','Navy',701,NULL,8870,0),(1116,1369,'Jan Moore','Green',135,NULL,9145,0),(1117,1370,'Prof. Maci West','FloralWhite',896,NULL,6926,0),(1118,1371,'Tatum McClure','SeaGreen',812,NULL,2265,0),(1119,1372,'Dr. Dejuan Jakubowski','SlateGray',691,NULL,6755,0),(1120,1373,'Allene Feeney','SandyBrown',720,NULL,4090,0),(1121,1374,'Kevin Champlin V','RoyalBlue',428,NULL,6531,0),(1122,1375,'Ari O\'Keefe','Yellow',726,NULL,4547,0),(1123,1376,'Chyna Hudson II','Purple',307,NULL,9612,0),(1124,1377,'Price Senger','Navy',194,NULL,1643,0),(1125,1378,'Kitty Beatty','Cyan',947,NULL,3914,0),(1126,1379,'Stephen Parker','White',902,NULL,8756,0),(1127,1380,'Margret Stamm','Tan',262,NULL,8040,0),(1128,1381,'Cathrine Wiza','Fuchsia',996,NULL,7812,0),(1129,1382,'Torrey Dibbert','OliveDrab',510,NULL,1591,0),(1130,1383,'Savanna Miller','PaleVioletRed',347,NULL,8942,0),(1131,1384,'Prof. Marisol Olson Jr.','MediumSlateBlue',688,NULL,7035,0),(1132,1385,'Hannah Marks','CornflowerBlue',123,NULL,2222,0),(1133,1386,'Dr. Andre Beer I','SlateGray',541,NULL,8564,0),(1134,1387,'Dorian Orn','BurlyWood',984,NULL,4826,0),(1135,1388,'Shayne Keebler','Brown',153,NULL,4820,0),(1136,1389,'Candelario Volkman','Orange',263,NULL,3826,0),(1137,1390,'Jerod Weissnat','PaleVioletRed',627,NULL,2119,0),(1138,1391,'Napoleon Littel II','SteelBlue',872,NULL,2295,0),(1139,1392,'Cathrine Hackett III','MistyRose',242,NULL,5548,0),(1140,1393,'Vergie Rutherford','CornflowerBlue',674,NULL,2778,0),(1141,1394,'Lenore DuBuque','SandyBrown',969,NULL,2798,0),(1142,1395,'Shaun Murphy','Orange',285,NULL,6496,0),(1143,1396,'Kristofer Schimmel III','MediumVioletRed',506,NULL,5658,0),(1144,1397,'Tom Bosco','LemonChiffon',706,NULL,3784,0),(1145,1398,'Eugenia Wuckert','PaleGoldenRod',104,NULL,9237,0),(1146,1399,'Miss Lucy Wiegand III','RoyalBlue',970,NULL,5809,0),(1147,1400,'Jayne Berge V','Beige',262,NULL,9052,0),(1148,1401,'Eleanore Hahn','PaleGoldenRod',175,NULL,1730,0),(1149,1402,'Ms. Roxanne Larson V','LawnGreen',510,NULL,1223,0),(1150,1403,'Dr. Kraig Keebler','Darkorange',459,NULL,6328,0),(1151,1404,'Evans Considine I','MediumPurple',978,NULL,7407,0),(1152,1405,'Caleb Durgan III','Blue',798,NULL,9193,0),(1153,1406,'Sterling Ritchie','Linen',760,NULL,2647,0),(1154,1407,'Dorothea Bashirian','GhostWhite',177,NULL,6552,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes_bl`
--

LOCK TABLES `commandes_bl` WRITE;
/*!40000 ALTER TABLE `commandes_bl` DISABLE KEYS */;
INSERT INTO `commandes_bl` VALUES (1160,1105,951,'MediumSpringGreen','nouvelle','1988-04-06','2020-03-20 00:54:59'),(1161,1105,951,'Darkorange','nouvelle','1978-05-27','1995-04-28 20:44:27'),(1162,1106,952,'MediumSeaGreen','nouvelle','2016-09-06','2020-03-20 00:54:59'),(1163,1106,952,'Maroon','nouvelle','1980-12-28','1984-01-25 18:40:24'),(1164,1107,953,'Indigo','nouvelle','2010-11-28','2020-03-20 00:54:59'),(1165,1107,953,'Khaki','nouvelle','1991-01-11','1989-03-15 04:04:20'),(1166,1108,954,'SkyBlue','nouvelle','1980-11-07','2020-03-20 00:54:59'),(1167,1108,954,'Moccasin','nouvelle','2000-07-22','2004-04-24 13:50:03'),(1168,1109,955,'LightSalmon','nouvelle','1982-04-10','2020-03-20 00:54:59'),(1169,1109,955,'HoneyDew','nouvelle','2001-11-06','2001-10-31 13:48:41'),(1170,1110,956,'DarkCyan','nouvelle','1998-02-20','2020-03-20 00:54:59'),(1171,1110,956,'Red','nouvelle','1974-04-29','2006-03-02 20:17:59'),(1172,1111,957,'PowderBlue','nouvelle','2015-03-01','2020-03-20 00:54:59'),(1173,1111,957,'HoneyDew','nouvelle','2013-11-13','2001-11-06 14:45:46'),(1174,1112,958,'SeaShell','nouvelle','1990-03-10','2020-03-20 00:54:59'),(1175,1112,958,'Pink','nouvelle','2019-08-14','1984-06-21 00:02:23'),(1176,1113,959,'DarkGray','nouvelle','2014-02-20','2020-03-20 00:54:59'),(1177,1113,959,'DarkBlue','nouvelle','2011-01-05','1999-03-19 11:14:20'),(1178,1114,960,'AliceBlue','nouvelle','2010-06-04','2020-03-20 00:54:59'),(1179,1114,960,'Cornsilk','nouvelle','1982-02-26','2000-08-21 16:06:01'),(1180,1115,961,'Khaki','nouvelle','2018-08-13','2020-03-20 00:54:59'),(1181,1115,961,'OldLace','nouvelle','1972-09-02','2013-09-20 17:21:03'),(1182,1116,962,'GhostWhite','nouvelle','1999-11-15','2020-03-20 00:54:59'),(1183,1116,962,'LightPink','nouvelle','1980-10-29','1989-06-13 06:22:16'),(1184,1117,963,'DimGray','nouvelle','1986-09-03','2020-03-20 00:54:59'),(1185,1117,963,'Coral','nouvelle','1992-12-02','1971-02-23 08:31:13'),(1186,1118,964,'Azure','nouvelle','1971-11-27','2020-03-20 00:54:59'),(1187,1118,964,'DimGray','nouvelle','2000-02-11','1985-03-22 01:38:58'),(1188,1119,965,'LightBlue','nouvelle','2010-06-21','2020-03-20 00:54:59'),(1189,1119,965,'Lavender','nouvelle','2003-12-02','2007-07-01 04:07:55'),(1190,1120,966,'DarkMagenta','nouvelle','2017-01-13','2020-03-20 00:54:59'),(1191,1120,966,'LightPink','nouvelle','2020-03-13','1974-01-18 13:41:30'),(1192,1121,967,'Snow','nouvelle','2006-03-26','2020-03-20 00:54:59'),(1193,1121,967,'CadetBlue','nouvelle','1980-06-06','2005-04-17 14:35:33'),(1194,1122,968,'DimGrey','nouvelle','1971-04-23','2020-03-20 00:54:59'),(1195,1122,968,'Gainsboro','nouvelle','1983-07-02','2001-08-09 12:51:27'),(1196,1123,969,'ForestGreen','nouvelle','2007-01-29','2020-03-20 00:54:59'),(1197,1123,969,'DeepPink','nouvelle','1980-08-04','1980-07-06 12:11:55'),(1198,1124,970,'Snow','nouvelle','1992-05-25','2020-03-20 00:54:59'),(1199,1124,970,'AntiqueWhite','nouvelle','2015-12-26','2018-01-02 22:09:10'),(1200,1125,971,'SeaShell','nouvelle','1971-09-12','2020-03-20 00:54:59'),(1201,1125,971,'OrangeRed','nouvelle','2008-03-09','2011-05-08 05:50:27'),(1202,1126,972,'Thistle','nouvelle','1982-07-28','2020-03-20 00:54:59'),(1203,1126,972,'PapayaWhip','nouvelle','1970-07-29','1972-07-28 18:52:27'),(1204,1127,973,'LawnGreen','nouvelle','1984-12-11','2020-03-20 00:54:59'),(1205,1127,973,'MediumSeaGreen','nouvelle','2005-02-11','1986-10-30 18:20:51'),(1206,1128,974,'Blue','nouvelle','2018-04-07','2020-03-20 00:54:59'),(1207,1128,974,'Azure','nouvelle','1998-01-28','1990-11-24 05:49:22'),(1208,1129,975,'PapayaWhip','nouvelle','2002-01-23','2020-03-20 00:54:59'),(1209,1129,975,'Gainsboro','nouvelle','1992-03-15','1971-10-03 20:03:03'),(1210,1130,976,'Green','nouvelle','1999-05-28','2020-03-20 00:54:59'),(1211,1130,976,'Khaki','nouvelle','2005-03-01','2006-02-15 02:25:43'),(1212,1131,977,'LightGray','nouvelle','2008-11-18','2020-03-20 00:54:59'),(1213,1131,977,'DodgerBlue','nouvelle','1998-04-13','1987-07-10 16:09:18'),(1214,1132,978,'Crimson','nouvelle','1983-03-29','2020-03-20 00:54:59'),(1215,1132,978,'Yellow','nouvelle','1998-07-30','1993-08-08 20:24:44'),(1216,1133,979,'MintCream','nouvelle','2005-01-04','2020-03-20 00:54:59'),(1217,1133,979,'DarkCyan','nouvelle','2013-05-01','2009-04-18 22:36:52'),(1218,1134,980,'Crimson','nouvelle','1975-05-02','2020-03-20 00:54:59'),(1219,1134,980,'DarkBlue','nouvelle','1979-10-30','2009-07-26 06:55:57'),(1220,1135,981,'SlateGray','nouvelle','1979-10-25','2020-03-20 00:54:59'),(1221,1135,981,'Lavender','nouvelle','1975-07-01','2016-06-18 02:54:58'),(1222,1136,982,'Wheat','nouvelle','2004-04-11','2020-03-20 00:54:59'),(1223,1136,982,'Salmon','nouvelle','1982-10-13','2014-06-25 08:36:38'),(1224,1137,983,'Lavender','nouvelle','2016-06-04','2020-03-20 00:54:59'),(1225,1137,983,'White','nouvelle','2004-09-11','1976-12-13 22:34:11'),(1226,1138,984,'Peru','nouvelle','1989-09-15','2020-03-20 00:54:59'),(1227,1138,984,'HoneyDew','nouvelle','2009-11-03','1992-11-22 22:16:21'),(1228,1139,985,'MistyRose','nouvelle','2004-01-15','2020-03-20 00:54:59'),(1229,1139,985,'OldLace','nouvelle','2011-02-25','1979-07-12 00:21:37'),(1230,1140,986,'SlateGray','nouvelle','1970-04-23','2020-03-20 00:54:59'),(1231,1140,986,'SeaShell','nouvelle','1994-08-31','2000-08-13 22:15:19'),(1232,1141,987,'MediumTurquoise','nouvelle','1993-06-27','2020-03-20 00:54:59'),(1233,1141,987,'DarkMagenta','nouvelle','1978-10-29','1995-03-12 03:45:15'),(1234,1142,988,'DarkSalmon','nouvelle','2010-02-09','2020-03-20 00:55:00'),(1235,1142,988,'Aquamarine','nouvelle','1985-07-25','2015-08-26 12:41:11'),(1236,1143,989,'Peru','nouvelle','2014-09-23','2020-03-20 00:55:00'),(1237,1143,989,'DarkMagenta','nouvelle','2018-07-11','2006-10-30 17:53:13'),(1238,1144,990,'Lavender','nouvelle','2004-05-15','2020-03-20 00:55:00'),(1239,1144,990,'IndianRed','nouvelle','2010-07-13','2005-01-30 21:46:11'),(1240,1145,991,'Brown','nouvelle','1980-02-02','2020-03-20 00:55:00'),(1241,1145,991,'DarkRed','nouvelle','1977-01-07','1977-01-21 18:58:08'),(1242,1146,992,'ForestGreen','nouvelle','2013-08-08','2020-03-20 00:55:00'),(1243,1146,992,'Pink','nouvelle','1973-09-08','2008-04-05 14:11:53'),(1244,1147,993,'LightBlue','nouvelle','1996-07-09','2020-03-20 00:55:00'),(1245,1147,993,'Gold','nouvelle','1981-11-22','2015-09-25 03:51:48'),(1246,1148,994,'LavenderBlush','nouvelle','2011-11-14','2020-03-20 00:55:00'),(1247,1148,994,'FloralWhite','nouvelle','1983-11-27','2010-09-28 15:10:13'),(1248,1149,995,'LightYellow','nouvelle','2011-05-22','2020-03-20 00:55:00'),(1249,1149,995,'Black','nouvelle','1989-05-23','2013-05-19 10:36:57'),(1250,1150,996,'Cornsilk','nouvelle','1996-05-05','2020-03-20 00:55:00'),(1251,1150,996,'DeepPink','nouvelle','1988-01-16','2020-04-11 11:53:39'),(1252,1151,997,'Ivory','nouvelle','1976-06-14','2020-03-20 00:55:00'),(1253,1151,997,'YellowGreen','nouvelle','2013-02-03','1980-07-18 05:39:11'),(1254,1152,998,'WhiteSmoke','nouvelle','1999-06-25','2020-03-20 00:55:00'),(1255,1152,998,'Cyan','nouvelle','1982-01-14','1990-01-02 21:26:15'),(1256,1153,999,'Chocolate','nouvelle','1997-02-15','2020-03-20 00:55:00'),(1257,1153,999,'SlateGray','nouvelle','1979-07-10','1998-12-17 09:54:15'),(1258,1154,1000,'MediumOrchid','nouvelle','2012-01-06','2020-03-20 00:55:00'),(1259,1154,1000,'LightSteelBlue','nouvelle','2002-03-13','1979-07-25 22:22:20');
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F95A31996CB13AEE` (`id_composant`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composants`
--

LOCK TABLES `composants` WRITE;
/*!40000 ALTER TABLE `composants` DISABLE KEYS */;
INSERT INTO `composants` VALUES (101,'fxmbcg','DeadlyHumanPoison','l'),(102,'djlyut','DeadlyHumanPoison','l'),(103,'erzdes','DeadlyHumanPoison','l'),(104,'hqhlvw','DeadlyHumanPoison','l'),(105,'kagsmb','DeadlyHumanPoison','l'),(106,'iniuts','DeadlyHumanPoison','l'),(107,'qwguah','DeadlyHumanPoison','l'),(108,'orvipz','DeadlyHumanPoison','l'),(109,'ywuxes','DeadlyHumanPoison','l'),(110,'rfyrxw','DeadlyHumanPoison','l'),(111,'zwlqop','DeadlyHumanPoison','l'),(112,'fkvmqa','DeadlyHumanPoison','l'),(113,'mvevhj','DeadlyHumanPoison','l'),(114,'eqvyls','DeadlyHumanPoison','l'),(115,'dybtgf','DeadlyHumanPoison','l'),(116,'jubcwh','DeadlyHumanPoison','l'),(117,'jbdiwv','DeadlyHumanPoison','l'),(118,'cthkcv','DeadlyHumanPoison','l'),(119,'gbdyae','DeadlyHumanPoison','l'),(120,'govego','DeadlyHumanPoison','l'),(121,'noblff','DeadlyHumanPoison','l'),(122,'rhkwbf','DeadlyHumanPoison','l'),(123,'huutpp','DeadlyHumanPoison','l'),(124,'mujkrt','DeadlyHumanPoison','l'),(125,'rrpiik','DeadlyHumanPoison','l'),(126,'ocoxkn','DeadlyHumanPoison','l'),(127,'sjlolj','DeadlyHumanPoison','l'),(128,'mglhfn','DeadlyHumanPoison','l'),(129,'pueqbm','DeadlyHumanPoison','l'),(130,'soprsm','DeadlyHumanPoison','l'),(131,'ahimtx','DeadlyHumanPoison','l'),(132,'iourun','DeadlyHumanPoison','l'),(133,'iuklsu','DeadlyHumanPoison','l'),(134,'vvckqp','DeadlyHumanPoison','l'),(135,'oxxzrz','DeadlyHumanPoison','l'),(136,'vdpqph','DeadlyHumanPoison','l'),(137,'knwyve','DeadlyHumanPoison','l'),(138,'egadbn','DeadlyHumanPoison','l'),(139,'ofiwwm','DeadlyHumanPoison','l'),(140,'tumhzr','DeadlyHumanPoison','l'),(141,'yygocs','DeadlyHumanPoison','l'),(142,'vdswvz','DeadlyHumanPoison','l'),(143,'szaoab','DeadlyHumanPoison','l'),(144,'qroaux','DeadlyHumanPoison','l'),(145,'eerang','DeadlyHumanPoison','l'),(146,'wrxfji','DeadlyHumanPoison','l'),(147,'fffjrz','DeadlyHumanPoison','l'),(148,'hwkmzu','DeadlyHumanPoison','l'),(149,'wwconn','DeadlyHumanPoison','l'),(150,'idjyjg','DeadlyHumanPoison','l');
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
) ENGINE=InnoDB AUTO_INCREMENT=754 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositions_produit`
--

LOCK TABLES `compositions_produit` WRITE;
/*!40000 ALTER TABLE `compositions_produit` DISABLE KEYS */;
INSERT INTO `compositions_produit` VALUES (704,8,NULL),(705,74,NULL),(706,17,NULL),(707,89,NULL),(708,66,NULL),(709,70,NULL),(710,91,NULL),(711,43,NULL),(712,96,NULL),(713,30,NULL),(714,16,NULL),(715,69,NULL),(716,12,NULL),(717,2,NULL),(718,47,NULL),(719,8,NULL),(720,89,NULL),(721,25,NULL),(722,54,NULL),(723,16,NULL),(724,79,NULL),(725,96,NULL),(726,17,NULL),(727,46,NULL),(728,61,NULL),(729,45,NULL),(730,61,NULL),(731,67,NULL),(732,28,NULL),(733,26,NULL),(734,40,NULL),(735,33,NULL),(736,26,NULL),(737,57,NULL),(738,80,NULL),(739,88,NULL),(740,91,NULL),(741,82,NULL),(742,0,NULL),(743,83,NULL),(744,40,NULL),(745,40,NULL),(746,77,NULL),(747,57,NULL),(748,81,NULL),(749,18,NULL),(750,80,NULL),(751,17,NULL),(752,47,NULL),(753,70,NULL);
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
INSERT INTO `compositions_produit_composants` VALUES (704,101),(705,102),(706,103),(707,104),(708,105),(709,106),(710,107),(711,108),(712,109),(713,110),(714,111),(715,112),(716,113),(717,114),(718,115),(719,116),(720,117),(721,118),(722,119),(723,120),(724,121),(725,122),(726,123),(727,124),(728,125),(729,126),(730,127),(731,128),(732,129),(733,130),(734,131),(735,132),(736,133),(737,134),(738,135),(739,136),(740,137),(741,138),(742,139),(743,140),(744,141),(745,142),(746,143),(747,144),(748,145),(749,146),(750,147),(751,148),(752,149),(753,150);
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
INSERT INTO `compositions_produit_produits` VALUES (704,1301),(704,1302),(705,1303),(705,1304),(706,1305),(706,1306),(707,1307),(707,1308),(708,1309),(708,1310),(709,1311),(709,1312),(710,1313),(710,1314),(711,1315),(711,1316),(712,1317),(712,1318),(713,1319),(713,1320),(714,1321),(714,1322),(715,1323),(715,1324),(716,1325),(716,1326),(717,1327),(717,1328),(718,1329),(718,1330),(719,1331),(719,1332),(720,1333),(720,1334),(721,1335),(721,1336),(722,1337),(722,1338),(723,1339),(723,1340),(724,1341),(724,1342),(725,1343),(725,1344),(726,1345),(726,1346),(727,1347),(727,1348),(728,1349),(728,1350),(729,1351),(729,1352),(730,1353),(730,1354),(731,1355),(731,1356),(732,1357),(732,1358),(733,1359),(733,1360),(734,1361),(734,1362),(735,1363),(735,1364),(736,1365),(736,1366),(737,1367),(737,1368),(738,1369),(738,1370),(739,1371),(739,1372),(740,1373),(740,1374),(741,1375),(741,1376),(742,1377),(742,1378),(743,1379),(743,1380),(744,1381),(744,1382),(745,1383),(745,1384),(746,1385),(746,1386),(747,1387),(747,1388),(748,1389),(748,1390),(749,1391),(749,1392),(750,1393),(750,1394),(751,1395),(751,1396),(752,1397),(752,1398),(753,1399),(753,1400);
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
) ENGINE=InnoDB AUTO_INCREMENT=801 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details_commandes_bl`
--

LOCK TABLES `details_commandes_bl` WRITE;
/*!40000 ALTER TABLE `details_commandes_bl` DISABLE KEYS */;
INSERT INTO `details_commandes_bl` VALUES (751,NULL,98),(752,NULL,67),(753,NULL,10),(754,NULL,76),(755,NULL,81),(756,NULL,7),(757,NULL,81),(758,NULL,8),(759,NULL,32),(760,NULL,60),(761,NULL,85),(762,NULL,11),(763,NULL,49),(764,NULL,71),(765,NULL,94),(766,NULL,39),(767,NULL,26),(768,NULL,23),(769,NULL,2),(770,NULL,79),(771,NULL,53),(772,NULL,0),(773,NULL,25),(774,NULL,98),(775,NULL,71),(776,NULL,89),(777,NULL,11),(778,NULL,46),(779,NULL,94),(780,NULL,10),(781,NULL,19),(782,NULL,7),(783,NULL,44),(784,NULL,9),(785,NULL,23),(786,NULL,11),(787,NULL,63),(788,NULL,6),(789,NULL,73),(790,NULL,36),(791,NULL,55),(792,NULL,51),(793,NULL,83),(794,NULL,63),(795,NULL,30),(796,NULL,68),(797,NULL,59),(798,NULL,53),(799,NULL,31),(800,NULL,96);
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
INSERT INTO `details_commandes_bl_commandes_bl` VALUES (751,1160),(751,1161),(752,1162),(752,1163),(753,1164),(753,1165),(754,1166),(754,1167),(755,1168),(755,1169),(756,1170),(756,1171),(757,1172),(757,1173),(758,1174),(758,1175),(759,1176),(759,1177),(760,1178),(760,1179),(761,1180),(761,1181),(762,1182),(762,1183),(763,1184),(763,1185),(764,1186),(764,1187),(765,1188),(765,1189),(766,1190),(766,1191),(767,1192),(767,1193),(768,1194),(768,1195),(769,1196),(769,1197),(770,1198),(770,1199),(771,1200),(771,1201),(772,1202),(772,1203),(773,1204),(773,1205),(774,1206),(774,1207),(775,1208),(775,1209),(776,1210),(776,1211),(777,1212),(777,1213),(778,1214),(778,1215),(779,1216),(779,1217),(780,1218),(780,1219),(781,1220),(781,1221),(782,1222),(782,1223),(783,1224),(783,1225),(784,1226),(784,1227),(785,1228),(785,1229),(786,1230),(786,1231),(787,1232),(787,1233),(788,1234),(788,1235),(789,1236),(789,1237),(790,1238),(790,1239),(791,1240),(791,1241),(792,1242),(792,1243),(793,1244),(793,1245),(794,1246),(794,1247),(795,1248),(795,1249),(796,1250),(796,1251),(797,1252),(797,1253),(798,1254),(798,1255),(799,1256),(799,1257),(800,1258),(800,1259);
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
INSERT INTO `details_commandes_bl_produits` VALUES (751,1301),(751,1302),(752,1303),(752,1304),(753,1305),(753,1306),(754,1307),(754,1308),(755,1309),(755,1310),(756,1311),(756,1312),(757,1313),(757,1314),(758,1315),(758,1316),(759,1317),(759,1318),(760,1319),(760,1320),(761,1321),(761,1322),(762,1323),(762,1324),(763,1325),(763,1326),(764,1327),(764,1328),(765,1329),(765,1330),(766,1331),(766,1332),(767,1333),(767,1334),(768,1335),(768,1336),(769,1337),(769,1338),(770,1339),(770,1340),(771,1341),(771,1342),(772,1343),(772,1344),(773,1345),(773,1346),(774,1347),(774,1348),(775,1349),(775,1350),(776,1351),(776,1352),(777,1353),(777,1354),(778,1355),(778,1356),(779,1357),(779,1358),(780,1359),(780,1360),(781,1361),(781,1362),(782,1363),(782,1364),(783,1365),(783,1366),(784,1367),(784,1368),(785,1369),(785,1370),(786,1371),(786,1372),(787,1373),(787,1374),(788,1375),(788,1376),(789,1377),(789,1378),(790,1379),(790,1380),(791,1381),(791,1382),(792,1383),(792,1384),(793,1385),(793,1386),(794,1387),(794,1388),(795,1389),(795,1390),(796,1391),(796,1392),(797,1393),(797,1394),(798,1395),(798,1396),(799,1397),(799,1398),(800,1399),(800,1400);
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
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livreurs`
--

LOCK TABLES `livreurs` WRITE;
/*!40000 ALTER TABLE `livreurs` DISABLE KEYS */;
INSERT INTO `livreurs` VALUES (951,1358,2969,'2472077561792022'),(952,1359,6079,'2435428955211564'),(953,1360,1441,'4716333336512779'),(954,1361,1857,'4024007129296173'),(955,1362,7294,'4556982278559579'),(956,1363,2430,'4916029106783750'),(957,1364,9903,'5345707623787010'),(958,1365,4665,'4916899166367342'),(959,1366,5679,'4024007157987198'),(960,1367,6275,'4532903170756450'),(961,1368,3205,'5287791310468167'),(962,1369,6633,'4929280359442835'),(963,1370,2097,'4024007163591349'),(964,1371,6496,'4929395614172553'),(965,1372,4567,'4790712085865745'),(966,1373,9230,'4927458523100388'),(967,1374,7183,'4929329688799223'),(968,1375,9144,'6011501026364217'),(969,1376,8506,'2537722014657172'),(970,1377,5129,'378095092581366'),(971,1378,5666,'5276462485088643'),(972,1379,3085,'4539029940397483'),(973,1380,9893,'2221356386598432'),(974,1381,5146,'2349179381800513'),(975,1382,8683,'2622236208608780'),(976,1383,8947,'5228077842943519'),(977,1384,5316,'5555092745303284'),(978,1385,8106,'5363779015529638'),(979,1386,2348,'4485242544147758'),(980,1387,6848,'4716278916233579'),(981,1388,3358,'4024007190180'),(982,1389,2608,'2557636152364091'),(983,1390,1835,'344081111237074'),(984,1391,9144,'4556437843973300'),(985,1392,5965,'379805608427139'),(986,1393,4039,'2461111057880646'),(987,1394,1482,'5563977566313331'),(988,1395,4363,'4539962344095461'),(989,1396,4171,'4024007145179049'),(990,1397,9851,'5118546912601267'),(991,1398,7722,'4716543544720424'),(992,1399,9402,'6011013716244493'),(993,1400,4532,'6011571456875669'),(994,1401,3678,'4556976745140252'),(995,1402,4354,'5166183234503657'),(996,1403,7652,'4929283805741'),(997,1404,2824,'4929858954767'),(998,1405,5649,'4024007134518058'),(999,1406,6457,'4532210179611128'),(1000,1407,9160,'4024007118899045');
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
INSERT INTO `migration_versions` VALUES ('20200412195421','2020-04-12 19:54:27'),('20200413114512','2020-04-13 11:45:18'),('20200416124933','2020-04-16 12:49:39'),('20200416185256','2020-04-16 18:53:09'),('20200416185503','2020-04-16 18:55:07'),('20200417192649','2020-04-17 19:26:55'),('20200420181953','2020-04-20 18:20:00'),('20200420185256','2020-04-20 18:53:02'),('20200420191907','2020-04-20 19:19:13'),('20200427223920','2020-04-27 22:39:27'),('20200429203654','2020-04-29 20:37:00'),('20200525211018','2020-05-25 21:20:11'),('20200531225448','2020-05-31 22:54:54');
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
) ENGINE=InnoDB AUTO_INCREMENT=1401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1301,NULL,'LightPink',20228740.2,3.43,35099681,0),(1302,NULL,'Lavender',17.59642,228.853797644,194.8131,0),(1303,NULL,'MediumPurple',18.30167,94740593.9,61.52390219,0),(1304,NULL,'LightSalmon',2963058.236,330.54048,5388227.0856,0),(1305,NULL,'MidnightBlue',16538810.3386,35571,38966,0),(1306,NULL,'DarkBlue',380779.0794398,6.87,27.819761468,0),(1307,NULL,'SaddleBrown',6153.96818,1550.3,197408.4698082,0),(1308,NULL,'DarkKhaki',1371.05354274,66529,91497.9,0),(1309,NULL,'PaleGreen',1560.9179,21774.958,3807.54,0),(1310,NULL,'MediumBlue',6.7442649,71610341.503342,0,0),(1311,NULL,'LightCoral',20474.321861652,8084.558621575,5875612.189,0),(1312,NULL,'BlanchedAlmond',38221.1695068,1.8484,17585859.159291,0),(1313,NULL,'DeepPink',2088399.2727428,180928.55124303,647315.709248,0),(1314,NULL,'Salmon',4406.4243,2484.02,2.52,0),(1315,NULL,'FloralWhite',34217278.782,456159.1642906,11.6,0),(1316,NULL,'PaleTurquoise',1.0829,62214058.657528,693833,0),(1317,NULL,'GhostWhite',1,34347670.41,721281949,0),(1318,NULL,'Black',1920.8757434,525494.89,74726.789835,0),(1319,NULL,'LawnGreen',856818.0966685,323459.33,1979214.56,0),(1320,NULL,'SlateGray',72.817,12.283,395717.8,0),(1321,NULL,'Chocolate',1310.225015,3189.61375811,9492376.7525,0),(1322,NULL,'MediumSlateBlue',1498.5166,46600863.815104,4,0),(1323,NULL,'Crimson',5612.49,220041.9834799,38193.3389,0),(1324,NULL,'Green',352973481.72,508250039.70197,24507.317101,0),(1325,NULL,'MediumSlateBlue',32348155.95956,3907.130091986,16343837.57,0),(1326,NULL,'PaleGreen',11642.542305,14101315.744571,30992773.9,0),(1327,NULL,'GoldenRod',24480.218,33.04193,135727706.92,0),(1328,NULL,'GoldenRod',0.3,550.2198,698029.837034,0),(1329,NULL,'PaleGreen',479.3549719,419841037.56272,202156241.74008,0),(1330,NULL,'Chartreuse',546.081445,178844.109,175.42590946,0),(1331,NULL,'SpringGreen',257320,1509.89833,71640208.533814,0),(1332,NULL,'Brown',91582,63835361.363143,19.44,0),(1333,NULL,'Tomato',2602597.8,2162.81,2250227.2963,0),(1334,NULL,'MistyRose',48,7025961.93292,655141470.31651,0),(1335,NULL,'Coral',6822.5764,9344794.66644,6.03643,0),(1336,NULL,'PaleVioletRed',695124.37805612,60,144512.334084,0),(1337,NULL,'LavenderBlush',25775.7,204.6,5903.715749,0),(1338,NULL,'SpringGreen',3750294.4764,1345874.098569,9,0),(1339,NULL,'Gray',38.26,44.16464028,0.753773855,0),(1340,NULL,'Cornsilk',1204.446300699,226008018.691,5410843.2235367,0),(1341,NULL,'MidnightBlue',355691559.21267,29859.454033,0.021218,0),(1342,NULL,'IndianRed',360064.56,770.33,2359.427965944,0),(1343,NULL,'Chartreuse',4392.77,23448.63,23010118.5,0),(1344,NULL,'LimeGreen',5596.7492,2988.6,3123.16863777,0),(1345,NULL,'GhostWhite',119,374.62757,294858950.2,0),(1346,NULL,'LavenderBlush',82.35430581,12329581.7,50730.605,0),(1347,NULL,'Wheat',2.68344394,3048.131,1.180158524,0),(1348,NULL,'Snow',5988,8462.781,2429533.339,0),(1349,NULL,'DarkMagenta',15808.212,623429.18,350446836.48849,0),(1350,NULL,'Crimson',337241.118,154140218.7061,33317321,0),(1351,NULL,'MediumBlue',288790108.41,301.168967156,162151.626484,0),(1352,NULL,'Orange',42225569,2024.431478,72.497613,0),(1353,NULL,'AliceBlue',44054.115384,23.8,913115,0),(1354,NULL,'LightGray',1918,90954.23732555,20747795.165979,0),(1355,NULL,'Purple',3318195.4279035,372.36,137131494.905,0),(1356,NULL,'Salmon',215343.3,3261.8683,673.3947,0),(1357,NULL,'Azure',248133.9,1268549.2989968,25,0),(1358,NULL,'MediumPurple',464893443,12499.750074,6129305.496,0),(1359,NULL,'LightSalmon',17140.1,203287301.3,1053579.572,0),(1360,NULL,'Fuchsia',8.7,119527,42727.7204273,0),(1361,NULL,'Peru',382287.849,5628505.8851994,136.7675,0),(1362,NULL,'SpringGreen',217419805.14925,159111.55191117,0.054186964,0),(1363,NULL,'YellowGreen',237042486.57704,18175853.415301,214220769.13018,0),(1364,NULL,'HoneyDew',0,195965.308,35447394.899,0),(1365,NULL,'SandyBrown',71.627521,8144.293675,4.999,0),(1366,NULL,'Crimson',8934.01,1485504.2331032,2124360.506,0),(1367,NULL,'Azure',3003422,67.99,3714544.9716948,0),(1368,NULL,'RosyBrown',37.03,457833.51,21557.1683618,0),(1369,NULL,'SeaShell',28274620.043178,6000.673206,6391233.8826,0),(1370,NULL,'Maroon',20.972,4356,1529426.182869,0),(1371,NULL,'CornflowerBlue',64.634419,15566.742311714,150.381822,0),(1372,NULL,'Ivory',14.9238401,550900.13372,82.26,0),(1373,NULL,'Teal',17774.266158747,76597.591,1603.4549023,0),(1374,NULL,'RosyBrown',434286.40468141,11138937.6,773.46,0),(1375,NULL,'Gray',2025071,665.89175965,117479097.6,0),(1376,NULL,'MediumPurple',229180252.1,248110086.02411,53538.18,0),(1377,NULL,'Aqua',213513.9,2.543618854,14.43257,0),(1378,NULL,'GoldenRod',282076439.978,44941594.077549,340514.29997504,0),(1379,NULL,'WhiteSmoke',138845997.15532,69802554.215767,235741249.61,0),(1380,NULL,'PeachPuff',45.1773,8410.9801592,80087297.477,0),(1381,NULL,'Lime',30296.11,3709197.9,299.79,0),(1382,NULL,'GreenYellow',341949031.90652,11,5228241.7,0),(1383,NULL,'DarkCyan',3162279,0.93374452,27632.655,0),(1384,NULL,'DeepPink',5557.5,67406.447932663,9.2,0),(1385,NULL,'SeaGreen',739788.06570888,22.80335484,9185115.4,0),(1386,NULL,'DarkTurquoise',95.804,16.03203418,1269.990664356,0),(1387,NULL,'LawnGreen',241390.1624821,0,1.561,0),(1388,NULL,'Salmon',191,4945780.365814,41233304.536577,0),(1389,NULL,'Orange',6187628.62,10,20.852,0),(1390,NULL,'SandyBrown',395634.5,65,48380.82116146,0),(1391,NULL,'Silver',198015831.77973,48238.23615,54781923.14,0),(1392,NULL,'SeaGreen',242083.7656,46,571569.00536,0),(1393,NULL,'MediumAquaMarine',732227.097,1414787.448115,3681,0),(1394,NULL,'HoneyDew',908774.678,85369630.474603,2.25133,0),(1395,NULL,'DarkOliveGreen',231.6192642,99220.5,417118.5,0),(1396,NULL,'MediumBlue',33467030,4161.4941,44722.1378,0),(1397,NULL,'PaleGreen',63268531.783727,1.070890446,942.674,0),(1398,NULL,'Bisque',147123644.14034,28.058036487,1800.7,0),(1399,NULL,'MediumAquaMarine',295029400.1759,3356.21,33157091.94305,0),(1400,NULL,'Gray',4.4,1315.4242,335.240647597,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1408 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profils`
--

LOCK TABLES `profils` WRITE;
/*!40000 ALTER TABLE `profils` DISABLE KEYS */;
INSERT INTO `profils` VALUES (1358,5354,'cormier.biz','beer.com','aQJ%@u','Elinor',0),(1359,3507,'lesch.org','kris.biz','`9$*>6omZ4(u6','Alysa',0),(1360,3950,'king.com','ziemann.info','J*DbZ}b1Hyg','Mose',0),(1361,3418,'hudson.org','rohan.org','28u]6*rd!p','Meda',0),(1362,3060,'senger.com','reinger.com','1?eU\"dhcrG/:7H:*!xu4','Garth',0),(1363,7308,'rutherford.com','schamberger.biz','h%/KdXqLw-','Liliana',0),(1364,8996,'gibson.com','hermann.com','!7`fYIo#eg}7S7','Elwin',0),(1365,5186,'murphy.com','schmeler.biz','E?_|@A}rd','Leonel',0),(1366,7960,'bernier.org','gislason.biz','\'*{;kq[O.&9-14','Gaston',0),(1367,7904,'boyle.com','treutel.com',':I1Q~81t#-{*zQ','Grady',0),(1368,2470,'cruickshank.biz','rosenbaum.com','>{E~;nvJ?-\'k2hNBn5','Missouri',0),(1369,5103,'waelchi.com','homenick.com','1Q+q{%nSH5-@L}p|3U','Aiyana',0),(1370,5203,'greenholt.com','vonrueden.com','P#5%dS]+4','Nigel',0),(1371,3301,'strosin.biz','hermann.net','?j*`pY!V','Noelia',0),(1372,8922,'dare.biz','welch.org','ep{UmI.m2TaQ','Boyd',0),(1373,2126,'jenkins.biz','daniel.com','L(9aL_fBN','Blanche',0),(1374,3190,'bernhard.info','erdman.com','Z9c.4P,DR}TX','Teagan',0),(1375,6677,'will.com','schuppe.net','boQ#1nr#\"Hz','Oren',0),(1376,7666,'leuschke.net','leannon.net','+XyvD8md)836ppg4>qI','Name',0),(1377,8878,'mills.com','hansen.com','>|Nv/CoO.I^81c\\^BdO','Brayan',0),(1378,6509,'schoen.com','treutel.com','$A3Y3fNeFA^d8','Kaitlin',0),(1379,7360,'beier.com','dickens.com','p_<v)7,U/BM','Elmo',0),(1380,6331,'haag.com','dach.com','=mYl\"XWDIF\"M|1)^`<','Ardella',0),(1381,4696,'toy.biz','shields.net','nL4]M5n','Roy',0),(1382,1009,'cruickshank.com','boyle.biz','ZNQ!QRl\\!N<jZ-:#','Nelle',0),(1383,9497,'ebert.biz','renner.info','5$J!C%,y3D-','Haley',0),(1384,8386,'klocko.com','aufderhar.com','I3Akbb9pk','Cassie',0),(1385,5064,'legros.info','block.com','vWIGLMPZ7:7n@d','Ellen',0),(1386,8915,'leannon.org','auer.com','H*wED&#^qC?=','Stephanie',0),(1387,8971,'schmeler.com','pfannerstill.org','[E#U$&J^}pqU','Clara',0),(1388,6187,'rowe.com','sporer.com','[);Hd^2bb,H!CpBxCqdD','Marlon',0),(1389,3529,'labadie.com','medhurst.com','t3xGF|e&!]~q4BeTA2','Ernestine',0),(1390,5692,'kling.com','corkery.info','D%g+kibjo6I','Alice',0),(1391,7074,'daniel.com','goyette.com','u&~N|L3wpzRS!','Schuyler',0),(1392,4138,'luettgen.biz','prohaska.com','i4SdR3(fSmG*|l{e','Eliza',0),(1393,6721,'kuphal.org','legros.com','ZwoT}!$pOY\\S4QySTe','Allison',0),(1394,5064,'mclaughlin.com','altenwerth.org','.>$pMtvd~kz','Barbara',0),(1395,8153,'oreilly.biz','abernathy.com','.J&8E_#X?Yj','Arianna',0),(1396,4229,'bruen.org','pfeffer.com','_`$[|c','Bria',0),(1397,4879,'auer.org','brown.info','$S?zpz4fa/0v0|','Peter',0),(1398,2766,'hodkiewicz.net','koch.org','QPKp?\\s&ij','Jayden',0),(1399,9382,'fisher.org','simonis.org','aGa0Z6==-z','Pamela',0),(1400,9798,'christiansen.com','fritsch.com','\\T<ec1f;cL+;zmPH:a','Letitia',0),(1401,8643,'welch.com','swaniawski.com','T^-2(VOgUjAQ}!v!dk%h','Leonora',0),(1402,8385,'zboncak.com','grant.com','\"8pH_`r|6^ikzTT|2','Pasquale',0),(1403,6531,'sipes.com','schultz.com','ZZRMuD}Uv{}wB2L','Brooke',0),(1404,3412,'langworth.biz','herzog.biz','GhS,X)P%)`','Catalina',0),(1405,1065,'metz.net','christiansen.com','j1!g>0?O','Cleveland',0),(1406,1551,'hauck.org','jenkins.com','!|mNt-n~[leBUu','Armani',0),(1407,6468,'tromp.com','johnson.com','\\P{5DakX%:','Leola',0);
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

-- Dump completed on 2020-06-01  0:58:14
