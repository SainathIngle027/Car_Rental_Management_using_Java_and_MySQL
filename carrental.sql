-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 08:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_reg`
--

CREATE TABLE `car_reg` (
  `id` int(11) NOT NULL,
  `car_reg` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `available` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_reg`
--

INSERT INTO `car_reg` (`id`, `car_reg`, `make`, `model`, `available`) VALUES
(4, 'A0004', 'Honda', 'Fit7', 'No'),
(8, 'A0008', 'Honda', 'swift', 'No'),
(15, 'A0009', 'Suzuki', 'Swift Dezire', 'No'),
(16, 'A0010', 'Tata', 'Nexon', 'Yes'),
(21, 'A0014', 'Hundai ', 'Creta', 'Yes'),
(22, 'A0013', 'Mahindra', 'Thar', 'Yes'),
(23, 'A0012', 'Mahindra', 'Balero', 'No'),
(24, 'A0011', 'Tata', 'Tiago', 'Yes'),
(25, 'A0015', 'KIA', 'Seltos', 'Yes'),
(26, 'A0016', 'Tata', 'sumo', 'Yes'),
(27, 'A0017', 'Tata', 'Nano', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `name`, `address`, `mobile`) VALUES
(1, 'C0001', 'Neeta', 'At post Pune', 9852342342),
(2, 'C0002', 'Nimal', 'At post Alandi', 8562434234),
(3, 'C0003', 'raja', 'At psot Dehu', 8743432423),
(4, 'C0004', 'babu', 'At psot Nanded', 8547234234),
(5, 'C0005', 'Jeet', 'at post latur', 8534324233),
(6, 'C0006', 'Nilesh', 'At psot Pune	', 8964324234),
(7, 'C0007', 'Sainath', 'At post Hatral', 9322854215),
(8, 'C0008', 'Onkar', 'savta mali chowk', 6238954834),
(9, 'C0009', 'Tejas', 'at post loha', 9856322741),
(10, 'C0010', 'Keshav', 'At post nanded', 8563274128),
(11, 'C0011', 'Neeraj', 'At psot Rajendra nagar,Alandi', 8541263214),
(12, 'C0012', 'Chetan Patil', 'Indrayani nagar ,Alandi', 8546123741),
(13, 'C0013', 'Palak', 'At psot Pune', 9652314785),
(14, 'C0014', 'kishor patil', 'At post udgir', 7564123984);

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `id` int(11) NOT NULL,
  `car_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`id`, `car_id`, `cust_id`, `fee`, `date`, `due`) VALUES
(18, 'A0004', 'C0002', 5000, '2020-05-21', '2020-05-25'),
(19, 'A0002', 'C0001', 4000, '2020-05-23', '2020-05-24'),
(20, 'A0003', 'C0004', 5000, '2019-05-23', '2020-05-31'),
(21, 'A0005', 'C0001', 3000, '2020-05-23', '2020-05-27'),
(22, 'A0008', 'C0006', 1000, '2020-06-17', '2020-06-20'),
(23, 'A0007', 'C0007', 1500, '2022-06-01', '2022-06-03'),
(24, 'A0009', 'C004', 1200, '2022-06-02', '2022-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `returncar`
--

CREATE TABLE `returncar` (
  `id` int(11) NOT NULL,
  `car_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `return_date` varchar(255) NOT NULL,
  `elp` int(11) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returncar`
--

INSERT INTO `returncar` (`id`, `car_id`, `cust_id`, `return_date`, `elp`, `fine`) VALUES
(1, 'A0001', 'C0001', '22-05-2022', 2, 200),
(2, 'A0002', 'C0002', '22-05-2022', 0, 0),
(3, 'A0006', 'C0005', '27-05-2022', 0, 0),
(4, 'A0005', 'C0001', '27-05-2022', 4, 400),
(5, 'A0007', 'C0006', '30-05-2022', 0, 0),
(8, 'A0010', 'C0004', '30-05-2022', 0, 0),
(9, 'A0014', 'C0015', '31-05-2022', 1, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_reg`
--
ALTER TABLE `car_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returncar`
--
ALTER TABLE `returncar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_reg`
--
ALTER TABLE `car_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `returncar`
--
ALTER TABLE `returncar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
