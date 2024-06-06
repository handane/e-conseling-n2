-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20240413.a6c56e6e0e
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 05:10 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `konselor`
--

CREATE TABLE `konselor` (
  `id_konselor` int(2) NOT NULL,
  `username_konselor` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `spesialisasi` varchar(255) NOT NULL,
  `foto_konselor` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konselor`
--

INSERT INTO `konselor` (`id_konselor`, `username_konselor`, `password`, `nama`, `spesialisasi`, `foto_konselor`) VALUES
(17, 'juan', 'juan', 'Juan', 'makan', 'foto11714891365.png');

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
  `status` varchar(25) NOT NULL,
  `bukti_konsul` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id`, `id_konselor`, `id_konseling`, `jenis_konsultasi`, `tanggal`, `jam`, `no_wa`, `permasalahan`, `status`, `bukti_konsul`) VALUES
(40, 17, 2, 'individu (1 orang)', '2024-05-09', '15:55', '089279874981', 'jfdlskajflkasf', 'selesai', 'dd1717686328.46'),
(41, 17, 2, 'individu (1 orang)', '2024-05-10', '10.12-12.00', '08080948732', 'jljf ioasiofisodfa', 'selesai', 'dd1717686226.png'),
(42, 17, 2, 'kelompok', '2024-05-07', '08:00 - 10:', '90809231', 'dfsakjfiosajf', 'menunggu verifikasi', ''),
(43, 17, 2, 'kelompok', '2024-05-17', '08:00 - 10:', '823939102381', 'fjsajfsakljl', 'menunggu verifikasi', ''),
(44, 17, 2, 'individu (1 orang)', '2024-05-21', '08:00 - 10:00', '80923809123', 'jkjsdlfkjaofsa', 'menunggu verifikasi', ''),
(45, 17, 2, 'individu (1 orang)', '2024-06-05', '10:00 - 12:00', '779879879532', 'fjsajfsakljl', 'menunggu verifikasi', ''),
(46, 17, 2, 'kelompok', '2024-06-02', '14:00 - 16:00', '234213123', 'okeokeoke', 'menunggu verifikasi', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_konseling`
--

CREATE TABLE `pengguna_konseling` (
  `id_konseling` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_pengguna` varchar(25) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna_konseling`
--

INSERT INTO `pengguna_konseling` (`id_konseling`, `username`, `password`, `nama_pengguna`, `no_telp`) VALUES
(2, 'aldous1', 'aldous1', 'aldous', '08231231'),
(3, 'halucard1', 'halucard1', 'halucard', '082318131');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `id` int(11) NOT NULL,
  `username_konselor` varchar(55) NOT NULL,
  `berlangsung` int(11) NOT NULL,
  `akan_datang` int(11) NOT NULL,
  `selesai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`id`, `username_konselor`, `berlangsung`, `akan_datang`, `selesai`) VALUES
(4, 'juan', 0, 5, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konselor`
--
ALTER TABLE `konselor`
  ADD PRIMARY KEY (`id_konselor`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna_konseling`
--
ALTER TABLE `pengguna_konseling`
  ADD PRIMARY KEY (`id_konseling`);

--
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konselor`
--
ALTER TABLE `konselor`
  MODIFY `id_konselor` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pengguna_konseling`
--
ALTER TABLE `pengguna_konseling`
  MODIFY `id_konseling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
