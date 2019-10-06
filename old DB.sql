-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2019 at 03:26 PM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LcbebFEmU3`
--

-- --------------------------------------------------------

--
-- Table structure for table `available_count`
--

CREATE TABLE `available_count` (
  `id` int(20) NOT NULL,
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `male_slot_count` int(20) NOT NULL DEFAULT '0',
  `female_slot_count` int(20) NOT NULL,
  `salon_id` int(20) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `available_count`
--

INSERT INTO `available_count` (`id`, `time`, `male_slot_count`, `female_slot_count`, `salon_id`, `type`) VALUES
(25, '09:00AM', 4, 2, 2, 'weekday'),
(26, '10:00AM', 2, 2, 2, 'weekday'),
(27, '11:00AM', 8, 10, 2, 'weekday'),
(28, '12:00PM', 7, 5, 2, 'weekday'),
(29, '01:00PM', 7, 5, 2, 'weekday'),
(30, '03:00PM', 5, 5, 2, 'weekday'),
(31, '04:00PM', 5, 5, 2, 'weekday'),
(32, '05:00PM', 5, 5, 2, 'weekday'),
(33, '06:00PM', 5, 5, 2, 'weekday'),
(35, '07:00PM', 5, 8, 2, 'weekday'),
(36, '08:00PM', 5, 9, 2, 'weekday'),
(37, '08:00AM', 5, 5, 2, 'weekend'),
(38, '09:00AM', 7, 5, 2, 'weekend'),
(39, '10:00AM', 6, 5, 2, 'weekend'),
(40, '11:00AM', 10, 10, 2, 'weekend'),
(41, '12:00PM', 7, 5, 2, 'weekend'),
(42, '01:00PM', 7, 5, 2, 'weekend'),
(43, '02:00PM', 6, 5, 2, 'weekend'),
(44, '03:00PM', 5, 5, 2, 'weekend'),
(45, '04:00PM', 5, 5, 2, 'weekend'),
(46, '05:00PM', 6, 8, 2, 'weekend'),
(47, '06:00PM', 8, 5, 2, 'weekend'),
(48, '07:00PM', 5, 5, 2, 'weekend'),
(49, '09:00AM', 5, 5, 1, 'weekday'),
(50, '10:00AM', 2, 0, 1, 'weekday'),
(51, '11:00AM', 10, 12, 1, 'weekday'),
(52, '12:00PM', 5, 5, 1, 'weekday'),
(53, '01:00PM', 5, 4, 1, 'weekday'),
(54, '03:00PM', 2, 2, 1, 'weekday'),
(55, '04:00PM', 1, 1, 1, 'weekday'),
(56, '05:00PM', 0, 5, 1, 'weekday'),
(57, '06:00PM', 5, 5, 1, 'weekday'),
(58, '07:00PM', 5, 5, 1, 'weekday'),
(59, '08:00PM', 5, 5, 1, 'weekday'),
(60, '08:00AM', 5, 5, 1, 'weekend'),
(61, '09:00AM', 5, 5, 1, 'weekend'),
(62, '10:00AM', 5, 5, 1, 'weekend'),
(63, '11:00AM', -7, 5, 1, 'weekend'),
(64, '12:00PM', 5, 5, 1, 'weekend'),
(65, '01:00PM', -3, -2, 1, 'weekend'),
(66, '02:00PM', 5, 5, 1, 'weekend'),
(67, '03:00PM', 0, 5, 1, 'weekend'),
(68, '04:00PM', 5, 5, 1, 'weekend'),
(69, '05:00PM', 5, 5, 1, 'weekend'),
(70, '06:00PM', 5, 5, 1, 'weekend'),
(71, '07:00PM', 5, 5, 1, 'weekend');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(50) NOT NULL,
  `salon_id` int(50) NOT NULL,
  `banner_url` varchar(2083) NOT NULL,
  `offer_text` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `salon_id`, `banner_url`, `offer_text`) VALUES
(1, 1, 'https://innowity.com/greentrends/images/banner1.jpg', 'Hurry!!! Now Green Trends is at your location!! This is the sample offer text for this banner.'),
(2, 1, 'https://innowity.com/greentrends/images/banner2.jpg', 'Hurry!!! Now Green Trends is at your location!! This is the sample offer text for this banner.'),
(3, 1, 'https://innowity.com/greentrends/images/banner3.jpg', 'Hurry!!! Now Green Trends is at your location!! This is the sample offer text for this banner.'),
(4, 2, 'https://innowity.com/greentrends/images/banner5.jpg', 'Hurry!!! Now Green Trends is at your location!! This is the sample offer text for this banner.'),
(5, 2, 'https://innowity.com/greentrends/images/banner6.jpg', 'Hurry!!! Now Green Trends is at your location!! This is the sample offer text for this banner.'),
(6, 2, 'https://innowity.com/greentrends/images/banner1.jpg', 'Hurry!!! Now Green Trends is at your location!! This is the sample offer text for this banner.');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `salon_id` int(50) NOT NULL,
  `emp_id` int(20) DEFAULT NULL,
  `status` int(50) DEFAULT NULL,
  `payment` int(50) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `bill_number` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `razor_id` varchar(50) DEFAULT NULL,
  `paid_at` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sub_total` int(5) NOT NULL DEFAULT '0',
  `tax` int(3) NOT NULL DEFAULT '18',
  `total` int(5) NOT NULL DEFAULT '0',
  `feedback` varchar(2083) NOT NULL DEFAULT 'NA',
  `notes` varchar(2083) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `reschedule_count` int(5) NOT NULL DEFAULT '0',
  `informed` varchar(20) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `updated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `user_id`, `salon_id`, `emp_id`, `status`, `payment`, `payment_type`, `bill_number`, `razor_id`, `paid_at`, `date`, `time`, `sub_total`, `tax`, `total`, `feedback`, `notes`, `reschedule_count`, `informed`, `created_at`, `updated`) VALUES
(126, 54173718, 1, 5, 5, 1, 1, '', '123654', NULL, '2019-09-10', '06:01', 1920, 0, 3500, 'NA', 'six thirty time notes', 0, 'Yes', '0000-00-00 00:00:00', NULL),
(127, 16242102, 2, 1, 5, 2, 2, '0', NULL, NULL, '2019-09-09', '21:01', 3480, 0, 56544, 'NA', 'cancelled because of time schedule', 1, 'Yes', '0000-00-00 00:00:00', NULL),
(128, 16242102, 2, 0, 6, 3, 5, '0', NULL, NULL, '2019-09-09', '10:00AM', 1560, 0, 2850, 'NA', 'cancelled because of time schedule', 2, 'Yes', '0000-00-00 00:00:00', NULL),
(138, 16242102, 2, 2, 5, 1, 2, '0', NULL, NULL, '2019-08-27', '09:00AM', 3480, 0, 7896, 'NA', 'cancelled because of time schedule', 1, 'Yes', '0000-00-00 00:00:00', NULL),
(139, 54130699, 2, 3, 2, 2, 5, '0', NULL, NULL, '2019-08-27', '09:00AM', 0, 18, 0, 'NA', 'sample', 0, 'Yes', '0000-00-00 00:00:00', NULL),
(140, 54130699, 2, 1, 1, 3, 5, '0', NULL, NULL, '2019-08-27', '10:00AM', 0, 18, 0, 'NA', 'cancelled because of time schedule', 1, 'Yes', '0000-00-00 00:00:00', NULL),
(141, 54130699, 2, 2, 5, 1, 5, '0', NULL, NULL, '2019-08-20', '09:00AM', 0, 18, 0, 'nice service rendered', 'six thirty time notes', 0, 'Yes', '0000-00-00 00:00:00', NULL),
(142, 54130699, 1, 4, 5, 1, 1, '0', '123456', NULL, '2019-08-21', '09:00AM', 0, 18, 0, 'NA', 'six thirty time notes', 0, '', '0000-00-00 00:00:00', NULL),
(144, 54130699, 1, 0, 2, 1, NULL, '0', NULL, NULL, '2019-08-21', '09:00AM', 0, 18, 0, 'NA', 'six thirty time notes', 0, '', '0000-00-00 00:00:00', NULL),
(145, 54130699, 1, 0, 2, 1, NULL, '0', NULL, NULL, '2019-08-21', '09:00AM', 0, 18, 0, 'NA', 'six thirty time notes', 0, '', '0000-00-00 00:00:00', NULL),
(146, 54130699, 1, 0, 5, 1, 2, '0', NULL, NULL, '2019-08-21', '09:00AM', 0, 18, 100, 'NA', 'six thirty time notes', 0, 'Yes', '0000-00-00 00:00:00', NULL),
(147, 54130699, 1, 0, 5, 2, 2, '0', '123456', NULL, '2019-08-26', '11:00AM', 0, 18, 0, 'NA', 'six thirty time notes', 0, NULL, '0000-00-00 00:00:00', NULL),
(148, 54130699, 1, 0, 6, 3, NULL, '0', NULL, NULL, '2019-08-27', '09:00AM', 0, 18, 0, 'NA', 'cancelled because of time schedule', 0, NULL, '0000-00-00 00:00:00', NULL),
(149, 54130699, 1, 0, 5, 2, NULL, '0', NULL, NULL, '2019-08-31', '10:00AM', 0, 18, 0, 'nice service rendered', 'cancelled because of time schedule', 1, NULL, '0000-00-00 00:00:00', NULL),
(150, 92366190, 1, 0, 3, 1, NULL, '0', NULL, NULL, '2019-08-31', '10:00AM', 0, 18, 0, 'NA', 'new comment is this beacuse something bla bla', 1, NULL, '0000-00-00 00:00:00', NULL),
(151, 4, 2, 0, 6, 3, NULL, '0', NULL, NULL, '2019-08-22', '10:00AM', 0, 18, 0, 'NA', 'Engaged with other work', 1, NULL, '0000-00-00 00:00:00', NULL),
(152, 4, 2, 0, 3, 1, NULL, '0', NULL, NULL, '2019-08-22', '01:00PM', 0, 18, 0, 'NA', '', 1, NULL, '0000-00-00 00:00:00', NULL),
(153, 92366190, 2, 1, 5, 2, 2, '0', '123456', NULL, '2019-08-27', '04:00AM', 0, 18, 5236, 'NA', 'six thirty time notes', 0, '', '0000-00-00 00:00:00', NULL),
(157, 92366190, 2, 2, 5, 1, 1, '#resrst', NULL, NULL, '2019-08-27', '04:00AM', 0, 18, 43443, 'NA', 'six thirty time notes', 0, 'Yes', '0000-00-00 00:00:00', NULL),
(158, 92366190, 1, 0, 2, 1, NULL, '0', NULL, NULL, '2019-08-27', '', 0, 18, 0, 'NA', 'six thirty time notes', 0, '', '0000-00-00 00:00:00', NULL),
(159, 4, 2, 0, 3, 1, NULL, '0', NULL, NULL, '2019-08-24', '03:00PM', 0, 18, 0, 'NA', '', 1, NULL, '0000-00-00 00:00:00', NULL),
(160, 92366190, 1, 0, 3, 1, NULL, '0', NULL, NULL, '2019-08-30', '10:00AM', 0, 18, 0, 'NA', 'new comment is this beacuse something bla bla', 1, NULL, '0000-00-00 00:00:00', NULL),
(161, 50978953, 1, 0, 3, 1, NULL, '0', NULL, NULL, '2019-08-28', '05:00PM', 0, 18, 0, 'NA', '', 1, NULL, '0000-00-00 00:00:00', NULL),
(162, 50978953, 1, 0, 6, 3, NULL, '0', NULL, NULL, '2019-08-27', '01:00PM', 0, 18, 0, 'NA', 'Engaged with other work', 0, NULL, '0000-00-00 00:00:00', NULL),
(163, 11515504, 1, 0, 6, 3, NULL, '0', NULL, NULL, '2019-08-31', '06:00PM', 0, 18, 0, 'NA', 'Engaged with other work ', 1, NULL, '0000-00-00 00:00:00', NULL),
(164, 11515504, 1, 0, 6, 3, NULL, '0', NULL, NULL, '2019-08-30', '10:00AM', 0, 18, 0, 'NA', 'I am going to some reason,so I am did not coming for booking time.', 1, NULL, '0000-00-00 00:00:00', NULL),
(165, 11515504, 1, 0, 6, 3, NULL, '0', NULL, NULL, '2019-08-31', '10:00AM', 0, 18, 0, 'NA', 'Engaged with other work', 0, NULL, '0000-00-00 00:00:00', NULL),
(166, 11515504, 1, 0, 6, 3, NULL, '0', NULL, NULL, '2019-08-28', '01:00PM', 0, 18, 0, 'NA', 'Out of the station', 0, NULL, '0000-00-00 00:00:00', NULL),
(167, 11515504, 1, 0, 3, 1, NULL, '0', NULL, NULL, '2019-09-14', '08:00AM', 0, 18, 0, 'NA', '', 1, NULL, '0000-00-00 00:00:00', NULL),
(168, 11515504, 1, 4, 2, 1, NULL, '0', NULL, NULL, '2019-08-27', '10:00AM', 0, 18, 0, 'NA', '', 0, '', '0000-00-00 00:00:00', NULL),
(169, 50978953, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-08-30', '01:00PM', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(170, 95084737, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-08-31', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(171, 95084737, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-08-31', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(172, 95084737, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-03', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(173, 65734140, 1, 0, 3, 1, NULL, '', NULL, NULL, '2019-08-31', '03:00PM', 0, 18, 0, 'NA', '', 1, NULL, '0000-00-00 00:00:00', NULL),
(174, 43769248, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-08-30', '10:00AM', 0, 18, 0, 'NA', 'Engaged with other work', 1, NULL, '0000-00-00 00:00:00', NULL),
(175, 43769248, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-08-31', '12:00PM', 0, 18, 0, 'NA', 'Out of the station', 0, NULL, '0000-00-00 00:00:00', NULL),
(176, 43769248, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-08-31', '03:00PM', 0, 18, 0, 'NA', 'I have No time for service. ', 0, NULL, '0000-00-00 00:00:00', NULL),
(177, 5, 2, 1, 5, 1, 5, '', NULL, NULL, '2019-08-31', '09:00AM', 0, 18, 1000, 'NA', '', 0, 'Yes', '0000-00-00 00:00:00', NULL),
(178, 70250398, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-08-30', '10:00AM', 0, 18, 0, 'NA', 'Engaged with other work', 1, NULL, '0000-00-00 00:00:00', NULL),
(179, 70250398, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-08-30', '09:00AM', 0, 18, 0, 'NA', 'Engaged with other work ', 0, NULL, '0000-00-00 00:00:00', NULL),
(180, 70250398, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-07', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(181, 54081431, 1, 0, 3, 1, NULL, '', NULL, NULL, '2019-09-07', '10:00AM', 0, 18, 0, 'NA', '', 1, NULL, '0000-00-00 00:00:00', NULL),
(182, 54081431, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-09-06', '11:00AM', 0, 18, 0, 'NA', 'Engaged with other work', 0, NULL, '0000-00-00 00:00:00', NULL),
(183, 54081431, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-05', '01:00PM', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(184, 72657693, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-05', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(185, 11515504, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-09-10', '11:00AM', 0, 18, 0, 'NA', 'Out of the station', 0, NULL, '0000-00-00 00:00:00', NULL),
(186, 54081431, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-12', '13:00', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(187, 92366190, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-27', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(188, 92366190, 1, 0, 5, 2, 2, '', '123456', NULL, '2019-10-01', '10:00AM', 0, 18, 0, 'nice service rendered', 'new comment is this beacuse something bla bla', 1, NULL, '0000-00-00 00:00:00', NULL),
(189, 92366190, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-10-01', '10:00AM', 0, 18, 0, 'NA', 'cancelled because of time schedule', 1, NULL, '0000-00-00 00:00:00', NULL),
(190, 92366190, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(191, 92366190, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '0000-00-00 00:00:00', NULL),
(192, 89582548, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-09-11', '10:00AM', 0, 18, 0, 'NA', 'Out of the station ', 0, NULL, '0000-00-00 00:00:00', NULL),
(193, 11515504, 2, 2, 5, 1, 1, '', '3434', NULL, '2019-09-10', '05:00PM', 15820, 18333, 134233, 'NA  dsf  sd  fsdf sdf sfsss', 'test', 0, 'Yes', '2019-09-10 00:00:00', NULL),
(194, 38338638, 1, 0, 5, 1, 1, '', NULL, NULL, '2019-09-10', '08:00PM', 0, 18, 0, 'NA', '', 1, NULL, '2019-09-10 14:45:18', NULL),
(195, 38338638, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-09-11', '08:00PM', 0, 18, 0, 'NA', 'Out of the station', 1, NULL, '2019-09-10 14:47:42', NULL),
(196, 38338638, 1, 0, 6, 1, NULL, '', NULL, NULL, '2019-09-11', '06:00PM', 0, 18, 0, 'NA', '', 1, NULL, '2019-09-10 15:02:35', NULL),
(197, 38338638, 1, 4, 5, 1, 1, '', NULL, NULL, '2019-09-12', '10:00AM', 0, 18, 0, 'NA', '', 0, 'Yes', '2019-09-10 15:32:19', NULL),
(198, 38338638, 1, 5, 5, 1, 2, '', NULL, NULL, '2019-09-12', '10:00AM', 0, 18, 150, 'NA', '', 0, '', '2019-09-10 15:33:18', NULL),
(199, 38338638, 1, 4, 5, 1, 1, '', NULL, NULL, '2019-09-10', '08:00PM', 0, 18, 150, 'NA', '', 0, '', '2019-09-10 15:34:18', NULL),
(200, 38338638, 1, 0, 5, 1, 1, '', NULL, NULL, '2019-09-11', '03:00PM', 0, 18, 1500, 'NA', '', 1, 'Yes', '2019-09-11 05:34:36', NULL),
(201, 11515504, 2, 1, 5, 1, 2, '#234', NULL, NULL, '2019-09-11', '09:00AM', 0, 18, 4569, 'NA', '', 0, 'Yes', '2019-09-11 07:01:32', NULL),
(202, 12164943, 1, 0, 5, 2, 2, '', '123456', NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-11 07:10:29', NULL),
(203, 38338638, 1, 5, 5, 1, 2, '7896442', NULL, NULL, '2019-09-11', '02:00PM', 0, 18, 250, 'NA', '', 0, 'Yes', '2019-09-11 10:07:39', NULL),
(204, 38338638, 1, 4, 5, 0, 1, '', NULL, NULL, '2019-09-11', '02:00PM', 0, 18, 0, 'NA', '', 0, '', '2019-09-11 10:08:52', NULL),
(205, 38338638, 1, 0, 5, 0, 2, '4756982', NULL, NULL, '2019-09-11', '02:00PM', 0, 18, 800, 'NA', '', 0, '', '2019-09-11 10:09:31', NULL),
(206, 38338638, 1, 4, 0, 2, 1, '852369', NULL, NULL, '2019-09-11', '', 0, 18, 340, 'NA', '', 0, '', '2019-09-11 10:18:00', NULL),
(207, 38338638, 1, 4, 5, 1, 2, '7894123', NULL, NULL, '2019-09-11', '08:00AM', 0, 18, 120, 'NA', '', 0, 'Yes', '2019-09-11 10:42:57', NULL),
(208, 81566996, 1, 0, 5, 2, 2, '', '123456', NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-11 11:39:16', NULL),
(209, 38338638, 1, 5, 6, 3, NULL, '', NULL, NULL, '2019-09-12', '09:00AM', 0, 18, 0, 'NA', 'Out of the station', 0, 'Yes', '2019-09-11 15:26:28', NULL),
(210, 38338638, 1, 4, 5, 2, 2, '', '0', NULL, '2019-09-12', '09:00AM', 0, 18, 150, 'NA', '', 0, 'Yes', '2019-09-11 15:27:58', NULL),
(211, 82693030, 1, 0, 5, 1, 2, '', NULL, NULL, '2019-09-13', '11:00AM', 0, 18, 1500, 'NA', '', 0, 'Yes', '2019-09-12 05:24:36', NULL),
(212, 38338638, 1, 0, 5, 2, 2, '24680', '0', NULL, '2019-09-12', '04:00PM', 0, 18, 1500, 'NA', '', 0, '', '2019-09-12 07:44:53', NULL),
(213, 24386322, 1, 4, 5, 2, 2, '45678', '0', NULL, '2019-09-12', '04:00PM', 0, 18, 1500, 'NA', '', 0, 'Yes', '2019-09-12 08:02:31', NULL),
(214, 8436252, 1, 4, 5, 2, 2, '2468', '0', NULL, '2019-09-12', '06:00PM', 0, 18, 200, 'NA', '', 0, 'Yes', '2019-09-12 11:23:38', NULL),
(215, 76906695, 1, 4, 2, 1, NULL, '', NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, 'Yes', '2019-09-12 11:24:41', NULL),
(216, 76906695, 1, 5, 5, 2, 2, '', '123456', NULL, '2019-09-30', '04:00PM', 0, 18, 2000, 'NA', '', 0, 'Yes', '2019-09-12 11:26:38', NULL),
(217, 74831147, 1, 0, 2, 1, NULL, '', NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, '', '2019-09-12 11:33:34', NULL),
(218, 74831147, 1, 5, 5, 2, 2, '', '123456', NULL, '2019-09-12', '04:00PM', 0, 18, 5000, 'NA', '', 0, 'Yes', '2019-09-12 11:34:57', NULL),
(219, 44257368, 1, 4, 5, 2, 2, '', '123456', NULL, '2019-09-13', '04:00PM', 0, 18, 3000, 'NA', '', 0, 'Yes', '2019-09-12 11:39:24', NULL),
(220, 38338638, 1, 4, 5, 1, 2, '', NULL, NULL, '2019-09-13', '08:00PM', 0, 18, 500, 'NA', '', 0, 'Yes', '2019-09-13 10:59:35', NULL),
(221, 38338638, 1, 4, 6, 3, NULL, '', NULL, NULL, '2019-09-13', '08:00PM', 0, 18, 0, 'NA', 'Out of the station', 1, '', '2019-09-13 11:24:28', NULL),
(222, 38338638, 1, 5, 2, 1, NULL, '', NULL, NULL, '2019-09-13', '08:00PM', 0, 18, 0, 'NA', '', 0, '', '2019-09-13 11:24:57', NULL),
(223, 38338638, 1, 0, 2, 1, NULL, '', NULL, NULL, '2019-09-20', '01:00PM', 0, 18, 0, 'NA', '', 0, '', '2019-09-13 11:40:20', NULL),
(224, 38338638, 1, 0, 2, 1, NULL, '', NULL, NULL, '2019-09-15', '01:00PM', 0, 18, 0, 'NA', '', 1, NULL, '2019-09-13 11:43:50', NULL),
(225, 38338638, 1, 4, 2, 1, NULL, '', NULL, NULL, '2019-09-15', '12:00PM', 0, 18, 0, 'NA', '', 0, '', '2019-09-13 11:44:06', NULL),
(226, 38338638, 1, 5, 2, 1, NULL, '', NULL, NULL, '2019-09-15', '12:00PM', 0, 18, 0, 'NA', '', 0, '', '2019-09-13 11:46:22', NULL),
(227, 38338638, 1, 4, 2, 1, NULL, '', NULL, NULL, '2019-09-15', '01:00PM', 0, 18, 0, 'NA', '', 0, '', '2019-09-13 11:48:08', NULL),
(228, 89582548, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-13', '08:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-13 12:15:57', NULL),
(229, 38338638, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-09-14', '12:00PM', 0, 18, 0, 'NA', 'Out of the station', 0, NULL, '2019-09-14 10:17:51', NULL),
(230, 38338638, 1, 0, 3, 1, NULL, '', NULL, NULL, '2019-09-16', '09:00AM', 0, 18, 0, 'NA', '', 1, NULL, '2019-09-14 10:18:49', NULL),
(231, 89582548, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-14', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-14 10:24:33', NULL),
(232, 38338638, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-14', '03:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-14 10:27:41', NULL),
(233, 38338638, 1, 4, 5, 2, 2, '123456', '0', NULL, '2019-09-14', '05:00PM', 0, 18, 1500, 'NA', '', 0, '', '2019-09-14 10:30:56', NULL),
(234, 38338638, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-14', '03:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-14 10:39:50', NULL),
(235, 38338638, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-14', '05:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-14 10:52:19', NULL),
(236, 44257368, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', 'cancelled because of time schedule', 1, NULL, '2019-09-16 09:03:42', NULL),
(237, 44257368, 1, 0, 3, 1, NULL, '', NULL, NULL, '2019-09-28', '10:00AM', 0, 18, 0, 'NA', 'new comment is this beacuse something bla bla', 1, NULL, '2019-09-16 09:07:16', '2019-09-17 07:07 PM'),
(238, 38338638, 1, 0, 6, 3, NULL, '', NULL, NULL, '2019-09-17', '01:00PM', 0, 18, 0, 'NA', 'Out of the station', 1, NULL, '2019-09-17 05:56:19', NULL),
(239, 38338638, 1, 4, 5, 1, 2, '1234567', NULL, NULL, '2019-09-17', '04:00PM', 0, 18, 1500, 'NA', '', 0, '', '2019-09-17 06:03:32', NULL),
(240, 44257368, 2, 1, 5, 1, 1, '', NULL, NULL, '2019-09-28', '10:00AM', 0, 18, 0, 'NA', 'new comment is this beacuse something bla bla', 1, 'Yes', '2019-09-16 06:42:29', '19-09-17 12:23:59 PM'),
(241, 38338638, 2, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-17', '03:00PM', 0, 18, 0, 'NA', '', 1, NULL, '2019-09-17 06:46:33', '19-09-17 12:23:59 PM'),
(242, 44257368, 2, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:50:19', '19-09-17 12:23:59 PM'),
(243, 44257368, 2, 0, 3, 1, NULL, '', NULL, NULL, '2019-09-28', '10:00AM', 0, 18, 0, 'NA', 'new comment is this beacuse something bla bla', 1, NULL, '2019-09-17 06:53:59', '2019-09-17 07:16 PM'),
(244, 44257368, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 09:56:09', '2019-09-17 03:26 PM'),
(245, 44257368, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 09:57:02', '2019-09-17 03:27 PM'),
(246, 44257368, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 09:57:48', '2019-09-17 03:27 PM'),
(247, 44257368, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 09:58:37', '2019-09-17 03:28 PM'),
(248, 44257368, 1, 0, 1, 1, NULL, '', NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 09:59:07', '2019-09-17 03:29 PM'),
(249, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00PM', 0, 18, 0, 'NA', 'something notes here', 0, NULL, '2019-09-17 11:14:45', '2019-09-17 03:28 PM'),
(250, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:15:22', '2019-09-17 04:45 PM'),
(251, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:16:12', '2019-09-17 04:46 PM'),
(252, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '04:00PM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:25:18', '2019-09-17 04:55 PM'),
(253, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:33:45', '2019-09-17 05:03 PM'),
(254, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:48:42', '2019-09-17 05:18 PM'),
(255, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:48:56', '2019-09-17 05:18 PM'),
(256, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:49:05', '2019-09-17 05:19 PM'),
(257, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:49:15', '2019-09-17 05:19 PM'),
(258, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:49:24', '2019-09-17 05:19 PM'),
(259, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:51:20', '2019-09-17 05:21 PM'),
(260, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 11:52:15', '2019-09-17 05:22 PM'),
(261, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 12:05:32', '2019-09-17 05:35 PM'),
(262, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '10:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 12:07:29', '2019-09-17 05:37 PM'),
(263, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 05:45 PM', '2019-09-17 05:45 PM'),
(264, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 05:48 PM', '2019-09-17 05:48 PM'),
(265, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 05:49 PM', '2019-09-17 05:49 PM'),
(266, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:12 PM', '2019-09-17 06:12 PM'),
(267, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:12 PM', '2019-09-17 06:12 PM'),
(268, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:12 PM', '2019-09-17 06:12 PM'),
(269, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:13 PM', '2019-09-17 06:13 PM'),
(270, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:14 PM', '2019-09-17 06:14 PM'),
(271, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:18 PM', '2019-09-17 06:18 PM'),
(272, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:23 PM', '2019-09-17 06:23 PM'),
(273, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '11:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:24 PM', '2019-09-17 06:24 PM'),
(274, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-09-30', '19:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:31 PM', '2019-09-17 06:31 PM'),
(275, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-12-31', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:38 PM', '2019-09-17 06:38 PM'),
(276, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-12-31', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:54 PM', '2019-09-17 06:54 PM'),
(277, 44257368, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-12-31', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-17 06:57 PM', '2019-09-17 06:57 PM'),
(278, 44257368, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-10-02', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-18 04:20 PM', '2019-09-18 04:20 PM'),
(279, 44257368, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-10-02', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-18 04:26 PM', '2019-09-18 04:26 PM'),
(281, 44257368, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-10-02', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-18 04:50 PM', '2019-09-18 04:50 PM'),
(282, 44257368, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-10-02', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-18 04:50 PM', '2019-09-18 04:50 PM'),
(283, 44257368, 2, NULL, 3, 1, NULL, NULL, NULL, NULL, '2019-10-10', '10:00AM', 0, 18, 0, 'NA', 'new comment is this beacuse something bla bla', 1, NULL, '2019-09-18 04:51 PM', '2019-09-18 05:06 PM'),
(284, 44257368, 2, NULL, 3, 1, NULL, NULL, NULL, NULL, '2019-10-10', '10:00AM', 0, 18, 0, 'NA', 'new comment is this beacuse something bla bla', 1, NULL, '2019-09-18 05:08 PM', '2019-09-18 05:08 PM'),
(285, 44257368, 2, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-10-02', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-18 05:09 PM', '2019-09-18 05:09 PM'),
(286, 25135831, 1, NULL, 5, 2, NULL, NULL, NULL, NULL, '2019-10-02', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-18 05:20 PM', '2019-09-18 05:20 PM'),
(287, 9793378, 1, NULL, 5, 2, 2, NULL, 'abc1234', '2019-09-18 18:32:49', '2019-10-02', '09:00AM', 0, 18, 0, 'NA', '', 0, NULL, '2019-09-18 05:52 PM', '2019-09-18 05:52 PM');

-- --------------------------------------------------------

--
-- Table structure for table `booking_item`
--

CREATE TABLE `booking_item` (
  `id` int(11) NOT NULL,
  `service_id` int(20) NOT NULL,
  `min_price` int(10) NOT NULL DEFAULT '0',
  `max_price` int(10) NOT NULL DEFAULT '0',
  `booking_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_item`
--

INSERT INTO `booking_item` (`id`, `service_id`, `min_price`, `max_price`, `booking_id`) VALUES
(64, 11, 585, 705, 193),
(65, 12, 585, 705, 193),
(66, 12, 585, 705, 140),
(67, 12, 585, 705, 134),
(68, 12, 585, 705, 135),
(69, 12, 585, 705, 127),
(70, 13, 275, 330, 193),
(71, 13, 275, 330, 126),
(76, 4, 2785, 3345, 193),
(77, 4, 2785, 3345, 141),
(78, 4, 2785, 3345, 142),
(79, 4, 2785, 3345, 143),
(80, 4, 2785, 3345, 144),
(81, 4, 2785, 3345, 145),
(82, 4, 2785, 3345, 146),
(83, 4, 2785, 3345, 147),
(84, 4, 2785, 3345, 148),
(85, 16, 1600, 1920, 149),
(86, 33, 1000, 2000, 149),
(87, 4, 2785, 3345, 150),
(88, 5, 40, 334550, 193),
(89, 37, 1000, 2000, 193),
(90, 38, 1000, 20002000, 193),
(91, 25, 280, 340, 193),
(92, 5, 40, 50, 193),
(93, 6, 40, 5050, 153),
(94, 6, 40, 50, 0),
(95, 6, 40, 50, 0),
(96, 6, 40, 50, 0),
(97, 6, 40, 50, 157),
(98, 6, 40, 50, 158),
(99, 18, 150, 180, 159),
(100, 19, 660, 180795, 159),
(101, 17, 150, 180795180, 159),
(102, 20, 2785, 2147483647, 159),
(103, 6, 40, 50, 160),
(104, 11, 85, 105, 161),
(105, 10, 285, 105315, 161),
(106, 8, 150, 180, 162),
(107, 33, 1000, 2000, 163),
(108, 1, 150, 2000180, 163),
(109, 33, 1000, 2000, 164),
(110, 1, 150, 180, 165),
(111, 33, 1000, 2000, 166),
(112, 1, 150, 180, 167),
(113, 2, 150, 180, 168),
(114, 1, 150, 180180, 168),
(115, 1, 150, 180, 169),
(116, 1, 150, 180, 170),
(117, 33, 1000, 2000, 171),
(118, 36, 1077, 1343, 172),
(119, 33, 1000, 2000, 173),
(120, 33, 1000, 2000, 174),
(121, 33, 1000, 2000, 175),
(122, 33, 1000, 2000, 176),
(123, 24, 150, 180, 177),
(124, 22, 40, 18050, 177),
(125, 33, 1000, 2000, 178),
(126, 34, 1000, 20002000, 178),
(127, 1, 150, 180, 179),
(128, 1, 150, 180, 180),
(129, 35, 1000, 1802000, 180),
(130, 1, 150, 180, 181),
(131, 1, 150, 180, 182),
(132, 3, 660, 180795, 182),
(133, 7, 50, 18079560, 182),
(134, 5, 40, 50, 183),
(135, 6, 40, 5050, 183),
(136, 8, 150, 5050180, 183),
(137, 33, 1000, 2147483647, 183),
(138, 1, 150, 180, 184),
(139, 5, 40, 50, 185),
(140, 6, 40, 5050, 185),
(141, 33, 1000, 50502000, 185),
(142, 6, 40, 50, 186),
(143, 7, 50, 5060, 186),
(144, 11, 85, 5060105, 186),
(145, 6, 40, 50, 187),
(146, 6, 40, 50, 188),
(147, 6, 40, 50, 189),
(148, 6, 40, 50, 190),
(149, 6, 40, 50, 191),
(150, 1, 150, 180, 192),
(151, 33, 1000, 1802000, 192),
(152, 33, 1000, 2000, 194),
(153, 33, 1000, 2000, 195),
(154, 33, 1000, 2000, 196),
(155, 1, 150, 180, 197),
(156, 34, 1000, 2000, 198),
(157, 34, 1000, 2000, 199),
(158, 33, 1000, 2000, 200),
(159, 37, 1000, 2000, 201),
(160, 6, 40, 50, 202),
(161, 33, 1000, 2000, 203),
(162, 33, 1000, 2000, 204),
(163, 33, 1000, 2000, 205),
(164, 5, 40, 50, 206),
(165, 6, 40, 5050, 206),
(166, 7, 50, 505060, 206),
(167, 8, 150, 505060180, 206),
(168, 33, 1000, 2000, 207),
(169, 6, 40, 50, 208),
(170, 1, 150, 180, 209),
(171, 33, 1000, 2000, 210),
(172, 33, 1000, 2000, 211),
(173, 33, 1000, 2000, 212),
(174, 1, 150, 180, 213),
(175, 33, 1000, 2000, 214),
(176, 6, 40, 50, 215),
(177, 6, 40, 50, 216),
(178, 6, 40, 50, 217),
(179, 6, 40, 50, 218),
(180, 6, 40, 50, 219),
(181, 33, 1000, 2000, 220),
(182, 5, 40, 200050, 220),
(183, 1, 150, 200050180, 220),
(184, 9, 280, 2147483647, 220),
(185, 13, 275, 2147483647, 220),
(186, 34, 1000, 2000, 221),
(187, 33, 1000, 20002000, 221),
(188, 9, 280, 340, 222),
(189, 10, 285, 340315, 222),
(190, 11, 85, 340315105, 222),
(191, 34, 1000, 2000, 223),
(192, 5, 40, 50, 224),
(193, 34, 1000, 2000, 225),
(194, 6, 40, 50, 226),
(195, 3, 660, 795, 227),
(196, 5, 40, 79550, 227),
(197, 2, 150, 180, 228),
(198, 5, 40, 18050, 228),
(199, 6, 40, 1805050, 228),
(200, 9, 280, 1805050340, 228),
(201, 7, 50, 2147483647, 228),
(202, 34, 1000, 2000, 229),
(203, 35, 1000, 20002000, 229),
(204, 33, 1000, 2000, 230),
(205, 34, 1000, 2000, 231),
(206, 33, 1000, 2000, 232),
(207, 33, 1000, 2000, 233),
(208, 1, 150, 180, 234),
(209, 33, 1000, 2000, 235),
(210, 6, 40, 50, 236),
(211, 6, 40, 50, 237),
(212, 34, 1000, 2000, 238),
(213, 33, 1000, 20002000, 238),
(214, 35, 1000, 2147483647, 238),
(215, 34, 1000, 2000, 239),
(216, 6, 40, 50, 240),
(217, 33, 1000, 2000, 241),
(218, 6, 40, 50, 242),
(219, 6, 40, 50, 243),
(220, 6, 40, 50, 244),
(221, 6, 40, 50, 245),
(222, 6, 40, 50, 246),
(223, 6, 40, 50, 247),
(224, 6, 40, 50, 248),
(225, 6, 40, 50, 0),
(226, 6, 40, 50, 0),
(227, 6, 40, 50, 0),
(228, 6, 40, 50, 0),
(229, 6, 40, 50, 0),
(230, 6, 40, 50, 0),
(231, 6, 40, 50, 250),
(232, 6, 40, 50, 251),
(233, 6, 40, 50, 252),
(234, 6, 40, 50, 253),
(235, 6, 40, 50, 254),
(236, 6, 40, 50, 255),
(237, 6, 40, 50, 256),
(238, 6, 40, 50, 257),
(239, 6, 40, 50, 258),
(240, 6, 40, 50, 259),
(241, 6, 40, 50, 260),
(242, 6, 40, 50, 0),
(243, 6, 40, 50, 0),
(244, 6, 40, 50, 0),
(245, 6, 40, 50, 0),
(246, 6, 40, 50, 0),
(247, 6, 40, 50, 264),
(248, 6, 40, 50, 265),
(249, 6, 40, 50, 266),
(250, 6, 40, 50, 267),
(251, 6, 40, 50, 268),
(252, 6, 40, 50, 269),
(253, 6, 40, 50, 270),
(254, 6, 40, 50, 271),
(255, 6, 40, 50, 272),
(256, 6, 40, 50, 273),
(257, 6, 40, 50, 274),
(258, 6, 40, 50, 275),
(259, 6, 40, 50, 276),
(260, 6, 40, 50, 277),
(261, 6, 40, 50, 278),
(262, 21, 40, 50, 279),
(263, 21, 40, 50, 280),
(264, 21, 40, 50, 281),
(265, 21, 40, 50, 282),
(266, 21, 40, 50, 283),
(267, 21, 40, 50, 284),
(268, 21, 40, 50, 285),
(269, 6, 40, 50, 286),
(270, 6, 40, 50, 287);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(20) NOT NULL,
  `service_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`id`, `service_id`, `user_id`) VALUES
(264, 9, 6778341),
(268, 14, 6778341),
(269, 13, 6778341),
(270, 16, 6778341),
(288, 28, 4),
(301, 1, 50978953),
(306, 37, 4),
(350, 33, 21476798),
(363, 33, 54081431),
(399, 33, 94742051),
(401, 33, 7342875),
(410, 10, 54081431),
(411, 1, 54081431),
(432, 33, 89582548),
(446, 33, 38338638);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `discount_name` varchar(250) NOT NULL,
  `discount_code` varchar(250) NOT NULL,
  `discount_group` varchar(250) NOT NULL,
  `discount_services` varchar(250) NOT NULL,
  `is_membership` varchar(250) NOT NULL,
  `discount_type` int(5) NOT NULL DEFAULT '0',
  `discount_value` int(10) NOT NULL DEFAULT '0',
  `discount_from` varchar(250) NOT NULL,
  `discount_to` varchar(250) NOT NULL,
  `salon_id` int(5) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `discount_name`, `discount_code`, `discount_group`, `discount_services`, `is_membership`, `discount_type`, `discount_value`, `discount_from`, `discount_to`, `salon_id`) VALUES
(10, 'test', 'test', 'test', '4,21,22,23,24,25,26,27,28,29,30,31,32,37,38,39', 'Yes', 2, 340, '2019-09-01', '2019-09-24', 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(20) NOT NULL,
  `emp_salon_id` int(250) NOT NULL,
  `emp_first_name` varchar(250) NOT NULL,
  `emp_last_name` varchar(250) NOT NULL,
  `emp_email` varchar(250) NOT NULL,
  `emp_address` varchar(500) NOT NULL,
  `emp_mobile` varchar(50) NOT NULL,
  `emp_status` varchar(250) NOT NULL,
  `emp_date_from` varchar(250) NOT NULL,
  `emp_date_to` varchar(250) NOT NULL,
  `weekday_slots` varchar(1000) NOT NULL,
  `weekend_slots` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_salon_id`, `emp_first_name`, `emp_last_name`, `emp_email`, `emp_address`, `emp_mobile`, `emp_status`, `emp_date_from`, `emp_date_to`, `weekday_slots`, `weekend_slots`) VALUES
(1, 2, 'employee1', 'gtrends', 'emp1@gtrends.com', 'perumbakkam\r\nchennai', '987456321', 'active', '2019-07-25', '2020-07-30', '10AM-11AM,11AM-12AM', '08AM-09AM,09AM-10AM,10AM-11AM,11AM-12PM'),
(2, 2, 'employee 2', 'gtrends', 'emp2@gtrends.com', 'nungambakkam\r\nchennai', '321456987', 'active', '2019-07-25', '2020-08-26', '9AM-10AM,10AM-11AM,11AM-12AM,01PM-02PM,02PM-03PM,03PM-04PM,04PM-05AM,06PM-07PM,07PM-08PM', '08AM-09AM,09AM-10AM,10AM-11AM,11AM-12PM,01PM-02PM,02PM-03PM,03PM-04PM,05PM-06PM,07PM-08PM'),
(3, 2, 'employee 3', 'gtrends', 'emp2@gtrends.com', 'nungambakkam\r\nchennai', '321456987', 'active', '2019-07-25', '2020-08-26', '9AM-10AM,10AM-11AM,11AM-12AM,01PM-02PM,02PM-03PM,03PM-04PM,04PM-05AM,06PM-07PM,07PM-08PM', '08AM-09AM,09AM-10AM,10AM-11AM,11AM-12PM,01PM-02PM,02PM-03PM,03PM-04PM,05PM-06PM,07PM-08PM'),
(4, 1, 'employee4', 'gtrends', 'emp1@gtrends.com', 'perumbakkam\r\nchennai', '987456321', 'active', '2019-07-25', '2020-07-30', '10AM-11AM,11AM-12AM', '08AM-09AM,10AM-11AM,11AM-12PM'),
(5, 1, 'employee 5', 'gtrends', 'emp2@gtrends.com', 'nungambakkam\r\nchennai', '321456987', 'active', '2019-07-25', '2020-08-26', '9AM-10AM,10AM-11AM,11AM-12AM,01PM-02PM,02PM-03PM,03PM-04PM,04PM-05AM,06PM-07PM,07PM-08PM', '08AM-09AM,09AM-10AM,10AM-11AM,11AM-12PM,01PM-02PM,02PM-03PM,03PM-04PM,05PM-06PM,07PM-08PM'),
(6, 1, 'employee 6', 'gtrends', 'emp2@gtrends.com', 'nungambakkam\r\nchennai', '321456987', 'inactive', '2019-07-25', '2020-08-26', '9AM-10AM,10AM-11AM,11AM-12AM,01PM-02PM,02PM-03PM,03PM-04PM,04PM-05AM,06PM-07PM,07PM-08PM', '08AM-09AM,09AM-10AM,10AM-11AM,11AM-12PM,01PM-02PM,02PM-03PM,03PM-04PM,05PM-06PM,07PM-08PM');

-- --------------------------------------------------------

--
-- Table structure for table `leave_days`
--

CREATE TABLE `leave_days` (
  `id` int(10) NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `male_slot_count` int(10) DEFAULT NULL,
  `female_slot_count` int(10) DEFAULT NULL,
  `salon_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `leave_days`
--

INSERT INTO `leave_days` (`id`, `date`, `time`, `male_slot_count`, `female_slot_count`, `salon_id`) VALUES
(1, '2019-10-02', '09:00AM', 5, 5, 1),
(2, '2019-10-02', '10:00AM', 0, 0, 1),
(3, '2019-10-02', '11:00AM', 0, 0, 1),
(4, '2019-10-02', '12:00PM', 0, 0, 1),
(5, '2019-10-02', '01:00PM', 0, 0, 1),
(7, '2019-10-02', '03:00PM', 0, 0, 1),
(8, '2019-10-02', '04:00PM', 0, 0, 1),
(9, '2019-10-02', '05:00PM', 0, 0, 1),
(10, '2019-10-02', '06:00PM', 0, 0, 1),
(11, '2019-10-02', '07:00PM', 0, 0, 1),
(12, '2019-10-02', '08:00PM', 0, 0, 1),
(13, '2019-10-02', '09:00AM', 5, 5, 2),
(14, '2019-10-02', '10:00AM', 0, 0, 2),
(15, '2019-10-02', '11:00AM', 0, 0, 2),
(16, '2019-10-02', '12:00PM', 0, 0, 2),
(17, '2019-10-02', '01:00PM', 0, 0, 2),
(18, '2019-10-02', '03:00PM', 0, 0, 2),
(19, '2019-10-02', '04:00PM', 0, 0, 2),
(20, '2019-10-02', '05:00PM', 0, 0, 2),
(21, '2019-10-02', '06:00PM', 0, 0, 2),
(22, '2019-10-02', '07:00PM', 0, 0, 2),
(23, '2019-10-02', '08:00PM', 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(20) NOT NULL,
  `otp` int(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cell` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `otp`, `cell`) VALUES
(22, 1234, '9025985687'),
(23, 1234, '7531597531'),
(46, 1234, '9543812120'),
(47, 1234, '9843125987'),
(52, 1234, '8248424983'),
(58, 1234, '7200670069'),
(59, 1234, '9940090836'),
(61, 1234, '9940090836'),
(67, 1234, '9500940093'),
(68, 1234, '9500940093'),
(69, 1234, '9500940093'),
(70, 1234, '9500940093'),
(71, 1234, '9500940093'),
(72, 1234, '9500940093'),
(73, 1234, '9500940093'),
(76, 1234, '8745639210'),
(77, 1234, '7410852369'),
(79, 1234, '9200092000'),
(90, 1234, '8000090000'),
(92, 1234, '8679502143'),
(93, 1234, '8000090000'),
(95, 1234, '6000070000'),
(96, 1234, '6000070000'),
(97, 1234, '6000070000'),
(100, 1234, '7000080000'),
(101, 1234, '6000070000'),
(102, 1234, '6600077000'),
(103, 1234, '7700088000'),
(104, 1234, '7700088000');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` int(20) NOT NULL,
  `from_user_id` int(20) NOT NULL,
  `to_user_id` int(20) NOT NULL,
  `salon_id` int(11) NOT NULL,
  `points` int(5) DEFAULT '0',
  `used_points` int(25) DEFAULT '0',
  `used_description` varchar(250) DEFAULT NULL,
  `booking_id` int(25) DEFAULT NULL,
  `points_added_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`id`, `from_user_id`, `to_user_id`, `salon_id`, `points`, `used_points`, `used_description`, `booking_id`, `points_added_at`) VALUES
(1, 11515504, 16242102, 2, 5, 2, '', 126, NULL),
(3, 11515504, 38338638, 2, 5, 1, '', 127, NULL),
(5, 11515504, 54081431, 2, 5, 3, '', 153, NULL),
(10, 11515504, 0, 2, 0, 7, 'test deductuition', 193, NULL),
(11, 11515504, 16242102, 1, 0, 0, NULL, NULL, NULL),
(12, 11515504, 16242102, 1, 0, 0, NULL, NULL, NULL),
(13, 11515504, 16242102, 1, 0, 0, NULL, NULL, NULL),
(14, 11515504, 12164943, 2, 0, 0, NULL, NULL, NULL),
(15, 12164943, 97525943, 1, 0, 0, NULL, NULL, NULL),
(16, 12164943, 81566996, 1, 35, 0, NULL, NULL, NULL),
(17, 12164943, 95800834, 1, 0, 0, NULL, NULL, NULL),
(18, 38338638, 24386322, 1, 0, 0, NULL, NULL, NULL),
(19, 38338638, 8436252, 1, 0, 0, NULL, NULL, NULL),
(20, 25135831, 9793378, 1, 5, 0, NULL, 287, '2019-09-18 06:32 PM');

-- --------------------------------------------------------

--
-- Table structure for table `salon_admin`
--

CREATE TABLE `salon_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `place` varchar(250) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `cell` int(10) NOT NULL,
  `qr_code_url` varchar(2083) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salon_admin`
--

INSERT INTO `salon_admin` (`id`, `username`, `place`, `address`, `email`, `password`, `logo_url`, `cell`, `qr_code_url`) VALUES
(1, 'admin1', 'sdf', 'sdf', 'DSf@dsf.dsf', '$2y$10$5w98R4ODBRSIcx1OxXJ6qOKf7D11p/LYfwMMuCY/vSFUsX6buIVLe', '', 0, ''),
(2, 'perumbakkam', 'perumbakkam', 'perumbakkam, chennai, tamilnadu', 'perumbakkam@gtrends.com', '$2y$10$O9AEPaDI6wP7Ln/GiXYF4OYgY1y65JdT5/cip4g7QUNnX9KCViVq.', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `min_price` int(5) NOT NULL,
  `max_price` int(5) NOT NULL,
  `saved_price` int(20) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `is_combo` int(10) DEFAULT NULL,
  `validity_from` varchar(50) NOT NULL DEFAULT '0',
  `validity_to` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `min_price`, `max_price`, `saved_price`, `type_id`, `is_combo`, `validity_from`, `validity_to`) VALUES
(1, 'Face', 150, 180, 0, 1, 1, '0', '0'),
(2, 'Neck', 150, 180, 0, 1, 1, '0', '0'),
(3, 'Full Arms', 660, 795, 0, 1, 1, '0', '0'),
(4, 'Full Body', 2785, 3345, 0, 6, 1, '0', '0'),
(5, 'Eyebrow', 40, 50, 0, 2, 1, '0', '0'),
(6, 'Upper Lip', 40, 50, 0, 2, 1, '0', '0'),
(7, 'Cheeks', 50, 60, 0, 2, 1, '0', '0'),
(8, 'Full Face', 150, 180, 0, 2, 1, '0', '0'),
(9, 'Half Arms', 280, 340, 0, 3, 1, '0', '0'),
(10, 'Full Arms', 285, 315, 0, 3, 1, '0', '0'),
(11, 'Upper lip / Chin/ Forehead', 85, 105, 0, 3, 1, '0', '0'),
(12, 'Lower Back / Upper back / Midriff', 585, 725, 0, 3, 1, '0', '0'),
(13, 'PURE COCONUT NOURISHER', 275, 330, 0, 4, 1, '0', '0'),
(14, 'MENTHOL CHILLER', 275, 330, 0, 4, 1, '0', '0'),
(15, 'EXPRESS ALCHEMY TREATMENT', 1300, 1560, 0, 4, 1, '0', '0'),
(16, 'INTENSE ALCHEMY TREATMENT', 1600, 1920, 0, 4, 1, '0', '0'),
(17, 'glow', 150, 180, 0, 6, 1, '0', '0'),
(18, 'summer cut', 150, 180, 0, 6, 1, '0', '0'),
(19, 'super cut', 660, 795, 0, 6, 1, '0', '0'),
(20, 'crap', 2785, 3345, 0, 6, 1, '0', '0'),
(21, 'brown', 40, 50, 0, 6, 1, '0', '0'),
(22, 'red', 40, 50, 0, 6, 1, '0', '0'),
(23, 'yellow', 50, 60, 0, 6, 1, '0', '0'),
(24, 'gold', 150, 180, 0, 6, 1, '0', '0'),
(25, 'leg', 280, 340, 0, 7, 1, '0', '0'),
(26, 'feet', 285, 315, 0, 7, 1, '0', '0'),
(27, 'half feet', 85, 105, 0, 7, 1, '0', '0'),
(28, 'full feet', 585, 705, 0, 7, 1, '0', '0'),
(29, 'manicure service 1', 275, 330, 0, 8, 1, '0', '0'),
(30, 'manicure service 2', 275, 330, 0, 8, 1, '0', '0'),
(31, 'manicure service 3', 1300, 1560, 0, 8, 1, '0', '0'),
(32, 'manicure service 4', 1600, 1920, 0, 8, 1, '0', '0'),
(33, 'Full Arms + PURE COCONUT NOURISHER', 1000, 2000, 160, 9, 2, '2019-08-02', '2020-08-30'),
(34, 'Hair cut + glitter + polish + nail care', 1000, 2000, 200, 10, 2, '2019-08-02', '2020-08-30'),
(35, 'hair wash herbal + hair cit + peri care', 1000, 2000, 260, 11, 2, '2019-08-02', '2020-08-30'),
(36, 'natural aura + aloe vera + hair cut + shaving', 1077, 1343, 250, 12, 2, '2019-08-02', '2020-08-30'),
(37, 'Full Arms + PURE COCONUT NOURISHER', 1000, 2000, 220, 13, 2, '2019-08-02', '2020-08-30'),
(38, 'Hair cut + glitter + polish + nail care', 1000, 2000, 190, 14, 2, '2019-08-02', '2020-08-30'),
(39, 'hair wash herbal + hair cit + peri care', 1000, 2000, 210, 15, 2, '2019-08-02', '2020-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `gender` int(1) NOT NULL,
  `image_url` varchar(2083) NOT NULL,
  `salon_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`id`, `name`, `gender`, `image_url`, `salon_id`) VALUES
(1, 'DETAN & BLEACH', 1, 'https://bizimages.withfloats.com/actual/5acb2c858cb83b0aac195782.jpg', 1),
(2, 'HAIR CARE', 1, 'https://content3.jdmagicbox.com/comp/bangalore/h5/080pxx80.xx80.170529155741.f8h5/catalogue/green-trends-karthik-nagar-unisex-hair-and-style-saloon-marathahalli-extension-bangalore-salons-1x3ifld-250.jpg', 1),
(3, 'THREADING', 2, 'https://bizimages.withfloats.com/actual/5c3ca1b290156e000172c872.jpg', 1),
(4, 'WAXING', 2, 'https://d32vr05tkg9faf.cloudfront.net/content/images/coupon/app/3820_1558600305395.jpg', 1),
(6, 'HAIR COLORING', 1, 'https://5.imimg.com/data5/VT/TG/GLADMIN-30008264/mens-cut-and-style-service-500x500.jpg', 2),
(7, 'PEDICURE', 2, 'https://5.imimg.com/data5/CH/OC/GLADMIN-13253674/women-waxing-service-500x500.jpg', 2),
(8, 'MANICURE2', 2, 'https://content3.jdmagicbox.com/comp/madurai/s5/0452px452.x452.140627134715.y8s5/catalogue/green-trends-chinna-chokkikulam-madurai-beauty-spas-j18raf-250.jpg', 2),
(9, 'Combo 1', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ7xcumjivxjykREe6i9-B8Z7EhSb8yyvQM-Bj7HhFMcH7eFmR', 1),
(10, 'Combo 2', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGokcLF-D6nZd4sUphC65v_TZFCSpbw-zDkllAXuRdVcuaDFq9lQ', 1),
(11, 'Combo 3', 2, 'https://content3.jdmagicbox.com/comp/tirupati/j4/9999px877.x877.160303104605.h1j4/catalogue/green-trends-unisex-hair-and-style-salon-v-v-mahal-road-tirupati-beauty-spas-jlyc9hl.jpg', 1),
(12, 'Combo 4', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjXmwacmXlN9qEMe-l201q_BXtuipRXA5mwze0A6yC0rxxTbwL', 1),
(13, 'Combo 1', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ7xcumjivxjykREe6i9-B8Z7EhSb8yyvQM-Bj7HhFMcH7eFmR', 2),
(14, 'Combo 2', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGokcLF-D6nZd4sUphC65v_TZFCSpbw-zDkllAXuRdVcuaDFq9lQ', 2),
(15, 'Combo 3', 2, 'https://content3.jdmagicbox.com/comp/tirupati/j4/9999px877.x877.160303104605.h1j4/catalogue/green-trends-unisex-hair-and-style-salon-v-v-mahal-road-tirupati-beauty-spas-jlyc9hl.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `token_auth`
--

CREATE TABLE `token_auth` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expire_at` timestamp NULL DEFAULT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token_auth`
--

INSERT INTO `token_auth` (`id`, `token`, `expire_at`, `user_id`) VALUES
(1, 'asdasdasdasdasdasd', '2019-10-31 18:15:00', 1),
(31, 'c33eaa4b85fb5f0e6b77907f1f34b940', '2019-09-06 12:05:56', 98949144),
(32, '38209c8b5df1bad9bd2821380d1f7c0e', '2019-09-06 12:49:44', 54173718),
(33, '3e3e336bb51650b126ff869ce76ebff6', '2019-10-11 13:45:11', 16242102),
(34, '6b980b62114e86afdffed1a480b206a0', '2019-09-07 09:18:06', 54453722),
(35, 'b1ca355e3d1e0a14114aa49f13f1a493', '2019-09-07 13:46:22', 54453722),
(36, '3502121fbc09f1faa7152b087cab594a', '2019-09-08 06:04:13', 43569164),
(37, 'bcb59add4f7cb21c73ebeee263f7da5d', '2019-09-08 06:04:50', 43569164),
(38, '10c38db2873382e593b4c346cca24b4f', '2019-09-08 07:09:18', 43569164),
(39, 'eb477b484c62f5ea6615e4ff851f0df4', '2019-09-08 08:06:04', 89898809),
(40, 'f95710d588d5f6703abd9e86f3c54427', '2019-09-08 08:06:35', 89898809),
(41, '7452600a40b95079148e2ce3bf329ed2', '2020-02-10 11:27:28', 64374465),
(42, '83ef25ee11e579067fc5dbeaf3fd2cc8', '2020-02-12 05:03:44', 54130699),
(43, '88d180bc42ace8bd838e3aedf944e1df', '2020-02-12 08:03:15', 36360763),
(44, 'ca12b01114978c26d3845e41e50a0d69', '2020-02-16 05:56:38', 36360763),
(45, '32b66f898f79d2313a3dba14b7517eea', '2020-02-16 06:22:46', 88641989),
(46, '0cc304a7590d7a30d70b9dfdc523a8d9', '2020-02-16 06:28:54', 88641989),
(47, 'b682afe878a5e04cd3cbeb609b7a6d8c', '2020-02-16 06:31:20', 88641989),
(48, 'f97d9441126ea1fb84e68755b3e19d3d', '2020-02-16 06:37:22', 92366190),
(49, '664dbdd686f502afbe4b4a719004fa27', '2020-02-16 06:54:34', 92366190),
(50, 'e19d3805b8120b722cac2d0e4eb5a048', '2020-02-16 10:35:59', 50978953),
(51, '99576479b54d5fa498963030c6b3913c', '2020-02-16 10:54:15', 4),
(52, '26a8dad32810d375658e2d17b5312887', '2020-02-19 11:31:29', 6778341),
(53, '7c490df9fc51e759247d03cec88d5676', '2020-02-19 11:46:43', 38338638),
(54, '8f885101c01e8e508d004f598fa5ac86', '2020-02-19 11:47:28', 38338638),
(55, '2698333d93fa86ad0fe2aa6f52769bd9', '2020-02-19 11:50:29', 50978953),
(56, 'fca99bfa37514fece2c72af00027f54b', '2020-02-22 04:51:33', 50978953),
(57, '61ab7c4a8fcf000a44cd4091127f3fb5', '2020-02-22 12:56:10', 62011988),
(58, 'e009ec77259af65a2163ee7dd0c84692', '2020-02-22 13:37:54', 62011988),
(59, 'bf7227de90e7bab7dd9793abdee2d22a', '2020-02-22 13:41:24', 4),
(60, 'ef029583bd1172dbaf9b68a1cdf33c42', '2020-02-22 13:42:28', 50978953),
(61, '80853bf1222f9f45419a4985e769955c', '2020-02-22 14:09:44', 62011988),
(62, '39df7af6846ed8c785c1134019e99914', '2020-02-23 05:06:32', 50978953),
(63, 'dcf3354e32a79265b2b38040246ad356', '2020-02-23 05:10:24', 38338638),
(64, '939384ee738bf22c651847330d3cca17', '2020-02-23 05:13:31', 38338638),
(65, 'bf264b5c4ca443aa0ca5a48e2abe34bd', '2020-02-23 05:14:28', 50978953),
(66, '5b9c1841b51f66396350e7b4318cb946', '2020-02-23 05:19:28', 11515504),
(67, 'c22cc8d000d29eb8dbf72bc9e34fd389', '2020-02-23 06:49:30', 38338638),
(68, '03a787fc5e60992803b01a9aab649aab', '2020-02-23 06:50:39', 11515504),
(69, '18e7ca679e82c740e52be54992a5d782', '2020-02-26 06:39:34', 38338638),
(70, '8169462617e5cf260eea3d5c42872d51', '2020-02-26 06:40:35', 78643182),
(71, 'fcedd15894481915be6c37aab380fd23', '2020-02-26 06:41:18', 95084737),
(72, 'dbdda080dc9f612310e23e20fa5ccb0b', '2020-02-26 08:02:06', 4),
(73, 'a6d6b8952ebcacef9290932a90d637df', '2020-02-26 08:06:57', 95084737),
(74, 'b3ef9956079621ca6273cae484d7c915', '2020-02-26 08:07:36', 65734140),
(75, 'cce17690c9804b865393e0cd8a7ec1a2', '2020-02-26 08:16:48', 43769248),
(76, '82b1a1bb91bb4892489f06994317106d', '2020-02-26 11:27:40', 5),
(77, '657981fafe1c6a9cf7454e8bafd0d11b', '2020-02-26 15:00:50', 70250398),
(78, 'ce4fb5d6916226ec4e963e50790d966b', '2020-02-27 07:02:03', 70250398),
(79, '47b93c0452d465ea90e3c4033efac77e', '2020-03-01 06:34:56', 31177882),
(80, 'a7cc9e0375607ba74bf0ccac2ad2c7fa', '2020-03-01 08:13:51', 4),
(81, '5d503c539f7f14edee3c2edb53602125', '2020-03-03 10:46:34', 54081431),
(82, '8d5389c9c9a48b9c109f083b22ea2927', '2020-03-03 10:48:24', 89582548),
(83, '9cbe9525ab92360a87a2cbe6315f9881', '2020-03-03 10:51:19', 54081431),
(84, '8676fef7da2769a91cedd016d102db3a', '2020-03-03 11:28:57', 72657693),
(85, 'e23bba60883bf56a7e81a5db0f7635e1', '2020-03-03 11:32:45', 54081431),
(86, 'b574b183024a5f0ed28f0eed544aae78', '2020-03-03 11:32:55', 21476798),
(87, 'cfaffab836e2cd64514b23fec55162ed', '2020-03-08 08:34:19', 822160),
(88, '658c9132e9306aad33f9067f95cefe25', '2020-03-08 14:43:34', 38338638),
(89, '0ab1e818046a6d09c5f2747e25bfa077', '2020-03-09 10:10:38', 1592369),
(90, 'dc8665e2a97d15a73b9dd0a2691fa3ab', '2020-03-09 10:50:23', 32736137),
(91, '3939682a0841367ad14ca51f16801b8a', '2020-03-09 10:54:25', 32736137),
(92, 'e3830239454148879dc488831fbdb9a5', '2020-03-09 10:56:07', 3134717),
(93, '6abace453d0dd6d3f11c94907e6c68a2', '2020-03-09 10:57:31', 12164943),
(94, '823fb2549d2a59542e2976fe3376a78c', '2020-03-09 11:08:04', 97525943),
(95, '509186722a03584d20545af639bc32ef', '2020-03-09 11:10:50', 63702755),
(96, '4f0d2aff5cbe3aae4d4adda7444c2f0c', '2020-03-09 11:13:46', 58950557),
(97, '4771a95e1cfa19238642019329759da5', '2020-03-09 11:14:36', 78708701),
(98, 'a9117e78f55ecdab7931840e3fe50759', '2020-03-09 11:16:32', 81566996),
(99, '5c1d352aa8f30c4d7b4cf00604af7d15', '2020-03-10 05:15:40', 7342875),
(100, '5fe7d8af3429db658445a82801f84e7e', '2020-03-10 05:17:11', 89582548),
(101, '2edbf924f04f24f22aba621a83d487b7', '2020-03-10 05:22:51', 82693030),
(102, '8fd0c9b10f741042f6b123349b616cef', '2020-03-10 05:34:51', 16883599),
(103, '9ee49d83ebcfe0c608f3e36049e68ade', '2020-03-10 06:58:35', 822160),
(104, '455747f19f0c17b3841afc940ff91f10', '2020-03-10 06:59:02', 95800834),
(105, '273f845275b196fcb9828bed074d0ef1', '2020-03-10 07:44:03', 38338638),
(106, '1ac65d747b2f805f5b620f6368fb9f4a', '2020-03-10 07:45:12', 24386322),
(107, '738838bb150b5df2af118365fd8689b6', '2020-03-10 07:59:04', 94742051),
(108, '6637fc4e8db51ccbba0fc20693b225ec', '2020-03-10 08:01:07', 38338638),
(109, '3f6a9a2477379f2ab24d2aba621e2b9a', '2020-03-10 08:17:10', 94742051),
(110, '460e8cb48612866e8a46bdc45d9b9a37', '2020-03-10 08:17:38', 24386322),
(111, '4193ce50b23a0cb768d0467885af9351', '2020-03-10 08:18:19', 38338638),
(112, 'd8ba1a6c347cce993eddd5a1fbaebf75', '2020-03-10 08:35:59', 89582548),
(113, 'ae382163fe9ac8dfadeb5b1022407e25', '2020-03-10 08:47:25', 89582548),
(114, '7ee34d4af0219c4a8a10ea65c84d4ff8', '2020-03-10 11:20:31', 38338638),
(115, '0f64a3fd4fd804c6ef432b1a7a751d20', '2020-03-10 11:21:05', 7342875),
(116, '1e15a9a1459fe2d11a61735cb6a74a42', '2020-03-10 11:22:24', 76906695),
(117, '8e286a2ebcf3d65db8fa2f21f9e63a38', '2020-03-10 11:22:25', 8436252),
(118, 'b8860b0abf669b6d9fedc4d93f6b9fb8', '2020-03-10 11:31:43', 74831147),
(119, '164b80dbc02fc0b38444ce8eed52a254', '2020-03-10 11:37:49', 44257368),
(120, 'aa0abf78da41b92cedda831934b595d2', '2020-03-11 12:02:01', 89582548),
(121, '201d21cf45974cb87b3eb76068a9a9b6', '2020-03-11 12:07:36', 38338638),
(122, '2df9d95230fee5228a7a8059a96589c6', '2020-03-15 05:57:08', 74831147),
(123, '83c7dd397bef7da6715df033dc7a7bce', '2020-03-15 07:48:36', 89582548),
(124, 'c1824c41823e3a83d56dc2d73cb91a22', '2020-03-16 11:44:15', 25135831),
(125, 'f46d65e7ba4b5c3dbed76be8995db2d4', '2020-03-16 12:15:59', 9793378);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `salon_id` int(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cell` bigint(10) NOT NULL,
  `gender_id` int(1) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `membership` varchar(5) NOT NULL DEFAULT 'No',
  `referral_code` varchar(255) NOT NULL,
  `beauty_points` int(5) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `salon_id`, `name`, `cell`, `gender_id`, `email`, `membership`, `referral_code`, `beauty_points`) VALUES
(822160, 1, NULL, 9100910091, NULL, NULL, 'No', '9dc8d667cf', NULL),
(1592369, 1, 'santhosh', 9200920096, 1, 'anniyan@GMAIL.COM', 'No', '54a4ca0e84', NULL),
(3134717, 1, 'santhosh', 9600950094, 1, 'anniyan@GMAIL.COM', 'No', '882fe9803c', NULL),
(7342875, 1, NULL, 9003860916, NULL, NULL, 'No', '705d68bd33', NULL),
(8436252, 1, 'name', 8679502143, 1, 'name@gmail.com', 'No', 'd50e5cf2a8', NULL),
(9793378, 1, 'ananya', 7700088000, 2, 'ananya@GMAIL.COM', 'No', 'ec4f68063b', NULL),
(11515504, 2, 'Rajapandi', 8248483325, 1, 'rajaraghav1996@gmail.com', 'No', 'd9ad0cdb29', NULL),
(12164943, 1, 'santhosh', 9600950094, 1, 'anniyan@GMAIL.COM', 'No', '2fc11a59fd', NULL),
(16242102, 2, 'naveen', 9300930093, 1, 'sasi@GMAIL.COM', 'Yes', '9324d8bd51', 0),
(16883599, 1, NULL, 7410852369, NULL, NULL, 'No', '58a2519890', NULL),
(21476798, 1, NULL, 9940090836, NULL, NULL, 'No', 'd78717f52b', NULL),
(24386322, 1, 'Saranyaraguraman', 7373292292, 2, 'smarthersm24@gmail.com', 'No', 'dbd2e2adee', NULL),
(25135831, 1, 'santhosh', 6600077000, 2, 'anniyan@GMAIL.COM', 'No', '5c389d6d36', NULL),
(32736137, 1, 'santhosh', 9600950094, 1, 'anniyan@GMAIL.COM', 'No', 'b0f732076a', NULL),
(36360763, 2, 'naveen', 9300930093, 1, 'sasi@GMAIL.COM', 'No', '2c2ce7f2b1', NULL),
(38338638, 1, 'Rajesh', 8525098397, 1, 'rajaraghav1996@gmail.com', 'No', 'dd0d11bd0a', NULL),
(43569164, 1, 'naveen', 9300930093, 1, 'sasi@GMAIL.COM', 'No', '4a332d6030', 0),
(43769248, 1, 'Raja', 9843125987, 1, 'raja@gmail.com', 'No', '3cf71fa0ab', NULL),
(44257368, 2, 'santhosh', 6000070000, 1, 'anniyan@GMAIL.COM', 'No', '22990988de', NULL),
(50978953, 1, 'Saranya ', 6541237890, 2, 'saranya@gmail.com', 'No', 'b8ce8c610f', NULL),
(54081431, 1, 'Vijay', 7200670068, 1, 'vijayprabakaran55@gmail.com', 'No', '979c6c632d', NULL),
(54130699, 1, 'naveen', 9300930093, 1, 'sasi@GMAIL.COM', 'No', '90ccc78a74', NULL),
(54173718, 1, 'naveen', 9300930093, 1, 'sasi@GMAIL.COM', 'Yes', '78660c48f8', 0),
(54453722, 1, 'naveen', 9300930093, 1, 'sasi@GMAIL.COM', 'No', '6e5041b68b', 0),
(58950557, 1, 'santhosh', 9600950094, 1, 'anniyan@GMAIL.COM', 'No', 'ef0622a363', NULL),
(63702755, 1, 'santhosh', 9600950094, 1, 'anniyan@GMAIL.COM', 'No', '4d18606210', NULL),
(64374465, 1, 'naveen', 9300930093, 1, 'sasi@GMAIL.COM', 'No', 'acf9052e50', NULL),
(65734140, 1, '456u', 9543812120, 1, 'ravi@mail.com ', 'No', '00df8a225f', NULL),
(70250398, 1, 'balamurugan', 9600297967, 1, 'svbala99@gmail.com', 'No', '6292dc77bc', NULL),
(72657693, 1, 'John', 7200670069, 1, 'vijayprabakaranece@gmail.com', 'No', 'ddad4d984b', NULL),
(74831147, 1, 'santhosh', 7000080000, 2, 'anniyan@GMAIL.COM', 'No', 'e79411bfec', NULL),
(76906695, 1, NULL, 8000090000, NULL, NULL, 'No', 'e0e12acd69', NULL),
(78708701, 1, 'santhosh', 9600950094, 1, 'anniyan@GMAIL.COM', 'No', '5fe3072086', NULL),
(81566996, 1, 'santhosh', 9600950094, 1, 'anniyan@GMAIL.COM', 'No', 'ef207c4094', NULL),
(82693030, 1, 'Name', 8745639210, 2, 'name@gmail.com', 'No', 'ed9c8a4ef2', NULL),
(89582548, 1, 'Name', 7373210292, 2, 'name@gmail.com', 'No', '722a68e1a0', NULL),
(89898809, 1, 'naveen', 9500950095, 1, 'sasi@GMAIL.COM', 'No', '9afd8da276', 0),
(92366190, 1, 'santhosh', 9200920096, 1, 'anniyan@GMAIL.COM', 'No', '03feaa0393', NULL),
(94742051, 1, NULL, 7092085921, NULL, NULL, 'No', '42870d5810', NULL),
(95084737, 1, '1234', 9442015870, 1, 'ravi@mail.com', 'No', '0d1b64fd3b', NULL),
(95800834, 1, 'santhosh', 7000080000, 1, 'anniyan@GMAIL.COM', 'No', '5a9674d851', NULL),
(97525943, 1, 'santhosh', 9600950094, 1, 'anniyan@GMAIL.COM', 'No', 'c1ac43a008', NULL),
(98949144, 1, 'naveen', 9300930093, 1, 'sasi@GMAIL.COM', 'No', 'e47fb3fb5f', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `available_count`
--
ALTER TABLE `available_count`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salon_id` (`salon_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`salon_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `salon_id` (`salon_id`);

--
-- Indexes for table `booking_item`
--
ALTER TABLE `booking_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salon_id` (`salon_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_shop_id` (`emp_salon_id`);

--
-- Indexes for table `leave_days`
--
ALTER TABLE `leave_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salon_id` (`salon_id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`salon_id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_user_id` (`to_user_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `salon_admin`
--
ALTER TABLE `salon_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salon_id` (`salon_id`);

--
-- Indexes for table `token_auth`
--
ALTER TABLE `token_auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`salon_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `available_count`
--
ALTER TABLE `available_count`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `booking_item`
--
ALTER TABLE `booking_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leave_days`
--
ALTER TABLE `leave_days`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `salon_admin`
--
ALTER TABLE `salon_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `token_auth`
--
ALTER TABLE `token_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98949145;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `available_count`
--
ALTER TABLE `available_count`
  ADD CONSTRAINT `available_count_ibfk_1` FOREIGN KEY (`salon_id`) REFERENCES `salon_admin` (`id`);

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`salon_id`) REFERENCES `salon_admin` (`id`);

--
-- Constraints for table `booking_item`
--
ALTER TABLE `booking_item`
  ADD CONSTRAINT `booking_item_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`);

--
-- Constraints for table `discount`
--
ALTER TABLE `discount`
  ADD CONSTRAINT `discount_ibfk_1` FOREIGN KEY (`salon_id`) REFERENCES `salon_admin` (`id`);

--
-- Constraints for table `leave_days`
--
ALTER TABLE `leave_days`
  ADD CONSTRAINT `leave_days_ibfk_1` FOREIGN KEY (`salon_id`) REFERENCES `salon_admin` (`id`);

--
-- Constraints for table `referral`
--
ALTER TABLE `referral`
  ADD CONSTRAINT `referral_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `service_category` (`id`);

--
-- Constraints for table `service_category`
--
ALTER TABLE `service_category`
  ADD CONSTRAINT `service_category_ibfk_1` FOREIGN KEY (`salon_id`) REFERENCES `salon_admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
