-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 04:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `brand_description` text NOT NULL,
  `brand_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_description` text NOT NULL,
  `cat_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collage`
--

CREATE TABLE `collage` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(200) NOT NULL,
  `cust_email` varchar(500) NOT NULL,
  `cust_password` varchar(32) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_contact` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(11) NOT NULL,
  `ord_cust_id` int(11) DEFAULT NULL,
  `ord_date` varchar(20) DEFAULT NULL,
  `ord_status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ord_details`
--

CREATE TABLE `ord_details` (
  `ord_id` int(11) DEFAULT NULL,
  `ord_prd_id` int(11) DEFAULT NULL,
  `ord_quantity` int(11) DEFAULT NULL,
  `ord_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prd_details`
--

CREATE TABLE `prd_details` (
  `prd_id` int(11) DEFAULT NULL,
  `prd_name` varchar(100) DEFAULT NULL,
  `prd_price` int(11) DEFAULT NULL,
  `prd_image` text DEFAULT NULL,
  `prd_description` text DEFAULT NULL,
  `prd_quentity` int(11) DEFAULT NULL,
  `prd_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `prd_cat_id` int(11) DEFAULT NULL,
  `prd_brand_id` int(11) DEFAULT NULL,
  `prd_stauts` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL,
  `purchase_prd_id` int(11) DEFAULT NULL,
  `purchase_quantity` int(11) DEFAULT NULL,
  `purchase_cost_price` int(11) DEFAULT NULL,
  `purchase_sale_price` int(11) DEFAULT NULL,
  `purchase_date` varchar(35) DEFAULT NULL,
  `purchase_advance` int(11) DEFAULT NULL,
  `purchase_total` int(11) DEFAULT NULL,
  `purchase_balence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `sale_ord_id` int(11) DEFAULT NULL,
  `sale_mod_payment` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE `sales_return` (
  `sale_return_id` int(11) NOT NULL,
  `sale_return_sale_id` int(11) DEFAULT NULL,
  `sale_prd_id` int(11) DEFAULT NULL,
  `sale_return_quantity` int(11) DEFAULT NULL,
  `sale_return_data` varchar(25) DEFAULT NULL,
  `sale_return_cause_return` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup-user`
--

CREATE TABLE `signup-user` (
  `sr_number` int(3) NOT NULL,
  `full_name` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirm_password` varchar(50) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Phone_Number` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup-user`
--

INSERT INTO `signup-user` (`sr_number`, `full_name`, `username`, `email`, `password`, `confirm_password`, `Address`, `Phone_Number`) VALUES
(1, 'ankit', 'ankit', 'nikta@gmail.com', '99999999', '99999999', ' husdgduh', 467897688);

-- --------------------------------------------------------

--
-- Table structure for table `user-signup`
--

CREATE TABLE `user-signup` (
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users-signup`
--

CREATE TABLE `users-signup` (
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(150) NOT NULL,
  `vendor_company` varchar(100) NOT NULL,
  `vendor_ company_address` varchar(200) NOT NULL,
  `vendor_email` varchar(300) NOT NULL,
  `vendor_contact` varchar(24) NOT NULL,
  `vendor_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `ord_cust_id` (`ord_cust_id`);

--
-- Indexes for table `ord_details`
--
ALTER TABLE `ord_details`
  ADD KEY `ord_id` (`ord_id`),
  ADD KEY `ord_prd_id` (`ord_prd_id`);

--
-- Indexes for table `prd_details`
--
ALTER TABLE `prd_details`
  ADD KEY `prd_id` (`prd_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`),
  ADD KEY `prd_cat_id` (`prd_cat_id`),
  ADD KEY `prd_brand_id` (`prd_brand_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `purchase_prd_id` (`purchase_prd_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `sale_ord_id` (`sale_ord_id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD PRIMARY KEY (`sale_return_id`),
  ADD KEY `sale_prd_id` (`sale_prd_id`);

--
-- Indexes for table `signup-user`
--
ALTER TABLE `signup-user`
  ADD PRIMARY KEY (`sr_number`,`email`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
  MODIFY `sale_return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `ord_details`
--
ALTER TABLE `ord_details`
  ADD CONSTRAINT `ord_details_ibfk_1` FOREIGN KEY (`ord_id`) REFERENCES `orders` (`ord_id`),
  ADD CONSTRAINT `ord_details_ibfk_2` FOREIGN KEY (`ord_prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `prd_details`
--
ALTER TABLE `prd_details`
  ADD CONSTRAINT `prd_details_ibfk_1` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`prd_cat_id`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`prd_brand_id`) REFERENCES `brand` (`brand_id`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`purchase_prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`sale_ord_id`) REFERENCES `orders` (`ord_id`);

--
-- Constraints for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD CONSTRAINT `sales_return_ibfk_1` FOREIGN KEY (`sale_return_id`) REFERENCES `sales` (`sale_id`),
  ADD CONSTRAINT `sales_return_ibfk_2` FOREIGN KEY (`sale_prd_id`) REFERENCES `product` (`prd_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
