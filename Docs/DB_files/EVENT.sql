-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2018 at 07:06 PM
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
-- Table structure for table `EVENT`
--

CREATE TABLE `EVENT` (
  `EventID` int(10) UNSIGNED NOT NULL,
  `EventName` varchar(20) NOT NULL,
  `EventDescription` varchar(25) NOT NULL,
  `EventDateTime` datetime NOT NULL,
  `InstitutionID` int(10) UNSIGNED NOT NULL,
  `EventCreator` varchar(50) NOT NULL,
  `GuessTotalCnt` smallint(4) NOT NULL,
  `EventPoolID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EVENT`
--
ALTER TABLE `EVENT`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `institutionID` (`InstitutionID`),
  ADD KEY `EventCreator` (`EventCreator`),
  ADD KEY `Event_ibfk_4` (`EventPoolID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EVENT`
--
ALTER TABLE `EVENT`
  MODIFY `EventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24833;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EVENT`
--
ALTER TABLE `EVENT`
  ADD CONSTRAINT `EVENT_ibfk_2` FOREIGN KEY (`InstitutionID`) REFERENCES `INSTITUTION` (`InstitutionID`),
  ADD CONSTRAINT `EVENT_ibfk_3` FOREIGN KEY (`EventCreator`) REFERENCES `USER` (`Email`),
  ADD CONSTRAINT `EVENT_ibfk_4` FOREIGN KEY (`EventPoolID`) REFERENCES `EVENT_POOL` (`EventPoolID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
