-- Table structure for table `items`
CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10, 2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `items`
INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Streamer-Pro 09 - Streaming PC (Core I5 13400F / RTX 4060 Ti / 32GB RAM / 500GB NVMe SSD)', 93371),
(2, 'MSI 1 - Adobe Premier Pro (I9 13900KF / RTX 4080 / 32GB RAM / 1TB NVMe)', 256568),
(3,'MSI 2 - Davinci (I7 13700K / RTX 4080 / 32GB RAM / 1TB M.2 NVMe Gen4 SSD)',239920),
(4,'MSI 3 - Blender (I9 13900KF / RTX 4080 / 32GB RAM / 1TB M.2 NVMe Gen4 SSD)',271442),
(5,'EternalX E7 - E 1747-AN White - ESports Gaming PC (Ryzen 7 7700X / RTX 4070 / 32GB RAM / 500GB NVMe SSD)',141425),
(6,'EternalX C5 - C 1546-IN - Casual Gaming PC (Core I5 12400F / RTX 4060 / 16GB RAM / 500GB NVMe SSD)',69169),
(7,'EternalX C5 - C 1546-IN - Casual Gaming PC (Core I5 13400F / RTX 4060 / 16GB RAM / 500GB NVMe SSD)',78933),
(8,'EternalX C3 - C 15165-IN White - Casual Gaming PC (Core I5 12400F / GTX 1650 / 16GB RAM / 500GB NVMe SSD)', 46477),
(9,'AvianX A3 - S 1535-IN - Streaming PC (Core I5 12400F / RTX 3050 / 16GB RAM / 500GB NVMe SSD)',57331),
(10,'EternalX A9 - A 1949-AN - AAA Gaming PC (Ryzen 9 7950X3D / RTX 4090 / 32GB RAM / 1TB NVMe SSD)',365607);








-- Table structure for table `users`
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  'pincode'int(6)NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `users`
INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Sajal', 'sajal.agrawal1997@gmail.com', '57f231b1ec41dc6641270cb09a56f897', '8899889988', 'Indore', '100 palace colony, Indore'),
(2, 'Ram', 'ram1234@xyz.com', '57f231b1ec41dc6641270cb09a56f897', '8899889989', 'Pune', '100 palace colony, Pune'),
(3, 'Shyam', 'shyam@xyz.com', '57f231b1ec41dc6641270cb09a56f897', '8899889990', 'Bangalore', '100 palace colony, Bangalore');

-- Table structure for table `users_items`
CREATE TABLE `users_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`item_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=14;
