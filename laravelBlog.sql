-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2019 at 09:14 PM
-- Server version: 10.4.10-MariaDB
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
-- Database: `laravelBlog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image-path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `headline`, `content`, `author`, `image-path`, `created_at`, `updated_at`) VALUES
(11, 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vestibulum finibus est, at pulvinar eros porttitor vel. Nulla ut iaculis sapien, vulputate lacinia risus. Nam ac neque ac lorem facilisis placerat. Nulla rhoncus mauris at sodales tincidunt. Vivamus eu euismod nunc. Duis dapibus, odio vitae rutrum faucibus, est sem cursus sapien, at dapibus massa libero nec leo. Etiam eget hendrerit augue.\r\n\r\nUt dapibus velit nec turpis laoreet cursus. Pellentesque placerat aliquet justo. Proin vulputate accumsan urna nec consequat. Vivamus vehicula, erat et ultricies viverra, dui eros tempus massa, aliquam fringilla augue felis vel enim. Aliquam sagittis, sem non tincidunt lobortis, sem risus viverra risus, id eleifend mauris ligula at nibh. Morbi quis consequat nulla. Aliquam erat volutpat. Pellentesque ut fermentum odio. Phasellus vulputate fermentum nunc eu rutrum. Mauris nec elementum neque. Donec auctor, arcu vel cursus hendrerit, diam dolor porta metus, in aliquam arcu metus a nunc. Maecenas et volutpat turpis, id porta nunc. Etiam et urna in est semper vulputate. Integer ac cursus augue, ac sodales orci. Vestibulum blandit consectetur ante, ac aliquam nisl vehicula sit amet.\r\n\r\nCurabitur in tempus ante. Sed dui nunc, semper sed porta vitae, imperdiet at tellus. Vestibulum eget orci lectus. Nam tempus tincidunt tellus, nec scelerisque turpis condimentum eu. Aenean auctor mollis ligula, non elementum mi pellentesque vitae. Maecenas pellentesque magna laoreet quam fermentum, non vestibulum mi hendrerit. Sed a dignissim massa, at posuere mauris. Pellentesque luctus orci sit amet massa interdum, ut tincidunt massa aliquet. Duis faucibus dictum est. Pellentesque ullamcorper suscipit metus id pharetra. Suspendisse pharetra laoreet velit, nec consectetur ante molestie et. Fusce efficitur pharetra enim, sed euismod odio. Proin vel aliquet sapien, sed vulputate ex. Maecenas ultrices quis mauris quis hendrerit. Nullam accumsan sit amet ex in efficitur. Aenean hendrerit nulla eu turpis egestas auctor.', 'Lorem', NULL, '2019-12-10 19:18:53', '2019-12-10 19:18:53'),
(14, 'Artykuł użytkownika Gasper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec pellentesque lorem. Duis tincidunt iaculis aliquet. Ut sed tortor lectus. Nullam fermentum ante felis. Curabitur sed odio accumsan erat malesuada efficitur non non tortor. Aenean accumsan cursus quam, sed consectetur nulla facilisis sit amet. Integer ut tempus velit. Vestibulum sollicitudin congue enim sit amet pretium. Donec eu placerat augue. In ut molestie purus. Phasellus ante elit, semper ac eros nec, lacinia auctor tellus.\r\n\r\nVivamus et odio nunc. Curabitur lacus diam, tristique sed quam at, condimentum consectetur mi. Fusce nec auctor quam. Quisque quis est sagittis, dignissim nibh eu, eleifend ipsum. Etiam nec magna ut mi euismod tincidunt eu vitae leo. Phasellus commodo nulla ipsum, ac venenatis lectus varius sed. Praesent ac placerat arcu, eget convallis arcu. Donec viverra justo sit amet condimentum hendrerit. Nulla sit amet lorem mi. Nam hendrerit rhoncus auctor. Mauris ut erat sed felis tincidunt molestie et quis est. Donec placerat ac sem vehicula suscipit. In lacinia ultrices diam, non ultrices lorem pharetra sed. Nam eget aliquet sapien.\r\n\r\nPhasellus mattis viverra scelerisque. Sed iaculis ante metus, a condimentum nisl hendrerit eget. Curabitur scelerisque feugiat lacus, eget volutpat metus ullamcorper feugiat. Nullam placerat tristique euismod. Aliquam tincidunt consectetur justo, a consequat dui euismod a. Maecenas a condimentum turpis. Donec at metus ac orci sagittis varius. Vivamus rutrum ullamcorper libero, quis semper dui mollis eu. Ut tristique leo condimentum libero porta, efficitur convallis purus vehicula. Curabitur pretium ultrices varius. Etiam eu orci at turpis faucibus pretium. Pellentesque condimentum, urna sit amet consequat mollis, lacus mi euismod nisl, vel rhoncus metus ligula fringilla est. Aliquam malesuada iaculis turpis vitae fringilla.\r\n\r\nVestibulum nibh erat, pellentesque at dui id, tempor hendrerit orci. Morbi eleifend mi sed dictum scelerisque. Suspendisse aliquam, ante id dapibus venenatis, sem tellus scelerisque mi, in finibus risus diam ut turpis. Sed blandit dolor vel urna tincidunt, ut ultricies quam fringilla. Nunc non dui sit amet ipsum commodo finibus quis eget orci. In finibus urna ac eleifend ultrices. Donec vel pretium velit. In congue ut felis vel bibendum. Mauris posuere hendrerit orci, vel congue ex ultricies id.\r\n\r\nAliquam vel ipsum ut massa condimentum aliquet ut at erat. Praesent a est et enim luctus semper in non erat. Fusce et nunc elit. Maecenas id sagittis quam. Nulla volutpat risus et molestie rutrum. Donec lobortis dictum urna vitae aliquam. Nulla pharetra quam risus, non tincidunt quam consectetur ac. Ut placerat eu mi id consectetur. Pellentesque et convallis nibh, eu semper magna. Fusce interdum, mauris quis fermentum auctor, orci urna lacinia ligula, tempor laoreet eros eros in tortor. Nunc nec nulla vitae sem ultricies maximus. Nam viverra elementum ligula vitae consectetur. Fusce posuere non quam eget placerat. Donec eget faucibus velit. Pellentesque eleifend, neque quis euismod convallis, mauris justo molestie sapien, ac ultrices lacus erat in turpis.', 'gasper', NULL, '2019-12-11 18:20:04', '2019-12-11 18:20:04'),
(15, 'Artykuł użytkownika Kacper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec pellentesque lorem. Duis tincidunt iaculis aliquet. Ut sed tortor lectus. Nullam fermentum ante felis. Curabitur sed odio accumsan erat malesuada efficitur non non tortor. Aenean accumsan cursus quam, sed consectetur nulla facilisis sit amet. Integer ut tempus velit. Vestibulum sollicitudin congue enim sit amet pretium. Donec eu placerat augue. In ut molestie purus. Phasellus ante elit, semper ac eros nec, lacinia auctor tellus.\r\n\r\nVivamus et odio nunc. Curabitur lacus diam, tristique sed quam at, condimentum consectetur mi. Fusce nec auctor quam. Quisque quis est sagittis, dignissim nibh eu, eleifend ipsum. Etiam nec magna ut mi euismod tincidunt eu vitae leo. Phasellus commodo nulla ipsum, ac venenatis lectus varius sed. Praesent ac placerat arcu, eget convallis arcu. Donec viverra justo sit amet condimentum hendrerit. Nulla sit amet lorem mi. Nam hendrerit rhoncus auctor. Mauris ut erat sed felis tincidunt molestie et quis est. Donec placerat ac sem vehicula suscipit. In lacinia ultrices diam, non ultrices lorem pharetra sed. Nam eget aliquet sapien.\r\n\r\nPhasellus mattis viverra scelerisque. Sed iaculis ante metus, a condimentum nisl hendrerit eget. Curabitur scelerisque feugiat lacus, eget volutpat metus ullamcorper feugiat. Nullam placerat tristique euismod. Aliquam tincidunt consectetur justo, a consequat dui euismod a. Maecenas a condimentum turpis. Donec at metus ac orci sagittis varius. Vivamus rutrum ullamcorper libero, quis semper dui mollis eu. Ut tristique leo condimentum libero porta, efficitur convallis purus vehicula. Curabitur pretium ultrices varius. Etiam eu orci at turpis faucibus pretium. Pellentesque condimentum, urna sit amet consequat mollis, lacus mi euismod nisl, vel rhoncus metus ligula fringilla est. Aliquam malesuada iaculis turpis vitae fringilla.\r\n\r\nVestibulum nibh erat, pellentesque at dui id, tempor hendrerit orci. Morbi eleifend mi sed dictum scelerisque. Suspendisse aliquam, ante id dapibus venenatis, sem tellus scelerisque mi, in finibus risus diam ut turpis. Sed blandit dolor vel urna tincidunt, ut ultricies quam fringilla. Nunc non dui sit amet ipsum commodo finibus quis eget orci. In finibus urna ac eleifend ultrices. Donec vel pretium velit. In congue ut felis vel bibendum. Mauris posuere hendrerit orci, vel congue ex ultricies id.\r\n\r\nAliquam vel ipsum ut massa condimentum aliquet ut at erat. Praesent a est et enim luctus semper in non erat. Fusce et nunc elit. Maecenas id sagittis quam. Nulla volutpat risus et molestie rutrum. Donec lobortis dictum urna vitae aliquam. Nulla pharetra quam risus, non tincidunt quam consectetur ac. Ut placerat eu mi id consectetur. Pellentesque et convallis nibh, eu semper magna. Fusce interdum, mauris quis fermentum auctor, orci urna lacinia ligula, tempor laoreet eros eros in tortor. Nunc nec nulla vitae sem ultricies maximus. Nam viverra elementum ligula vitae consectetur. Fusce posuere non quam eget placerat. Donec eget faucibus velit. Pellentesque eleifend, neque quis euismod convallis, mauris justo molestie sapien, ac ultrices lacus erat in turpis.', 'kacper', NULL, '2019-12-11 18:20:28', '2019-12-11 18:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `content`, `author`, `created_at`, `updated_at`) VALUES
(1, 9, 'First comment', 'Kacper', '2019-12-10 17:53:00', '2019-12-10 17:53:00'),
(2, 2, 'First Comment', 'Kacper2', NULL, NULL),
(3, 9, 'New Second Comment', 'Kacper3', '2019-12-10 17:15:55', '2019-12-10 17:15:55'),
(4, 9, 'Bacon is good. I like it :D', 'Kacper', '2019-12-10 17:16:18', '2019-12-10 17:16:18'),
(5, 9, 'content', 'jajko', '2019-12-10 17:56:06', '2019-12-10 17:56:06'),
(6, 9, 'a', 'a', '2019-12-10 17:57:12', '2019-12-10 17:57:12'),
(7, 9, 'b', 'b', '2019-12-10 18:01:10', '2019-12-10 18:01:10'),
(8, 11, 'Wow nice article', 'kacper', '2019-12-10 19:28:00', '2019-12-10 19:28:00'),
(9, 9, 'dodałem komentarz i chyba działa', 'kacper', '2019-12-10 19:42:21', '2019-12-10 19:42:21'),
(10, 9, 'działa :D', 'kacper', '2019-12-10 19:42:29', '2019-12-10 19:42:29'),
(11, 11, 'Testowy komentarz, mam nadzieje, że zadziała :D', 'kacper', '2019-12-11 17:11:01', '2019-12-11 17:11:01'),
(12, 11, 'Działa, super!! :D', 'kacper', '2019-12-11 17:13:01', '2019-12-11 17:13:01'),
(13, 12, 'Testowy', 'gasper', '2019-12-11 17:16:12', '2019-12-11 17:16:12'),
(14, 13, 'Fajny fajny :D', 'gasper', '2019-12-11 17:35:17', '2019-12-11 17:35:17'),
(15, 14, 'Testowy komentarz', 'kacper', '2019-12-11 18:22:57', '2019-12-11 18:22:57'),
(16, 15, 'Komentarz użytkownika Gasper', 'gasper', '2019-12-11 18:23:40', '2019-12-11 18:23:40');

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
(4, '2019_12_07_203435_create_articles_table', 2),
(6, '2019_12_10_174051_create_comments_table', 3);

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
('kacpertrzeci@gmail.com', '$2y$10$TUQOBU28s1cenT90FUP55.8d.8.D3R7P72Y2RfkBMBfWqIlQqiKAm', '2019-12-10 18:38:07');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kacper', 'kacper@wp.pl', NULL, '$2y$10$wt9GVnL8QXApSMGkQlkl0OtmAHtZxIwoxNswobQK4FY8cLyl0bdaO', NULL, '2019-12-10 18:24:59', '2019-12-10 18:24:59'),
(2, 'gasper', 'kacpertrzeci@gmail.com', NULL, '$2y$10$516nZsPKpiwvBrcZWvBq2ORdo8fnWgHbNn.8Xg21rSWY1wEYyqSsC', NULL, '2019-12-10 18:37:52', '2019-12-10 18:37:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
