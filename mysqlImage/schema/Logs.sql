-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2023 at 04:45 AM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rowdytable`
--

-- --------------------------------------------------------

--
-- Table structure for table `Logs`
--

CREATE TABLE `Logs` (
  `id` int NOT NULL,
  `tartable` varchar(32) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `seconds` time NOT NULL,
  `type` varchar(32) NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `Logs`
--

INSERT INTO `Logs` (`id`, `tartable`, `seconds`, `type`, `success`) VALUES
(1, '123', '00:01:23', '123', 1),
(2, 'Users', '00:00:00', 'Login', 0),
(3, 'Users', '00:00:00', 'Login', 0),
(4, 'Users', '00:00:00', 'Login', 1),
(5, 'Users', '00:00:00', 'Login', 1),
(6, 'Users', '00:00:00', 'Login', 0),
(7, 'Users', '00:00:00', 'Login', 0),
(8, 'Users', '00:00:00', 'Login', 0),
(9, 'Users', '00:00:00', 'Login', 0),
(10, 'Users', '00:00:00', 'Login', 0),
(11, 'Users', '00:00:00', 'Login', 1),
(12, 'Users', '00:00:00', 'Login', 1),
(13, 'Users', '00:00:00', 'Login', 1),
(14, 'Users', '00:00:00', 'Login', 1),
(15, 'Users', '00:00:00', 'Login', 1),
(16, 'Users', '00:00:00', 'Login', 1),
(17, 'Users', '00:00:00', 'Login', 1),
(18, 'Users', '00:00:00', 'Login', 1),
(19, 'Users', '00:00:00', 'Login', 0),
(20, 'Users', '00:00:00', 'Login', 0),
(21, 'Users', '00:00:00', 'Login', 0),
(22, 'Users', '00:00:00', 'Login', 1),
(23, 'Users', '00:00:00', 'Login', 1),
(24, 'Users', '00:00:00', 'Login', 1),
(25, 'Users', '00:00:00', 'Login', 1),
(26, 'Users', '00:00:00', 'Login', 1),
(27, 'Users', '00:00:00', 'Login', 1),
(28, 'Users', '00:00:00', 'Login', 0),
(29, 'Users', '00:00:00', 'Login', 0),
(30, 'Users', '00:00:00', 'Login', 1),
(31, 'Users', '00:00:00', 'Login', 1),
(32, 'Users', '00:00:00', 'Login', 1),
(33, 'Users', '00:00:00', 'Login', 0),
(34, 'Users', '00:00:00', 'Login', 1),
(35, 'Users', '00:00:00', 'Login', 1),
(36, 'Users', '00:00:00', 'Login', 1),
(37, 'Users', '00:00:00', 'Login', 1),
(38, 'Users', '00:00:00', 'Login', 1),
(39, 'Users', '00:00:00', 'Login', 1),
(40, 'Users', '00:00:00', 'Login', 1),
(41, 'Users', '00:00:00', 'Login', 1),
(42, 'Users', '00:00:00', 'Login', 0),
(43, 'Users', '00:00:00', 'Login', 0),
(44, 'Users', '00:00:00', 'Login', 0),
(45, 'Users', '00:00:00', 'Login', 0),
(46, 'Users', '00:00:00', 'Login', 1),
(47, 'Users', '00:00:00', 'Login', 1),
(48, 'Users', '00:00:00', 'Login', 1),
(49, 'Users', '00:00:00', 'Login', 1),
(50, 'Users', '00:00:00', 'Login', 1),
(51, 'Users', '00:00:00', 'Login', 1),
(52, 'Users', '00:00:00', 'Login', 1),
(53, 'Users', '00:00:00', 'Login', 1),
(54, 'Users', '00:00:00', 'Login', 1),
(55, 'Users', '00:00:00', 'Login', 1),
(56, 'Users', '00:00:00', 'Login', 0),
(57, 'Users', '00:00:00', 'Login', 1),
(58, 'Users', '00:00:00', 'Login', 0),
(59, 'Users', '00:00:00', 'Login', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Logs`
--
ALTER TABLE `Logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Logs`
--
ALTER TABLE `Logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
