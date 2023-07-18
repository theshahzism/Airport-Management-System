-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2023 at 07:19 PM
-- Server version: 8.0.33
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airport`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport_security`
--

CREATE TABLE `airport_security` (
  `id` bigint NOT NULL,
  `secName` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `IDno_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airport_security`
--

INSERT INTO `airport_security` (`id`, `secName`, `grade`, `IDno_id`) VALUES
(1, 'Sameed Fayiz', '11th', 1),
(2, 'Ahmed', '14th', 1),
(3, 'Umar', '14th', 1),
(4, 'Joseph', '14th', 1),
(5, 'Jessica', '14th', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_security`
--
ALTER TABLE `airport_security`
  ADD PRIMARY KEY (`id`),
  ADD KEY `airport_security_IDno_id_27cef244_fk_airport_department_IDno` (`IDno_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport_security`
--
ALTER TABLE `airport_security`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airport_security`
--
ALTER TABLE `airport_security`
  ADD CONSTRAINT `airport_security_IDno_id_27cef244_fk_airport_department_IDno` FOREIGN KEY (`IDno_id`) REFERENCES `airport_department` (`IDno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
