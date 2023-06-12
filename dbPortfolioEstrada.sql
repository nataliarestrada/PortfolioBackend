-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: bcl3hsee5ugoeovshoq0-mysql.services.clever-cloud.com    Database: bcl3hsee5ugoeovshoq0
-- ------------------------------------------------------
-- Server version	8.0.15-5

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

-- SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'f41d366d-91e5-11e9-8525-cecd028ee826:1-129859021';

--
-- Table structure for table `educacion`
--

DROP TABLE IF EXISTS `educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_edu` varchar(500) DEFAULT NULL,
  `institucion_edu` varchar(255) DEFAULT NULL,
  `periodo_edu` varchar(255) DEFAULT NULL,
  `titulo_edu` varchar(255) DEFAULT NULL,
  `url_logo_edu` varchar(500) DEFAULT NULL,
  `persona_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8co4tldnpfbl6l8oc06veg4jr` (`persona_id`),
  CONSTRAINT `FK8co4tldnpfbl6l8oc06veg4jr` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion`
--

LOCK TABLES `educacion` WRITE;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
INSERT  IGNORE INTO `educacion` VALUES (1,'Cursando el 3er año de la carrera.','Universidad Nacional de Jujuy - Facultad de Ingeniería','Actual','Ingeniería en informátíca','https://www.universidades.com.ar/logos/original/logo-universidad-nacional-de-jujuy.webp',1),(2,'Hoy LA ESCUELA TÉCNICA PROVINCIAL N*1 (E.T.P.), funciona eficazmente cumpliendo su misión como Ente del saber y el avance tecnológico en miles de seres jujeños y de todos los barrios de Jujuy que, en su labor diaria, aplican sus conocimientos de vanguardia.','Escuela Técnica Provincial N°1 “Aristóbulo Vargas Belmonte”','2016','Técnico en Computación','https://scontent.fjuj1-1.fna.fbcdn.net/v/t39.30808-6/302501064_411971574357716_7692329946778831054_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KpZk2ZRZUIsAX_jYff0&_nc_ht=scontent.fjuj1-1.fna&oh=00_AfCj6yFYVPa2sZqc-uOiSNDwaApTbarG33WrUpHme0jq1w&oe=6466C37E',1);
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia`
--

DROP TABLE IF EXISTS `experiencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_expe` varchar(500) DEFAULT NULL,
  `organismo_expe` varchar(255) DEFAULT NULL,
  `periodo_expe` varchar(255) DEFAULT NULL,
  `puesto_expe` varchar(255) DEFAULT NULL,
  `url_logo_expe` varchar(500) DEFAULT NULL,
  `persona_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK30e9aa2tv4x2kirmadmmggsme` (`persona_id`),
  CONSTRAINT `FK30e9aa2tv4x2kirmadmmggsme` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia`
--

LOCK TABLES `experiencia` WRITE;
/*!40000 ALTER TABLE `experiencia` DISABLE KEYS */;
INSERT  IGNORE INTO `experiencia` VALUES (1,'Garantizar el correcto funcionamiento del software mediante el mantenimiento y la resolución de problemas técnicos. Implementar un proceso de digitalización de datos en el sector de ventas, asegurando la integridad y confidencialidad de la información.','El Mundo de las Placas','Junio 2021 - Octubre 2021','Soporte Tecnico','https://elmundodelasplacas.com.ar/web/wp-content/uploads/2019/11/logo-el-Mundo-de-las-Placas-1.png',1);
/*!40000 ALTER TABLE `experiencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habilidades_blandas`
--

DROP TABLE IF EXISTS `habilidades_blandas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habilidades_blandas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombrehb` varchar(255) DEFAULT NULL,
  `porcentajehb` varchar(255) DEFAULT NULL,
  `persona_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1jtj2xnsuqkxkliu72n89tlk7` (`persona_id`),
  CONSTRAINT `FK1jtj2xnsuqkxkliu72n89tlk7` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilidades_blandas`
--

LOCK TABLES `habilidades_blandas` WRITE;
/*!40000 ALTER TABLE `habilidades_blandas` DISABLE KEYS */;
INSERT  IGNORE INTO `habilidades_blandas` VALUES (1,'Comunicación','90',1),(2,'Trabajo en equipo','80',1),(3,'Resolución de problema','80',1),(4,'Liderazgo','90',1);
/*!40000 ALTER TABLE `habilidades_blandas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habilidades_duras`
--

DROP TABLE IF EXISTS `habilidades_duras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habilidades_duras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombrehd` varchar(255) DEFAULT NULL,
  `porcentajehd` varchar(255) DEFAULT NULL,
  `persona_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKll9fgjj5cxusmkmiln85rdb5e` (`persona_id`),
  CONSTRAINT `FKll9fgjj5cxusmkmiln85rdb5e` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilidades_duras`
--

LOCK TABLES `habilidades_duras` WRITE;
/*!40000 ALTER TABLE `habilidades_duras` DISABLE KEYS */;
INSERT  IGNORE INTO `habilidades_duras` VALUES (1,'HTML/CSS','70',1),(2,'Python','90',1),(3,'Angular','60',1),(4,'Java','70',1);
/*!40000 ALTER TABLE `habilidades_duras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_url` varchar(500) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `github_url` varchar(500) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `ocupacion` varchar(255) DEFAULT NULL,
  `twtter_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT  IGNORE INTO `persona` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/portfolio-frontend-natalia.appspot.com/o/foto-perfil.png?alt=media&token=a29e40b3-1ef4-465d-8a7a-1f1454d2be72','Hola me llamo Natalia! soy Técnica en Computación y Estudiante de la carrera Ingeniería Informática. Me considero una persona responsable, autodidacta, capaz de aprender rápido y adaptarme a cualquier lenguaje o tecnología que se necesite. Estoy acostumbrada a trabajar en equipo y siempre aporto todo lo posible en mis trabajos. ','nataliarominaestrada@gmail.com','https://www.facebook.com/nati.tachito/','https://github.com/nataliarestrada','https://firebasestorage.googleapis.com/v0/b/portfolio-frontend-natalia.appspot.com/o/banner2.png?alt=media&token=b03d00d8-6b6c-4f03-ac1e-6d33ac0e2d54','https://www.instagram.com/nati.estrada/','https://www.linkedin.com/in/nataliarominaestrada/','Natalia Romina Estrada','Estudiante','https://twitter.com/nati_estradaa');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_proye` varchar(500) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `nombre_proye` varchar(255) DEFAULT NULL,
  `repo_url` varchar(500) DEFAULT NULL,
  `persona_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh9q3ib0v2a6x56ch8dbcw40by` (`persona_id`),
  CONSTRAINT `FKh9q3ib0v2a6x56ch8dbcw40by` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT  IGNORE INTO `proyecto` VALUES (1,'Trabajo integrador del curso #YoProgramo que consiste en realizar un portafolio web implementando JWT con Spring Boot y Angular','https://website-assets-fs.freshworks.com/attachments/ckbsryqms00q2heg19ekuza1r-it-product-management0.one-half.png','Portfolio Web Personal','https://github.com/nataliarestrada/PortfolioFrontend',1);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT  IGNORE INTO `rol` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT  IGNORE INTO `usuario` VALUES (1,'nataliarominaestrada@gmail.com','Natalia Estrada','natiestrada','$2a$10$LNGrwgLPc9PYRWFYl.taP.znM5tOTN.fmOxna/HeqXidoTGH6ficu');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_rol`
--

DROP TABLE IF EXISTS `usuario_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_rol` (
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id`,`rol_id`),
  KEY `FK610kvhkwcqk2pxeewur4l7bd1` (`rol_id`),
  CONSTRAINT `FK610kvhkwcqk2pxeewur4l7bd1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  CONSTRAINT `FKbyfgloj439r9wr9smrms9u33r` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_rol`
--

LOCK TABLES `usuario_rol` WRITE;
/*!40000 ALTER TABLE `usuario_rol` DISABLE KEYS */;
INSERT  IGNORE INTO `usuario_rol` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `usuario_rol` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-12 15:35:31
