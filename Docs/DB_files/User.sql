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
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `Email` varchar(50) NOT NULL,
  `FName` varchar(25) DEFAULT NULL,
  `LName` varchar(25) DEFAULT NULL,
  `MainTelNum` varchar(10) DEFAULT NULL,
  `SecondaryTelNum` varchar(10) DEFAULT NULL,
  `Age` tinyint(3) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `RegisteredDate` datetime DEFAULT NULL,
  `LastLog` datetime DEFAULT NULL,
  `LocationID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`Email`, `FName`, `LName`, `MainTelNum`, `SecondaryTelNum`, `Age`, `Gender`, `RegisteredDate`, `LastLog`, `LocationID`) VALUES
('dhbjqezhpctkurzzvie@ihoyaeydx.dwx', 'fbqyyueogmsbfxwogozjttmfn', 'pwm', '8998205448', '0698461531', 72, 'F', '2016-10-16 10:07:57', '2016-10-16 10:07:57', 9337),
('dokgajsnnzjwehwogm@bfxvmyhqg.jck', 'onzghrmltjorrldiezlf', 'sqadraytvygmpoakw', '2644057148', '8546963014', 17, 'F', '2016-03-24 11:19:47', '2016-03-24 11:19:47', 9366),
('fzjuusfult@bxiyqmj.mhy', 'mupqhozhkdlvunfnalenbv', 'vojbfycoqkbfukrclykdmz', '4146048114', '7342728782', 68, 'M', '2017-01-09 14:03:57', '2017-01-09 14:03:57', 9347),
('lhbmgvknhzyuemvsaazystp@cfsyntesb.dng', 'hpdwzispvievrubv', 'os', '8111343218', '1943571205', 41, 'M', '2018-05-03 05:03:57', '2018-05-03 05:03:57', 9363),
('pjbetgzduoibf@vofjfxzfc.utj', 'lqxqlgzeydvsc', 'tmccerspvkmg', '7978853017', '1663945132', 24, 'F', '2016-12-05 20:47:08', '2016-12-05 20:47:08', 9345),
('qgjbgybkwdarkzsqyxrrhmn@ykfvo.fmu', 'goedcceruznsxm', 'yqhpbopjzubyntftdm', '8075317032', '4492455191', 25, 'M', '2017-08-20 06:41:34', '2017-08-20 06:41:34', 9327),
('sfwte@owswhvhz.clx', 'gswegr', 'midumzljlemvujpucf', '7154493828', '5088714923', 23, 'F', '2015-09-29 16:44:00', '2015-09-29 16:44:00', 9364),
('smjhkeoizy@wbuumcavc.auy', 'tuqvgvhad', 'fxvkpudhzcprpyxqowp', '4354910636', '0671305486', 59, 'M', '2016-08-31 03:27:03', '2016-08-31 03:27:03', 9395),
('uqxocwbqafzggqhqgk@wtfruy.jzt', 'tijxjbhhntgyzafzgiys', 'omwuihovndcbawiabfw', '7977407548', '0376292276', 31, 'M', '2016-05-10 13:43:21', '2016-05-10 13:43:21', 9368),
('vpnuikynukrbj@tdjkyowt.cep', 'zdwuktkuseszxnw', 'hdvqtvyhmokijxkildkn', '5905349384', '6782335594', 40, 'M', '2016-01-02 02:55:51', '2016-01-02 02:55:51', 9376);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Email`),
  ADD KEY `LocationID` (`LocationID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`LocationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
