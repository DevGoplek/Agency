# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.32-MariaDB)
# Base de datos: agency
# Tiempo de Generación: 2018-08-03 17:26:12 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `idfile` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(50) DEFAULT NULL,
  `iduser` int(11) DEFAULT '0',
  `idowner` int(11) DEFAULT '0',
  `idparent` int(11) DEFAULT '0',
  `owner` varchar(50) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `size` int(11) DEFAULT '0',
  `bucket` varchar(30) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `uploaded` datetime DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idfile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;

INSERT INTO `file` (`idfile`, `guid`, `iduser`, `idowner`, `idparent`, `owner`, `name`, `size`, `bucket`, `path`, `uploaded`, `description`, `width`, `height`, `key`)
VALUES
	(1991,'8_K00SuXh5',1,414,0,'Page','2.png',1997,'','fragment/files/uploads/2018/08/02/5b635a3074b28-2.png','2018-08-02 14:23:28','',0,0,''),
	(1992,'bQyXSB3DWg',1,1991,1991,'File','2.png',29915,'','fragment/files/uploads/2018/08/02/5b635a30b2833-2.png','2018-08-02 14:23:28','',800,600,'presentable'),
	(1993,'5MxBarR2mG',1,429,0,'Page','1.png',1613,'','fragment/files/uploads/2018/08/02/5b635c0965d12-1.png','2018-08-02 14:31:21','',0,0,''),
	(1994,'hQIoc4uYwW',1,1993,1993,'File','1.png',21935,'','fragment/files/uploads/2018/08/02/5b635c099d391-1.png','2018-08-02 14:31:21','',800,600,'presentable'),
	(1995,'C3smU_vww-',1,430,0,'Page','1.png',1613,'','fragment/files/uploads/2018/08/02/5b635c170f06f-1.png','2018-08-02 14:31:35','',0,0,''),
	(1996,'uRGYw2zvxb',1,1995,1995,'File','1.png',21935,'','fragment/files/uploads/2018/08/02/5b635c1742fb9-1.png','2018-08-02 14:31:35','',800,600,'presentable'),
	(1997,'XervIg3ZwL',1,431,0,'Page','1.png',1613,'','fragment/files/uploads/2018/08/02/5b635c20e1b8b-1.png','2018-08-02 14:31:44','',0,0,''),
	(1998,'1MDE7Me2bh',1,1997,1997,'File','1.png',21935,'','fragment/files/uploads/2018/08/02/5b635c211f5cd-1.png','2018-08-02 14:31:45','',800,600,'presentable'),
	(1999,'4SDA2Xrjnw',1,432,0,'Page','1.png',1613,'','fragment/files/uploads/2018/08/02/5b635c3ab01a0-1.png','2018-08-02 14:32:10','',0,0,''),
	(2000,'12SG1UKi_o',1,1999,1999,'File','1.png',21935,'','fragment/files/uploads/2018/08/02/5b635c3b525a9-1.png','2018-08-02 14:32:11','',800,600,'presentable'),
	(2001,'VGiyG0lB7V',1,433,0,'Page','1.png',1613,'','fragment/files/uploads/2018/08/02/5b635c41bb2f9-1.png','2018-08-02 14:32:17','',0,0,''),
	(2002,'kEANvmUrTl',1,2001,2001,'File','1.png',21935,'','fragment/files/uploads/2018/08/02/5b635c41ebca9-1.png','2018-08-02 14:32:17','',800,600,'presentable'),
	(2003,'fBHHZSnG_C',1,434,0,'Page','1.png',1613,'','fragment/files/uploads/2018/08/02/5b635c4d2d932-1.png','2018-08-02 14:32:29','',0,0,''),
	(2004,'wwwqqXcj3s',1,2003,2003,'File','1.png',21935,'','fragment/files/uploads/2018/08/02/5b635c4d5cff9-1.png','2018-08-02 14:32:29','',800,600,'presentable');

/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla fragment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fragment`;

CREATE TABLE `fragment` (
  `idfragment` int(11) NOT NULL AUTO_INCREMENT,
  `idpage` int(11) DEFAULT '0',
  `value` longtext,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idfragment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `fragment` WRITE;
/*!40000 ALTER TABLE `fragment` DISABLE KEYS */;

INSERT INTO `fragment` (`idfragment`, `idpage`, `value`, `name`)
VALUES
	(157,1,'Lorem Ipsum','body'),
	(158,413,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris.','desc'),
	(159,413,'Changing the World Through Design','title'),
	(160,414,'Our Agency, our selves.','title'),
	(161,414,'<div>Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo in libero. Vestibulum mollis mauris enim. Morbi euismod magna ac lorem rutrum elementum. Donec viverra auctor.</div><div><br></div>','desc'),
	(162,414,'<img data-guid=\"bQyXSB3DWg\" data-original-guid=\"8_K00SuXh5\" src=\"/fragment/files/uploads/2018/08/02/5b635a30b2833-2.png\">','img'),
	(163,421,'<div>Photoshop</div>','title'),
	(164,421,'Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna.','desc'),
	(165,422,'Javascript','title'),
	(166,422,'Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna.','desc'),
	(167,423,'Marketi','title'),
	(168,423,'<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna.</span>','desc'),
	(169,424,'28','stat'),
	(170,424,'Websites','desc'),
	(171,425,'43','stat'),
	(172,425,'Apps','desc'),
	(173,426,'95','stat'),
	(174,426,'Adds&nbsp;','desc'),
	(175,427,'59','stat'),
	(176,427,'Cakes','desc'),
	(177,428,'18','stat'),
	(178,428,'Logos','desc'),
	(179,417,'Our Recent Work','title'),
	(180,429,'<img data-guid=\"hQIoc4uYwW\" data-original-guid=\"5MxBarR2mG\" src=\"/fragment/files/uploads/2018/08/02/5b635c099d391-1.png\">','img'),
	(181,430,'<img data-guid=\"uRGYw2zvxb\" data-original-guid=\"C3smU_vww-\" src=\"/fragment/files/uploads/2018/08/02/5b635c1742fb9-1.png\">','img'),
	(182,431,'<img data-guid=\"1MDE7Me2bh\" data-original-guid=\"XervIg3ZwL\" src=\"/fragment/files/uploads/2018/08/02/5b635c211f5cd-1.png\">','img'),
	(183,432,'<img data-guid=\"12SG1UKi_o\" data-original-guid=\"4SDA2Xrjnw\" src=\"/fragment/files/uploads/2018/08/02/5b635c3b525a9-1.png\">','img'),
	(184,433,'<img data-guid=\"kEANvmUrTl\" data-original-guid=\"VGiyG0lB7V\" src=\"/fragment/files/uploads/2018/08/02/5b635c41ebca9-1.png\">','img'),
	(185,434,'<img data-guid=\"wwwqqXcj3s\" data-original-guid=\"fBHHZSnG_C\" src=\"/fragment/files/uploads/2018/08/02/5b635c4d5cff9-1.png\">','img');

/*!40000 ALTER TABLE `fragment` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
  `idgroup` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`idgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;

INSERT INTO `group` (`idgroup`, `name`)
VALUES
	(1,'System');

/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla group_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `group_user`;

CREATE TABLE `group_user` (
  `idgroupuser` int(11) NOT NULL AUTO_INCREMENT,
  `idgroup` int(11) DEFAULT '0',
  `iduser` int(11) DEFAULT '0',
  PRIMARY KEY (`idgroupuser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `idpage` int(11) NOT NULL AUTO_INCREMENT,
  `idparent` int(11) DEFAULT '0',
  `idgroup` int(11) DEFAULT '0',
  `iduser` int(11) DEFAULT '0',
  `guid` varchar(50) DEFAULT NULL,
  `key` varchar(200) DEFAULT NULL,
  `trash` int(1) DEFAULT '0',
  `online` int(1) DEFAULT '0',
  `template` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `sort` varchar(20) DEFAULT NULL,
  `powner` int(11) DEFAULT '0',
  `pgroup` int(11) DEFAULT '0',
  `pother` int(11) DEFAULT '0',
  `pworld` int(11) DEFAULT '0',
  `flags` int(11) DEFAULT '0',
  PRIMARY KEY (`idpage`),
  KEY `typeIndex` (`trash`,`online`,`idparent`) USING BTREE,
  KEY `i_guid` (`guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;

INSERT INTO `page` (`idpage`, `idparent`, `idgroup`, `iduser`, `guid`, `key`, `trash`, `online`, `template`, `created`, `modified`, `title`, `description`, `order`, `sort`, `powner`, `pgroup`, `pother`, `pworld`, `flags`)
VALUES
	(1,0,1,1,'home','home',0,1,'index','2018-08-02 13:55:16','2018-08-02 13:55:16','Home',NULL,0,NULL,63,19,17,17,0),
	(413,0,1,1,'B6GifS7Pd9','cover',0,1,'index','2018-08-02 13:56:01','2018-08-02 13:59:09','Cover','',0,'',59,17,0,17,0),
	(414,0,1,1,'A4OBWlZM3z','us',0,1,'index','2018-08-02 13:56:04','2018-08-02 13:59:11','Us','',0,'',59,17,0,17,0),
	(415,0,1,1,'4q408dMdBJ','services',0,1,'index','2018-08-02 13:58:41','2018-08-02 13:59:12','Services','',0,'',59,17,0,17,0),
	(416,0,1,1,'LOv1Eth8Jv','row',0,1,'index','2018-08-02 13:58:46','2018-08-02 13:59:13','Row','',0,'',59,17,0,17,0),
	(417,0,1,1,'0ERS-J3b7d','products',0,1,'index','2018-08-02 13:58:51','2018-08-02 13:59:15','Products','',0,'',59,17,0,17,0),
	(418,0,1,1,'jUOtN-x2OX','list',0,1,'index','2018-08-02 13:59:02','2018-08-02 13:59:16','List','',0,'',59,17,0,17,0),
	(419,0,1,1,'OMU72XLyBC','contact',0,1,'index','2018-08-02 13:59:06','2018-08-02 13:59:18','Contact','',0,'',59,17,0,17,0),
	(420,415,1,1,'T-QpB0fft_','service1',0,0,'index','2018-08-02 14:24:03','2018-08-02 14:24:03','Service1','',0,'',59,17,0,17,1024),
	(421,415,1,1,'ft_KGquVzX','photoshop',0,1,'index','2018-08-02 14:24:23','2018-08-02 14:24:48','Photoshop','',0,'',59,17,0,17,0),
	(422,415,1,1,'f6pgObK7yl','javascript',0,1,'index','2018-08-02 14:24:32','2018-08-02 14:24:50','Javascript','',0,'',59,17,0,17,0),
	(423,415,1,1,'Qk5uxI4SVZ','marketing',0,1,'index','2018-08-02 14:24:41','2018-08-02 14:24:51','Marketing','',0,'',59,17,0,17,0),
	(424,416,1,1,'wFZhoTWJ_P','row1',0,1,'index','2018-08-02 14:27:26','2018-08-02 14:27:54','Row1','',0,'',59,17,0,17,0),
	(425,416,1,1,'MPgc4h5YSO','row2',0,1,'index','2018-08-02 14:27:31','2018-08-02 14:27:55','Row2','',0,'',59,17,0,17,0),
	(426,416,1,1,'RP1_8ezRRg','row3',0,1,'index','2018-08-02 14:27:36','2018-08-02 14:27:56','Row3','',0,'',59,17,0,17,0),
	(427,416,1,1,'xVE88X7mvn','row4',0,1,'index','2018-08-02 14:27:43','2018-08-02 14:27:57','Row4','',0,'',59,17,0,17,0),
	(428,416,1,1,'q567c0aac4','row5',0,1,'index','2018-08-02 14:27:50','2018-08-02 14:28:00','Row5','',0,'',59,17,0,17,0),
	(429,417,1,1,'el--Lxjo2x','one',0,1,'index','2018-08-02 14:30:59','2018-08-02 14:31:11','One','',0,'',59,17,0,17,0),
	(430,417,1,1,'SshIli2inD','two',0,1,'index','2018-08-02 14:31:03','2018-08-02 14:31:13','Two','',0,'',59,17,0,17,0),
	(431,417,1,1,'1u1vaDcTE5','three',0,1,'index','2018-08-02 14:31:07','2018-08-02 14:31:14','Three','',0,'',59,17,0,17,0),
	(432,417,1,1,'Wf-_Pwv3KP','fourth',0,1,'index','2018-08-02 14:31:52','2018-08-02 14:32:02','Fourth','',0,'',59,17,0,17,0),
	(433,417,1,1,'bJoI5J5AA_','five',0,1,'index','2018-08-02 14:31:56','2018-08-02 14:32:04','Five','',0,'',59,17,0,17,0),
	(434,417,1,1,'u6oZ4iZ6JU','six',0,1,'index','2018-08-02 14:31:59','2018-08-02 14:32:05','Six','',0,'',59,17,0,17,0),
	(435,418,1,1,'ya-b7AL6Ir','one',0,1,'index','2018-08-02 14:32:56','2018-08-02 14:33:15','One','',0,'',59,17,0,17,0),
	(436,418,1,1,'aLK2HHWVbJ','two',0,1,'index','2018-08-02 14:33:05','2018-08-02 14:33:16','Two','',0,'',59,17,0,17,0),
	(437,418,1,1,'lMbL9pJavC','three',0,1,'index','2018-08-02 14:33:09','2018-08-02 14:33:19','Three','',0,'',59,17,0,17,0);

/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla setting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `idsetting` int(11) NOT NULL AUTO_INCREMENT,
  `idowner` int(11) DEFAULT '0',
  `owner` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`idsetting`),
  KEY `i_name` (`name`) USING BTREE,
  KEY `i_owner` (`idowner`,`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;

INSERT INTO `setting` (`idsetting`, `idowner`, `owner`, `name`, `value`)
VALUES
	(1832,1,'Page','page-configuration','{\n   \"children\":{\n    \"fragment\":[\n\n    {\n        \"key\":\"title\",\n        \"name\":\"Titulo\",\n        \"type\":\"html\"\n    },\n    {\n        \"key\":\"desc\",\n        \"name\":\"DescripciÃ³n\",\n        \"type\":\"html\"\n    }\n]\n}\n}'),
	(1833,0,'global','home','home'),
	(1834,0,'global','theme','template'),
	(1835,413,'Page','page-configuration','{\n    \"fragments\":[\n\n    {\n        \"key\":\"title\",\n        \"name\":\"Titulo\",\n        \"type\":\"html\"\n    },\n    {\n        \"key\":\"desc\",\n        \"name\":\"DescripciÃ³n\",\n        \"type\":\"html\"\n    }\n  ]\n}'),
	(1836,414,'Page','page-configuration','{\n    \"fragments\":[\n\n    {\n        \"key\":\"title\",\n        \"name\":\"Titulo\",\n        \"type\":\"html\"\n    },\n    {\n        \"key\":\"desc\",\n        \"name\":\"DescripciÃ³n\",\n        \"type\":\"html\"\n    },\n    {\n        \"key\":\"img\",\n        \"name\":\"Imagen\",\n        \"type\":\"image\",\n        \"image-quality\": 1\n    }\n]\n}'),
	(1837,415,'Page','page-configuration','{\n   \"children\":{\n    \"fragments\":[\n\n    {\n        \"key\":\"title\",\n        \"name\":\"Titulo\",\n        \"type\":\"html\"\n    },\n    {\n        \"key\":\"desc\",\n        \"name\":\"DescripciÃ³n\",\n        \"type\":\"html\"\n    }\n]\n}\n}'),
	(1838,416,'Page','page-configuration','{\n   \"children\":{\n    \"fragments\":[\n\n    {\n        \"key\":\"stat\",\n        \"name\":\"Stat\",\n        \"type\":\"html\"\n    },\n    {\n        \"key\":\"desc\",\n        \"name\":\"DescripciÃ³n\",\n        \"type\":\"html\"\n    }\n]\n}\n}'),
	(1839,417,'Page','page-configuration','{\n   \"fragments\":[\n     {\n        \"key\":\"title\",\n        \"name\":\"Titulo\",\n        \"type\":\"html\"\n     }\n    ],\n   \"children\":{\n    \"fragments\":[\n\n    \n    {\n        \"key\": \"img\",\n        \"name\":\"Imagen\",\n        \"type\":\"image\"\n    }\n   ]\n }\n}'),
	(1840,418,'Page','page-configuration','{\n   \"children\":{\n    \"fragments\":[\n    {\n        \"key\":\"item\",\n        \"name\":\"Item\",\n        \"type\":\"html\"\n    }\n]\n}\n}'),
	(1841,419,'Page','page-configuration',''),
	(1842,0,'global','image-quality',''),
	(1843,420,'Page','page-configuration',''),
	(1844,421,'Page','page-configuration',''),
	(1845,422,'Page','page-configuration',''),
	(1846,423,'Page','page-configuration',''),
	(1847,424,'Page','page-configuration',''),
	(1848,425,'Page','page-configuration',''),
	(1849,426,'Page','page-configuration',''),
	(1850,427,'Page','page-configuration',''),
	(1851,428,'Page','page-configuration',''),
	(1852,429,'Page','page-configuration',''),
	(1853,430,'Page','page-configuration',''),
	(1854,431,'Page','page-configuration',''),
	(1855,432,'Page','page-configuration',''),
	(1856,433,'Page','page-configuration',''),
	(1857,434,'Page','page-configuration',''),
	(1858,435,'Page','page-configuration',''),
	(1859,436,'Page','page-configuration',''),
	(1860,437,'Page','page-configuration','');

/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `flags` int(11) DEFAULT '0',
  PRIMARY KEY (`iduser`),
  KEY `i_uname` (`uname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`iduser`, `uname`, `password`, `flags`)
VALUES
	(1,'root','63a9f0ea7bb98050796b649e85481845',3);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
