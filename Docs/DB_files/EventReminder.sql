-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2018 at 11:14 PM
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
-- Table structure for table `EventReminder`
--

CREATE TABLE `EventReminder` (
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
-- Indexes for table `EventReminder`
--
ALTER TABLE `EventReminder`
  ADD PRIMARY KEY (`EventReminderID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `UserEmail` (`UserEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EventReminder`
--
ALTER TABLE `EventReminder`
  MODIFY `EventReminderID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EventReminder`
--
ALTER TABLE `EventReminder`
  ADD CONSTRAINT `EventReminder_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `Event` (`EventID`),
  ADD CONSTRAINT `EventReminder_ibfk_2` FOREIGN KEY (`UserEmail`) REFERENCES `User` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
