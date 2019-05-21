-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 04:29 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_desc` text COLLATE utf8mb4_unicode_ci,
  `image_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_title`, `image_desc`, `image_src`, `created_at`, `updated_at`) VALUES
(1, 'l', 'mm', '01.jpg', '2019-03-30 12:29:31', '2019-03-30 12:29:31'),
(2, 'kemeja', 'Kemeja Alus', 'Baju01.jpg', '2019-03-30 12:49:11', '2019-03-30 12:49:11'),
(3, 'kemeja', 'Kemeja Alus', 'Baju02.jpg', '2019-03-30 12:49:11', '2019-03-30 12:49:11'),
(4, 'kemeja', 'Kemeja Alus', 'Baju03.jpg', '2019-03-30 12:49:11', '2019-03-30 12:49:11'),
(5, 'y', 'l', 'Baju01.jpg', '2019-03-29 20:49:55', '2019-03-29 20:49:55'),
(6, 'y', 'l', 'Baju02.jpg', '2019-03-29 20:49:55', '2019-03-29 20:49:55'),
(7, 'y', 'l', 'Baju03.jpg', '2019-03-29 20:49:56', '2019-03-29 20:49:56'),
(8, 's', 'v', 'Sepatu03.jpg', '2019-03-29 22:02:49', '2019-03-29 22:02:49'),
(9, 'kk', 'jj', 'Sepatu01.jpg', '2019-03-29 22:03:41', '2019-03-29 22:03:41'),
(10, 'kk', 'jj', 'Sepatu02.jpeg', '2019-03-29 22:03:41', '2019-03-29 22:03:41'),
(11, 'kk', 'jj', 'Sepatu03.jpg', '2019-03-29 22:03:42', '2019-03-29 22:03:42'),
(12, 'Kemeja Alus', 'kemeja baguss', 'Baju01.jpg', '2019-03-29 22:55:45', '2019-03-29 22:55:45'),
(13, 'Kemeja Alus', 'kemeja baguss', 'Baju02.jpg', '2019-03-29 22:55:45', '2019-03-29 22:55:45'),
(14, 'Kemeja Alus', 'kemeja baguss', 'Baju03.jpg', '2019-03-29 22:55:45', '2019-03-29 22:55:45'),
(15, 'cc', 'rich', 'Sepatu01.jpg', '2019-03-31 06:33:13', '2019-03-31 06:33:13'),
(16, 'cc', 'rich', 'Sepatu02.jpeg', '2019-03-31 06:33:13', '2019-03-31 06:33:13'),
(17, 'cc', 'rich', 'Sepatu03.jpg', '2019-03-31 06:33:13', '2019-03-31 06:33:13'),
(18, 'Sepatu Adidas', 'murah gan', 'Sepatu01.jpg', '2019-04-01 20:12:43', '2019-04-01 20:12:43'),
(19, 'Sepatu Adidas', 'murah gan', 'Sepatu02.jpeg', '2019-04-01 20:12:43', '2019-04-01 20:12:43'),
(20, 'Sepatu Adidas', 'murah gan', 'Sepatu03.jpg', '2019-04-01 20:12:43', '2019-04-01 20:12:43'),
(21, 'o', 'o', 'Baju01.jpg', '2019-04-05 02:03:51', '2019-04-05 02:03:51'),
(22, 'o', 'o', 'Baju02.jpg', '2019-04-05 02:03:52', '2019-04-05 02:03:52'),
(23, 'o', 'o', 'Baju03.jpg', '2019-04-05 02:03:52', '2019-04-05 02:03:52'),
(24, 'oo', 'ksjsvs', 'Sepatu01.jpg', '2019-04-05 08:12:29', '2019-04-05 08:12:29'),
(25, 'oo', 'ksjsvs', 'Sepatu02.jpeg', '2019-04-05 08:12:29', '2019-04-05 08:12:29'),
(26, 'oo', 'ksjsvs', 'Sepatu03.jpg', '2019-04-05 08:12:29', '2019-04-05 08:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_03_16_065722_create_products_table', 1),
(7, '2019_03_30_045852_create_images_table', 2),
(8, '2019_03_30_050930_create_product_images_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ismailjamiljauhari22@gmail.com', '$2y$10$rCj1jvQZaNFj1dpVwxSCyu8C/tbzruzJpz55zQoIZgSZysMEGSd1m', '2019-03-29 22:32:33'),
('mrazdiw@gmail.com', '$2y$10$bEUZueKiD3hd1qBFS19mBeLqxTGZ02ruuMWMH7agVNzjcBr48yUam', '2019-03-30 00:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `description`, `price`, `image_url`, `video_url`, `created_at`, `updated_at`) VALUES
(7, 2, 'Baju', '<p>koko</p>', '80', NULL, NULL, '2019-03-30 11:51:09', '2019-03-30 12:19:51'),
(10, 2, 'l', 'mm', '00', NULL, NULL, '2019-03-30 12:29:31', '2019-03-30 12:29:31'),
(11, 3, 'kemeja', 'Kemeja Alus', '65000', NULL, NULL, '2019-03-30 12:49:11', '2019-03-30 12:49:11'),
(12, 3, 'y', 'l', '0', NULL, NULL, '2019-03-29 20:49:55', '2019-03-29 20:49:55'),
(14, 4, 'kk', 'jj', '66', NULL, NULL, '2019-03-29 22:03:41', '2019-03-29 22:03:41'),
(15, 5, 'Kemeja Alus', 'kemeja baguss', '80000', NULL, NULL, '2019-03-29 22:55:45', '2019-03-29 22:55:45'),
(16, 5, 'oo', 'ksjsvs', '77', NULL, NULL, '2019-04-05 08:12:29', '2019-04-05 08:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 10, 1, NULL, NULL),
(2, 11, 2, NULL, NULL),
(3, 11, 3, NULL, NULL),
(4, 11, 4, NULL, NULL),
(5, 12, 5, NULL, NULL),
(6, 12, 6, NULL, NULL),
(7, 12, 7, NULL, NULL),
(9, 14, 9, NULL, NULL),
(10, 14, 10, NULL, NULL),
(11, 14, 11, NULL, NULL),
(12, 15, 12, NULL, NULL),
(13, 15, 13, NULL, NULL),
(14, 15, 14, NULL, NULL),
(15, 16, 24, NULL, NULL),
(16, 16, 25, NULL, NULL),
(17, 16, 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ujang Sarip Hidayatullah', 'ujangsarip.cst@gmail.com', NULL, '$2y$10$PogZBI6XSya85jXkMCJKOeiNTFoBfZQXaYnJsv.73dQvpGWqKNqdC', NULL, '2019-03-30 09:45:42', '2019-03-30 09:45:42'),
(2, 'Ujang Sarip Hidayatullah', 'asegume@gmail.com', NULL, '$2y$10$x7iwB85FXWXCzGa1qNbKCO6kwD5zVPN1BzWNjDHDQGPmqA8Wt5ABi', NULL, '2019-03-30 09:47:50', '2019-03-30 09:47:50'),
(3, 'Ari', 'arirusmana97@gmail.com', NULL, '$2y$10$..2rDVf7JDcbuebIxQ7.LO1nA1pKkfzfzNz2M5UKQm.Q6KyWq0ndK', NULL, '2019-03-30 12:41:18', '2019-03-30 12:41:18'),
(4, 'Ujang Sarip Hidayatullah', 'ismailjamiljauhari22@gmail.com', NULL, '$2y$10$yAvYVVHsip7UQXzX.TApCORKCjifzl6qgrq4OYZxHLLS7gIkxkiZe', NULL, '2019-03-29 21:39:44', '2019-03-29 21:39:44'),
(5, 'Ujang Sarip Hidayatullah', 'mrazdiw@gmail.com', NULL, '$2y$10$y.0IPGtEBVMxtrtKGYrflecm1NV8mwzCSxPLUYb2nLNo9Kv0eO.vO', 'vM3i6wnbQiqt50BR55cMSETQ50G84UOYIJQWfz3A84IrvDsJRgBsAPv7R963', '2019-03-29 22:53:20', '2019-03-29 23:02:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`),
  ADD KEY `product_images_image_id_foreign` (`image_id`);

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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
