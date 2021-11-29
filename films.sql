-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 29 2021 г., 16:12
-- Версия сервера: 8.0.15
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `films`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--
-- Создание: Ноя 25 2021 г., 06:22
--

CREATE TABLE `comment` (
  `id_comment` bigint(20) NOT NULL,
  `date_add_com` datetime NOT NULL,
  `date_del_com` datetime DEFAULT NULL,
  `text_com` text NOT NULL,
  `id_obzora` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--
-- Создание: Ноя 22 2021 г., 11:41
-- Последнее обновление: Ноя 25 2021 г., 20:18
--

CREATE TABLE `films` (
  `id_film` bigint(20) NOT NULL,
  `name_film` varchar(40) NOT NULL,
  `year_film` int(4) NOT NULL,
  `long_film` int(11) NOT NULL,
  `country_film` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id_film`, `name_film`, `year_film`, `long_film`, `country_film`) VALUES
(1, 'Лед 2', 2017, 134, 'Россия'),
(2, 'Лед ', 2016, 123, 'Россия'),
(3, 'Воздушный бой', 2015, 210, 'Россия'),
(4, 'Звездные войны', 2000, 213, 'США');

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--
-- Создание: Ноя 22 2021 г., 11:41
--

CREATE TABLE `genre` (
  `id_genre` bigint(20) NOT NULL,
  `name_genre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `genre_films`
--
-- Создание: Ноя 26 2021 г., 10:07
--

CREATE TABLE `genre_films` (
  `id_film` bigint(20) NOT NULL,
  `id_genre` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `obzor`
--
-- Создание: Ноя 26 2021 г., 10:05
-- Последнее обновление: Ноя 26 2021 г., 10:09
--

CREATE TABLE `obzor` (
  `id_obzora` bigint(20) NOT NULL,
  `name_obzora` varchar(40) NOT NULL,
  `date_add_obzora` datetime NOT NULL,
  `text_obzora` text NOT NULL,
  `photo` varchar(20) NOT NULL,
  `trailer` varchar(40) NOT NULL,
  `teg` varchar(20) NOT NULL,
  `date_del_obzora` datetime DEFAULT NULL,
  `id_user` bigint(20) NOT NULL,
  `id_film` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `obzor`
--

INSERT INTO `obzor` (`id_obzora`, `name_obzora`, `date_add_obzora`, `text_obzora`, `photo`, `trailer`, `teg`, `date_del_obzora`, `id_user`, `id_film`) VALUES
(1, 'Обзор на лед', '2021-11-03 00:00:00', 'аролдюв ьогшщдв пррилшль вллшг вмшд', '1.jpg', 'https://www.php.net/pdo.connections.php', 'Фильм', NULL, 1, 1),
(2, 'Обзор на лед2', '2021-11-03 00:00:00', 'ывапрпа', '1.jpg', 'https://www.php.net', 'Фильм', NULL, 2, 2),
(3, 'Обзор на лед', '2021-11-03 00:00:00', 'ладпжажаэпэр', '1.jpg', 'https://www.php.net', 'Фильм', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--
-- Создание: Ноя 26 2021 г., 09:45
-- Последнее обновление: Ноя 26 2021 г., 09:46
--

CREATE TABLE `roles` (
  `id_roles` bigint(20) NOT NULL,
  `name_roles` varchar(128) NOT NULL,
  `add/del_obzor` tinyint(1) NOT NULL DEFAULT '0',
  `block_user` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id_roles`, `name_roles`, `add/del_obzor`, `block_user`) VALUES
(1, 'Админ', 1, 1),
(2, 'Модер', 1, 0),
(3, 'п', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--
-- Создание: Ноя 26 2021 г., 10:03
-- Последнее обновление: Ноя 26 2021 г., 10:04
--

CREATE TABLE `users` (
  `id_user` bigint(20) NOT NULL,
  `name_user` varchar(20) NOT NULL,
  `pass_user` varchar(20) NOT NULL,
  `date_regist` datetime NOT NULL,
  `date_visit` datetime NOT NULL,
  `date_exit` datetime NOT NULL,
  `e-mail_user` varchar(40) NOT NULL,
  `number_phone_user` varchar(11) NOT NULL,
  `consent` tinyint(1) NOT NULL DEFAULT '1',
  `id_roles` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `name_user`, `pass_user`, `date_regist`, `date_visit`, `date_exit`, `e-mail_user`, `number_phone_user`, `consent`, `id_roles`) VALUES
(1, 'Вика', '123', '2021-11-09 00:00:00', '2021-11-17 00:00:00', '2021-11-18 00:00:00', '1234', '1234', 1, 1),
(2, 'Вика', '1234', '2021-11-09 00:00:00', '2021-11-17 00:00:00', '2021-11-18 00:00:00', '1234', '1234', 1, 2),
(3, 'Вика', '1234', '2021-11-09 00:00:00', '2021-11-17 00:00:00', '2021-11-18 00:00:00', '1234', '1234', 1, 3),
(4, 'Вика', '123', '2021-11-09 00:00:00', '2021-11-17 00:00:00', '2021-11-18 00:00:00', '1234', '1234', 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD UNIQUE KEY `id_comment` (`id_comment`),
  ADD UNIQUE KEY `id_obzora` (`id_obzora`) USING BTREE,
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id_film`),
  ADD UNIQUE KEY `id_film` (`id_film`);

--
-- Индексы таблицы `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`),
  ADD UNIQUE KEY `id_genre` (`id_genre`);

--
-- Индексы таблицы `genre_films`
--
ALTER TABLE `genre_films`
  ADD KEY `id_film` (`id_film`) USING BTREE,
  ADD KEY `id_genre` (`id_genre`) USING BTREE;

--
-- Индексы таблицы `obzor`
--
ALTER TABLE `obzor`
  ADD PRIMARY KEY (`id_obzora`),
  ADD UNIQUE KEY `id_obzora` (`id_obzora`),
  ADD KEY `id_user` (`id_user`) USING BTREE,
  ADD KEY `id_film` (`id_film`) USING BTREE;

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_roles`),
  ADD UNIQUE KEY `id_roles` (`id_roles`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD KEY `id_role` (`id_roles`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `id_film` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `obzor`
--
ALTER TABLE `obzor`
  MODIFY `id_obzora` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id_roles` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_obzora`) REFERENCES `obzor` (`id_obzora`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ограничения внешнего ключа таблицы `genre_films`
--
ALTER TABLE `genre_films`
  ADD CONSTRAINT `genre_films_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`) ON DELETE CASCADE,
  ADD CONSTRAINT `genre_films_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `obzor`
--
ALTER TABLE `obzor`
  ADD CONSTRAINT `obzor_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `obzor_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_roles`) REFERENCES `roles` (`id_roles`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
