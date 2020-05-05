-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 08:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientID` int(11) NOT NULL,
  `PatientNIC` varchar(20) NOT NULL,
  `PatientFName` varchar(50) NOT NULL,
  `PatientLName` varchar(50) NOT NULL,
  `PatientGender` varchar(7) NOT NULL,
  `PatientPhone` varchar(16) NOT NULL,
  `PatientBloodGroup` varchar(4) NOT NULL,
  `PatientMaritalStatus` varchar(10) NOT NULL,
  `Patient_Add_Line2` varchar(50) NOT NULL,
  `Patient_Add_Line3` varchar(50) NOT NULL,
  `Patient_Add_City` varchar(50) NOT NULL,
  `PatientDOB_year` int(11) NOT NULL,
  `PatientDOB_month` varchar(50) NOT NULL,
  `PatientDOB_day` int(11) NOT NULL,
  `PatientEmail` varchar(50) NOT NULL,
  `PatientUsername` varchar(50) NOT NULL,
  `PatientPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `PatientNIC`, `PatientFName`, `PatientLName`, `PatientGender`, `PatientPhone`, `PatientBloodGroup`, `PatientMaritalStatus`, `Patient_Add_Line2`, `Patient_Add_Line3`, `Patient_Add_City`, `PatientDOB_year`, `PatientDOB_month`, `PatientDOB_day`, `PatientEmail`, `PatientUsername`, `PatientPassword`) VALUES
(1071, '981266874V', 'Aloka', 'Wickramasinghe', 'Female', '0780448543', 'A+', 'Single', '262/A', 'Kahatapitiya Rd', 'Gampola', 1998, 'December', 12, 'aloka@gmail.com', 'alokaW', 'Qw1234567'),
(1072, '945600987V', 'Nadeera', 'Kalupahana', 'Male', '0775665622', 'O-', 'Married', 'Pallekale', 'Theldeniya', 'Kandy', 1994, 'June', 6, 'nadeera@gmail.com', 'nadeeraK', 'RWr12345'),
(1073, '921266874V', 'Chamara', 'Weerasinghe', 'Male', '0775665677', 'AB-', 'Single', 'Kandy Rd', 'Kadugannawa', 'Kandy', 1992, 'July', 3, 'chamara@gmail.com', 'chamaraW', 'Eb123456'),
(1108, '956233458V', 'Saman', 'Uduwawela', 'Male', '0782335698', 'O+', 'Married', '45/A', 'Kurunagala Rd', 'Kaluthara', 1995, 'March', 3, 'SamanU@gmail.com', 'SamanU', 'SURt12345'),
(1109, '842300564V', 'Tharushi', 'Samarasinghe', 'Female', '0759653254', 'A+', 'Married', '12', 'Wijayaba Street', 'Malabe', 1984, 'February', 4, 'TharushiS@gmail.com', 'TharushiS', 'RD123456'),
(1110, '200365980014', 'Rashmi', 'Chathurika', 'Female', '0115632584', 'AB-', 'Single', '12/B', 'Gampola Rd', 'Nawalapitiya', 2002, 'June', 30, 'Rashmi@yahoo.com', 'Rashmi', 'Ra123456');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'dasun', '1234', 'admin'),
(2, 'admin', 'admin', 'admin'),
(1000, 'alokaW', '1234', 'patient'),
(1001, 'nadeeraK', '1234', 'patient'),
(1002, 'chamaraW', '1234', 'patient'),
(1004, 'SamanU', 'SURt12345', 'patient'),
(1005, 'TharushiS', 'RD123456', 'patient'),
(1006, 'Rashmi', 'Ra123456', 'patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
