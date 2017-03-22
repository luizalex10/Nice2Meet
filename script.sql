-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: us-cdbr-iron-east-04.cleardb.net    Database: heroku_d0c9b568fa9b46e
-- ------------------------------------------------------
-- Server version	5.5.46-log

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
-- Table structure for table `tb_cupom`
--

DROP TABLE IF EXISTS `tb_cupom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cupom` (
  `id_cupom` int(11) NOT NULL,
  `dt_maximo_cupom` date DEFAULT NULL,
  `cd_cupom` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_cupom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cupom`
--

LOCK TABLES `tb_cupom` WRITE;
/*!40000 ALTER TABLE `tb_cupom` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cupom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_oferta`
--

DROP TABLE IF EXISTS `tb_oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_oferta` (
  `id_oferta` int(11) NOT NULL,
  `ds_oferta` varchar(255) DEFAULT NULL,
  `ic_status_oferta` tinyint(1) DEFAULT NULL,
  `id_parceiro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_oferta`),
  KEY `id_parceiro` (`id_parceiro`),
  CONSTRAINT `tb_oferta_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `tb_parceiro` (`id_parceiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_oferta`
--

LOCK TABLES `tb_oferta` WRITE;
/*!40000 ALTER TABLE `tb_oferta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_oferta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_oferta_ponto`
--

DROP TABLE IF EXISTS `tb_oferta_ponto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_oferta_ponto` (
  `id_oferta` int(11) NOT NULL,
  `ds_oferta` varchar(255) DEFAULT NULL,
  `ic_status_oferta` tinyint(1) DEFAULT NULL,
  `id_parceiro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_oferta`),
  KEY `id_parceiro` (`id_parceiro`),
  CONSTRAINT `tb_oferta_ponto_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `tb_parceiro` (`id_parceiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_oferta_ponto`
--

LOCK TABLES `tb_oferta_ponto` WRITE;
/*!40000 ALTER TABLE `tb_oferta_ponto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_oferta_ponto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_parceiro`
--

DROP TABLE IF EXISTS `tb_parceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_parceiro` (
  `id_parceiro` int(11) NOT NULL,
  `nm_parceiro` varchar(255) NOT NULL,
  `nm_email_parceiro` varchar(255) DEFAULT NULL,
  `nm_senha_parceiro` varchar(255) DEFAULT NULL,
  `dt_registro` date DEFAULT NULL,
  `cd_telefone` int(11) DEFAULT NULL,
  `cd_latitude` float(10,5) DEFAULT NULL,
  `cd_longitude` float(10,5) DEFAULT NULL,
  PRIMARY KEY (`id_parceiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_parceiro`
--

LOCK TABLES `tb_parceiro` WRITE;
/*!40000 ALTER TABLE `tb_parceiro` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_parceiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ponto_turistico`
--

DROP TABLE IF EXISTS `tb_ponto_turistico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ponto_turistico` (
  `id_ponto_turistico` int(11) NOT NULL,
  `nm_ponto_turistico` varchar(255) DEFAULT NULL,
  `ds_ponto_turistico` varchar(255) DEFAULT NULL,
  `ic_status_ponto_turistico` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_ponto_turistico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ponto_turistico`
--

LOCK TABLES `tb_ponto_turistico` WRITE;
/*!40000 ALTER TABLE `tb_ponto_turistico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_ponto_turistico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pontuacao`
--

DROP TABLE IF EXISTS `tb_pontuacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pontuacao` (
  `id_pontuacao` int(11) NOT NULL,
  `dt_pontuacao` date DEFAULT NULL,
  `qt_pontuacao` float(10,2) DEFAULT NULL,
  `id_turista` int(11) DEFAULT NULL,
  `id_ponto_turistico` int(11) DEFAULT NULL,
  `id_cupom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pontuacao`),
  KEY `id_turista` (`id_turista`),
  KEY `id_ponto_turistico` (`id_ponto_turistico`),
  KEY `id_cupom` (`id_cupom`),
  CONSTRAINT `tb_pontuacao_ibfk_1` FOREIGN KEY (`id_turista`) REFERENCES `tb_turista` (`id_turista`),
  CONSTRAINT `tb_pontuacao_ibfk_2` FOREIGN KEY (`id_ponto_turistico`) REFERENCES `tb_ponto_turistico` (`id_ponto_turistico`),
  CONSTRAINT `tb_pontuacao_ibfk_3` FOREIGN KEY (`id_cupom`) REFERENCES `tb_cupom` (`id_cupom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pontuacao`
--

LOCK TABLES `tb_pontuacao` WRITE;
/*!40000 ALTER TABLE `tb_pontuacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pontuacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_questao`
--

DROP TABLE IF EXISTS `tb_questao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_questao` (
  `id_questao` int(11) NOT NULL,
  `nm_questao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_questao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_questao`
--

LOCK TABLES `tb_questao` WRITE;
/*!40000 ALTER TABLE `tb_questao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_questao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_questao_quiz`
--

DROP TABLE IF EXISTS `tb_questao_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_questao_quiz` (
  `id_questao_quiz` int(11) NOT NULL,
  `id_quiz` int(11) DEFAULT NULL,
  `id_questao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_questao_quiz`),
  KEY `id_quiz` (`id_quiz`),
  KEY `id_questao` (`id_questao`),
  CONSTRAINT `tb_questao_quiz_ibfk_1` FOREIGN KEY (`id_quiz`) REFERENCES `tb_quiz` (`id_quiz`),
  CONSTRAINT `tb_questao_quiz_ibfk_2` FOREIGN KEY (`id_questao`) REFERENCES `tb_questao` (`id_questao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_questao_quiz`
--

LOCK TABLES `tb_questao_quiz` WRITE;
/*!40000 ALTER TABLE `tb_questao_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_questao_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_quiz`
--

DROP TABLE IF EXISTS `tb_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_quiz` (
  `id_quiz` int(11) NOT NULL,
  `qt_questao` int(11) DEFAULT NULL,
  `id_ponto_turistico` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_quiz`),
  KEY `id_ponto_turistico` (`id_ponto_turistico`),
  CONSTRAINT `tb_quiz_ibfk_1` FOREIGN KEY (`id_ponto_turistico`) REFERENCES `tb_ponto_turistico` (`id_ponto_turistico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_quiz`
--

LOCK TABLES `tb_quiz` WRITE;
/*!40000 ALTER TABLE `tb_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_resposta_questao`
--

DROP TABLE IF EXISTS `tb_resposta_questao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_resposta_questao` (
  `id_resposta_questao` int(11) NOT NULL,
  `ds_resposta_questao` varchar(255) DEFAULT NULL,
  `ic_resposta_correta` tinyint(1) DEFAULT NULL,
  `id_questao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_resposta_questao`),
  KEY `id_questao` (`id_questao`),
  CONSTRAINT `tb_resposta_questao_ibfk_1` FOREIGN KEY (`id_questao`) REFERENCES `tb_questao` (`id_questao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resposta_questao`
--

LOCK TABLES `tb_resposta_questao` WRITE;
/*!40000 ALTER TABLE `tb_resposta_questao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_resposta_questao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_turista`
--

DROP TABLE IF EXISTS `tb_turista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_turista` (
  `id_turista` int(11) NOT NULL,
  `nm_turista` varchar(255) NOT NULL,
  `nm_email_turista` varchar(255) DEFAULT NULL,
  `nm_senha_turista` varchar(255) DEFAULT NULL,
  `dt_registro` date DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `cd_cpf` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_turista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_turista`
--

LOCK TABLES `tb_turista` WRITE;
/*!40000 ALTER TABLE `tb_turista` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_turista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-22 22:32:01
