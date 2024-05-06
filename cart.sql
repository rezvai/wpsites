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
-- База данных: `cart`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart_first`
--

CREATE TABLE `cart_first` (
  `id_product` int(11) NOT NULL,
  `img_way` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `incart` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cart_first`
--

INSERT INTO `cart_first` (`id_product`, `img_way`, `name`, `price`, `description`, `quantity`, `incart`) VALUES
(1, '/assets/images/ivent1.jpeg', 'Куршская коса', '50$', 'Куршская коса, по мнению большинства туристов, считается главной...', 0, 0),
(2, '/assets/images/ivent2.jpeg', 'Танцующий лес', '50$', 'Сосновый лес, находящийся на Куршской косе, был высажен...', 0, 0),
(3, '/assets/images/ivent3.jpg', 'Замок Нессельбек', '50$', 'Нессельбек — это средневековый рыцарский замок...', 0, 0),
(4, '/assets/images/ivent4.jpg', 'Рыбная деревня', '50$', 'Рыбная деревня в Калининграде лишь подражает...', 0, 0),
(5, '/assets/images/ivent5.jpg', 'Фриландские', '50$', 'Фридландские ворота середины XIX века стали...', 0, 0),
(6, '/assets/images/ivent6.jpg', 'Кирха Розенау', '50$', 'Кирху Розенау начали строить в июне 1914, но...', 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cart_first`
--
ALTER TABLE `cart_first`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cart_first`
--
ALTER TABLE `cart_first`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
