-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 06:18 PM
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

INSERT INTO `about` (`id`, `branch_id`, `about_content`, `image`, `logo`, `footer_logo`, `favicon`, `fb`, `twitter`, `insta`, `android`, `ios`, `copyright`, `title`, `short_title`, `mobile`, `email`, `address`, `og_image`, `og_title`, `og_description`, `verification`, `is_admin`, `current_version`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '', 'logo-614574114f65a.png', 'footer-614574114e86b.png', 'favicon-61457437643f5.png', NULL, NULL, NULL, 'https://play.google.com/store', 'https://www.apple.com/in/itunes/', 'Copyright © 2020.All Rights Reserved.', 'Restaurant-Food', 'Single restaurant', 'your mobile number', 'youremail@email.com', 'address', 'og_image-6145c214dd0ed.png', 'Restaurant - Multi branch food ordering Website and Delivery Boy App with Admin Panel', 'Restaurant - Multi branch food ordering Website and Delivery Boy App with Admin Panel', NULL, 1, '', '2021-09-18 10:40:20', '2021-09-18 05:10:20'),
(2, 2, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-02-22 05:57:35', '2023-02-22 05:57:35'),
(3, 5, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-02-28 19:39:14', '2023-02-28 19:39:14'),
(4, 15, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-03-27 07:41:13', '2023-03-27 07:41:13'),
(5, 16, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-03-27 07:41:44', '2023-03-27 07:41:44'),
(6, 17, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'your mobile number', 'youremail@email.com', 'address', NULL, NULL, NULL, NULL, 2, '', '2023-03-27 07:42:13', '2023-03-27 07:42:13');

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
(8, 17, 0, 6, 'category', 'banner-642af18954b17.png', '2023-04-03 08:32:25', '2023-04-03 08:32:35');

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
(7, 17, 'Minuman', 'category-642af17e8b3ac.png', 1, 2, '2023-04-03 08:32:14', '2023-04-03 08:32:14');

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
(1, 2, 1, 'item-63f612151aa6c.jpg', '2023-02-22 06:01:09', '2023-02-22 06:01:09');

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
(7, 17, 'Minuman Hore', 'Minuman Hore', 'slider-642af16beb856.jpg', '2023-04-03 08:31:55', '2023-04-03 08:31:55');

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
(1, 2, 'Monday', '12:00am', '11:59pm', 2, '2023-02-22 05:57:35', '2023-02-22 05:57:35'),
(2, 2, 'Tuesday', '12:00am', '11:59pm', 2, '2023-02-22 05:57:35', '2023-02-22 05:57:35'),
(3, 2, 'Wednesday', '12:00am', '11:59pm', 2, '2023-02-22 05:57:35', '2023-02-22 05:57:35'),
(4, 2, 'Thursday', '12:00am', '11:59pm', 2, '2023-02-22 05:57:35', '2023-02-22 05:57:35'),
(5, 2, 'Friday', '12:00am', '11:59pm', 2, '2023-02-22 05:57:35', '2023-02-22 05:57:35'),
(6, 2, 'Saturday', '12:00am', '11:59pm', 2, '2023-02-22 05:57:35', '2023-02-22 05:57:35'),
(7, 2, 'Sunday', '12:00am', '11:59pm', 2, '2023-02-22 05:57:35', '2023-02-22 05:57:35'),
(8, 5, 'Monday', '12:00am', '11:59pm', 2, '2023-02-28 19:39:14', '2023-02-28 19:39:14'),
(9, 5, 'Tuesday', '12:00am', '11:59pm', 2, '2023-02-28 19:39:14', '2023-02-28 19:39:14'),
(10, 5, 'Wednesday', '12:00am', '11:59pm', 2, '2023-02-28 19:39:14', '2023-02-28 19:39:14'),
(11, 5, 'Thursday', '12:00am', '11:59pm', 2, '2023-02-28 19:39:14', '2023-02-28 19:39:14'),
(12, 5, 'Friday', '12:00am', '11:59pm', 2, '2023-02-28 19:39:14', '2023-02-28 19:39:14'),
(13, 5, 'Saturday', '12:00am', '11:59pm', 2, '2023-02-28 19:39:14', '2023-02-28 19:39:14'),
(14, 5, 'Sunday', '12:00am', '11:59pm', 2, '2023-02-28 19:39:14', '2023-02-28 19:39:14'),
(15, 15, 'Monday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:13', '2023-03-27 07:41:13'),
(16, 15, 'Tuesday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:13', '2023-03-27 07:41:13'),
(17, 15, 'Wednesday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:13', '2023-03-27 07:41:13'),
(18, 15, 'Thursday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:13', '2023-03-27 07:41:13'),
(19, 15, 'Friday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:13', '2023-03-27 07:41:13'),
(20, 15, 'Saturday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:13', '2023-03-27 07:41:13'),
(21, 15, 'Sunday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:13', '2023-03-27 07:41:13'),
(22, 16, 'Monday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:43', '2023-03-27 07:41:43'),
(23, 16, 'Tuesday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:43', '2023-03-27 07:41:43'),
(24, 16, 'Wednesday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:44', '2023-03-27 07:41:44'),
(25, 16, 'Thursday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:44', '2023-03-27 07:41:44'),
(26, 16, 'Friday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:44', '2023-03-27 07:41:44'),
(27, 16, 'Saturday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:44', '2023-03-27 07:41:44'),
(28, 16, 'Sunday', '12:00am', '11:59pm', 2, '2023-03-27 07:41:44', '2023-03-27 07:41:44'),
(29, 17, 'Monday', '12:00am', '11:59pm', 2, '2023-03-27 07:42:13', '2023-03-27 07:42:13'),
(30, 17, 'Tuesday', '12:00am', '11:59pm', 2, '2023-03-27 07:42:13', '2023-03-27 07:42:13'),
(31, 17, 'Wednesday', '12:00am', '11:59pm', 2, '2023-03-27 07:42:13', '2023-03-27 07:42:13'),
(32, 17, 'Thursday', '12:00am', '11:59pm', 2, '2023-03-27 07:42:13', '2023-03-27 07:42:13'),
(33, 17, 'Friday', '12:00am', '11:59pm', 2, '2023-03-27 07:42:13', '2023-03-27 07:42:13'),
(34, 17, 'Saturday', '12:00am', '11:59pm', 2, '2023-03-27 07:42:13', '2023-03-27 07:42:13'),
(35, 17, 'Sunday', '12:00am', '11:59pm', 2, '2023-03-27 07:42:13', '2023-03-27 07:42:13');

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
(1, 'Admin', 'admin@gmail.com', '+917016428845', 'unknown.png', '$2y$10$a4n2c7PBbSY86G1KpApyau5QT9LzJRuCeCcgk5xtasjk0FYEUDY1m', 'email', NULL, NULL, 1, '$', 10, 10, 100000, NULL, NULL, 'map_key', 'firebase_key', 'Asia/Kolkata', 'fB74CmJfRi6wXUzMv0M6Da:APA91bEabuD-pGyii4PDQ1OMv_FNbr9G5fJ0MRL9R1CNKQ61ao-aXUxEzcHiPCpTSCaJ94DQNER7eMl6G9tYpGC7BP_SOnNe6KjImQRJ3q1j-UrWMENkR5GeRUBwy3pa22AUZ9L9Uo9r', '50', '0', NULL, 1, NULL, NULL, NULL, '2020-06-05 07:21:20', '2023-04-03 08:49:09'),
(6, 'naufaldewa1', 'naufaldewa1@gmail.com', '+91123', 'unknown.png', '$2y$10$j2rhi8s9uNmfg1Z6PAMnAOsYZB68pbdBu4YRt7pjhLHi8bx1VblS2', 'email', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'To5GtQy8xr', 1, '576370', 2, NULL, '2023-02-28 20:00:44', '2023-02-28 20:01:05'),
(13, 'contoh masbro', 'spensakrasolo@gmail.com', '123', 'profile-64141328c5190.png', '', 'google', '116556270209453225754', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'P4lNRAe9DW', 1, NULL, 1, NULL, '2023-03-13 21:41:23', '2023-03-17 00:13:44'),
(14, 'AAAAAAAA', 'dewantoronaufal@student.uns.ac.id', '12222', 'unknown.png', '', 'google', '110702755060140701675', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'ijahMewQrN', 1, '956196', NULL, NULL, '2023-03-16 20:23:56', '2023-03-16 20:24:03'),
(15, 'Kedai Koffi', 'branch1@gmail.com', '000', 'branch-6421ab0919046.png', '$2y$10$b5nvJm8dXnCuyB.J/EaVweKwPOanFX5BRGHWae5PvP6ycp342E9KW', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 1, NULL, NULL, NULL, '2023-03-27 07:41:13', '2023-03-27 07:41:13'),
(16, 'Kedai Mami', 'branch2@gmail.com', '0123', 'branch-6421ab27e0889.webp', '$2y$10$2hcZfoFFSycvGYNpNvdjKOXiNKv8qQNS3homRVIfw6mMAJ286ljfi', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 1, NULL, NULL, NULL, '2023-03-27 07:41:43', '2023-03-27 07:41:43'),
(17, 'Warung Hore', 'branch3@gmail.com', '000656', 'branch-6421ab4529033.png', '$2y$10$X6e.bo7Ik.7ww7IgZ.gCs.20aZ3CKaSSDCGmEbgKtFhvvJsroH2OW', '', NULL, NULL, 4, NULL, 10, 10, 100, '40.7128', '-74.0060', NULL, NULL, NULL, '', NULL, '00', NULL, 1, NULL, NULL, NULL, '2023-03-27 07:42:13', '2023-04-03 08:43:26'),
(32, 'Naufal Dewantoro', 'anggawijaya7285@gmail.com', '1231313', 'unknown.png', '', 'google', '116242799853370227862', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'gbHXQoDZjG', 1, NULL, 1, NULL, '2023-04-03 07:53:32', '2023-04-03 07:56:10'),
(33, 'Naufal Dewa', 'naufalbismania@gmail.com', '123131', 'unknown.png', '', 'google', '103574347020030809452', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'uQ3Hk1eMUh', 1, NULL, 1, NULL, '2023-04-03 08:00:20', '2023-04-03 08:01:12'),
(34, 'Naufal Dewa', 'naufalbismania@gmail.com', '123131', 'unknown.png', '', 'google', '103574347020030809452', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'uQ3Hk1eMUh', 1, NULL, 1, NULL, '2023-04-03 08:00:26', '2023-04-03 08:01:12'),
(35, 'Naufal Dewa', 'naufalbismania@gmail.com', '123131', 'unknown.png', '', 'google', '103574347020030809452', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'uQ3Hk1eMUh', 1, NULL, 1, NULL, '2023-04-03 08:00:51', '2023-04-03 08:01:12'),
(37, 'User', 'foodcourtkenangan23@gmail.com', '+911231313123131', 'unknown.png', '$2y$10$0mHB/8G6dFikYxKq/YoO7eICmvVK261/G82r0Hw9.HNBvqrUbu.HW', 'email', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'b2ToNg6qwL', 1, NULL, 1, NULL, '2023-04-03 09:16:42', '2023-04-03 09:16:57');

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
(1, 2, 1, '1', '2', '1', '2023-02-22 13:01:09', '2023-02-22 13:01:09');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `variation`
--
ALTER TABLE `variation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
