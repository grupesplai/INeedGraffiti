CREATE DATABASE  IF NOT EXISTS `grafiti` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `grafiti`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: grafiti
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `comentario_muro`
--

DROP TABLE IF EXISTS `comentario_muro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario_muro` (
  `id_comentario_muro` int(11) NOT NULL AUTO_INCREMENT,
  `id_emisor` int(11) DEFAULT NULL,
  `id_receptor` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comentario` varchar(100) DEFAULT NULL,
  `id_muro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_comentario_muro`),
  KEY `FK_comentario_usuario_idx` (`id_receptor`),
  KEY `FK_comentario_muro_imagenes_idx` (`id_muro`),
  CONSTRAINT `FK_comentario_muro_imagenes` FOREIGN KEY (`id_muro`) REFERENCES `muros` (`id_muros`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario_muro`
--

LOCK TABLES `comentario_muro` WRITE;
/*!40000 ALTER TABLE `comentario_muro` DISABLE KEYS */;
INSERT INTO `comentario_muro` VALUES (3,4,NULL,'2018-04-17 16:45:36','coment! ya!',4),(6,4,NULL,'2018-04-17 17:48:41','y tu a k',5);
/*!40000 ALTER TABLE `comentario_muro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estilos`
--

DROP TABLE IF EXISTS `estilos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estilos` (
  `id_estilo` int(11) NOT NULL AUTO_INCREMENT,
  `estilo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_estilo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estilos`
--

LOCK TABLES `estilos` WRITE;
/*!40000 ALTER TABLE `estilos` DISABLE KEYS */;
INSERT INTO `estilos` VALUES (1,'Geométrico'),(2,'Lineal'),(3,'Bubble'),(4,'FreeStyle'),(5,'Fletcher'),(6,'Wild Style'),(7,'Character');
/*!40000 ALTER TABLE `estilos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagenes` (
  `id_imagenes` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `imagenes` varchar(45) DEFAULT NULL,
  `description_imagen` varchar(200) DEFAULT NULL,
  `fecha_de_pubblication` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_estilo` int(11) DEFAULT NULL,
  `fecha` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_imagenes`),
  KEY `FK_usuario_imagenes_idx` (`id_usuario`),
  KEY `FK_img_estilos_idx` (`id_estilo`),
  CONSTRAINT `FK_img_estilos` FOREIGN KEY (`id_estilo`) REFERENCES `estilos` (`id_estilo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_usuario_imagenes` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
INSERT INTO `imagenes` VALUES (1,1,'1.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:27:26',1,2010),(2,2,'2.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:27:26',2,1994),(3,4,'3.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:27:26',3,2018),(4,4,'4.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:27:26',4,2017),(5,4,'5.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:27:26',5,2014),(6,1,'6.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:27:26',6,2005),(7,3,'5.jpg','agregado ahora mismo','2018-04-18 18:27:31',5,2018),(8,4,'7.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:27:26',2,2018),(9,4,'8.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:27:26',3,2016),(10,4,'9.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:27:26',3,2005),(14,1,'10.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:46:22',4,2010),(15,1,'7.jpg','Espero buenos comentarios para este grafiti que está ubicado en el centro de barcelona, junto a las ramblas.','2018-04-26 07:46:22',5,2011),(17,17,'img1.png','personal','2018-04-26 22:11:36',3,NULL),(19,18,'Sin título.png','pero como puede ser...','2018-04-26 22:25:29',3,NULL),(20,18,'img2.png','lineal','2018-04-26 22:29:41',2,NULL),(21,21,'Captura.PNG','captura....','2018-04-26 22:32:41',4,NULL),(22,21,'Captura.PNG','captura....','2018-04-26 22:33:05',4,NULL),(23,21,'Captura.PNG','captura....','2018-04-26 22:33:07',4,NULL),(24,21,'Captura.PNG','captura....','2018-04-26 22:33:09',4,NULL),(25,21,'Captura.PNG','captura....','2018-04-26 22:33:14',4,NULL),(26,21,'Captura.PNG','captura....','2018-04-26 22:33:19',4,NULL),(27,21,'Captura.PNG','captura....','2018-04-26 22:33:36',4,NULL);
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likesimg`
--

DROP TABLE IF EXISTS `likesimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likesimg` (
  `idlikes` int(11) NOT NULL AUTO_INCREMENT,
  `id_img` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `bolean` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idlikes`),
  KEY `fkidlikes_idx` (`id_img`,`id_usuario`),
  KEY `fk_likes_idx` (`id_usuario`),
  CONSTRAINT `fk_like` FOREIGN KEY (`id_img`) REFERENCES `imagenes` (`id_imagenes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_likes` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likesimg`
--

LOCK TABLES `likesimg` WRITE;
/*!40000 ALTER TABLE `likesimg` DISABLE KEYS */;
INSERT INTO `likesimg` VALUES (246,6,1,1),(276,1,1,1),(278,3,1,1),(282,4,1,1),(330,2,2,1),(336,2,4,1),(337,1,4,1),(338,2,1,1),(341,2,19,1),(343,2,20,1),(345,2,23,1),(348,4,17,1),(349,7,17,1),(350,3,17,1),(351,5,17,1),(353,1,17,1),(357,17,17,1),(358,3,18,1),(359,3,19,1),(360,21,21,1),(366,2,17,1);
/*!40000 ALTER TABLE `likesimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajes` (
  `id_mensajes` int(11) NOT NULL AUTO_INCREMENT,
  `id_emisor` int(11) DEFAULT NULL,
  `id_receptor` int(11) DEFAULT NULL,
  `mensaje` varchar(45) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_mensajes`),
  KEY `FK_mensajes_usuario_idx` (`id_emisor`),
  CONSTRAINT `FK_mensajes_usuario` FOREIGN KEY (`id_emisor`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes`
--

LOCK TABLES `mensajes` WRITE;
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
INSERT INTO `mensajes` VALUES (1,4,3,'que pasa aqui?','2018-04-17 16:53:28'),(2,4,1,'esta bien','2018-04-17 18:09:59'),(3,4,1,'mensaje a las 11.35','2018-04-24 09:25:28'),(4,17,4,'a ver que me puedes hacer','2018-04-25 18:46:54'),(5,17,2,'tenemos algo?','2018-04-25 19:07:29'),(6,17,2,'buenoq','2018-04-25 19:08:09');
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muros`
--

DROP TABLE IF EXISTS `muros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muros` (
  `id_muros` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `muro` varchar(45) DEFAULT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  `description_muro` varchar(200) DEFAULT NULL,
  `fecha_muro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_muros`),
  KEY `FK_muros_usuario_idx` (`id_usuario`),
  CONSTRAINT `FK_muros_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muros`
--

LOCK TABLES `muros` WRITE;
/*!40000 ALTER TABLE `muros` DISABLE KEYS */;
INSERT INTO `muros` VALUES (1,1,'1.jpg','aver','Ubicado en el centro de Barcelona, para cualquier autonomo. contacto direct','2018-04-26 07:24:40'),(2,2,'2.jpg','haber','Ubicado en el centro de Barcelona, para cualquier autonomo. contacto direct','2018-04-26 07:24:40'),(3,3,'3.jpg','a ver','Ubicado en el centro de Barcelona, para cualquier autonomo. contacto direct','2018-04-26 07:24:40'),(4,2,'2.jpg','haher','Ubicado en el centro de Barcelona, para cualquier autonomo. contacto direct','2018-04-26 07:24:40'),(5,3,'4.jpg',NULL,'Ubicado en el centro de Barcelona, para cualquier autonomo. contacto direct','2018-04-26 07:24:40'),(6,17,'img1.png',NULL,'personal anuncip','2018-04-26 22:17:01');
/*!40000 ALTER TABLE `muros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apelido` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `movil` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `imagen_perfil` varchar(45) NOT NULL DEFAULT '2.png',
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'usuario','perla','usuario','usuario@usuario.es','654545454','usuario','1.png','2018-05-23 00:48:22'),(2,'jose','como','segundo','usuario@usuario2','657577774','segundo','2.png','2018-05-23 00:48:22'),(3,'maria2322','puede','tercero','usuario@usuario3','6757527527','tercero','3.png','2018-05-22 22:00:00'),(4,'admin','jsdhdisoajoaso','admin','admin@gmail.com','67875775','admin','1.jpeg','2018-05-23 00:48:22'),(5,'asmin','ser ','asmin','usuario@usuario.es','66872554','asmin','3.png','2018-05-23 00:48:22'),(8,'asm','cambios','asm','usuario@usuario.es','673744177','asm','2.jpeg','2018-05-23 00:48:22'),(10,'por','estamos perdidos','por','usuario@usuario.es','673744177','por','4.jpeg','2018-05-22 22:00:00'),(12,'por','de ','por','usuario@usuario.es','673744177','por','1.jpeg','2018-05-23 00:48:22'),(13,'por','datos','por','usuario@usuario.es','673744177','dd','5.jpeg','2018-05-23 00:48:22'),(14,'por','a ','por','usuario@usuario.es','673744177','qwdqw','2.png','2018-05-23 00:48:22'),(15,'sdwasdd','menos','sdfsdf','usuario@usuario.es','673744177','sdfdfs','2.png','2018-05-23 00:48:22'),(16,'dsff','que','sdfsdf','usuario@usuario.es','673744177','sdfsd','2.png','2018-05-23 00:48:22'),(17,'as','se','as','usuario@usuario.es','673744177','as','2.png','2018-05-23 00:48:22'),(18,'ew','cambie','23','usuario@usuario.es','673744177','we','2.png','2018-05-23 00:48:22'),(19,'qqwe','solo','werwe','usuario@usuario.es','673744177','wqd','2.png','2018-05-23 00:48:22'),(20,'qwdqda','y ','qwdwqdw','usuario@usuario.es','673744177','qwwqqw','2.png','2018-05-23 00:48:22'),(21,'3223','seguir','2323','usuario@usuario.es','673744177','233','2.png','2018-05-23 00:48:22'),(22,'ghchg','añadiendo','tfuyfuy','usuario@usuario.es','673744177','tytt','2.png','2018-05-23 00:48:22'),(23,'Domenico','Giammarino','Domenico','usuario@usuario.es','673744177','dom','2.png','2018-05-23 00:48:22'),(24,'lionel','informacion',NULL,NULL,NULL,NULL,'2.png','2018-05-23 00:48:22');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-28 19:28:24
