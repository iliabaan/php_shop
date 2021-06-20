-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 16 2021 г., 17:57
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `database`
--

-- --------------------------------------------------------

--
-- Структура таблицы `baskets`
--

CREATE TABLE `baskets` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `is_ordered` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `baskets`
--

INSERT INTO `baskets` (`id`, `product_id`, `user_id`, `quantity`, `is_ordered`) VALUES
(380, 2, 'e3hccq6g2oanj60niv12ue3l40bierh7', 1, 0),
(381, 2, 'e3hccq6g2oanj60niv12ue3l40bierh7', 1, 0),
(382, 2, 'e3hccq6g2oanj60niv12ue3l40bierh7', 1, 0),
(383, 2, 'e3hccq6g2oanj60niv12ue3l40bierh7', 1, 0),
(384, 2, 'e3hccq6g2oanj60niv12ue3l40bierh7', 1, 0),
(385, 2, 'e3hccq6g2oanj60niv12ue3l40bierh7', 1, 0),
(391, 1, '1', 1, 1),
(392, 1, '1', 1, 1),
(396, 5, '1', 1, 1),
(397, 5, '1', 1, 1),
(398, 6, '1', 1, 1),
(399, 6, '1', 1, 1),
(400, 1, '1', 1, 1),
(401, 1, '1', 1, 1),
(402, 1, '1', 1, 1),
(404, 5, '1', 1, 1),
(405, 6, '1', 1, 1),
(406, 1, '1', 1, 1),
(407, 2, '1', 1, 1),
(408, 5, '1', 1, 1),
(409, 6, '1', 1, 1),
(410, 1, '1', 1, 1),
(411, 2, '1', 1, 1),
(412, 5, '1', 1, 1),
(413, 6, '1', 1, 1),
(414, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(415, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(416, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(417, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(418, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(419, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(420, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(429, 1, '1', 1, 1),
(430, 1, '1', 1, 1),
(431, 1, '1', 1, 1),
(432, 1, '1', 1, 1),
(433, 1, '1', 1, 1),
(434, 1, '1', 1, 1),
(435, 1, '1', 1, 1),
(436, 1, '1', 1, 1),
(437, 1, '2', 1, 1),
(438, 1, '2', 1, 1),
(439, 1, '2', 1, 1),
(441, 1, '2', 1, 1),
(442, 1, '2', 1, 1),
(443, 1, '2', 1, 1),
(444, 1, '2', 1, 1),
(445, 1, '2', 1, 1),
(446, 1, '2', 1, 1),
(447, 1, '2', 1, 1),
(448, 2, '2', 1, 1),
(449, 2, '2', 1, 1),
(450, 2, '2', 1, 1),
(454, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(455, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(456, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(457, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(458, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(459, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(460, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(461, 5, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(462, 5, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(463, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(464, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(465, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(466, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(467, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(468, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(469, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(470, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(471, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(472, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(473, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(474, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(475, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(476, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(477, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(478, 2, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(479, 5, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(480, 5, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(481, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(482, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(483, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(484, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(485, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(486, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(487, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(488, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(489, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(490, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(491, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(492, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(493, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(494, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(495, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(496, 1, '82pm173u1ce4v05qoj58b5m0h4pgc3im', 1, 1),
(504, 1, '1', 1, 0),
(505, 1, '1', 1, 0),
(506, 1, '1', 1, 0),
(507, 1, '1', 1, 0),
(508, 2, '1', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user` varchar(255) NOT NULL,
  `order_list` text NOT NULL,
  `phone_number` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'get'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user`, `order_list`, `phone_number`, `status`) VALUES
(2, 'iet8v6p3p98hja1jjqd5nctshje9il9v', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":5},{\"id\":\"2\",\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"52\",\"img\":\"https://i.ibb.co/cY2J2Mk/Layer-4.jpg\",\"quantity\":2}]', '1', 'get'),
(3, 'iet8v6p3p98hja1jjqd5nctshje9il9v', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":4},{\"id\":\"2\",\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"52\",\"img\":\"https://i.ibb.co/cY2J2Mk/Layer-4.jpg\",\"quantity\":1},{\"id\":\"7\",\"title\":\"BANANA PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"15\",\"img\":\"https://i.ibb.co/C1zTVyV/Layer-3.jpg\",\"quantity\":3}]', '11111', 'send'),
(4, 'iet8v6p3p98hja1jjqd5nctshje9il9v', '[{\"id\":\"7\",\"title\":\"BANANA PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"15\",\"img\":\"https://i.ibb.co/C1zTVyV/Layer-3.jpg\",\"quantity\":3}]', '111', 'send'),
(5, 'iet8v6p3p98hja1jjqd5nctshje9il9v', '[{\"id\":\"2\",\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"52\",\"img\":\"https://i.ibb.co/cY2J2Mk/Layer-4.jpg\",\"quantity\":4}]', '111', 'get'),
(6, 'iet8v6p3p98hja1jjqd5nctshje9il9v', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":5}]', '7777777', 'Изменить статус'),
(7, '11343284255ff5df228d4022.07567242', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":3}]', '555', 'in_progress'),
(8, '1', '[{\"id\":\"5\",\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"41\",\"img\":\"https://i.ibb.co/Pgn4MGz/Layer-43.jpg\",\"quantity\":5},{\"id\":\"7\",\"title\":\"BANANA PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"15\",\"img\":\"https://i.ibb.co/C1zTVyV/Layer-3.jpg\",\"quantity\":1}]', '222', 'send'),
(9, '1', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":2}]', '3', 'send'),
(10, '2', '[{\"id\":\"2\",\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"52\",\"img\":\"https://i.ibb.co/cY2J2Mk/Layer-4.jpg\",\"quantity\":3},{\"id\":\"5\",\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"41\",\"img\":\"https://i.ibb.co/Pgn4MGz/Layer-43.jpg\",\"quantity\":3}]', '123', 'get'),
(11, '2', '[{\"id\":\"2\",\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"52\",\"img\":\"https://i.ibb.co/cY2J2Mk/Layer-4.jpg\",\"quantity\":5}]', '1212', 'get'),
(12, '1', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":6},{\"id\":\"2\",\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"52\",\"img\":\"https://i.ibb.co/cY2J2Mk/Layer-4.jpg\",\"quantity\":1},{\"id\":\"5\",\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"41\",\"img\":\"https://i.ibb.co/Pgn4MGz/Layer-43.jpg\",\"quantity\":1}]', '12323', 'send'),
(13, 'sbec25tkahs0ok09ffffahdpeq088cnn', '[{\"id\":\"2\",\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"52\",\"img\":\"https://i.ibb.co/cY2J2Mk/Layer-4.jpg\",\"quantity\":3}]', '6666', 'get'),
(14, 'sbec25tkahs0ok09ffffahdpeq088cnn', '[{\"id\":\"2\",\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"52\",\"img\":\"https://i.ibb.co/cY2J2Mk/Layer-4.jpg\",\"quantity\":2}]', '2123', 'get'),
(15, 'sbec25tkahs0ok09ffffahdpeq088cnn', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":3}]', '-122', 'get'),
(16, 'sbec25tkahs0ok09ffffahdpeq088cnn', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":3}]', '2222', 'get'),
(17, 'sbec25tkahs0ok09ffffahdpeq088cnn', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":4}]', '1221', 'get'),
(18, 'sbec25tkahs0ok09ffffahdpeq088cnn', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":6}]', '123312', 'get'),
(19, 'sbec25tkahs0ok09ffffahdpeq088cnn', '[{\"id\":\"2\",\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"52\",\"img\":\"https://i.ibb.co/cY2J2Mk/Layer-4.jpg\",\"quantity\":6}]', '11', 'in_progress'),
(20, 'sbec25tkahs0ok09ffffahdpeq088cnn', '[{\"id\":\"2\",\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"52\",\"img\":\"https://i.ibb.co/cY2J2Mk/Layer-4.jpg\",\"quantity\":2}]', '1123', 'send'),
(21, '2', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":2}]', '88', 'get'),
(22, '2', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":5}]', '111', 'get'),
(23, '2', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":1}]', '111', 'get'),
(24, '1', '[{\"id\":\"1\",\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"price\":\"22\",\"img\":\"https://i.ibb.co/s99fDjP/Layer-2.jpg\",\"quantity\":3}]', '888', 'get'),
(26, '2', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"id\":\"1\",\"quantity\":\"4\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"id\":\"6\",\"quantity\":\"3\"}]', '231', 'get'),
(27, '2', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"id\":\"1\",\"quantity\":\"4\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"id\":\"6\",\"quantity\":\"3\"}]', '123', 'get'),
(28, '2', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"id\":\"1\",\"quantity\":\"4\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"id\":\"6\",\"quantity\":\"3\"}]', '213213', 'get'),
(29, '2', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"id\":\"1\",\"quantity\":\"4\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"id\":\"6\",\"quantity\":\"3\"}]', '213', 'get'),
(30, '2', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"id\":\"1\",\"quantity\":\"4\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"id\":\"6\",\"quantity\":\"3\"}]', '123123', 'get'),
(31, 'e3hccq6g2oanj60niv12ue3l40bierh7', '[]', '123', 'get'),
(32, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"2\"}]', '123', 'get'),
(33, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"2\"}]', '123', 'get'),
(34, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"2\"}]', 'asd', 'get'),
(35, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"2\"}]', '123', 'get'),
(36, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"5\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(37, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"5\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '21332', 'get'),
(38, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"5\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(39, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"5\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(40, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"5\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '234432342', 'get'),
(41, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"5\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '213', 'get'),
(42, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"5\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(43, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"5\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(44, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"7\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(45, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"7\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '', 'get'),
(46, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"7\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123123', 'get'),
(47, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"7\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(48, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"7\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(49, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"7\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '12323', 'get'),
(50, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"7\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get');
INSERT INTO `orders` (`id`, `user`, `order_list`, `phone_number`, `status`) VALUES
(51, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":1,\"id\":\"1\",\"quantity\":\"7\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(52, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"1\",\"id\":\"1\",\"quantity\":\"7\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(53, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"7\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"2\"}]', '123', 'get'),
(54, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"9\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"6\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"5\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"5\"}]', '123', 'get'),
(55, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"9\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"6\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"5\"},{\"title\":\"PEACH PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/2dW2KHc\\/Layer-49.jpg\",\"price\":\"73\",\"is_ordered\":\"0\",\"id\":\"6\",\"quantity\":\"5\"}]', '123', 'get'),
(56, '2', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"4\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"3\"}]', '213', 'get'),
(57, '1', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"8\"}]', '132', 'get'),
(58, '82pm173u1ce4v05qoj58b5m0h4pgc3im', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"7\"}]', '123', 'get'),
(59, '82pm173u1ce4v05qoj58b5m0h4pgc3im', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"3\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"4\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"}]', '123', 'get'),
(60, '82pm173u1ce4v05qoj58b5m0h4pgc3im', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"4\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"4\"}]', '123', 'get'),
(61, '82pm173u1ce4v05qoj58b5m0h4pgc3im', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"4\"},{\"title\":\"BANANA PEOPLE JACKET\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/cY2J2Mk\\/Layer-4.jpg\",\"price\":\"52\",\"is_ordered\":\"0\",\"id\":\"2\",\"quantity\":\"4\"},{\"title\":\"APPLE PEOPLE HOODIE\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/Pgn4MGz\\/Layer-43.jpg\",\"price\":\"41\",\"is_ordered\":\"0\",\"id\":\"5\",\"quantity\":\"2\"}]', '123', 'get'),
(62, '82pm173u1ce4v05qoj58b5m0h4pgc3im', '[{\"title\":\"MANGO PEOPLE T-SHIRT\",\"description\":\"Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.\",\"img\":\"https:\\/\\/i.ibb.co\\/s99fDjP\\/Layer-2.jpg\",\"price\":\"22\",\"is_ordered\":\"0\",\"id\":\"1\",\"quantity\":\"5\"}]', '123', 'get');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `price` int NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `img`) VALUES
(1, 'MANGO PEOPLE T-SHIRT', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 22, 'https://i.ibb.co/s99fDjP/Layer-2.jpg'),
(2, 'BANANA PEOPLE JACKET', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 52, 'https://i.ibb.co/cY2J2Mk/Layer-4.jpg'),
(5, 'APPLE PEOPLE HOODIE', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 41, 'https://i.ibb.co/Pgn4MGz/Layer-43.jpg'),
(6, 'PEACH PEOPLE JACKET', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 73, 'https://i.ibb.co/2dW2KHc/Layer-49.jpg'),
(7, 'BANANA PEOPLE T-SHIRT', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 15, 'https://i.ibb.co/C1zTVyV/Layer-3.jpg'),
(8, 'GRAPE PEOPLE DRESS', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 35, 'https://i.ibb.co/pRCvr5h/Layer-6.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `review` text NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `review`, `product_id`) VALUES
(11, 'Анон', 'Круто!', 1),
(12, 'Сергей', 'Класс!', 1),
(13, 'В', 'Не нравится', 2),
(14, '222', 'LIKE!!!!!', 8),
(18, 'Н', 'Хорошо', 7),
(36, 'Сергей', 'Кул', 2),
(37, 'R', 'Ку', 2),
(41, '123', 'ww', 2),
(42, 'B', 'Good', 2),
(43, 'B', 'Good', 2),
(44, 'B', 'Good', 2),
(45, 'B', 'Good', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hash_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `hash_id`) VALUES
(1, 'admin', '$2y$10$pxG1w0w488Y40yOFuXSBl.flTA.HyZ40Cu4VJsFey.m4cVNpmyKaq', '186689223602bdc41ee69c4.99373460'),
(2, 'guest', '$2y$10$JIOr2HAuluoQOzE5yoYgwO8V6GO27pXzosGvj0GlzkpgAw5xp7ary', '690950994602bae4083a429.63168080'),
(21, '123', '$2y$10$xpdq7DB00Mr2RTs80C3d/uMe5r.iGLNR0MpXYF7IQV062zCELELgS', '18767083285ff71301bc5ff0.47903215'),
(22, 'asd', '$2y$10$ZH9d9oa/QjwZ0Dlz7RB7yuv1RFyVA3/xyuJydLAdbLUM72jbWEQq.', '15952518885ff7294a369063.56967479'),
(26, 'aa', '123', 'kfpmwfpmokef'),
(27, 'aa', '123', 'kfpmwfpmokef'),
(28, 'aa', '123', 'kfpmwfpmokef'),
(29, 'aa', '123', 'kfpmwfpmokef'),
(30, 'aa', '123', 'kfpmwfpmokef');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `baskets`
--
ALTER TABLE `baskets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `baskets`
--
ALTER TABLE `baskets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
