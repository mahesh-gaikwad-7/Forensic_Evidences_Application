# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     23ci1611_forensic_evidences_systems
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2024-04-03 11:21:08
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for 23ci1611_forensic_evidences_systems
CREATE DATABASE IF NOT EXISTS `23ci1611_forensic_evidences_systems` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `23ci1611_forensic_evidences_systems`;


# Dumping structure for table 23ci1611_forensic_evidences_systems.tblhigher_officerregister
CREATE TABLE IF NOT EXISTS `tblhigher_officerregister` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `Full_Name` text NOT NULL,
  `Email_Id` text NOT NULL,
  `Address` text NOT NULL,
  `Mobile` text NOT NULL,
  `Gender` text NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1611_forensic_evidences_systems.tblhigher_officerregister: 1 rows
/*!40000 ALTER TABLE `tblhigher_officerregister` DISABLE KEYS */;
INSERT INTO `tblhigher_officerregister` (`pid`, `Full_Name`, `Email_Id`, `Address`, `Mobile`, `Gender`, `Password`) VALUES (2, 'admin', 'admin@gmail.com', 'pune', '9999999999', 'Male', '123');
/*!40000 ALTER TABLE `tblhigher_officerregister` ENABLE KEYS */;


# Dumping structure for table 23ci1611_forensic_evidences_systems.tblhospitalregister
CREATE TABLE IF NOT EXISTS `tblhospitalregister` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `Full_Name` text NOT NULL,
  `Email_Id` text NOT NULL,
  `Address` text NOT NULL,
  `Mobile` text NOT NULL,
  `Gender` text NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1611_forensic_evidences_systems.tblhospitalregister: 2 rows
/*!40000 ALTER TABLE `tblhospitalregister` DISABLE KEYS */;
INSERT INTO `tblhospitalregister` (`pid`, `Full_Name`, `Email_Id`, `Address`, `Mobile`, `Gender`, `Password`) VALUES (1, 'Harjeevan Hospital', 'h1@gmail.com', 'pune', '9999999999', 'Male', '123'), (2, 'null', 'null', 'null', 'null', 'null', 'null');
/*!40000 ALTER TABLE `tblhospitalregister` ENABLE KEYS */;


# Dumping structure for table 23ci1611_forensic_evidences_systems.tblregister_forensic
CREATE TABLE IF NOT EXISTS `tblregister_forensic` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `Full_Name` text NOT NULL,
  `Email_Id` text NOT NULL,
  `Address` text NOT NULL,
  `Mobile` text NOT NULL,
  `Gender` text NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1611_forensic_evidences_systems.tblregister_forensic: 1 rows
/*!40000 ALTER TABLE `tblregister_forensic` DISABLE KEYS */;
INSERT INTO `tblregister_forensic` (`pid`, `Full_Name`, `Email_Id`, `Address`, `Mobile`, `Gender`, `Password`) VALUES (1, 'forensic', 'f1@gmail.com', 'pune', '8888888881', 'Male', '123');
/*!40000 ALTER TABLE `tblregister_forensic` ENABLE KEYS */;


# Dumping structure for table 23ci1611_forensic_evidences_systems.tblregister_police
CREATE TABLE IF NOT EXISTS `tblregister_police` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `Full_Name` text NOT NULL,
  `Email_Id` text NOT NULL,
  `Address` text NOT NULL,
  `Mobile` text NOT NULL,
  `Gender` text NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1611_forensic_evidences_systems.tblregister_police: 2 rows
/*!40000 ALTER TABLE `tblregister_police` DISABLE KEYS */;
INSERT INTO `tblregister_police` (`pid`, `Full_Name`, `Email_Id`, `Address`, `Mobile`, `Gender`, `Password`) VALUES (1, 'police', 'p1@gmail.com', 'pune', '8888888888', 'Male', '123'), (2, 'null', 'null', 'null', 'null', 'null', 'null');
/*!40000 ALTER TABLE `tblregister_police` ENABLE KEYS */;


# Dumping structure for table 23ci1611_forensic_evidences_systems.tblvictim_info
CREATE TABLE IF NOT EXISTS `tblvictim_info` (
  `VID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` text,
  `Age` text,
  `Date_and_Time` text,
  `Document` text,
  `Gender` text,
  `Location` text,
  `Digital_Evidence` text,
  `Physical_Evidence` text,
  `Biological_Evidence` text,
  `Reason_of_Death` text,
  `Forensic_Email_id` text,
  `Forensic_Mobile_No` text,
  `Status_info` text,
  `Hospital_Email_id` text,
  `Hospital_Mobile_No` text,
  `Blood_Group` text,
  `Hospital_Name` text,
  `Forensic_Name` text,
  `PStatus_info` text,
  `Police_Name` text,
  `Police_Email_id` text,
  `Police_Mobile_No` text,
  PRIMARY KEY (`VID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1611_forensic_evidences_systems.tblvictim_info: 2 rows
/*!40000 ALTER TABLE `tblvictim_info` DISABLE KEYS */;
INSERT INTO `tblvictim_info` (`VID`, `Name`, `Age`, `Date_and_Time`, `Document`, `Gender`, `Location`, `Digital_Evidence`, `Physical_Evidence`, `Biological_Evidence`, `Reason_of_Death`, `Forensic_Email_id`, `Forensic_Mobile_No`, `Status_info`, `Hospital_Email_id`, `Hospital_Mobile_No`, `Blood_Group`, `Hospital_Name`, `Forensic_Name`, `PStatus_info`, `Police_Name`, `Police_Email_id`, `Police_Mobile_No`) VALUES (1, 'Chaitanya', '23', '2024/01/22 17:11 PM', 'Aadhar_card', 'Male', 'pune', 'Mobile', 'No', 'Blood', 'food', 'om@gmail.com', '9874563210', 'Accecpt', 'null', 'null', 'B+', 'null', NULL, 'Cybercrime', 'pc1@gmail.com', 'police', '9999999999'), (2, 'om', '23', '2024/04/02 18:43 PM', 'Aadhar_card', 'Male', 'pune', 'Computers', 'weapons', 'Blood', 'food', 'f1@gmail.com', '8888888881', 'Accecpt', 'h1@gmail.com', '9999999999', 'A+', 'Harjeevan Hospital', 'forensic', 'Cybercrime', 'p1@gmail.com', 'police', '8888888888');
/*!40000 ALTER TABLE `tblvictim_info` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
