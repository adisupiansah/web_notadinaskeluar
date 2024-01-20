-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 09:43 AM
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
-- Database: `web_notadinas`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `kepada` varchar(100) DEFAULT NULL,
  `perihal` char(250) DEFAULT NULL,
  `no_ndkeluar` varchar(100) DEFAULT NULL,
  `tanggal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `kepada`, `perihal`, `no_ndkeluar`, `tanggal`) VALUES
(46, 'Yth. Kapolres karimun', 'pengajuan permintaan senjata api laras panjang', 'B/ND-01/I/LOG.2./2024', '2024-01-09'),
(47, 'Yth. Kapolres karimun', 'Permohonan harwat r4', 'B/ND-02/I/LOG./2024', '2024-01-04'),
(48, 'Yth. Kapolres karimun', 'pelaksanaan rapat di ruangan ppk', 'B/ND-03/I/LOG./2024', '2024-01-10'),
(49, 'Yth. Kabaglog', 'permohonan pergantian baterai laptop', 'B/ND-04/I/LOG./2023/Baglog', '2024-01-11'),
(50, 'Yth. Kapolres', 'Permohonan harwat R2', 'B/ND-05/I/LOG./2024', '2024-01-15'),
(51, 'Yth.kapolres', 'pengajuan anggaran biaya pembayaran listrik Polres Karimun', 'B/ND-06/I/LOG./2024', '2024-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'adisu', '$2y$10$fKaOmkJqKL5DTEKAX1dameFHTQPQXoCFXLF.6i9pKHlZ.wRnsFN1O'),
(2, 'admin', '$2y$10$v1XzH2nd0pCSMtFVZUZgse7V7ZyRHHYCx6KjSSfm1REAsGU5XTqqy'),
(3, 'baglog', '$2y$10$7OHF5WmrGtJzIGL4JxEuUeJH.o4GeAG.1IfRqKUotqYgXhfmX5TMa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
