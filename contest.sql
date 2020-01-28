-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2020 at 05:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `contestname` varchar(30) NOT NULL,
  `startdate` date NOT NULL DEFAULT current_timestamp(),
  `starttime` timestamp NOT NULL DEFAULT current_timestamp(),
  `enddate` date NOT NULL DEFAULT current_timestamp(),
  `endtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `organizationname` varchar(30) NOT NULL,
  `organizationtype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`contestname`, `startdate`, `starttime`, `enddate`, `endtime`, `organizationname`, `organizationtype`) VALUES
('hello', '2020-01-26', '0000-00-00 00:00:00', '2020-01-19', '0000-00-00 00:00:00', 'vcettype', 'vcetname'),
('hello', '2020-01-26', '2020-01-16 20:29:00', '2020-01-26', '2020-01-30 20:29:00', 'vcetname', 'vcettype'),
('hello', '2020-01-26', '2020-01-17 07:29:00', '2020-01-26', '2020-01-25 08:29:00', 'vcetname', 'vcettype'),
('hello', '2020-01-26', '2020-01-25 07:30:00', '2020-01-26', '2020-01-12 08:29:00', 'vcetname', 'vcettype'),
('hello', '2020-01-26', '2020-01-25 07:30:00', '2020-01-26', '2020-01-12 08:29:00', 'vcetname', 'vcettype'),
('h1', '0000-00-00', '2020-01-26 12:19:27', '0000-00-00', '2020-01-26 12:19:27', 'shs', 'sdgfsd'),
('h1', '0000-00-00', '2020-01-26 12:19:32', '0000-00-00', '2020-01-26 12:19:32', 'shs', 'sdgfsd'),
('', '2020-01-26', '0000-00-00 00:00:00', '2020-01-26', '0000-00-00 00:00:00', '', ''),
('vcet', '2020-01-26', '2020-01-17 20:29:00', '2020-01-26', '2020-01-24 20:29:00', 'vcetname', 'vcettype');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
