-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2017 at 08:01 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `aid` varchar(10) NOT NULL,
  `authname` varchar(100) NOT NULL,
  `qual` varchar(500) NOT NULL,
  `job` varchar(500) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `award` varchar(100) NOT NULL,
  `recog` varchar(100) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bid` varchar(10) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `catid` varchar(10) NOT NULL,
  `subcatid` varchar(10) NOT NULL,
  `aid` varchar(10) NOT NULL,
  `pubid` varchar(10) NOT NULL,
  `pages` int(11) NOT NULL,
  `rate` varchar(5) NOT NULL,
  `cd` varchar(1) NOT NULL,
  `pubyear` varchar(4) NOT NULL,
  `edition` varchar(10) NOT NULL,
  `dpr` date NOT NULL,
  `filename` varchar(100) NOT NULL,
  `hit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `catname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `qual` varchar(30) NOT NULL,
  `desig` varchar(30) NOT NULL,
  `cadd` varchar(100) NOT NULL,
  `padd` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `name`, `fname`, `dob`, `gender`, `phone`, `mail`, `qual`, `desig`, `cadd`, `padd`, `photo`) VALUES
('E000001', 'Asmita Chihnara', 'K.C. Chihnara', '1997-12-22', 'female', '9692436430', 'chihnaraasmita97@gmail.com', 'B.Tech', 'student', 'NITrkl', '2RB(F)-54/9,bbsr', ''),
('E000002', 'Monalisa Mallick', 'B. Mallick', '1997-10-21', 'female', '7938780205', 'mmallicksdf@gmail.com', 'B.Tech', 'Student', 'NITrkl', 'bbsr', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `eid` varchar(10) NOT NULL,
  `logname` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL,
  `status` varchar(1) NOT NULL,
  `secques` varchar(100) NOT NULL,
  `secans` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`eid`, `logname`, `pwd`, `type`, `status`, `secques`, `secans`) VALUES
('E000001', 'Asmita Chihnara', 'little12345', 'admin', 'y', 'What is your nick name?', 'little'),
('E000002', 'Monalisa Mallick', 'mona123', 'employee', 'n', 'What is your nick name?', 'mona'),
('R000002', 'Soumya Ranjan Sahoo', 'soumya123', 'reader', 'n', 'What is your nick name?', 'soumya'),
('R000001', 'Srusty Sahoo', 'srusty123', 'reader', 'y', 'Nick name?', 'barsha');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `pubid` varchar(10) NOT NULL,
  `pubname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reader`
--

CREATE TABLE `reader` (
  `rid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `job` varchar(50) NOT NULL,
  `cadd` varchar(100) NOT NULL,
  `padd` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reader`
--

INSERT INTO `reader` (`rid`, `name`, `fname`, `dob`, `gender`, `phone`, `mail`, `job`, `cadd`, `padd`, `photo`) VALUES
('R000001', 'Srusty Sahoo', 'P. Sahoo', '1997-09-06', 'female', '7828239001', 'srsahoo@gmail.com', 'Student', 'NITrkl', 'bbsr', ''),
('R000002', 'Soumya Ranjan Sahoo', 'P. R. Sahoo', '1997-06-13', 'male', '75379 63067', 'srsahoopoint@gmail.com', 'Student', 'BBSR', 'CTC', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `scatid` varchar(10) NOT NULL,
  `catid` varchar(10) NOT NULL,
  `scatname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`logname`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`pubid`);

--
-- Indexes for table `reader`
--
ALTER TABLE `reader`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`scatid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
