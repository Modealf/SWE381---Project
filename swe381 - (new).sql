-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 11:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swe381`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `stadium_id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `reply` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `stadium_id`, `user`, `subject`, `msg`, `reply`) VALUES
(8, 6, 'Moala057@gmail.com', '١١١ عال', 'kajsbflajkvbnlaksdnclkahcl;kajcsa', 'la la');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `stadium_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `filename`, `stadium_id`) VALUES
(1, 'trdgyhfrgtyh.png', 3),
(2, '', 0),
(3, 'trdgyhfrgtyh.png', 3),
(4, 'trdgyhfrgtyh.png', 3),
(6, 'Screenshot (15).png', 5),
(7, 'Screenshot (16).png', 6),
(8, '', 5),
(9, '1.jpeg', 5),
(10, 'Screenshot (20).png', 8);

-- --------------------------------------------------------

--
-- Table structure for table `pitch`
--

CREATE TABLE `pitch` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pitch`
--

INSERT INTO `pitch` (`id`, `email`, `pwd`, `firstName`, `lastName`) VALUES
(2, 'Moala057@gmail.com', ' Mohammed2015', 'Mohammed', 'alfadl');

-- --------------------------------------------------------

--
-- Table structure for table `renting_slot`
--

CREATE TABLE `renting_slot` (
  `id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `stadium_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `renting_slot`
--

INSERT INTO `renting_slot` (`id`, `day`, `start_time`, `end_time`, `stadium_id`) VALUES
(1, '2022-11-11', '22:55', '22:56', 3),
(2, '2022-11-09', '23:03', '23:05', 3),
(3, '2024-01-26', '11:48', '01:47', 5),
(4, '2023-12-07', '22:48', '23:48', 5),
(5, '2023-12-08', '03:13', '04:13', 8),
(6, '2023-12-08', '04:13', '04:13', 8);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `contacts_id` int(11) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `stadium_id` int(11) NOT NULL,
  `renting_slot_id` int(11) NOT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `Statues` varchar(255) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `user`, `stadium_id`, `renting_slot_id`, `msg`, `Statues`) VALUES
(9, 'Moala057@gmail.com', 5, 3, 'skjdbvkjbasdv', 'canceled'),
(10, 'Moala057@gmail.com', 5, 3, 'adsvgnalknvlakdv', 'Confirmed'),
(11, 'Moala057@gmail.com', 5, 3, 'adsvasdvasd a ', 'Confirmed'),
(12, 'Moala057@gmail.com', 5, 3, 'advbadvbad ', 'Pending'),
(13, 'Moala057@gmail.com', 5, 3, 'qegvadvav', 'Pending'),
(14, 'Moala057@gmail.com', 5, 3, 'vad', 'Pending'),
(15, 'Moala057@gmail.com', 5, 3, 'vadava', 'Pending'),
(16, 'Moala057@gmail.com', 5, 3, 'vadad', 'Pending'),
(17, 'Moala057@gmail.com', 5, 3, 'advdavava', 'Pending'),
(18, 'Moala057@gmail.com', 5, 3, 'advadvcavavdav', 'Pending'),
(19, 'Moala057@gmail.com', 5, 3, 'csacazxc', 'Pending'),
(20, 'Moala057@gmail.com', 5, 3, 'adxv azx axv av', 'Pending'),
(21, 'Moala057@gmail.com', 5, 3, 'adv acvavsbh', 'Pending'),
(22, 'Moala057@gmail.com', 5, 3, 'vavcadvavadv', 'Pending'),
(23, 'Moala057@gmail.com', 5, 3, 'dvdavavadv', 'Pending'),
(24, 'Moala057@gmail.com', 5, 3, 'vadvadvsdv', 'Pending'),
(25, 'Moala057@gmail.com', 5, 3, 'kjhb', 'Pending'),
(28, 'Moala057@gmail.com', 8, 6, 'gucvjhvv', 'Confirmed'),
(29, 'Moala057@gmail.com', 8, 5, 'cascasc', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `stadium`
--

CREATE TABLE `stadium` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descreption` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stadium`
--

INSERT INTO `stadium` (`id`, `name`, `descreption`, `location`, `username`) VALUES
(5, 'Modealf', 'sfdbsndsfb', 'mvoiasnv', 'Moala057@gmail.com'),
(6, 'anas', 'sajdbvolqabvjaqdbvaxmcb', 'mvoiasnv', 'Moala057@gmail.com'),
(7, 'Bag Handle', 'fdbn dbxxcv', 'mvoiasnv', 'Moala057@gmail.com'),
(8, 'Women', 'vaxvaxvcaxcascvc', 'mvoiasnv', 'Moala057@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` char(50) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `pwd`, `firstName`, `lastName`) VALUES
(2, 'Moala057@gmail.com', '12', 'Mohammed', 'alfadl'),
(3, 'azoz.m.alwaalan@gmail.com', '1', 'Mohammed', 'az'),
(4, 'test@gmail.com', 'm123', 'm', 'e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pitch`
--
ALTER TABLE `pitch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renting_slot`
--
ALTER TABLE `renting_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stadium`
--
ALTER TABLE `stadium`
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pitch`
--
ALTER TABLE `pitch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `renting_slot`
--
ALTER TABLE `renting_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `stadium`
--
ALTER TABLE `stadium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
