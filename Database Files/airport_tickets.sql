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
-- Table structure for table `airport_tickets`
--

CREATE TABLE `airport_tickets` (
  `ticketNO` int NOT NULL,
  `seatNO` varchar(50) NOT NULL,
  `price` bigint UNSIGNED NOT NULL,
  `airlineClass` varchar(50) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `departureTime` time(6) NOT NULL,
  `arrivalTime` time(6) NOT NULL,
  `airlineID_id` int NOT NULL
) ;

--
-- Dumping data for table `airport_tickets`
--

INSERT INTO `airport_tickets` (`ticketNO`, `seatNO`, `price`, `airlineClass`, `source`, `destination`, `departureTime`, `arrivalTime`, `airlineID_id`) VALUES
(1001, 'A1', 200, 'Economy', 'Karachi', 'Los Angeles', '08:00:00.000000', '10:30:00.000000', 23),
(1002, 'B3', 350, 'Business', 'Karachi', 'Paris', '15:30:00.000000', '17:00:00.000000', 24),
(1003, 'C2', 150, 'Economy', 'Karachi', 'Rome', '09:45:00.000000', '11:15:00.000000', 25),
(1005, 'F1', 250, 'Economy', 'Karachi', 'Cairo', '19:15:00.000000', '21:00:00.000000', 32),
(1006, 'A2', 300, 'Business', 'Karachi', 'London', '10:30:00.000000', '14:00:00.000000', 25),
(1007, 'B4', 400, 'Economy', 'Karachi', 'Rome', '16:45:00.000000', '19:00:00.000000', 31),
(1009, 'D3', 450, 'First Class', 'Karachi', 'Istanbul', '08:30:00.000000', '12:00:00.000000', 27),
(1011, 'A3', 320, 'Business', 'London', 'Karachi', '17:00:00.000000', '21:30:00.000000', 27),
(1012, 'B1', 380, 'Economy', 'Rome', 'Karachi', '09:30:00.000000', '11:15:00.000000', 28),
(1013, 'C3', 160, 'Economy', 'Melbourne', 'Karachi', '14:45:00.000000', '16:30:00.000000', 28),
(1014, 'D2', 550, 'First Class', 'Cairo', 'Karachi', '18:00:00.000000', '20:30:00.000000', 29),
(1015, 'F3', 280, 'Economy', 'Istanbul', 'Karachi', '10:15:00.000000', '11:45:00.000000', 27),
(1016, 'A4', 290, 'Business', 'New York', 'Karachi', '15:30:00.000000', '19:45:00.000000', 29),
(1017, 'B2', 420, 'Economy', 'Barcelona', 'Karachi', '12:45:00.000000', '14:30:00.000000', 26),
(1018, 'C4', 140, 'Economy', 'Sydney', 'Karachi', '08:00:00.000000', '09:30:00.000000', 30),
(1019, 'D1', 490, 'First Class', 'Dubai', 'Karachi', '17:15:00.000000', '19:00:00.000000', 30),
(1020, 'E3', 240, 'Economy', 'Beijing', 'Karachi', '10:30:00.000000', '12:00:00.000000', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_tickets`
--
ALTER TABLE `airport_tickets`
  ADD PRIMARY KEY (`ticketNO`),
  ADD KEY `airport_tickets_airlineID_id_d83f02c4_fk_airport_a` (`airlineID_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airport_tickets`
--
ALTER TABLE `airport_tickets`
  ADD CONSTRAINT `airport_tickets_airlineID_id_d83f02c4_fk_airport_a` FOREIGN KEY (`airlineID_id`) REFERENCES `airport_airlineoperates` (`airlineID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
