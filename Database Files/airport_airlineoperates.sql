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
-- Table structure for table `airport_airlineoperates`
--

CREATE TABLE `airport_airlineoperates` (
  `airlineID` int NOT NULL,
  `airlineName` varchar(50) NOT NULL,
  `placeID_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airport_airlineoperates`
--

INSERT INTO `airport_airlineoperates` (`airlineID`, `airlineName`, `placeID_id`) VALUES
(23, 'PIA', 1),
(24, 'Emirates', 1),
(25, 'Emirates', 2),
(26, 'Emirates', 3),
(27, 'Qatar Airways', 3),
(28, 'Qatar Airways', 4),
(29, 'Etihad Airways', 5),
(30, 'PIA', 6),
(31, 'Serene Air', 4),
(32, 'Air Blue', 1),
(33, 'PIA', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_airlineoperates`
--
ALTER TABLE `airport_airlineoperates`
  ADD PRIMARY KEY (`airlineID`),
  ADD KEY `airport_airlineopera_placeID_id_754761d0_fk_airport_t` (`placeID_id`),
  ADD KEY `airport_air_airline_c623a4_idx` (`airlineID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport_airlineoperates`
--
ALTER TABLE `airport_airlineoperates`
  MODIFY `airlineID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airport_airlineoperates`
--
ALTER TABLE `airport_airlineoperates`
  ADD CONSTRAINT `airport_airlineopera_placeID_id_754761d0_fk_airport_t` FOREIGN KEY (`placeID_id`) REFERENCES `airport_terminal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
