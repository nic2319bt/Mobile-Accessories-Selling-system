-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 01:04 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mass`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` int(11) NOT NULL,
  `agaddress` varchar(255) DEFAULT NULL,
  `agbranch` varchar(255) DEFAULT NULL,
  `agemail` varchar(255) DEFAULT NULL,
  `agmobile` int(11) NOT NULL,
  `agname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `agaddress`, `agbranch`, `agemail`, `agmobile`, `agname`) VALUES
(1, 'd', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `cus_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `product_id`, `customer_id`, `qty`, `quantity`, `cus_id`, `pid`) VALUES
(1, NULL, NULL, NULL, 1, NULL, 5),
(2, NULL, NULL, NULL, 1, NULL, 5),
(3, NULL, NULL, NULL, 1, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `catname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `catname`) VALUES
(1, 'Mobile & Tablet'),
(2, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `croles`
--

CREATE TABLE `croles` (
  `role_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(45) NOT NULL,
  `cus_address` varchar(45) NOT NULL,
  `cus_city` varchar(45) NOT NULL,
  `cus_email` varchar(45) NOT NULL,
  `cus_number` varchar(45) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_address`, `cus_city`, `cus_email`, `cus_number`, `password`, `username`) VALUES
(1, 'Amila', 'mA', 'Kurunegala', 'dsf', '546896', '$2a$10$P1Iays4/RxVqa5FiL7/m3u8wyFb9ywSg2iuoAHN.wYLc2OEsbCxlq', 'asb');

-- --------------------------------------------------------

--
-- Table structure for table `customer_role`
--

CREATE TABLE `customer_role` (
  `cus_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `daddress` varchar(255) DEFAULT NULL,
  `dname` varchar(255) DEFAULT NULL,
  `dnumber` int(11) NOT NULL,
  `vnumber` varchar(255) DEFAULT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'Ship'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `branch`, `daddress`, `dname`, `dnumber`, `vnumber`, `role`) VALUES
(1, 'Nugegoda', 'asdff , fhgh', 'Dens', 77962125, 'CBE 7928', 'Ship');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `cnu` int(11) NOT NULL DEFAULT 0,
  `cd` varchar(255) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pm` varchar(255) DEFAULT NULL,
  `recive` varchar(255) DEFAULT NULL,
  `ship` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `cn` varchar(255) DEFAULT NULL,
  `did` int(11) NOT NULL,
  `dname` varchar(255) DEFAULT NULL,
  `vnumber` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `branch`, `cnu`, `cd`, `pid`, `pname`, `pm`, `recive`, `ship`, `price`, `cn`, `did`, `dname`, `vnumber`, `role`) VALUES
(1, NULL, 0, NULL, 5, NULL, NULL, NULL, '', 0, NULL, 1, NULL, NULL, NULL),
(2, 'Nugegoda', 0, NULL, 5, 'f', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL),
(3, 'Nugegoda', 0, '', 10, 'aaa', '', NULL, 'Ship', 0, '', 1, NULL, NULL, NULL),
(4, 'Nugegoda', 0, '', 10, 'dgdgh', '', NULL, '', 0, '', 1, NULL, NULL, NULL),
(5, 'Galle', 0, '', 10, 'baskjbi', '', NULL, 'Ship', 0, '', 1, NULL, NULL, NULL),
(6, 'Nugegoda', 0, NULL, 10, 'addwa', NULL, NULL, 'Ship', 0, NULL, 0, NULL, NULL, NULL),
(7, 'Nugegoda', 0, NULL, 10, 'qqq', NULL, NULL, 'Ship', 0, NULL, 0, NULL, NULL, NULL),
(8, NULL, 0, NULL, 0, NULL, NULL, NULL, '', 0, NULL, 1, NULL, NULL, NULL),
(9, 'Nugegoda', 0, NULL, 11, 'aaasds', NULL, NULL, NULL, 123343, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `battery` varchar(255) DEFAULT NULL,
  `bcam` varchar(255) DEFAULT NULL,
  `bvideo` varchar(255) DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `dprotection` varchar(255) DEFAULT NULL,
  `dresulotion` varchar(255) DEFAULT NULL,
  `dsize` varchar(255) DEFAULT NULL,
  `dtype` varchar(255) DEFAULT NULL,
  `fcam` varchar(255) DEFAULT NULL,
  `fvideo` varchar(255) DEFAULT NULL,
  `gpu` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `rom` varchar(255) DEFAULT NULL,
  `warranty` varchar(255) DEFAULT NULL,
  `cat_id` int(11) DEFAULT 1,
  `subcat_id` int(11) DEFAULT 1,
  `branch` varchar(255) DEFAULT NULL,
  `cd` varchar(255) DEFAULT NULL,
  `cn` varchar(255) DEFAULT NULL,
  `cnu` int(11) NOT NULL DEFAULT 0,
  `pm` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `battery`, `bcam`, `bvideo`, `chipset`, `cpu`, `des`, `dprotection`, `dresulotion`, `dsize`, `dtype`, `fcam`, `fvideo`, `gpu`, `image_name`, `os`, `pname`, `price`, `qty`, `ram`, `rom`, `warranty`, `cat_id`, `subcat_id`, `branch`, `cd`, `cn`, `cnu`, `pm`) VALUES
(5, '233', '23', 'sd', 's', 'd', 'c', 'vvvvv', 'cv', 'cv', 'cv', 'cv', 'vc', 'bngv', '', 'fd', 'f', 1200, 5, '3f', '69', '2', 1, 1, NULL, NULL, NULL, 0, NULL),
(10, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5600, 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 0, NULL),
(11, '', '', '', '', '', 'efrwf', '', '', '', '', '', '', '', '559b7229-c382-4c40-a86f-90688459eccb.jpg', '', 'aaasds', 123343, 12, '', '', '1 Year', 0, 0, NULL, NULL, NULL, 0, NULL),
(12, '', '', '', '', '', 'sad', '', '', '', '', '', '', '', '157961-phones-review-hands-on-samsung-galaxy-z-fold-3-review-image1-coz70vermc.jpg', '', 'I phone', 0, 0, '', '', '1 Year', NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name`) VALUES
(1, 'SA'),
(2, 'Admin'),
(9, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `subcat_id` int(11) NOT NULL,
  `sub_cat_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`subcat_id`, `sub_cat_name`) VALUES
(1, 'Sony'),
(2, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `mnumber` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `enabled`, `address`, `branch`, `mnumber`, `name`, `email`) VALUES
(1, 'Amila', '$2a$10$P1Iays4/RxVqa5FiL7/m3u8wyFb9ywSg2iuoAHN.wYLc2OEsbCxlq', 1, 'm a', 'Kurunegal', 77646449, 'Amila Sampath', NULL),
(2, 'Sampath', '$2a$10$P1Iays4/RxVqa5FiL7/m3u8wyFb9ywSg2iuoAHN.wYLc2OEsbCxlq', 1, NULL, NULL, 0, 'Bandara', NULL),
(7, 'asb', '$2a$10$rQs4s5XkrhMFm9CHAwm14uxEUSxFR8oJMH5dpdqN37nzzaqgf0sn6', 0, 'MuruthawaIbbagamuwa', 'Nugegoda', 325466, 'Amila Sampath Bandara Wijekoon', 'wjamiladsmpath@gmail.com'),
(8, 'abc', '$2a$10$gFIrq8SR2aY/.cPlDhEPTu2G/vufudT3fhDhafzy6SHAvXL2.Z9eS', 1, 'Muruthawa\r\nIbbagamuwa', 'Nugegoda', 256561, 'Thennakoon Mudiyanselage Amila Sampath Bandara Wijekoon', 'wjamiladsmpath@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(7, 2),
(8, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_product_idx` (`product_id`),
  ADD KEY `fk_cart_customer_idx` (`customer_id`),
  ADD KEY `FKodyiq5sig9rhqa4wnr7s8f8dv` (`cus_id`),
  ADD KEY `FKg6kgrxa3wpp7hwg02k1k2d25f` (`pid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `croles`
--
ALTER TABLE `croles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `customer_role`
--
ALTER TABLE `customer_role`
  ADD PRIMARY KEY (`cus_id`),
  ADD KEY `FKms82jjkmu0v1fs5mnkbvkp1ux` (`role_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `FK5yhiu7ri51c4oigkb28skv0b2` (`cat_id`),
  ADD KEY `FK4v6ovmfyqcf4y55rqbxq3q5c1` (`subcat_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_fk_idx` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `croles`
--
ALTER TABLE `croles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `FKg6kgrxa3wpp7hwg02k1k2d25f` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`),
  ADD CONSTRAINT `FKodyiq5sig9rhqa4wnr7s8f8dv` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`),
  ADD CONSTRAINT `fk_cart_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`cus_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cart_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer_role`
--
ALTER TABLE `customer_role`
  ADD CONSTRAINT `FKcwltl1tx6h35xt736d9s9g7mw` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`),
  ADD CONSTRAINT `FKhfpoop4wxkxlxtlm6j6pqa827` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `FKms82jjkmu0v1fs5mnkbvkp1ux` FOREIGN KEY (`role_id`) REFERENCES `croles` (`role_id`);

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `role_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
