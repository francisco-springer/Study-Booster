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
-- Table structure for table `Event`
--

CREATE TABLE `Event` (
  `EventID` int(10) UNSIGNED NOT NULL,
  `EventName` varchar(50) NOT NULL,
  `EventDescription` varchar(50) NOT NULL,
  `EventDateTime` datetime NOT NULL,
  `institutionID` int(10) UNSIGNED NOT NULL,
  `EventCreator` varchar(50) NOT NULL,
  `GuessTotalCnt` smallint(4) NOT NULL,
  `EventPoolID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Event`
--

INSERT INTO `Event` (`EventID`, `EventName`, `EventDescription`, `EventDateTime`, `institutionID`, `EventCreator`, `GuessTotalCnt`, `EventPoolID`) VALUES
(1173, 'SxHTB', 'ubSqc', '2015-08-13 01:22:40', 1357, 'uqxocwbqafzggqhqgk@wtfruy.jzt', 3, 829),
(1174, 'GqIxodxgkGHuXJDNkHJzwKooB', 'NnVagGSyOBqVPmMeiBnHDTLaN', '2016-02-19 20:11:32', 1355, 'uqxocwbqafzggqhqgk@wtfruy.jzt', 12, 824),
(1175, 'JCJOVqPgjAdOPJdlUUQzWqJEUMcVCbxmPwIfwVtepmoKNKmgQT', 'HqGmqRutLEMXGozJWMVvncypb', '2017-06-25 19:41:35', 1354, 'dhbjqezhpctkurzzvie@ihoyaeydx.dwx', 12, 822),
(1176, 'LBxMtGgGPlIKBFvpkjmLWDarHqDXhQKftESGAIRoQtuTmCcDPp', 'JjPBqWPlJPaCPtzrkbzwKpsTv', '2018-11-23 12:13:34', 1356, 'fzjuusfult@bxiyqmj.mhy', 9, 828),
(1177, 'VeENgoakcCINQRQFCVcu', 'mDjjrkavdencuVyECXoyCtkTT', '2016-07-08 17:46:03', 1356, 'smjhkeoizy@wbuumcavc.auy', 6, 830),
(1178, 'SxHTB', 'ubSqc', '2015-07-24 11:02:34', 1361, 'sfwte@owswhvhz.clx', 13, 829),
(1179, 'xzhjAbFahMtGcnmtnfLxcRkutNLtHkatVEjhirnoHywKnlp', 'AVhSavdbXSuuONAqbkSOvLtJu', '2016-04-02 06:01:27', 1359, 'fzjuusfult@bxiyqmj.mhy', 8, 821),
(1180, 'WPnQxMxXDURBiiqgIdmeGagDBbwgrrIsOThaFgLtGgGTEpKInp', 'rDUTJPaAINTkqXWRwHUJKBzUh', '2018-11-10 04:39:19', 1357, 'fzjuusfult@bxiyqmj.mhy', 3, 826),
(1181, 'SxHTB', 'ubSqc', '2015-09-01 00:34:34', 1354, 'vpnuikynukrbj@tdjkyowt.cep', 12, 829),
(1182, 'zNuJrBMhxThWwrsQdQaxsx', 'wLtKweehyXAFDcwfkKbW', '2016-08-10 15:53:05', 1355, 'fzjuusfult@bxiyqmj.mhy', 13, 827);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Event`
--
ALTER TABLE `Event`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `EventPoolID` (`EventPoolID`),
  ADD KEY `institutionID` (`institutionID`),
  ADD KEY `EventCreator` (`EventCreator`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Event`
--
ALTER TABLE `Event`
  MODIFY `EventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1183;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Event`
--
ALTER TABLE `Event`
  ADD CONSTRAINT `Event_ibfk_2` FOREIGN KEY (`institutionID`) REFERENCES `Institution` (`InstitutionID`),
  ADD CONSTRAINT `Event_ibfk_3` FOREIGN KEY (`EventCreator`) REFERENCES `User` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
