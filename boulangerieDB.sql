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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrateurs`
--

LOCK TABLES `administrateurs` WRITE;
/*!40000 ALTER TABLE `administrateurs` DISABLE KEYS */;
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
  `nom_boul` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` bigint(20) NOT NULL,
  `id_boulangerie` int(11) NOT NULL,
  `nb_operateurs` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2FA1DF49AAADC05` (`matricule_id`),
  CONSTRAINT `FK_2FA1DF49AAADC05` FOREIGN KEY (`matricule_id`) REFERENCES `profils` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boulangeries`
--

LOCK TABLES `boulangeries` WRITE;
/*!40000 ALTER TABLE `boulangeries` DISABLE KEYS */;
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
  `id_boulangerie_id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes_bl`
--

LOCK TABLES `commandes_bl` WRITE;
/*!40000 ALTER TABLE `commandes_bl` DISABLE KEYS */;
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
  `id_commande_labo` int(11) NOT NULL,
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
  `nom_comp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unite` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `id_composition` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compositions_produit`
--

LOCK TABLES `compositions_produit` WRITE;
/*!40000 ALTER TABLE `compositions_produit` DISABLE KEYS */;
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
  `id_detail` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details_commandes_bl`
--

LOCK TABLES `details_commandes_bl` WRITE;
/*!40000 ALTER TABLE `details_commandes_bl` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livreurs`
--

LOCK TABLES `livreurs` WRITE;
/*!40000 ALTER TABLE `livreurs` DISABLE KEYS */;
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
INSERT INTO `migration_versions` VALUES ('20200412195421','2020-04-12 19:54:27'),('20200413114512','2020-04-13 11:45:18');
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
  `code_produit` int(11) NOT NULL,
  `libelle` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix_ha` double NOT NULL,
  `tva` double NOT NULL,
  `prix_ttc` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_75831F5EAA08CB10` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profils`
--

LOCK TABLES `profils` WRITE;
/*!40000 ALTER TABLE `profils` DISABLE KEYS */;
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

-- Dump completed on 2020-04-15 14:54:17
