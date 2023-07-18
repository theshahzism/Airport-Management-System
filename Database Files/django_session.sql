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
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1bbftfq0dnfj3ugum9f9arpjn023gabe', '.eJxVjLkOAiEURf-F2hBgWC0t7PwG8oCHjAuTzNJo_HchmULbe849b-JhW4vfFpz9mMiRCHL43QLEO9YO0g3qdaJxqus8BtoVutOFXqaEj9Pu_gUKLKW9GVcJmMNggmHWSe0ioGWKu4HbwTCZEaLSImiIaXA2S5NAZ2ZF1EoI3qI9V-GJrXaG8QWVfL5j_T3t:1qL9I2:nY9oz2asTX0cNAwuM1U4MfeLty7xWLoaaAZl43m8JZ0', '2023-07-30 21:28:26.196007'),
('gez28eg4ybz9nluqkho9qln8v81qs4tq', '.eJxVjDsOwjAQBe_iGllr_Isp6XMGa9de4wBypDipEHeHSCmgfTPzXiLitta4dV7ilMVFWHH63QjTg9sO8h3bbZZpbusykdwVedAuxznz83q4fwcVe_3WUIYBrA-QKRAhozYOzkDBgEK0ViOTN6poTo4TFwPWBQwqeVJE2on3B-UzOB8:1qLInI:sebEcfXOcAx-r-TDCLlcN94YwwU5CIp6Y4MfyZtZFP8', '2023-07-31 07:37:20.617572'),
('h0n3rmgj9p44x11lhldb7b8tuqbsl9dz', '.eJxVjLkOAiEURf-F2hBgWC0t7PwG8oCHjAuTzNJo_HchmULbe849b-JhW4vfFpz9mMiRCHL43QLEO9YO0g3qdaJxqus8BtoVutOFXqaEj9Pu_gUKLKW9GVcJmMNggmHWSe0ioGWKu4HbwTCZEaLSImiIaXA2S5NAZ2ZF1EoI3qI9V-GJrXaG8QWVfL5j_T3t:1qLJwo:P34t7g49SOBmHlVEz7rHyKRL2S6-XIUPdvJ0yKBb274', '2023-07-31 08:51:14.515145'),
('j4setyjidjjug0uvob7640p2ng1whoan', '.eJxVjDsOwyAQBe9CHaFlDTakTJEuZ7AWWGLnA5I_TaLcPUZykbRv5s1b9LQuQ7_OPPVjFEeB4vC7eQp3zhXEG-VrkaHkZRq9rIrc6SwvJfLjtLt_gYHmYXs7FyCg8VpFA61qtGPsODlgYyw40Em7hpEUQYxkoUX2nUK2bBOS9lu05jI9eaudaXxRFp8vWvo-FA:1qLOGw:PSH0ATqitOn8F6XwIWKfRegEQIm4JbEnEtgruaI_ByU', '2023-07-31 13:28:18.222071'),
('ns6r4bnlppti3xfk97x8ctbu40gezadr', '.eJxVjDsOwyAQBe9CHaFlDTakTJEuZ7AWWGLnA5I_TaLcPUZykbRv5s1b9LQuQ7_OPPVjFEeB4vC7eQp3zhXEG-VrkaHkZRq9rIrc6SwvJfLjtLt_gYHmYXs7FyCg8VpFA61qtGPsODlgYyw40Em7hpEUQYxkoUX2nUK2bBOS9lu05jI9eaudaXxRFp8vWvo-FA:1qLmrR:NoFBXtIk0oU4u9N3GiGLZ05_8xstLcanV08I9uWjlkA', '2023-08-01 15:43:37.229838'),
('r3hocgum9fpkmqz99p4kcj145nnkub3g', '.eJxVjDsOwjAQBe_iGllegz-hpOcM0a69xgHiSHHSgLg7jpQC2jfz5i16XJfcr5XnfojiLLw4_G6E4cFlA_GO5TbJMJVlHkhuitxpldcp8vOyu3-BjDW3t_ZkiOCkMCmL2kKIhiBo8gY6CkBKQacBEwChguRZW2ecJT5ycp1q0S1XcORWWzLXjPk11FF8vsARQKM:1qLnuI:1XNUeG2NMs3RrC-eixEtAJW5lVzq-kGqtrYlANjWbHo', '2023-08-01 16:50:38.373735'),
('rjq7pesv6sujm70nvxq7u8z6jq7bfdz3', '.eJxVjEEOwiAQRe_C2hAoFBiX7nsGMjNQqRqalHZlvLtt0oVu_3vvv0XEbS1xa3mJUxJXocXldyPkZ64HSA-s91nyXNdlInko8qRNDnPKr9vp_h0UbGWvTTcyeCan0Y_eotbM0AUwvSJnOZAFYODeUTC7pAM4lZyipAIoZ4z4fAHVIjbx:1qL7JW:0VwM6DUA2UoydRkIVthqNZRkDWY8OFLdBv3DaqsITz8', '2023-07-30 19:21:50.115490');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
