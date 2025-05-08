-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 09, 2025 lúc 09:21 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `egagear_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@yomail.com|127.0.0.1', 'i:1;', 1740707304),
('admin@yomail.com|127.0.0.1:timer', 'i:1740707304;', 1740707304),
('b1d5781111d84f7b3fe45a0852e59758cd7a87e5', 'i:1;', 1727446485),
('b1d5781111d84f7b3fe45a0852e59758cd7a87e5:timer', 'i:1727446485;', 1727446485),
('f1abd670358e036c31296e66b3b66c382ac00812', 'i:1;', 1740921332),
('f1abd670358e036c31296e66b3b66c382ac00812:timer', 'i:1740921332;', 1740921332),
('nghiadaica@gmail.com|127.0.0.1', 'i:3;', 1725851758),
('nghiadaica@gmail.com|127.0.0.1:timer', 'i:1725851758;', 1725851758),
('niboss458@gmail.com|127.0.0.1', 'i:1;', 1740643837),
('niboss458@gmail.com|127.0.0.1:timer', 'i:1740643837;', 1740643837);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(18, 'Laptop', 'categories/FisDu0LPiGC8MwKgHAIA1MU1OPlarvr3mGgHe7Vu.webp', 1, '2025-02-27 02:05:47', '2025-03-02 05:56:09'),
(19, 'Máy tính bảng', 'categories/4fcSpQtK7tbbFOJWKetm82VQPvgakMfgWYB2nITE.webp', 1, '2025-02-27 02:08:01', '2025-02-27 02:08:54'),
(20, 'Điện thoại', 'categories/Ei5ytvX66Xh820UyZAxZaUJwSfuF8XipCoZPVhOq.webp', 1, '2025-02-27 02:08:14', '2025-02-27 02:08:53'),
(21, 'Tai nghe', 'categories/2eBjWkvYuDKMZxtW4ncYlRPoUwgXgJI76nsvahZZ.webp', 1, '2025-02-27 02:09:45', '2025-02-27 02:11:12'),
(22, 'Bàn phím', 'categories/EZh035hCVvEiWOyFnqmleYqu2Wz6Z1qcrKnPGfTh.webp', 1, '2025-02-27 02:09:57', '2025-02-27 02:11:19'),
(23, 'Sạc dự phòng', 'categories/qMzH8hEFx3Oe6gvZEjwVEP4iuKLyIB1q2W5pNc22.webp', 1, '2025-02-27 02:10:08', '2025-02-27 02:11:21'),
(24, 'Chuột + Lót chuột', 'categories/UoGJrtWvOdc1jDUyQurPTPqefWHQ6qkAqtV1t4ZL.webp', 1, '2025-02-27 02:10:23', '2025-02-27 02:11:24'),
(25, 'Củ sạc', 'categories/yiN9ZGEosZk8VYBx2cswlXudFnrXKBdSlmFpPlXg.webp', 1, '2025-02-27 02:10:36', '2025-02-27 02:11:17'),
(26, 'Máy tính bàn (PC)', 'categories/E3ZhaQUoq48B1L1wbowHploWSkcoDc9veRWsvVx2.webp', 1, '2025-02-27 02:10:53', '2025-02-27 02:11:16'),
(27, 'Màn hình', 'categories/KKtpvrNwDXPTdAJSkA8IX5xsJIh1VHLjwonprgMO.webp', 1, '2025-02-27 02:11:06', '2025-02-27 02:11:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_blogs`
--

CREATE TABLE `category_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_blogs`
--

INSERT INTO `category_blogs` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Recipes', 1, '2024-07-29 02:09:35', '2024-07-29 02:11:04'),
(5, 'Nutrition', 1, '2024-07-29 02:09:47', '2024-07-29 02:11:03'),
(6, 'Food Reviews', 1, '2024-07-29 02:09:55', '2024-07-29 02:11:01'),
(7, 'Food Trends', 1, '2024-07-29 02:10:06', '2024-07-29 02:11:00'),
(8, 'Cooking Tips', 1, '2024-07-29 02:10:13', '2024-07-29 02:11:05'),
(9, 'Healthy Eating', 1, '2024-07-29 02:10:23', '2024-07-29 02:11:07'),
(10, 'Culinary Techniques', 1, '2024-07-29 02:10:31', '2024-07-29 02:11:09'),
(11, 'Global Cuisine', 1, '2024-07-29 02:10:39', '2024-07-29 02:11:11'),
(12, 'Food History', 1, '2024-07-29 02:10:46', '2024-07-29 02:11:12'),
(13, 'Food Science', 1, '2024-07-29 02:10:55', '2024-07-29 02:10:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `emails`
--

INSERT INTO `emails` (`id`, `name`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Zetta Heaney Sr.', 'michaela.williamson@example.net', 'Voluptatum officia libero et excepturi. Occaecati facere vel tenetur aliquam. Dolores ut quia eum harum vitae. Necessitatibus repellendus praesentium et impedit.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(2, 'Effie Nolan', 'mills.juanita@example.org', 'Sit dolore eum et suscipit aliquid sit laudantium. Non excepturi minus ea. Et reprehenderit nulla blanditiis qui voluptatibus dolorem.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(3, 'Cullen Gulgowski', 'reanna.mcglynn@example.com', 'Aliquid velit occaecati voluptatem explicabo rerum odio. Ipsum quis est laudantium qui et sed cum qui. Accusamus incidunt nemo illum perferendis. Corporis facere alias odio alias.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(4, 'Emile Dare', 'douglas.tianna@example.net', 'Voluptates tempore et iusto sunt harum accusamus. Voluptas ipsa perferendis odit et qui voluptatum dolor est. At numquam sapiente quam voluptates dolore. Sapiente et beatae voluptas corrupti.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(5, 'Dr. Willa Ankunding PhD', 'kaley.bechtelar@example.com', 'Facilis id omnis voluptatem et voluptatem ut alias. Iusto eligendi placeat praesentium voluptate quod facere tenetur. Tempore voluptatem aut accusamus amet quod est suscipit. Quasi et est amet ut repudiandae eum doloremque.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(6, 'Ms. Maddison Volkman', 'pinkie34@example.com', 'Perspiciatis corporis quidem reiciendis iusto nobis. Expedita nisi quod enim ad. Et reiciendis officia officia quod sit. Fugit et et dicta voluptas ut.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(7, 'Jayda Wehner', 'ohara.coleman@example.com', 'Est eligendi dolorem minus voluptates ut blanditiis rerum. Recusandae voluptatem est earum qui. Voluptatibus qui ab molestiae eos quis inventore. Cumque aut suscipit sit.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(8, 'Jules Homenick', 'christiansen.buck@example.net', 'Et sapiente fugiat itaque quasi quia soluta asperiores. Nihil nobis eum ex dolores. Et aut sit excepturi quia.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(9, 'Jenifer Ullrich', 'akeeling@example.com', 'Amet quo quod nihil. Expedita nihil aut officia sed culpa consequatur. Asperiores vitae sit aut quasi libero ut atque. Et voluptas cum est sed qui.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(10, 'Clay Kunde DDS', 'lowe.tiana@example.com', 'Et minus voluptates officia aut ad. Tempora ea facere beatae blanditiis aut sunt velit. Blanditiis quibusdam voluptates dolore ea perferendis eum nemo. Reprehenderit omnis et voluptatibus voluptatem commodi distinctio.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(11, 'Mariah O\'Hara', 'janiya08@example.com', 'Saepe id minus modi vero sed vitae quia. Repellendus enim minus provident molestias hic eius debitis. Unde voluptatem rerum est omnis distinctio. Est voluptas eos unde voluptatibus est consequatur aliquam ut.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(12, 'Alisa Ruecker', 'knicolas@example.com', 'Quisquam dolorem aspernatur aperiam pariatur quo possimus vel. Aspernatur odio et saepe facere. Assumenda perspiciatis distinctio quia.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(13, 'Jules Metz', 'hagenes.heaven@example.net', 'Provident qui consequatur mollitia quam culpa. Itaque magni quas labore quo. Est totam delectus beatae ad amet laboriosam.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(14, 'Lexie Eichmann', 'floyd64@example.net', 'Harum ab esse voluptas harum error distinctio. Et voluptatibus aspernatur expedita aut. Perspiciatis aliquid culpa est amet non quae non. Ipsa rerum nam sequi fugit nemo ut sit.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(15, 'Myra King', 'esimonis@example.org', 'Et aut velit delectus minus nobis dolor at. Vel dolorum rerum quaerat dolorem et eaque tempore excepturi. In incidunt provident consequatur quasi. In quos non dolorem eum quam.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(16, 'Frankie Wilderman', 'wterry@example.net', 'Ut in sint accusantium. Hic ut non eum nulla id eos sed. Delectus qui provident et et magni et. Est quaerat sapiente dolore commodi ut.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(17, 'Ellen Torphy Jr.', 'lebsack.mafalda@example.com', 'Rem libero est optio dolor. Velit aliquam ut fugit consequatur incidunt eaque sunt. Quia et sunt nostrum quisquam.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(18, 'Dr. Sven Wisoky', 'werner58@example.net', 'Ratione beatae accusantium ad aut veniam sequi. Repellendus reprehenderit et laborum id consectetur eligendi.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(19, 'Shanna Rice', 'elliot42@example.com', 'Sunt quis nostrum assumenda. Quo maxime accusamus sed molestias accusamus. Non dolorem iste quaerat doloribus ipsa velit.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(20, 'Dustin Pagac', 'bailey.alycia@example.org', 'Minus omnis sit minima. Sequi cumque et provident sint voluptas architecto qui eum. Delectus amet quo ut minima hic voluptates mollitia.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(21, 'Sasha Walker', 'ross26@example.com', 'Magnam soluta qui quisquam. Voluptatibus minus minima atque a. Dolor quia repellendus sed nam perferendis ut qui.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(22, 'Clyde Nicolas IV', 'avery24@example.com', 'Recusandae accusamus rerum id. Repellat magni minus accusantium odio ullam odio. Quidem libero eos aut consectetur ea impedit earum.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(23, 'Ephraim Ortiz', 'fahey.westley@example.org', 'Consequuntur occaecati incidunt aspernatur voluptatem animi. Minus nihil atque ut aut officiis repellat quibusdam. Quibusdam quia odio tempore et impedit. Perspiciatis ab accusantium ullam et qui non minus et.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(24, 'Miracle Flatley', 'dooley.mikayla@example.net', 'Animi similique sed ipsam libero rerum odit. Consequatur est facilis rem. Numquam autem voluptatem molestiae architecto.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(25, 'Miss Crystal Mertz V', 'mona.maggio@example.net', 'Quaerat consequatur sed dolor porro consectetur. Sed molestiae eum recusandae consectetur. Dolorum nostrum voluptatem pariatur aliquid impedit iste est rerum. Voluptatem voluptatibus optio dolorum est in.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(26, 'Chance Batz MD', 'lyla.rippin@example.net', 'Maiores id optio aliquam praesentium. Labore labore cupiditate odit est doloremque ducimus. Assumenda totam est nisi aut blanditiis.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(27, 'Isabel Ruecker', 'schowalter.skylar@example.net', 'Maiores est perspiciatis sed. Provident ut voluptatem quia consequatur officia. Minima non rerum voluptatum aut. Quibusdam exercitationem eius et laborum odio qui aut.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(28, 'Dr. Ned Rowe', 'dbartoletti@example.net', 'Pariatur fugit enim alias laborum cumque maiores non repudiandae. Iusto in ipsa commodi nihil ut et. Praesentium aliquam ut et ratione et labore consequatur.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(29, 'Trystan Kulas DVM', 'chaya.rosenbaum@example.net', 'Corrupti quis consectetur repudiandae ipsam doloremque. Similique a impedit quibusdam deserunt vitae error. Beatae delectus est praesentium et ut quo voluptas.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(30, 'Prof. Gabrielle Fadel', 'sydnee71@example.org', 'Nam autem ut soluta fugit fugiat deleniti exercitationem. Molestiae eius sit provident.', '2024-07-27 01:18:32', '2024-07-27 01:18:32'),
(31, 'Nghĩa Trần Quang', 'niboss458@gmail.com', '1212121', '2024-08-08 01:59:44', '2024-08-08 01:59:44'),
(32, 'Nghĩa Trần Quang', 'niboss458@gmail.com', 'ok', '2024-08-11 05:29:29', '2024-08-11 05:29:29'),
(33, 'Son Tung MTP', 'nghiadaica@gmail.com', 'new new new', '2024-09-26 08:50:35', '2024-09-26 08:50:35'),
(34, 'abc', 'caytien412@gmail.com', 'pp00000', '2024-09-27 07:18:15', '2024-09-27 07:18:15'),
(35, 'cccc', 'niboss458@gmail.com', 'cccq111', '2024-09-28 08:18:11', '2024-09-28 08:18:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(19, 23, 'image-more/5NMLQ1ijFtpH4k3VsI4C1SW2CYDuA7vEiFnkTFGl.webp', '2025-02-27 02:14:40', '2025-02-27 02:14:40'),
(20, 23, 'image-more/zejfDnISqIqM86BUEtT7mk0vdVB30ulUz1KqHJIO.webp', '2025-02-27 02:14:44', '2025-02-27 02:14:44'),
(21, 23, 'image-more/Qtie10kBfBSuBewXgWsfGZEYqPo2amN1cmIkVifu.webp', '2025-02-27 02:14:47', '2025-02-27 02:14:47'),
(22, 23, 'image-more/PcMqwPOPkxeLLUxf8qi6LKlhRczHQNXtD9Khhkak.webp', '2025-02-27 02:14:50', '2025-02-27 02:14:50'),
(23, 24, 'image-more/98My6HjDX0GC0yvM068fVMNRlBzVT7umtiZOkOpv.webp', '2025-02-27 03:43:43', '2025-02-27 03:43:43'),
(24, 24, 'image-more/kZECmt24GedOrHiVYYLilSPxlCKI9lQv6BiZG8ae.webp', '2025-02-27 03:43:46', '2025-02-27 03:43:46'),
(25, 24, 'image-more/cu4G3B3StYhAdXPTjkPrs0MUZLo9iN9uzynjsYWL.webp', '2025-02-27 03:43:50', '2025-02-27 03:43:50'),
(26, 24, 'image-more/yIZTpVLIniJw2NLHmw0LY3CXd1p4xThFacuMpGTL.webp', '2025-02-27 03:43:52', '2025-02-27 03:43:52'),
(27, 25, 'image-more/6CWrqxELyD8CbgimeRp5ceBP61docJULUCHObw83.jpg', '2025-02-27 03:53:29', '2025-02-27 03:53:29'),
(28, 25, 'image-more/K0WteVCuzW38Egcz2vpgwZAp1AN2MRzkpt2g7am9.jpg', '2025-02-27 03:53:31', '2025-02-27 03:53:31'),
(29, 25, 'image-more/BobwSfv5aG2ciG7KlFBzgfP3Fp8LwiC49kDU90Jh.jpg', '2025-02-27 03:53:37', '2025-02-27 03:53:37'),
(30, 25, 'image-more/KOhFoPzvcCgTSgdQwPAcdmvGeNQNymn758ZNYNnm.jpg', '2025-02-27 03:53:40', '2025-02-27 03:53:40'),
(31, 25, 'image-more/StBGTGKkVzWaWJil7RffRug8ugtVIfNFrPYXgzCo.jpg', '2025-02-27 03:53:49', '2025-02-27 03:53:49'),
(32, 25, 'image-more/EfEu5kHwwWOJt9xrq2JHTcI9StIQmt2VG1imKvuw.jpg', '2025-02-27 03:53:54', '2025-02-27 03:53:54'),
(33, 26, 'image-more/vs114WHdqpwi6IG53zSrcyao9IuSZxF8MWPz5dT9.jpg', '2025-02-27 04:01:14', '2025-02-27 04:01:14'),
(34, 26, 'image-more/SaLzq5AJRngnT5rBMh803UvblGUUFz3B2ulHHLuY.jpg', '2025-02-27 04:01:17', '2025-02-27 04:01:17'),
(35, 26, 'image-more/JN2MaosqGljpFfO7JLhTTyAaX2OfFWkyUgRW3VNk.jpg', '2025-02-27 04:01:20', '2025-02-27 04:01:20'),
(36, 26, 'image-more/yGtcf9gtIL6LGOY3PTCA5Lu4o9Hqq447e03FfVOQ.jpg', '2025-02-27 04:01:23', '2025-02-27 04:01:23'),
(37, 27, 'image-more/PdtaNWnabTw7gMs2GLSjvvKa3FtqSdh1RT8n7RcP.jpg', '2025-02-27 04:03:11', '2025-02-27 04:03:11'),
(38, 27, 'image-more/c1Me5yIqlRWzZxVIIwA3O4OtZT3xClShw7kFrYzI.jpg', '2025-02-27 04:03:16', '2025-02-27 04:03:16'),
(39, 27, 'image-more/Cho9tye9bj54doQ3WW2zOAEperUhWc1cPQ40niab.jpg', '2025-02-27 04:03:18', '2025-02-27 04:03:18'),
(40, 27, 'image-more/xBilqd1C9mUP3nU1tNPVFwGT90mBASVnc4IX6vEr.jpg', '2025-02-27 04:03:21', '2025-02-27 04:03:21'),
(41, 27, 'image-more/3Hk84PhQDTkIyuITjuMW1437DAL7NGvLcwERfFDa.jpg', '2025-02-27 04:03:24', '2025-02-27 04:03:24'),
(42, 28, 'image-more/uL5a0nno8aynQSFloivdb8TtEnYyyQ43uKcVTgBq.jpg', '2025-02-28 07:05:53', '2025-02-28 07:05:53'),
(43, 28, 'image-more/hQQQZHzz1ItJdUHMsD2QmKd511Jn82HBxJyfmHfR.jpg', '2025-02-28 07:05:58', '2025-02-28 07:05:58'),
(44, 28, 'image-more/UjlVdPkP5vPE7H4pVWJgyTq8nVCdKVifnMEbIrtQ.jpg', '2025-02-28 07:06:06', '2025-02-28 07:06:06'),
(45, 28, 'image-more/Wr1bOatoow6TMaqQrwbJDGaEGLZhk5yFQSRih9xM.jpg', '2025-02-28 07:06:10', '2025-02-28 07:06:10'),
(46, 28, 'image-more/oPdeTPIKc9yrzdIk1HebMpGkHPizfzsPDeXHjsLd.jpg', '2025-02-28 07:06:13', '2025-02-28 07:06:13'),
(47, 28, 'image-more/RRgOQYHUSzR7LSFuAKIjcrXyz2XNRTLX06w71m0P.jpg', '2025-02-28 07:06:24', '2025-02-28 07:06:24'),
(48, 29, 'image-more/tFPXIuSrzhTcXA8fqWYGttTHphitd0UDmH4pG2l9.jpg', '2025-02-28 07:09:59', '2025-02-28 07:09:59'),
(49, 29, 'image-more/eVYzyLzUowwwIzeMPMQgK1iuU1PR8KpSze6j2YQx.jpg', '2025-02-28 07:10:04', '2025-02-28 07:10:04'),
(50, 29, 'image-more/Scm6hCESwiQglLqN2yH2tLJEUJDsmJ0RI8mwdKTt.jpg', '2025-02-28 07:10:08', '2025-02-28 07:10:08'),
(51, 29, 'image-more/3kSBolLHpLF4owyox7QwxjpCo2JOKyyoSH19bv99.jpg', '2025-02-28 07:10:11', '2025-02-28 07:10:11'),
(52, 29, 'image-more/gQiolbJM6SDG1YHg2ZTj8HONMnFPUZ6PyfOawvsJ.jpg', '2025-02-28 07:10:14', '2025-02-28 07:10:14'),
(53, 29, 'image-more/JHm8ukF6UpJa3VEtzhjSqAnxDbHvATGdE5MAKznL.jpg', '2025-02-28 07:10:18', '2025-02-28 07:10:18'),
(54, 30, 'image-more/Gbe16z4NN1YvFT925WsCr6kIK4IBAp6CDIQYDPnS.jpg', '2025-02-28 07:26:47', '2025-02-28 07:26:47'),
(55, 30, 'image-more/1RkdSCx2W4AUqiLmii7AAASx779ACm7W2BlmWVMO.jpg', '2025-02-28 07:26:51', '2025-02-28 07:26:51'),
(56, 30, 'image-more/bkdQlKdaN2DhN2gWKLpfqGnHUmLEXN5KBWcoX43j.jpg', '2025-02-28 07:26:55', '2025-02-28 07:26:55'),
(57, 30, 'image-more/pzTYwZ4m0YSUcVR6SfCIUhMOF4g7DfI4zOciE29t.jpg', '2025-02-28 07:26:58', '2025-02-28 07:26:58'),
(58, 30, 'image-more/3Gka7HUkdjFtz4WTtM8ukxGg9s1bT2CNjUVpjmba.jpg', '2025-02-28 07:27:01', '2025-02-28 07:27:01'),
(59, 30, 'image-more/MhE3ZyCpCdhl9mFyIkLnoDPkrCJ130v8GsiNr2gQ.jpg', '2025-02-28 07:27:05', '2025-02-28 07:27:05'),
(60, 31, 'image-more/bttZX09XmuzeMV4Flxp0n0mKKIwyktmQE85oHB4e.jpg', '2025-02-28 07:29:39', '2025-02-28 07:29:39'),
(61, 31, 'image-more/i39UXSflZRgpqsadHiqa3mHbEqqiGlcDs9AjNNUy.jpg', '2025-02-28 07:29:45', '2025-02-28 07:29:45'),
(62, 31, 'image-more/atz6Zs4DnOMzQBafq1eWq0wN16Zyk22vGM8A2FC0.jpg', '2025-02-28 07:29:49', '2025-02-28 07:29:49'),
(63, 31, 'image-more/i2OPG0UfL16UFi6Z03DMfFf0NjZixx7F0lWnDiZJ.jpg', '2025-02-28 07:29:53', '2025-02-28 07:29:53'),
(64, 32, 'image-more/QmBlb62sm9XY3P7OFwAvBnndz98OjroQCWniSGDb.jpg', '2025-02-28 07:32:48', '2025-02-28 07:32:48'),
(65, 32, 'image-more/uRxtEtm5vzDIfidjHgSxcO1FTvk11aaRd5hi1vMi.jpg', '2025-02-28 07:32:52', '2025-02-28 07:32:52'),
(66, 32, 'image-more/PW3o9KlhdG8KCS0gxl1ddevjYYqogwXG4yz7f4xd.jpg', '2025-02-28 07:32:55', '2025-02-28 07:32:55'),
(67, 32, 'image-more/QoUv8bTElXfm35PmEIen39rJ2Jz29F5srTRBIReF.jpg', '2025-02-28 07:32:58', '2025-02-28 07:32:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '0001_01_01_000000_create_roles_table', 1),
(32, '0001_01_01_000001_create_users_table', 1),
(33, '0001_01_01_000002_create_cache_table', 1),
(34, '0001_01_01_000003_create_jobs_table', 1),
(35, '2024_07_24_024153_create_categories_table', 1),
(36, '2024_07_24_024153_create_products_table', 1),
(37, '2024_07_24_024154_create_images_table', 1),
(38, '2024_07_24_024154_create_orders_table', 1),
(39, '2024_07_24_024154_create_payment_methods_table', 1),
(40, '2024_07_24_024155_create_order_details_table', 1),
(44, '2024_07_27_023638_create_emails_table', 2),
(45, '2024_07_27_080549_create_category_blogs_table', 2),
(46, '2024_07_27_080550_create_posts_table', 3),
(48, '2024_08_11_065121_create_page_contact_table', 4),
(49, '2024_08_11_081403_create_page_general_table', 5),
(50, '2024_08_11_081710_create_page_policy_table', 5),
(52, '2024_08_12_023042_create_notifications_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `id_link` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `content`, `type`, `id_link`, `created_at`, `updated_at`) VALUES
(1, 'Đơn hàng mới từ NewStyle Shop', 'order', 126, '2025-02-28 08:37:57', '2025-02-28 08:37:57'),
(2, 'Đơn hàng mới từ admin', 'order', 127, '2025-03-01 09:31:21', '2025-03-01 09:31:21'),
(3, 'Đơn hàng mới từ Vũ Duy Bình', 'order', 128, '2025-03-02 06:05:11', '2025-03-02 06:05:11'),
(4, 'Đơn hàng mới từ Vũ Duy Bình', 'order', 129, '2025-03-03 19:40:36', '2025-03-03 19:40:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `shipping_address` text NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_number`, `total`, `shipping_address`, `phone`, `email`, `note`, `payment_method`, `status`, `created_at`, `updated_at`) VALUES
(121, 11, 'ORD-E186D', 268800000, 'Thôn Cành Lá, xã Cành Cây, huyện Gió Mây, tỉnh Đồi Núi', '0999888777', 'nghiapro04.dev@gmail.com', '0', 'cash on delivery', 'completed', '2025-02-27 02:42:24', '2025-02-27 03:25:00'),
(122, 11, 'ORD-3BCB9', 56190000, 'Thôn Cành Lá, xã Cành Cây, huyện Gió Mây, tỉnh Đồi Núi', '0999888777', 'nghiapro04.dev@gmail.com', '0', 'cash on delivery', 'pending', '2025-02-27 19:10:16', '2025-02-27 19:10:16'),
(128, 14, 'ORD-41A5F', 499999995, 'Trực Thanh-Trực Ninh-Nam Định', '0889639655', 'vubinh02122004@gmail.com', '0', 'cash on delivery', 'processing', '2025-03-02 06:05:11', '2025-03-02 06:07:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(358, 121, 23, 67200000.00, 4, '2025-02-27 02:42:24', '2025-02-27 02:42:24'),
(359, 122, 25, 12900000.00, 3, '2025-02-27 19:10:16', '2025-02-27 19:10:16'),
(360, 122, 27, 17490000.00, 1, '2025-02-27 19:10:16', '2025-02-27 19:10:16'),
(369, 128, 34, 99999999.00, 5, '2025-03-02 06:05:11', '2025-03-02 06:05:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_contact`
--

CREATE TABLE `page_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL DEFAULT '0366461704',
  `address` varchar(255) NOT NULL DEFAULT 'Đà Nẵng',
  `open_time` varchar(255) NOT NULL DEFAULT '10:00 am',
  `close_time` varchar(255) NOT NULL DEFAULT '23:00 pm',
  `email` varchar(255) NOT NULL DEFAULT 'nghiadaica@gmail.com',
  `url_iframe` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_contact`
--

INSERT INTO `page_contact` (`id`, `phone`, `address`, `open_time`, `close_time`, `email`, `url_iframe`, `created_at`, `updated_at`) VALUES
(1, '0999888777', 'Đà Nẵng, Việt Nam', '10:00 am', '23:00 pm', 'egagear@gmail.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d245368.28264361413!2d107.9133126717606!3d16.07174599039564!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219c792252a13%3A0x1df0cb4b86727e06!2zxJDDoCBO4bq1bmcsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1723361548879!5m2!1svi!2s', NULL, '2025-02-27 01:21:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_general`
--

CREATE TABLE `page_general` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `app_name` varchar(255) NOT NULL DEFAULT 'Ogani',
  `welcome` varchar(255) NOT NULL DEFAULT 'Free Shipping for all Order of $99',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_general`
--

INSERT INTO `page_general` (`id`, `logo`, `app_name`, `welcome`, `created_at`, `updated_at`) VALUES
(1, 'logos/logo.png', 'EgaGear', 'Miễn phí vận chuyển toàn quốc', NULL, '2024-09-27 07:18:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_policy`
--

CREATE TABLE `page_policy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_policy`
--

INSERT INTO `page_policy` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<h3>1. Chính sách Giao hàng</h3><p>Chúng tôi cung cấp dịch vụ giao hàng trên toàn quốc với thời gian vận chuyển từ <strong>3-7 ngày làm việc</strong>, tùy theo địa điểm nhận hàng.<br>Phí vận chuyển được tính dựa trên địa chỉ của khách hàng và sẽ được thông báo trước khi xác nhận đơn hàng.</p><h3>2. Chính sách Thanh toán</h3><p>Khách hàng có thể chọn <strong>nhiều phương thức thanh toán</strong>, bao gồm:</p><ul><li>Thanh toán khi nhận hàng (<strong>COD</strong>)</li><li>Chuyển khoản ngân hàng</li><li>Thanh toán trực tuyến qua thẻ tín dụng/thẻ ghi nợ hoặc ví điện tử</li></ul><p>Thanh toán cần được hoàn tất trước khi đơn hàng được xử lý và giao đi.</p><h3>3. Chính sách Đổi trả và Hoàn tiền</h3><ul><li>Chúng tôi chấp nhận đổi trả hàng <strong>trong vòng 14 ngày</strong> kể từ khi nhận hàng để được <strong>hoàn tiền 100% hoặc đổi sản phẩm khác</strong>, với điều kiện sản phẩm còn <strong>nguyên trạng và bao bì ban đầu</strong>.</li><li><strong>Phí vận chuyển hoàn trả</strong> sẽ do khách hàng chịu, trừ khi sản phẩm có lỗi hoặc sai sót từ phía chúng tôi.</li><li><strong>Hoàn tiền</strong> sẽ được xử lý <strong>trong vòng 7 ngày làm việc</strong> sau khi chúng tôi nhận và kiểm tra sản phẩm hoàn trả.</li></ul><h3>4. Chính sách Bảo mật</h3><ul><li>Chúng tôi cam kết <strong>bảo vệ thông tin cá nhân</strong> của khách hàng và đảm bảo trải nghiệm mua sắm <strong>an toàn, bảo mật</strong>.</li><li>Thông tin khách hàng chỉ được sử dụng <strong>để xử lý đơn hàng và cải thiện dịch vụ</strong>.</li><li>Chúng tôi <strong>không chia sẻ thông tin khách hàng</strong> với bên thứ ba, trừ khi có yêu cầu theo quy định của pháp luật.</li></ul><h3>5. Điều khoản Dịch vụ</h3><ul><li>Khi sử dụng website của chúng tôi, khách hàng đồng ý với <strong>các điều khoản và điều kiện</strong>, bao gồm <strong>chính sách giao hàng, thanh toán, đổi trả và bảo mật</strong>.</li><li>Chúng tôi <strong>có quyền cập nhật hoặc thay đổi</strong> các chính sách này bất cứ lúc nào mà không cần thông báo trước.</li></ul>', NULL, '2025-02-27 01:19:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('niboss458@gmail.com', '$2y$12$s.k2FKzLUcNsTgcgeRMhQOc54YYY7W9Nq4jEKrrylhc1ZZ7KuzH1S', '2025-02-28 09:06:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `information` text DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `image`, `price`, `discount`, `description`, `information`, `quantity`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(23, 'Apple iMac M3 MQRU3SA/A  bản nâng cấp 2025', 'products/e3cbDYSxf2Cxdoy7Id0n3trB04oFzpHbIsg7KHZ5.webp', 67200000, 10, '<p>Giao hàng miễn phí trong 24h (chỉ áp dụng khu vực nội thành)</p><p>Trả góp lãi suất 0% qua thẻ tín dụng Visa, Master, JCB</p><p>Đổi trả miễn phí trong 30 ngày</p>', '<h3><strong>Đầy sức mạnh.</strong></h3><p>Máy tính tất cả trong một cực đỉnh, nay siêu mạnh mẽ với chip M3. Với màn hình 24 inch tuyệt đẹp và rộng rãi cho mọi thứ bạn cần, đồng thời là một biểu tượng của thiết kế nổi bật trong bất kỳ không gian nào, Apple iMac M3 MQRU3SA/A là lựa chọn hoàn hảo cho cả công việc và giải trí.</p><h4><strong>Bảy màu rực rỡ.</strong><br><strong>Bạn hãy chọn:&nbsp;xanh lá,&nbsp;vàng,&nbsp;cam,&nbsp;hồng,&nbsp;tím,&nbsp;xanh dương,&nbsp;bạc.</strong></h4><ul><li>Apple iMac M3 MQRU3SA/A Thiết kế nổi bật của iMac được tạo ra nhờ có Apple silicon – với một bước nhảy vọt về hiệu năng đến từ M3.</li><li>M3 tích hợp bộ xử lý, đồ họa, bộ nhớ và nhiều thứ khác vào một con chip duy nhất, gói gọn toàn bộ máy tính vào một không gian mỏng đến mức gần như không thấy.</li><li>Apple iMac M3 MQRU3SA/A với các cổng Thunderbolt nhanh như chớp.&nbsp;Và truyền tải tập tin nhanh hơn nhờ Wi‑Fi 6E.</li></ul><h3><strong>Chi tiết sắc nét.</strong></h3><p>Apple iMac M3 MQRU3SA/A với màn hình Retina 24 inch diện tích lớn, iMac đem đến một khung hình tuyệt vời dành cho đa nhiệm, phim và game nhập vai sống động, và hơn thế nữa. Độ phân giải 4,5K của màn hình thể hiện chi tiết siêu nét và rực rỡ với độ sáng 500 nit. Dải màu rộng P3 khiến mọi thứ bạn xem trở nên sống động như thật với hơn một tỷ sắc màu. Bất kể bạn làm gì, đều sẽ trông thật tuyệt trên iMac.</p><h3><strong>Camera FaceTime HD 1080p. Cận cảnh tuyệt đẹp.</strong></h3><ul><li>Đây là hệ thống camera tốt nhất từng có trên Apple iMac M3 MQRU3SA/A. Với bộ xử lý tín hiệu hình ảnh tích hợp, M3 nâng cao đáng kể chất lượng hình ảnh bằng cách phân tích và cải thiện từng điểm ảnh với hơn một nghìn tỷ phép tính mỗi giây.</li><li>Điều này tạo ra khả năng giảm nhiễu vượt trội, dải tần nhạy sáng tuyệt vời cùng độ phơi sáng hình ảnh cân bằng hơn – nhờ đó mà bạn luôn trông đẹp nhất trong mọi điều kiện ánh sáng. M3 cũng kết hợp cùng với macOS để giúp bạn luôn trở thành tiêu điểm với Lớp Phủ Người Thuyết Trình, làm bạn nổi bật bằng cách đưa bạn lên trên cùng của phần nội dung bạn đang chia sẻ trong cuộc gọi video.</li></ul><h3><strong>Micrô chất lượng phòng thu. Cho những cuộc chuyện trò chất lượng cao.</strong></h3><p>Bất kể bạn đang gọi video, ghi âm podcast hay livestream, micrô trên iMac giúp giọng nói của bạn luôn sắc nét và trong trẻo. Bộ ba micrô chất lượng phòng thu được thiết kế để giảm tiếng vọng, công nghệ điều hướng chùm sóng giúp giảm đáng kể tiếng ồn trong nền — vì vậy mọi người đều nghe thấy lời của bạn, thay vì những gì đang diễn ra xung quanh.</p><h3><strong>Hệ thống âm thanh sáu loa. Cho không gian ngập tràn âm thanh.</strong></h3><p>Apple iMac M3 MQRU3SA/A mang lại chất lượng âm thanh tuyệt vời, ngập tràn mọi không gian. Hai cặp loa trầm khử lực tạo ra âm trầm sâu, đầy đặn – và mỗi cặp đều được cân bằng với loa treble hiệu năng cao mang lại trường âm lớn, giúp đưa âm nhạc, phim ảnh và nhiều thứ khác lên một tầm cao mới. iMac cũng hỗ trợ Âm Thanh Không Gian với Dolby Atmos. Và khi kết hợp cùng với một màn hình Retina 4,5K, bạn sẽ có cảm giác như mang cả rạp phim về nhà.</p>', 1000, 1, 18, '2025-02-27 02:14:30', '2025-03-02 05:49:35'),
(24, 'Laptop Acer Predator Helios Neo PHN16-71-53M7', 'products/gzIYPMn7x3ghINonWFuY3bUpWJ2DBaZUtUTcsRgs.webp', 38000000, 0, '<p>Giao hàng miễn phí trong 24h (chỉ áp dụng khu vực nội thành)</p><p>Trả góp lãi suất 0% qua thẻ tín dụng Visa, Master, JCB</p><p>Đổi trả miễn phí trong 30 ngày</p>', '<h3><strong>LAPTOP GAMING CAO CẤP THẾ HỆ MỚI VỚI CPU INTEL THẾ HỆ 13</strong></h3><ul><li>Predator Helios Neo sở hữu CPU Intel® Core™ i7-13700HX thế hệ thứ 13 mới nhất mang đến cho Gamers hiệu suất chơi game vượt trội đồng thời là sự linh hoạt cho việc xử lý đa nhiệm tác vụ một cách mượt mà.</li><li>Kiến trúc mới đột phá này giúp phân luồng xử lý của các nhân sao cho phù hợp nhất với các tác vụ khác nhau, nhờ vậy các ứng dụng chạy nền sẽ không ảnh hưởng đến giây phút chiến game của bạn – tha hồ vừa trò chuyện, lướt web, livestream, chỉnh sửa… vừa chơi game mà không bỏ lỡ một khoảnh khắc nào.</li></ul><h3><strong>TRANG BỊ CARD ĐỒ HỌA KHỦNG NVIDIA® GEFORCE RTX™ 40 SERIES</strong></h3><p>Helios Neo cân mọi tựa game AAA nhờ sức mạnh đồ họa đến từ GPU GeForce RTX 4060. GPU này đem lại cho Predator Helios Neo hiệu năng nhanh hơn tất cả cho cả Gamers lẫn Creators nhờ thiết kế mới dựa trên kiến trúc NVIDIA Ada Lovelace cung cấp sức mạnh nhảy vọt về cả hiệu năng lẫn tính năng hỗ trợ với trí tuệ nhân tạo – AI.</p><h3><strong>CÔNG NGHỆ TẢN NHIỆT ĐỘC QUYỀN LÀM MÁT VÔ ĐỊCH</strong></h3><p>Helios Neo xứng danh là một chiếc Laptop Gaming hiệu năng đỉnh cao khi được trang bị hệ thống tản nhiệt đỉnh cao: 2 quạt kim loại 3D AeroBlade™ thế hệ 5 và hiệu ứng làm mát vượt trội đến từ lớp keo kim loại lỏng dành riêng cho CPU Intel thế hệ 13 bên trong máy.</p><h3><strong>MÀN HÌNH GAMING HOÀN HẢO: SIÊU TỐC ĐỘ – CHUẨN MÀU SẮC</strong></h3><ul><li>Acer Predator Helios Neo Màn hình 16 inch tỉ lệ 16:10 thời thượng với độ phân giải lên đến WQXGA (2560×1600) chuẩn Gaming của Predator Helios Neo có tần số quét cực cao 165Hz.</li><li>Những thông số phần cứng này kết hợp cùng công nghệ đồng bộ hình ảnh hàng đầu hiện nay – NVIDIA® G-SYNC® và tính năng NVIDIA® Advanced Optimus® (Mux Switch cải tiến) đem đến trải nghiệm chiến game trơn tru, mượt mà, không một chút xé hình nào.</li></ul><h3><strong>KIỂM SOÁT MỌI THỨ VỚI BÀN PHÍM TOÀN NĂNG</strong></h3><p>Acer Predator Helios Neo Sẵn sàng bùng nổ với bàn phím toàn năng được trang bị đèn nền RGB 4 đẹp mắt. Dễ dàng chuyển chế độ sử dụng (chơi game/yên lặng) với phím Hot-Key và mở PredatorSense™ chỉ bằng một lần nhấn phím.</p><h3><strong>THỎA SỨC CÁ NHÂN HÓA VỚI PREDATORSENSE™</strong></h3><p>Acer Predator Helios Neo Mở ngay phần mềm PredatorSense™ phiên bản hoàn toàn mới và điều chỉnh mọi thứ thật dễ dàng để Predator Neo hoạt động chính xác như những gì bạn cần.</p>', 1000, 1, 18, '2025-02-27 03:43:36', '2025-02-27 03:58:38'),
(25, 'Laptop Asus Vivobook Go 15 E1504FA R5 7520U', 'products/LWnoBC0V47iVizLcpwy1rSFZqzeSnBPNYvOcziaP.jpg', 12900000, 10, '<p>Bảo hành pin 1 năm</p><p>Bộ sản phẩm gồm: Sách hướng dẫn, Chuột ( Có dây - Có sẵn trong thùng máy ), Thùng máy, Sạc Laptop Asus ( 45W )</p><p>Hư gì đổi nấy <strong>12 tháng</strong> tại 2962 siêu thị toàn quốc (miễn phí tháng đầu) <a href=\"javascript:void(0)\">Xem chi tiết</a></p><p>Bảo hành <strong>chính hãng laptop 2 năm</strong> tại các trung tâm bảo hành hãng <a href=\"https://www.thegioididong.com/bao-hanh\">Xem địa chỉ bảo hành</a></p>', '<h3><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-go-15-e1504fa-r5-nj776w\">Laptop Asus Vivobook Go 15 E1504FA R5 7520U (NJ776W)</a> mang phong cách thiết kế sang trọng, hiệu năng mạnh mẽ cùng tính đa năng sử dụng, chắc chắn sẽ giúp bạn đáp ứng mọi tác vụ công việc và học tập hàng ngày một cách hiệu quả và chuyên nghiệp nhất.</h3><h3>Thiết kế quen thuộc, kiểu cách sang trọng&nbsp;</h3><p>Kiểu dáng đã quá quen thuộc đến từ các dòng Vivobook nhà Asus, tuy vậy nhưng với thiết kế ngoại hình tối giản hiện đại như vậy, cá nhân mình lại nhận thấy cực kì phù hợp với xu hướng thời trang hiện nay. <a href=\"https://www.thegioididong.com/laptop-asus\">Laptop Asus</a> vẫn giữ được nét thuần tuý với gam <strong>màu bạc</strong> sáng khá thu hút, vỏ được chế tác bằng <strong>nhựa </strong>nhưng lại rất cứng cáp, độ bền lại còn được đảm bảo chuẩn quân đội <strong>MIL STD 810H</strong> và các bề mặt được gia công ghép nối rất kĩ, nên mình chỉ việc trang bị thêm một chiếc túi chống sốc là có thể an tâm mang theo mọi nơi rồi.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/311178/asus-vivobook-go-15-e1504fa-r5-nj776w-acv-3.jpg\" alt=\"Laptop Asus Vivobook Go 15 E1504FA R5 7520U(NJ776W) - Thiết kế\"></figure><p>Bản lề có độ chắc chắn cao, giữ cho màn hình không bị rung lắc quá nhiều kể cả khi mình ngồi trước đầu gió hoặc có tác động lực lên máy, hơn nữa bản lề cũng cho phép <strong>mở gập được đến 180 độ</strong> để tiện chia sẻ thông tin với người xung quanh khi làm việc nhóm.</p><p>Một điểm mình thấy khá thích đó là với việc được chế tác chất liệu nhựa nên máy sở hữu cân nặng tương đối phù hợp <strong>1.63 kg</strong>, không nặng và cũng tiết kiệm diện tích hơn khi bỏ vào trong balo, thoải mái để mình mang theo đến bất cứ đâu.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/311178/asus-vivobook-go-15-e1504fa-r5-nj776w-acv-2.jpg\" alt=\"Laptop Asus Vivobook Go 15 E1504FA R5 7520U(NJ776W) - Bản lề\"></figure><p>Với kích thước tiêu chuẩn 15.6 inch nên tất nhiên phần bàn phím máy cũng có luôn hẳn cụm phím số ở bên tay phải, thuận tiện hơn nhiều khi mình nhập liệu hoặc xử lý Excel. Hơi tiếc một chút, khi bàn phím lại <strong>không </strong>được hỗ trợ <strong>đèn nền</strong> nhưng bù lại thì phím có hành trình sâu, độ nảy cao nên tính nhận diện khá tốt, mình cũng chỉ mất đâu đó vài ngày để quen tay và gõ tốt ngay cả trong bóng tối.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/311178/asus-vivobook-go-15-e1504fa-r5-nj776w-acv-7.jpg\" alt=\"Laptop Asus Vivobook Go 15 E1504FA R5 7520U(NJ776W) - Bàn phím\"></figure><p>TouchPad có kích thước thoải mái, mình là người khá thích cảm giác sử dụng chuột nhưng với độ mượt và nhạy của bàn di chuột trên chiếc <a href=\"https://www.thegioididong.com/laptop\">laptop</a>&nbsp;này, mình hoàn toàn có thể thực hiện tốt mọi việc mà không cần phải kết nối thêm rườm rà. Thêm vào đó, tính năng <strong>bảo mật vân tay</strong> được tích hợp sẵn luôn trên TouchPad, mở khoá nhanh gọn lại còn an toàn.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/311178/asus-vivobook-go-15-e1504fa-r5-nj776w-acv-8.jpg\" alt=\"Laptop Asus Vivobook Go 15 E1504FA R5 7520U(NJ776W) - TouchPad\"></figure><p>Với mẫu thiết kế thuộc phân khúc học tập, làm việc thì đâu đó máy vẫn cho đầy đủ các cổng giao tiếp thông dụng như: HDMI, USB 2.0, Jack tai nghe 3.5 mm, USB 3.2 và USB Type-C để mình thuận tiện kết nối với máy chiếu khi thuyết trình, các thiết bị như bàn phím, chuột rời và kể cả là kết nối làm việc với một chiếc màn hình rời.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/311178/asus-vivobook-go-15-e1504fa-r5-nj776w-acv-6.jpg\" alt=\"Laptop Asus Vivobook Go 15 E1504FA R5 7520U(NJ776W) - Cổng kết nối\"></figure><h3>Không gian hiển thị rộng lớn, rõ nét</h3><p><a href=\"https://www.thegioididong.com/laptop-asus-vivobook\">Laptop Asus Vivobook</a> được trang bị màn hình kích thước <strong>15.6 inch</strong> có độ phân giải <strong>Full HD (1920 x 1080)</strong> khá thoải mái để mình làm việc với nhiều nội dung khác nhau, trải nghiệm phim đã mắt hoặc chia ô cửa sổ để xử lý linh động mọi việc. Tuy nhiên, điểm hạn chế duy nhất mình thấy được ở chiếc màn hình này đó là chỉ được trang bị tấm nền <strong>TN</strong>,&nbsp;nên trong các tình huống nhìn nghiêng hoặc thay đổi tư thế ngồi thì màu sắc hình ảnh bị bóp méo đi ít nhiều gây nên cảm giác khá khó chịu, nhưng cũng phải nhìn nhận lại một chút đó là với mức giá quá rẻ của mẫu máy thì mình cũng không thể đòi hỏi quá nhiều.</p>', 1000, 1, 18, '2025-02-27 03:53:15', '2025-02-27 03:58:26'),
(26, 'Laptop HP 15 fc0085AU R5 7430U/16GB/512GB/Win11 (A6VV8PA)', 'products/B32TQkiB2PxVh0bWsfWf4ugyYwLvyd0PYiZr8cwb.jpg', 13900000, 10, '<p>Giao hàng miễn phí trong 24h (chỉ áp dụng khu vực nội thành)Trả góp lãi suất 0% qua thẻ tín dụng Visa, Master, JCBĐổi trả miễn phí trong 30 ngày</p>', '<h3>Nổi bật và quá thân quen trong phân khúc <a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\">laptop học tập - văn phòng</a> giá rẻ, chiếc <a href=\"https://www.thegioididong.com/laptop/hp-15-fc0085au-r5-a6vv8pa\">laptop HP 15 fc0085AU R5 7430U (A6VV8PA)</a> với cấu hình ổn định, vận hành hiệu quả mọi tác vụ từ làm việc đến giải trí đa phương tiện. Máy hội tụ đầy đủ các yếu tố để trở thành bạn trợ thủ lý tưởng cho người dùng.</h3><p>• <a href=\"https://www.thegioididong.com/laptop-hp-compaq\">Laptop HP</a> với vi xử lý <strong>AMD Ryzen 5 - 7430U</strong> kết hợp cùng card <strong>AMD Radeon Graphics</strong> giúp đảm nhận mượt mà từ công việc văn phòng đến giải trí, giải quyết nhanh tài liệu với Microsoft Office và Google Docs. Hơn nữa, một số công việc như thiết kế đồ hoạ thông dụng với Adobe Photoshop, Figma,...</p><p>• Bộ nhớ <strong>RAM 16 GB DDR4</strong> đảm bảo khả năng đa nhiệm mượt mà, phù hợp cho công việc đòi hỏi nhiều tài nguyên như đa nhiệm nhiều cửa sổ công việc, thiết kế đồ hoạ cơ bản mà không lo giật lag, gián đoạn. Ổ cứng <strong>SSD NVMe PCIe</strong> với dung lượng<strong> 512 GB</strong> cung cấp không gian lưu trữ rộng rãi cho nhiều ứng dụng và tệp tin khác nhau.</p><p>• Màn hình <strong>15.6 inch Full HD (1920 x 1080)</strong>&nbsp;mang lại hình ảnh sắc nét và sống động. Hơn nữa, kích cỡ màn hình cũng đủ lớn để chia nhỏ nhiều cửa sổ, tăng hiển thị và giúp người dùng hoàn thiện công việc linh hoạt hơn.</p><p>• Làm việc hay giải trí trong thời gian dài với máy tính có thể gây ra mỏi mắt và ảnh hưởng đến sức khỏe thị giác. Chống chói <strong>Anti Glare</strong> giảm thiểu tình trạng phản xạ ánh sáng khi có nguồn sáng cao chiếu vào màn hình giúp bạn nhìn rõ nội dung ngay cả khi ở môi trường ánh sáng mạnh.</p><p>• Chiếc <a href=\"https://www.thegioididong.com/laptop-hp-compaq-co-ban\">laptop HP cơ bản</a> với kiểu dáng thông dụng, hiện đại, lớp vỏ <strong>nhựa</strong> nhẹ nhàng nhưng vô cùng chắc chắn, phù hợp cho mọi không gian mà bạn sử dụng. Ngoài ra, với các thông số chiều dài, độ rộng phù hợp cùng khối lượng <strong>1.59 kg</strong> thuận lợi cho một chế độ di chuyển linh động.</p><p>• Với <strong>công tắc khóa camera</strong>&nbsp;trên <a href=\"https://www.thegioididong.com/laptop\">laptop</a>&nbsp;đảm bảo quyền riêng tư trong các cuộc gọi video. Dọc 2 bên thiết bị cũng trang bị các cổng như: HDMI, USB Type-A, USB Type-C,... hỗ trợ truy xuất dữ liệu tới các thiết bị bên ngoài thật nhanh chóng.</p>', 1000, 1, 18, '2025-02-27 04:01:07', '2025-02-27 04:01:27'),
(27, 'Laptop Apple MacBook Air 13 inch M1 8GB/256GB (MGN63SA/A)', 'products/A1hspJt6bKWBETQkZ2A8rzu3lFf29mYIGUCpVfyc.png', 17490000, 10, '<p>Giao hàng miễn phí trong 24h (chỉ áp dụng khu vực nội thành)Trả góp lãi suất 0% qua thẻ tín dụng Visa, Master, JCBĐổi trả miễn phí trong 30 ngày</p>', '<h3>Laptop Apple MacBook Air M1 2020 thuộc dòng <a href=\"https://www.thegioididong.com/laptop?g=cao-cap-sang-trong\">laptop cao cấp sang trọng</a> có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.</h3><h3>Chip Apple M1 tốc độ xử lý nhanh gấp 3.5 lần thế hệ trước</h3><p>Chiếc <a href=\"https://www.topzone.vn/mac\">MacBook</a>&nbsp;này được trang bị con chip <a href=\"https://www.thegioididong.com/tin-tuc/apple-m1-la-gi-1305904\">Apple M1 </a>được sản xuất độc quyền bởi Nhà Táo&nbsp;trên tiến trình <strong>5 nm</strong>, <strong>8 lõi</strong> bao gồm <strong>4 lõi</strong> tiết kiệm điện và <strong>4 lõi</strong> hiệu suất cao, mang đến một hiệu năng kinh ngạc, xử lý mọi tác vụ văn phòng một cách mượt mà như Word, Excel, Powerpoint,... thực hiện tốt các nhiệm vụ chỉnh sửa hình ảnh, kết xuất 2D trên các phần mềm Photoshop, AI,... máy còn hỗ trợ tiết kiệm được điện năng cao.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-280323-125154.jpg\" alt=\"Apple MacBook Air M1 2020 - Làm việc đa nhiệm\"></figure><p>Đi cùng CPU là card đồ họa tích hợp <strong>7 nhân GPU</strong>&nbsp;có hiệu năng vượt trội sau nhiều bài thử nghiệm hiệu năng đồ họa của benchmark, bạn có thể sử dụng nhiều phần mềm đồ họa chuyên nghiệp, thoả sức sáng tạo nội dung, render video ổn định với chất lượng hình ảnh cao.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-280323-125156.jpg\" alt=\"Apple MacBook Air M1 2020 - Render video\"></figure><p><a href=\"https://www.thegioididong.com/laptop-apple-macbook-air\">MacBook Air</a> được trang bị <strong>RAM 8 GB</strong> cho khả năng đa nhiệm cao, bạn có thể mở cùng lúc nhiều cửa sổ hoặc ứng dụng để phục vụ cho công việc, giải trí của mình ví dụ như vừa mở Chrome tra cứu thông tin vừa mở Word để làm việc cực kỳ tiện lợi mà không cần lo lắng là máy sẽ bị đơ.</p><p><a href=\"https://www.thegioididong.com/laptop-apple-macbook\">MacBook </a>sở hữu ổ cứng <strong>SSD 256 GB</strong> cho tốc độ xử lý nhanh chóng, thao tác cuộn trong Safari cực mượt, đánh thức máy đang trong chế độ ngủ chỉ mất vài giây và đem đến không gian lưu trữ rộng rãi bạn cứ thoải mái lưu lại những bộ phim hay mà không lo nó sẽ chiếm chỗ của các tệp tài liệu công việc.</p>', 1000, 1, 18, '2025-02-27 04:03:03', '2025-02-28 07:34:14'),
(28, 'Laptop Lenovo Ideapad Slim 3 15IAH8 i5 12450H/16GB/512GB/Win11 (83ER000EVN)', 'products/UJuvujS6uwD3OGPS2oLnfNxBMRnZ6hXKaFWtZWfV.jpg', 14590000, 0, '<p>Bảo hành pin 1 nămBộ sản phẩm gồm: Sách hướng dẫn, Chuột ( Có dây - Có sẵn trong thùng máy ), Thùng máy, Sạc Laptop Asus ( 45W )Hư gì đổi nấy 12 tháng tại 2962 siêu thị toàn quốc (miễn phí tháng đầu) Xem chi tiếtBảo hành chính hãng laptop 2 năm tại các trung tâm bảo hành hãng Xem địa chỉ bảo hành</p>', '<h3><a href=\"https://www.thegioididong.com/laptop/lenovo-ideapad-slim-3-15iah8-i5-83er00evn\">Laptop&nbsp;Lenovo Ideapad Slim 3 15IAH8 i5 12450H&nbsp;(83ER000EVN)</a> một mẫu <a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\">laptop học tập - văn phòng</a> sở hữu cấu hình mạnh mẽ với con chip Intel dòng H, RAM 16 GB cùng đa dạng các công nghệ hiện đại, hứa hẹn sẽ mang đến cho người dùng những trải nghiệm sử dụng làm việc và giải trí đa phương tiện một cách tối ưu và đầy tiện nghi.</h3><h3>Đẹp mắt và thanh lịch hơn</h3><p>Theo như đánh giá cá nhân của mình, khi nhìn vào những chiếc <a href=\"https://www.thegioididong.com/laptop-lenovo-ideapad\">laptop Lenovo IdeaPad</a> thì người dùng có thể sẽ không nhận ra quá nhiều những điểm khác biệt giữa các mẫu, tuy nhiên thiết kế kiểu truyền thống là thế nhưng lại không hề \"lối mòn\" một chút nào, những mẫu máy này vẫn khá thu hút và được ưa chuộng về kiểu dáng, đối với không chỉ các bạn trẻ Gen Z mà còn là những đối tượng người dùng đã đi làm.&nbsp;</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/313333/lenovo-ideapad-slim-3-15iah8-i5-83er00evn-acv-1.jpg\" alt=\"Laptop Lenovo Ideapad Slim 3 15IAH8 i5 12450H (83ER000EVN) - Thiết kế\"></figure><p>Ideapad Slim 3 được hoàn thiện với lớp <strong>vỏ nhựa</strong> bền bỉ đạt độ bền chuẩn quân đội&nbsp;<strong>MIL STD 810H</strong> và được phủ một lớp sơn xám trầm, mặt lưng máy thì không được hoàn thiện với quá nhiều chi tiết, chỉ có logo hãng được khắc nhỏ ở góc. Mình khá thích những kiểu dáng tối giản như thế này, không gây quá nổi bật khi sử dụng ở chỗ đông người nhưng vẫn đảm bảo được tính thẩm mỹ cao và độ chuyên nghiệp khi sử dụng.</p><p>Cân nặng của máy chỉ nhẹ<strong> 1.62 kg</strong> nên cảm giác cầm nắm rất gọn gàng, mình có thể dễ dàng cất máy vào balo để mang đi học, đi làm hay ra quán cafe chạy deadline mà không sợ cồng kềnh.&nbsp;Đặc biệt, bản lề có thể mở <strong>180 độ</strong>, giúp mình linh hoạt hơn khi sử dụng, dễ dàng chia sẻ thông tin khi họp hay làm việc cùng mọi người.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/313333/lenovo-ideapad-slim-3-15iah8-i5-83er00evn-acv-2.jpg\" alt=\"Laptop Lenovo Ideapad Slim 3 15IAH8 i5 12450H (83ER000EVN) - 180 độ\"></figure><p>Bàn phím sở hữu kiểu dáng thiết kế Full size quen thuộc nên rất dễ dàng khi mình nhập số liệu để tính toán, hành trình phím sâu cùng độ nảy ổn định giúp cho việc gõ trong thời gian dài cũng không bị mỏi hay khó chịu tay. Mình cũng hơi tiếc một chút khi máy <strong>không </strong>hỗ trợ <strong>đèn nền</strong> nhưng mình thấy nếu gõ quen tay trong thời gian dài thì hoàn toàn tự tin sử dụng ngay cả khi thiếu sáng luôn.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/313333/lenovo-ideapad-slim-3-15iah8-i5-83er00evn-acv-9.jpg\" alt=\"Laptop Lenovo Ideapad Slim 3 15IAH8 i5 12450H (83ER000EVN) - Bàn phím\"></figure><p>Touchpad mượt mà dễ dàng di chuyển quên đi cảm giác sử dụng chuột ngoài cho những tác vụ công việc văn phòng. Ngoài ra, Lenovo IdeaPad Slim 3 còn được tích hợp <strong>bảo mật vân tay</strong> lên nút nguồn, tạo sự an toàn tuyệt đối cho thiết bị, đồng thời giúp tăng khả năng truy cập vào máy nhanh hơn hoặc đăng nhập vào các tài khoản để thanh toán nhanh chóng, vô cùng tiện lợi so với nhập mật khẩu truyền thống.</p><p>Đầy đủ các dạng cổng kết nối thông dụng từ: HDMI, Jack tai nghe 3.5 mm, USB 3.2,&nbsp;USB-C 3.2&nbsp;và khe SD tạo điều kiện khá thuận lợi cho mình có thể xuất file thuyết trình sang màn hình ngoài, kết nối thêm với chuột ngoài hoặc liên kết với các thiết bị khác cũng nhanh chóng hơn.</p>', 1000, 1, 18, '2025-02-28 07:05:43', '2025-02-28 07:05:46'),
(29, 'Laptop Acer Nitro V 15 ANV15 41 R2UP R5 6600H/16GB/512GB/4GB', 'products/32TUeuCxGY9gG8Y5kZnrBBT4uNU1RyWWVtS9U8Sk.jpg', 19600000, 10, '<p>Bảo hành pin 1 nămBộ sản phẩm gồm: Sách hướng dẫn, Chuột ( Có dây - Có sẵn trong thùng máy ), Thùng máy, Sạc Laptop Asus ( 45W )Hư gì đổi nấy 12 tháng tại 2962 siêu thị toàn quốc (miễn phí tháng đầu) Xem chi tiếtBảo hành chính hãng laptop 2 năm tại các trung tâm bảo hành hãng Xem địa chỉ bảo hành</p>', '<h3>Bạn đang tìm kiếm một chiếc laptop không chỉ mạnh mẽ trong cấu hình mà còn đậm cá tính nhưng giá thành lại còn hợp lý.&nbsp;<a href=\"https://www.thegioididong.com/laptop/acer-nitro-v-15-anv15-41-r2up-r5-nhqpgsv004\">Laptop Acer Nitro V 15 ANV15 41 R2UP R5 6600H (NH.QPGSV.004)</a> chính là lựa chọn hoàn hảo để nâng tầm trải nghiệm game và sáng tạo của bạn. Sở hữu thiết kế ấn tượng cùng hiệu năng vượt trội, chiếc laptop này hứa hẹn sẽ chinh phục cả những game thủ khó tính nhất.</h3><p>• <a href=\"https://www.thegioididong.com/laptop-acer-nitro\">Laptop Acer Nitro</a> được thiết kế với bộ vi xử lý<strong> AMD Ryzen 5 - 6600H</strong> kết hợp với card đồ họa rời <strong>NVIDIA GeForce RTX 2050 4 GB</strong>. Đây là combo lý tưởng để bạn chiến mọi tựa game đình đám như Valorant, League of Legends, CS:GO hay thậm chí các game AAA với cài đặt đồ họa từ trung bình đến cao. Không chỉ là cỗ máy chơi game, chiếc <a href=\"https://www.thegioididong.com/laptop\">laptop</a> này còn là trợ thủ đắc lực cho việc chỉnh sửa video, thiết kế đồ họa 2D, 3D hay lập trình.</p><p>• <strong>RAM 16 GB DDR5</strong> giúp bạn dễ dàng chuyển đổi giữa nhiều ứng dụng cùng lúc, từ trình duyệt web với hàng chục tab đến các phần mềm nặng như Adobe Premiere, Davinci Resolve,... Hơn thế nữa, khả năng nâng cấp RAM lên đến <strong>96 GB</strong> sẽ mở ra không gian mới cho những tác vụ đòi hỏi hiệu suất cao. Ổ cứng<strong> SSD 512 GB NVMe PCIe </strong>không chỉ giúp tăng tốc độ khởi động máy mà còn mang lại không gian lưu trữ rộng rãi cho các game bom tấn và dữ liệu công việc, thoải mái mở rộng đến<strong> 4 TB</strong> nếu bạn có nhu cầu.</p><p>•&nbsp;Với màn hình <strong>15.6 inch Full HD (1920 x 1080)</strong> cùng tấm nền <strong>IPS</strong>, mọi hình ảnh đều hiển thị sắc nét và sống động, không bị mất màu quá nhiều cho dù nhìn ở các hướng khác nhau. Tần số quét <strong>165 Hz</strong>&nbsp;cao hơn hẳn so với các mẫu cùng dòng cũ, không chỉ giúp các chuyển động mượt mà hơn mà còn mang lại lợi thế lớn trong các tựa game yêu cầu tốc độ chuyển cảnh nhanh.</p><p>•&nbsp;Hệ thống âm thanh <strong>Acer TrueHarmony,&nbsp;Spatial Audio</strong> kết hợp <strong>DTS:X Ultra </strong>tái tạo mọi hiệu ứng âm thanh chân thực nhất, từ tiếng bước chân trong game đến giai điệu du dương trong các bản nhạc yêu thích.</p><p>•&nbsp;Sở hữu vẻ ngoài hầm hố với các đường nét góc cạnh và họa tiết logo phong cách Cyberpunk độc đáo, Acer Nitro V thực sự là tuyên ngôn cá tính cho các game thủ.&nbsp;<strong>Vỏ nhựa</strong> cứng cáp màu đen không chỉ đảm bảo độ bền mà còn giúp máy toát lên vẻ mạnh mẽ. Dù thuộc dòng <a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\">laptop gaming</a>, nhưng khối lượng trung bình&nbsp;<strong>2.1 kg</strong>&nbsp;mang đến sự cơ động tiện lợi, thuận tiện mang theo mọi lúc mọi nơi.</p><p>• Thoải mái chiến game vào đêm khuya với <strong>đèn nền</strong> bàn phím đơn sắc tích hợp sẵn. <a href=\"https://www.thegioididong.com/laptop-acer\">Laptop Acer</a> hỗ trợ đầy đủ các cổng kết nối cần thiết như:&nbsp;LAN (RJ45), Jack tai nghe 3.5 mm, USB 3.2, HDMI, USB Type-C USB 4,... giúp bạn dễ dàng liên kết với màn hình ngoài, tai nghe gaming hay bất kỳ thiết bị ngoại vi nào.</p>', 1000, 1, 18, '2025-02-28 07:09:50', '2025-02-28 07:09:53'),
(30, 'Laptop Lenovo Gaming LOQ Essential 15IAX9E i5', 'products/iPEOd5C65tsOZzCs2LNIG5rfegyaNUFyiHxV9Pwz.jpg', 19600000, 10, '<p>Bảo hành pin 1 nămBộ sản phẩm gồm: Sách hướng dẫn, Chuột ( Có dây - Có sẵn trong thùng máy ), Thùng máy, Sạc Laptop Asus ( 45W )Hư gì đổi nấy 12 tháng tại 2962 siêu thị toàn quốc (miễn phí tháng đầu) Xem chi tiếtBảo hành chính hãng laptop 2 năm tại các trung tâm bảo hành hãng Xem địa chỉ bảo hành</p>', '<h3><a href=\"https://www.thegioididong.com/laptop/lenovo-loq-15iax9e-i5-83lk000bvn\">Laptop Lenovo Gaming LOQ Essential 15IAX9E i5 12450HX (83LK000BVN)</a> không chỉ là một chiếc laptop, mà là vũ khí mạnh mẽ giúp bạn chinh phục mọi đấu trường ảo. Với ngoại hình hầm hố, thiết kế đậm chất gaming và cấu hình siêu mạnh mẽ, chiếc máy này chắc chắn sẽ mang lại những trải nghiệm chơi game không thể tuyệt vời hơn.</h3><p>• <a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\">Laptop gaming</a> sở hữu con chip&nbsp;<strong>Intel Core i5 12450HX</strong> với tốc độ xung nhịp tối đa lên đến <strong>4.4 GHz</strong>, Lenovo LOQ dễ dàng xử lý các tựa game yêu cầu cao như LOL, GTA V, Cyberpunk 2077 hay bất kỳ tựa game nhập vai. Mọi thao tác đều mượt mà, từ chiến đấu kịch tính cho đến việc sử dụng các phần mềm văn phòng, đồ họa hay lập trình.</p><p>• Với GPU NVIDIA GeForce <strong>RTX 2050 4 GB </strong>hỗ trợ khả năng xử lý đồ họa vượt trội, giúp bạn chơi game ở mức cấu hình cao tinh chỉnh từ Medium đến High mà không lo giật lag. Từ những pha combat mãn nhãn cho đến các cảnh hành động nhanh, mọi chuyển động đều được tái hiện mượt mà và chân thực.</p><p>• Bộ nhớ <strong>RAM 16 GB DDR5</strong> giúp bạn mở nhiều ứng dụng cùng lúc mà không gặp phải bất kỳ sự chậm trễ nào. Chạy game nặng, phần mềm đồ họa hay thiết kế 3D không vấn đề gì. Hơn nữa, nếu bạn cần nâng cấp, máy cũng hỗ trợ RAM lên đến <strong>32 GB</strong> để thoải mái xử lý mọi tác vụ nặng nề hơn.</p><p>• Với ổ cứng <strong>SSD NVMe PCIe Gen</strong> dung lượng<strong> 512 GB</strong>, bạn sẽ không phải lo lắng về việc chờ đợi quá lâu khi khởi động game hay truy cập dữ liệu, tốc độ nhanh chóng và không gian lưu trữ rộng rãi sẽ giúp bạn luôn sẵn sàng cho trận chiến tiếp theo. Nếu cần thêm dung lượng, bạn có thể nâng cấp lên đến<strong> 1 TB</strong>.</p><p>• Màn hình <strong>15.6 inch</strong> với tấm nền <strong>IPS</strong> cho độ phân giải <strong>Full HD (1920 x 1080)</strong> mang đến hình ảnh sắc nét, màu sắc trung thực. Đặc biệt, tần số quét <strong>144 Hz</strong>&nbsp;trên <a href=\"https://www.thegioididong.com/laptop-lenovo\">laptop Lenovo</a> khiến mỗi chuyển động trong game đều trở nên mượt mà, chính xác giúp bạn dễ dàng theo dõi các pha hành động và nâng cao khả năng phản xạ.</p><p>• Độ phủ màu <strong>100% sRGB</strong> mang đến độ chuẩn xác cao hơn khi giải quyết công việc đồ hoạ. Công nghệ chống chói <strong>Anti Glare</strong> giúp bảo vệ mắt và cung cấp trải nghiệm hình ảnh chân thực trong mọi điều kiện ánh sáng, cho phép game thủ chơi lâu mà không bị mỏi mắt.</p><p>• Giải trí ấn tượng với hệ thống âm thanh 3D <strong>Nahimic Audio</strong> đem đến trải nghiệm âm thanh sống động, rõ ràng và chi tiết, giúp bạn nghe rõ từng bước chân của đối thủ trong các tựa game bắn súng. Khả năng tái tạo âm thanh chi tiết còn tăng cường sự tập trung và phản ứng nhanh trong các tình huống game căng thẳng.</p><p>• <a href=\"https://www.thegioididong.com/laptop-lenovo-loq\">Laptop Lenovo LOQ Gaming</a> sở hữu bộ khung cứng cáp, thiết kế đường nét sắc sảo và logo nổi bật mang lại vẻ ngoài mạnh mẽ. Khối lượng <strong>1.77 kg</strong> vừa đủ để bạn dễ dàng mang theo khi di chuyển. Ngoài ra, thiết bị cũng có hỗ trợ thêm <strong>đèn nền đơn sắc</strong> để các game thủ có thể thuận tiện chiến game ngay cả khi thiếu sáng.</p><p>• <a href=\"https://www.thegioididong.com/laptop\">Laptop</a> này được trang bị đa dạng cổng kết nối như USB Type-C, USB 3.2, LAN,... giúp bạn dễ dàng kết nối với chuột, bàn phím, màn hình hay tai nghe để tối ưu hóa trải nghiệm gaming của mình.</p>', 1000, 1, 18, '2025-02-28 07:26:39', '2025-02-28 07:26:41'),
(31, 'Laptop Acer Aspire 16 AI A16 71M 59L5 Ultra 5 125H', 'products/lYNWjTOHvbFVja7C8cDw9NygWdm8xlVmM2DuHYFT.jpg', 18600000, 10, '<p>Bảo hành pin 1 nămBộ sản phẩm gồm: Sách hướng dẫn, Chuột ( Có dây - Có sẵn trong thùng máy ), Thùng máy, Sạc Laptop Asus ( 45W )Hư gì đổi nấy 12 tháng tại 2962 siêu thị toàn quốc (miễn phí tháng đầu) Xem chi tiếtBảo hành chính hãng laptop 2 năm tại các trung tâm bảo hành hãng Xem địa chỉ bảo hành</p>', '<p>5/18</p><h2>Thế Giới Di Động cam kết</h2><figure class=\"image\"><img src=\"https://cdnv2.tgdd.vn/pim/cdn/images/202410/icon%20sp%20kem%20theo142836.png\" alt=\"chính sách bảo hành\"></figure><p>Bộ sản phẩm gồm: Sách hướng dẫn, Thùng máy, Sạc Laptop Acer ( 65W )</p><figure class=\"image\"><img src=\"https://cdnv2.tgdd.vn/pim/cdn/images/202410/Exchange232102.png\" alt=\"chính sách bảo hành\"></figure><p>Hư gì đổi nấy <strong>12 tháng</strong> tại 2961 siêu thị toàn quốc (miễn phí tháng đầu) <a href=\"javascript:void(0)\">Xem chi tiết</a></p><figure class=\"image\"><img src=\"https://cdnv2.tgdd.vn/pim/cdn/images/202410/icon%20bao%20hanh170837.png\" alt=\"chính sách bảo hành\"></figure><p>Bảo hành <strong>chính hãng laptop 1 năm</strong> tại các trung tâm bảo hành hãng <a href=\"https://www.thegioididong.com/bao-hanh\">Xem địa chỉ bảo hành</a></p><h2>Thông số kỹ thuật</h2><h2>Bài viết đánh giá</h2><h3><a href=\"https://www.thegioididong.com/laptop/acer-aspire-16-ai-a16-71m-59l5-ultra-5-nxj4ysv001\">Laptop Acer Aspire 16 AI A16 71M 59L5 Ultra 5 125H (NX.J4YSV.001)</a> phiên bản năm nay sở hữu những cải tiến vượt bậc về cả phần cứng và trải nghiệm người dùng, màn hình 16 inch đã mắt,... sản phẩm này chắc chắn sẽ chinh phục cả những khách hàng khó tính nhất, từ học sinh sinh viên đến người đi làm, lựa chọn cực lý tưởng trong tầm giá.</h3><p>• Được trang bị bộ vi xử lý <strong>Intel Core Ultra 125H</strong> thế hệ mới với <strong>14 nhân </strong>và <strong>18 luồng</strong>, <a href=\"https://www.thegioididong.com/laptop-acer-aspire\">laptop Acer Aspire</a> này dễ dàng đáp ứng các nhu cầu từ làm việc văn phòng, lập trình, đến giải trí đa phương tiện. Tốc độ CPU tối đa đạt <strong>4.5 GHz</strong> nhờ công nghệ <strong>Turbo Boost </strong>góp phần xử lý mượt mà hơn các ứng dụng đòi hỏi hiệu suất cao như chỉnh sửa video cơ bản hoặc đồ họa bán chuyên. Sự kết hợp với card đồ họa <strong>Intel Arc Graphics</strong> mang lại trải nghiệm hình ảnh mượt mà, hỗ trợ tốt cho các ứng dụng như Photoshop, Illustrator và cả những tựa game phổ biến hiện nay.</p><p>• Mẫu chip phiên bản \"mới\" này của Intel còn có thêm NPU - nhân xử lý AI đặc biệt hỗ trợ tăng tốc độ tính toán ở các tác vụ thông thường, máy tự động học hỏi và phân luồng công việc cá nhân của bạn để hiệu quả và tiết kiệm điện, nhiều tiện ích trí tuệ nhân tạo và trợ lý ảo thực hiện hỏi đáp.</p><p>•&nbsp;Với <strong>RAM 16 GB LPDDR5X</strong> tốc độ bus lên đến<strong> 8533 MHz</strong>, việc chạy nhiều ứng dụng cùng lúc không còn là vấn đề. Dù chỉ có sẵn mức RAM onboard cũng thừa sức để xử lý các nhu cầu phức tạp, từ làm việc trên hàng chục tab trình duyệt đến chạy các phần mềm chuyên dụng. Kèm theo đó, ổ cứng <strong>SSD 512 GB</strong> không chỉ cho tốc độ khởi động nhanh mà còn có khả năng nâng cấp lên <strong>2 TB</strong>, giúp bạn thoải mái lưu trữ dữ liệu.</p><p>•&nbsp;Màn hình<strong> IPS </strong>kích<strong> </strong>thước<strong> 16 inch Full HD+</strong>, <a href=\"https://www.thegioididong.com/laptop-acer\">laptop Acer</a> mang đến chất lượng hiển thị ấn tượng, màn hình lớn kèm khả trình chiếu màu sắc \"chuẩn chỉ\" ở mọi hướng nhìn tạo độ tập trung cao trong quá trình giải trí hay làm việc. Công nghệ <strong>Acer ComfyView</strong> hạn chế lượng ánh sáng xanh đến mắt người dùng, nguyên nhân chính gây nên các hiện tượng mất ngủ, đau mỏi mắt.</p><p>•&nbsp;Hệ thống âm thanh <strong>Acer TrueHarmony</strong> mang đến chất lượng âm thanh sống động, lý tưởng để nghe nhạc, xem phim hoặc chơi game. Cùng công nghệ<strong>&nbsp;Acer Purified Voice </strong>lọc tiếng ồn, nhiễu xung quanh tạo nên góc làm việc trực tuyến ấn tượng, hiệu quả.</p><p>•&nbsp;Với độ dày chỉ <strong>17.9 mm</strong> và khối lượng&nbsp;<strong>1.64 kg</strong>, <a href=\"https://www.thegioididong.com/laptop\">laptop</a> này rất phù hợp cho những người thường xuyên di chuyển. Lớp <strong>vỏ nhựa cao cấp</strong> cùng <strong>nắp lưng kim loại </strong>không chỉ mang đến vẻ ngoài hiện đại mà còn đảm bảo độ bền cao trong quá trình sử dụng và mang theo di chuyển. Tích hợp tính năng <strong>bảo mật vân tay</strong> nâng cao độ bảo mật và tiện lợi hơn khi truy cập laptop.</p><p>•&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\">Laptop học tập - văn phòng</a> được trang bị đầy đủ các cổng kết nối cần thiết như HDMI, USB Type-C, USB 3.2 và jack tai nghe, giúp bạn dễ dàng kết nối với các thiết bị ngoại vi, màn hình ngoài hoặc chuyển dữ liệu từ thiết bị di động.</p>', 1000, 1, 18, '2025-02-28 07:29:26', '2025-02-28 07:29:57'),
(32, 'Laptop MSI Gaming Thin 15 B12UCX i5 12450H/16GB/512GB/4GB', 'products/S8F9FYktIvv2JXKPBPj2TixM2wz4kwlZMxxtFXN9.jpg', 15600000, 10, '<p>Bảo hành pin 1 nămBộ sản phẩm gồm: Sách hướng dẫn, Chuột ( Có dây - Có sẵn trong thùng máy ), Thùng máy, Sạc Laptop Asus ( 45W )Hư gì đổi nấy 12 tháng tại 2962 siêu thị toàn quốc (miễn phí tháng đầu) Xem chi tiếtBảo hành chính hãng laptop 2 năm tại các trung tâm bảo hành hãng Xem địa chỉ bảo hành</p>', '<h3>Sự kết hợp hoàn hảo giữa bộ vi xử lý Intel Gen 12 mạnh mẽ và card đồ họa NVIDIA 20 series tiên tiến biến <a href=\"https://www.thegioididong.com/laptop/msi-thin-15-b12ucx-i5-2046vn\">laptop MSI Gaming Thin 15 B12UCX i5 12450H (2046VN)</a> thành cỗ máy chiến game và sáng tạo nội dung đích thực, đáp ứng mọi nhu cầu sử dụng của người dùng.&nbsp;</h3><p>• <a href=\"https://www.thegioididong.com/laptop-msi-gaming-gf\">Laptop MSI Gaming Thin</a> được trang bị bộ vi xử lý <strong>Intel Core i5 12450H</strong> với <strong>8 nhân, 12 luồng</strong>&nbsp;cung cấp tốc độ xử lý ấn tượng giúp bạn hoàn thành mọi tác vụ một cách nhanh chóng và hiệu quả, dù là những công việc đòi hỏi khả năng tính toán cao hay những tựa game AAA nặng đô.</p><p>• Card đồ họa <strong>NVIDIA GeForce RTX 2050</strong> với bộ nhớ <strong>4 GB</strong> cho bạn tận hưởng hình ảnh, đồ hoạ nét, mượt mà trong game và các ứng dụng đồ họa, đồng thời chiến mượt mọi tựa game yêu thích.</p><p>• Dung lượng <strong>RAM 16 GB</strong> cho phép bạn mở nhiều ứng dụng cùng lúc, chuyển đổi qua lại linh hoạt mà không lo hiện tượng giật lag hay đơ máy.</p><p>• Ổ cứng <strong>SSD PCIe NVMe</strong> dung lượng <strong>512 GB</strong> mang đến tốc độ khởi động và tải ứng dụng siêu nhanh, giúp bạn tiết kiệm thời gian và nâng cao hiệu suất công việc. Bên cạnh đó cũng đáp ứng tốt nhu cầu lưu trữ dữ liệu, cho phép bạn cài đặt nhiều ứng dụng và các tựa game yêu thích.</p><p>• <a href=\"https://www.thegioididong.com/laptop-msi\">Laptop MSI</a> sở hữu màn hình <strong>15.6 inch</strong> có độ phân giải <strong>Full HD (1920 x 1080)</strong>, cho hình ảnh rõ nét, sống động, thể hiện hoàn hảo từng chi tiết trong game và phim ảnh. Tấm nền <strong>IPS</strong> mang đến góc nhìn rộng lên đến <strong>178 độ</strong>, cung cấp cho bạn những khung hình không bị biến dạng dù nhìn ở bất kỳ góc độ nào.</p><p>• Tốc độ làm mới <strong>144 Hz</strong> hỗ trợ tái tạo những khung hình tốc độ cao một cách mượt mà, giúp giảm thiểu hiện tượng xé hình và nhòe ảnh, mang đến cho bạn trải nghiệm chơi game, xem phim hành động giải trí mãn nhãn.</p><p>• Laptop sở hữu diện mạo mạnh mẽ, cá tính với vỏ ngoài được làm bằng <strong>nhựa</strong> cứng cáp, kết hợp <strong>nắp lưng kim loại</strong> phủ sơn xám, mang đến sự bền bỉ và vẻ ngoài đậm chất gaming. Bàn phím được trang bị <strong>đèn nền xanh&nbsp;</strong>giúp bạn dễ dàng thao tác trong mọi môi trường, kể cả ban đêm hay ở nơi thiếu sáng.</p><p>• MSI Gaming Thin 15 ghi điểm với khối lượng chỉ&nbsp;<strong>1.86 kg</strong>, biến nó thành chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\">laptop gaming</a>&nbsp;lý tưởng cho những ai thường xuyên di chuyển. Bạn có thể mang máy theo bên mình để chiến game mọi lúc mọi nơi mà không gặp bất kỳ trở ngại nào.</p><p>• Mẫu&nbsp;<a href=\"https://www.thegioididong.com/laptop\">laptop</a>&nbsp;này&nbsp;còn được trang bị đầy đủ các cổng kết nối thông dụng, đáp ứng mọi nhu cầu sử dụng của bạn như USB Type-C, HDMI, USB 3.2, Headphone-out, Mic-in, LAN.</p>', 1000, 1, 18, '2025-02-28 07:32:37', '2025-02-28 07:32:39'),
(34, 'Meo Meo', 'products/iHhoFAYrGAaE6TResjKSqfJR0dctR58uJ7N3L4WG.jpg', 99999999, 50, '<p>J97</p>', '<p>Chây 97</p>', 10, 1, 18, '2025-03-02 05:57:50', '2025-03-03 19:40:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-07-23 20:50:05', '2024-07-23 20:50:05'),
(2, 'staff', '2024-07-23 20:50:05', '2024-07-23 20:50:05'),
(3, 'user', '2024-07-23 20:50:05', '2024-07-23 20:50:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7Yokwu6ZJh9uFyFdo8wKNvzc4diAtp5UEdIYZz4U', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicDhQa1pod1F1UGx6dGN4NW11Y1FER2swR1NRWFNjelZlNUZkY0tRZyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTQ7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741507678),
('nFhQa0HLLYhWClY5gciwKSJpXxD1gzMdNjMfhbYr', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNk11YTZCYW83TDltWXRRU29kZEdJVjNZV0d2WUF5bWZxdG1TcldLNiI7czo0OiJjYXJ0IjtOO3M6OToiZmF2b3VyaXRlIjtOO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc2hvcCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE0O3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTc0MTA1Njc2NDt9fQ==', 1741059440);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `disable` int(11) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `avatar`, `disable`, `address`, `phone`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 1, 'avatar/uY5cEFr88TL9OOQ8k8mHICy63bALB7KB06nBK2vK.jpg', 0, 'Địa chỉ test', '0999888777', 'admin', 'admin@gmail.com', NULL, '$2y$12$ogdXc0VXsfrhI7wnMDk2TOlgaMwv6JrTad3H.VyCUqgJoCum6HbUO', 'TOKa724bWqjalbASfa96otAgXd8fzD7j4v7UcP8JN4uBTUj13WXBGEnjrPRW', '2025-02-27 01:10:42', '2025-02-27 02:00:38'),
(14, 1, 'avatar/0gqNSrl2dho9J5HWd6LUOVnZkdvcx2aRBqmzpPXY.jpg', 0, 'Trực Thanh-Trực Ninh-Nam Định', '0889639655', 'Vũ Duy Bình', 'vubinh02122004@gmail.com', NULL, '$2y$12$bt1ikC9x8CihUEDKNdAX8ezq25E.5KQF4DidZ/01X3F6EgOwWem0u', 'DhR0sLxPP6ToXNTynqB1RgSIySFqoIwfAZuNZrf3Vfuky850ZdkNXXG2XKQ3', '2025-03-02 05:42:27', '2025-03-02 06:04:14'),
(15, 3, 'avatar/GWed747lU6ptnCRTAkt3BVvsicxmEirrwlvx6mCu.jpg', 0, 'Hà Đông- Hà Nội', '123456789', 'Vũ Bình', '22010004@st.phenikaa-uni.edu.vn', '2025-03-02 06:14:32', '$2y$12$8h01gi/beyZj0nh8JzmnCOh4KzREjfac/7iU594KQAM7Es4LOxGve', NULL, '2025-03-02 06:13:36', '2025-03-03 19:52:23');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_blogs`
--
ALTER TABLE `category_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `page_contact`
--
ALTER TABLE `page_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page_general`
--
ALTER TABLE `page_general`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page_policy`
--
ALTER TABLE `page_policy`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `category_blogs`
--
ALTER TABLE `category_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT cho bảng `page_contact`
--
ALTER TABLE `page_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `page_general`
--
ALTER TABLE `page_general`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `page_policy`
--
ALTER TABLE `page_policy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category_blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
