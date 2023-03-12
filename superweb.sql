-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 01:44 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `superweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `user_name` text NOT NULL,
  `password` text NOT NULL,
  `mail` text NOT NULL,
  `mo_no` text NOT NULL,
  `sdate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`user_name`, `password`, `mail`, `mo_no`, `sdate`) VALUES
('niraj', 'bava', 'nirajbava111@gmail.ocm', '68546843683', '2020-12-21 16:41:39'),
('Raj', 'Raj', 'gosavigosavi624@gmail.com', '9623828192', '2020-12-21 18:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `mono` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `mono`, `message`, `date`, `email`) VALUES
(1, 'hello', '858786846878', 'hello', '2020-12-19 10:34:58', 'nirajbava222@gamil.com'),
(4, 'niraj bava', '86575656536', 'fadfadgsd g fsgadsfgfs', '2020-12-20 15:33:50', 'gosavigosavi624@gmail.com'),
(5, 'rAJ', '86575656536', 'RAJ', '2020-12-20 15:40:42', 'gosavigosavi624@gmail.com'),
(6, 'rAJ', '86575656536', 'RAJ', '2020-12-20 15:47:44', 'gosavigosavi624@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `coursebuyform`
--

CREATE TABLE IF NOT EXISTS `coursebuyform` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `umail` text NOT NULL,
  `telno` text NOT NULL,
  `price` text NOT NULL,
  `course` text NOT NULL,
  `subdate` datetime DEFAULT CURRENT_TIMESTAMP,
`sn` int(11) NOT NULL,
  `coursename` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursebuyform`
--

INSERT INTO `coursebuyform` (`fname`, `lname`, `umail`, `telno`, `price`, `course`, `subdate`, `sn`, `coursename`) VALUES
('niraj', 'bava', 'nirajbava111@gmail.com', '68546843683', '1000', 'ict', '2020-12-21 16:42:55', 1, 'ict master'),
('raj', 'gosavi', 'Superweb1010@Gmail.Com', '9623828192', '1000', 'ict', '2020-12-21 17:59:26', 37, 'ict master');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE IF NOT EXISTS `lecture` (
`lid` int(11) NOT NULL,
  `lecturename` text NOT NULL,
  `lecturecontent` text NOT NULL,
  `video` text NOT NULL,
  `lecturedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`lid`, `lecturename`, `lecturecontent`, `video`, `lecturedate`, `category`) VALUES
(1, 'how to make youtube video', 'how to make youtube video', 'fgfhdsfk', '2020-12-19 10:35:50', 'ict'),
(5, 'how to make webiste ', 'adsadasd fhgdhh  fdgddfg', 'sdfsdf', '2020-12-19 20:07:34', 'ict'),
(6, 'how to make web app using flask python', 'How To Make Web App Using Flask Python', '23roIhUgryA', '2020-12-19 20:08:57', 'ict'),
(8, 'what is java script', 'shfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd', 'hello', '2020-12-19 20:17:22', 'coding'),
(9, 'what is coding', 'shfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd', 'hello', '2020-12-19 20:18:05', 'coding'),
(10, 'this is public lecture', 'shfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd', 'hello', '2020-12-19 20:19:42', 'public'),
(11, 'what is python', 'What Is Python What Is Python', 'videolink', '2020-12-20 13:35:50', 'python');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `title` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(100) NOT NULL,
`no` int(11) NOT NULL,
  `pcategory` text NOT NULL,
  `introvideo` text NOT NULL,
  `bannerimg` varchar(100) NOT NULL,
  `courceprice` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`title`, `slug`, `content`, `date`, `image`, `no`, `pcategory`, `introvideo`, `bannerimg`, `courceprice`) VALUES
('ict master', 'ict-master', 'shfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\n\r\n', '2020-12-20 14:23:59', 'banner1.jpg', 1, 'ict', 'Hello', 'banner1.jpg', '1000'),
('coding master', 'coding-master', 'shfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd\r\nshfksjf hfh sdkf hfddfhdf fa hdfsdf sf dsfhsfjfhjfhdjfjsdd', '2020-12-19 20:15:36', 'banner2.jpg', 21, 'coding', 'Hello', 'banner1.jpg', '2000'),
('python master course', 'python-master-course', 'Python Master Course Hi I am niraj bava and, I am a web developer, and I have been working in the field of web development for 5+ years and I have developed 51+ web sites so far. I can definitely give you a good web site. If you want to create a web site, be sure to contact me. So if you have any kind of video or photo editing, we can do it for you.', '2020-12-20 13:27:17', 'myimg.jpg', 22, 'python', 'introvideolink', 'myimg.jpg', '5000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `coursebuyform`
--
ALTER TABLE `coursebuyform`
 ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
 ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`no`), ADD UNIQUE KEY `no` (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `coursebuyform`
--
ALTER TABLE `coursebuyform`
MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `lecture`
--
ALTER TABLE `lecture`
MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
