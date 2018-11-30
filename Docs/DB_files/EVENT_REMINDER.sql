-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2018 at 07:08 PM
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
-- Table structure for table `EVENT_REMINDER`
--

CREATE TABLE `EVENT_REMINDER` (
  `EventReminderID` int(10) UNSIGNED NOT NULL,
  `UserEmail` varchar(50) NOT NULL,
  `EventID` int(11) UNSIGNED NOT NULL,
  `HoursBeforeEvent` int(11) NOT NULL,
  `ReminderFrequency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EVENT_REMINDER`
--
ALTER TABLE `EVENT_REMINDER`
  ADD PRIMARY KEY (`EventReminderID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `UserEmail` (`UserEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EVENT_REMINDER`
--
ALTER TABLE `EVENT_REMINDER`
  MODIFY `EventReminderID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EVENT_REMINDER`
--
ALTER TABLE `EVENT_REMINDER`
  ADD CONSTRAINT `EVENT_REMINDER_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `EVENT` (`EventID`),
  ADD CONSTRAINT `EVENT_REMINDER_ibfk_2` FOREIGN KEY (`UserEmail`) REFERENCES `USER` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
