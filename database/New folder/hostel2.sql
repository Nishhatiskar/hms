-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2016 at 05:36 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hostel2`
--

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE IF NOT EXISTS `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`id`, `block`, `gender`, `description`, `status`) VALUES
(1, 'A', 'male', 'Good', 'enabled'),
(2, 'B', 'female', 'Good', 'enabled'),
(3, 'C', 'male', 'Good', 'enabled'),
(4, 'D', 'male', 'very Good', 'enabled'),
(5, 'E', 'female', 'Very Good', 'enabled'),
(6, 'F', 'female', 'Good', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `fees_monthly`
--

CREATE TABLE IF NOT EXISTS `fees_monthly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) NOT NULL,
  `fees_type` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `due_balance` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `fees_monthly`
--

INSERT INTO `fees_monthly` (`id`, `student_name`, `fees_type`, `cost`, `paid_amount`, `due_balance`, `month`, `payment_date`, `status`) VALUES
(1, 'Deepak', 'Room Rent', '2000', '2000', '0', '07-01-2015', '07-07-2015', 'enabled'),
(3, 'Deepak', 'Mess Bill', '1500', '1500', '0', '08-01-2015', '08-02-2015', 'enabled'),
(4, 'Rajesh', 'Room Rent', '2000', '2000', '0', '08-01-2015', '08-10-2015', 'enabled'),
(5, 'Rudhra', 'Mess Bill', '1500', '1500', '0', '09-01-2015', '09-01-2015', 'enabled'),
(6, 'Mahendra', 'Room Rent', '2000', '1500', '500', '10-01-2015', '10-05-2015', 'enabled'),
(7, 'Mohan', 'Room Rent', '2000', '1500', '500', '10-01-2015', '10-07-2015', 'enabled'),
(8, 'Rudhra', 'Room Rent', '2000', '2000', '0', '09/01/2015', '09/02/2015', 'enabled'),
(9, 'Mohan', 'Mess Bill', '1500', '1500', '0', '10/01/2015', '10/05/2015', 'enabled'),
(10, 'Rajesh', 'Mess Bill', '1500', '1500', '0', '08/01/2015', '08/05/2015', 'enabled'),
(12, 'manali', 'Mess Bill', '1500', '500', '1000', '11/01/2016', '11/30/2016', 'enabled'),
(13, 'Akshata Bhoir', 'Room Rent', '2000', '500', '1500', '11/01/2016', '11/30/2016', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `fees_structure`
--

CREATE TABLE IF NOT EXISTS `fees_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fees_type` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fees_structure`
--

INSERT INTO `fees_structure` (`id`, `fees_type`, `cost`, `status`) VALUES
(1, 'Room Rent', '2000', 'enabled'),
(2, 'Mess Bill', '1500', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'manali'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `messcard`
--

CREATE TABLE IF NOT EXISTS `messcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `food` varchar(255) NOT NULL,
  `messcard` varchar(255) NOT NULL,
  `startdate` varchar(255) NOT NULL,
  `enddate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `messcard`
--

INSERT INTO `messcard` (`id`, `name`, `food`, `messcard`, `startdate`, `enddate`, `status`) VALUES
(1, 'Deepak', 'vegeterian', 'permanent', '23-07-2015', '22-08-2015', 'enabled'),
(5, 'Manali Patil', 'nonvegeterian', 'permanent', '11-04-2016', '30-04-2016', 'enabled'),
(6, 'Akshata Bhoir', 'nonvegeterian', 'permanent', '11-04-2016', '30-04-2016', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomno` varchar(255) NOT NULL,
  `block` varchar(255) NOT NULL,
  `beds` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `roomno`, `block`, `beds`, `description`, `status`) VALUES
(1, '101', 'A', 'bed-1', 'With AC', 'disabled'),
(2, '101', 'A', 'bed-2', 'With AC', 'disabled'),
(3, '101', 'A', 'bed-3', 'With AC', ' disabled'),
(4, '101', 'A', 'bed-4', 'With AC', 'enabled'),
(5, '201', 'A', 'bed-1', 'Without AC', 'enabled'),
(6, '201', 'A', 'bed-2', 'Without AC', ' disabled'),
(7, '201', 'A', 'bed-3', 'Without AC', 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `room_allotment`
--

CREATE TABLE IF NOT EXISTS `room_allotment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roomno` varchar(255) NOT NULL,
  `beds` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `room_allotment`
--

INSERT INTO `room_allotment` (`id`, `block`, `name`, `roomno`, `beds`, `status`) VALUES
(8, '', '', '', '', '--select--'),
(9, 'A', 'Manali Patil', '101', 'bed-3', 'disabled'),
(10, 'A', 'Akshata Bhoir', '201', 'bed-2', 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `security` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `join` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `pnumber` varchar(255) NOT NULL,
  `blood` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `security`, `course`, `name`, `dob`, `join`, `fname`, `mname`, `gender`, `address`, `contact`, `pnumber`, `blood`, `status`) VALUES
(1, '10000', 'BE', 'Deepak', '1989-12-16', '2015-07-21', 'Trilokchand', '', 'male', 'bkn', '7354341437', '7697864086', 'B', 'disabled'),
(10, '5000', 'MCA', 'Manali Patil', '15-04-1996', '01-11-2016', 'Prakash', 'Sadhana', 'female', 'Panvel', '9874563210', '9874563210', 'A+', ' disabled'),
(11, '2000', 'MBA', 'Sayali Patil', '28-12-1992', '16-10-2013', 'Prakash', 'Sadhana', 'female', 'Pen', '7896541230', '7896541230', 'O+', 'enabled'),
(12, '4000', 'MBA', 'Akshata Bhoir', '28-12-1992', '16-10-2013', 'Prakash', 'Sadhana', 'female', 'Panvel', '7896541230', '7896541230', 'O+', ' disabled');
