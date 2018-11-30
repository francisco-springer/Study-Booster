-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2018 at 07:12 PM
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
-- Table structure for table `LOCATION`
--

CREATE TABLE `LOCATION` (
  `LocationID` int(10) UNSIGNED NOT NULL,
  `LocationLine1` varchar(75) NOT NULL,
  `LocationLine2` varchar(25) DEFAULT NULL,
  `LocationCity` varchar(50) DEFAULT NULL,
  `LocationState` varchar(2) DEFAULT NULL,
  `LocationZip` int(5) DEFAULT NULL,
  `LocationIndications` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `LOCATION`
--
ALTER TABLE `LOCATION`
  ADD PRIMARY KEY (`LocationID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `LOCATION`
--
ALTER TABLE `LOCATION`
  MODIFY `LocationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58301;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
