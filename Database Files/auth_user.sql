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
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$GqcX0MsGOBi2iu75zPer6W$IHFZL0dnBKYAZc1fQcqofEG6G0OQpFbbeVRRxDsvIm0=', '2023-07-16 19:21:48.390426', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-07-16 19:21:18.046084'),
(2, 'pbkdf2_sha256$600000$x4Cep49a76ERK2cp60lV9h$nMKKhbe+irSSd/OQkiPlLwByxbhpEUd24pGHHQbAQUo=', '2023-07-18 15:43:36.681158', 0, 'faizan', 'Muhammad Faizan', 'Soomroooo', 'checkchange@gmail.com', 0, 1, '2023-07-16 19:22:53.860152'),
(3, 'pbkdf2_sha256$600000$HYZ24oFFVHrHmgCzJvHBqd$94gSV155M8wQ+w+n/5/UY/Tue1N0EAjPw6c3z83kdjg=', '2023-07-17 23:18:03.766303', 0, 'faixi', 'Faizan', 'Soomro', 'check@gmail.com', 0, 1, '2023-07-16 19:28:28.002851'),
(4, 'pbkdf2_sha256$600000$MLE6VvfCkOpGCN9Kkky2iv$EEffp4Ag8IJLQ9MD650LjstQiQhyU0pPHyhQxjOcJFo=', '2023-07-17 06:33:54.466383', 0, 'faixii', 'Faizan', 'Soomro', 'defaultermfs@gmail.com', 0, 1, '2023-07-17 06:33:37.439310'),
(5, 'pbkdf2_sha256$600000$rTxPPqumKuiXZt54xEVdAp$bR9wk9FPSe+FF7mu5qq5EqH//WKC65c+YJ5XFTSoMhY=', '2023-07-17 19:04:30.740773', 1, 'admin1', '', '', 'admin@gmail.com', 1, 1, '2023-07-17 07:36:15.160721'),
(7, 'pbkdf2_sha256$600000$6OomZmFJrSQV5fUHD8B20s$mz+xEOTNdf4CQTDeqb+FiCI2LhO8qQnbdJ58eWrlgi4=', '2023-07-18 13:33:50.056845', 0, 'sameedfayiz', 'sameed', 'fayiz', 'sameedfayiz@gmail.com', 0, 1, '2023-07-17 16:24:39.528549'),
(8, 'pbkdf2_sha256$600000$dNQTfVrGO48ue6s32tftuv$OIzhu/FzvNkgv9G4Yh9vhmIOhE8iQPqvcaJizfDlVz8=', '2023-07-18 16:50:37.936984', 0, 'theshahzism', 'Shahzain', 'Hassan', 'shahzain.hassan.1@gmail.com', 0, 1, '2023-07-18 16:50:14.115888');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
