-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2018 at 11:21 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmo`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL COMMENT 'hmo,hospital,hmo_guru',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `email`, `address`, `phone`, `type`, `created_by`) VALUES
(1, 'HMO GURU', 'eeeeeeeeeeeeeee', 'aaaaaaaaaaa', '1111111111111', 'hmo_guru', 1),
(3, 'mhs', 'mhs@y.com', '', '90899888', 'hmo', 1),
(4, 'AVEMARIA', 'avemaria@y.com', '', '', 'hospital', 3);

-- --------------------------------------------------------

--
-- Table structure for table `payable`
--

CREATE TABLE `payable` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL COMMENT 'drug,service',
  `price` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `company_id` int(11) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL DEFAULT 'admin' COMMENT 'staff,doctor,patient',
  `created_by` int(11) NOT NULL,
  `company_id2` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `company_id`, `surname`, `first_name`, `last_name`, `email`, `password`, `phone`, `address`, `date_created`, `status`, `type`, `created_by`, `company_id2`) VALUES
(1, 1, '', '', 0, 'admin', 'admin', '083993', 'ftgfd', '', 1, 'staff', 0, 0),
(5, 0, '', '', 0, 'admin@domain.com', 'admin', '090093990', 'test addr.', '', 0, '', 0, 0),
(7, 0, '', '', 0, 'seun@yahoo.com', 'seun', '99888', 'liekk', '', 0, '', 0, 0),
(8, 0, '', '', 0, 'easymagic1@gmail.com', 'bbb', '0404043934', '', '', 1, '', 0, 0),
(9, 0, '', '', 0, 'admin2', 'aaa', '676766', 'gghg', '', 1, '', 0, 0),
(10, 1, '', '', 0, 'admin2@y.com', 'bbb', '8889999', 'adddd', '2018-03-27 07:32:52', 0, 'staff', 1, 0),
(11, 1, '', '', 0, 'admin3@yy.com', 'admin3', '', '', '2018-03-28 12:23:44', 0, 'staff', 1, 0),
(13, 3, '', '', 0, 'mhs_user@y.com', 'mhs', '', '', '', 1, 'staff', 0, 0),
(14, 3, '', '', 0, 'patient@y.com', 'patient', '102200', '', '2018-03-28 05:20:37', 1, 'patient', 13, 4),
(15, 4, '', '', 0, 'ave_user@y.com', 'ave', '', '', '', 1, 'staff', 0, 0),
(16, 4, '', '', 0, 'ave_doc@y.com', 'doc', '', '', '2018-03-28 11:06:59', 1, 'doctor', 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_option`
--

CREATE TABLE `user_option` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_option`
--

INSERT INTO `user_option` (`id`, `name`, `value`) VALUES
(1, 'vat', '200'),
(2, 'business_name', 'CREEK RESTAURANTS'),
(3, 'business_address', 'Demo Address');

-- --------------------------------------------------------

--
-- Table structure for table `visitation`
--

CREATE TABLE `visitation` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `payable_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `json_items` longtext NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payable`
--
ALTER TABLE `payable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_option`
--
ALTER TABLE `user_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitation`
--
ALTER TABLE `visitation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payable`
--
ALTER TABLE `payable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_option`
--
ALTER TABLE `user_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `visitation`
--
ALTER TABLE `visitation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
