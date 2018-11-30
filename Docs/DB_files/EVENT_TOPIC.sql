-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2018 at 07:09 PM
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
-- Table structure for table `EVENT_TOPIC`
--

CREATE TABLE `EVENT_TOPIC` (
  `EventTopicID` int(10) UNSIGNED NOT NULL,
  `EventID` int(10) UNSIGNED NOT NULL,
  `EventTopic` varchar(25) NOT NULL,
  `EventTopicDesc` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EVENT_TOPIC`
--
ALTER TABLE `EVENT_TOPIC`
  ADD PRIMARY KEY (`EventTopicID`),
  ADD KEY `EventID` (`EventID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EVENT_TOPIC`
--
ALTER TABLE `EVENT_TOPIC`
  MODIFY `EventTopicID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79132;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EVENT_TOPIC`
--
ALTER TABLE `EVENT_TOPIC`
  ADD CONSTRAINT `EVENT_TOPIC_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `EVENT` (`EventID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
