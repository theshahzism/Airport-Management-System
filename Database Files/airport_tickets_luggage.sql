-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2023 at 07:24 PM
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
-- Table structure for table `airport_tickets_luggage`
--

CREATE TABLE `airport_tickets_luggage` (
  `luggageID` int NOT NULL,
  `weight` int NOT NULL,
  `seatNO_id` int NOT NULL,
  `ticketNO_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airport_tickets_luggage`
--

INSERT INTO `airport_tickets_luggage` (`luggageID`, `weight`, `seatNO_id`, `ticketNO_id`) VALUES
(2, 40, 1001, 1001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_tickets_luggage`
--
ALTER TABLE `airport_tickets_luggage`
  ADD PRIMARY KEY (`luggageID`),
  ADD KEY `airport_tickets_lugg_seatNO_id_1b7e926a_fk_airport_t` (`seatNO_id`),
  ADD KEY `airport_tickets_lugg_ticketNO_id_1e0667eb_fk_airport_t` (`ticketNO_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airport_tickets_luggage`
--
ALTER TABLE `airport_tickets_luggage`
  ADD CONSTRAINT `airport_tickets_lugg_seatNO_id_1b7e926a_fk_airport_t` FOREIGN KEY (`seatNO_id`) REFERENCES `airport_tickets` (`ticketNO`),
  ADD CONSTRAINT `airport_tickets_lugg_ticketNO_id_1e0667eb_fk_airport_t` FOREIGN KEY (`ticketNO_id`) REFERENCES `airport_tickets` (`ticketNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
