-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2023 at 07:25 PM
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
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add airline operates', 7, 'add_airlineoperates'),
(26, 'Can change airline operates', 7, 'change_airlineoperates'),
(27, 'Can delete airline operates', 7, 'delete_airlineoperates'),
(28, 'Can view airline operates', 7, 'view_airlineoperates'),
(29, 'Can add airport place', 8, 'add_airportplace'),
(30, 'Can change airport place', 8, 'change_airportplace'),
(31, 'Can delete airport place', 8, 'delete_airportplace'),
(32, 'Can view airport place', 8, 'view_airportplace'),
(33, 'Can add department', 9, 'add_department'),
(34, 'Can change department', 9, 'change_department'),
(35, 'Can delete department', 9, 'delete_department'),
(36, 'Can view department', 9, 'view_department'),
(37, 'Can add tickets', 10, 'add_tickets'),
(38, 'Can change tickets', 10, 'change_tickets'),
(39, 'Can delete tickets', 10, 'delete_tickets'),
(40, 'Can view tickets', 10, 'view_tickets'),
(41, 'Can add tickets_ luggage', 11, 'add_tickets_luggage'),
(42, 'Can change tickets_ luggage', 11, 'change_tickets_luggage'),
(43, 'Can delete tickets_ luggage', 11, 'delete_tickets_luggage'),
(44, 'Can view tickets_ luggage', 11, 'view_tickets_luggage'),
(45, 'Can add terminal', 12, 'add_terminal'),
(46, 'Can change terminal', 12, 'change_terminal'),
(47, 'Can delete terminal', 12, 'delete_terminal'),
(48, 'Can view terminal', 12, 'view_terminal'),
(49, 'Can add staff', 13, 'add_staff'),
(50, 'Can change staff', 13, 'change_staff'),
(51, 'Can delete staff', 13, 'delete_staff'),
(52, 'Can view staff', 13, 'view_staff'),
(53, 'Can add security', 14, 'add_security'),
(54, 'Can change security', 14, 'change_security'),
(55, 'Can delete security', 14, 'delete_security'),
(56, 'Can view security', 14, 'view_security'),
(57, 'Can add restaurants', 15, 'add_restaurants'),
(58, 'Can change restaurants', 15, 'change_restaurants'),
(59, 'Can delete restaurants', 15, 'delete_restaurants'),
(60, 'Can view restaurants', 15, 'view_restaurants'),
(61, 'Can add my tickets', 16, 'add_mytickets'),
(62, 'Can change my tickets', 16, 'change_mytickets'),
(63, 'Can delete my tickets', 16, 'delete_mytickets'),
(64, 'Can view my tickets', 16, 'view_mytickets'),
(65, 'Can add engineer', 17, 'add_engineer'),
(66, 'Can change engineer', 17, 'change_engineer'),
(67, 'Can delete engineer', 17, 'delete_engineer'),
(68, 'Can view engineer', 17, 'view_engineer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
