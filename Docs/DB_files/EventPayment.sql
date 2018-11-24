-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2018 at 11:13 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EventPayment`
--
ALTER TABLE `EventPayment`
  ADD PRIMARY KEY (`EventPaymentID`),
  ADD KEY `UserEmail` (`UserEmail`),
  ADD KEY `EventReservationID` (`EventReservationID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EventPayment`
--
ALTER TABLE `EventPayment`
  MODIFY `EventPaymentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EventPayment`
--
ALTER TABLE `EventPayment`
  ADD CONSTRAINT `EventPayment_ibfk_1` FOREIGN KEY (`EventReservationID`) REFERENCES `EventReservation` (`EventReservationID`),
  ADD CONSTRAINT `EventPayment_ibfk_2` FOREIGN KEY (`UserEmail`) REFERENCES `User` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
