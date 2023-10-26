-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2023 at 02:42 PM
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
-- Database: `electric-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `sid` int(11) NOT NULL,
  `pid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `status` enum('active','purchased') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`sid`, `pid`, `uid`, `product`, `price`, `quantity`, `status`) VALUES
(232, 44, 1, 'Cake', 1000, 1, 'active'),
(233, 44, 1, 'Cake', 1000, 1, 'active'),
(236, 44, 27, 'Cake', 1000, 1, 'active'),
(241, 43, 2, 'dairy milk', 100, 3, 'active'),
(242, 15, 2, 'Obeservation', 40, 1, 'active'),
(249, 44, 1, 'Cake', 1000, 3, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(100) NOT NULL,
  `customer_fname` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pwd` varchar(100) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_role` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_fname`, `customer_email`, `customer_pwd`, `customer_phone`, `customer_address`, `customer_role`) VALUES
(1, 'chethan', 'chethan@gmail.com', 'Chethan@123', '9182419079', 'Gadwal', 'admin'),
(2, 'Revanth', 'revanth@gmail.com', 'Revanth@123', '7396450111', 'Hyd', 'normal'),
(3, 'Venkatesh', 'venkatesh@gmail.com', 'Venkatesh@123', '7993352502', 'hyd', 'normal'),
(4, 'Karthik', 'karthik@gmail.com', 'Karthik@123', '7671031512', 'Hyd', 'normal'),
(26, 'Sai teja', 'sai@gamil.com', 'Sai@123', '7733234970', 'sangareddy', 'normal'),
(27, 'bharath', 'jkallam@gitam.in', 'Gitam@shopping', '8309866042', 'Hyderabad ', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_catag` varchar(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_date` varchar(50) NOT NULL,
  `product_img` text NOT NULL,
  `product_left` int(100) NOT NULL,
  `product_author` varchar(100) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_catag`, `product_title`, `product_price`, `product_desc`, `product_date`, `product_img`, `product_left`, `product_author`) VALUES
(5, 'Sports', 'SS Cricket Bat', 10000, 'SS EW BAT VALARIE 4.0 GRADE 5 English Willow Cricket Bat ( Size: SMALL MENS,Leather Ball )', '10, Aug, 2023', 'SP4.jpg', 56, 'VENKATESH'),
(6, 'Sports', 'Racquet', 5000, 'YONEX Badminton Racquet Astrox 01 Clear (Rotational Generator System, AERO + Box Frame, 28 Lbs Tension)& Mavis 500', '10, Aug, 2023', 'SP3.jpg', 30, 'VENKATESH'),
(7, 'Sports', 'Basketball', 500, 'KUYOTQ Kids/Youth Leather Basketball 27.5\" Size 5 Indoor Outdoor Boys Premium Composite Leather Small Basketball Teen Boys Girls Game Ball Gift Basketball(Deflated)', '10, Aug, 2023', 'SP2.jpg', 50, 'VENKATESH'),
(8, 'Sports', 'Cricket Ball', 500, 'SG Seamer Leather Cricket Ball, Adult Size, (Red)', '10, Aug, 2023', 'SP1.jpg', 40, 'VENKATESH'),
(9, 'Laboratory', 'Litmus Papers', 200, 'RG� Combo Pack of 100 Blue and 100 Red Litmus Papers for Testing Acid and Base Solutions, Activity Laboratory Industrial Scientific Experiment', '11, Oct, 2023', 'Lab4.jpg', 49, 'KARTHIK'),
(10, 'Laboratory', ' PPE Kit Coverall Suit', 500, 'Elect Store | PPE Kit Coverall Suit, Hand Gloves & Head Cap, Face Shield & Goggle,3 PLY Face Mask, Shoe Cover and Disposable Bag in Random Colour Pack of 1', '11, Oct, 2023', 'Lab3.jpg', 45, 'KARTHIK'),
(11, 'Laboratory', 'Microscope', 10000, 'SSU Binocular Microscope Led Light, 4X5X4 Cm', '11, Oct, 2023', 'Lab2.jpg', 56, 'KARTHIK'),
(12, 'Laboratory', 'Thermometer', 8000, 'Thermco ACC2457S Spirit Filled Thermometer for Incubators and Water Baths, 25-37-56°C Range, 76mm Immersion', '11, Oct, 2023', 'Lab1.jpg', 45, 'KARTHIK'),
(13, 'Books', 'JAVA', 5000, 'Core Java: Advanced Features, Volume 2 (Oracle Press Java) Paperback – Import, 15 April 2022', ' 24, Oct 2023', '4.jpg', 100, 'Revanth'),
(14, 'Books', 'Record', 60, 'Gitma Record book for the lab', '24,Oct,2023', '3.jpg', 25, 'Revanth'),
(15, 'Books', 'Obeservation', 40, 'Gitam Obeservation for the Lab', '24,Oct,2023', '2.jpg', 120, 'Revanth'),
(16, 'Books', 'Assignment', 30, 'Gitam Assignment book for Assignmentes', '24,Oct,2023', '1.jpg', 25, 'Revanth'),
(43, 'food', 'dairy milk', 100, 'Cadbury Dairy Milk Silk Chocolate Bar, Pack of 3 x 150g', '22,10,2023', 'food1.jpg', 50, 'chethan'),
(44, 'food', 'Cake', 1000, ' This cake is hand delivered in a good quality cardboard box. Weight- 1/2 Kg', '22,10,2023', 'food3.jpg', 25, 'chethan'),
(45, 'food', 'kinder joy', 45, 'made of two soft cream layers – one sweet milk-cream flavored and one cocoa flavored', '23,10,2023', 'food2.jpg', 24, 'chethan');

-- --------------------------------------------------------

--
-- Table structure for table `servicestatus`
--

CREATE TABLE `servicestatus` (
  `sid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `pid` int(11) DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `website_name` varchar(60) NOT NULL,
  `website_logo` varchar(50) NOT NULL,
  `website_footer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`website_name`, `website_logo`, `website_footer`) VALUES
('gitam-online-shopping', 'logo.png', '&copy; Gitam Online Shopping 2023 <br> All right reserved.');

-- --------------------------------------------------------

--
-- Table structure for table `soldproducts`
--

CREATE TABLE `soldproducts` (
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(50) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `date` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `servicestatus`
--
ALTER TABLE `servicestatus`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `soldproducts`
--
ALTER TABLE `soldproducts`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `servicestatus`
--
ALTER TABLE `servicestatus`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `soldproducts`
--
ALTER TABLE `soldproducts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
