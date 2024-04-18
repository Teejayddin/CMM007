-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 18, 2024 at 12:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `receipe-website`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `ingredients` text NOT NULL,
  `instructions` text NOT NULL,
  `more_content` text NOT NULL,
  `chef_id` int(11) DEFAULT NULL,
  `media_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `description`, `ingredients`, `instructions`, `more_content`, `chef_id`, `media_path`) VALUES
(1, 'fw', 'fwfw', 'fwwf', 'wf', '1', 1, ''),
(2, 'ww', 'wfw', 'wfw', 'wff', '1', 1, ''),
(3, 'ssdf', 'fffs', 'fsfsf', 'sfsfsf', 'fsfsfsf', 1, ''),
(4, 'ewe', 'wefrwer', 'werewr', 'erwerew', '0', 1, NULL),
(5, 'ffwe', 'fewfwe', 'fwfw', 'wfwefw', 'fw', 1, NULL),
(6, 'ffwe', 'fewfwe', 'fwfw', 'wfwefw', 'fw', 1, '../uploads/e2959947-4307-4552-948c-f10fe1844796.jpg'),
(7, 'ffew', 'gfwe', 'wfwfw', 'w', 'fwwfw', 1, '../uploads/GGlxYBlhiR9gyHECAO4LAIxsxiZMbmdjAAAF.mp4'),
(8, 'ffew', 'gfwe', 'wfwfw', 'w', 'fwwfw', 1, NULL),
(10, 'wqw', 'aff', 'rrfqf', '1r1qfqff', 'r11fqf', 2, '../uploads/download.png'),
(11, 'dd', 'fdsfsd', 'fsf', 'sfsg', 'twtwg', 2, '../uploads/download.png'),
(12, 'efweg', 'wegwegw', 'gwegwg', 'gwgwgw', 'wgwg', 2, '../uploads/1713393433.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','chef') DEFAULT 'chef'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'd', '$2y$10$PHERYP2m27Y3236to/Oem..nLrypXDVTEA8J.CpzWJdYC.KOKWIEK', 'chef'),
(2, 'chef2', '$2y$10$Eh4yDeYwbL.A23BhgXdnfO/J5KWB2KRTTESRKONLhpCf5NoCxzZFu', 'chef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chef_id` (`chef_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`chef_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
