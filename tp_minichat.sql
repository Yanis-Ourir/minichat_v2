-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2023 at 04:55 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp_minichat`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `ip_adress` varchar(255) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `content`, `created_at`, `ip_adress`, `user_id`) VALUES
(1, 'Test', '2023-12-02 12:23:32', '::1', 1),
(2, 'test2', '2023-12-02 12:34:47', '::1', 1),
(3, 'Engage', '2023-12-02 12:36:54', '::1', 2),
(4, 'Xenoblade', '2023-12-02 12:59:26', '::1', 3),
(5, 'Xenoblade', '2023-12-02 15:51:44', '::1', 4),
(6, 'dsfbsfd', '2023-12-02 15:57:53', '::1', 5),
(7, 'ça va', '2023-12-02 15:58:49', '::1', 6),
(8, 'dsfsf', '2023-12-02 15:59:07', '::1', 7),
(9, 'dsvdsvsd', '2023-12-02 16:01:15', '::1', 8),
(10, 'boom', '2023-12-02 16:05:10', '::1', 9),
(11, 'fdhfdhfd', '2023-12-03 10:57:41', '::1', 10),
(12, 'fdhfdhd', '2023-12-03 10:58:15', '::1', 11),
(13, 'dfhbbd', '2023-12-03 11:00:10', '::1', 12),
(14, 'test', '2023-12-03 11:01:57', '::1', 1),
(15, 'rex', '2023-12-03 11:02:22', '::1', 13),
(16, 'les frères', '2023-12-03 11:20:12', '::1', 14),
(17, 'ça va', '2023-12-03 11:21:18', '::1', 15),
(18, 'et toi ?', '2023-12-03 11:21:40', '::1', 16),
(19, 'gfnfnfng', '2023-12-03 11:23:19', '::1', 17);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `created_at`, `color`) VALUES
(1, 'Yanis', '2023-12-02 12:23:16', ''),
(2, 'Ivy', '2023-12-02 12:36:54', ''),
(3, 'Mythra', '2023-12-02 12:59:26', ''),
(4, 'erzazerza', '2023-12-02 15:51:44', '#636dd8'),
(5, 'raaa', '2023-12-02 15:57:53', '#a3edf7'),
(6, 'salut', '2023-12-02 15:58:49', '#fcddbd'),
(7, 'sdfdsfsq', '2023-12-02 15:59:07', '#b72a5b'),
(8, 'bonjour', '2023-12-02 16:01:15', '#311add'),
(9, 'kafka', '2023-12-02 16:05:10', '#7ec4d6'),
(10, 'fdhgfhgfd', '2023-12-03 10:57:41', '#d6ff23'),
(11, 'sdgdsgdsgezrhj', '2023-12-03 10:58:15', '#a75cf2'),
(12, 'gfjngf,ndf,d', '2023-12-03 11:00:10', '#2448bf'),
(13, 'Pyra', '2023-12-03 11:02:22', '#b1deed'),
(14, 'oesh', '2023-12-03 11:20:12', '#fc4b74'),
(15, 'jure', '2023-12-03 11:21:18', '#ffc9d2'),
(16, 'dbbnernbe', '2023-12-03 11:21:40', '#a7efef'),
(17, 'raaayzen', '2023-12-03 11:23:19', '#7de8e0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
