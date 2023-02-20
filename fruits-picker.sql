-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 20 2023 г., 17:18
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fruits-picker`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fruits_data`
--

CREATE TABLE `fruits_data` (
  `id` int NOT NULL,
  `tree_id` int UNSIGNED NOT NULL,
  `weight` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fruits_data`
--

INSERT INTO `fruits_data` (`id`, `tree_id`, `weight`) VALUES
(1, 26, 162),
(2, 26, 153),
(3, 26, 159),
(4, 26, 156),
(5, 26, 158),
(6, 26, 148),
(7, 26, 167),
(8, 27, 156),
(9, 27, 164),
(10, 27, 160),
(11, 27, 163),
(12, 27, 139),
(13, 27, 160),
(14, 27, 166),
(15, 27, 146),
(16, 27, 162),
(17, 27, 138),
(18, 27, 154),
(19, 27, 137),
(20, 27, 153),
(21, 27, 135),
(22, 27, 166),
(23, 27, 149),
(24, 27, 136),
(25, 27, 154),
(26, 28, 151),
(27, 28, 150),
(28, 28, 153),
(29, 28, 137),
(30, 28, 164),
(31, 28, 158),
(32, 28, 153),
(33, 28, 163),
(34, 28, 153),
(35, 28, 164),
(36, 28, 146),
(37, 28, 165),
(38, 28, 159),
(39, 28, 136),
(40, 28, 137),
(41, 28, 135),
(42, 28, 145),
(43, 28, 147),
(44, 28, 148),
(45, 28, 133),
(46, 29, 169),
(47, 29, 157),
(48, 29, 156),
(49, 29, 164),
(50, 29, 170),
(51, 30, 155),
(52, 31, 133),
(53, 31, 131),
(54, 31, 130),
(55, 31, 145),
(56, 31, 144),
(57, 31, 163),
(58, 31, 135),
(59, 31, 134),
(60, 31, 160),
(61, 31, 136),
(62, 31, 132),
(63, 31, 167),
(64, 31, 151),
(65, 31, 142),
(66, 31, 154),
(67, 31, 132),
(68, 31, 153),
(69, 32, 130),
(70, 32, 146),
(71, 32, 169),
(72, 32, 163),
(73, 32, 149),
(74, 32, 168),
(75, 32, 132),
(76, 33, 140),
(77, 33, 135),
(78, 33, 160),
(79, 33, 156),
(80, 33, 153),
(81, 33, 170),
(82, 33, 154),
(83, 33, 166),
(84, 33, 163),
(85, 33, 136),
(86, 33, 155),
(87, 33, 140),
(88, 33, 158),
(89, 33, 130),
(90, 33, 141),
(91, 33, 148),
(92, 33, 159),
(93, 34, 145),
(94, 34, 143),
(95, 34, 163),
(96, 34, 134),
(97, 34, 133),
(98, 34, 146),
(99, 34, 130),
(100, 34, 170),
(101, 34, 154),
(102, 34, 137),
(103, 34, 149),
(104, 34, 148),
(105, 34, 156),
(106, 34, 143),
(107, 34, 136),
(108, 34, 160),
(109, 34, 139),
(110, 34, 158),
(111, 34, 146),
(112, 34, 137),
(113, 35, 166),
(114, 35, 163),
(115, 35, 165),
(116, 35, 145),
(117, 35, 139),
(118, 35, 162),
(119, 35, 170),
(120, 35, 165),
(121, 35, 168),
(122, 35, 167),
(123, 35, 167),
(124, 35, 168),
(125, 35, 156),
(126, 35, 155),
(127, 35, 143),
(128, 36, 134),
(129, 36, 162),
(130, 36, 146),
(131, 36, 148),
(132, 36, 163),
(133, 36, 161),
(134, 36, 155),
(135, 36, 162),
(136, 36, 157),
(137, 36, 149),
(138, 36, 156),
(139, 36, 143),
(140, 36, 168),
(141, 37, 154),
(142, 37, 147),
(143, 37, 163),
(144, 37, 130),
(145, 37, 149),
(146, 37, 152),
(147, 37, 138),
(148, 37, 146),
(149, 37, 154),
(150, 37, 141),
(151, 37, 144),
(152, 37, 169),
(153, 37, 153),
(154, 37, 170),
(155, 37, 140),
(156, 37, 161),
(157, 37, 141),
(158, 37, 161),
(159, 37, 135),
(160, 37, 147),
(161, 38, 166),
(162, 40, 139),
(163, 40, 165),
(164, 40, 145),
(165, 40, 152),
(166, 40, 131),
(167, 40, 138),
(168, 40, 130),
(169, 40, 161),
(170, 40, 168),
(171, 40, 130),
(172, 40, 133),
(173, 41, 175),
(174, 41, 168),
(175, 41, 151),
(176, 41, 160),
(177, 41, 161),
(178, 41, 152),
(179, 41, 151),
(180, 41, 179),
(181, 41, 159),
(182, 41, 178),
(183, 41, 153),
(184, 41, 169),
(185, 41, 176),
(186, 41, 157),
(187, 41, 170),
(188, 41, 177),
(189, 41, 166),
(190, 41, 157),
(191, 41, 168),
(192, 41, 171),
(193, 41, 173),
(194, 41, 159),
(195, 41, 175),
(196, 41, 150),
(197, 41, 175),
(198, 41, 173),
(199, 41, 172),
(200, 41, 175),
(201, 41, 173),
(202, 41, 176),
(203, 41, 156),
(204, 41, 162),
(205, 41, 155),
(206, 41, 168),
(207, 41, 153),
(208, 41, 159),
(209, 41, 176),
(210, 41, 150),
(211, 41, 170),
(212, 41, 172),
(213, 41, 168),
(214, 41, 155),
(215, 41, 159),
(216, 41, 164),
(217, 41, 156),
(218, 41, 150),
(219, 41, 162),
(220, 41, 157),
(221, 42, 169),
(222, 42, 170),
(223, 42, 180),
(224, 42, 154),
(225, 42, 166),
(226, 42, 152),
(227, 42, 175),
(228, 42, 168),
(229, 42, 166),
(230, 42, 173),
(231, 42, 155),
(232, 42, 174),
(233, 42, 157),
(234, 42, 158),
(235, 42, 180),
(236, 42, 176),
(237, 42, 156),
(238, 42, 176),
(239, 42, 170),
(240, 42, 177),
(241, 42, 153),
(242, 42, 180),
(243, 42, 165),
(244, 42, 157),
(245, 42, 163),
(246, 42, 161),
(247, 42, 163),
(248, 42, 161),
(249, 42, 171),
(250, 42, 154),
(251, 42, 155),
(252, 42, 162),
(253, 42, 170),
(254, 42, 156),
(255, 42, 167),
(256, 42, 163),
(257, 42, 162),
(258, 42, 180),
(259, 42, 176),
(260, 42, 174),
(261, 42, 162),
(262, 42, 163),
(263, 42, 160),
(264, 43, 176),
(265, 43, 171),
(266, 43, 152),
(267, 43, 151),
(268, 43, 163),
(269, 43, 162),
(270, 43, 176),
(271, 43, 168),
(272, 43, 152),
(273, 43, 164),
(274, 43, 160),
(275, 43, 164),
(276, 43, 166),
(277, 43, 152),
(278, 43, 172),
(279, 43, 169),
(280, 43, 153),
(281, 43, 152),
(282, 43, 157),
(283, 43, 165),
(284, 43, 169),
(285, 43, 175),
(286, 43, 161),
(287, 43, 179),
(288, 43, 150),
(289, 43, 168),
(290, 43, 154),
(291, 43, 155),
(292, 43, 171),
(293, 43, 179),
(294, 43, 154),
(295, 43, 178),
(296, 43, 178),
(297, 43, 177),
(298, 43, 158),
(299, 43, 178),
(300, 43, 154),
(301, 43, 173),
(302, 43, 170),
(303, 43, 167),
(304, 43, 165),
(305, 43, 171),
(306, 43, 155),
(307, 43, 171),
(308, 44, 150),
(309, 44, 158),
(310, 44, 159),
(311, 44, 150),
(312, 44, 161),
(313, 44, 159),
(314, 44, 157),
(315, 44, 151),
(316, 44, 150),
(317, 44, 168),
(318, 44, 172),
(319, 44, 165),
(320, 44, 162),
(321, 44, 153),
(322, 44, 162),
(323, 44, 180),
(324, 44, 171),
(325, 44, 157),
(326, 44, 170),
(327, 44, 176),
(328, 44, 175),
(329, 44, 180),
(330, 44, 176),
(331, 44, 163),
(332, 44, 162),
(333, 44, 157),
(334, 44, 159),
(335, 44, 165),
(336, 44, 159),
(337, 44, 156),
(338, 44, 153),
(339, 44, 157),
(340, 44, 170),
(341, 44, 173),
(342, 44, 171),
(343, 44, 176),
(344, 44, 178),
(345, 44, 180),
(346, 44, 180),
(347, 44, 173),
(348, 44, 159),
(349, 45, 171),
(350, 45, 150),
(351, 45, 168),
(352, 45, 153),
(353, 45, 164),
(354, 45, 179),
(355, 45, 169),
(356, 45, 159),
(357, 45, 160),
(358, 45, 179),
(359, 45, 173),
(360, 45, 175),
(361, 45, 175),
(362, 45, 168),
(363, 45, 164),
(364, 45, 166),
(365, 45, 153),
(366, 45, 168),
(367, 45, 155),
(368, 45, 162),
(369, 45, 159),
(370, 45, 158),
(371, 45, 153),
(372, 45, 155),
(373, 45, 179),
(374, 45, 154),
(375, 45, 175),
(376, 45, 151),
(377, 45, 160),
(378, 45, 168),
(379, 45, 164),
(380, 45, 177),
(381, 45, 169),
(382, 45, 171),
(383, 45, 153),
(384, 45, 162),
(385, 45, 174),
(386, 45, 180),
(387, 45, 172),
(388, 45, 154),
(389, 45, 155),
(390, 45, 155),
(391, 45, 170),
(392, 45, 155),
(393, 45, 179),
(394, 45, 173),
(395, 45, 160),
(396, 45, 167),
(397, 46, 153),
(398, 46, 153),
(399, 46, 151),
(400, 46, 168),
(401, 46, 174),
(402, 46, 176),
(403, 46, 150),
(404, 46, 161),
(405, 46, 164),
(406, 46, 162),
(407, 46, 152),
(408, 46, 154),
(409, 46, 175),
(410, 46, 162),
(411, 46, 176),
(412, 46, 174),
(413, 46, 150),
(414, 46, 156),
(415, 46, 153),
(416, 46, 168),
(417, 46, 150),
(418, 46, 170),
(419, 46, 158),
(420, 46, 175),
(421, 46, 170),
(422, 46, 158),
(423, 46, 156),
(424, 46, 153),
(425, 46, 177),
(426, 46, 172),
(427, 46, 164),
(428, 46, 164),
(429, 46, 160),
(430, 46, 167),
(431, 46, 154),
(432, 46, 174),
(433, 46, 167),
(434, 46, 159),
(435, 46, 176),
(436, 46, 153),
(437, 46, 177),
(438, 46, 152),
(439, 46, 167),
(440, 46, 176),
(441, 47, 157),
(442, 47, 161),
(443, 47, 162),
(444, 47, 164),
(445, 47, 151),
(446, 47, 172),
(447, 47, 178),
(448, 47, 173),
(449, 47, 163),
(450, 47, 171),
(451, 47, 157),
(452, 47, 170),
(453, 47, 162),
(454, 47, 179),
(455, 47, 162),
(456, 47, 165),
(457, 47, 175),
(458, 47, 159),
(459, 47, 175),
(460, 47, 173),
(461, 47, 174),
(462, 47, 163),
(463, 47, 150),
(464, 47, 178),
(465, 47, 170),
(466, 47, 178),
(467, 47, 163),
(468, 47, 168),
(469, 47, 163),
(470, 47, 173),
(471, 47, 157),
(472, 47, 168),
(473, 47, 151),
(474, 47, 165),
(475, 47, 177),
(476, 47, 157),
(477, 47, 170),
(478, 47, 158),
(479, 47, 154),
(480, 47, 157),
(481, 47, 151),
(482, 47, 159),
(483, 47, 156),
(484, 47, 169),
(485, 47, 173),
(486, 47, 162),
(487, 47, 177),
(488, 47, 159),
(489, 47, 168),
(490, 48, 172),
(491, 48, 151),
(492, 48, 164),
(493, 48, 165),
(494, 48, 152),
(495, 48, 151),
(496, 48, 180),
(497, 48, 150),
(498, 48, 154),
(499, 48, 176),
(500, 48, 157),
(501, 48, 158),
(502, 48, 161),
(503, 48, 155),
(504, 48, 178),
(505, 48, 160),
(506, 48, 169),
(507, 48, 154),
(508, 48, 156),
(509, 48, 166),
(510, 48, 168),
(511, 48, 153),
(512, 48, 176),
(513, 48, 177),
(514, 48, 160),
(515, 48, 172),
(516, 48, 172),
(517, 48, 173),
(518, 48, 152),
(519, 48, 159),
(520, 48, 151),
(521, 48, 180),
(522, 48, 156),
(523, 48, 163),
(524, 48, 164),
(525, 48, 170),
(526, 48, 174),
(527, 48, 150),
(528, 48, 173),
(529, 48, 153),
(530, 48, 155),
(531, 48, 157),
(532, 48, 151),
(533, 48, 166),
(534, 48, 158),
(535, 48, 151),
(536, 48, 170),
(537, 49, 155),
(538, 49, 162),
(539, 49, 169),
(540, 49, 162),
(541, 49, 155),
(542, 49, 179),
(543, 49, 180),
(544, 49, 174),
(545, 49, 153),
(546, 49, 164),
(547, 49, 167),
(548, 49, 159),
(549, 49, 157),
(550, 49, 163),
(551, 49, 154),
(552, 49, 150),
(553, 49, 166),
(554, 49, 162),
(555, 49, 180),
(556, 49, 176),
(557, 49, 153),
(558, 49, 157),
(559, 49, 162),
(560, 49, 151),
(561, 49, 156),
(562, 49, 164),
(563, 49, 152),
(564, 49, 176),
(565, 49, 178),
(566, 49, 174),
(567, 49, 157),
(568, 49, 178),
(569, 49, 152),
(570, 49, 164),
(571, 49, 173),
(572, 49, 164),
(573, 49, 158),
(574, 49, 160),
(575, 49, 175),
(576, 49, 155),
(577, 49, 163),
(578, 49, 155),
(579, 49, 172),
(580, 50, 179),
(581, 50, 180),
(582, 50, 174),
(583, 50, 169),
(584, 50, 155),
(585, 50, 153),
(586, 50, 177),
(587, 50, 154),
(588, 50, 150),
(589, 50, 156),
(590, 50, 171),
(591, 50, 165),
(592, 50, 153),
(593, 50, 164),
(594, 50, 153),
(595, 50, 159),
(596, 50, 174),
(597, 50, 167),
(598, 50, 179),
(599, 50, 165),
(600, 50, 179),
(601, 50, 173),
(602, 50, 174),
(603, 50, 159),
(604, 50, 163),
(605, 50, 180),
(606, 50, 177),
(607, 50, 160),
(608, 50, 155),
(609, 50, 165),
(610, 50, 180),
(611, 50, 159),
(612, 50, 179),
(613, 50, 173),
(614, 50, 165),
(615, 50, 153),
(616, 50, 175),
(617, 50, 154),
(618, 50, 152),
(619, 50, 171),
(620, 50, 174),
(621, 50, 153),
(622, 50, 156),
(623, 50, 157),
(624, 50, 173),
(625, 50, 152);

-- --------------------------------------------------------

--
-- Структура таблицы `trees`
--

CREATE TABLE `trees` (
  `id` int UNSIGNED NOT NULL,
  `type_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount_fruits` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `trees`
--

INSERT INTO `trees` (`id`, `type_id`, `name`, `amount_fruits`) VALUES
(26, 1, 'pear tree', 7),
(27, 1, 'pear tree', 18),
(28, 1, 'pear tree', 20),
(29, 1, 'pear tree', 5),
(30, 1, 'pear tree', 1),
(31, 1, 'pear tree', 17),
(32, 1, 'pear tree', 7),
(33, 1, 'pear tree', 17),
(34, 1, 'pear tree', 20),
(35, 1, 'pear tree', 15),
(36, 1, 'pear tree', 13),
(37, 1, 'pear tree', 20),
(38, 1, 'pear tree', 1),
(39, 1, 'pear tree', 0),
(40, 1, 'pear tree', 11),
(41, 2, 'apple tree', 48),
(42, 2, 'apple tree', 43),
(43, 2, 'apple tree', 44),
(44, 2, 'apple tree', 41),
(45, 2, 'apple tree', 48),
(46, 2, 'apple tree', 44),
(47, 2, 'apple tree', 49),
(48, 2, 'apple tree', 47),
(49, 2, 'apple tree', 43),
(50, 2, 'apple tree', 46);

-- --------------------------------------------------------

--
-- Структура таблицы `trees_type`
--

CREATE TABLE `trees_type` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `trees_type`
--

INSERT INTO `trees_type` (`id`, `type`) VALUES
(1, 'pear'),
(2, 'apple');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fruits_data`
--
ALTER TABLE `fruits_data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `trees`
--
ALTER TABLE `trees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Индексы таблицы `trees_type`
--
ALTER TABLE `trees_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `fruits_data`
--
ALTER TABLE `fruits_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=626;

--
-- AUTO_INCREMENT для таблицы `trees`
--
ALTER TABLE `trees`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `trees_type`
--
ALTER TABLE `trees_type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `trees`
--
ALTER TABLE `trees`
  ADD CONSTRAINT `trees_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `trees_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
