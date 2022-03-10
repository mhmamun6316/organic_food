-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 07:02 PM
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
-- Database: `organic_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Mehedi Hassan', 'admin@gmail.com', NULL, '$2y$10$i3w3/IOdWQ49FK1C.hhjX.uGRToOmFzJEQNpUB28PxBHliCLW3f8m', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_bn`, `brand_slug_en`, `brand_slug_bn`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'lux', 'লাক্স', 'lux', 'লাক্স', 'uploads/brand/1721293570976211.jpg', '2022-01-26 10:49:45', '2022-01-26 10:49:45'),
(2, 'Fruit', 'ফল', 'fruit', 'ফল', 'uploads/brand/1721292104844554.jpg', '2022-01-26 10:51:27', '2022-01-26 10:51:27'),
(4, 'HP', 'এইচপি', 'hp', 'এইচপি', 'uploads/brand/1723035086682904.jpg', '2022-01-26 10:52:04', '2022-01-26 10:52:04'),
(5, 'Walton', 'ওয়ালটন', 'walton', 'ওয়ালটন', 'uploads/brand/1723035019258863.jpg', '2022-01-26 10:53:00', '2022-01-26 10:53:00'),
(6, 'Food', 'ফল', 'food', 'ফল', 'uploads/brand/1723040345333484.jpg', '2022-01-26 11:48:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_bn`, `created_at`, `updated_at`) VALUES
(2, 'Vegetables', 'শাকসবজি', '2021-12-01 12:51:44', '2022-02-11 10:26:19'),
(3, 'winter collection', 'শীতকালীন সংগ্রহ', '2021-12-02 11:14:07', '2021-12-02 12:27:19'),
(12, 'Organic Food', 'অরগানিক খাবার', '2022-01-26 11:47:30', '2022-01-26 11:47:30'),
(13, 'Fruits', 'ফল', NULL, '2022-02-11 10:34:30'),
(17, 'Cooking Assessories', 'রান্নার জিনিসপত্র', '2022-02-12 00:10:20', '2022-02-12 00:10:20'),
(18, 'Tea and Coffee', 'চা এবং কফি', '2022-02-12 00:39:21', '2022-02-12 00:39:21'),
(19, 'Fresh Fish and Meat', 'তাজা মাছ এবং মাংস', '2022-02-12 00:46:01', '2022-02-12 00:46:01'),
(20, 'Honey', 'মধু', '2022-02-12 00:56:10', '2022-02-12 06:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(2, 'MM30', 30, '2022-01-27', 1, '2022-01-07 05:22:44', '2022-01-07 05:27:05'),
(3, 'WINTER', 200, '2022-01-29', 1, '2022-01-26 10:27:18', NULL);

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_23_104739_create_sessions_table', 1),
(7, '2021_08_23_110415_create_admins_table', 1),
(8, '2021_12_01_174843_create_categories_table', 2),
(9, '2021_12_02_182917_create_subcategories_table', 3),
(10, '2021_12_03_125042_create_sliders_table', 4),
(11, '2021_12_31_131218_create_products_table', 5),
(13, '2022_01_05_182624_create_brands_table', 7),
(15, '2022_01_07_110726_create_coupons_table', 8),
(16, '2022_01_14_091928_create_multi_imgs_table', 9),
(17, '2022_01_14_095919_create_products_table', 10),
(18, '2022_02_16_184450_create_wishlists_table', 10),
(19, '2022_02_18_084303_create_ship_divisions_table', 11),
(20, '2022_02_18_084444_create_ship_districts_table', 11),
(21, '2022_02_18_084454_create_ship_states_table', 11),
(25, '2022_02_18_104118_create_orders_table', 12),
(26, '2022_02_18_104134_create_order_items_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 9, 'uploads/products/multi-image/1723735362498635.jpg', '2022-01-25 06:38:10', NULL),
(2, 1, 'uploads/products/multi-image/1722952859921689.jpg', '2022-01-25 06:38:11', NULL),
(3, 1, 'uploads/products/multi-image/1722952972327308.png', '2022-01-25 06:38:11', '2022-01-25 06:39:58'),
(4, 2, 'uploads/products/multi-image/1723035677859082.jpg', '2022-01-26 04:34:32', NULL),
(5, 2, 'uploads/products/multi-image/1723035677966926.jpg', '2022-01-26 04:34:32', NULL),
(6, 3, 'uploads/products/multi-image/1723036304155940.jpg', '2022-01-26 04:44:29', NULL),
(7, 5, 'uploads/products/multi-image/1723040691233083.jpg', '2022-01-26 05:54:13', NULL),
(9, 7, 'uploads/products/multi-image/1723269813736032.png', '2022-01-28 18:36:01', NULL),
(10, 7, 'uploads/products/multi-image/1723269813933464.jpg', '2022-01-28 18:36:01', NULL),
(11, 7, 'uploads/products/multi-image/1723269814069005.jpg', '2022-01-28 18:36:02', NULL),
(12, 9, 'uploads/products/multi-image/33.jpg', '2022-02-02 17:06:59', NULL),
(13, 10, 'uploads/products/multi-image/1723717359385181.jpg', '2022-02-02 17:09:34', NULL),
(14, 0, 'uploads/products/multi-image/1723041163954230.jpg', NULL, NULL),
(15, 11, 'uploads/products/multi-image/1723946235802387.jpeg', '2022-02-05 05:47:28', NULL),
(16, 11, 'uploads/products/multi-image/1723946236072425.jpeg', '2022-02-05 05:47:28', NULL),
(17, 12, 'uploads/products/multi-image/1723948297020055.jpg', '2022-02-05 06:20:13', NULL),
(18, 13, 'uploads/products/multi-image/1723950732494587.jpeg', '2022-02-05 06:58:56', NULL),
(19, 14, 'uploads/products/multi-image/1723952276811855.jpg', '2022-02-05 07:23:29', NULL),
(20, 15, 'uploads/products/multi-image/1723954406453079.png', '2022-02-05 07:57:20', NULL),
(21, 16, 'uploads/products/multi-image/1724560866302809.webp', '2022-02-12 00:36:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_method`, `amount`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `delivered_date`, `cancel_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 1, 'Mahedi Hassan', 'mamun@gmail.com', '34234', 234243, 'sfsdf', 'cash_delivery', 80.00, 'SPM28999418', '20 February 2022', 'February', '2022', NULL, NULL, NULL, '2', '2022-08-18 05:15:23', NULL),
(2, 1, 1, 3, 1, 'Mahedi Hassan', 'mamun@gmail.com', '43243', 2344, 'ffsf', 'cash_delivary', 25.00, 'SPM46195943', '20 February 2022', 'February', '2022', NULL, NULL, NULL, '1', '2022-02-18 05:23:05', NULL),
(3, 1, 1, 3, 1, 'Mahedi Hassan', 'mamun@gmail.com', '342', 4234, 'dsdf', 'Nagad', 25.00, 'SPM35052812', '18 February 2022', 'February', '2022', NULL, NULL, NULL, '2', '2022-08-16 05:34:13', NULL),
(4, 1, 1, 3, 1, 'Mahedi Hassan', 'mamun@gmail.com', '424', 4243, 'fsf', 'Nagad', 30.00, 'SPM20574383', '18 February 2022', 'February', '2022', NULL, NULL, NULL, '0', '2022-01-18 05:35:37', NULL),
(5, 1, 2, 1, 2, 'Mahedi Hassan', 'mamun@gmail.com', '3456', 2343, 'sdfgh', 'Bkash', 190.00, 'SPM72635571', '01 March 2022', 'March', '2022', '2022-03-07 20:20:41', NULL, NULL, '1', '2022-02-28 22:36:23', '2022-03-07 14:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 'Yellow', 'medium', '1', 20.00, '2022-02-18 05:15:23', NULL),
(2, 1, 6, 'Red', '500gm', '1', 60.00, '2022-02-18 05:15:23', NULL),
(3, 2, 14, 'Green', 'Medium', '1', 25.00, '2022-02-18 05:23:05', NULL),
(4, 3, 14, 'Green', 'Medium', '1', 25.00, '2022-02-18 05:34:14', NULL),
(5, 4, 16, 'Green', '1 Kg', '1', 30.00, '2022-02-18 05:35:37', NULL),
(6, 5, 14, 'Green', 'Medium', '4', 25.00, '2022-02-28 22:36:23', NULL),
(7, 5, 16, 'Green', '1 Kg', '3', 30.00, '2022-02-28 22:36:24', NULL);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_tags_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_descp_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_descp_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `brand_id`, `category_id`, `subcategory_id`, `product_name_en`, `product_name_bn`, `product_slug_en`, `product_slug_bn`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_bn`, `product_size_en`, `product_size_bn`, `product_color_en`, `product_color_bn`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_bn`, `long_descp_en`, `long_descp_bn`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 2, 1, 'denver dio', 'ডেনভার ডিও', 'denver-dio', 'ডেনভার-ডিও', '23453', '345', 'new,good ,okk', 'joss,valo', '32,545,323', '45,434,232,323', 'red,green,yellow', 'লাল, কালো', '3232', '3000', '<p>sa</p>', '<p>sxasxa</p>', '<p>xsas</p>', '<p>xxsas</p>', 'uploads/products/thambnail/1722952955312275.png', 1, 1, NULL, 1, 1, '2022-01-26 04:48:25', '2022-01-26 04:48:25'),
(2, NULL, 5, 3, 1, 'Monitor', 'মনিটর', 'monitor', 'মনিটর', 'M1291B1', '2', 'bigmonitor', 'বড় মনিটর', '23.8', '২৩.৮', 'shinny black', 'কালো', '14000', '2000', '<p>Big Size Monitor</p>', '<p>&nbsp;বড় মনিটর</p>', '<p>Big Size Monitor with exclusive design</p>', '<p>আকর্ষনীয় ডিজাইনের বড় মনিটর</p>', 'uploads/products/thambnail/1723035677238660.jpg', NULL, NULL, NULL, NULL, 1, '2022-01-26 04:48:05', '2022-01-26 04:48:05'),
(3, NULL, 2, 13, 13, 'Apple', 'fruit', 'fruit', 'fruit', 'Q4202420', '10', 'watermelon', 'তরমুজ', '8kg', '৮', 'red', 'লাল', '400', '80', '<p>Seasonal Fruit</p>', '<p>গ্রীষ্মের ফল</p>', '<p>Seasonal organic fruit with low price&nbsp;</p>', '<p>প্রাকৃতিক খাটি ফল</p>', 'uploads/products/thambnail/1723036303944235.jpg', 1, 1, 1, 1, 1, '2022-01-26 04:47:11', '2022-01-26 04:47:11'),
(4, NULL, 6, 12, 2, 'Yogurt', 'দই', 'yogurt', 'দই', 'Y23411a', '2', 'Yogurt2kg', 'খাটি দই', '2', '২', 'Milky', 'm', '320', '40', '<p>Fresh Yogurt</p>', '<p>দই</p>', '<p>Fresh Yogurt of 2 kg</p>', '<p>খাটি দই ২ কেজি</p>', 'uploads/products/thambnail/1723040661407802.jpg', NULL, NULL, 1, 1, 1, '2022-01-26 05:53:45', NULL),
(5, NULL, 6, 12, 2, 'Yogurt', 'দই', 'yogurt', 'দই', 'Y23411a', '2', 'Yogurt2kg', 'খাটি দই', '2', '২', 'Milky', 'm', '320', '40', '<p>Fresh Yogurt</p>', '<p>দই</p>', '<p>Fresh Yogurt of 2 kg</p>', '<p>খাটি দই ২ কেজি</p>', 'uploads/products/thambnail/1723040690914712.jpg', NULL, NULL, 1, 1, 1, '2022-01-26 05:54:13', NULL),
(6, NULL, 6, 12, 1, 'Honey', 'মধু', 'honey', 'মধু', 'H3289Y', '1', 'honey2', 'মধু', '500gm', '৫০০ গ্রাম', 'Red', 'লাল', '720', '60', '<p>Honey</p>', '<p>মধু</p>', '<p>Medium size honey bottle</p>', '<p>মিডিয়াম সাইজের মধু</p>', 'uploads/products/thambnail/1723041163578697.jpg', 1, 1, 1, 1, 1, '2022-02-05 04:47:38', '2022-02-18 05:15:23'),
(7, 1, 4, 3, 2, 'ww', 'ww', 'ww', 'ww', '323', '33', 'ff,ffd', 'fdd,fdf', '33,44', '44', '44,55', 'red,green', '30000', '28000', '<p>eregrf</p>', '<p>ferfef</p>', '<p>rfef</p>', '<p>rfe</p>', 'uploads/products/thambnail/1723269812973905.jpg', 1, 1, NULL, 1, 1, '2022-01-28 18:36:01', NULL),
(8, NULL, 1, 13, 13, 'orange', '', '', '', '', '', 'ee', NULL, NULL, NULL, NULL, NULL, '2000', '1000', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(9, NULL, 6, 3, 9, 'Pran', 'প্রাণ', 'pran', 'প্রাণ', 'Pran123', '12', 'aq123', 'sasa', 'big', 'বৃহৎ', 'Black', NULL, '1200', '120', '<p>Sweet</p>', '<p>aa</p>', '<p>aaaa</p>', '<p>aaa</p>', 'uploads/products/thambnail/33.jpg', 1, 1, 1, 1, 1, '2022-02-02 17:06:59', NULL),
(10, NULL, 6, 3, 9, 'Natural Honey', 'প্রাকৃতিক মধু', 'natural-honey', 'প্রাকৃতিক-মধু', 'Natural1234', '7', 'qwertyu11', 'মাঝারি', 'Medium', NULL, NULL, 'red', '1200', '111', '<p>awsewsw</p>', '<p>swwsws</p>', '<p>ss</p>', '<p>ss</p>', 'uploads/products/thambnail/1723735362498635.jpg', 1, 1, 1, 1, 1, '2022-02-02 17:09:34', '2022-02-02 21:55:43'),
(11, NULL, 6, 3, 8, 'Pran Honey', 'প্রাণ মধু', 'pran-honey', 'প্রাণ-মধু', 'PranH21', '3', 'Honey2261', 'মধু 2261', 'Medium', 'মধ্যম', 'Red', 'লাল', '200', '22', '<p>Good Quality</p>', '<pre>\r\nভাল মানের</pre>', '<p>Good Quality with a big discount</p>', '<pre>\r\nবড় ডিসকাউন্ট সঙ্গে ভাল মানের</pre>', 'uploads/products/thambnail/1723946234514415.jpeg', 1, 1, 1, 1, 1, '2022-02-05 06:21:33', '2022-02-05 06:21:33'),
(12, NULL, 6, 17, 10, 'Natural Musterd oil', 'প্রাকৃতিক সরিষা তেল', 'natural-musterd-oil', 'প্রাকৃতিক-সরিষা-তেল', 'MO5', '5', 'm_natural', 'মি_প্রাকৃতিক', 'Big', 'বৃহৎ', 'Red', 'লাল', '1000', '25', '<p>Mustered Oil</p>', '<pre>\r\nসরিষা তেল</pre>', '<p>Natural Mustered Oil</p>', '<pre>\r\nপ্রাকৃতিক মিশ্রিত তেল</pre>', 'uploads/products/thambnail/1723948296642964.jpg', 1, 1, 1, 1, 1, '2022-02-05 06:20:13', NULL),
(13, NULL, 6, 17, 11, 'Pure Ghee', 'খাঁটি ঘি', 'pure-ghee', 'খাঁটি-ঘি', 'Ghee21', '5', 'homemdeghee', 'বাড়িতেতৈরিঘি', 'Big', 'বৃহৎ', 'red', 'লাল', '1200', '100', '<p>Pure Ghee</p>', '<pre>\r\nখাঁটি ঘি</pre>', '<p>Home made pre Ghee</p>', '<pre>\r\nঘরে তৈরি খাঁটি ঘি</pre>', 'uploads/products/thambnail/1723950732014261.jpg', 1, 1, 1, 1, 1, '2022-02-05 06:58:56', NULL),
(14, NULL, 2, 17, 12, 'Mango Juice', 'আমের রস', 'mango-juice', 'আমের-রস', 'MangoJuice3', '5', 'mangojuice', 'আমেররস', 'Medium', 'মধ্যম', 'Green', 'সবুজ', '220', '25', '<p>Pure Mango Juice</p>', '<pre>\r\nখাঁটি আমের রস</pre>', '<p>Home made pure Mango Juice</p>', '<pre>\r\nঘরে তৈরি খাঁটি আমের জুস</pre>', 'uploads/products/thambnail/1723952275594451.jpg', 1, NULL, 1, 1, 1, '2022-02-05 07:23:28', '2022-02-28 22:36:24'),
(15, NULL, 2, 13, 13, 'Organic Mango', 'অর্গানিক আম', 'organic-mango', 'অর্গানিক-আম', 'Mango321', '6', 'honenadecoffee', 'রাজশাহীরঅর্গানিকল্যাংড়াআম', 'medium', 'মধ্যম', 'Yellow,red', 'হলুদ', '110', '20', '<p>www</p>', '<p>www</p>', '<p>www</p>', '<p>www</p>', 'uploads/products/thambnail/1723954405791264.jpg', NULL, 1, 1, NULL, 1, '2022-02-05 07:57:19', '2022-02-18 05:15:23'),
(16, NULL, 6, 2, 1, 'Papaya', 'পেঁপে', 'papaya', 'পেঁপে', 'P653', '0', 'Ripe_papaya', 'পাকা_পেঁপে', '1 Kg', '1 কিলোগ্রাম', 'Green', 'সবুজ', '200', '30', '<p>aa</p>', '<p>aa</p>', '<p>aa</p>', '<p>aa</p>', 'uploads/products/thambnail/1724560864129533.webp', 1, 1, 1, 1, 1, '2022-02-12 00:36:44', '2022-02-28 22:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CXaAPbqsFhvnm6xIGpAAJkUBfnCCLjR9pFjVYVCd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibG9EMElmQzZFOTBxWVg0RzF6S0pYNm5uVk5zcWowd0g2ZTBlQnFLMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlcnMtdmlldy8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1646685640),
('PHVGHa3lhzQk8ljboEuEDRjqqoo4B3zZF0w1hfMa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMkhyWGFGQm1MVkpVcVB1Q2hpdzFobkh4bHRKOGJnS2pjRm5CQkswWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjdlZTJmMTY0OTUwZDM1MmUyOTVlNTQ0ZjYxMTU3Mzc3IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6MTE6e3M6NToicm93SWQiO3M6MzI6IjdlZTJmMTY0OTUwZDM1MmUyOTVlNTQ0ZjYxMTU3Mzc3IjtzOjI6ImlkIjtzOjI6IjE0IjtzOjM6InF0eSI7czoxOiIxIjtzOjQ6Im5hbWUiO3M6MTE6Ik1hbmdvIEp1aWNlIjtzOjU6InByaWNlIjtkOjI1O3M6Njoid2VpZ2h0IjtkOjE7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czo1OiJpbWFnZSI7czo0NzoidXBsb2Fkcy9wcm9kdWN0cy90aGFtYm5haWwvMTcyMzk1MjI3NTU5NDQ1MS5qcGciO3M6NToiY29sb3IiO3M6NToiR3JlZW4iO3M6NDoic2l6ZSI7czo2OiJNZWRpdW0iO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NzoidGF4UmF0ZSI7aTowO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO3M6ODoiaW5zdGFuY2UiO3M6NzoiZGVmYXVsdCI7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX19', 1646755355);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'Chapai Nawabganj', '2022-02-18 03:17:24', '2022-02-18 03:17:24'),
(2, 1, 'Manikganj', '2022-02-18 03:13:29', NULL),
(3, 1, 'Dhaka Sadar', '2022-02-18 03:13:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2022-02-18 03:01:35', NULL),
(2, 'Rajshahi', '2022-02-18 03:01:41', NULL),
(3, 'Barishal', '2022-02-18 03:01:46', '2022-02-18 03:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Panthapath', '2022-02-18 03:24:16', NULL),
(2, 1, 1, 'Chapai Nawabganj Sadar', '2022-02-18 03:24:33', '2022-02-18 03:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title_en`, `title_bn`, `description_en`, `description_bn`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/slider/1718131645792069.png', 'New offer', 'নতুন প্রস্তাব', 'buy one get one offer', 'buy one get one offer', 1, '2022-01-07 04:58:22', '2022-01-26 10:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_bn`, `created_at`, `updated_at`) VALUES
(1, 2, 'Papaya', 'পেঁপে\n', '2021-12-02 13:16:35', NULL),
(2, 2, 'Carrot', 'গাজর\n', '2021-12-02 13:17:32', '2021-12-02 13:45:53'),
(13, 13, 'Organic Mango', 'অর্গানিক আম', '2022-02-05 13:36:12', NULL),
(14, 13, 'Orange', 'কমলা', '2022-02-11 23:48:20', NULL),
(15, 13, 'Banana', 'কলা', '2022-02-11 23:50:58', NULL),
(16, 13, 'Apple', 'আপেল', '2022-02-11 23:52:14', NULL),
(17, 13, 'Dates fruit', 'খেজুর ফল', '2022-02-11 23:53:03', NULL),
(18, 17, 'Rice', 'চাল', '2022-02-12 00:11:44', NULL),
(19, 17, 'Oil', 'তেল', '2022-02-12 00:15:24', NULL),
(20, 20, 'Mango Juice', 'আমের রস', '2022-02-12 00:16:15', '2022-02-12 00:58:35'),
(22, 12, 'Yogurt', 'দই', '2022-02-12 00:19:17', NULL),
(24, 12, 'Natural Honey', 'প্রাকৃতিক মধু', '2022-02-12 00:24:01', NULL),
(25, 12, 'Pure Milk', 'খাঁটি দুধ', '2022-02-12 00:25:29', NULL),
(26, 18, 'Tea', 'চা', '2022-02-12 00:42:21', NULL),
(27, 18, 'Coffee', 'কফি', '2022-02-12 00:43:15', NULL),
(28, 19, 'Fish', 'মাছ', '2022-02-12 00:46:47', NULL),
(29, 19, 'Meat', 'মাংস', '2022-02-12 00:47:29', NULL),
(30, 3, 'Winterier Cake', 'শীতকালীন পিঠা', '2022-02-12 00:53:04', NULL),
(31, 20, 'Date Juice', 'খেজুরের রস', '2022-02-12 00:57:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Mahedi Hassan', 'mamun@gmail.com', NULL, '$2y$10$i3w3/IOdWQ49FK1C.hhjX.uGRToOmFzJEQNpUB28PxBHliCLW3f8m', NULL, NULL, NULL, NULL, NULL, '2022-11-09 11:34:41', '2021-11-30 11:34:41'),
(2, 'ddd', 'mhmamun29404@gmail.com', NULL, '$2y$10$k9SGdhgPV/oaGYuN2nzStO84NyWgcDyBNWhu5cTApIwiTd3FGs5sS', NULL, NULL, NULL, NULL, NULL, '2022-02-28 13:59:59', '2022-02-28 13:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 1, 3, '2022-02-18 03:29:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
