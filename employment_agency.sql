-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2022 at 09:44 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employment_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `User_name`, `Email`, `Password`) VALUES
(1, 'Maung Myat Aung', 'maung@gmail.com', 'mma123');

-- --------------------------------------------------------

--
-- Table structure for table `apply_job`
--

DROP TABLE IF EXISTS `apply_job`;
CREATE TABLE IF NOT EXISTS `apply_job` (
  `Apply_job_id` int(11) NOT NULL AUTO_INCREMENT,
  `Job_detail_id` int(11) DEFAULT NULL,
  `Job_seeker_id` int(11) DEFAULT NULL,
  `Apply_date` date DEFAULT NULL,
  `Apply_action` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Apply_job_id`),
  KEY `Job_detail_id` (`Job_detail_id`),
  KEY `Job_seeker_id` (`Job_seeker_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_job`
--

INSERT INTO `apply_job` (`Apply_job_id`, `Job_detail_id`, `Job_seeker_id`, `Apply_date`, `Apply_action`) VALUES
(1, 1, 1, '2022-08-16', 'Accept'),
(2, 2, 1, '2022-08-18', 'Accept'),
(3, 3, 5, '2022-09-21', 'Accept'),
(4, 3, 5, '2022-09-21', 'Reject'),
(5, 3, 10, '2022-09-21', 'Accept'),
(6, 2, 9, '2022-09-21', 'Accept'),
(7, 1, 8, '2022-09-21', 'Accept'),
(8, 3, 7, '2022-09-21', 'Accept'),
(9, 2, 6, '2022-09-21', 'Reject'),
(10, 1, 1, '2022-09-21', 'Accept'),
(11, 3, 1, '2022-09-21', 'Accept'),
(12, 2, 9, '2022-10-03', 'waiting'),
(13, 1, 9, '2022-10-03', 'Accept'),
(14, 3, 9, '2022-10-03', 'Accept'),
(15, 1, 3, '2022-10-03', 'Accept'),
(16, 3, 3, '2022-10-03', 'Accept'),
(17, 2, 3, '2022-10-03', 'waiting'),
(18, 2, 24, '2022-10-03', 'Accept'),
(19, 3, 24, '2022-10-03', 'waiting'),
(20, 1, 24, '2022-10-03', 'Accept'),
(21, 1, 135, '2022-10-05', 'Accept'),
(22, 2, 135, '2022-10-05', 'Accept'),
(23, 3, 135, '2022-10-05', 'Accept'),
(24, 10, 1, '2022-10-26', 'Reject'),
(25, 10, 24, '2022-10-28', 'waiting'),
(26, 10, 9, '2022-10-28', 'waiting'),
(27, 11, 9, '2022-10-28', 'waiting');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `Company_id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_type_id` int(11) DEFAULT NULL,
  `Location_id` int(11) DEFAULT NULL,
  `Company_name` varchar(100) DEFAULT NULL,
  `Logo` text,
  `Number_of_employee` varchar(100) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Company_id`),
  KEY `Company_type_id` (`Company_type_id`),
  KEY `Location_id` (`Location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Company_id`, `Company_type_id`, `Location_id`, `Company_name`, `Logo`, `Number_of_employee`, `Address`) VALUES
(3, 6, 5, 'Aeon Display and Security System', '1.png', '5', 'YanGyiAung street'),
(4, 7, 5, 'Air KBZ', '2.jfif', '10', 'Yangon International Airport'),
(5, 7, 4, 'Air Mandalay', '3.png', '3', 'Mandalay International Airport'),
(17, 18, 3, 'NVL University', 'nvl.jpg', '3', 'AungMyaTharZan'),
(7, 8, 5, 'Myanmar Distribution Group', '6.png', '8', 'BoAungSan Street'),
(8, 9, 7, 'Myint & Associates', 'R.jfif', '2', 'MaharAungMya'),
(9, 10, 1, 'Myit Makha Media Group', '62051.webp', '3', 'Thari Street'),
(10, 11, 4, 'Parrot Film Company', 'R.png', '5', 'Bandula Street'),
(11, 12, 4, 'KBZ Bank', 'OIP (1).jfif', '6', 'ChanAyeTharZan'),
(2, 13, 4, 'The Seven Brother Company', 'R (1).png', '5', 'AMARAPURA'),
(1, 2, 4, 'NCC Education', '1200px-Ncc_edu.png', '2', 'BoAungSan Street'),
(14, 2, 3, 'CEC ', 'R (1).jfif', '30', 'AungMyaTharZan'),
(15, 16, 3, 'Myo Thiha Construction Co.ldt', 'OIP.jfif', '2', 'Maharaungmya');

-- --------------------------------------------------------

--
-- Table structure for table `company_job_type`
--

DROP TABLE IF EXISTS `company_job_type`;
CREATE TABLE IF NOT EXISTS `company_job_type` (
  `Company_job_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_id` int(11) DEFAULT NULL,
  `Job_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Company_job_type_id`),
  KEY `Company_id` (`Company_id`),
  KEY `Job_type_id` (`Job_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_job_type`
--

INSERT INTO `company_job_type` (`Company_job_type_id`, `Company_id`, `Job_type_id`) VALUES
(1, 1, 1),
(2, 4, 2),
(3, 4, 3),
(4, 11, 4),
(5, 1, 5),
(7, 1, 7),
(8, 10, 8),
(9, 2, 9),
(10, 3, 10),
(11, 1, 11),
(12, 3, 12),
(13, 2, 13),
(14, 8, 14),
(15, 15, 15),
(16, 15, 16),
(17, 10, 17),
(18, 11, 18),
(19, 15, 19),
(20, 2, 20),
(21, 10, 21),
(22, 8, 22),
(23, 4, 23);

-- --------------------------------------------------------

--
-- Table structure for table `company_type`
--

DROP TABLE IF EXISTS `company_type`;
CREATE TABLE IF NOT EXISTS `company_type` (
  `Company_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`Company_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_type`
--

INSERT INTO `company_type` (`Company_type_id`, `Company_type_name`) VALUES
(1, 'Product Sell'),
(2, 'Education'),
(3, 'IT Service Company'),
(6, 'Consumer electronics'),
(7, 'Airlines'),
(8, 'Nondurable household products'),
(9, 'Delivery services'),
(10, 'Broadcasting & entertainment'),
(11, 'Media'),
(12, 'Banking System'),
(13, 'Travel and Tour Agency'),
(14, 'Convenience Store'),
(16, 'Construction Company'),
(18, 'University');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `Feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `Job_seeker_id` int(11) NOT NULL,
  `Feedback` text NOT NULL,
  PRIMARY KEY (`Feedback_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Feedback_id`, `Job_seeker_id`, `Feedback`) VALUES
(1, 1, 'So good'),
(2, 2, 'I can apply for jobs conveniently. Thank you so much.'),
(3, 3, 'This is complex website. I cannot use probably.'),
(4, 4, 'This is good website. I can find job easily.'),
(5, 5, 'Amazing Website. I like it.'),
(6, 1, 'Hello'),
(7, 1, 'Very useful'),
(8, 1, 'easy to use. that is so good for user requirements');

-- --------------------------------------------------------

--
-- Table structure for table `job_detail`
--

DROP TABLE IF EXISTS `job_detail`;
CREATE TABLE IF NOT EXISTS `job_detail` (
  `Job_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_id` int(11) DEFAULT NULL,
  `Job_title` int(11) DEFAULT NULL,
  `Job_detail_name` varchar(100) DEFAULT NULL,
  `Job_requirement` varchar(100) DEFAULT NULL,
  `Salary` varchar(50) DEFAULT NULL,
  `Work_Station` varchar(100) DEFAULT NULL,
  `Career_Opportunities` varchar(100) DEFAULT NULL,
  `Require_Employee` int(11) NOT NULL,
  `Start_Date` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Job_Function` varchar(150) DEFAULT NULL,
  `Job_Action` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Job_detail_id`),
  KEY `Company_id` (`Company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_detail`
--

INSERT INTO `job_detail` (`Job_detail_id`, `Company_id`, `Job_title`, `Job_detail_name`, `Job_requirement`, `Salary`, `Work_Station`, `Career_Opportunities`, `Require_Employee`, `Start_Date`, `Due_Date`, `Job_Function`, `Job_Action`) VALUES
(1, 11, 2, 'Auto and Manual Car', '5 Years Experience', '600000', 'Yangon', 'Improve your driving Experience', 4, '2021-11-07', '2022-09-29', 'Driving  company car', 'Safety drive'),
(2, 1, 4, 'Checking money ', '3 year experience of Money Check', '350000', 'Yangon', 'Improve your mine ', 15, '2021-01-15', '2022-09-30', 'Chicking Money', 'chick'),
(3, 1, 1, 'Agine Development ', '2 years teaching experience', '5000000', 'Mandalay', 'To improve teaching skill', 5, '2022-10-01', '2022-10-22', 'Teaching for L5DC students', 'teaching'),
(9, 3, 13, 'Java programming language', '2 years programming experience', '500000', 'Naypyitaw', 'Hight salary', 3, '2021-11-27', '2021-12-26', 'programmer', 'check code'),
(10, 4, 8, 'Carry and buy accessories ', '2 years  experience', '200000', 'Mandalay', 'can promote higher level', 10, '2021-06-15', '2022-03-24', 'Clean the airport environment ', 'Sweeping and other'),
(11, 2, 2, 'Driving Expert Car', '5 Years Experience', '500000', 'Yangon and Mandalay', 'More experience and safety first', 3, '2021-11-25', '2022-10-07', 'Driving car and maintain car ', 'Drive Mandalay to Yangon'),
(12, 1, 10, 'Maintain and support IT teams', '5 Years Experience', '600000', 'Mandalay', 'Can be increase your current salary', 2, '2021-09-23', '2022-10-17', 'Support IT requirement', 'Edit and update software and  hardware requirement'),
(13, 17, 10, 'Maintain and support IT teams	', '3 Years Experience	', '500000', 'Mandalay', 'Can be increase your current salary and experience', 3, '2021-10-31', '2022-11-01', 'Support IT requirement	', 'Edit and update software  requirement	');

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

DROP TABLE IF EXISTS `job_seeker`;
CREATE TABLE IF NOT EXISTS `job_seeker` (
  `Job_seeker_id` int(11) NOT NULL AUTO_INCREMENT,
  `Job_seeker_name` varchar(100) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Phone_number` varchar(11) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Profile` varchar(500) DEFAULT NULL,
  `NRC` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Job_seeker_id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_seeker`
--

INSERT INTO `job_seeker` (`Job_seeker_id`, `Job_seeker_name`, `Date_of_Birth`, `Email`, `Password`, `Phone_number`, `Address`, `Profile`, `NRC`) VALUES
(1, 'Maung Maung Myat Aung', '2000-11-24', 'mma@gmail.com', 'mma@123', '09974608659', 'Amarapura', 'a2.jpg', '9/AHMAYA(N)189211'),
(2, 'Pyae Phyo Kyaw', '1980-08-03', 'ppk@gmail.com', 'ppk1', '09941119427', 'Yangon', 'seeker2.png', '9/AHMAYA(N)182473'),
(3, 'Aung Khant Maung', '1999-08-03', 'akm@gmail.com', 'akm1', '0987654323', 'Mandalay', 'seeker3.png', '9/PaKaKha(N)09786'),
(4, 'Nay Khant Maung', '2000-08-03', 'nkm@gmail.com', 'nkm1', '0987654399', 'Yangon', 'seeker4.png', '9/PaKaKha(N)09796'),
(5, 'Nay Linn Khant', '2000-06-04', 'nlk@gmail.com', 'nlk1', '0988878654', 'Taunggyi', 'seeker5.png', '5/SaKa(N)09878'),
(6, 'Nay Linn Aung', '1965-08-03', 'nla@gmail.com', 'nla1', '0988877454', 'Taunggyi', 'seeker6.png', '5/SaKa(N)09877'),
(7, 'Nay Aung Lin', '1954-09-07', 'nal@gmail.com', 'nal1', '0988887454', 'Ayeyawadi', 'seeker7.png', '5/AYD(N)09845'),
(8, 'Aung Khain Win', '1995-10-03', 'akw@gmail.com', 'akw1', '0958877454', 'Mandalay', 'seeker8.png', '5/MDY(N)09657'),
(9, 'Myint Myat Mung', '1998-06-05', 'mmm@gmail.com', 'mmm1', '092577454', 'Pyi Oo Lwin', 'seeker9.png', '5/PYL(N)09257'),
(10, 'Maung Myint', '1989-09-10', 'mm@gmail.com', 'mm1', '0987877454', 'Yangon', 'seeker10.png', '5/YGN(N)09862'),
(11, 'May May Cho', '2000-10-10', 'mmc@gmail.com', 'mmc1', '09970990846', 'Mandalay', 'seeker11.png', '5/MDY(N)09862'),
(12, 'May Myat Mon', '1999-09-10', 'mm@gmail.com', 'mm1', '09976804962', 'Taung Gyi', 'seeker12.png', '5/TG(N)09858'),
(13, 'Man Zin Aung', '2000-10-01', 'mza@gmail.com', 'mza1', '09956478264', 'Yangon', 'seeker13.png', '8/YGN(N)09122'),
(14, 'Man Zin Mar', '2000-01-10', 'mzm@gmail.com', 'mzm1', '09956478264', 'Yangon', 'seeker14.png', '5/YGN(N)04862'),
(15, 'May May Khin', '1991-10-10', 'mmk@gmail.com', 'mmk1', '09984651230', 'Amarapura', 'seeker20.png', '9/AHMARA(N)01862'),
(16, 'May May That', '1998-10-10', 'mmt@gmail.com', 'mmt1', '09984651230', 'Amarapura', 'seeker15.png', '5/AHMARA(N)09242'),
(17, 'King Maung Thint', '1999-09-10', 'kmt@gmail.com', 'kmt1', '09986547824', 'Mandalay', 'seeker16.png', '9/MDY(N)09862'),
(18, 'King Maung Thint', '2008-08-09', 'kmt@gmail.com', 'kmt1', '09986547824', 'Mandalay', 'seeker17.png', '5/MDY(N)09862'),
(19, 'King Than Thint', '2009-07-04', 'ktt@gmail.com', 'ktt1', '09986887824', 'Yangon', 'seeker18.png', '9/YGN(N)09862'),
(20, 'Pint Phyu', '2000-10-10', 'pp@gmail.com', 'pp1', '09956214568', 'Taung Gyi', 'seeker19.png', '9/TG(N)09862'),
(21, 'Cho Cho Mar', '2022-09-01', 'ccm@gmail.com', 'ccm1', '09987456258', 'Taung Gyi', 'seeker21.png', '9/TG(N)014789'),
(22, 'Cho Cho Naing', '2000-09-01', 'ccn@gmail.com', 'ccn1', '09954456258', 'Taungu', 'seeker22.png', '9/TG(N)014559'),
(23, 'Mar Mar Naing', '1999-10-01', 'mmn@gmail.com', 'mmn1', '09954656258', 'BaGO', 'seeker23.png', '9/BG(N)022559'),
(24, 'Su Mon', '2001-09-10', 'sm@gmail.com', 'sm1', '09954457458', 'Mandalay', 'seeker24.png', '8/MDY(N)012259'),
(25, 'Thae Su', '2000-09-01', 'ts@gmail.com', 'ts1', '09954456258', 'Taungu', 'seeker25.png', '9/TG(N)014559'),
(26, 'Myo Myo Thant', '2003-09-10', 'mmt@gmail.com', 'mmt1', '09987456242', 'Yangon', 'seeker26.png', '8/YGN(N)189722'),
(27, 'Maung Myo Kin', '2004-09-10', 'mmk@gmail.com', 'mmk1', '09987454542', 'Yangon', 'seeker27.png', '8/YGN(N)189722'),
(28, 'Min Aay Thant', '2000-11-08', 'mat@gmail.com', 'mat1', '09987826242', 'Sagin', 'seeker28.png', '8/SG(N)189722'),
(29, 'Maung Than Myint', '2000-10-10', 'mtm@gmail.com', 'mtm1', '09987454542', 'Yangon', 'seeker29.png', '8/YGN(N)189722'),
(30, 'Min Aye Thant', '2001-09-10', 'mat@gmail.com', 'mat1', '09987826242', 'Sagin', 'seeker30.png', '8/SG(N)189722'),
(31, 'Aung Myat Thar', '2008-11-30', 'amt@gmail.com', 'amt1', '09985624782', 'Ka Chin', 'seeker31.png', '6/KC(N)0147822'),
(32, 'Aung Kaung Thar', '2007-11-30', 'akt@gmail.com', 'akt1', '09985601782', 'Taung Gu', 'seeker32.png', '6/TG(N)0147822'),
(33, 'Aung Thar Thar', '2008-11-30', 'att@gmail.com', 'att1', '09985624782', 'Ka Chin', 'seeker33.png', '7/KC(N)0147822'),
(34, 'Maung Aung Myat', '2005-12-30', 'mam@gmail.com', 'mam1', '09901624782', 'Mandalay', 'seeker34.png', '6/MDY(N)0147822'),
(35, 'Khant Kaung Thar', '2008-11-30', 'kkt@gmail.com', 'kkt1', '09922624782', 'Yangon', 'seeker35.png', '9/YGN(N)0147822'),
(36, 'May Thaw Thar', '2002-11-30', 'mtt@gmail.com', 'mtt1', '09987564412', 'Mandalay', 'seeker36.png', '9/MDY(N)156982'),
(37, 'Mon Thaw Aye', '2000-10-30', 'mta@gmail.com', 'mta1', '09955864412', 'Sagin', 'seeker37.png', '9/SG(N)156982'),
(38, 'Mon Thaw Aye', '2000-10-30', 'mta@gmail.com', 'mta1', '099564412', 'Sagin', 'seeker38.png', '9/SG(N)156982'),
(39, 'Kin Myat Aung', '2001-09-02', 'kma@gmail.com', 'kma1', '0998864412', 'Mandalay', 'seeker39.png', '9/MDY(N)485682'),
(40, 'Mon Shin Aye', '2000-10-30', 'msa@gmail.com', 'msa', '099564412', 'Yangon', 'seeker40.png', '9/YGN(N)132582'),
(41, 'Myat Myat Ko', '2001-09-02', 'mmk1@gmail.com', 'sma', '0995264412', 'Mandalay', 'seeker41.png', '9/MDY(N)485682'),
(42, 'Ko Aung Aung', '1999-09-08', 'kaa@gmail.com', 'kaa1', '09985654412', 'Taung Gyi', 'seeker42.png', '9/TG(N)144788'),
(43, 'Ko Maung Aung', '2000-10-08', 'kma@gmail.com', 'kma1', '09985444121', 'Taung Myint', 'seeker43.png', '9/TM(N)144788'),
(44, 'Kaung Ko Tin', '2001-09-10', 'kkt@gmail.com', 'kkt1', '09985224121', 'Mandalay', 'seeker44.png', '9/MDY(N)145588'),
(45, 'Kaung Ko Myat', '2000-11-10', 'kkm@gmail.com', 'kkm1', '09985514121', 'Chaung Thar', 'seeker45.png', '9/CT(N)145588'),
(46, 'Min Thin That', '2000-10-08', 'mtt@gmail.com', 'mtt1', '09984564121', 'Mon', 'seeker46.png', '9/MO(N)145633'),
(47, 'Myat Ko Hein', '1999-11-10', 'mkh@gmail.com', 'mkh1', '09985454121', 'Mandalay', 'seeker47.png', '9/MDY(N)145248'),
(48, 'Hein Htet', '2000-10-08', 'ht@gmail.com', 'ht1', '09985544121', 'Yangon', 'seeker48.png', '9/TM(N)144189'),
(49, 'Hein That Aung', '2000-11-10', 'hta@gmail.com', 'hta1', '09988914121', 'Ra Kaing', 'seeker49.png', '9/RK(N)145588'),
(50, 'Ko Maung Maung', '1998-10-08', 'kmm@gmail.com', 'kmm1', '09985584121', 'Taung Myint', 'seeker50.png', '9/TM(N)144788'),
(51, 'Kin May Aung', '2000-10-19', 'kma@gmail.com', 'kma1', '09987552453', 'Mandalay', 'seeker51.png', '9/MDY(N)014788'),
(52, 'Kin Aye Aung', '2000-11-09', 'kaa@gmail.com', 'kaa1', '09987555453', 'Yangon', 'seeker52.png', '8/MDY(N)014488'),
(53, 'May Aye Khin', '1998-11-09', 'mak@gmail.com', 'mak1', '09987215453', 'Saging', 'seeker53.png', '8/SG(N)024488'),
(54, 'Yi Aye Mon', '2000-08-09', 'yam@gmail.com', 'yam1', '09983555453', 'Yangon', 'seeker54.png', '8/YGN(N)012882'),
(55, 'May Yi Naung', '1999-01-09', 'myn@gmail.com', 'myn1', '09987123453', 'Mandalay', 'seeker55.png', '8/MDY(N)013288'),
(56, 'Mon Mon Han', '2000-10-10', 'mmh@gmail.com', 'mmh1', '09987213253', 'Taung Gyi', 'seeker56.png', '8/TG(N)021188'),
(57, 'Yi Aye Aye', '2000-08-09', 'maa@gmail.com', 'maa1', '09983685453', 'Yangon', 'seeker57.png', '8/YGN(N)012012'),
(58, 'Tin Aye Aung', '2010-11-09', 'taa@gmail.com', 'taa1', '09987514453', 'Mandalay', 'seeker58.png', '7/MDY(N)013388'),
(59, 'May Khin Khin', '1998-11-09', 'mkk@gmail.com', 'mkk1', '09987215453', 'Naypyidaw', 'seeker59.png', '9/NPD(N)024488'),
(60, 'Yi Aye Than', '2000-11-02', 'yat@gmail.com', 'yat1', '09983125453', 'Yangon', 'seeker60.png', '8/YGN(N)012812'),
(61, 'Kin Mon Khin', '2000-10-09', 'kmk@gmail.com', 'kmk1', '09987551453', 'Mandalay', 'seeker61.png', '8/MDY(N)014188'),
(62, 'May Mon Lwin', '1998-01-30', 'mml@gmail.com', 'mml1', '09981215453', 'Saging', 'seeker62.png', '8/SG(N)023681'),
(63, 'Yi Aye Lwin', '2000-12-09', 'yal@gmail.com', 'yal1', '09983555453', 'Yangon', 'seeker63.png', '8/YGN(N)015282'),
(64, 'May Aye Naung', '1999-11-03', 'man@gmail.com', 'man1', '09987122253', 'Mandalay', 'seeker64.png', '8/MDY(N)013228'),
(65, 'Mon Mon Oo', '2000-12-29', 'mmo@gmail.com', 'mmo1', '09987213251', 'Taung Gyi', 'seeker65.png', '8/TG(N)021411'),
(66, 'Yi Aye Eaint', '2000-08-10', 'mae@gmail.com', 'mae1', '09983681453', 'Yangon', 'seeker66.png', '8/YGN(N)012011'),
(67, 'Tin Oo Oo', '2010-11-09', 'too@gmail.com', 'too1', '09987512453', 'Mandalay', 'seeker67.png', '7/MDY(N)011388'),
(68, 'Eaint Khin Oo', '1998-10-09', 'eko@gmail.com', 'eko1', '09987215413', 'Naypyidaw', 'seeker68.png', '9/NPD(N)021788'),
(69, 'Win Aye Than', '2000-11-10', 'wat@gmail.com', 'wat1', '09983255453', 'Yangon', 'seeker69.png', '8/YGN(N)011812'),
(70, 'Win Aye Oo', '2011-10-09', 'wao@gmail.com', 'wao1', '09983211453', 'Mandalay', 'seeker70.png', '8/YGN(N)011832'),
(71, 'Win Aye Sew', '2011-10-09', 'was@gmail.com', 'was1', '09983211423', 'Mandalay', 'seeker71.png', '8/YGN(N)015832'),
(72, 'Poe Poe Win', '2012-10-11', 'ppw@gmail.com', 'ppw1', '09986547821', 'Pyin Oo Lwin', 'seeker72.png', '9/POW(N)247844'),
(73, 'Poe Poe Aung', '2002-10-11', 'ppa@gmail.com', 'ppa1', '09986547421', 'Pyin Oo Lwin', 'seeker73.png', '9/POW(N)247814'),
(74, 'Poe Poe Kin', '2000-11-08', 'ppk@gmail.com', 'ppk1', '09986547411', 'Taunggu', 'seeker74.png', '9/TG(N)241114'),
(75, 'Poe Aye Aung', '2002-09-11', 'paa@gmail.com', 'paa1', '09986517421', 'Yangon', 'seeker75.png', '9/YGN(N)247114'),
(76, 'Aye Poe Aung', '2011-08-01', 'apa@gmail.com', 'apa1', '09986547127', 'Mandalay', 'seeker76.png', '9/MDY(N)247184'),
(77, 'Kin Poe Aung', '2002-01-11', 'kpa@gmail.com', 'kpa1', '09986515821', 'Pyin Oo Lwin', 'seeker77.png', '9/POW(N)117814'),
(78, 'Aye Poe Kin', '2000-11-08', 'apk@gmail.com', 'apk1', '09956547411', 'Taunggu', 'seeker78.png', '9/TG(N)244474'),
(79, 'Poe Mie Aung', '2002-09-30', 'pma@gmail.com', 'pma1', '09986457421', 'Yangon', 'seeker79.png', '9/YGN(N)247544'),
(80, 'Su Poe Aung', '2011-10-01', 'spa@gmail.com', 'spa1', '09948547127', 'Mandalay', 'seeker80.png', '9/MDY(N)247554'),
(81, 'Aung Moe Moe', '2002-10-31', 'amm@gmail.com', 'amm1', '09987456368', 'Mandalay', 'seeker81.png', '8/MDY(N)014785'),
(82, 'Aung Moe Hein', '2000-11-01', 'amh@gmail.com', 'amh1', '09987416368', 'Yangon', 'seeker82.png', '8/YGN(N)024785'),
(83, 'Aung Moe Kyaw', '2011-08-30', 'amk@gmail.com', 'amk1', '09987411368', 'Naypyidaw', 'seeker83.png', '8/NPD(N)011785'),
(84, 'Aung Moe Thein', '2004-10-01', 'amt@gmail.com', 'amt1', '09987416118', 'Pyi Oo Lwin', 'seeker84.png', '8/POL(N)024711'),
(85, 'Thein Moe Kyaw', '2001-09-18', 'tmk@gmail.com', 'tmk1', '09987521368', 'Saging', 'seeker85.png', '8/SG(N)014485'),
(86, 'Khin Moe Hein', '2000-10-01', 'kmh@gmail.com', 'kmh1', '09987416361', 'Yangon', 'seeker86.png', '8/Yangon(N)024185'),
(87, 'Aung Moe Tin', '2011-07-30', 'amt@gmail.com', 'amt1', '09987551368', 'Naypyidaw', 'seeker87.png', '8/NPD(N)015785'),
(88, 'Aung Moe Myat', '2008-10-01', 'amm@gmail.com', 'amm1', '09987424118', 'Pyi Oo Lwin', 'seeker88.png', '8/POL(N)024781'),
(89, 'Owme Moe Kyaw', '2005-09-18', 'omk@gmail.com', 'omk1', '09981521368', 'Saging', 'seeker89.png', '8/SG(N)084485'),
(90, 'Tin Moe Lwin', '2000-11-11', 'tml@gmail.com', 'tml1', '09987411368', 'Yangon', 'seeker90.png', '8/YGN(N)021785'),
(91, 'Kin Moe Kyaw', '2011-06-30', 'kmk@gmail.com', 'kmk1', '09987111368', 'Naypyidaw', 'seeker91.png', '8/NPD(N)028785'),
(92, 'Moe Moe Paing', '2004-10-15', 'mmp@gmail.com', 'mmp1', '09987416118', 'Pyi Oo Lwin', 'seeker92.png', '8/POL(N)024111'),
(93, 'Thein Moe Maung', '2001-10-18', 'tmm@gmail.com', 'tmm1', '09987521361', 'Saging', 'seeker93.png', '8/SG(N)014185'),
(94, 'Khin Hein Hein', '2000-11-01', 'khh@gmail.com', 'khh1', '09987416161', 'Yangon', 'seeker94.png', '8/Yangon(N)141185'),
(95, 'Aung Moe Oo', '2011-07-30', 'amo@gmail.com', 'amo1', '09987511368', 'Naypyidaw', 'seeker95.png', '8/NPD(N)015185'),
(96, 'Aung Tin Myat', '2008-10-01', 'atm@gmail.com', 'atm1', '09984124118', 'Pyi Oo Lwin', 'seeker96.png', '8/POL(N)024181'),
(97, 'kaung Moe Kyaw', '2005-10-18', 'kmk@gmail.com', 'kmk1', '09981521368', 'Saging', 'seeker97.png', '8/SG(N)084185'),
(98, 'Thein Moe Oo', '2001-05-10', 'amo@gmail.com', 'amo1', '09987511361', 'Naypyidaw', 'seeker98.png', '8/NPD(N)015185'),
(99, 'Aung Moe Hein', '2000-11-01', 'amh@gmail.com', 'amh1', '09987416368', 'Yangon', 'seeker82.png', '8/YGN(N)024785'),
(100, 'Aung Moe Kyaw', '2011-08-30', 'amk@gmail.com', 'amk1', '09987411368', 'Naypyidaw', 'seeker83.png', '8/NPD(N)011785'),
(101, 'Aung Moe Thein', '2004-10-01', 'amt@gmail.com', 'amt1', '09987416118', 'Pyi Oo Lwin', 'seeker84.png', '8/POL(N)024711'),
(102, 'Thein Moe Kyaw', '2001-09-18', 'tmk@gmail.com', 'tmk1', '09987521368', 'Saging', 'seeker85.png', '8/SG(N)014485'),
(103, 'Khin Moe Hein', '2000-10-01', 'kmh@gmail.com', 'kmh1', '09987416361', 'Yangon', 'seeker86.png', '8/Yangon(N)024185'),
(104, 'Aung Moe Tin', '2011-07-30', 'amt@gmail.com', 'amt1', '09987551368', 'Naypyidaw', 'seeker87.png', '8/NPD(N)015785'),
(105, 'Aung Moe Myat', '2008-10-01', 'amm@gmail.com', 'amm1', '09987424118', 'Pyi Oo Lwin', 'seeker88.png', '8/POL(N)024781'),
(106, 'Owme Moe Kyaw', '2005-09-18', 'omk@gmail.com', 'omk1', '09981521368', 'Saging', 'seeker89.png', '8/SG(N)084485'),
(107, 'Tin Moe Lwin', '2000-11-11', 'tml@gmail.com', 'tml1', '09987411368', 'Yangon', 'seeker90.png', '8/YGN(N)021785'),
(108, 'Kin Moe Kyaw', '2011-06-30', 'kmk@gmail.com', 'kmk1', '09987111368', 'Naypyidaw', 'seeker91.png', '8/NPD(N)028785'),
(109, 'Moe Moe Paing', '2004-10-15', 'mmp@gmail.com', 'mmp1', '09987416118', 'Pyi Oo Lwin', 'seeker92.png', '8/POL(N)024111'),
(110, 'Thein Moe Maung', '2001-10-18', 'tmm@gmail.com', 'tmm1', '09987521361', 'Saging', 'seeker93.png', '8/SG(N)014185'),
(111, 'Khin Hein Hein', '2000-11-01', 'khh@gmail.com', 'khh1', '09987416161', 'Yangon', 'seeker94.png', '8/Yangon(N)141185'),
(112, 'Aung Moe Oo', '2011-07-30', 'amo@gmail.com', 'amo1', '09987511368', 'Naypyidaw', 'seeker95.png', '8/NPD(N)015185'),
(113, 'Aung Tin Myat', '2008-10-01', 'atm@gmail.com', 'atm1', '09984124118', 'Pyi Oo Lwin', 'seeker96.png', '8/POL(N)024181'),
(114, 'kaung Moe Kyaw', '2005-10-18', 'kmk@gmail.com', 'kmk1', '09981521368', 'Saging', 'seeker97.png', '8/SG(N)084185'),
(115, 'Thein Moe Oo', '2001-05-10', 'amo@gmail.com', 'amo1', '09987511361', 'Naypyidaw', 'seeker98.png', '8/NPD(N)015185'),
(116, 'Aung Moe Hein', '2000-11-01', 'amh@gmail.com', 'amh1', '09987416368', 'Yangon', 'seeker82.png', '8/YGN(N)024785'),
(117, 'Aung Moe Kyaw', '2011-08-30', 'amk@gmail.com', 'amk1', '09987411368', 'Naypyidaw', 'seeker83.png', '8/NPD(N)011785'),
(118, 'Aung Moe Thein', '2004-10-01', 'amt@gmail.com', 'amt1', '09987416118', 'Pyi Oo Lwin', 'seeker84.png', '8/POL(N)024711'),
(119, 'Thein Moe Kyaw', '2001-09-18', 'tmk@gmail.com', 'tmk1', '09987521368', 'Saging', 'seeker85.png', '8/SG(N)014485'),
(120, 'Khin Moe Hein', '2000-10-01', 'kmh@gmail.com', 'kmh1', '09987416361', 'Yangon', 'seeker86.png', '8/Yangon(N)024185'),
(121, 'Aung Moe Tin', '2011-07-30', 'amt@gmail.com', 'amt1', '09987551368', 'Naypyidaw', 'seeker87.png', '8/NPD(N)015785'),
(122, 'Aung Moe Myat', '2008-10-01', 'amm@gmail.com', 'amm1', '09987424118', 'Pyi Oo Lwin', 'seeker88.png', '8/POL(N)024781'),
(123, 'Owme Moe Kyaw', '2005-09-18', 'omk@gmail.com', 'omk1', '09981521368', 'Saging', 'seeker89.png', '8/SG(N)084485'),
(124, 'Tin Moe Lwin', '2000-11-11', 'tml@gmail.com', 'tml1', '09987411368', 'Yangon', 'seeker90.png', '8/YGN(N)021785'),
(125, 'Kin Moe Kyaw', '2011-06-30', 'kmk@gmail.com', 'kmk1', '09987111368', 'Naypyidaw', 'seeker91.png', '8/NPD(N)028785'),
(126, 'Moe Moe Paing', '2004-10-15', 'mmp@gmail.com', 'mmp1', '09987416118', 'Pyi Oo Lwin', 'seeker92.png', '8/POL(N)024111'),
(127, 'Thein Moe Maung', '2001-10-18', 'tmm@gmail.com', 'tmm1', '09987521361', 'Saging', 'seeker93.png', '8/SG(N)014185'),
(128, 'Khin Hein Hein', '2000-11-01', 'khh@gmail.com', 'khh1', '09987416161', 'Yangon', 'seeker94.png', '8/Yangon(N)141185'),
(129, 'Aung Moe Oo', '2011-07-30', 'amo@gmail.com', 'amo1', '09987511368', 'Naypyidaw', 'seeker95.png', '8/NPD(N)015185'),
(130, 'Aung Tin Myat', '2008-10-01', 'atm@gmail.com', 'atm1', '09984124118', 'Pyi Oo Lwin', 'seeker96.png', '8/POL(N)024181'),
(131, 'kaung Moe Kyaw', '2005-10-18', 'kmk@gmail.com', 'kmk1', '09981521368', 'Saging', 'seeker97.png', '8/SG(N)084185'),
(132, 'Thein Moe Oo', '2001-05-10', 'amo@gmail.com', 'amo1', '09987511361', 'Naypyidaw', 'seeker98.png', '8/NPD(N)015185'),
(133, 'Aung Oo Kin', '2001-06-10', 'aok@gmail.com', 'aok1', '09984113518', 'Pyi Oo Lwin', 'seeker99.png', '8/POL(N)011181'),
(134, 'Soe Moe Kyaw', '2001-08-28', 'smk@gmail.com', 'smk1', '09981541368', 'Saging', 'seeker100.png', '8/SG(N)084485'),
(135, 'Soe Moe Htwe', '1999-11-19', 'smt@gmail.com', 'smt1', '09985624785', 'Mandalay', '101.png', '9/MDL(N)89898'),
(136, 'Maung Myat Aung', '2022-11-24', 'mma@gmail.com', 'mma123', '09974608659', 'Mandalay', 'seeker9.png', '9/AHMAYA(N)189211');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

DROP TABLE IF EXISTS `job_type`;
CREATE TABLE IF NOT EXISTS `job_type` (
  `Job_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `Job_type_name` varchar(100) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Job_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`Job_type_id`, `Job_type_name`, `Description`) VALUES
(15, 'Construction Worker', 'Can you carry the cement'),
(14, 'Application Developer', 'You can create a safety application'),
(13, 'Computer programmer', 'Yan can manage for company software'),
(12, 'Software Engineer', 'You can manage web application'),
(11, 'SQL Developer ', '2 years experience '),
(10, 'IT Professional', '3 years experience'),
(9, 'Store Manager ', 'You can imporve database skill'),
(8, 'Retail Worker', 'You have 2 years experience '),
(7, 'Project Manager', 'You can do any project'),
(6, 'President of Sales', 'You can president on airoplane '),
(5, 'Web Designer', '2 years experience for web base design'),
(4, 'Counter staff', 'You can improve LCCI level 3'),
(3, 'Ticket Master ', 'Ticket selling and checking'),
(2, 'Car Driver', 'You can drive skillfully and safety'),
(1, 'House Keeper', 'You can cleaning all house'),
(16, 'Electrician', 'You can make safety electronic'),
(17, 'Welder', 'THe sseej'),
(18, 'Heavy Equipment Operator', '2 years experence'),
(19, 'Iron Worker', 'nnnn'),
(20, 'Manager', 'You can manage all problem'),
(21, 'Principal ', 'Yo'),
(22, 'Managing Member', 'You can control all problem'),
(23, 'Computer Maintain ', 'ksksk');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `Location_id` int(11) NOT NULL AUTO_INCREMENT,
  `Location_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Location_id`, `Location_name`) VALUES
(1, 'Naypyidaw'),
(2, 'Yangon'),
(3, 'Mandalay'),
(4, 'Bago'),
(5, 'Taungoo'),
(6, 'Shwebo'),
(7, 'Sagaing'),
(8, 'Taunggyi'),
(15, 'MawLaMyine');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
