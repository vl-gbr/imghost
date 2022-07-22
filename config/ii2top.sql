-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 22 2022 г., 23:45
-- Версия сервера: 8.0.24
-- Версия PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ii2top`
--

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `private` tinyint(1) DEFAULT NULL,
  `created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `descr`, `category`, `userid`, `img`, `private`, `created`) VALUES
(2, '', '', 101, 'admin_3844557_20220722_231403.png', 1, '2022-07-19'),
(3, 'vvvv', '', 101, 'demo_stezka-1_20220720_153446.png', 1, '2022-07-20'),
(5, '', '', 102, 'demo_stezka-1_20220720_154344.png', 1, '2022-07-21'),
(6, '', '', 102, 'demo_Del_52_530x@2x_20220720_162602.webp', 1, '2022-07-21'),
(7, '', '', 102, 'demo_Del_52_530x@2x_20220720_162836.webp', 1, '2022-07-21'),
(8, '', '', 102, 'demo_Del_52_530x@2x_20220720_162930.webp', 1, '2022-07-21'),
(9, '', '', 102, 'demo_kokos-coir-02-1200x_20220720_164531.jpg', 1, '2022-07-21'),
(10, '', '', 102, 'demo_coir-sheet-500x500_20220720_173921.jpg', 1, '2022-07-21'),
(11, '', '', 102, 'demo_coir-sheet-500x500_20220720_174115.jpg', 1, '2022-07-21'),
(12, '', '', 102, 'demo_coir-sheet-500x500_20220720_174520.jpg', 1, '2022-07-21'),
(13, '', '', 102, 'demo_coir-sheet-500x500_20220720_174648.jpg', 1, '2022-07-21'),
(14, '', '', 102, 'demo_coir-sheet-500x500_20220720_174700.jpg', 1, '2022-07-21'),
(15, '', '', 102, 'demo_coir-sheet-500x500_20220720_174751.jpg', 1, '2022-07-21'),
(16, '', '', 102, 'demo_coir-sheet-500x500_20220720_174949.jpg', 1, '2022-07-21'),
(17, '', '', 102, 'demo_coir-sheet-500x500_20220720_175449.jpg', 1, '2022-07-21'),
(18, '', '', 102, 'demo_cocos-oreh400_20220720_175552.jpg', 1, '2022-07-21'),
(19, '', '', 101, 'demo_3844557_20220720_175859.png', 1, '2022-07-20'),
(20, '', '', 102, 'demo_orig_20220720_180810.webp', 1, '2022-07-21'),
(21, '', '', 102, 'demo_orig_20220720_181154.webp', 1, '2022-07-21'),
(22, '', '', 102, 'demo_images_20220720_181220.jpg', 1, '2022-07-21'),
(23, NULL, NULL, NULL, 'demo_images_20220720_181319.jpg', NULL, NULL),
(24, NULL, NULL, NULL, 'demo_images_20220720_181537.jpg', NULL, NULL),
(25, NULL, NULL, NULL, 'demo_images_20220720_181616.jpg', NULL, NULL),
(26, NULL, NULL, NULL, 'demo_images_20220720_181627.jpg', NULL, NULL),
(27, NULL, NULL, NULL, 'demo_images_20220720_181645.jpg', NULL, NULL),
(28, NULL, NULL, NULL, 'demo_images_20220720_181910.jpg', NULL, NULL),
(29, NULL, NULL, NULL, 'demo_images_20220720_181913.jpg', NULL, NULL),
(30, NULL, NULL, NULL, 'demo_images_20220720_181941.jpg', NULL, NULL),
(31, NULL, NULL, NULL, 'demo_porolon-1_20220720_182732.jpg', NULL, NULL),
(32, 'vvvv', '', 101, 'demo_rulon_20220720_185929.jpg', 0, '2022-07-20'),
(33, '', '', 102, 'demo_coconut_20220720_190039.png', 1, '2022-07-21'),
(34, NULL, NULL, NULL, 'demo_ptx-UTIL_20220720_190504.png', NULL, NULL),
(35, NULL, NULL, NULL, 'demo_ptx-transport_20220720_191225.png', NULL, NULL),
(36, NULL, NULL, NULL, 'demo_ptx-transport_20220720_191305.png', NULL, NULL),
(37, NULL, NULL, NULL, 'demo_ptx-transport_20220720_191922.png', NULL, NULL),
(38, NULL, NULL, NULL, 'demo_coir-sheets-500x500_20220720_193725.jpg', NULL, NULL),
(39, NULL, NULL, NULL, 'demo_coir-sheets-500x500_20220720_193843.jpg', NULL, NULL),
(40, NULL, NULL, NULL, 'demo_coir-sheets-500x500_20220720_193901.jpg', NULL, NULL),
(41, NULL, NULL, NULL, 'demo_coir-sheets-500x500_20220720_193920.jpg', NULL, NULL),
(42, NULL, NULL, NULL, 'demo_coir-sheets-500x500_20220720_194850.jpg', NULL, NULL),
(43, NULL, NULL, NULL, 'demo_10000-100-organic-cocopeat-cocofiber-coir-pith-and-100-chemical-original-imaftjazmtxmgjya_20220720_194921.webp', NULL, NULL),
(44, NULL, NULL, NULL, 'demo_10000-100-organic-cocopeat-cocofiber-coir-pith-and-100-chemical-original-imaftjazmtxmgjya_20220720_200328.webp', NULL, NULL),
(45, 'vvvvhhhh', 'qweret', NULL, 'demo_Кокосовый-коврик-для-микрозелени_20220720_200748.jpg', 0, NULL),
(46, 'vvvv', 'qweret', NULL, 'demo_packaging-coir-sheet-1_20220720_200932.webp', 1, NULL),
(47, 'vvvvhhhh', '1111111', NULL, 'demo_uslugi-pic3_20220720_202457.webp', 0, NULL),
(48, 'vvvv', '1111111', 101, 'demo_71QDXVLMqIL._AC_SX679__20220720_215622.jpg', 1, '2022-07-20'),
(49, 'vvvvhhhh', '1111111', 101, 'demo_Coco Coir Market_20220720_203717.jpg', 1, '2022-07-20'),
(50, '', 'ccccc', 101, 'demo_1478484_20220720_215721.png', 1, '2022-07-20'),
(51, '', '', 101, 'demo_coconut-fiber-a-material-for-making-ropes-mattresses-and-agriculture_35148-744_20220720_215854.jpg', 1, '2022-07-20'),
(52, '', '', 101, 'demo_depositphotos_91108566-stock-illustration-coconut-colored-vector-icon_20220720_220008.jpg', 1, '2022-07-20'),
(53, NULL, NULL, 101, 'demo_balloon_20220720_220135.jpeg', 1, '2022-07-20'),
(54, 'vvvvhhhh', '1111111', 101, 'demo_beach_20220720_220404.jpeg', 0, '2022-07-20'),
(55, NULL, NULL, 101, 'demo_Иконки_20220720_220641.png', 1, '2022-07-20'),
(56, NULL, NULL, NULL, 'demo_Иконки 1_20220720_220819.png', NULL, NULL),
(57, NULL, NULL, 101, 'demo_industry-611668_960_720_20220720_221118.webp', 1, '2022-07-20'),
(58, 'vvvvhhhh', '', 101, 'demo_outfall-3491306__340_20220720_221648.webp', 1, '2022-07-20'),
(59, NULL, NULL, 101, 'demo_Иконки 2_20220720_221742.png', 1, '2022-07-20'),
(60, 'vvvvhhhh', '', 100, 'admin_sewage-pipe-polluted-water-3465090__340_20220720_221936.jpg', 1, '2022-07-20'),
(61, NULL, NULL, 100, 'admin_camp_20220720_222113.jpeg', 1, '2022-07-20'),
(62, NULL, NULL, 100, 'admin_mountain_20220720_222223.jpeg', 1, '2022-07-20'),
(63, NULL, NULL, 100, 'admin_mountain_20220720_222709.jpeg', 1, '2022-07-20'),
(64, NULL, NULL, NULL, 'admin_talin_20220720_224456.jpg', NULL, NULL),
(65, NULL, NULL, NULL, 'admin_talin_20220720_224802.jpg', NULL, NULL),
(66, NULL, NULL, NULL, 'admin_mountain_20220720_224932.jpeg', NULL, NULL),
(67, NULL, NULL, 100, 'admin_balloon_20220720_225148.jpeg', 1, '2022-07-20'),
(68, NULL, NULL, 100, 'admin_beach_20220720_230139.jpeg', 1, '2022-07-20'),
(69, NULL, NULL, NULL, '', 1, NULL),
(70, NULL, NULL, NULL, 'admin_mountain_20220720_230459.jpeg', NULL, NULL),
(71, 'vvvvhhhh', '', 100, 'admin_beach_20220720_230716.jpeg', 1, '2022-07-20'),
(72, NULL, NULL, NULL, 'admin_balloon_20220720_230953.jpeg', NULL, NULL),
(74, NULL, NULL, NULL, 'admin_camp_20220721_011044.jpeg', NULL, NULL),
(75, 'vvvvhhhh', '1111111', 100, 'admin_talin_20220721_013003.jpg', 0, '2022-07-21'),
(81, 'vvvvhhhh', '', 100, 'admin_ptx-transport_20220722_043937.png', 1, '2022-07-22'),
(82, '', '', 100, 'admin_cocos-oreh400_20220722_155126.jpg', 1, '2022-07-22'),
(83, 'aaaaa', '1111111', 100, 'admin_kokosovayakoyra_20220722_155743_62da9ec75aeae.png', 0, '2022-07-22'),
(84, 'aaaaa', '1111111', 100, 'admin_kokos-2_20220722_155743.jpg', 0, '2022-07-22'),
(85, 'vvvv', 'ccccc', 100, 'admin_coconut_20220722_155831.png', 1, '2022-07-22'),
(86, 'aaaaa', '', 100, 'admin_pic3_20220722_160045.jpg', 1, '2022-07-22'),
(87, 'vvvv', 'qweret', 100, 'admin_51rl1ihhtglacsy780_20220722_160212.jpg', 1, '2022-07-22'),
(88, 'vvvvhhhh', '', 100, 'admin_bi-kokosnew_20220722_160528.jpg', 1, '2022-07-22'),
(89, 'img', 'asdfg', 100, 'admin_coco-coir-market_20220722_163252.jpg', 1, '2022-07-22'),
(90, '', '', 100, 'admin_cocos-oreh400-1_20220722_164014.jpg', 1, '2022-07-22'),
(91, '', '', 100, 'admin_cocos-oreh400-1_20220722_165206.jpg', 1, '2022-07-22');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1658240944),
('m220719_134830_create_images_table', 1658242303);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
