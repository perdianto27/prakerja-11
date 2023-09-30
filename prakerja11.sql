-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 30, 2023 at 04:54 AM
-- Server version: 8.1.0
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prakerja11`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `rating` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `rating`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Garis Biru', 'Drama keluarga tentang pasangan muda', 4.7, 'garis_biru.jpg', '2023-09-23 14:15:00', '2023-09-23 14:15:00'),
(2, 'Dilan 1990', 'Kisah cinta remaja Dilan dan Milea', 4.8, 'dilan_1990.jpg', '2023-09-23 15:30:00', '2023-09-23 15:30:00'),
(3, 'Laskar Pelangi', 'Petualangan sekelompok anak di Belitong', 4.5, 'laskar_pelangi.jpg', '2023-09-23 16:45:00', '2023-09-23 16:45:00'),
(4, 'My Stupid Boss', 'Komedi tentang hubungan bos dan karyawan', 4, 'my_stupid_boss.jpg', '2023-09-23 18:00:00', '2023-09-23 18:00:00'),
(5, 'Pengabdi Setan', 'Film horor tentang misteri keluarga', 4.6, 'pengabdi_setan.jpg', '2023-09-23 19:15:00', '2023-09-23 19:15:00'),
(9, 'Manusia setengah salmon', 'by Raditya Dika', 9, 'manusia_salmon.jpg', '2023-09-30 01:48:43', '2023-09-30 01:48:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
