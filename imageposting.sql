-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 12 月 21 日 23:55
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `imageposting`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `comments`
--

INSERT INTO `comments` (`id`, `image_id`, `comment`, `create_date`) VALUES
(10, 39, '銀座　朧月\r\n4.05点\r\nつけ麺大盛り1000円', '2023-12-21 11:22:17'),
(11, 37, '一蘭　船橋店\r\n4.0点\r\n博多豚骨王道', '2023-12-21 11:25:36'),
(12, 39, '銀座　よーヘイと食べたラーメン\r\n', '2023-12-21 12:29:04'),
(13, 23, 'なんかお菓子が載っていたラーメン\r\nみんな食べにきてね', '2023-12-21 12:32:42'),
(14, 42, '堀もしが誕生日にデートした寿司', '2023-12-21 12:35:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(125) NOT NULL,
  `create_data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `images`
--

INSERT INTO `images` (`id`, `file_name`, `create_data`) VALUES
(22, 'IMG_0655 2.JPG', '2023-12-21 11:08:05'),
(23, 'IMG_0566.JPG', '2023-12-21 11:08:18'),
(25, 'IMG_9789 2.JPG', '2023-12-21 11:08:35'),
(26, 'IMG_9722 2.JPG', '2023-12-21 11:08:43'),
(27, 'IMG_1673 2.JPG', '2023-12-21 11:08:53'),
(28, 'IMG_9363.JPG', '2023-12-21 11:09:03'),
(29, 'IMG_1648 2.JPG', '2023-12-21 11:09:19'),
(30, 'IMG_9277 2.JPG', '2023-12-21 11:10:25'),
(31, 'FullSizeRender 2.jpg', '2023-12-21 11:10:33'),
(32, 'IMG_0565.JPG', '2023-12-21 11:10:47'),
(33, 'IMG_0418.JPG', '2023-12-21 11:11:13'),
(35, 'IMG_7604.JPG', '2023-12-21 11:12:08'),
(36, 'IMG_1102.JPG', '2023-12-21 11:20:17'),
(37, 'IMG_9760 2.JPG', '2023-12-21 11:20:45'),
(38, 'IMG_8962.JPG', '2023-12-21 11:21:02'),
(39, 'IMG_8852.JPG', '2023-12-21 11:21:11'),
(40, 'IMG_8962.JPG', '2023-12-21 12:28:45'),
(41, 'IMG_9363.JPG', '2023-12-21 12:32:15'),
(42, '183830.jpg', '2023-12-21 12:35:17');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- テーブルの AUTO_INCREMENT `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
