-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 06:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `train`
-- --------------------------------------------------------
-- Table structure for table `admindatabase`
--
CREATE TABLE `admindatabase` (
  `UserID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `DoB` date NOT NULL,
  `Joined_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admindatabase`
--

INSERT INTO `admindatabase` (`UserID`, `Name`, `Email`, `Gender`, `password`, `DoB`, `Joined_on`) VALUES
(1, 'Admin', 'bob@gmail.com', 'f', '1234567', '2002-10-17', '2022-08-10 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `userdatabase`
--

CREATE TABLE `userdatabase` (
  `UserID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `DoB` date NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Joined_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdatabase`
--

INSERT INTO `userdatabase` (`UserID`, `Name`, `Email`, `Gender`, `password`, `DoB`, `Phone`, `Joined_on`) VALUES
(48, 'hobi', 'hobi@gmail.com', 'M', '1234', '1998-04-11', '4578962148', '2022-08-23 15:01:08'),
(49, 'Joon', 'joon45@gmail.com', 'M', '45prhobi', '2005-05-06', '7943258617', '2022-08-23 15:02:49'),
(50, 'Grish', 'grish88@gmail.com', 'F', 'grish126', '1999-06-09', '7718649523', '2022-08-23 15:04:02');

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `class` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `Price` int(50) NOT NULL,
  `Route` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`source`, `dest`, `class`, `type`, `Price`, `Route`) VALUES
('Kathmandu', 'Pokhara', 'Second', 'Single', 5, '-'),
('Kathmandu', 'Lumbini', 'Second', 'Single', 5, '-'),

('Pokhara', 'Kathmandu', 'Second', 'Single', 5, '-'),
('Pokhara', 'Lumbini', 'Second', 'Single', 5, '-'),

('Lumbini', 'Kathmandu', 'Second', 'Single', 5, '-'),
('Lumbini', 'Pokhara', 'Second', 'Single', 5, '-'),

('Kathmandu', 'Pokhara', 'A.C', 'Single', 60, '-'),
('Kathmandu', 'Lumbini', 'A.C', 'Single', 60, '-'),

('Pokhara', 'Kathmandu', 'A.C', 'Single', 60, '-'),
('Pokhara', 'Lumbini', 'A.C', 'Single', 60, '-'),

('Lumbini', 'Kathmandu', 'A.C', 'Single', 60, '-'),
('Lumbini', 'Pokhara', 'A.C', 'Single', 60, '-'),

('Kathmandu', 'Dharan', 'Second', 'Single', 15, '- Chitwan -'),
('Kathmandu', 'Gandaki', 'Second', 'Single', 15, '- Chitwan -'),

('Kathmandu', 'Dharan', 'First', 'Single', 110, '- Chitwan -'),
('Kathmandu', 'Gandaki', 'First', 'Single', 110, '- Chitwan -'),

('Kathmandu', 'Dharan', 'A.C', 'Single', 130, '- Chitwan -'),
('Kathmandu', 'Gandaki', 'A.C', 'Single', 165, '- Chitwan -'),

('Chitwan', 'Kathmandu', 'Second', 'Single', 10, '-'),
('Chitwan', 'Pokhara', 'Second', 'Single', 10, '-'),
('Chitwan', 'Lumbini', 'Second', 'Single', 10, '-');


INSERT INTO `price` (`source`, `dest`, `class`, `type`, `Price`, `Route`) VALUES
('Chitwan', 'Kathmandu', 'First', 'Single', 105, '-'),
('Chitwan', 'Pokhara', 'First', 'Single', 105, '-'),
('Chitwan', 'Lumbini', 'First', 'Single', 75, '-'),

('Chitwan', 'Kathmandu', 'A.C', 'Single', 125, '-'),
('Chitwan', 'Pokhara', 'A.C', 'Single', 125, '-'),
('Chitwan', 'Lumbini', 'A.C', 'Single', 85, '-'),

('Kathmandu', 'Chitwan', 'Second', 'Single', 10, '-'),
('Pokhara', 'Chitwan', 'Second', 'Single', 10, '-'),
('Lumbini', 'Chitwan', 'Second', 'Single', 10, '-'),

('Kathmandu', 'Chitwan', 'First', 'Single', 105, '-'),
('Pokhara', 'Chitwan', 'First', 'Single', 105, '-'),
('Lumbini', 'Chitwan', 'First', 'Single', 75, '-'),

('Kathmandu', 'Chitwan', 'A.C', 'Single', 125, '-'),
('Pokhara', 'Chitwan', 'A.C', 'Single', 125, '-'),
('Lumbini', 'Chitwan', 'A.C', 'Single', 85, '-'),

('Dang', 'Kathmandu', 'Second', 'Single', 10, '- Chitwan -'),
('Dang', 'Pokhara', 'Second', 'Single', 10, '- Chitwan -'),
('Dang', 'Lumbini', 'Second', 'Single', 10, '- Chitwan -'),

('Dang', 'Kathmandu', 'First', 'Single', 105, '- Chitwan -'),
('Dang', 'Pokhara', 'First', 'Single', 105, '- Chitwan -'),
('Dang', 'Lumbini', 'First', 'Single', 75, '- Chitwan -'),

('Dang', 'Kathmandu', 'A.C', 'Single', 130, '- Chitwan -'),
('Dang', 'Pokhara', 'A.C', 'Single', 125, '- Chitwan -'),
('Dang', 'Lumbini', 'A.C', 'Single', 85, '- Chitwan -'),

('Kathmandu', 'Dang', 'Second', 'Single', 10, '- Chitwan -'),
('Pokhara', 'Dang', 'Second', 'Single', 10, '- Chitwan -'),
('Lumbini', 'Dang', 'Second', 'Single', 10, '- Chitwan -'),

('Kathmandu', 'Dang', 'First', 'Single', 105, '- Chitwan -'),
('Pokhara', 'Dang', 'First', 'Single', 105, '- Chitwan -'),
('Lumbini', 'Dang', 'First', 'Single', 75, '- Chitwan -'),

('Kathmandu', 'Dang', 'A.C', 'Single', 130, '- Chitwan -'),
('Pokhara', 'Dang', 'A.C', 'Single', 125, '- Chitwan -'),
('Lumbini', 'Dang', 'A.C', 'Single', 85, '- Chitwan -'),

('Kathmandu', 'Pokhara', 'Second', 'Return', 10, '-'),
('Kathmandu', 'Lumbini', 'Second', 'Return', 10, '-'),

('Kathmandu', 'Pokhara', 'First', 'Return', 100, '-'),
('Kathmandu', 'Lumbini', 'First', 'Return', 100, '-'),

('Pokhara', 'Kathmandu', 'Second', 'Return', 10, '-'),
('Pokhara', 'Lumbini', 'Second', 'Return', 10, '-'),

('Pokhara', 'Kathmandu', 'First', 'Return', 100, '-'),
('Pokhara', 'Lumbini', 'First', 'Return', 100, '-'),
('Pokhara', 'Kharghar', 'First', 'Return', 100, '-'),

('Lumbini', 'Kathmandu', 'Second', 'Return', 10, '-'),
('Lumbini', 'Pokhara', 'Second', 'Return', 10, '-'),
('Lumbini', 'Kharghar', 'Second', 'Return', 10, '-'),

('Lumbini', 'Kathmandu', 'First', 'Return', 100, '-'),
('Lumbini', 'Pokhara', 'First', 'Return', 100, '-'),
('Lumbini', 'Kharghar', 'First', 'Return', 100, '-'),

('Kathmandu', 'Pokhara', 'A.C', 'Return', 120, '-'),
('Kathmandu', 'Lumbini', 'A.C', 'Return', 120, '-'),

('Pokhara', 'Kathmandu', 'A.C', 'Return', 120, '-'),
('Pokhara', 'Lumbini', 'A.C', 'Return', 120, '-'),

('Lumbini', 'Kathmandu', 'A.C', 'Return', 120, '-'),
('Lumbini', 'Pokhara', 'A.C', 'Return', 120, '-');


INSERT INTO `price` (`source`, `dest`, `class`, `type`, `Price`, `Route`) VALUES

('Dharan', 'Kathmandu', 'First', 'Return', 220, '- Chitwan -'),
('Dharan', 'Pokhara', 'First', 'Return', 210, '- Chitwan -'),
('Dharan', 'Lumbini', 'First', 'Return', 210, '- Chitwan -'),

('Dharan', 'Kathmandu', 'A.C', 'Return', 260, '- Chitwan -'),
('Dharan', 'Pokhara', 'A.C', 'Return', 250, '- Chitwan -'),
('Dharan', 'Lumbini', 'A.C', 'Return', 250, '- Chitwan -'),

('Gandaki', 'Kathmandu', 'Second', 'Return', 30, '- Chitwan -'),
('Gandaki', 'Pokhara', 'Second', 'Return', 30, '- Chitwan -'),
('Gandaki', 'Lumbini', 'Second', 'Return', 20, '- Chitwan -'),

('Gandaki', 'Kathmandu', 'First', 'Return', 220, '- Chitwan -'),
('Gandaki', 'Pokhara', 'First', 'Return', 220, '- Chitwan -'),
('Gandaki', 'Lumbini', 'First', 'Return', 210, '- Chitwan -'),

('Gandaki', 'Kathmandu', 'A.C', 'Return', 260, '- Chitwan -'),
('Gandaki', 'Pokhara', 'A.C', 'Return', 260, '- Chitwan -'),
('Gandaki', 'Lumbini', 'A.C', 'Return', 250, '- Chitwan -'),

('Chitwan', 'Kathmandu', 'Second', 'Return', 20, '-'),
('Chitwan', 'Pokhara', 'Second', 'Return', 20, '-'),
('Chitwan', 'Lumbini', 'Second', 'Return', 20, '-'),

('Chitwan', 'Kathmandu', 'First', 'Return', 210, '-'),
('Chitwan', 'Pokhara', 'First', 'Return', 210, '-'),
('Chitwan', 'Lumbini', 'First', 'Return', 150, '-'),

('Chitwan', 'Kathmandu', 'A.C', 'Return', 250, '-'),
('Chitwan', 'Pokhara', 'A.C', 'Return', 250, '-'),
('Chitwan', 'Lumbini', 'A.C', 'Return', 170, '-'),

('Kathmandu', 'Chitwan', 'Second', 'Return', 20, '-'),
('Pokhara', 'Chitwan', 'Second', 'Return', 20, '-'),
('Lumbini', 'Chitwan', 'Second', 'Return', 20, '-'),

('Kathmandu', 'Chitwan', 'First', 'Return', 210, '-'),
('Pokhara', 'Chitwan', 'First', 'Return', 210, '-'),
('Lumbini', 'Chitwan', 'First', 'Return', 150, '-'),

('Kathmandu', 'Chitwan', 'A.C', 'Return', 250, '-'),
('Pokhara', 'Chitwan', 'A.C', 'Return', 250, '-'),
('Lumbini', 'Chitwan', 'A.C', 'Return', 170, '-'),

('Dang', 'Kathmandu', 'Second', 'Return', 20, '- Chitwan -'),
('Dang', 'Pokhara', 'Second', 'Return', 20, '- Chitwan -'),
('Dang', 'Lumbini', 'Second', 'Return', 20, '- Chitwan -'),

('Dang', 'Kathmandu', 'First', 'Return', 210, '- Chitwan -'),
('Dang', 'Pokhara', 'First', 'Return', 210, '- Chitwan -'),
('Dang', 'Lumbini', 'First', 'Return', 150, '- Chitwan -'),

('Dang', 'Kathmandu', 'A.C', 'Return', 260, '- Chitwan -'),
('Dang', 'Pokhara', 'A.C', 'Return', 250, '- Chitwan -'),
('Dang', 'Lumbini', 'A.C', 'Return', 170, '- Chitwan -'),

('Kathmandu', 'Dang', 'Second', 'Return', 20, '- Chitwan -'),
('Pokhara', 'Dang', 'Second', 'Return', 20, '- Chitwan -'),
('Lumbini', 'Dang', 'Second', 'Return', 20, '- Chitwan -'),

('Kathmandu', 'Dang', 'First', 'Return', 210, '- Chitwan -'),
('Pokhara', 'Dang', 'First', 'Return', 210, '- Chitwan -'),
('Lumbini', 'Dang', 'First', 'Return', 150, '- Chitwan -'),

('Kathmandu', 'Dang', 'A.C', 'Return', 260, '- Chitwan -'),
('Pokhara', 'Dang', 'A.C', 'Return', 250, '- Chitwan -'),
('Lumbini', 'Dang', 'A.C', 'Return', 170, '- Chitwan -');
-- --------------------------------------------------------
--
-- Table structure for table `traintt`
--

CREATE TABLE `traintt` (
  `Kathmandu` varchar(5) DEFAULT NULL,
  `Pokhara` varchar(5) DEFAULT NULL,
  `Lumbini` varchar(5) DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `traintt`
--

INSERT INTO `traintt` (`Kathmandu`, `Pokhara`, `Lumbini`) VALUES
('04:33', '04:38', '04:41'),
('04:53', '04:58', '05:01'),
('05:21', '05:26', '05:29'),
('05:44', '05:49', '05:52'),
('06:17', '06:22', '06:25'),
('06:37', '06:42', '06:45'),
('07:01', '07:06', '07:09'),
('07:19', '07:24', '07:27'),
('07:43', '07:48', '07:51'),
('08:04', '08:09', '08:12'),
('09:01', '09:06', '09:09'),
('09:48', '09:53', '09:56'),
('10:41', '10:46', '10:49'),
('11:02', '11:07', '11:10'),
('12:19', '12:24', '12:27'),
('13:04', '13:09', '13:12'),
('13:57', '14:02', '14:05'),
('14:24', '14:29', '14:32'),
('15:04', '15:09', '15:12'),
('15:36', '15:41', '15:44'),
('15:53', '15:58', '16:01'),
('16:14', '16:19', '16:22'),
('16:26', '16:31', '16:34'),
('17:12', '17:17', '17:20'),
('17:37', '17:42', '17:45'),
('17:57', '18:02', '18:05'),
('18:21', '18:26', '18:29'),
('19:01', '19:06', '19:09'),
('19:31', '19:36', '19:39'),
('20:19', '20:24', '20:27'),
('20:52', '20:57', '21:00'),
('21:20', '21:25', '21:28'),
('22:11', '22:16', '22:19'),
('23:18', '23:23', '23:26');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `T_No.` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Class` varchar(25) NOT NULL,
  `Type` varchar(25) NOT NULL,
  `NoOfpass` int(11) NOT NULL,
  `card_no` int(25) NOT NULL,
  `expmonth` int(2) NOT NULL,
  `expyear` int(2) NOT NULL,
  `cvv` int(3) NOT NULL,
  `pin` int(4) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `Amt` int(10) NOT NULL,
  `Route` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`T_No.`, `email`, `source`, `dest`, `Name`, `Class`, `Type`, `NoOfpass`, `card_no`, `expmonth`, `expyear`, `cvv`, `pin`, `Date`, `Amt`, `Route`) VALUES
(54, 'hobi@gmail.com', 'Kathmandu', 'Pokhara', 'hobi', 'Second', 'Single', 2, 5416, 0, 0, 0, 0, '2022-08-23 20:53:06', 10, 'Kathmandu-Pokhara CBD'),
(55, 'hobi@gmail.com', 'Dang', 'Kathmandu', 'hobi', 'First', 'Return', 5, 2147483647, 7, 25, 468, 7613, '2022-08-23 20:54:48', 1050, 'Dang- Chitwan -Kathmandu');

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`T_No.`);

--
-- Indexes for table `userdatabase`
--
ALTER TABLE `userdatabase`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);
--
--
-- AUTO_INCREMENT for dumped tables

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `T_No.` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `userdatabase`
--
ALTER TABLE `userdatabase`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
