-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 11:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywifi`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `sub_name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `picture` text NOT NULL,
  `logo` text NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `owner` varchar(128) NOT NULL,
  `video` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `sub_name`, `description`, `picture`, `logo`, `whatsapp`, `facebook`, `twitter`, `instagram`, `phone`, `email`, `owner`, `video`, `address`) VALUES
(1, 'Kacamata', 'Kacamata Pilihan Kita', '<p>Selamat datang di Kacamata,&nbsp;</p>\r\n\r\n<p>Kami menyediakan layanan seputar bidang Informatika seperti layanan IT Support seperti Instalasi, Troubleshoot, Jasa Internet untuk perkantoran sekolah dan di perumahan, Jasa pengembangan aplikasi berbasis website dan mobile, dan kami juga menyediakan layanan sekuritas berupa kamera CCTV yang dapat dipantau dari jauh melalui internet.</p>\r\n\r\n<p><!--?= $company[\'company_name\'] ?--><!--?=$company[\'company_name\']?\r\n--></p>\r\n', 'picture-191121-62a0af9970.jpg', 'dktlogo12.png', '085718967022', '', '', 'rahman.kusumayadi', '0816986104', 'kusumayadi74@gmail.com', 'Adji Pratomo', 'https://www.youtube.com/watch?v=SiPuvEFaC3g', 'Bumi Mutiara Blok JD 11 no. 19, Kel. Bojongkulur, Kec. Gunung putri, Kab. Bogor, 16969.');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `no_services` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `address` text NOT NULL,
  `no_wa` varchar(128) NOT NULL,
  `no_ktp` varchar(128) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `no_services`, `email`, `address`, `no_wa`, `no_ktp`, `created`) VALUES
(2, 'Mamang Kesbor', '210503150009', 'rahmankakei0305@gmail.com', ' jonggol', '123123123', '123456789', 1620046843),
(3, 'Nabima Reyhan', '210504062124', 'emperorcandy@gmail.com', 'Jonggol ', '085811889906', '123456', 1620102130),
(4, 'Hambali', '210604093359', 'dorkcarding@gmail.com', ' ', '085718967022', '12121212121212', 1622792045);

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE `expenditure` (
  `expenditure_id` int(11) NOT NULL,
  `date_payment` varchar(125) NOT NULL,
  `nominal` varchar(125) NOT NULL,
  `remark` text NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `income_id` int(11) NOT NULL,
  `date_payment` varchar(125) NOT NULL,
  `nominal` varchar(125) NOT NULL,
  `remark` text NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`income_id`, `date_payment`, `nominal`, `remark`, `created`) VALUES
(2, '2021-05-04', '250000', 'Pembayaran iuran no layanan 210504062124 a/n Nabima Reyhan Periode Mei 2021', 1620103786),
(3, '2021-06-04', '250000', 'Pembayaran iuran no layanan 210604093359 a/n Hambali Periode Juni 2021', 1622792361);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice` varchar(128) NOT NULL,
  `month` varchar(11) NOT NULL,
  `year` int(11) NOT NULL,
  `no_services` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL,
  `created` int(11) NOT NULL,
  `date_payment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice`, `month`, `year`, `no_services`, `status`, `created`, `date_payment`) VALUES
(3, '210504001', '05', 2021, '210504062124', 'SUDAH BAYAR', 1620103631, 1620103786),
(5, '210604002', '06', 2021, '210604093359', 'SUDAH BAYAR', 1622792138, 1622792361);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `detail_id` int(11) NOT NULL,
  `invoice_id` varchar(128) NOT NULL,
  `price` varchar(125) NOT NULL,
  `qty` varchar(125) NOT NULL,
  `disc` varchar(128) NOT NULL,
  `remark` text NOT NULL,
  `total` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`detail_id`, `invoice_id`, `price`, `qty`, `disc`, `remark`, `total`, `item_id`, `category_id`) VALUES
(3, '210504001', '250000', '1', '0', '', '250000', 2, 2),
(4, '210604002', '250000', '1', '0', '', '250000', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `package_category`
--

CREATE TABLE `package_category` (
  `p_category_id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `description` text NOT NULL,
  `date_created` int(11) NOT NULL,
  `date_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_category`
--

INSERT INTO `package_category` (`p_category_id`, `name`, `description`, `date_created`, `date_updated`) VALUES
(2, '1 MB', ' Speed 1 Mega Byte bro', 1620046914, 0);

-- --------------------------------------------------------

--
-- Table structure for table `package_item`
--

CREATE TABLE `package_item` (
  `p_item_id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `price` varchar(125) NOT NULL,
  `picture` text NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL DEFAULT current_timestamp(),
  `date_update` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_item`
--

INSERT INTO `package_item` (`p_item_id`, `name`, `price`, `picture`, `description`, `category_id`, `date_created`, `date_update`) VALUES
(2, 'Hemat 1', '250000', '', ' ', 2, 1620047015, 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `services_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `no_services` varchar(125) NOT NULL,
  `qty` varchar(128) NOT NULL,
  `price` varchar(128) NOT NULL,
  `disc` varchar(128) DEFAULT NULL,
  `total` varchar(128) NOT NULL,
  `remark` text NOT NULL,
  `services_create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`services_id`, `item_id`, `category_id`, `no_services`, `qty`, `price`, `disc`, `total`, `remark`, `services_create`) VALUES
(4, 2, 2, '210503150009', '1', '250000', '0', '250000', '', 1620047033),
(5, 2, 2, '210504062124', '1', '250000', '0', '250000', '', 1620102149),
(6, 2, 2, '210604093359', '1', '250000', '0', '250000', '', 1622792109);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(128) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `image` varchar(225) NOT NULL,
  `role_id` text NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `phone`, `address`, `image`, `role_id`, `is_active`, `date_created`, `gender`) VALUES
(1, 'ginginabdulgoni@gmail.com', '$2y$10$/XdV2yxyW7I/p0obVJHdieXLx2TCRCncHotQPZLZZLXnKANiw983i', 'Gingin Abdul Goni', '082337481227', 'Kp. Ciparay', 'default1.jpg', '1', 1, 1565599788, 'Male'),
(7, '11duabelasproject@gmail.com', '$2y$10$QVSU7L531cuIjDe9v1Zt8uUXhMo0sjIEo7kpZtzIvj0MBKLH8CBSC', 'Rosita Wulandari', '085283935826', 'Perum Baru Paros, Tarogong Kaler - Garut', 'default.jpg', '1', 1, 1574219676, 'Male'),
(9, 'kusumayadi74@gmail.com', '$2y$10$lrL.paasDBWwqRzRn2zveO0kOqa9fiFKzmMoGx0sp7x9n6kYCSFNK', 'Admin', '085811889906', '', 'default.jpg', '1', 1, 1620023484, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'ginginabdulgoni@gmail.com', 'GjZqpcy8yr8Hdkquzl32bmSMLN8GKoEtKGAlI2fvngQ=', 1570072906),
(3, 'gintha45@gmail.com', 'oCCP4stUvFl4DIp1Lu65jt7mb2d6QSpuCl7zZC/LF7k=', 1570168320),
(4, 'lugifauzi@gmail.com', 'bRnILkp6INc5y7DzecGl0ZTcMS8AlhNJuyKctRf+IDU=', 1573961329),
(5, 'ginginabdulgoni@gmail.com', 'FUzKQm+L8RfYGRnAChlCALfPWcMUV1GmOHvT5MkQ0+I=', 1587090654),
(6, 'ginginabdulgoni@gmail.com', '1zFT9QCj4DRfAEJJe2CYzx1lukaDeA033RKGcKfyjWE=', 1587090751),
(7, 'ginginabdulgoni@gmail.com', 'ZoxgfYKiuDI88xNLIfYALjua/PAuZgJFX2LLrpilDeY=', 1587090826),
(8, 'ginginabdulgoni@gmail.com', 'Yss8Va6tbD5KggdGrgBbTmrLq3mfQjs1NkJXdvHTNdw=', 1587090982),
(9, 'ginginabdulgoni@gmail.com', 'wuhos5GVdbM3nGDlwrAgf2Vk39wc+yrOLr374a5xMlA=', 1587091009),
(10, 'ginginabdulgoni@gmail.com', 'LirJB/wK8hBjc/WKXGT+CSMxX/HZOsTHHeP7riT8/VQ=', 1587091091),
(11, 'ginginabdulgoni@gmail.com', 'T9TUDbKNl7IXWWkk6x1OP5BG/3igJeGZgc6DSCFC1aY=', 1587221474),
(12, 'ginginabdulgoni@gmail.com', 'kXN4Sc/jMpmL0U5ogANNTXyUM/ssg4UIubxydgNhy0w=', 1587221529),
(13, 'ginginabdulgoni@gmail.com', 'e8baN8qvyzwEFspz21UEGAj3CWICxRi3xG9nNv0phe0=', 1587517654),
(14, '11duabelasproject@gmail.com', 'piEPDCVJUuPYlw+fP4//NxFqPwkJYQ1ct5sjTTHlST0=', 1620022502);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD PRIMARY KEY (`expenditure_id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD UNIQUE KEY `invoice` (`invoice`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `package_category`
--
ALTER TABLE `package_category`
  ADD PRIMARY KEY (`p_category_id`);

--
-- Indexes for table `package_item`
--
ALTER TABLE `package_item`
  ADD PRIMARY KEY (`p_item_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`services_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenditure`
--
ALTER TABLE `expenditure`
  MODIFY `expenditure_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `income_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `package_category`
--
ALTER TABLE `package_category`
  MODIFY `p_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package_item`
--
ALTER TABLE `package_item`
  MODIFY `p_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD CONSTRAINT `invoice_detail_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `package_category` (`p_category_id`),
  ADD CONSTRAINT `invoice_detail_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `package_item` (`p_item_id`);

--
-- Constraints for table `package_item`
--
ALTER TABLE `package_item`
  ADD CONSTRAINT `package_item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `package_category` (`p_category_id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `package_item` (`p_item_id`),
  ADD CONSTRAINT `services_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `package_category` (`p_category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
