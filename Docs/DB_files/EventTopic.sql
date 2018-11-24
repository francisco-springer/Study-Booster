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
-- Table structure for table `EventTopic`
--

CREATE TABLE `EventTopic` (
  `EventTopicID` int(10) UNSIGNED NOT NULL,
  `EventID` int(10) UNSIGNED NOT NULL,
  `EventTopic` varchar(50) NOT NULL,
  `EventTopicDesc` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventTopic`
--

INSERT INTO `EventTopic` (`EventTopicID`, `EventID`, `EventTopic`, `EventTopicDesc`) VALUES
(18192, 1179, 'LhyaCQzXvkMhzcKyoUOlJTvvQXrNTifdXMQTdCFyBnKN', 'tJuQeSgXDVXeAqfzmIKBDnCcBCmxHTCfOJhEDgPPEBVfIdrAEundDKSmD'),
(18193, 1179, 'cMHconwxWwqp', 'QDsdlXlikAavhyWuiBmFvlPwLuNLsCMizaCNlMjEAMp'),
(18194, 1179, 'ihpbnlrciKiEBV', 'vXGqFkij'),
(18195, 1175, 'PlKSoOitvaMMCzRPzbHnqRpXbiKhBrbhF', 'IqCREvsABjpVRwFQoVRxKoklxFOisrHmpKMENfkJTvuNIfydSlxHVLT'),
(18196, 1175, 'QoSCjnKQcKxixPLmWfH', 'QsnoFmthFIAFzGKKxivFQtrEbpxuEOkExzhivHcngSdGevTmyLoiWsUCaqHrLJmfPQMncuVy'),
(18197, 1174, 'wTjmIGmmzNuImgSfRawjGHrN', 'fSdKtMGWTEoIACpOffkJVEklAUbtPaAHKFVRBdKvXEhRROtzuAwEKMKnjeVxzimLaQh'),
(18198, 1174, 'DscjLhAlBeNGTC', 'MDHzEzHPgiz'),
(18199, 1174, 'tbVHxqmlutJuUvrxmQySXntgzhkDpNbKERzUiXxsvdcaVIEVV', 'vFRwDFtcdjKgxThcMKooEgQPGLMFQqfEGxtCFxyWwohOHRpadrCLbVFpHtWHwmUQ'),
(18200, 1180, 'dqwlPwLvReQVloMWANqnscerwmSIKFXbhHS', 'xdUvuJqBJSqaabhFJIosXRtqxrrHqEfHcm'),
(18201, 1180, 'IlaubSupt', 'MRbCKTungPOBnJMKrAFBPAinPqhLprLJpsXPhpdwXGllxFMVvoiazyVnAQEAPDunfKrBKaQjvC'),
(18202, 1182, 'NHWPoSGAK', 'Stnjj'),
(18203, 1182, 'ewbLGcprSqWRxIciKfs', 'GBQDuoicHlighphPJaTBXoyDwzjuAsmhXxuHcpudfrv'),
(18204, 1182, 'iCpPnPpgH', 'OhrpwswjEyEEicJtOTfOJhGKKvaMOLoklxFNbNPMtERAaxphNBqbiMqqIvgogLqtVCXkhgkE'),
(18205, 1176, 'XkdKvXEgOFLQbBG', 'mrWNdUxDyLkNtztwbPeVwuKuOQRKccgwTlshIWMUrXSyLqsQjr'),
(18206, 1176, 'RMlRHJDMgpjWp', 'loJHmkqXULUtgAmHEcvaMPPGKKuTnIDUOqjXrOaEalgXAKXNU'),
(18207, 1173, 'mJORXnvqtUyEGtaRpULVAMohRRMkLhzfbOVoGubVFrP', 'aNTjlAXsTsiK'),
(18208, 1173, 'ycNNBvwaIvb', 'wzjuAuwaHqFiWrQkxIdnhTgUnDeHexcRjqewXBPyWsTxDBbvddfsyqiRPDungRUaqDVX'),
(18209, 1178, 'ReQXsTvuKykClutHlhdRgdX', 'xobnmyJeqsOaBLemUSJPbHowqozFFnyECbuUyGMShdTqUHBKaSut'),
(18210, 1181, 'VwvLzmMdejIStnkkwDGvmUR', 'rVJJtNQQHQkxMuNGUHAIPeWEgOFNXEcuToLQazyTgSdJrC'),
(18211, 1181, 'yUidQayxQRNpkePTdFVPrjVhTdHeuQXucaUElpTEnC', 'owtESFzDwzgjzaBIQfdWIyuAyPIVGudgxUltmeGclbwhvHdprQjuznQwGWPnRzVkinOmPtwdcW'),
(18212, 1181, 'QWqIwmQAgXDammyIbbchEEjhkDnFpJDNkJSoOj', 'QNuHfzmKUulWiUidNNDAUbrGkgXBLgtDNjCoKN'),
(18213, 1177, 'ytxiyTeLyhnURCijuAtq', 'FBPBlyNvQUeHclczvGVNfhwPLneFRwIdppEgNFJJs'),
(18214, 1177, 'ztuSjnNhtymPuzrlfPNydSksmgThaEcsLDIKA', 'WpFkjoSErUCeLzmLaMRWpEiVoBTSKWGqIzyTdERyP'),
(18215, 1177, 'ftFWWWSCihkGEgOEGwofGWQsosXPjvDJJvcVD', 'NFKOOGNWBMmV');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EventTopic`
--
ALTER TABLE `EventTopic`
  ADD PRIMARY KEY (`EventTopicID`),
  ADD KEY `EventID` (`EventID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EventTopic`
--
ALTER TABLE `EventTopic`
  MODIFY `EventTopicID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18216;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EventTopic`
--
ALTER TABLE `EventTopic`
  ADD CONSTRAINT `EventTopic_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `Event` (`EventID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
