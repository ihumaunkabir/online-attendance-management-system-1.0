-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2018 at 03:23 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `attsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE IF NOT EXISTS `admininfo` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`username`, `password`, `email`, `fname`, `phone`, `type`) VALUES
('admin', 'admin', 'admin@admin.com', 'Admin', '12344', 'admin'),
('student', 'admin', 'student@student.com', 'Student', '+8809121', 'student'),
('teacher', 'admin', 'teacher@teacher.com', 'Teacher', '+8809121', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `stat_id` int(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `st_status` varchar(20) NOT NULL,
  `stat_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`stat_id`, `course`, `st_status`, `stat_date`) VALUES
(1121, 'swe', 'Absent', '2018-06-25'),
(1122, 'swe', 'Present', '2018-06-25'),
(1125, 'swe', 'Absent', '2018-06-25'),
(1126, 'swe', 'Present', '2018-06-25'),
(3433, 'networking', 'Present', '2018-06-25'),
(1121, 'swe', 'Present', '2018-07-06'),
(1122, 'swe', 'Present', '2018-07-06'),
(1125, 'swe', 'Present', '2018-07-06'),
(1126, 'swe', 'Absent', '2018-07-06'),
(1121, 'networking', 'Present', '2018-07-07'),
(1122, 'networking', 'Present', '2018-07-07'),
(1125, 'networking', 'Present', '2018-07-07'),
(1126, 'networking', 'Present', '2018-07-07'),
(1121, 'networking', 'Present', '2018-07-07'),
(1122, 'networking', 'Present', '2018-07-07'),
(1125, 'networking', 'Present', '2018-07-07'),
(1126, 'networking', 'Present', '2018-07-07'),
(1121, 'swe', 'Present', '2018-07-07'),
(1122, 'swe', 'Present', '2018-07-07'),
(1125, 'swe', 'Present', '2018-07-07'),
(1126, 'swe', 'Present', '2018-07-07'),
(1121, 'swe', 'Present', '2018-07-07'),
(1122, 'swe', 'Present', '2018-07-07'),
(1125, 'swe', 'Present', '2018-07-07'),
(1126, 'swe', 'Present', '2018-07-07'),
(1121, 'networking', 'Present', '2018-07-07'),
(1122, 'networking', 'Present', '2018-07-07'),
(1125, 'networking', 'Present', '2018-07-07'),
(1126, 'networking', 'Present', '2018-07-07'),
(3433, 'networking', 'Present', '2018-07-07'),
(3433, 'swe', 'Absent', '2018-07-07'),
(3433, 'networking', 'Absent', '2018-07-07');

-- --------------------------------------------------------

--
-- Stand-in structure for view `reports`
--
CREATE TABLE IF NOT EXISTS `reports` (
`st_id` int(20)
,`st_name` varchar(255)
,`st_dept` varchar(255)
,`st_batch` varchar(255)
,`stat_date` date
,`st_status` varchar(20)
,`course` varchar(20)
);
-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `st_id` int(20) NOT NULL,
  `st_name` varchar(255) NOT NULL,
  `st_dept` varchar(255) NOT NULL,
  `st_batch` varchar(255) NOT NULL,
  `st_sem` varchar(255) NOT NULL,
  `st_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`st_id`, `st_name`, `st_dept`, `st_batch`, `st_sem`, `st_email`) VALUES
(1121, 'Humaun Kabir', 'CSE', '38', 'Spring 15', 'hk@gmail.com'),
(1122, 'Sarmin Sultana', 'CSE', '38', 'Fall-15', 'sarmin@gmail.com'),
(1125, 'Liton Sarker', 'CSE', '38', 'Spring 153', 'liton.com@gmail.com'),
(1126, 'Faisal Jahid', 'CSE', '38', 'Spring 15', 'jahid@gmail.com'),
(3433, 'Rayham Mahmud Uddin', 'CSE', '37', 'Spring 16', 'rms@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `tc_id` int(20) NOT NULL,
  `tc_name` varchar(255) NOT NULL,
  `tc_dept` varchar(255) NOT NULL,
  `tc_email` varchar(255) NOT NULL,
  `tc_course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`tc_id`, `tc_name`, `tc_dept`, `tc_email`, `tc_course`) VALUES
(1122, 'Ataullah Bhuiyan', 'CSE', 'asamad@gmail.com', 'Computer Network'),
(1810, 'Ataus Samad Biplod', 'CSE', 'asamad@gmail.com', 'Software Engineering'),
(1812, 'Sharmin Akter', 'CSE', 'sharmin@city.com', 'Digital System Design');

-- --------------------------------------------------------

--
-- Structure for view `reports`
--
DROP TABLE IF EXISTS `reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reports` AS select `students`.`st_id` AS `st_id`,`students`.`st_name` AS `st_name`,`students`.`st_dept` AS `st_dept`,`students`.`st_batch` AS `st_batch`,`attendance`.`stat_date` AS `stat_date`,`attendance`.`st_status` AS `st_status`,`attendance`.`course` AS `course` from (`attendance` join `students`) where (`students`.`st_id` = `attendance`.`stat_id`);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
 ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
 ADD PRIMARY KEY (`tc_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
