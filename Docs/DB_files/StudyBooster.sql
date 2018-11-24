-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2018 at 07:24 PM
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
-- Table structure for table `Event`
--

CREATE TABLE `Event` (
  `EventID` int(10) UNSIGNED NOT NULL,
  `EventName` varchar(75) NOT NULL,
  `EventDescription` varchar(100) NOT NULL,
  `EventTime` time NOT NULL,
  `EventDate` date NOT NULL,
  `InstitutionID` int(10) UNSIGNED NOT NULL,
  `EventCreator` varchar(50) NOT NULL,
  `GuessTotalCnt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `EventPayment`
--

CREATE TABLE `EventPayment` (
  `EventPaymentID` int(10) UNSIGNED NOT NULL,
  `EventReservationID` int(10) UNSIGNED NOT NULL,
  `UserEmail` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `PaymentRequired` tinyint(1) NOT NULL,
  `TotalPayment` float NOT NULL,
  `PaymentDate` date NOT NULL,
  `PaymentTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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

-- --------------------------------------------------------

--
-- Table structure for table `EventReservation`
--

CREATE TABLE `EventReservation` (
  `EventReservationID` int(10) UNSIGNED NOT NULL,
  `GuessCnt` int(11) NOT NULL,
  `EventID` int(10) UNSIGNED NOT NULL,
  `ReservationDate` date NOT NULL,
  `ReservationTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EventTopic`
--

CREATE TABLE `EventTopic` (
  `EventTopicID` int(10) UNSIGNED NOT NULL,
  `EventID` int(10) UNSIGNED NOT NULL,
  `EventTopicTitle` varchar(75) NOT NULL,
  `EventTopicSubTitle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Institution`
--

CREATE TABLE `Institution` (
  `InstitutionID` int(10) UNSIGNED NOT NULL,
  `LocationID` int(10) UNSIGNED NOT NULL,
  `InstitutionName` varchar(50) NOT NULL,
  `InstitutionRegisteredDate` date NOT NULL,
  `InstitutionRegisteredTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `LocationID` int(10) UNSIGNED NOT NULL,
  `LocationLine1` varchar(75) NOT NULL,
  `LocationLine2` varchar(25) DEFAULT NULL,
  `LocationCity` varchar(50) NOT NULL,
  `LocationState` varchar(2) NOT NULL,
  `LocationZip` int(5) NOT NULL,
  `LocationIndications` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `Email` varchar(50) NOT NULL,
  `FName` int(11) NOT NULL,
  `LName` int(11) NOT NULL,
  `MainTelNum` varchar(10) DEFAULT NULL,
  `SecondaryTelNum` varchar(10) DEFAULT NULL,
  `Age` int(11) NOT NULL,
  `Gender` char(1) NOT NULL,
  `RegisteredDate` date NOT NULL,
  `RegisteredTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastLog` datetime NOT NULL,
  `LocationID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Event`
--
ALTER TABLE `Event`
  ADD PRIMARY KEY (`EventID`),
  ADD UNIQUE KEY `InstitutionID` (`InstitutionID`,`EventCreator`),
  ADD KEY `EventCreator` (`EventCreator`);

--
-- Indexes for table `EventPayment`
--
ALTER TABLE `EventPayment`
  ADD PRIMARY KEY (`EventPaymentID`),
  ADD KEY `UserEmail` (`UserEmail`),
  ADD KEY `EventReservationID` (`EventReservationID`) USING BTREE;

--
-- Indexes for table `EventReminder`
--
ALTER TABLE `EventReminder`
  ADD PRIMARY KEY (`EventReminderID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `UserEmail` (`UserEmail`);

--
-- Indexes for table `EventReservation`
--
ALTER TABLE `EventReservation`
  ADD PRIMARY KEY (`EventReservationID`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `EventTopic`
--
ALTER TABLE `EventTopic`
  ADD PRIMARY KEY (`EventTopicID`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `Institution`
--
ALTER TABLE `Institution`
  ADD PRIMARY KEY (`InstitutionID`),
  ADD KEY `LocationID` (`LocationID`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Email`),
  ADD KEY `LocationID` (`LocationID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Event`
--
ALTER TABLE `Event`
  MODIFY `EventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventPayment`
--
ALTER TABLE `EventPayment`
  MODIFY `EventPaymentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventReminder`
--
ALTER TABLE `EventReminder`
  MODIFY `EventReminderID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventReservation`
--
ALTER TABLE `EventReservation`
  MODIFY `EventReservationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EventTopic`
--
ALTER TABLE `EventTopic`
  MODIFY `EventTopicID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Institution`
--
ALTER TABLE `Institution`
  MODIFY `InstitutionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Location`
--
ALTER TABLE `Location`
  MODIFY `LocationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Event`
--
ALTER TABLE `Event`
  ADD CONSTRAINT `Event_ibfk_1` FOREIGN KEY (`InstitutionID`) REFERENCES `Institution` (`InstitutionID`),
  ADD CONSTRAINT `Event_ibfk_2` FOREIGN KEY (`EventCreator`) REFERENCES `User` (`Email`);

--
-- Constraints for table `EventPayment`
--
ALTER TABLE `EventPayment`
  ADD CONSTRAINT `EventPayment_ibfk_1` FOREIGN KEY (`EventReservationID`) REFERENCES `EventReservation` (`EventReservationID`),
  ADD CONSTRAINT `EventPayment_ibfk_2` FOREIGN KEY (`UserEmail`) REFERENCES `User` (`Email`);

--
-- Constraints for table `EventReminder`
--
ALTER TABLE `EventReminder`
  ADD CONSTRAINT `EventReminder_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `Event` (`EventID`),
  ADD CONSTRAINT `EventReminder_ibfk_2` FOREIGN KEY (`UserEmail`) REFERENCES `User` (`Email`);

--
-- Constraints for table `EventReservation`
--
ALTER TABLE `EventReservation`
  ADD CONSTRAINT `EventReservation_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `Event` (`EventID`);

--
-- Constraints for table `EventTopic`
--
ALTER TABLE `EventTopic`
  ADD CONSTRAINT `EventTopic_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `Event` (`EventID`);

--
-- Constraints for table `Institution`
--
ALTER TABLE `Institution`
  ADD CONSTRAINT `Institution_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`LocationID`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`LocationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
