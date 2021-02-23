-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 08:55 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freshmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(4) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `stok` int(4) NOT NULL,
  `sumber` varchar(20) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `gambar` longblob NOT NULL,
  `ukuran` varchar(12) DEFAULT NULL,
  `hargaperkg` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(12) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `no_handphone` int(12) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kotakabupaten` varchar(18) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kelurahan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `no_handphone`, `alamat`, `kotakabupaten`, `kecamatan`, `kelurahan`) VALUES
(2, 'MFikriS', '1234567', 'muhammadfikriseptiawan@gmail.com', 123019, 'Jalan Manggis No.19 RT 001 RW ', 'Kota Tegal', 'Tegal Barat', 'Kraton'),
(3, 'Abc', 'Abcf', 'Abcd', 895645, 'Jajajd', 'Jdjd', 'Djjd', 'Dndj'),
(4, 'Abc', 'Abcf', 'Abcd', 895645, 'Jajajd', 'Jdjd', 'Djjd', 'Dndj'),
(5, 'Abc', 'Abcf', 'Abcd', 895645, 'Jajajd', 'Jdjd', 'Djjd', 'Dndj'),
(6, 'Coba', 'Cobalagi', '12345', 456789, 'Jalan jalan', 'Hshs', 'Bdhd', 'Hdud'),
(7, 'Fik', 'Fik', 'Fik@gmail.com', 8564325, 'Hyhb', 'Hhb', 'Bhb', 'Hyh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
