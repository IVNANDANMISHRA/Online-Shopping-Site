-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 03:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(8, 'S Nandan Mishra', 'alexbiber567@gmail.com', '$2y$10$WtB3usT5FAI0sOsLuSWXGOAoqvlCXerAS4lH5e/0Xr/pQ4I9zOGk6', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(6, 'Realme'),
(7, 'Xiaomi'),
(8, 'VIVO'),
(9, 'Acer'),
(10, 'Cloths'),
(11, 'Nilkamal'),
(12, 'cello'),
(13, 'Godrej'),
(14, 'PHILIPS');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(13, 52, '127.0.0.1', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Ladies Wears'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Furnitures'),
(6, 'Home Appliances'),
(12, 'Mobiles'),
(13, 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(12, 12, 8, 'vivo V23 5G', 29990, 500, '8 GB RAM | 128 GB ROM\r\n16.36 cm (6.44 inch) Full HD+ Display\r\n64MP + 8MP + 2MP | 50MP + 8MP Dual Front Camera\r\n4200 mAh Lithium Battery\r\nMediatek Dimensity 920 Processor', '1641895952_vivo 5g.jpg', 'vivo V23, 5G smart phone'),
(13, 12, 8, 'vivo V21 5G', 29990, 1000, 'If you are looking for a smartphone to capture every precious moment of your life in all its glory, then the Vivo V21 5G is the device that you can check out. This smartphone features a 44 MP OIS Night Selfie camera for bright and clear selfies in the dark, a 64 MP OIS Night Camera to capture detailed photos, and it runs on a MediaTek Dimensity 800U 5G-enabled Processor for fast and smooth performance.\r\n', '1641896415_Screenshot (638).jpg', 'vivo, smart phone, 5g'),
(14, 12, 3, 'APPLE iPhone 12 Mini', 40999, 500, '\r\nDive into a world of crystal-clear visuals with the Super Retina XDR Display of the iPhone 12 Mini. This beast of a smartphone packs the A14 Bionic chip to make for blazing-fast performance speeds. On top of that, its Dual-camera System, along with Night Mode, helps you click amazing pictures and selfies even when the lighting isn’t as good as you’d want it to be.', '1641896695_iphone.jpg', 'APPLE, iPhone 12 '),
(15, 12, 7, 'REDMI Note 11T 5G', 19335, 2000, '\r\nProcessor: MediaTek Dimensity 810 Octa-core 5G processor based on 6nm process with HyperEngine 2.0 and clock speed up to 2.4GHz; Display: 6.6 inch FHD+ (2400x1080) Dot display with 90Hz high refresh rate and adaptive refresh rate technology; 240Hz touch sampling rate; Camera: 50MP High resolution primary camera f/1.8 with 8MP Ultra-wide sensor| 16 MP Front camera', '1641897073_redmi.jpg', 'redmi, mi, smart phone, 5g'),
(16, 12, 7, 'Mi 11X ', 27990, 5000, '8 GB RAM | 128 GB ROM\r\n16.94 cm (6.67 inch) Full HD+ Display\r\n48MP + 8MP + 5MP | 20MP Front Camera\r\n4520 mAh Battery\r\nQualcomm Snapdragon 870 Processor', '1641897607_fumiiiii.jpg', 'mi11, smart phone, 5g'),
(17, 12, 3, 'APPLE iPhone SE', 27999, 1000, '64 GB ROM\r\n11.94 cm (4.7 inch) Retina HD Display\r\n12MP Rear Camera | 7MP Front Camera\r\nA13 Bionic Chip with 3rd Gen Neural Engine Processor\r\nWater and Dust Resistant (1 meter for Upto 30 minutes, IP67)\r\nFast Charge Capable\r\nWireless charging (Works with Qi Chargers | Qi Chargers are Sold Separately', '1641898240_iphone se.jpg', 'APPLE, iPhone SE '),
(18, 12, 2, 'SAMSUNG Galaxy F22', 12999, 2000, '\r\nBid goodbye to screen stuttering, poor display quality, and low-resolution photos by getting your hands on the Samsung Galaxy F22 smartphone. Featuring a 90 Hz refresh rate, HD+ sAMOLED display, and True 48 MP quad-rear camera, this smartphone is sure to be your ideal companion for entertainment, gaming, and communication.', '1641898812_samsung.jpg', 'samsung, smart phone'),
(19, 12, 2, 'SAMSUNG Metro 313 Dual Sim', 2690, 5000, '\r\nIf you need a phone to make calls and use two different SIM cards, this Samsung phone is what you need. With a handy torch and a built-in MP3 player, this phone caters to your various needs. What’s more, it lets you transfer files quickly with its Bluetooth or USB connectivity.', '1641899230_samsung key board.jpg', 'keypad phone, samsung'),
(20, 12, 6, 'realme C21Y', 10499, 1000, '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB\r\n16.51 cm (6.5 inch) HD+ Display\r\n13MP + 2MP + 2MP | 5MP Front Camera\r\n5000 mAh Battery\r\nUnisoc T610 Processor', '1641899665_realme.jpg', 'realme, smart phone, 4g'),
(21, 13, 1, 'HP Core i3 11th Gen', 44490, 700, 'Stay connected to your work, online projects, and entertainment needs with the powerful HP laptop. This laptop features a slim and lightweight design to ensure convenient portability. Also, this laptop comes with a micro-edge display so that you can enjoy high-quality visuals. Additionally, it is also equipped with a blazing fast processor that helps to facilitate fast performance. Lastly, thanks to the powerful battery life, you can enjoy up to 9 hours of uninterrupted battery.', '1641900520_lapyhp.jpg', 'Laptop, hp'),
(22, 13, 1, 'HP OMEN 15 ', 110990, 300, '15.6 inch Full HD IPS Micro-edge Anti-glare Display (Brightness: 300 nits, 141 ppi, Color Gamut: 72% NTSC, 144 Hz Refresh Rate)', '1641901123_hp lapy2.jpg', 'laptop, hp '),
(23, 13, 9, 'acer Nitro 5 Ryzen 5', 64490, 800, 'The Acer Nitro 5 AN515-44-R9QA Gaming Laptop is a powerful gaming device to make your gaming experience exciting, lag-free, and immersive. This laptop is powered by an AMD Ryzen 5 4600H hexa-core processor and NVIDIA GeForce GTX 1650 graphics card for lag-free, high-speed gaming, and a 39.6 cm (15.6) FHD IPS Display for blur-free visuals.', '1641901693_acer laptop.jpg', 'acer,laptop'),
(25, 13, 9, 'acer Aspire 5 ', 46990, 11500, '\r\nPowerful and portable, the Aspire 5 laptop delivers on every aspect of everyday computing. This laptop packs a punch in terms of performance as it comes with the latest core i5 11th Generation processor which helps tackle any job no matter how complex. Creativity soars to new heights with sharp, crisp visuals showcased on the 14\" Full HD IPS screen, while the thin bezel provides you more space to work with wherever inspiration strikes. It’s the perfect companion to take with you wherever you go!', '1641902109_aspire.jpg', 'laptop, acer, lapy'),
(26, 13, 3, 'APPLE MacBook Pro M1', 131990, 250, 'Stylish & Portable Thin and Light Laptop\r\n13.3 inch Quad LED Backlit IPS Display (227 PPI, 500 nits Brightness, Wide Colour (P3), True Tone Technology)', '1641902510_apple laptop.jpg', 'APPLE, laptop, macbook'),
(27, 13, 7, 'Mi Notebook Horizon Edition ', 59999, 1700, 'Stylish & Portable Thin and Light Laptop\r\n14 inch Full HD LED Backlit Anti-glare Display (91% Screen-to-body Ratio)\r\nLight Laptop without Optical Disk Drive', '1641903576_redmi laptop.jpg', 'mi laptop '),
(28, 2, 10, 'Women Kurta and Pant set', 550, 1700, 'Women Kurta and Pant Set Cotton Blend', '1641905077_ghtdjhgkdfkt.jpg', 'Women Kurta, Pant Set Cotton Blend'),
(29, 2, 10, 'Ankle Length Legging  ', 595, 350, 'EasyFeed Ankle Length Maternity Wear Legging  ', '1641904636_laggies.jpg', 'EasyFeed, Ankle Length Legging  '),
(31, 2, 10, 'Women Printed Straight Kurta', 300, 700, 'Women Printed Poly Crepe Straight Kurta', '1641904938_ladies wear cli.jpg', 'ladies wear, kurta, printed'),
(32, 2, 10, 'Printed  Cotton Blend Saree ', 950, 450, 'Printed Daily Wear Cotton Blend Saree ', '1641905594_free-di-silverdigi-black-prefons-original-imafzbfzh3rhgtcf.jpeg', 'saree, printed saree'),
(35, 2, 10, 'Regular Women Black Jeans', 750, 700, 'Regular Women Black Jeans', '1641905994_black jeans.jpg', 'jeans, ladies black jeans'),
(36, 2, 10, 'Women Black Heels Sandal', 475, 350, 'Women Black Heels Sandal', '1641906328_sandals.jpg', 'high heel sandal'),
(37, 3, 10, 'Men Regular Fit Casual Shirt', 535, 500, 'Men Regular Fit Solid Spread Collar Casual Shirt', '1641980081_shirts.jpg', 'men shirt, red casual shirt'),
(38, 3, 10, 'Slim Men Blue Jeans', 1299, 600, 'Slim Men Blue Jeans', '1641980596_JEANS BLUE.jpg', 'BLUE JEANS, MENS'),
(39, 3, 10, 'Full Sleeve Men Jacket', 2199, 300, 'Full Sleeve Solid Men Riding Jacket', '1641981217_shirtsDD.jpg', 'JACKET, '),
(40, 4, 10, 'Boys & Girls Casual T-shirt Pant ', 395, 450, 'Boys & Girls Casual T-shirt Pant (PINK)', '1641981603_2-3-years-db20fs6009-3bros-original-imag778vjegrmnsz.jpeg', 'kids wear, '),
(41, 4, 10, 'Baby Girls Lehenga Choli ', 695, 600, 'Baby Girls Lehenga Choli Ethnic Wear Embroidered Lehenga, Choli and Dupatta Set', '1641981757_11-12-years-kd-jokar-kedar-fab-original-imafpcqqp9pqmcfw.jpeg', 'baby lehenga choli, ethinik wear'),
(42, 4, 10, 'Boys Casual T-shirt Track Pants', 509, 200, 'Boys Casual T-shirt Track Pants  (Light Blue)', '1641982078_KIDS.jpg', 'boys t shirts, track pant'),
(43, 5, 11, 'Computer Desk', 6490, 50, 'Nilkamal Zenith Engineered Wood Computer Desk  (Straight, Finish Color - Black Walnut, Knock Down)', '1641982618_mdf-medium-density-fiber-icdzenithbwl-nilkamal-black-walnut-original-imag7822dujzqc8g.jpeg', 'computer desk, Nilkamal'),
(44, 5, 11, 'Double Solid Wood Sofa Bed ', 15872, 50, 'Nilkamal Torres Double Solid Wood Sofa Bed  (Finish Color - Grey Mechanism Type - Fold Out Delivery Condition - Knock Down)', '1641982924_SOFA.jpg', 'sofa'),
(45, 5, 11, ' TV Entertainment Unit  ', 7499, 70, 'Nilkamal Beaumont Engineered Wood TV Entertainment Unit  (Finish Color - New Wenge, Knock Down)', '1641984747_tv set.jpg', 'tv set'),
(46, 5, 12, 'Plastic Free Standing Cabinet ', 2899, 70, 'cello Novelty Compact Plastic Free Standing Cabinet  (Finish Color - ORANGE & BROWN, Door Type- Hinged, DIY(Do-It-Yourself))', '1641985056_pp-clo-wim-novcomp-orbrwn-cello-orange-original-imaf3pty5gpfukx3.jpeg', 'plastic cabinet'),
(47, 5, 11, 'Wood Queen Box Bed  ', 16690, 50, 'Nilkamal MOZART Engineered Wood Queen Box Bed  (Finish Color - Walnut, Delivery Condition - Knock Down)', '1641985353_bed.jpg', 'bed'),
(48, 5, 11, '4 Seater Dining Set ', 13590, 20, 'Table Top Material: Engineered Wood\r\nChair Frame: Engineered Wood\r\nTable (W x H x D): 110 cm x 72 cm x 70 cm (3 ft 7 in x 2 ft 4 in x 2 ft 3 in)\r\nSeating Capacity: 4 Seater', '1641985763_table set.jpg', 'dining set'),
(49, 5, 12, 'Plastic Outdoor Chair', 5999, 100, 'cello Plastic Outdoor Chair  (I-Brn, Set of 4, Pre-assembled)', '1641985917_4-pp-polypropylene-comfort-cello-i-brn-original-imag5qrmzbfbtphp.jpeg', 'chair'),
(50, 5, 13, ' Slimline 3 Door With Locker', 37937, 15, 'Godrej Interio Slimline 3 Door With Locker Metal Almirah  (Finish Color - Pacific Blue, Knock Down)', '1641986136_stainless-steel-slimline-3-door-wardrobe-with-locker-godrej-original-imaf9f55c2jjzsgp.jpeg', 'almirah'),
(51, 5, 13, 'Queen Hydraulic Bed', 35000, 50, 'Godrej Interio Highlands Engineered Wood Queen Hydraulic Bed  (Finish Color - Dark Walnut, Delivery Condition - Knock Down)', '1641986476_bed fj.jpg', 'bed'),
(52, 6, 12, ' MIXER GRINDER ', 2568, 75, 'cello Grind-N-Mix Elite+ ELITE + MIXER GRINDER 500 Mixer Grinder (4 Jars, White, Blue)', '1641986748_mixer.jpg', 'mixer'),
(53, 6, 14, 'Steam Iron', 1575, 525, 'PHILIPS GC1903 1440 W Steam Iron  (White and Green', '1641987064_iron.jpg', 'iron'),
(54, 6, 14, ' Dry Vacuum Cleaner', 7995, 540, 'PHILIPS FC9352/01 (883935201280) Bagless Dry Vacuum Cleaner  (Blue)', '1641987568_philips-powerpro-compact-fc9352-01-bagless-original-imaf5xqwak9evffz.jpeg', 'VACUUM CLEANER');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(3, 'Sayak ', 'Singha', 'shonababuinsta557@gmail.com', '06cb30a63662fe601bab02a0e4d8399e', '8987521645', 'Ms palya, Bengaluru', 'Karnatka'),
(4, 'david', 'deep', 'david@gmail.com', '5abbfcf8351a98e13230dfc1b8827442', '8340517345', 'adityanagar', 'bengaluru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
