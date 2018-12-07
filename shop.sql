-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 11 2018 г., 21:47
-- Версия сервера: 5.6.38
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `title` varchar(180) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `info` text NOT NULL,
  `photo` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`item_id`, `title`, `price`, `info`, `photo`) VALUES
(1, 'SONY MDR-Z1R', '99890', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus facilisis orci at leo sodales, vel ornare arcu lobortis. Integer consequat rhoncus sapien, et pharetra mauris auctor at. Ut laoreet ullamcorper enim tincidunt interdum. Curabitur sit amet leo aliquet, imperdiet augue id, volutpat tortor. Phasellus consectetur turpis vel tellus tristique pretium. Sed sollicitudin et quam non blandit. Mauris eget maximus urna. Aliquam elit erat, dapibus vel tempor at, semper semper leo. Proin ullamcorper ornare efficitur.', 'Z1R.jpg'),
(2, 'AKG N90Q LIMITED EDITION', '89890', 'Vestibulum lacinia, turpis vel posuere placerat, diam felis aliquam dolor, nec suscipit est lacus sit amet felis. Ut in augue vulputate velit interdum tincidunt. Pellentesque nec mauris hendrerit, blandit lorem sit amet, iaculis mauris. Vestibulum maximus erat purus, nec volutpat urna porttitor quis. Aliquam in porttitor ligula. Nunc convallis turpis in consequat varius. Integer porta tortor id enim fringilla scelerisque.', 'n90q.jpg'),
(3, 'SENNHEISER HD800S', '99900', 'Maecenas pharetra sapien quis velit volutpat, ut auctor ante pulvinar. Quisque id elit mollis, suscipit libero ut, luctus est. Sed porttitor, ipsum iaculis gravida laoreet, urna lacus luctus mauris, eget fermentum sapien libero non purus. Nam eu nisi leo. Sed sagittis quis eros sed luctus. Donec nec nisi et sapien egestas rutrum. Vestibulum eget est sapien. Donec pretium sapien feugiat, imperdiet felis a, ullamcorper odio.', 'HD800S.jpg'),
(4, 'SENNHEISER HD 599', '9990', 'quis velit volutpat, ut auctor ante pulvinar. Quisque id elit mollis, suscipit libero ut, luctus est. Sed porttitor, ipsum iaculis gravida laoreet, urna lacus luctus mauris, eget fermentum sapien libero non purus. Nam eu nisi leo. Sed sagittis quis eros sed luctus. Donec nec nisi et sapien egestas rutrum. Vestibulum eget est sapien. Donec pretium sapien feugiat, imperdiet felis a.', 'HD599.jpg'),
(5, 'SENNHEISER HD 559', '6790', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'HD559.jpg'),
(6, 'SENNHEISER HD 650', '21990', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'HD650.jpg'),
(7, 'SENNHEISER HD 800', '64900', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'HD800.jpg'),
(8, 'BEYERDYNAMIC DT 770 PRO / 250 OHM', '13490', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'DT770PRO.jpg'),
(9, 'SONY MDR-Z7', '59990', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'MDRZ7.jpg'),
(10, 'AUDIO-TECHNICA ATH-M50X', '12590', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'ATHM50X.jpg'),
(11, 'SONY MDR-1ADAC', '18970', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', '1ADAC.jpg'),
(12, 'DENON AH-GC20', '17990', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'AHGC20.jpg'),
(13, 'AKG K712 PRO', '23690', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'K712PRO.jpg'),
(14, 'ADL BY FURUTECH H118', '16090', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'H118.jpg'),
(15, 'ABYSS AB-1266 DELUXE', '359990', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'AB1266.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_order_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `amount`, `create_time`, `id_order_status`) VALUES
(6, 16, '199790', '2018-10-11 16:23:02', 3),
(7, 17, '389590', '2018-10-11 16:29:00', 1),
(8, 18, '99890', '2018-10-11 16:30:29', 1),
(9, 19, '264680', '2018-10-11 16:35:15', 2),
(10, 20, '13490', '2018-10-11 16:36:19', 1),
(11, 11, '1079970', '2018-10-11 16:38:21', 2),
(12, 21, '99890', '2018-10-11 16:40:33', 4),
(13, 12, '12590', '2018-10-11 16:42:04', 1),
(14, 12, '89890', '2018-10-11 16:42:16', 2),
(15, 12, '9990', '2018-10-11 18:45:31', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_it_price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `item_id`, `user_id`, `quantity`, `total_it_price`) VALUES
(9, 6, 1, 16, 1, '99890'),
(10, 6, 3, 16, 1, '99900'),
(11, 7, 2, 17, 1, '89890'),
(12, 7, 3, 17, 3, '299700'),
(13, 8, 1, 18, 1, '99890'),
(14, 9, 1, 19, 2, '199780'),
(15, 9, 7, 19, 1, '64900'),
(16, 10, 8, 20, 1, '13490'),
(17, 11, 15, 11, 3, '1079970'),
(18, 12, 1, 21, 1, '99890'),
(19, 13, 10, 12, 1, '12590'),
(20, 14, 2, 12, 1, '89890'),
(21, 15, 4, 12, 1, '9990');

-- --------------------------------------------------------

--
-- Структура таблицы `order_status`
--

CREATE TABLE `order_status` (
  `id_order_status` int(11) NOT NULL,
  `status_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `order_status`
--

INSERT INTO `order_status` (`id_order_status`, `status_name`) VALUES
(1, 'Новый'),
(2, 'В обработке'),
(3, 'Выполнен'),
(4, 'Отменён');

-- --------------------------------------------------------

--
-- Структура таблицы `refer`
--

CREATE TABLE `refer` (
  `refer_id` int(11) NOT NULL,
  `name` varchar(180) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `refer`
--

INSERT INTO `refer` (`refer_id`, `name`, `text`) VALUES
(1, 'sdadas', 'asdasdasda');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `login` varchar(80) NOT NULL DEFAULT 'tempUser',
  `email` varchar(80) NOT NULL,
  `pass` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `surname` varchar(80) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` int(11) NOT NULL DEFAULT '0',
  `temp_user` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `login`, `email`, `pass`, `name`, `surname`, `date`, `admin`, `temp_user`) VALUES
(11, 'admin', 'admin@mail.ru', '21232f297a57a5a743894a0e4a801fc3', 'Артём', 'Кириаков', '2018-08-15 09:30:00', 1, 0),
(12, 'user1', 'user1@mail.ru', '827ccb0eea8a706c4c34a16891f84e7b', 'Михаил', 'Михович', '2018-09-02 13:00:25', 0, 0),
(16, 'tempUser', 'kmail@mail.ru', '', 'Кирилл', 'Кирилов', '2018-10-11 19:23:02', 0, 1),
(17, 'tempUser', 'umail@mail.ru', '', 'rdgs', 'fsdfsdf', '2018-10-11 19:29:00', 0, 1),
(18, 'tempUser', 'pmail@mail.ru', '', 'Pavel', 'Pashkov', '2018-10-11 19:30:29', 0, 1),
(19, 'tempUser', 'rr@mail.ru', '', 'Prus', 'Rus', '2018-10-11 19:35:15', 0, 1),
(20, 'tempUser', 'kiro@gaz.ru', '', 'gaz', 'kvas', '2018-10-11 19:36:19', 0, 1),
(21, 'tempUser', 'rrr@mail.ru', '', 'rrr', 'Rrr', '2018-10-11 19:40:33', 0, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id_order_status`);

--
-- Индексы таблицы `refer`
--
ALTER TABLE `refer`
  ADD PRIMARY KEY (`refer_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id_order_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `refer`
--
ALTER TABLE `refer`
  MODIFY `refer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
