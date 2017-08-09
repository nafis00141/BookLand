-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 09, 2017 at 06:33 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookland`
--

-- --------------------------------------------------------

--
-- Table structure for table `authored`
--

CREATE TABLE IF NOT EXISTS `authored` (
  `uid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  KEY `uid` (`uid`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authored`
--

INSERT INTO `authored` (`uid`, `book_id`) VALUES
(1002, 2),
(1006, 11),
(1006, 19),
(1006, 22),
(1006, 23);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `final_price` int(11) NOT NULL,
  `storyline` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `noDownload` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `author_id`, `author_name`, `price`, `final_price`, `storyline`, `type`, `noDownload`) VALUES
(2, 'Harry Potter and the Chamber of Secrets', 1002, 'J K rowling ', 270, 297, 'Forced to spend his summer holidays with his muggle relations, Harry Potter gets a real shock when he gets a surprise visitor: Dobby the house-elf', 'Adventure', 3),
(4, 'Harry Potter and the Sorcerers Stone', 1002, 'Nafis', 250, 275, 'sfgsdd', 'Adventure', 0),
(5, 'Harry Potter and the Sorcerers Stone', 1002, 'Nafis', 256, 282, 'zdfs', 'Adventure', 0),
(6, 'Harry Potter and the Sorcerers Stone', 1002, 'J K rowling ', 256, 282, 'xcvdfsa', 'Adventure', 0),
(7, 'Harry Potter and the Sorcerers Stone', 1002, 'Nafis', 256, 282, 'sdfdsfsd', 'Adventure', 0),
(9, 'Harry Potter and the Prisoner Of Azkaban ', 1010, 'JK Rowling', 500, 550, 'The reason Harry feels such personal hatred toward Black is the thought that he betrayed his best friend, James Potter. When it turns out that Pettigrew had done it instead, Lupin and Black turn snarling on him.', 'Mystery', 0),
(10, 'Harry Potter and the Prisoner Of Azkaban ', 1010, 'JK Rowling', 500, 550, 'The reason Harry feels such personal hatred toward Black is the thought that he betrayed his best friend, James Potter. When it turns out that Pettigrew had done it instead, Lupin and Black turn snarling on him.', 'Mystery', 0),
(11, 'Harry Potter and the Prisoner Of Azkaban ', 1006, 'jk rowling', 500, 550, 'The reason Harry feels such personal hatred toward Black is the thought that he betrayed his best friend, James Potter. When it turns out that Pettigrew had done it instead, Lupin and Black turn snarling on him.', 'Mystery', 2),
(18, 'Harry Potter and the Prisoner Of Azkaban ', 1010, 'JK Rowling', 500, 550, 'This book makes several moral attacks on a legal system that is controlled by men like Lucius Malfoy who bully people until he gets his way.', 'Mystery ', 0),
(19, 'Harry Potter and Goblet Of Fire', 1006, 'jk rowling', 550, 605, 'The reason Harry feels such personal hatred toward Black is the thought that he betrayed his best friend, James Potter.', 'Adventure', 1),
(20, 'Game Of Thrones ', 1008, 'George R. R. Martin', 5000, 5500, 'Therein the line of the dragon kings ended, when Aerys II was dethroned\r\nand killed, along with his heir, the crown prince Rhaegar Targaryen, slain by\r\nRobert Baratheon on the Trident.', 'Thriller ', 0),
(22, 'Harry Potter and the Deadly Hollows Part 1', 1006, 'jk rowling', 0, 0, 'jk rowling ', 'Adventure', 0),
(23, 'Harry Potter and the Deadly Hollows Part 1', 1006, 'jk rowling', 0, 0, 'jk rowling', 'Adventure', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookcomment`
--

CREATE TABLE IF NOT EXISTS `bookcomment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `	review_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `Comment` text NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `	review_id` (`	review_id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `bookcomment`
--

INSERT INTO `bookcomment` (`comment_id`, `	review_id`, `uid`, `Comment`) VALUES
(23, 13, 1002, 'onek beshi sad'),
(25, 13, 1002, 'i am sad'),
(32, 15, 1005, '12'),
(38, 26, 1006, 'joss');

-- --------------------------------------------------------

--
-- Table structure for table `bookimages`
--

CREATE TABLE IF NOT EXISTS `bookimages` (
  `book_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Extention` varchar(255) NOT NULL,
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookimages`
--

INSERT INTO `bookimages` (`book_id`, `Name`, `Extention`) VALUES
(2, 'Harry Potter and the Chamber of Secrets', '.jpg'),
(11, 'Harry Potter and the Prisoner Of Azkaban', '.jpeg'),
(19, 'Harry Potter and Goblet Of Fire', '.png'),
(23, 'Harry Potter and the Deadly Hollows Part 1', '.png');

-- --------------------------------------------------------

--
-- Table structure for table `bookpdf`
--

CREATE TABLE IF NOT EXISTS `bookpdf` (
  `book_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Extention` varchar(255) NOT NULL,
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookpdf`
--

INSERT INTO `bookpdf` (`book_id`, `Name`, `Extention`) VALUES
(2, 'Harry Potter and the Chamber of Secrets', '.pdf'),
(11, 'Harry Potter and the Prisoner Of Azkaban', '.pdf'),
(19, 'Harry Potter and Goblet Of Fire', '.pdf'),
(23, 'Harry Potter and the Deadly Hollows Part 1', '.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `bookreview`
--

CREATE TABLE IF NOT EXISTS `bookreview` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `uid` (`uid`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `bookreview`
--

INSERT INTO `bookreview` (`review_id`, `uid`, `book_id`, `message`) VALUES
(11, 1002, 2, 'NOT so good'),
(13, 1002, 2, 'wao iam happy'),
(14, 1002, 2, 'hello world'),
(15, 1002, 11, 'fdfs'),
(26, 1002, 19, 'really awesome!!');

-- --------------------------------------------------------

--
-- Table structure for table `request_info`
--

CREATE TABLE IF NOT EXISTS `request_info` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `book_type` varchar(200) NOT NULL,
  `book_edition` varchar(200) NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `request_info`
--

INSERT INTO `request_info` (`request_id`, `uid`, `book_name`, `author_name`, `book_type`, `book_edition`) VALUES
(4, 1002, 'Thakurmarjhulli', 'Thakuma', 'Education', 'Child Edition');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `cash` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1007 ;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`uid`, `username`, `password`, `email`, `name`, `usertype`, `cash`) VALUES
(1002, 'nafis014', '123456', 'nafis0014@gmail.com', 'Shahriar Nafis', 'U', 1418),
(1005, 'admin', 'admin', 'admin@admin.com', 'Admin', 'A', 292),
(1006, 'jk rowling', '123456', 'jk_rowling@yahoo.com', 'JK Rowling', 'U', 1395);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authored`
--
ALTER TABLE `authored`
  ADD CONSTRAINT `authored_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `userinfo` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `authored_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookcomment`
--
ALTER TABLE `bookcomment`
  ADD CONSTRAINT `bookcomment_ibfk_1` FOREIGN KEY (`	review_id`) REFERENCES `bookreview` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookcomment_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `userinfo` (`uid`);

--
-- Constraints for table `bookimages`
--
ALTER TABLE `bookimages`
  ADD CONSTRAINT `bookimages_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookpdf`
--
ALTER TABLE `bookpdf`
  ADD CONSTRAINT `bookpdf_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookreview`
--
ALTER TABLE `bookreview`
  ADD CONSTRAINT `bookreview_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `userinfo` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookreview_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request_info`
--
ALTER TABLE `request_info`
  ADD CONSTRAINT `request_info_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `userinfo` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
