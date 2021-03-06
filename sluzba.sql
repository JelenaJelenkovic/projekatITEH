-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 12:21 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sluzba`
--
CREATE DATABASE IF NOT EXISTS `sluzba` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `sluzba`;

-- --------------------------------------------------------

--
-- Table structure for table `profesor`
--
-- Creation: Feb 10, 2021 at 11:19 PM
--

CREATE TABLE `profesor`(
  `profesorID` int(11) NOT NULL,
  `imePrezime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uloga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profesor`
--

INSERT INTO `profesor`(`profesorID`, `imePrezime`, `username`, `password`, `uloga`) VALUES
(1, 'Admin', 'admin', 'admin', 2),
(2, 'Jelena', 'jelena', 'jelena', 1),
(2, 'Luka', 'luka', 'luka', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--
-- Creation: Feb 10, 2021 at 11:19 PM
-- Last update: Feb 10, 2021 at 11:19 PM
--

CREATE TABLE `student`(
  `brojStudenta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imePrezimeStudenta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brojTelefona` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student``brojStudenta`, `imePrezimeStudenta`, `brojTelefona`) VALUES
('123456789', 'Pera Peric', '061 99 99 491'),
('147258369', 'Luka Lukic', '063 3322 235'),
('741963852', 'Jovan Jovanovic', '065 666 6666'),
('852963741', 'Maja Majic', '062 44 34 212');

-- --------------------------------------------------------

--
-- Table structure for table `predmet`
--
-- Creation: Feb 10, 2021 at 11:19 PM
-- Last update: Feb 10, 2021 at 11:19 PM
--

CREATE TABLE `predmet` (
  `predmetID` int(11) NOT NULL,
  `nazivPredmeta` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `predmet`
--

INSERT INTO `predmet` (`predmetID`, `nazivPredmeta`) VALUES
(1, 'Matematika 1'),
(2, 'Matematika 2'),
(3, 'UIS'),
(4, 'Projektovanje softvera'),
(5, 'Programiranje 1');

-- --------------------------------------------------------

--
-- Table structure for table `prijava`
--
-- Creation: Feb 10, 2021 at 11:19 PM
-- Last update: Feb 10, 2021 at 11:20 PM
--

CREATE TABLE `prijava` (
  `predmetID` int(11) NOT NULL,
  `brojStudenta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rokID` int(11) NOT NULL,
  `profesorID` int(11) NOT NULL,
  `brojPoena` int(11) NOT NULL DEFAULT 5,
  `datumPrijave` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prijava`
--

INSERT INTO `prijava` (`predmetID`, `brojStudenta`, `rokID`, `profesorID`, `brojPoena`, `datumPrijave`) VALUES
(1, '123456789', 1, 1, 100, '2018-02-16 15:07:57'),
(1, '123456789', 2, 2, 5, '2021-02-10 23:20:14'),
(1, '123456789', 3, 2, 5, '2021-02-10 23:20:19'),
(1, '123456789', 4, 2, 5, '2021-02-10 23:20:21'),
(1, '123456789', 5, 2, 5, '2021-02-10 23:20:23'),
(2, '123456789', 2, 2, 74, '2018-02-16 18:01:19'),
(2, '963852741', 1, 2, 59, '2018-02-16 15:07:57'),
(3, '852963741', 2, 2, 95, '2018-02-16 19:12:34'),
(4, '147258369', 4, 2, 57, '2018-02-16 19:12:41'),
(5, '123456789', 2, 2, 85, '2018-02-16 19:12:50');

-- --------------------------------------------------------

--
-- Table structure for table `rok`
--
-- Creation: Feb 10, 2021 at 11:19 PM
-- Last update: Feb 10, 2021 at 11:19 PM
--

CREATE TABLE `rok` (
  `rokID` int(11) NOT NULL,
  `nazivRoka` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `godinaUpisa` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rok`
--

INSERT INTO `rok` (`rokID`, `nazivRoka`, `godinaUpisa`) VALUES
(1, 'Februarski rok', '2017/2018'),
(2, 'Junski rok', '2017/2018'),
(3, 'Julski rok', '2017/2018'),
(4, 'Septembarski rok', '2017/2018'),
(5, 'Oktobarski rok', '2017/2018');

-- --------------------------------------------------------

--
-- Table structure for table `uloga`
--
-- Creation: Feb 10, 2021 at 11:19 PM
-- Last update: Feb 10, 2021 at 11:19 PM
--

CREATE TABLE `uloga` (
  `ulogaID` int(11) NOT NULL,
  `nazivUloge` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uloga`
--

INSERT INTO `uloga` (`ulogaID`, `nazivUloge`) VALUES
(1, 'Obican sluzbenik'),
(2, 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`profesorID`),
  ADD KEY `uloga` (`uloga`);

--
-- Indexes for table `student`
--
ALTER TABLE `studentt`
  ADD PRIMARY KEY (`brojStudenta`);

--
-- Indexes for table `predmet`
--
ALTER TABLE `predmet`
  ADD PRIMARY KEY (`predmetID`);

--
-- Indexes for table `prijava`
--
ALTER TABLE `prijava`
  ADD PRIMARY KEY (`predmetID`,`brojStudenta`,`rokID`),
  ADD KEY `rokID` (`rokID`),
  ADD KEY `brojStudenta` (`brojStudenta`);

--
-- Indexes for table `rok`
--
ALTER TABLE `rok`
  ADD PRIMARY KEY (`rokID`);

--
-- Indexes for table `uloga`
--
ALTER TABLE `uloga`
  ADD PRIMARY KEY (`ulogaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profesor`
--
ALTER TABLE `profesor`
  MODIFY `profesorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `predmet`
--
ALTER TABLE `predmet`
  MODIFY `predmetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rok`
--
ALTER TABLE `rok`
  MODIFY `rokID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uloga`
--
ALTER TABLE `uloga`
  MODIFY `ulogaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `sluzbenik_ibfk_1` FOREIGN KEY (`uloga`) REFERENCES `uloga` (`ulogaID`);

--
-- Constraints for table `prijava`
--
ALTER TABLE `prijava`
  ADD CONSTRAINT `prijava_ibfk_1` FOREIGN KEY (`predmetID`) REFERENCES `predmet` (`predmetID`),
  ADD CONSTRAINT `prijava_ibfk_2` FOREIGN KEY (`rokID`) REFERENCES `rok` (`rokID`),
  ADD CONSTRAINT `prijava_ibfk_3` FOREIGN KEY (`brojStudenta`) REFERENCES `student` (`brojStudenta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
