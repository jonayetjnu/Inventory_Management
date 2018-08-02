-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema angular_js
--

CREATE DATABASE IF NOT EXISTS angular_js;
USE angular_js;

--
-- Definition of table `company_product`
--

DROP TABLE IF EXISTS `company_product`;
CREATE TABLE `company_product` (
  `cp_id` int(10) unsigned NOT NULL auto_increment,
  `cp_brand_name` varchar(45) NOT NULL,
  `cp_group_name` varchar(45) NOT NULL,
  `cp_type` varchar(45) NOT NULL,
  `cp_unit` varchar(45) NOT NULL,
  `cp_company_name` varchar(45) NOT NULL,
  PRIMARY KEY  (`cp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_product`
--

/*!40000 ALTER TABLE `company_product` DISABLE KEYS */;
INSERT INTO `company_product` (`cp_id`,`cp_brand_name`,`cp_group_name`,`cp_type`,`cp_unit`,`cp_company_name`) VALUES 
 (13,'Mobile','S3','4.5\"','black,gray','Samsung'),
 (14,'Mobile','S6','5\"','black','Samsung'),
 (15,'Freeze','MFFA5PN','60\"','pink,silver','Walton'),
 (16,'Laptop','Dell Corei5','22\"','Black','Dell'),
 (18,'Laptop','Hp i3-5005u','23\"','Black','Hp');
/*!40000 ALTER TABLE `company_product` ENABLE KEYS */;


--
-- Definition of table `drug_company`
--

DROP TABLE IF EXISTS `drug_company`;
CREATE TABLE `drug_company` (
  `dc_id` int(10) unsigned NOT NULL auto_increment,
  `dc_nick_name` varchar(45) NOT NULL,
  `dc_full_name` varchar(45) NOT NULL,
  `dc_address` varchar(45) NOT NULL,
  `dc_phone` varchar(45) NOT NULL,
  PRIMARY KEY  (`dc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_company`
--

/*!40000 ALTER TABLE `drug_company` DISABLE KEYS */;
INSERT INTO `drug_company` (`dc_id`,`dc_nick_name`,`dc_full_name`,`dc_address`,`dc_phone`) VALUES 
 (1,'Samsung','Samsung Galaxy','null','null'),
 (2,'Walton','Walton Hi-Tech Industries Ltd','null','null'),
 (7,'Dell','Dell Computer Corporation','null','null'),
 (8,'Hp','Hewlett Packard','null','null');
/*!40000 ALTER TABLE `drug_company` ENABLE KEYS */;


--
-- Definition of table `drug_detail`
--

DROP TABLE IF EXISTS `drug_detail`;
CREATE TABLE `drug_detail` (
  `dd_id` int(10) unsigned NOT NULL auto_increment,
  `dd_brand_name` varchar(45) NOT NULL,
  `dd_group_name` varchar(45) NOT NULL,
  `dd_type` varchar(45) NOT NULL,
  `dd_company_name` varchar(45) NOT NULL,
  `dd_unit` varchar(45) NOT NULL,
  `dd_qty` double NOT NULL,
  `dd_unit_buy` double NOT NULL,
  `dd_unit_sale` double NOT NULL,
  `dd_total_buy` double NOT NULL,
  `dd_total_sale` double NOT NULL,
  PRIMARY KEY  (`dd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_detail`
--

/*!40000 ALTER TABLE `drug_detail` DISABLE KEYS */;
INSERT INTO `drug_detail` (`dd_id`,`dd_brand_name`,`dd_group_name`,`dd_type`,`dd_company_name`,`dd_unit`,`dd_qty`,`dd_unit_buy`,`dd_unit_sale`,`dd_total_buy`,`dd_total_sale`) VALUES 
 (6,'Mobile','S3','4.5\"','Samsung','black,gray',20,25000,26000,500000,520000),
 (7,'Mobile','S6','5\"','Samsung','black',10,28000,30000,280000,300000),
 (8,'Freeze','MFFA5PN','60\"','Walton','pink,silver',30,34000,35000,1020000,1050000),
 (9,'Laptop','Dell Corei5','22\"','Dell','Black',15,55000,56000,825000,840000),
 (10,'Laptop','Hp i3-5005u','23\"','Hp','Black',10,56000,57000,560000,570000);
/*!40000 ALTER TABLE `drug_detail` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `pname` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`pid`,`pname`,`price`,`qty`) VALUES 
 (15,'Mouse1',100,100),
 (16,'Mouse2',300,40),
 (17,'HDD-1',3500,30),
 (18,'HDD-4',100,40),
 (26,'HDD-1',300,40);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
