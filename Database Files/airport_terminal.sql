-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2023 at 07:23 PM
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
-- Table structure for table `airport_terminal`
--

CREATE TABLE `airport_terminal` (
  `id` bigint NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `placeID_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airport_terminal`
--

INSERT INTO `airport_terminal` (`id`, `capacity`, `location`, `placeID_id`) VALUES
(1, '5', 'south', 2),
(2, '4', 'west', 2),
(3, '2', 'west', 2),
(4, '3', 'east', 2),
(5, '7', 'north', 2),
(6, '6', 'south', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_terminal`
--
ALTER TABLE `airport_terminal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `airport_terminal_placeID_id_f0b78217_fk_airport_a` (`placeID_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport_terminal`
--
ALTER TABLE `airport_terminal`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airport_terminal`
--
ALTER TABLE `airport_terminal`
  ADD CONSTRAINT `airport_terminal_placeID_id_f0b78217_fk_airport_a` FOREIGN KEY (`placeID_id`) REFERENCES `airport_airportplace` (`placeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
