-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2018 at 11:24 PM
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
-- Database: `StudyBooster`
--

-- --------------------------------------------------------

--
-- Table structure for table `Institution`
--

CREATE TABLE `Institution` (
  `InstitutionID` int(10) UNSIGNED NOT NULL,
  `LocationID` int(10) UNSIGNED NOT NULL,
  `InstitutionName` varchar(50) NOT NULL,
  `InstitutionRegisteredDateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Institution`
--

INSERT INTO `Institution` (`InstitutionID`, `LocationID`, `InstitutionName`, `InstitutionRegisteredDateTime`) VALUES
(1353, 9394, 'iAfXEdBzRRJTvxcQcJwegsxkIOWuhzeWBQEyEEkjsnklA', '1967-10-28 00:00:00'),
(1354, 9374, 'npLMFOkCmBWkfVulUTOpfEJLEMbQhlHItTracjN', '1973-06-15 00:00:00'),
(1355, 9393, 'KdgycMJkSRJ', '1964-03-20 00:00:00'),
(1356, 9340, 'CshFICMhxRVfIiMpkjoTHEbsItSnIHlgWyybHn', '1993-02-21 00:00:00'),
(1357, 9309, 'jjwGRtuPTdERz', '1962-03-07 00:00:00'),
(1358, 9324, 'PQKhzfXHrKEQuymNi', '1993-12-23 00:00:00'),
(1359, 9387, 'zhlILIiOAmHDVWbkViVnzIUFoFlpOhpfELUukRIQiriPG', '1984-02-08 00:00:00'),
(1360, 9336, 'ltmdEOkHJB', '1973-10-18 00:00:00'),
(1361, 9303, 'wMBvyjvFOlGCSKaOcPXywMy', '1964-03-31 00:00:00'),
(1362, 9382, 'zdNMwWzECaovneEMbPfaJzuDGAIPgfizbHkdKwdXJCLddjI', '1960-07-08 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Institution`
--
ALTER TABLE `Institution`
  ADD PRIMARY KEY (`InstitutionID`),
  ADD UNIQUE KEY `LocationID_2` (`LocationID`),
  ADD KEY `LocationID` (`LocationID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Institution`
--
ALTER TABLE `Institution`
  MODIFY `InstitutionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1363;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Institution`
--
ALTER TABLE `Institution`
  ADD CONSTRAINT `Institution_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`LocationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
