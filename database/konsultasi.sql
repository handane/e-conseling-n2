-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20240413.a6c56e6e0e
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 09:27 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-konseling`
--

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id` int(11) NOT NULL,
  `id_konselor` int(5) NOT NULL,
  `id_konseling` int(5) NOT NULL,
  `jenis_konsultasi` varchar(55) NOT NULL,
  `tanggal` varchar(111) NOT NULL,
  `jam` varchar(111) NOT NULL,
  `no_wa` varchar(15) NOT NULL,
  `permasalahan` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id`, `id_konselor`, `id_konseling`, `jenis_konsultasi`, `tanggal`, `jam`, `no_wa`, `permasalahan`, `status`) VALUES
(40, 17, 2, 'individu (1 orang)', '2024-05-09', '15:55', '089279874981', 'jfdlskajflkasf', 'menunggu verifikasi'),
(41, 17, 2, 'individu (1 orang)', '2024-05-10', '10.12-12.00', '08080948732', 'jljf ioasiofisodfa', 'menunggu verifikasi'),
(42, 17, 2, 'kelompok', '2024-05-07', '08:00 - 10:', '90809231', 'dfsakjfiosajf', 'menunggu verifikasi'),
(43, 17, 2, 'kelompok', '2024-05-17', '08:00 - 10:', '823939102381', 'fjsajfsakljl', 'menunggu verifikasi'),
(44, 17, 2, 'individu (1 orang)', '2024-05-21', '08:00 - 10:00', '80923809123', 'jkjsdlfkjaofsa', 'menunggu verifikasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
