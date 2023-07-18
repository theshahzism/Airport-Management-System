-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2023 at 07:17 PM
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
-- Table structure for table `airport_mytickets`
--

CREATE TABLE `airport_mytickets` (
  `id` int NOT NULL,
  `ticketid_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airport_mytickets`
--

INSERT INTO `airport_mytickets` (`id`, `ticketid_id`, `user_id`, `username`) VALUES
(1001, 1001, NULL, 'Faizan'),
(1002, 1002, NULL, 'Faizan'),
(1003, 1003, NULL, 'Faizan'),
(1005, 1005, NULL, 'theshahzism'),
(1006, 1006, NULL, 'sameedfayiz'),
(1007, 1007, NULL, 'Faizan'),
(1009, 1009, NULL, 'Faizan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_mytickets`
--
ALTER TABLE `airport_mytickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `airport_mytickets_ticketid_id_26547b6d_fk_airport_t` (`ticketid_id`),
  ADD KEY `airport_mytickets_user_id_25d1fc38_fk_auth_user_id` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airport_mytickets`
--
ALTER TABLE `airport_mytickets`
  ADD CONSTRAINT `airport_mytickets_ticketid_id_26547b6d_fk_airport_t` FOREIGN KEY (`ticketid_id`) REFERENCES `airport_tickets` (`ticketNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
