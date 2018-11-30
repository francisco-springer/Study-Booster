-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2018 at 07:11 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `StudyBooster2`
--

-- --------------------------------------------------------

--
-- Table structure for table `INSTITUTION`
--

CREATE TABLE `INSTITUTION` (
  `InstitutionID` int(10) UNSIGNED NOT NULL,
  `LocationID` int(10) UNSIGNED NOT NULL,
  `InstitutionName` varchar(50) NOT NULL,
  `InstitutionRegisteredDateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `INSTITUTION`
--
ALTER TABLE `INSTITUTION`
  ADD PRIMARY KEY (`InstitutionID`),
  ADD UNIQUE KEY `LocationID_2` (`LocationID`),
  ADD KEY `LocationID` (`LocationID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `INSTITUTION`
--
ALTER TABLE `INSTITUTION`
  MODIFY `InstitutionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7763;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `INSTITUTION`
--
ALTER TABLE `INSTITUTION`
  ADD CONSTRAINT `INSTITUTION_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `LOCATION` (`LocationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
