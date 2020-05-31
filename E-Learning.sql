-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2020 at 01:56 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `E-Learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `blind`
--

CREATE TABLE `blind` (
  `name` varchar(10) NOT NULL,
  `age` int(3) NOT NULL,
  `USERNAME` varchar(10) NOT NULL,
  `PASSWORD` varchar(10) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blind`
--

INSERT INTO `blind` (`name`, `age`, `USERNAME`, `PASSWORD`, `dob`) VALUES
('parameswar', 20, 'parameswarkanuparthi', '12345', '2019-11-21'),
('praneeth', 20, 'praneethkaliki', '12345', '2019-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `blindstudentcourse`
--

CREATE TABLE `blindstudentcourse` (
  `STUDENTID` int(10) NOT NULL,
  `COURSECODE` int(10) NOT NULL,
  `TEACHERID` int(10) NOT NULL,
  `MARKS` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blindstudentcourse`
--

INSERT INTO `blindstudentcourse` (`STUDENTID`, `COURSECODE`, `TEACHERID`, `MARKS`) VALUES
(0, 0, 0, 0),
(0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CERTIFICATE`
--

CREATE TABLE `CERTIFICATE` (
  `COURSECODE` varchar(20) NOT NULL,
  `MARKS` int(5) NOT NULL,
  `TEACHER` varchar(20) NOT NULL,
  `STUDENT` varchar(20) NOT NULL,
  `LOCATION` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `COURSES`
--

CREATE TABLE `COURSES` (
  `COURSECODE` varchar(20) NOT NULL,
  `COURSENAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COURSES`
--

INSERT INTO `COURSES` (`COURSECODE`, `COURSENAME`) VALUES
('cse4020', 'Machine_Learning'),
('CSE3001', 'IWP'),
('CSE3002', 'DBMS');

-- --------------------------------------------------------

--
-- Table structure for table `COURSETEACHER`
--

CREATE TABLE `COURSETEACHER` (
  `COURSECODE` varchar(20) NOT NULL,
  `TEACHER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COURSETEACHER`
--

INSERT INTO `COURSETEACHER` (`COURSECODE`, `TEACHER`) VALUES
('CSE3002', 'LokeshKumar'),
('CSE3001', 'LokeshKumar'),
('CSE3002', 'LokeshKumar');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE `STUDENT` (
  `NAME` varchar(20) NOT NULL,
  `AGE` int(5) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `COURSES` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`NAME`, `AGE`, `TYPE`, `USERNAME`, `PASSWORD`, `DOB`, `COURSES`) VALUES
('parameswar', 20, 'DEAF', 'param123', '1345', '1999-11-21', '0'),
('praneeth', 20, 'DEAF', 'praneeth', '1345', '1999-03-26', '0');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENTCOURSE`
--

CREATE TABLE `STUDENTCOURSE` (
  `COURSECODE` varchar(20) NOT NULL,
  `STUDENTID` int(5) NOT NULL,
  `MARKS` int(5) NOT NULL,
  `TEACHERID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STUDENTCOURSE`
--

INSERT INTO `STUDENTCOURSE` (`COURSECODE`, `STUDENTID`, `MARKS`, `TEACHERID`) VALUES
('CSE3001', 0, 0, 0),
('CSE3002', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `TEACHER`
--

CREATE TABLE `TEACHER` (
  `NAME` varchar(20) NOT NULL,
  `AGE` int(5) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TEACHER`
--

INSERT INTO `TEACHER` (`NAME`, `AGE`, `USERNAME`, `PASSWORD`, `DOB`) VALUES
('LokeshKumar', 35, 'Lokesh', '12345', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `UPLOADS`
--

CREATE TABLE `UPLOADS` (
  `COURSECODE` varchar(20) NOT NULL,
  `TEACHER` varchar(20) NOT NULL,
  `TOPIC` varchar(20) NOT NULL,
  `LOCATION` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `COURSES`
--
ALTER TABLE `COURSES`
  ADD PRIMARY KEY (`COURSECODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
