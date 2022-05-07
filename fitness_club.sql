-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 07 2022 г., 11:59
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
-- База данных: `fitness_club`
--

-- --------------------------------------------------------

--
-- Структура таблицы `instructors`
--

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `id_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `instructors`
--

INSERT INTO `instructors` (`id`, `last_name`, `first_name`, `id_section`) VALUES
(1, 'Колесова', 'Наталья', 1),
(2, 'Нуждина', 'Евгения', 2),
(3, 'Пустовая', 'Лариса', 2),
(4, 'Фадеев', 'Алексей', 3),
(5, 'Кочетков', 'Сергей', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section` varchar(50) NOT NULL,
  `training_time` time NOT NULL DEFAULT '01:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id`, `section`, `training_time`) VALUES
(1, 'yoga', '01:00:00'),
(2, 'Pilates', '01:00:00'),
(3, 'power', '01:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `id_visitor` int(11) NOT NULL,
  `id_section` int(11) NOT NULL,
  `passnumber` int(11) NOT NULL DEFAULT 8,
  `validity` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `id_section` int(11) NOT NULL,
  `id_instructor` int(11) NOT NULL,
  `weekday` varchar(50) NOT NULL,
  `daytime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `timetable`
--

INSERT INTO `timetable` (`id`, `id_section`, `id_instructor`, `weekday`, `daytime`) VALUES
(1, 1, 1, 'среда', '19:00:00'),
(2, 1, 1, 'пятница', '19:00:00'),
(3, 1, 1, 'воскресенье', '10:00:00'),
(4, 2, 2, 'понедельник', '10:00:00'),
(5, 2, 2, 'четверг', '10:00:00'),
(6, 2, 3, 'вторник', '17:00:00'),
(7, 2, 3, 'пятница', '17:00:00'),
(8, 3, 4, 'среда', '17:00:00'),
(9, 3, 4, 'суббота', '12:00:00'),
(10, 3, 5, 'вторник', '19:00:00'),
(11, 3, 5, 'четверг', '19:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `visitors`
--

INSERT INTO `visitors` (`id`, `last_name`, `first_name`, `gender`, `birthdate`) VALUES
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

-- --------------------------------------------------------

--
-- Структура таблицы `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `id_visitor` int(11) NOT NULL,
  `id_section` int(11) NOT NULL,
  `visitdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `visits`
--

INSERT INTO `visits` (`id`, `id_visitor`, `id_section`, `visitdate`) VALUES
(1, 1, 3, '2021-12-14'),
(2, 1, 3, '2021-12-17'),
(3, 2, 3, '2021-12-14'),
(4, 2, 3, '2022-03-17'),
(5, 2, 3, '2022-03-14'),
(6, 2, 3, '2022-03-17'),
(7, 3, 1, '2022-03-15'),
(8, 3, 1, '2022-03-17'),
(9, 3, 1, '2022-03-19'),
(10, 4, 1, '2022-03-17'),
(11, 4, 1, '2022-03-15'),
(12, 4, 1, '2022-03-22'),
(13, 5, 2, '2022-03-13'),
(14, 6, 2, '2022-03-13'),
(15, 5, 2, '2022-03-16'),
(16, 6, 2, '2022-03-16'),
(17, 6, 2, '2022-03-21'),
(18, 6, 2, '2022-03-24'),
(19, 7, 2, '2022-03-21'),
(20, 7, 2, '2022-03-24'),
(21, 8, 2, '2022-03-21'),
(22, 8, 2, '2022-03-24'),
(23, 9, 2, '2022-03-21'),
(24, 9, 2, '2022-03-24'),
(25, 11, 3, '2021-12-14'),
(26, 12, 3, '2021-12-17'),
(27, 13, 1, '2022-03-15'),
(28, 13, 1, '2022-03-17'),
(29, 13, 1, '2022-03-19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_section` (`id_section`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_instructor` (`id_instructor`),
  ADD KEY `id_section` (`id_section`);

--
-- Индексы таблицы `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_section` (`id_section`),
  ADD KEY `id_visitor` (`id_visitor`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `sections` (`id`);

--
-- Ограничения внешнего ключа таблицы `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `timetable_ibfk_1` FOREIGN KEY (`id_instructor`) REFERENCES `instructors` (`id`),
  ADD CONSTRAINT `timetable_ibfk_2` FOREIGN KEY (`id_section`) REFERENCES `sections` (`id`);

--
-- Ограничения внешнего ключа таблицы `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`id_section`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `visits_ibfk_2` FOREIGN KEY (`id_visitor`) REFERENCES `visitors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
