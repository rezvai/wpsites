-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 13 2023 г., 10:43
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pluginformbd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `registration`
--

INSERT INTO `registration` (`id`, `username`, `login`, `email`, `password`, `avatar`) VALUES
(1, 'asdasd', 'asdasd', 'asdawd@rr.rr', '123123', NULL),
(2, '123123', 'awdawd', 'asdad@rr.rr', '123123', NULL),
(3, '123123', 'awdawd', 'asdad@rr.rr', '123123', NULL),
(4, 'asdawd', 'asdawd', 'asdawd@qq.aa', '123123', NULL),
(5, 'asdawd', 'asdawd', 'asdawd@qq.aa', '123123', NULL),
(6, 'aqwsdasd', 'asdasd', 'asd@qq.rr', '123123', NULL),
(7, 'aqwsdasd', 'asdasd', 'asd@qq.rr', '123123', NULL),
(8, 'asdawd', 'asdawd', 'asdaw@rr.rr', '123123', NULL),
(9, 'asdawd', 'asdawd', 'asdaw@rr.rr', '123123', NULL),
(10, 'asasdaw', 'asdawd', 'asdw@rr.qq', '123123', NULL),
(11, 'asasdaw', 'asdawd', 'asdw@rr.qq', '123123', NULL),
(12, 'asdawada', 'asdawd', 'asdawd@rr.qq', '123123', NULL),
(13, 'asdad', 'adwdawd', 'asdawd@qq.rr', '123123', NULL),
(14, 'asdad', 'adwdawd', 'asdawd@qq.rr', '123123', NULL),
(15, 'asdawdqw', 'asdadw', 'adwdw@rr.qq', '123123', NULL),
(16, 'asdawdqw', 'asdadw', 'adwdw@rr.qq', '123123', NULL),
(17, 'adawdq', 'awddadw', 'adwd@rr.qq', '123123', NULL),
(18, 'adawdq', 'awddadw', 'adwd@rr.qq', '123123', NULL),
(19, 'wadawd', 'asdawd', 'adawd@qq.ee', '123123', NULL),
(20, 'asdawada', 'asdawd', 'asdawd@rr.qq', '123123', NULL),
(21, 'awdawdsa', 'asdawda', 'aadwawd@qq.rr', '123123', NULL),
(22, 'awdawdsa', 'asdawda', 'aadwawd@qq.rr', '123123', NULL),
(23, 'adwqdqwd', 'asdawdq', 'asdawd@qq.qq', '123123', NULL),
(24, 'adawda', 'asdawdaw', 'adwd@qq.rr', '123123', NULL),
(25, 'adawda', 'asdawdaw', 'adwd@qq.rr', '123123', NULL),
(26, 'adawda', 'adawd', 'awdawd@qq.rr', '123123', NULL),
(27, 'adawdaw', 'asdawd', 'awdawd@qq.rr', '123123', NULL),
(28, 'asdad', 'asdawdada', 'asdawd@rr.rr', '123123', NULL),
(29, 'asdad', 'asdawdada', 'asdawd@rr.rr', '123123', NULL),
(30, 'asdadwd', 'awdawd', 'asdawd@qq.rr', '123123', NULL),
(31, 'asdad', 'adads', 'asdaw@rr.rr', '123123', NULL),
(32, 'asdasd', 'asdasd', 'asda@qq.rr', '123123', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
