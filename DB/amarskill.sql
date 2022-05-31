-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 03:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amarskill`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about`, `image`, `created_at`, `updated_at`) VALUES
(1, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>We are e-learning platform, &ldquo;amar-skill&rdquo;. Our motto is &ldquo;skills do not die, only people do.&rdquo;&nbsp;&nbsp;Our vision is to make skilled people to lead the future industries. Our mission is to provide quality learning to our enthusiasts.&nbsp; We know that&nbsp; knowledge can connect people in this global learning system. If you love to learn and also want to share your knowledge, you are in a right place. You are warmly welcomed here either you are a learner or instructor.&nbsp; Together we can make our world better in future. Because we believe that &ldquo;skills do not die, only people do.&rdquo;</p>\r\n</body>\r\n</html>', '61c0174d3f514.png', '2021-12-19 23:17:59', '2021-12-19 23:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `basicsettings`
--

CREATE TABLE `basicsettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basicsettings`
--

INSERT INTO `basicsettings` (`id`, `favicon`, `logo`, `site_title`, `created_at`, `updated_at`) VALUES
(1, '61b9c3bd7616f.png', '61b9d58b6a43a.png', 'Best E-Learning Platform In Bangladesh', '2021-12-15 04:30:21', '2021-12-15 11:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_ip`, `course_id`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(65, '157.55.39.105', 14, 4000, 1, '2021-12-01 14:26:49', '2021-12-01 14:26:49'),
(73, '5.45.207.68', 16, 750, 1, '2021-12-03 19:17:41', '2021-12-03 19:17:41'),
(74, '95.108.213.4', 16, 750, 1, '2021-12-03 19:17:42', '2021-12-03 19:17:42'),
(79, '40.77.167.64', 17, 5500, 1, '2021-12-04 21:50:11', '2021-12-04 21:50:11'),
(80, '66.249.64.215', 17, 5500, 1, '2021-12-04 23:09:02', '2021-12-04 23:09:02'),
(81, '103.166.88.7', 17, 5500, 1, '2021-12-05 02:48:55', '2021-12-05 02:48:55'),
(82, '66.249.64.215', 15, 1500, 1, '2021-12-05 04:10:06', '2021-12-05 04:10:06'),
(85, '66.249.64.219', 16, 750, 1, '2021-12-05 12:48:40', '2021-12-05 12:48:40'),
(86, '66.249.64.217', 15, 1500, 1, '2021-12-05 19:10:10', '2021-12-05 19:10:10'),
(87, '66.249.64.219', 18, 2500, 1, '2021-12-06 02:18:40', '2021-12-06 02:18:40'),
(114, '27.147.204.24', 17, 5500, 1, '2021-12-08 02:22:16', '2021-12-08 02:22:16'),
(454, '66.249.69.215', 18, 2500, 1, '2021-12-08 11:46:20', '2021-12-08 11:46:20'),
(525, '66.249.66.217', 14, 4000, 1, '2021-12-08 19:16:20', '2021-12-08 19:16:20'),
(629, '114.130.72.22', 11, 4000, 1, '2021-12-09 11:02:32', '2021-12-09 11:02:32'),
(631, '103.147.38.6', 11, 4000, 1, '2021-12-09 11:20:22', '2021-12-09 11:20:22'),
(644, '37.111.223.70', 18, 2500, 1, '2021-12-10 08:24:09', '2021-12-10 08:24:09'),
(645, '37.111.223.70', 17, 5500, 1, '2021-12-10 08:24:12', '2021-12-10 08:24:12'),
(646, '37.111.223.70', 16, 750, 1, '2021-12-10 08:24:16', '2021-12-10 08:24:16'),
(647, '37.111.223.70', 15, 1500, 1, '2021-12-10 08:24:19', '2021-12-10 08:24:19'),
(648, '37.111.223.70', 14, 4000, 1, '2021-12-10 08:24:23', '2021-12-10 08:24:23'),
(649, '37.111.223.70', 11, 4000, 1, '2021-12-10 08:24:26', '2021-12-10 08:24:26'),
(662, '103.70.170.56', 16, 750, 1, '2021-12-10 21:09:30', '2021-12-10 21:09:30'),
(710, '103.137.74.195', 11, 4000, 1, '2021-12-11 13:45:21', '2021-12-11 13:45:21'),
(716, '42.0.4.247', 11, 4000, 1, '2021-12-12 03:02:20', '2021-12-12 03:02:20'),
(729, '103.115.134.238', 15, 1500, 1, '2021-12-12 14:55:27', '2021-12-12 14:55:27'),
(730, '37.111.230.224', 17, 5500, 1, '2021-12-13 15:37:00', '2021-12-13 15:37:00'),
(739, '87.250.224.125', 18, 1800, 1, '2021-12-14 18:57:46', '2021-12-14 18:57:46'),
(740, '87.250.224.125', 15, 1500, 1, '2021-12-14 18:58:02', '2021-12-14 18:58:02'),
(742, '95.108.213.4', 11, 2990, 1, '2021-12-14 18:58:32', '2021-12-14 18:58:32'),
(743, '103.229.82.170', 11, 2990, 1, '2021-12-14 19:35:49', '2021-12-14 19:35:49'),
(744, '103.58.74.160', 11, 2990, 1, '2021-12-14 19:45:07', '2021-12-14 19:45:07'),
(747, '165.227.230.228', 18, 1800, 1, '2021-12-16 19:41:11', '2021-12-16 19:41:11'),
(748, '165.227.230.228', 16, 750, 1, '2021-12-16 19:42:39', '2021-12-16 19:42:39'),
(749, '165.227.230.228', 17, 2990, 1, '2021-12-16 19:42:54', '2021-12-16 19:42:54'),
(750, '165.227.230.228', 14, 2550, 1, '2021-12-16 19:42:54', '2021-12-16 19:42:54'),
(751, '66.249.70.27', 14, 2550, 1, '2021-12-18 07:45:45', '2021-12-18 07:45:45'),
(753, '103.200.36.171', 11, 2990, 1, '2021-12-18 23:11:20', '2021-12-18 23:11:20'),
(754, '103.200.36.171', 18, 1800, 1, '2021-12-18 23:11:50', '2021-12-18 23:11:50'),
(786, '192.168.0.179', 18, 1800, 1, '2021-12-21 03:34:27', '2021-12-21 03:34:27'),
(861, '103.78.255.138', 14, 2550, 1, '2021-12-28 10:05:54', '2021-12-28 10:05:54'),
(863, '103.214.202.6', 16, 750, 1, '2021-12-28 11:31:14', '2021-12-28 11:31:14'),
(872, '37.111.214.206', 14, 2550, 1, '2021-12-28 12:25:03', '2021-12-28 12:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate_form` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

CREATE TABLE `checkouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkouts`
--

INSERT INTO `checkouts` (`id`, `user_id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(16, 8, 'Maruf Hossain', 'marufsuvo@gmail.com', '2021-12-01 05:49:09', '2021-12-01 05:49:09'),
(17, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-01 05:49:49', '2021-12-01 05:49:49'),
(18, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-01 17:09:27', '2021-12-01 17:09:27'),
(19, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-04 03:33:52', '2021-12-04 03:33:52'),
(20, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-07 06:07:48', '2021-12-07 06:07:48'),
(21, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-07 06:08:25', '2021-12-07 06:08:25'),
(22, 3, 'Admin Name', 'admin@gmail.com', '2021-12-07 11:53:34', '2021-12-07 11:53:34'),
(23, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-07 11:55:48', '2021-12-07 11:55:48'),
(24, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-07 11:58:38', '2021-12-07 11:58:38'),
(25, 3, 'Admin Name', 'admin@gmail.com', '2021-12-07 15:39:13', '2021-12-07 15:39:13'),
(26, 3, 'Admin Name', 'admin@gmail.com', '2021-12-07 15:40:45', '2021-12-07 15:40:45'),
(27, 3, 'Admin Name', 'admin@gmail.com', '2021-12-07 15:42:13', '2021-12-07 15:42:13'),
(28, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-07 15:57:47', '2021-12-07 15:57:47'),
(29, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-07 16:20:17', '2021-12-07 16:20:17'),
(30, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-07 16:21:20', '2021-12-07 16:21:20'),
(31, 23, 'intizzahmed', 'intizzahmed@gmail.com', '2021-12-08 05:20:48', '2021-12-08 05:20:48'),
(32, 23, 'intizzahmed', 'intizzahmed@gmail.com', '2021-12-08 05:21:47', '2021-12-08 05:21:47'),
(33, 23, 'intizzahmed', 'intizzahmed@gmail.com', '2021-12-08 05:22:24', '2021-12-08 05:22:24'),
(34, 24, 'moshineel', 'moshineel@gmail.com', '2021-12-08 05:25:30', '2021-12-08 05:25:30'),
(35, 24, 'moshineel', 'moshineel@gmail.com', '2021-12-08 05:26:07', '2021-12-08 05:26:07'),
(36, 24, 'moshineel', 'moshineel@gmail.com', '2021-12-08 05:26:51', '2021-12-08 05:26:51'),
(37, 24, 'moshineel', 'moshineel@gmail.com', '2021-12-08 05:27:25', '2021-12-08 05:27:25'),
(38, 25, 'tawfiq.iqra.396', 'tawfiq.iqra.396@gmail.com', '2021-12-08 05:29:44', '2021-12-08 05:29:44'),
(39, 25, 'tawfiq.iqra.396', 'tawfiq.iqra.396@gmail.com', '2021-12-08 05:30:11', '2021-12-08 05:30:11'),
(40, 25, 'tawfiq.iqra.396', 'tawfiq.iqra.396@gmail.com', '2021-12-08 05:30:47', '2021-12-08 05:30:47'),
(41, 25, 'tawfiq.iqra.396', 'tawfiq.iqra.396@gmail.com', '2021-12-08 05:31:17', '2021-12-08 05:31:17'),
(42, 26, 'diot450', 'diot450@gmail.com', '2021-12-08 05:33:30', '2021-12-08 05:33:30'),
(43, 26, 'diot450', 'diot450@gmail.com', '2021-12-08 05:34:35', '2021-12-08 05:34:35'),
(44, 26, 'diot450', 'diot450@gmail.com', '2021-12-08 05:35:04', '2021-12-08 05:35:04'),
(45, 26, 'diot450', 'diot450@gmail.com', '2021-12-08 05:35:45', '2021-12-08 05:35:45'),
(46, 26, 'diot450', 'diot450@gmail.com', '2021-12-08 05:36:13', '2021-12-08 05:36:13'),
(47, 26, 'diot450', 'diot450@gmail.com', '2021-12-08 05:36:42', '2021-12-08 05:36:42'),
(48, 27, 'kaziadnan20', 'kaziadnan20@gmail.com', '2021-12-08 05:40:33', '2021-12-08 05:40:33'),
(49, 27, 'kaziadnan20', 'kaziadnan20@gmail.com', '2021-12-08 05:41:07', '2021-12-08 05:41:07'),
(50, 27, 'kaziadnan20', 'kaziadnan20@gmail.com', '2021-12-08 05:41:47', '2021-12-08 05:41:47'),
(51, 27, 'kaziadnan20', 'kaziadnan20@gmail.com', '2021-12-08 05:42:15', '2021-12-08 05:42:15'),
(52, 28, 'oamitume0', 'oamitume0@gmail.com', '2021-12-08 05:45:17', '2021-12-08 05:45:17'),
(53, 28, 'oamitume0', 'oamitume0@gmail.com', '2021-12-08 05:45:51', '2021-12-08 05:45:51'),
(54, 28, 'oamitume0', 'oamitume0@gmail.com', '2021-12-08 05:46:21', '2021-12-08 05:46:21'),
(55, 28, 'oamitume0', 'oamitume0@gmail.com', '2021-12-08 05:46:56', '2021-12-08 05:46:56'),
(56, 28, 'oamitume0', 'oamitume0@gmail.com', '2021-12-08 05:47:25', '2021-12-08 05:47:25'),
(57, 29, 'abdullajamee306', 'abdullajamee306@gmail.com', '2021-12-08 05:52:02', '2021-12-08 05:52:02'),
(58, 29, 'abdullajamee306', 'abdullajamee306@gmail.com', '2021-12-08 05:52:22', '2021-12-08 05:52:22'),
(59, 30, 'Tanharana561', 'Tanharana561@gmail.com', '2021-12-08 05:55:29', '2021-12-08 05:55:29'),
(60, 30, 'Tanharana561', 'Tanharana561@gmail.com', '2021-12-08 05:56:29', '2021-12-08 05:56:29'),
(61, 30, 'Tanharana561', 'Tanharana561@gmail.com', '2021-12-08 05:57:15', '2021-12-08 05:57:15'),
(62, 30, 'Tanharana561', 'Tanharana561@gmail.com', '2021-12-08 05:57:47', '2021-12-08 05:57:47'),
(63, 31, 'aunyhere', 'aunyhere@gmail.com', '2021-12-08 05:59:53', '2021-12-08 05:59:53'),
(64, 31, 'aunyhere', 'aunyhere@gmail.com', '2021-12-08 06:00:32', '2021-12-08 06:00:32'),
(65, 31, 'aunyhere', 'aunyhere@gmail.com', '2021-12-08 06:01:01', '2021-12-08 06:01:01'),
(66, 31, 'aunyhere', 'aunyhere@gmail.com', '2021-12-08 06:01:29', '2021-12-08 06:01:29'),
(67, 31, 'aunyhere', 'aunyhere@gmail.com', '2021-12-08 06:01:47', '2021-12-08 06:01:47'),
(68, 32, 'mahi110145', 'mahi110145@gmail.com', '2021-12-08 06:04:25', '2021-12-08 06:04:25'),
(69, 32, 'mahi110145', 'mahi110145@gmail.com', '2021-12-08 06:04:56', '2021-12-08 06:04:56'),
(70, 32, 'mahi110145', 'mahi110145@gmail.com', '2021-12-08 06:05:30', '2021-12-08 06:05:30'),
(71, 32, 'mahi110145', 'mahi110145@gmail.com', '2021-12-08 06:06:00', '2021-12-08 06:06:00'),
(72, 32, 'mahi110145', 'mahi110145@gmail.com', '2021-12-08 06:06:25', '2021-12-08 06:06:25'),
(73, 33, 'dipon898', 'dipon898@gmail.com', '2021-12-08 06:12:02', '2021-12-08 06:12:02'),
(74, 33, 'dipon898', 'dipon898@gmail.com', '2021-12-08 06:12:41', '2021-12-08 06:12:41'),
(75, 33, 'dipon898', 'dipon898@gmail.com', '2021-12-08 06:13:18', '2021-12-08 06:13:18'),
(76, 33, 'dipon898', 'dipon898@gmail.com', '2021-12-08 06:13:50', '2021-12-08 06:13:50'),
(77, 33, 'dipon898', 'dipon898@gmail.com', '2021-12-08 06:14:20', '2021-12-08 06:14:20'),
(78, 34, 'faisal2410', 'faisal2410@yahoo.com', '2021-12-08 06:16:43', '2021-12-08 06:16:43'),
(79, 34, 'faisal2410', 'faisal2410@yahoo.com', '2021-12-08 06:17:10', '2021-12-08 06:17:10'),
(80, 34, 'faisal2410', 'faisal2410@yahoo.com', '2021-12-08 06:17:33', '2021-12-08 06:17:33'),
(81, 34, 'faisal2410', 'faisal2410@yahoo.com', '2021-12-08 06:18:38', '2021-12-08 06:18:38'),
(82, 35, 'jimsangeet', 'jimsangeet@gmail.com', '2021-12-08 06:22:19', '2021-12-08 06:22:19'),
(83, 35, 'jimsangeet', 'jimsangeet@gmail.com', '2021-12-08 06:23:01', '2021-12-08 06:23:01'),
(84, 35, 'jimsangeet', 'jimsangeet@gmail.com', '2021-12-08 06:23:34', '2021-12-08 06:23:34'),
(85, 35, 'jimsangeet', 'jimsangeet@gmail.com', '2021-12-08 06:24:09', '2021-12-08 06:24:09'),
(86, 35, 'jimsangeet', 'jimsangeet@gmail.com', '2021-12-08 06:24:50', '2021-12-08 06:24:50'),
(87, 36, 'tareqcse02', 'tareqcse02@gmail.com', '2021-12-08 06:26:49', '2021-12-08 06:26:49'),
(88, 36, 'tareqcse02', 'tareqcse02@gmail.com', '2021-12-08 06:28:04', '2021-12-08 06:28:04'),
(89, 36, 'tareqcse02', 'tareqcse02@gmail.com', '2021-12-08 06:28:32', '2021-12-08 06:28:32'),
(90, 37, 'khandaker.ab', 'khandaker.ab@gmail.com', '2021-12-08 06:31:50', '2021-12-08 06:31:50'),
(91, 37, 'khandaker.ab', 'khandaker.ab@gmail.com', '2021-12-08 06:32:17', '2021-12-08 06:32:17'),
(92, 37, 'khandaker.ab', 'khandaker.ab@gmail.com', '2021-12-08 06:33:16', '2021-12-08 06:33:16'),
(93, 37, 'khandaker.ab', 'khandaker.ab@gmail.com', '2021-12-08 06:33:48', '2021-12-08 06:33:48'),
(94, 38, 'mdparvezsarkarlevel1', 'mdparvezsarkarlevel1@gmail.com', '2021-12-08 06:39:16', '2021-12-08 06:39:16'),
(95, 38, 'mdparvezsarkarlevel1', 'mdparvezsarkarlevel1@gmail.com', '2021-12-08 06:39:58', '2021-12-08 06:39:58'),
(96, 38, 'mdparvezsarkarlevel1', 'mdparvezsarkarlevel1@gmail.com', '2021-12-08 06:40:48', '2021-12-08 06:40:48'),
(97, 39, 'rahman', 'rahman.habibjr59@gmail.com', '2021-12-08 06:42:28', '2021-12-08 06:42:28'),
(98, 39, 'rahman', 'rahman.habibjr59@gmail.com', '2021-12-08 06:43:19', '2021-12-08 06:43:19'),
(99, 39, 'rahman', 'rahman.habibjr59@gmail.com', '2021-12-08 06:44:12', '2021-12-08 06:44:12'),
(100, 40, 'bdamit84', 'bdamit84@gmail.com', '2021-12-08 06:48:22', '2021-12-08 06:48:22'),
(101, 40, 'bdamit84', 'bdamit84@gmail.com', '2021-12-08 06:48:49', '2021-12-08 06:48:49'),
(102, 40, 'bdamit84', 'bdamit84@gmail.com', '2021-12-08 06:49:16', '2021-12-08 06:49:16'),
(103, 13, 'Najnin Nahar Ratna', 'najninnaharratna27@gmail.com', '2021-12-08 07:02:43', '2021-12-08 07:02:43'),
(104, 13, 'Najnin Nahar Ratna', 'najninnaharratna27@gmail.com', '2021-12-08 07:03:12', '2021-12-08 07:03:12'),
(105, 13, 'Najnin Nahar Ratna', 'najninnaharratna27@gmail.com', '2021-12-08 07:03:51', '2021-12-08 07:03:51'),
(106, 13, 'Najnin Nahar Ratna', 'najninnaharratna27@gmail.com', '2021-12-08 07:04:20', '2021-12-08 07:04:20'),
(107, 41, 'subhadas', 'subhadas10031986@gmail.com', '2021-12-08 07:06:08', '2021-12-08 07:06:08'),
(108, 41, 'subhadas', 'subhadas10031986@gmail.com', '2021-12-08 07:06:31', '2021-12-08 07:06:31'),
(109, 41, 'subhadas', 'subhadas10031986@gmail.com', '2021-12-08 07:06:53', '2021-12-08 07:06:53'),
(110, 41, 'subhadas', 'subhadas10031986@gmail.com', '2021-12-08 07:07:19', '2021-12-08 07:07:19'),
(111, 41, 'subhadas', 'subhadas10031986@gmail.com', '2021-12-08 07:07:38', '2021-12-08 07:07:38'),
(112, 42, 'mdasaduzzaman', 'mdasaduzzamanaupo@gmail.com', '2021-12-08 07:09:35', '2021-12-08 07:09:35'),
(113, 42, 'mdasaduzzaman', 'mdasaduzzamanaupo@gmail.com', '2021-12-08 07:10:00', '2021-12-08 07:10:00'),
(114, 42, 'mdasaduzzaman', 'mdasaduzzamanaupo@gmail.com', '2021-12-08 07:10:27', '2021-12-08 07:10:27'),
(115, 42, 'mdasaduzzaman', 'mdasaduzzamanaupo@gmail.com', '2021-12-08 07:10:49', '2021-12-08 07:10:49'),
(116, 42, 'mdasaduzzaman', 'mdasaduzzamanaupo@gmail.com', '2021-12-08 07:11:15', '2021-12-08 07:11:15'),
(117, 42, 'mdasaduzzaman', 'mdasaduzzamanaupo@gmail.com', '2021-12-08 07:11:45', '2021-12-08 07:11:45'),
(118, 43, 'mithunsangma', 'mithunsangma7@gmail.com', '2021-12-08 07:13:23', '2021-12-08 07:13:23'),
(119, 43, 'mithunsangma', 'mithunsangma7@gmail.com', '2021-12-08 07:13:47', '2021-12-08 07:13:47'),
(120, 43, 'mithunsangma', 'mithunsangma7@gmail.com', '2021-12-08 07:14:18', '2021-12-08 07:14:18'),
(121, 43, 'mithunsangma', 'mithunsangma7@gmail.com', '2021-12-08 07:14:41', '2021-12-08 07:14:41'),
(122, 44, 'uddin', 'uddin6058@gmail.com', '2021-12-08 07:16:43', '2021-12-08 07:16:43'),
(123, 44, 'uddin', 'uddin6058@gmail.com', '2021-12-08 07:17:07', '2021-12-08 07:17:07'),
(124, 44, 'uddin', 'uddin6058@gmail.com', '2021-12-08 07:17:32', '2021-12-08 07:17:32'),
(125, 44, 'uddin', 'uddin6058@gmail.com', '2021-12-08 07:18:01', '2021-12-08 07:18:01'),
(126, 44, 'uddin', 'uddin6058@gmail.com', '2021-12-08 07:18:22', '2021-12-08 07:18:22'),
(127, 45, 'amitayon', 'amitayon3@gmail.com', '2021-12-08 07:20:44', '2021-12-08 07:20:44'),
(128, 45, 'amitayon', 'amitayon3@gmail.com', '2021-12-08 07:21:11', '2021-12-08 07:21:11'),
(129, 45, 'amitayon', 'amitayon3@gmail.com', '2021-12-08 07:21:36', '2021-12-08 07:21:36'),
(130, 45, 'amitayon', 'amitayon3@gmail.com', '2021-12-08 07:21:58', '2021-12-08 07:21:58'),
(131, 45, 'amitayon', 'amitayon3@gmail.com', '2021-12-08 07:22:28', '2021-12-08 07:22:28'),
(132, 45, 'amitayon', 'amitayon3@gmail.com', '2021-12-08 07:22:53', '2021-12-08 07:22:53'),
(133, 46, 'sahamedctgdfl', 'sahamedctgdfl@gmail.com', '2021-12-08 07:30:05', '2021-12-08 07:30:05'),
(134, 46, 'sahamedctgdfl', 'sahamedctgdfl@gmail.com', '2021-12-08 07:30:40', '2021-12-08 07:30:40'),
(135, 46, 'sahamedctgdfl', 'sahamedctgdfl@gmail.com', '2021-12-08 07:31:05', '2021-12-08 07:31:05'),
(136, 46, 'sahamedctgdfl', 'sahamedctgdfl@gmail.com', '2021-12-08 07:31:36', '2021-12-08 07:31:36'),
(137, 47, 'mdshariar', 'mdshariar00@gmail.com', '2021-12-08 07:33:21', '2021-12-08 07:33:21'),
(138, 47, 'mdshariar', 'mdshariar00@gmail.com', '2021-12-08 07:34:39', '2021-12-08 07:34:39'),
(139, 47, 'mdshariar', 'mdshariar00@gmail.com', '2021-12-08 07:39:41', '2021-12-08 07:39:41'),
(140, 47, 'mdshariar', 'mdshariar00@gmail.com', '2021-12-08 07:42:45', '2021-12-08 07:42:45'),
(141, 48, 'arefintalukder', 'arefintalukder5@gmail.com', '2021-12-08 07:46:41', '2021-12-08 07:46:41'),
(142, 48, 'arefintalukder', 'arefintalukder5@gmail.com', '2021-12-08 07:47:09', '2021-12-08 07:47:09'),
(143, 48, 'arefintalukder', 'arefintalukder5@gmail.com', '2021-12-08 07:47:39', '2021-12-08 07:47:39'),
(144, 48, 'arefintalukder', 'arefintalukder5@gmail.com', '2021-12-08 07:48:02', '2021-12-08 07:48:02'),
(145, 49, 'rajeebce17', 'rajeebce17@gmail.com', '2021-12-08 07:49:34', '2021-12-08 07:49:34'),
(146, 49, 'rajeebce17', 'rajeebce17@gmail.com', '2021-12-08 07:50:05', '2021-12-08 07:50:05'),
(147, 49, 'rajeebce17', 'rajeebce17@gmail.com', '2021-12-08 07:50:26', '2021-12-08 07:50:26'),
(148, 49, 'rajeebce17', 'rajeebce17@gmail.com', '2021-12-08 07:50:44', '2021-12-08 07:50:44'),
(149, 50, 'miftahulfahim', 'miftahulfahim24@gmail.com', '2021-12-08 07:52:44', '2021-12-08 07:52:44'),
(150, 50, 'miftahulfahim', 'miftahulfahim24@gmail.com', '2021-12-08 07:53:13', '2021-12-08 07:53:13'),
(151, 50, 'miftahulfahim', 'miftahulfahim24@gmail.com', '2021-12-08 07:53:39', '2021-12-08 07:53:39'),
(152, 50, 'miftahulfahim', 'miftahulfahim24@gmail.com', '2021-12-08 07:54:02', '2021-12-08 07:54:02'),
(153, 51, 'sagorkoiry1999', 'sagorkoiry1999@gmail.com', '2021-12-08 07:55:30', '2021-12-08 07:55:30'),
(154, 51, 'sagorkoiry1999', 'sagorkoiry1999@gmail.com', '2021-12-08 07:56:02', '2021-12-08 07:56:02'),
(155, 51, 'sagorkoiry1999', 'sagorkoiry1999@gmail.com', '2021-12-08 07:56:26', '2021-12-08 07:56:26'),
(156, 51, 'sagorkoiry1999', 'sagorkoiry1999@gmail.com', '2021-12-08 07:56:47', '2021-12-08 07:56:47'),
(157, 52, 'mdeyasinarafat', 'mdeyasinarafat567@gmail.com', '2021-12-08 07:57:59', '2021-12-08 07:57:59'),
(158, 52, 'mdeyasinarafat', 'mdeyasinarafat567@gmail.com', '2021-12-08 07:58:19', '2021-12-08 07:58:19'),
(159, 52, 'mdeyasinarafat', 'mdeyasinarafat567@gmail.com', '2021-12-08 07:58:36', '2021-12-08 07:58:36'),
(160, 53, 'saimun273', 'saimun273@gmail.com', '2021-12-08 08:00:23', '2021-12-08 08:00:23'),
(161, 53, 'saimun273', 'saimun273@gmail.com', '2021-12-08 08:00:49', '2021-12-08 08:00:49'),
(162, 53, 'saimun273', 'saimun273@gmail.com', '2021-12-08 08:01:25', '2021-12-08 08:01:25'),
(163, 53, 'saimun273', 'saimun273@gmail.com', '2021-12-08 08:01:43', '2021-12-08 08:01:43'),
(164, 54, 'nazmulislam', 'nazmulislam1948@gmail.com', '2021-12-08 08:03:12', '2021-12-08 08:03:12'),
(165, 55, 'rubayyatferdous', 'rubayyatferdous332@gmail.com', '2021-12-08 08:04:26', '2021-12-08 08:04:26'),
(166, 55, 'rubayyatferdous', 'rubayyatferdous332@gmail.com', '2021-12-08 08:04:52', '2021-12-08 08:04:52'),
(167, 55, 'rubayyatferdous', 'rubayyatferdous332@gmail.com', '2021-12-08 08:05:26', '2021-12-08 08:05:26'),
(168, 55, 'rubayyatferdous', 'rubayyatferdous332@gmail.com', '2021-12-08 08:05:46', '2021-12-08 08:05:46'),
(169, 56, 'hsaifuln', 'hsaifuln@gmail.com', '2021-12-08 08:30:58', '2021-12-08 08:30:58'),
(170, 56, 'hsaifuln', 'hsaifuln@gmail.com', '2021-12-08 08:31:21', '2021-12-08 08:31:21'),
(171, 56, 'hsaifuln', 'hsaifuln@gmail.com', '2021-12-08 08:31:47', '2021-12-08 08:31:47'),
(172, 56, 'hsaifuln', 'hsaifuln@gmail.com', '2021-12-08 08:32:20', '2021-12-08 08:32:20'),
(173, 57, 'ai0032992', 'ai0032992@gmail.com', '2021-12-08 08:34:33', '2021-12-08 08:34:33'),
(174, 58, 'murshedmargub', 'murshedmargub@gmail.com', '2021-12-08 08:36:40', '2021-12-08 08:36:40'),
(175, 58, 'murshedmargub', 'murshedmargub@gmail.com', '2021-12-08 08:37:02', '2021-12-08 08:37:02'),
(176, 58, 'murshedmargub', 'murshedmargub@gmail.com', '2021-12-08 08:37:29', '2021-12-08 08:37:29'),
(177, 58, 'murshedmargub', 'murshedmargub@gmail.com', '2021-12-08 08:37:48', '2021-12-08 08:37:48'),
(178, 59, 'mdtufsirulmiraj', 'mdtufsirulmiraj@gmail.com', '2021-12-08 08:40:12', '2021-12-08 08:40:12'),
(179, 59, 'mdtufsirulmiraj', 'mdtufsirulmiraj@gmail.com', '2021-12-08 08:40:35', '2021-12-08 08:40:35'),
(180, 59, 'mdtufsirulmiraj', 'mdtufsirulmiraj@gmail.com', '2021-12-08 08:41:00', '2021-12-08 08:41:00'),
(181, 59, 'mdtufsirulmiraj', 'mdtufsirulmiraj@gmail.com', '2021-12-08 08:41:22', '2021-12-08 08:41:22'),
(182, 60, 'hmarif.nazir', 'hmarif.nazir@gmail.com', '2021-12-08 08:43:30', '2021-12-08 08:43:30'),
(183, 60, 'hmarif.nazir', 'hmarif.nazir@gmail.com', '2021-12-08 08:43:54', '2021-12-08 08:43:54'),
(184, 60, 'hmarif.nazir', 'hmarif.nazir@gmail.com', '2021-12-08 08:44:18', '2021-12-08 08:44:18'),
(185, 61, 'basir20basir', 'basir20basir@gmail.com', '2021-12-08 09:03:28', '2021-12-08 09:03:28'),
(186, 62, 'labibaltasfi5', 'labibaltasfi5@gmail.com', '2021-12-08 09:04:47', '2021-12-08 09:04:47'),
(187, 63, 'shohas563', 'shohas563@gmail.com', '2021-12-08 09:06:33', '2021-12-08 09:06:33'),
(188, 63, 'shohas563', 'shohas563@gmail.com', '2021-12-08 09:07:57', '2021-12-08 09:07:57'),
(189, 63, 'shohas563', 'shohas563@gmail.com', '2021-12-08 09:08:25', '2021-12-08 09:08:25'),
(190, 63, 'shohas563', 'shohas563@gmail.com', '2021-12-08 09:09:22', '2021-12-08 09:09:22'),
(191, 64, 'hasiburttt', 'hasiburttt@gmail.com', '2021-12-08 09:12:11', '2021-12-08 09:12:11'),
(192, 64, 'hasiburttt', 'hasiburttt@gmail.com', '2021-12-08 09:12:37', '2021-12-08 09:12:37'),
(193, 64, 'hasiburttt', 'hasiburttt@gmail.com', '2021-12-08 09:12:55', '2021-12-08 09:12:55'),
(194, 65, 'mehedimiraj', 'mehedimiraj7799@gmail.com', '2021-12-08 09:14:26', '2021-12-08 09:14:26'),
(195, 65, 'mehedimiraj', 'mehedimiraj7799@gmail.com', '2021-12-08 09:14:48', '2021-12-08 09:14:48'),
(196, 65, 'mehedimiraj', 'mehedimiraj7799@gmail.com', '2021-12-08 09:15:11', '2021-12-08 09:15:11'),
(197, 65, 'mehedimiraj', 'mehedimiraj7799@gmail.com', '2021-12-08 09:15:28', '2021-12-08 09:15:28'),
(198, 66, 'yamina', 'yaminakathyyami@gmail.com', '2021-12-08 09:17:21', '2021-12-08 09:17:21'),
(199, 66, 'yamina', 'yaminakathyyami@gmail.com', '2021-12-08 09:17:48', '2021-12-08 09:17:48'),
(200, 66, 'yamina', 'yaminakathyyami@gmail.com', '2021-12-08 09:18:13', '2021-12-08 09:18:13'),
(201, 66, 'yamina', 'yaminakathyyami@gmail.com', '2021-12-08 09:18:35', '2021-12-08 09:18:35'),
(202, 66, 'yamina', 'yaminakathyyami@gmail.com', '2021-12-08 09:18:54', '2021-12-08 09:18:54'),
(203, 67, 'arifypp', 'arifypp@gmail.com', '2021-12-08 09:20:37', '2021-12-08 09:20:37'),
(204, 67, 'arifypp', 'arifypp@gmail.com', '2021-12-08 09:21:03', '2021-12-08 09:21:03'),
(205, 67, 'arifypp', 'arifypp@gmail.com', '2021-12-08 09:21:34', '2021-12-08 09:21:34'),
(206, 67, 'arifypp', 'arifypp@gmail.com', '2021-12-08 09:21:51', '2021-12-08 09:21:51'),
(207, 68, 'mdrakibhossain', 'mdrakibhossain7342@gmail.com', '2021-12-08 09:23:09', '2021-12-08 09:23:09'),
(208, 68, 'mdrakibhossain', 'mdrakibhossain7342@gmail.com', '2021-12-08 09:23:27', '2021-12-08 09:23:27'),
(209, 68, 'mdrakibhossain', 'mdrakibhossain7342@gmail.com', '2021-12-08 09:23:45', '2021-12-08 09:23:45'),
(210, 69, 'skshad', 'skshad5@gmail.com', '2021-12-08 09:25:01', '2021-12-08 09:25:01'),
(211, 69, 'skshad', 'skshad5@gmail.com', '2021-12-08 09:25:26', '2021-12-08 09:25:26'),
(212, 69, 'skshad', 'skshad5@gmail.com', '2021-12-08 09:25:42', '2021-12-08 09:25:42'),
(213, 69, 'skshad', 'skshad5@gmail.com', '2021-12-08 09:26:02', '2021-12-08 09:26:02'),
(214, 70, 'shabnam', 'shabnam.priyanka@live.ca', '2021-12-08 09:27:31', '2021-12-08 09:27:31'),
(215, 70, 'shabnam', 'shabnam.priyanka@live.ca', '2021-12-08 09:27:49', '2021-12-08 09:27:49'),
(216, 70, 'shabnam', 'shabnam.priyanka@live.ca', '2021-12-08 09:28:16', '2021-12-08 09:28:16'),
(217, 71, 'arif', 'arifac83@gmail.com', '2021-12-08 09:30:15', '2021-12-08 09:30:15'),
(218, 71, 'arif', 'arifac83@gmail.com', '2021-12-08 09:30:40', '2021-12-08 09:30:40'),
(219, 71, 'arif', 'arifac83@gmail.com', '2021-12-08 09:31:06', '2021-12-08 09:31:06'),
(220, 71, 'arif', 'arifac83@gmail.com', '2021-12-08 09:31:26', '2021-12-08 09:31:26'),
(221, 71, 'arif', 'arifac83@gmail.com', '2021-12-08 09:33:00', '2021-12-08 09:33:00'),
(222, 72, 'sourav.ghose', 'sourav.ghose10@gmail.com', '2021-12-08 09:36:17', '2021-12-08 09:36:17'),
(223, 72, 'sourav.ghose', 'sourav.ghose10@gmail.com', '2021-12-08 09:36:34', '2021-12-08 09:36:34'),
(224, 72, 'sourav.ghose', 'sourav.ghose10@gmail.com', '2021-12-08 09:36:53', '2021-12-08 09:36:53'),
(225, 73, 'pervez.hossain', 'pervez.hossain.3032@gmail.com', '2021-12-08 09:38:01', '2021-12-08 09:38:01'),
(226, 73, 'pervez.hossain', 'pervez.hossain.3032@gmail.com', '2021-12-08 09:38:29', '2021-12-08 09:38:29'),
(227, 73, 'pervez.hossain', 'pervez.hossain.3032@gmail.com', '2021-12-08 09:40:24', '2021-12-08 09:40:24'),
(228, 73, 'pervez.hossain', 'pervez.hossain.3032@gmail.com', '2021-12-08 09:40:56', '2021-12-08 09:40:56'),
(229, 74, 'axiomdjp', 'axiomdjp@gmail.com', '2021-12-08 09:43:07', '2021-12-08 09:43:07'),
(230, 74, 'axiomdjp', 'axiomdjp@gmail.com', '2021-12-08 09:43:25', '2021-12-08 09:43:25'),
(231, 74, 'axiomdjp', 'axiomdjp@gmail.com', '2021-12-08 09:43:41', '2021-12-08 09:43:41'),
(232, 75, 'chypabitra', 'chypabitra.bd@gmail.com', '2021-12-08 09:46:43', '2021-12-08 09:46:43'),
(233, 75, 'chypabitra', 'chypabitra.bd@gmail.com', '2021-12-08 09:48:10', '2021-12-08 09:48:10'),
(234, 75, 'chypabitra', 'chypabitra.bd@gmail.com', '2021-12-08 09:48:50', '2021-12-08 09:48:50'),
(235, 75, 'chypabitra', 'chypabitra.bd@gmail.com', '2021-12-08 09:49:11', '2021-12-08 09:49:11'),
(236, 76, 'siddique', 'siddique762611@gmail.com', '2021-12-08 09:50:44', '2021-12-08 09:50:44'),
(237, 76, 'siddique', 'siddique762611@gmail.com', '2021-12-08 09:51:10', '2021-12-08 09:51:10'),
(238, 76, 'siddique', 'siddique762611@gmail.com', '2021-12-08 09:51:49', '2021-12-08 09:51:49'),
(239, 76, 'siddique', 'siddique762611@gmail.com', '2021-12-08 09:52:42', '2021-12-08 09:52:42'),
(240, 77, 'mehedi', 'mehedimehedihossain@gmail.com', '2021-12-08 09:54:44', '2021-12-08 09:54:44'),
(241, 77, 'mehedi', 'mehedimehedihossain@gmail.com', '2021-12-08 09:55:01', '2021-12-08 09:55:01'),
(242, 78, 'ibnumahtab', 'ibnumahtab@gmail.com', '2021-12-08 09:58:49', '2021-12-08 09:58:49'),
(243, 78, 'ibnumahtab', 'ibnumahtab@gmail.com', '2021-12-08 09:59:18', '2021-12-08 09:59:18'),
(244, 78, 'ibnumahtab', 'ibnumahtab@gmail.com', '2021-12-08 09:59:50', '2021-12-08 09:59:50'),
(245, 79, 'sahedhasan', 'sahedhasan692@gmail.com', '2021-12-08 10:02:16', '2021-12-08 10:02:16'),
(246, 79, 'sahedhasan', 'sahedhasan692@gmail.com', '2021-12-08 10:02:48', '2021-12-08 10:02:48'),
(247, 79, 'sahedhasan', 'sahedhasan692@gmail.com', '2021-12-08 10:03:13', '2021-12-08 10:03:13'),
(248, 79, 'sahedhasan', 'sahedhasan692@gmail.com', '2021-12-08 10:03:36', '2021-12-08 10:03:36'),
(249, 80, 'Tanjina', 'ammubappy@gmail.com', '2021-12-08 10:06:37', '2021-12-08 10:06:37'),
(250, 80, 'Tanjina', 'ammubappy@gmail.com', '2021-12-08 10:07:00', '2021-12-08 10:07:00'),
(251, 80, 'Tanjina', 'ammubappy@gmail.com', '2021-12-08 10:07:25', '2021-12-08 10:07:25'),
(252, 80, 'Tanjina', 'ammubappy@gmail.com', '2021-12-08 10:07:50', '2021-12-08 10:07:50'),
(253, 81, 'mdsajjadchy', 'mdsajjadchy11@gmail.com', '2021-12-08 10:09:52', '2021-12-08 10:09:52'),
(254, 81, 'mdsajjadchy', 'mdsajjadchy11@gmail.com', '2021-12-08 10:10:16', '2021-12-08 10:10:16'),
(255, 81, 'mdsajjadchy', 'mdsajjadchy11@gmail.com', '2021-12-08 10:10:34', '2021-12-08 10:10:34'),
(256, 81, 'mdsajjadchy', 'mdsajjadchy11@gmail.com', '2021-12-08 10:10:49', '2021-12-08 10:10:49'),
(257, 81, 'mdsajjadchy', 'mdsajjadchy11@gmail.com', '2021-12-08 10:11:04', '2021-12-08 10:11:04'),
(258, 81, 'mdsajjadchy', 'mdsajjadchy11@gmail.com', '2021-12-08 10:11:31', '2021-12-08 10:11:31'),
(259, 82, 'ronyhmd1', 'ronyhmd1@gmail.com', '2021-12-08 10:13:14', '2021-12-08 10:13:14'),
(260, 82, 'ronyhmd1', 'ronyhmd1@gmail.com', '2021-12-08 10:13:41', '2021-12-08 10:13:41'),
(261, 83, 'fshrabon', 'fshrabon151@gmail.com', '2021-12-08 10:15:40', '2021-12-08 10:15:40'),
(262, 83, 'fshrabon', 'fshrabon151@gmail.com', '2021-12-08 10:16:40', '2021-12-08 10:16:40'),
(263, 83, 'fshrabon', 'fshrabon151@gmail.com', '2021-12-08 10:17:14', '2021-12-08 10:17:14'),
(264, 83, 'fshrabon', 'fshrabon151@gmail.com', '2021-12-08 10:18:37', '2021-12-08 10:18:37'),
(265, 84, 'srv0018', 'srv0018@gmail.com', '2021-12-08 10:20:41', '2021-12-08 10:20:41'),
(266, 84, 'srv0018', 'srv0018@gmail.com', '2021-12-08 10:21:02', '2021-12-08 10:21:02'),
(267, 84, 'srv0018', 'srv0018@gmail.com', '2021-12-08 10:21:32', '2021-12-08 10:21:32'),
(268, 84, 'srv0018', 'srv0018@gmail.com', '2021-12-08 10:21:58', '2021-12-08 10:21:58'),
(269, 85, 'jobairalam', 'jobairalam.8986@gmail.com', '2021-12-08 10:26:07', '2021-12-08 10:26:07'),
(270, 86, 'rezwanul', 'rezwanul.haquebd777@gmail.com', '2021-12-08 10:30:30', '2021-12-08 10:30:30'),
(271, 86, 'rezwanul', 'rezwanul.haquebd777@gmail.com', '2021-12-08 10:30:53', '2021-12-08 10:30:53'),
(272, 86, 'rezwanul', 'rezwanul.haquebd777@gmail.com', '2021-12-08 10:31:13', '2021-12-08 10:31:13'),
(273, 86, 'rezwanul', 'rezwanul.haquebd777@gmail.com', '2021-12-08 10:31:30', '2021-12-08 10:31:30'),
(274, 87, 'jebin', 'jebinkhan670@gmail.com', '2021-12-08 10:33:17', '2021-12-08 10:33:17'),
(275, 87, 'jebin', 'jebinkhan670@gmail.com', '2021-12-08 10:33:35', '2021-12-08 10:33:35'),
(276, 87, 'jebin', 'jebinkhan670@gmail.com', '2021-12-08 10:34:15', '2021-12-08 10:34:15'),
(277, 87, 'jebin', 'jebinkhan670@gmail.com', '2021-12-08 10:34:41', '2021-12-08 10:34:41'),
(278, 88, 'sagar', 'sagarshammi121@gmail.com', '2021-12-08 10:37:30', '2021-12-08 10:37:30'),
(279, 88, 'sagar', 'sagarshammi121@gmail.com', '2021-12-08 10:37:53', '2021-12-08 10:37:53'),
(280, 88, 'sagar', 'sagarshammi121@gmail.com', '2021-12-08 10:38:11', '2021-12-08 10:38:11'),
(281, 88, 'sagar', 'sagarshammi121@gmail.com', '2021-12-08 10:38:30', '2021-12-08 10:38:30'),
(282, 89, 'sajeda', 'sajedachy@gmail.com', '2021-12-08 10:40:30', '2021-12-08 10:40:30'),
(283, 89, 'sajeda', 'sajedachy@gmail.com', '2021-12-08 10:40:54', '2021-12-08 10:40:54'),
(284, 89, 'sajeda', 'sajedachy@gmail.com', '2021-12-08 10:41:19', '2021-12-08 10:41:19'),
(285, 89, 'sajeda', 'sajedachy@gmail.com', '2021-12-08 10:41:44', '2021-12-08 10:41:44'),
(286, 89, 'sajeda', 'sajedachy@gmail.com', '2021-12-08 10:42:07', '2021-12-08 10:42:07'),
(287, 90, 'smsujon', 'smsujon50@gmail.com', '2021-12-08 10:44:08', '2021-12-08 10:44:08'),
(288, 90, 'smsujon', 'smsujon50@gmail.com', '2021-12-08 10:44:31', '2021-12-08 10:44:31'),
(289, 90, 'smsujon', 'smsujon50@gmail.com', '2021-12-08 10:45:13', '2021-12-08 10:45:13'),
(290, 90, 'smsujon', 'smsujon50@gmail.com', '2021-12-08 10:45:33', '2021-12-08 10:45:33'),
(291, 91, 'jesminjuthi', 'jesminjuthi001@gmail.com', '2021-12-08 10:47:25', '2021-12-08 10:47:25'),
(292, 91, 'jesminjuthi', 'jesminjuthi001@gmail.com', '2021-12-08 10:47:56', '2021-12-08 10:47:56'),
(293, 91, 'jesminjuthi', 'jesminjuthi001@gmail.com', '2021-12-08 10:48:18', '2021-12-08 10:48:18'),
(294, 91, 'jesminjuthi', 'jesminjuthi001@gmail.com', '2021-12-08 10:48:43', '2021-12-08 10:48:43'),
(295, 91, 'jesminjuthi', 'jesminjuthi001@gmail.com', '2021-12-08 10:49:09', '2021-12-08 10:49:09'),
(296, 92, 'ansarullah', 'ansarullah010@gmail.com', '2021-12-08 10:51:01', '2021-12-08 10:51:01'),
(297, 92, 'ansarullah', 'ansarullah010@gmail.com', '2021-12-08 10:51:27', '2021-12-08 10:51:27'),
(298, 92, 'ansarullah', 'ansarullah010@gmail.com', '2021-12-08 10:51:44', '2021-12-08 10:51:44'),
(299, 92, 'ansarullah', 'ansarullah010@gmail.com', '2021-12-08 10:52:07', '2021-12-08 10:52:07'),
(300, 93, 'alaminkhan', '01.alaminkhan.bd@gmail.com', '2021-12-08 10:53:53', '2021-12-08 10:53:53'),
(301, 93, 'alaminkhan', '01.alaminkhan.bd@gmail.com', '2021-12-08 10:54:12', '2021-12-08 10:54:12'),
(302, 93, 'alaminkhan', '01.alaminkhan.bd@gmail.com', '2021-12-08 10:54:34', '2021-12-08 10:54:34'),
(303, 93, 'alaminkhan', '01.alaminkhan.bd@gmail.com', '2021-12-08 10:54:54', '2021-12-08 10:54:54'),
(304, 94, 'amaruf', 'amaruf273@gmail.com', '2021-12-08 10:56:07', '2021-12-08 10:56:07'),
(305, 94, 'amaruf', 'amaruf273@gmail.com', '2021-12-08 10:56:28', '2021-12-08 10:56:28'),
(306, 94, 'amaruf', 'amaruf273@gmail.com', '2021-12-08 10:56:47', '2021-12-08 10:56:47'),
(307, 95, 'joysho', 'joysho@gmail.com', '2021-12-08 10:59:02', '2021-12-08 10:59:02'),
(308, 95, 'joysho', 'joysho@gmail.com', '2021-12-08 10:59:18', '2021-12-08 10:59:18'),
(309, 96, 'hasansalman', 'hasansalmanit@gmail.com', '2021-12-08 11:00:34', '2021-12-08 11:00:34'),
(310, 96, 'hasansalman', 'hasansalmanit@gmail.com', '2021-12-08 11:00:54', '2021-12-08 11:00:54'),
(311, 96, 'hasansalman', 'hasansalmanit@gmail.com', '2021-12-08 11:01:11', '2021-12-08 11:01:11'),
(312, 96, 'hasansalman', 'hasansalmanit@gmail.com', '2021-12-08 11:01:30', '2021-12-08 11:01:30'),
(313, 97, 'mmohsin', 'mmohsin3212@gmail.com', '2021-12-08 11:02:46', '2021-12-08 11:02:46'),
(314, 98, 'hasancse14', 'hasancse14@gmail.com', '2021-12-08 11:04:53', '2021-12-08 11:04:53'),
(315, 98, 'hasancse14', 'hasancse14@gmail.com', '2021-12-08 11:05:17', '2021-12-08 11:05:17'),
(316, 98, 'hasancse14', 'hasancse14@gmail.com', '2021-12-08 11:05:38', '2021-12-08 11:05:38'),
(317, 99, 'sajalmalo', 'sajalmalo15@gmail.com', '2021-12-08 11:07:07', '2021-12-08 11:07:07'),
(318, 99, 'sajalmalo', 'sajalmalo15@gmail.com', '2021-12-08 11:07:24', '2021-12-08 11:07:24'),
(319, 100, 'sharifulmamun', 'sharifulmamun7@gmail.com', '2021-12-08 11:09:14', '2021-12-08 11:09:14'),
(320, 100, 'sharifulmamun', 'sharifulmamun7@gmail.com', '2021-12-08 11:09:41', '2021-12-08 11:09:41'),
(321, 100, 'sharifulmamun', 'sharifulmamun7@gmail.com', '2021-12-08 11:09:59', '2021-12-08 11:09:59'),
(322, 101, 'tj.career2014', 'tj.career2014@gmail.com', '2021-12-08 11:11:41', '2021-12-08 11:11:41'),
(323, 101, 'tj.career2014', 'tj.career2014@gmail.com', '2021-12-08 11:12:08', '2021-12-08 11:12:08'),
(324, 101, 'tj.career2014', 'tj.career2014@gmail.com', '2021-12-08 11:12:38', '2021-12-08 11:12:38'),
(325, 101, 'tj.career2014', 'tj.career2014@gmail.com', '2021-12-08 11:12:55', '2021-12-08 11:12:55'),
(326, 102, 'marufurr', 'marufurr75@gmail.com', '2021-12-08 11:14:12', '2021-12-08 11:14:12'),
(327, 102, 'marufurr', 'marufurr75@gmail.com', '2021-12-08 11:15:06', '2021-12-08 11:15:06'),
(328, 102, 'marufurr', 'marufurr75@gmail.com', '2021-12-08 11:15:26', '2021-12-08 11:15:26'),
(329, 103, 'naz089fvrict', 'naz089fvrict@gmail.com', '2021-12-08 11:18:05', '2021-12-08 11:18:05'),
(330, 103, 'naz089fvrict', 'naz089fvrict@gmail.com', '2021-12-08 11:18:26', '2021-12-08 11:18:26'),
(331, 103, 'naz089fvrict', 'naz089fvrict@gmail.com', '2021-12-08 11:18:57', '2021-12-08 11:18:57'),
(332, 103, 'naz089fvrict', 'naz089fvrict@gmail.com', '2021-12-08 11:19:23', '2021-12-08 11:19:23'),
(333, 104, 'mdtarekrahman', 'mdtarekrahman209@gmail.com', '2021-12-08 11:21:08', '2021-12-08 11:21:08'),
(334, 104, 'mdtarekrahman', 'mdtarekrahman209@gmail.com', '2021-12-08 11:21:41', '2021-12-08 11:21:41'),
(335, 104, 'mdtarekrahman', 'mdtarekrahman209@gmail.com', '2021-12-08 11:22:12', '2021-12-08 11:22:12'),
(336, 104, 'mdtarekrahman', 'mdtarekrahman209@gmail.com', '2021-12-08 11:22:47', '2021-12-08 11:22:47'),
(337, 105, 'shaonn', 'shaonn22@gmail.com', '2021-12-08 11:24:57', '2021-12-08 11:24:57'),
(338, 105, 'shaonn', 'shaonn22@gmail.com', '2021-12-08 11:25:20', '2021-12-08 11:25:20'),
(339, 105, 'shaonn', 'shaonn22@gmail.com', '2021-12-08 11:25:49', '2021-12-08 11:25:49'),
(340, 105, 'shaonn', 'shaonn22@gmail.com', '2021-12-08 11:27:08', '2021-12-08 11:27:08'),
(341, 105, 'shaonn', 'shaonn22@gmail.com', '2021-12-08 11:27:28', '2021-12-08 11:27:28'),
(342, 106, 'sna4041', 'sna4041@gmail.com', '2021-12-08 11:30:30', '2021-12-08 11:30:30'),
(343, 106, 'sna4041', 'sna4041@gmail.com', '2021-12-08 11:30:51', '2021-12-08 11:30:51'),
(344, 107, 'khalidhossainbadhon', 'khalidhossainbadhon@gmail.com', '2021-12-08 11:32:59', '2021-12-08 11:32:59'),
(345, 107, 'khalidhossainbadhon', 'khalidhossainbadhon@gmail.com', '2021-12-08 11:33:23', '2021-12-08 11:33:23'),
(346, 107, 'khalidhossainbadhon', 'khalidhossainbadhon@gmail.com', '2021-12-08 11:33:41', '2021-12-08 11:33:41'),
(347, 107, 'khalidhossainbadhon', 'khalidhossainbadhon@gmail.com', '2021-12-08 11:34:03', '2021-12-08 11:34:03'),
(348, 108, 'shheartless', 'shheartless@gmail.com', '2021-12-08 11:35:24', '2021-12-08 11:35:24'),
(349, 108, 'shheartless', 'shheartless@gmail.com', '2021-12-08 11:35:39', '2021-12-08 11:35:39'),
(350, 108, 'shheartless', 'shheartless@gmail.com', '2021-12-08 11:36:08', '2021-12-08 11:36:08'),
(351, 108, 'shheartless', 'shheartless@gmail.com', '2021-12-08 11:36:24', '2021-12-08 11:36:24'),
(352, 109, 'tanim.ahmed.nayem', 'tanim.ahmed.nayem@gmail.com', '2021-12-08 11:37:46', '2021-12-08 11:37:46'),
(353, 109, 'tanim.ahmed.nayem', 'tanim.ahmed.nayem@gmail.com', '2021-12-08 11:38:04', '2021-12-08 11:38:04'),
(354, 109, 'tanim.ahmed.nayem', 'tanim.ahmed.nayem@gmail.com', '2021-12-08 11:38:26', '2021-12-08 11:38:26'),
(355, 109, 'tanim.ahmed.nayem', 'tanim.ahmed.nayem@gmail.com', '2021-12-08 11:38:42', '2021-12-08 11:38:42'),
(356, 110, 'm.karimcu', 'm.karimcu@gmail.com', '2021-12-08 11:39:58', '2021-12-08 11:39:58'),
(357, 110, 'm.karimcu', 'm.karimcu@gmail.com', '2021-12-08 11:40:13', '2021-12-08 11:40:13'),
(358, 110, 'm.karimcu', 'm.karimcu@gmail.com', '2021-12-08 11:40:33', '2021-12-08 11:40:33'),
(359, 110, 'm.karimcu', 'm.karimcu@gmail.com', '2021-12-08 11:40:50', '2021-12-08 11:40:50'),
(360, 111, 'abuabdullah43511', 'abuabdullah43511@gmail.com', '2021-12-08 11:43:50', '2021-12-08 11:43:50'),
(361, 111, 'abuabdullah43511', 'abuabdullah43511@gmail.com', '2021-12-08 11:44:24', '2021-12-08 11:44:24'),
(362, 111, 'abuabdullah43511', 'abuabdullah43511@gmail.com', '2021-12-08 11:44:58', '2021-12-08 11:44:58'),
(363, 111, 'abuabdullah43511', 'abuabdullah43511@gmail.com', '2021-12-08 11:45:20', '2021-12-08 11:45:20'),
(364, 112, 'mshabujbd', 'mshabujbd06@gmail.com', '2021-12-08 11:47:01', '2021-12-08 11:47:01'),
(365, 112, 'mshabujbd', 'mshabujbd06@gmail.com', '2021-12-08 11:47:20', '2021-12-08 11:47:20'),
(366, 112, 'mshabujbd', 'mshabujbd06@gmail.com', '2021-12-08 11:47:41', '2021-12-08 11:47:41'),
(367, 113, 'yousufweb99', 'yousufweb99@gmail.com', '2021-12-08 11:54:13', '2021-12-08 11:54:13'),
(368, 113, 'yousufweb99', 'yousufweb99@gmail.com', '2021-12-08 11:54:38', '2021-12-08 11:54:38'),
(369, 113, 'yousufweb99', 'yousufweb99@gmail.com', '2021-12-08 11:55:00', '2021-12-08 11:55:00'),
(370, 113, 'yousufweb99', 'yousufweb99@gmail.com', '2021-12-08 11:55:21', '2021-12-08 11:55:21'),
(371, 113, 'yousufweb99', 'yousufweb99@gmail.com', '2021-12-08 11:55:41', '2021-12-08 11:55:41'),
(372, 113, 'yousufweb99', 'yousufweb99@gmail.com', '2021-12-08 11:56:00', '2021-12-08 11:56:00'),
(373, 114, 'sudipto', 'sudipto.munna93@gmail.com', '2021-12-08 11:57:19', '2021-12-08 11:57:19'),
(374, 114, 'sudipto', 'sudipto.munna93@gmail.com', '2021-12-08 11:57:38', '2021-12-08 11:57:38'),
(375, 114, 'sudipto', 'sudipto.munna93@gmail.com', '2021-12-08 11:58:25', '2021-12-08 11:58:25'),
(376, 114, 'sudipto', 'sudipto.munna93@gmail.com', '2021-12-08 11:58:52', '2021-12-08 11:58:52'),
(377, 115, 'meghnadhshaha', 'meghnadhshaha@gmail.com', '2021-12-08 14:09:25', '2021-12-08 14:09:25'),
(378, 115, 'meghnadhshaha', 'meghnadhshaha@gmail.com', '2021-12-08 14:09:53', '2021-12-08 14:09:53'),
(379, 115, 'meghnadhshaha', 'meghnadhshaha@gmail.com', '2021-12-08 14:10:21', '2021-12-08 14:10:21'),
(380, 115, 'meghnadhshaha', 'meghnadhshaha@gmail.com', '2021-12-08 14:10:49', '2021-12-08 14:10:49'),
(381, 116, 'aburaihan115219', 'aburaihan115219@gmail', '2021-12-08 14:14:16', '2021-12-08 14:14:16'),
(382, 116, 'aburaihan115219', 'aburaihan115219@gmail', '2021-12-08 14:14:38', '2021-12-08 14:14:38'),
(383, 116, 'aburaihan115219', 'aburaihan115219@gmail', '2021-12-08 14:14:57', '2021-12-08 14:14:57'),
(384, 116, 'aburaihan115219', 'aburaihan115219@gmail', '2021-12-08 14:15:19', '2021-12-08 14:15:19'),
(385, 116, 'aburaihan115219', 'aburaihan115219@gmail', '2021-12-08 14:15:48', '2021-12-08 14:15:48'),
(386, 116, 'aburaihan115219', 'aburaihan115219@gmail', '2021-12-08 14:16:14', '2021-12-08 14:16:14'),
(387, 117, 'mintuxx16', 'mintuxx16@gmail.com', '2021-12-08 14:51:44', '2021-12-08 14:51:44'),
(388, 117, 'mintuxx16', 'mintuxx16@gmail.com', '2021-12-08 14:52:13', '2021-12-08 14:52:13'),
(389, 117, 'mintuxx16', 'mintuxx16@gmail.com', '2021-12-08 14:52:41', '2021-12-08 14:52:41'),
(390, 117, 'mintuxx16', 'mintuxx16@gmail.com', '2021-12-08 14:53:07', '2021-12-08 14:53:07'),
(391, 117, 'mintuxx16', 'mintuxx16@gmail.com', '2021-12-08 14:53:36', '2021-12-08 14:53:36'),
(392, 118, 'mdneyazmahmud', 'mdneyazmahmud@gmail.com', '2021-12-08 14:55:39', '2021-12-08 14:55:39'),
(393, 118, 'mdneyazmahmud', 'mdneyazmahmud@gmail.com', '2021-12-08 14:56:03', '2021-12-08 14:56:03'),
(394, 118, 'mdneyazmahmud', 'mdneyazmahmud@gmail.com', '2021-12-08 14:56:23', '2021-12-08 14:56:23'),
(395, 119, 'hasan.azwad', 'hasan.azwad@gmail.com', '2021-12-08 14:59:49', '2021-12-08 14:59:49'),
(396, 119, 'hasan.azwad', 'hasan.azwad@gmail.com', '2021-12-08 15:00:13', '2021-12-08 15:00:13'),
(397, 119, 'hasan.azwad', 'hasan.azwad@gmail.com', '2021-12-08 15:00:31', '2021-12-08 15:00:31'),
(398, 120, 'csesujon155', 'csesujon155@gmail.com', '2021-12-08 15:02:59', '2021-12-08 15:02:59'),
(399, 120, 'csesujon155', 'csesujon155@gmail.com', '2021-12-08 15:03:34', '2021-12-08 15:03:34'),
(400, 120, 'csesujon155', 'csesujon155@gmail.com', '2021-12-08 15:03:53', '2021-12-08 15:03:53'),
(401, 121, 'bhawlad', 'bhawlad@gmail.com', '2021-12-08 15:07:26', '2021-12-08 15:07:26'),
(402, 121, 'bhawlad', 'bhawlad@gmail.com', '2021-12-08 15:07:52', '2021-12-08 15:07:52'),
(403, 121, 'bhawlad', 'bhawlad@gmail.com', '2021-12-08 15:08:16', '2021-12-08 15:08:16'),
(404, 121, 'bhawlad', 'bhawlad@gmail.com', '2021-12-08 15:08:40', '2021-12-08 15:08:40'),
(405, 122, 'sulrahim3', 'sulrahim3@gmail.com', '2021-12-08 15:15:38', '2021-12-08 15:15:38'),
(406, 122, 'sulrahim3', 'sulrahim3@gmail.com', '2021-12-08 15:16:05', '2021-12-08 15:16:05'),
(407, 122, 'sulrahim3', 'sulrahim3@gmail.com', '2021-12-08 15:16:39', '2021-12-08 15:16:39'),
(408, 122, 'sulrahim3', 'sulrahim3@gmail.com', '2021-12-08 15:16:59', '2021-12-08 15:16:59'),
(409, 123, 'bashar.ahmed', 'bashar.ahmed4980@gmail.com', '2021-12-08 15:18:29', '2021-12-08 15:18:29'),
(410, 123, 'bashar.ahmed', 'bashar.ahmed4980@gmail.com', '2021-12-08 15:18:50', '2021-12-08 15:18:50'),
(411, 123, 'bashar.ahmed', 'bashar.ahmed4980@gmail.com', '2021-12-08 15:19:12', '2021-12-08 15:19:12'),
(412, 123, 'bashar.ahmed', 'bashar.ahmed4980@gmail.com', '2021-12-08 15:19:31', '2021-12-08 15:19:31'),
(413, 124, 'shahriar', 'shahriar.currency@gmail.com', '2021-12-08 15:24:31', '2021-12-08 15:24:31'),
(414, 124, 'shahriar', 'shahriar.currency@gmail.com', '2021-12-08 15:24:57', '2021-12-08 15:24:57'),
(415, 124, 'shahriar', 'shahriar.currency@gmail.com', '2021-12-08 15:25:19', '2021-12-08 15:25:19'),
(416, 124, 'shahriar', 'shahriar.currency@gmail.com', '2021-12-08 15:25:38', '2021-12-08 15:25:38'),
(417, 125, 'hafizuddinud', 'hafizuddinud531@gmail.com', '2021-12-08 15:27:14', '2021-12-08 15:27:14'),
(418, 126, 'sprifat58', 'sprifat58@gmail.com', '2021-12-08 15:28:32', '2021-12-08 15:28:32'),
(419, 126, 'sprifat58', 'sprifat58@gmail.com', '2021-12-08 15:29:00', '2021-12-08 15:29:00'),
(420, 126, 'sprifat58', 'sprifat58@gmail.com', '2021-12-08 15:29:28', '2021-12-08 15:29:28'),
(421, 126, 'sprifat58', 'sprifat58@gmail.com', '2021-12-08 15:29:48', '2021-12-08 15:29:48'),
(422, 127, 'aklimashampa', 'aklimashampa2@gmail.com', '2021-12-08 16:15:27', '2021-12-08 16:15:27'),
(423, 127, 'aklimashampa', 'aklimashampa2@gmail.com', '2021-12-08 16:15:50', '2021-12-08 16:15:50'),
(424, 128, 'hdsaurav', 'hdsaurav@gmail.com', '2021-12-08 16:17:15', '2021-12-08 16:17:15'),
(425, 128, 'hdsaurav', 'hdsaurav@gmail.com', '2021-12-08 16:17:46', '2021-12-08 16:17:46'),
(426, 128, 'hdsaurav', 'hdsaurav@gmail.com', '2021-12-08 16:18:17', '2021-12-08 16:18:17'),
(427, 128, 'hdsaurav', 'hdsaurav@gmail.com', '2021-12-08 16:18:38', '2021-12-08 16:18:38'),
(428, 129, 'touhidul.islam.fahim', 'touhidul.islam.fahim246@gmail.com', '2021-12-08 16:21:16', '2021-12-08 16:21:16'),
(429, 129, 'touhidul.islam.fahim', 'touhidul.islam.fahim246@gmail.com', '2021-12-08 16:21:41', '2021-12-08 16:21:41'),
(430, 129, 'touhidul.islam.fahim', 'touhidul.islam.fahim246@gmail.com', '2021-12-08 16:22:02', '2021-12-08 16:22:02'),
(431, 129, 'touhidul.islam.fahim', 'touhidul.islam.fahim246@gmail.com', '2021-12-08 16:22:27', '2021-12-08 16:22:27'),
(432, 129, 'touhidul.islam.fahim', 'touhidul.islam.fahim246@gmail.com', '2021-12-08 16:22:52', '2021-12-08 16:22:52'),
(433, 129, 'touhidul.islam.fahim', 'touhidul.islam.fahim246@gmail.com', '2021-12-08 16:23:20', '2021-12-08 16:23:20'),
(434, 130, 'sifat980', 'sifat980@gmail.com', '2021-12-09 06:29:22', '2021-12-09 06:29:22'),
(435, 130, 'sifat980', 'sifat980@gmail.com', '2021-12-09 06:29:51', '2021-12-09 06:29:51'),
(436, 131, 'mukta700075', 'mukta700075@gmail.com', '2021-12-09 06:31:32', '2021-12-09 06:31:32'),
(437, 132, 'minhaz.cu', 'minhaz.cu@gmail.com', '2021-12-09 06:33:22', '2021-12-09 06:33:22'),
(438, 133, 'akashcc48', 'akashcc48@gmail.com', '2021-12-09 06:37:10', '2021-12-09 06:37:10'),
(439, 134, 'siumahmed009', 'siumahmed009@gmail.com', '2021-12-09 06:38:48', '2021-12-09 06:38:48'),
(440, 134, 'siumahmed009', 'siumahmed009@gmail.com', '2021-12-09 06:39:21', '2021-12-09 06:39:21'),
(441, 134, 'siumahmed009', 'siumahmed009@gmail.com', '2021-12-09 06:39:43', '2021-12-09 06:39:43'),
(442, 135, 'rokunuzzamanbhuiya', 'rokunuzzamanbhuiya@gmail.com', '2021-12-09 06:41:11', '2021-12-09 06:41:11'),
(443, 136, 'ark561484', 'ark561484@gmail.com', '2021-12-09 06:42:19', '2021-12-09 06:42:19'),
(444, 136, 'ark561484', 'ark561484@gmail.com', '2021-12-09 06:43:05', '2021-12-09 06:43:05'),
(445, 136, 'ark561484', 'ark561484@gmail.com', '2021-12-09 06:43:27', '2021-12-09 06:43:27'),
(446, 137, 'azim382838', 'azim382838@gmail.com', '2021-12-09 06:45:04', '2021-12-09 06:45:04'),
(447, 137, 'azim382838', 'azim382838@gmail.com', '2021-12-09 06:45:23', '2021-12-09 06:45:23'),
(448, 137, 'azim382838', 'azim382838@gmail.com', '2021-12-09 06:45:45', '2021-12-09 06:45:45'),
(449, 137, 'azim382838', 'azim382838@gmail.com', '2021-12-09 06:47:32', '2021-12-09 06:47:32'),
(450, 137, 'azim382838', 'azim382838@gmail.com', '2021-12-09 06:47:54', '2021-12-09 06:47:54'),
(451, 138, 'rokonuzzaman102', 'rokonuzzaman102@gmail.com', '2021-12-09 06:49:18', '2021-12-09 06:49:18'),
(452, 138, 'rokonuzzaman102', 'rokonuzzaman102@gmail.com', '2021-12-09 06:49:44', '2021-12-09 06:49:44'),
(453, 139, 'sbdip1999', 'sbdip1999@gmail.com', '2021-12-09 06:51:01', '2021-12-09 06:51:01'),
(454, 139, 'sbdip1999', 'sbdip1999@gmail.com', '2021-12-09 06:51:16', '2021-12-09 06:51:16'),
(455, 140, 'mdullahdiu14', 'mdullahdiu14@gmail.com', '2021-12-09 06:52:25', '2021-12-09 06:52:25'),
(456, 140, 'mdullahdiu14', 'mdullahdiu14@gmail.com', '2021-12-09 06:52:47', '2021-12-09 06:52:47'),
(457, 140, 'mdullahdiu14', 'mdullahdiu14@gmail.com', '2021-12-09 06:53:03', '2021-12-09 06:53:03'),
(458, 141, 'abukalam4748', 'abukalam4748@gmail.com', '2021-12-09 06:55:52', '2021-12-09 06:55:52'),
(459, 141, 'abukalam4748', 'abukalam4748@gmail.com', '2021-12-09 06:56:18', '2021-12-09 06:56:18'),
(460, 141, 'abukalam4748', 'abukalam4748@gmail.com', '2021-12-09 06:56:34', '2021-12-09 06:56:34'),
(461, 142, 'mrmr5669', 'mrmr5669@gmail.com', '2021-12-09 06:57:52', '2021-12-09 06:57:52'),
(462, 142, 'mrmr5669', 'mrmr5669@gmail.com', '2021-12-09 06:58:13', '2021-12-09 06:58:13'),
(463, 142, 'mrmr5669', 'mrmr5669@gmail.com', '2021-12-09 06:58:35', '2021-12-09 06:58:35'),
(464, 142, 'mrmr5669', 'mrmr5669@gmail.com', '2021-12-09 06:58:51', '2021-12-09 06:58:51'),
(465, 143, 'almasud.online', 'almasud.online@gmail.com', '2021-12-09 07:00:30', '2021-12-09 07:00:30'),
(466, 143, 'almasud.online', 'almasud.online@gmail.com', '2021-12-09 07:00:52', '2021-12-09 07:00:52'),
(467, 143, 'almasud.online', 'almasud.online@gmail.com', '2021-12-09 07:01:12', '2021-12-09 07:01:12'),
(468, 143, 'almasud.online', 'almasud.online@gmail.com', '2021-12-09 07:01:32', '2021-12-09 07:01:32'),
(469, 144, 'mohaiminulislamnoqib', 'mohaiminulislamnoqib@gmail.com', '2021-12-09 07:03:00', '2021-12-09 07:03:00'),
(470, 145, 'sahadathossaien42', 'sahadathossaien42@gmail.com', '2021-12-09 07:04:48', '2021-12-09 07:04:48'),
(471, 145, 'sahadathossaien42', 'sahadathossaien42@gmail.com', '2021-12-09 07:05:11', '2021-12-09 07:05:11'),
(472, 145, 'sahadathossaien42', 'sahadathossaien42@gmail.com', '2021-12-09 07:05:41', '2021-12-09 07:05:41'),
(473, 145, 'sahadathossaien42', 'sahadathossaien42@gmail.com', '2021-12-09 07:06:01', '2021-12-09 07:06:01'),
(474, 146, 'ehsanulislam82', 'ehsanulislam82@gmail.com', '2021-12-09 07:13:26', '2021-12-09 07:13:26'),
(475, 146, 'ehsanulislam82', 'ehsanulislam82@gmail.com', '2021-12-09 07:13:57', '2021-12-09 07:13:57'),
(476, 146, 'ehsanulislam82', 'ehsanulislam82@gmail.com', '2021-12-09 07:14:22', '2021-12-09 07:14:22'),
(477, 146, 'ehsanulislam82', 'ehsanulislam82@gmail.com', '2021-12-09 07:14:45', '2021-12-09 07:14:45'),
(478, 146, 'ehsanulislam82', 'ehsanulislam82@gmail.com', '2021-12-09 07:15:06', '2021-12-09 07:15:06'),
(479, 146, 'ehsanulislam82', 'ehsanulislam82@gmail.com', '2021-12-09 07:15:24', '2021-12-09 07:15:24'),
(480, 147, 'ahsazzad11', 'ahsazzad11@gmail.com', '2021-12-09 07:17:55', '2021-12-09 07:17:55'),
(481, 148, 'ashrafmmm051', 'ashrafmmm051@gmail.com', '2021-12-09 07:22:16', '2021-12-09 07:22:16'),
(482, 148, 'ashrafmmm051', 'ashrafmmm051@gmail.com', '2021-12-09 07:22:45', '2021-12-09 07:22:45'),
(483, 148, 'ashrafmmm051', 'ashrafmmm051@gmail.com', '2021-12-09 07:23:04', '2021-12-09 07:23:04'),
(484, 148, 'ashrafmmm051', 'ashrafmmm051@gmail.com', '2021-12-09 07:23:23', '2021-12-09 07:23:23'),
(485, 149, 'faysalahmed2811', 'faysalahmed2811@gmail.com', '2021-12-09 07:26:52', '2021-12-09 07:26:52'),
(486, 150, 'hossainshakawat434', 'hossainshakawat434@gmail.com', '2021-12-09 07:29:45', '2021-12-09 07:29:45'),
(487, 150, 'hossainshakawat434', 'hossainshakawat434@gmail.com', '2021-12-09 07:30:07', '2021-12-09 07:30:07'),
(488, 151, 'sunnymajumder840', 'sunnymajumder840@gmail.com', '2021-12-09 07:31:20', '2021-12-09 07:31:20'),
(489, 151, 'sunnymajumder840', 'sunnymajumder840@gmail.com', '2021-12-09 07:31:41', '2021-12-09 07:31:41'),
(490, 151, 'sunnymajumder840', 'sunnymajumder840@gmail.com', '2021-12-09 07:31:58', '2021-12-09 07:31:58'),
(491, 152, 'hridoybanerjee4', 'hridoybanerjee4@gmail.com', '2021-12-09 07:33:02', '2021-12-09 07:33:02'),
(492, 152, 'hridoybanerjee4', 'hridoybanerjee4@gmail.com', '2021-12-09 07:33:21', '2021-12-09 07:33:21'),
(493, 152, 'hridoybanerjee4', 'hridoybanerjee4@gmail.com', '2021-12-09 07:33:41', '2021-12-09 07:33:41'),
(494, 153, 'jahangir245424', 'jahangir245424@gmail.com', '2021-12-09 07:35:11', '2021-12-09 07:35:11'),
(495, 153, 'jahangir245424', 'jahangir245424@gmail.com', '2021-12-09 07:35:51', '2021-12-09 07:35:51'),
(496, 154, 'hmmroni', 'hmmroni@gmail.com', '2021-12-09 07:38:02', '2021-12-09 07:38:02'),
(497, 154, 'hmmroni', 'hmmroni@gmail.com', '2021-12-09 07:38:27', '2021-12-09 07:38:27'),
(498, 154, 'hmmroni', 'hmmroni@gmail.com', '2021-12-09 07:38:53', '2021-12-09 07:38:53'),
(499, 155, 'imransaheb1994', 'imransaheb1994@gmail.com', '2021-12-09 07:40:44', '2021-12-09 07:40:44'),
(500, 155, 'imransaheb1994', 'imransaheb1994@gmail.com', '2021-12-09 07:41:27', '2021-12-09 07:41:27'),
(501, 156, 'Sakibridwan23', 'Sakibridwan23@gmail.com', '2021-12-09 07:42:45', '2021-12-09 07:42:45'),
(502, 156, 'Sakibridwan23', 'Sakibridwan23@gmail.com', '2021-12-09 07:43:07', '2021-12-09 07:43:07'),
(503, 156, 'Sakibridwan23', 'Sakibridwan23@gmail.com', '2021-12-09 07:43:35', '2021-12-09 07:43:35'),
(504, 156, 'Sakibridwan23', 'Sakibridwan23@gmail.com', '2021-12-09 07:43:52', '2021-12-09 07:43:52'),
(505, 157, 'bachankubi', 'bachankubi@gamil.com', '2021-12-09 09:01:49', '2021-12-09 09:01:49'),
(506, 157, 'bachankubi', 'bachankubi@gamil.com', '2021-12-09 09:02:11', '2021-12-09 09:02:11'),
(507, 157, 'bachankubi', 'bachankubi@gamil.com', '2021-12-09 09:02:40', '2021-12-09 09:02:40'),
(508, 157, 'bachankubi', 'bachankubi@gamil.com', '2021-12-09 09:03:00', '2021-12-09 09:03:00'),
(509, 157, 'bachankubi', 'bachankubi@gamil.com', '2021-12-09 09:03:19', '2021-12-09 09:03:19'),
(510, 158, 'rroy35006', 'rroy35006@gmail.com', '2021-12-09 09:46:53', '2021-12-09 09:46:53'),
(511, 159, 'shibenr0', 'shibenr0@gmail.com', '2021-12-09 09:48:02', '2021-12-09 09:48:02'),
(512, 159, 'shibenr0', 'shibenr0@gmail.com', '2021-12-09 09:48:22', '2021-12-09 09:48:22'),
(513, 159, 'shibenr0', 'shibenr0@gmail.com', '2021-12-09 09:48:42', '2021-12-09 09:48:42'),
(514, 160, 'abcuse88', 'abcuse88@gmail.com', '2021-12-09 09:51:07', '2021-12-09 09:51:07'),
(515, 161, 'roctim1991', 'roctim1991@gmail.com', '2021-12-09 09:52:14', '2021-12-09 09:52:14'),
(516, 161, 'roctim1991', 'roctim1991@gmail.com', '2021-12-09 09:52:33', '2021-12-09 09:52:33'),
(517, 161, 'roctim1991', 'roctim1991@gmail.com', '2021-12-09 09:52:58', '2021-12-09 09:52:58'),
(518, 161, 'roctim1991', 'roctim1991@gmail.com', '2021-12-09 09:53:13', '2021-12-09 09:53:13'),
(519, 162, 'writetosaleh', 'writetosaleh@gmail.com', '2021-12-09 09:54:23', '2021-12-09 09:54:23'),
(520, 162, 'writetosaleh', 'writetosaleh@gmail.com', '2021-12-09 09:54:37', '2021-12-09 09:54:37'),
(521, 162, 'writetosaleh', 'writetosaleh@gmail.com', '2021-12-09 09:54:52', '2021-12-09 09:54:52'),
(522, 162, 'writetosaleh', 'writetosaleh@gmail.com', '2021-12-09 09:55:09', '2021-12-09 09:55:09'),
(523, 163, 'asad', '01913404212.asad@gmail.com', '2021-12-09 09:56:17', '2021-12-09 09:56:17'),
(524, 163, 'asad', '01913404212.asad@gmail.com', '2021-12-09 09:56:46', '2021-12-09 09:56:46'),
(525, 163, 'asad', '01913404212.asad@gmail.com', '2021-12-09 09:57:06', '2021-12-09 09:57:06'),
(526, 163, 'asad', '01913404212.asad@gmail.com', '2021-12-09 09:57:24', '2021-12-09 09:57:24'),
(527, 163, 'asad', '01913404212.asad@gmail.com', '2021-12-09 09:57:40', '2021-12-09 09:57:40'),
(528, 163, 'asad', '01913404212.asad@gmail.com', '2021-12-09 09:57:55', '2021-12-09 09:57:55'),
(529, 164, 'ruhizannat', 'ruhizannat71@gmail.com', '2021-12-09 09:59:09', '2021-12-09 09:59:09'),
(530, 164, 'ruhizannat', 'ruhizannat71@gmail.com', '2021-12-09 09:59:36', '2021-12-09 09:59:36'),
(531, 165, 'rezwanul2001', 'rezwanul2001@gmail.com', '2021-12-09 10:01:01', '2021-12-09 10:01:01'),
(532, 165, 'rezwanul2001', 'rezwanul2001@gmail.com', '2021-12-09 10:01:25', '2021-12-09 10:01:25'),
(533, 165, 'rezwanul2001', 'rezwanul2001@gmail.com', '2021-12-09 10:01:57', '2021-12-09 10:01:57'),
(534, 165, 'rezwanul2001', 'rezwanul2001@gmail.com', '2021-12-09 10:02:15', '2021-12-09 10:02:15'),
(535, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-09 10:49:17', '2021-12-09 10:49:17');
INSERT INTO `checkouts` (`id`, `user_id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(536, 47, 'mdshariar', 'mdshariar00@gmail.com', '2021-12-09 11:18:27', '2021-12-09 11:18:27'),
(537, 104, 'mdtarekrahman', 'mdtarekrahman209@gmail.com', '2021-12-09 11:20:44', '2021-12-09 11:20:44'),
(538, 167, 'imrancinra', 'imrancinra3446@gmail.com', '2021-12-09 13:08:30', '2021-12-09 13:08:30'),
(539, 167, 'imrancinra', 'imrancinra3446@gmail.com', '2021-12-09 13:09:07', '2021-12-09 13:09:07'),
(540, 169, 'saimun', 'saimun273@gmail.com', '2021-12-09 17:47:27', '2021-12-09 17:47:27'),
(541, 169, 'saimun', 'saimun273@gmail.com', '2021-12-09 17:48:15', '2021-12-09 17:48:15'),
(542, 169, 'saimun', 'saimun273@gmail.com', '2021-12-09 17:50:08', '2021-12-09 17:50:08'),
(543, 169, 'saimun', 'saimun273@gmail.com', '2021-12-09 17:50:36', '2021-12-09 17:50:36'),
(544, 170, 'ashrafm', 'ashrafmmm051@gmail.com', '2021-12-09 17:54:58', '2021-12-09 17:54:58'),
(545, 170, 'ashrafm', 'ashrafmmm051@gmail.com', '2021-12-09 17:55:28', '2021-12-09 17:55:28'),
(546, 170, 'ashrafm', 'ashrafmmm051@gmail.com', '2021-12-09 17:55:50', '2021-12-09 17:55:50'),
(547, 170, 'ashrafm', 'ashrafmmm051@gmail.com', '2021-12-09 17:56:23', '2021-12-09 17:56:23'),
(548, 144, 'mohaiminulislamnoqib', 'mohaiminulislamnoqib@gmail.com', '2021-12-10 07:24:12', '2021-12-10 07:24:12'),
(549, 171, 'shamim', 'shamim701.sa@gmail.com', '2021-12-10 09:32:54', '2021-12-10 09:32:54'),
(550, 171, 'shamim', 'shamim701.sa@gmail.com', '2021-12-10 09:33:14', '2021-12-10 09:33:14'),
(551, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-10 12:37:51', '2021-12-10 12:37:51'),
(552, 172, 'Pervez  Hossain', 'pervez.hossain.3032@gmail.com', '2021-12-10 14:42:58', '2021-12-10 14:42:58'),
(553, 172, 'Pervez  Hossain', 'pervez.hossain.3032@gmail.com', '2021-12-10 14:43:17', '2021-12-10 14:43:17'),
(554, 172, 'Pervez  Hossain', 'pervez.hossain.3032@gmail.com', '2021-12-10 14:43:50', '2021-12-10 14:43:50'),
(555, 172, 'Pervez  Hossain', 'pervez.hossain.3032@gmail.com', '2021-12-10 14:44:10', '2021-12-10 14:44:10'),
(556, 173, 'Shafiq Ahamed', 'sahamedctgdfl@gmail.com', '2021-12-10 14:46:37', '2021-12-10 14:46:37'),
(557, 173, 'Shafiq Ahamed', 'sahamedctgdfl@gmail.com', '2021-12-10 14:46:57', '2021-12-10 14:46:57'),
(558, 173, 'Shafiq Ahamed', 'sahamedctgdfl@gmail.com', '2021-12-10 14:47:21', '2021-12-10 14:47:21'),
(559, 173, 'Shafiq Ahamed', 'sahamedctgdfl@gmail.com', '2021-12-10 14:47:39', '2021-12-10 14:47:39'),
(560, 175, 'amit.barua', 'amit.barua86@gmail.com', '2021-12-11 07:24:12', '2021-12-11 07:24:12'),
(561, 175, 'amit.barua', 'amit.barua86@gmail.com', '2021-12-11 07:24:33', '2021-12-11 07:24:33'),
(562, 175, 'amit.barua', 'amit.barua86@gmail.com', '2021-12-11 07:24:53', '2021-12-11 07:24:53'),
(563, 175, 'amit.barua', 'amit.barua86@gmail.com', '2021-12-11 07:25:10', '2021-12-11 07:25:10'),
(564, 175, 'amit.barua', 'amit.barua86@gmail.com', '2021-12-11 07:25:28', '2021-12-11 07:25:28'),
(565, 175, 'amit.barua', 'amit.barua86@gmail.com', '2021-12-11 07:25:44', '2021-12-11 07:25:44'),
(566, 176, 'prodip.tukhor', 'prodip.tukhor@gmail.com', '2021-12-11 09:00:06', '2021-12-11 09:00:06'),
(567, 176, 'prodip.tukhor', 'prodip.tukhor@gmail.com', '2021-12-11 09:00:29', '2021-12-11 09:00:29'),
(568, 177, 'fairuzaman40', 'fairuzaman40@gmail.com', '2021-12-11 09:02:45', '2021-12-11 09:02:45'),
(569, 177, 'fairuzaman40', 'fairuzaman40@gmail.com', '2021-12-11 09:03:15', '2021-12-11 09:03:15'),
(570, 177, 'fairuzaman40', 'fairuzaman40@gmail.com', '2021-12-11 09:03:49', '2021-12-11 09:03:49'),
(571, 177, 'fairuzaman40', 'fairuzaman40@gmail.com', '2021-12-11 09:04:07', '2021-12-11 09:04:07'),
(572, 178, 'Shumanhasangbd', 'Shumanhasangbd@gmail.com', '2021-12-11 09:06:26', '2021-12-11 09:06:26'),
(573, 178, 'Shumanhasangbd', 'Shumanhasangbd@gmail.com', '2021-12-11 09:06:45', '2021-12-11 09:06:45'),
(574, 178, 'Shumanhasangbd', 'Shumanhasangbd@gmail.com', '2021-12-11 09:07:02', '2021-12-11 09:07:02'),
(575, 178, 'Shumanhasangbd', 'Shumanhasangbd@gmail.com', '2021-12-11 09:07:22', '2021-12-11 09:07:22'),
(576, 179, 'ridwanzohir8', 'ridwanzohir8@gmail.com', '2021-12-11 09:09:58', '2021-12-11 09:09:58'),
(577, 179, 'ridwanzohir8', 'ridwanzohir8@gmail.com', '2021-12-11 09:10:17', '2021-12-11 09:10:17'),
(578, 179, 'ridwanzohir8', 'ridwanzohir8@gmail.com', '2021-12-11 09:10:40', '2021-12-11 09:10:40'),
(579, 179, 'ridwanzohir8', 'ridwanzohir8@gmail.com', '2021-12-11 09:10:57', '2021-12-11 09:10:57'),
(580, 180, 'omarfurkan92', 'omarfurkan92@gmail.com', '2021-12-11 09:12:54', '2021-12-11 09:12:54'),
(581, 180, 'omarfurkan92', 'omarfurkan92@gmail.com', '2021-12-11 09:13:24', '2021-12-11 09:13:24'),
(582, 180, 'omarfurkan92', 'omarfurkan92@gmail.com', '2021-12-11 09:13:48', '2021-12-11 09:13:48'),
(583, 180, 'omarfurkan92', 'omarfurkan92@gmail.com', '2021-12-11 09:14:03', '2021-12-11 09:14:03'),
(584, 181, 'nahidhtamim', 'nahidhtamim@gmail.com', '2021-12-11 09:15:37', '2021-12-11 09:15:37'),
(585, 181, 'nahidhtamim', 'nahidhtamim@gmail.com', '2021-12-11 09:16:01', '2021-12-11 09:16:01'),
(586, 181, 'nahidhtamim', 'nahidhtamim@gmail.com', '2021-12-11 09:16:29', '2021-12-11 09:16:29'),
(587, 181, 'nahidhtamim', 'nahidhtamim@gmail.com', '2021-12-11 09:16:44', '2021-12-11 09:16:44'),
(588, 182, 'abdulhannan.lp', 'abdulhannan.lp@gmail.com', '2021-12-11 09:18:19', '2021-12-11 09:18:19'),
(589, 182, 'abdulhannan.lp', 'abdulhannan.lp@gmail.com', '2021-12-11 09:18:45', '2021-12-11 09:18:45'),
(590, 182, 'abdulhannan.lp', 'abdulhannan.lp@gmail.com', '2021-12-11 09:19:04', '2021-12-11 09:19:04'),
(591, 182, 'abdulhannan.lp', 'abdulhannan.lp@gmail.com', '2021-12-11 09:19:21', '2021-12-11 09:19:21'),
(592, 183, 'ariful.islam0173', 'ariful.islam0173@gmail.com', '2021-12-11 09:21:38', '2021-12-11 09:21:38'),
(593, 183, 'ariful.islam0173', 'ariful.islam0173@gmail.com', '2021-12-11 09:21:52', '2021-12-11 09:21:52'),
(594, 183, 'ariful.islam0173', 'ariful.islam0173@gmail.com', '2021-12-11 09:22:17', '2021-12-11 09:22:17'),
(595, 183, 'ariful.islam0173', 'ariful.islam0173@gmail.com', '2021-12-11 09:22:37', '2021-12-11 09:22:37'),
(596, 184, 'mrid6797', 'mrid6797@gmail.com', '2021-12-11 09:24:28', '2021-12-11 09:24:28'),
(597, 184, 'mrid6797', 'mrid6797@gmail.com', '2021-12-11 09:24:46', '2021-12-11 09:24:46'),
(598, 185, 'druntopothik', 'druntopothik@gmail.com', '2021-12-11 09:26:29', '2021-12-11 09:26:29'),
(599, 185, 'druntopothik', 'druntopothik@gmail.com', '2021-12-11 09:26:55', '2021-12-11 09:26:55'),
(600, 185, 'druntopothik', 'druntopothik@gmail.com', '2021-12-11 09:27:14', '2021-12-11 09:27:14'),
(601, 185, 'druntopothik', 'druntopothik@gmail.com', '2021-12-11 09:27:36', '2021-12-11 09:27:36'),
(602, 186, 'atifislamriyad176', 'atifislamriyad176@gmail.com', '2021-12-11 09:28:54', '2021-12-11 09:28:54'),
(603, 186, 'atifislamriyad176', 'atifislamriyad176@gmail.com', '2021-12-11 09:29:11', '2021-12-11 09:29:11'),
(604, 187, 'imran.h.ovi.95', 'imran.h.ovi.95@gmail.com', '2021-12-11 12:44:35', '2021-12-11 12:44:35'),
(605, 19, 'Moinuddin', 'moinuddincr77@gmail.com', '2021-12-11 13:56:05', '2021-12-11 13:56:05'),
(606, 19, 'Moinuddin', 'moinuddincr77@gmail.com', '2021-12-11 13:56:23', '2021-12-11 13:56:23'),
(607, 19, 'Moinuddin', 'moinuddincr77@gmail.com', '2021-12-11 13:56:46', '2021-12-11 13:56:46'),
(608, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-12 05:06:31', '2021-12-12 05:06:31'),
(609, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-12 05:07:11', '2021-12-12 05:07:11'),
(610, 190, 'siammahamud1932', 'siammahamud1932@gmail.com', '2021-12-12 07:15:13', '2021-12-12 07:15:13'),
(611, 191, 'info.ashikprofile', 'info.ashikprofile@gmail.com', '2021-12-12 07:16:39', '2021-12-12 07:16:39'),
(612, 191, 'info.ashikprofile', 'info.ashikprofile@gmail.com', '2021-12-12 07:16:42', '2021-12-12 07:16:42'),
(613, 191, 'info.ashikprofile', 'info.ashikprofile@gmail.com', '2021-12-12 07:17:03', '2021-12-12 07:17:03'),
(614, 191, 'info.ashikprofile', 'info.ashikprofile@gmail.com', '2021-12-12 07:17:24', '2021-12-12 07:17:24'),
(615, 191, 'info.ashikprofile', 'info.ashikprofile@gmail.com', '2021-12-12 07:17:42', '2021-12-12 07:17:42'),
(616, 191, 'info.ashikprofile', 'info.ashikprofile@gmail.com', '2021-12-12 07:17:43', '2021-12-12 07:17:43'),
(617, 192, 'mdsayedur44', 'mdsayedur44@gmail.com', '2021-12-12 07:19:35', '2021-12-12 07:19:35'),
(618, 193, 'mdparvejahmed966', 'mdparvejahmed966@gmail.com', '2021-12-12 07:25:19', '2021-12-12 07:25:19'),
(619, 193, 'mdparvejahmed966', 'mdparvejahmed966@gmail.com', '2021-12-12 07:25:38', '2021-12-12 07:25:38'),
(620, 193, 'mdparvejahmed966', 'mdparvejahmed966@gmail.com', '2021-12-12 07:25:39', '2021-12-12 07:25:39'),
(621, 166, 'Imran Hossain', 'imranmihnhossain@gmail.com', '2021-12-12 07:42:21', '2021-12-12 07:42:21'),
(622, 166, 'Imran Hossain', 'imranmihnhossain@gmail.com', '2021-12-12 07:42:43', '2021-12-12 07:42:43'),
(623, 125, 'hafizuddinud', 'hafizuddinud531@gmail.com', '2021-12-14 14:07:39', '2021-12-14 14:07:39'),
(624, 33, 'dipon898', 'dipon898@gmail.com', '2021-12-14 14:11:07', '2021-12-14 14:11:07'),
(625, 196, 'zannat nayeem', 'zannatul.nayeem1000@gmail.com', '2021-12-14 15:49:14', '2021-12-14 15:49:14'),
(626, 196, 'zannat nayeem', 'zannatul.nayeem1000@gmail.com', '2021-12-14 15:49:42', '2021-12-14 15:49:42'),
(627, 196, 'zannat nayeem', 'zannatul.nayeem1000@gmail.com', '2021-12-14 15:50:09', '2021-12-14 15:50:09'),
(628, 196, 'zannat nayeem', 'zannatul.nayeem1000@gmail.com', '2021-12-14 15:50:29', '2021-12-14 15:50:29'),
(629, 176, 'prodip.tukhor', 'prodip.tukhor@gmail.com', '2021-12-15 12:31:14', '2021-12-15 12:31:14'),
(630, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 04:19:05', '2021-12-20 04:19:05'),
(631, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:11:14', '2021-12-20 05:11:14'),
(632, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:11:40', '2021-12-20 05:11:40'),
(633, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:11:54', '2021-12-20 05:11:54'),
(634, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:15:12', '2021-12-20 05:15:12'),
(635, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:15:22', '2021-12-20 05:15:22'),
(636, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:15:31', '2021-12-20 05:15:31'),
(637, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:16:29', '2021-12-20 05:16:29'),
(638, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:16:32', '2021-12-20 05:16:32'),
(639, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:16:53', '2021-12-20 05:16:53'),
(640, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:17:54', '2021-12-20 05:17:54'),
(641, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:19:31', '2021-12-20 05:19:31'),
(642, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:19:41', '2021-12-20 05:19:41'),
(643, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:20:34', '2021-12-20 05:20:34'),
(644, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:29:01', '2021-12-20 05:29:01'),
(645, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:31:25', '2021-12-20 05:31:25'),
(646, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:32:26', '2021-12-20 05:32:26'),
(647, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:32:33', '2021-12-20 05:32:33'),
(648, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:35:45', '2021-12-20 05:35:45'),
(649, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:36:14', '2021-12-20 05:36:14'),
(650, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:36:30', '2021-12-20 05:36:30'),
(651, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:36:39', '2021-12-20 05:36:39'),
(652, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:36:52', '2021-12-20 05:36:52'),
(653, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:37:16', '2021-12-20 05:37:16'),
(654, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 05:37:59', '2021-12-20 05:37:59'),
(655, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 22:41:22', '2021-12-20 22:41:22'),
(656, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 22:41:40', '2021-12-20 22:41:40'),
(657, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 22:41:55', '2021-12-20 22:41:55'),
(658, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 22:42:44', '2021-12-20 22:42:44'),
(659, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 22:43:25', '2021-12-20 22:43:25'),
(660, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 22:44:23', '2021-12-20 22:44:23'),
(661, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 23:03:54', '2021-12-20 23:03:54'),
(662, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 23:04:44', '2021-12-20 23:04:44'),
(663, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 23:06:10', '2021-12-20 23:06:10'),
(664, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 23:08:31', '2021-12-20 23:08:31'),
(665, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 23:09:18', '2021-12-20 23:09:18'),
(666, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 23:17:48', '2021-12-20 23:17:48'),
(667, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 23:22:23', '2021-12-20 23:22:23'),
(668, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 23:25:16', '2021-12-20 23:25:16'),
(669, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-20 23:42:58', '2021-12-20 23:42:58'),
(670, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-21 00:15:20', '2021-12-21 00:15:20'),
(671, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-21 00:32:11', '2021-12-21 00:32:11'),
(672, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-21 00:34:46', '2021-12-21 00:34:46'),
(673, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-21 00:36:26', '2021-12-21 00:36:26'),
(674, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-21 00:37:34', '2021-12-21 00:37:34'),
(675, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-21 00:51:19', '2021-12-21 00:51:19'),
(676, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-21 00:51:54', '2021-12-21 00:51:54'),
(677, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-21 00:52:19', '2021-12-21 00:52:19'),
(678, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-21 00:55:14', '2021-12-21 00:55:14'),
(679, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-21 05:25:54', '2021-12-21 05:25:54'),
(680, 3, 'Maruf Hossain', 'admin@gmail.com', '2021-12-26 22:06:17', '2021-12-26 22:06:17'),
(681, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 22:07:08', '2021-12-26 22:07:08'),
(682, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 22:24:00', '2021-12-26 22:24:00'),
(683, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 22:24:23', '2021-12-26 22:24:23'),
(684, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 22:26:27', '2021-12-26 22:26:27'),
(685, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 22:26:49', '2021-12-26 22:26:49'),
(686, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 22:27:00', '2021-12-26 22:27:00'),
(687, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 22:27:08', '2021-12-26 22:27:08'),
(688, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 22:40:06', '2021-12-26 22:40:06'),
(689, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 22:40:18', '2021-12-26 22:40:18'),
(690, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 22:40:47', '2021-12-26 22:40:47'),
(691, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 23:02:00', '2021-12-26 23:02:00'),
(692, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-26 23:02:44', '2021-12-26 23:02:44'),
(693, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 05:54:21', '2021-12-27 05:54:21'),
(694, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 05:54:36', '2021-12-27 05:54:36'),
(695, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 05:56:36', '2021-12-27 05:56:36'),
(696, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 06:48:56', '2021-12-27 06:48:56'),
(697, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 06:50:15', '2021-12-27 06:50:15'),
(698, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 06:52:57', '2021-12-27 06:52:57'),
(699, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 06:53:23', '2021-12-27 06:53:23'),
(700, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:06:21', '2021-12-27 07:06:21'),
(701, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:07:49', '2021-12-27 07:07:49'),
(702, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:09:13', '2021-12-27 07:09:13'),
(703, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:09:57', '2021-12-27 07:09:57'),
(704, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:10:15', '2021-12-27 07:10:15'),
(705, 14, 'Shahadat Hussain Shahed', 'shahedshahadat0123@gmail.com', '2021-12-27 07:11:07', '2021-12-27 07:11:07'),
(706, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:12:27', '2021-12-27 07:12:27'),
(707, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:13:43', '2021-12-27 07:13:43'),
(708, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:15:56', '2021-12-27 07:15:56'),
(709, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:24:48', '2021-12-27 07:24:48'),
(710, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:25:13', '2021-12-27 07:25:13'),
(711, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:25:42', '2021-12-27 07:25:42'),
(712, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:26:19', '2021-12-27 07:26:19'),
(713, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:26:52', '2021-12-27 07:26:52'),
(714, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:28:07', '2021-12-27 07:28:07'),
(715, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:29:16', '2021-12-27 07:29:16'),
(716, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:29:29', '2021-12-27 07:29:29'),
(717, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:29:51', '2021-12-27 07:29:51'),
(718, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:37:19', '2021-12-27 07:37:19'),
(719, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:45:52', '2021-12-27 07:45:52'),
(720, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:46:08', '2021-12-27 07:46:08'),
(721, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:47:24', '2021-12-27 07:47:24'),
(722, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:48:21', '2021-12-27 07:48:21'),
(723, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:48:57', '2021-12-27 07:48:57'),
(724, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:51:49', '2021-12-27 07:51:49'),
(725, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:52:24', '2021-12-27 07:52:24'),
(726, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:56:50', '2021-12-27 07:56:50'),
(727, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 07:58:13', '2021-12-27 07:58:13'),
(728, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 08:06:20', '2021-12-27 08:06:20'),
(729, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 08:07:39', '2021-12-27 08:07:39'),
(730, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 08:31:46', '2021-12-27 08:31:46'),
(731, 190, 'siammahamud1932', 'siammahamud1932@gmail.com', '2021-12-27 08:37:39', '2021-12-27 08:37:39'),
(732, 190, 'siammahamud1932', 'siammahamud1932@gmail.com', '2021-12-27 08:38:00', '2021-12-27 08:38:00'),
(733, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 08:38:23', '2021-12-27 08:38:23'),
(734, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 08:38:52', '2021-12-27 08:38:52'),
(735, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 10:48:45', '2021-12-27 10:48:45'),
(736, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 10:59:02', '2021-12-27 10:59:02'),
(737, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 10:59:37', '2021-12-27 10:59:37'),
(738, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 10:59:54', '2021-12-27 10:59:54'),
(739, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 12:51:45', '2021-12-27 12:51:45'),
(740, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 12:54:30', '2021-12-27 12:54:30'),
(741, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 12:55:05', '2021-12-27 12:55:05'),
(742, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 12:55:25', '2021-12-27 12:55:25'),
(743, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 12:55:55', '2021-12-27 12:55:55'),
(744, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 12:56:21', '2021-12-27 12:56:21'),
(745, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-27 12:57:03', '2021-12-27 12:57:03'),
(746, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-27 12:57:27', '2021-12-27 12:57:27'),
(747, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-27 12:57:56', '2021-12-27 12:57:56'),
(748, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 13:06:09', '2021-12-27 13:06:09'),
(749, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-27 13:09:49', '2021-12-27 13:09:49'),
(750, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 13:14:59', '2021-12-27 13:14:59'),
(751, 190, 'siammahamud1932', 'siammahamud1932@gmail.com', '2021-12-27 13:18:56', '2021-12-27 13:18:56'),
(752, 190, 'siammahamud1932', 'siammahamud1932@gmail.com', '2021-12-27 13:18:56', '2021-12-27 13:18:56'),
(753, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 13:23:07', '2021-12-27 13:23:07'),
(754, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 13:23:49', '2021-12-27 13:23:49'),
(755, 190, 'siammahamud1932', 'siammahamud1932@gmail.com', '2021-12-27 13:26:48', '2021-12-27 13:26:48'),
(756, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 14:30:45', '2021-12-27 14:30:45'),
(757, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 14:42:56', '2021-12-27 14:42:56'),
(758, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-27 14:44:56', '2021-12-27 14:44:56'),
(759, 175, 'amit.barua', 'amit.barua86@gmail.com', '2021-12-27 16:07:17', '2021-12-27 16:07:17'),
(760, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-28 04:27:09', '2021-12-28 04:27:09'),
(761, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-28 06:14:08', '2021-12-28 06:14:08'),
(762, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-28 06:14:53', '2021-12-28 06:14:53'),
(763, 20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '2021-12-28 06:21:11', '2021-12-28 06:21:11'),
(764, 1, 'Dalim Chwdhuriy', 'student@gmail.com', '2021-12-28 06:36:41', '2021-12-28 06:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `contactforms`
--

CREATE TABLE `contactforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactforms`
--

INSERT INTO `contactforms` (`id`, `name`, `phone`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Jasper Pierce', '+1 (656) 609-4577', 'xynyvekofo@mailinator.com', 'Ea adipisicing corru', 'Illo quaerat omnis e', '2021-12-14 04:50:24', '2021-12-14 04:50:24'),
(2, 'Cade Bonner', '+1 (782) 957-6348', 'riwoz@mailinator.com', 'Maiores labore incid', 'Voluptate dolor unde', '2021-12-14 04:51:00', '2021-12-14 04:51:00'),
(3, 'Clio Gilbert', '+1 (448) 854-1958', 'moxy@mailinator.com', 'Quo voluptatum numqu', 'Tempor exercitatione', '2021-12-14 04:51:15', '2021-12-14 04:51:15'),
(4, 'Kadeem Wheeler', '+1 (992) 527-8748', 'kyhulu@mailinator.com', 'Fugiat qui sed tenet', 'Quidem omnis at volu', '2021-12-14 04:52:17', '2021-12-14 04:52:17'),
(5, 'Giacomo Albert', '+1 (756) 542-7569', 'fudajuboqi@mailinator.com', 'Lorem cillum quia la', 'Laboris aut pariatur', '2021-12-14 04:52:36', '2021-12-14 04:52:36'),
(6, 'Quinn Elliott', '+1 (985) 533-8773', 'celoquwo@mailinator.com', 'Dolore ab dolor solu', 'Rerum veniam amet', '2021-12-14 04:52:48', '2021-12-14 04:52:48'),
(7, 'Erich Bowers', '+1 (995) 701-6997', 'quro@mailinator.com', 'Mollitia ut fugit a', 'Blanditiis culpa nu', '2021-12-14 04:53:08', '2021-12-14 04:53:08'),
(8, 'Julie Woods', '+1 (178) 954-1107', 'ximitu@mailinator.com', 'Doloremque nulla vol', 'Voluptas dolor eum e', '2021-12-14 04:54:13', '2021-12-14 04:54:13'),
(9, 'Derek Knight', '+1 (161) 905-3098', 'tyzasicige@mailinator.com', 'Dolor in iure ut ame', 'In sed earum veritat', '2021-12-14 04:54:28', '2021-12-14 04:54:28'),
(10, 'Cairo Bright', '+1 (394) 823-4754', 'nabyfebaky@mailinator.com', 'Ut exercitation recu', 'Sit animi et aliqui', '2021-12-14 04:54:44', '2021-12-14 04:54:44'),
(11, 'Leilani Ortiz', '+1 (872) 562-7397', 'fyfum@mailinator.com', 'Velit qui dignissimo', 'In quo cillum quo do', '2021-12-14 05:28:11', '2021-12-14 05:28:11'),
(12, 'Lenore Mercado', '+1 (289) 487-2122', 'mixo@mailinator.com', 'Laborum fuga Volupt', 'Doloribus voluptas r', '2021-12-14 12:48:46', '2021-12-14 12:48:46'),
(13, 'Knox Sexton', '+1 (885) 318-4511', 'fibydut@mailinator.com', 'Excepturi quia esse', 'Dolores occaecat nec', '2021-12-19 00:18:03', '2021-12-19 00:18:03'),
(14, 'al Mamun', '01955555555', 'almamun.themeshaper@gmail.com', 'Know', 'Final testing from support developer', '2021-12-29 05:09:18', '2021-12-29 05:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `phone`, `email`, `location`, `facebook_link`, `twitter_link`, `linkedin_link`, `youtube_link`, `instagram_link`, `banner`, `created_at`, `updated_at`) VALUES
(2, '+880 1569999*******', 'info@amarskill.net', 'House no. #07, Kobi Faruk Sarani, Dhaka 1229', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://www.youtube.com/', 'https://www.instagram.com/', NULL, '2021-12-14 00:06:32', '2021-12-14 01:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `courseassignments`
--

CREATE TABLE `courseassignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `courselession_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courseassignments`
--

INSERT INTO `courseassignments` (`id`, `title`, `user_id`, `user_ip`, `course_id`, `courselession_id`, `file`, `created_at`, `updated_at`) VALUES
(19, 'রিসোর্স ফাইল টি ডাউনলোড করে নিন। এটি পরের ক্লাসে লাগবে', 8, '103.137.74.197', 11, 134, '134-61a737d5eab11.pdf', '2021-12-01 08:52:37', '2021-12-01 08:52:37'),
(20, 'নিচের লিংক থেকে রিসোর্স ফাইলটা ডাউনলোড করে নিন। এটা পরের যে কোন একটা ক্লাসে লাগবে।  https://drive.google.com/drive/folders/1E4p0MVXF4nhkazhQy_CYRQgkUPdoc7Ts?usp=sharing', 8, '103.137.74.197', 11, 155, '155-61a742e4d9207.pdf', '2021-12-01 09:39:48', '2021-12-01 09:39:48'),
(21, 'Resource File - please download it', 8, '103.137.74.199', 11, 176, '176-61a77b3448cc3.pdf', '2021-12-01 13:40:04', '2021-12-01 13:40:04'),
(22, 'Resource File - please download it', 8, '103.137.74.197', 11, 179, '179-61a77dfcf17ce.pdf', '2021-12-01 13:51:56', '2021-12-01 13:51:56'),
(23, 'Resource File', 8, '103.137.74.197', 11, 187, '187-61a78d372ea04.pdf', '2021-12-01 14:56:55', '2021-12-01 14:56:55'),
(24, 'যদি তোমার কোন প্রয়োজন হয় তাহলে নিচের লিংক থেকে এই কমপ্লিট প্রযেক্ট এর সোর্স ফাইলটি ডাউনলোড করে দেখতে পারব।  https://drive.google.com/file/d/17AtKo8XgIcGDCv0KVJwhbrsEcXsYeQKu/view?usp=sharing', 8, '103.137.74.194', 11, 192, '192-61a791e574c8f.pdf', '2021-12-01 15:16:53', '2021-12-01 15:16:53'),
(25, 'Resource File - please download it --- https://drive.google.com/drive/folders/12csJCFPPaDIkq7JGLvh1SuUGjnKMGDWo?usp=sharing', 8, '103.137.74.197', 11, 196, '196-61a795c979f92.pdf', '2021-12-01 15:33:29', '2021-12-01 15:33:29'),
(26, 'Resource File - please download it- https://drive.google.com/file/d/10nJ6T5RxaJ7TRomE0MNpCnSmyIrr-rrT/view?usp=sharing', 8, '103.137.74.197', 11, 218, '218-61a7a59457857.pdf', '2021-12-01 16:40:52', '2021-12-01 16:40:52'),
(27, 'Resource File -  Please Download it', 8, '103.137.74.192', 14, 309, '309-61a8ef6311e93.pdf', '2021-12-02 16:08:03', '2021-12-02 16:08:03'),
(28, 'Resource File, https://drive.google.com/drive/folders/1NCiwjkLM51fl3vGVsnzqaJNOqykxX1kz?usp=sharing', 8, '103.137.74.198', 15, 389, '389-61aa046e1fc9c.pdf', '2021-12-03 11:50:06', '2021-12-03 11:50:06'),
(29, 'Final Task', 14, '103.137.74.197', 17, 496, '496-61aa31ed3d96f.pdf', '2021-12-03 15:04:13', '2021-12-03 15:04:13'),
(30, 'এই কোর্সের সাথে ব্যবহৃত সকল প্রকার সোর্স ফাইল নিচের লিংক থেকে ডাউলোড করে নিন।  https://drive.google.com/drive/folders/1PB_KcsMjaiYXvt7iOYudVIg_dOaVcGq9?usp=sharing', 14, '103.137.74.197', 18, 503, '503-61ac811cc107e.pdf', '2021-12-05 09:06:36', '2021-12-05 09:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `coursecategories`
--

CREATE TABLE `coursecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `shortorder` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursecategories`
--

INSERT INTO `coursecategories` (`id`, `user_id`, `image`, `name`, `slug`, `description`, `status`, `shortorder`, `created_at`, `updated_at`) VALUES
(2, 3, 'laravel-course-61925771b52bb.jpg', 'Laravel Course', 'laravel-course', 'Laravel Course Description', 1, 0, '2021-11-15 06:49:53', '2021-11-15 06:49:53'),
(3, 3, '61c44fc3468a9.png', 'JavaScript Course', 'javascript-course', 'JavaScript Course Description', 1, 0, '2021-11-15 06:50:11', '2021-12-23 04:30:27'),
(4, 3, '61c45006d178c.jpeg', 'Web Development', 'web-development', 'dd', 1, 0, '2021-11-29 05:01:50', '2021-12-23 04:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `coursefaqs`
--

CREATE TABLE `coursefaqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `short_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursefaqs`
--

INSERT INTO `coursefaqs` (`id`, `user_id`, `course_id`, `title`, `description`, `status`, `short_order`, `created_at`, `updated_at`) VALUES
(5, 8, 11, 'Aut sit ipsa vel al', 'Non id ut cillum iru', 1, 52, '2021-12-04 06:30:27', '2021-12-04 06:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `courselessions`
--

CREATE TABLE `courselessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `lession_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lock` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `coursesection_id` int(11) NOT NULL,
  `video_type` int(11) NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderby` int(11) DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courselessions`
--

INSERT INTO `courselessions` (`id`, `image`, `user_id`, `lession_name`, `slug`, `lock`, `course_id`, `coursesection_id`, `video_type`, `video_url`, `video_duration`, `orderby`, `summary`, `details`, `status`, `created_at`, `updated_at`) VALUES
(105, NULL, 8, 'রিএক্ট এর হাতেখড়ি !', 'রিএক্ট-এর-হাতেখড়ি-!-61a70a75dc469', 1, 11, 32, 1, 'https://www.youtube.com/embed/MppcBSqVW70', '00:00:00', 1, 'test', 'test detels', 0, '2021-12-01 05:39:01', '2021-12-02 12:35:53'),
(106, NULL, 8, 'একটু স্মার্ট ভাবে ! রিয়াক্ট ইনস্টল করা !', 'একটু-স্মার্ট-ভাবে-!-রিয়াক্ট-ইনস্টল-করা-!-61a70ae3a7324', NULL, 11, 33, 1, 'https://www.youtube.com/embed/pchxaLwC1qE', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 05:40:51', '2021-12-01 05:40:51'),
(107, NULL, 8, 'রিয়াক্ট প্রযেক্ট ফোল্ডার স্ট্রাকচার ! প্রথম পার্ট', 'রিয়াক্ট-প্রযেক্ট-ফোল্ডার-স্ট্রাকচার-!-প্রথম-পার্ট-61a70b08262be', NULL, 11, 33, 1, 'https://www.youtube.com/embed/CDR5hUL4_co', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 05:41:28', '2021-12-01 05:41:28'),
(108, NULL, 8, 'প্রযেক্ট ফোল্ডার এর ধারনা ! ২য় পার্ট', 'প্রযেক্ট-ফোল্ডার-এর-ধারনা-!-২য়-পার্ট-61a70b236d6f7', NULL, 11, 33, 1, 'https://www.youtube.com/embed/Fd7nYBMeB94', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 05:41:55', '2021-12-01 05:41:55'),
(109, NULL, 8, 'কম্পোনেন্ট এর বেসিক ধারনা।', 'কম্পোনেন্ট-এর-বেসিক-ধারনা।-61a70b3d1ab3e', NULL, 11, 33, 1, 'https://www.youtube.com/embed/_GaMxEyYxNA', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 05:42:21', '2021-12-01 05:42:21'),
(110, NULL, 8, 'জেএসএক্স (জাভাস্ক্রিপ্ট এক্সএমএল) কি ? দেখতে অনেক টা Html এর মতো কিন্তু ভুলেও Html বলা যাবেনা।', 'জেএসএক্স-(জাভাস্ক্রিপ্ট-এক্সএমএল)-কি-?-দেখতে-অনেক-টা-html-এর-মতো-কিন্তু-ভুলেও-html-বলা-যাবেনা।-61a71cdb3e9b3', NULL, 11, 33, 1, 'https://www.youtube.com/embed/ivdrVEJGglI', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 06:57:31', '2021-12-01 06:57:31'),
(111, NULL, 8, 'ক্লাস কম্পোনেন্ট নিয়ে মাষ্টার লেভেল এর পড়াশুনা।', 'ক্লাস-কম্পোনেন্ট-নিয়ে-মাষ্টার-লেভেল-এর-পড়াশুনা।-61a71d1635e42', NULL, 11, 33, 1, 'https://www.youtube.com/embed/fNrknSWTsHs', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 06:58:30', '2021-12-01 06:58:30'),
(112, NULL, 8, 'ফাংশনাল কম্পোনেন্ট ডায়নামিক', 'ফাংশনাল-কম্পোনেন্ট-ডায়নামিক-61a71d556d51b', NULL, 11, 33, 1, 'https://www.youtube.com/embed/B3mzotIK1DU', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 06:59:33', '2021-12-01 06:59:33'),
(113, NULL, 8, 'ক্লাস কম্পোনেন্ট ডায়নামিক।', 'ক্লাস-কম্পোনেন্ট-ডায়নামিক।-61a71d888282e', NULL, 11, 33, 1, 'https://www.youtube.com/embed/_utz9GPEERw', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:00:24', '2021-12-01 07:00:24'),
(114, NULL, 8, 'নতুন কম্পোনেন্ট নিয়ে খেলাধুলা', 'নতুন-কম্পোনেন্ট-নিয়ে-খেলাধুলা-61a71ddd3b020', NULL, 11, 33, 1, 'https://www.youtube.com/embed/iBoz8OzSmDI', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:01:49', '2021-12-01 07:01:49'),
(115, NULL, 8, 'কম্পোনেন্ট এর স্টেট।', 'কম্পোনেন্ট-এর-স্টেট।-61a71e3e8c264', NULL, 11, 33, 1, 'https://www.youtube.com/embed/O38ChHV6QlA', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:03:26', '2021-12-01 07:03:26'),
(116, NULL, 8, 'জাভাস্ক্রিপ্ট ইভেন্ট দিয়ে স্টেট চেঞ্জ করা', 'জাভাস্ক্রিপ্ট-ইভেন্ট-দিয়ে-স্টেট-চেঞ্জ-করা-61a71e80d4b4a', NULL, 11, 33, 1, 'https://www.youtube.com/embed/uEhUdvxssT0', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:04:32', '2021-12-01 07:04:32'),
(117, NULL, 8, 'প্রপস্ কে মেথড হিসেবে পাস করা।', 'প্রপস্-কে-মেথড-হিসেবে-পাস-করা।-61a71ec21da37', NULL, 11, 33, 1, 'https://www.youtube.com/embed/tJ4-MAD8kus', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:05:38', '2021-12-01 07:05:38'),
(118, NULL, 8, 'Input Element দিয়ে স্টেট কে চেঞ্জ করা।', 'input-element-দিয়ে-স্টেট-কে-চেঞ্জ-করা।-61a71ef95f262', NULL, 11, 33, 1, 'https://www.youtube.com/embed/L42YX9mzp4w', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:06:33', '2021-12-01 07:06:33'),
(119, NULL, 8, 'কম্পোনেন্ট এ স্টাইলশিট এর ব্যবহার।', 'কম্পোনেন্ট-এ-স্টাইলশিট-এর-ব্যবহার।-61a71f2c54fa1', NULL, 11, 33, 1, 'https://www.youtube.com/embed/jS3etEtBqsg', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:07:24', '2021-12-01 07:07:24'),
(120, NULL, 8, 'কম্পোনেন্ট লিষ্ট তৈরি করা।', 'কম্পোনেন্ট-লিষ্ট-তৈরি-করা।-61a71f5fbc1d6', NULL, 11, 33, 1, 'https://www.youtube.com/embed/S6-EZcXIYvE', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:08:15', '2021-12-01 07:08:15'),
(121, NULL, 8, 'স্টেট কে চেঞ্জ করা।', 'স্টেট-কে-চেঞ্জ-করা।-61a71fe78e4ac', NULL, 11, 33, 1, 'https://www.youtube.com/embed/ZcJA3ZeUX84', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:10:31', '2021-12-01 07:10:31'),
(122, NULL, 8, 'চিলড্রেন কি এর লিষ্ট ম্যান্টেন করা', 'চিলড্রেন-কি-এর-লিষ্ট-ম্যান্টেন-করা-61a7201cad8cf', NULL, 11, 33, 1, 'https://www.youtube.com/embed/vkRsc19D4Pw', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:11:24', '2021-12-01 07:11:24'),
(123, NULL, 8, 'Make Lists Flexible', 'make-lists-flexible-61a7205e4fd6a', NULL, 11, 33, 1, 'https://www.youtube.com/embed/X-5O1isu-aw', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:12:30', '2021-12-01 07:12:30'),
(124, NULL, 8, 'কন্ডিশন এর উপর রেন্ডারিং', 'কন্ডিশন-এর-উপর-রেন্ডারিং-61a720e931431', NULL, 11, 33, 1, 'https://www.youtube.com/embed/-F_U1GAb-54?list=PLRjmIWgjYgCDm_k9Vf-ny0_3ikx6rBdvU', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:14:49', '2021-12-01 07:14:49'),
(125, NULL, 8, 'Better Render', 'better-render-61a7212133658', NULL, 11, 33, 1, 'https://www.youtube.com/embed/M7B4qyJfZ1s', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:15:45', '2021-12-01 07:15:45'),
(126, NULL, 8, 'মেইন কম্পোনেন্ট ক্লিন করা এবং স্ট্রাকচার অনুযায়ী সাজানো।', 'মেইন-কম্পোনেন্ট-ক্লিন-করা-এবং-স্ট্রাকচার-অনুযায়ী-সাজানো।-61a721998ae07', NULL, 11, 33, 1, 'https://www.youtube.com/embed/klW7j2qmlew\" title=\"YouTube video player', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:17:45', '2021-12-01 07:17:45'),
(127, NULL, 8, 'স্টেট কে আলাদা ফাইল থেকে ইমপোর্ট করা।', 'স্টেট-কে-আলাদা-ফাইল-থেকে-ইমপোর্ট-করা।-61a721f000b3e', NULL, 11, 33, 1, 'https://www.youtube.com/embed/uZHlyvJfyd0', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:19:12', '2021-12-01 07:19:12'),
(128, NULL, 8, 'কম্পোনেন্ট লিষ্ট নিয়ে কাজ করা।', 'কম্পোনেন্ট-লিষ্ট-নিয়ে-কাজ-করা।-61a7222eed99a', NULL, 11, 33, 1, 'https://www.youtube.com/embed/HtFys_ewt2E', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:20:14', '2021-12-01 07:20:14'),
(129, NULL, 8, 'ফাংশন রেফারেন্স হিসেবে প্রপ্স কে পাস করা।', 'ফাংশন-রেফারেন্স-হিসেবে-প্রপ্স-কে-পাস-করা।-61a7226104c7c', NULL, 11, 33, 1, 'https://www.youtube.com/embed/6TdL2KUdFUI', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:21:05', '2021-12-01 07:21:05'),
(130, NULL, 8, 'স্টেটলেস কম্পোনেন্ট বনাম স্টেটফুল কম্পোনেন্ট।', 'স্টেটলেস-কম্পোনেন্ট-বনাম-স্টেটফুল-কম্পোনেন্ট।-61a72289c423d', NULL, 11, 33, 1, 'https://www.youtube.com/embed/6tcsPThF-7s', '00:00:00', 1, NULL, NULL, 0, '2021-12-01 07:21:45', '2021-12-01 07:21:45'),
(131, NULL, 8, 'প্রযেক্ট ফোল্ডার তৈরি করা।', 'প্রযেক্ট-ফোল্ডার-তৈরি-করা।-61a735ed82298', NULL, 11, 34, 1, 'https://www.youtube.com/embed/5OD7TlveW10', '00:20:05', 2, NULL, NULL, 0, '2021-12-01 08:44:29', '2021-12-01 23:09:04'),
(132, NULL, 8, 'কম্পোনেন্ট ট্রি তৈরি করা।', 'কম্পোনেন্ট-ট্রি-তৈরি-করা।-61a736a57cec3', NULL, 11, 34, 1, 'https://www.youtube.com/embed/SkcIzqWxNDU', '00:24:33', 1, NULL, NULL, 0, '2021-12-01 08:47:33', '2021-12-01 08:47:33'),
(133, NULL, 8, 'নেভিগেশন বার তৈরি করা।', 'নেভিগেশন-বার-তৈরি-করা।-61a736e224e14', NULL, 11, 34, 1, 'https://www.youtube.com/embed/JSgE9CpyyJs', '00:17:39', 1, NULL, NULL, 0, '2021-12-01 08:48:34', '2021-12-01 08:48:34'),
(134, NULL, 8, 'মেনু আইটেম তৈরি করা।', 'মেনু-আইটেম-তৈরি-করা।-61a737b044d9f', NULL, 11, 34, 1, 'https://www.youtube.com/embed/oYJEmzsaADs', '00:25:18', 1, NULL, NULL, 0, '2021-12-01 08:52:00', '2021-12-01 08:52:00'),
(135, NULL, 8, 'মেনুর আইটেম ডিজাইন করা', 'মেনুর-আইটেম-ডিজাইন-করা-61a738734cb14', NULL, 11, 34, 1, 'https://www.youtube.com/embed/ZO21HNOMtDY', '00:17:04', 1, NULL, NULL, 0, '2021-12-01 08:55:15', '2021-12-01 08:55:15'),
(136, NULL, 8, 'মেনুর ডিটেইল ক্রিয়েট করা।', 'মেনুর-ডিটেইল-ক্রিয়েট-করা।-61a738b02fc70', NULL, 11, 34, 1, 'https://www.youtube.com/embed/Y0HBbgq4YQs', '00:22:42', 1, NULL, NULL, 0, '2021-12-01 08:56:16', '2021-12-01 08:56:16'),
(137, NULL, 8, 'মেনুর ডিটেইল পার্ট – ২', 'মেনুর-ডিটেইল-পার্ট-–-২-61a738ed55301', NULL, 11, 34, 1, 'https://www.youtube.com/embed/_8fdEJkvks8', '00:29:22', 1, NULL, NULL, 0, '2021-12-01 08:57:17', '2021-12-01 08:57:17'),
(138, NULL, 8, 'কমেন্ট শো করানো।', 'কমেন্ট-শো-করানো।-61a7392f8713e', NULL, 11, 34, 1, 'https://www.youtube.com/embed/fiJvIHuwtNc', '00:13:59', 1, NULL, NULL, 0, '2021-12-01 08:58:23', '2021-12-01 08:58:23'),
(139, NULL, 8, 'ডেভলপার টুলস্।', 'ডেভলপার-টুলস্।-61a73980bcae6', NULL, 11, 34, 1, 'https://www.youtube.com/embed/d3ewqZGYRog', '00:08:32', 1, NULL, NULL, 0, '2021-12-01 08:59:44', '2021-12-01 08:59:44'),
(140, NULL, 8, 'ভিজ্যুয়াল স্টুডিও কোড এডিটরে ডিবাগিং করা।', 'ভিজ্যুয়াল-স্টুডিও-কোড-এডিটরে-ডিবাগিং-করা।-61a739c336dac', NULL, 11, 34, 1, 'https://www.youtube.com/embed/Vym0QvrEuBs', '00:07:30', 5, NULL, NULL, 0, '2021-12-01 09:00:51', '2021-12-01 23:38:40'),
(141, NULL, 8, 'Medge Acevedo ddd', 'কম্পোনেন্ট-লাইফ-সাইকেল-–-পার্ট-–-১-61a73b6a95902', 0, 11, 35, 1, 'https://www.youtube.com/embed/Y2fCXqAolBs', '00:39:38', 1, 'Ullamco iure accusam dd', 'Mollit ut duis volup  dd', 0, '2021-12-01 09:07:54', '2021-12-02 05:33:25'),
(142, NULL, 8, 'কম্পোনেন্ট লাইফ সাইকেল – পার্ট – ২', 'কম্পোনেন্ট-লাইফ-সাইকেল-–-পার্ট-–-২-61a73bb9d9592', NULL, 11, 35, 1, 'https://www.youtube.com/embed/uQi3kOS4QwA', '00:36:56', 1, NULL, NULL, 0, '2021-12-01 09:09:13', '2021-12-01 09:09:13'),
(143, NULL, 8, 'কম্পোনেন্ট লাইফ সাইকেল – পার্ট – ৩', 'কম্পোনেন্ট-লাইফ-সাইকেল-–-পার্ট-–-৩-61a73bfa0925c', NULL, 11, 35, 1, 'https://www.youtube.com/embed/UzPvE8Oa9ag', '00:18:16', 1, NULL, NULL, 0, '2021-12-01 09:10:18', '2021-12-01 09:10:18'),
(144, NULL, 8, 'পার্ট – ১', 'পার্ট-–-১-61a73d79726c6', NULL, 11, 36, 1, 'https://www.youtube.com/embed/0LDdKgP8tOo', '00:34:43', 2, NULL, NULL, 0, '2021-12-01 09:16:41', '2021-12-01 23:08:09'),
(145, NULL, 8, 'পার্ট – ২', 'পার্ট-–-২-61a73d9dcb41d', NULL, 11, 36, 1, 'https://www.youtube.com/embed/7BK0iTnK6iA', '00:41:30', 1, NULL, NULL, 0, '2021-12-01 09:17:17', '2021-12-01 09:17:17'),
(146, NULL, 8, 'পার্ট – ৩', 'পার্ট-–-৩-61a73dce3de93', NULL, 11, 36, 1, 'https://www.youtube.com/embed/j8Dz7zZtsKc', '00:20:19', 1, NULL, NULL, 0, '2021-12-01 09:18:06', '2021-12-01 09:18:06'),
(147, NULL, 8, 'পার্ট – ৪', 'পার্ট-–-৪-61a73e0503076', NULL, 11, 36, 1, 'https://www.youtube.com/embed/Q-eG13WcNcU', '00:47:08', 1, NULL, NULL, 0, '2021-12-01 09:19:01', '2021-12-01 09:19:01'),
(148, NULL, 8, 'পার্ট – ৫', 'পার্ট-–-৫-61a73e3d3804f', NULL, 11, 36, 1, 'https://www.youtube.com/embed/6N5sK9jqA7g', '00:37:04', 1, NULL, NULL, 0, '2021-12-01 09:19:57', '2021-12-01 09:19:57'),
(149, NULL, 8, 'পার্ট – ১', 'পার্ট-–-১-61a73f12c2e61', NULL, 11, 37, 1, 'https://www.youtube.com/embed/BLUelROz-NI', '00:13:42', 1, NULL, NULL, 0, '2021-12-01 09:23:30', '2021-12-01 09:23:30'),
(150, NULL, 8, 'পার্ট – ২', 'পার্ট-–-২-61a73f3a4624a', NULL, 11, 37, 1, 'https://www.youtube.com/embed/hoBln5KEhJ4', '00:25:23', 1, NULL, NULL, 0, '2021-12-01 09:24:10', '2021-12-01 09:24:10'),
(151, NULL, 8, 'পার্ট – ৩', 'পার্ট-–-৩-61a73f7412421', NULL, 11, 37, 1, 'https://www.youtube.com/embed/LPzPOlUx9ws', '00:27:33', 1, NULL, NULL, 0, '2021-12-01 09:25:08', '2021-12-01 09:25:08'),
(152, NULL, 8, 'কন্ট্রোল ফর্ম', 'কন্ট্রোল-ফর্ম-61a74014429d1', NULL, 11, 38, 1, 'https://www.youtube.com/embed/5iQeVfSOKfc', '00:36:42', 1, NULL, NULL, 0, '2021-12-01 09:27:48', '2021-12-01 09:27:48'),
(153, NULL, 8, 'সাবমিট ডাটা এন্ড ভ্যালু কালেক্ট', 'সাবমিট-ডাটা-এন্ড-ভ্যালু-কালেক্ট-61a7405515aac', NULL, 11, 38, 1, 'https://www.youtube.com/embed/JSUlze5ZGhE', '00:15:46', 1, NULL, NULL, 0, '2021-12-01 09:28:53', '2021-12-01 09:28:53'),
(154, NULL, 8, 'আনকন্ট্রোল ফর্ম', 'আনকন্ট্রোল-ফর্ম-61a740903a740', NULL, 11, 38, 1, 'https://www.youtube.com/embed/-ReMh2N26zw', '00:18:06', 1, NULL, NULL, 0, '2021-12-01 09:29:52', '2021-12-01 09:29:52'),
(155, NULL, 8, 'পার্ট – ১', 'পার্ট-–-১-61a741cd8a757', NULL, 11, 39, 1, 'https://www.youtube.com/embed/JaGSxYqLY_k', '00:37:34', 1, NULL, NULL, 0, '2021-12-01 09:35:09', '2021-12-01 09:35:09'),
(156, NULL, 8, 'পার্ট – ২', 'পার্ট-–-২-61a741f56d21d', NULL, 11, 39, 1, 'https://www.youtube.com/embed/d15KJwpnw5Q', '00:21:04', 2, NULL, NULL, 0, '2021-12-01 09:35:49', '2021-12-15 07:20:14'),
(157, NULL, 8, 'পার্ট – ৩', 'পার্ট-–-৩-61a7426f281e2', NULL, 11, 39, 1, 'https://www.youtube.com/embed/gJA-H4KJjeI', '00:23:47', 3, NULL, NULL, 0, '2021-12-01 09:37:51', '2021-12-15 07:20:25'),
(158, NULL, 8, 'রিডাক্স কি ?', 'রিডাক্স-কি-61a744b6a463b', NULL, 11, 40, 1, 'https://www.youtube.com/embed/jnMMsFBEKpE', '00:09:14', 1, NULL, NULL, 0, '2021-12-01 09:47:34', '2021-12-01 09:47:34'),
(159, NULL, 8, 'রিডাক্স ফ্লো', 'রিডাক্স-ফ্লো-61a7451827793', NULL, 11, 40, 1, 'https://www.youtube.com/embed/AHbQ1473Fxg', '00:15:10', 1, NULL, NULL, 0, '2021-12-01 09:49:12', '2021-12-01 09:49:12'),
(160, NULL, 8, 'রিডাক্স কোর কনসেপ্ট।', 'রিডাক্স-কোর-কনসেপ্ট।-61a7456be9b6e', NULL, 11, 40, 1, 'https://www.youtube.com/embed/8J1cvBCJyQg', '00:25:48', 1, NULL, NULL, 0, '2021-12-01 09:50:35', '2021-12-01 09:50:35'),
(161, NULL, 8, 'রিডাক্স কোর কনসেপ্ট পার্ট – ২', 'রিডাক্স-কোর-কনসেপ্ট-পার্ট-–-২-61a745ccb18bf', NULL, 11, 40, 1, 'https://www.youtube.com/embed/9jPTK5E5sfs', '00:30:43', 1, NULL, NULL, 0, '2021-12-01 09:52:12', '2021-12-01 09:52:12'),
(162, NULL, 8, 'রিডাক্স কোর কনসেপ্ট পার্ট – ৩', 'রিডাক্স-কোর-কনসেপ্ট-পার্ট-–-৩-61a7461d72b20', NULL, 11, 40, 1, 'https://www.youtube.com/embed/Xc-QUob2VH4', '00:15:52', 1, NULL, NULL, 0, '2021-12-01 09:53:33', '2021-12-01 09:53:33'),
(163, NULL, 8, 'পার্ট – ১', 'পার্ট-–-১-61a7620b3bfdf', NULL, 11, 41, 1, 'https://www.youtube.com/embed/pv3ZiPQPD-E', '00:53:42', 1, NULL, NULL, 0, '2021-12-01 11:52:43', '2021-12-01 11:52:43'),
(164, NULL, 8, 'পার্ট – ২', 'পার্ট-–-২-61a76256832ad', NULL, 11, 41, 1, 'https://www.youtube.com/embed/re9KbXXxVRw', '00:19:52', 1, NULL, NULL, 0, '2021-12-01 11:53:58', '2021-12-01 11:53:58'),
(165, NULL, 8, 'পার্ট – ৩', 'পার্ট-–-৩-61a762c029b3d', NULL, 11, 41, 1, 'https://www.youtube.com/embed/vUWW54jH5Rc', '00:29:13', 1, NULL, NULL, 0, '2021-12-01 11:55:44', '2021-12-01 11:55:44'),
(166, NULL, 8, 'পার্ট – ৪', 'পার্ট-–-৪-61a7632350fb3', NULL, 11, 41, 1, 'https://www.youtube.com/embed/rzAOPd2QO5Q', '00:39:48', 1, NULL, NULL, 0, '2021-12-01 11:57:23', '2021-12-01 11:57:23'),
(167, 'default.png', 8, 'পার্ট – ৫', 'পার্ট-–-৫-61a76e70efa05', NULL, 11, 41, 1, 'https://www.youtube.com/embed/T1TvNhrVBR0', '00:18:55', 1, NULL, NULL, 0, '2021-12-01 12:45:36', '2021-12-01 12:45:36'),
(168, 'default.png', 8, 'পার্ট – ৬', 'পার্ট-–-৬-61a76ef7d2c7d', NULL, 11, 41, 1, 'https://www.youtube.com/embed/rOTaUPnINhA', '00:12:06', 1, NULL, NULL, 0, '2021-12-01 12:47:51', '2021-12-01 12:47:51'),
(169, 'default.png', 8, 'পার্ট – ৭', 'পার্ট-–-৭-61a76f5802035', NULL, 11, 41, 1, 'https://www.youtube.com/embed/YOFEDLDnXDE', '00:15:34', 1, NULL, NULL, 0, '2021-12-01 12:49:28', '2021-12-01 12:49:28'),
(170, 'default.png', 8, 'পার্ট – ৮', 'পার্ট-–-৮-61a76fca9bbdb', NULL, 11, 41, 1, 'https://www.youtube.com/embed/mIfW_mK0Z5E', '00:09:42', 1, NULL, NULL, 0, '2021-12-01 12:51:22', '2021-12-01 12:51:22'),
(171, 'default.png', 8, 'একশন ক্রিয়েটর', 'একশন-ক্রিয়েটর-61a777eac90d7', NULL, 11, 42, 1, 'https://www.youtube.com/embed/tRASIQpjO9s', '00:19:45', 1, NULL, NULL, 0, '2021-12-01 13:26:02', '2021-12-01 13:26:02'),
(172, 'default.png', 8, 'ফ্রন্ট অসম এর ব্যবহার', 'ফ্রন্ট-অসম-এর-ব্যবহার-61a7782ed4e8d', NULL, 11, 42, 1, 'https://www.youtube.com/embed/gek0Watltfg', '00:11:09', 1, NULL, NULL, 0, '2021-12-01 13:27:10', '2021-12-01 13:27:10'),
(173, 'default.png', 8, 'মিডেল ওয়্যার এর ব্যবহার', 'মিডেল-ওয়্যার-এর-ব্যবহার-61a77867c6d48', NULL, 11, 42, 1, 'https://www.youtube.com/embed/Te3s7OjxpXs', '00:14:07', 1, NULL, NULL, 0, '2021-12-01 13:28:07', '2021-12-01 13:28:07'),
(174, 'default.png', 8, 'রিডাক্স থাংক', 'রিডাক্স-থাংক-61a778a272a90', NULL, 11, 42, 1, 'https://www.youtube.com/embed/R5cEyM5LsdA', '00:56:54', 1, NULL, NULL, 0, '2021-12-01 13:29:06', '2021-12-01 13:29:06'),
(175, 'default.png', 8, 'রিডাক্স তুমি কার ?', 'রিডাক্স-তুমি-কার-?-61a7796a75e35', NULL, 11, 42, 1, 'https://www.youtube.com/embed/Lf0mTDDJ41Y', '00:08:17', 1, NULL, NULL, 0, '2021-12-01 13:32:26', '2021-12-01 13:32:26'),
(176, 'default.png', 8, 'রিয়াক্ট রিডাক্স ফর্ম এর ব্যবহার', 'রিয়াক্ট-রিডাক্স-ফর্ম-এর-ব্যবহার-61a77b0f286e0', NULL, 11, 43, 1, 'https://www.youtube.com/embed/xWupHXu6CXI', '00:20:27', 1, NULL, NULL, 0, '2021-12-01 13:39:27', '2021-12-01 13:39:27'),
(177, 'default.png', 8, 'ফর্ম ভেলিডেশন', 'ফর্ম-ভেলিডেশন-61a77b8d91150', NULL, 11, 43, 1, 'https://www.youtube.com/embed/WhkGkk9jlLY', '00:26:20', 1, NULL, NULL, 0, '2021-12-01 13:41:33', '2021-12-01 13:41:33'),
(178, 'default.png', 8, 'ফর্ম এডভান্স টেকনিক', 'ফর্ম-এডভান্স-টেকনিক-61a77bc903d4b', NULL, 11, 43, 1, 'https://www.youtube.com/embed/ssX2GwQaCYY', '00:21:49', 1, NULL, NULL, 0, '2021-12-01 13:42:33', '2021-12-01 13:42:33'),
(179, 'default.png', 8, 'সার্ভার কমিউকেশন', 'সার্ভার-কমিউকেশন-61a77d81d6736', NULL, 11, 44, 1, 'https://www.youtube.com/embed/DPoV4fZEimY', '00:16:15', 1, NULL, NULL, 0, '2021-12-01 13:49:53', '2021-12-01 13:49:53'),
(180, 'default.png', 8, 'রেষ্ট এপিআই', 'রেষ্ট-এপিআই-61a77dd6091f2', NULL, 11, 44, 1, 'https://www.youtube.com/embed/YbFmETPNmTI', '00:18:16', 1, NULL, NULL, 0, '2021-12-01 13:51:18', '2021-12-01 13:51:18'),
(181, 'default.png', 8, 'রিয়েল লাইফ রেস্ট এপিআই।', 'রিয়েল-লাইফ-রেস্ট-এপিআই।-61a789b35074e', NULL, 11, 44, 1, 'https://www.youtube.com/embed/N-Ti4Oht8V0', '00:16:33', 1, NULL, NULL, 0, '2021-12-01 14:41:55', '2021-12-01 14:41:55'),
(182, 'default.png', 8, 'নিজে বানাও একটা সার্ভার এবং তৈরি কর নিজের রেস্ট এপিআই', 'নিজে-বানাও-একটা-সার্ভার-এবং-তৈরি-কর-নিজের-রেস্ট-এপিআই-61a78aa75bddc', NULL, 11, 44, 1, 'https://www.youtube.com/embed/VACeoG36akA', '00:20:03', 1, NULL, NULL, 0, '2021-12-01 14:45:59', '2021-12-01 14:45:59'),
(183, 'default.png', 8, 'রেস্ট এপিআই কে রিএক্ট এপ্লিকেশনে ব্যবহার', 'রেস্ট-এপিআই-কে-রিএক্ট-এপ্লিকেশনে-ব্যবহার-61a78adf66b71', NULL, 11, 44, 1, 'https://www.youtube.com/embed/Ji8G9LaYlTE', '00:24:33', 1, NULL, NULL, 0, '2021-12-01 14:46:55', '2021-12-01 14:46:55'),
(184, 'default.png', 8, 'এরর হ্যান্ডেলিং', 'এরর-হ্যান্ডেলিং-61a78b1dd8bc1', NULL, 11, 44, 1, 'https://www.youtube.com/embed/CqDTQRxOBDI', '00:08:52', 1, NULL, NULL, 0, '2021-12-01 14:47:57', '2021-12-01 14:47:57'),
(185, 'default.png', 8, 'ডাটা হ্যান্ডেলিং', 'ডাটা-হ্যান্ডেলিং-61a78b664e60f', NULL, 11, 44, 1, 'https://www.youtube.com/embed/GCz9NhCDRWw', '00:10:39', 1, NULL, NULL, 0, '2021-12-01 14:49:10', '2021-12-01 14:49:10'),
(186, 'default.png', 8, 'স্টেট ব্যবহার করে রেসপন্স কে হ্যান্ডেল করা।', 'স্টেট-ব্যবহার-করে-রেসপন্স-কে-হ্যান্ডেল-করা।-61a78bb2ccbc2', NULL, 11, 44, 1, 'https://www.youtube.com/embed/esz3RLnS4WU', '00:08:08', 1, NULL, NULL, 0, '2021-12-01 14:50:26', '2021-12-01 14:50:26'),
(187, 'default.png', 8, 'সার্ভার সেটিং', 'সার্ভার-সেটিং-61a78d229c16a', NULL, 11, 45, 1, 'https://www.youtube.com/embed/nnBP9YUfpYQ', '00:10:01', 1, NULL, NULL, 0, '2021-12-01 14:56:34', '2021-12-01 14:56:34'),
(188, 'default.png', 8, 'সার্ভার থেকে ডাটা নিয়ে আসা', 'সার্ভার-থেকে-ডাটা-নিয়ে-আসা-61a78d8a9b9f4', NULL, 11, 45, 1, 'https://www.youtube.com/embed/Pd6wtnThqYw', '00:18:25', 1, NULL, NULL, 0, '2021-12-01 14:58:18', '2021-12-01 14:58:18'),
(189, 'default.png', 8, 'কমেন্ট ফ্রম সারভার', 'কমেন্ট-ফ্রম-সারভার-61a78de2b6fd4', NULL, 11, 45, 1, 'https://www.youtube.com/embed/JnlB-bBuSKQ', '00:28:42', 1, NULL, NULL, 0, '2021-12-01 14:59:46', '2021-12-01 14:59:46'),
(190, 'default.png', 8, 'সার্ভার থেকে কমেন্ট নিয়ে আসা', 'সার্ভার-থেকে-কমেন্ট-নিয়ে-আসা-61a7906284e43', NULL, 11, 45, 1, 'https://www.youtube.com/embed/vP47ZFx8P_k', '00:20:41', 1, NULL, NULL, 0, '2021-12-01 15:10:26', '2021-12-01 15:10:26'),
(191, 'default.png', 8, 'ফর্ম এর ভ্যালুকে সার্ভারে পাঠানো', 'ফর্ম-এর-ভ্যালুকে-সার্ভারে-পাঠানো-61a79100bd505', NULL, 11, 45, 1, 'https://www.youtube.com/embed/WpFDnf0wdh4', '00:13:12', 1, NULL, NULL, 0, '2021-12-01 15:13:04', '2021-12-01 15:13:04'),
(192, 'default.png', 8, 'এরর হ্যান্ডেলিং', 'এরর-হ্যান্ডেলিং-61a7916102752', NULL, 11, 45, 1, 'https://www.youtube.com/embed/ZeDtldbyeR0', '00:03:33', 1, NULL, NULL, 0, '2021-12-01 15:14:41', '2021-12-01 15:14:41'),
(193, 'default.png', 8, 'প্রযেক্ট সেটাপ', 'প্রযেক্ট-সেটাপ-61a793806e560', NULL, 11, 46, 1, 'https://www.youtube.com/embed/oVr6nL8aCnA', '00:20:34', 1, NULL, NULL, 0, '2021-12-01 15:23:44', '2021-12-01 15:23:44'),
(194, 'default.png', 8, 'ইনগ্রেডিয়েন্ট শো করানো', 'ইনগ্রেডিয়েন্ট-শো-করানো-61a7941f4b327', NULL, 11, 46, 1, 'https://www.youtube.com/embed/5AOnp96eCc0', '00:33:29', 4, NULL, NULL, 0, '2021-12-01 15:26:23', '2021-12-15 07:26:06'),
(195, 'default.png', 8, 'নেভিগেশন বার তৈরি করা।', 'নেভিগেশন-বার-তৈরি-করা।-61a7949312062', NULL, 11, 46, 1, 'https://www.youtube.com/embed/uBwATb1iY4Q', '00:22:45', 2, NULL, NULL, 0, '2021-12-01 15:28:19', '2021-12-15 07:23:12'),
(196, 'default.png', 8, 'ইনগ্রেডিয়েন্ট বানানো', 'ইনগ্রেডিয়েন্ট-বানানো-61a795911fb0a', NULL, 11, 46, 1, 'https://www.youtube.com/embed/4aMs5Om5eNI', '00:37:56', 3, NULL, NULL, 0, '2021-12-01 15:32:33', '2021-12-15 07:23:30'),
(197, 'default.png', 8, 'কন্ট্রোল কম্পোনেন্ট নিয়ে কাজ করা', 'কন্ট্রোল-কম্পোনেন্ট-নিয়ে-কাজ-করা-61a796613bf16', NULL, 11, 46, 1, 'https://www.youtube.com/embed/DcohftvtzHI', '00:28:14', 5, NULL, NULL, 0, '2021-12-01 15:36:01', '2021-12-15 07:26:21'),
(198, 'default.png', 8, 'এড করা এবং রিমোব করা', 'এড-করা-এবং-রিমোব-করা-61a796c08b4f4', NULL, 11, 46, 1, 'https://www.youtube.com/embed/KcaT3eHSh0w', '00:19:44', 6, NULL, NULL, 0, '2021-12-01 15:37:36', '2021-12-15 07:26:27'),
(199, 'default.png', 8, 'আপডেট প্রাইজ', 'আপডেট-প্রাইজ-61a7972ece632', NULL, 11, 46, 1, 'https://www.youtube.com/embed/iBInPQ2nsfE', '00:09:20', 7, NULL, NULL, 0, '2021-12-01 15:39:26', '2021-12-15 07:27:19'),
(200, 'default.png', 8, 'অর্ডার ডিটেইল', 'অর্ডার-ডিটেইল-61a79780a3df5', NULL, 11, 46, 1, 'https://www.youtube.com/embed/aRQEVN1lXts', '00:41:09', 8, NULL, NULL, 0, '2021-12-01 15:40:48', '2021-12-15 07:27:29'),
(201, 'default.png', 8, 'রাউটার এড করা', 'রাউটার-এড-করা-61a797cf928ce', NULL, 11, 46, 1, 'https://www.youtube.com/embed/Bt_gMJylTHU', '00:23:00', 9, NULL, NULL, 0, '2021-12-01 15:42:07', '2021-12-15 07:27:36'),
(202, 'default.png', 8, 'রিডাক্স এড করা', 'রিডাক্স-এড-করা-61a798254542e', NULL, 11, 46, 1, 'https://www.youtube.com/embed/iZiVNFSBniI', '00:43:03', 10, NULL, NULL, 0, '2021-12-01 15:43:33', '2021-12-15 07:27:51'),
(203, 'default.png', 8, 'চেক আউট পেজ ডিজাইন', 'চেক-আউট-পেজ-ডিজাইন-61a7987341dcb', NULL, 11, 46, 1, 'https://www.youtube.com/embed/LQNlQkhfA5c', '00:32:23', 11, NULL, NULL, 0, '2021-12-01 15:44:51', '2021-12-15 07:27:59'),
(204, 'default.png', 8, 'ডাটাবেইজে অর্ডার সেব করা', 'ডাটাবেইজে-অর্ডার-সেব-করা-61a798bbe0979', NULL, 11, 46, 1, 'https://www.youtube.com/embed/diHAYwnhe7c', '00:33:42', 12, NULL, NULL, 0, '2021-12-01 15:46:03', '2021-12-15 07:28:22'),
(205, 'default.png', 8, 'বাটন ডিজেবল', 'বাটন-ডিজেবল-61a799085d76a', NULL, 11, 46, 1, 'https://www.youtube.com/embed/52OGj0-6Tgs', '00:04:43', 13, NULL, NULL, 0, '2021-12-01 15:47:20', '2021-12-15 07:28:29'),
(206, 'default.png', 8, 'স্পাইনার এড করা', 'স্পাইনার-এড-করা-61a7995291b78', NULL, 11, 46, 1, 'https://www.youtube.com/embed/tAAynp7ze8Y', '00:17:37', 14, NULL, NULL, 0, '2021-12-01 15:48:34', '2021-12-15 07:28:35'),
(207, 'default.png', 8, 'ইউজার ম্যাসেজ', 'ইউজার-ম্যাসেজ-61a79b2d2d1e3', NULL, 11, 46, 1, 'https://www.youtube.com/embed/Xkc84dlwzKM', '00:09:28', 15, NULL, NULL, 0, '2021-12-01 15:56:29', '2021-12-15 07:28:41'),
(208, 'default.png', 8, 'রিডাক্স স্টোর কে রিসেট করা', 'রিডাক্স-স্টোর-কে-রিসেট-করা-61a79bb44031e', NULL, 11, 46, 1, 'https://www.youtube.com/embed/lqli7HWj66s', '00:14:28', 16, NULL, NULL, 0, '2021-12-01 15:58:44', '2021-12-15 07:29:01'),
(209, 'default.png', 8, 'সার্ভার থেকে ডাটা নিয়ে আসা', 'সার্ভার-থেকে-ডাটা-নিয়ে-আসা-61a79ca917861', NULL, 11, 46, 1, 'https://www.youtube.com/embed/lW-tzud8wLU', '00:24:14', 17, NULL, NULL, 0, '2021-12-01 16:02:49', '2021-12-15 07:29:19'),
(210, 'default.png', 8, 'ফেচিং সারভার ডাটা', 'ফেচিং-সারভার-ডাটা-61a79d0336b5b', NULL, 11, 46, 1, 'https://www.youtube.com/embed/JPxull-paes', '00:24:48', 18, NULL, NULL, 0, '2021-12-01 16:04:19', '2021-12-15 07:29:27'),
(211, 'default.png', 8, 'অর্ডার কমপ্লিট', 'অর্ডার-কমপ্লিট-61a79d5942f8e', NULL, 11, 46, 1, 'https://www.youtube.com/embed/kD9GJuPOdJ4', '00:22:16', 19, NULL, NULL, 0, '2021-12-01 16:05:45', '2021-12-15 07:29:36'),
(212, 'default.png', 8, 'ইনগ্রেডিয়েন্ট শো করানো', 'ইনগ্রেডিয়েন্ট-শো-করানো-61a79daa5a4b0', NULL, 11, 46, 1, 'https://www.youtube.com/embed/C1DJrjkIPGY', '00:06:38', 20, NULL, NULL, 0, '2021-12-01 16:07:06', '2021-12-15 07:29:43'),
(213, 'default.png', 8, 'স্পাইনার এবং ইরর', 'স্পাইনার-এবং-ইরর-61a79e1219569', NULL, 11, 46, 1, 'https://www.youtube.com/embed/-5dzQzbbVd0', '00:12:16', 21, NULL, NULL, 0, '2021-12-01 16:08:50', '2021-12-15 07:29:49'),
(214, 'default.png', 8, 'নো অর্ডার', 'নো-অর্ডার-61a79e64e038b', NULL, 11, 46, 1, 'https://www.youtube.com/embed/F7lsZ7-2lrA', '00:03:52', 22, NULL, NULL, 0, '2021-12-01 16:10:12', '2021-12-15 07:29:55'),
(215, 'default.png', 8, 'অথেনটেশন এড করা', 'অথেনটেশন-এড-করা-61a7a45062d32', NULL, 11, 47, 1, 'https://www.youtube.com/embed/YfcYwUKMIEQ', '00:07:53', 1, NULL, NULL, 0, '2021-12-01 16:35:28', '2021-12-01 16:35:28'),
(216, 'default.png', 8, 'মেক ফর্ম', 'মেক-ফর্ম-61a7a492892a3', NULL, 11, 47, 1, 'https://www.youtube.com/embed/6IucuhxdREo', '00:11:21', 1, NULL, NULL, 0, '2021-12-01 16:36:34', '2021-12-01 16:36:34'),
(217, 'default.png', 8, 'ভ্যালু সেট করা', 'ভ্যালু-সেট-করা-61a7a4c989109', NULL, 11, 47, 1, 'https://www.youtube.com/embed/19kHaq-LZVg', '00:08:06', 1, NULL, NULL, 0, '2021-12-01 16:37:29', '2021-12-01 16:37:29'),
(218, 'default.png', 8, 'ফর্ম ভেলিডেশন', 'ফর্ম-ভেলিডেশন-61a7a5161ad11', NULL, 11, 47, 1, 'https://www.youtube.com/embed/ig1v5sBfrYg', '00:20:39', 1, NULL, NULL, 0, '2021-12-01 16:38:46', '2021-12-01 16:38:46'),
(219, 'default.png', 8, 'ফর্ম ভেলিডেশন – পার্ট – ২', 'ফর্ম-ভেলিডেশন-–-পার্ট-–-২-61a7a603b6bdc', NULL, 11, 47, 1, 'https://www.youtube.com/embed/imQjp0Rsrhw', '00:05:16', 1, NULL, NULL, 0, '2021-12-01 16:42:43', '2021-12-01 16:42:43'),
(220, 'default.png', 8, 'সাইন আপ এবং লগিন – পার্ট – ১', 'সাইন-আপ-এবং-লগিন-–-পার্ট-–-১-61a7a661b0304', NULL, 11, 47, 1, 'https://www.youtube.com/embed/W8Dhcx0T4xg', '00:07:12', 1, NULL, NULL, 0, '2021-12-01 16:44:17', '2021-12-01 16:44:17'),
(221, 'default.png', 8, 'সাইন আপ এবং লগিন – পার্ট – ২', 'সাইন-আপ-এবং-লগিন-–-পার্ট-–-২-61a7a6ac57351', NULL, 11, 47, 1, 'https://www.youtube.com/embed/SGZNIXA1Emo', '00:11:40', 1, NULL, NULL, 0, '2021-12-01 16:45:32', '2021-12-01 16:45:32'),
(222, 'default.png', 8, 'সাইন আপ এবং লগিন – পার্ট – ৩', 'সাইন-আপ-এবং-লগিন-–-পার্ট-–-৩-61a7a6f634183', NULL, 11, 47, 1, 'https://www.youtube.com/embed/QvsFHd5hWiI', '00:04:44', 1, NULL, NULL, 0, '2021-12-01 16:46:46', '2021-12-01 16:46:46'),
(223, 'default.png', 8, 'ফায়ারবেজ অথেনটেকিশন – পার্ট – ১', 'ফায়ারবেজ-অথেনটেকিশন-–-পার্ট-–-১-61a7a75a99978', NULL, 11, 47, 1, 'https://www.youtube.com/embed/1KES3bgNlP8', '00:28:18', 1, NULL, NULL, 0, '2021-12-01 16:48:26', '2021-12-01 16:48:26'),
(224, 'default.png', 8, 'ফায়ারবেজ অথেনটেকিশন – পার্ট – ২', 'ফায়ারবেজ-অথেনটেকিশন-–-পার্ট-–-২-61a7a85fe92eb', NULL, 11, 47, 1, 'https://www.youtube.com/embed/hBFZCG_QCFk', '00:13:10', 1, NULL, NULL, 0, '2021-12-01 16:52:47', '2021-12-01 16:52:47'),
(225, 'default.png', 8, 'রিডাক্স এর সাথে অথেনটেকিশন', 'রিডাক্স-এর-সাথে-অথেনটেকিশন-61a7a8c6aaf52', NULL, 11, 47, 1, 'https://www.youtube.com/embed/xdxyBPc5Ybk', '00:09:10', 1, NULL, NULL, 0, '2021-12-01 16:54:30', '2021-12-01 16:54:30'),
(226, 'default.png', 8, 'রিডাক্স এর সাথে অথেনটেকিশন – রানিং', 'রিডাক্স-এর-সাথে-অথেনটেকিশন-–-রানিং-61a7a9038085b', NULL, 11, 47, 1, 'https://www.youtube.com/embed/yLAgdqMr66c', '00:05:12', 1, NULL, NULL, 0, '2021-12-01 16:55:31', '2021-12-01 16:55:31'),
(227, 'default.png', 8, 'রিডাক্স এর সাথে অথেনটেকিশন – পার্ট – ২', 'রিডাক্স-এর-সাথে-অথেনটেকিশন-–-পার্ট-–-২-61a7a94fc9f9f', NULL, 11, 47, 1, 'https://www.youtube.com/embed/H77e_wBzT5c', '00:10:33', 1, NULL, NULL, 0, '2021-12-01 16:56:47', '2021-12-01 16:56:47'),
(228, 'default.png', 8, 'রিডাক্স এর সাথে অথেনটেকিশন - পার্ট - ৩', 'রিডাক্স-এর-সাথে-অথেনটেকিশন---পার্ট---৩-61a7a98353cd6', NULL, 11, 47, 1, 'https://www.youtube.com/embed/mXfqd3j7du8', '00:12:06', 1, NULL, NULL, 0, '2021-12-01 16:57:39', '2021-12-01 16:57:39'),
(229, 'default.png', 8, 'লোকাল স্টোরেজ – পার্ট – ১', 'লোকাল-স্টোরেজ-–-পার্ট-–-১-61a7aa1532809', NULL, 11, 47, 1, 'https://www.youtube.com/embed/T2_1gaL-BmA', '00:15:05', 1, NULL, NULL, 0, '2021-12-01 17:00:05', '2021-12-01 17:00:05'),
(230, 'default.png', 8, 'লোকাল স্টোরেজ – পার্ট – ২', 'লোকাল-স্টোরেজ-–-পার্ট-–-২-61a7aa6fc20c1', NULL, 11, 47, 1, 'https://www.youtube.com/embed/7AauWAweniY', '00:12:27', 1, NULL, NULL, 0, '2021-12-01 17:01:35', '2021-12-01 17:01:35'),
(231, 'default.png', 8, 'লোকাল স্টোরেজ – পার্ট – ৩', 'লোকাল-স্টোরেজ-–-পার্ট-–-৩-61a7aad12468d', NULL, 11, 47, 1, 'https://www.youtube.com/embed/FcNwtFuA3ms', '00:09:42', 1, NULL, NULL, 0, '2021-12-01 17:03:13', '2021-12-01 17:03:13'),
(232, 'default.png', 8, 'অটো লগ আউট ক্রিয়েট করা', 'অটো-লগ-আউট-ক্রিয়েট-করা-61a7ab19d2056', NULL, 11, 47, 1, 'https://www.youtube.com/embed/jfFaHSEsxNY', '00:04:53', 1, NULL, NULL, 0, '2021-12-01 17:04:25', '2021-12-01 17:04:25'),
(233, 'default.png', 8, 'ম্যানুয়াল লগ আউট ক্রিয়েট করা', 'ম্যানুয়াল-লগ-আউট-ক্রিয়েট-করা-61a7ab652f8d0', NULL, 11, 47, 1, 'https://www.youtube.com/embed/R3CKFwNW5nI', '00:09:24', 1, NULL, NULL, 0, '2021-12-01 17:05:41', '2021-12-01 17:05:41'),
(234, 'default.png', 8, 'স্পাইনার এড করা', 'স্পাইনার-এড-করা-61a7ab90e196f', NULL, 11, 47, 1, 'https://www.youtube.com/embed/f4UJKBBw56o', '00:14:18', 1, NULL, NULL, 0, '2021-12-01 17:06:24', '2021-12-01 17:06:24'),
(235, 'default.png', 8, 'এরর হ্যান্ডেলিং পার্ট - ১', 'এরর-হ্যান্ডেলিং-পার্ট---১-61a7abc0c12fe', NULL, 11, 47, 1, 'https://www.youtube.com/embed/f3umWqoPCgQ', '00:06:03', 1, NULL, NULL, 0, '2021-12-01 17:07:12', '2021-12-01 17:07:12'),
(236, 'default.png', 8, 'এরর হ্যান্ডেলিং পার্ট - ২', 'এরর-হ্যান্ডেলিং-পার্ট---২-61a7abf1aa054', NULL, 11, 47, 1, 'https://www.youtube.com/embed/n2I9UX0IMYU', '00:09:53', 1, NULL, NULL, 0, '2021-12-01 17:08:01', '2021-12-01 17:08:01'),
(237, 'default.png', 8, 'সার্ভার ডিপ্লয় প্রসেস।', 'সার্ভার-ডিপ্লয়-প্রসেস।-61a7ac3140360', NULL, 11, 47, 1, 'https://www.youtube.com/embed/kmL-X0XH8yc', '00:15:17', 1, NULL, NULL, 0, '2021-12-01 17:09:05', '2021-12-01 17:09:05'),
(238, 'default.png', 8, 'প্রযেক্ট – ফাইনাল লঞ্চিং – ফায়ারবেজ ডিপ্লয়।', 'প্রযেক্ট-–-ফাইনাল-লঞ্চিং-–-ফায়ারবেজ-ডিপ্লয়।-61a7ac6e27897', NULL, 11, 47, 1, 'https://www.youtube.com/embed/dC42bSWwbiY', '00:10:49', 1, NULL, NULL, 0, '2021-12-01 17:10:06', '2021-12-01 17:10:06'),
(239, 'default.png', 8, 'Class 01', 'class-01-61a847a9d3c4d', NULL, 14, 48, 1, 'https://www.youtube.com/embed/-bMfjPFLLUo', '00:42:31', 1, NULL, NULL, 0, '2021-12-02 04:12:25', '2021-12-02 04:12:25'),
(240, 'default.png', 8, 'Javascript Syntax', 'javascript-syntax-61a847f61d535', NULL, 14, 48, 1, 'https://www.youtube.com/embed/Fz3OqXewoH8', '00:13:53', 1, NULL, NULL, 0, '2021-12-02 04:13:42', '2021-12-02 04:13:42'),
(241, 'default.png', 8, 'User Input', 'user-input-61a84826c9bdd', NULL, 14, 48, 1, 'https://www.youtube.com/embed/Sf0Rgfc5plU', '00:08:29', 1, NULL, NULL, 0, '2021-12-02 04:14:30', '2021-12-02 04:14:30'),
(242, 'default.png', 8, 'variable part - 01', 'variable-part---01-61a8485c93f10', NULL, 14, 48, 1, 'https://www.youtube.com/embed/dXTT5spT98Y', '00:09:07', 1, NULL, NULL, 0, '2021-12-02 04:15:24', '2021-12-02 04:15:24'),
(243, 'default.png', 8, 'Variable part  - 02', 'variable-part----02-61a8488da550e', NULL, 14, 48, 1, 'https://www.youtube.com/embed/fUWa3gwnlCU', '00:15:32', 1, NULL, NULL, 0, '2021-12-02 04:16:13', '2021-12-02 04:16:13'),
(244, 'default.png', 8, 'Variable Part - 03', 'variable-part---03-61a8491b87c2c', NULL, 14, 48, 1, 'https://www.youtube.com/embed/2VTWrE4e8sY', '00:09:19', 1, NULL, NULL, 0, '2021-12-02 04:18:35', '2021-12-02 04:18:35'),
(245, 'default.png', 8, 'JavaScript Operator', 'javascript-operator-61a849afdc9ea', NULL, 14, 48, 1, 'https://www.youtube.com/embed/AG_6A6AyUQI', '00:37:46', 1, NULL, NULL, 0, '2021-12-02 04:21:03', '2021-12-02 04:21:03'),
(246, 'default.png', 8, 'String Operator', 'string-operator-61a849e844796', NULL, 14, 48, 1, 'https://www.youtube.com/embed/xmy4-ORdIjA', '00:25:52', 1, NULL, NULL, 0, '2021-12-02 04:22:00', '2021-12-02 04:22:00'),
(247, 'default.png', 8, 'All Operator', 'all-operator-61a84a2da0944', NULL, 14, 48, 1, 'https://www.youtube.com/embed/70m_8sBlzAg', '00:39:56', 1, NULL, NULL, 0, '2021-12-02 04:23:09', '2021-12-02 04:23:09'),
(248, 'default.png', 8, 'Operator part - 02', 'operator-part---02-61a84a5bf3190', NULL, 14, 48, 1, 'https://www.youtube.com/embed/SE7tLlYiF6M', '00:05:52', 1, NULL, NULL, 0, '2021-12-02 04:23:55', '2021-12-02 04:23:55'),
(249, 'default.png', 8, 'Data Types', 'data-types-61a84a8d79184', NULL, 14, 48, 1, 'https://www.youtube.com/embed/58Gl1JCL6kc', '00:12:40', 1, NULL, NULL, 0, '2021-12-02 04:24:45', '2021-12-02 04:24:45'),
(250, 'default.png', 8, 'Number Data Type', 'number-data-type-61a84ab5e73b9', NULL, 14, 48, 1, 'https://www.youtube.com/embed/tT8mh751cok', '00:37:14', 1, NULL, NULL, 0, '2021-12-02 04:25:25', '2021-12-02 04:25:25'),
(251, 'default.png', 8, 'String Data Type', 'string-data-type-61a84ae6096fb', NULL, 14, 48, 1, 'https://www.youtube.com/embed/xXjUZvczTdY', '00:38:06', 1, NULL, NULL, 0, '2021-12-02 04:26:14', '2021-12-02 04:26:14'),
(252, 'default.png', 8, 'Boolean Data Type', 'boolean-data-type-61a84b08adc64', NULL, 14, 48, 1, 'https://www.youtube.com/embed/OnqJqBR66KE', '00:08:14', 1, NULL, NULL, 0, '2021-12-02 04:26:48', '2021-12-02 04:26:48'),
(253, 'default.png', 8, 'Array Data Type', 'array-data-type-61a84b3584df1', NULL, 14, 48, 1, 'https://www.youtube.com/embed/UtMzpJ9Fbuk', '00:36:36', 1, NULL, NULL, 0, '2021-12-02 04:27:33', '2021-12-02 04:27:33'),
(254, 'default.png', 8, 'Array Data Type - Part - 02', 'array-data-type---part---02-61a84b6639a67', NULL, 14, 48, 1, 'https://www.youtube.com/embed/uXJEFZX6j3I', '00:24:09', 1, NULL, NULL, 0, '2021-12-02 04:28:22', '2021-12-02 04:28:22'),
(255, 'default.png', 8, 'More Array and Object', 'more-array-and-object-61a84bae6b730', NULL, 14, 48, 1, 'https://www.youtube.com/embed/NSOENDN8IWQ', '00:31:12', 1, NULL, NULL, 0, '2021-12-02 04:29:34', '2021-12-02 04:29:34'),
(256, 'default.png', 8, 'Undefine Null NaN', 'undefine-null-nan-61a84be21b09f', 0, 14, 48, 1, 'https://www.youtube.com/embed/9EprfQFJ8Kw', '00:14:12', 22, NULL, NULL, 0, '2021-12-02 04:30:26', '2021-12-02 13:20:09'),
(257, 'default.png', 8, 'premetive data type and reference data type', 'premetive-data-type-and-reference-data-type-61a84c1206997', NULL, 14, 48, 1, 'https://www.youtube.com/embed/zjUdV9kUBRs', '00:10:32', 23, NULL, NULL, 0, '2021-12-02 04:31:14', '2021-12-02 13:21:52'),
(258, 'default.png', 8, 'Undefine Null NaN', 'undefine-null-nan-61a84c627b94f', NULL, 14, 48, 1, 'https://www.youtube.com/embed/9EprfQFJ8Kw', '00:14:12', 500, NULL, NULL, 0, '2021-12-02 04:32:34', '2021-12-13 16:55:05'),
(260, 'default.png', 8, 'Selma Brennan', 'selma-brennan-61a8bd65d3910', 0, 11, 32, 1, 'https://www.youtube.com/embed/0rj2A6_HUo4', 'Obcaecati consequatu', 1, 'Reiciendis harum et', 'Sunt illo assumenda', 0, '2021-12-02 12:34:45', '2021-12-02 12:37:06'),
(261, 'default.png', 8, 'Undefine Null NaN', 'undefine-null-nan-61a8c63b9fbad', NULL, 14, 48, 1, 'https://www.youtube.com/embed/9EprfQFJ8Kw', '00:14:12', 5001, NULL, NULL, 0, '2021-12-02 13:12:27', '2021-12-13 16:55:17'),
(262, 'default.png', 8, 'Control Flow', 'control-flow-61a8dfa42a9d5', NULL, 14, 48, 1, 'https://www.youtube.com/embed/pKdZBTAYZeQ', '00:14:55', 262, NULL, NULL, 0, '2021-12-02 15:00:52', '2021-12-02 15:00:52'),
(263, 'default.png', 8, 'Condition part - 01', 'condition-part---01-61a8e05bdcf0d', NULL, 14, 48, 1, 'https://www.youtube.com/embed/KNHzw-vaNh4', '00:24:12', 263, NULL, NULL, 0, '2021-12-02 15:03:55', '2021-12-02 15:03:55'),
(264, 'default.png', 8, 'Condition part - 02', 'condition-part---02-61a8e0bad71c7', NULL, 14, 48, 1, 'https://www.youtube.com/embed/HJ1FXoO6Bro', '00:19:26', 264, NULL, NULL, 0, '2021-12-02 15:05:30', '2021-12-02 15:05:30'),
(265, 'default.png', 8, 'Switch Statement', 'switch-statement-61a8e0f9313bb', NULL, 14, 48, 1, 'https://www.youtube.com/embed/GQ2hU1B4rio', '00:32:44', 265, NULL, NULL, 0, '2021-12-02 15:06:33', '2021-12-02 15:06:33'),
(266, 'default.png', 8, 'Condition Exercise', 'condition-exercise-61a8e167d68fe', NULL, 14, 48, 1, 'https://www.youtube.com/embed/EstqQd3mNFs', '00:13:26', 266, NULL, NULL, 0, '2021-12-02 15:08:23', '2021-12-02 15:08:23'),
(267, 'default.png', 8, 'JavaScript Loop', 'javascript-loop-61a8e1ac0748d', NULL, 14, 48, 1, 'https://www.youtube.com/embed/7CYrjz6m5Qk', '00:06:11', 267, NULL, NULL, 0, '2021-12-02 15:09:32', '2021-12-02 15:09:32'),
(268, 'default.png', 8, 'For Loop', 'for-loop-61a8e1f2542e9', NULL, 14, 48, 1, 'https://www.youtube.com/embed/8plfI6G8EPU', '00:36:26', 268, NULL, NULL, 0, '2021-12-02 15:10:42', '2021-12-02 15:10:42'),
(269, 'default.png', 8, 'while Loop', 'while-loop-61a8e220ca0bb', NULL, 14, 48, 1, 'https://www.youtube.com/embed/oThuz3V7eYM', '00:26:49', 269, NULL, NULL, 0, '2021-12-02 15:11:28', '2021-12-02 15:11:28'),
(270, 'default.png', 8, 'do while loop', 'do-while-loop-61a8e24dac1d9', NULL, 14, 48, 1, 'https://www.youtube.com/embed/TVJoNfuknSA', '00:07:08', 270, NULL, NULL, 0, '2021-12-02 15:12:13', '2021-12-02 15:12:13'),
(271, 'default.png', 8, 'Break and Continue', 'break-and-continue-61a8e28d9dc0d', NULL, 14, 48, 1, 'https://www.youtube.com/embed/6LCZVBWOuzg', '00:08:57', 271, NULL, NULL, 0, '2021-12-02 15:13:17', '2021-12-02 15:13:17'),
(272, 'default.png', 8, 'array traversing', 'array-traversing-61a8e2b7eebfd', NULL, 14, 48, 1, 'https://www.youtube.com/embed/c3kFwz0iXYY', '00:13:00', 272, NULL, NULL, 0, '2021-12-02 15:13:59', '2021-12-02 15:13:59'),
(273, 'default.png', 8, 'For in and For off Loop', 'for-in-and-for-off-loop-61a8e2f50e8dd', NULL, 14, 48, 1, 'https://www.youtube.com/embed/S9DLbgnjNec', '00:04:45', 273, NULL, NULL, 0, '2021-12-02 15:15:01', '2021-12-02 15:15:01'),
(274, 'default.png', 8, 'For Loop and For in Loop Part -  02', 'for-loop-and-for-in-loop-part----02-61a8e330b6fe1', NULL, 14, 48, 1, 'https://www.youtube.com/embed/JHkOJODrps4', '00:21:55', 274, NULL, NULL, 0, '2021-12-02 15:16:00', '2021-12-02 15:16:00'),
(275, 'default.png', 8, 'Function', 'function-61a8e3cc6a32d', NULL, 14, 49, 1, 'https://www.youtube.com/embed/zjR2g062BiA', '00:12:16', 275, NULL, NULL, 0, '2021-12-02 15:18:36', '2021-12-02 15:18:36'),
(276, 'default.png', 8, 'Parameter Argument And Return', 'parameter-argument-and-return-61a8e407dd9b4', NULL, 14, 49, 1, 'https://www.youtube.com/embed/vikaLG30Rrg', '00:35:19', 276, NULL, NULL, 0, '2021-12-02 15:19:35', '2021-12-02 15:19:35'),
(277, 'default.png', 8, 'Function Expression and Arow Function -ES -6', 'function-expression-and-arow-function--es--6-61a8e450abd4f', NULL, 14, 49, 1, 'https://www.youtube.com/embed/cPOVzqcCVbg', '00:15:45', 277, NULL, NULL, 0, '2021-12-02 15:20:48', '2021-12-02 15:20:48'),
(278, 'default.png', 8, 'Array Iteration Using For Each', 'array-iteration-using-for-each-61a8e497765dc', NULL, 14, 49, 1, 'https://www.youtube.com/embed/ayC1bMUb2kA', '00:36:57', 278, NULL, NULL, 0, '2021-12-02 15:21:59', '2021-12-02 15:21:59'),
(279, 'default.png', 8, 'Object Method', 'object-method-61a8e4e06c6d3', NULL, 14, 49, 1, 'https://www.youtube.com/embed/gMY4cRVQt4I', '00:17:57', 279, NULL, NULL, 0, '2021-12-02 15:23:12', '2021-12-02 15:23:12'),
(280, 'default.png', 8, 'Math Object', 'math-object-61a8e523633cb', NULL, 14, 49, 1, 'https://www.youtube.com/embed/7ArDhQZhf08', '00:12:52', 280, NULL, NULL, 0, '2021-12-02 15:24:19', '2021-12-02 15:24:19'),
(281, 'default.png', 8, 'Date Function', 'date-function-61a8e581ee749', NULL, 14, 49, 1, 'https://www.youtube.com/embed/ubaQpp2bDtI', '00:11:36', 281, NULL, NULL, 0, '2021-12-02 15:25:53', '2021-12-02 15:25:53'),
(282, 'default.png', 8, 'var let and constant Global Scope and Local Scope', 'var-let-and-constant-global-scope-and-local-scope-61a8e5f52ce45', 1, 14, 49, 1, 'https://www.youtube.com/embed/O88iUqvqqdQ', '00:37:43', 282, NULL, NULL, 0, '2021-12-02 15:27:49', '2021-12-02 15:28:03'),
(283, 'default.png', 8, 'What is Object Orinted Programing -  oop', 'what-is-object-orinted-programing----oop-61a8e8b657bfb', NULL, 14, 50, 1, 'https://www.youtube.com/embed/V7vxFuxGxn8', '00:16:17', 283, NULL, NULL, 0, '2021-12-02 15:39:34', '2021-12-02 15:39:34'),
(284, 'default.png', 8, 'Object Oriented Programming', 'object-oriented-programming-61a8e93135893', NULL, 14, 50, 1, 'https://www.youtube.com/embed/gwTovy0voV0', '00:44:06', 284, NULL, NULL, 0, '2021-12-02 15:41:37', '2021-12-02 15:41:37'),
(285, 'default.png', 8, 'Sub Class and Inheritance', 'sub-class-and-inheritance-61a8e9569d004', NULL, 14, 50, 1, 'https://www.youtube.com/embed/Q0Mu4F1zjtc', '00:30:14', 285, NULL, NULL, 0, '2021-12-02 15:42:14', '2021-12-02 15:42:14'),
(286, 'default.png', 8, 'Static Function', 'static-function-61a8e97c27f3c', NULL, 14, 50, 1, 'https://www.youtube.com/embed/5WgxQVyU6Ag', '00:08:15', 286, NULL, NULL, 0, '2021-12-02 15:42:52', '2021-12-02 15:42:52'),
(287, 'default.png', 8, 'What is DOM -  Document Object Model', 'what-is-dom----document-object-model-61a8e9c8b1441', NULL, 14, 50, 1, 'https://www.youtube.com/embed/Sef-BCD8mmY', '00:13:28', 287, NULL, NULL, 0, '2021-12-02 15:44:08', '2021-12-02 15:44:08'),
(288, 'default.png', 8, 'Exploring in DOM', 'exploring-in-dom-61a8e9ef0a215', NULL, 14, 50, 1, 'https://www.youtube.com/embed/DpY8Ak2OWvk', '00:32:51', 288, NULL, NULL, 0, '2021-12-02 15:44:47', '2021-12-02 15:44:47'),
(289, 'default.png', 8, 'Dom Selector Single Element', 'dom-selector-single-element-61a8ea191a761', NULL, 14, 50, 1, 'https://www.youtube.com/embed/w0Yaci8OTyk', '00:45:42', 289, NULL, NULL, 0, '2021-12-02 15:45:29', '2021-12-02 15:45:29'),
(290, 'default.png', 8, 'Dom Selector Multiple Element', 'dom-selector-multiple-element-61a8ea3ca437d', NULL, 14, 50, 1, 'https://www.youtube.com/embed/NYw5IeJC4w4', '00:22:41', 290, NULL, NULL, 0, '2021-12-02 15:46:04', '2021-12-02 15:46:04'),
(291, 'default.png', 8, 'Dom Selector Multiple Element -  Part - 02', 'dom-selector-multiple-element----part---02-61a8ea7cd5b1c', NULL, 14, 50, 1, 'https://www.youtube.com/embed/UzzQgK6kcy8', '00:16:08', 291, NULL, NULL, 0, '2021-12-02 15:47:08', '2021-12-02 15:47:08'),
(292, 'default.png', 8, 'Traversing', 'traversing-61a8ea9fd38de', NULL, 14, 50, 1, 'https://www.youtube.com/embed/bZz67yEc8nM', '00:43:02', 292, NULL, NULL, 0, '2021-12-02 15:47:43', '2021-12-02 15:47:43'),
(293, 'default.png', 8, 'Add Replace and Remove Element', 'add-replace-and-remove-element-61a8ead2cb2e2', NULL, 14, 50, 1, 'https://www.youtube.com/embed/WHsay6PSwpc', '00:27:49', 293, NULL, NULL, 0, '2021-12-02 15:48:34', '2021-12-02 15:48:34'),
(294, 'default.png', 8, 'Add Replace and Remove Element part - 2', 'add-replace-and-remove-element-part---2-61a8eafd2b1b9', NULL, 14, 50, 1, 'https://www.youtube.com/embed/YbU8uoVj4AA', '00:19:30', 294, NULL, NULL, 0, '2021-12-02 15:49:17', '2021-12-02 15:49:17'),
(295, 'default.png', 8, 'JavaScript DOM Event', 'javascript-dom-event-61a8eb38ea599', NULL, 14, 50, 1, 'https://www.youtube.com/embed/sm4o6_I_E6U', '00:45:38', 295, NULL, NULL, 0, '2021-12-02 15:50:16', '2021-12-02 15:50:16'),
(296, 'default.png', 8, 'More on Events', 'more-on-events-61a8eb5e72e7c', NULL, 14, 50, 1, 'https://www.youtube.com/embed/Gj40nbG76QU', '00:11:39', 296, NULL, NULL, 0, '2021-12-02 15:50:54', '2021-12-02 15:50:54'),
(297, 'default.png', 8, 'Error Handling', 'error-handling-61a8eb90196e9', NULL, 14, 50, 1, 'https://www.youtube.com/embed/peBZ4bWUzl0', '00:16:35', 297, NULL, NULL, 0, '2021-12-02 15:51:44', '2021-12-02 15:51:44'),
(298, 'default.png', 8, 'Regular Expression', 'regular-expression-61a8ebd25b3fb', NULL, 14, 50, 1, 'https://www.youtube.com/embed/9ZPxrDogcyY', '00:38:59', 298, NULL, NULL, 0, '2021-12-02 15:52:50', '2021-12-02 15:52:50'),
(299, 'default.png', 8, 'Regula Expression Literal and Meta Character', 'regula-expression-literal-and-meta-character-61a8ec1b8ce9e', NULL, 14, 50, 1, 'https://www.youtube.com/embed/VqNvFMpv_n4', '00:32:19', 299, NULL, NULL, 0, '2021-12-02 15:54:03', '2021-12-02 15:54:03'),
(300, 'default.png', 8, 'Regular Expression Chrecter Set Using Brackets', 'regular-expression-chrecter-set-using-brackets-61a8ec3ee9b9f', NULL, 14, 50, 1, 'https://www.youtube.com/embed/6QVIk2hR8qA', '00:29:00', 300, NULL, NULL, 0, '2021-12-02 15:54:38', '2021-12-02 15:54:38'),
(301, 'default.png', 8, 'Regular Expression Quantifier and Groping', 'regular-expression-quantifier-and-groping-61a8ec706a85b', NULL, 14, 50, 1, 'https://www.youtube.com/embed/5Dzmgn6q4WA', '00:23:07', 301, NULL, NULL, 0, '2021-12-02 15:55:28', '2021-12-02 15:55:28'),
(302, 'default.png', 8, 'Shorthand Characters And Assertions', 'shorthand-characters-and-assertions-61a8ec9f16947', NULL, 14, 50, 1, 'https://www.youtube.com/embed/GZSYwB6283s', '00:22:26', 302, NULL, NULL, 0, '2021-12-02 15:56:15', '2021-12-02 15:56:15'),
(303, 'default.png', 8, 'Regula Expression Assertions', 'regula-expression-assertions-61a8ed16ce4e5', NULL, 14, 50, 1, 'https://www.youtube.com/embed/Zr8eOfrpaCY', '00:07:19', 303, NULL, NULL, 0, '2021-12-02 15:58:14', '2021-12-02 15:58:14'),
(304, 'default.png', 8, 'Regula Expression Last Part Some Example', 'regula-expression-last-part-some-example-61a8ed4bce9a4', NULL, 14, 50, 1, 'https://www.youtube.com/embed/0VcfRWzTLTM', '00:35:31', 304, NULL, NULL, 0, '2021-12-02 15:59:07', '2021-12-02 15:59:07'),
(305, 'default.png', 8, 'Jason Intro !', 'jason-intro-!-61a8edd5ea3b1', NULL, 14, 51, 1, 'https://www.youtube.com/embed/5RdeVyCzyTM', '00:05:15', 305, NULL, NULL, 0, '2021-12-02 16:01:25', '2021-12-02 16:01:25'),
(306, 'default.png', 8, 'Json Syntax', 'json-syntax-61a8ee16e1146', NULL, 14, 51, 1, 'https://www.youtube.com/embed/JfiIflYL1JE', '00:09:54', 306, NULL, NULL, 0, '2021-12-02 16:02:30', '2021-12-02 16:02:30'),
(307, 'default.png', 8, 'JSON Data Types', 'json-data-types-61a8ee49de64b', NULL, 14, 51, 1, 'https://www.youtube.com/embed/pmASIP_Opxo', '00:11:12', 307, NULL, NULL, 0, '2021-12-02 16:03:21', '2021-12-02 16:03:21'),
(308, 'default.png', 8, 'JSON Warning !', 'json-warning-!-61a8ee72aa741', NULL, 14, 51, 1, 'https://www.youtube.com/embed/y_mVd2r-nKw', '00:09:42', 308, NULL, NULL, 0, '2021-12-02 16:04:02', '2021-12-02 16:04:02'),
(309, 'default.png', 8, 'json object and array', 'json-object-and-array-61a8eec1db0ef', NULL, 14, 51, 1, 'https://www.youtube.com/embed/tzi8JEUPFT0', '00:25:00', 309, NULL, NULL, 0, '2021-12-02 16:05:21', '2021-12-02 16:05:21'),
(310, 'default.png', 8, 'AJAX Asynchronous Programing And XML', 'ajax-asynchronous-programing-and-xml-61a8f1571f0c0', NULL, 14, 52, 1, 'https://www.youtube.com/embed/bcupqHaJbYM', '00:46:36', 310, NULL, NULL, 0, '2021-12-02 16:16:23', '2021-12-02 16:16:23'),
(311, 'default.png', 8, 'AJAX Data Form Extremal Server', 'ajax-data-form-extremal-server-61a8f1898e8dd', NULL, 14, 52, 1, 'https://www.youtube.com/embed/EF_7Wz-A91M', '00:35:55', 311, NULL, NULL, 0, '2021-12-02 16:17:13', '2021-12-02 16:17:13'),
(312, 'default.png', 8, 'AJAX Data From Extremal Server Part -02', 'ajax-data-from-extremal-server-part--02-61a8f1be3a3bf', NULL, 14, 52, 1, 'https://www.youtube.com/embed/RlgIBuWEaEc', '00:18:47', 312, NULL, NULL, 0, '2021-12-02 16:18:06', '2021-12-02 16:18:06'),
(313, 'default.png', 8, 'Callback Function', 'callback-function-61a8f1f62f2f7', NULL, 14, 52, 1, 'https://www.youtube.com/embed/NWGbe0yZm14', '00:34:21', 313, NULL, NULL, 0, '2021-12-02 16:19:02', '2021-12-02 16:19:02'),
(314, 'default.png', 8, 'JavaScript Promess', 'javascript-promess-61a8f226051d4', NULL, 14, 52, 1, 'https://www.youtube.com/embed/wgqSwCsbNOk', '00:20:21', 314, NULL, NULL, 0, '2021-12-02 16:19:50', '2021-12-02 16:19:50'),
(315, 'default.png', 8, 'Fetch API', 'fetch-api-61a8f253db673', NULL, 14, 52, 1, 'https://www.youtube.com/embed/mKiaK1PCkgI', '00:24:57', 315, NULL, NULL, 0, '2021-12-02 16:20:35', '2021-12-02 16:20:35'),
(316, 'default.png', 8, 'Congratulation', 'congratulation-61a8f278b9257', NULL, 14, 52, 1, 'https://www.youtube.com/embed/tz1KC1F09dU', '00:04:54', 316, NULL, NULL, 0, '2021-12-02 16:21:12', '2021-12-02 16:21:12'),
(317, 'default.png', 8, 'Intro !', 'intro-!-61a8f340d22c8', NULL, 14, 53, 1, 'https://www.youtube.com/embed/DDR7XD0tKv0', '00:01:41', 317, NULL, NULL, 0, '2021-12-02 16:24:32', '2021-12-02 16:24:32'),
(318, 'default.png', 8, 'Part - 01', 'part---01-61a8f36ee65e9', NULL, 14, 53, 1, 'https://www.youtube.com/embed/Smt90d6h2x8', '00:07:18', 318, NULL, NULL, 0, '2021-12-02 16:25:18', '2021-12-02 16:25:18'),
(319, 'default.png', 8, 'Part - 02', 'part---02-61a8f394813e6', NULL, 14, 53, 1, 'https://www.youtube.com/embed/Gl3exZXcfKs', '00:34:06', 319, NULL, NULL, 0, '2021-12-02 16:25:56', '2021-12-02 16:25:56'),
(320, 'default.png', 8, 'Part - 03', 'part---03-61a8f3c534ad7', NULL, 14, 53, 1, 'https://www.youtube.com/embed/22XdA3b-OBo', '00:43:35', 320, NULL, NULL, 0, '2021-12-02 16:26:45', '2021-12-02 16:26:45'),
(321, 'default.png', 8, 'Part - 04', 'part---04-61a8f3fc2b3a3', NULL, 14, 53, 1, 'https://www.youtube.com/embed/tWa1ZeGGWlQ', '00:12:04', 321, NULL, NULL, 0, '2021-12-02 16:27:40', '2021-12-02 16:27:40'),
(322, 'default.png', 8, 'Project Intro !', 'project-intro-!-61a8f47211d3a', NULL, 14, 54, 1, 'https://www.youtube.com/embed/oEU6w_wspdg', '00:01:17', 322, NULL, NULL, 0, '2021-12-02 16:29:38', '2021-12-02 16:29:38'),
(323, 'default.png', 8, 'Part - 01', 'part---01-61a8f4a2eefc4', NULL, 14, 54, 1, 'https://www.youtube.com/embed/UrEM0Q6att4', '00:10:54', 323, NULL, NULL, 0, '2021-12-02 16:30:26', '2021-12-02 16:30:26'),
(324, 'default.png', 8, 'Next Part', 'next-part-61a8f4de99535', NULL, 14, 54, 1, 'https://www.youtube.com/embed/s8aVlMyIfd8', '00:43:35', 324, NULL, NULL, 0, '2021-12-02 16:31:26', '2021-12-02 16:31:26'),
(325, 'default.png', 8, 'Next Part', 'next-part-61a8f565a20c6', NULL, 14, 54, 1, 'https://www.youtube.com/embed/k7MVTlDwVPM', '00:24:28', 325, NULL, NULL, 0, '2021-12-02 16:33:41', '2021-12-02 16:33:41');
INSERT INTO `courselessions` (`id`, `image`, `user_id`, `lession_name`, `slug`, `lock`, `course_id`, `coursesection_id`, `video_type`, `video_url`, `video_duration`, `orderby`, `summary`, `details`, `status`, `created_at`, `updated_at`) VALUES
(326, 'default.png', 8, 'Some Problem Solve', 'some-problem-solve-61a8f7de0fd8e', NULL, 14, 54, 1, 'https://www.youtube.com/embed/MtzXJJ3k_P8', '00:05:00', 326, NULL, NULL, 0, '2021-12-02 16:44:14', '2021-12-02 16:44:14'),
(327, 'default.png', 8, 'Book List Project Running Part', 'book-list-project-running-part-61a8f941303ff', NULL, 14, 54, 1, 'https://www.youtube.com/embed/y2gD7XNm-vI', '00:18:39', 327, NULL, NULL, 0, '2021-12-02 16:50:09', '2021-12-02 16:50:09'),
(328, 'default.png', 8, 'Book List Project Bug Fixing', 'book-list-project-bug-fixing-61a8fa313ca97', NULL, 14, 54, 1, 'https://www.youtube.com/embed/5pFhAk4HD1A', '00:07:36', 328, NULL, NULL, 0, '2021-12-02 16:54:09', '2021-12-02 16:54:09'),
(329, 'default.png', 8, 'Add Local Storage', 'add-local-storage-61a8fb349f958', NULL, 14, 54, 1, 'https://www.youtube.com/embed/WB8-0TWlXhw', '00:22:16', 329, NULL, NULL, 0, '2021-12-02 16:58:28', '2021-12-02 16:58:28'),
(330, 'default.png', 8, 'Delete Local Store', 'delete-local-store-61a8fbfa5dfef', NULL, 14, 54, 1, 'https://www.youtube.com/embed/othiM1lUun4', '00:09:27', 330, NULL, NULL, 0, '2021-12-02 17:01:46', '2021-12-02 17:01:46'),
(331, 'default.png', 8, 'Arrow Function Call Back Function', 'arrow-function-call-back-function-61a9bae675cbb', NULL, 14, 55, 1, 'https://www.youtube.com/embed/F4LUngt7nf4', '00:26:41', 331, NULL, NULL, 0, '2021-12-03 06:36:22', '2021-12-03 06:36:22'),
(332, 'default.png', 8, 'Template Litarals', 'template-litarals-61a9bb163fcbc', NULL, 14, 55, 1, 'https://www.youtube.com/embed/yLnxhWj82aQ', '00:10:40', 332, NULL, NULL, 0, '2021-12-03 06:37:10', '2021-12-03 06:37:10'),
(333, 'default.png', 8, 'Array Distructing', 'array-distructing-61a9bb3ba55e3', NULL, 14, 55, 1, 'https://www.youtube.com/embed/7aT5oCZd3Ow', '00:08:59', 333, NULL, NULL, 0, '2021-12-03 06:37:47', '2021-12-03 06:37:47'),
(334, 'default.png', 8, 'Swap Variable', 'swap-variable-61a9bb626381c', NULL, 14, 55, 1, 'https://www.youtube.com/embed/rRIo3h_knec', '00:03:22', 334, NULL, NULL, 0, '2021-12-03 06:38:26', '2021-12-03 06:38:26'),
(335, 'default.png', 8, 'Object Distructing', 'object-distructing-61a9bb8a030f8', NULL, 14, 55, 1, 'https://www.youtube.com/embed/VEoBwZZs7W4', '00:09:50', 335, NULL, NULL, 0, '2021-12-03 06:39:06', '2021-12-03 06:39:06'),
(336, 'default.png', 8, 'Spread Operator', 'spread-operator-61a9bbade2040', NULL, 14, 55, 1, 'https://www.youtube.com/embed/b8ATKzDJlcc', '00:09:41', 336, NULL, NULL, 0, '2021-12-03 06:39:41', '2021-12-03 06:39:41'),
(337, 'default.png', 8, 'Spread Operator With Function Parameter', 'spread-operator-with-function-parameter-61a9bbd99b76e', NULL, 14, 55, 1, 'https://www.youtube.com/embed/QrZu7962c40', '00:06:36', 337, NULL, NULL, 0, '2021-12-03 06:40:25', '2021-12-03 06:40:25'),
(338, 'default.png', 8, 'Rest Operator', 'rest-operator-61a9bc02b8a19', NULL, 14, 55, 1, 'https://www.youtube.com/embed/jGBo3GuZTSw', '00:20:10', 338, NULL, NULL, 0, '2021-12-03 06:41:06', '2021-12-03 06:41:06'),
(339, 'default.png', 8, 'Symbols', 'symbols-61a9bc2b07bd2', NULL, 14, 55, 1, 'https://www.youtube.com/embed/-IApBMa5l08', '00:10:56', 339, NULL, NULL, 0, '2021-12-03 06:41:47', '2021-12-03 06:41:47'),
(340, 'default.png', 8, 'Itarator', 'itarator-61a9bc53b055f', NULL, 14, 55, 1, 'https://www.youtube.com/embed/NXqN8QEuakc', '00:21:42', 340, NULL, NULL, 0, '2021-12-03 06:42:27', '2021-12-03 06:42:27'),
(341, 'default.png', 8, 'Genarator', 'genarator-61a9bc77173fe', NULL, 14, 55, 1, 'https://www.youtube.com/embed/NtYL8Q-wsJU', '00:05:04', 341, NULL, NULL, 0, '2021-12-03 06:43:03', '2021-12-03 06:43:03'),
(342, 'default.png', 8, 'Promeses', 'promeses-61a9bc9b51d76', NULL, 14, 55, 1, 'https://www.youtube.com/embed/rHl_5zFJlbw', '00:16:16', 342, NULL, NULL, 0, '2021-12-03 06:43:39', '2021-12-03 06:43:39'),
(343, 'default.png', 8, 'Set', 'set-61a9bcc3cb8f2', NULL, 14, 55, 1, 'https://www.youtube.com/embed/g4k5psr3j0w', '00:15:25', 343, NULL, NULL, 0, '2021-12-03 06:44:19', '2021-12-03 06:44:19'),
(344, 'default.png', 8, 'Map', 'map-61a9bce89e13c', NULL, 14, 55, 1, 'https://www.youtube.com/embed/Pqz0jOwMt2o', '00:12:43', 344, NULL, NULL, 0, '2021-12-03 06:44:56', '2021-12-03 06:44:56'),
(345, 'default.png', 8, 'Global Scope and Local Scope', 'global-scope-and-local-scope-61a9bd149baf3', NULL, 14, 55, 1, 'https://www.youtube.com/embed/6x_W-TH02ZM', '00:30:13', 345, NULL, NULL, 0, '2021-12-03 06:45:40', '2021-12-03 06:45:40'),
(346, 'default.png', 8, 'Final Conclution', 'final-conclution-61a9bd3634ec2', NULL, 14, 55, 1, 'https://www.youtube.com/embed/kvIebJ7BaLw', '00:05:03', 346, NULL, NULL, 0, '2021-12-03 06:46:14', '2021-12-03 06:46:14'),
(347, 'default.png', 8, 'Part  - 01', 'part----01-61a9d8f888338', 1, 15, 56, 1, 'https://www.youtube.com/embed/MqHfOJhDpmg', '00:13:38', 347, NULL, NULL, 0, '2021-12-03 08:44:40', '2021-12-03 08:44:40'),
(348, 'default.png', 8, 'Part  - 02', 'part----02-61a9d91d6e443', NULL, 15, 56, 1, 'https://www.youtube.com/embed/H6RsWbj0KGY', '00:09:20', 348, NULL, NULL, 0, '2021-12-03 08:45:17', '2021-12-03 08:45:17'),
(349, 'default.png', 8, 'Part - 03', 'part---03-61a9d9411f84f', 1, 15, 56, 1, 'https://www.youtube.com/embed/x0Do0CBtLyY', '00:09:38', 349, NULL, NULL, 0, '2021-12-03 08:45:53', '2021-12-03 08:45:53'),
(350, 'default.png', 8, 'Part - 04', 'part---04-61a9d96c39d34', 1, 15, 56, 1, 'https://www.youtube.com/embed/iiF5LI0U0vE', '00:09:30', 350, NULL, NULL, 0, '2021-12-03 08:46:36', '2021-12-03 08:46:36'),
(351, 'default.png', 8, 'Part - 05', 'part---05-61a9d9900896c', NULL, 15, 56, 1, 'https://www.youtube.com/embed/mF8mz7sP9PQ', '00:08:52', 351, NULL, NULL, 0, '2021-12-03 08:47:12', '2021-12-03 08:47:12'),
(352, 'default.png', 8, 'Part - 06', 'part---06-61a9d9bdcc435', 1, 15, 56, 1, 'https://www.youtube.com/embed/K4zxMZnzTu4', '00:12:44', 352, NULL, NULL, 0, '2021-12-03 08:47:57', '2021-12-03 08:47:57'),
(353, 'default.png', 8, 'Part - 07', 'part---07-61a9d9f522c41', NULL, 15, 56, 1, 'https://www.youtube.com/embed/hxEuGu0r0lY', '00:08:18', 353, NULL, NULL, 0, '2021-12-03 08:48:53', '2021-12-03 08:48:53'),
(354, 'default.png', 8, 'Part - 08', 'part---08-61a9da5d2af25', NULL, 15, 56, 1, 'https://www.youtube.com/embed/0WeIOZ5MVvg', '00:17:01', 354, NULL, NULL, 0, '2021-12-03 08:50:37', '2021-12-03 08:50:37'),
(355, 'default.png', 8, 'Part  - 09', 'part----09-61a9da84d81aa', NULL, 15, 56, 1, 'https://www.youtube.com/embed/sQ8gh2Oy-SE', '00:23:54', 355, NULL, NULL, 0, '2021-12-03 08:51:16', '2021-12-03 08:51:16'),
(356, 'default.png', 8, 'Part - 10', 'part---10-61a9daad65b4d', NULL, 15, 56, 1, 'https://www.youtube.com/embed/VdM77g0-OVA', '00:19:23', 356, NULL, NULL, 0, '2021-12-03 08:51:57', '2021-12-03 08:51:57'),
(357, 'default.png', 8, 'Part  - 11', 'part----11-61a9dadc7eef8', NULL, 15, 56, 1, 'https://www.youtube.com/embed/_zs0W5GIJU0', '00:15:57', 357, NULL, NULL, 0, '2021-12-03 08:52:44', '2021-12-03 08:52:44'),
(358, 'default.png', 8, 'Part  - 12', 'part----12-61a9dafd5c65e', NULL, 15, 56, 1, 'https://www.youtube.com/embed/6MXAGfkKJuA', '00:12:47', 358, NULL, NULL, 0, '2021-12-03 08:53:17', '2021-12-03 08:53:17'),
(359, 'default.png', 8, 'Part  - 13', 'part----13-61a9db25daa09', NULL, 15, 56, 1, 'https://www.youtube.com/embed/by6A7X49kkk', '00:56:52', 359, NULL, NULL, 0, '2021-12-03 08:53:57', '2021-12-03 08:53:57'),
(360, 'default.png', 8, 'Part - 14', 'part---14-61a9db592f94c', NULL, 15, 56, 1, 'https://www.youtube.com/embed/eXPzf7JoXOY', '00:24:44', 360, NULL, NULL, 0, '2021-12-03 08:54:49', '2021-12-03 08:54:49'),
(361, 'default.png', 8, 'Part  - 15', 'part----15-61a9db8b4cecc', NULL, 15, 56, 1, 'https://www.youtube.com/embed/1lUpfcDVnWU', '00:26:47', 361, NULL, NULL, 0, '2021-12-03 08:55:39', '2021-12-03 08:55:39'),
(362, 'default.png', 8, 'Part  - 16', 'part----16-61a9dbb8654d2', NULL, 15, 56, 1, 'https://www.youtube.com/embed/i2D6aN_u_vg', '00:39:21', 362, NULL, NULL, 0, '2021-12-03 08:56:24', '2021-12-03 08:56:24'),
(363, 'default.png', 8, 'Part - 17', 'part---17-61a9dbe605f30', NULL, 15, 56, 1, 'https://www.youtube.com/embed/0ZMTdsh9zjE', '00:27:58', 363, NULL, NULL, 0, '2021-12-03 08:57:10', '2021-12-03 08:57:10'),
(364, 'default.png', 8, 'Part  - 18', 'part----18-61a9dc1f98648', NULL, 15, 56, 1, 'https://www.youtube.com/embed/olMifhC173k', '00:44:29', 364, NULL, NULL, 0, '2021-12-03 08:58:07', '2021-12-03 08:58:07'),
(365, 'default.png', 8, 'Part - 19', 'part---19-61a9dc489ea53', NULL, 15, 56, 1, 'https://www.youtube.com/embed/wfe-0DFF6i0', '00:10:19', 365, NULL, NULL, 0, '2021-12-03 08:58:48', '2021-12-03 08:58:48'),
(366, 'default.png', 8, 'Part  - 20', 'part----20-61a9dc76e0d4f', NULL, 15, 56, 1, 'https://www.youtube.com/embed/2GEC2b8vZnI', '00:17:31', 366, NULL, NULL, 0, '2021-12-03 08:59:34', '2021-12-03 08:59:34'),
(367, 'default.png', 8, 'What is Bootstrap ?', 'what-is-bootstrap-?-61a9ddec22c2a', NULL, 15, 57, 1, 'https://www.youtube.com/embed/YjuzJk1p4Vg', '00:26:22', 367, NULL, NULL, 0, '2021-12-03 09:05:48', '2021-12-03 09:05:48'),
(368, 'default.png', 8, 'Part - 01', 'part---01-61a9ff24bae22', NULL, 15, 57, 1, 'https://www.youtube.com/embed/HXh_O2PRDsc', '00:15:39', 368, NULL, NULL, 0, '2021-12-03 11:27:32', '2021-12-03 11:27:32'),
(369, 'default.png', 8, 'Part - 02', 'part---02-61a9ff48e8469', NULL, 15, 57, 1, 'https://www.youtube.com/embed/qgll6vbSK50', '00:06:09', 369, NULL, NULL, 0, '2021-12-03 11:28:08', '2021-12-03 11:28:08'),
(370, 'default.png', 8, 'Part - 03', 'part---03-61a9ff6e8d2ae', NULL, 15, 57, 1, 'https://www.youtube.com/embed/k6n-VajYrGA', '00:09:23', 370, NULL, NULL, 0, '2021-12-03 11:28:46', '2021-12-03 11:28:46'),
(371, 'default.png', 8, 'Part - 04', 'part---04-61a9ff8ea6c58', NULL, 15, 57, 1, 'https://www.youtube.com/embed/wzGrc-qsa5c', '00:19:00', 371, NULL, NULL, 0, '2021-12-03 11:29:18', '2021-12-03 11:29:18'),
(372, 'default.png', 8, 'Part - 05', 'part---05-61a9ffb70734c', NULL, 15, 57, 1, 'https://www.youtube.com/embed/Zjz1wZSIbR4', '00:20:09', 372, NULL, NULL, 0, '2021-12-03 11:29:59', '2021-12-03 11:29:59'),
(373, 'default.png', 8, 'Part - 06', 'part---06-61a9ffe353dc3', NULL, 15, 57, 1, 'https://www.youtube.com/embed/TqwjrIrIOkk', '00:06:06', 373, NULL, NULL, 0, '2021-12-03 11:30:43', '2021-12-03 11:30:43'),
(374, 'default.png', 8, 'Part - 07', 'part---07-61aa000b0bccf', NULL, 15, 57, 1, 'https://www.youtube.com/embed/8zETLIrvU0E', '00:20:02', 374, NULL, NULL, 0, '2021-12-03 11:31:23', '2021-12-03 11:31:23'),
(375, 'default.png', 8, 'Part  - 08', 'part----08-61aa00425522b', NULL, 15, 57, 1, 'https://www.youtube.com/embed/Oks2O6mNBRM', '00:20:28', 375, NULL, NULL, 0, '2021-12-03 11:32:18', '2021-12-03 11:32:18'),
(376, 'default.png', 8, 'Part - 09', 'part---09-61aa006d6b9b1', NULL, 15, 57, 1, 'https://www.youtube.com/embed/k4TvNpnXGy0', '00:17:11', 376, NULL, NULL, 0, '2021-12-03 11:33:01', '2021-12-03 11:33:01'),
(377, 'default.png', 8, 'Part - 10', 'part---10-61aa008d94c6f', NULL, 15, 57, 1, 'https://www.youtube.com/embed/x5IOkGfW2D4', '00:18:19', 377, NULL, NULL, 0, '2021-12-03 11:33:33', '2021-12-03 11:33:33'),
(378, 'default.png', 8, 'Part - 11', 'part---11-61aa00ae5c723', NULL, 15, 57, 1, 'https://www.youtube.com/embed/5F2tZIKqCU4', '00:09:48', 378, NULL, NULL, 0, '2021-12-03 11:34:06', '2021-12-03 11:34:06'),
(379, 'default.png', 8, 'Part - 12', 'part---12-61aa00cf22e08', NULL, 15, 57, 1, 'https://www.youtube.com/embed/DycE6Y6-vjc', '00:14:55', 379, NULL, NULL, 0, '2021-12-03 11:34:39', '2021-12-03 11:34:39'),
(380, 'default.png', 8, 'Part - 13', 'part---13-61aa00fca8326', NULL, 15, 57, 1, 'https://www.youtube.com/embed/bv8qWzhtP8k', '00:11:07', 380, NULL, NULL, 0, '2021-12-03 11:35:24', '2021-12-03 11:35:24'),
(381, 'default.png', 8, 'Part - 14', 'part---14-61aa012012e7e', NULL, 15, 57, 1, 'https://www.youtube.com/embed/NjLy2e0zj6U', '00:13:48', 381, NULL, NULL, 0, '2021-12-03 11:36:00', '2021-12-03 11:36:00'),
(382, 'default.png', 8, 'Part - 15', 'part---15-61aa01416050a', NULL, 15, 57, 1, 'https://www.youtube.com/embed/LE2GM6mu7YY', '00:17:10', 382, NULL, NULL, 0, '2021-12-03 11:36:33', '2021-12-03 11:36:33'),
(383, 'default.png', 8, 'Part - 16', 'part---16-61aa016151456', NULL, 15, 57, 1, 'https://www.youtube.com/embed/wfhxmPMOc7A', '00:04:03', 383, NULL, NULL, 0, '2021-12-03 11:37:05', '2021-12-03 11:37:05'),
(384, 'default.png', 8, 'Part - 17', 'part---17-61aa018dc7704', NULL, 15, 57, 1, 'https://www.youtube.com/embed/11w88YoEqP8', '00:17:03', 384, NULL, NULL, 0, '2021-12-03 11:37:49', '2021-12-03 11:37:49'),
(385, 'default.png', 8, 'Part - 18', 'part---18-61aa01b40b811', NULL, 15, 57, 1, 'https://www.youtube.com/embed/bgLspZS7qp0', '00:15:13', 385, NULL, NULL, 0, '2021-12-03 11:38:28', '2021-12-03 11:38:28'),
(386, 'default.png', 8, 'Part - 19', 'part---19-61aa01e1c51d3', NULL, 15, 57, 1, 'https://www.youtube.com/embed/uPKQk020lBU', '00:15:06', 386, NULL, NULL, 0, '2021-12-03 11:39:13', '2021-12-03 11:39:13'),
(387, 'default.png', 8, 'Part - 20', 'part---20-61aa020548441', NULL, 15, 57, 1, 'https://www.youtube.com/embed/PzxWuDs9F-U', '00:16:01', 387, NULL, NULL, 0, '2021-12-03 11:39:49', '2021-12-03 11:39:49'),
(388, 'default.png', 8, 'Part - 21', 'part---21-61aa022d9eeba', NULL, 15, 57, 1, 'https://www.youtube.com/embed/Y_oidFw0boQ', '00:29:38', 388, NULL, NULL, 0, '2021-12-03 11:40:29', '2021-12-03 11:40:29'),
(389, 'default.png', 8, 'How To Install Photoshop', 'how-to-install-photoshop-61aa03b7daa68', 1, 15, 58, 1, 'https://www.youtube.com/embed/0jHXJwmQb2I', '00:13:01', 389, NULL, NULL, 0, '2021-12-03 11:47:03', '2021-12-03 11:47:03'),
(390, 'default.png', 8, 'Psd To Html With Bootstrap Part - 01', 'psd-to-html-with-bootstrap-part---01-61aa052a96af6', NULL, 15, 58, 1, 'https://www.youtube.com/embed/R30eXQyst08', '00:16:58', 390, NULL, NULL, 0, '2021-12-03 11:53:14', '2021-12-03 11:53:14'),
(391, 'default.png', 8, 'Psd To Html With Bootstrap Part - 02', 'psd-to-html-with-bootstrap-part---02-61aa055f9b87a', NULL, 15, 58, 1, 'https://www.youtube.com/embed/I80Lmy9xQPM', '00:14:50', 391, NULL, NULL, 0, '2021-12-03 11:54:07', '2021-12-03 11:54:07'),
(392, 'default.png', 8, 'Psd To Html With Bootstrap Part - 03', 'psd-to-html-with-bootstrap-part---03-61aa05950b3d5', NULL, 15, 58, 1, 'https://www.youtube.com/embed/VZP1QZGluvQ', '00:37:28', 392, NULL, NULL, 0, '2021-12-03 11:55:01', '2021-12-03 11:55:01'),
(393, 'default.png', 8, 'Psd To Html With Bootstrap Part - 04', 'psd-to-html-with-bootstrap-part---04-61aa05d82e5dc', NULL, 15, 58, 1, 'https://www.youtube.com/embed/s-MmHSwMTRs', '00:45:31', 393, NULL, NULL, 0, '2021-12-03 11:56:08', '2021-12-03 11:56:08'),
(394, 'default.png', 8, 'Psd To Html With Bootstrap Part - 05', 'psd-to-html-with-bootstrap-part---05-61aa064934012', NULL, 15, 58, 1, 'https://www.youtube.com/embed/JfnKhtKKBPI', '00:14:20', 394, NULL, NULL, 0, '2021-12-03 11:58:01', '2021-12-03 11:58:01'),
(395, 'default.png', 8, 'Psd To Html With Bootstrap Part - 06', 'psd-to-html-with-bootstrap-part---06-61aa0673e71ae', NULL, 15, 58, 1, 'https://www.youtube.com/embed/u_ZEIKzwwog', '00:23:20', 395, NULL, NULL, 0, '2021-12-03 11:58:43', '2021-12-03 11:58:43'),
(396, 'default.png', 8, 'Psd To Html With Bootstrap Part - 07', 'psd-to-html-with-bootstrap-part---07-61aa069dd61e7', NULL, 15, 58, 1, 'https://www.youtube.com/embed/1a8vakj9f1s', '00:24:40', 396, NULL, NULL, 0, '2021-12-03 11:59:25', '2021-12-03 11:59:25'),
(397, 'default.png', 8, 'Psd To Html With Bootstrap Part - 08', 'psd-to-html-with-bootstrap-part---08-61aa06c56146d', NULL, 15, 58, 1, 'https://www.youtube.com/embed/igUctSAYjfY', '00:41:07', 397, NULL, NULL, 0, '2021-12-03 12:00:05', '2021-12-03 12:00:05'),
(398, 'default.png', 8, 'Psd To Html With Bootstrap Part - 09', 'psd-to-html-with-bootstrap-part---09-61aa070269e89', NULL, 15, 58, 1, 'https://www.youtube.com/embed/0_vb3u_UIHw', '00:37:07', 398, NULL, NULL, 0, '2021-12-03 12:01:06', '2021-12-03 12:01:06'),
(399, 'default.png', 8, 'Psd To Html With Bootstrap Part - 10', 'psd-to-html-with-bootstrap-part---10-61aa074157bd8', NULL, 15, 58, 1, 'https://www.youtube.com/embed/7mz94C4MJQE', '00:55:28', 399, NULL, NULL, 0, '2021-12-03 12:02:09', '2021-12-03 12:02:09'),
(400, 'default.png', 8, 'Psd To Html With Bootstrap Part - 11', 'psd-to-html-with-bootstrap-part---11-61aa076b8c1a0', NULL, 15, 58, 1, 'https://www.youtube.com/embed/JRmiFZ4tCdE', '00:18:26', 400, NULL, NULL, 0, '2021-12-03 12:02:51', '2021-12-03 12:02:51'),
(401, 'default.png', 8, 'Psd To Html With Bootstrap Part 12', 'psd-to-html-with-bootstrap-part-12-61aa0795e25c4', NULL, 15, 58, 1, 'https://www.youtube.com/embed/Aj3kU3xtNRU', '00:03:03', 401, NULL, NULL, 0, '2021-12-03 12:03:33', '2021-12-03 12:03:33'),
(402, 'default.png', 8, 'Psd To Html With Bootstrap Part - 13', 'psd-to-html-with-bootstrap-part---13-61aa07bdde5f6', NULL, 15, 58, 1, 'https://www.youtube.com/embed/jE0O66Ana4g', '00:18:50', 402, NULL, NULL, 0, '2021-12-03 12:04:13', '2021-12-03 12:04:13'),
(403, 'default.png', 8, 'Psd To Html With Bootstrap Part - 14', 'psd-to-html-with-bootstrap-part---14-61aa07e47903c', NULL, 15, 58, 1, 'https://www.youtube.com/embed/ImpKYgN160Y', '00:22:31', 403, NULL, NULL, 0, '2021-12-03 12:04:52', '2021-12-03 12:04:52'),
(404, 'default.png', 8, 'psd to html with bootstrap part - 15', 'psd-to-html-with-bootstrap-part---15-61aa0814866fc', NULL, 15, 58, 1, 'https://www.youtube.com/embed/wRDRaPA_oR0', '00:13:30', 404, NULL, NULL, 0, '2021-12-03 12:05:40', '2021-12-03 12:05:40'),
(405, 'default.png', 8, 'Psd To Html With Bootstrap Part - 16', 'psd-to-html-with-bootstrap-part---16-61aa084fd26c8', NULL, 15, 58, 1, 'https://www.youtube.com/embed/yQ49U8eFkIY', '00:14:35', 405, NULL, NULL, 0, '2021-12-03 12:06:39', '2021-12-03 12:06:39'),
(406, 'default.png', 8, 'Psd To Html With Bootstrap Part - 17', 'psd-to-html-with-bootstrap-part---17-61aa0882c74a6', NULL, 15, 58, 1, 'https://www.youtube.com/embed/d3dtAKlCtrI', '00:23:36', 406, NULL, NULL, 0, '2021-12-03 12:07:30', '2021-12-03 12:07:30'),
(407, 'default.png', 8, 'Psd To Html With Bootstrap Part - 18', 'psd-to-html-with-bootstrap-part---18-61aa08b7dd032', NULL, 15, 58, 1, 'https://www.youtube.com/embed/_DiLufPAHiQ', '00:50:27', 407, NULL, NULL, 0, '2021-12-03 12:08:23', '2021-12-03 12:08:23'),
(408, 'default.png', 8, 'Psd To Html With Bootstrap Part - 19', 'psd-to-html-with-bootstrap-part---19-61aa08e8054b6', NULL, 15, 58, 1, 'https://www.youtube.com/embed/t4jKPqtbI7g', '00:10:06', 408, NULL, NULL, 0, '2021-12-03 12:09:12', '2021-12-03 12:09:12'),
(409, 'default.png', 8, 'Psd To Html With Bootstrap Part - 20', 'psd-to-html-with-bootstrap-part---20-61aa0917a1935', NULL, 15, 58, 1, 'https://www.youtube.com/embed/ry3oES9M8c0', '00:50:21', 409, NULL, NULL, 0, '2021-12-03 12:09:59', '2021-12-03 12:09:59'),
(410, 'default.png', 8, 'psd to html with bootstrap part - 21', 'psd-to-html-with-bootstrap-part---21-61aa093bc4b7d', NULL, 15, 58, 1, 'https://www.youtube.com/embed/luv0fUcQ-lI', '00:14:04', 410, NULL, NULL, 0, '2021-12-03 12:10:35', '2021-12-03 12:10:35'),
(411, 'default.png', 8, 'psd to html with bootstrap part -  22', 'psd-to-html-with-bootstrap-part----22-61aa09661f313', NULL, 15, 58, 1, 'https://www.youtube.com/embed/urEzk7FmegA', '00:31:04', 411, NULL, NULL, 0, '2021-12-03 12:11:18', '2021-12-03 12:11:18'),
(412, 'default.png', 8, 'psd to html with bootstrap part  - 23', 'psd-to-html-with-bootstrap-part----23-61aa098df1a64', NULL, 15, 58, 1, 'https://www.youtube.com/embed/T7vs-0zt9q4', '00:11:59', 412, NULL, NULL, 0, '2021-12-03 12:11:57', '2021-12-03 12:11:57'),
(413, 'default.png', 8, 'psd to html with bootstrap part - 24', 'psd-to-html-with-bootstrap-part---24-61aa09af0b4ed', NULL, 15, 58, 1, 'https://www.youtube.com/embed/sJVjgQwFeag', '00:35:53', 413, NULL, NULL, 0, '2021-12-03 12:12:31', '2021-12-03 12:12:31'),
(414, 'default.png', 8, 'psd to html with bootstrap part - 25', 'psd-to-html-with-bootstrap-part---25-61aa09d056d0c', NULL, 15, 58, 1, 'https://www.youtube.com/embed/DKVODKseFGU', '00:20:37', 414, NULL, NULL, 0, '2021-12-03 12:13:04', '2021-12-03 12:13:04'),
(415, 'default.png', 8, 'psd to html with bootstrap part - 26', 'psd-to-html-with-bootstrap-part---26-61aa09f17004e', NULL, 15, 58, 1, 'https://www.youtube.com/embed/AtEsdCro2lI', '00:26:07', 415, NULL, NULL, 0, '2021-12-03 12:13:37', '2021-12-03 12:13:37'),
(416, 'default.png', 8, 'psd to html with bootstrap part - 27', 'psd-to-html-with-bootstrap-part---27-61aa0a16a7e28', NULL, 15, 58, 1, 'https://www.youtube.com/embed/kK4DaQCs8K8', '00:30:03', 416, NULL, NULL, 0, '2021-12-03 12:14:14', '2021-12-03 12:14:14'),
(417, 'default.png', 8, 'psd to html with bootstrap part - 28', 'psd-to-html-with-bootstrap-part---28-61aa0a3bbd3e8', NULL, 15, 58, 1, 'https://www.youtube.com/embed/YOVVmv6eCk4', '01:00:03', 417, NULL, NULL, 0, '2021-12-03 12:14:51', '2021-12-03 12:14:51'),
(418, 'default.png', 8, 'psd to html with bootstrap part - 29', 'psd-to-html-with-bootstrap-part---29-61aa0a6a882c6', NULL, 15, 58, 1, 'https://www.youtube.com/embed/IL1whIKT0qk', '00:25:45', 418, NULL, NULL, 0, '2021-12-03 12:15:38', '2021-12-03 12:15:38'),
(419, 'default.png', 8, 'psd to html with bootstrap part 30', 'psd-to-html-with-bootstrap-part-30-61aa0a9013962', NULL, 15, 58, 1, 'https://www.youtube.com/embed/V6Qz98p6i0Y', '00:15:35', 419, NULL, NULL, 0, '2021-12-03 12:16:16', '2021-12-03 12:16:16'),
(420, 'default.png', 8, 'psd to html with bootstrap part - 31', 'psd-to-html-with-bootstrap-part---31-61aa0abe9e98f', NULL, 15, 58, 1, 'https://www.youtube.com/embed/tIS21hh3FNc', '00:20:10', 420, NULL, NULL, 0, '2021-12-03 12:17:02', '2021-12-03 12:17:02'),
(421, 'default.png', 8, 'psd to html with bootstrap part - 32', 'psd-to-html-with-bootstrap-part---32-61aa0aebd46fa', NULL, 15, 58, 1, 'https://www.youtube.com/embed/C3MNEtSNIbI', '00:29:15', 421, NULL, NULL, 0, '2021-12-03 12:17:47', '2021-12-03 12:17:47'),
(422, 'default.png', 8, 'psd to html with bootstrap part - 33', 'psd-to-html-with-bootstrap-part---33-61aa0b0e2331b', NULL, 15, 58, 1, 'https://www.youtube.com/embed/IyFuAmv6D5Y', '00:27:05', 422, NULL, NULL, 0, '2021-12-03 12:18:22', '2021-12-03 12:18:22'),
(423, 'default.png', 8, 'psd to html with bootstrap part  - 34', 'psd-to-html-with-bootstrap-part----34-61aa0b35745a9', NULL, 15, 58, 1, 'https://www.youtube.com/embed/qKpVAA8_QPM', '00:21:08', 423, NULL, NULL, 0, '2021-12-03 12:19:01', '2021-12-03 12:19:01'),
(424, 'default.png', 8, 'psd to html with bootstrap part - 35', 'psd-to-html-with-bootstrap-part---35-61aa0b5522acc', NULL, 15, 58, 1, 'https://www.youtube.com/embed/8A-pGNJSXSc', '00:27:00', 424, NULL, NULL, 0, '2021-12-03 12:19:33', '2021-12-03 12:19:33'),
(425, 'default.png', 8, 'psd to html with bootstrap part - 36', 'psd-to-html-with-bootstrap-part---36-61aa0b7817101', NULL, 15, 58, 1, 'https://www.youtube.com/embed/TMEX7IXNNYQ', '00:20:06', 425, NULL, NULL, 0, '2021-12-03 12:20:08', '2021-12-03 12:20:08'),
(426, 'default.png', 8, 'psd to html with bootstrap part - 37', 'psd-to-html-with-bootstrap-part---37-61aa0b9ec081e', NULL, 15, 58, 1, 'https://www.youtube.com/embed/Ek2708EnDmo', '00:15:38', 426, NULL, NULL, 0, '2021-12-03 12:20:46', '2021-12-03 12:20:46'),
(427, 'default.png', 8, 'psd to html with bootstrap part - 38', 'psd-to-html-with-bootstrap-part---38-61aa0bc63acf4', NULL, 15, 58, 1, 'https://www.youtube.com/embed/SGxj_S-ImG8', '00:14:11', 427, NULL, NULL, 0, '2021-12-03 12:21:26', '2021-12-03 12:21:26'),
(428, 'default.png', 8, 'Final Conclution', 'final-conclution-61aa0bf27cdab', NULL, 15, 58, 1, 'https://www.youtube.com/embed/xMoWgD-y4rE', '00:01:55', 428, NULL, NULL, 0, '2021-12-03 12:22:10', '2021-12-03 12:22:10'),
(429, 'default.png', 8, 'জেনে রাখা ভাল।', 'জেনে-রাখা-ভাল।-61aa118e376d6', NULL, 16, 59, 1, 'https://www.youtube.com/embed/Q9xtRPzr-J4', '00:21:21', 429, NULL, NULL, 0, '2021-12-03 12:46:06', '2021-12-03 12:46:06'),
(430, 'default.png', 8, 'সার্চ ইঞ্জিন এর দুনিয়া', 'সার্চ-ইঞ্জিন-এর-দুনিয়া-61aa11e34de00', NULL, 16, 59, 1, 'https://www.youtube.com/embed/hEHB5xHm5c8', '00:07:49', 430, NULL, NULL, 0, '2021-12-03 12:47:31', '2021-12-03 12:47:31'),
(431, 'default.png', 8, 'সার্চ ইঞ্জিনে সার্চ করার ইফিশিয়েন্ট ওয়ে', 'সার্চ-ইঞ্জিনে-সার্চ-করার-ইফিশিয়েন্ট-ওয়ে-61aa121729fae', 1, 16, 59, 1, 'https://www.youtube.com/embed/P00myBvH57A', '00:26:37', 431, NULL, NULL, 0, '2021-12-03 12:48:23', '2021-12-03 12:48:23'),
(432, 'default.png', 8, 'ফ্রিল্যান্সিং এর ভূত', 'ফ্রিল্যান্সিং-এর-ভূত-61aa123d8f816', NULL, 16, 59, 1, 'https://www.youtube.com/embed/dmoiaqFT8wc', '00:08:36', 432, NULL, NULL, 0, '2021-12-03 12:49:01', '2021-12-03 12:49:01'),
(433, 'default.png', 8, 'সোস্যাল মিডিয়ার যত গুন', 'সোস্যাল-মিডিয়ার-যত-গুন-61aa12685288b', NULL, 16, 59, 1, 'https://www.youtube.com/embed/PKeP3rhYQfE', '00:10:41', 433, NULL, NULL, 0, '2021-12-03 12:49:44', '2021-12-03 12:49:44'),
(434, 'default.png', 8, 'ইনফরমেশন এর বস্তা', 'ইনফরমেশন-এর-বস্তা-61aa129041330', NULL, 16, 59, 1, 'https://www.youtube.com/embed/KjIzq7LEdHM', '00:06:23', 434, NULL, NULL, 0, '2021-12-03 12:50:24', '2021-12-03 12:50:24'),
(435, 'default.png', 8, 'সাইন্স ব্যাগরাউন্ড নাই ! আমাকে দিয়ে কি হবে ?', 'সাইন্স-ব্যাগরাউন্ড-নাই-!-আমাকে-দিয়ে-কি-হবে-?-61aa12b4bdc09', NULL, 16, 59, 1, 'https://www.youtube.com/embed/VIp0MX3lKIY', '00:07:05', 435, NULL, NULL, 0, '2021-12-03 12:51:00', '2021-12-03 12:51:00'),
(436, 'default.png', 8, 'প্রোগ্রামীং আর বয়সের ব্যবধান !', 'প্রোগ্রামীং-আর-বয়সের-ব্যবধান-!-61aa12da90659', NULL, 16, 59, 1, 'https://www.youtube.com/embed/vOm3OgVN_bw', '00:07:08', 436, NULL, NULL, 0, '2021-12-03 12:51:38', '2021-12-03 12:51:38'),
(437, 'default.png', 8, 'আমি তো হতাশ !', 'আমি-তো-হতাশ-!-61aa13155eb9f', NULL, 16, 59, 1, 'https://www.youtube.com/embed/LCG_0Ziz8-c', '00:06:04', 437, NULL, NULL, 0, '2021-12-03 12:52:37', '2021-12-03 12:52:37'),
(438, 'default.png', 8, 'প্রোগ্রামীং এর দুনিয়া, যেখান থেকে শুরু !', 'প্রোগ্রামীং-এর-দুনিয়া,-যেখান-থেকে-শুরু-!-61aa1357d8d3d', NULL, 16, 59, 1, 'https://www.youtube.com/embed/m05plAaBzi8', '00:05:37', 438, NULL, NULL, 0, '2021-12-03 12:53:43', '2021-12-03 12:53:43'),
(439, 'default.png', 8, 'রাত জাগা এবং লম্বা সময় ধরে কোডিং করা।', 'রাত-জাগা-এবং-লম্বা-সময়-ধরে-কোডিং-করা।-61aa1389175bd', NULL, 16, 59, 1, 'https://www.youtube.com/embed/-h8aMZQ3dtA', '00:05:14', 439, NULL, NULL, 0, '2021-12-03 12:54:33', '2021-12-03 12:54:33'),
(440, 'default.png', 8, 'ডোমেইন হোস্টিং নিয়ে পড়াশুনা।', 'ডোমেইন-হোস্টিং-নিয়ে-পড়াশুনা।-61aa13b5bb4b2', NULL, 16, 59, 1, 'https://www.youtube.com/embed/kkhcOKfDeIA', '00:19:35', 440, NULL, NULL, 0, '2021-12-03 12:55:17', '2021-12-03 12:55:17'),
(441, 'default.png', 8, 'ওয়েব ডেভলপার হতে কতদিন সময় লাগে প্রতিদিন কেমন প্র্যাকটিস করতে হয় ?', 'ওয়েব-ডেভলপার-হতে-কতদিন-সময়-লাগে-প্রতিদিন-কেমন-প্র্যাকটিস-করতে-হয়-?-61aa13e45b4b5', NULL, 16, 59, 1, 'https://www.youtube.com/embed/ePuNcd-fr3A', '00:06:09', 441, NULL, NULL, 0, '2021-12-03 12:56:04', '2021-12-03 12:56:04'),
(442, 'default.png', 8, 'হরেক রকমের ওয়েব ডেভলপার, ওয়ার্ডপ্রেস', 'হরেক-রকমের-ওয়েব-ডেভলপার,-ওয়ার্ডপ্রেস-61aa142398024', NULL, 16, 59, 1, 'https://www.youtube.com/embed/t1wiELh1M70', '00:16:08', 442, NULL, NULL, 0, '2021-12-03 12:57:07', '2021-12-03 12:57:07'),
(443, 'default.png', 8, 'হরেক রকম ওয়েব ডেভলপার লারাভেল', 'হরেক-রকম-ওয়েব-ডেভলপার-লারাভেল-61aa14684150d', NULL, 16, 59, 1, 'https://www.youtube.com/embed/B3gfTlfeyK8', '00:06:18', 443, NULL, NULL, 0, '2021-12-03 12:58:16', '2021-12-03 12:58:16'),
(444, 'default.png', 8, 'হরেক রকম ডেভলপার, জ্যাঙ্গো', 'হরেক-রকম-ডেভলপার,-জ্যাঙ্গো-61aa149a94014', NULL, 16, 59, 1, 'https://www.youtube.com/embed/y-mUE6GmVxg', '00:05:31', 444, NULL, NULL, 0, '2021-12-03 12:59:06', '2021-12-03 12:59:06'),
(445, 'default.png', 8, 'হরেক রকম ডেভলপার, নোড জেএস', 'হরেক-রকম-ডেভলপার,-নোড-জেএস-61aa14c909592', NULL, 16, 59, 1, 'https://www.youtube.com/embed/Vug_RWRzxDU', '00:09:25', 445, NULL, NULL, 0, '2021-12-03 12:59:53', '2021-12-03 12:59:53'),
(446, 'default.png', 8, 'ওয়ার্ডপ্রেস থিম ডেভলপমেন্ট বনাম ওয়ার্ডপ্রেস থিম কাষ্টমাইজেশন', 'ওয়ার্ডপ্রেস-থিম-ডেভলপমেন্ট-বনাম-ওয়ার্ডপ্রেস-থিম-কাষ্টমাইজেশন-61aa14f1c6dc4', NULL, 16, 59, 1, 'https://www.youtube.com/embed/DgdplnOvG6Y', '00:07:00', 446, NULL, NULL, 0, '2021-12-03 13:00:33', '2021-12-03 13:00:33'),
(447, 'default.png', 8, 'ফ্রেমওয়ার্ক বনাম লাইব্রেরী', 'ফ্রেমওয়ার্ক-বনাম-লাইব্রেরী-61aa15168874f', NULL, 16, 59, 1, 'https://www.youtube.com/embed/yTdyJxrwWDo', '00:08:04', 447, NULL, NULL, 0, '2021-12-03 13:01:10', '2021-12-03 13:01:10'),
(448, 'default.png', 8, 'জাভাস্ক্রিপ্ট বনাম জাভা !', 'জাভাস্ক্রিপ্ট-বনাম-জাভা-!-61aa154309f11', NULL, 16, 59, 1, 'https://www.youtube.com/embed/6oo-Ysd7rCM', '00:05:38', 448, NULL, NULL, 0, '2021-12-03 13:01:55', '2021-12-03 13:01:55'),
(449, 'default.png', 8, 'আইপি এড্রেস !', 'আইপি-এড্রেস-!-61aa156b02d81', NULL, 16, 59, 1, 'https://www.youtube.com/embed/GNaPcOKmXSs', '00:04:33', 449, NULL, NULL, 0, '2021-12-03 13:02:35', '2021-12-03 13:02:35'),
(450, 'default.png', 8, 'স্ট্যাটিক ওয়েব সাইট বনাম ডায়নামিক ওয়েব সাইট', 'স্ট্যাটিক-ওয়েব-সাইট-বনাম-ডায়নামিক-ওয়েব-সাইট-61aa15900fd86', NULL, 16, 59, 1, 'https://www.youtube.com/embed/078EQQp2vxU', '00:10:01', 450, NULL, NULL, 0, '2021-12-03 13:03:12', '2021-12-03 13:03:12'),
(451, 'default.png', 8, 'আমার কাজের টাকা বাংলাদেশে কি ভাবে আনব ?', 'আমার-কাজের-টাকা-বাংলাদেশে-কি-ভাবে-আনব-?-61aa15bacbcfe', NULL, 16, 59, 1, 'https://www.youtube.com/embed/NWcLg-pQ0gI', '00:06:50', 451, NULL, NULL, 0, '2021-12-03 13:03:54', '2021-12-03 13:03:54'),
(452, 'default.png', 8, 'ফ্রন্ট ইন্ড, ব্যাকইন্ড বনাম ফুলস্ট্যাক ডেভলপার', 'ফ্রন্ট-ইন্ড,-ব্যাকইন্ড-বনাম-ফুলস্ট্যাক-ডেভলপার-61aa15e86f626', NULL, 16, 59, 1, 'https://www.youtube.com/embed/LCFmlkVj70Q', '00:09:23', 452, NULL, NULL, 0, '2021-12-03 13:04:40', '2021-12-03 13:04:40'),
(453, 'default.png', 8, 'কোড এডিটর নিয়ে কিছু কথা', 'কোড-এডিটর-নিয়ে-কিছু-কথা-61aa160da5e70', NULL, 16, 59, 1, 'https://www.youtube.com/embed/rLjU_F1QsIw', '00:05:08', 453, NULL, NULL, 0, '2021-12-03 13:05:17', '2021-12-03 13:05:17'),
(454, 'default.png', 8, 'কাজের প্রতি ফোকাস', 'কাজের-প্রতি-ফোকাস-61aa16301b2da', NULL, 16, 59, 1, 'https://www.youtube.com/embed/dH_sVtLB3s8', '00:05:08', 454, NULL, NULL, 0, '2021-12-03 13:05:52', '2021-12-03 13:05:52'),
(455, 'default.png', 8, 'রিমোট জবের প্রস্তুতি !', 'রিমোট-জবের-প্রস্তুতি-!-61aa16599d0f4', NULL, 16, 59, 1, 'https://www.youtube.com/embed/P0fbJf7wrCQ', '00:04:29', 455, NULL, NULL, 0, '2021-12-03 13:06:33', '2021-12-03 13:06:33'),
(456, 'default.png', 8, 'রিমোট জব প্রস্তুতি পার্ট - ২', 'রিমোট-জব-প্রস্তুতি-পার্ট---২-61aa16f5dabf8', NULL, 16, 59, 1, 'https://www.youtube.com/embed/dnnw-Z83bxc', '00:03:20', 456, NULL, NULL, 0, '2021-12-03 13:09:09', '2021-12-03 13:09:09'),
(457, 'default.png', 8, 'রিমোট জব নিয়ে অনেক কথা ।', 'রিমোট-জব-নিয়ে-অনেক-কথা-।-61aa1743ab264', NULL, 16, 59, 1, 'https://www.youtube.com/embed/ydab29NDaCU', '00:11:13', 457, NULL, NULL, 0, '2021-12-03 13:10:27', '2021-12-03 13:10:27'),
(458, 'default.png', 8, 'ইন্টারভিও কেমন হয়  রিয়েল এক্সপিরিয়েন্স !', 'ইন্টারভিও-কেমন-হয়--রিয়েল-এক্সপিরিয়েন্স-!-61aa17842d344', NULL, 16, 59, 1, 'https://www.youtube.com/embed/0JWAh29PY50', '00:11:59', 458, NULL, NULL, 0, '2021-12-03 13:11:32', '2021-12-03 13:11:32'),
(459, 'default.png', 8, 'রিমোট জব কোথায় পাব ?', 'রিমোট-জব-কোথায়-পাব-?-61aa17c144994', NULL, 16, 59, 1, 'https://www.youtube.com/embed/kiEK8C1As_Q', '00:12:42', 459, NULL, NULL, 0, '2021-12-03 13:12:33', '2021-12-03 13:12:33'),
(460, 'default.png', 8, 'বেতন এবং অন্যন্য কি সুবিধা সমূহ !', 'বেতন-এবং-অন্যন্য-কি-সুবিধা-সমূহ-!-61aa17fc4ceb8', NULL, 16, 59, 1, 'https://www.youtube.com/embed/xOyTo_bMPqU', '00:04:35', 460, NULL, NULL, 0, '2021-12-03 13:13:32', '2021-12-03 13:13:32'),
(461, 'default.png', 8, 'পার্সোনাল ব্রান্ডিং', 'পার্সোনাল-ব্রান্ডিং-61aa183bb1be5', NULL, 16, 59, 1, 'https://www.youtube.com/embed/XFdfEC-bMu0', '00:02:58', 461, NULL, NULL, 0, '2021-12-03 13:14:35', '2021-12-03 13:14:35'),
(462, 'default.png', 8, 'আপনি এখন সম্পূর্ন প্রস্তুত !', 'আপনি-এখন-সম্পূর্ন-প্রস্তুত-!-61aa188086e54', NULL, 16, 59, 1, 'https://www.youtube.com/embed/oz4AKtJ3JZI', '00:02:45', 462, NULL, NULL, 0, '2021-12-03 13:15:44', '2021-12-03 13:15:44'),
(463, 'default.png', 8, 'ওয়েব সাইট লাইফ সাইকেল এন্ড এনাটমি।', 'ওয়েব-সাইট-লাইফ-সাইকেল-এন্ড-এনাটমি।-61aa18bb30100', NULL, 16, 59, 1, 'https://www.youtube.com/embed/CcUUGHlJHaY', '00:39:06', 463, NULL, NULL, 0, '2021-12-03 13:16:43', '2021-12-03 13:16:43'),
(464, 'default.png', 8, 'ডাটা স্ট্রাকচার ! প্রাথমিক জ্ঞান।', 'ডাটা-স্ট্রাকচার-!-প্রাথমিক-জ্ঞান।-61aa19017bfc3', NULL, 16, 59, 1, 'https://www.youtube.com/embed/p0NHp4E8LFY', '00:08:30', 464, NULL, NULL, 0, '2021-12-03 13:17:53', '2021-12-03 13:17:53'),
(465, 'default.png', 8, 'প্রোগ্রামীং লার্নিং ইনভায়রনমেন্ট।', 'প্রোগ্রামীং-লার্নিং-ইনভায়রনমেন্ট।-61aa1923d5041', NULL, 16, 59, 1, 'https://www.youtube.com/embed/D9YFUXAqUIc', '00:09:16', 465, NULL, NULL, 0, '2021-12-03 13:18:27', '2021-12-03 13:18:27'),
(466, 'default.png', 14, 'Install the necessary software for MERN', 'install-the-necessary-software-for-mern-61aa2142df581', 1, 17, 60, 1, 'https://www.youtube.com/embed/W71hpzD2Aao', '00:04:55', 466, NULL, NULL, 0, '2021-12-03 13:53:06', '2021-12-03 13:53:06'),
(467, 'default.png', 14, 'Node File System Module', 'node-file-system-module-61aa216faa783', 1, 17, 60, 1, 'https://www.youtube.com/embed/0Yo7Xag64eU', '00:14:02', 467, NULL, NULL, 0, '2021-12-03 13:53:51', '2021-12-03 13:53:51'),
(468, 'default.png', 14, 'Sync vs Async', 'sync-vs-async-61aa21982888b', 1, 17, 60, 1, 'https://www.youtube.com/embed/zsM6yg1RjA8', '00:07:11', 468, NULL, NULL, 0, '2021-12-03 13:54:32', '2021-12-03 13:54:32'),
(469, 'default.png', 14, 'Creating and Exporting Modules', 'creating-and-exporting-modules-61aa21d906aa3', NULL, 17, 60, 1, 'https://www.youtube.com/embed/wBJEbUDBhDw', '00:05:47', 469, NULL, NULL, 0, '2021-12-03 13:55:37', '2021-12-03 13:55:37'),
(470, 'default.png', 14, 'What is npm and how to use it', 'what-is-npm-and-how-to-use-it-61aa220513267', NULL, 17, 60, 1, 'https://www.youtube.com/embed/zVllsLzoj9A', '00:07:19', 470, NULL, NULL, 0, '2021-12-03 13:56:21', '2021-12-03 13:56:21'),
(471, 'default.png', 14, 'First Node Server', 'first-node-server-61aa2236aa94c', NULL, 17, 60, 1, 'https://www.youtube.com/embed/G9VL75vkLaI', '00:04:54', 471, NULL, NULL, 0, '2021-12-03 13:57:10', '2021-12-03 13:57:10'),
(472, 'default.png', 14, 'NodeJS Routing', 'nodejs-routing-61aa225c9516d', NULL, 17, 60, 1, 'https://www.youtube.com/embed/UZY1AJz15U0', '00:07:08', 472, NULL, NULL, 0, '2021-12-03 13:57:48', '2021-12-03 13:57:48'),
(473, 'default.png', 14, 'JSON in NodeJS', 'json-in-nodejs-61aa22cd0ab9e', NULL, 17, 60, 1, 'https://www.youtube.com/embed/sVKu4U7QwK0', '00:09:15', 473, NULL, NULL, 0, '2021-12-03 13:59:41', '2021-12-03 13:59:41'),
(474, 'default.png', 14, 'API in NodeJS', 'api-in-nodejs-61aa22f9a9546', NULL, 17, 60, 1, 'https://www.youtube.com/embed/iD04Un4tWx4', '00:10:57', 474, NULL, NULL, 0, '2021-12-03 14:00:25', '2021-12-03 14:00:25'),
(475, 'default.png', 14, 'What is Express JS ?', 'what-is-express-js-?-61aa23595f793', NULL, 17, 61, 1, 'https://www.youtube.com/embed/mDrFQNCPiks', '00:03:05', 475, NULL, NULL, 0, '2021-12-03 14:02:01', '2021-12-03 14:02:01'),
(476, 'default.png', 14, 'First Express JS server', 'first-express-js-server-61aa23821d3fd', NULL, 17, 61, 1, 'https://www.youtube.com/embed/zVRhWm9gboc', '00:05:03', 476, NULL, NULL, 0, '2021-12-03 14:02:42', '2021-12-03 14:02:42'),
(477, 'default.png', 14, 'Routing in Express JS', 'routing-in-express-js-61aa23ac1e184', NULL, 17, 61, 1, 'https://www.youtube.com/embed/qkbQe5wtfbY', '00:06:15', 477, NULL, NULL, 0, '2021-12-03 14:03:24', '2021-12-03 14:03:24'),
(478, 'default.png', 14, 'Serving static files using Express JS', 'serving-static-files-using-express-js-61aa23d80b13f', NULL, 17, 61, 1, 'https://www.youtube.com/embed/BAtNaEWEr68', '00:04:59', 478, NULL, NULL, 0, '2021-12-03 14:04:08', '2021-12-03 14:04:08'),
(479, 'default.png', 14, 'Basic Structure', 'basic-structure-61aa2b4bd6044', NULL, 17, 62, 1, 'https://www.youtube.com/embed/WrySSvKjJhU', '00:06:08', 479, NULL, NULL, 0, '2021-12-03 14:35:55', '2021-12-03 14:35:55'),
(480, 'default.png', 14, 'Front End Development', 'front-end-development-61aa2b84adce7', NULL, 17, 62, 1, 'https://www.youtube.com/embed/7IgNRTmeJ-I', '00:21:14', 480, NULL, NULL, 0, '2021-12-03 14:36:52', '2021-12-03 14:36:52'),
(481, 'default.png', 14, 'How to connect to MongoDB Atlas – Part 01', 'how-to-connect-to-mongodb-atlas-–-part-01-61aa2bb64cb5c', NULL, 17, 62, 1, 'https://www.youtube.com/embed/H9KFFNaN-NM', '00:11:21', 481, NULL, NULL, 0, '2021-12-03 14:37:42', '2021-12-03 14:37:42'),
(482, 'default.png', 14, 'Connecting MongoDB with Express Part 02', 'connecting-mongodb-with-express-part-02-61aa2be6cd64f', NULL, 17, 62, 1, 'https://www.youtube.com/embed/_qzQB9b11OA', '00:13:14', 482, NULL, NULL, 0, '2021-12-03 14:38:30', '2021-12-03 14:38:30'),
(483, 'default.png', 14, 'Receiving data in React using Axios', 'receiving-data-in-react-using-axios-61aa2c1262502', NULL, 17, 62, 1, 'https://www.youtube.com/embed/MQw-KIRLcrg', '00:09:56', 483, NULL, NULL, 0, '2021-12-03 14:39:14', '2021-12-03 14:39:14'),
(484, 'default.png', 14, 'How to use data in components', 'how-to-use-data-in-components-61aa2c495c7a7', NULL, 17, 62, 1, 'https://www.youtube.com/embed/Fb6ol86-2qQ', '00:05:31', 484, NULL, NULL, 0, '2021-12-03 14:40:09', '2021-12-03 14:40:09'),
(485, 'default.png', 14, 'How to post data from Frontend', 'how-to-post-data-from-frontend-61aa2c82a8e72', NULL, 17, 62, 1, 'https://www.youtube.com/embed/Adz7JHz2DzY', '00:15:37', 485, NULL, NULL, 0, '2021-12-03 14:41:06', '2021-12-03 14:41:06'),
(486, 'default.png', 14, 'How to delete data from Frontend', 'how-to-delete-data-from-frontend-61aa2d00936e6', NULL, 17, 62, 1, 'https://www.youtube.com/embed/2Y7CduL8fCc', '00:10:31', 486, NULL, NULL, 0, '2021-12-03 14:43:12', '2021-12-03 14:43:12'),
(487, 'default.png', 14, 'How to update data from Front end', 'how-to-update-data-from-front-end-61aa2d411e8a2', NULL, 17, 62, 1, 'https://www.youtube.com/embed/YO9bK2GueQg', '00:11:20', 487, NULL, NULL, 0, '2021-12-03 14:44:17', '2021-12-03 14:44:17'),
(488, 'default.png', 14, 'Front End Design – React', 'front-end-design-–-react-61aa2de861b5b', NULL, 17, 63, 1, 'https://www.youtube.com/embed/HiENhfwq-G8', '00:29:26', 488, NULL, NULL, 0, '2021-12-03 14:47:04', '2021-12-03 14:47:04'),
(489, 'default.png', 14, 'Front End Part -02', 'front-end-part--02-61aa2e1d57e72', NULL, 17, 63, 1, 'https://www.youtube.com/embed/UEm_1rFqN5A', '00:14:50', 489, NULL, NULL, 0, '2021-12-03 14:47:57', '2021-12-03 14:47:57'),
(490, 'default.png', 14, 'Front End part - 03', 'front-end-part---03-61aa2e56d9369', NULL, 17, 63, 1, 'https://www.youtube.com/embed/FiTwh-yxDvM', '00:24:57', 490, NULL, NULL, 0, '2021-12-03 14:48:54', '2021-12-03 14:48:54'),
(491, 'default.png', 14, 'How to use dotenv to secure codes', 'how-to-use-dotenv-to-secure-codes-61aa2ebf5b60d', NULL, 17, 63, 1, 'https://www.youtube.com/embed/t9aMxsjjwOM', '00:09:08', 491, NULL, NULL, 0, '2021-12-03 14:50:39', '2021-12-03 14:50:39'),
(492, 'default.png', 14, 'How to use Express router', 'how-to-use-express-router-61aa2ef271113', NULL, 17, 63, 1, 'https://www.youtube.com/embed/ONe96kKQQOI', '00:04:08', 492, NULL, NULL, 0, '2021-12-03 14:51:30', '2021-12-03 14:51:30'),
(493, 'default.png', 14, 'Getting Products from backend', 'getting-products-from-backend-61aa2f418917b', NULL, 17, 63, 1, 'https://www.youtube.com/embed/u4VQeaZWtbI', '00:10:42', 493, NULL, NULL, 0, '2021-12-03 14:52:49', '2021-12-03 14:52:49'),
(494, 'default.png', 14, 'Signup or register authentication', 'signup-or-register-authentication-61aa2fbadc217', NULL, 17, 63, 1, 'https://www.youtube.com/embed/PGk2IIJ90hY', '00:20:15', 494, NULL, NULL, 0, '2021-12-03 14:54:50', '2021-12-03 14:54:50'),
(495, 'default.png', 14, 'Login authentication', 'login-authentication-61aa2ff297d3f', NULL, 17, 63, 1, 'https://www.youtube.com/embed/1ATyZqsKoZo', '00:14:37', 495, NULL, NULL, 0, '2021-12-03 14:55:46', '2021-12-03 14:55:46'),
(496, 'default.png', 14, 'এই টাস্ক টি এস্যাইনমেন্ট এর ভিতর নোট আকারে দেওয়া আছে', 'এই-টাস্ক-টি-এস্যাইনমেন্ট-এর-ভিতর-নোট-আকারে-দেওয়া-আছে-61aa31381d7e1', NULL, 17, 64, 1, 'https://www.youtube.com/embed/Dz1KHhcs7X0', '00:00:00', 496, NULL, NULL, 0, '2021-12-03 15:01:12', '2021-12-03 15:01:12'),
(497, 'default.png', 14, 'NodeJS events module', 'nodejs-events-module-61aa3683c2f0d', NULL, 17, 65, 1, 'https://www.youtube.com/embed/OkUMVA3wS1Y', '00:08:28', 497, NULL, NULL, 0, '2021-12-03 15:23:47', '2021-12-03 15:23:47'),
(498, 'default.png', 14, 'Streaming and Buffering in NodeJS', 'streaming-and-buffering-in-nodejs-61aa3736bf8c3', NULL, 17, 65, 1, 'https://www.youtube.com/embed/5zpFp2TVigQ', '00:13:50', 498, NULL, NULL, 0, '2021-12-03 15:26:46', '2021-12-03 15:26:46'),
(499, 'default.png', 14, 'GridFS - part1', 'gridfs---part1-61aa3786c4ea7', NULL, 17, 65, 1, 'https://www.youtube.com/embed/klPQwsx495Q', '00:13:49', 499, NULL, NULL, 0, '2021-12-03 15:28:06', '2021-12-03 15:28:06'),
(500, 'default.png', 14, 'Gridfs part -02', 'gridfs-part--02-61aa37eb67966', NULL, 17, 65, 1, 'https://www.youtube.com/embed/VKqUfJpdb6o', '00:24:09', 500, NULL, NULL, 0, '2021-12-03 15:29:47', '2021-12-03 15:29:47'),
(501, 'default.png', 14, 'Gridfs part - 03', 'gridfs-part---03-61aa381d5edf8', NULL, 17, 65, 1, 'https://www.youtube.com/embed/uA3RQjl-WY4', '00:13:38', 501, NULL, NULL, 0, '2021-12-03 15:30:37', '2021-12-03 15:30:37'),
(502, 'default.png', 14, 'How to host Backend for free with Heroku', 'how-to-host-backend-for-free-with-heroku-61aa38786b44a', NULL, 17, 63, 1, 'https://www.youtube.com/embed/FZ4B5dKdppI', '00:12:11', 502, NULL, NULL, 0, '2021-12-03 15:32:08', '2021-12-03 15:32:08'),
(503, 'default.png', 14, 'var vs let vs const', 'var-vs-let-vs-const-61ac631fd55a5', 1, 18, 66, 1, 'https://www.youtube.com/embed/Ri0kYz13TtU', '00:08:17', 503, NULL, NULL, 0, '2021-12-05 06:58:39', '2021-12-05 06:58:39'),
(504, 'default.png', 14, 'Arrow function', 'arrow-function-61ac63508efc4', 1, 18, 66, 1, 'https://www.youtube.com/embed/TRqfSLH0idI', '00:06:08', 504, NULL, NULL, 0, '2021-12-05 06:59:28', '2021-12-05 06:59:28'),
(505, 'default.png', 14, 'This keyword', 'this-keyword-61ac637a68de7', 1, 18, 66, 1, 'https://www.youtube.com/embed/xAk1VDt-HGA', '00:04:54', 505, NULL, NULL, 0, '2021-12-05 07:00:10', '2021-12-05 07:00:10'),
(506, 'default.png', 14, 'Class and Objects', 'class-and-objects-61ac63ae51d35', NULL, 18, 66, 1, 'https://www.youtube.com/embed/5FNikTKHwYU', '00:07:56', 506, NULL, NULL, 0, '2021-12-05 07:01:02', '2021-12-05 07:01:02'),
(507, 'default.png', 14, 'React App install', 'react-app-install-61ac6419d7498', NULL, 18, 67, 1, 'https://www.youtube.com/embed/TzwvZ9y1Drs', '00:05:41', 507, NULL, NULL, 0, '2021-12-05 07:02:49', '2021-12-05 07:02:49'),
(508, 'default.png', 14, 'React folder structure', 'react-folder-structure-61ac644ce2d8b', NULL, 18, 67, 1, 'https://www.youtube.com/embed/IC5DWO3pAa8', '00:05:59', 508, NULL, NULL, 0, '2021-12-05 07:03:40', '2021-12-05 07:03:40'),
(509, 'default.png', 14, 'Babel and Webpack', 'babel-and-webpack-61ac647581885', NULL, 18, 67, 1, 'https://www.youtube.com/embed/CX-CyCyX1xs', '00:05:04', 509, NULL, NULL, 0, '2021-12-05 07:04:21', '2021-12-05 07:04:21'),
(510, 'default.png', 14, 'Components', 'components-61ac64e01dbc8', NULL, 18, 67, 1, 'https://www.youtube.com/embed/3bzqnKkAehE', '00:03:37', 510, NULL, NULL, 0, '2021-12-05 07:06:08', '2021-12-05 07:06:08'),
(511, 'default.png', 14, 'Functional Components', 'functional-components-61ac652c2dadc', NULL, 18, 67, 1, 'https://www.youtube.com/embed/Ad23kHifekI', '00:06:50', 511, NULL, NULL, 0, '2021-12-05 07:07:24', '2021-12-05 07:07:24'),
(512, 'default.png', 14, 'Class Components', 'class-components-61ac664a16e72', NULL, 18, 67, 1, 'https://www.youtube.com/embed/GNO-G_krXwE', '00:05:36', 512, NULL, NULL, 0, '2021-12-05 07:12:10', '2021-12-05 07:12:10'),
(513, 'default.png', 14, 'JSX', 'jsx-61ac6672d236f', NULL, 18, 67, 1, 'https://www.youtube.com/embed/ORTVJ_FZaac', '00:03:37', 513, NULL, NULL, 0, '2021-12-05 07:12:50', '2021-12-05 07:12:50'),
(514, 'default.png', 14, 'Props', 'props-61ac6698bf1aa', NULL, 18, 67, 1, 'https://www.youtube.com/embed/6vKZzLtAZB0', '00:06:34', 514, NULL, NULL, 0, '2021-12-05 07:13:28', '2021-12-05 07:13:28'),
(515, 'default.png', 14, 'Event handling in React JS', 'event-handling-in-react-js-61ac66d62b95b', NULL, 18, 67, 1, 'https://www.youtube.com/embed/NxESjmydiIk', '00:05:38', 515, NULL, NULL, 0, '2021-12-05 07:14:30', '2021-12-05 07:14:30'),
(516, 'default.png', 14, 'Use State', 'use-state-61ac6712e5557', NULL, 18, 67, 1, 'https://www.youtube.com/embed/mG3UIMi17-o', '00:09:39', 516, NULL, NULL, 0, '2021-12-05 07:15:30', '2021-12-05 07:15:30'),
(517, 'default.png', 14, 'State Manipulating + Object destructing', 'state-manipulating-+-object-destructing-61ac67370b8e2', NULL, 18, 67, 1, 'https://www.youtube.com/embed/7DBqA3lHTSA', '00:10:50', 517, NULL, NULL, 0, '2021-12-05 07:16:07', '2021-12-05 07:16:07'),
(518, 'default.png', 14, 'On Change', 'on-change-61ac676e9a922', NULL, 18, 67, 1, 'https://www.youtube.com/embed/H7AUDq1tTG8', '00:06:52', 518, NULL, NULL, 0, '2021-12-05 07:17:02', '2021-12-05 07:17:02'),
(519, 'default.png', 14, 'Stylesheet and Inline Styling', 'stylesheet-and-inline-styling-61ac67950962d', NULL, 18, 67, 1, 'https://www.youtube.com/embed/CrtI55gXMj0', '00:07:54', 519, NULL, NULL, 0, '2021-12-05 07:17:41', '2021-12-05 07:17:41'),
(520, 'default.png', 14, 'Form Handling Part 1', 'form-handling-part-1-61ac67b99062b', NULL, 18, 67, 1, 'https://www.youtube.com/embed/6BH12rQFyLU', '00:06:42', 520, NULL, NULL, 0, '2021-12-05 07:18:17', '2021-12-05 07:18:17'),
(521, 'default.png', 14, 'Form Handling Part 2', 'form-handling-part-2-61ac67d975435', NULL, 18, 67, 1, 'https://www.youtube.com/embed/sEPTByUH_i0', '00:16:42', 521, NULL, NULL, 0, '2021-12-05 07:18:49', '2021-12-05 07:18:49'),
(522, 'default.png', 14, 'Form Handling Part 3 - using spread operator', 'form-handling-part-3---using-spread-operator-61ac680c39ef8', NULL, 18, 67, 1, 'https://www.youtube.com/embed/Ga3vQe1EMpU', '00:15:46', 522, NULL, NULL, 0, '2021-12-05 07:19:40', '2021-12-05 07:19:40'),
(523, 'default.png', 14, 'Text Area and Select Option in JSX', 'text-area-and-select-option-in-jsx-61ac73f0135ca', NULL, 18, 67, 1, 'https://www.youtube.com/embed/_8xP9wyXcyQ', '00:08:33', 523, NULL, NULL, 0, '2021-12-05 08:10:24', '2021-12-05 08:10:24'),
(524, 'default.png', 14, 'Map method and generating lists', 'map-method-and-generating-lists-61ac741b02ab9', NULL, 18, 67, 1, 'https://www.youtube.com/embed/kHhzQF4GyA0', '00:19:54', 524, NULL, NULL, 0, '2021-12-05 08:11:07', '2021-12-05 08:11:07'),
(525, 'default.png', 14, 'Normal Bootstrap', 'normal-bootstrap-61ac7441d1e2e', NULL, 18, 67, 1, 'https://www.youtube.com/embed/9CDEp-AYQYA', '00:04:44', 525, NULL, NULL, 0, '2021-12-05 08:11:45', '2021-12-05 08:11:45'),
(526, 'default.png', 14, 'React Bootstrap', 'react-bootstrap-61ac7464ed7b8', NULL, 18, 67, 1, 'https://www.youtube.com/embed/puheaBteAbY', '00:10:43', 526, NULL, NULL, 0, '2021-12-05 08:12:20', '2021-12-05 08:12:20'),
(527, 'default.png', 14, 'Routing', 'routing-61ac748bb03db', NULL, 18, 67, 1, 'https://www.youtube.com/embed/h5FpugC-29I', '00:04:53', 527, NULL, NULL, 0, '2021-12-05 08:12:59', '2021-12-05 08:12:59'),
(528, 'default.png', 14, 'Installing react router dom and creating pages for routing', 'installing-react-router-dom-and-creating-pages-for-routing-61ac7ceed697a', NULL, 18, 67, 1, 'https://www.youtube.com/embed/4k2sJw5gjgM', '00:05:48', 528, NULL, NULL, 0, '2021-12-05 08:48:46', '2021-12-05 08:48:46'),
(529, 'default.png', 14, 'React Routing and Linking', 'react-routing-and-linking-61ac7d14a3090', NULL, 18, 67, 1, 'https://www.youtube.com/embed/DglZLFymXbU', '00:10:01', 529, NULL, NULL, 0, '2021-12-05 08:49:24', '2021-12-05 08:49:24'),
(530, 'default.png', 14, 'Axios GET request part-1', 'axios-get-request-part-1-61ac7d46aef61', NULL, 18, 67, 1, 'https://www.youtube.com/embed/FgTIfH1w94k', '00:07:18', 530, NULL, NULL, 0, '2021-12-05 08:50:14', '2021-12-05 08:50:14'),
(531, 'default.png', 14, 'Axios GET request part 2', 'axios-get-request-part-2-61ac7d6f1b83a', NULL, 18, 67, 1, 'https://www.youtube.com/embed/0fhAAXmtQuw', '00:03:48', 531, NULL, NULL, 0, '2021-12-05 08:50:55', '2021-12-05 08:50:55'),
(532, 'default.png', 14, 'Use Effect', 'use-effect-61ac7d9e8ba1b', NULL, 18, 67, 1, 'https://www.youtube.com/embed/aFF9Prza1GU', '00:08:42', 532, NULL, NULL, 0, '2021-12-05 08:51:42', '2021-12-05 08:51:42'),
(533, 'default.png', 14, 'Active Link', 'active-link-61ac7dc7e487c', NULL, 18, 67, 1, 'https://www.youtube.com/embed/MtD6GmZVHEw', '00:06:22', 533, NULL, NULL, 0, '2021-12-05 08:52:23', '2021-12-05 08:52:23'),
(534, 'default.png', 14, 'Project Setup', 'project-setup-61ac7f0ac09bd', NULL, 18, 68, 1, 'https://www.youtube.com/embed/35y-1IDYZ88', '00:06:06', 534, NULL, NULL, 0, '2021-12-05 08:57:46', '2021-12-05 08:57:46'),
(535, 'default.png', 14, 'Header Component part 1', 'header-component-part-1-61ac7f3e9fccc', NULL, 18, 68, 1, 'https://www.youtube.com/embed/pZlsfQ0jVUk', '00:11:23', 535, NULL, NULL, 0, '2021-12-05 08:58:38', '2021-12-05 08:58:38'),
(536, 'default.png', 14, 'Header Component part-2 (Hamburger for Mobile view)', 'header-component-part-2-(hamburger-for-mobile-view)-61ac7f6822c1c', NULL, 18, 68, 1, 'https://www.youtube.com/embed/Z8BtAY82MJ8', '00:09:26', 536, NULL, NULL, 0, '2021-12-05 08:59:20', '2021-12-05 08:59:20'),
(537, 'default.png', 14, 'Home component', 'home-component-61ac7f8ae06cf', NULL, 18, 68, 1, 'https://www.youtube.com/embed/Vj3y_vAd_Xc', '00:13:54', 537, NULL, NULL, 0, '2021-12-05 08:59:54', '2021-12-05 08:59:54'),
(538, 'default.png', 14, 'Services Component', 'services-component-61ac7fade6051', NULL, 18, 68, 1, 'https://www.youtube.com/embed/YgX6H-vHNxs', '00:12:49', 538, NULL, NULL, 0, '2021-12-05 09:00:29', '2021-12-05 09:00:29'),
(539, 'default.png', 14, 'Fixing bugs in Header Component', 'fixing-bugs-in-header-component-61ac7fd3c36c9', NULL, 18, 68, 1, 'https://www.youtube.com/embed/318MYiaKJck', '00:06:13', 539, NULL, NULL, 0, '2021-12-05 09:01:07', '2021-12-05 09:01:07');
INSERT INTO `courselessions` (`id`, `image`, `user_id`, `lession_name`, `slug`, `lock`, `course_id`, `coursesection_id`, `video_type`, `video_url`, `video_duration`, `orderby`, `summary`, `details`, `status`, `created_at`, `updated_at`) VALUES
(540, 'default.png', 14, 'Projects Component', 'projects-component-61ac8019bd581', NULL, 18, 68, 1, 'https://www.youtube.com/embed/7Dvm-F4c7yA', '00:15:13', 540, NULL, NULL, 0, '2021-12-05 09:02:17', '2021-12-05 09:02:17'),
(541, 'default.png', 14, 'Linking routers', 'linking-routers-61ac803bb0e41', NULL, 18, 68, 1, 'https://www.youtube.com/embed/Otff1QzIIkY', '00:05:40', 541, NULL, NULL, 0, '2021-12-05 09:02:51', '2021-12-05 09:02:51'),
(542, 'default.png', 14, 'About Component', 'about-component-61ac805cadb07', NULL, 18, 68, 1, 'https://www.youtube.com/embed/10VchHTPh78', '00:12:44', 542, NULL, NULL, 0, '2021-12-05 09:03:24', '2021-12-05 09:03:24'),
(543, 'default.png', 14, 'Contact Component', 'contact-component-61ac808911b95', NULL, 18, 68, 1, 'https://www.youtube.com/embed/lrHyxmqthBo', '00:15:41', 543, NULL, NULL, 0, '2021-12-05 09:04:09', '2021-12-05 09:04:09'),
(544, 'default.png', 14, 'Footer Component', 'footer-component-61ac80aea31d9', NULL, 18, 68, 1, 'https://www.youtube.com/embed/YPJukOiCROU', '00:09:06', 544, NULL, NULL, 0, '2021-12-05 09:04:46', '2021-12-05 09:04:46'),
(545, 'default.png', 14, 'Project Demo', 'project-demo-61badc7c85f07', 1, 17, 69, 1, 'https://www.youtube.com/embed/LUgoX-7qEbc', '00:09:21', 545, NULL, NULL, 0, '2021-12-16 06:28:12', '2021-12-16 06:28:12'),
(546, 'default.png', 14, 'Backend Structure and models', 'backend-structure-and-models-61badceb5a28b', NULL, 17, 70, 1, 'https://www.youtube.com/embed/_3BsjrTUns4', '00:18:10', 546, NULL, NULL, 0, '2021-12-16 06:30:03', '2021-12-16 06:30:03'),
(547, 'default.png', 14, 'GET routes', 'get-routes-61badd23bd1d5', NULL, 17, 70, 1, 'https://www.youtube.com/embed/nwekNEr9bp0', '00:09:33', 547, NULL, NULL, 0, '2021-12-16 06:30:59', '2021-12-16 06:30:59'),
(548, 'default.png', 14, 'Login and Register routes', 'login-and-register-routes-61badd58a9e78', NULL, 17, 70, 1, 'https://www.youtube.com/embed/EMONV2fJFdQ', '00:10:56', 548, NULL, NULL, 0, '2021-12-16 06:31:52', '2021-12-16 06:31:52'),
(549, 'default.png', 14, 'POST routes', 'post-routes-61badd8d60244', NULL, 17, 70, 1, 'https://www.youtube.com/embed/LicY0vNOuEY', '00:07:47', 549, NULL, NULL, 0, '2021-12-16 06:32:45', '2021-12-16 06:32:45'),
(550, 'default.png', 14, 'Update and delete routes', 'update-and-delete-routes-61baddafbc781', NULL, 17, 70, 1, 'https://www.youtube.com/embed/wGCX3o421rU', '00:07:36', 550, NULL, NULL, 0, '2021-12-16 06:33:19', '2021-12-16 06:33:19'),
(551, 'default.png', 14, 'Structure and components', 'structure-and-components-61baddd4765b4', NULL, 17, 70, 1, 'https://www.youtube.com/embed/I5CLUhgN_v0', '00:08:16', 551, NULL, NULL, 0, '2021-12-16 06:33:56', '2021-12-16 06:33:56'),
(552, 'default.png', 14, 'App js part 1', 'app-js-part-1-61bade1ac5ba9', NULL, 17, 70, 1, 'https://www.youtube.com/embed/8ZmyGxJstzU', '00:17:12', 552, NULL, NULL, 0, '2021-12-16 06:35:06', '2021-12-16 06:35:06'),
(553, 'default.png', 14, 'App js part 2', 'app-js-part-2-61bade63b76ab', NULL, 17, 70, 1, 'https://www.youtube.com/embed/w1PMINBGAUM', '00:11:44', 553, NULL, NULL, 0, '2021-12-16 06:36:19', '2021-12-16 06:36:19'),
(554, 'default.png', 14, 'Slider', 'slider-61bade85e5913', NULL, 17, 70, 1, 'https://www.youtube.com/embed/P6qqr0r_W_k', '00:08:19', 554, NULL, NULL, 0, '2021-12-16 06:36:53', '2021-12-16 06:36:53'),
(555, 'default.png', 14, 'Header', 'header-61badea4afc00', NULL, 17, 70, 1, 'https://www.youtube.com/embed/2NJcOmotzNI', '00:12:22', 555, NULL, NULL, 0, '2021-12-16 06:37:24', '2021-12-16 06:37:24'),
(556, 'default.png', 14, 'Category and Products', 'category-and-products-61badec32cec6', NULL, 17, 70, 1, 'https://www.youtube.com/embed/RpzbN-L7S2A', '00:13:57', 556, NULL, NULL, 0, '2021-12-16 06:37:55', '2021-12-16 06:37:55'),
(557, 'default.png', 14, 'Checkout', 'checkout-61badeee1a917', NULL, 17, 70, 1, 'https://www.youtube.com/embed/ev2g3ZOP-Sw', '00:14:27', 557, NULL, NULL, 0, '2021-12-16 06:38:38', '2021-12-16 06:38:38'),
(558, 'default.png', 14, 'Login and Register', 'login-and-register-61badf10a5e7d', NULL, 17, 70, 1, 'https://www.youtube.com/embed/_kgdFoIIo9Y', '00:24:38', 558, NULL, NULL, 0, '2021-12-16 06:39:12', '2021-12-16 06:39:12'),
(559, 'default.png', 14, 'Orders', 'orders-61badf46bbb58', NULL, 17, 70, 1, 'https://www.youtube.com/embed/aqU83ZYpQUQ', '00:16:07', 559, NULL, NULL, 0, '2021-12-16 06:40:06', '2021-12-16 06:40:06'),
(560, 'default.png', 14, 'Admin Panel', 'admin-panel-61bae65541a52', NULL, 17, 70, 1, 'https://www.youtube.com/embed/5h-sFsihUSo', '00:26:30', 560, NULL, NULL, 0, '2021-12-16 07:10:13', '2021-12-16 07:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `courseoutcomes`
--

CREATE TABLE `courseoutcomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courseoutcomes`
--

INSERT INTO `courseoutcomes` (`id`, `title`, `course_id`, `created_at`, `updated_at`) VALUES
(48, NULL, '13', '2021-12-01 05:11:43', '2021-12-01 05:11:43'),
(49, 'কোর্সটি সফল ভাবে শেষ করার পর আপনি একজন জাভাস্ক্রিপ্ট ডেভলপার হিসেবে আপনার ক্যারিয়ার শুরু করতে পারবেন, এছাড়া রিয়াক্ট জেএস শেখা অথবা এঙ্গুলার জেএস শিখতে কোর্সটি আপনাকে ১০০% সহযোগিতা করবে', '14', '2021-12-01 05:35:21', '2021-12-07 09:07:24'),
(50, NULL, '15', '2021-12-01 06:02:46', '2021-12-01 06:02:46'),
(51, NULL, '16', '2021-12-01 06:24:40', '2021-12-01 06:24:40'),
(52, NULL, '17', '2021-12-03 13:47:45', '2021-12-03 13:47:45'),
(53, NULL, '18', '2021-12-05 05:12:35', '2021-12-05 05:12:35'),
(54, 'Ipsum sed aut ut ve', '19', '2021-12-14 05:31:52', '2021-12-14 05:31:52'),
(55, 'Error laudantium al', '20', '2021-12-14 05:50:44', '2021-12-14 05:50:44'),
(56, 'dd', '8', NULL, NULL),
(57, 'dd', '11', '2021-12-14 06:19:57', '2021-12-14 06:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `courserequirements`
--

CREATE TABLE `courserequirements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courserequirements`
--

INSERT INTO `courserequirements` (`id`, `title`, `course_id`, `created_at`, `updated_at`) VALUES
(59, NULL, '13', '2021-12-01 05:11:43', '2021-12-01 05:11:43'),
(60, 'HTML', '14', '2021-12-01 05:35:21', '2021-12-07 09:05:28'),
(61, NULL, '15', '2021-12-01 06:02:46', '2021-12-01 06:02:46'),
(62, NULL, '16', '2021-12-01 06:24:40', '2021-12-01 06:24:40'),
(63, NULL, '17', '2021-12-03 13:47:45', '2021-12-03 13:47:45'),
(64, 'i', '18', '2021-12-05 05:12:35', '2021-12-06 13:39:43'),
(65, 'fds', '18', '2021-12-06 13:39:55', '2021-12-06 13:39:55'),
(66, 'fdsaf', '8', '2021-12-06 13:39:55', '2021-12-06 13:39:55'),
(67, 'Ut consequatur dolo', '19', '2021-12-14 05:31:52', '2021-12-14 05:31:52'),
(68, 'Recusandae Vitae la', '20', '2021-12-14 05:50:44', '2021-12-14 05:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uploader_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coursecategory_id` int(11) NOT NULL,
  `populer_post` int(11) DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_course` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `uploader_id`, `user_id`, `course_title`, `slug`, `short_description`, `description`, `coursecategory_id`, `populer_post`, `level`, `language`, `status`, `top_course`, `course_type`, `course_price`, `media_provider`, `video_link`, `video_thumbnail`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(11, 3, 8, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '12', 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট\r\nJob Ready Complete Course', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; color: #4b5981;\">বর্তমান বিশ্বে ফ্রন্টইন্ড ডেভলপমেন্ট এর সবছেয়ে জনপ্রিয় এবং ডিমান্ডেবল জাভাস্ক্রিপ্ট লাইব্রেরী হলো &ldquo;রিএক্ট&rdquo;<br style=\"box-sizing: border-box;\" />এটি একটি ইন্টারেক্টিভ ইউজার ইন্টারফেস (UI) ভিত্তিক জাভাস্ক্রিপ্ট ফ্রেমওয়ার্ক যা দিয়ে খুব দ্রুত ওয়েব ও মোবাইল অ্যাপ তৈরী করা যায়।&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: inherit; font-style: inherit; font-weight: 600;\">রিয়েক্ট জেএস</span>&nbsp;ওপেন-সোর্স প্ল্যাটফর্মে তৈরী; অধিক কম্পোনেন্ট সমৃদ্ধ লাইব্রেরী।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; color: #4b5981;\">অন্তত কখনো ট্রাই না করলেও এর নাম শুনেছেন, এটুকু শুনেছেন যে এটা অনেক হট একটা লাইব্রেরী। এটা শিখা অনেকের কাছে স্বপ্নের মতো। এর জন্যেই হয়তো অনেকের ইচ্ছা জাগে রিঅ্যাক্ট কিভাবে শিখা যায়। তো এটার নাম যেহেতু এতো মানুষের মুখে মুখে, তাহলে নিশ্চয়ই এটার মধ্যে কোন স্পেশালিটি আছে। আর হ্যাঁ অবশ্যই, রিঅ্যাক্ট এর মধ্যে বেশ অনেকগুলো স্পেশালিটি আছে, যার জন্যে এটা ডেভেলপার কমিউনিটিতে এতোটা পপুলারিটি পেয়েছে এবং এখন পর্যন্ত সগর্বে সব লাইব্রেরীর সাথে টেক্কা দিয়ে চলছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; color: #4b5981;\">সহজেই ইউজার ইন্টারফেজ বানানো, পেজে যেকোনো ধরনের পরিবর্তন সহজেই, কম সময়ের মধ্যে করানো, ডাটা একজায়গা থেকে আরেকজায়গায় ফ্লো করানো, এগুলো সবকিছুতেই রিঅ্যাক্ট এক্সপার্ট। আর বিশেষ করে এ কারণেই রিঅ্যাক্ট এতো পপুলার। তাছাড়া আরো যে কারণ আছে সেগুলোর মধ্যে অন্যতম হলো রিঅ্যাক্ট এর অ্যাপিআই অনেক ছোটো। আর তাই শিখা যায় সহজে, আর কোড নিয়ে ডেভেলপারদের কনফিউশানে পড়তে হয় না। অন্যান্য কিছু লাইব্রেরীর মতো সিদ্ধান্তহীনতায় ভুগতে হয় না কোন টেকনিক ছেড়ে কোনটা ইউজ করবো এরকম ভাবনায়। তাছাড়া রিঅ্যাক্ট নেটিভ ইউজ করে নেটিভ অ্যান্ড্রয়েড, অ্যাপেলের ক্রস প্ল্যাটফর্ম অ্যাপ বানানো যায়। আরো যদি চান তাইলে সার্ভার সাইডেও নোড জেএস বা এরকম আরো যেগুলো আছে সেগুলোর সাথেও রিঅ্যাক্ট ইউজ করা যায় সহজে। তো এতো ছোটো একটা লাইব্রেরী হয়ে এতো কাজ একসাথে করতে পারলে রিঅ্যাক্ট পপুলার হবে না তো কে হবে?</p>\r\n</body>\r\n</html>', 4, NULL, '3', '1', '1', '1', NULL, '2900', '1', 'https://www.youtube.com/embed/uqorvN_lyLo', 'image-course61aaf6a17bef4.jpg', 'React js,', NULL, '2021-11-30 16:41:18', '2021-12-28 12:17:40'),
(14, 3, 8, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '85', 'এই কোর্সে আমরা জাভাস্ক্রিপ্ট বেসিক থেকেই শিখব ! তবে সেটা গতানুগতিক পদ্ধতীতে না। আমরা একটু ভিন্নভাবে জাভাস্ক্রিপ্ট কে শেখার ট্রাই করব এই কোর্সে। আমাদের মেইন পারপাস হলো ২ টা।\r\n১। রিয়াক্ট জেএস ডেভলপার হওয়া।\r\n২। জাভাস্ক্রিপ্ট ডেভলপার হওয়া।', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"color: #4b5981; font-family: \'Open Sans\', sans-serif;\">এই কোর্সে আমরা জাভাস্ক্রিপ্ট বেসিক থেকেই শিখব ! তবে সেটা গতানুগতিক পদ্ধতীতে না। আমরা একটু ভিন্নভাবে জাভাস্ক্রিপ্ট কে শেখার ট্রাই করব এই কোর্সে। আমাদের মেইন পারপাস হলো ২ টা।</span><br style=\"box-sizing: border-box; color: #4b5981; font-family: \'Open Sans\', sans-serif;\" /><span style=\"color: #4b5981; font-family: \'Open Sans\', sans-serif;\">১। রিয়াক্ট জেএস ডেভলপার হওয়া।</span><br style=\"box-sizing: border-box; color: #4b5981; font-family: \'Open Sans\', sans-serif;\" /><span style=\"color: #4b5981; font-family: \'Open Sans\', sans-serif;\">২। জাভাস্ক্রিপ্ট ডেভলপার হওয়া।</span></p>\r\n</body>\r\n</html>', 4, NULL, 'Intermediate', '1', '1', '1', NULL, '2550', '1', 'https://www.youtube.com/embed/eUmBn-brXhM', 'image-course61aaf6c43d691.jpg', 'javascript', NULL, '2021-12-01 05:35:21', '2021-12-13 12:45:51'),
(15, 3, 8, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '86', 'এখনকার যুগে ওয়েব ডিজাইন সম্পর্কে টুকটাক আইডিয়া আপনার থাকতেই হবে। আর যাঁরা পুরোপুরি ফ্রন্ট ইন্ড ডেভলপার হতে চান তাঁদের তো আটঘাট বেধেই নামতে হবে। যারা প্রপেশনাল ওয়েব ডিজাইন শিখবেন ভাবছেন  তাদের জন্যই মূলত এই কোর্স।  এই কোর্স এ আমি নিজে স্ক্রাচ থেকে শুরু করে পিএসডি টু এইচটি এম এল এবং বুটস্ট্রাপ দিয়ে রেসন্সিভ একটা সাইট বানিয়ে হাতে কলমে দেখিয়েছি । HTML, CSS, BOOTSTRAP এ টু জেড দেখানো হয়েছে এই কোর্সে। সাথে দেখিয়েছি জেকুয়ারীর জনপ্রিয় ১০ টি প্ল্যাগিন এর কাজ। আমাদের উদ্যেশ্যই হলো আপনাকে একজন প্রপেশনাল ফ্রন্ট ইন্ড ডেভলপার বানানো। আর এটার জন্য যত রকমের সাপোর্ট দরকার সেটা আমরা আপনাকে দিব। মনে রাখবেন Money Always By Product ! আপনার যদি স্কিল থাকে অবশ্যই আপনি টাকা আয় করতে পারবেন।  আপনার যদি মনে হয় একটা কোর্স কিনে আপনি অনলাইনে আয় শুরু করবেন, আপনি বোকার স্বর্গে বাস করছেন। দিন শেষে সব নির্ভর করবে আপনি কতটুকু পরিশ্রম করতে পারেন এবং সময় দিতে পারেন।  আমাদের কাজ দিন শেষে আপনাকে সঠিক রাস্তায় রাখা। তবে হাঁটতে হবে আপনাকেই ।', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"color: #4b5981; font-family: \'Open Sans\', sans-serif;\">এখনকার যুগে ওয়েব ডিজাইন সম্পর্কে টুকটাক আইডিয়া আপনার থাকতেই হবে। আর যাঁরা পুরোপুরি ফ্রন্ট ইন্ড ডেভলপার হতে চান তাঁদের তো আটঘাট বেধেই নামতে হবে। যারা প্রপেশনাল ওয়েব ডিজাইন শিখবেন ভাবছেন &nbsp;তাদের জন্যই মূলত এই কোর্স। &nbsp;এই কোর্স এ আমি নিজে স্ক্রাচ থেকে শুরু করে পিএসডি টু এইচটি এম এল এবং বুটস্ট্রাপ দিয়ে রেসন্সিভ একটা সাইট বানিয়ে হাতে কলমে দেখিয়েছি । HTML, CSS, BOOTSTRAP এ টু জেড দেখানো হয়েছে এই কোর্সে। সাথে দেখিয়েছি জেকুয়ারীর জনপ্রিয় ১০ টি প্ল্যাগিন এর কাজ। আমাদের উদ্যেশ্যই হলো আপনাকে একজন প্রপেশনাল ফ্রন্ট ইন্ড ডেভলপার বানানো। আর এটার জন্য যত রকমের সাপোর্ট দরকার সেটা আমরা আপনাকে দিব। মনে রাখবেন Money Always By Product ! আপনার যদি স্কিল থাকে অবশ্যই আপনি টাকা আয় করতে পারবেন। &nbsp;আপনার যদি মনে হয় একটা কোর্স কিনে আপনি অনলাইনে আয় শুরু করবেন, আপনি বোকার স্বর্গে বাস করছেন। দিন শেষে সব নির্ভর করবে আপনি কতটুকু পরিশ্রম করতে পারেন এবং সময় দিতে পারেন।&nbsp; আমাদের কাজ দিন শেষে আপনাকে সঠিক রাস্তায় রাখা। তবে হাঁটতে হবে আপনাকেই ।</span></p>\r\n</body>\r\n</html>', 4, NULL, '1', '1', '1', '1', NULL, '1500', '1', 'https://www.youtube.com/embed/MqHfOJhDpmg', 'image-course61aaf7b6943c0.jpg', 'html, css, psd to html', NULL, '2021-12-01 06:02:46', '2021-12-14 06:05:32'),
(16, 8, 8, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '47', 'আচ্ছা কেমন দেখায় বলুন তো ? আপনি একটা গন্তব্যে যেতে চাচ্ছেন, অথচ আপনি জানেন না কিভাবে সেখানে যেতে হবে ?  অন্ধের মতো শুধু ছুটেই চলেছেন অবিরাম !  আদৌ কি আপনি সেই গন্তব্যে পৌছাতে পারবেন ? যদি এমন হয়, যে কোন প্রকারে হোক আপনাকে সেখানে পৌছাতেই হবে ! তখন কি করবেন ?\r\n২০১৩/২০১৪ এই সময়টাতে যখন আমি কোডিং করা ‍শুরু করি তখন এমন কিছু বিষয় আমার জানার দরকার ছিল যেই বিষয়গুলো না জানার কারনে সাকসেস এর রাস্তায় হাটতে হয়েছে আমাকে দ্বিগুন। কথায় বলেনা কেউ দেখে শিখে, আর কেউ ঠেকে শিখে ! আমার বিষয়টা ছিল ঠেকে শেখার মতো। এই ঠেকে শিখতে গিয়ে আমি কোথায় কোথায় ঠেকেছি সেই বিষয়গুলায় স্টেপ বাই স্টেপ আলোচনা করেছি এই কোর্সে। এটা এমন একটা কোর্স যেখানে আপনাকে কোন প্র্যাকটিস করতে হবেনা। শুধু বিষয়গুলা জানলেই হবে।\r\nসিম্পলভাবে যদি আমি বলি   এই কোর্সের বেনিফিট আসলে কি ?\r\nপ্রথমতো হচ্ছে এই কোর্সটা কমপ্লিট করার পর আপনাকে আর কখনো কারো কাছে ওয়েব ডিজাইন এন্ড ডেভলপার হওয়া থেকে শুরু করে ক্যারিয়ার গড়ার জন্য  কখনো নক দিতে হবেনা। একজন নতুন মানুষ বা যারা এলোমেলো ভাবে ওয়েব ডিজাইন ডেভলপমেন্ট শিখছেন তাদের জন্য এই কোর্স টা একটা এন্টিবায়েটিক এর মতো কাজ করবে। অথ্যাৎ আপনি কোন রাস্তায় হাটবেন, কতটুকু হাটবেন, কি ভাবে হাটবেন সবছিকু স্টেপ বাই স্টেপ আলোচনা করা হয়েছে এই কোর্সে।\r\n\r\nআমি এমন অনেক কে দেখেছি খুব সিম্পল একটা বিষয় না জানার কারনে সঠিক ভাবে গাইডলাইন নিতে পারেনা বা বুঝে উঠতে পারেনা যে, আসলে কোনটা তার জন্য ব্যাটার হবে। এই কোর্সে সে বিষয়গুলো নিয়ে বিশদভাবে আলোচনা করা হয়েছে। হুট করে যারা সিদ্ধান্ত নিয়ে ফেলেন ওয়েব ডিজাইনার / ডেভলপার হবেন তাদের জন্য এই কতটা উপকারী হবে তা শুধুমাত্র আপনি কোর্স টা কম্পিলিটিট করার পরই বুঝতে পারবেন।\r\nআপনি আসলে কি করতে যাচ্ছেন সেটাই যদি আপনার ক্লিয়ার না থাকে, আপনি আসলে কিছুই করছেন না ! ব্যাপারটা অনেক টা এমন। কোর্সটি কমপ্লিট করার পর আপনি নিজে যেমন সঠিক গাইডলাইন পাবেন এর পাশাপাশি আপনি অন্যদেরও চাইলে গাইডলাইন দিতে পারবেন।\r\n\r\nসম্ভবত ওয়েব নিয়ে বাংলা ভাষায়  এটাই একমাত্র  গাইডলাইন মূলক কোর্স যেটা একদম নতুন একটা মানুষ যে, শুধু নাম শুনেছে অথবা যারা অলরেডি ওয়েবে ক্যারিয়ার গড়ার জন্য এগিয়ে যাচ্ছে তাকেও ১০০% সাহায্য করবে সিদ্ধান্ত নিতে। শুধু মাত্র ভুল সিদ্ধান্তের কারনে অনেকে ভুল রাস্তায় হাটে। একই সাথে সময় এবং অর্থ ২টা অপচয় করে।\r\nমনে রাখবেন পরিশ্রম করা ভাল ! কিন্তু সেটা যদি সঠিক রাস্তায় না হয় তাহলে ফুল লাইফ আফসোস করতে হবে।\r\n\r\nএই কোর্সে আমি যে টপিক গুলো নিয়ে আলোচনা করেছি হতে পারে তার মধ্যে হয়ত ১টা টপিক না জানার কারনে আপনার অনেক বড় অর্থ এবং সময় ২টারই অপচয় হতে পারে। সুতরাং বুঝতেই পারছেন এই কোর্সের টপিক গুলোর গুরুত্ব। সত্যি বলতে এগুলা না জানলে আপনার অনেককিছু অজানাই থেকে যাবে।', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2 style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.4; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; font-size: 20px; color: #333333;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: inherit; font-style: inherit;\">আচ্ছা কেমন দেখায় বলুন তো ? আপনি একটা গন্তব্যে যেতে চাচ্ছেন, অথচ আপনি জানেন না কিভাবে সেখানে যেতে হবে ?&nbsp; অন্ধের মতো শুধু ছুটেই চলেছেন অবিরাম !&nbsp; আদৌ কি আপনি সেই গন্তব্যে পৌছাতে পারবেন ? যদি এমন হয়, যে কোন প্রকারে হোক আপনাকে সেখানে পৌছাতেই হবে ! তখন কি করবেন ?</span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; color: #4b5981;\">২০১৩/২০১৪ এই সময়টাতে যখন আমি কোডিং করা &zwj;শুরু করি তখন এমন কিছু বিষয় আমার জানার দরকার ছিল যেই বিষয়গুলো না জানার কারনে সাকসেস এর রাস্তায় হাটতে হয়েছে আমাকে দ্বিগুন। কথায় বলেনা কেউ দেখে শিখে, আর কেউ ঠেকে শিখে ! আমার বিষয়টা ছিল ঠেকে শেখার মতো। এই ঠেকে শিখতে গিয়ে আমি কোথায় কোথায় ঠেকেছি সেই বিষয়গুলায় স্টেপ বাই স্টেপ আলোচনা করেছি এই কোর্সে। এটা এমন একটা কোর্স যেখানে আপনাকে কোন প্র্যাকটিস করতে হবেনা। শুধু বিষয়গুলা জানলেই হবে।<br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: inherit; font-style: inherit; font-weight: 600;\">সিম্পলভাবে যদি আমি বলি&nbsp; &nbsp;এই কোর্সের বেনিফিট আসলে কি ?</span><br style=\"box-sizing: border-box;\" />প্রথমতো হচ্ছে এই কোর্সটা কমপ্লিট করার পর আপনাকে আর কখনো কারো কাছে ওয়েব ডিজাইন এন্ড ডেভলপার হওয়া থেকে শুরু করে&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: inherit; font-style: inherit; font-weight: 600;\">ক্যারিয়ার গড়ার</span>&nbsp;জন্য&nbsp; কখনো নক দিতে হবেনা। একজন নতুন মানুষ বা যারা এলোমেলো ভাবে ওয়েব ডিজাইন ডেভলপমেন্ট শিখছেন তাদের জন্য এই কোর্স টা একটা এন্টিবায়েটিক এর মতো কাজ করবে। অথ্যাৎ আপনি কোন রাস্তায় হাটবেন, কতটুকু হাটবেন, কি ভাবে হাটবেন সবছিকু স্টেপ বাই স্টেপ আলোচনা করা হয়েছে এই কোর্সে।</p>\r\n<blockquote style=\"box-sizing: border-box; margin: 20px 40px; padding: 0px 0px 0px 20px; border-width: 0px 0px 0px 3px; border-style: solid; border-color: #13aff0; border-image: initial; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; font-style: italic; quotes: none; color: #4b5981;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: inherit; font-style: inherit; font-weight: inherit;\">আমি এমন অনেক কে দেখেছি খুব সিম্পল একটা বিষয় না জানার কারনে সঠিক ভাবে গাইডলাইন নিতে পারেনা বা বুঝে উঠতে পারেনা যে, আসলে কোনটা তার জন্য ব্যাটার হবে। এই কোর্সে সে বিষয়গুলো নিয়ে বিশদভাবে আলোচনা করা হয়েছে। হুট করে যারা সিদ্ধান্ত নিয়ে ফেলেন ওয়েব ডিজাইনার / ডেভলপার হবেন তাদের জন্য এই কতটা উপকারী হবে তা শুধুমাত্র আপনি কোর্স টা কম্পিলিটিট করার পরই বুঝতে পারবেন।<br style=\"box-sizing: border-box;\" />আপনি আসলে কি করতে যাচ্ছেন সেটাই যদি আপনার ক্লিয়ার না থাকে, আপনি আসলে কিছুই করছেন না ! ব্যাপারটা অনেক টা এমন। কোর্সটি কমপ্লিট করার পর আপনি নিজে যেমন সঠিক গাইডলাইন পাবেন এর পাশাপাশি আপনি অন্যদেরও চাইলে গাইডলাইন দিতে পারবেন।</p>\r\n</blockquote>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; color: #4b5981;\">সম্ভবত ওয়েব নিয়ে বাংলা ভাষায়&nbsp; এটাই একমাত্র&nbsp; গাইডলাইন মূলক কোর্স যেটা একদম নতুন একটা মানুষ যে, শুধু নাম শুনেছে অথবা যারা অলরেডি ওয়েবে ক্যারিয়ার গড়ার জন্য এগিয়ে যাচ্ছে তাকেও ১০০% সাহায্য করবে সিদ্ধান্ত নিতে। শুধু মাত্র ভুল সিদ্ধান্তের কারনে অনেকে ভুল রাস্তায় হাটে। একই সাথে সময় এবং অর্থ ২টা অপচয় করে।<br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: inherit; font-style: inherit; font-weight: 600;\">মনে রাখবেন পরিশ্রম করা ভাল ! কিন্তু সেটা যদি সঠিক রাস্তায় না হয় তাহলে ফুল লাইফ আফসোস করতে হবে।</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; color: #4b5981;\">এই কোর্সে আমি যে টপিক গুলো নিয়ে আলোচনা করেছি হতে পারে তার মধ্যে হয়ত ১টা টপিক না জানার কারনে আপনার অনেক বড় অর্থ এবং সময় ২টারই অপচয় হতে পারে। সুতরাং বুঝতেই পারছেন এই কোর্সের টপিক গুলোর গুরুত্ব। সত্যি বলতে এগুলা না জানলে আপনার অনেককিছু অজানাই থেকে যাবে।</p>\r\n</body>\r\n</html>', 4, NULL, 'Advanced', '1', '1', '1', NULL, '750', '1', 'https://www.youtube.com/embed/Q9xtRPzr-J4', 'image-course61aaf70edff75.jpg', 'web development', NULL, '2021-12-01 06:24:40', '2021-12-12 13:36:09'),
(17, 3, 14, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '55', 'ওয়েব ডেভেলপমেন্ট ইন্ডাস্ট্রির জনপ্রিয় স্ট্যাক MERN stack । ব্যাকইন্ডে Node.js রানটাইম এবং জাভাস্ক্রিপ্ট ফ্রেমওয়ার্ক Express.js এর সাহায্যে ব্যাকইন্ড ওয়েব ডেভলপমেন্ট করা সম্ভব হয়  প্রোগ্রামারদের মধ্যে বর্তমানে জনপ্রিয়তার শির্ষে অবস্থান করছে Node.js । কারণ এর ফলে শুধুমাত্র জাভাস্ক্রিপ্ট এ দক্ষতা লাভ করে ফুল স্ট্যাক ওয়েব ডেভেলপমেন্টের কাজ করা যায়। Mozill, Netflix,  Paypal, LinkedIn, UBER,  এর মতো বিশ্বের নামীদামী কোম্পানিগুলো বর্তমানে তাদের ব্যাকইন্ডে এই প্রযুক্তি ব্যবহার করছে।\r\n\r\nএছাড়াও রিয়েল টাইম কমিউনিকেশন প্রসেস দ্রুত হওয়ার কারনে নোড জেএস অনেক জনপ্রিয়। Node.js এর synchronization প্রসেস বেশ দ্রুত হওয়ায় এইসব অ্যাপের ক্ষেত্রে Node.js বেশ কার্যকরী। আবার এই রানটাইম এনভারনমেন্টটি Google Chrome এর V8 Engine ব্যবহার করে তৈরি করা হয়েছে। এর ফলে Node খুব দ্রুত জাভাস্ক্রিপ্ট কোড রান ও এক্সিকিউট করা যায়।\r\n\r\nএই কোর্সে আমরা শিখব কিভাবে Node.js, Express JS, Mongodb  ব্যবহার করে কিভাবে রিয়েল লাইফ প্রযেক্ট করা যায় সেটা বেসিক থেকে এডভান্স পর্যন্ত শিখব প্রযেক্ট ভিত্তিক।', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; color: #4b5981;\">ওয়েব ডেভেলপমেন্ট ইন্ডাস্ট্রির জনপ্রিয় স্ট্যাক MERN stack । ব্যাকইন্ডে Node.js রানটাইম এবং জাভাস্ক্রিপ্ট ফ্রেমওয়ার্ক Express.js এর সাহায্যে ব্যাকইন্ড ওয়েব ডেভলপমেন্ট করা সম্ভব হয় &nbsp;প্রোগ্রামারদের মধ্যে বর্তমানে জনপ্রিয়তার শির্ষে অবস্থান করছে Node.js । কারণ এর ফলে&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: inherit; font-style: inherit; font-weight: 600;\">শুধুমাত্র জাভাস্ক্রিপ্ট এ দক্ষতা লাভ করে ফুল স্ট্যাক ওয়েব ডেভেলপমেন্টের কাজ করা যায়</span>। Mozill, Netflix,&nbsp; Paypal, LinkedIn, UBER,&nbsp; এর মতো বিশ্বের নামীদামী কোম্পানিগুলো বর্তমানে তাদের ব্যাকইন্ডে এই প্রযুক্তি ব্যবহার করছে।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; color: #4b5981;\">এছাড়াও রিয়েল টাইম কমিউনিকেশন প্রসেস দ্রুত হওয়ার কারনে নোড জেএস অনেক জনপ্রিয়। Node.js এর synchronization প্রসেস বেশ দ্রুত হওয়ায় এইসব অ্যাপের ক্ষেত্রে Node.js বেশ কার্যকরী। আবার এই রানটাইম এনভারনমেন্টটি Google Chrome এর V8 Engine ব্যবহার করে তৈরি করা হয়েছে। এর ফলে Node খুব দ্রুত জাভাস্ক্রিপ্ট কোড রান ও এক্সিকিউট করা যায়।</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-family: \'Open Sans\', sans-serif; color: #4b5981;\">এই কোর্সে আমরা শিখব কিভাবে Node.js, Express JS, Mongodb&nbsp; ব্যবহার করে কিভাবে রিয়েল লাইফ প্রযেক্ট করা যায় সেটা বেসিক থেকে এডভান্স পর্যন্ত শিখব প্রযেক্ট ভিত্তিক।</p>\r\n</body>\r\n</html>', 4, NULL, '3', '1', '1', '1', NULL, '2990', '1', 'https://www.youtube.com/embed/Dz1KHhcs7X0', '22-61ae35d4ba108.jpg', 'javascript, node js, react js, mongo db, Express', NULL, '2021-12-03 13:47:45', '2021-12-16 06:25:29'),
(18, 3, 14, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '75', 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"color: #4b5981; font-family: \'Open Sans\', sans-serif;\">&nbsp;ফ্রিল্যান্সিং মার্কেট থেকে শুরু করে যে কোন ইন্ড্রাষ্ট্রিতে এই কাজটার চাহিদা এখন তুঙ্গে। যে কারনে আমাদের উদ্দেশ্য ছিল এই রকম একটি কোর্স আপনাদের হাতে তুলে দেওয়া যেটা করার পর আপনি যে কোন HTML টেমপ্লেটকে অনায়াসে REACT CONVERT করে ফেলতে পারবেন। কিন্তু এই কোর্সটি আনতে গিয়ে আমরা জাভাস্ক্রিপ্ট ফান্ডামেন্টাল কনসেপ্ট এবং রিয়াক্ট এর বেসিক থেকে শুরু করে এডভান্স পর্যন্ত কাভার করেছি তারপর একটা মাল্টিপল HTML টেমপ্লেট কে REACT CONVERT করা দেখিয়েছি। বলা যায় বাংলা ভাষায় এখনো পর্যন্ত এই রকম একটা কোর্স আপনারা পাবেন না।&nbsp; HTML To REACT CONVERT কোর্সটি কমপ্লিট করার পর ইনশাআল্লাহ আপনি আপনার ওয়েব ক্যারিয়ার কে অনেকদুর এগিয়ে নিয়ে যেতে পারবেন পাশাপাশি যে কোন মার্কেট প্লেজে আপনার এই সার্ভিস আপনি সেল করতে পারবেন।</span></p>\r\n</body>\r\n</html>', 4, NULL, '3', '1', '1', '1', NULL, '1800', '1', 'https://www.youtube.com/embed/BkLHtr4Hebw', 'image-course61ac4a436faad.jpg', 'React js, javascript, html to reacet', 'React js, javascript, html to reacet', '2021-12-05 05:12:35', '2021-12-16 06:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `coursesections`
--

CREATE TABLE `coursesections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `short_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursesections`
--

INSERT INTO `coursesections` (`id`, `title`, `user_id`, `course_id`, `status`, `short_order`, `created_at`, `updated_at`) VALUES
(32, 'রিএক্ট এর হাতেখড়ি !', 8, 11, 1, 1, '2021-12-01 05:38:15', '2021-12-01 05:38:15'),
(33, 'রিয়াক্ট বেসিক', 8, 11, 1, 1, '2021-12-01 05:40:05', '2021-12-06 08:44:50'),
(34, 'রাজমহল প্রযেক্ট', 8, 11, 1, 1, '2021-12-01 08:41:36', '2021-12-01 08:41:36'),
(35, 'কম্পোনেন্ট লাইফ সাইকেল।', 8, 11, 1, 1, '2021-12-01 09:02:44', '2021-12-01 09:02:44'),
(36, 'রিয়াক্ট রাউটার', 8, 11, 1, 1, '2021-12-01 09:15:02', '2021-12-01 09:15:02'),
(37, 'রাজমহল প্রযেক্ট কে রাউটারে এড করা।', 8, 11, 1, 1, '2021-12-01 09:21:27', '2021-12-01 09:21:27'),
(38, 'ফর্ম হ্যান্ডেলিং করা ।', 8, 11, 1, 1, '2021-12-01 09:26:08', '2021-12-01 09:26:08'),
(39, 'রাজমহল প্রযেক্টে ফর্ম এড করা।', 8, 11, 1, 1, '2021-12-01 09:31:46', '2021-12-01 09:31:46'),
(40, 'বেসিক রিডাক্স', 8, 11, 1, 1, '2021-12-01 09:41:01', '2021-12-01 09:41:01'),
(41, 'রিডাক্স কে প্রযেক্টে এপ্লাই করা', 8, 11, 1, 1, '2021-12-01 11:48:30', '2021-12-01 11:48:30'),
(42, 'এডভান্স রিডাক্স', 8, 11, 1, 1, '2021-12-01 13:13:13', '2021-12-01 13:13:13'),
(43, 'রিয়াক্ট রিডাক্স ফর্ম এর ব্যবহার', 8, 11, 1, 1, '2021-12-01 13:15:30', '2021-12-01 13:16:08'),
(44, 'রেস্ট এপিআই এবং জেসন সার্ভার', 8, 11, 1, 1, '2021-12-01 13:44:32', '2021-12-01 13:44:32'),
(45, 'প্রযেক্টে রেস্ট এপিআই এর ব্যবহার', 8, 11, 1, 1, '2021-12-01 14:51:54', '2021-12-01 14:51:54'),
(46, 'লাইক ফুডপান্ডা ! নেক্সট প্রযেক্ট', 8, 11, 1, 1, '2021-12-01 15:21:55', '2021-12-01 15:21:55'),
(47, 'অথেনটেকিশন', 8, 11, 1, 3, '2021-12-01 16:34:10', '2021-12-01 22:52:04'),
(48, 'CONCEPTS OF JAVASCRIPT', 8, 14, 1, 1, '2021-12-02 04:10:45', '2021-12-02 04:10:45'),
(49, 'CONCEPTS OF JAVASCRIPT - PART - 02', 8, 14, 1, 1, '2021-12-02 15:17:51', '2021-12-02 15:17:51'),
(50, 'JAVASCRIPT ADVANCED CONCEPTS', 8, 14, 1, 1, '2021-12-02 15:37:04', '2021-12-02 15:37:04'),
(51, 'JSON - JAVASCRIPT OBJECT NOTATION', 8, 14, 1, 1, '2021-12-02 16:00:22', '2021-12-02 16:00:22'),
(52, 'AJAX - Asynchronous JavaScript And XML', 8, 14, 1, 1, '2021-12-02 16:12:39', '2021-12-02 16:12:39'),
(53, 'Project - 01', 8, 14, 1, 1, '2021-12-02 16:23:29', '2021-12-02 16:23:29'),
(54, 'Project - 02', 8, 14, 1, 1, '2021-12-02 16:28:50', '2021-12-02 16:28:50'),
(55, 'ES - 6', 8, 14, 1, 1, '2021-12-02 17:06:42', '2021-12-02 17:06:42'),
(56, 'HTML CSS - Basic To Advanced', 8, 15, 1, 1, '2021-12-03 08:41:16', '2021-12-03 09:02:48'),
(57, 'Bootstrap - Basic To Advanced', 8, 15, 1, 1, '2021-12-03 09:03:27', '2021-12-03 09:03:27'),
(58, 'PSD TO HTML CONVERT WITH BOOTSTRAP - PROJECT', 8, 15, 1, 1, '2021-12-03 11:45:00', '2021-12-03 11:45:00'),
(59, 'ওয়েব কনসেপ্ট, ক্যারিয়ার গাইডলাইন এ টু জেড', 8, 16, 1, 1, '2021-12-03 12:44:01', '2021-12-03 12:44:01'),
(60, 'Most Important Topic', 14, 17, 1, 1, '2021-12-03 13:52:10', '2021-12-03 13:52:10'),
(61, 'Express JS', 14, 17, 1, 1, '2021-12-03 14:01:23', '2021-12-03 14:01:23'),
(62, 'First Project', 14, 17, 1, 1, '2021-12-03 14:06:23', '2021-12-03 14:06:23'),
(63, '‍Second Project', 14, 17, 1, 1, '2021-12-03 14:45:55', '2021-12-03 14:45:55'),
(64, 'Final Task', 14, 17, 1, 1, '2021-12-03 14:59:11', '2021-12-03 14:59:11'),
(65, 'Bonus Lesson', 14, 17, 1, 1, '2021-12-03 15:22:08', '2021-12-03 15:22:08'),
(66, 'JavaScript Necessary Class', 14, 18, 1, 1, '2021-12-05 06:57:40', '2021-12-05 06:57:40'),
(67, 'React JS Necessary Class', 14, 18, 1, 1, '2021-12-05 07:01:59', '2021-12-05 07:01:59'),
(68, 'HTML TO REACT CONVERT – Project', 14, 18, 1, 1, '2021-12-05 08:56:41', '2021-12-05 08:56:41'),
(69, 'Food Delivery  App ! Project', 14, 17, 1, 1, '2021-12-16 06:26:44', '2021-12-16 06:26:44'),
(70, 'Backend Development', 14, 17, 1, 1, '2021-12-16 06:29:17', '2021-12-16 06:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `cupons`
--

CREATE TABLE `cupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuponname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `validtill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cupons`
--

INSERT INTO `cupons` (`id`, `cuponname`, `cupon_code`, `course_id`, `user_id`, `discount`, `validtill`, `status`, `created_at`, `updated_at`) VALUES
(2, 'React JS', 'ReactJS100', 11, 3, 100, '2021-12-15', 1, '2021-12-07 09:13:22', '2021-12-07 09:13:22'),
(3, 'CONCEPTS OF JAVASCRIPT', 'Javascript100', 14, 3, 100, '2021-12-15', 1, '2021-12-07 09:14:58', '2021-12-07 09:14:58'),
(4, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', 'Herotozero100', 15, 3, 100, '2021-12-15', 1, '2021-12-07 09:16:21', '2021-12-07 09:16:21'),
(5, 'Web Concept', 'Webconcept100', 16, 3, 100, '2021-12-15', 1, '2021-12-07 09:17:18', '2021-12-07 09:17:18'),
(6, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট', 'Backend-development10', 17, 3, 100, '2021-12-15', 1, '2021-12-07 16:23:03', '2021-12-07 16:23:03'),
(7, 'Html to React', 'Html-to-react-100', 18, 3, 100, '2021-12-15', 1, '2021-12-07 16:24:50', '2021-12-07 16:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `institute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `user_id`, `institute_name`, `degree_name`, `year`, `created_at`, `updated_at`) VALUES
(4, 2, 'Rebekah Foley', 'Timon Gonzales', 1979, '2021-11-16 02:19:41', NULL),
(5, 2, 'Felicia Wise', 'Shelly Pearson', 2006, '2021-11-16 02:43:47', NULL),
(8, 2, 'Ivana Nieves', 'Caleb Cohen', 2006, '2021-11-16 03:45:46', NULL),
(9, 4, 'Ivana Nieves', 'Caleb Cohen', 2021, '2021-11-17 02:18:26', NULL),
(10, 5, 'Burke Hoffman', 'Rhea Maynard', 2003, '2021-11-22 02:48:36', NULL),
(11, 5, 'Ivan Carlson', 'Libby Mathis', 1972, '2021-11-22 02:48:36', NULL),
(12, 5, 'Jana Manning', 'Craig Byers', 1987, '2021-11-22 02:48:36', NULL),
(13, 5, 'Rose Taylor', 'Kimberley Harper', 1977, '2021-11-22 02:48:36', NULL),
(14, 5, 'Gil Becker', 'Lucas Trujillo', 2003, '2021-11-22 02:48:42', NULL),
(15, 5, 'Stewart Kline', 'Amanda Caldwell', 2008, '2021-11-22 02:48:42', NULL),
(16, 5, 'Jaime Ellis', 'Thomas Mann', 1994, '2021-11-22 02:48:42', NULL),
(17, 5, 'Rama Head', 'Russell Ray', 1984, '2021-11-22 02:48:42', NULL),
(18, 10, 'v', 'v', 2020, '2021-11-30 05:40:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructorps`
--

CREATE TABLE `instructorps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `certification_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_09_064212_create_roles_table', 1),
(7, '2021_10_12_080437_create_courserequirements_table', 1),
(8, '2021_10_12_085521_create_courseoutcomes_table', 1),
(9, '2021_10_13_062216_create_coursecategories_table', 1),
(10, '2021_10_13_104859_create_coursesections_table', 1),
(11, '2021_10_14_040400_create_courselessions_table', 1),
(12, '2021_10_30_031830_create_coursefaqs_table', 1),
(13, '2021_10_30_100420_create_instructorps_table', 1),
(14, '2021_11_01_070100_create_carts_table', 1),
(15, '2021_11_01_105113_create_cupons_table', 1),
(17, '2021_11_02_051533_create_checkouts_table', 1),
(19, '2021_11_06_092744_create_courseassignments_table', 1),
(20, '2021_11_14_104059_create_profiles_table', 1),
(21, '2021_11_15_103744_create_certificates_table', 2),
(22, '2021_11_15_111458_create_skills_table', 3),
(23, '2021_11_16_080435_create_degrees_table', 4),
(27, '2021_11_21_055738_create_wishlists_table', 7),
(29, '2021_11_02_045936_create_orders_table', 8),
(30, '2021_11_02_063129_create_orderitems_table', 8),
(31, '2021_10_11_055848_create_courses_table', 9),
(34, '2021_12_02_070812_add_lock_to_courselessions_table', 10),
(35, '2021_12_12_100500_create_privacypolicies_table', 11),
(36, '2021_12_13_061114_create_termsandconditions_table', 12),
(37, '2021_12_14_050702_create_contacts_table', 13),
(38, '2021_12_14_104301_create_contactforms_table', 14),
(40, '2021_12_15_041552_create_basicsettings_table', 15),
(41, '2021_12_19_053223_add_certificateid_to_orderitems_table', 16),
(42, '2021_12_20_051053_create_abouts_table', 17),
(44, '2021_12_21_053700_add_status_to_orders_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `certificateid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `user_id`, `order_id`, `instructor_id`, `course_id`, `certificateid`, `course_name`, `created_at`, `updated_at`) VALUES
(5, 8, 5, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-01 05:49:09', '2021-12-01 05:49:09'),
(6, 1, 6, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-01 05:49:49', '2021-12-01 05:49:49'),
(7, 1, 7, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-01 17:09:27', '2021-12-01 17:09:27'),
(8, 1, 8, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-04 03:33:52', '2021-12-04 03:33:52'),
(9, 1, 9, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-07 06:07:48', '2021-12-07 06:07:48'),
(10, 1, 9, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-07 06:07:48', '2021-12-07 06:07:48'),
(11, 1, 10, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-07 06:08:25', '2021-12-07 06:08:25'),
(12, 3, 11, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-07 11:53:34', '2021-12-07 11:53:34'),
(13, 20, 12, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-07 11:55:48', '2021-12-07 11:55:48'),
(14, 20, 13, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-07 11:58:38', '2021-12-07 11:58:38'),
(15, 3, 14, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-07 15:39:13', '2021-12-07 15:39:13'),
(16, 3, 15, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-07 15:40:45', '2021-12-07 15:40:45'),
(17, 3, 16, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-07 15:42:13', '2021-12-07 15:42:13'),
(18, 1, 17, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-07 15:57:47', '2021-12-07 15:57:47'),
(19, 1, 17, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-07 15:57:47', '2021-12-07 15:57:47'),
(20, 20, 18, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-07 16:20:17', '2021-12-07 16:20:17'),
(21, 20, 19, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-07 16:21:20', '2021-12-07 16:21:20'),
(22, 23, 20, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 05:20:48', '2021-12-08 05:20:48'),
(23, 23, 21, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 05:21:47', '2021-12-08 05:21:47'),
(24, 23, 22, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 05:22:24', '2021-12-08 05:22:24'),
(25, 24, 23, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 05:25:30', '2021-12-08 05:25:30'),
(26, 24, 24, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 05:26:07', '2021-12-08 05:26:07'),
(27, 24, 25, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 05:26:51', '2021-12-08 05:26:51'),
(28, 24, 26, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 05:27:25', '2021-12-08 05:27:25'),
(29, 25, 27, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 05:29:44', '2021-12-08 05:29:44'),
(30, 25, 28, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 05:30:11', '2021-12-08 05:30:11'),
(31, 25, 29, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 05:30:47', '2021-12-08 05:30:47'),
(32, 25, 30, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 05:31:17', '2021-12-08 05:31:17'),
(33, 26, 31, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 05:33:30', '2021-12-08 05:33:30'),
(34, 26, 32, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 05:34:35', '2021-12-08 05:34:35'),
(35, 26, 33, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 05:35:04', '2021-12-08 05:35:04'),
(36, 26, 34, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 05:35:45', '2021-12-08 05:35:45'),
(37, 26, 35, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 05:36:13', '2021-12-08 05:36:13'),
(38, 26, 36, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 05:36:42', '2021-12-08 05:36:42'),
(39, 27, 37, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 05:40:33', '2021-12-08 05:40:33'),
(40, 27, 38, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 05:41:07', '2021-12-08 05:41:07'),
(41, 27, 39, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 05:41:47', '2021-12-08 05:41:47'),
(42, 27, 40, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 05:42:15', '2021-12-08 05:42:15'),
(43, 28, 41, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 05:45:17', '2021-12-08 05:45:17'),
(44, 28, 42, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 05:45:51', '2021-12-08 05:45:51'),
(45, 28, 43, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 05:46:21', '2021-12-08 05:46:21'),
(46, 28, 44, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 05:46:56', '2021-12-08 05:46:56'),
(47, 28, 45, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 05:47:25', '2021-12-08 05:47:25'),
(48, 29, 46, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 05:52:02', '2021-12-08 05:52:02'),
(49, 29, 47, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 05:52:22', '2021-12-08 05:52:22'),
(50, 30, 48, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 05:55:29', '2021-12-08 05:55:29'),
(51, 30, 49, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 05:56:29', '2021-12-08 05:56:29'),
(52, 30, 50, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 05:57:15', '2021-12-08 05:57:15'),
(53, 30, 51, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 05:57:47', '2021-12-08 05:57:47'),
(54, 31, 52, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 05:59:53', '2021-12-08 05:59:53'),
(55, 31, 53, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 06:00:32', '2021-12-08 06:00:32'),
(56, 31, 54, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 06:01:01', '2021-12-08 06:01:01'),
(57, 31, 55, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 06:01:29', '2021-12-08 06:01:29'),
(58, 31, 56, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 06:01:47', '2021-12-08 06:01:47'),
(59, 32, 57, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 06:04:25', '2021-12-08 06:04:25'),
(60, 32, 58, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 06:04:56', '2021-12-08 06:04:56'),
(61, 32, 59, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 06:05:30', '2021-12-08 06:05:30'),
(62, 32, 60, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 06:06:00', '2021-12-08 06:06:00'),
(63, 32, 61, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 06:06:25', '2021-12-08 06:06:25'),
(64, 33, 62, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 06:12:02', '2021-12-08 06:12:02'),
(65, 33, 63, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 06:12:41', '2021-12-08 06:12:41'),
(66, 33, 64, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 06:13:18', '2021-12-08 06:13:18'),
(67, 33, 65, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 06:13:50', '2021-12-08 06:13:50'),
(68, 33, 66, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 06:14:20', '2021-12-08 06:14:20'),
(69, 34, 67, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 06:16:43', '2021-12-08 06:16:43'),
(70, 34, 68, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 06:17:10', '2021-12-08 06:17:10'),
(71, 34, 69, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 06:17:33', '2021-12-08 06:17:33'),
(72, 34, 70, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 06:18:38', '2021-12-08 06:18:38'),
(73, 35, 71, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 06:22:19', '2021-12-08 06:22:19'),
(74, 35, 72, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 06:23:01', '2021-12-08 06:23:01'),
(75, 35, 73, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 06:23:34', '2021-12-08 06:23:34'),
(76, 35, 74, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 06:24:09', '2021-12-08 06:24:09'),
(77, 35, 75, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 06:24:50', '2021-12-08 06:24:50'),
(78, 36, 76, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 06:26:49', '2021-12-08 06:26:49'),
(79, 36, 77, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 06:28:04', '2021-12-08 06:28:04'),
(80, 36, 78, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 06:28:32', '2021-12-08 06:28:32'),
(81, 37, 79, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 06:31:50', '2021-12-08 06:31:50'),
(82, 37, 80, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 06:32:17', '2021-12-08 06:32:17'),
(83, 37, 81, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 06:33:16', '2021-12-08 06:33:16'),
(84, 37, 82, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 06:33:48', '2021-12-08 06:33:48'),
(85, 38, 83, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 06:39:16', '2021-12-08 06:39:16'),
(86, 38, 84, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 06:39:58', '2021-12-08 06:39:58'),
(87, 38, 85, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 06:40:48', '2021-12-08 06:40:48'),
(88, 39, 86, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 06:42:28', '2021-12-08 06:42:28'),
(89, 39, 87, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 06:43:19', '2021-12-08 06:43:19'),
(90, 39, 88, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 06:44:12', '2021-12-08 06:44:12'),
(91, 40, 89, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 06:48:22', '2021-12-08 06:48:22'),
(92, 40, 90, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 06:48:49', '2021-12-08 06:48:49'),
(93, 40, 91, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 06:49:16', '2021-12-08 06:49:16'),
(94, 13, 92, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 07:02:43', '2021-12-08 07:02:43'),
(95, 13, 93, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:03:12', '2021-12-08 07:03:12'),
(96, 13, 94, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:03:51', '2021-12-08 07:03:51'),
(97, 13, 95, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:04:20', '2021-12-08 07:04:20'),
(98, 41, 96, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 07:06:08', '2021-12-08 07:06:08'),
(99, 41, 97, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 07:06:31', '2021-12-08 07:06:31'),
(100, 41, 98, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:06:53', '2021-12-08 07:06:53'),
(101, 41, 99, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:07:19', '2021-12-08 07:07:19'),
(102, 41, 100, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:07:38', '2021-12-08 07:07:38'),
(103, 42, 101, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 07:09:35', '2021-12-08 07:09:35'),
(104, 42, 102, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 07:10:00', '2021-12-08 07:10:00'),
(105, 42, 103, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 07:10:27', '2021-12-08 07:10:27'),
(106, 42, 104, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:10:49', '2021-12-08 07:10:49'),
(107, 42, 105, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:11:15', '2021-12-08 07:11:15'),
(108, 42, 106, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:11:45', '2021-12-08 07:11:45'),
(109, 43, 107, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 07:13:23', '2021-12-08 07:13:23'),
(110, 43, 108, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:13:47', '2021-12-08 07:13:47'),
(111, 43, 109, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:14:18', '2021-12-08 07:14:18'),
(112, 43, 110, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:14:41', '2021-12-08 07:14:41'),
(113, 44, 111, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 07:16:43', '2021-12-08 07:16:43'),
(114, 44, 112, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 07:17:07', '2021-12-08 07:17:07'),
(115, 44, 113, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:17:32', '2021-12-08 07:17:32'),
(116, 44, 114, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:18:01', '2021-12-08 07:18:01'),
(117, 44, 115, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:18:22', '2021-12-08 07:18:22'),
(118, 45, 116, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 07:20:44', '2021-12-08 07:20:44'),
(119, 45, 117, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 07:21:11', '2021-12-08 07:21:11'),
(120, 45, 118, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 07:21:36', '2021-12-08 07:21:36'),
(121, 45, 119, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:21:58', '2021-12-08 07:21:58'),
(122, 45, 120, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:22:28', '2021-12-08 07:22:28'),
(123, 45, 121, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:22:53', '2021-12-08 07:22:53'),
(124, 46, 122, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 07:30:05', '2021-12-08 07:30:05'),
(125, 46, 123, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:30:40', '2021-12-08 07:30:40'),
(126, 46, 124, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:31:05', '2021-12-08 07:31:05'),
(127, 46, 125, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:31:36', '2021-12-08 07:31:36'),
(128, 47, 126, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 07:33:21', '2021-12-08 07:33:21'),
(129, 47, 127, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:34:39', '2021-12-08 07:34:39'),
(130, 47, 128, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:39:41', '2021-12-08 07:39:41'),
(131, 47, 129, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:42:45', '2021-12-08 07:42:45'),
(132, 48, 130, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 07:46:41', '2021-12-08 07:46:41'),
(133, 48, 131, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:47:09', '2021-12-08 07:47:09'),
(134, 48, 132, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:47:39', '2021-12-08 07:47:39'),
(135, 48, 133, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:48:02', '2021-12-08 07:48:02'),
(136, 49, 134, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 07:49:34', '2021-12-08 07:49:34'),
(137, 49, 135, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:50:05', '2021-12-08 07:50:05'),
(138, 49, 136, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:50:26', '2021-12-08 07:50:26'),
(139, 49, 137, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:50:44', '2021-12-08 07:50:44'),
(140, 50, 138, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 07:52:44', '2021-12-08 07:52:44'),
(141, 50, 139, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:53:13', '2021-12-08 07:53:13'),
(142, 50, 140, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:53:39', '2021-12-08 07:53:39'),
(143, 50, 141, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:54:02', '2021-12-08 07:54:02'),
(144, 51, 142, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 07:55:30', '2021-12-08 07:55:30'),
(145, 51, 143, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:56:02', '2021-12-08 07:56:02'),
(146, 51, 144, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:56:26', '2021-12-08 07:56:26'),
(147, 51, 145, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:56:47', '2021-12-08 07:56:47'),
(148, 52, 146, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 07:57:59', '2021-12-08 07:57:59'),
(149, 52, 147, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 07:58:19', '2021-12-08 07:58:19'),
(150, 52, 148, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 07:58:36', '2021-12-08 07:58:36'),
(151, 53, 149, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 08:00:23', '2021-12-08 08:00:23'),
(152, 53, 150, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 08:00:49', '2021-12-08 08:00:49'),
(153, 53, 151, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 08:01:25', '2021-12-08 08:01:25'),
(154, 53, 152, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 08:01:43', '2021-12-08 08:01:43'),
(155, 54, 153, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 08:03:12', '2021-12-08 08:03:12'),
(156, 55, 154, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 08:04:26', '2021-12-08 08:04:26'),
(157, 55, 155, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 08:04:52', '2021-12-08 08:04:52'),
(158, 55, 156, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 08:05:26', '2021-12-08 08:05:26'),
(159, 55, 157, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 08:05:46', '2021-12-08 08:05:46'),
(160, 56, 158, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 08:30:58', '2021-12-08 08:30:58'),
(161, 56, 159, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 08:31:21', '2021-12-08 08:31:21'),
(162, 56, 160, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 08:31:47', '2021-12-08 08:31:47'),
(163, 56, 161, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 08:32:20', '2021-12-08 08:32:20'),
(164, 57, 162, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 08:34:33', '2021-12-08 08:34:33'),
(165, 58, 163, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 08:36:40', '2021-12-08 08:36:40'),
(166, 58, 164, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 08:37:02', '2021-12-08 08:37:02'),
(167, 58, 165, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 08:37:29', '2021-12-08 08:37:29'),
(168, 58, 166, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 08:37:48', '2021-12-08 08:37:48'),
(169, 59, 167, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 08:40:12', '2021-12-08 08:40:12'),
(170, 59, 168, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 08:40:35', '2021-12-08 08:40:35'),
(171, 59, 169, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 08:41:00', '2021-12-08 08:41:00'),
(172, 59, 170, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 08:41:22', '2021-12-08 08:41:22'),
(173, 60, 171, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 08:43:30', '2021-12-08 08:43:30'),
(174, 60, 172, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 08:43:54', '2021-12-08 08:43:54'),
(175, 60, 173, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 08:44:18', '2021-12-08 08:44:18'),
(176, 61, 174, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:03:28', '2021-12-08 09:03:28'),
(177, 62, 175, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:04:47', '2021-12-08 09:04:47'),
(178, 63, 176, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 09:06:33', '2021-12-08 09:06:33'),
(179, 63, 177, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:07:57', '2021-12-08 09:07:57'),
(180, 63, 178, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:08:25', '2021-12-08 09:08:25'),
(181, 63, 179, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:09:22', '2021-12-08 09:09:22'),
(182, 64, 180, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:12:11', '2021-12-08 09:12:11'),
(183, 64, 181, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:12:37', '2021-12-08 09:12:37'),
(184, 64, 182, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:12:55', '2021-12-08 09:12:55'),
(185, 65, 183, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 09:14:26', '2021-12-08 09:14:26'),
(186, 65, 184, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:14:48', '2021-12-08 09:14:48'),
(187, 65, 185, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:15:11', '2021-12-08 09:15:11'),
(188, 65, 186, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:15:28', '2021-12-08 09:15:28'),
(189, 66, 187, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 09:17:21', '2021-12-08 09:17:21'),
(190, 66, 188, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 09:17:48', '2021-12-08 09:17:48'),
(191, 66, 189, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:18:13', '2021-12-08 09:18:13'),
(192, 66, 190, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:18:35', '2021-12-08 09:18:35'),
(193, 66, 191, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:18:54', '2021-12-08 09:18:54'),
(194, 67, 192, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 09:20:37', '2021-12-08 09:20:37'),
(195, 67, 193, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:21:03', '2021-12-08 09:21:03'),
(196, 67, 194, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:21:34', '2021-12-08 09:21:34'),
(197, 67, 195, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:21:51', '2021-12-08 09:21:51'),
(198, 68, 196, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:23:09', '2021-12-08 09:23:09'),
(199, 68, 197, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:23:27', '2021-12-08 09:23:27'),
(200, 68, 198, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:23:45', '2021-12-08 09:23:45'),
(201, 69, 199, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 09:25:01', '2021-12-08 09:25:01'),
(202, 69, 200, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:25:26', '2021-12-08 09:25:26'),
(203, 69, 201, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:25:42', '2021-12-08 09:25:42'),
(204, 69, 202, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:26:02', '2021-12-08 09:26:02'),
(205, 70, 203, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:27:31', '2021-12-08 09:27:31'),
(206, 70, 204, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:27:49', '2021-12-08 09:27:49'),
(207, 70, 205, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:28:16', '2021-12-08 09:28:16'),
(208, 71, 206, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 09:30:15', '2021-12-08 09:30:15'),
(209, 71, 207, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 09:30:40', '2021-12-08 09:30:40'),
(210, 71, 208, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:31:06', '2021-12-08 09:31:06'),
(211, 71, 209, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:31:26', '2021-12-08 09:31:26'),
(212, 71, 210, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:33:00', '2021-12-08 09:33:00'),
(213, 72, 211, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:36:17', '2021-12-08 09:36:17'),
(214, 72, 212, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:36:34', '2021-12-08 09:36:34'),
(215, 72, 213, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:36:53', '2021-12-08 09:36:53'),
(216, 73, 214, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 09:38:01', '2021-12-08 09:38:01'),
(217, 73, 215, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 09:38:29', '2021-12-08 09:38:29'),
(218, 73, 216, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:40:24', '2021-12-08 09:40:24'),
(219, 73, 217, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:40:56', '2021-12-08 09:40:56'),
(220, 74, 218, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:43:07', '2021-12-08 09:43:07'),
(221, 74, 219, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:43:25', '2021-12-08 09:43:25'),
(222, 74, 220, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:43:41', '2021-12-08 09:43:41'),
(223, 75, 221, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 09:46:43', '2021-12-08 09:46:43'),
(224, 75, 222, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:48:10', '2021-12-08 09:48:10'),
(225, 75, 223, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:48:50', '2021-12-08 09:48:50'),
(226, 75, 224, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:49:11', '2021-12-08 09:49:11'),
(227, 76, 225, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 09:50:44', '2021-12-08 09:50:44'),
(228, 76, 226, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 09:51:10', '2021-12-08 09:51:10'),
(229, 76, 227, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:51:49', '2021-12-08 09:51:49'),
(230, 76, 228, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:52:42', '2021-12-08 09:52:42'),
(231, 77, 229, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:54:44', '2021-12-08 09:54:44'),
(232, 77, 230, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:55:01', '2021-12-08 09:55:01'),
(233, 78, 231, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 09:58:49', '2021-12-08 09:58:49'),
(234, 78, 232, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 09:59:18', '2021-12-08 09:59:18'),
(235, 78, 233, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 09:59:50', '2021-12-08 09:59:50'),
(236, 79, 234, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:02:16', '2021-12-08 10:02:16'),
(237, 79, 235, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:02:48', '2021-12-08 10:02:48'),
(238, 79, 236, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:03:13', '2021-12-08 10:03:13'),
(239, 79, 237, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:03:36', '2021-12-08 10:03:36'),
(240, 80, 238, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:06:37', '2021-12-08 10:06:37'),
(241, 80, 239, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:07:00', '2021-12-08 10:07:00'),
(242, 80, 240, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:07:25', '2021-12-08 10:07:25'),
(243, 80, 241, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:07:50', '2021-12-08 10:07:50'),
(244, 81, 242, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 10:09:52', '2021-12-08 10:09:52'),
(245, 81, 243, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 10:10:16', '2021-12-08 10:10:16'),
(246, 81, 244, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:10:34', '2021-12-08 10:10:34'),
(247, 81, 245, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:10:49', '2021-12-08 10:10:49'),
(248, 81, 246, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:11:04', '2021-12-08 10:11:04'),
(249, 81, 247, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:11:31', '2021-12-08 10:11:31'),
(250, 82, 248, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:13:14', '2021-12-08 10:13:14'),
(251, 82, 249, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:13:41', '2021-12-08 10:13:41'),
(252, 83, 250, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:15:40', '2021-12-08 10:15:40'),
(253, 83, 251, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:16:40', '2021-12-08 10:16:40'),
(254, 83, 252, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:17:14', '2021-12-08 10:17:14'),
(255, 83, 253, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:18:37', '2021-12-08 10:18:37'),
(256, 84, 254, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:20:41', '2021-12-08 10:20:41'),
(257, 84, 255, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:21:02', '2021-12-08 10:21:02'),
(258, 84, 256, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:21:32', '2021-12-08 10:21:32'),
(259, 84, 257, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:21:58', '2021-12-08 10:21:58'),
(260, 85, 258, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:26:07', '2021-12-08 10:26:07'),
(261, 86, 259, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:30:30', '2021-12-08 10:30:30'),
(262, 86, 260, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:30:53', '2021-12-08 10:30:53'),
(263, 86, 261, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:31:13', '2021-12-08 10:31:13'),
(264, 86, 262, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:31:30', '2021-12-08 10:31:30'),
(265, 87, 263, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 10:33:17', '2021-12-08 10:33:17'),
(266, 87, 264, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:33:35', '2021-12-08 10:33:35'),
(267, 87, 265, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:34:15', '2021-12-08 10:34:15'),
(268, 87, 266, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:34:41', '2021-12-08 10:34:41'),
(269, 88, 267, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:37:30', '2021-12-08 10:37:30'),
(270, 88, 268, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:37:53', '2021-12-08 10:37:53'),
(271, 88, 269, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:38:11', '2021-12-08 10:38:11'),
(272, 88, 270, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:38:30', '2021-12-08 10:38:30'),
(273, 89, 271, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 10:40:30', '2021-12-08 10:40:30'),
(274, 89, 272, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:40:54', '2021-12-08 10:40:54'),
(275, 89, 273, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:41:19', '2021-12-08 10:41:19'),
(276, 89, 274, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:41:44', '2021-12-08 10:41:44'),
(277, 89, 275, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:42:07', '2021-12-08 10:42:07'),
(278, 90, 276, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:44:08', '2021-12-08 10:44:08'),
(279, 90, 277, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:44:31', '2021-12-08 10:44:31'),
(280, 90, 278, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:45:13', '2021-12-08 10:45:13'),
(281, 90, 279, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:45:33', '2021-12-08 10:45:33'),
(282, 91, 280, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 10:47:25', '2021-12-08 10:47:25'),
(283, 91, 281, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:47:56', '2021-12-08 10:47:56'),
(284, 91, 282, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:48:18', '2021-12-08 10:48:18'),
(285, 91, 283, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:48:43', '2021-12-08 10:48:43'),
(286, 91, 284, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:49:09', '2021-12-08 10:49:09'),
(287, 92, 285, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:51:01', '2021-12-08 10:51:01'),
(288, 92, 286, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:51:27', '2021-12-08 10:51:27'),
(289, 92, 287, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:51:44', '2021-12-08 10:51:44'),
(290, 92, 288, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:52:07', '2021-12-08 10:52:07'),
(291, 93, 289, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 10:53:53', '2021-12-08 10:53:53'),
(292, 93, 290, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:54:12', '2021-12-08 10:54:12'),
(293, 93, 291, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:54:34', '2021-12-08 10:54:34'),
(294, 93, 292, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:54:54', '2021-12-08 10:54:54'),
(295, 94, 293, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:56:07', '2021-12-08 10:56:07'),
(296, 94, 294, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 10:56:28', '2021-12-08 10:56:28'),
(297, 94, 295, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:56:47', '2021-12-08 10:56:47'),
(298, 95, 296, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 10:59:02', '2021-12-08 10:59:02'),
(299, 95, 297, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 10:59:18', '2021-12-08 10:59:18'),
(300, 96, 298, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:00:34', '2021-12-08 11:00:34'),
(301, 96, 299, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:00:54', '2021-12-08 11:00:54'),
(302, 96, 300, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:01:11', '2021-12-08 11:01:11'),
(303, 96, 301, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:01:30', '2021-12-08 11:01:30'),
(304, 97, 302, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:02:46', '2021-12-08 11:02:46'),
(305, 98, 303, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:04:53', '2021-12-08 11:04:53'),
(306, 98, 304, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:05:17', '2021-12-08 11:05:17'),
(307, 98, 305, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:05:38', '2021-12-08 11:05:38'),
(308, 99, 306, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:07:07', '2021-12-08 11:07:07'),
(309, 99, 307, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:07:24', '2021-12-08 11:07:24'),
(310, 100, 308, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:09:14', '2021-12-08 11:09:14'),
(311, 100, 309, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:09:41', '2021-12-08 11:09:41'),
(312, 100, 310, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:09:59', '2021-12-08 11:09:59'),
(313, 101, 311, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:11:41', '2021-12-08 11:11:41'),
(314, 101, 312, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:12:08', '2021-12-08 11:12:08'),
(315, 101, 313, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:12:38', '2021-12-08 11:12:38'),
(316, 101, 314, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:12:55', '2021-12-08 11:12:55'),
(317, 102, 315, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:14:12', '2021-12-08 11:14:12'),
(318, 102, 316, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:15:06', '2021-12-08 11:15:06'),
(319, 102, 317, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:15:26', '2021-12-08 11:15:26'),
(320, 103, 318, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 11:18:05', '2021-12-08 11:18:05'),
(321, 103, 319, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:18:26', '2021-12-08 11:18:26'),
(322, 103, 320, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:18:57', '2021-12-08 11:18:57'),
(323, 103, 321, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:19:23', '2021-12-08 11:19:23'),
(324, 104, 322, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:21:08', '2021-12-08 11:21:08'),
(325, 104, 323, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:21:41', '2021-12-08 11:21:41'),
(326, 104, 324, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:22:12', '2021-12-08 11:22:12'),
(327, 104, 325, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 11:22:47', '2021-12-08 11:22:47'),
(328, 105, 326, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 11:24:57', '2021-12-08 11:24:57'),
(329, 105, 327, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:25:20', '2021-12-08 11:25:20'),
(330, 105, 328, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:25:49', '2021-12-08 11:25:49'),
(331, 105, 329, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:27:08', '2021-12-08 11:27:08'),
(332, 105, 330, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:27:28', '2021-12-08 11:27:28'),
(333, 106, 331, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:30:30', '2021-12-08 11:30:30'),
(334, 106, 332, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:30:51', '2021-12-08 11:30:51'),
(335, 107, 333, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:32:59', '2021-12-08 11:32:59'),
(336, 107, 334, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:33:23', '2021-12-08 11:33:23'),
(337, 107, 335, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:33:41', '2021-12-08 11:33:41'),
(338, 107, 336, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:34:03', '2021-12-08 11:34:03'),
(339, 108, 337, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:35:24', '2021-12-08 11:35:24'),
(340, 108, 338, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:35:39', '2021-12-08 11:35:39'),
(341, 108, 339, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:36:08', '2021-12-08 11:36:08'),
(342, 108, 340, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:36:24', '2021-12-08 11:36:24'),
(343, 109, 341, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:37:46', '2021-12-08 11:37:46'),
(344, 109, 342, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:38:04', '2021-12-08 11:38:04'),
(345, 109, 343, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:38:26', '2021-12-08 11:38:26'),
(346, 109, 344, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:38:42', '2021-12-08 11:38:42'),
(347, 110, 345, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:39:58', '2021-12-08 11:39:58'),
(348, 110, 346, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:40:13', '2021-12-08 11:40:13'),
(349, 110, 347, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:40:33', '2021-12-08 11:40:33'),
(350, 110, 348, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:40:50', '2021-12-08 11:40:50'),
(351, 111, 349, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:43:50', '2021-12-08 11:43:50'),
(352, 111, 350, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:44:24', '2021-12-08 11:44:24'),
(353, 111, 351, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:44:58', '2021-12-08 11:44:58'),
(354, 111, 352, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:45:20', '2021-12-08 11:45:20'),
(355, 112, 353, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:47:01', '2021-12-08 11:47:01'),
(356, 112, 354, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:47:20', '2021-12-08 11:47:20'),
(357, 112, 355, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:47:41', '2021-12-08 11:47:41'),
(358, 113, 356, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 11:54:13', '2021-12-08 11:54:13'),
(359, 113, 357, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 11:54:38', '2021-12-08 11:54:38'),
(360, 113, 358, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:55:00', '2021-12-08 11:55:00'),
(361, 113, 359, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:55:21', '2021-12-08 11:55:21'),
(362, 113, 360, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:55:41', '2021-12-08 11:55:41'),
(363, 113, 361, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:56:00', '2021-12-08 11:56:00'),
(364, 114, 362, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 11:57:19', '2021-12-08 11:57:19'),
(365, 114, 363, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 11:57:38', '2021-12-08 11:57:38'),
(366, 114, 364, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 11:58:25', '2021-12-08 11:58:25'),
(367, 114, 365, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 11:58:52', '2021-12-08 11:58:52'),
(368, 115, 366, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 14:09:25', '2021-12-08 14:09:25'),
(369, 115, 367, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 14:09:53', '2021-12-08 14:09:53'),
(370, 115, 368, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 14:10:21', '2021-12-08 14:10:21'),
(371, 115, 369, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 14:10:49', '2021-12-08 14:10:49'),
(372, 116, 370, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 14:14:16', '2021-12-08 14:14:16'),
(373, 116, 371, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 14:14:38', '2021-12-08 14:14:38'),
(374, 116, 372, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 14:14:57', '2021-12-08 14:14:57'),
(375, 116, 373, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 14:15:19', '2021-12-08 14:15:19'),
(376, 116, 374, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 14:15:48', '2021-12-08 14:15:48'),
(377, 116, 375, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 14:16:14', '2021-12-08 14:16:14'),
(378, 117, 376, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 14:51:44', '2021-12-08 14:51:44'),
(379, 117, 377, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 14:52:13', '2021-12-08 14:52:13'),
(380, 117, 378, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 14:52:41', '2021-12-08 14:52:41'),
(381, 117, 379, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 14:53:07', '2021-12-08 14:53:07'),
(382, 117, 380, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 14:53:36', '2021-12-08 14:53:36'),
(383, 118, 381, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 14:55:39', '2021-12-08 14:55:39'),
(384, 118, 382, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 14:56:03', '2021-12-08 14:56:03'),
(385, 118, 383, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 14:56:23', '2021-12-08 14:56:23'),
(386, 119, 384, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 14:59:49', '2021-12-08 14:59:49'),
(387, 119, 385, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 15:00:13', '2021-12-08 15:00:13'),
(388, 119, 386, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 15:00:31', '2021-12-08 15:00:31'),
(389, 120, 387, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 15:02:59', '2021-12-08 15:02:59'),
(390, 120, 388, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 15:03:34', '2021-12-08 15:03:34'),
(391, 120, 389, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 15:03:53', '2021-12-08 15:03:53'),
(392, 121, 390, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 15:07:26', '2021-12-08 15:07:26'),
(393, 121, 391, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 15:07:52', '2021-12-08 15:07:52'),
(394, 121, 392, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 15:08:16', '2021-12-08 15:08:16');
INSERT INTO `orderitems` (`id`, `user_id`, `order_id`, `instructor_id`, `course_id`, `certificateid`, `course_name`, `created_at`, `updated_at`) VALUES
(395, 121, 393, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 15:08:40', '2021-12-08 15:08:40'),
(396, 122, 394, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 15:15:38', '2021-12-08 15:15:38'),
(397, 122, 395, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 15:16:05', '2021-12-08 15:16:05'),
(398, 122, 396, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 15:16:39', '2021-12-08 15:16:39'),
(399, 122, 397, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 15:16:59', '2021-12-08 15:16:59'),
(400, 123, 398, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 15:18:29', '2021-12-08 15:18:29'),
(401, 123, 399, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 15:18:50', '2021-12-08 15:18:50'),
(402, 123, 400, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 15:19:12', '2021-12-08 15:19:12'),
(403, 123, 401, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 15:19:31', '2021-12-08 15:19:31'),
(404, 124, 402, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 15:24:31', '2021-12-08 15:24:31'),
(405, 124, 403, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 15:24:57', '2021-12-08 15:24:57'),
(406, 124, 404, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 15:25:19', '2021-12-08 15:25:19'),
(407, 124, 405, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 15:25:38', '2021-12-08 15:25:38'),
(408, 125, 406, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 15:27:14', '2021-12-08 15:27:14'),
(409, 126, 407, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 15:28:32', '2021-12-08 15:28:32'),
(410, 126, 408, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 15:29:00', '2021-12-08 15:29:00'),
(411, 126, 409, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 15:29:28', '2021-12-08 15:29:28'),
(412, 126, 410, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 15:29:48', '2021-12-08 15:29:48'),
(413, 127, 411, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 16:15:27', '2021-12-08 16:15:27'),
(414, 127, 412, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 16:15:50', '2021-12-08 16:15:50'),
(415, 128, 413, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 16:17:15', '2021-12-08 16:17:15'),
(416, 128, 414, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 16:17:46', '2021-12-08 16:17:46'),
(417, 128, 415, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 16:18:17', '2021-12-08 16:18:17'),
(418, 128, 416, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 16:18:38', '2021-12-08 16:18:38'),
(419, 129, 417, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-08 16:21:16', '2021-12-08 16:21:16'),
(420, 129, 418, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-08 16:21:41', '2021-12-08 16:21:41'),
(421, 129, 419, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-08 16:22:02', '2021-12-08 16:22:02'),
(422, 129, 420, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-08 16:22:27', '2021-12-08 16:22:27'),
(423, 129, 421, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-08 16:22:52', '2021-12-08 16:22:52'),
(424, 129, 422, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-08 16:23:20', '2021-12-08 16:23:20'),
(425, 130, 423, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-09 06:29:22', '2021-12-09 06:29:22'),
(426, 130, 424, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-09 06:29:51', '2021-12-09 06:29:51'),
(427, 131, 425, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 06:31:32', '2021-12-09 06:31:32'),
(428, 132, 426, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-09 06:33:22', '2021-12-09 06:33:22'),
(429, 133, 427, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 06:37:10', '2021-12-09 06:37:10'),
(430, 134, 428, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 06:38:48', '2021-12-09 06:38:48'),
(431, 134, 429, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 06:39:21', '2021-12-09 06:39:21'),
(432, 134, 430, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 06:39:43', '2021-12-09 06:39:43'),
(433, 135, 431, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 06:41:11', '2021-12-09 06:41:11'),
(434, 136, 432, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 06:42:19', '2021-12-09 06:42:19'),
(435, 136, 433, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 06:43:05', '2021-12-09 06:43:05'),
(436, 136, 434, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 06:43:27', '2021-12-09 06:43:27'),
(437, 137, 435, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-09 06:45:04', '2021-12-09 06:45:04'),
(438, 137, 436, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 06:45:23', '2021-12-09 06:45:23'),
(439, 137, 437, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 06:45:45', '2021-12-09 06:45:45'),
(440, 137, 438, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 06:47:32', '2021-12-09 06:47:32'),
(441, 137, 439, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 06:47:54', '2021-12-09 06:47:54'),
(442, 138, 440, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 06:49:18', '2021-12-09 06:49:18'),
(443, 138, 441, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 06:49:44', '2021-12-09 06:49:44'),
(444, 139, 442, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 06:51:01', '2021-12-09 06:51:01'),
(445, 139, 443, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 06:51:16', '2021-12-09 06:51:16'),
(446, 140, 444, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 06:52:25', '2021-12-09 06:52:25'),
(447, 140, 445, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 06:52:47', '2021-12-09 06:52:47'),
(448, 140, 446, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 06:53:03', '2021-12-09 06:53:03'),
(449, 141, 447, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-09 06:55:52', '2021-12-09 06:55:52'),
(450, 141, 448, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 06:56:18', '2021-12-09 06:56:18'),
(451, 141, 449, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 06:56:34', '2021-12-09 06:56:34'),
(452, 142, 450, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 06:57:52', '2021-12-09 06:57:52'),
(453, 142, 451, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 06:58:13', '2021-12-09 06:58:13'),
(454, 142, 452, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 06:58:35', '2021-12-09 06:58:35'),
(455, 142, 453, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 06:58:51', '2021-12-09 06:58:51'),
(456, 143, 454, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-09 07:00:30', '2021-12-09 07:00:30'),
(457, 143, 455, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-09 07:00:52', '2021-12-09 07:00:52'),
(458, 143, 456, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 07:01:12', '2021-12-09 07:01:12'),
(459, 143, 457, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:01:32', '2021-12-09 07:01:32'),
(460, 144, 458, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 07:03:00', '2021-12-09 07:03:00'),
(461, 145, 459, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 07:04:48', '2021-12-09 07:04:48'),
(462, 145, 460, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 07:05:11', '2021-12-09 07:05:11'),
(463, 145, 461, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 07:05:41', '2021-12-09 07:05:41'),
(464, 145, 462, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:06:01', '2021-12-09 07:06:01'),
(465, 146, 463, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-09 07:13:26', '2021-12-09 07:13:26'),
(466, 146, 464, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-09 07:13:57', '2021-12-09 07:13:57'),
(467, 146, 465, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 07:14:22', '2021-12-09 07:14:22'),
(468, 146, 466, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 07:14:45', '2021-12-09 07:14:45'),
(469, 146, 467, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 07:15:06', '2021-12-09 07:15:06'),
(470, 146, 468, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:15:24', '2021-12-09 07:15:24'),
(471, 147, 469, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:17:55', '2021-12-09 07:17:55'),
(472, 148, 470, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 07:22:16', '2021-12-09 07:22:16'),
(473, 148, 471, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 07:22:45', '2021-12-09 07:22:45'),
(474, 148, 472, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 07:23:04', '2021-12-09 07:23:04'),
(475, 148, 473, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:23:23', '2021-12-09 07:23:23'),
(476, 149, 474, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:26:52', '2021-12-09 07:26:52'),
(477, 150, 475, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 07:29:45', '2021-12-09 07:29:45'),
(478, 150, 476, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:30:07', '2021-12-09 07:30:07'),
(479, 151, 477, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 07:31:20', '2021-12-09 07:31:20'),
(480, 151, 478, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 07:31:41', '2021-12-09 07:31:41'),
(481, 151, 479, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:31:58', '2021-12-09 07:31:58'),
(482, 152, 480, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 07:33:02', '2021-12-09 07:33:02'),
(483, 152, 481, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 07:33:21', '2021-12-09 07:33:21'),
(484, 152, 482, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:33:41', '2021-12-09 07:33:41'),
(485, 153, 483, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 07:35:11', '2021-12-09 07:35:11'),
(486, 153, 484, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:35:51', '2021-12-09 07:35:51'),
(487, 154, 485, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 07:38:02', '2021-12-09 07:38:02'),
(488, 154, 486, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 07:38:27', '2021-12-09 07:38:27'),
(489, 154, 487, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:38:53', '2021-12-09 07:38:53'),
(490, 155, 488, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 07:40:44', '2021-12-09 07:40:44'),
(491, 155, 489, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:41:27', '2021-12-09 07:41:27'),
(492, 156, 490, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 07:42:45', '2021-12-09 07:42:45'),
(493, 156, 491, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 07:43:07', '2021-12-09 07:43:07'),
(494, 156, 492, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 07:43:35', '2021-12-09 07:43:35'),
(495, 156, 493, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 07:43:52', '2021-12-09 07:43:52'),
(496, 157, 494, 8, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-09 09:01:49', '2021-12-09 09:01:49'),
(497, 157, 495, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 09:02:11', '2021-12-09 09:02:11'),
(498, 157, 496, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 09:02:40', '2021-12-09 09:02:40'),
(499, 157, 497, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 09:03:00', '2021-12-09 09:03:00'),
(500, 157, 498, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 09:03:19', '2021-12-09 09:03:19'),
(501, 158, 499, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 09:46:53', '2021-12-09 09:46:53'),
(502, 159, 500, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 09:48:02', '2021-12-09 09:48:02'),
(503, 159, 501, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 09:48:22', '2021-12-09 09:48:22'),
(504, 159, 502, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 09:48:42', '2021-12-09 09:48:42'),
(505, 160, 503, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 09:51:07', '2021-12-09 09:51:07'),
(506, 161, 504, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 09:52:14', '2021-12-09 09:52:14'),
(507, 161, 505, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 09:52:33', '2021-12-09 09:52:33'),
(508, 161, 506, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 09:52:58', '2021-12-09 09:52:58'),
(509, 161, 507, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 09:53:13', '2021-12-09 09:53:13'),
(510, 162, 508, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 09:54:23', '2021-12-09 09:54:23'),
(511, 162, 509, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 09:54:37', '2021-12-09 09:54:37'),
(512, 162, 510, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 09:54:52', '2021-12-09 09:54:52'),
(513, 162, 511, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 09:55:09', '2021-12-09 09:55:09'),
(514, 163, 512, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-09 09:56:17', '2021-12-09 09:56:17'),
(515, 163, 513, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-09 09:56:46', '2021-12-09 09:56:46'),
(516, 163, 514, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 09:57:06', '2021-12-09 09:57:06'),
(517, 163, 515, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 09:57:24', '2021-12-09 09:57:24'),
(518, 163, 516, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 09:57:40', '2021-12-09 09:57:40'),
(519, 163, 517, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 09:57:55', '2021-12-09 09:57:55'),
(520, 164, 518, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-09 09:59:09', '2021-12-09 09:59:09'),
(521, 164, 519, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 09:59:36', '2021-12-09 09:59:36'),
(522, 165, 520, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-09 10:01:01', '2021-12-09 10:01:01'),
(523, 165, 521, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 10:01:25', '2021-12-09 10:01:25'),
(524, 165, 522, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 10:01:57', '2021-12-09 10:01:57'),
(525, 165, 523, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 10:02:15', '2021-12-09 10:02:15'),
(526, 1, 524, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-09 10:49:17', '2021-12-09 10:49:17'),
(527, 47, 525, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 11:18:27', '2021-12-09 11:18:27'),
(528, 104, 526, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 11:20:44', '2021-12-09 11:20:44'),
(529, 167, 527, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 13:08:30', '2021-12-09 13:08:30'),
(530, 167, 528, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-09 13:09:07', '2021-12-09 13:09:07'),
(531, 169, 529, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-09 17:47:27', '2021-12-09 17:47:27'),
(532, 169, 530, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 17:48:15', '2021-12-09 17:48:15'),
(533, 169, 531, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 17:50:08', '2021-12-09 17:50:08'),
(534, 169, 532, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 17:50:36', '2021-12-09 17:50:36'),
(535, 170, 533, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-09 17:54:58', '2021-12-09 17:54:58'),
(536, 170, 534, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-09 17:55:28', '2021-12-09 17:55:28'),
(537, 170, 535, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-09 17:55:50', '2021-12-09 17:55:50'),
(538, 170, 536, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-09 17:56:23', '2021-12-09 17:56:23'),
(539, 144, 537, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-10 07:24:12', '2021-12-10 07:24:12'),
(540, 171, 538, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-10 09:32:54', '2021-12-10 09:32:54'),
(541, 171, 539, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-10 09:33:14', '2021-12-10 09:33:14'),
(542, 1, 540, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-10 12:37:51', '2021-12-10 12:37:51'),
(543, 172, 541, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-10 14:42:58', '2021-12-10 14:42:58'),
(544, 172, 542, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-10 14:43:17', '2021-12-10 14:43:17'),
(545, 172, 543, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-10 14:43:50', '2021-12-10 14:43:50'),
(546, 172, 544, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-10 14:44:10', '2021-12-10 14:44:10'),
(547, 173, 545, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-10 14:46:37', '2021-12-10 14:46:37'),
(548, 173, 546, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-10 14:46:57', '2021-12-10 14:46:57'),
(549, 173, 547, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-10 14:47:21', '2021-12-10 14:47:21'),
(550, 173, 548, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-10 14:47:39', '2021-12-10 14:47:39'),
(551, 175, 549, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-11 07:24:12', '2021-12-11 07:24:12'),
(552, 175, 550, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-11 07:24:33', '2021-12-11 07:24:33'),
(553, 175, 551, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 07:24:53', '2021-12-11 07:24:53'),
(554, 175, 552, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-11 07:25:10', '2021-12-11 07:25:10'),
(555, 175, 553, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 07:25:28', '2021-12-11 07:25:28'),
(556, 175, 554, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 07:25:44', '2021-12-11 07:25:44'),
(557, 176, 555, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 09:00:06', '2021-12-11 09:00:06'),
(558, 176, 556, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 09:00:29', '2021-12-11 09:00:29'),
(559, 177, 557, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-11 09:02:45', '2021-12-11 09:02:45'),
(560, 177, 558, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 09:03:15', '2021-12-11 09:03:15'),
(561, 177, 559, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 09:03:49', '2021-12-11 09:03:49'),
(562, 177, 560, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 09:04:07', '2021-12-11 09:04:07'),
(563, 178, 561, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-11 09:06:26', '2021-12-11 09:06:26'),
(564, 178, 562, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 09:06:45', '2021-12-11 09:06:45'),
(565, 178, 563, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 09:07:02', '2021-12-11 09:07:02'),
(566, 178, 564, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 09:07:22', '2021-12-11 09:07:22'),
(567, 179, 565, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-11 09:09:58', '2021-12-11 09:09:58'),
(568, 179, 566, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 09:10:17', '2021-12-11 09:10:17'),
(569, 179, 567, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 09:10:40', '2021-12-11 09:10:40'),
(570, 179, 568, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 09:10:57', '2021-12-11 09:10:57'),
(571, 180, 569, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-11 09:12:54', '2021-12-11 09:12:54'),
(572, 180, 570, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 09:13:24', '2021-12-11 09:13:24'),
(573, 180, 571, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 09:13:48', '2021-12-11 09:13:48'),
(574, 180, 572, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 09:14:03', '2021-12-11 09:14:03'),
(575, 181, 573, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-11 09:15:37', '2021-12-11 09:15:37'),
(576, 181, 574, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 09:16:01', '2021-12-11 09:16:01'),
(577, 181, 575, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 09:16:29', '2021-12-11 09:16:29'),
(578, 181, 576, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 09:16:44', '2021-12-11 09:16:44'),
(579, 182, 577, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-11 09:18:19', '2021-12-11 09:18:19'),
(580, 182, 578, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 09:18:45', '2021-12-11 09:18:45'),
(581, 182, 579, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 09:19:04', '2021-12-11 09:19:04'),
(582, 182, 580, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 09:19:21', '2021-12-11 09:19:21'),
(583, 183, 581, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-11 09:21:38', '2021-12-11 09:21:38'),
(584, 183, 582, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 09:21:52', '2021-12-11 09:21:52'),
(585, 183, 583, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 09:22:17', '2021-12-11 09:22:17'),
(586, 183, 584, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 09:22:37', '2021-12-11 09:22:37'),
(587, 184, 585, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 09:24:28', '2021-12-11 09:24:28'),
(588, 184, 586, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 09:24:46', '2021-12-11 09:24:46'),
(589, 185, 587, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-11 09:26:29', '2021-12-11 09:26:29'),
(590, 185, 588, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 09:26:55', '2021-12-11 09:26:55'),
(591, 185, 589, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 09:27:14', '2021-12-11 09:27:14'),
(592, 185, 590, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 09:27:36', '2021-12-11 09:27:36'),
(593, 186, 591, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 09:28:54', '2021-12-11 09:28:54'),
(594, 186, 592, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 09:29:11', '2021-12-11 09:29:11'),
(595, 187, 593, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-11 12:44:35', '2021-12-11 12:44:35'),
(596, 19, 594, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-11 13:56:05', '2021-12-11 13:56:05'),
(597, 19, 595, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-11 13:56:23', '2021-12-11 13:56:23'),
(598, 19, 596, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-11 13:56:46', '2021-12-11 13:56:46'),
(599, 20, 597, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-12 05:06:31', '2021-12-12 05:06:31'),
(600, 20, 598, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-12 05:07:11', '2021-12-12 05:07:11'),
(601, 190, 599, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-12 07:15:13', '2021-12-12 07:15:13'),
(602, 191, 600, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-12 07:16:39', '2021-12-12 07:16:39'),
(603, 191, 602, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-12 07:17:03', '2021-12-12 07:17:03'),
(604, 191, 603, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-12 07:17:24', '2021-12-12 07:17:24'),
(605, 191, 604, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-12 07:17:42', '2021-12-12 07:17:42'),
(606, 192, 606, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-12 07:19:35', '2021-12-12 07:19:35'),
(607, 192, 606, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-12 07:19:35', '2021-12-12 07:19:35'),
(608, 193, 607, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-12 07:25:19', '2021-12-12 07:25:19'),
(609, 193, 608, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-12 07:25:38', '2021-12-12 07:25:38'),
(610, 166, 610, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-12 07:42:21', '2021-12-12 07:42:21'),
(611, 166, 611, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-12 07:42:43', '2021-12-12 07:42:43'),
(612, 125, 612, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-14 14:07:39', '2021-12-14 14:07:39'),
(613, 33, 613, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-14 14:11:07', '2021-12-14 14:11:07'),
(614, 196, 614, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-14 15:49:14', '2021-12-14 15:49:14'),
(615, 196, 615, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-14 15:49:42', '2021-12-14 15:49:42'),
(616, 196, 616, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-14 15:50:09', '2021-12-14 15:50:09'),
(617, 196, 617, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-14 15:50:29', '2021-12-14 15:50:29'),
(618, 176, 618, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-15 12:31:14', '2021-12-15 12:31:14'),
(619, 1, 619, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-20 04:19:05', '2021-12-20 04:19:05'),
(620, 1, 620, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-20 05:11:14', '2021-12-20 05:11:14'),
(621, 1, 622, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-20 05:11:54', '2021-12-20 05:11:54'),
(622, 1, 626, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-20 05:16:53', '2021-12-20 05:16:53'),
(623, 1, 627, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-20 05:17:54', '2021-12-20 05:17:54'),
(624, 1, 631, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-20 05:29:01', '2021-12-20 05:29:01'),
(625, 1, 641, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-20 05:37:59', '2021-12-20 05:37:59'),
(626, 1, 643, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-20 22:41:22', '2021-12-20 22:41:22'),
(627, 1, 644, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-20 22:41:40', '2021-12-20 22:41:40'),
(628, 1, 646, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-20 22:42:44', '2021-12-20 22:42:44'),
(629, 1, 647, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-20 22:43:25', '2021-12-20 22:43:25'),
(630, 1, 649, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-20 23:03:54', '2021-12-20 23:03:54'),
(631, 1, 650, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-20 23:04:44', '2021-12-20 23:04:44'),
(632, 1, 651, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-20 23:06:10', '2021-12-20 23:06:10'),
(633, 1, 653, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-20 23:08:31', '2021-12-20 23:08:31'),
(634, 1, 654, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-20 23:09:18', '2021-12-20 23:09:18'),
(635, 1, 655, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-20 23:17:48', '2021-12-20 23:17:48'),
(636, 1, 656, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-20 23:22:23', '2021-12-20 23:22:23'),
(637, 1, 657, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-20 23:25:16', '2021-12-20 23:25:16'),
(638, 1, 658, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-20 23:42:58', '2021-12-20 23:42:58'),
(639, 1, 659, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-21 00:15:20', '2021-12-21 00:15:20'),
(640, 1, 659, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-21 00:15:20', '2021-12-21 00:15:20'),
(641, 1, 660, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-21 00:32:11', '2021-12-21 00:32:11'),
(642, 1, 661, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-21 00:34:46', '2021-12-21 00:34:46'),
(643, 1, 662, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-21 00:36:26', '2021-12-21 00:36:26'),
(644, 1, 663, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-21 00:37:34', '2021-12-21 00:37:34'),
(645, 1, 664, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-21 00:51:19', '2021-12-21 00:51:19'),
(646, 1, 665, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-21 00:51:54', '2021-12-21 00:51:54'),
(647, 1, 666, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-21 00:52:19', '2021-12-21 00:52:19'),
(648, 1, 667, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-21 00:55:14', '2021-12-21 00:55:14'),
(649, 1, 668, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-21 05:25:54', '2021-12-21 05:25:54'),
(650, 3, 669, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-26 22:06:17', '2021-12-26 22:06:17'),
(651, 1, 670, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-26 22:07:08', '2021-12-26 22:07:08'),
(652, 1, 671, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-26 22:24:00', '2021-12-26 22:24:00'),
(653, 1, 672, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-26 22:24:23', '2021-12-26 22:24:23'),
(654, 1, 678, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-26 22:40:18', '2021-12-26 22:40:18'),
(655, 1, 679, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-26 22:40:47', '2021-12-26 22:40:47'),
(656, 1, 680, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-26 23:02:00', '2021-12-26 23:02:00'),
(657, 1, 681, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-26 23:02:44', '2021-12-26 23:02:44'),
(658, 1, 682, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 05:54:21', '2021-12-27 05:54:21'),
(659, 1, 683, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-27 05:54:36', '2021-12-27 05:54:36'),
(660, 1, 684, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 05:56:36', '2021-12-27 05:56:36'),
(661, 1, 685, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 06:48:56', '2021-12-27 06:48:56'),
(662, 1, 686, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 06:50:15', '2021-12-27 06:50:15'),
(663, 1, 687, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 06:52:57', '2021-12-27 06:52:57'),
(664, 1, 688, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 06:53:23', '2021-12-27 06:53:23'),
(665, 1, 689, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:06:21', '2021-12-27 07:06:21'),
(666, 1, 690, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:07:49', '2021-12-27 07:07:49'),
(667, 1, 691, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:09:13', '2021-12-27 07:09:13'),
(668, 1, 692, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:09:57', '2021-12-27 07:09:57'),
(669, 14, 694, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-27 07:11:07', '2021-12-27 07:11:07'),
(670, 1, 695, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:12:27', '2021-12-27 07:12:27'),
(671, 1, 698, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:24:48', '2021-12-27 07:24:48'),
(672, 1, 701, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:26:19', '2021-12-27 07:26:19'),
(673, 1, 702, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:26:52', '2021-12-27 07:26:52'),
(674, 1, 705, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:29:29', '2021-12-27 07:29:29'),
(675, 1, 706, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:29:51', '2021-12-27 07:29:51'),
(676, 1, 707, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-27 07:37:19', '2021-12-27 07:37:19'),
(677, 1, 708, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-27 07:45:52', '2021-12-27 07:45:52'),
(678, 1, 710, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:47:24', '2021-12-27 07:47:24'),
(679, 1, 711, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:48:21', '2021-12-27 07:48:21'),
(680, 1, 712, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:48:57', '2021-12-27 07:48:57'),
(681, 1, 713, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:51:49', '2021-12-27 07:51:49'),
(682, 1, 714, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:52:24', '2021-12-27 07:52:24'),
(683, 1, 715, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-27 07:56:50', '2021-12-27 07:56:50'),
(684, 1, 716, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 07:58:13', '2021-12-27 07:58:13'),
(685, 1, 717, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 08:06:20', '2021-12-27 08:06:20'),
(686, 1, 718, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 08:07:39', '2021-12-27 08:07:39'),
(687, 1, 719, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 08:31:46', '2021-12-27 08:31:46'),
(688, 190, 720, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-27 08:37:39', '2021-12-27 08:37:39'),
(689, 1, 722, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 08:38:23', '2021-12-27 08:38:23'),
(690, 1, 723, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 08:38:52', '2021-12-27 08:38:52'),
(691, 1, 724, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 10:48:45', '2021-12-27 10:48:45'),
(692, 1, 728, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 10:59:02', '2021-12-27 10:59:02'),
(693, 1, 728, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-27 10:59:02', '2021-12-27 10:59:02'),
(694, 1, 729, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 10:59:37', '2021-12-27 10:59:37'),
(695, 1, 730, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-27 10:59:54', '2021-12-27 10:59:54'),
(696, 1, 731, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 12:51:45', '2021-12-27 12:51:45'),
(697, 1, 732, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-27 12:54:30', '2021-12-27 12:54:30'),
(698, 1, 733, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-27 12:55:05', '2021-12-27 12:55:05'),
(699, 1, 734, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-27 12:55:25', '2021-12-27 12:55:25'),
(700, 1, 735, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-27 12:55:55', '2021-12-27 12:55:55'),
(701, 1, 736, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-27 12:56:21', '2021-12-27 12:56:21'),
(702, 20, 737, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-27 12:57:03', '2021-12-27 12:57:03'),
(703, 20, 739, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-27 12:57:56', '2021-12-27 12:57:56'),
(704, 1, 740, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-27 13:06:09', '2021-12-27 13:06:09'),
(705, 20, 741, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-27 13:09:49', '2021-12-27 13:09:49'),
(706, 1, 742, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-27 13:14:59', '2021-12-27 13:14:59'),
(707, 190, 743, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-27 13:18:56', '2021-12-27 13:18:56'),
(708, 190, 743, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 13:18:56', '2021-12-27 13:18:56'),
(709, 1, 745, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-27 13:23:07', '2021-12-27 13:23:07'),
(710, 1, 746, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-27 13:23:49', '2021-12-27 13:23:49'),
(711, 190, 747, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-27 13:26:48', '2021-12-27 13:26:48'),
(712, 190, 747, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-27 13:26:48', '2021-12-27 13:26:48'),
(713, 1, 748, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-27 14:30:45', '2021-12-27 14:30:45'),
(714, 1, 749, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-27 14:42:56', '2021-12-27 14:42:56'),
(715, 1, 750, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-27 14:44:56', '2021-12-27 14:44:56'),
(716, 175, 751, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-27 16:07:17', '2021-12-27 16:07:17'),
(717, 1, 752, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-28 04:27:09', '2021-12-28 04:27:09'),
(718, 1, 753, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-28 06:14:08', '2021-12-28 06:14:08'),
(719, 1, 754, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-28 06:14:53', '2021-12-28 06:14:53'),
(720, 1, 754, 8, 16, NULL, 'ওয়েব কনসেপ্ট ! বাংলা ভাষায় একমাত্র কোর্স !', '2021-12-28 06:14:53', '2021-12-28 06:14:53'),
(721, 20, 755, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-28 06:21:11', '2021-12-28 06:21:11'),
(722, 1, 756, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-28 06:36:41', '2021-12-28 06:36:41'),
(723, 1, 760, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-28 11:34:40', '2021-12-28 11:34:40'),
(724, 1, 763, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-28 11:55:17', '2021-12-28 11:55:17'),
(725, 1, 764, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-28 11:57:14', '2021-12-28 11:57:14'),
(726, 1, 767, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-28 12:09:14', '2021-12-28 12:09:14'),
(727, 20, 768, 14, 18, NULL, 'HTML TO REACT | You Will Be Able, Convert Any HTML Site To React JS', '2021-12-28 12:15:36', '2021-12-28 12:15:36'),
(728, 201, 772, 8, 11, NULL, 'React JS | রিডাক্স | ফায়ারবেজ | রিয়েল লাইফ প্রযেক্ট Job Ready Complete Course', '2021-12-28 12:33:14', '2021-12-28 12:33:14'),
(729, 201, 773, 8, 14, NULL, 'কনসেপ্ট অফ জাভাস্ক্রিপ্ট', '2021-12-28 12:43:51', '2021-12-28 12:43:51'),
(730, 201, 775, 8, 15, NULL, 'জিরো টু হিরো | HTML, CSS, BOOTSTRAP, PSD TO HTML', '2021-12-28 12:49:20', '2021-12-28 12:49:20'),
(731, 201, 777, 14, 17, NULL, 'মাষ্টার অফ ব্যাকইন্ড ডেভেলপমেন্ট | Node Js, Express And MongoDB', '2021-12-28 12:56:25', '2021-12-28 12:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `cupon_discount` int(11) DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `total`, `instructor_id`, `subtotal`, `status`, `cupon_discount`, `invoice_no`, `created_at`, `updated_at`) VALUES
(5, 8, 'shurjoPay', 4000, NULL, 4000, 1, 0, '818123', '2021-12-01 05:49:09', '2021-12-01 05:49:09'),
(6, 1, 'shurjoPay', 4000, NULL, 4000, 1, 0, '838564', '2021-12-01 05:49:49', '2021-12-01 05:49:49'),
(7, 1, 'shurjoPay', 4000, NULL, 4000, 1, 0, '590833', '2021-12-01 17:09:27', '2021-12-01 17:09:27'),
(8, 1, 'shurjoPay', 5500, NULL, 5500, 1, 0, '447685', '2021-12-04 03:33:52', '2021-12-04 03:33:52'),
(9, 1, 'shurjoPay', 9500, NULL, 9500, 1, 0, '621255', '2021-12-07 06:07:48', '2021-12-07 06:07:48'),
(10, 1, 'shurjoPay', 5500, NULL, 5500, 1, 0, '628084', '2021-12-07 06:08:25', '2021-12-07 06:08:25'),
(11, 3, 'shurjoPay', 750, NULL, 750, 1, 0, '934046', '2021-12-07 11:53:34', '2021-12-07 11:53:34'),
(12, 20, 'shurjoPay', 4000, NULL, 4000, 1, 0, '979907', '2021-12-07 11:55:48', '2021-12-07 11:55:48'),
(13, 20, 'shurjoPay', 4000, NULL, 4000, 1, 0, '904425', '2021-12-07 11:58:38', '2021-12-07 11:58:38'),
(14, 3, 'shurjoPay', 1500, NULL, 1500, 1, 0, '434105', '2021-12-07 15:39:13', '2021-12-07 15:39:13'),
(15, 3, 'shurjoPay', 1500, NULL, 1500, 1, 0, '598376', '2021-12-07 15:40:45', '2021-12-07 15:40:45'),
(16, 3, 'shurjoPay', 2500, NULL, 2500, 1, 0, '348164', '2021-12-07 15:42:13', '2021-12-07 15:42:13'),
(17, 1, 'shurjoPay', 8000, NULL, 5500, 1, 100, '500762', '2021-12-07 15:57:47', '2021-12-07 15:57:47'),
(18, 20, 'shurjoPay', 1500, NULL, 0, 1, 100, '437626', '2021-12-07 16:20:17', '2021-12-07 16:20:17'),
(19, 20, 'shurjoPay', 750, NULL, 0, 1, 100, '694772', '2021-12-07 16:21:20', '2021-12-07 16:21:20'),
(20, 23, 'shurjoPay', 4000, NULL, 0, 1, 100, '346254', '2021-12-08 05:20:48', '2021-12-08 05:20:48'),
(21, 23, 'shurjoPay', 4000, NULL, 0, 1, 100, '637830', '2021-12-08 05:21:47', '2021-12-08 05:21:47'),
(22, 23, 'shurjoPay', 5500, NULL, 0, 1, 100, '338920', '2021-12-08 05:22:24', '2021-12-08 05:22:24'),
(23, 24, 'shurjoPay', 5500, NULL, 0, 1, 100, '455329', '2021-12-08 05:25:30', '2021-12-08 05:25:30'),
(24, 24, 'shurjoPay', 4000, NULL, 0, 1, 100, '784295', '2021-12-08 05:26:07', '2021-12-08 05:26:07'),
(25, 24, 'shurjoPay', 750, NULL, 0, 1, 100, '252648', '2021-12-08 05:26:51', '2021-12-08 05:26:51'),
(26, 24, 'shurjoPay', 4000, NULL, 0, 1, 100, '748925', '2021-12-08 05:27:25', '2021-12-08 05:27:25'),
(27, 25, 'shurjoPay', 1500, NULL, 0, 1, 100, '599416', '2021-12-08 05:29:44', '2021-12-08 05:29:44'),
(28, 25, 'shurjoPay', 4000, NULL, 0, 1, 100, '502237', '2021-12-08 05:30:11', '2021-12-08 05:30:11'),
(29, 25, 'shurjoPay', 750, NULL, 0, 1, 100, '938928', '2021-12-08 05:30:47', '2021-12-08 05:30:47'),
(30, 25, 'shurjoPay', 4000, NULL, 0, 1, 100, '306222', '2021-12-08 05:31:17', '2021-12-08 05:31:17'),
(31, 26, 'shurjoPay', 2500, NULL, 0, 1, 100, '188624', '2021-12-08 05:33:30', '2021-12-08 05:33:30'),
(32, 26, 'shurjoPay', 5500, NULL, 0, 1, 100, '172385', '2021-12-08 05:34:35', '2021-12-08 05:34:35'),
(33, 26, 'shurjoPay', 1500, NULL, 0, 1, 100, '799612', '2021-12-08 05:35:04', '2021-12-08 05:35:04'),
(34, 26, 'shurjoPay', 4000, NULL, 0, 1, 100, '645079', '2021-12-08 05:35:45', '2021-12-08 05:35:45'),
(35, 26, 'shurjoPay', 750, NULL, 0, 1, 100, '540913', '2021-12-08 05:36:13', '2021-12-08 05:36:13'),
(36, 26, 'shurjoPay', 4000, NULL, 0, 1, 100, '859812', '2021-12-08 05:36:42', '2021-12-08 05:36:42'),
(37, 27, 'shurjoPay', 1500, NULL, 0, 1, 100, '791461', '2021-12-08 05:40:33', '2021-12-08 05:40:33'),
(38, 27, 'shurjoPay', 4000, NULL, 0, 1, 100, '127292', '2021-12-08 05:41:07', '2021-12-08 05:41:07'),
(39, 27, 'shurjoPay', 750, NULL, 0, 1, 100, '522530', '2021-12-08 05:41:47', '2021-12-08 05:41:47'),
(40, 27, 'shurjoPay', 4000, NULL, 0, 1, 100, '120223', '2021-12-08 05:42:15', '2021-12-08 05:42:15'),
(41, 28, 'shurjoPay', 2500, NULL, 0, 1, 100, '406546', '2021-12-08 05:45:17', '2021-12-08 05:45:17'),
(42, 28, 'shurjoPay', 5500, NULL, 0, 1, 100, '949625', '2021-12-08 05:45:51', '2021-12-08 05:45:51'),
(43, 28, 'shurjoPay', 4000, NULL, 0, 1, 100, '835850', '2021-12-08 05:46:21', '2021-12-08 05:46:21'),
(44, 28, 'shurjoPay', 750, NULL, 0, 1, 100, '955152', '2021-12-08 05:46:56', '2021-12-08 05:46:56'),
(45, 28, 'shurjoPay', 4000, NULL, 0, 1, 100, '980314', '2021-12-08 05:47:25', '2021-12-08 05:47:25'),
(46, 29, 'shurjoPay', 750, NULL, 0, 1, 100, '214436', '2021-12-08 05:52:02', '2021-12-08 05:52:02'),
(47, 29, 'shurjoPay', 4000, NULL, 0, 1, 100, '275140', '2021-12-08 05:52:22', '2021-12-08 05:52:22'),
(48, 30, 'shurjoPay', 1500, NULL, 0, 1, 100, '861626', '2021-12-08 05:55:29', '2021-12-08 05:55:29'),
(49, 30, 'shurjoPay', 4000, NULL, 0, 1, 100, '754554', '2021-12-08 05:56:29', '2021-12-08 05:56:29'),
(50, 30, 'shurjoPay', 750, NULL, 0, 1, 100, '776742', '2021-12-08 05:57:15', '2021-12-08 05:57:15'),
(51, 30, 'shurjoPay', 4000, NULL, 0, 1, 100, '323717', '2021-12-08 05:57:47', '2021-12-08 05:57:47'),
(52, 31, 'shurjoPay', 5500, NULL, 0, 1, 100, '479682', '2021-12-08 05:59:53', '2021-12-08 05:59:53'),
(53, 31, 'shurjoPay', 1500, NULL, 0, 1, 100, '905905', '2021-12-08 06:00:32', '2021-12-08 06:00:32'),
(54, 31, 'shurjoPay', 4000, NULL, 0, 1, 100, '302143', '2021-12-08 06:01:01', '2021-12-08 06:01:01'),
(55, 31, 'shurjoPay', 750, NULL, 0, 1, 100, '239059', '2021-12-08 06:01:29', '2021-12-08 06:01:29'),
(56, 31, 'shurjoPay', 4000, NULL, 0, 1, 100, '269242', '2021-12-08 06:01:47', '2021-12-08 06:01:47'),
(57, 32, 'shurjoPay', 2500, NULL, 0, 1, 100, '398032', '2021-12-08 06:04:25', '2021-12-08 06:04:25'),
(58, 32, 'shurjoPay', 5500, NULL, 0, 1, 100, '700174', '2021-12-08 06:04:56', '2021-12-08 06:04:56'),
(59, 32, 'shurjoPay', 4000, NULL, 0, 1, 100, '577437', '2021-12-08 06:05:30', '2021-12-08 06:05:30'),
(60, 32, 'shurjoPay', 750, NULL, 0, 1, 100, '867521', '2021-12-08 06:06:00', '2021-12-08 06:06:00'),
(61, 32, 'shurjoPay', 4000, NULL, 0, 1, 100, '727251', '2021-12-08 06:06:25', '2021-12-08 06:06:25'),
(62, 33, 'shurjoPay', 5500, NULL, 0, 1, 100, '207682', '2021-12-08 06:12:02', '2021-12-08 06:12:02'),
(63, 33, 'shurjoPay', 1500, NULL, 0, 1, 100, '213953', '2021-12-08 06:12:41', '2021-12-08 06:12:41'),
(64, 33, 'shurjoPay', 4000, NULL, 0, 1, 100, '330880', '2021-12-08 06:13:18', '2021-12-08 06:13:18'),
(65, 33, 'shurjoPay', 4000, NULL, 0, 1, 100, '915433', '2021-12-08 06:13:50', '2021-12-08 06:13:50'),
(66, 33, 'shurjoPay', 2500, NULL, 0, 1, 100, '156707', '2021-12-08 06:14:20', '2021-12-08 06:14:20'),
(67, 34, 'shurjoPay', 1500, NULL, 0, 1, 100, '173442', '2021-12-08 06:16:43', '2021-12-08 06:16:43'),
(68, 34, 'shurjoPay', 4000, NULL, 0, 1, 100, '207798', '2021-12-08 06:17:10', '2021-12-08 06:17:10'),
(69, 34, 'shurjoPay', 750, NULL, 0, 1, 100, '292551', '2021-12-08 06:17:33', '2021-12-08 06:17:33'),
(70, 34, 'shurjoPay', 4000, NULL, 0, 1, 100, '697424', '2021-12-08 06:18:38', '2021-12-08 06:18:38'),
(71, 35, 'shurjoPay', 5500, NULL, 0, 1, 100, '704160', '2021-12-08 06:22:19', '2021-12-08 06:22:19'),
(72, 35, 'shurjoPay', 1500, NULL, 0, 1, 100, '486475', '2021-12-08 06:23:01', '2021-12-08 06:23:01'),
(73, 35, 'shurjoPay', 4000, NULL, 0, 1, 100, '263152', '2021-12-08 06:23:34', '2021-12-08 06:23:34'),
(74, 35, 'shurjoPay', 750, NULL, 0, 1, 100, '442791', '2021-12-08 06:24:09', '2021-12-08 06:24:09'),
(75, 35, 'shurjoPay', 4000, NULL, 0, 1, 100, '712593', '2021-12-08 06:24:50', '2021-12-08 06:24:50'),
(76, 36, 'shurjoPay', 4000, NULL, 0, 1, 100, '531934', '2021-12-08 06:26:49', '2021-12-08 06:26:49'),
(77, 36, 'shurjoPay', 750, NULL, 0, 1, 100, '139816', '2021-12-08 06:28:04', '2021-12-08 06:28:04'),
(78, 36, 'shurjoPay', 4000, NULL, 0, 1, 100, '229821', '2021-12-08 06:28:32', '2021-12-08 06:28:32'),
(79, 37, 'shurjoPay', 1500, NULL, 0, 1, 100, '448034', '2021-12-08 06:31:50', '2021-12-08 06:31:50'),
(80, 37, 'shurjoPay', 4000, NULL, 0, 1, 100, '110717', '2021-12-08 06:32:17', '2021-12-08 06:32:17'),
(81, 37, 'shurjoPay', 750, NULL, 0, 1, 100, '380198', '2021-12-08 06:33:16', '2021-12-08 06:33:16'),
(82, 37, 'shurjoPay', 4000, NULL, 0, 1, 100, '624642', '2021-12-08 06:33:48', '2021-12-08 06:33:48'),
(83, 38, 'shurjoPay', 1500, NULL, 0, 1, 100, '514176', '2021-12-08 06:39:16', '2021-12-08 06:39:16'),
(84, 38, 'shurjoPay', 4000, NULL, 0, 1, 100, '960347', '2021-12-08 06:39:58', '2021-12-08 06:39:58'),
(85, 38, 'shurjoPay', 4000, NULL, 0, 1, 100, '429784', '2021-12-08 06:40:48', '2021-12-08 06:40:48'),
(86, 39, 'shurjoPay', 4000, NULL, 0, 1, 100, '194119', '2021-12-08 06:42:28', '2021-12-08 06:42:28'),
(87, 39, 'shurjoPay', 750, NULL, 0, 1, 100, '359718', '2021-12-08 06:43:19', '2021-12-08 06:43:19'),
(88, 39, 'shurjoPay', 4000, NULL, 0, 1, 100, '882586', '2021-12-08 06:44:12', '2021-12-08 06:44:12'),
(89, 40, 'shurjoPay', 4000, NULL, 0, 1, 100, '284964', '2021-12-08 06:48:22', '2021-12-08 06:48:22'),
(90, 40, 'shurjoPay', 750, NULL, 0, 1, 100, '679535', '2021-12-08 06:48:49', '2021-12-08 06:48:49'),
(91, 40, 'shurjoPay', 4000, NULL, 0, 1, 100, '494285', '2021-12-08 06:49:16', '2021-12-08 06:49:16'),
(92, 13, 'shurjoPay', 5500, NULL, 0, 1, 100, '668315', '2021-12-08 07:02:43', '2021-12-08 07:02:43'),
(93, 13, 'shurjoPay', 4000, NULL, 0, 1, 100, '421147', '2021-12-08 07:03:12', '2021-12-08 07:03:12'),
(94, 13, 'shurjoPay', 750, NULL, 0, 1, 100, '793619', '2021-12-08 07:03:51', '2021-12-08 07:03:51'),
(95, 13, 'shurjoPay', 4000, NULL, 0, 1, 100, '216293', '2021-12-08 07:04:20', '2021-12-08 07:04:20'),
(96, 41, 'shurjoPay', 5500, NULL, 0, 1, 100, '349531', '2021-12-08 07:06:08', '2021-12-08 07:06:08'),
(97, 41, 'shurjoPay', 1500, NULL, 0, 1, 100, '948364', '2021-12-08 07:06:31', '2021-12-08 07:06:31'),
(98, 41, 'shurjoPay', 4000, NULL, 0, 1, 100, '206144', '2021-12-08 07:06:53', '2021-12-08 07:06:53'),
(99, 41, 'shurjoPay', 750, NULL, 0, 1, 100, '737565', '2021-12-08 07:07:19', '2021-12-08 07:07:19'),
(100, 41, 'shurjoPay', 4000, NULL, 0, 1, 100, '840030', '2021-12-08 07:07:38', '2021-12-08 07:07:38'),
(101, 42, 'shurjoPay', 2500, NULL, 0, 1, 100, '997267', '2021-12-08 07:09:35', '2021-12-08 07:09:35'),
(102, 42, 'shurjoPay', 5500, NULL, 0, 1, 100, '122552', '2021-12-08 07:10:00', '2021-12-08 07:10:00'),
(103, 42, 'shurjoPay', 1500, NULL, 0, 1, 100, '449214', '2021-12-08 07:10:27', '2021-12-08 07:10:27'),
(104, 42, 'shurjoPay', 4000, NULL, 0, 1, 100, '337909', '2021-12-08 07:10:49', '2021-12-08 07:10:49'),
(105, 42, 'shurjoPay', 750, NULL, 0, 1, 100, '175686', '2021-12-08 07:11:15', '2021-12-08 07:11:15'),
(106, 42, 'shurjoPay', 4000, NULL, 0, 1, 100, '744485', '2021-12-08 07:11:45', '2021-12-08 07:11:45'),
(107, 43, 'shurjoPay', 1500, NULL, 0, 1, 100, '323660', '2021-12-08 07:13:23', '2021-12-08 07:13:23'),
(108, 43, 'shurjoPay', 4000, NULL, 0, 1, 100, '114801', '2021-12-08 07:13:47', '2021-12-08 07:13:47'),
(109, 43, 'shurjoPay', 750, NULL, 0, 1, 100, '470191', '2021-12-08 07:14:18', '2021-12-08 07:14:18'),
(110, 43, 'shurjoPay', 4000, NULL, 0, 1, 100, '199527', '2021-12-08 07:14:41', '2021-12-08 07:14:41'),
(111, 44, 'shurjoPay', 5500, NULL, 0, 1, 100, '868845', '2021-12-08 07:16:43', '2021-12-08 07:16:43'),
(112, 44, 'shurjoPay', 1500, NULL, 0, 1, 100, '360827', '2021-12-08 07:17:07', '2021-12-08 07:17:07'),
(113, 44, 'shurjoPay', 4000, NULL, 0, 1, 100, '319205', '2021-12-08 07:17:32', '2021-12-08 07:17:32'),
(114, 44, 'shurjoPay', 750, NULL, 0, 1, 100, '243962', '2021-12-08 07:18:01', '2021-12-08 07:18:01'),
(115, 44, 'shurjoPay', 4000, NULL, 0, 1, 100, '588998', '2021-12-08 07:18:22', '2021-12-08 07:18:22'),
(116, 45, 'shurjoPay', 2500, NULL, 0, 1, 100, '299796', '2021-12-08 07:20:44', '2021-12-08 07:20:44'),
(117, 45, 'shurjoPay', 5500, NULL, 0, 1, 100, '779177', '2021-12-08 07:21:11', '2021-12-08 07:21:11'),
(118, 45, 'shurjoPay', 1500, NULL, 0, 1, 100, '472435', '2021-12-08 07:21:36', '2021-12-08 07:21:36'),
(119, 45, 'shurjoPay', 4000, NULL, 0, 1, 100, '653199', '2021-12-08 07:21:58', '2021-12-08 07:21:58'),
(120, 45, 'shurjoPay', 750, NULL, 0, 1, 100, '852723', '2021-12-08 07:22:28', '2021-12-08 07:22:28'),
(121, 45, 'shurjoPay', 4000, NULL, 0, 1, 100, '756500', '2021-12-08 07:22:53', '2021-12-08 07:22:53'),
(122, 46, 'shurjoPay', 5500, NULL, 0, 1, 100, '840356', '2021-12-08 07:30:05', '2021-12-08 07:30:05'),
(123, 46, 'shurjoPay', 4000, NULL, 0, 1, 100, '442765', '2021-12-08 07:30:40', '2021-12-08 07:30:40'),
(124, 46, 'shurjoPay', 750, NULL, 0, 1, 100, '636581', '2021-12-08 07:31:05', '2021-12-08 07:31:05'),
(125, 46, 'shurjoPay', 4000, NULL, 0, 1, 100, '522991', '2021-12-08 07:31:36', '2021-12-08 07:31:36'),
(126, 47, 'shurjoPay', 1500, NULL, 0, 1, 100, '410280', '2021-12-08 07:33:21', '2021-12-08 07:33:21'),
(127, 47, 'shurjoPay', 4000, NULL, 0, 1, 100, '136083', '2021-12-08 07:34:39', '2021-12-08 07:34:39'),
(128, 47, 'shurjoPay', 750, NULL, 0, 1, 100, '978102', '2021-12-08 07:39:41', '2021-12-08 07:39:41'),
(129, 47, 'shurjoPay', 750, NULL, 0, 1, 100, '721104', '2021-12-08 07:42:45', '2021-12-08 07:42:45'),
(130, 48, 'shurjoPay', 5500, NULL, 0, 1, 100, '191717', '2021-12-08 07:46:41', '2021-12-08 07:46:41'),
(131, 48, 'shurjoPay', 4000, NULL, 0, 1, 100, '974317', '2021-12-08 07:47:09', '2021-12-08 07:47:09'),
(132, 48, 'shurjoPay', 750, NULL, 0, 1, 100, '286618', '2021-12-08 07:47:39', '2021-12-08 07:47:39'),
(133, 48, 'shurjoPay', 4000, NULL, 0, 1, 100, '390385', '2021-12-08 07:48:02', '2021-12-08 07:48:02'),
(134, 49, 'shurjoPay', 1500, NULL, 0, 1, 100, '455690', '2021-12-08 07:49:34', '2021-12-08 07:49:34'),
(135, 49, 'shurjoPay', 4000, NULL, 0, 1, 100, '679927', '2021-12-08 07:50:05', '2021-12-08 07:50:05'),
(136, 49, 'shurjoPay', 750, NULL, 0, 1, 100, '871474', '2021-12-08 07:50:26', '2021-12-08 07:50:26'),
(137, 49, 'shurjoPay', 4000, NULL, 0, 1, 100, '925936', '2021-12-08 07:50:44', '2021-12-08 07:50:44'),
(138, 50, 'shurjoPay', 1500, NULL, 0, 1, 100, '537569', '2021-12-08 07:52:44', '2021-12-08 07:52:44'),
(139, 50, 'shurjoPay', 4000, NULL, 0, 1, 100, '772384', '2021-12-08 07:53:13', '2021-12-08 07:53:13'),
(140, 50, 'shurjoPay', 750, NULL, 0, 1, 100, '537643', '2021-12-08 07:53:39', '2021-12-08 07:53:39'),
(141, 50, 'shurjoPay', 4000, NULL, 0, 1, 100, '738060', '2021-12-08 07:54:02', '2021-12-08 07:54:02'),
(142, 51, 'shurjoPay', 1500, NULL, 0, 1, 100, '601819', '2021-12-08 07:55:30', '2021-12-08 07:55:30'),
(143, 51, 'shurjoPay', 4000, NULL, 0, 1, 100, '244088', '2021-12-08 07:56:02', '2021-12-08 07:56:02'),
(144, 51, 'shurjoPay', 750, NULL, 0, 1, 100, '337486', '2021-12-08 07:56:26', '2021-12-08 07:56:26'),
(145, 51, 'shurjoPay', 4000, NULL, 0, 1, 100, '110330', '2021-12-08 07:56:47', '2021-12-08 07:56:47'),
(146, 52, 'shurjoPay', 4000, NULL, 0, 1, 100, '346858', '2021-12-08 07:57:59', '2021-12-08 07:57:59'),
(147, 52, 'shurjoPay', 750, NULL, 0, 1, 100, '768659', '2021-12-08 07:58:19', '2021-12-08 07:58:19'),
(148, 52, 'shurjoPay', 4000, NULL, 0, 1, 100, '644187', '2021-12-08 07:58:36', '2021-12-08 07:58:36'),
(149, 53, 'shurjoPay', 5500, NULL, 0, 1, 100, '363822', '2021-12-08 08:00:23', '2021-12-08 08:00:23'),
(150, 53, 'shurjoPay', 4000, NULL, 0, 1, 100, '737711', '2021-12-08 08:00:49', '2021-12-08 08:00:49'),
(151, 53, 'shurjoPay', 750, NULL, 0, 1, 100, '964093', '2021-12-08 08:01:25', '2021-12-08 08:01:25'),
(152, 53, 'shurjoPay', 4000, NULL, 0, 1, 100, '977515', '2021-12-08 08:01:43', '2021-12-08 08:01:43'),
(153, 54, 'shurjoPay', 2500, NULL, 0, 1, 100, '757805', '2021-12-08 08:03:12', '2021-12-08 08:03:12'),
(154, 55, 'shurjoPay', 1500, NULL, 0, 1, 100, '781391', '2021-12-08 08:04:26', '2021-12-08 08:04:26'),
(155, 55, 'shurjoPay', 4000, NULL, 0, 1, 100, '344945', '2021-12-08 08:04:52', '2021-12-08 08:04:52'),
(156, 55, 'shurjoPay', 750, NULL, 0, 1, 100, '266493', '2021-12-08 08:05:26', '2021-12-08 08:05:26'),
(157, 55, 'shurjoPay', 4000, NULL, 0, 1, 100, '608627', '2021-12-08 08:05:46', '2021-12-08 08:05:46'),
(158, 56, 'shurjoPay', 5500, NULL, 0, 1, 100, '103629', '2021-12-08 08:30:58', '2021-12-08 08:30:58'),
(159, 56, 'shurjoPay', 4000, NULL, 0, 1, 100, '354611', '2021-12-08 08:31:21', '2021-12-08 08:31:21'),
(160, 56, 'shurjoPay', 750, NULL, 0, 1, 100, '779412', '2021-12-08 08:31:47', '2021-12-08 08:31:47'),
(161, 56, 'shurjoPay', 4000, NULL, 0, 1, 100, '954154', '2021-12-08 08:32:20', '2021-12-08 08:32:20'),
(162, 57, 'shurjoPay', 2500, NULL, 0, 1, 100, '163101', '2021-12-08 08:34:33', '2021-12-08 08:34:33'),
(163, 58, 'shurjoPay', 5500, NULL, 0, 1, 100, '541831', '2021-12-08 08:36:40', '2021-12-08 08:36:40'),
(164, 58, 'shurjoPay', 4000, NULL, 0, 1, 100, '972034', '2021-12-08 08:37:02', '2021-12-08 08:37:02'),
(165, 58, 'shurjoPay', 750, NULL, 0, 1, 100, '143522', '2021-12-08 08:37:29', '2021-12-08 08:37:29'),
(166, 58, 'shurjoPay', 4000, NULL, 0, 1, 100, '901731', '2021-12-08 08:37:48', '2021-12-08 08:37:48'),
(167, 59, 'shurjoPay', 1500, NULL, 0, 1, 100, '605330', '2021-12-08 08:40:12', '2021-12-08 08:40:12'),
(168, 59, 'shurjoPay', 4000, NULL, 0, 1, 100, '891503', '2021-12-08 08:40:35', '2021-12-08 08:40:35'),
(169, 59, 'shurjoPay', 750, NULL, 0, 1, 100, '635982', '2021-12-08 08:41:00', '2021-12-08 08:41:00'),
(170, 59, 'shurjoPay', 4000, NULL, 0, 1, 100, '595133', '2021-12-08 08:41:22', '2021-12-08 08:41:22'),
(171, 60, 'shurjoPay', 4000, NULL, 0, 1, 100, '657537', '2021-12-08 08:43:30', '2021-12-08 08:43:30'),
(172, 60, 'shurjoPay', 750, NULL, 0, 1, 100, '721352', '2021-12-08 08:43:54', '2021-12-08 08:43:54'),
(173, 60, 'shurjoPay', 4000, NULL, 0, 1, 100, '726218', '2021-12-08 08:44:18', '2021-12-08 08:44:18'),
(174, 61, 'shurjoPay', 4000, NULL, 0, 1, 100, '647407', '2021-12-08 09:03:28', '2021-12-08 09:03:28'),
(175, 62, 'shurjoPay', 4000, NULL, 0, 1, 100, '514780', '2021-12-08 09:04:47', '2021-12-08 09:04:47'),
(176, 63, 'shurjoPay', 1500, NULL, 0, 1, 100, '897466', '2021-12-08 09:06:33', '2021-12-08 09:06:33'),
(177, 63, 'shurjoPay', 4000, NULL, 0, 1, 100, '309949', '2021-12-08 09:07:57', '2021-12-08 09:07:57'),
(178, 63, 'shurjoPay', 750, NULL, 0, 1, 100, '796305', '2021-12-08 09:08:25', '2021-12-08 09:08:25'),
(179, 63, 'shurjoPay', 4000, NULL, 0, 1, 100, '108771', '2021-12-08 09:09:22', '2021-12-08 09:09:22'),
(180, 64, 'shurjoPay', 4000, NULL, 0, 1, 100, '278278', '2021-12-08 09:12:11', '2021-12-08 09:12:11'),
(181, 64, 'shurjoPay', 750, NULL, 0, 1, 100, '693151', '2021-12-08 09:12:37', '2021-12-08 09:12:37'),
(182, 64, 'shurjoPay', 4000, NULL, 0, 1, 100, '537456', '2021-12-08 09:12:55', '2021-12-08 09:12:55'),
(183, 65, 'shurjoPay', 1500, NULL, 0, 1, 100, '798121', '2021-12-08 09:14:26', '2021-12-08 09:14:26'),
(184, 65, 'shurjoPay', 4000, NULL, 0, 1, 100, '154725', '2021-12-08 09:14:48', '2021-12-08 09:14:48'),
(185, 65, 'shurjoPay', 750, NULL, 0, 1, 100, '922757', '2021-12-08 09:15:11', '2021-12-08 09:15:11'),
(186, 65, 'shurjoPay', 4000, NULL, 0, 1, 100, '482907', '2021-12-08 09:15:28', '2021-12-08 09:15:28'),
(187, 66, 'shurjoPay', 5500, NULL, 0, 1, 100, '121803', '2021-12-08 09:17:21', '2021-12-08 09:17:21'),
(188, 66, 'shurjoPay', 1500, NULL, 0, 1, 100, '224961', '2021-12-08 09:17:48', '2021-12-08 09:17:48'),
(189, 66, 'shurjoPay', 4000, NULL, 0, 1, 100, '142357', '2021-12-08 09:18:13', '2021-12-08 09:18:13'),
(190, 66, 'shurjoPay', 750, NULL, 0, 1, 100, '685200', '2021-12-08 09:18:35', '2021-12-08 09:18:35'),
(191, 66, 'shurjoPay', 4000, NULL, 0, 1, 100, '981348', '2021-12-08 09:18:54', '2021-12-08 09:18:54'),
(192, 67, 'shurjoPay', 1500, NULL, 0, 1, 100, '727801', '2021-12-08 09:20:37', '2021-12-08 09:20:37'),
(193, 67, 'shurjoPay', 4000, NULL, 0, 1, 100, '741752', '2021-12-08 09:21:03', '2021-12-08 09:21:03'),
(194, 67, 'shurjoPay', 750, NULL, 0, 1, 100, '993257', '2021-12-08 09:21:34', '2021-12-08 09:21:34'),
(195, 67, 'shurjoPay', 4000, NULL, 0, 1, 100, '377567', '2021-12-08 09:21:51', '2021-12-08 09:21:51'),
(196, 68, 'shurjoPay', 4000, NULL, 0, 1, 100, '892714', '2021-12-08 09:23:09', '2021-12-08 09:23:09'),
(197, 68, 'shurjoPay', 750, NULL, 0, 1, 100, '214667', '2021-12-08 09:23:27', '2021-12-08 09:23:27'),
(198, 68, 'shurjoPay', 4000, NULL, 0, 1, 100, '484957', '2021-12-08 09:23:45', '2021-12-08 09:23:45'),
(199, 69, 'shurjoPay', 1500, NULL, 0, 1, 100, '696941', '2021-12-08 09:25:01', '2021-12-08 09:25:01'),
(200, 69, 'shurjoPay', 4000, NULL, 0, 1, 100, '384447', '2021-12-08 09:25:26', '2021-12-08 09:25:26'),
(201, 69, 'shurjoPay', 750, NULL, 0, 1, 100, '172436', '2021-12-08 09:25:42', '2021-12-08 09:25:42'),
(202, 69, 'shurjoPay', 4000, NULL, 0, 1, 100, '101250', '2021-12-08 09:26:02', '2021-12-08 09:26:02'),
(203, 70, 'shurjoPay', 4000, NULL, 0, 1, 100, '804801', '2021-12-08 09:27:31', '2021-12-08 09:27:31'),
(204, 70, 'shurjoPay', 750, NULL, 0, 1, 100, '492030', '2021-12-08 09:27:49', '2021-12-08 09:27:49'),
(205, 70, 'shurjoPay', 4000, NULL, 0, 1, 100, '454414', '2021-12-08 09:28:16', '2021-12-08 09:28:16'),
(206, 71, 'shurjoPay', 5500, NULL, 0, 1, 100, '505571', '2021-12-08 09:30:15', '2021-12-08 09:30:15'),
(207, 71, 'shurjoPay', 1500, NULL, 0, 1, 100, '334895', '2021-12-08 09:30:40', '2021-12-08 09:30:40'),
(208, 71, 'shurjoPay', 4000, NULL, 0, 1, 100, '448945', '2021-12-08 09:31:06', '2021-12-08 09:31:06'),
(209, 71, 'shurjoPay', 750, NULL, 0, 1, 100, '316728', '2021-12-08 09:31:26', '2021-12-08 09:31:26'),
(210, 71, 'shurjoPay', 4000, NULL, 0, 1, 100, '722707', '2021-12-08 09:33:00', '2021-12-08 09:33:00'),
(211, 72, 'shurjoPay', 4000, NULL, 0, 1, 100, '535677', '2021-12-08 09:36:17', '2021-12-08 09:36:17'),
(212, 72, 'shurjoPay', 750, NULL, 0, 1, 100, '143814', '2021-12-08 09:36:34', '2021-12-08 09:36:34'),
(213, 72, 'shurjoPay', 4000, NULL, 0, 1, 100, '157253', '2021-12-08 09:36:53', '2021-12-08 09:36:53'),
(214, 73, 'shurjoPay', 2500, NULL, 0, 1, 100, '650136', '2021-12-08 09:38:01', '2021-12-08 09:38:01'),
(215, 73, 'shurjoPay', 5500, NULL, 0, 1, 100, '640242', '2021-12-08 09:38:29', '2021-12-08 09:38:29'),
(216, 73, 'shurjoPay', 750, NULL, 0, 1, 100, '616073', '2021-12-08 09:40:24', '2021-12-08 09:40:24'),
(217, 73, 'shurjoPay', 4000, NULL, 0, 1, 100, '348185', '2021-12-08 09:40:56', '2021-12-08 09:40:56'),
(218, 74, 'shurjoPay', 4000, NULL, 0, 1, 100, '901277', '2021-12-08 09:43:07', '2021-12-08 09:43:07'),
(219, 74, 'shurjoPay', 750, NULL, 0, 1, 100, '498466', '2021-12-08 09:43:25', '2021-12-08 09:43:25'),
(220, 74, 'shurjoPay', 4000, NULL, 0, 1, 100, '948162', '2021-12-08 09:43:41', '2021-12-08 09:43:41'),
(221, 75, 'shurjoPay', 1500, NULL, 0, 1, 100, '274580', '2021-12-08 09:46:43', '2021-12-08 09:46:43'),
(222, 75, 'shurjoPay', 4000, NULL, 0, 1, 100, '139637', '2021-12-08 09:48:10', '2021-12-08 09:48:10'),
(223, 75, 'shurjoPay', 750, NULL, 0, 1, 100, '282010', '2021-12-08 09:48:50', '2021-12-08 09:48:50'),
(224, 75, 'shurjoPay', 4000, NULL, 0, 1, 100, '878166', '2021-12-08 09:49:11', '2021-12-08 09:49:11'),
(225, 76, 'shurjoPay', 2500, NULL, 0, 1, 100, '721069', '2021-12-08 09:50:44', '2021-12-08 09:50:44'),
(226, 76, 'shurjoPay', 5500, NULL, 0, 1, 100, '702071', '2021-12-08 09:51:10', '2021-12-08 09:51:10'),
(227, 76, 'shurjoPay', 750, NULL, 0, 1, 100, '864247', '2021-12-08 09:51:49', '2021-12-08 09:51:49'),
(228, 76, 'shurjoPay', 4000, NULL, 0, 1, 100, '330011', '2021-12-08 09:52:42', '2021-12-08 09:52:42'),
(229, 77, 'shurjoPay', 750, NULL, 0, 1, 100, '648044', '2021-12-08 09:54:44', '2021-12-08 09:54:44'),
(230, 77, 'shurjoPay', 4000, NULL, 0, 1, 100, '900031', '2021-12-08 09:55:01', '2021-12-08 09:55:01'),
(231, 78, 'shurjoPay', 4000, NULL, 0, 1, 100, '370042', '2021-12-08 09:58:49', '2021-12-08 09:58:49'),
(232, 78, 'shurjoPay', 750, NULL, 0, 1, 100, '342823', '2021-12-08 09:59:18', '2021-12-08 09:59:18'),
(233, 78, 'shurjoPay', 4000, NULL, 0, 1, 100, '934714', '2021-12-08 09:59:50', '2021-12-08 09:59:50'),
(234, 79, 'shurjoPay', 1500, NULL, 0, 1, 100, '481574', '2021-12-08 10:02:16', '2021-12-08 10:02:16'),
(235, 79, 'shurjoPay', 4000, NULL, 0, 1, 100, '477658', '2021-12-08 10:02:48', '2021-12-08 10:02:48'),
(236, 79, 'shurjoPay', 750, NULL, 0, 1, 100, '804352', '2021-12-08 10:03:13', '2021-12-08 10:03:13'),
(237, 79, 'shurjoPay', 4000, NULL, 0, 1, 100, '328440', '2021-12-08 10:03:36', '2021-12-08 10:03:36'),
(238, 80, 'shurjoPay', 1500, NULL, 0, 1, 100, '822004', '2021-12-08 10:06:37', '2021-12-08 10:06:37'),
(239, 80, 'shurjoPay', 4000, NULL, 0, 1, 100, '886833', '2021-12-08 10:07:00', '2021-12-08 10:07:00'),
(240, 80, 'shurjoPay', 750, NULL, 0, 1, 100, '770780', '2021-12-08 10:07:25', '2021-12-08 10:07:25'),
(241, 80, 'shurjoPay', 4000, NULL, 0, 1, 100, '113231', '2021-12-08 10:07:50', '2021-12-08 10:07:50'),
(242, 81, 'shurjoPay', 2500, NULL, 0, 1, 100, '884946', '2021-12-08 10:09:52', '2021-12-08 10:09:52'),
(243, 81, 'shurjoPay', 5500, NULL, 0, 1, 100, '104264', '2021-12-08 10:10:16', '2021-12-08 10:10:16'),
(244, 81, 'shurjoPay', 750, NULL, 0, 1, 100, '296863', '2021-12-08 10:10:34', '2021-12-08 10:10:34'),
(245, 81, 'shurjoPay', 1500, NULL, 0, 1, 100, '718301', '2021-12-08 10:10:49', '2021-12-08 10:10:49'),
(246, 81, 'shurjoPay', 4000, NULL, 0, 1, 100, '549599', '2021-12-08 10:11:04', '2021-12-08 10:11:04'),
(247, 81, 'shurjoPay', 4000, NULL, 0, 1, 100, '442401', '2021-12-08 10:11:31', '2021-12-08 10:11:31'),
(248, 82, 'shurjoPay', 4000, NULL, 0, 1, 100, '365274', '2021-12-08 10:13:14', '2021-12-08 10:13:14'),
(249, 82, 'shurjoPay', 750, NULL, 0, 1, 100, '125895', '2021-12-08 10:13:41', '2021-12-08 10:13:41'),
(250, 83, 'shurjoPay', 1500, NULL, 0, 1, 100, '451661', '2021-12-08 10:15:40', '2021-12-08 10:15:40'),
(251, 83, 'shurjoPay', 4000, NULL, 0, 1, 100, '980266', '2021-12-08 10:16:40', '2021-12-08 10:16:40'),
(252, 83, 'shurjoPay', 750, NULL, 0, 1, 100, '362065', '2021-12-08 10:17:14', '2021-12-08 10:17:14'),
(253, 83, 'shurjoPay', 4000, NULL, 0, 1, 100, '759985', '2021-12-08 10:18:37', '2021-12-08 10:18:37'),
(254, 84, 'shurjoPay', 1500, NULL, 0, 1, 100, '186961', '2021-12-08 10:20:41', '2021-12-08 10:20:41'),
(255, 84, 'shurjoPay', 4000, NULL, 0, 1, 100, '426261', '2021-12-08 10:21:02', '2021-12-08 10:21:02'),
(256, 84, 'shurjoPay', 750, NULL, 0, 1, 100, '290915', '2021-12-08 10:21:32', '2021-12-08 10:21:32'),
(257, 84, 'shurjoPay', 4000, NULL, 0, 1, 100, '545406', '2021-12-08 10:21:58', '2021-12-08 10:21:58'),
(258, 85, 'shurjoPay', 4000, NULL, 0, 1, 100, '659279', '2021-12-08 10:26:07', '2021-12-08 10:26:07'),
(259, 86, 'shurjoPay', 1500, NULL, 0, 1, 100, '606656', '2021-12-08 10:30:30', '2021-12-08 10:30:30'),
(260, 86, 'shurjoPay', 4000, NULL, 0, 1, 100, '190441', '2021-12-08 10:30:53', '2021-12-08 10:30:53'),
(261, 86, 'shurjoPay', 750, NULL, 0, 1, 100, '193897', '2021-12-08 10:31:13', '2021-12-08 10:31:13'),
(262, 86, 'shurjoPay', 4000, NULL, 0, 1, 100, '395522', '2021-12-08 10:31:30', '2021-12-08 10:31:30'),
(263, 87, 'shurjoPay', 5500, NULL, 0, 1, 100, '193915', '2021-12-08 10:33:17', '2021-12-08 10:33:17'),
(264, 87, 'shurjoPay', 4000, NULL, 0, 1, 100, '761465', '2021-12-08 10:33:35', '2021-12-08 10:33:35'),
(265, 87, 'shurjoPay', 750, NULL, 0, 1, 100, '952670', '2021-12-08 10:34:15', '2021-12-08 10:34:15'),
(266, 87, 'shurjoPay', 4000, NULL, 0, 1, 100, '557346', '2021-12-08 10:34:41', '2021-12-08 10:34:41'),
(267, 88, 'shurjoPay', 1500, NULL, 0, 1, 100, '100488', '2021-12-08 10:37:30', '2021-12-08 10:37:30'),
(268, 88, 'shurjoPay', 4000, NULL, 0, 1, 100, '160805', '2021-12-08 10:37:53', '2021-12-08 10:37:53'),
(269, 88, 'shurjoPay', 750, NULL, 0, 1, 100, '188284', '2021-12-08 10:38:11', '2021-12-08 10:38:11'),
(270, 88, 'shurjoPay', 4000, NULL, 0, 1, 100, '140589', '2021-12-08 10:38:30', '2021-12-08 10:38:30'),
(271, 89, 'shurjoPay', 5500, NULL, 0, 1, 100, '734732', '2021-12-08 10:40:30', '2021-12-08 10:40:30'),
(272, 89, 'shurjoPay', 1500, NULL, 0, 1, 100, '804319', '2021-12-08 10:40:54', '2021-12-08 10:40:54'),
(273, 89, 'shurjoPay', 4000, NULL, 0, 1, 100, '465113', '2021-12-08 10:41:19', '2021-12-08 10:41:19'),
(274, 89, 'shurjoPay', 750, NULL, 0, 1, 100, '233478', '2021-12-08 10:41:44', '2021-12-08 10:41:44'),
(275, 89, 'shurjoPay', 4000, NULL, 0, 1, 100, '747986', '2021-12-08 10:42:07', '2021-12-08 10:42:07'),
(276, 90, 'shurjoPay', 1500, NULL, 0, 1, 100, '595586', '2021-12-08 10:44:08', '2021-12-08 10:44:08'),
(277, 90, 'shurjoPay', 4000, NULL, 0, 1, 100, '798627', '2021-12-08 10:44:31', '2021-12-08 10:44:31'),
(278, 90, 'shurjoPay', 750, NULL, 0, 1, 100, '503466', '2021-12-08 10:45:13', '2021-12-08 10:45:13'),
(279, 90, 'shurjoPay', 4000, NULL, 0, 1, 100, '226018', '2021-12-08 10:45:33', '2021-12-08 10:45:33'),
(280, 91, 'shurjoPay', 5500, NULL, 0, 1, 100, '208779', '2021-12-08 10:47:25', '2021-12-08 10:47:25'),
(281, 91, 'shurjoPay', 1500, NULL, 0, 1, 100, '148918', '2021-12-08 10:47:56', '2021-12-08 10:47:56'),
(282, 91, 'shurjoPay', 4000, NULL, 0, 1, 100, '576900', '2021-12-08 10:48:18', '2021-12-08 10:48:18'),
(283, 91, 'shurjoPay', 750, NULL, 0, 1, 100, '370202', '2021-12-08 10:48:43', '2021-12-08 10:48:43'),
(284, 91, 'shurjoPay', 4000, NULL, 0, 1, 100, '673436', '2021-12-08 10:49:09', '2021-12-08 10:49:09'),
(285, 92, 'shurjoPay', 1500, NULL, 0, 1, 100, '543302', '2021-12-08 10:51:01', '2021-12-08 10:51:01'),
(286, 92, 'shurjoPay', 4000, NULL, 0, 1, 100, '615410', '2021-12-08 10:51:27', '2021-12-08 10:51:27'),
(287, 92, 'shurjoPay', 750, NULL, 0, 1, 100, '963860', '2021-12-08 10:51:44', '2021-12-08 10:51:44'),
(288, 92, 'shurjoPay', 4000, NULL, 0, 1, 100, '309333', '2021-12-08 10:52:07', '2021-12-08 10:52:07'),
(289, 93, 'shurjoPay', 1500, NULL, 0, 1, 100, '946956', '2021-12-08 10:53:53', '2021-12-08 10:53:53'),
(290, 93, 'shurjoPay', 4000, NULL, 0, 1, 100, '983131', '2021-12-08 10:54:12', '2021-12-08 10:54:12'),
(291, 93, 'shurjoPay', 750, NULL, 0, 1, 100, '465262', '2021-12-08 10:54:34', '2021-12-08 10:54:34'),
(292, 93, 'shurjoPay', 4000, NULL, 0, 1, 100, '929547', '2021-12-08 10:54:54', '2021-12-08 10:54:54'),
(293, 94, 'shurjoPay', 4000, NULL, 0, 1, 100, '412289', '2021-12-08 10:56:07', '2021-12-08 10:56:07'),
(294, 94, 'shurjoPay', 750, NULL, 0, 1, 100, '239884', '2021-12-08 10:56:28', '2021-12-08 10:56:28'),
(295, 94, 'shurjoPay', 4000, NULL, 0, 1, 100, '154335', '2021-12-08 10:56:47', '2021-12-08 10:56:47'),
(296, 95, 'shurjoPay', 4000, NULL, 0, 1, 100, '282027', '2021-12-08 10:59:02', '2021-12-08 10:59:02'),
(297, 95, 'shurjoPay', 4000, NULL, 0, 1, 100, '337843', '2021-12-08 10:59:18', '2021-12-08 10:59:18'),
(298, 96, 'shurjoPay', 1500, NULL, 0, 1, 100, '960788', '2021-12-08 11:00:34', '2021-12-08 11:00:34'),
(299, 96, 'shurjoPay', 4000, NULL, 0, 1, 100, '288143', '2021-12-08 11:00:54', '2021-12-08 11:00:54'),
(300, 96, 'shurjoPay', 750, NULL, 0, 1, 100, '720438', '2021-12-08 11:01:11', '2021-12-08 11:01:11'),
(301, 96, 'shurjoPay', 4000, NULL, 0, 1, 100, '642987', '2021-12-08 11:01:30', '2021-12-08 11:01:30'),
(302, 97, 'shurjoPay', 4000, NULL, 0, 1, 100, '136185', '2021-12-08 11:02:46', '2021-12-08 11:02:46'),
(303, 98, 'shurjoPay', 4000, NULL, 0, 1, 100, '628012', '2021-12-08 11:04:53', '2021-12-08 11:04:53'),
(304, 98, 'shurjoPay', 750, NULL, 0, 1, 100, '831643', '2021-12-08 11:05:17', '2021-12-08 11:05:17'),
(305, 98, 'shurjoPay', 4000, NULL, 0, 1, 100, '367380', '2021-12-08 11:05:38', '2021-12-08 11:05:38'),
(306, 99, 'shurjoPay', 750, NULL, 0, 1, 100, '640244', '2021-12-08 11:07:07', '2021-12-08 11:07:07'),
(307, 99, 'shurjoPay', 4000, NULL, 0, 1, 100, '501000', '2021-12-08 11:07:24', '2021-12-08 11:07:24'),
(308, 100, 'shurjoPay', 4000, NULL, 0, 1, 100, '707931', '2021-12-08 11:09:14', '2021-12-08 11:09:14'),
(309, 100, 'shurjoPay', 750, NULL, 0, 1, 100, '240855', '2021-12-08 11:09:41', '2021-12-08 11:09:41'),
(310, 100, 'shurjoPay', 4000, NULL, 0, 1, 100, '795521', '2021-12-08 11:09:59', '2021-12-08 11:09:59'),
(311, 101, 'shurjoPay', 1500, NULL, 0, 1, 100, '970077', '2021-12-08 11:11:41', '2021-12-08 11:11:41'),
(312, 101, 'shurjoPay', 4000, NULL, 0, 1, 100, '501513', '2021-12-08 11:12:08', '2021-12-08 11:12:08'),
(313, 101, 'shurjoPay', 750, NULL, 0, 1, 100, '855428', '2021-12-08 11:12:38', '2021-12-08 11:12:38'),
(314, 101, 'shurjoPay', 4000, NULL, 0, 1, 100, '266562', '2021-12-08 11:12:55', '2021-12-08 11:12:55'),
(315, 102, 'shurjoPay', 4000, NULL, 0, 1, 100, '456479', '2021-12-08 11:14:12', '2021-12-08 11:14:12'),
(316, 102, 'shurjoPay', 750, NULL, 0, 1, 100, '420297', '2021-12-08 11:15:06', '2021-12-08 11:15:06'),
(317, 102, 'shurjoPay', 4000, NULL, 0, 1, 100, '622621', '2021-12-08 11:15:26', '2021-12-08 11:15:26'),
(318, 103, 'shurjoPay', 2500, NULL, 0, 1, 100, '310929', '2021-12-08 11:18:05', '2021-12-08 11:18:05'),
(319, 103, 'shurjoPay', 4000, NULL, 0, 1, 100, '839680', '2021-12-08 11:18:26', '2021-12-08 11:18:26'),
(320, 103, 'shurjoPay', 750, NULL, 0, 1, 100, '918023', '2021-12-08 11:18:57', '2021-12-08 11:18:57'),
(321, 103, 'shurjoPay', 4000, NULL, 0, 1, 100, '799115', '2021-12-08 11:19:23', '2021-12-08 11:19:23'),
(322, 104, 'shurjoPay', 1500, NULL, 0, 1, 100, '701770', '2021-12-08 11:21:08', '2021-12-08 11:21:08'),
(323, 104, 'shurjoPay', 4000, NULL, 0, 1, 100, '442586', '2021-12-08 11:21:41', '2021-12-08 11:21:41'),
(324, 104, 'shurjoPay', 750, NULL, 0, 1, 100, '727265', '2021-12-08 11:22:12', '2021-12-08 11:22:12'),
(325, 104, 'shurjoPay', 2500, NULL, 0, 1, 100, '657110', '2021-12-08 11:22:47', '2021-12-08 11:22:47'),
(326, 105, 'shurjoPay', 5500, NULL, 0, 1, 100, '144752', '2021-12-08 11:24:57', '2021-12-08 11:24:57'),
(327, 105, 'shurjoPay', 1500, NULL, 0, 1, 100, '112679', '2021-12-08 11:25:20', '2021-12-08 11:25:20'),
(328, 105, 'shurjoPay', 4000, NULL, 0, 1, 100, '665277', '2021-12-08 11:25:49', '2021-12-08 11:25:49'),
(329, 105, 'shurjoPay', 750, NULL, 0, 1, 100, '126207', '2021-12-08 11:27:08', '2021-12-08 11:27:08'),
(330, 105, 'shurjoPay', 4000, NULL, 0, 1, 100, '176333', '2021-12-08 11:27:28', '2021-12-08 11:27:28'),
(331, 106, 'shurjoPay', 4000, NULL, 0, 1, 100, '840812', '2021-12-08 11:30:30', '2021-12-08 11:30:30'),
(332, 106, 'shurjoPay', 4000, NULL, 0, 1, 100, '113755', '2021-12-08 11:30:51', '2021-12-08 11:30:51'),
(333, 107, 'shurjoPay', 1500, NULL, 0, 1, 100, '665094', '2021-12-08 11:32:59', '2021-12-08 11:32:59'),
(334, 107, 'shurjoPay', 4000, NULL, 0, 1, 100, '775483', '2021-12-08 11:33:23', '2021-12-08 11:33:23'),
(335, 107, 'shurjoPay', 750, NULL, 0, 1, 100, '145395', '2021-12-08 11:33:41', '2021-12-08 11:33:41'),
(336, 107, 'shurjoPay', 4000, NULL, 0, 1, 100, '236173', '2021-12-08 11:34:03', '2021-12-08 11:34:03'),
(337, 108, 'shurjoPay', 1500, NULL, 0, 1, 100, '733670', '2021-12-08 11:35:24', '2021-12-08 11:35:24'),
(338, 108, 'shurjoPay', 4000, NULL, 0, 1, 100, '216336', '2021-12-08 11:35:39', '2021-12-08 11:35:39'),
(339, 108, 'shurjoPay', 750, NULL, 0, 1, 100, '302637', '2021-12-08 11:36:08', '2021-12-08 11:36:08'),
(340, 108, 'shurjoPay', 4000, NULL, 0, 1, 100, '313836', '2021-12-08 11:36:24', '2021-12-08 11:36:24'),
(341, 109, 'shurjoPay', 1500, NULL, 0, 1, 100, '469650', '2021-12-08 11:37:46', '2021-12-08 11:37:46'),
(342, 109, 'shurjoPay', 4000, NULL, 0, 1, 100, '800577', '2021-12-08 11:38:04', '2021-12-08 11:38:04'),
(343, 109, 'shurjoPay', 750, NULL, 0, 1, 100, '104946', '2021-12-08 11:38:26', '2021-12-08 11:38:26'),
(344, 109, 'shurjoPay', 4000, NULL, 0, 1, 100, '759721', '2021-12-08 11:38:42', '2021-12-08 11:38:42'),
(345, 110, 'shurjoPay', 1500, NULL, 0, 1, 100, '138057', '2021-12-08 11:39:58', '2021-12-08 11:39:58'),
(346, 110, 'shurjoPay', 4000, NULL, 0, 1, 100, '308845', '2021-12-08 11:40:13', '2021-12-08 11:40:13'),
(347, 110, 'shurjoPay', 4000, NULL, 0, 1, 100, '846784', '2021-12-08 11:40:33', '2021-12-08 11:40:33'),
(348, 110, 'shurjoPay', 4000, NULL, 0, 1, 100, '528098', '2021-12-08 11:40:50', '2021-12-08 11:40:50'),
(349, 111, 'shurjoPay', 1500, NULL, 0, 1, 100, '961201', '2021-12-08 11:43:50', '2021-12-08 11:43:50'),
(350, 111, 'shurjoPay', 4000, NULL, 0, 1, 100, '522197', '2021-12-08 11:44:24', '2021-12-08 11:44:24'),
(351, 111, 'shurjoPay', 750, NULL, 0, 1, 100, '186272', '2021-12-08 11:44:58', '2021-12-08 11:44:58'),
(352, 111, 'shurjoPay', 4000, NULL, 0, 1, 100, '525077', '2021-12-08 11:45:20', '2021-12-08 11:45:20'),
(353, 112, 'shurjoPay', 4000, NULL, 0, 1, 100, '788669', '2021-12-08 11:47:01', '2021-12-08 11:47:01'),
(354, 112, 'shurjoPay', 750, NULL, 0, 1, 100, '267192', '2021-12-08 11:47:20', '2021-12-08 11:47:20'),
(355, 112, 'shurjoPay', 4000, NULL, 0, 1, 100, '301965', '2021-12-08 11:47:41', '2021-12-08 11:47:41'),
(356, 113, 'shurjoPay', 2500, NULL, 0, 1, 100, '813398', '2021-12-08 11:54:13', '2021-12-08 11:54:13'),
(357, 113, 'shurjoPay', 5500, NULL, 0, 1, 100, '169978', '2021-12-08 11:54:38', '2021-12-08 11:54:38'),
(358, 113, 'shurjoPay', 1500, NULL, 0, 1, 100, '551881', '2021-12-08 11:55:00', '2021-12-08 11:55:00'),
(359, 113, 'shurjoPay', 4000, NULL, 0, 1, 100, '179140', '2021-12-08 11:55:21', '2021-12-08 11:55:21'),
(360, 113, 'shurjoPay', 750, NULL, 0, 1, 100, '307119', '2021-12-08 11:55:41', '2021-12-08 11:55:41'),
(361, 113, 'shurjoPay', 4000, NULL, 0, 1, 100, '120739', '2021-12-08 11:56:00', '2021-12-08 11:56:00'),
(362, 114, 'shurjoPay', 1500, NULL, 0, 1, 100, '956035', '2021-12-08 11:57:19', '2021-12-08 11:57:19'),
(363, 114, 'shurjoPay', 4000, NULL, 0, 1, 100, '653697', '2021-12-08 11:57:38', '2021-12-08 11:57:38'),
(364, 114, 'shurjoPay', 750, NULL, 0, 1, 100, '361216', '2021-12-08 11:58:25', '2021-12-08 11:58:25'),
(365, 114, 'shurjoPay', 4000, NULL, 0, 1, 100, '282116', '2021-12-08 11:58:52', '2021-12-08 11:58:52'),
(366, 115, 'shurjoPay', 1500, NULL, 0, 1, 100, '448939', '2021-12-08 14:09:25', '2021-12-08 14:09:25'),
(367, 115, 'shurjoPay', 4000, NULL, 0, 1, 100, '958509', '2021-12-08 14:09:53', '2021-12-08 14:09:53'),
(368, 115, 'shurjoPay', 750, NULL, 0, 1, 100, '321446', '2021-12-08 14:10:21', '2021-12-08 14:10:21'),
(369, 115, 'shurjoPay', 4000, NULL, 0, 1, 100, '666342', '2021-12-08 14:10:49', '2021-12-08 14:10:49'),
(370, 116, 'shurjoPay', 4000, NULL, 0, 1, 100, '548473', '2021-12-08 14:14:16', '2021-12-08 14:14:16'),
(371, 116, 'shurjoPay', 4000, NULL, 0, 1, 100, '256097', '2021-12-08 14:14:38', '2021-12-08 14:14:38'),
(372, 116, 'shurjoPay', 1500, NULL, 0, 1, 100, '594372', '2021-12-08 14:14:57', '2021-12-08 14:14:57'),
(373, 116, 'shurjoPay', 750, NULL, 0, 1, 100, '302103', '2021-12-08 14:15:19', '2021-12-08 14:15:19'),
(374, 116, 'shurjoPay', 5500, NULL, 0, 1, 100, '976924', '2021-12-08 14:15:48', '2021-12-08 14:15:48'),
(375, 116, 'shurjoPay', 2500, NULL, 0, 1, 100, '855166', '2021-12-08 14:16:14', '2021-12-08 14:16:14'),
(376, 117, 'shurjoPay', 2500, NULL, 0, 1, 100, '606661', '2021-12-08 14:51:44', '2021-12-08 14:51:44'),
(377, 117, 'shurjoPay', 5500, NULL, 0, 1, 100, '278290', '2021-12-08 14:52:13', '2021-12-08 14:52:13'),
(378, 117, 'shurjoPay', 4000, NULL, 0, 1, 100, '190344', '2021-12-08 14:52:41', '2021-12-08 14:52:41'),
(379, 117, 'shurjoPay', 750, NULL, 0, 1, 100, '628024', '2021-12-08 14:53:07', '2021-12-08 14:53:07'),
(380, 117, 'shurjoPay', 4000, NULL, 0, 1, 100, '329122', '2021-12-08 14:53:36', '2021-12-08 14:53:36'),
(381, 118, 'shurjoPay', 4000, NULL, 0, 1, 100, '534044', '2021-12-08 14:55:39', '2021-12-08 14:55:39'),
(382, 118, 'shurjoPay', 750, NULL, 0, 1, 100, '896895', '2021-12-08 14:56:03', '2021-12-08 14:56:03'),
(383, 118, 'shurjoPay', 4000, NULL, 0, 1, 100, '348817', '2021-12-08 14:56:23', '2021-12-08 14:56:23'),
(384, 119, 'shurjoPay', 4000, NULL, 0, 1, 100, '282022', '2021-12-08 14:59:49', '2021-12-08 14:59:49'),
(385, 119, 'shurjoPay', 750, NULL, 0, 1, 100, '637490', '2021-12-08 15:00:13', '2021-12-08 15:00:13'),
(386, 119, 'shurjoPay', 4000, NULL, 0, 1, 100, '668005', '2021-12-08 15:00:31', '2021-12-08 15:00:31'),
(387, 120, 'shurjoPay', 1500, NULL, 0, 1, 100, '104915', '2021-12-08 15:02:59', '2021-12-08 15:02:59'),
(388, 120, 'shurjoPay', 750, NULL, 0, 1, 100, '664290', '2021-12-08 15:03:34', '2021-12-08 15:03:34'),
(389, 120, 'shurjoPay', 4000, NULL, 0, 1, 100, '868147', '2021-12-08 15:03:53', '2021-12-08 15:03:53'),
(390, 121, 'shurjoPay', 1500, NULL, 0, 1, 100, '654624', '2021-12-08 15:07:26', '2021-12-08 15:07:26'),
(391, 121, 'shurjoPay', 4000, NULL, 0, 1, 100, '996921', '2021-12-08 15:07:52', '2021-12-08 15:07:52'),
(392, 121, 'shurjoPay', 750, NULL, 0, 1, 100, '841107', '2021-12-08 15:08:16', '2021-12-08 15:08:16'),
(393, 121, 'shurjoPay', 4000, NULL, 0, 1, 100, '607693', '2021-12-08 15:08:40', '2021-12-08 15:08:40'),
(394, 122, 'shurjoPay', 1500, NULL, 0, 1, 100, '940964', '2021-12-08 15:15:38', '2021-12-08 15:15:38'),
(395, 122, 'shurjoPay', 4000, NULL, 0, 1, 100, '284163', '2021-12-08 15:16:05', '2021-12-08 15:16:05'),
(396, 122, 'shurjoPay', 750, NULL, 0, 1, 100, '848060', '2021-12-08 15:16:39', '2021-12-08 15:16:39'),
(397, 122, 'shurjoPay', 4000, NULL, 0, 1, 100, '325448', '2021-12-08 15:16:59', '2021-12-08 15:16:59'),
(398, 123, 'shurjoPay', 1500, NULL, 0, 1, 100, '542292', '2021-12-08 15:18:29', '2021-12-08 15:18:29'),
(399, 123, 'shurjoPay', 4000, NULL, 0, 1, 100, '213026', '2021-12-08 15:18:50', '2021-12-08 15:18:50'),
(400, 123, 'shurjoPay', 750, NULL, 0, 1, 100, '528303', '2021-12-08 15:19:12', '2021-12-08 15:19:12'),
(401, 123, 'shurjoPay', 4000, NULL, 0, 1, 100, '832194', '2021-12-08 15:19:31', '2021-12-08 15:19:31'),
(402, 124, 'shurjoPay', 1500, NULL, 0, 1, 100, '237296', '2021-12-08 15:24:31', '2021-12-08 15:24:31'),
(403, 124, 'shurjoPay', 4000, NULL, 0, 1, 100, '372398', '2021-12-08 15:24:57', '2021-12-08 15:24:57'),
(404, 124, 'shurjoPay', 750, NULL, 0, 1, 100, '765206', '2021-12-08 15:25:19', '2021-12-08 15:25:19'),
(405, 124, 'shurjoPay', 4000, NULL, 0, 1, 100, '814908', '2021-12-08 15:25:38', '2021-12-08 15:25:38'),
(406, 125, 'shurjoPay', 750, NULL, 0, 1, 100, '796371', '2021-12-08 15:27:14', '2021-12-08 15:27:14'),
(407, 126, 'shurjoPay', 1500, NULL, 0, 1, 100, '883040', '2021-12-08 15:28:32', '2021-12-08 15:28:32'),
(408, 126, 'shurjoPay', 4000, NULL, 0, 1, 100, '622949', '2021-12-08 15:29:00', '2021-12-08 15:29:00'),
(409, 126, 'shurjoPay', 750, NULL, 0, 1, 100, '134155', '2021-12-08 15:29:28', '2021-12-08 15:29:28'),
(410, 126, 'shurjoPay', 4000, NULL, 0, 1, 100, '780824', '2021-12-08 15:29:48', '2021-12-08 15:29:48'),
(411, 127, 'shurjoPay', 4000, NULL, 0, 1, 100, '102786', '2021-12-08 16:15:27', '2021-12-08 16:15:27'),
(412, 127, 'shurjoPay', 4000, NULL, 0, 1, 100, '458477', '2021-12-08 16:15:50', '2021-12-08 16:15:50'),
(413, 128, 'shurjoPay', 5500, NULL, 0, 1, 100, '882927', '2021-12-08 16:17:15', '2021-12-08 16:17:15'),
(414, 128, 'shurjoPay', 4000, NULL, 0, 1, 100, '606207', '2021-12-08 16:17:46', '2021-12-08 16:17:46'),
(415, 128, 'shurjoPay', 750, NULL, 0, 1, 100, '981919', '2021-12-08 16:18:17', '2021-12-08 16:18:17'),
(416, 128, 'shurjoPay', 4000, NULL, 0, 1, 100, '512018', '2021-12-08 16:18:38', '2021-12-08 16:18:38'),
(417, 129, 'shurjoPay', 4000, NULL, 0, 1, 100, '606256', '2021-12-08 16:21:16', '2021-12-08 16:21:16'),
(418, 129, 'shurjoPay', 4000, NULL, 0, 1, 100, '228437', '2021-12-08 16:21:41', '2021-12-08 16:21:41'),
(419, 129, 'shurjoPay', 1500, NULL, 0, 1, 100, '920451', '2021-12-08 16:22:02', '2021-12-08 16:22:02'),
(420, 129, 'shurjoPay', 750, NULL, 0, 1, 100, '300069', '2021-12-08 16:22:27', '2021-12-08 16:22:27'),
(421, 129, 'shurjoPay', 5500, NULL, 0, 1, 100, '320810', '2021-12-08 16:22:52', '2021-12-08 16:22:52'),
(422, 129, 'shurjoPay', 2500, NULL, 0, 1, 100, '888470', '2021-12-08 16:23:20', '2021-12-08 16:23:20'),
(423, 130, 'shurjoPay', 2500, NULL, 0, 1, 100, '117944', '2021-12-09 06:29:22', '2021-12-09 06:29:22'),
(424, 130, 'shurjoPay', 5500, NULL, 0, 1, 100, '947915', '2021-12-09 06:29:51', '2021-12-09 06:29:51'),
(425, 131, 'shurjoPay', 750, NULL, 0, 1, 100, '203388', '2021-12-09 06:31:32', '2021-12-09 06:31:32'),
(426, 132, 'shurjoPay', 2500, NULL, 0, 1, 100, '846182', '2021-12-09 06:33:22', '2021-12-09 06:33:22'),
(427, 133, 'shurjoPay', 4000, NULL, 0, 1, 100, '982477', '2021-12-09 06:37:10', '2021-12-09 06:37:10'),
(428, 134, 'shurjoPay', 4000, NULL, 0, 1, 100, '308622', '2021-12-09 06:38:48', '2021-12-09 06:38:48'),
(429, 134, 'shurjoPay', 750, NULL, 0, 1, 100, '985697', '2021-12-09 06:39:21', '2021-12-09 06:39:21'),
(430, 134, 'shurjoPay', 4000, NULL, 0, 1, 100, '670697', '2021-12-09 06:39:43', '2021-12-09 06:39:43'),
(431, 135, 'shurjoPay', 750, NULL, 0, 1, 100, '120723', '2021-12-09 06:41:11', '2021-12-09 06:41:11'),
(432, 136, 'shurjoPay', 1500, NULL, 0, 1, 100, '337361', '2021-12-09 06:42:19', '2021-12-09 06:42:19'),
(433, 136, 'shurjoPay', 4000, NULL, 0, 1, 100, '433273', '2021-12-09 06:43:05', '2021-12-09 06:43:05'),
(434, 136, 'shurjoPay', 4000, NULL, 0, 1, 100, '226082', '2021-12-09 06:43:27', '2021-12-09 06:43:27'),
(435, 137, 'shurjoPay', 5500, NULL, 0, 1, 100, '623162', '2021-12-09 06:45:04', '2021-12-09 06:45:04'),
(436, 137, 'shurjoPay', 1500, NULL, 0, 1, 100, '321613', '2021-12-09 06:45:23', '2021-12-09 06:45:23'),
(437, 137, 'shurjoPay', 4000, NULL, 0, 1, 100, '210011', '2021-12-09 06:45:45', '2021-12-09 06:45:45'),
(438, 137, 'shurjoPay', 750, NULL, 0, 1, 100, '294206', '2021-12-09 06:47:32', '2021-12-09 06:47:32'),
(439, 137, 'shurjoPay', 4000, NULL, 0, 1, 100, '173718', '2021-12-09 06:47:54', '2021-12-09 06:47:54'),
(440, 138, 'shurjoPay', 4000, NULL, 0, 1, 100, '466649', '2021-12-09 06:49:18', '2021-12-09 06:49:18'),
(441, 138, 'shurjoPay', 4000, NULL, 0, 1, 100, '875382', '2021-12-09 06:49:44', '2021-12-09 06:49:44'),
(442, 139, 'shurjoPay', 750, NULL, 0, 1, 100, '686863', '2021-12-09 06:51:01', '2021-12-09 06:51:01'),
(443, 139, 'shurjoPay', 4000, NULL, 0, 1, 100, '431535', '2021-12-09 06:51:16', '2021-12-09 06:51:16'),
(444, 140, 'shurjoPay', 1500, NULL, 0, 1, 100, '217979', '2021-12-09 06:52:25', '2021-12-09 06:52:25'),
(445, 140, 'shurjoPay', 750, NULL, 0, 1, 100, '642336', '2021-12-09 06:52:47', '2021-12-09 06:52:47'),
(446, 140, 'shurjoPay', 4000, NULL, 0, 1, 100, '982780', '2021-12-09 06:53:03', '2021-12-09 06:53:03'),
(447, 141, 'shurjoPay', 5500, NULL, 0, 1, 100, '251119', '2021-12-09 06:55:52', '2021-12-09 06:55:52'),
(448, 141, 'shurjoPay', 750, NULL, 0, 1, 100, '231806', '2021-12-09 06:56:18', '2021-12-09 06:56:18'),
(449, 141, 'shurjoPay', 4000, NULL, 0, 1, 100, '903830', '2021-12-09 06:56:34', '2021-12-09 06:56:34'),
(450, 142, 'shurjoPay', 1500, NULL, 0, 1, 100, '223899', '2021-12-09 06:57:52', '2021-12-09 06:57:52'),
(451, 142, 'shurjoPay', 4000, NULL, 0, 1, 100, '706947', '2021-12-09 06:58:13', '2021-12-09 06:58:13'),
(452, 142, 'shurjoPay', 750, NULL, 0, 1, 100, '837816', '2021-12-09 06:58:35', '2021-12-09 06:58:35'),
(453, 142, 'shurjoPay', 4000, NULL, 0, 1, 100, '464208', '2021-12-09 06:58:51', '2021-12-09 06:58:51'),
(454, 143, 'shurjoPay', 2500, NULL, 0, 1, 100, '782220', '2021-12-09 07:00:30', '2021-12-09 07:00:30'),
(455, 143, 'shurjoPay', 5500, NULL, 0, 1, 100, '168616', '2021-12-09 07:00:52', '2021-12-09 07:00:52'),
(456, 143, 'shurjoPay', 4000, NULL, 0, 1, 100, '733684', '2021-12-09 07:01:12', '2021-12-09 07:01:12'),
(457, 143, 'shurjoPay', 4000, NULL, 0, 1, 100, '685245', '2021-12-09 07:01:32', '2021-12-09 07:01:32'),
(458, 144, 'shurjoPay', 750, NULL, 0, 1, 100, '524238', '2021-12-09 07:03:00', '2021-12-09 07:03:00'),
(459, 145, 'shurjoPay', 1500, NULL, 0, 1, 100, '853540', '2021-12-09 07:04:48', '2021-12-09 07:04:48'),
(460, 145, 'shurjoPay', 4000, NULL, 0, 1, 100, '213994', '2021-12-09 07:05:11', '2021-12-09 07:05:11'),
(461, 145, 'shurjoPay', 750, NULL, 0, 1, 100, '201400', '2021-12-09 07:05:41', '2021-12-09 07:05:41'),
(462, 145, 'shurjoPay', 4000, NULL, 0, 1, 100, '696038', '2021-12-09 07:06:01', '2021-12-09 07:06:01'),
(463, 146, 'shurjoPay', 2500, NULL, 0, 1, 100, '284514', '2021-12-09 07:13:26', '2021-12-09 07:13:26'),
(464, 146, 'shurjoPay', 5500, NULL, 0, 1, 100, '431407', '2021-12-09 07:13:57', '2021-12-09 07:13:57'),
(465, 146, 'shurjoPay', 1500, NULL, 0, 1, 100, '543968', '2021-12-09 07:14:22', '2021-12-09 07:14:22'),
(466, 146, 'shurjoPay', 4000, NULL, 0, 1, 100, '907120', '2021-12-09 07:14:45', '2021-12-09 07:14:45'),
(467, 146, 'shurjoPay', 750, NULL, 0, 1, 100, '804604', '2021-12-09 07:15:06', '2021-12-09 07:15:06'),
(468, 146, 'shurjoPay', 4000, NULL, 0, 1, 100, '661159', '2021-12-09 07:15:24', '2021-12-09 07:15:24'),
(469, 147, 'shurjoPay', 4000, NULL, 0, 1, 100, '760684', '2021-12-09 07:17:55', '2021-12-09 07:17:55'),
(470, 148, 'shurjoPay', 1500, NULL, 0, 1, 100, '167497', '2021-12-09 07:22:16', '2021-12-09 07:22:16'),
(471, 148, 'shurjoPay', 4000, NULL, 0, 1, 100, '515056', '2021-12-09 07:22:45', '2021-12-09 07:22:45'),
(472, 148, 'shurjoPay', 750, NULL, 0, 1, 100, '395335', '2021-12-09 07:23:04', '2021-12-09 07:23:04'),
(473, 148, 'shurjoPay', 4000, NULL, 0, 1, 100, '507095', '2021-12-09 07:23:23', '2021-12-09 07:23:23'),
(474, 149, 'shurjoPay', 4000, NULL, 0, 1, 100, '334983', '2021-12-09 07:26:52', '2021-12-09 07:26:52'),
(475, 150, 'shurjoPay', 4000, NULL, 0, 1, 100, '185033', '2021-12-09 07:29:45', '2021-12-09 07:29:45'),
(476, 150, 'shurjoPay', 4000, NULL, 0, 1, 100, '751221', '2021-12-09 07:30:07', '2021-12-09 07:30:07'),
(477, 151, 'shurjoPay', 4000, NULL, 0, 1, 100, '383676', '2021-12-09 07:31:20', '2021-12-09 07:31:20'),
(478, 151, 'shurjoPay', 750, NULL, 0, 1, 100, '308489', '2021-12-09 07:31:41', '2021-12-09 07:31:41'),
(479, 151, 'shurjoPay', 4000, NULL, 0, 1, 100, '695549', '2021-12-09 07:31:58', '2021-12-09 07:31:58'),
(480, 152, 'shurjoPay', 4000, NULL, 0, 1, 100, '664817', '2021-12-09 07:33:02', '2021-12-09 07:33:02'),
(481, 152, 'shurjoPay', 750, NULL, 0, 1, 100, '166824', '2021-12-09 07:33:21', '2021-12-09 07:33:21'),
(482, 152, 'shurjoPay', 4000, NULL, 0, 1, 100, '894947', '2021-12-09 07:33:41', '2021-12-09 07:33:41'),
(483, 153, 'shurjoPay', 750, NULL, 0, 1, 100, '375178', '2021-12-09 07:35:11', '2021-12-09 07:35:11'),
(484, 153, 'shurjoPay', 4000, NULL, 0, 1, 100, '782528', '2021-12-09 07:35:51', '2021-12-09 07:35:51'),
(485, 154, 'shurjoPay', 4000, NULL, 0, 1, 100, '527891', '2021-12-09 07:38:02', '2021-12-09 07:38:02'),
(486, 154, 'shurjoPay', 750, NULL, 0, 1, 100, '906821', '2021-12-09 07:38:27', '2021-12-09 07:38:27'),
(487, 154, 'shurjoPay', 4000, NULL, 0, 1, 100, '352311', '2021-12-09 07:38:53', '2021-12-09 07:38:53'),
(488, 155, 'shurjoPay', 750, NULL, 0, 1, 100, '926776', '2021-12-09 07:40:44', '2021-12-09 07:40:44'),
(489, 155, 'shurjoPay', 4000, NULL, 0, 1, 100, '240871', '2021-12-09 07:41:27', '2021-12-09 07:41:27'),
(490, 156, 'shurjoPay', 1500, NULL, 0, 1, 100, '786141', '2021-12-09 07:42:45', '2021-12-09 07:42:45'),
(491, 156, 'shurjoPay', 4000, NULL, 0, 1, 100, '927822', '2021-12-09 07:43:07', '2021-12-09 07:43:07'),
(492, 156, 'shurjoPay', 750, NULL, 0, 1, 100, '676270', '2021-12-09 07:43:35', '2021-12-09 07:43:35'),
(493, 156, 'shurjoPay', 4000, NULL, 0, 1, 100, '857689', '2021-12-09 07:43:52', '2021-12-09 07:43:52'),
(494, 157, 'shurjoPay', 5500, NULL, 0, 1, 100, '143241', '2021-12-09 09:01:49', '2021-12-09 09:01:49'),
(495, 157, 'shurjoPay', 1500, NULL, 0, 1, 100, '522862', '2021-12-09 09:02:11', '2021-12-09 09:02:11'),
(496, 157, 'shurjoPay', 4000, NULL, 0, 1, 100, '184692', '2021-12-09 09:02:40', '2021-12-09 09:02:40'),
(497, 157, 'shurjoPay', 750, NULL, 0, 1, 100, '863156', '2021-12-09 09:03:00', '2021-12-09 09:03:00');
INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `total`, `instructor_id`, `subtotal`, `status`, `cupon_discount`, `invoice_no`, `created_at`, `updated_at`) VALUES
(498, 157, 'shurjoPay', 4000, NULL, 0, 1, 100, '951059', '2021-12-09 09:03:19', '2021-12-09 09:03:19'),
(499, 158, 'shurjoPay', 750, NULL, 0, 1, 100, '775021', '2021-12-09 09:46:53', '2021-12-09 09:46:53'),
(500, 159, 'shurjoPay', 4000, NULL, 0, 1, 100, '735580', '2021-12-09 09:48:02', '2021-12-09 09:48:02'),
(501, 159, 'shurjoPay', 750, NULL, 0, 1, 100, '103362', '2021-12-09 09:48:22', '2021-12-09 09:48:22'),
(502, 159, 'shurjoPay', 4000, NULL, 0, 1, 100, '679560', '2021-12-09 09:48:42', '2021-12-09 09:48:42'),
(503, 160, 'shurjoPay', 750, NULL, 0, 1, 100, '201574', '2021-12-09 09:51:07', '2021-12-09 09:51:07'),
(504, 161, 'shurjoPay', 1500, NULL, 0, 1, 100, '368821', '2021-12-09 09:52:14', '2021-12-09 09:52:14'),
(505, 161, 'shurjoPay', 4000, NULL, 0, 1, 100, '992400', '2021-12-09 09:52:33', '2021-12-09 09:52:33'),
(506, 161, 'shurjoPay', 750, NULL, 0, 1, 100, '678173', '2021-12-09 09:52:58', '2021-12-09 09:52:58'),
(507, 161, 'shurjoPay', 4000, NULL, 0, 1, 100, '744218', '2021-12-09 09:53:13', '2021-12-09 09:53:13'),
(508, 162, 'shurjoPay', 1500, NULL, 0, 1, 100, '713744', '2021-12-09 09:54:23', '2021-12-09 09:54:23'),
(509, 162, 'shurjoPay', 4000, NULL, 0, 1, 100, '333253', '2021-12-09 09:54:37', '2021-12-09 09:54:37'),
(510, 162, 'shurjoPay', 750, NULL, 0, 1, 100, '129880', '2021-12-09 09:54:52', '2021-12-09 09:54:52'),
(511, 162, 'shurjoPay', 4000, NULL, 0, 1, 100, '233585', '2021-12-09 09:55:09', '2021-12-09 09:55:09'),
(512, 163, 'shurjoPay', 2500, NULL, 0, 1, 100, '925583', '2021-12-09 09:56:17', '2021-12-09 09:56:17'),
(513, 163, 'shurjoPay', 5500, NULL, 0, 1, 100, '230284', '2021-12-09 09:56:46', '2021-12-09 09:56:46'),
(514, 163, 'shurjoPay', 1500, NULL, 0, 1, 100, '793100', '2021-12-09 09:57:06', '2021-12-09 09:57:06'),
(515, 163, 'shurjoPay', 4000, NULL, 0, 1, 100, '734516', '2021-12-09 09:57:24', '2021-12-09 09:57:24'),
(516, 163, 'shurjoPay', 750, NULL, 0, 1, 100, '318287', '2021-12-09 09:57:40', '2021-12-09 09:57:40'),
(517, 163, 'shurjoPay', 4000, NULL, 0, 1, 100, '554312', '2021-12-09 09:57:55', '2021-12-09 09:57:55'),
(518, 164, 'shurjoPay', 5500, NULL, 0, 1, 100, '389275', '2021-12-09 09:59:09', '2021-12-09 09:59:09'),
(519, 164, 'shurjoPay', 750, NULL, 0, 1, 100, '337361', '2021-12-09 09:59:36', '2021-12-09 09:59:36'),
(520, 165, 'shurjoPay', 5500, NULL, 0, 1, 100, '805796', '2021-12-09 10:01:01', '2021-12-09 10:01:01'),
(521, 165, 'shurjoPay', 4000, NULL, 0, 1, 100, '178066', '2021-12-09 10:01:25', '2021-12-09 10:01:25'),
(522, 165, 'shurjoPay', 750, NULL, 0, 1, 100, '414581', '2021-12-09 10:01:57', '2021-12-09 10:01:57'),
(523, 165, 'shurjoPay', 4000, NULL, 0, 1, 100, '461948', '2021-12-09 10:02:15', '2021-12-09 10:02:15'),
(524, 1, 'shurjoPay', 2500, NULL, 0, 1, 100, '679624', '2021-12-09 10:49:17', '2021-12-09 10:49:17'),
(525, 47, 'shurjoPay', 4000, NULL, 0, 1, 100, '708555', '2021-12-09 11:18:27', '2021-12-09 11:18:27'),
(526, 104, 'shurjoPay', 4000, NULL, 0, 1, 100, '276638', '2021-12-09 11:20:44', '2021-12-09 11:20:44'),
(527, 167, 'shurjoPay', 750, NULL, 0, 1, 100, '447242', '2021-12-09 13:08:30', '2021-12-09 13:08:30'),
(528, 167, 'shurjoPay', 2500, NULL, 0, 1, 100, '434850', '2021-12-09 13:09:07', '2021-12-09 13:09:07'),
(529, 169, 'shurjoPay', 5500, NULL, 0, 1, 100, '655065', '2021-12-09 17:47:27', '2021-12-09 17:47:27'),
(530, 169, 'shurjoPay', 4000, NULL, 0, 1, 100, '736485', '2021-12-09 17:48:15', '2021-12-09 17:48:15'),
(531, 169, 'shurjoPay', 750, NULL, 0, 1, 100, '633499', '2021-12-09 17:50:08', '2021-12-09 17:50:08'),
(532, 169, 'shurjoPay', 4000, NULL, 0, 1, 100, '185718', '2021-12-09 17:50:36', '2021-12-09 17:50:36'),
(533, 170, 'shurjoPay', 1500, NULL, 0, 1, 100, '856856', '2021-12-09 17:54:58', '2021-12-09 17:54:58'),
(534, 170, 'shurjoPay', 4000, NULL, 0, 1, 100, '898546', '2021-12-09 17:55:28', '2021-12-09 17:55:28'),
(535, 170, 'shurjoPay', 750, NULL, 0, 1, 100, '678825', '2021-12-09 17:55:50', '2021-12-09 17:55:50'),
(536, 170, 'shurjoPay', 4000, NULL, 0, 1, 100, '576460', '2021-12-09 17:56:23', '2021-12-09 17:56:23'),
(537, 144, 'shurjoPay', 4000, NULL, 0, 1, 100, '368615', '2021-12-10 07:24:12', '2021-12-10 07:24:12'),
(538, 171, 'shurjoPay', 4000, NULL, 0, 1, 100, '269775', '2021-12-10 09:32:54', '2021-12-10 09:32:54'),
(539, 171, 'shurjoPay', 1500, NULL, 0, 1, 100, '473386', '2021-12-10 09:33:14', '2021-12-10 09:33:14'),
(540, 1, 'shurjoPay', 4000, NULL, 0, 1, 100, '386608', '2021-12-10 12:37:51', '2021-12-10 12:37:51'),
(541, 172, 'shurjoPay', 2500, NULL, 0, 1, 100, '204270', '2021-12-10 14:42:58', '2021-12-10 14:42:58'),
(542, 172, 'shurjoPay', 5500, NULL, 0, 1, 100, '921176', '2021-12-10 14:43:17', '2021-12-10 14:43:17'),
(543, 172, 'shurjoPay', 750, NULL, 0, 1, 100, '753134', '2021-12-10 14:43:50', '2021-12-10 14:43:50'),
(544, 172, 'shurjoPay', 4000, NULL, 0, 1, 100, '313562', '2021-12-10 14:44:10', '2021-12-10 14:44:10'),
(545, 173, 'shurjoPay', 5500, NULL, 0, 1, 100, '586356', '2021-12-10 14:46:37', '2021-12-10 14:46:37'),
(546, 173, 'shurjoPay', 4000, NULL, 0, 1, 100, '573800', '2021-12-10 14:46:57', '2021-12-10 14:46:57'),
(547, 173, 'shurjoPay', 750, NULL, 0, 1, 100, '626427', '2021-12-10 14:47:21', '2021-12-10 14:47:21'),
(548, 173, 'shurjoPay', 4000, NULL, 0, 1, 100, '239524', '2021-12-10 14:47:39', '2021-12-10 14:47:39'),
(549, 175, 'shurjoPay', 2500, NULL, 0, 1, 100, '250487', '2021-12-11 07:24:12', '2021-12-11 07:24:12'),
(550, 175, 'shurjoPay', 5500, NULL, 0, 1, 100, '987511', '2021-12-11 07:24:33', '2021-12-11 07:24:33'),
(551, 175, 'shurjoPay', 750, NULL, 0, 1, 100, '693369', '2021-12-11 07:24:53', '2021-12-11 07:24:53'),
(552, 175, 'shurjoPay', 1500, NULL, 0, 1, 100, '937579', '2021-12-11 07:25:10', '2021-12-11 07:25:10'),
(553, 175, 'shurjoPay', 4000, NULL, 0, 1, 100, '164042', '2021-12-11 07:25:28', '2021-12-11 07:25:28'),
(554, 175, 'shurjoPay', 4000, NULL, 0, 1, 100, '297837', '2021-12-11 07:25:44', '2021-12-11 07:25:44'),
(555, 176, 'shurjoPay', 4000, NULL, 0, 1, 100, '137989', '2021-12-11 09:00:06', '2021-12-11 09:00:06'),
(556, 176, 'shurjoPay', 4000, NULL, 0, 1, 100, '921480', '2021-12-11 09:00:29', '2021-12-11 09:00:29'),
(557, 177, 'shurjoPay', 1500, NULL, 0, 1, 100, '794448', '2021-12-11 09:02:45', '2021-12-11 09:02:45'),
(558, 177, 'shurjoPay', 4000, NULL, 0, 1, 100, '166491', '2021-12-11 09:03:15', '2021-12-11 09:03:15'),
(559, 177, 'shurjoPay', 750, NULL, 0, 1, 100, '269739', '2021-12-11 09:03:49', '2021-12-11 09:03:49'),
(560, 177, 'shurjoPay', 4000, NULL, 0, 1, 100, '914101', '2021-12-11 09:04:07', '2021-12-11 09:04:07'),
(561, 178, 'shurjoPay', 1500, NULL, 0, 1, 100, '335258', '2021-12-11 09:06:26', '2021-12-11 09:06:26'),
(562, 178, 'shurjoPay', 4000, NULL, 0, 1, 100, '107243', '2021-12-11 09:06:45', '2021-12-11 09:06:45'),
(563, 178, 'shurjoPay', 750, NULL, 0, 1, 100, '279551', '2021-12-11 09:07:02', '2021-12-11 09:07:02'),
(564, 178, 'shurjoPay', 4000, NULL, 0, 1, 100, '767198', '2021-12-11 09:07:22', '2021-12-11 09:07:22'),
(565, 179, 'shurjoPay', 1500, NULL, 0, 1, 100, '828582', '2021-12-11 09:09:58', '2021-12-11 09:09:58'),
(566, 179, 'shurjoPay', 4000, NULL, 0, 1, 100, '388355', '2021-12-11 09:10:17', '2021-12-11 09:10:17'),
(567, 179, 'shurjoPay', 750, NULL, 0, 1, 100, '746468', '2021-12-11 09:10:40', '2021-12-11 09:10:40'),
(568, 179, 'shurjoPay', 4000, NULL, 0, 1, 100, '117037', '2021-12-11 09:10:57', '2021-12-11 09:10:57'),
(569, 180, 'shurjoPay', 5500, NULL, 0, 1, 100, '393254', '2021-12-11 09:12:54', '2021-12-11 09:12:54'),
(570, 180, 'shurjoPay', 4000, NULL, 0, 1, 100, '998999', '2021-12-11 09:13:24', '2021-12-11 09:13:24'),
(571, 180, 'shurjoPay', 750, NULL, 0, 1, 100, '598855', '2021-12-11 09:13:48', '2021-12-11 09:13:48'),
(572, 180, 'shurjoPay', 4000, NULL, 0, 1, 100, '704489', '2021-12-11 09:14:03', '2021-12-11 09:14:03'),
(573, 181, 'shurjoPay', 1500, NULL, 0, 1, 100, '844319', '2021-12-11 09:15:37', '2021-12-11 09:15:37'),
(574, 181, 'shurjoPay', 4000, NULL, 0, 1, 100, '727408', '2021-12-11 09:16:01', '2021-12-11 09:16:01'),
(575, 181, 'shurjoPay', 750, NULL, 0, 1, 100, '588382', '2021-12-11 09:16:29', '2021-12-11 09:16:29'),
(576, 181, 'shurjoPay', 4000, NULL, 0, 1, 100, '631683', '2021-12-11 09:16:44', '2021-12-11 09:16:44'),
(577, 182, 'shurjoPay', 1500, NULL, 0, 1, 100, '553888', '2021-12-11 09:18:19', '2021-12-11 09:18:19'),
(578, 182, 'shurjoPay', 4000, NULL, 0, 1, 100, '182529', '2021-12-11 09:18:45', '2021-12-11 09:18:45'),
(579, 182, 'shurjoPay', 750, NULL, 0, 1, 100, '983212', '2021-12-11 09:19:04', '2021-12-11 09:19:04'),
(580, 182, 'shurjoPay', 4000, NULL, 0, 1, 100, '895173', '2021-12-11 09:19:21', '2021-12-11 09:19:21'),
(581, 183, 'shurjoPay', 1500, NULL, 0, 1, 100, '755634', '2021-12-11 09:21:38', '2021-12-11 09:21:38'),
(582, 183, 'shurjoPay', 4000, NULL, 0, 1, 100, '836401', '2021-12-11 09:21:52', '2021-12-11 09:21:52'),
(583, 183, 'shurjoPay', 750, NULL, 0, 1, 100, '494733', '2021-12-11 09:22:17', '2021-12-11 09:22:17'),
(584, 183, 'shurjoPay', 4000, NULL, 0, 1, 100, '509517', '2021-12-11 09:22:37', '2021-12-11 09:22:37'),
(585, 184, 'shurjoPay', 750, NULL, 0, 1, 100, '769514', '2021-12-11 09:24:28', '2021-12-11 09:24:28'),
(586, 184, 'shurjoPay', 4000, NULL, 0, 1, 100, '903133', '2021-12-11 09:24:46', '2021-12-11 09:24:46'),
(587, 185, 'shurjoPay', 5500, NULL, 0, 1, 100, '796896', '2021-12-11 09:26:29', '2021-12-11 09:26:29'),
(588, 185, 'shurjoPay', 4000, NULL, 0, 1, 100, '841834', '2021-12-11 09:26:55', '2021-12-11 09:26:55'),
(589, 185, 'shurjoPay', 750, NULL, 0, 1, 100, '614398', '2021-12-11 09:27:14', '2021-12-11 09:27:14'),
(590, 185, 'shurjoPay', 4000, NULL, 0, 1, 100, '240804', '2021-12-11 09:27:36', '2021-12-11 09:27:36'),
(591, 186, 'shurjoPay', 750, NULL, 0, 1, 100, '251419', '2021-12-11 09:28:54', '2021-12-11 09:28:54'),
(592, 186, 'shurjoPay', 4000, NULL, 0, 1, 100, '562475', '2021-12-11 09:29:11', '2021-12-11 09:29:11'),
(593, 187, 'shurjoPay', 5500, NULL, 0, 1, 100, '873768', '2021-12-11 12:44:35', '2021-12-11 12:44:35'),
(594, 19, 'shurjoPay', 4000, NULL, 0, 1, 100, '972526', '2021-12-11 13:56:05', '2021-12-11 13:56:05'),
(595, 19, 'shurjoPay', 750, NULL, 0, 1, 100, '561594', '2021-12-11 13:56:23', '2021-12-11 13:56:23'),
(596, 19, 'shurjoPay', 4000, NULL, 0, 1, 100, '756099', '2021-12-11 13:56:46', '2021-12-11 13:56:46'),
(597, 20, 'shurjoPay', 5500, NULL, 0, 1, 100, '148361', '2021-12-12 05:06:31', '2021-12-12 05:06:31'),
(598, 20, 'shurjoPay', 2500, NULL, 0, 1, 100, '469125', '2021-12-12 05:07:11', '2021-12-12 05:07:11'),
(599, 190, 'shurjoPay', 4000, NULL, 0, 1, 100, '347629', '2021-12-12 07:15:13', '2021-12-12 07:15:13'),
(600, 191, 'shurjoPay', 1500, NULL, 0, 1, 100, '785171', '2021-12-12 07:16:39', '2021-12-12 07:16:39'),
(601, 191, 'shurjoPay', 1500, NULL, 0, 1, 100, '923096', '2021-12-12 07:16:42', '2021-12-12 07:16:42'),
(602, 191, 'shurjoPay', 4000, NULL, 0, 1, 100, '312814', '2021-12-12 07:17:03', '2021-12-12 07:17:03'),
(603, 191, 'shurjoPay', 750, NULL, 0, 1, 100, '996691', '2021-12-12 07:17:24', '2021-12-12 07:17:24'),
(604, 191, 'shurjoPay', 4000, NULL, 0, 1, 100, '988140', '2021-12-12 07:17:42', '2021-12-12 07:17:42'),
(605, 191, 'shurjoPay', 4000, NULL, 0, 1, 100, '872438', '2021-12-12 07:17:43', '2021-12-12 07:17:43'),
(606, 192, 'shurjoPay', 4750, NULL, 4000, 1, 100, '776521', '2021-12-12 07:19:35', '2021-12-12 07:19:35'),
(607, 193, 'shurjoPay', 750, NULL, 0, 1, 100, '343962', '2021-12-12 07:25:19', '2021-12-12 07:25:19'),
(608, 193, 'shurjoPay', 4000, NULL, 0, 1, 100, '311976', '2021-12-12 07:25:38', '2021-12-12 07:25:38'),
(609, 193, 'shurjoPay', 4000, NULL, 0, 1, 100, '739038', '2021-12-12 07:25:39', '2021-12-12 07:25:39'),
(610, 166, 'shurjoPay', 4000, NULL, 0, 1, 100, '156461', '2021-12-12 07:42:21', '2021-12-12 07:42:21'),
(611, 166, 'shurjoPay', 4000, NULL, 0, 1, 100, '265769', '2021-12-12 07:42:43', '2021-12-12 07:42:43'),
(612, 125, 'shurjoPay', 4000, NULL, 0, 1, 100, '304003', '2021-12-14 14:07:39', '2021-12-14 14:07:39'),
(613, 33, 'shurjoPay', 750, NULL, 0, 1, 100, '411351', '2021-12-14 14:11:07', '2021-12-14 14:11:07'),
(614, 196, 'shurjoPay', 750, NULL, 0, 1, 100, '160362', '2021-12-14 15:49:14', '2021-12-14 15:49:14'),
(615, 196, 'shurjoPay', 2550, NULL, 0, 1, 100, '380187', '2021-12-14 15:49:42', '2021-12-14 15:49:42'),
(616, 196, 'shurjoPay', 1500, NULL, 0, 1, 100, '725140', '2021-12-14 15:50:09', '2021-12-14 15:50:09'),
(617, 196, 'shurjoPay', 2990, NULL, 0, 1, 100, '120399', '2021-12-14 15:50:29', '2021-12-14 15:50:29'),
(618, 176, 'shurjoPay', 2990, NULL, 0, 1, 100, '827264', '2021-12-15 12:31:14', '2021-12-15 12:31:14'),
(619, 1, 'shurjoPay', 2550, NULL, 2550, 1, 0, '646115', '2021-12-20 04:19:05', '2021-12-20 04:19:05'),
(620, 1, 'shurjoPay', 2550, NULL, 0, 1, 100, '361994', '2021-12-20 05:11:14', '2021-12-20 05:11:14'),
(621, 1, 'shurjoPay', 2550, NULL, 0, 1, 100, '140504', '2021-12-20 05:11:40', '2021-12-20 05:11:40'),
(622, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '980173', '2021-12-20 05:11:54', '2021-12-20 05:11:54'),
(623, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '756576', '2021-12-20 05:15:31', '2021-12-20 05:15:31'),
(624, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '786543', '2021-12-20 05:16:29', '2021-12-20 05:16:29'),
(625, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '347219', '2021-12-20 05:16:32', '2021-12-20 05:16:32'),
(626, 1, 'shurjoPay', 2550, NULL, 2550, 1, 0, '110393', '2021-12-20 05:16:53', '2021-12-20 05:16:53'),
(627, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '287537', '2021-12-20 05:17:54', '2021-12-20 05:17:54'),
(628, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '349394', '2021-12-20 05:19:31', '2021-12-20 05:19:31'),
(629, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '460238', '2021-12-20 05:19:41', '2021-12-20 05:19:41'),
(630, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '869114', '2021-12-20 05:20:34', '2021-12-20 05:20:34'),
(631, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '712294', '2021-12-20 05:29:01', '2021-12-20 05:29:01'),
(632, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '669460', '2021-12-20 05:31:25', '2021-12-20 05:31:25'),
(633, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '479189', '2021-12-20 05:32:26', '2021-12-20 05:32:26'),
(634, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '481341', '2021-12-20 05:32:33', '2021-12-20 05:32:33'),
(635, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '507231', '2021-12-20 05:35:45', '2021-12-20 05:35:45'),
(636, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '828061', '2021-12-20 05:36:14', '2021-12-20 05:36:14'),
(637, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '901488', '2021-12-20 05:36:30', '2021-12-20 05:36:30'),
(638, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '720352', '2021-12-20 05:36:39', '2021-12-20 05:36:39'),
(639, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '854837', '2021-12-20 05:36:52', '2021-12-20 05:36:52'),
(640, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '311455', '2021-12-20 05:37:16', '2021-12-20 05:37:16'),
(641, 1, 'shurjoPay', 1500, NULL, 1500, 1, 0, '237039', '2021-12-20 05:37:59', '2021-12-20 05:37:59'),
(642, 1, 'shurjoPay', 2550, NULL, 2550, 1, 0, '747524', '2021-12-20 22:40:58', '2021-12-20 22:40:58'),
(643, 1, 'shurjoPay', 2550, NULL, 2550, 1, 0, '377215', '2021-12-20 22:41:22', '2021-12-20 22:41:22'),
(644, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '650994', '2021-12-20 22:41:40', '2021-12-20 22:41:40'),
(645, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '720609', '2021-12-20 22:41:55', '2021-12-20 22:41:55'),
(646, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '840104', '2021-12-20 22:42:44', '2021-12-20 22:42:44'),
(647, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '271408', '2021-12-20 22:43:25', '2021-12-20 22:43:25'),
(648, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '141423', '2021-12-20 22:44:23', '2021-12-20 22:44:23'),
(649, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c1603aa47bb', '2021-12-20 23:03:54', '2021-12-20 23:03:54'),
(650, 1, 'shurjoPay', 2550, NULL, 2550, 1, 0, '61c1606c173e9', '2021-12-20 23:04:44', '2021-12-20 23:04:44'),
(651, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c160c2d8061', '2021-12-20 23:06:10', '2021-12-20 23:06:10'),
(652, 1, 'shurjoPay', 2990, NULL, 2990, 1, 0, '61c160e5a190e', '2021-12-20 23:06:45', '2021-12-20 23:06:45'),
(653, 1, 'shurjoPay', 2990, NULL, 2990, 1, 0, '61c1614f08292', '2021-12-20 23:08:31', '2021-12-20 23:08:31'),
(654, 1, 'shurjoPay', 2550, NULL, 2550, 1, 0, '61c1617e0556c', '2021-12-20 23:09:18', '2021-12-20 23:09:18'),
(655, 1, 'shurjoPay', 750, NULL, 750, 1, 0, '61c1637c21604', '2021-12-20 23:17:48', '2021-12-20 23:17:48'),
(656, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c1648f03020', '2021-12-20 23:22:23', '2021-12-20 23:22:23'),
(657, 1, 'shurjoPay', 750, NULL, 750, 1, 0, '61c1653c17101', '2021-12-20 23:25:16', '2021-12-20 23:25:16'),
(658, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c1696273e2d', '2021-12-20 23:42:58', '2021-12-20 23:43:10'),
(659, 1, 'shurjoPay', 4790, NULL, 4790, 1, 0, '61c170f8b90c4', '2021-12-21 00:15:20', '2021-12-21 00:15:31'),
(660, 1, 'shurjoPay', 2550, NULL, 2550, 1, 0, '61c174eb5309c', '2021-12-21 00:32:11', '2021-12-21 00:32:11'),
(661, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c175867ae7a', '2021-12-21 00:34:46', '2021-12-21 00:34:46'),
(662, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c175eacf9a8', '2021-12-21 00:36:26', '2021-12-21 00:36:26'),
(663, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c1762e1abac', '2021-12-21 00:37:34', '2021-12-21 00:37:34'),
(664, 1, 'shurjoPay', 2990, NULL, 2990, 1, 0, '61c179679976a', '2021-12-21 00:51:19', '2021-12-21 00:51:33'),
(665, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c1798ab4686', '2021-12-21 00:51:54', '2021-12-21 00:51:54'),
(666, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c179a3b3be5', '2021-12-21 00:52:19', '2021-12-21 00:52:19'),
(667, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c17a5202a57', '2021-12-21 00:55:14', '2021-12-21 00:55:14'),
(668, 1, 'shurjoPay', 1500, NULL, 1500, 1, 0, '61c1b9c2d205f', '2021-12-21 05:25:54', '2021-12-21 05:26:03'),
(669, 3, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c93bb9dfe5e', '2021-12-26 22:06:17', '2021-12-26 22:06:26'),
(670, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c93bec8d5bb', '2021-12-26 22:07:08', '2021-12-26 22:07:08'),
(671, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c93fe06fbe5', '2021-12-26 22:24:00', '2021-12-26 22:24:00'),
(672, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c93ff79f1ca', '2021-12-26 22:24:23', '2021-12-26 22:24:23'),
(673, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c940733f4d9', '2021-12-26 22:26:27', '2021-12-26 22:26:27'),
(674, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c94089a638c', '2021-12-26 22:26:49', '2021-12-26 22:26:49'),
(675, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c9409462d69', '2021-12-26 22:27:00', '2021-12-26 22:27:00'),
(676, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c9409c9c89d', '2021-12-26 22:27:08', '2021-12-26 22:27:08'),
(677, 1, 'shurjoPay', 1800, NULL, 1800, 1, 0, '61c943a6df4a0', '2021-12-26 22:40:06', '2021-12-26 22:40:06'),
(678, 1, 'shurjoPay', 750, NULL, 750, 1, 0, '61c943b22e1d6', '2021-12-26 22:40:18', '2021-12-26 22:40:18'),
(679, 1, 'shurjoPay', 2550, NULL, 2550, 1, 0, '61c943cf96b27', '2021-12-26 22:40:47', '2021-12-26 22:40:47'),
(680, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c948c83a1cb', '2021-12-26 23:02:00', '2021-12-26 23:02:00'),
(681, 1, 'SslCommerz', 2990, NULL, 2990, 1, 0, '61c948f48f034', '2021-12-26 23:02:44', '2021-12-26 23:02:44'),
(682, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c9550d0ec88', '2021-12-27 05:54:21', '2021-12-27 05:54:21'),
(683, 1, 'SslCommerz', 2990, NULL, 2990, 1, 0, '61c9551c110fc', '2021-12-27 05:54:36', '2021-12-27 05:54:36'),
(684, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c9559435559', '2021-12-27 05:56:36', '2021-12-27 05:56:36'),
(685, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c961d87c2da', '2021-12-27 06:48:56', '2021-12-27 06:48:56'),
(686, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c9622740bf7', '2021-12-27 06:50:15', '2021-12-27 06:50:15'),
(687, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c962c93313c', '2021-12-27 06:52:57', '2021-12-27 06:52:57'),
(688, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c962e3ab583', '2021-12-27 06:53:23', '2021-12-27 06:53:23'),
(689, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c965ed3eeff', '2021-12-27 07:06:21', '2021-12-27 07:06:21'),
(690, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c966450fb7d', '2021-12-27 07:07:49', '2021-12-27 07:07:49'),
(691, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c9669915c09', '2021-12-27 07:09:13', '2021-12-27 07:09:13'),
(692, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c966c57ae10', '2021-12-27 07:09:57', '2021-12-27 07:09:57'),
(693, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c966d75a909', '2021-12-27 07:10:15', '2021-12-27 07:10:15'),
(694, 14, 'SslCommerz', 2550, NULL, 2550, 1, 0, '61c9670af3ec8', '2021-12-27 07:11:06', '2021-12-27 07:11:06'),
(695, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c9675b009e0', '2021-12-27 07:12:27', '2021-12-27 07:12:27'),
(696, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c967a7ac7e7', '2021-12-27 07:13:43', '2021-12-27 07:13:43'),
(697, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c9682ccaf5e', '2021-12-27 07:15:56', '2021-12-27 07:15:56'),
(698, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96a40884ac', '2021-12-27 07:24:48', '2021-12-27 07:24:48'),
(699, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96a598b386', '2021-12-27 07:25:13', '2021-12-27 07:25:13'),
(700, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96a7600190', '2021-12-27 07:25:42', '2021-12-27 07:25:42'),
(701, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96a9bacaf6', '2021-12-27 07:26:19', '2021-12-27 07:26:19'),
(702, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96abc0ae38', '2021-12-27 07:26:52', '2021-12-27 07:26:52'),
(703, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96b079f9cc', '2021-12-27 07:28:07', '2021-12-27 07:28:07'),
(704, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96b4c98fed', '2021-12-27 07:29:16', '2021-12-27 07:29:16'),
(705, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96b594512f', '2021-12-27 07:29:29', '2021-12-27 07:29:29'),
(706, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96b6f7509a', '2021-12-27 07:29:51', '2021-12-27 07:29:51'),
(707, 1, 'SslCommerz', 2990, NULL, 2990, 1, 0, '61c96d2fe5e0a', '2021-12-27 07:37:19', '2021-12-27 07:37:19'),
(708, 1, 'SslCommerz', 1500, NULL, 1500, 1, 0, '61c96f30bf990', '2021-12-27 07:45:52', '2021-12-27 07:45:52'),
(709, 1, 'SslCommerz', 1500, NULL, 1500, 1, 0, '61c96f4026000', '2021-12-27 07:46:08', '2021-12-27 07:46:08'),
(710, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96f8cc43e8', '2021-12-27 07:47:24', '2021-12-27 07:47:24'),
(711, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96fc5a3a1b', '2021-12-27 07:48:21', '2021-12-27 07:48:21'),
(712, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c96fe9b78b7', '2021-12-27 07:48:57', '2021-12-27 07:48:57'),
(713, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c97095225ed', '2021-12-27 07:51:49', '2021-12-27 07:51:49'),
(714, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c970b8116c9', '2021-12-27 07:52:24', '2021-12-27 07:52:24'),
(715, 1, 'SslCommerz', 2550, NULL, 2550, 1, 0, '61c971c2663f1', '2021-12-27 07:56:50', '2021-12-27 07:56:50'),
(716, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c97215e1729', '2021-12-27 07:58:13', '2021-12-27 07:58:13'),
(717, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c973fc985e5', '2021-12-27 08:06:20', '2021-12-27 08:06:20'),
(718, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c9744bc67c1', '2021-12-27 08:07:39', '2021-12-27 08:07:39'),
(719, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c979f269176', '2021-12-27 08:31:46', '2021-12-27 08:31:46'),
(720, 190, 'SslCommerz', 2550, NULL, 0, 1, 100, '61c97b5366e1d', '2021-12-27 08:37:39', '2021-12-27 08:37:39'),
(721, 190, 'SslCommerz', 2550, NULL, 0, 1, 100, '61c97b68028b7', '2021-12-27 08:38:00', '2021-12-27 08:38:00'),
(722, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c97b7f44ce5', '2021-12-27 08:38:23', '2021-12-27 08:38:23'),
(723, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c97b9c7893d', '2021-12-27 08:38:52', '2021-12-27 08:38:52'),
(724, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c99a0d8700c', '2021-12-27 10:48:45', '2021-12-27 10:48:45'),
(725, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c99b3631e72', '2021-12-27 10:53:42', NULL),
(726, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c99b44058de', '2021-12-27 10:53:56', NULL),
(727, 1, 'SslCommerz', 4790, NULL, 4790, 1, 0, '61c99b939e966', '2021-12-27 10:55:15', NULL),
(728, 1, 'SslCommerz', 4790, NULL, 4790, 1, 0, '61c99c765f7a1', '2021-12-27 10:59:02', '2021-12-27 10:59:02'),
(729, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c99c9981c41', '2021-12-27 10:59:37', '2021-12-27 10:59:37'),
(730, 1, 'SslCommerz', 2990, NULL, 2990, 1, 0, '61c99caa33f7e', '2021-12-27 10:59:54', '2021-12-27 10:59:54'),
(731, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61c9b6e1033ec', '2021-12-27 12:51:45', '2021-12-27 12:51:45'),
(732, 1, 'SslCommerz', 1, NULL, 1, 1, 0, '61c9b78694b89', '2021-12-27 12:54:30', '2021-12-27 12:54:30'),
(733, 1, 'SslCommerz', 1, NULL, 1, 1, 0, '61c9b7a98701f', '2021-12-27 12:55:05', '2021-12-27 12:55:05'),
(734, 1, 'SslCommerz', 2990, NULL, 2990, 1, 0, '61c9b7bd11826', '2021-12-27 12:55:25', '2021-12-27 12:55:25'),
(735, 1, 'SslCommerz', 100, NULL, 100, 1, 0, '61c9b7db05b48', '2021-12-27 12:55:55', '2021-12-27 12:55:55'),
(736, 1, 'SslCommerz', 10, NULL, 10, 1, 0, '61c9b7f50d7b3', '2021-12-27 12:56:21', '2021-12-27 12:56:21'),
(737, 20, 'SslCommerz', 10, NULL, 10, 1, 0, '61c9b81f80562', '2021-12-27 12:57:03', '2021-12-27 12:57:03'),
(738, 20, 'SslCommerz', 10, NULL, 10, 1, 0, '61c9b837c9781', '2021-12-27 12:57:27', '2021-12-27 12:57:27'),
(739, 20, 'SslCommerz', 10, NULL, 10, 1, 0, '61c9b854ef16f', '2021-12-27 12:57:56', '2021-12-27 12:57:56'),
(740, 1, 'SslCommerz', 1500, NULL, 1500, 1, 0, '61c9ba41cf363', '2021-12-27 13:06:09', '2021-12-27 13:06:09'),
(741, 20, 'SslCommerz', 10, NULL, 10, 1, 0, '61c9bb1da5a21', '2021-12-27 13:09:49', '2021-12-27 13:09:49'),
(742, 1, 'SslCommerz', 2990, NULL, 2990, 1, 0, '61c9bc53398aa', '2021-12-27 13:14:59', '2021-12-27 13:14:59'),
(743, 190, 'SslCommerz', 4790, NULL, 4790, 1, 0, '61c9bd4051b54', '2021-12-27 13:18:56', '2021-12-27 13:18:56'),
(744, 190, 'SslCommerz', 4790, NULL, 4790, 1, 0, '61c9bd408081b', '2021-12-27 13:18:56', '2021-12-27 13:18:56'),
(745, 1, 'SslCommerz', 1800, NULL, 1800, 0, 0, '61c9be3beb4f2', '2021-12-27 13:23:07', '2021-12-27 13:23:07'),
(746, 1, 'SslCommerz', 2990, NULL, 2990, 0, 0, '61c9be656e0e2', '2021-12-27 13:23:49', '2021-12-27 13:23:49'),
(747, 190, 'SslCommerz', 4490, NULL, 4490, 0, 0, '61c9bf18b3252', '2021-12-27 13:26:48', '2021-12-27 13:26:48'),
(748, 1, 'SslCommerz', 2990, NULL, 2990, 0, 0, '61c9ce15d99c1', '2021-12-27 14:30:45', '2021-12-27 14:30:45'),
(749, 1, 'SslCommerz', 2990, NULL, 2990, 0, 0, '61c9d0f01de66', '2021-12-27 14:42:56', '2021-12-27 14:42:56'),
(750, 1, 'SslCommerz', 2990, NULL, 2990, 0, 0, '61c9d1684c895', '2021-12-27 14:44:56', '2021-12-27 14:44:56'),
(751, 175, 'SslCommerz', 2990, NULL, 2990, 0, 0, '61c9e4b5393f9', '2021-12-27 16:07:17', '2021-12-27 16:07:17'),
(752, 1, 'SslCommerz', 1800, NULL, 1800, 0, 0, '61ca921d4a052', '2021-12-28 04:27:09', '2021-12-28 04:27:09'),
(753, 1, 'SslCommerz', 1800, NULL, 1800, 0, 0, '61caab306eb06', '2021-12-28 06:14:08', '2021-12-28 06:14:08'),
(754, 1, 'SslCommerz', 2550, NULL, 2550, 0, 0, '61caab5d942be', '2021-12-28 06:14:53', '2021-12-28 06:14:53'),
(755, 20, 'SslCommerz', 10, NULL, 10, 0, 0, '61caacd7b9798', '2021-12-28 06:21:11', '2021-12-28 06:21:11'),
(756, 1, 'SslCommerz', 2550, NULL, 2550, 0, 0, '61cab079415a2', '2021-12-28 06:36:41', '2021-12-28 06:36:41'),
(757, 1, 'SslCommerz', 1800, NULL, 1800, 0, 0, '61caf4c54852d', '2021-12-28 11:28:05', NULL),
(758, 1, 'SslCommerz', 1800, NULL, 1800, 4, 0, '61caf5321fdda', '2021-12-28 11:29:54', NULL),
(759, 1, 'SslCommerz', 1800, NULL, 1800, 4, 0, '61caf55ae3458', '2021-12-28 11:30:34', NULL),
(760, 20, 'SslCommerz', 10, NULL, 10, 1, 0, '61caf61740169', '2021-12-28 11:33:43', NULL),
(761, 1, 'SslCommerz', 2990, NULL, 2990, 0, 0, '61caf9180658b', '2021-12-28 11:46:32', NULL),
(762, 1, 'SslCommerz', 2990, NULL, 2990, 0, 0, '61cafaf9330b5', '2021-12-28 11:54:33', NULL),
(763, 1, 'SslCommerz', 2990, NULL, 2990, 1, 0, '61cafb1b8dd92', '2021-12-28 11:55:07', NULL),
(764, 20, 'SslCommerz', 2550, NULL, 2550, 1, 0, '61cafb8b5febb', '2021-12-28 11:56:59', NULL),
(765, 20, 'SslCommerz', 2550, NULL, 2550, 1, 0, '61cafd06241ac', '2021-12-28 12:03:18', NULL),
(766, 1, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61cafd8eab76e', '2021-12-28 12:05:34', NULL),
(767, 1, 'SslCommerz', 2550, NULL, 2550, 1, 0, '61cafe605af0a', '2021-12-28 12:09:04', NULL),
(768, 20, 'SslCommerz', 1800, NULL, 1800, 1, 0, '61caffd674cca', '2021-12-28 12:15:18', NULL),
(769, 1, 'SslCommerz', 1800, NULL, 1800, 0, 0, '61cb00a1648df', '2021-12-28 12:18:41', NULL),
(770, 1, 'SslCommerz', 2550, NULL, 2550, 4, 0, '61cb022415d5a', '2021-12-28 12:25:08', NULL),
(771, 201, 'SslCommerz', 1810, NULL, 1810, 4, 0, '61cb03b468671', '2021-12-28 12:31:48', NULL),
(772, 201, 'SslCommerz', 10, NULL, 10, 1, 0, '61cb03cc5474b', '2021-12-28 12:32:12', NULL),
(773, 201, 'SslCommerz', 10, NULL, 10, 1, 0, '61cb065027aad', '2021-12-28 12:42:56', NULL),
(774, 201, 'SslCommerz', 10, NULL, 10, 0, 0, '61cb070426d73', '2021-12-28 12:45:56', NULL),
(775, 201, 'SslCommerz', 10, NULL, 10, 1, 0, '61cb07a78ed63', '2021-12-28 12:48:39', NULL),
(776, 201, 'SslCommerz', 10, NULL, 10, 4, 0, '61cb086e8faf5', '2021-12-28 12:51:58', NULL),
(777, 201, 'SslCommerz', 20, NULL, 20, 1, 0, '61cb094d2f6b7', '2021-12-28 12:55:41', NULL),
(778, 1, 'SslCommerz', 2990, NULL, 2990, 4, 0, '61cbe3be2524d', '2021-12-29 04:27:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jimsangeet@gmail.com', '$2y$10$N5IKJEab/pEfmoH3B3RLSu.qCcQ2qQ6K0FONN/ZRX0/Ga.oCZnPtW', '2021-12-09 12:44:09'),
('ashrafmmm051@gmail.com', '$2y$10$29TojBihe5PqzFDpouRtYuxk/zhk/lB1L0ODAxl1ew6esbi90w./O', '2021-12-09 14:14:31'),
('sourav.ghose10@gmail.com', '$2y$10$RdEKE1KBQEhdGF9YyYWPJubZkzW64HWuruHenkXaw6y2A9tQwAN9m', '2021-12-14 13:05:52'),
('zannatul.nayeem1000@gmail.com', '$2y$10$rqtrGwFA65QuRzCluBcG2eoacB7/Xkbl7Jtoc7EttkXWDL/1DBJCq', '2021-12-15 08:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacypolicies`
--

CREATE TABLE `privacypolicies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacypolicies`
--

INSERT INTO `privacypolicies` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(6, 'Your privacy is very important to us. At Amarskill:', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-justify: inter-ideograph; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white; vertical-align: baseline; margin: 0in 0in .0001pt 8.3pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 14.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #54595f;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">We don&rsquo;t ask for personal information unless we truly need it.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-justify: inter-ideograph; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white; vertical-align: baseline; margin: 0in 0in .0001pt 8.3pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 14.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #54595f;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">We don&rsquo;t share your personal information except comply with the law, to provide services and to protect our rights.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-justify: inter-ideograph; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white; vertical-align: baseline; margin: 0in 0in .0001pt 8.3pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 14.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #54595f;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">We don&rsquo;t store personal information unless it&rsquo;s required for our services.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">It is Amarskill&rsquo;s policy to respect your privacy regarding any information we may collect while operating our website.&nbsp;We have outlined our privacy policy below. This Privacy Policy governs the manner in which Amarskill collects, uses, maintains and discloses information collected from users (each, a &ldquo;User&rdquo;) of the https://www.amarskill.com website.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Personal identification information</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">We may collect personal identification information from Users in a variety of ways, including, but not limited to, when Users visit our site, register on the site, place an order, fill out a form, and in connection with other activities, services, features or resources we make available on our Site. Users may be asked for, as appropriate, name, email address, mailing address, phone number. Users may, however, visit our Site anonymously. We will collect personal identification information from Users only if they voluntarily submit such information to us. Users can always refuse to supply personally identification information, except that it may prevent them from engaging in certain Site related activities.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Non-personal identification information</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">We may collect non-personal identification information about Users whenever they interact with our Site. Non-personal identification information may include the browser name, the type of computer and technical information about Users means of connection to our Site, such as the operating system and the Internet service providers utilized and other similar information.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Web browser cookies</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">Our Site may use &ldquo;cookies&rdquo; to enhance User experience. User&rsquo;s web browser places cookies on their hard drive for record-keeping purposes and sometimes to track information about them. User may choose to set their web browser to refuse cookies, or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">How we protect your information</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">We adopt appropriate data collection, storage and processing practices and security measures to protect against unauthorized access, alteration, disclosure or destruction of your personal information, username, password, transaction information and data stored on our Site.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Sharing your personal information</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">We do not sell, trade, or rent Users personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates and advertisers for the purposes outlined above. We may use third party service providers to help us operate our business and the Site or administer activities on our behalf, such as sending out newsletters or surveys. We may share your information with these third parties for those limited purposes provided that you have given us your permission.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Electronic newsletters</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">If User decides to opt-in to our mailing list, they will receive emails that may include company news, updates, related product or service information, etc. If at any time the User would like to unsubscribe from receiving future emails, we include detailed unsubscribe instructions at the bottom of each email or User may contact us via our Site. We may use third party service providers to help us operate our business and the Site or administer activities on our behalf, such as sending out newsletters or surveys. We may share your information with these third parties for those limited purposes provided that you have given us your permission.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Third party websites</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">Users may find advertising or other content on our Site that link to the sites and services of our partners, suppliers, advertisers, sponsors, licensors and other third parties. We do not control the content or links that appear on these sites and are not responsible for the practices employed by websites linked to or from our Site. In addition, these sites or services, including their content and links, may be constantly changing. These sites and services may have their own privacy policies and customer service policies. Browsing and interaction on any other website, including websites which have a link to our Site, is subject to that website&rsquo;s own terms and policies.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Compliance with children&rsquo;s online privacy protection act</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">Protecting the privacy of the very young is especially important. For that reason, we never collect or maintain information at our Site from those we actually know are under 13, and no part of our website is structured to attract anyone under 13.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Changes to this privacy policy</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">Amarskill has the discretion to update this privacy policy at any time. When we do, we will post a notification on the main page of our Site. We encourage Users to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Your acceptance of these terms</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">By using this Site, you signify your acceptance of this policy. If you do not agree to this policy, please do not use our Site. Your continued use of the Site following the posting of changes to this policy will be deemed your acceptance of those changes.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; mso-outline-level: 3; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 14.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Contacting us</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; text-justify: inter-ideograph; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 14.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #54595f;\">If you have any questions about this Privacy Policy, the practices of this site, or your dealings with this site, please&nbsp;</span><span style=\"font-size: 14.0pt;\"><a href=\"https://bohubrihi.com/privacy-policy/#omw-4859\"><strong><em><span style=\"font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040; text-decoration: none; text-underline: none;\">Contact Us</span></em></strong><span style=\"font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040; text-decoration: none; text-underline: none;\">.</span></a></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14.0pt; line-height: 115%;\">&nbsp;</span></p>\r\n</body>\r\n</html>', '2021-12-13 12:58:00', '2021-12-13 12:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `education_id` int(11) DEFAULT NULL,
  `certificate_id` int(11) DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `title`, `job_title`, `gender`, `city`, `bio`, `skill_id`, `education_id`, `certificate_id`, `facebook_link`, `twitter_link`, `linkedin_link`, `youtube_link`, `created_at`, `updated_at`) VALUES
(2, 2, 'SEO EXPAERT2', 'GOOGLE EX EMPLOYEE 2', NULL, NULL, 'On the other hand, we denounce with righteous indignation 2 On the other hand, we denounce with righteous indignation 2\r\n\r\nOn the other hand, we denounce with righteous indignation 2 On the other hand, we denounce with righteous indignation 2', NULL, NULL, NULL, NULL, 'https://www.twitter.com/', 'https://www.linkedin.com/', 'https://www.youtube.com', '2021-11-15 02:09:31', '2021-11-21 09:20:20'),
(3, 4, 'Content Writer & SEO Expert', 'Working At Microsoft', NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:8000/instructor/course/profile', 'http://127.0.0.1:8000/instructor/course/profile', 'http://127.0.0.1:8000/instructor/course/profile', 'http://127.0.0.1:8000/instructor/course/profile', '2021-11-17 02:56:18', '2021-11-17 03:03:22'),
(5, 5, 'Nulla eiusmod simili', 'Culpa neque odio qu', NULL, NULL, 'Ipsa ullam similiqu', NULL, NULL, NULL, 'https://www.lygalacewanehas.info', 'https://www.tazyromywime.us', 'https://www.vumatucyqifole.cm', 'https://www.kani.org.au', '2021-11-22 02:48:30', '2021-11-22 02:48:30'),
(6, 8, 'Web Developer', 'Pixelcarve Company L.T.D', NULL, NULL, 'I am a Web Developer. work as a Remote Job Web Developer for pixelcarve.com team in Canada. I partner with startups, organizations and Fortune 200+ companies to build web development that help clients overcome challenges and create lasting connections with millions of people every day.', NULL, NULL, NULL, 'https://www.facebook.com/marufshobobd/', NULL, 'https://www.linkedin.com/in/marufshobo/', 'https://www.youtube.com/channel/UCqropumAkTwnA9K7hWNyABw', '2021-11-28 04:59:49', '2021-11-30 18:40:31'),
(7, 10, 'g', NULL, NULL, NULL, 'b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:39:33', '2021-11-30 05:39:33'),
(8, 14, 'MERN Stack Developer', 'Professional Freelancer', NULL, NULL, 'I am a Full stack web developer working with MERN. At present iI am working as a professional freelancer who have worked with several startups and Freelancing teams.I always work with full ambition and try my best to fulfill the requirements of my clients.', NULL, NULL, NULL, 'https://www.facebook.com/Shahed.the.boss', NULL, NULL, NULL, '2021-12-03 13:37:46', '2021-12-09 09:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Student', 'student', NULL, NULL),
(2, 'Instructor', 'instructor', NULL, NULL),
(3, 'Admin', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `user_id`, `skill`, `created_at`, `updated_at`) VALUES
(1, 2, 'Ad quaerat dolor tem', '2021-11-15 05:26:02', '2021-11-15 05:26:02'),
(3, 2, 'Nostrud id nesciunt', '2021-11-15 05:26:48', '2021-11-15 05:26:48'),
(4, 2, 'Unde explicabo Qui', '2021-11-15 05:28:42', '2021-11-15 05:28:42'),
(6, 2, 'Ad ut non voluptatem', '2021-11-15 05:28:42', '2021-11-15 05:28:42'),
(10, 4, 'Id dolorum soluta ad', '2021-11-17 03:16:12', '2021-11-17 03:16:12'),
(11, 5, 'Excepturi ut et ut a', '2021-11-22 02:48:51', '2021-11-22 02:48:51'),
(12, 5, 'Est non aliqua Ven', '2021-11-22 02:48:51', '2021-11-22 02:48:51'),
(13, 5, 'Cum esse amet tempo', '2021-11-22 02:48:51', '2021-11-22 02:48:51'),
(14, 5, 'Voluptates et incidu', '2021-11-22 02:48:51', '2021-11-22 02:48:51'),
(15, 10, 'v', '2021-11-30 05:40:12', '2021-11-30 05:40:12'),
(16, 10, 'v', '2021-11-30 05:40:12', '2021-11-30 05:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `termsandconditions`
--

CREATE TABLE `termsandconditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `termsandconditions`
--

INSERT INTO `termsandconditions` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Amarskill Terms and Conditions', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; mso-outline-level: 2; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.5pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Accounts</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">You need an account for most activities on our platform, including purchasing and enrolling in a course. When setting up and maintaining your account, you must provide and continue to provide accurate and complete information, including a valid email address. You have complete responsibility for your account and everything that happens on your account, including for any harm or damage, to us or anyone else caused by someone using your account without your permission. This means you need to be careful with your password. You may not transfer your account to someone else or use someone else&rsquo;s account without their permission. If you contact us to request access to an account, we will not grant you such access until you can provide us the login credential information for that account. In the event of the death of a user, the account of that user will be terminated.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">If you share your account login credential with someone else, you are solely responsible for what happens with your account and Amarskill will not intervene in disputes between students who have shared account login credentials. You must notify us immediately upon knowing that someone else may be using your account without your permission by contacting our&nbsp;</span><span style=\"font-size: 13.0pt;\"><a href=\"https://www.bohubrihi.com/support/\"><span style=\"font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040; text-decoration: none; text-underline: none;\">Support Team</span></a></span><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">. Our team may request some information from you to confirm that you are indeed the owner of that account.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; mso-outline-level: 2; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.5pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Payments, Credits and Refunds</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">We regularly run promotions and sales for our courses and specific courses are only available at discounted prices for a set period. The price applicable to a course will be the price at the time you complete your purchase of the course. Any price offered for a course may also be different when you are logged into your account from the price available to users who aren&rsquo;t registered or logged in, because some of our promotions will be available to new registered users only.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; mso-outline-level: 2; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.5pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Course Access, Content and Behavior Rules</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">You may not access or use the services or create an account for illegal purposes. Your use of the services and behavior on our platform must comply with applicable local or national laws or regulations of Bangladesh. You are solely responsible for the knowledge of and compliance with such laws and regulations that are applicable to you. You may not access our Services if you are from a territory where Bangladeshi businesses are prohibited from engaging in business.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">If you are a student, the Services enable you to ask questions to the instructors of courses you are enrolled in, and to post reviews of courses. For certain courses, the instructor invites you to submit content as homework, assignment, quizzes or tests. Don&rsquo;t post or submit anything that is not yours. Also, posting assignment or quiz answers directly on the discussion board is not permitted (You can give hints). If anything like these are detected, then the post will be deleted, and you will be warned. Repetition of these activities may result in temporary or permanent deactivation of your user account.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">If we are put on notice that your course or content violates the law or the rights of others, if we discover that your content or behavior violates our rules, or if we believe your content or behavior is unlawful, inappropriate, or objectionable, we may remove your content from our platform. Amarskill complies with copyright laws. Check out our Intellectual Property Policy for more details.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">We may terminate or suspend your permission to use our platform and Services or ban your account at any time, with or without notice, for any violation of our Terms, if you fail to pay any fees when due, upon the request of law enforcement or government agencies, for extended periods of inactivity, for unexpected technical issues or problems, or if we suspect that you engage in fraudulent or illegal activities. Upon any such termination we may delete your account and content, and we may prevent you from further access to the platforms and use of our services. Your content may still be available on the platforms even if your account is terminated or suspended. You agree that we will have no liability to you or any third party for termination of your account, removal of your content, or blocking of your access to our platforms and services.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">If one of our instructors has published a course that infringes your copyright or trademark rights, please let us know through support page. Under our Instructor Agreement, we require our instructors to follow the law and respect the intellectual property rights of others. For more details on how to file a copyright or trademark infringement claim with us, see our Intellectual Property Policy.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">On discussion board, be respectful to your peers and instructors. Any kind of harassment will not be tolerated. If you see any such kind of activity report to us via support page explaining the situation. If someone engages in inappropriate behavior with other peer or instructor, his/her comment or post may be deleted and for severe cases, the user account may be terminated.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; mso-outline-level: 2; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.5pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Intellectual Property</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">As a student, when you enroll in a course, whether it&rsquo;s a free or paid course, you are getting from Amarskill a license of permission to view the course via the Amarskill platform and Services, and Amarskill is the licensor of record. Courses are licensed, and not sold, to you. This license does not give you any right to resell the course in any manner, including by sharing account information with a purchaser or illegally downloading the course and sharing it with any person, business entity, profit or not for profit generating platform without our informed written consent.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">Amarskill grants you a limited, non-exclusive, non-transferable license to access and view the courses and associated content for which you have paid all required fees, solely for your personal, non- commercial, educational purposes through the Services, in accordance with these Terms and any conditions or restrictions associated with a particular courses or feature of our services. All other uses are expressly prohibited. You may not reproduce, redistribute, transmit, assign, sell, broadcast, rent, share, lend, modify, adapt, edit, create derivative works of, sublicense, or otherwise transfer or use any course unless we give you explicit permission to do so in a written agreement signed by a Amarskill authorized representative.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">We reserve the right to revoke any license to access and use courses at any point in time in the event where we decide or are obligated to disable access to a course due to legal or policy reasons, The lifetime access is not applicable to add-on features and services associated with a course, for example translation captions of courses may be disabled by instructors at any time, and an instructor may decide at any time to no longer provide teaching assistance or Q&amp;A services in association with a course. To be clear, the lifetime access is to the course content but not to the instructor service.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; mso-outline-level: 2; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.5pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Amarskill&rsquo;s Rights to Content You Post</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">The content you post as a student remains yours. By posting courses and other content, you allow Amarskill to reuse and share it but you do not lose any ownership rights you may have over your content.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">When you post comments, questions, reviews, and when you submit to us ideas and suggestions for new features or improvements, you authorize Amarskill to use and share this content with anyone, distribute it and promote it on any platform and in any media, and to make modifications or edits to it as we see fit. In legal language, by submitting or posting content on or through the platforms, you grant us a worldwide, non-exclusive, royalty-free license to use, copy, reproduce, process, adapt, modify, publish, transmit, display, and distribute your content in all present and future media or distribution methods. This includes making your content available to other companies, organizations, or individuals who partner with Amarskill for the syndication, broadcast, distribution, or publication of content on other media. You represent and warrant that you have all the rights, power, and authority necessary to authorize us to use any content that you submit. You also agree to all such uses of your content with no compensation paid to you.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; mso-outline-level: 2; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.5pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Using Amarskill at Your Own Risk</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">Amarskill enables anyone anywhere to create and share educational courses. We host and will host many courses on our online learning marketplace. Our platform model means we do not review or edit the courses for Legal issues, and we are not in a position to determine the legality of course content. We do not exercise any editorial control over the courses that are available on the platform and, as such, do not guarantee in any manner the reliability, validity, accuracy or truthfulness of the courses. We may do some pre-review of courses but if you enroll a course, you rely on any information provided by an instructor at your own risk.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">By using the Services, you may be exposed to content that you consider objectionable. Amarskill has no responsibility to keep such content from you and no liability for your access or enrollment in any course, to the extent permissible under applicable law. This also applies to any courses relating to health, wellness, lifehacks and physical exercise. You acknowledge the inherent risks and dangers in the nature of these types of courses, and by enrolling in such courses, you choose to assume those risks voluntarily, including risk of illness, body injury, disability, or death. You assume full responsibility for the choices you make before, during and after your enrollment in a course. You may say anything in the review section of the course, but we as a platform, are not responsible for that.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">When you interact directly with a student or an instructor, you must be careful about the types of personal information that you share. We cannot control what students and instructors do with the information they obtain from other users on the platform. You should not share your email or other personal information about you for your safety.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">We do not hire or employ instructors nor are we responsible or liable for any interactions involved between instructors and students. We are not liable for disputes, claims, losses, injuries, or damage of any kind that might arise out of or relate to the conduct of instructors or students.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">When you use our platform, you will find links to other websites that we don&rsquo;t own or control. We are not responsible for the content or any other aspect of these third-party sites, including their collection of information about you. You should also read their terms and conditions and privacy policies.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; mso-outline-level: 2; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.5pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Amarskill&rsquo;s Rights</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">All right, title, and interest in and to the Amarskill platform and Services, including our website, our present and future applications, our APIs, databases, and the content our employees or partners submit or provide through our platform, but excluding content provided by instructors and students, are and will remain the exclusive property of Amarskill and its licensors. Our platforms and services are protected by copyright, trademark, and other laws of Bangladesh. Nothing gives you a right to use the Amarskill name or any of the Amarskill trademarks, logos, domain names, and other distinctive brand features. Any feedback, comments, or suggestions you may provide regarding Amarskill is entirely voluntary and we will be free to use such feedback, comments, or suggestions as we see fit and without any obligation to you.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">You may not do any of the following while accessing or using the Amarskill platform and Services: Access, tamper with, or use non-public areas of the platform, Amarskill&rsquo;s computer systems, or the technical delivery systems of Amarskill&rsquo;s service providers. Disable, interfere with, or try to circumvent any of the features of the platforms related to security or probe, scan, or test the vulnerability of any of our systems. Copy, modify, create a derivative work of, reverse engineer, reverse assemble, or otherwise attempt to discover any source code of or content on the Amarskill platform or Services. Access or search or attempt to access or search our platform by any means other than through our currently available search functionalities that are provided via our website, mobile apps, or. You may not scrape, spider, use a robot, or use other automated means of any kind to access the services. In any way use the services to send altered, deceptive, or false source-identifying information; or interfere with, or disrupt, or attempt to do so, the access of any user, host, or network, including, without limitation, sending a virus, overloading, flooding, spamming, or mail-bombing the platforms or services, or in any other manner interfering with or creating an undue burden on the Services.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; mso-outline-level: 2; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.5pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Miscellaneous Legal Terms</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 6.5pt; mso-bidi-font-size: 11.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">Binding Agreement:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">You agree that by registering, accessing or using our Services, you are agreeing to enter into a legally binding contract with Amarskill. If you do not agree to these Terms, do not register, access, or otherwise use any of our Services.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">Any version of these Term in a language other than English is provided for convenience and you understand and agree that the English language will control if there is any conflict.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">These Terms (including any agreements and policies linked from these Terms) constitute the entire agreement between you and us (which include, if you are an instructor, the Instructor Agreement and the Pricing and Promotions Policy).</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">If any part of these Terms is found to be invalid or unenforceable by applicable law, then that provision will be deemed superseded by a valid, enforceable provision that most closely matches the intent of the original provision and the remainder of these Terms will continue in effect.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">Even if we are delayed in exercising our rights or fail to exercise a right in one case, it doesn&rsquo;t mean we waive our rights under these Terms, and we may decide to enforce them in the future. If we decide to waive any of our rights in a instance, it doesn&rsquo;t mean we give up our rights generally or in the future.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 6.5pt; mso-bidi-font-size: 11.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">Disclaimers:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">It may happen that our platform is down, either for planned maintenance or because something goes down with the site. It may happen that one of our instructors is making misleading statements in their course. It may also happen that we encounter security issues. You accept that you will not have any recourse against us in any of these types of cases where things don&rsquo;t work out right. In legal, more complete language, the Services and their content are provided on an &ldquo;as is&rdquo; and &ldquo;as available&rdquo; basis. We and our affiliates, suppliers, partners, and agents make no representations or warranties about the suitability, reliability, availability, timeliness, security, lack of errors, or accuracy of the Services or their content, and expressly disclaim any warranties or conditions, including implied warranties of merchantability, fitness for a particular purpose, title, and non-infringement. We and our affiliates, suppliers, partners, and agents make no warranty that you will obtain specific results from use of the Services. Your use of the services (including any content) is entirely at your own risk.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">We may decide to cease making available certain features of the Services at any time and for any reason. Under no circumstances will Amarskill or its affiliates, suppliers, partners or agents be held liable for any damages due to such interruptions or lack of availability of such features.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">We are not responsible for delay or failure of our performance of any of the services caused by events beyond our reasonable control, like an act of war, hostility, or sabotage; natural disaster; electrical, internet, or telecommunication outage; or government restrictions.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">Limitation of Liability:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">There are risks inherent into using our Services, for example, if you enroll in a health and wellness course like yoga, and you injure yourself. You fully accept these risks and you agree that you will have no recourse to seek damages against even if you suffer loss or damage from using our platform and Services. In legal, more complete language,&nbsp;</span><strong><span style=\"font-size: 13.0pt; font-family: \'inherit\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">to the extent permitted by law, we (and our group companies, suppliers, partners, and agents) will not be liable for any indirect, incidental, punitive, or consequential damages (including loss of data, revenue, profits, or business opportunities, or personal injury or death), whether arising in contract, warranty, tort, product liability, or otherwise, and even if we&rsquo;ve been advised of the possibility of damages in advance. Our liability (and the liability of each of our group companies, suppliers, partners, and agents) to you or any third parties under any circumstance is limited to the greater of Ten thousand Taka (BDT 10000) or the amount you have paid us in the twelve months before the event giving rise to your claims.</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; mso-outline-level: 2; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.5pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">Updating These Terms</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">From time to time, we may update these Terms to clarify our practices or to reflect new or different practices such as when we add new features, and Amarskill reserves the right in its sole discretion to modify or make changes or both to these terms at any time. If we make any material change, we will notify you using prominent means such as by email notice sent to the email address specified in your account or by posting a notice through our services. Modifications will become effective on the day they are posted unless stated otherwise.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">Your continued use of our services after changes become effective shall mean that you accept those changes. Any revised terms shall supersede all previous Terms.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; mso-outline-level: 2; background: white; vertical-align: baseline;\"><strong><span style=\"font-size: 13.5pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #102040;\">How to Contact Us</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 8.3pt; line-height: normal; background: white; vertical-align: baseline;\"><span style=\"font-size: 13.0pt; font-family: \'Open Sans\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #3e3e3e;\">The best way to get in touch with us is to contact our Support Team. We&rsquo;d love to hear your questions, concerns, and feedback about our Platform. We will continue our work to improve the Amarskill platform to ensure best experience.</span></p>\r\n</body>\r\n</html>', '2021-12-13 13:01:42', '2021-12-13 13:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 5,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `role_id`, `phone`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dalim Chwdhuriy', 'student@gmail.com', 'student', 1, '01518313266', 'student-61ab35cca9d40.jpg', NULL, '$2y$10$TFQMyAdZWAt.bfcJkcWvsu/JOJNEuDG40ycVCWKAGZQfFayYcvtnO', 'rwuQJGbSv8ft5Vh8YMntABfT6FFbRQwS1gpAWXypLAFXj8EK8E0XDyG70XWw', '2021-11-14 22:34:06', '2022-05-31 07:30:08'),
(3, 'Maruf Hossain', 'admin@gmail.com', 'admin', 3, '0211', '3-61b4629b2e728.png', NULL, '$2y$10$clKa/2VCkRSI2aApABHPQOgqwjCM5U7zicIm1sym33EopXsGYG1.O', '6w96XdL6MX4jbR9gVsxlPXbbNtMBhZJPkaVm5JBjSK9YP9K69VUK3ZvSJ3nJ', '2021-11-14 22:35:17', '2021-12-29 05:00:53'),
(8, 'Maruf Hossain', 'marufsuvo@gmail.com', 'marufsuvo', 2, '1214454', '8-61a360ec6762e.png', NULL, '$2y$10$SJ9wkUWJfQzJ03UXMMsmLeE5Cb8DFH7HMqRVwUABqyOBBwKHC.QUS', 'okCxZdANJ5x6d7H1O3Lm579yYvYIK2X03wgA376KoGLYxEJeKt5PsXOqXUR2', '2021-11-28 04:57:44', '2021-12-28 12:14:37'),
(11, 'Md.Sujan Mia', 'ammajan2424@gmail.com', 'sujanmia', 1, '01722932958', NULL, NULL, '$2y$10$FO4ZlvcC./Gr3nxU1/nTFOvvv.Fygso6HSk.J0LBjDfdM0H29gpB2', NULL, '2021-12-01 07:50:30', '2021-12-01 07:50:30'),
(12, 'Azaz Ahmed Lipu', 'lipuahmedazaz79@gmail.com', 'dark79', 1, '01320714105', NULL, NULL, '$2y$10$P0tC2BWOeJIMvEGffFHmoeR7L4v9Qg6JONtYoyf10yuZZiz02XTRW', 'jiHm857RdelrcktYHsucmkiNUSXCu1x2UxTmxHWIgJICVzb5Cz6g2Il7jZVL', '2021-12-02 15:39:39', '2021-12-02 15:39:39'),
(13, 'Najnin Nahar Ratna', 'najninnaharratna27@gmail.com', 'Najnin', 1, '01799283074', NULL, NULL, '$2y$10$neyre9.2lJ02Pndnjr/fuuhjkDgwASiR7G4YCuhmEVtNOpNbHNYj.', 'zwPcumNyZWVvbbTQAvkQmi4xrY2yJ1H5lVFK6BFiHJXQhLRcSkUPSInVQj5O', '2021-12-03 12:26:10', '2021-12-03 12:26:10'),
(14, 'Shahadat Hussain Shahed', 'shahedshahadat0123@gmail.com', 'shahadat', 2, '11223344', '14-61b1c8712c380.png', NULL, '$2y$10$gU/Hje7/ZUbJna7rU.fABuGSa08UwQeEgtHPG7/dU7/qwLTTinYfe', 'pI272E8yR1jXw6usvnyrbJDnCQEIhInBzBXN5RC86QuuyqDHMsUsmdd87S5r', '2021-12-03 13:33:44', '2021-12-28 12:14:02'),
(15, 'Sabbir', 'habibursabbir@gmail.com', 'Sabbir', 1, '+8801611722237', NULL, NULL, '$2y$10$acohhvxlg/6L7Y59g5ULCO54V8VO8wgNXpT6xjSJWq1dmuovDaR2K', 't5heydVlj0xOLC0WnFOTtVsorlXOSUJgK2nHls7BNEy53D18ynB7FtMJ8RyS', '2021-12-03 19:12:29', '2021-12-15 16:52:20'),
(16, 'imran', 'imranfullstack@gmail.com', 'imran', 1, '2121231', NULL, NULL, '$2y$10$03uFvECyCErVFrWqlr55He6Mbde9mI4dhWE0.Ujk2EOP0SHTPLXAG', NULL, '2021-12-04 02:54:14', '2021-12-04 02:54:14'),
(18, 'Scarlet Little', 'kysenehyqu@mailinator.com', '53351', 1, '+1 (945) 171-5147', NULL, NULL, '$2y$10$7QCmf0z6Ir5s2gxGeyTx3uNPLVeN/.NJDj5uji/VUHcMczM7GW5T.', NULL, '2021-12-04 06:07:37', '2021-12-04 06:07:37'),
(19, 'Moinuddin', 'moinuddincr77@gmail.com', '8228', 1, '01690068064', NULL, NULL, '$2y$10$OLpPe2kBj1Q6hBI2vPWPSuBwGYdrxPDgw1wlfhY1rrueNPnzgmgou', 'ZCoE8FoAUN5Q4h22Yc8uFRqDgK9Yv0HwgCV1CLMwUTyGMHtCU2s804cRuGiF', '2021-12-06 11:53:26', '2021-12-13 13:00:13'),
(20, 'Mazedul Mazed', 'mazedul.se@gmail.com', '9066', 1, '01868367706', '9066-61b583e93cb80.png', NULL, '$2y$10$dA2PTdE2toZEAAhlhEkUkONt08FNCtAPbOrFcc8XHqVEj2DLHubEC', NULL, '2021-12-07 11:55:16', '2021-12-28 12:16:16'),
(21, 'SAYED MD. ROKIBUL HASAN', 'roqib03@gmail.com', '6769', 1, '01869091939', '6769-61af7617180bb.jpg', NULL, '$2y$10$giB53p8/nBjkTlCgOAW1m.XksIeinPXxL2aPwejguk7Zf50TYzA9i', NULL, '2021-12-07 14:52:44', '2021-12-07 14:56:23'),
(22, 'Orlando Newman', 'hodixyj@mailinator.com', '9967', 1, '+1 (392) 729-3751', NULL, NULL, '$2y$10$b6raoOvp2k8slEeI0OlMk.1UM6f.1iNjq/MHr2rR6wOicUPbB4FCi', NULL, '2021-12-07 15:36:23', '2021-12-07 15:36:23'),
(23, 'intizzahmed', 'intizzahmed@gmail.com', '5608', 1, '12345678912', NULL, NULL, '$2y$10$YKUwU0d6.zMRHEIVytoBn.3ZUfDzlApF8K6toqV6dLCddGGoSGTsG', NULL, '2021-12-08 05:19:06', '2021-12-14 03:27:29'),
(24, 'moshineel', 'moshineel@gmail.com', '1102', 1, '01234567891', NULL, NULL, '$2y$10$Giy5As17JKTwJQe72P5mcuZH6FfDvkCKgJSEPWaDQ.KsZZTysIXoS', NULL, '2021-12-08 05:24:54', '2021-12-16 09:04:44'),
(25, 'tawfiq.iqra.396', 'tawfiq.iqra.396@gmail.com', '8904', 1, '012345678912', NULL, NULL, '$2y$10$vH4lZ2ICa/r/EnkWdzKY9e7oFQqsidOosQmXZsVaD/iihXe/DfM5u', 'Ul5rT4u1NuZmwkBhiU12Budne3E73dnYhpIv8S4I3SiLtqe6f4eATXldpBfN', '2021-12-08 05:29:02', '2021-12-08 05:29:02'),
(26, 'theophil dio', 'diot450@gmail.com', '7130', 1, '01731941873', '7130-61b1f69431369.png', NULL, '$2y$10$QNBnQB0UBX.9qFT75XmyZ.HyXSewuJe0/uaOvpMpinqVFOudnyLum', NULL, '2021-12-08 05:32:50', '2021-12-15 05:29:59'),
(27, 'kaziadnan20', 'kaziadnan20@gmail.com', '928', 1, '098787656542', NULL, NULL, '$2y$10$78KEThaRjcQyv1NDmtFX1eh0by8sp1CnCdI06sQEKv8qLuLo7T6s6', '9YeQkhUaG09jYxAMJl1y6gBPJQWqHMIBhxzaaByUib1Bb7iEchvnjS2VSr9l', '2021-12-08 05:39:59', '2021-12-08 05:39:59'),
(28, 'oamitume0', 'oamitume0@gmail.com', '2545', 1, '09898767653', NULL, NULL, '$2y$10$rR1qL4yY7zX0W8iMKQy91.6QNzWln0ObQRPWZFKSaSTIYFo6zz7HO', 'hMDgbF0Bn9cDIMHvkqaSDzZSoJrpgrgdpeyX2IfP0r4POEYffwMud0h8hdnw', '2021-12-08 05:44:31', '2021-12-16 17:06:47'),
(29, 'abdullajamee306', 'abdullajamee306@gmail.com', '3609', 1, '098787876554', NULL, NULL, '$2y$10$WuhC92JtZqMdqrqo4R3jkeMDuNqjpIkNB9Ajq.Ryq3MBaq7G59dEq', '3O7MJsXQI963HSFGah2IAbAZUXd2nDf13xsXitodBB62aC49Uy7MLH0ozw9H', '2021-12-08 05:51:36', '2021-12-08 05:51:36'),
(30, 'Tanharana561', 'Tanharana561@gmail.com', '6314', 1, '09878453234', NULL, NULL, '$2y$10$z4c7JNkPhS8Rx6zuCpdzqOHEzokDDxKRqu5tKAchm5/LW4BmMB5a6', '8EBAAfxYvBRAgP19V4jzxCpeu9ftkInhamLhuuUlJbjnW2qADSVxOc0t3HXM', '2021-12-08 05:53:53', '2021-12-08 05:53:53'),
(31, 'aunyhere', 'aunyhere@gmail.com', '1147', 1, '987876565434', NULL, NULL, '$2y$10$u.bA8fVSI1cT0VPEhvScnO35vo9x71HbWY0JPoz7nNrOcfZYZcfwa', NULL, '2021-12-08 05:59:21', '2021-12-08 05:59:21'),
(32, 'mahi110145', 'mahi110145@gmail.com', '9883', 1, '09898787654', NULL, NULL, '$2y$10$sRKFo10nC64EE3dOHmnRrO1lOkWT6HOJ.hDbOcfFbfRVkCIpfWySS', '5v78FPP3tV2pfQ1boapuEC1uQezPGFIKWBwK4oodU7hQxyXhC3My2ilpm3vq', '2021-12-08 06:03:52', '2021-12-08 06:03:52'),
(33, 'dipon898', 'dipon898@gmail.com', '6767', 1, '09898767654', NULL, NULL, '$2y$10$MNH5L9NMw0fnvOZOB2iXwOvcH9pSlXvqOGpEp7teE/AZN/eRbYw1G', NULL, '2021-12-08 06:11:28', '2021-12-14 14:12:27'),
(34, 'faisal2410', 'faisal2410@yahoo.com', '3086', 1, '09898767654', NULL, NULL, '$2y$10$iyBXhW7TTmBtBPxPSbi0l.XwPRH5B12VG.ieT7kuRMYYkcMpoISR.', '31phBtZCRKF9j1QweJG1LU86YdoVwJR7sd7Ddak4m9Jb0H3e6bb8Qk7tvvQT', '2021-12-08 06:16:08', '2021-12-08 06:16:08'),
(35, 'jimsangeet', 'jimsangeet@gmail.com', '2957', 1, '09898767656', NULL, NULL, '$2y$10$aplC/0eDz/r5DBXvx95UnOKcEUeDeLs/24EPBo.rtViDPDO2w.vje', 'sVLIcaFOSthbWr9irnHJ3cCI6glmLVQOzc8gsUjg9BMbfoD4EhAt0TOejglz', '2021-12-08 06:21:37', '2021-12-08 06:21:37'),
(36, 'tareqcse02', 'tareqcse02@gmail.com', '1796', 1, '09898765676', NULL, NULL, '$2y$10$U17fE61C8gzW06dAky4RQed6ML/HXJxYe6R0QwFAXCe3gxfpvWMzW', NULL, '2021-12-08 06:26:20', '2021-12-08 06:26:20'),
(37, 'khandaker.ab', 'khandaker.ab@gmail.com', '1204', 1, '0989878765', NULL, NULL, '$2y$10$oQ2JXuOfct4Zf/mY4iRLDe7X0/.o/EQ1FYvNA4dB3mvx2esYMEJ76', '2Ad0Xrvyc0DbpCO31hnnYre5ubmv2fdHmF9yiRCOqMxzUJPK7Y0Rzl3txucX', '2021-12-08 06:31:09', '2021-12-08 06:31:09'),
(38, 'mdparvezsarkarlevel1', 'mdparvezsarkarlevel1@gmail.com', '6979', 1, '0989878765', NULL, NULL, '$2y$10$WB6WB0O6N6f5eiGm1c9jRuPkAKNq2.vUNclHOc5MYsJChSid9urAy', NULL, '2021-12-08 06:37:55', '2021-12-08 06:37:55'),
(39, 'Habib', 'rahman.habibjr59@gmail.com', '5296', 1, '01515620218', '5296-61b766af6ed15.jpg', NULL, '$2y$10$lbO04rzdZDGqbQOx/IM9c.A.fPb8tLA10KHnKYklOg3tPLtH/l60G', 'js3GcZsCFMj8wVJctSLOxqdNeAYsNlSJAjlF4HoqwSv2qxUual0QxOoP9e7I', '2021-12-08 06:42:06', '2021-12-13 15:28:48'),
(40, 'bdamit84', 'bdamit84@gmail.com', '9982', 1, '09898767652', NULL, NULL, '$2y$10$AFuqX5GbNAgGTUltiStPsOhodE6uJ8q9afpaluhDqMgkGPEvKsJNa', NULL, '2021-12-08 06:47:50', '2021-12-08 06:47:50'),
(41, 'Subha Das', 'subhadas10031986@gmail.com', '7622', 1, '917477450427', '7622-61b1e4ca59cf3.jpg', NULL, '$2y$10$7h6He127cdfGndID.E.Vc.bmpVaUuT8NiJD1WQuPFDgB9SYUY6lnq', 'l0HDBSNUpupWzIEP5hIk8ppx9hscha9r4uQeUzt5UFezTxq91Zut81szrZtD', '2021-12-08 07:05:38', '2021-12-09 11:13:54'),
(42, 'mdasaduzzaman', 'mdasaduzzamanaupo@gmail.com', '5646', 1, '09898767564', NULL, NULL, '$2y$10$bsAiSTC0FxHXcpMrBh5Dpu806kOgsRCoQXk7OrOpMMnpap1g/Atfm', NULL, '2021-12-08 07:09:03', '2021-12-18 06:22:04'),
(43, 'mithunsangma', 'mithunsangma7@gmail.com', '3604', 1, '09898767564', NULL, NULL, '$2y$10$OoidsLGb7E7lEivewA048e9uKBjIskets38cE1VM2bPAIWXSmoxMy', 'KLYxgVu9XF6uh4vwTOdW2SAEtBR4kblsv0lBPlRwwlej1PwnyL4GTT1yX1UC', '2021-12-08 07:12:57', '2021-12-08 07:12:57'),
(44, 'uddin', 'uddin6058@gmail.com', '8385', 1, '12345345656', NULL, NULL, '$2y$10$I25sDrDZU/4lYi0HSAzrQO5Mnyn.9kjhTOfZiGIJOBp6gjyo/1pIi', '8y8Fu4KuRlNehFQll4O5v5ONFufZBemKJ1B7umV9gJuj1LWEvHXDS3kZFhze', '2021-12-08 07:15:58', '2021-12-15 15:37:51'),
(45, 'amitayon', 'amitayon3@gmail.com', '5332', 1, '98978765675', NULL, NULL, '$2y$10$4FBE57qrM.GCsJrt9AcJ8.EtYAC5w3LmMzYIw8.zO4fEC7B5FO8sm', NULL, '2021-12-08 07:19:46', '2021-12-13 16:49:52'),
(47, 'mdshariar', 'mdshariar00@gmail.com', '6331', 1, '7867675654', NULL, NULL, '$2y$10$99woCSW1fcCMHvcW7aFmleRO1WL9d.ZweQC4qwqfkaL0icw4t7tpS', NULL, '2021-12-08 07:32:53', '2021-12-08 07:32:53'),
(48, 'arefintalukder', 'arefintalukder5@gmail.com', '6635', 1, '1234543234', NULL, NULL, '$2y$10$W4O2nENrDsUX0fXyCaS4pO8D2JToiAwya6ZyaEsh8YRoTUWobs4ZW', NULL, '2021-12-08 07:45:45', '2021-12-08 07:45:45'),
(49, 'rajeebce17', 'rajeebce17@gmail.com', '575', 1, '09878987865', NULL, NULL, '$2y$10$Iux7H4X5bmBPYGFENKQj.O1mOTwRASxZ6Ti1rf4.J1E6/9Y.0TSGm', NULL, '2021-12-08 07:49:10', '2021-12-08 07:49:10'),
(50, 'miftahulfahim', 'miftahulfahim24@gmail.com', '9331', 1, '987676767563', NULL, NULL, '$2y$10$xtjxszrMzv1UtBUGsdIAPeCsi9hNnUGZT9t/mg7JFTdbSqEClemoa', NULL, '2021-12-08 07:52:13', '2021-12-08 07:52:13'),
(51, 'sagorkoiry1999', 'sagorkoiry1999@gmail.com', '2506', 1, '87867565434', NULL, NULL, '$2y$10$NTihtD3P5Fcmhjk4d0rzmedWvwUs34/pRYdEjgh/W11oXWR1m/...', 'pv7Afy7dNmIRvJaSHY3XoJTqN92YASWM6zsocSm3n54IbnCUvCePehEHQArx', '2021-12-08 07:55:07', '2021-12-28 18:44:28'),
(52, 'mdeyasinarafat', 'mdeyasinarafat567@gmail.com', '7068', 1, '34543456787', NULL, NULL, '$2y$10$azLWSHuhXaTSwRUmpF.fKe4tFReLFBh4/KXbNU20CvADhbZ5gidpe', NULL, '2021-12-08 07:57:38', '2021-12-08 07:57:38'),
(54, 'nazmulislam', 'nazmulislam1948@gmail.com', '7351', 1, '12343567656', NULL, NULL, '$2y$10$COJcasB9GtZbaODG/ojEzOe3A4PcdD.ep.vvZZt2EGNQkNEfd0hYe', 'b6uSmyLvlErib6nl3f33xS9srW0iUg8nyyygYiD4xQlPbfOXQeMmXZxYMs28', '2021-12-08 08:02:32', '2021-12-08 08:02:32'),
(55, 'rubayyatferdous', 'rubayyatferdous332@gmail.com', '9699', 1, '23456545676', NULL, NULL, '$2y$10$1nyzlMRUQcHMz2RPPxG4iO5eet9q2CIERn8xFgC5p66oaGiCidsEO', NULL, '2021-12-08 08:04:01', '2021-12-08 08:04:01'),
(56, 'hsaifuln', 'hsaifuln@gmail.com', '9617', 1, '78765454323', NULL, NULL, '$2y$10$fGxE54E9vatI/eSW.hhj8utLbW5dJl2oRw2vWqtIJQ9DAfYjdUZ0m', '3fbmiQHdYE4wihz9J4iV0Sg3mRcgFOEcOOIj20w5JN2uz2eOerqWjZhsdjhD', '2021-12-08 08:30:03', '2021-12-08 08:30:03'),
(57, 'ai0032992', 'ai0032992@gmail.com', '7433', 1, '56543456543', NULL, NULL, '$2y$10$zmFc15iufg/4rHEIADjHaelpWURqIFMC7nD.yCJGJF2Hqxgw7CRT6', 'QsM4pE1vjMCiiPNqdcZiIxgcEB9hK5vWPnhBGIf4U66PLpVLKcaiFecKAoFC', '2021-12-08 08:33:57', '2021-12-08 08:33:57'),
(58, 'murshedmargub', 'murshedmargub@gmail.com', '3800', 1, '12345654321', NULL, NULL, '$2y$10$xpJNWBA8T7JQuDAC5mdOG.WHOeUVtQRzAipL3CKvHatNrusnLjytC', 'bbbVpLhe4y0ayPNyXKs0UVG3qjWiLlmd7TeTi8dkoN6V50nHSqxMe78nuq1v', '2021-12-08 08:36:02', '2021-12-08 08:36:02'),
(59, 'mdtufsirulmiraj', 'mdtufsirulmiraj@gmail.com', '5427', 1, '09897676541', NULL, NULL, '$2y$10$9uU9YTrZFryuvPnRJmOeG.UkDRQz94vOiz6O0vLwE3J2pwn14ls5S', 'TXm3WvBpcX9tg63fWsBxpSKijoniw1bKMLxlsP00zgkjfoa1ihKiaNTqQM9G', '2021-12-08 08:39:17', '2021-12-08 08:39:17'),
(60, 'Md. Ariful Islam', 'hmarif.nazir@gmail.com', '1510', 1, '01858380039', '1510-61b20b7ebe8fc.jpg', NULL, '$2y$10$f8GBQbQeCC5WcfvXtYSUeOv2pEzCBCyVp0q1/AxIsJl6MJ2FKUWB.', 'lCQxWy63vB89uCEQuCIBVC66pHeTb853RijJzM8PLXL5hhnstQZmgb3oOslC', '2021-12-08 08:42:47', '2021-12-09 13:58:22'),
(61, 'basir20basir', 'basir20basir@gmail.com', '9590', 1, '87876565432', NULL, NULL, '$2y$10$NHvUDnR3n2H0Ntw0CFchMeGbQzshu1wF30abGGxWTSkFKG6KDUFP2', 'l7jUqui0F7MQO6dSVaVWn9nuCouPJzXsaxFaqd8dCzDtaJSbO1i3ZTd0Lu3o', '2021-12-08 09:02:59', '2021-12-08 09:02:59'),
(62, 'labibaltasfi5', 'labibaltasfi5@gmail.com', '289', 1, '98987656453', NULL, NULL, '$2y$10$mpH8jnKwShEWm4DGT7xklOZE5EW4SEvxvU8Iyvi.S9kQ2srQD1kPC', 'kWsQ8cfIC4Qut3UwaGKIsz6BnCQtfAlEOt8q6hmFnF5gvWP7aK82i5mCJhkH', '2021-12-08 09:04:22', '2021-12-15 16:21:12'),
(63, 'shohas563', 'shohas563@gmail.com', '7061', 1, '87866543241', NULL, NULL, '$2y$10$SSk.wQDTGujrx9XeXj/NJe/xRkQatHcar5nvSuMi96lJGKjzyAT6e', 'NlrGPMf55sUOwgzVA2gz8jpZfSQyQN4rICgpLZvO6o9dc3qdFHij41UWKnI8', '2021-12-08 09:05:53', '2021-12-08 09:05:53'),
(64, 'hasiburttt', 'hasiburttt@gmail.com', '6802', 1, '676543456789', NULL, NULL, '$2y$10$xZ1tEuyoWux6qVM314MIVux27oXK514mSg76iAu3a.o7ReBbXN0u2', 'JWF3IF9xTexaA02m372ctDvUyKQ26syMcbw1eHaGyQsJwhjJ7cCd1z2m1bCI', '2021-12-08 09:11:38', '2021-12-08 09:11:38'),
(65, 'mehedimiraj', 'mehedimiraj7799@gmail.com', '1408', 1, '12345543212', NULL, NULL, '$2y$10$oVseOYPQEzxnt7ZY5zsB7uUuAQKhN1jw56hdqRuEygaJjtaz5px6y', 'Qf31Xgcq5Of8QZSnI1pDNAM8fqsuJ09evdyrCh3hR3LiNc8Okczudy8J2BOP', '2021-12-08 09:14:04', '2021-12-13 16:18:32'),
(66, 'yamina', 'yaminakathyyami@gmail.com', '6551', 1, '89876765432', NULL, NULL, '$2y$10$gLMh5Cdz8bRqPzXEFR0zde1jRWzFbkqzDHhx5K5ZDCr.QMJKj60VG', NULL, '2021-12-08 09:16:46', '2021-12-08 09:16:46'),
(67, 'arifypp', 'arifypp@gmail.com', '3377', 1, '12343212321', NULL, NULL, '$2y$10$HxMvvGptgqm7PZAni3y0oO8wE0OEi7vDgMiiMQOcqRUO9nhXqICEu', NULL, '2021-12-08 09:20:06', '2021-12-14 02:15:05'),
(68, 'mdrakibhossain', 'mdrakibhossain7342@gmail.com', '2574', 1, '98787656767', NULL, NULL, '$2y$10$LHF7Pd5bozGiwtbBt2lKbe4YsHMWIBkHELC0lnkzZ46lxrCnrqmUS', 'xcZxhvD5LWLOjqcnZIp3g71B1H595Mp9YBTzYWx0rAymdCNRMjw2rWjpuf2D', '2021-12-08 09:22:45', '2021-12-08 09:22:45'),
(69, 'skshad', 'skshad5@gmail.com', '2315', 1, '34565434564', '2315-61b244f1a4c69.jpg', NULL, '$2y$10$ONVjShrnfbHC6KCRIDVJTeI7GXzW1E1yY1tizogFwl5cDHbJKPYWG', NULL, '2021-12-08 09:24:39', '2021-12-09 18:03:29'),
(70, 'shabnam', 'shabnam.priyanka@live.ca', '2765', 1, '89765654345', NULL, NULL, '$2y$10$TupdDEwfTAkPcWlf5f8aseMJhQHcjYHQz9XQzT8RqojYMgTVCjeui', NULL, '2021-12-08 09:27:04', '2021-12-08 09:27:04'),
(71, 'arif', 'arifac83@gmail.com', '7937', 1, '90987676543', NULL, NULL, '$2y$10$lNVRNGr5/38U2lQa6gmX4uwReMX11/Ryk9hEL9I598.4Zg3Uh1Lia', NULL, '2021-12-08 09:29:46', '2021-12-08 09:29:46'),
(72, 'sourav.ghose', 'sourav.ghose10@gmail.com', '5566', 1, '89876765432', NULL, NULL, '$2y$10$6nyPDr5p7H2wlc0kveGUsOg79JqkIAnwXNj2moVWxRiHUVcTQ7n3y', NULL, '2021-12-08 09:35:56', '2021-12-14 13:15:07'),
(74, 'axiomdjp', 'axiomdjp@gmail.com', '4681', 1, '09898767654', NULL, NULL, '$2y$10$Gw2HTk0j95xywUdQPCw.EORMLmsWkEvLTwszZqIfhC52fod6pZOfm', 'YZfIfiSNAhDikF2GZDDjkBlMLPTN9z6cB98R7bWeX9bVyiRRTc0a1m0fbZqf', '2021-12-08 09:42:45', '2021-12-08 09:42:45'),
(75, 'chypabitra', 'chypabitra.bd@gmail.com', '2895', 1, '78767654323', '2895-61b37a3951bdf.jpg', NULL, '$2y$10$IuuQvsBq3p8S3qVIw0Zrh.Vut3KTAbkAJ/9b9eJSh8gIgdNe6mrLK', 'aZsd3fwNJwmCEdJYIuzI84kmq2p98ky5TFmnIzArkIxkheOnwYEJl219Mb0j', '2021-12-08 09:45:48', '2021-12-10 16:03:05'),
(76, 'siddique', 'siddique762611@gmail.com', '4307', 1, '09098787654', NULL, NULL, '$2y$10$tpjEbFMbGLtpEycztw.ZOuO4koIu8vfL9MZw18R7pa8JDMx1E6Kwa', 'zBUsH3T0S9ze6NDtHekptQYQQYksE0yRSlMDJUVaD4nUtIAKDSfUq39Nzd0d', '2021-12-08 09:50:13', '2021-12-14 02:24:04'),
(77, 'mehedi', 'mehedimehedihossain@gmail.com', '6018', 1, '89878765465', NULL, NULL, '$2y$10$Pn85DEntoRUZLWH4FzPrB.nOow253r8Rc8FdOx2qyY0/Zv0Rri0Tm', NULL, '2021-12-08 09:54:15', '2021-12-08 09:54:15'),
(78, 'ibnumahtab', 'ibnumahtab@gmail.com', '9533', 1, '+8801620647820', '9533-61b20ff74f804.jpg', NULL, '$2y$10$5T1if29PZEeia23D7r5ycOoljTGUYBxzQady6DHOH8zN5bWvQs5KG', 'YDspCBGwKp2w2BudMfO6ia0wPzmaG33vUVMvfXnSZAIIMw9Bc0AYfI7dZ4b5', '2021-12-08 09:58:28', '2021-12-09 14:17:27'),
(79, 'sahedhasan', 'sahedhasan692@gmail.com', '9686', 1, '98786565434', NULL, NULL, '$2y$10$lbM8WuRZ.Tjvbz/a7Xe/8.mIU43wSY2N6TNQQFPql/kXsZB366dlq', NULL, '2021-12-08 10:01:43', '2021-12-08 10:01:43'),
(80, 'Tanjina', 'ammubappy@gmail.com', '8704', 1, '12343454567', NULL, NULL, '$2y$10$QyQRUlKSXBRk5j6KLApWxOrVfw6Wl8SLkUNbfzrF4xyho1ScEtGVC', NULL, '2021-12-08 10:06:15', '2021-12-08 10:06:15'),
(81, 'Md Sajjad Chy', 'mdsajjadchy11@gmail.com', '965', 1, '01865684361', NULL, NULL, '$2y$10$2RQYd4VmZJey8C/M6lBpxugfv/EMvqngDpt2ht/WLllTwqMVgOdBq', 'wtr5KG8LViFU5Q6ATPNXswE5xWOonxEhsTn5DMpGkwWTlgzbmIiYfU7zd0ox', '2021-12-08 10:09:31', '2021-12-29 03:25:40'),
(82, 'ronyhmd1', 'ronyhmd1@gmail.com', '9611', 1, '01721011050', '9611-61b1fff7d2360.jpg', NULL, '$2y$10$D3.6hz/sTFOP3axqliHqiu1auKKSABR7yszbPlO4I4LnFrhgLtPnG', 'lfQ1Ga5fovlAw4IU3cAXygnlbG0AuFxXocgCrlyTtaGgrW8dBYBQTvayvnQ7', '2021-12-08 10:12:46', '2021-12-09 13:09:11'),
(83, 'fshrabon', 'fshrabon151@gmail.com', '7744', 1, '56545654532', NULL, NULL, '$2y$10$oYbI9IgJMiXATXMTBImB8u5u2.C.iAHbulHyMlkDOk0x/POKmRz2S', NULL, '2021-12-08 10:15:14', '2021-12-08 10:15:14'),
(84, 'Shahriar Shourov', 'srv0018@gmail.com', '7749', 1, '01813821581', '7749-61b1e85ab482a.jpg', NULL, '$2y$10$t8jIaN0UmGJxAJ1H39yL6OjPWcalVmtNQe9ENHNtLdpJLxKc0rWX.', 'o9Nfb5p8KrSPCdQSnhqlIsaVmaD60TLgCFm1vtNvUChvZL6CmLjzEGU5pqkF', '2021-12-08 10:19:39', '2021-12-15 05:28:17'),
(85, 'jobairalam', 'jobairalam.8986@gmail.com', '4619', 1, '78765654342', NULL, NULL, '$2y$10$QUqpUIVNkm4PSKRwnpTfbelQvc1MVphywBF00vDPwF0OUK4Vszjgq', NULL, '2021-12-08 10:25:49', '2021-12-08 10:25:49'),
(86, 'rezwanul', 'rezwanul.haquebd777@gmail.com', '5791', 1, '12345432343', NULL, NULL, '$2y$10$U2xs6/cgwn1/AJYFAi484.AsHU7UtIqPI9QIE8s3eT8ndkhYMMaPu', 'oYfQNWHLApXzG7SrwsUjqyjqsWy7Bq0lN66PM3JUzYp19dya2nSOow2brKAW', '2021-12-08 10:30:08', '2021-12-08 10:30:08'),
(87, 'jebin', 'jebinkhan670@gmail.com', '3683', 1, '89878765654', NULL, NULL, '$2y$10$TB7.N6guVRPZvQsXCQvHR.jZ3q8sVbvaneknVhDz61Br7NEPI5TVW', 'GxdzNyPlWvLRYNMAQ48wRfBleq0dFIsxcNeyhcoVmRx3ahC4OXzI0zqylhDc', '2021-12-08 10:32:43', '2021-12-28 14:45:29'),
(88, 'sagar', 'sagarshammi121@gmail.com', '8034', 1, '12343245432', NULL, NULL, '$2y$10$atFP4/YSGevzs/gdG.bOd.fz3uXZEe3lIAAZte2VA2ldMna4G9FFC', '8xky86WUFUsQQHzZzyGAn379IBxILVGCHXjxF7veIw1fVbdO8AziGWZzNQWh', '2021-12-08 10:37:05', '2021-12-08 10:37:05'),
(89, 'Sajeda Chowdhury', 'sajedachy@gmail.com', '2637', 1, '+8801925016251', '2637-61b2fc03876b0.jpg', NULL, '$2y$10$NIwC70cETiQq/0RwyKWn4OrpctTE6ChKEKZYJZznYELwc1wVj4qBC', 'LVGBpZQmfGCv7kAv4Kn0nBy7X0yFYQGZrHKXpakudUzjDd8HAjW04R4hbxld', '2021-12-08 10:40:04', '2021-12-10 07:04:51'),
(90, 'smsujon', 'smsujon50@gmail.com', '9738', 1, '23456765462', NULL, NULL, '$2y$10$zDqDSuaWAosBiqujvDEoNO7xvagXAU.jcg/dTauOtfAPUMTTEk0mW', 'peyOhWBIyv2fT5HGkcwJrnlt4OiRdyg7YQ78nny3KUCQLAGWUsprwWIY9ypv', '2021-12-08 10:43:05', '2021-12-08 10:43:05'),
(91, 'jesminjuthi', 'jesminjuthi001@gmail.com', '8120', 1, '78765654343', NULL, NULL, '$2y$10$PtOCmTnktqBj78AMOZ9LHOhXNnmj.LXRgokFhAWpwzPiwOI79QZum', 'QKRbd3EBNHovYqP07A3gXLi6AuM4bkUgZlPJdYTTDcy3jDuz8JfnRG6K2rSH', '2021-12-08 10:47:00', '2021-12-08 10:47:00'),
(92, 'ansarullah', 'ansarullah010@gmail.com', '9247', 1, '09087865645', NULL, NULL, '$2y$10$.9D.TDERxhslBhfs2rx/9uBDXDJymUezsbEpvDW5qq2bm7JO9uTc6', NULL, '2021-12-08 10:50:33', '2021-12-08 10:50:33'),
(93, 'alaminkhan', '01.alaminkhan.bd@gmail.com', '3436', 1, '78765454342', NULL, NULL, '$2y$10$3e6nQqXc48rqw4gy6aXy..6lh7FM00arakxGXfxemVV6uxqfIiwaK', '9txYWHRsUhjm0csYdpQLmJRASbk36ifYvkwhj7KNWQPY0d4kJCTM5pJsTg07', '2021-12-08 10:53:30', '2021-12-08 10:53:30'),
(94, 'amaruf', 'amaruf273@gmail.com', '4817', 1, '56765453454', NULL, NULL, '$2y$10$EAOOIY/67MnfspPu4nRttuZG2Gml4..eBeyNFmsGgkMDmXgOMSZW2', 'TlHJByPHhGu8WGh4Lbq9qUgX5AM6QZytp9i3j5DFNNbdkpzkor5uOsje3iDe', '2021-12-08 10:55:45', '2021-12-08 10:55:45'),
(95, 'joysho', 'joysho@gmail.com', '2899', 1, '78767654343', NULL, NULL, '$2y$10$0eFmRNPxtlei8t4JJlhxXu3zELzhzNX.Pt6wDR9i.epAOjtszahya', NULL, '2021-12-08 10:58:43', '2021-12-08 10:58:43'),
(96, 'hasansalman', 'hasansalmanit@gmail.com', '1061', 1, '78765454321', NULL, NULL, '$2y$10$OiUJYejgd6l4fV1.GMuJVOh9.SLNyYijvEMJYqAmSokR6FrQ9cECO', NULL, '2021-12-08 11:00:14', '2021-12-15 03:06:03'),
(97, 'mmohsin', 'mmohsin3212@gmail.com', '2394', 1, '90987654567', NULL, NULL, '$2y$10$hQtrz4Q3Hd7/OasPKx6xHOtdhoAtvXyZBd.3.74Ye.43nNNN7G0gK', 'LZJ4gi9uu5cHNALwA6VwDBtLFtIxi1ncEtZhy4PvqOxDZTOZgz5yF1TlAlt5', '2021-12-08 11:02:24', '2021-12-18 14:25:50'),
(98, 'hasancse14', 'hasancse14@gmail.com', '874', 1, '12343456567', NULL, NULL, '$2y$10$B5jGV8t72GBZk8fCC3ES8uM6GvLTNyy38P3ZAsfmbo9PGldimKV2S', NULL, '2021-12-08 11:04:26', '2021-12-18 08:12:36'),
(99, 'sajalmalo', 'sajalmalo15@gmail.com', '3043', 1, '89876545654', NULL, NULL, '$2y$10$//GXxRdJUIuAcoT78ux6ROd.lsppdlJWcNr446DREixKww8PvPI7u', NULL, '2021-12-08 11:06:42', '2021-12-08 11:06:42'),
(100, 'sharifulmamun', 'sharifulmamun7@gmail.com', '2762', 1, '7876565454', NULL, NULL, '$2y$10$6Fh28f8IsV2Gfnz/yfujduykGtrkcX4nPmsSqjP/J5hw54i7M0Ry.', 'hSTifcz7uqg8Sp2XcxMTTqOEZ5TQe529CGXJn5BWTbu335u1W0O4cIDin10R', '2021-12-08 11:08:41', '2021-12-13 14:31:35'),
(101, 'MD. TAJUL ISLAM', 'tj.career2014@gmail.com', '1683', 1, '01918350165', '1683-61b8ab81bab87.jpg', NULL, '$2y$10$by8fBIo3hh1Lfp.ugPmGPupiM9X1mdNeyHDRM8meXFtnnxNJ1f8NW', 'F3HmaxitZHZBX2WvS4w8rFpXuh5IoH38mhqGJg0gbUlWjTwYhZqrHP0YbkZe', '2021-12-08 11:11:07', '2021-12-28 03:17:38'),
(102, 'marufurr', 'marufurr75@gmail.com', '106', 1, '01705500247', '106-61b407514bffc.jpg', NULL, '$2y$10$gJyhfMNVYdshDpHKIvEyJe4YW7f72w4cbyIfNErf7eqHLAyMj2RYu', 'WdhYkdBWibHxDYLrUSSPRd45hFfV7EdgXra29ADsbE3gHojNXorM5yrQHYb5', '2021-12-08 11:13:46', '2021-12-28 16:19:13'),
(103, 'naz089fvrict', 'naz089fvrict@gmail.com', '1562', 1, '78767654543', NULL, NULL, '$2y$10$kbmSkCuCvwY4jRzG6gMBCuhC.r8SkuvbEGUOlTfNg9RRAVNqLf8va', 'c6W4PYK2jDr9JSLo74rofCRSuSJPCiUq5bZpHBnszdP9NNEF71DXVzv6viIY', '2021-12-08 11:17:21', '2021-12-08 11:17:21'),
(104, 'mdtarekrahman', 'mdtarekrahman209@gmail.com', '3159', 1, '01790213896', '3159-61b7683320d20.jpg', NULL, '$2y$10$8CY9NFuGGYuvOL/.n5SibevXfxkNdUzidZC0VMn51atM4GZQMbarK', 'Vc4PJCpodWt1LkF6Uucyo6sxO0ewQIRKObKZJxvT8KpqpyFSJ4tRWLOUQq2y', '2021-12-08 11:20:39', '2021-12-27 06:04:33'),
(105, 'shaonn', 'shaonn22@gmail.com', '4452', 1, '67656545342', NULL, NULL, '$2y$10$7CIUf1R7MZ0Hyvrw2AR91.vSJy0kw/FVSCG/7saDLJJ1bzG88qoi.', '26vnuNje6djokoSnPMikzB6guk4em5NF5FztiakYFOruXzLnSx0ykPLSwhcO', '2021-12-08 11:24:08', '2021-12-08 11:24:08'),
(106, 'sna4041', 'sna4041@gmail.com', '7559', 1, '343565489876', NULL, NULL, '$2y$10$EeQuGyl8IBTOb3Bkbe.uH.aDFcgWDz4TL6rNbB0YWpWWqYNPx.T4y', 'xzM0fyAxyB5XkES0sFEuncXolxCmk1foGM4M1R7EXDDfUivIQux31KMlnddx', '2021-12-08 11:30:02', '2021-12-16 07:18:46'),
(107, 'khalidhossainbadhon', 'khalidhossainbadhon@gmail.com', '4085', 1, '67656454345', NULL, NULL, '$2y$10$iJVRd420gsa2WZq6YUdruuh4Odc5Wkp3227Ef6ceBQDbOz6UdS6km', NULL, '2021-12-08 11:32:33', '2021-12-08 11:32:33'),
(108, 'shheartless', 'shheartless@gmail.com', '7706', 1, '56543432132', NULL, NULL, '$2y$10$inYjzQAblCfFzrJ6V5yom.w1KxftEPKPHHDpto6rBFVcHiLZuAYMy', NULL, '2021-12-08 11:34:55', '2021-12-08 11:34:55'),
(109, 'tanim.ahmed.nayem', 'tanim.ahmed.nayem@gmail.com', '2043', 1, '78765454323', NULL, NULL, '$2y$10$Zs23cH87antZuDRtUX.hXezV/EVB2pxSq/SmShGFAyYOr49hRqgki', 'BufIlXwlg0NDZbn8lemoy25snsaA6AjgdmJ8Lmt14SRZrwN2OsZGeXpwKDLq', '2021-12-08 11:37:24', '2021-12-08 11:37:24'),
(110, 'm.karimcu', 'm.karimcu@gmail.com', '2294', 1, '67654543432', NULL, NULL, '$2y$10$p.Bg24iMZUdVDoKWfXMTAuodTh2ek6t0BjhBPIBoFVnkadsR/WPmG', 'V9EFcTG7ABaxNsFn4tF5acP3jEGwkA13XZiejrRmEOdJoQi2LqovbFLo1hcq', '2021-12-08 11:39:35', '2021-12-08 11:39:35'),
(111, 'abuabdullah43511', 'abuabdullah43511@gmail.com', '8193', 1, '01684047578', '8193-61b62b411b87e.jpg', NULL, '$2y$10$lr5k3.LjQmeD1Ab9cTZAeuooPTxe08BcWXzNgXXY0wNILy33VYFLm', 'Anleteb9C8CWo7Zip1SuUw0WN4bwA30ehvOn4J445ZjsSi0QIzNcE6DhzFs6', '2021-12-08 11:43:20', '2021-12-12 17:02:57'),
(112, 'mshabujbd', 'mshabujbd06@gmail.com', '2446', 1, '23456545678', NULL, NULL, '$2y$10$jU/mb5DZsOHglhpitEjchO61sz3StuKyur/TN1x4IehA42VisxeWK', 'fWFhhcXsYyIKstJIt6w3WmKmBZU5yEMqSm5Nz5LjaYsNlFf5PmfZdiHKIIhq', '2021-12-08 11:46:38', '2021-12-08 11:46:38'),
(113, 'yousufweb99', 'yousufweb99@gmail.com', '8896', 1, '67654543234', NULL, NULL, '$2y$10$J25YeY0jVDpJN/VXo0lRiu1ZtM03MtRhhYRwZxx1AdvibtbjCJt6W', NULL, '2021-12-08 11:53:48', '2021-12-16 14:07:49'),
(114, 'sudipto', 'sudipto.munna93@gmail.com', '6121', 1, '8767656543', NULL, NULL, '$2y$10$J1VZtYLvk7sBtU1uudmv9u7F2S7ePWfoOduqFqHFv5GsFKN4WZgqS', 'Uj8zO2AucWziSSHP9mr9AtNcTthCQ7M32XSzEjHgenMYABxQNvAW6R2pyFwS', '2021-12-08 11:56:54', '2021-12-08 11:56:54'),
(115, 'meghnadhshaha', 'meghnadhshaha@gmail.com', '1890', 1, '67654543212', NULL, NULL, '$2y$10$a4BwY7xwX8tIagWnYkQWGOxmzevpyrhBkLnhLLLCJwaOZBoQMLoTy', NULL, '2021-12-08 14:08:46', '2021-12-08 14:08:46'),
(116, 'aburaihan115219', 'aburaihan115219@gmail', '7694', 1, '87876565454', NULL, NULL, '$2y$10$R9edj.sQntOHG1Wkj5I4o.azNWEr1hxuXPgWXtDESocepcKFD/D3K', NULL, '2021-12-08 14:13:51', '2021-12-08 14:13:51'),
(117, 'mintuxx16', 'mintuxx16@gmail.com', '7833', 1, '98787876545', NULL, NULL, '$2y$10$OE8cAAXFJZ99eQ5LkCaFt.BRw/b2TRJYucm0UHKmI38/WWf1ALKuK', NULL, '2021-12-08 14:51:07', '2021-12-18 23:50:59'),
(118, 'mdneyazmahmud', 'mdneyazmahmud@gmail.com', '4038', 1, '78765434567', NULL, NULL, '$2y$10$woIxGVQjToBBR4xBjtlRx.rTgw2443IxER5b3ECFw7LjVSBCogP/i', 'mHf9KSKDo6uz0MZFde6JYN2ePd7Fd4pwNuudKWeX5fIOvLGmUAHef7QaGZEi', '2021-12-08 14:55:07', '2021-12-09 12:20:09'),
(119, 'hasan.azwad', 'hasan.azwad@gmail.com', '7587', 1, '89876567654', NULL, NULL, '$2y$10$gPkBQGSyjiVMnJ0L6NQivumIbgLl3K1GO6/9GfQkgL95ySmbWHIVS', NULL, '2021-12-08 14:58:56', '2021-12-08 14:58:56'),
(120, 'csesujon155', 'csesujon155@gmail.com', '701', 1, '78765454342', NULL, NULL, '$2y$10$rri1OQ13i80RpDC1/aK3ceQcOpPfbECKlUsLxfSpkMQM9F7I7vvEq', 'K5McIyplgpXN5chG1vNLQhT8GhR8lfENbVTYpMxYwXl6iqqMAEO1Hah7Vtuf', '2021-12-08 15:02:18', '2021-12-08 15:02:18'),
(121, 'bhawlad', 'bhawlad@gmail.com', '5439', 1, '56765454321', NULL, NULL, '$2y$10$KsPWHzFO58MIczDmLKNhMOgl8whbTeahvNDEGkr/X6lm/C8DDPtoW', 'wlcIjBfZ9TCcpFHNR6eWw1Tdv3ueNSUfrqVEJPLBi6h6Xtb3XuoHSbaq9B8J', '2021-12-08 15:07:03', '2021-12-08 15:07:03'),
(122, 'sulrahim3', 'sulrahim3@gmail.com', '2992', 1, '23432567897', NULL, NULL, '$2y$10$06p7OajuZjiFoP02wo070OSe.2JWf6buv7lDwg4fE3HS4ifnZx4nW', 'U5v5WzoqSNJCkUENxpvpsYSa4AM45oKhtSjp3w1XOS3dcjlvRlnnKovYWXpX', '2021-12-08 15:15:06', '2021-12-08 15:15:06'),
(123, 'bashar.ahmed', 'bashar.ahmed4980@gmail.com', '4531', 1, '90987656765', '4531-61b205a8ddf90.jpg', NULL, '$2y$10$M4A6OOe582ynrMYC3Z6F9eJm.yKlea548.jDUjJLuFUN3kGEcdFLa', 'ynbZ8r71njQhuCHaxaoyaa1XXT7K30n0bYPRLli7ZF5uOfqrEJNwU2Ayxm7R', '2021-12-08 15:18:04', '2021-12-28 06:15:07'),
(124, 'shahriar', 'shahriar.currency@gmail.com', '7109', 1, '78765454343', NULL, NULL, '$2y$10$2kfRixSHYcKG9Cq7CKvRRuD18tPP.CbQfi2cl8YILWptA7NpfmSw.', NULL, '2021-12-08 15:24:07', '2021-12-08 15:24:07'),
(125, 'hafizuddinud', 'hafizuddinud531@gmail.com', '5069', 1, '12343256789', NULL, NULL, '$2y$10$fWWLAbxP.glCRs2vrdrNjeaI78FMksGOZhY1di8OjZ0b159lDJcmq', NULL, '2021-12-08 15:26:42', '2021-12-14 14:10:34'),
(126, 'sprifat58', 'sprifat58@gmail.com', '3653', 1, '67656545678', NULL, NULL, '$2y$10$qkX8Y8B8LnTwa/x905VnFefVPab.PlEE22FViqw6cHcGqUqLWWwqu', NULL, '2021-12-08 15:28:07', '2021-12-08 15:28:07'),
(127, 'aklimashampa', 'aklimashampa2@gmail.com', '4012', 1, '4565376549', NULL, NULL, '$2y$10$v/cqEunRyZQclqMlfBvZ5.3FYWFXQmRaDMIJHzBkmumg6hpGne8Ne', NULL, '2021-12-08 16:14:52', '2021-12-08 16:14:52'),
(128, 'hdsaurav', 'hdsaurav@gmail.com', '9140', 1, '98787656543', NULL, NULL, '$2y$10$0Al/osOsT2Zstk6rD9bjU..NflnS7qB8EDLGKvUprYF4WUsvRsdVa', 'wdGGwydwhzAN2kqKLnbP4Uexl6EXtDEac53UkuPan72VevSo0B3VFdo02Byh', '2021-12-08 16:16:45', '2021-12-08 16:16:45'),
(129, 'touhidul.islam.fahim', 'touhidul.islam.fahim246@gmail.com', '5013', 1, '01916160514', '5013-61b59783298dd.JPG', NULL, '$2y$10$16h/ok0VVlQ2vY7AtK5wzem64wllxxfaPRuiyZYuNQ0vc78IWzzuK', 'paVyJNLhjINB0o6ei3K3puF5JVXsL6bq93YGWgM7dS34NHtHxjyCSllIPSK7', '2021-12-08 16:20:39', '2021-12-12 06:32:35'),
(130, 'sifat980', 'sifat980@gmail.com', '1060', 1, '90987876564', NULL, NULL, '$2y$10$9dBi8DFfeuZeRdibrOMviudcT0C02tzWLu7MKnfEd92xsh/h6mirG', NULL, '2021-12-09 06:28:01', '2021-12-14 19:44:06'),
(131, 'mukta700075', 'mukta700075@gmail.com', '3489', 1, '45434567879', NULL, NULL, '$2y$10$GvxzDTh/sDQN9Ugsrqlo5eDmdF5r.SH3ikuPohaO2LBav10jnlkiu', NULL, '2021-12-09 06:31:10', '2021-12-09 14:32:50'),
(132, 'minhaz.cu', 'minhaz.cu@gmail.com', '9332', 1, '98787656543', NULL, NULL, '$2y$10$ED2dfweL/apW/M0Xrn5jI.PMK8W7y/aWEenYSUtRMjdjpA0mkJF/u', NULL, '2021-12-09 06:32:59', '2021-12-09 06:32:59'),
(133, 'akashcc48', 'akashcc48@gmail.com', '3443', 1, '09876765454', NULL, NULL, '$2y$10$WvMaCQFt/74tG40AqAho6u5Qk5ksvXAacyv5nn2rVdTfx9AC2CMHG', 'kEf5g58lNfNkd6DebM0iMf9fo3XEgEBg6HgTHY4GDvr30vAFWpwQji6DoSiq', '2021-12-09 06:36:47', '2021-12-09 06:36:47'),
(134, 'siumahmed009', 'siumahmed009@gmail.com', '2547', 1, '89876765454', NULL, NULL, '$2y$10$jprNw2GWX9DV4n9DKcLrl.cdXhiNm2AksdxP22R8NBGyiTDZmigNu', NULL, '2021-12-09 06:38:25', '2021-12-27 15:14:51'),
(135, 'rokunuzzamanbhuiya', 'rokunuzzamanbhuiya@gmail.com', '7434', 1, '67654543432', NULL, NULL, '$2y$10$iQqGUkVhsCIZV1x/YObssu7K65Xxsf0uo61aCgSPQ688/Zhd.E2Xe', NULL, '2021-12-09 06:40:33', '2021-12-17 06:15:34'),
(136, 'ark561484', 'ark561484@gmail.com', '3841', 1, '34567656789', NULL, NULL, '$2y$10$jBhbCwQNJyJyfFuqUwzsuOBFYLBSJ4pVYA3Tja4n3UfRsLuh17D32', NULL, '2021-12-09 06:41:53', '2021-12-09 06:41:53'),
(137, 'azim382838', 'azim382838@gmail.com', '1929', 1, '90989876765', NULL, NULL, '$2y$10$TArFlN5uQJ4X1FUDukusROFYSAdmMtgIbh2tFzoF24GEYEebYL73W', 'HMt5nPCKfLJtYESNQs1vwiEtb4ZHBRMSYhuE4K5e2mQqkEFv06u0cgeiL5Lk', '2021-12-09 06:44:40', '2021-12-09 06:44:40'),
(138, 'Rokonuzzaman', 'rokonuzzaman102@gmail.com', '5964', 1, '98987876545', NULL, NULL, '$2y$10$CHiuJBHcpgnaiX0GcrL4zOXeHhEzNAbhDlS1wGSWf/AMeQNR.0Z0i', NULL, '2021-12-09 06:48:56', '2021-12-13 20:45:49'),
(139, 'sbdip1999', 'sbdip1999@gmail.com', '9467', 1, '78767654543', NULL, NULL, '$2y$10$P4G76nnrm3inY42uz2DoJOORGG.yzZ3hAGyIgklqpWciYkOKUhE4K', NULL, '2021-12-09 06:50:39', '2021-12-09 06:50:39'),
(140, 'mdullahdiu14', 'mdullahdiu14@gmail.com', '9070', 1, '67654345432', NULL, NULL, '$2y$10$faEj7gNmWzF.DpOlLrQ5aeK0hQ5O6NggFZDsHlz2180octr22dyBy', NULL, '2021-12-09 06:52:03', '2021-12-16 03:08:17'),
(141, 'abukalam4748', 'abukalam4748@gmail.com', '2074', 1, '09878767654', NULL, NULL, '$2y$10$cFHLoXCH70/WnXgqaAMCm.X5onM6/ARI4iLJc7k5JLMovq4.lN1mG', NULL, '2021-12-09 06:55:25', '2021-12-09 06:55:25'),
(142, 'mrmr5669', 'mrmr5669@gmail.com', '8115', 1, '98987676545', NULL, NULL, '$2y$10$xPrwB.ArnN/O2nnQJJLGvuhMlxiFKufhBCsGj0/Rdja2WHL2jmuea', 'FCmjfwDhwYRnogSx6Ny3OeQchJYcxhQAdqqT2eqCwdkw2UUBHl2RFbarvaZr', '2021-12-09 06:57:31', '2021-12-18 16:14:34'),
(143, 'almasud.online', 'almasud.online@gmail.com', '7487', 1, '34545676787', NULL, NULL, '$2y$10$SOXf7XO05aSfz/5RknqXTe6mHjFHKEAYW8YB7ThI9IOoudZyhS.E2', NULL, '2021-12-09 07:00:03', '2021-12-17 10:26:38'),
(144, 'mohaiminulislamnoqib', 'mohaiminulislamnoqib@gmail.com', '215', 1, '23454345678', NULL, NULL, '$2y$10$M8dIAAuDeQyvfwmxS4AX6eDpvyf7OABPkvX95aYw8dwqkNQuADVMm', NULL, '2021-12-09 07:02:35', '2021-12-09 07:02:35'),
(145, 'sahadathossaien42', 'sahadathossaien42@gmail.com', '2009', 1, '9878767654', NULL, NULL, '$2y$10$stcKvq4PmHFG9FYTUJS4kuBeg.uTlITFTvsQXqb9.DWC55V3SLuky', '6tuhYqYF53z9vKRXNWv15gW4g4SFEGQuWMX7lrRNcdtgPshpPZ5AMuLmOXKN', '2021-12-09 07:03:58', '2021-12-09 07:03:58'),
(146, 'Ehsanul Islam', 'ehsanulislam82@gmail.com', '3360', 1, '01776199121', '3360-61b42dd0ad9f2.jpg', NULL, '$2y$10$l1z15tUMpqN2IiOPEtXs/uiXq/AVjQAXhAukR9trlJzLo8hFA6mj2', 'nvgVnJCz8B9aEYO1ivQu4obroLN3blt5FJWeRTQSGBYYwbLYnVIBKXIlYmC6', '2021-12-09 07:12:54', '2021-12-11 04:49:20'),
(147, 'ahsazzad11', 'ahsazzad11@gmail.com', '1025', 1, '98987676545', NULL, NULL, '$2y$10$BPbXxOdm/aTSBwWWOfvKou4iQgndvyIwLWGqnciSNGCsM58YhzTZa', NULL, '2021-12-09 07:17:36', '2021-12-09 07:17:36'),
(149, 'faysalahmed2811', 'faysalahmed2811@gmail.com', '169', 1, '98987876765', NULL, NULL, '$2y$10$oO6G/gjlcK1tjuVeBgKw2u5XegGeA73Y4SoAu0dXY2NttS6kTUMBm', NULL, '2021-12-09 07:26:36', '2021-12-17 07:25:53'),
(150, 'hossainshakawat434', 'hossainshakawat434@gmail.com', '374', 1, '56765456543', NULL, NULL, '$2y$10$sEkzzyRpm/1lMuGEuzcgaeNml5x7J6E0C8Los5SCU.9LW/zeUbVaq', 'NhJoUnsFLKHi462vZUXq1u9upsk8iytiEhAOQAYBNS1b5f6lN4z4rUpnwMwo', '2021-12-09 07:29:01', '2021-12-09 07:29:01'),
(151, 'sunnymajumder840', 'sunnymajumder840@gmail.com', '4148', 1, '898765656565', NULL, NULL, '$2y$10$rTQVh.kfxcGyudc51xHU.uF2AU.2mR6j/YV1PLghYeZXaZ1UVFuLW', 'oTrq0zaOqp2okOXQRG4WZFRtJAwvkq5O9EiYdBoDXIZEyynHjC598VPv0JGT', '2021-12-09 07:31:01', '2021-12-09 07:31:01'),
(152, 'hridoybanerjee4', 'hridoybanerjee4@gmail.com', '1972', 1, '87876565454', NULL, NULL, '$2y$10$dWS54ujA3cL.1HcBYA7DoeiU280xqqKq5CIQBdNQocY5IHRUN34Ne', 'F7DnvN1Xg1rxImvIjCV8QhcisljuZslhsXRr68b7keTZ8V711fytmZ4CYx6e', '2021-12-09 07:32:43', '2021-12-09 07:32:43'),
(153, 'jahangir245424', 'jahangir245424@gmail.com', '5723', 1, '78767656543', NULL, NULL, '$2y$10$P.DTQ7y0SuWENd9iOGQRrObO.bIbEbhmtPWUjZRC7ebjJhyj1FjNS', NULL, '2021-12-09 07:34:44', '2021-12-09 07:34:44'),
(154, 'hmmroni', 'hmmroni@gmail.com', '4354', 1, '98787676565', NULL, NULL, '$2y$10$IDgHoIKdNaV/KBBEauby1OqVo1Ltj.lvUoH2CC/d7oH5RVOlUWy9m', NULL, '2021-12-09 07:37:20', '2021-12-09 07:37:20'),
(155, 'imransaheb1994', 'imransaheb1994@gmail.com', '8719', 1, '898787656654', NULL, NULL, '$2y$10$Rk7CalgOIV/sYZYiZb4QN.ry9QLXip76Af.ymHTkYXIEUNbGWWP2e', NULL, '2021-12-09 07:40:17', '2021-12-09 07:40:17'),
(156, 'Sakibridwan23', 'Sakibridwan23@gmail.com', '3917', 1, '89876545434', NULL, NULL, '$2y$10$bO6VwTkA.A/E450eePjnWuFtvemZdIH/ArZCB7p2ZMdrtrYPEUGI.', 'tAPNiwf5WfxV6pKLrAhCH1f8YzPQMhpowwIrT3XOI7GfdwW3zmCJGj3aMRfJ', '2021-12-09 07:42:15', '2021-12-09 07:42:15'),
(157, 'bachankubi', 'bachankubi@gamil.com', '2411', 1, '89876765454', NULL, NULL, '$2y$10$0Ht5TLIvI1KM8o7aUi3FNOm/Xwym2ypkvR22fqkT92KL/QtKdvqvm', 'mSGiCeXg3tBQVXPUypH8ZtZRRG4WiN0YMqU79haLfgw4VrrIk80utFFJ01n8', '2021-12-09 09:00:30', '2021-12-13 12:22:24'),
(158, 'rroy35006', 'rroy35006@gmail.com', '3698', 1, '67656545678', NULL, NULL, '$2y$10$p6yKadEjTxBDYUrGPObWBue0o3mUe0X8MwEExUaQc/exg7vMfwXpa', NULL, '2021-12-09 09:46:23', '2021-12-09 09:46:23'),
(159, 'shibenr0', 'shibenr0@gmail.com', '2691', 1, '56765434321', NULL, NULL, '$2y$10$TNMFVuVAqYYZuT4GsSJ/deNdR4yBjtcISq2Nzmudy2HJGDuOdGWfa', 'Ib2Wv1t41yiKv9rDXMkZ9JxZcnQXnR83oAmc3iogFtgOoOUfYzW3sZvBwx7T', '2021-12-09 09:47:41', '2021-12-28 04:42:07'),
(160, 'abcuse88', 'abcuse88@gmail.com', '6871', 1, '89876565432', NULL, NULL, '$2y$10$visS41n0MU7U8C.6fzKWte9Ch.P/1b7Ctu5QUH4Kz.Qkb3Z5ZYEGq', '8nGqI2CFywoO80wN6uIqv5Nr2qvVke8OlgitCQcK67iGUh7HZFsoZshYhtVU', '2021-12-09 09:50:46', '2021-12-09 09:50:46'),
(161, 'roctim1991', 'roctim1991@gmail.com', '4655', 1, '56765434567', NULL, NULL, '$2y$10$dovoECZr2WDe.WC2ioqYtO1hKv4wUG5DLyYUSaDJI2FxS1mv1UDdO', NULL, '2021-12-09 09:51:56', '2021-12-09 09:51:56'),
(162, 'writetosaleh', 'writetosaleh@gmail.com', '1597', 1, '78765454321', NULL, NULL, '$2y$10$gQgrgE6bqnKKkz5Uz60gke0fD6CNyefaqYRf5OiO435a1pBA7Tsrq', NULL, '2021-12-09 09:54:04', '2021-12-09 09:54:04'),
(163, 'asad', '01913404212.asad@gmail.com', '3976', 1, '67654543232', NULL, NULL, '$2y$10$KNtENbcuyPoAeRJfthUeF.BdUru5AgYc6o1tpHHDWDoZQJ5RyYBti', NULL, '2021-12-09 09:55:54', '2021-12-09 09:55:54'),
(164, 'ruhizannat', 'ruhizannat71@gmail.com', '7016', 1, '98767654543', NULL, NULL, '$2y$10$7oag8Zd4JFYNwln3S9dWH.vyntXbK5T22Pb/5brDpnKOpq2psDe4.', '9FR5uxbX4aDetlaCRK3pQEl1CFsyOElEtQS5YPBDYJyhvnhIE2fe4mzmS97p', '2021-12-09 09:58:42', '2021-12-09 09:58:42'),
(165, 'rezwanul2001', 'rezwanul2001@gmail.com', '2122', 1, '89876545487', NULL, NULL, '$2y$10$kGCfeuTMagoBFTRD7m4VLumkWzv322jeI.9RsA.dhj867BGXq8CWe', NULL, '2021-12-09 10:00:41', '2021-12-18 15:18:15'),
(166, 'Imran Hossain', 'imranmihnhossain@gmail.com', '9613', 1, '01517124486', NULL, NULL, '$2y$10$H4/uCLhY3w1H2qVVq.4LSOlFdEoft3LhwhUS6YIa6tEoiba7BHCFG', 'uFI7If6SZ2gwvhU79UUpHHaONcNHPb416jS8rZj75wOYLxp4Lj6CJveE3Slp', '2021-12-09 12:52:42', '2021-12-09 12:52:42'),
(167, 'imrancinra', 'imrancinra3446@gmail.com', '7424', 1, '56545434323', NULL, NULL, '$2y$10$mjRjd5QbA6dIoqircCnTouLKNgHWFwLFe7AoAXWGvAlSsb5YGbgou', NULL, '2021-12-09 13:08:00', '2021-12-09 13:08:00'),
(168, 'Imran', 'imranfullstack0@gmail.com', '4513', 1, '+15238611351', NULL, NULL, 'f7f481e116fa0ad86ffa38bca2f68c18', 'YR69uzyk6rWsSfzlTj36tUiZCJm1elAH28qMEjupqgz7Mp4QZZamDvh6BjfR', '2021-12-09 16:31:02', '2021-12-09 16:31:02'),
(169, 'Md. Habibur Rahman', 'saimun273@gmail.com', '3710', 1, '01788417961', '3710-61ba01abab0cf.jpg', NULL, '$2y$10$ncsp1dYV5ZO97mglNRT6eOsg9HePrdokIG4A48zCZiT9ZjogwyGKq', 'vuf8jHZ9xooFhA9T6OGYOZzftNI1IAdcAyIeySWKzvQSYLu24GsinyZr6NmJ', '2021-12-09 17:18:30', '2021-12-15 14:54:35'),
(170, 'Ashraf', 'ashrafmmm051@gmail.com', '3812', 1, '000', NULL, NULL, '$2y$10$.OFmh6z5SVjUo1WmzX2Qf.GeuG0tVIm/29S6EysEj2qhV/vpRTbuS', 'CKjZghEZ9oVFCgzczJr55mMVMOzgvSL2wIOOmYZgt8Zfwc9l0PbaLOCQdtMW', '2021-12-09 17:19:25', '2021-12-10 16:43:34'),
(171, 'shamim', 'shamim701.sa@gmail.com', '8252', 1, '98987676545', NULL, NULL, '$2y$10$o.5nbBMAa0GYyLi2aHg9auALNmWVw8gO2h4b1Ba4aRGuN9iTn52.O', '4RgjEpgMSmPUXw30pAbOvs6hfXJD4OsRoT3lLDuSdhVOZY8AyJoKQTlToyO8', '2021-12-10 09:32:28', '2021-12-10 09:32:28'),
(172, 'Pervez  Hossain', 'pervez.hossain.3032@gmail.com', '9030', 1, '000', NULL, NULL, '$2y$10$OhMT0W/PPkpSKcLS8gwIPu7I1TrNndchJhmLc/4WiNDBiGNGZICta', 'djBJApYVw8wvO37QgdREMpu6fVLrIo1hKOw0YCCMTTRDjAsncRlNI5do2vZ9', '2021-12-10 14:25:33', '2021-12-29 05:04:30'),
(173, 'Shafiq Ahamed', 'sahamedctgdfl@gmail.com', '5324', 1, '01877728727', NULL, NULL, '$2y$10$NRgv7avpP6G9pgyOrH3f0uncW5MZCuzQHyzCABBSkg7bJezOBPeki', 'SHxDk8kNDTvag9u3N38c180d9H30AiPR4YXimRJvrzGC2nzdyY4ZTheCtQut', '2021-12-10 14:27:41', '2021-12-10 14:27:41'),
(174, 'Md Zahidur Rahman', 'rahmanmdzahidur03@gmail.com', '5262', 1, '01876029206', NULL, NULL, '$2y$10$59PIoAXE/Rk15suapENWvOEdelgOMIyORBRXolrma4LTWHUn9/Tpm', NULL, '2021-12-10 21:08:38', '2021-12-10 21:08:38'),
(175, 'amit.barua', 'amit.barua86@gmail.com', '2916', 1, '01716286910', NULL, NULL, '$2y$10$CiKp6VKdVKauZRWTbCeqHumtlE3jZn8Ecn7joiDPZnmAyXYE/44hO', 'V15G7xwufw0ptHx9p5xaftSYvRcNZc73l3nJp6LGAFWJIlvB12pBIoNZOoOC', '2021-12-11 07:23:51', '2021-12-11 07:23:51'),
(176, 'prodip.tukhor', 'prodip.tukhor@gmail.com', '1460', 1, '12323434545', NULL, NULL, '$2y$10$Uh9mCFsUD9T0bVYYfP5jouPMs0WS2i.AdFGbh7exTuifLaE7uHQ/6', '1TJ5Bj3Mb1BBjSCRABXExXM29Wd3XKi0rAvFh5GO1OV5UXQZNU20Qa1B4CjU', '2021-12-11 08:59:27', '2021-12-15 12:37:20'),
(177, 'fairuzaman40', 'fairuzaman40@gmail.com', '2710', 1, '89876565432', NULL, NULL, '$2y$10$zhFxwVsOWRh5CxBieVJgougTxJykw7CcAsrOAhlWhfekKFGn1vYvy', NULL, '2021-12-11 09:02:20', '2021-12-11 09:02:20'),
(178, 'Shumanhasangbd', 'Shumanhasangbd@gmail.com', '6079', 1, '56545454345', NULL, NULL, '$2y$10$jn.bz5AhGaDn857ENWrnaOHGMI0Awk0coHgE1gpneOqOswjpdHxBK', 'AVMWtrofGtdbgyrutzWBk0ZRorMgQGzSfrFuKLkk6mcDaWorz60uvTKvMmxl', '2021-12-11 09:06:02', '2021-12-18 17:18:04'),
(179, 'ridwanzohir8', 'ridwanzohir8@gmail.com', '4374', 1, '78767656543', NULL, NULL, '$2y$10$fViDjdV.V6GnPfSO45QhpueFHI0ZsYLhHDEIuNdda2Sb7LgIcZKIe', NULL, '2021-12-11 09:09:30', '2021-12-11 09:09:30'),
(180, 'omarfurkan92', 'omarfurkan92@gmail.com', '3982', 1, '67656545432', NULL, NULL, '$2y$10$PsixceTHoYrC4XnfEBF/B.2UagmV96QeK5Ic44BoVLfnfsMU05pVC', NULL, '2021-12-11 09:12:29', '2021-12-28 04:59:21'),
(181, 'nahidhtamim', 'nahidhtamim@gmail.com', '8541', 1, '78767656543', NULL, NULL, '$2y$10$Gf7ONdAY4ZJsfNvOtpmMiuGvIx4mZfQDoBqHf8P25NIriInOFK9wu', 'zFpyKTd7iMPZbb8sjqpOGMA5PLCzoshWYbn7tOl2tNIpyHHcEmqVBmGDwbxq', '2021-12-11 09:15:13', '2021-12-11 09:15:13'),
(182, 'hannanlp', 'abdulhannan.lp@gmail.com', '9429', 1, '01815806080', '9429-61b774131e49c.jpg', NULL, '$2y$10$ZH1s1nCk72YxH0lDkLkcHeIl33LvRemiOApGOReokgkaqa0uh.9/q', 'joNbRgut88AlceycLv99jgot2ACITFdsY5mBpEKYSKVNOwzYrwsr2fzzrb6v', '2021-12-11 09:17:57', '2021-12-13 16:25:55'),
(183, 'ariful.islam0173', 'ariful.islam0173@gmail.com', '9589', 1, '89878765434', NULL, NULL, '$2y$10$ZNWQ7OJ8oBitdu.KEqnEyuQE7gXh6H.McG45GfJgSJ8SGNQOo3IsK', 'NKZIToCzdGM1j1taIkkTMviyh06XGcecE8VkEe3X6GGGsvYpZDn9sSlKD2fj', '2021-12-11 09:21:12', '2021-12-13 14:24:27'),
(184, 'mrid6797', 'mrid6797@gmail.com', '7795', 1, '12345456767', NULL, NULL, '$2y$10$Z6tD.iVerTr936F13CGpCOwH6nvDGAOecs6JbxMaY2fBzFohBdZBq', NULL, '2021-12-11 09:24:04', '2021-12-11 09:24:04'),
(185, 'druntopothik', 'druntopothik@gmail.com', '9567', 1, '098987676545', NULL, NULL, '$2y$10$gysnQ/R.ozFGMgUy6nki2u9//1OUIFFmm.DryYWi44QMYZO88klSe', NULL, '2021-12-11 09:26:03', '2021-12-11 09:26:03'),
(186, 'atifislamriyad176', 'atifislamriyad176@gmail.com', '507', 1, '8787656543', NULL, NULL, '$2y$10$pqsc53frSRFiTBBXT6o32.QlG4tf3/ww9xctFY6M2TAGmnIKsNyhC', NULL, '2021-12-11 09:28:34', '2021-12-11 09:28:34'),
(187, 'imran.h.ovi.95', 'imran.h.ovi.95@gmail.com', '6197', 1, '78767654543', NULL, NULL, '$2y$10$0KjiWIbL3081Ir9ggK.RYusbHEHhWfsAV9sXs/brDKH7/Ng4C5OCq', NULL, '2021-12-11 12:44:10', '2021-12-11 12:44:10'),
(188, 'Md.Rafiqul Islam', 'lakurosi555@gmail.com', '4430', 1, '01815440964', NULL, NULL, '$2y$10$3MEJ4PjdgcX7C8evB/Sft.yFdaOrFl/887tbavUj04eN.ZyxEr8DK', NULL, '2021-12-11 13:51:35', '2021-12-11 13:51:35'),
(189, 'Hridoy Ahmed', 'hridoy.cse171@gmail.com', '3589', 1, '01745934072', NULL, NULL, '$2y$10$sT1xnd.wb02R3dWd6Inze.SPNFsFFO4ioiswSBaBOZWd42sZIrtJG', NULL, '2021-12-12 03:01:13', '2021-12-12 03:01:13'),
(190, 'siammahamud1932', 'siammahamud1932@gmail.com', '5766', 1, '67656545432', NULL, NULL, '$2y$10$KVzc9nflnAGHZOUQ8HC2xO9qDicSxa7HORlPX8iURv683va5VqrN2', NULL, '2021-12-12 07:14:53', '2021-12-28 14:40:17'),
(191, 'info.ashikprofile', 'info.ashikprofile@gmail.com', '8303', 1, '87876754323', NULL, NULL, '$2y$10$cojP6Bl6INWJywY60i1bDuM.SdfhYi1nWji0o/va88.my8pmiwgLy', NULL, '2021-12-12 07:16:19', '2021-12-12 07:16:19'),
(192, 'mdsayedur44', 'mdsayedur44@gmail.com', '9082', 1, '56545434567', NULL, NULL, '$2y$10$2eMWj5Ju/hWZvL6R36ESberW7NRv4DFRrxq15shneK2Bk4QnaUH6.', NULL, '2021-12-12 07:19:03', '2021-12-12 07:19:03'),
(193, 'mdparvejahmed966', 'mdparvejahmed966@gmail.com', '6922', 1, '89876765454', NULL, NULL, '$2y$10$7enEThmJfH3rLKRtueH.GufBesE09FoB01nFxDM1NvejCaB56raTW', NULL, '2021-12-12 07:24:56', '2021-12-12 07:24:56'),
(194, 'mamun', 'mamun@gmail.com', '1551', 1, '474874', NULL, NULL, '$2y$10$Y7xPMeyne9aITxRXzvBAauRGAo7ujUtJEG2K2bGV/tl0sD2p.eE7G', NULL, '2021-12-12 22:40:24', '2021-12-12 22:40:24'),
(195, 'mamun1@gmail.com', 'mamun1@gmail.com', '1556', 1, '+564574854', NULL, NULL, '$2y$10$RZE8uJkwnjW/C0Gfgc3iWec895gOask9NGGRF4U4w9331/U6BqDPO', 'hyTx64PCj7S1zsMmCuk7aSxIAVsdsRub4NG2GLXAntY2ypcOzs5KONGtDi3e', '2021-12-12 22:41:55', '2021-12-12 23:23:21'),
(196, 'zannat nayeem', 'zannatul.nayeem1000@gmail.com', '3312', 1, '01628724661', NULL, NULL, '$2y$10$w2t2cW/P7wAlt6Xmd9zUeOc2sZI1ImJx.XFWtzBZC.w8EbQr2wdwy', NULL, '2021-12-14 15:30:21', '2021-12-17 14:18:56'),
(197, 'Minhaj Rahman', 'minhajrahman981@gmail.com', '3175', 2, '01848072525', '197-61bb86d9b0351.php', NULL, '$2y$10$QbyUIdBbvlDvFGyv0uSgReeEdudpa21ztdcAiDQ.acnLGFq6B0ImW', NULL, '2021-12-16 18:34:19', '2021-12-16 18:35:05'),
(198, 'monaim', 'monaimmukul75@gmail.com', '6360', 1, '01783850584', NULL, NULL, '$2y$10$5MaV/5MoAThatmIupKkpX.i7vqwc9pUwsKnN.JoSXaCCFMYxQBUla', NULL, '2021-12-17 05:55:36', '2021-12-18 06:25:28'),
(199, 'MD. SAMIUL ISLAM SUMAN', 'samiul.islam.suman@gmail.com', '9304', 2, '01861301680', NULL, NULL, '$2y$10$XusTf0Thu.6QMvr5X0JTr.yGE6hfVoj5.LGqmhgI9bv/CSVSNp7kS', NULL, '2021-12-18 11:29:43', '2021-12-18 11:29:43'),
(200, 'Akash Ahammed', 'akash0ahammed@gmail.com', '6012', 1, '01862277943', NULL, NULL, '$2y$10$tPorr0IBXZlLnrefNA/B4ej.kemwUQ2./P7KCfvXf0pr8hrHR5l2e', NULL, '2021-12-18 23:10:23', '2021-12-18 23:10:23'),
(201, 'MD Mazedul Islam', 'mazed.cse@gmail.com', '5528', 1, '01868367706', NULL, NULL, '$2y$10$IsbC/sb9GtlAUA8FBA/lNOD8rKT.7G9VM/eDjkYDJ24a6mFJ1DB5u', 'jlI1PYykMLsonBw2fgCEzvG04JBCflpHnKy2zmy8TJHW5pjMhXwAKu8KnNBo', '2021-12-28 12:31:35', '2021-12-29 04:26:45'),
(202, 'Orla Lamb', 'sulimax@mailinator.com', '9710', 2, '+1 (717) 556-3547', NULL, NULL, '$2y$10$JwapvCf3IVWO11uYmFZyO.xdhp7l83jx99hqy/G2wYT496GcgLYJ6', NULL, '2022-05-30 09:09:13', '2022-05-30 09:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_ip`, `user_id`, `course_id`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(13, '220.247.128.128', 1, 14, 4000, 1, '2021-12-01 17:08:53', '2021-12-01 17:08:53'),
(14, '220.247.128.128', 1, 11, 4000, 1, '2021-12-01 17:09:05', '2021-12-01 17:09:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basicsettings`
--
ALTER TABLE `basicsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseassignments`
--
ALTER TABLE `courseassignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursecategories`
--
ALTER TABLE `coursecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursefaqs`
--
ALTER TABLE `coursefaqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courselessions`
--
ALTER TABLE `courselessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseoutcomes`
--
ALTER TABLE `courseoutcomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courserequirements`
--
ALTER TABLE `courserequirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_user_id_foreign` (`user_id`);

--
-- Indexes for table `coursesections`
--
ALTER TABLE `coursesections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cupons`
--
ALTER TABLE `cupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `instructorps`
--
ALTER TABLE `instructorps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacypolicies`
--
ALTER TABLE `privacypolicies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termsandconditions`
--
ALTER TABLE `termsandconditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `basicsettings`
--
ALTER TABLE `basicsettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=879;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;

--
-- AUTO_INCREMENT for table `contactforms`
--
ALTER TABLE `contactforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courseassignments`
--
ALTER TABLE `courseassignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `coursecategories`
--
ALTER TABLE `coursecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coursefaqs`
--
ALTER TABLE `coursefaqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courselessions`
--
ALTER TABLE `courselessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `courseoutcomes`
--
ALTER TABLE `courseoutcomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `courserequirements`
--
ALTER TABLE `courserequirements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coursesections`
--
ALTER TABLE `coursesections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `cupons`
--
ALTER TABLE `cupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructorps`
--
ALTER TABLE `instructorps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=732;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=779;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacypolicies`
--
ALTER TABLE `privacypolicies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `termsandconditions`
--
ALTER TABLE `termsandconditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
