-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 07:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_qbrec`
--

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id` int(11) NOT NULL,
  `nama_jawaban` text NOT NULL,
  `id_soal` int(11) NOT NULL,
  `is_true` int(2) NOT NULL,
  `feedback_salah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id`, `nama_jawaban`, `id_soal`, `is_true`, `feedback_salah`) VALUES
(164, 'New York', 31, 1, ''),
(165, 'Cosmetic', 31, 1, ''),
(166, 'Taser', 31, 0, 'Weapon'),
(167, 'Tesla', 31, 0, 'Elon Musk'),
(168, 'Lipstic', 31, 1, ''),
(169, 'Perfume', 32, 1, ''),
(170, 'Pull', 32, 0, 'Incorrect bro'),
(171, 'QG', 32, 1, ''),
(172, 'Pain', 32, 0, 'That hurts'),
(173, 'Start Button', 32, 1, ''),
(174, 'Processor', 33, 0, 'No'),
(175, 'Blue', 33, 1, ''),
(176, 'TV Game', 33, 1, ''),
(177, 'Cola', 33, 1, ''),
(178, 'Mouse', 33, 0, 'Nope');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kotak_jawaban` text NOT NULL,
  `is_true` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `is_submitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `id_soal`, `id_user`, `kotak_jawaban`, `is_true`, `date_time`, `is_submitted`) VALUES
(211, 31, 13, 'New York', 1, '2022-07-20 19:02:01', 1),
(212, 31, 13, 'Taser', 0, '2022-07-20 19:02:01', 1),
(213, 31, 13, 'Tesla', 0, '2022-07-20 19:02:01', 1),
(214, 31, 13, 'Cosmetic', 1, '2022-07-20 19:02:07', 1),
(215, 31, 13, 'Tesla', 0, '2022-07-20 19:02:07', 1),
(216, 31, 13, 'Taser', 0, '2022-07-20 19:02:07', 1),
(217, 31, 13, 'Cosmetic', 1, '2022-07-20 19:02:13', 1),
(218, 31, 13, 'Lipstic', 1, '2022-07-20 19:02:13', 1),
(219, 31, 13, 'New York', 1, '2022-07-20 19:02:13', 1),
(220, 32, 13, 'Pain', 0, '2022-07-20 19:02:21', 1),
(221, 32, 13, 'QG', 1, '2022-07-20 19:02:21', 1),
(222, 32, 13, 'Start Button', 1, '2022-07-20 19:02:21', 1),
(223, 32, 13, 'QG', 1, '2022-07-20 19:02:27', 1),
(224, 32, 13, 'Perfume', 1, '2022-07-20 19:02:27', 1),
(225, 32, 13, 'Pull', 0, '2022-07-20 19:02:27', 1),
(226, 32, 13, 'QG', 1, '2022-07-20 19:02:39', 1),
(227, 32, 13, 'Perfume', 1, '2022-07-20 19:02:39', 1),
(228, 32, 13, 'Start Button', 1, '2022-07-20 19:02:39', 1),
(229, 33, 13, 'TV Game', 1, '2022-07-20 19:02:44', 1),
(230, 33, 13, 'Cola', 1, '2022-07-20 19:02:44', 1),
(231, 33, 13, 'Processor', 0, '2022-07-20 19:02:44', 1),
(232, 33, 13, 'TV Game', 1, '2022-07-20 19:02:50', 1),
(233, 33, 13, 'Blue', 1, '2022-07-20 19:02:50', 1),
(234, 33, 13, 'Cola', 1, '2022-07-20 19:02:51', 1),
(235, 31, 13, 'New York', 1, '2022-07-20 19:05:50', 1),
(236, 31, 13, 'Cosmetic', 1, '2022-07-20 19:05:50', 1),
(237, 31, 13, 'Lipstic', 1, '2022-07-20 19:05:50', 1),
(238, 32, 13, 'Perfume', 1, '2022-07-20 19:05:57', 1),
(239, 32, 13, 'QG', 1, '2022-07-20 19:05:58', 1),
(240, 32, 13, 'Start Button', 1, '2022-07-20 19:05:58', 1),
(241, 33, 13, 'TV Game', 1, '2022-07-20 19:06:04', 1),
(242, 33, 13, 'Blue', 1, '2022-07-20 19:06:04', 1),
(243, 33, 13, 'Cola', 1, '2022-07-20 19:06:04', 1),
(244, 31, 13, 'Cosmetic', 1, '2022-07-20 19:06:12', 1),
(245, 31, 13, 'New York', 1, '2022-07-20 19:06:12', 1),
(246, 31, 13, 'Lipstic', 1, '2022-07-20 19:06:12', 1),
(247, 32, 13, 'Perfume', 1, '2022-07-20 19:06:18', 1),
(248, 32, 13, 'QG', 1, '2022-07-20 19:06:18', 1),
(249, 32, 13, 'Start Button', 1, '2022-07-20 19:06:18', 1),
(250, 33, 13, 'Blue', 1, '2022-07-20 19:06:24', 1),
(251, 33, 13, 'TV Game', 1, '2022-07-20 19:06:25', 1),
(252, 33, 13, 'Cola', 1, '2022-07-20 19:06:25', 1),
(253, 31, 13, 'New York', 1, '2022-07-21 11:22:01', 1),
(254, 31, 13, 'Cosmetic', 1, '2022-07-21 11:22:01', 1),
(255, 31, 13, 'Tesla', 0, '2022-07-21 11:22:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id`, `pertanyaan`) VALUES
(31, 'Maybeline'),
(32, 'Push'),
(33, 'Pepsi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `status`) VALUES
(11, 'admin', 'admin', 'admin', 'admin'),
(13, 'ali', 'ali', 'Ali', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
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
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
