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
-- Table structure for table `airport_restaurants`
--

CREATE TABLE `airport_restaurants` (
  `id` bigint NOT NULL,
  `brand` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `placeID_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airport_restaurants`
--

INSERT INTO `airport_restaurants` (`id`, `brand`, `location`, `placeID_id`) VALUES
(1, 'KFC', 'Ground Floor', 1),
(2, 'McDonalds', 'Parking', 1),
(3, 'Dunkin Donuts', 'Arrival Area', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_restaurants`
--
ALTER TABLE `airport_restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `airport_restaurants_placeID_id_ad2a08a0_fk_airport_a` (`placeID_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport_restaurants`
--
ALTER TABLE `airport_restaurants`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airport_restaurants`
--
ALTER TABLE `airport_restaurants`
  ADD CONSTRAINT `airport_restaurants_placeID_id_ad2a08a0_fk_airport_a` FOREIGN KEY (`placeID_id`) REFERENCES `airport_airportplace` (`placeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
