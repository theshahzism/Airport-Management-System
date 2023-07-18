-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2023 at 07:26 PM
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
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-07-17 18:01:52.464467', '4', '4 - Malls', 1, '[{\"added\": {}}]', 8, 5),
(2, '2023-07-17 18:04:22.138956', '4', 'Palace ID=4, Type=Malls', 3, '', 8, 5),
(3, '2023-07-17 18:05:37.361179', '1', 'Place ID=Palace ID=1, Type=Restaurant, Brand=KFC', 1, '[{\"added\": {}}]', 15, 5),
(4, '2023-07-17 18:06:15.234093', '2', 'Place ID=Palace ID=1, Type=Restaurant, Brand=McDonalds', 1, '[{\"added\": {}}]', 15, 5),
(5, '2023-07-17 18:07:33.627560', '3', 'Place ID=Palace ID=1, Type=Restaurant, Brand=Dunkin Donuts', 1, '[{\"added\": {}}]', 15, 5),
(6, '2023-07-17 18:16:00.604610', '1', 'Department object (1)', 1, '[{\"added\": {}}]', 9, 5),
(7, '2023-07-17 18:19:34.907160', '2', 'ID=2, Type=Engineers, Place ID=Palace ID=3, Type=Department', 1, '[{\"added\": {}}]', 9, 5),
(8, '2023-07-17 18:20:04.833981', '3', 'ID=3, Type=Staff, Place ID=Palace ID=3, Type=Department', 1, '[{\"added\": {}}]', 9, 5),
(9, '2023-07-17 18:22:58.943515', '1', 'Engineer object (1)', 1, '[{\"added\": {}}]', 17, 5),
(10, '2023-07-17 18:24:11.166790', '2', 'ID=ID=2, Type=Engineers, Place ID=Palace ID=3, Type=Department, Engineer name=Faizan Soomro, Grade=18th', 1, '[{\"added\": {}}]', 17, 5),
(11, '2023-07-17 18:26:46.962384', '1', 'ID=ID=3, Type=Staff, Place ID=Palace ID=3, Type=Department, Staff name=Aaliyan Mansoor, Grade=17th', 1, '[{\"added\": {}}]', 13, 5),
(12, '2023-07-17 18:30:22.790356', '1', 'ID=ID=1, Type=Security, Place ID=Palace ID=3, Type=Department, Security Personnel name=Sameed Fayiz, Grade11th', 1, '[{\"added\": {}}]', 14, 5),
(13, '2023-07-17 18:55:57.218002', '1', 'Ticket=Arline ID=Place ID=Palace ID=2, Type=Terminal, Capacity=4, Location=west,Airline ID=25 Airline Name=Emirates, Ticket=1003, Seat=C2, Price=150, Class=Economy, Source=Karachi, Destination=Seoul, ', 1, '[{\"added\": {}}]', 11, 5),
(14, '2023-07-17 18:57:16.563304', '2', 'Ticket=Ticket=1001,Price=200, Class=Economy, Source=Karachi, Destination=Los Angeles, Departure Time=08:00:00, Arrival Time=10:30:00, Seat=Ticket=1001,Price=200, Class=Economy, Source=Karachi, Destina', 1, '[{\"added\": {}}]', 11, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
