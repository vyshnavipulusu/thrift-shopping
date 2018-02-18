-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 06:36 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothsharing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cloth`
--

CREATE TABLE `tbl_cloth` (
  `recipe_id` int(5) NOT NULL,
  `user_id` int(5) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `ingredients` text,
  `directions` text,
  `photo` varchar(100) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `request_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cloth`
--

INSERT INTO `tbl_cloth` (`recipe_id`, `user_id`, `name`, `description`, `ingredients`, `directions`, `photo`, `add_time`, `request_id`) VALUES
(30, 16, 'kdjnkdhedkjfkd', 'oip7io78pu', 'dthiclrsdulhiuiee', 'wuhdkjs', 'cloth.jpg', '2018-02-09 12:55:52', 0),
(31, 14, 'tops', 'It is red in color and with silk fabric.It is having flying wings like hands.', 'Slik fabric and light cotton mixing \r\nCost - 400/-', 'Small', 'top.jpg', '2018-02-18 15:49:19', 0),
(32, 14, 'Anarkali', 'It is full-length Anarkali with full sleeves.It is cream and brown color top.', 'It is pure cotton top.\r\nCost - 600/-', 'Large', 'anarkali.jpg', '2018-02-18 15:52:12', 0),
(33, 17, 'tops', 'It is red and black checks on the top.It is having a cholar neck as a model.', 'It is cotton and silk mixing.\r\ncost - 450/-', 'Medium', 'top1.jpg', '2018-02-18 16:04:29', 0),
(34, 17, 'sari', 'It is gold color fabric and light green attached to it.It is also having the shining in the sari.', 'Georgette cloth with silk mixing in it.\r\nCost - 1000/-', 'Large', 'sari.jpg', '2018-02-18 16:11:30', 0),
(35, 22, 'tops', 'It is white in color with some flowers on it.', 'It is pure silk cloth.\r\nCost - 450/-', 'Medium', 'top2.jpg', '2018-02-18 16:13:57', 0),
(36, 22, 'chudidhar', 'It is pink in color and with gold paint.It is having some work on it.', 'It is pure cotton and dupptta is silk cloth.\r\nCost - 800/-', 'XXL', 'dress4.jpg', '2018-02-18 16:17:10', 0),
(37, 25, 'frock', 'It is knee length frock with brown in color.', 'It is silk material and net cloth.', 'ExtraLarge', 'dress2.jpg', '2018-02-18 16:20:01', 0),
(38, 25, 'choli', 'It is light pink and orange mixing color with gold border.', 'It is Kanchipuram pattu cloth.\r\nCost - 2000/-', 'Large', 'dress3.jpg', '2018-02-18 16:22:00', 0),
(39, 20, 'zeans', 'It is grey color with light white shade.', 'It is cotton cloth.\r\nCost - 600/-', 'Medium', 'zeans.jpg', '2018-02-18 16:25:53', 0),
(40, 19, 'shirts', 'It is a navy blue color shirt with white buttons.', 'It is elastic cloth with cotton material.\r\nCost - 700/-', 'Medium', 'shirt.jpg', '2018-02-18 16:29:43', 0),
(41, 19, 'Anarkali', 'It is blue and red in color with golden fetch work.', 'It is silk cloth with pochampalli patch.', 'Large', 'dress.jpg', '2018-02-18 16:31:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comment` text NOT NULL,
  `user_id` int(5) NOT NULL,
  `recipe_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comment`, `user_id`, `recipe_id`) VALUES
('vyyhiudkjkf', 14, 19),
('ghdfghghjh', 15, 19),
('nice', 17, 19),
('nice', 15, 20),
('Nice dress with best price', 14, 24),
('differ from the original', 16, 24),
('hgjfidklhjlgf', 24, 24);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(5) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `password`, `add_time`) VALUES
(14, 'vyshu', 'vyshu1312@gmail.com', 'vyshu', '2018-02-06 13:17:13'),
(15, 'swetha', 'swetha123@gmail.com', 'swetha123', '2018-02-06 14:18:46'),
(16, 'chandhu', 'chandhu123@gmail.com', 'chandhu', '2018-02-06 15:36:50'),
(17, 'lahari', 'lahari123@gmail.com', 'lahari', '2018-02-07 03:31:39'),
(19, 'raji', 'raji123@gmail.com', 'raji', '2018-02-08 09:48:35'),
(20, 'satya', 'satya123@gmail.com', 'satya', '2018-02-08 09:53:02'),
(22, 'divya', 'divya123@gmail.com', 'divya', '2018-02-08 17:00:09'),
(23, 'yeswitha', 'yeswitha123@gmail.com', 'yeswitha', '2018-02-10 13:18:28'),
(25, 'teju', 'teju123@gmail.com', 'teju', '2018-02-17 10:02:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cloth`
--
ALTER TABLE `tbl_cloth`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cloth`
--
ALTER TABLE `tbl_cloth`
  MODIFY `recipe_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
