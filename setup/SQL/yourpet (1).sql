-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 12:21 AM
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
-- Database: `yourpet`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `FK_user_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `total_price` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `FK_user_id`, `order_date`, `total_price`) VALUES
(0, 18, '2024-05-07 22:55:57', 12);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `FK_order_id` int(11) DEFAULT NULL,
  `FK_product_id` int(11) DEFAULT NULL,
  `order_item_quantity` int(3) DEFAULT NULL,
  `item_price` decimal(10,0) DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `FK_order_id`, `FK_product_id`, `order_item_quantity`, `item_price`, `subtotal`) VALUES
(0, 0, 22, 4, 12, 48);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_description` text NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_price` decimal(10,0) NOT NULL,
  `product_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_type`, `product_price`, `product_stock`) VALUES
(1, 'Premium Dog Food', '', 'Food', 0, 200),
(2, 'Squeaky Chew Toy', '', 'Toys', 0, 150),
(3, 'Cat Collar with Bell', '', 'Accessories', 0, 100),
(4, 'Pet Shampoo', '', 'Grooming', 0, 120),
(5, 'Natural Cat Treats', '', 'Treats', 0, 80),
(6, 'Small Animal Cage', '', 'Housing', 0, 50),
(7, 'Fish Antibiotics', '', 'Health', 0, 70),
(8, 'Dog Hoodie', '', 'Apparel', 0, 90),
(9, 'Puppy Training Pads', '', 'Training', 0, 180),
(10, 'Cozy Cat Bed', '', 'Bedding', 0, 110),
(11, 'Large Bird Cage', '', 'Housing', 0, 40),
(12, 'Rawhide Bones', '', 'Treats', 0, 160),
(13, 'Feather Teaser Wand', '', 'Toys', 0, 130),
(14, 'Pet Brush', '', 'Grooming', 0, 100),
(15, 'Pet Bandana', '', 'Apparel', 0, 120),
(16, 'Grain-Free Cat Food', '', 'Food', 0, 180),
(17, 'Reptile Terrarium', '', 'Housing', 0, 70),
(18, 'Flea and Tick Collar', '', 'Health', 0, 110),
(19, 'Pet ID Tag', '', 'Accessories', 0, 200),
(20, 'Interactive Dog Puzzle', '', 'Toys', 0, 90),
(21, 'Clicker Training Kit', '', 'Training', 0, 140),
(22, 'Fleece Pet Blanket', '', 'Bedding', 0, 100),
(23, 'Freeze-Dried Cat Treats', '', 'Food', 0, 120),
(24, 'Nail Clippers', '', 'Grooming', 0, 160),
(25, 'Arthritis Supplements', '', 'Health', 0, 80),
(26, 'Pet Carrier Backpack', '', 'Accessories', 0, 60),
(27, 'Dog Raincoat', '', 'Apparel', 0, 110),
(28, 'Plush Dog Toy Set', '', 'Toys', 0, 100),
(29, 'Puppy Clicker', '', 'Training', 0, 150),
(30, 'Heated Pet Mat', '', 'Bedding', 0, 70);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `FK_product_id` int(11) DEFAULT NULL,
  `FK_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `user_password_hash` text NOT NULL,
  `user_roles` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password_hash`, `user_roles`) VALUES
(18, 'Callum Conacher', 'callum.mconacher@gmail.com', '$2y$10$7hG959GhWY5hvq33C5oCnuBZ9y/pm3I45BXEfIDwkk.dIqQki2TaC', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_user_id` (`FK_user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `FK_order_id` (`FK_order_id`),
  ADD KEY `FK_product_id` (`FK_product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD KEY `FK_product_id` (`FK_product_id`),
  ADD KEY `FK_category_id` (`FK_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`FK_user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`FK_order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`FK_product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_ibfk_1` FOREIGN KEY (`FK_product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `product_categories_ibfk_2` FOREIGN KEY (`FK_category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
