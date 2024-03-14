-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 08:03 PM
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
-- Database: `store2`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Streamer-Pro 09 - Streaming PC (Core I5 13400F / RTX 4060 Ti / 32GB RAM / 500GB NVMe SSD)', 93371),
(2, 'MSI 1 - Adobe Premier Pro (I9 13900KF / RTX 4080 / 32GB RAM / 1TB NVMe)', 256568),
(3, 'MSI 2 - Davinci (I7 13700K / RTX 4080 / 32GB RAM / 1TB M.2 NVMe Gen4 SSD)', 239920),
(4, 'MSI 3 - Blender (I9 13900KF / RTX 4080 / 32GB RAM / 1TB M.2 NVMe Gen4 SSD)', 271442),
(5, 'EternalX E7 - E 1747-AN White - ESports Gaming PC (Ryzen 7 7700X / RTX 4070 / 32GB RAM / 500GB NVMe SSD)', 141425),
(6, 'EternalX C5 - C 1546-IN - Casual Gaming PC (Core I5 12400F / RTX 4060 / 16GB RAM / 500GB NVMe SSD)', 69169),
(7, 'EternalX C5 - C 1546-IN - Casual Gaming PC (Core I5 13400F / RTX 4060 / 16GB RAM / 500GB NVMe SSD)', 78933),
(8, 'EternalX C3 - C 15165-IN White - Casual Gaming PC (Core I5 12400F / GTX 1650 / 16GB RAM / 500GB NVMe SSD)', 46477),
(9, 'AvianX A3 - S 1535-IN - Streaming PC (Core I5 12400F / RTX 3050 / 16GB RAM / 500GB NVMe SSD)', 57331),
(10, 'EternalX A9 - A 1949-AN - AAA Gaming PC (Ryzen 9 7950X3D / RTX 4090 / 32GB RAM / 1TB NVMe SSD)', 365607);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Sajal', 'sajal.agrawal1997@gmail.com', '57f231b1ec41dc6641270cb09a56f897', '8899889988', 'Indore', '100 palace colony, Indore'),
(2, 'Ram', 'ram1234@xyz.com', '57f231b1ec41dc6641270cb09a56f897', '8899889989', 'Pune', '100 palace colony, Pune'),
(3, 'Shyam', 'shyam@xyz.com', '57f231b1ec41dc6641270cb09a56f897', '8899889990', 'Bangalore', '100 palace colony, Bangalore'),
(4, 'zayn', 'tamil@gmail.com', '70873e8580c9900986939611618d7b1e', '8144980851', 'chennai', 'cd'),
(5, 'zayn', 'tam2il@gmail.com', '60b3c67ca27b84a70221b6499217d8d4', '8144980851', '2332', '3232'),
(6, '2', 'ta2il@gmail.com', '120a3e6f0b2fa6c5b382d69b90fa42c0', '232323', '323232', '3232'),
(7, 'zayn', 'tam22il@gmail.com', '82647e5bd04ea20ba943555a51b5d8d5', '32232', '3232', '323232'),
(8, 'zayn', 'tamil222@gmail.com', '9406fffa319c9d912fa0e1abcabae9db', '3232323', '3232323', '232323'),
(9, 'zayn', 'tam23232il@gmail.com', '4116ef14423cab042a640cfe3f351f32', '323232', '32323', '232323'),
(10, 'zayn', 'ta323232mil@gmail.com', 'b7b64cc5b1885e90dfbf5bf9fbcfdc38', '323232', '32323232', '32323232'),
(11, 'zayn', 'tamil23232@gmail.com', '9d689e0da30f11c8d6af463aa712f2ae', '323232', '323232', '323232'),
(12, 'zayn', 'ta2332mil@gmail.com', 'b7b64cc5b1885e90dfbf5bf9fbcfdc38', '32323', '23232', '32323');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(7, 3, 3, 'Added to cart'),
(8, 3, 4, 'Added to cart'),
(9, 3, 5, 'Added to cart'),
(10, 3, 11, 'Added to cart'),
(11, 1, 9, 'Added to cart'),
(12, 1, 2, 'Added to cart'),
(13, 1, 8, 'Added to cart'),
(16, 4, 4, 'Confirmed'),
(17, 4, 13, 'Confirmed'),
(27, 4, 7, 'Confirmed'),
(28, 4, 3, 'Confirmed'),
(32, 11, 1, 'Added to cart'),
(37, 4, 1, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
