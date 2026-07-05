-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema vote
--

CREATE DATABASE IF NOT EXISTS vote;
USE vote;

--
-- Definition of table `application`
--

DROP TABLE IF EXISTS `application`;
CREATE TABLE `application` (
  `cpic` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `district` varchar(45) DEFAULT NULL,
  `ass` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `canname` varchar(45) DEFAULT NULL,
  `partyName` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `statuss` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

/*!40000 ALTER TABLE `application` DISABLE KEYS */;
/*!40000 ALTER TABLE `application` ENABLE KEYS */;


--
-- Definition of table `candidateid`
--

DROP TABLE IF EXISTS `candidateid`;
CREATE TABLE `candidateid` (
  `district` varchar(45) DEFAULT NULL,
  `assem` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `mobile` varchar(45) DEFAULT NULL,
  `pic` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidateid`
--

/*!40000 ALTER TABLE `candidateid` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidateid` ENABLE KEYS */;


--
-- Definition of table `candidatereg`
--

DROP TABLE IF EXISTS `candidatereg`;
CREATE TABLE `candidatereg` (
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `mobile` varchar(45) DEFAULT NULL,
  `Assembly` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidatereg`
--

/*!40000 ALTER TABLE `candidatereg` DISABLE KEYS */;
INSERT INTO `candidatereg` (`name`,`email`,`mobile`,`Assembly`,`district`) VALUES 
 ('admin','admin@gmail.com','9010203040','TNagar','Chennai'),
 ('vengadesh','logn@gmail.com','8264464545','perambur','chennai'),
 ('Thalapathi','thala@gmail.com','9010203040','Rk nagar','chennai'),
 ('venkat','venkat@gmail.com','9876543210','Rk nagar','chennai');
/*!40000 ALTER TABLE `candidatereg` ENABLE KEYS */;


--
-- Definition of table `eligible`
--

DROP TABLE IF EXISTS `eligible`;
CREATE TABLE `eligible` (
  `cname` varchar(45) DEFAULT NULL,
  `pic` varchar(45) DEFAULT NULL,
  `cemail` varchar(45) NOT NULL DEFAULT '',
  `district` varchar(45) DEFAULT NULL,
  `asssembly` varchar(45) DEFAULT NULL,
  `symbol` varchar(45) DEFAULT NULL,
  `statuss` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cemail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eligible`
--

/*!40000 ALTER TABLE `eligible` DISABLE KEYS */;
INSERT INTO `eligible` (`cname`,`pic`,`cemail`,`district`,`asssembly`,`symbol`,`statuss`,`date`) VALUES 
 ('kish','29.jpg','logn@gmail.com','chennai','perambur','26.jpg','Eligible',NULL),
 ('Thalapathi','11.jpeg','thala@gmail.com','chennai','Rk nagar','6.jpeg','Eligible',NULL),
 ('Venkat','26.jpg','venkat@gmail.com','chennai','Rk nagar','20.png','Eligible',NULL);
/*!40000 ALTER TABLE `eligible` ENABLE KEYS */;


--
-- Definition of table `voteid`
--

DROP TABLE IF EXISTS `voteid`;
CREATE TABLE `voteid` (
  `district` varchar(45) DEFAULT NULL,
  `assem` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `pic` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `edate` varchar(45) DEFAULT NULL,
  `votekey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voteid`
--

/*!40000 ALTER TABLE `voteid` DISABLE KEYS */;
INSERT INTO `voteid` (`district`,`assem`,`email`,`mobile`,`pic`,`status`,`edate`,`votekey`) VALUES 
 ('chennai','Rk Nagar','aa@gmail.com','9900887766','29.jpg','Voted','2022-05-13',''),
 ('chennai','perambur','hksankaran@gmail.com','9876543210','30.jpg','Voted','2022-05-14',''),
 ('chennai','Rk Nagar','mani@gmail.com','756454764','27.jpg','Voted','2022-05-13',''),
 ('Chennai','Anna nagar','rvengadesh16@gmail.com','07338723231','download (2).jfif','Allot','2023-02-28',''),
 ('chennai','Rk Nagar','vicky@gmail.com','9988776655','10.jpg','Voted','2022-05-13','');
/*!40000 ALTER TABLE `voteid` ENABLE KEYS */;


--
-- Definition of table `voterreg`
--

DROP TABLE IF EXISTS `voterreg`;
CREATE TABLE `voterreg` (
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `mobile` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `assem` varchar(45) DEFAULT NULL,
  `otp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voterreg`
--

/*!40000 ALTER TABLE `voterreg` DISABLE KEYS */;
INSERT INTO `voterreg` (`name`,`email`,`mobile`,`district`,`assem`,`otp`) VALUES 
 ('naveen','nav@gmail.com','9900887766','Chennai','Anna nagar',NULL),
 ('ram','rvengadesh16@gmail.com','07338723231','Chennai','Anna nagar','955BG'),
 ('Thalapathi','thala@gmail.com','9988776655','Chennai','Anna nagar',NULL);
/*!40000 ALTER TABLE `voterreg` ENABLE KEYS */;


--
-- Definition of table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(45) DEFAULT NULL,
  `cpic` varchar(45) DEFAULT NULL,
  `dis` varchar(45) DEFAULT NULL,
  `ass` varchar(45) DEFAULT NULL,
  `party` varchar(45) DEFAULT NULL,
  `statu` varchar(45) DEFAULT NULL,
  `phash` varchar(150) DEFAULT NULL,
  `ahash` varchar(150) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `usermail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` (`id`,`cname`,`cpic`,`dis`,`ass`,`party`,`statu`,`phash`,`ahash`,`mail`,`usermail`) VALUES 
 (1,'Venkat','26.jpg','chennai','Rk nagar','ADMK','Voteted','','fdc7964d5244514685dd2f7b94004ab9fc707c27c036a7cbb4d743f21317d7fa','vote','aa@gmail.com'),
 (2,'Thalapathi','11.jpeg','chennai','Rk nagar','DMK','Voteted','fdc7964d5244514685dd2f7b94004ab9fc707c27c036a7cbb4d743f21317d7fa','2d74c5dd72ac98fe553fd2cd9f3df7de8a967723ef6ff8fd5fa15ee3c2bf5eb8','vote','aa@gmail.com'),
 (3,'Thalapathi','11.jpeg','chennai','Rk nagar','DMK','Voteted','2d74c5dd72ac98fe553fd2cd9f3df7de8a967723ef6ff8fd5fa15ee3c2bf5eb8','b41fe47015dab0086bc960a78002afca97c340301bb1c9d77c9826e8be0d9d95','vote','aa@gmail.com'),
 (4,'Thalapathi','11.jpeg','chennai','Rk nagar','DMK','Voteted','b41fe47015dab0086bc960a78002afca97c340301bb1c9d77c9826e8be0d9d95','02323be54985e8979b0980fd7b95c34c75ba4bc8bb9d61cd98bbba9d92c42436','vote','vicky@gmail.com'),
 (5,'Thalapathi','11.jpeg','chennai','Rk nagar','DMK','Voteted','02323be54985e8979b0980fd7b95c34c75ba4bc8bb9d61cd98bbba9d92c42436','0a539f2ee66a034f9ce4ee661cdb9273a9c196bb0789788508073c0b6bcb54b0','vote','mani@gmail.com'),
 (6,'kish','29.jpg','chennai','perambur','ADMK','Voteted','0a539f2ee66a034f9ce4ee661cdb9273a9c196bb0789788508073c0b6bcb54b0','20000471825783e0afb71f2e62bafb97c4e95868fa4116aeab19d2c4a0fc499a','vote','hksankaran@gmail.com');
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
