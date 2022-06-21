-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2021 at 09:46 AM
-- Server version: 8.0.18
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) NOT NULL,
  `creators_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `page_name`, `creators_id`, `created_at`, `updated_at`) VALUES
(1, 'first Page', 1, '2021-11-05 00:15:06', '2021-11-05 00:15:06'),
(13, 'first Page', 7, '2021-11-05 01:20:40', '2021-11-05 01:20:40'),
(12, 'first Page', 7, '2021-11-05 01:00:32', '2021-11-05 01:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `page_follow`
--

DROP TABLE IF EXISTS `page_follow`;
CREATE TABLE IF NOT EXISTS `page_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `page_follow`
--

INSERT INTO `page_follow` (`id`, `page_id`, `follower_id`, `created_at`) VALUES
(1, 13, 7, '2021-11-05 07:29:35'),
(2, 13, 7, '2021-11-05 07:47:05'),
(3, 13, 7, '2021-11-05 07:48:50'),
(4, 13, 7, '2021-11-05 07:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `created_at`) VALUES
(1, 'John', 'Doe', 'john@doe.com', '$2y$10$LCXonVqgjHMyTfaJsS0JFulfafmVtNaKp1bbzMZJ1zdYzzcD5fe1u', '', '2021-11-05 04:15:51'),
(7, 'fazley', 'rabbi', 'john1@doe.com', '$2y$10$.yZDIXUVqSExhxiLolL6UOcnOQ6kUf9wCUEowtg25egbRznbfXqRC', NULL, '2021-11-05 06:55:02'),
(8, 'hi', 'hi', 'hih@gg.com', '$2y$10$1efZEq.TkpUFj3PSdkJGhuXY4T.ZXZYXHRmHmd5NZ.1rharVYiXkm', NULL, '2021-11-05 03:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Person', 1, 'my-app-token', '28fe3881d3ca724646066a240655b99e1c2db5bd81d999aa6c35e7b5c454064a', '[\"*\"]', NULL, '2021-11-04 23:49:41', '2021-11-04 23:49:41'),
(2, 'App\\Models\\Person', 1, 'my-app-token', '924bc89aa8ada9f3de308dca43a1d976ea60e8eaf4e0842739a8e031cc3cbd34', '[\"*\"]', NULL, '2021-11-05 00:14:03', '2021-11-05 00:14:03'),
(3, 'App\\Models\\Person', 1, 'my-app-token', '12bea70205b8f608e9e21909b83cf4678b4db1fd4badd884835c2406288d7a0a', '[\"*\"]', '2021-11-05 00:30:47', '2021-11-05 00:17:53', '2021-11-05 00:30:47'),
(4, 'App\\Models\\Person', 1, 'my-app-token', '32addf73ae41a6ff3e006f29f4a1f123b13c2e3e391df31426728676c0eed0dc', '[\"*\"]', '2021-11-05 00:31:43', '2021-11-05 00:30:54', '2021-11-05 00:31:43'),
(5, 'App\\Models\\Person', 1, 'my-app-token', '93a321bfc8ba7d537bd36bb6e08cc7901678ded08924c7253d62680bb1ccfed8', '[\"*\"]', NULL, '2021-11-05 00:33:35', '2021-11-05 00:33:35'),
(6, 'App\\Models\\Person', 1, 'my-app-token', '96b48c205de39312869f88301b6c792165643d5b9094fa9792309cb4308bc295', '[\"*\"]', NULL, '2021-11-05 00:56:07', '2021-11-05 00:56:07'),
(7, 'App\\Models\\Person', 7, 'my-app-token', '5910535b1479562966f58002280548b126363ea628493a6a3665144848bf3be3', '[\"*\"]', '2021-11-05 01:53:42', '2021-11-05 00:56:12', '2021-11-05 01:53:42'),
(8, 'App\\Models\\Person', 7, 'my-app-token', '254f20f5314cfa7d2fc7ba390c50901501d298a96484a2542128f4eded0278b0', '[\"*\"]', '2021-11-05 01:20:11', '2021-11-05 01:17:35', '2021-11-05 01:20:11'),
(9, 'App\\Models\\Person', 7, 'my-app-token', '1c04f02fba14c5aa4d7533b5a047c1f1869a860659194622092ecd572d13573f', '[\"*\"]', NULL, '2021-11-05 01:19:35', '2021-11-05 01:19:35'),
(10, 'App\\Models\\Person', 7, 'my-app-token', '4c8bf99e89b7e17f312bb97f5f66b917589a89dc52dd73733fc99e2f4a2a8062', '[\"*\"]', NULL, '2021-11-05 02:11:37', '2021-11-05 02:11:37'),
(11, 'App\\Models\\Person', 1, 'my-app-token', 'd8373568498d5dcb8d650ecd8b7c53a464e4d1171f8d0007d14e2a90268ef494', '[\"*\"]', '2021-11-05 02:16:02', '2021-11-05 02:11:41', '2021-11-05 02:16:02'),
(12, 'App\\Models\\Person', 1, 'my-app-token', '4cf14f8bfe0a164ca69e89380a4a912d36900ff3a519aa79879c7ead0e04288b', '[\"*\"]', '2021-11-05 02:52:59', '2021-11-05 02:16:37', '2021-11-05 02:52:59'),
(13, 'App\\Models\\Person', 1, 'my-app-token', 'b6cbe674e06f47b6ae6b3634fdc94bf7a56c0bd355e8217bde260a9872a4c0d9', '[\"*\"]', '2021-11-05 03:10:13', '2021-11-05 02:31:02', '2021-11-05 03:10:13'),
(14, 'App\\Models\\Person', 1, 'my-app-token', '03d81415ad2703ad4c15ef6d9ad8975a2f1799c171d799201b900efa154455eb', '[\"*\"]', NULL, '2021-11-05 03:12:17', '2021-11-05 03:12:17'),
(15, 'App\\Models\\Person', 8, 'my-app-token', '197f6824fd3f29da2fb9a9c5857ea42458440959b4f3d5760e6ef6f62f459a2f', '[\"*\"]', NULL, '2021-11-05 03:26:51', '2021-11-05 03:26:51'),
(16, 'App\\Models\\Person', 8, 'my-app-token', '48975ffdcee5d79cb727981632bd87e104603c86dbdcca2c742c652be248bfe5', '[\"*\"]', NULL, '2021-11-05 03:29:15', '2021-11-05 03:29:15'),
(17, 'App\\Models\\Person', 8, 'my-app-token', '984709d1d85202a85aa13d674b857d7046e60cdd64bcdb4f818bb27ef14199c3', '[\"*\"]', NULL, '2021-11-05 03:31:20', '2021-11-05 03:31:20'),
(18, 'App\\Models\\Person', 8, 'my-app-token', '1b77f81a946cdac2e8832128c550c96afe46501a9d760b8539e69149b7843824', '[\"*\"]', NULL, '2021-11-05 03:31:56', '2021-11-05 03:31:56'),
(19, 'App\\Models\\Person', 8, 'my-app-token', '6086348e986412d36b06ef33e68987dbf952d0057fde0de64c86e96fb57199e6', '[\"*\"]', NULL, '2021-11-05 03:32:14', '2021-11-05 03:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `person_follow`
--

DROP TABLE IF EXISTS `person_follow`;
CREATE TABLE IF NOT EXISTS `person_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `person_follow`
--

INSERT INTO `person_follow` (`id`, `person_id`, `follower_id`, `created_at`) VALUES
(1, 2, 7, '2021-11-05 07:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `person_id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `content`, `person_id`, `page_id`, `created_at`) VALUES
(1, 'hello World', 7, NULL, '2021-11-05 07:46:49'),
(2, 'sdads', 1, NULL, '2021-11-05 08:18:20'),
(3, 'hello 123', 1, NULL, '2021-11-05 08:35:26'),
(4, 'hello 123', 1, NULL, '2021-11-05 08:36:11'),
(5, 'hello 123', 1, 1, '2021-11-05 08:37:58'),
(6, 'Asf sdjsdhl ad haslhd kjasdj kjas gdjaskj dgas', 1, 1, '2021-11-05 08:52:39'),
(7, 'ghelo   sf yusd hejw yis', 1, NULL, '2021-11-05 08:52:50'),
(8, 'dffffffffffffffffffffffffff', 1, NULL, '2021-11-05 08:52:55'),
(9, 'rtrt34565 45 345df sdf ds', 1, NULL, '2021-11-05 08:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
