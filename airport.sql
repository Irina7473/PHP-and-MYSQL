-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 12 2022 г., 19:02
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `airport`
--

-- --------------------------------------------------------

--
-- Структура таблицы `arrival`
--

CREATE TABLE `arrival` (
  `id` int(11) NOT NULL,
  `id_direction` int(11) NOT NULL,
  `flight` varchar(50) NOT NULL,
  `arrivaltime` time NOT NULL,
  `arrivalday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `departure`
--

CREATE TABLE `departure` (
  `id` int(11) NOT NULL,
  `id_direction` int(11) NOT NULL,
  `flight` varchar(50) NOT NULL,
  `departuretime` time NOT NULL,
  `departureday` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `departure`
--

INSERT INTO `departure` (`id`, `id_direction`, `flight`, `departuretime`, `departureday`) VALUES
(1, 1, 'ДР414', '05:40:00', 1),
(2, 3, 'N4221', '08:20:00', 2),
(3, 3, 'У6620', '10:45:00', 7),
(4, 2, 'СУ6464', '15:10:00', 1),
(5, 2, 'СУ6462', '06:15:00', 2),
(6, 2, 'СУ6462', '08:10:00', 4),
(7, 2, 'СУ6462', '17:20:00', 6),
(8, 4, 'ZF451', '03:45:00', 1),
(9, 5, 'N4587', '08:15:00', 1),
(10, 5, 'N4587', '08:15:00', 4),
(11, 1, 'ДР416', '17:15:00', 1),
(12, 1, 'ДР416', '17:15:00', 5),
(13, 6, 'WZ1225', '10:15:00', 1),
(14, 6, 'WZ1225', '07:40:00', 6),
(15, 1, 'ДР416', '14:10:00', 3),
(16, 1, 'ДР414', '07:30:00', 7),
(17, 1, 'ДР414', '05:40:00', 2),
(18, 1, 'ДР414', '05:40:00', 3),
(19, 1, 'ДР414', '05:40:00', 4),
(20, 1, 'ДР414', '05:40:00', 5),
(21, 1, 'ДР414', '05:40:00', 6),
(22, 1, 'ДР414', '05:40:00', 7),
(23, 2, 'СУ6464', '15:10:00', 2),
(24, 2, 'СУ6464', '15:10:00', 3),
(25, 2, 'СУ6464', '15:10:00', 4),
(26, 2, 'СУ6464', '15:10:00', 5),
(27, 2, 'СУ6464', '15:10:00', 6),
(30, 2, 'СУ6464', '15:10:00', 7),
(31, 4, 'ZF451', '03:45:00', 2),
(32, 4, 'ZF451', '03:45:00', 3),
(33, 4, 'ZF451', '03:45:00', 4),
(34, 4, 'ZF451', '03:45:00', 5),
(35, 4, 'ZF451', '03:45:00', 6),
(36, 4, 'ZF451', '03:45:00', 7),
(37, 1, 'ДР418', '08:20:00', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `flight_directions`
--

CREATE TABLE `flight_directions` (
  `id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `traveltime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `flight_directions`
--

INSERT INTO `flight_directions` (`id`, `city`, `traveltime`) VALUES
(1, 'Москва', '02:00:00'),
(2, 'Санкт-Петербург', '03:00:00'),
(3, 'Сочи', '02:30:00'),
(4, 'Анталья', '04:00:00'),
(5, 'Калининград', '04:20:00'),
(6, 'Ереван', '03:45:00');

-- --------------------------------------------------------

--
-- Структура таблицы `passengers`
--

CREATE TABLE `passengers` (
  `id` int(11) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `passengers`
--

INSERT INTO `passengers` (`id`, `last_name`, `first_name`, `gender`, `birthdate`) VALUES
(1, 'Абрамов', 'Александр', 'м', '1998-11-02'),
(2, 'Дружинин', 'Данил', 'м', '1985-09-05'),
(3, 'Фадеев', 'Игорь', 'м', '1998-12-06'),
(4, 'Фадеева', 'Лариса', 'ж', '1992-08-03'),
(5, 'Кочнев', 'Андрей', 'м', '1984-04-19'),
(6, 'Иванова', 'Ольга', 'ж', '1978-05-22'),
(7, 'Степанова', 'Ольга', 'ж', '1979-11-25'),
(8, 'Семенова', 'Ольга', 'ж', '1982-06-15'),
(9, 'Романов', 'Олег', 'м', '1988-10-12'),
(10, 'Шишкина', 'Марина', 'ж', '1991-05-12'),
(11, 'Семенов', 'Александр', 'м', '1995-11-02'),
(12, 'Дружинина', 'Елена', 'ж', '1987-09-01'),
(13, 'Ульянов', 'Игорь', 'м', '1996-12-06'),
(14, 'Крутая', 'Лариса', 'ж', '1994-08-06'),
(15, 'Васильев', 'Андрей', 'м', '1988-05-19'),
(16, 'Васечкина', 'Мария', 'ж', '1973-05-22'),
(17, 'Ульянова', 'Ольга', 'ж', '1976-11-25'),
(18, 'Кац', 'Ирина', 'ж', '1987-06-15'),
(19, 'Романов', 'Илья', 'м', '1982-10-19'),
(20, 'Шишова', 'Марина', 'ж', '1997-05-12');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `arrival`
--
ALTER TABLE `arrival`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `departure`
--
ALTER TABLE `departure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_direction` (`id_direction`);

--
-- Индексы таблицы `flight_directions`
--
ALTER TABLE `flight_directions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `arrival`
--
ALTER TABLE `arrival`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `departure`
--
ALTER TABLE `departure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `flight_directions`
--
ALTER TABLE `flight_directions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `passengers`
--
ALTER TABLE `passengers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `departure`
--
ALTER TABLE `departure`
  ADD CONSTRAINT `departure_ibfk_1` FOREIGN KEY (`id_direction`) REFERENCES `flight_directions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
