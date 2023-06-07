-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 05:16 PM
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
-- Database: `foodcourt2`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `about_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Admin , 2 = Branch',
  `current_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `branch_id`, `about_content`, `title_content`, `image`, `logo`, `footer_logo`, `favicon`, `fb`, `twitter`, `insta`, `android`, `ios`, `copyright`, `title`, `short_title`, `mobile`, `email`, `address`, `og_image`, `og_title`, `og_description`, `verification`, `is_admin`, `current_version`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '0', '', 'logo-642e9679eef4f.png', 'footer-642e9679ece4b.png', 'favicon-642e9679edd3e.png', NULL, NULL, NULL, NULL, NULL, NULL, 'Kenangan App', 'Kenangan Food Court', 'your mobile number', 'youremail@email.com', 'address', 'og_image-642e9679eff5b.png', 'Food Court Kenangan', 'Food Court Kenangan', NULL, 1, '', '2023-04-06 09:52:57', '2023-04-06 02:52:57'),
(2, 2, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-02-22 05:57:35', '2023-02-22 05:57:35'),
(3, 5, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-02-28 19:39:14', '2023-02-28 19:39:14'),
(4, 15, 'Tenant Kedai Kofee menjual berbagai macam kopi dan makanan enak. Silahkan pilih makanan dan pesan.', 'Kedai Koffi', 'about-642e8405b09a4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', NULL, NULL, NULL, NULL, NULL, 2, '', '2023-06-04 13:06:33', '2023-06-04 06:06:33'),
(5, 16, 'Ini Tenant Fitur', NULL, 'about-6454aeb5b1a77.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1231', 'youremail@email.com', NULL, NULL, NULL, NULL, NULL, 2, '', '2023-06-04 12:36:28', '2023-05-05 00:22:29'),
(6, 17, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-03-27 07:42:13', '2023-03-27 07:42:13'),
(7, 38, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-04-03 22:30:34', '2023-04-03 22:30:34'),
(8, 39, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-04-03 22:43:13', '2023-04-03 22:43:13'),
(9, 40, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-04-05 21:39:38', '2023-04-05 21:39:38'),
(10, 41, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-05-03 19:51:39', '2023-05-03 19:51:39'),
(11, 42, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-05-05 00:02:34', '2023-05-05 00:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `branch_id`, `name`, `price`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 15, 'Keju Parut', '4000', 1, 2, '2023-04-05 21:22:21', '2023-05-08 23:41:11'),
(2, 15, 'Susu', '2000', 1, 2, '2023-04-05 21:22:32', '2023-04-05 21:22:32'),
(3, 16, 'Jeruk Belanda', '0', 1, 2, '2023-05-01 21:21:06', '2023-05-01 21:21:06'),
(4, 15, 'Telur', '3000', 1, 2, '2023-05-08 21:37:06', '2023-05-08 21:37:06'),
(5, 15, 'Keju Mozarella', '5000', 1, 2, '2023-05-08 23:40:35', '2023-05-08 23:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_type` int(11) NOT NULL COMMENT '1 = Home, 2 = Work, 3= Other',
  `address` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `landmark` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `building` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `delivery_charge` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `branch_id`, `item_id`, `cat_id`, `type`, `image`, `created_at`, `updated_at`) VALUES
(2, 16, NULL, 2, 'category', 'banner-642aeece03326.png', '2023-04-03 08:20:46', '2023-04-03 08:20:46'),
(3, 16, NULL, 2, 'category', 'banner-642aeeda09f9b.png', '2023-04-03 08:20:58', '2023-04-03 08:20:58'),
(4, 16, NULL, 2, 'category', 'banner-642aeee2ac2bb.jpg', '2023-04-03 08:21:06', '2023-04-03 08:21:06'),
(5, 15, 0, 4, 'category', 'banner-642af10e8ddc9.png', '2023-04-03 08:30:22', '2023-04-03 08:30:47'),
(6, 15, NULL, 4, 'category', 'banner-642af12ea9c8d.png', '2023-04-03 08:30:54', '2023-04-03 08:30:54'),
(7, 15, 0, 4, 'category', 'banner-642af134d8ed6.jpg', '2023-04-03 08:31:00', '2023-04-03 08:31:11'),
(8, 17, 0, 6, 'category', 'banner-642af18954b17.png', '2023-04-03 08:32:25', '2023-04-03 08:32:35'),
(9, 39, 0, 8, 'category', 'banner-642bba11b1af0.png', '2023-04-03 22:47:20', '2023-04-03 22:48:01'),
(10, 39, NULL, NULL, 'category', 'banner-642bba0486609.png', '2023-04-03 22:47:48', '2023-04-03 22:47:48'),
(11, 42, NULL, NULL, 'category', 'banner-6454ac5fbf6be.jpeg', '2023-05-05 00:12:31', '2023-05-05 00:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addons_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addons_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addons_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes . 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `branch_id`, `category_name`, `image`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES
(2, 16, 'Makanan', 'category-642aee36a1749.png', 1, 2, '2023-04-03 08:18:14', '2023-04-03 08:18:21'),
(3, 16, 'Minuman', 'category-642aee45ad9d2.png', 1, 2, '2023-04-03 08:18:29', '2023-04-03 08:18:29'),
(4, 15, 'Makanan', 'category-642af1188647e.png', 1, 2, '2023-04-03 08:30:32', '2023-04-03 08:30:32'),
(5, 15, 'Minuman', 'category-642af11fc5517.png', 1, 2, '2023-04-03 08:30:39', '2023-04-03 08:30:39'),
(6, 17, 'Makanan', 'category-642af17633f57.png', 1, 2, '2023-04-03 08:32:06', '2023-04-03 08:32:06'),
(7, 17, 'Minuman', 'category-642af17e8b3ac.png', 1, 2, '2023-04-03 08:32:14', '2023-04-03 08:32:14'),
(8, 39, 'Snack', 'category-642bb9af9a067.png', 1, 2, '2023-04-03 22:46:23', '2023-04-03 22:46:23'),
(9, 15, 'Unggulan', 'category-642e59a7abe05.png', 1, 1, '2023-04-05 22:33:27', '2023-04-05 22:36:20'),
(10, 1, 'aaa', 'category-643a939e70c88.png', 1, 1, '2023-04-15 05:07:58', '2023-04-15 05:08:51'),
(11, 15, 'aaa', 'category-64591786cc1a8.jpg', 1, 1, '2023-05-08 08:38:46', '2023-05-08 08:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` bigint(20) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `branch_id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(4, 15, 33, 6, '2023-05-17 00:31:55', '2023-05-17 00:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `ingredients` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `branch_id`, `ingredients`, `image`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 15, 'Indomie', 'ingredients-642e4b1294a86.png', 2, '2023-04-05 21:31:14', '2023-04-05 21:31:14'),
(2, 16, 'Jeruk', 'ingredients-64508f9ca9a0f.jpg', 2, '2023-05-01 21:20:44', '2023-05-01 21:20:44'),
(3, 42, 'Kelapa', 'ingredients-6454aca044112.jpg', 2, '2023-05-05 00:13:36', '2023-05-05 00:13:36'),
(4, 16, 'Kelapa', 'ingredients-6454ad657d6f7.jpeg', 2, '2023-05-05 00:16:53', '2023-05-05 00:16:53'),
(5, 15, 'Ayam', 'ingredients-6459cdc5e8a4d.jpg', 2, '2023-05-08 21:36:21', '2023-05-08 21:36:21'),
(6, 15, 'Ikan', 'ingredients-6459e921d0a61.jpg', 2, '2023-05-08 23:33:05', '2023-05-08 23:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addons_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredients_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `branch_id`, `cat_id`, `item_name`, `addons_id`, `ingredients_id`, `item_description`, `delivery_time`, `tax`, `item_status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(2, 15, 4, 'Mie Goreng', '1,2', '', 'Mie Goreng Enak', '5', '0', 1, 1, '2023-04-05 21:29:39', '2023-04-05 21:31:33'),
(3, 15, 4, 'Mie Goreng', '1,2', '', 'Mie Goreng Enak', '5', '0', 1, 1, '2023-04-05 21:30:05', '2023-04-05 21:31:35'),
(4, 15, 4, 'Mie Goreng', '1,2', '1', 'Mie Goreng Enak Coyy', '5', '0', 1, 1, '2023-04-05 21:32:34', '2023-04-12 23:25:48'),
(5, 15, 9, 'Mie Godog', '1,2', '1', 'Mie Godog Enak', '5', '0', 1, 1, '2023-04-05 22:35:06', '2023-04-05 22:36:20'),
(6, 15, 4, 'Mie Goreng', '1,2', '1', 'Enak', '5', '0', 1, 2, '2023-04-12 23:27:08', '2023-04-12 23:27:08'),
(7, 16, 3, 'Minuman Jeruk', '3', '2', NULL, '1', '0', 1, 2, '2023-05-01 21:33:22', '2023-05-01 21:33:22'),
(8, 15, 5, 'Minuman Jeruk', '', '', 'Minuman Jeruk Hangat', '1', '0', 1, 2, '2023-05-04 20:05:27', '2023-05-05 00:04:51'),
(9, 16, 3, 'Minuman Kelapa', '', '4', 'adasdadas', '1', '0', 1, 1, '2023-05-05 00:18:21', '2023-05-05 00:19:50'),
(10, 16, 3, 'Minuman Kelapa', '1,2,3', '4', 'adasdadas', '1', '0', 1, 2, '2023-05-05 00:18:47', '2023-05-05 00:20:45'),
(11, 15, 4, 'Ayam Geprek', '1,4', '5', 'Ayam gerek Kedai Koffi terdapat beberapa varian sambal yang dapat dipilih.', '10', '0', 1, 1, '2023-05-08 21:43:09', '2023-05-08 22:59:11'),
(12, 15, 4, 'Ayam Geprek', '1,4', '5', 'Ayam geprek Kedai Koffi terdapat beberapa varian sambal yang dapat dipilih.', '10', '0', 1, 1, '2023-05-08 21:45:01', '2023-05-08 22:59:07'),
(13, 15, 4, 'Ayam Geprek', '1,4,5', '5', 'Ayam Geprek Kedai Koffi terdiri dari beberapa varian sambal.', '10', '0', 1, 1, '2023-05-08 23:52:01', '2023-05-08 23:53:27'),
(14, 15, 4, 'Ayam Geprek', '1,4,5', '5', 'Ayam Geprek Kedai Koffi terdiri dari beberapa varian sambal.', '10', '0', 1, 2, '2023-05-08 23:52:58', '2023-05-08 23:52:58'),
(15, 15, 5, 'Es Teh', '1', '1', NULL, '1', '0', 1, 2, '2023-05-28 07:01:27', '2023-05-28 07:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `branch_id`, `item_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'item-63f612151aa6c.jpg', '2023-02-22 06:01:09', '2023-02-22 06:01:09'),
(2, 0, 4, 'item-642e4b9ddcab9.jpeg', '2023-04-05 21:33:33', '2023-04-05 21:33:33'),
(3, 15, 5, 'item-642e5a0aaa58e.jpg', '2023-04-05 22:35:06', '2023-04-05 22:35:06'),
(4, 15, 6, 'item-6437a0bcbf187.jpeg', '2023-04-12 23:27:08', '2023-04-12 23:27:08'),
(5, 16, 7, 'item-645092920bd9d.jpg', '2023-05-01 21:33:22', '2023-05-01 21:33:22'),
(6, 15, 8, 'item-64547277d7376.jpg', '2023-05-04 20:05:27', '2023-05-04 20:05:27'),
(7, 16, 10, 'item-6454add7ef827.jpg', '2023-05-05 00:18:47', '2023-05-05 00:18:47'),
(8, 0, 9, 'item-6454ae0aefd68.jpg', '2023-05-05 00:19:38', '2023-05-05 00:19:38'),
(9, 15, 14, 'item-6459edca410af.jpg', '2023-05-08 23:52:58', '2023-05-08 23:52:58'),
(10, 15, 15, 'item-64735eb72c26e.jpeg', '2023-05-28 07:01:27', '2023-05-28 07:01:27');

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
(6, '2020_06_05_070854_create_categories_table', 2),
(7, '2020_06_05_103122_create_item_table', 3),
(9, '2020_06_05_110205_create_item_images_table', 4),
(10, '2020_06_05_125414_create_ingredients_table', 5),
(14, '2020_06_06_055110_create_cart_table', 6),
(16, '2020_06_07_051607_create_order_table', 7),
(18, '2020_06_07_063234_create_order_details_table', 8),
(19, '2020_06_16_094849_create_ratting_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razorpay_payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Delivery , 2 = Pickup',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promocode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_pr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_amount` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_from` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Unread , 2 = Read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `order_number`, `user_id`, `driver_id`, `branch_id`, `order_total`, `razorpay_payment_id`, `payment_type`, `order_type`, `address`, `pincode`, `lat`, `lang`, `building`, `landmark`, `promocode`, `discount_amount`, `discount_pr`, `tax`, `tax_amount`, `delivery_charge`, `order_notes`, `order_from`, `status`, `is_notification`, `created_at`, `updated_at`) VALUES
(14, 'HL44ZUM3U9', 65, NULL, 15, '13000', NULL, '0', 2, '', '', '', '', '', '', NULL, '0.00', NULL, '0', '0', '0.00', NULL, 'web', 5, 2, '2023-05-28 07:57:36', '2023-06-04 07:53:22'),
(15, 'BHD1VW2CIR', 65, NULL, 15, '7600', NULL, '0', 2, '', '', '', '', '', '', 'RABUHORE', '400', '5', '0', '0', '0.00', NULL, 'web', 6, 2, '2023-05-29 22:07:06', '2023-06-04 07:53:22'),
(16, 'KRS1N61K67', 65, NULL, 15, '28000', NULL, '0', 2, '', '', '', '', '', '', NULL, '0.00', NULL, '0', '0', '0.00', NULL, 'web', 4, 2, '2023-05-30 16:52:41', '2023-06-04 07:53:22'),
(17, '3SXGTONTI0', 33, NULL, 15, '14250', NULL, '0', 2, '', '', '', '', '', '', 'RABUHORE', '750', '5', '0', '0', '0.00', NULL, 'web', 4, 2, '2023-05-30 16:59:08', '2023-06-04 07:53:22'),
(18, '7KJ90PELYC', 33, NULL, 15, '8000', NULL, '0', 2, '', '', '', '', '', '', NULL, '0.00', NULL, '0', '0', '0.00', NULL, 'web', 4, 2, '2023-05-31 00:10:53', '2023-06-04 07:53:22'),
(19, 'YFDEDJ3LNC', 33, NULL, 15, '15000', NULL, '0', 2, '', '', '', '', '', '', NULL, '0.00', NULL, '0', '0', '0.00', NULL, 'web', 4, 2, '2023-05-31 00:13:47', '2023-06-04 07:53:22'),
(20, '0SBQBJZMQJ', 33, NULL, 15, '5000', NULL, '0', 2, '', '', '', '', '', '', NULL, '0.00', NULL, '0', '0', '0.00', NULL, 'web', 4, 2, '2023-05-31 00:16:11', '2023-06-04 07:53:22'),
(21, 'CRK5XKIHUQ', 33, NULL, 16, '5000', NULL, '0', 2, '', '', '', '', '', '', NULL, '0.00', NULL, '0', '0', '0.00', NULL, 'web', 4, 2, '2023-06-04 07:52:02', '2023-06-04 07:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addons_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addons_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addons_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `user_id`, `branch_id`, `order_id`, `item_id`, `item_name`, `item_image`, `addons_price`, `addons_name`, `price`, `variation_id`, `variation_price`, `variation`, `qty`, `item_notes`, `addons_id`, `created_at`, `updated_at`) VALUES
(9, 65, 15, 14, 6, 'Mie Goreng', 'item-6437a0bcbf187.jpeg', NULL, NULL, '8000', '9', '8000', 'Tanpa Telur', '1', NULL, NULL, '2023-05-28 07:57:36', '2023-05-28 07:57:36'),
(10, 65, 15, 14, 15, 'Es Teh', 'item-64735eb72c26e.jpeg', NULL, NULL, '5000', '25', '5000', 'Es', '1', NULL, NULL, '2023-05-28 07:57:36', '2023-05-28 07:57:36'),
(11, 65, 15, 15, 6, 'Mie Goreng', 'item-6437a0bcbf187.jpeg', NULL, NULL, '8000', '9', '8000', 'Tanpa Telur', '1', NULL, NULL, '2023-05-29 22:07:06', '2023-05-29 22:07:06'),
(12, 65, 15, 16, 6, 'Mie Goreng', 'item-6437a0bcbf187.jpeg', NULL, NULL, '8000', '9', '8000', 'Tanpa Telur', '1', NULL, NULL, '2023-05-30 16:52:41', '2023-05-30 16:52:41'),
(13, 65, 15, 16, 14, 'Ayam Geprek', 'item-6459edca410af.jpg', '5000', 'Keju Mozarella', '20000.00', '24', '15000', 'Ayam Geprek Sambal M', '1', NULL, '5', '2023-05-30 16:52:41', '2023-05-30 16:52:41'),
(14, 33, 15, 17, 6, 'Mie Goreng', 'item-6437a0bcbf187.jpeg', NULL, NULL, '10000', '10', '10000', 'Telur', '1', NULL, NULL, '2023-05-30 16:59:08', '2023-05-30 16:59:08'),
(15, 33, 15, 17, 8, 'Minuman Jeruk', 'item-64547277d7376.jpg', NULL, NULL, '5000', '13', '5000', 'Es Jeruk', '1', NULL, NULL, '2023-05-30 16:59:08', '2023-05-30 16:59:08'),
(16, 33, 15, 18, 6, 'Mie Goreng', 'item-6437a0bcbf187.jpeg', NULL, NULL, '8000', '9', '8000', 'Tanpa Telur', '1', NULL, NULL, '2023-05-31 00:10:53', '2023-05-31 00:10:53'),
(17, 33, 15, 19, 14, 'Ayam Geprek', 'item-6459edca410af.jpg', NULL, NULL, '15000', '24', '15000', 'Ayam Geprek Sambal M', '1', NULL, NULL, '2023-05-31 00:13:47', '2023-05-31 00:13:47'),
(18, 33, 15, 20, 15, 'Es Teh', 'item-64735eb72c26e.jpeg', NULL, NULL, '5000', '25', '5000', 'Es', '1', NULL, NULL, '2023-05-31 00:16:11', '2023-05-31 00:16:11'),
(19, 33, 16, 21, 7, 'Minuman Jeruk', 'item-645092920bd9d.jpg', NULL, NULL, '5000', '11', '5000', 'Es Jeruk', '1', NULL, NULL, '2023-06-04 07:52:02', '2023-06-04 07:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payment_name` varchar(50) NOT NULL,
  `is_available` int(11) NOT NULL,
  `test_public_key` text NOT NULL,
  `test_secret_key` text NOT NULL,
  `live_public_key` text DEFAULT NULL,
  `live_secret_key` text DEFAULT NULL,
  `environment` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payment_name`, `is_available`, `test_public_key`, `test_secret_key`, `live_public_key`, `live_secret_key`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'Stripe', 1, 'pk_test_51IjNgIJwZppK21ZQa6e7ZVOImwJ2auI54TD6xHici94u7DD5mhGf1oaBiDyL9mX7PbN5nt6Weap4tmGWLRIrslCu00d8QgQ3nI', 'sk_test_51IjNgIJwZppK21ZQK85uLARMdhtuuhA81PB24VDfiqSW8SXQZKrZzvbpIkigEb27zZPBMF4UEG7PK9587Xresuc000x8CdE22A', NULL, NULL, 1, '2020-12-29 02:15:15', '2021-08-20 08:34:47'),
(2, 'RazorPay', 1, 'rzp_test_4r8y0wDMkrUDFn', 'nEDuJlpL3x2BqHxYlQBYtrto', NULL, NULL, 1, '2020-12-29 02:15:15', '2021-08-20 08:32:24'),
(3, 'COD', 1, '', '', NULL, NULL, 1, '2020-12-29 02:24:50', '2021-06-20 12:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `id` bigint(20) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacypolicy`
--

CREATE TABLE `privacypolicy` (
  `id` int(11) NOT NULL,
  `privacypolicy_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `privacypolicy_content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-13 12:37:35', '2021-02-15 16:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `id` bigint(20) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `offer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promocode`
--

INSERT INTO `promocode` (`id`, `branch_id`, `offer_name`, `offer_code`, `offer_amount`, `description`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 15, 'Rabu Hore', 'RABUHORE', '5', 'Dicoba Yuk', 1, '2023-05-17 00:01:34', '2023-05-17 00:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `ratting`
--

CREATE TABLE `ratting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ratting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19'),
(2, 'user', 'User', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `branch_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 16, 'Kedai Mami Makanan Enak', 'Kedai Mami Makanan Enak', 'slider-642aee97554f6.jpg', '2023-04-03 08:19:51', '2023-04-03 08:19:51'),
(3, 16, 'Kedai Mami Minuman Segar', 'Kedai Mami Minuman Segar', 'slider-642aeef992cad.jpg', '2023-04-03 08:21:29', '2023-04-03 08:21:29'),
(4, 15, 'Makanan Enak', 'Makanan Enak', 'slider-642af0f3ad6a1.jpg', '2023-04-03 08:29:55', '2023-04-03 08:29:55'),
(5, 15, 'Minum Enak', 'Minum Enak', 'slider-642af0fd372cb.jpg', '2023-04-03 08:30:05', '2023-04-03 08:30:05'),
(6, 17, 'Makanan Hore', 'Makanan Hore', 'slider-642af1604e078.jpg', '2023-04-03 08:31:44', '2023-04-03 08:31:44'),
(7, 17, 'Minuman Hore', 'Minuman Hore', 'slider-642af16beb856.jpg', '2023-04-03 08:31:55', '2023-04-03 08:31:55'),
(8, 39, 'asdassdad', 'adad', 'slider-642bba3e3d061.png', '2023-04-03 22:48:46', '2023-04-03 22:48:46'),
(9, 42, 'Slider', 'Slider 1', 'slider-6454ac10e960f.jpg', '2023-05-05 00:11:12', '2023-05-05 00:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `termscondition_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `termscondition_content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-13 12:37:35', '2020-12-31 10:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `day` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `close_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `always_close` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `branch_id`, `day`, `open_time`, `close_time`, `always_close`, `created_at`, `updated_at`) VALUES
(1, 2, 'Monday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(2, 2, 'Tuesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(3, 2, 'Wednesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(4, 2, 'Thursday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(5, 2, 'Friday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(6, 2, 'Saturday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(7, 2, 'Sunday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(8, 5, 'Monday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(9, 5, 'Tuesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(10, 5, 'Wednesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(11, 5, 'Thursday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(12, 5, 'Friday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(13, 5, 'Saturday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(14, 5, 'Sunday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(15, 15, 'Monday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(16, 15, 'Tuesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(17, 15, 'Wednesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(18, 15, 'Thursday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(19, 15, 'Friday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(20, 15, 'Saturday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(21, 15, 'Sunday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(22, 16, 'Monday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(23, 16, 'Tuesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(24, 16, 'Wednesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(25, 16, 'Thursday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(26, 16, 'Friday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(27, 16, 'Saturday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(28, 16, 'Sunday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(29, 17, 'Monday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(30, 17, 'Tuesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(31, 17, 'Wednesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(32, 17, 'Thursday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(33, 17, 'Friday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(34, 17, 'Saturday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(35, 17, 'Sunday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(36, 38, 'Monday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(37, 38, 'Tuesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(38, 38, 'Wednesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(39, 38, 'Thursday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(40, 38, 'Friday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(41, 38, 'Saturday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(42, 38, 'Sunday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(43, 39, 'Monday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(44, 39, 'Tuesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(45, 39, 'Wednesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(46, 39, 'Thursday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(47, 39, 'Friday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(48, 39, 'Saturday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(49, 39, 'Sunday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(50, 40, 'Monday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(51, 40, 'Tuesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(52, 40, 'Wednesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(53, 40, 'Thursday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(54, 40, 'Friday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(55, 40, 'Saturday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(56, 40, 'Sunday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(57, 41, 'Monday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(58, 41, 'Tuesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(59, 41, 'Wednesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(60, 41, 'Thursday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(61, 41, 'Friday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(62, 41, 'Saturday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(63, 41, 'Sunday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(64, 42, 'Monday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(65, 42, 'Tuesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(66, 42, 'Wednesday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(67, 42, 'Thursday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(68, 42, 'Friday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(69, 42, 'Saturday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36'),
(70, 42, 'Sunday', '12:00am', '11:59pm', 2, '2023-05-17 07:00:36', '2023-05-17 00:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  `wallet` varchar(20) NOT NULL,
  `payment_id` text DEFAULT NULL,
  `order_type` int(11) NOT NULL,
  `transaction_type` varchar(255) NOT NULL COMMENT '1 = Cancelled Order, 2 = Order Confirmed, 3 = Referral, 4 = Add Money',
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `user_id`, `order_id`, `order_number`, `wallet`, `payment_id`, `order_type`, `transaction_type`, `username`, `created_at`, `updated_at`) VALUES
(1, 14, NULL, NULL, '111', NULL, 3, '5', NULL, '2023-05-24 00:08:18', '2023-05-24 00:08:18'),
(2, 14, NULL, NULL, '111', NULL, 3, '6', NULL, '2023-05-24 00:08:28', '2023-05-24 00:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_order_qty` int(11) DEFAULT NULL,
  `min_order_amount` int(11) DEFAULT NULL,
  `max_order_amount` int(11) DEFAULT NULL,
  `lat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `referral_amount` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '00',
  `referral_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `otp` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int(11) DEFAULT NULL COMMENT '1 = Yes , 2 = No',
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `profile_image`, `password`, `login_type`, `google_id`, `facebook_id`, `type`, `currency`, `max_order_qty`, `min_order_amount`, `max_order_amount`, `lat`, `lang`, `map`, `firebase`, `timezone`, `token`, `referral_amount`, `wallet`, `referral_code`, `is_available`, `otp`, `is_verified`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '+917016428845', 'unknown.png', '$2y$10$a4n2c7PBbSY86G1KpApyau5QT9LzJRuCeCcgk5xtasjk0FYEUDY1m', 'email', NULL, NULL, 1, 'Rp.', 10, 10, 100000, NULL, NULL, 'map_key', 'firebase_key', 'Asia/Bangkok', 'fB74CmJfRi6wXUzMv0M6Da:APA91bEabuD-pGyii4PDQ1OMv_FNbr9G5fJ0MRL9R1CNKQ61ao-aXUxEzcHiPCpTSCaJ94DQNER7eMl6G9tYpGC7BP_SOnNe6KjImQRJ3q1j-UrWMENkR5GeRUBwy3pa22AUZ9L9Uo9r', '50', '0', NULL, 1, NULL, NULL, NULL, '2020-06-05 07:21:20', '2023-05-09 22:32:10'),
(6, 'naufaldewa1', 'naufaldewa1@gmail.com', '+91123', 'unknown.png', '$2y$10$j2rhi8s9uNmfg1Z6PAMnAOsYZB68pbdBu4YRt7pjhLHi8bx1VblS2', 'email', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'To5GtQy8xr', 1, '576370', 2, NULL, '2023-02-28 20:00:44', '2023-02-28 20:01:05'),
(13, 'contoh masbro', 'spensakrasolo@gmail.com', '123', 'profile-642bb87b22417.png', '', 'google', '116556270209453225754', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'P4lNRAe9DW', 1, NULL, 1, NULL, '2023-03-13 21:41:23', '2023-04-03 22:41:15'),
(15, 'Kedai Koffi', 'branch1@gmail.com', '000', 'branch-6421ab0919046.png', '$2y$10$b5nvJm8dXnCuyB.J/EaVweKwPOanFX5BRGHWae5PvP6ycp342E9KW', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 1, NULL, NULL, NULL, '2023-03-27 07:41:13', '2023-03-27 07:41:13'),
(16, 'Kedai Mami', 'branch2@gmail.com', '0123', 'branch-6421ab27e0889.webp', '$2y$10$2hcZfoFFSycvGYNpNvdjKOXiNKv8qQNS3homRVIfw6mMAJ286ljfi', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 1, NULL, NULL, NULL, '2023-03-27 07:41:43', '2023-03-27 07:41:43'),
(17, 'Warung Hore', 'branch3@gmail.com', '000656', 'branch-6421ab4529033.png', '$2y$10$X6e.bo7Ik.7ww7IgZ.gCs.20aZ3CKaSSDCGmEbgKtFhvvJsroH2OW', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 1, NULL, NULL, NULL, '2023-03-27 07:42:13', '2023-04-09 08:16:02'),
(33, 'Naufal Dewa', 'naufalbismania@gmail.com', '123131', 'unknown.png', '', 'google', '103574347020030809452', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'uQ3Hk1eMUh', 1, NULL, 1, NULL, '2023-04-03 08:00:20', '2023-04-03 08:01:12'),
(34, 'Naufal Dewa', 'naufalbismania@gmail.com', '123131', 'unknown.png', '', 'google', '103574347020030809452', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'uQ3Hk1eMUh', 1, NULL, 1, NULL, '2023-04-03 08:00:26', '2023-04-03 08:01:12'),
(35, 'Naufal Dewa', 'naufalbismania@gmail.com', '123131', 'unknown.png', '', 'google', '103574347020030809452', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'uQ3Hk1eMUh', 1, NULL, 1, NULL, '2023-04-03 08:00:51', '2023-04-03 08:01:12'),
(37, 'User', 'foodcourtkenangan23@gmail.com', '+911231313123131', 'unknown.png', '$2y$10$0mHB/8G6dFikYxKq/YoO7eICmvVK261/G82r0Hw9.HNBvqrUbu.HW', 'email', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'b2ToNg6qwL', 1, NULL, 1, NULL, '2023-04-03 09:16:42', '2023-04-03 09:16:57'),
(38, 'Angkringan Asolole', 'branch4@gmail.com', '123412423232', 'branch-642bb5faafeaa.png', '$2y$10$uXD1InYLL9A6aGp4cpH6IuxU5bnX07JZF/wiW4Zlf.qwvHJzH1Hoe', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 2, NULL, NULL, NULL, '2023-04-03 22:30:34', '2023-05-28 06:40:48'),
(39, 'Warmindo', 'branch5@gmail.com', '132838248727', 'branch-642bb8f1c6d57.webp', '$2y$10$60qyRtfJzVgucBGPnz5FJOtvRXw7lUsa.veM9LS.31XmLrEdQEeSy', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 2, NULL, NULL, NULL, '2023-04-03 22:43:13', '2023-05-28 06:40:53'),
(40, 'Tenant Keren', 'branch6@gmail.com', '24324423', 'branch-642e4d0a6eb5e.png', '$2y$10$ZCb7n9K.899ZgQo4StpKTubUkk4L6dVGfjZWTkezS4RZ04cFsCj2a', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 2, NULL, NULL, NULL, '2023-04-05 21:39:38', '2023-05-28 06:40:56'),
(41, 'Tenant Testing', 'branch20@gmail.com', '081231321412421', 'branch-64531dbbb6e7c.webp', '$2y$10$rYfjAT2Awjyj7k3iJFQY/OXHc1OuRwkgRNbMzAZeSUvrgoLOvu.MW', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 2, NULL, NULL, NULL, '2023-05-03 19:51:39', '2023-05-28 06:40:59'),
(42, 'Tenant TI', 'branch21@gmail.com', '242783237', 'branch-6454aa0a4eee1.jpg', '$2y$10$O8BnceFrJyrVr8xESLySfeRWvnfMg/pwcd5nQvKQBl7VItAZPfgxe', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 2, NULL, NULL, NULL, '2023-05-05 00:02:34', '2023-05-28 06:40:37'),
(65, 'SMP Negeri 3 Karanganyar', 'spengakrasolo@gmail.com', '1231232131', 'unknown.png', '', 'google', '110434264332811358010', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'V6a1tqh3rb', 1, NULL, 1, NULL, '2023-05-28 06:28:58', '2023-05-28 06:28:58'),
(66, 'Naufal Dewantoro', 'anggawijaya7285@gmail.com', '112313121241', 'profile-647357fc9fa18.jpg', '', 'google', '116242799853370227862', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'UywYSF4l5E', 1, NULL, 1, NULL, '2023-05-28 06:31:08', '2023-05-28 06:32:44'),
(67, 'Dewantoro Naufal Sujarwo', 'dewantoronaufal@student.uns.ac.id', '081213131231231231321', 'unknown.png', '', 'google', '110702755060140701675', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', '2j4vIkqHam', 1, NULL, 1, NULL, '2023-05-29 05:03:07', '2023-05-29 05:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `variation`
--

CREATE TABLE `variation` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `product_price` varchar(20) NOT NULL DEFAULT '0',
  `sale_price` varchar(255) NOT NULL DEFAULT '0',
  `variation` varchar(20) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variation`
--

INSERT INTO `variation` (`id`, `branch_id`, `item_id`, `product_price`, `sale_price`, `variation`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '1', '2', '1', '2023-02-22 13:01:09', '2023-02-22 13:01:09'),
(2, 1, 2, '8000', '8000', 'Tanpa Telur', '2023-04-06 04:29:39', '2023-04-06 04:29:39'),
(3, 5, 2, '10000', '10000', 'Dengan Telur', '2023-04-06 04:29:39', '2023-04-06 04:29:39'),
(4, 1, 3, '8000', '8000', 'Tanpa Telur', '2023-04-06 04:30:05', '2023-04-06 04:30:05'),
(5, 5, 3, '10000', '10000', 'Dengan Telur', '2023-04-06 04:30:05', '2023-04-06 04:30:05'),
(6, 15, 4, '8000', '8000', 'Tanpa Telur', '2023-04-06 04:32:34', '2023-04-06 04:35:18'),
(7, 15, 4, '10000', '8000', 'Dengan Telur', '2023-04-06 04:32:34', '2023-04-06 04:35:18'),
(8, 1, 5, '10000', '10000', 'Topping Telur', '2023-04-06 05:35:06', '2023-04-06 05:35:06'),
(9, 1, 6, '8000', '8000', 'Tanpa Telur', '2023-04-13 06:27:08', '2023-04-13 06:27:08'),
(10, 5, 6, '10000', '10000', 'Telur', '2023-04-13 06:27:08', '2023-04-13 06:27:08'),
(11, 1, 7, '5000', '5000', 'Es Jeruk', '2023-05-02 04:33:22', '2023-05-02 04:33:22'),
(12, 6, 7, '4000', '4000', 'Jeruk Hangat', '2023-05-02 04:33:22', '2023-05-02 04:33:22'),
(13, 1, 8, '5000', '5000', 'Es Jeruk', '2023-05-05 03:05:27', '2023-05-05 03:05:27'),
(14, 5, 8, '4000', '4000', 'Jeruk Hangat', '2023-05-05 03:05:27', '2023-05-05 03:05:27'),
(15, 1, 9, '5000', '4000', 'Es Kelapa', '2023-05-05 07:18:21', '2023-05-05 07:18:21'),
(16, 6, 9, '5000', '4000', 'Kelapa Muda', '2023-05-05 07:18:21', '2023-05-05 07:18:21'),
(17, 16, 10, '5000', '4000', 'Es Kelapa', '2023-05-05 07:18:47', '2023-05-05 07:20:45'),
(18, 1, 11, '15000', '15000', 'Ayam Geprek Sambal M', '2023-05-09 04:43:09', '2023-05-09 04:43:09'),
(19, 5, 11, '16000', '16000', 'Ayam Geprek Sambal K', '2023-05-09 04:43:09', '2023-05-09 04:43:09'),
(20, 1, 12, '15000', '15000', 'Ayam Geprek Sambal M', '2023-05-09 04:45:01', '2023-05-09 04:45:01'),
(21, 5, 12, '16000', '16000', 'Ayam Geprek Sambal K', '2023-05-09 04:45:01', '2023-05-09 04:45:01'),
(22, 1, 13, '15000', '15000', 'Ayam Geprek Sambal M', '2023-05-09 06:52:01', '2023-05-09 06:52:01'),
(23, 5, 13, '16000', '16000', 'Ayam Geprek Sambal K', '2023-05-09 06:52:01', '2023-05-09 06:52:01'),
(24, 1, 14, '15000', '15000', 'Ayam Geprek Sambal M', '2023-05-09 06:52:58', '2023-05-09 06:52:58'),
(25, 1, 15, '5000', '0', 'Es', '2023-05-28 14:01:27', '2023-05-28 14:01:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user_id_foreign` (`user_id`),
  ADD KEY `cart_item_id_foreign` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_images_item_id_foreign` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_user_id_foreign` (`user_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratting`
--
ALTER TABLE `ratting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratting_user_id_foreign` (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variation`
--
ALTER TABLE `variation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promocode`
--
ALTER TABLE `promocode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ratting`
--
ALTER TABLE `ratting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `variation`
--
ALTER TABLE `variation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
