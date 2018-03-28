-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2018 at 05:31 PM
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
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `card_split_value` int(11) NOT NULL,
  `cash_split_value` int(11) NOT NULL,
  `amount_tendered` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2' COMMENT '0-void,1-approved,2-pending',
  `json_data` longtext NOT NULL,
  `table_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `user_id`, `customer_name`, `total_qty`, `total_price`, `date_created`, `payment_type`, `card_split_value`, `cash_split_value`, `amount_tendered`, `status`, `json_data`, `table_id`) VALUES
(6, 1, 'Nnamdi ', 2, 7000, '2018-03-18 01:28:11', 'cash', 0, 0, 400000, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\"},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\"}]', 7),
(7, 1, 'Nnamdi ', 2, 7000, '2018-03-18 01:28:17', 'cash', 0, 0, 400000, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\"},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\"}]', 7),
(5, 1, 'Joseph', 4, 13000, '2018-03-18 01:07:47', 'cash', 0, 0, 45000, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\"},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\"},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\"},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\"}]', 7),
(8, 1, 'test', 2, 5500, '2018-03-18 07:57:54', 'cash', 0, 0, 6000, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\"},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\"}]', 7),
(9, 1, 'Nnamdi', 5, 17000, '2018-03-18 09:32:15', 'cash', 0, 0, 30000, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\"},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\"},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\"},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\"},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\"}]', 7),
(10, 1, 'Joseph', 2, 7500, '2018-03-18 09:35:41', 'cash', 0, 0, 2300, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\"},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\"}]', 7),
(11, 1, 'nkem', 2, 7500, '2018-03-18 10:08:10', 'card', 0, 0, 8000, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\"},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\"}]', 7),
(12, 1, 'nkem', 0, 0, '2018-03-18 10:26:22', '--select--', 0, 0, 0, 2, '[]', 7),
(13, 1, 'nnamdi', 1, 4000, '2018-03-18 10:28:28', '--select--', 0, 0, 0, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1}]', 7),
(14, 1, 'nnamdi', 3, 9000, '2018-03-18 10:37:51', 'card', 0, 0, 10000, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":3}]', 7),
(15, 1, 'kunle', 2, 7500, '2018-03-18 10:49:38', 'card', 0, 0, 23000, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":2}]', 7),
(16, 1, 'nnamdi2', 4, 12500, '2018-03-18 10:54:07', 'card', 0, 0, 23000, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":3},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":4}]', 7),
(17, 1, 'Edet', 2, 5000, '2018-03-18 11:37:04', 'cash', 0, 0, 6000, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":2}]', 7),
(18, 1, 'Nnamdi ', 9, 27000, '2018-03-18 11:55:21', 'both', 0, 0, 30000, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":3},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":6},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":7},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":8},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":9},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":10},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":11}]', 7),
(19, 1, 'a', 3, 9000, '2018-03-18 01:34:22', 'cash', 0, 0, 9000, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":3}]', 7),
(20, 1, 'red', 3, 9000, '2018-03-18 01:39:29', 'cash', 0, 0, 10000, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":3}]', 7),
(21, 1, 'red shirt', 2, 7500, '2018-03-18 01:42:10', 'card', 0, 0, 7500, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":2}]', 7),
(22, 1, 'blue dress', 3, 9000, '2018-03-18 02:04:16', 'both', 5000, 4000, 0, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":3}]', 7),
(23, 1, 'blue', 2, 7500, '2018-03-18 05:12:37', 'both', 5500, 2000, 0, 1, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":2}]', 7),
(24, 1, 'Tobi ', 10, 36500, '2018-03-19 09:16:21', 'both', 0, 36500, 0, 0, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":4},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":5},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":6},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":7},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":8},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":9},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":10},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":11},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":12}]', 7),
(25, 1, 'Female With Green Shots ', 7, 25000, '2018-03-19 11:55:41', 'cash', 0, 25000, 0, 1, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":4},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":7},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":8},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":9},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":10},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":11}]', 7),
(26, 1, 'green shirt ', 4, 10500, '2018-03-19 12:11:36', 'both', 1000, 9500, 0, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":3},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":4}]', 7),
(27, 1, 'linda', 3, 17500, '2018-03-19 12:26:58', 'both', 7000, 10500, 0, 1, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"8\",\"parent_id\":\"7\",\"name\":\"Wine\",\"price\":\"12000\",\"date_created\":\"2018-03-19 12:14:23\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":4}]', 7),
(28, 1, 'nene', 2, 7500, '2018-03-19 08:13:15', 'cash', 0, 7500, 0, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":3}]', 7),
(29, 1, 'Nnamdi ', 4, 21000, '2018-03-19 08:45:03', 'cash', 0, 21000, 0, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":3},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":4},{\"id\":\"8\",\"parent_id\":\"7\",\"name\":\"Wine\",\"price\":\"12000\",\"date_created\":\"2018-03-19 12:14:23\",\"created_by\":\"1\",\"salt_id\":9}]', 7),
(30, 1, 'Jerry ', 2, 16000, '2018-03-19 08:46:19', 'card', 0, 16000, 0, 1, '[{\"id\":\"8\",\"parent_id\":\"7\",\"name\":\"Wine\",\"price\":\"12000\",\"date_created\":\"2018-03-19 12:14:23\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":2}]', 7),
(31, 1, 'Nnamdi', 1, 12000, '2018-03-19 11:23:16', 'cash', 0, 12000, 0, 2, '[{\"id\":\"8\",\"parent_id\":\"7\",\"name\":\"Wine\",\"price\":\"12000\",\"date_created\":\"2018-03-19 12:14:23\",\"created_by\":\"1\",\"salt_id\":1}]', 7),
(32, 1, 'Nene', 13, 78000, '2018-03-19 11:30:05', 'card', 0, 78000, 0, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":3},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":4},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":3},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":4},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":5},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":6},{\"id\":\"8\",\"parent_id\":\"7\",\"name\":\"Wine\",\"price\":\"12000\",\"date_created\":\"2018-03-19 12:14:23\",\"created_by\":\"1\",\"salt_id\":7},{\"id\":\"8\",\"parent_id\":\"7\",\"name\":\"Wine\",\"price\":\"12000\",\"date_created\":\"2018-03-19 12:14:23\",\"created_by\":\"1\",\"salt_id\":8},{\"id\":\"8\",\"parent_id\":\"7\",\"name\":\"Wine\",\"price\":\"12000\",\"date_created\":\"2018-03-19 12:14:23\",\"created_by\":\"1\",\"salt_id\":9},{\"id\":\"8\",\"parent_id\":\"7\",\"name\":\"Wine\",\"price\":\"12000\",\"date_created\":\"2018-03-19 12:14:23\",\"created_by\":\"1\",\"salt_id\":10}]', 7),
(33, 1, 'Cool', 8, 21500, '2018-03-20 09:01:14', 'both', 1500, 20000, 0, 0, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":4},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":3},{\"id\":\"9\",\"parent_id\":\"2\",\"name\":\"Croissant\",\"price\":\"500\",\"date_created\":\"2018-03-20 08:58:38\",\"created_by\":\"1\",\"salt_id\":4},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":5},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":7},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":8}]', 7),
(34, 1, 'Dayo ', 1, 3500, '2018-03-21 06:47:24', 'cash', 0, 3500, 0, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1}]', 0),
(35, 1, 'Dayo ', 1, 3500, '2018-03-21 06:48:49', 'cash', 0, 3500, 0, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1}]', 0),
(36, 1, 'Dayo ', 1, 3500, '2018-03-21 06:49:28', 'cash', 0, 3500, 0, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1}]', 0),
(37, 1, 'red shirt ', 3, 5500, '2018-03-21 06:56:16', 'cash', 0, 5500, 0, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"9\",\"parent_id\":\"2\",\"name\":\"Croissant\",\"price\":\"500\",\"date_created\":\"2018-03-20 08:58:38\",\"created_by\":\"1\",\"salt_id\":3}]', 0),
(38, 1, 'akl', 2, 4500, '2018-03-21 08:06:00', 'card', 0, 4500, 0, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"9\",\"parent_id\":\"2\",\"name\":\"Croissant\",\"price\":\"500\",\"date_created\":\"2018-03-20 08:58:38\",\"created_by\":\"1\",\"salt_id\":2}]', 0),
(39, 1, 'Nene', 3, 9000, '2018-03-21 08:56:16', 'card', 0, 9000, 0, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":3},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":4}]', 0),
(40, 1, 'Nene', 3, 9000, '2018-03-21 08:57:51', 'card', 0, 9000, 0, 2, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":3},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":4}]', 0),
(41, 1, 'Nene', 0, 0, '2018-03-21 09:03:27', 'card', 0, 0, 0, 1, '[]', 5),
(42, 1, 'akl', 2, 4500, '2018-03-21 09:03:59', 'cash', 0, 4500, 0, 2, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"9\",\"parent_id\":\"2\",\"name\":\"Croissant\",\"price\":\"500\",\"date_created\":\"2018-03-20 08:58:38\",\"created_by\":\"1\",\"salt_id\":2}]', 5),
(43, 1, 'Nnamdi ', 2, 5500, '2018-03-21 09:06:00', 'card', 0, 5500, 0, 0, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":2}]', 7),
(44, 1, 'Nnamdi ', 2, 5500, '2018-03-21 09:09:50', 'cash', 0, 5500, 0, 1, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":2}]', 7),
(45, 1, 'AKL ', 1, 4000, '2018-03-21 07:06:12', 'cash', 0, 4000, 5000, 1, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1}]', 7),
(46, 1, 'Ada', 2, 5000, '2018-03-23 04:48:17', 'cash', 0, 5000, 0, 1, '[{\"id\":\"6\",\"parent_id\":\"2\",\"name\":\"White-Chips\",\"price\":\"1500\",\"date_created\":\"2018-03-10 09:06:55\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":2}]', 7),
(47, 1, 'seun', 2, 8000, '2018-03-23 07:24:32', 'card', 0, 8000, 0, 1, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":2},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":3}]', 5),
(48, 6, 'gg', 2, 8000, '2018-03-23 08:45:55', 'cash', 0, 8000, 20000, 1, '[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":2}]', 6),
(49, 1, 'test ', 5, 23000, '2018-03-24 07:39:58', 'card', 0, 23000, 0, 1, '[{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"9\",\"parent_id\":\"2\",\"name\":\"Croissant\",\"price\":\"500\",\"date_created\":\"2018-03-20 08:58:38\",\"created_by\":\"1\",\"salt_id\":4},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":5},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":6},{\"id\":\"8\",\"parent_id\":\"7\",\"name\":\"Wine\",\"price\":\"12000\",\"date_created\":\"2018-03-19 12:14:23\",\"created_by\":\"1\",\"salt_id\":8}]', 7),
(50, 1, 'Yinka ', 2, 4000, '2018-03-24 09:37:04', 'both', 1000, 3000, 0, 1, '[{\"id\":\"9\",\"parent_id\":\"2\",\"name\":\"Croissant\",\"price\":\"500\",\"date_created\":\"2018-03-20 08:58:38\",\"created_by\":\"1\",\"salt_id\":9},{\"id\":\"5\",\"parent_id\":\"2\",\"name\":\"Ginger-Bread\",\"price\":\"3500\",\"date_created\":\"2018-03-10 09:06:11\",\"created_by\":\"1\",\"salt_id\":10}]', 7),
(51, 1, 'Kelechi ', 2, 4900, '2018-03-24 11:11:15', 'cash', 0, 4900, 0, 2, '[{\"id\":\"9\",\"parent_id\":\"2\",\"name\":\"Croissant\",\"price\":700,\"date_created\":\"2018-03-20 08:58:38\",\"created_by\":\"1\",\"price_default\":\"500\",\"salt_id\":3},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":4200,\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"price_default\":\"4000\",\"salt_id\":5}]', 5),
(52, 1, 'new customer ', 2, 12900, '2018-03-24 03:45:30', 'both', 1000, 11900, 0, 2, '[{\"id\":\"8\",\"parent_id\":\"7\",\"name\":\"Wine\",\"price\":12200,\"date_created\":\"2018-03-19 12:14:23\",\"created_by\":\"1\",\"price_default\":\"12000\",\"salt_id\":1},{\"id\":\"9\",\"parent_id\":\"2\",\"name\":\"Croissant\",\"price\":700,\"date_created\":\"2018-03-20 08:58:38\",\"created_by\":\"1\",\"price_default\":\"500\",\"salt_id\":2}]', 5);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order_items`
--

CREATE TABLE `customer_order_items` (
  `id` int(11) NOT NULL,
  `customer_order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `parent_id`, `name`, `price`, `date_created`, `created_by`) VALUES
(1, 0, 'Intercontinental Dish', '', '2018-03-10 08:47:50', 1),
(2, 0, 'French.', '', '2018-03-10 08:50:04', 1),
(4, 1, 'Rice', '4000', '2018-03-10 09:04:08', 1),
(5, 2, 'Ginger-Bread', '3500', '2018-03-10 09:06:11', 1),
(6, 2, 'White-Chips', '1500', '2018-03-10 09:06:55', 1),
(7, 0, 'Drinks', '', '2018-03-19 12:14:01', 1),
(8, 7, 'Wine', '12000', '2018-03-19 12:14:23', 1),
(9, 2, 'Croissant', '500', '2018-03-20 08:58:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_order`
--

CREATE TABLE `table_order` (
  `id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `orders_json_data` longtext NOT NULL,
  `customer_json_data` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_order`
--

INSERT INTO `table_order` (`id`, `table_id`, `orders_json_data`, `customer_json_data`) VALUES
(11, 7, '{\"3\":[]}', '[{\"name\":\"new name \",\"salt_id\":3}]'),
(10, 5, '{\"3\":[]}', '[{\"name\":\"Nnamdi \",\"salt_id\":3}]'),
(12, 6, '{\"1\":[{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":1},{\"id\":\"4\",\"parent_id\":\"1\",\"name\":\"Rice\",\"price\":\"4000\",\"date_created\":\"2018-03-10 09:04:08\",\"created_by\":\"1\",\"salt_id\":2}]}', '[{\"name\":\"gg\",\"salt_id\":1}]');

-- --------------------------------------------------------

--
-- Table structure for table `table_placeholder`
--

CREATE TABLE `table_placeholder` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_placeholder`
--

INSERT INTO `table_placeholder` (`id`, `name`, `parent_id`) VALUES
(1, 'Roof Top', 0),
(2, 'Cafe', 0),
(3, 'Table 3', 0),
(5, 'C1', 2),
(6, 'RT1', 1),
(7, 'C2', 2),
(8, 'Executive table', 1);

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
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `company_id`, `surname`, `first_name`, `last_name`, `email`, `password`, `phone`, `address`, `date_created`, `status`, `type`, `created_by`) VALUES
(1, 1, '', '', 0, 'admin', 'admin', '083993', 'ftgfd', '', 1, 'staff', 0),
(5, 0, '', '', 0, 'admin@domain.com', 'admin', '090093990', 'test addr.', '', 0, '', 0),
(7, 0, '', '', 0, 'seun@yahoo.com', 'seun', '99888', 'liekk', '', 0, '', 0),
(8, 0, '', '', 0, 'easymagic1@gmail.com', 'bbb', '0404043934', '', '', 1, '', 0),
(9, 0, '', '', 0, 'admin2', 'aaa', '676766', 'gghg', '', 1, '', 0),
(10, 1, '', '', 0, 'admin2@y.com', 'bbb', '8889999', 'adddd', '2018-03-27 07:32:52', 0, 'staff', 1),
(11, 1, '', '', 0, 'admin3@yy.com', 'admin3', '', '', '2018-03-28 12:23:44', 0, 'staff', 1),
(13, 3, '', '', 0, 'mhs_user@y.com', 'mhs', '', '', '', 1, 'staff', 0),
(14, 3, '', '', 0, 'patient@y.com', 'patient', '102200', '', '2018-03-28 05:20:37', 0, 'patient', 13),
(15, 4, '', '', 0, 'ave_user@y.com', 'ave', '', '', '', 1, 'staff', 0);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order_items`
--
ALTER TABLE `customer_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_order`
--
ALTER TABLE `table_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_placeholder`
--
ALTER TABLE `table_placeholder`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `customer_order_items`
--
ALTER TABLE `customer_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `table_order`
--
ALTER TABLE `table_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `table_placeholder`
--
ALTER TABLE `table_placeholder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_option`
--
ALTER TABLE `user_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
