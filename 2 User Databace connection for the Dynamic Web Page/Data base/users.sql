-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2023 at 07:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `secondName` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phonenumber` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirmPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `secondName`, `gender`, `phonenumber`, `email`, `password`, `confirmPassword`) VALUES
(1, 'Chiluveri', 'Chethankumar', 'M', 1111, 'cchiluve@gitam.in', 'Chethan@123', 'Chethan@123'),
(2, 'Revanth', 'G', 'M', 1122, 'Revanth@11gmail.com', 'Revanth@123', 'REvanth@123'),
(3, 'Venkatesh', 'V', 'M', 1234, 'Venkatesh@gmail.com', 'Venkatesh@123', 'Venkatesh@123'),
(4, 'Karthik', 'T', 'M', 2233, 'karthikpavansai1212@gmail.com', 'Karthik@123', 'Karthik@123'),
(5, 'Sai', 'Teja', 'M', 2222, 'Sai@gmail.com', 'Sai@123', 'Sau@123'),
(6, 'Sai', 'Teja', 'M', 123, 'Sai@gmail.com', 'Sai@123', 'Sau@123'),
(7, 'Sai', 'Teja', 'M', 123456789, 'Sai@gmail.com', 'Sai@123', 'Sau@123'),
(8, 'Sai', 'Teja', 'M', 2147483647, 'Sai@gmail.com', 'Sai@123', 'Sau@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
