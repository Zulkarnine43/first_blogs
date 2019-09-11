-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 02:06 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_brands`
--

CREATE TABLE `add_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_brands`
--

INSERT INTO `add_brands` (`id`, `brand_name`, `brand_description`, `long_description`, `created_at`, `updated_at`) VALUES
(7, 'CLOTHING', 'NEW', '<p>For Customer ...</p>', '2019-09-08 08:18:17', '2019-09-08 08:18:17'),
(8, 'BAGS', 'NEW', '<p>For Customer...</p>', '2019-09-08 08:18:47', '2019-09-08 08:18:47'),
(9, 'SHIRT', 'NEW', '<p>For Customer...</p>', '2019-09-08 08:19:18', '2019-09-08 08:19:18'),
(10, 'JEWELERY', 'NEW', '<p>For Customer...</p>', '2019-09-08 08:19:54', '2019-09-08 08:19:54'),
(11, 'BEAUTY', 'NEW', '<p>For Customer...</p>', '2019-09-08 08:20:44', '2019-09-08 08:20:44'),
(12, 'CAPS $ HATS', 'NEW', '<p>For Customer...</p>', '2019-09-08 08:20:55', '2019-09-08 08:20:55'),
(13, 'LAPTOP', 'ALL', '<p>For Customer......</p>', '2019-09-08 09:25:03', '2019-09-08 09:25:03'),
(14, 'MOBILE', 'ALL', '<p>For Customer......</p>', '2019-09-08 09:25:47', '2019-09-08 09:25:47'),
(15, 'WATCH', 'ALL', '<p>For Customer......</p>', '2019-09-08 09:26:10', '2019-09-08 09:26:10'),
(16, 'CAMERA', 'ALL', '<p>For Customer......</p>', '2019-09-08 09:28:00', '2019-09-08 09:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `add_carts`
--

CREATE TABLE `add_carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `quality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `radio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_categories`
--

CREATE TABLE `add_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_categories`
--

INSERT INTO `add_categories` (`id`, `category_name`, `category_description`, `long_description`, `created_at`, `updated_at`) VALUES
(3, 'MEN,S WEAR', 'Clothing', '<p>For customer......</p>', '2019-09-08 08:14:33', '2019-09-08 08:14:33'),
(4, 'WOMEN,S WEAR', 'Clothing', '<p>For Customer......</p>', '2019-09-08 08:15:22', '2019-09-08 08:15:22'),
(5, 'ELECTRONICS', 'ALL', '<p>For customer ...</p>', '2019-09-08 08:16:33', '2019-09-08 08:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `add_products`
--

CREATE TABLE `add_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_products`
--

INSERT INTO `add_products` (`id`, `category_name`, `brand_name`, `product_name`, `product_price`, `product_quantity`, `product_description`, `long_description`, `product_image`, `created_at`, `updated_at`) VALUES
(19, '3', '7', 'T_shirt', '4567', '1', 'new brands', 'For Consumer....', 'product_images/mw2.png', '2019-09-09 12:31:21', '2019-09-09 12:31:21'),
(20, '3', '9', 'T_shirt', '4567', '1', 'new brands', 'For Consumer....', 'product_images/a2.png', '2019-09-09 12:32:49', '2019-09-09 12:32:49'),
(22, '3', '7', 'Shirt', '555', '1', 'new brands', 'cust', 'product_images/a8.png', '2019-09-09 14:27:49', '2019-09-09 14:27:49'),
(23, '4', '7', 'Shirt', '568', '1', 'new brands', 'cust', 'product_images/a7.png', '2019-09-09 14:29:28', '2019-09-09 14:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_registers`
--

CREATE TABLE `checkout_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ConfirmPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkout_registers`
--

INSERT INTO `checkout_registers` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `address`, `Password`, `ConfirmPassword`, `created_at`, `updated_at`) VALUES
(1, 'Zulkar Nine', 'Shaon', '8801869084620', 'zulkarnine43@gmail.com', 'Dhaka', '123', '123', '2019-09-06 12:55:04', '2019-09-06 12:55:04'),
(2, 'Md Shaon', 'miah', '8801869084620', 'admin@blogs.com', 'Dhaka', '12', '12', '2019-09-06 12:59:05', '2019-09-06 12:59:05'),
(3, 'Zulkar Nine', 'shaon', '8801869084620', 'zns601@gmail.com', 'Dhaka', 'sds', 'dfcds', '2019-09-07 00:03:46', '2019-09-07 00:03:46');

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
(4, '2019_09_04_171705_create_add_brands_table', 1),
(5, '2019_09_05_065730_create_add_categories_table', 2),
(6, '2019_09_05_070121_create_add_products_table', 2),
(7, '2019_09_05_092045_create_add_products_table', 3),
(8, '2019_09_06_113423_create_add_carts_table', 4),
(9, '2019_09_06_181903_create_checkout_registers_table', 5),
(10, '2019_09_07_064416_create_shopping_forms_table', 6),
(11, '2019_09_08_171151_create_register_saves_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register_saves`
--

CREATE TABLE `register_saves` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_saves`
--

INSERT INTO `register_saves` (`id`, `username`, `email`, `password`, `confirm_password`, `created_at`, `updated_at`) VALUES
(1, 'zulkarnine', 'zulkarnine43@gmail.com', '12345678', '12345678', '2019-09-08 11:29:24', '2019-09-08 11:29:24'),
(4, 'nine1', 'zulkarnine43@gmail.com', '12345678', '12345678', '2019-09-09 10:42:39', '2019-09-09 10:42:39'),
(5, 'nine1', 'zulkarnine43@gmail.com', '12345678', '12345678', '2019-09-09 10:48:36', '2019-09-09 10:48:36'),
(6, 'nine1', 'zulkarnine43@gmail.com', '12345678', '12345678', '2019-09-09 10:49:23', '2019-09-09 10:49:23'),
(7, 'nine1', 'zulkarnine43@gmail.com', '12345678', '12345678', '2019-09-09 10:54:48', '2019-09-09 10:54:48'),
(8, 'nine1', 'zulkarnine43@gmail.com', '12345678', '12345678', '2019-09-09 10:59:55', '2019-09-09 10:59:55'),
(9, 'nine1', 'zulkarnine43@gmail.com', '12345678', '12345678', '2019-09-09 11:02:42', '2019-09-09 11:02:42'),
(10, 'nine1', 'zulkarnine43@gmail.com', '12345678', '12345678', '2019-09-09 11:09:46', '2019-09-09 11:09:46'),
(11, 'nine1', 'zulkarnine43@gmail.com', '12345678', '12345678', '2019-09-09 11:15:12', '2019-09-09 11:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_forms`
--

CREATE TABLE `shopping_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_forms`
--

INSERT INTO `shopping_forms` (`id`, `fullname`, `email`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'zulkarnine', 'zulkarnine43@gmail.com', '8801869084620', 'Dhaka', '2019-09-07 00:50:25', '2019-09-07 00:50:25'),
(6, 'shaon', 'zns601@gmail.com', '123456', 'dhaka', '2019-09-07 04:26:12', '2019-09-07 04:26:12'),
(7, 'zulkarnine', 'zulkarnine43@gmail.com', '123456', 'dhaka', '2019-09-07 04:54:05', '2019-09-07 04:54:05'),
(8, 'zulkarnine', 'zulkarnine43@gmail.com', '123456', 'dhaka', '2019-09-07 04:55:08', '2019-09-07 04:55:08'),
(9, 'zulkarnine', 'admin@blogs.com', '8801869084620', 'dhaka', '2019-09-07 05:19:54', '2019-09-07 05:19:54'),
(10, 'zulkarnine', 'zulkarnine43@gmail.com', '8801869084620', 'Dhaka', '2019-09-07 05:34:02', '2019-09-07 05:34:02'),
(11, 'zulkarnine', 'zulkarnine43@gmail.com', '8801869084620', 'Dhaka', '2019-09-07 05:39:17', '2019-09-07 05:39:17'),
(12, 'zulkarnine', 'zns601@gmail.com', '8801869084620', 'dhaka', '2019-09-07 05:45:56', '2019-09-07 05:45:56'),
(13, 'shaon', 'sadsg@gmail.com', '8801869084620', 'Dhaka', '2019-09-07 05:51:53', '2019-09-07 05:51:53'),
(14, 'sajid', 'admin@blogs.com', '01976524652', 'kolabagan,Dhaka', '2019-09-07 09:40:35', '2019-09-07 09:40:35'),
(15, 'zulkarnine', 'zulkarnine43@gmail.com', '8801869084620', 'Dhaka', '2019-09-07 12:27:21', '2019-09-07 12:27:21'),
(16, 'zulkarnine', 'zulkarnine43@gmail.com', '8801869084620', 'Dhaka', '2019-09-08 04:31:50', '2019-09-08 04:31:50'),
(17, 'zulkarnine', 'zulkarnine43@gmail.com', '8801869084620', 'kolabagan,Dhaka', '2019-09-08 04:51:41', '2019-09-08 04:51:41'),
(18, 'zulkarnine', 'admin@blogs.com', '8801869084620', 'kolabagan,Dhaka', '2019-09-08 08:25:01', '2019-09-08 08:25:01'),
(19, 'zulkarnine', 'admin@blogs.com', '8801869084620', 'kolabagan,Dhaka', '2019-09-08 09:46:40', '2019-09-08 09:46:40'),
(20, 'zulkarnine', 'zulkarnine43@gmail.com', '8801869084620', 'Dhaka', '2019-09-08 12:59:21', '2019-09-08 12:59:21'),
(21, 'zulkarnine', 'zulkarnine43@gmail.com', '8801869084620', 'Dhaka', '2019-09-09 08:21:16', '2019-09-09 08:21:16'),
(22, 'shaon', 'admin@blogs.com', '01976524652', 'kolabagan,Dhaka', '2019-09-09 12:00:20', '2019-09-09 12:00:20'),
(23, 'shaon', 'zns601@gmail.com', '123456', 'Dhaka', '2019-09-09 14:30:18', '2019-09-09 14:30:18'),
(24, 'sajid', 'admin@blogs.com', '8801869084620', 'kolabagan,Dhaka', '2019-09-11 05:57:34', '2019-09-11 05:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zulkar Nine', 'zulkarnine43@gmail.com', NULL, '$2y$10$FCCyKYECILXoUZBEGxGYNuhz8MJpFe4.YoYA/JH.7gWg3i8Nv/XFa', NULL, '2019-09-07 12:31:00', '2019-09-07 12:31:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_brands`
--
ALTER TABLE `add_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_carts`
--
ALTER TABLE `add_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_categories`
--
ALTER TABLE `add_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_products`
--
ALTER TABLE `add_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_registers`
--
ALTER TABLE `checkout_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `register_saves`
--
ALTER TABLE `register_saves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_forms`
--
ALTER TABLE `shopping_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_brands`
--
ALTER TABLE `add_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `add_carts`
--
ALTER TABLE `add_carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_categories`
--
ALTER TABLE `add_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `add_products`
--
ALTER TABLE `add_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `checkout_registers`
--
ALTER TABLE `checkout_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `register_saves`
--
ALTER TABLE `register_saves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shopping_forms`
--
ALTER TABLE `shopping_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
