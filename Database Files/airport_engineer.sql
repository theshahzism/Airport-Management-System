-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2023 at 07:16 PM
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
-- Table structure for table `airport_engineer`
--

CREATE TABLE `airport_engineer` (
  `id` bigint NOT NULL,
  `engName` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `IDno_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airport_engineer`
--

INSERT INTO `airport_engineer` (`id`, `engName`, `grade`, `IDno_id`) VALUES
(1, 'Syed Shahzain Hassan', '18th', 2),
(2, 'Faizan Soomro', '18th', 2),
(3, 'Sameed', '18th', 2),
(4, 'Aliyaan', '18th', 2),
(5, 'John', '17th', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_engineer`
--
ALTER TABLE `airport_engineer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `airport_engineer_IDno_id_91f0746e_fk_airport_department_IDno` (`IDno_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport_engineer`
--
ALTER TABLE `airport_engineer`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airport_engineer`
--
ALTER TABLE `airport_engineer`
  ADD CONSTRAINT `airport_engineer_IDno_id_91f0746e_fk_airport_department_IDno` FOREIGN KEY (`IDno_id`) REFERENCES `airport_department` (`IDno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
