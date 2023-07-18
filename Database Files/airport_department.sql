-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2023 at 07:12 PM
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
-- Table structure for table `airport_department`
--

CREATE TABLE `airport_department` (
  `IDno` int NOT NULL,
  `type` varchar(50) NOT NULL,
  `placeID_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airport_department`
--

INSERT INTO `airport_department` (`IDno`, `type`, `placeID_id`) VALUES
(1, 'Security', 3),
(2, 'Engineers', 3),
(3, 'Staff', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_department`
--
ALTER TABLE `airport_department`
  ADD PRIMARY KEY (`IDno`),
  ADD KEY `airport_dep_IDno_680aa5_idx` (`IDno`),
  ADD KEY `airport_department_placeID_id_4e113ff2_fk_airport_a` (`placeID_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport_department`
--
ALTER TABLE `airport_department`
  MODIFY `IDno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airport_department`
--
ALTER TABLE `airport_department`
  ADD CONSTRAINT `airport_department_placeID_id_4e113ff2_fk_airport_a` FOREIGN KEY (`placeID_id`) REFERENCES `airport_airportplace` (`placeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
