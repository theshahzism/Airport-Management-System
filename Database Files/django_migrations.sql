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
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-16 17:40:03.588036'),
(2, 'auth', '0001_initial', '2023-07-16 17:42:13.539509'),
(3, 'admin', '0001_initial', '2023-07-16 17:42:41.689677'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-16 17:42:43.026198'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-16 17:42:43.869995'),
(6, 'airport', '0001_initial', '2023-07-16 17:45:32.258112'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-07-16 17:45:40.597412'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-07-16 17:45:51.815195'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-07-16 17:45:55.127394'),
(10, 'auth', '0004_alter_user_username_opts', '2023-07-16 17:45:56.661859'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-07-16 17:46:07.108979'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-07-16 17:46:08.036286'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-07-16 17:46:08.866352'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-07-16 17:46:22.329416'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-07-16 17:46:30.450548'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-07-16 17:46:33.739771'),
(17, 'auth', '0011_update_proxy_permissions', '2023-07-16 17:46:35.172244'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-07-16 17:46:46.132554'),
(19, 'sessions', '0001_initial', '2023-07-16 17:46:57.041036'),
(20, 'airport', '0002_mytickets_user', '2023-07-16 18:36:07.466083'),
(21, 'airport', '0003_alter_mytickets_user', '2023-07-16 20:23:02.671054'),
(22, 'airport', '0004_alter_mytickets_user', '2023-07-16 20:36:36.563272'),
(23, 'airport', '0005_alter_mytickets_user', '2023-07-16 20:44:38.595700'),
(24, 'airport', '0006_alter_mytickets_user', '2023-07-16 20:53:15.400401'),
(25, 'airport', '0007_mytickets_username', '2023-07-16 21:23:39.388923');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
