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
-- Table structure for table `EventPool`
--

CREATE TABLE `EventPool` (
  `EventPoolID` int(10) UNSIGNED NOT NULL,
  `EventName` varchar(75) NOT NULL,
  `EventDescription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventPool`
--

INSERT INTO `EventPool` (`EventPoolID`, `EventName`, `EventDescription`) VALUES
(821, 'xzhjAbFahMtGcnmtnfLxcRkutNLtHkatVEjhirnoHywKnlp', 'AVhSavdbXSuuONAqbkSOvLtJu'),
(822, 'JCJOVqPgjAdOPJdlUUQzWqJEUMcVCbxmPwIfwVtepmoKNKmgQT', 'HqGmqRutLEMXGozJWMVvncypb'),
(823, 'JNPOCvwTjkyNzjwHWOjyRTTOrqFgKomsfvPTXkdLAsptc', 'kOxRUdAuAso'),
(824, 'GqIxodxgkGHuXJDNkHJzwKooB', 'NnVagGSyOBqVPmMeiBnHDTLaN'),
(825, 'zqfAtpsWIAEvpoAMlREyFGsUzNszwHbhIVHzzbEaldJpufqrMM', 'zxRTWf'),
(826, 'WPnQxMxXDURBiiqgIdmeGagDBbwgrrIsOThaFgLtGgGTEpKInp', 'rDUTJPaAINTkqXWRwHUJKBzUh'),
(827, 'zNuJrBMhxThWwrsQdQaxsx', 'wLtKweehyXAFDcwfkKbW'),
(828, 'LBxMtGgGPlIKBFvpkjmLWDarHqDXhQKftESGAIRoQtuTmCcDPp', 'JjPBqWPlJPaCPtzrkbzwKpsTv'),
(829, 'SxHTB', 'ubSqc'),
(830, 'VeENgoakcCINQRQFCVcu', 'mDjjrkavdencuVyECXoyCtkTT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EventPool`
--
ALTER TABLE `EventPool`
  ADD PRIMARY KEY (`EventPoolID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EventPool`
--
ALTER TABLE `EventPool`
  MODIFY `EventPoolID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=831;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
