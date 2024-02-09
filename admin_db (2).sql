-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2024 at 10:43 AM
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
-- Database: `admin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `pass`) VALUES
(1, 'admin', 'admin'),
(2, 'admin12', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` varchar(30) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `time_in` timestamp NOT NULL DEFAULT current_timestamp(),
  `present_status` tinyint(2) NOT NULL COMMENT '1 = present, 0 = absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `sname`, `time_in`, `present_status`) VALUES
('12', 'Tek bahadur Joshi', '2024-02-05 17:00:08', 1),
('13', 'Rahul Chhertri', '2024-02-04 17:00:08', 1),
('30', 'kishor', '2024-02-05 18:15:00', 1),
('4', 'Pritam', '2024-02-07 09:17:21', 0),
('4', 'Pritam', '2024-02-08 09:02:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `semester` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  `student_address` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `qrcode` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `full_name`, `email`, `course`, `semester`, `phone`, `student_address`, `age`, `qrcode`) VALUES
('1', 'Hari Prakash Sharma', '', 'CSIT', '2', 2147483647, 'KTM', 22, 0x74656d702f7465737437326162633637343135383163613463383435326264656631616461323562382e706e67),
('2', 'Krishna Joshi', '', 'BCA', '1', 2147483647, 'Jhapa', 22, 0x74656d702f7465737435383035663832373564333338626239303733623332646437396562626130642e706e67),
('3', 'aa', '', '5', '5', 2147483647, 'Jhapa', 22, 0x74656d702f7465737430663561323964353435326537663962376637643235646464333838623536622e706e67),
('4', 'Pritam', 'prathamshrestha100@gmail.com', 'BBM', '5', 2147483647, 'BTM', 21, 0x74656d702f7465737436343838623466386633353334333831396539353031313537316565636633392e706e67),
('5', 'RR', '', 'BCA', '7', 2147483647, 'KTM', 24, 0x74656d702f7465737430636531393630656465346361366466386665626130313830633530393065382e706e67),
('6', 'asdf', 'pratham.shrestha00@gmail.com', 'BBM', 'fifth', 2147483647, 'Jhapa', 21, 0x74656d702f7465737434623432373530373639306366393434373364636362383864393635346235302e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `verification_code` varchar(1000) NOT NULL,
  `verify_status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `verification_code`, `verify_status`, `email`) VALUES
('pratham', 'dfsdfds', '1055b32ab1b6879f8e53f25e77b0e04f', 1, 'prathamshrestha100@gmail.com'),
('Pratham 2', '123', '1b9800655f6fe7059c18727fdae480c0', 1, 'pratham.shrestha00@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`,`time_in`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
