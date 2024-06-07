-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2024 a las 23:36:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `victor_test`
--
CREATE DATABASE IF NOT EXISTS `victor_test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `victor_test`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `average_price` int(11) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `average_price`, `brand_name`) VALUES
(1, 'ILX', 303176, 'Acura'),
(2, 'MDX', 448193, 'Acura'),
(3, 'RDX', 395753, 'Acura'),
(4, 'RLX', 453100, 'Acura'),
(5, 'TL', 247225, 'Acura'),
(6, 'TSX', 232533, 'Acura'),
(7, 'A1', 260696, 'Audi'),
(9, 'A3', 255299, 'Audi'),
(10, 'A4', 299412, 'Audi'),
(11, 'A5', 511069, 'Audi'),
(12, 'A6', 499782, 'Audi'),
(13, 'A7', 1040891, 'Audi'),
(14, 'A8', 1059155, 'Audi'),
(15, 'Q3', 454949, 'Audi'),
(16, 'Q5', 532993, 'Audi'),
(17, 'Q7', 593487, 'Audi'),
(18, 'R8', 1463936, 'Audi'),
(21, 'TT', 498670, 'Audi'),
(24, 'Continental', 0, 'Bentley'),
(25, 'Flying Spur', 3968000, 'Bentley'),
(26, 'Continental GT', 4498875, 'Bentley'),
(27, 'Mulsanne', 3968000, 'Bentley'),
(54, 'X6', 898716, 'BMW'),
(60, 'Enclave', 583200, 'Buick'),
(61, 'Encore', 335845, 'Buick'),
(62, 'LaCrosse', 419233, 'Buick'),
(63, 'Regal', 352460, 'Buick'),
(64, 'Verano', 325409, 'Buick'),
(65, 'ATS', 737342, 'Cadillac'),
(66, 'CTS', 636500, 'Cadillac'),
(70, 'SRX', 422207, 'Cadillac'),
(71, 'Aveo', 128557, 'Chevrolet'),
(72, 'Camaro', 507271, 'Chevrolet'),
(74, 'Cheyenne', 345435, 'Chevrolet'),
(75, 'Colorado', 284984, 'Chevrolet'),
(76, 'Cruze', 227283, 'Chevrolet'),
(80, 'Malibu', 238000, 'Chevrolet'),
(81, 'Matiz', 56821, 'Chevrolet'),
(84, 'Sonic', 146029, 'Chevrolet'),
(85, 'Spark', 144415, 'Chevrolet'),
(86, 'Suburban', 572851, 'Chevrolet'),
(87, 'Tahoe', 519019, 'Chevrolet'),
(88, 'Tornado', 152882, 'Chevrolet'),
(89, 'Traverse', 412188, 'Chevrolet'),
(90, 'Trax', 236175, 'Chevrolet'),
(91, 'Chrysler 200', 283907, 'Chrysler'),
(92, 'Chrysler 300', 366584, 'Chrysler'),
(93, 'Town', 317192, 'Chrysler'),
(94, 'Attitude', 121966, 'Dodge'),
(95, 'Avenger', 134104, 'Dodge'),
(96, 'Challenger', 630386, 'Dodge'),
(97, 'Charger', 376721, 'Dodge'),
(98, 'Dart', 278366, 'Dodge'),
(99, 'Durango', 294664, 'Dodge'),
(101, 'Journey', 274681, 'Dodge'),
(102, 'GF250 ', 0, 'FAW'),
(103, 'GF6000', 0, 'FAW'),
(104, 'GF70', 112600, 'FAW'),
(105, 'GF7000', 0, 'FAW'),
(106, 'GF8', 103500, 'FAW'),
(107, 'GF900', 0, 'FAW'),
(110, 'California', 0, 'Ferrari'),
(112, 'FF', 0, 'Ferrari'),
(113, 'Ducato', 0, 'Fiat'),
(114, 'F500', 0, 'Fiat'),
(115, 'Palio', 130515, 'Fiat'),
(116, 'Palio Adventure', 0, 'Fiat'),
(117, 'Punto', 181600, 'Fiat'),
(118, 'Palio Strada', 110558, 'Fiat'),
(119, 'Strada Adventure', 0, 'Fiat'),
(120, 'Uno', 161305, 'Fiat'),
(121, 'E-150', 0, 'Ford'),
(122, 'E-350', 0, 'Ford'),
(123, 'Eco Sport', 189465, 'Ford'),
(124, 'Edge', 408952, 'Ford'),
(125, 'Escape', 226759, 'Ford'),
(126, 'Expedition', 436655, 'Ford'),
(127, 'Explorer', 318270, 'Ford'),
(128, 'F-150', 268727, 'Ford'),
(129, 'F-250', 201785, 'Ford'),
(130, 'F-350', 287341, 'Ford'),
(131, 'F-450', 320575, 'Ford'),
(132, 'F-550', 370436, 'Ford'),
(133, 'Fiesta', 138747, 'Ford'),
(134, 'Focus', 189192, 'Ford'),
(135, 'Fusion', 252518, 'Ford'),
(136, 'Ikon hatchback', 0, 'Ford'),
(137, 'Lobo', 363385, 'Ford'),
(138, 'Lobo Raptor', 0, 'Ford'),
(139, 'Mustang', 367921, 'Ford'),
(140, 'Ranger', 210497, 'Ford'),
(141, 'Transit', 278628, 'Ford'),
(142, 'Acadia', 400347, 'GMC'),
(143, 'Sierra', 464248, 'GMC'),
(146, 'Terrain', 444504, 'GMC'),
(147, 'Yukon', 556491, 'GMC'),
(148, 'Accord', 221035, 'Honda'),
(149, 'City', 166870, 'Honda'),
(150, 'Civic', 185562, 'Honda'),
(151, 'CR-V', 247293, 'Honda'),
(152, 'CR-Z', 209033, 'Honda'),
(153, 'Crosstour', 255420, 'Honda'),
(154, 'Fit', 142098, 'Honda'),
(155, 'Odyssey', 343033, 'Honda'),
(156, 'Pilot', 331339, 'Honda'),
(157, 'Ridge Line', 253687, 'Honda'),
(158, 'Q60', 673900, 'Infiniti'),
(159, 'Q70', 651500, 'Infiniti'),
(160, 'QX60', 665011, 'Infiniti'),
(161, 'QX70', 660861, 'Infiniti'),
(162, 'QX80', 951850, 'Infiniti'),
(163, 'F', 1484528, 'Jaguar'),
(164, 'XF', 791032, 'Jaguar'),
(165, 'XJ', 606150, 'Jaguar'),
(166, 'XKR', 0, 'Jaguar'),
(167, 'Cherokee', 456109, 'Jeep'),
(168, 'Compass', 263629, 'Jeep'),
(169, 'Grand Cherokee', 562944, 'Jeep'),
(170, 'Patriot', 185558, 'Jeep'),
(171, 'Wrangler', 396757, 'Jeep'),
(173, 'Aventador', 0, 'Lamborghini'),
(174, 'Gallardo', 0, 'Lamborghini'),
(175, 'Defender', 923797, 'Land Rover'),
(176, 'Discovery', 1019830, 'Land Rover'),
(177, 'LR2', 482077, 'Land Rover'),
(178, 'Range Rover', 1762459, 'Land Rover'),
(179, 'Mark LT', 318420, 'Lincoln'),
(180, 'MKS', 309425, 'Lincoln'),
(181, 'MKX', 429064, 'Lincoln'),
(182, 'MKZ', 417642, 'Lincoln'),
(183, 'Navigator', 578993, 'Lincoln'),
(184, 'Gran Cabrio', 0, 'Maserati'),
(185, 'Gran Turismo', 2810925, 'Maserati'),
(186, 'Quattroporte', 2263000, 'Maserati'),
(187, 'MXT', 0, 'Mastretta'),
(188, 'Mazda 2', 183824, 'Mazda'),
(189, 'Mazda 3', 192010, 'Mazda'),
(191, 'Mazda 5', 135327, 'Mazda'),
(192, 'Mazda 6', 194683, 'Mazda'),
(194, 'CX9', 383370, 'Mazda'),
(195, 'MX5', 261504, 'Mazda'),
(196, 'Clase A', 463191, 'Mercedes Benz'),
(197, 'Clase B', 239151, 'Mercedes Benz'),
(198, 'Clase C', 672744, 'Mercedes Benz'),
(199, 'Clase CLA', 488793, 'Mercedes Benz'),
(200, 'Clase CLS', 767931, 'Mercedes Benz'),
(201, 'Clase E', 727529, 'Mercedes Benz'),
(202, 'Clase G', 2193198, 'Mercedes Benz'),
(203, 'Clase GL', 696475, 'Mercedes Benz'),
(204, 'Clase GLK', 351929, 'Mercedes Benz'),
(205, 'Clase ML', 0, 'Mercedes Benz'),
(206, 'Clase S', 2556844, 'Mercedes Benz'),
(207, 'Clase SL', 1584684, 'Mercedes Benz'),
(208, 'Clase SLK', 530838, 'Mercedes Benz'),
(209, 'Clase SLS AMG', 0, 'Mercedes Benz'),
(210, 'Viano', 433878, 'Mercedes Benz'),
(220, 'ASX', 209442, 'Mitsubishi'),
(221, 'L200', 215532, 'Mitsubishi'),
(222, 'Lancer', 153796, 'Mitsubishi'),
(223, 'Montero', 350767, 'Mitsubishi'),
(224, 'Outlander', 236435, 'Mitsubishi'),
(225, '370Z', 440869, 'Nissan'),
(226, 'Altima', 184092, 'Nissan'),
(227, 'Armada', 340681, 'Nissan'),
(228, 'Frontier LE', 0, 'Nissan'),
(229, 'Frontier XE', 0, 'Nissan'),
(230, 'Juke', 226880, 'Nissan'),
(231, 'March', 130214, 'Nissan'),
(232, 'Maxima', 295525, 'Nissan'),
(233, 'Murano', 262091, 'Nissan'),
(234, 'Note', 184206, 'Nissan'),
(235, 'NP300', 0, 'Nissan'),
(236, 'Pathfinder', 342334, 'Nissan'),
(237, 'Rogue', 175936, 'Nissan'),
(238, 'Sentra', 157613, 'Nissan'),
(239, 'Titan', 251044, 'Nissan'),
(240, 'Tsuru', 78120, 'Nissan'),
(241, 'Urvan', 239288, 'Nissan'),
(242, 'Versa', 159324, 'Nissan'),
(243, 'X Trail', 260731, 'Nissan'),
(245, '207 CC', 0, 'Peugeot'),
(246, '208', 201530, 'Peugeot'),
(249, '3008', 336527, 'Peugeot'),
(250, '301', 184431, 'Peugeot'),
(251, '308', 245043, 'Peugeot'),
(252, '308 CC', 0, 'Peugeot'),
(253, '508', 314191, 'Peugeot'),
(254, 'Manager', 342506, 'Peugeot'),
(257, 'RCZ', 404630, 'Peugeot'),
(258, '911', 1371633, 'Porsche'),
(267, 'Boxster', 745149, 'Porsche'),
(269, 'Cayenne', 941314, 'Porsche'),
(270, 'Cayman', 743222, 'Porsche'),
(272, 'Panamera', 1500840, 'Porsche'),
(278, 'Bighorn', 0, 'RAM'),
(279, 'Crew Cab', 0, 'RAM'),
(281, 'Hemi Sport', 0, 'RAM'),
(282, 'Power Wagon', 0, 'RAM'),
(283, 'Regular Cab R/T', 0, 'RAM'),
(284, 'Regular Cab SLT', 0, 'RAM'),
(285, 'ST', 0, 'RAM'),
(286, 'Duster', 209145, 'Renault'),
(287, 'Fluence', 169802, 'Renault'),
(288, 'Kangoo', 60585, 'Renault'),
(289, 'Koleos', 257672, 'Renault'),
(290, 'Safrane', 181925, 'Renault'),
(291, 'Sandero', 126814, 'Renault'),
(292, 'Stepway', 167890, 'Renault'),
(294, 'Ghost', 0, 'Rolls Royce'),
(295, 'Phantom', 0, 'Rolls Royce'),
(296, 'Altea', 141055, 'Seat'),
(297, 'Freetrack', 164408, 'Seat'),
(298, 'Ibiza', 156859, 'Seat'),
(299, 'Leon', 234543, 'Seat'),
(301, 'Toledo', 191512, 'Seat'),
(302, 'Brabus', 0, 'Smart'),
(303, 'Fortwo', 0, 'Smart'),
(304, 'Forester', 307996, 'Subaru'),
(305, 'Impreza', 232322, 'Subaru'),
(306, 'Legacy', 231704, 'Subaru'),
(307, 'Outback', 294950, 'Subaru'),
(308, 'WRX', 344748, 'Subaru'),
(309, 'XV', 310570, 'Subaru'),
(310, 'Grand Vitara', 197100, 'Suzuki'),
(311, 'Kizashi', 241536, 'Suzuki'),
(312, 'S-Cross', 235612, 'Suzuki'),
(313, 'Swift', 171901, 'Suzuki'),
(314, 'SX 4 Crossover', 0, 'Suzuki'),
(316, 'SX 4 Sedan ', 0, 'Suzuki'),
(317, 'Avanza', 161502, 'Toyota'),
(318, 'Camry', 260490, 'Toyota'),
(319, 'Corolla', 180456, 'Toyota'),
(320, 'FJ Cruiser', 301680, 'Toyota'),
(321, 'Hiace', 226078, 'Toyota'),
(322, 'Highlander', 375704, 'Toyota'),
(323, 'Hilux', 209308, 'Toyota'),
(324, 'Land Cruiser', 700584, 'Toyota'),
(325, 'Prius', 406400, 'Toyota'),
(326, 'Rav4', 254634, 'Toyota'),
(327, 'Sequoia', 490790, 'Toyota'),
(328, 'Sienna', 329930, 'Toyota'),
(329, 'Tacoma', 352954, 'Toyota'),
(330, 'Tundra', 402731, 'Toyota'),
(333, 'Amarok', 341421, 'Volkswagen'),
(334, 'Beetle', 174920, 'Volkswagen'),
(335, 'CC', 299380, 'Volkswagen'),
(336, 'Clasico', 0, 'Volkswagen'),
(337, 'CrossFox', 158882, 'Volkswagen'),
(338, 'Gol', 115926, 'Volkswagen'),
(339, 'Gol Sedan', 0, 'Volkswagen'),
(340, 'Jetta Clasico', 100096, 'Volkswagen'),
(341, 'Passat', 216005, 'Volkswagen'),
(342, 'Polo', 165026, 'Volkswagen'),
(343, 'Saveiro', 199246, 'Volkswagen'),
(344, 'Tiguan', 317202, 'Volkswagen'),
(345, 'Touareg', 483431, 'Volkswagen'),
(346, 'Vento', 175146, 'Volkswagen'),
(347, 'S60', 372106, 'Volvo'),
(348, 'S80', 256982, 'Volvo'),
(349, 'V40', 332068, 'Volvo'),
(351, 'V60', 460872, 'Volvo'),
(352, 'XC60', 498311, 'Volvo'),
(353, 'XC90', 587919, 'Volvo'),
(354, 'RL', 239050, 'Acura'),
(355, 'ZDX', 405550, 'Acura'),
(356, '147', 0, 'Alfa Romeo'),
(357, '166', 0, 'Alfa Romeo'),
(358, '4C', 1081850, 'Alfa Romeo'),
(359, 'Giulietta', 457240, 'Alfa Romeo'),
(360, 'MiTo', 345862, 'Alfa Romeo'),
(366, 'i3', 671180, 'BMW'),
(367, 'i8', 2195133, 'BMW'),
(373, 'Serie 1', 277295, 'BMW'),
(374, 'Serie 2', 584746, 'BMW'),
(375, 'Serie 3', 415477, 'BMW'),
(376, 'Serie 4', 758820, 'BMW'),
(377, 'Serie 5', 553739, 'BMW'),
(378, 'Serie 6', 891559, 'BMW'),
(379, 'Serie 7', 1132673, 'BMW'),
(380, 'Serie 8', 2179900, 'BMW'),
(381, 'X1', 373718, 'BMW'),
(382, 'X3', 398124, 'BMW'),
(383, 'X4', 730075, 'BMW'),
(384, 'X5', 796909, 'BMW'),
(386, 'Z', 479845, 'BMW'),
(387, 'LeSabre', 0, 'Buick'),
(388, 'Rendezvous', 0, 'Buick'),
(389, 'Terraza', 0, 'Buick'),
(391, 'BLS', 113350, 'Cadillac'),
(392, 'DTS', 0, 'Cadillac'),
(394, 'STS', 192210, 'Cadillac'),
(395, '3500', 253193, 'Chevrolet'),
(397, 'Astra', 79910, 'Chevrolet'),
(398, 'Avalanche', 289500, 'Chevrolet'),
(399, 'Blazer', 697900, 'Chevrolet'),
(403, 'Captiva', 204955, 'Chevrolet'),
(408, 'Chevy', 61489, 'Chevrolet'),
(410, 'Cobalt', 0, 'Chevrolet'),
(411, 'Corsa', 61780, 'Chevrolet'),
(412, 'Corvette', 811984, 'Chevrolet'),
(415, 'Epica', 93033, 'Chevrolet'),
(416, 'Equinox', 340491, 'Chevrolet'),
(417, 'Express', 0, 'Chevrolet'),
(418, 'HHR', 94141, 'Chevrolet'),
(419, 'Impala', 0, 'Chevrolet'),
(420, 'Meriva', 62754, 'Chevrolet'),
(422, 'Optra', 78281, 'Chevrolet'),
(423, 'S10', 306100, 'Chevrolet'),
(424, 'SS R', 0, 'Chevrolet'),
(426, 'Sonora', 104450, 'Chevrolet'),
(427, 'Tracker', 91066, 'Chevrolet'),
(428, 'Trailblazer', 101966, 'Chevrolet'),
(429, 'Uplander', 113130, 'Chevrolet'),
(431, 'Vectra', 90933, 'Chevrolet'),
(432, 'Venture', 0, 'Chevrolet'),
(433, 'Zafira', 90400, 'Chevrolet'),
(434, 'Aspen', 174762, 'Chrysler'),
(435, 'Avenger', 135956, 'Chrysler'),
(436, 'Cirrus', 126755, 'Chrysler'),
(438, 'Crossfire', 149550, 'Chrysler'),
(439, 'Dart', 220718, 'Chrysler'),
(441, 'Grand Voyager', 0, 'Chrysler'),
(443, 'PT Cruiser', 83738, 'Chrysler'),
(444, 'Pacifica', 521537, 'Chrysler'),
(445, 'Sebring', 0, 'Chrysler'),
(448, 'Voyager', 113932, 'Chrysler'),
(449, 'Atos', 61385, 'Dodge'),
(450, 'Caliber', 113914, 'Dodge'),
(453, 'Dakota', 143623, 'Dodge'),
(454, 'Grand Caravan', 497464, 'Dodge'),
(455, 'H 100', 173933, 'Dodge'),
(456, 'i10', 85793, 'Dodge'),
(457, 'Intrepid', 0, 'Dodge'),
(458, 'Magnum', 0, 'Dodge'),
(460, 'Neon', 254521, 'Dodge'),
(461, 'Nitro', 157452, 'Dodge'),
(462, 'RAM', 0, 'Dodge'),
(468, 'Stratus', 60283, 'Dodge'),
(469, 'Van 1000', 97850, 'Dodge'),
(470, 'Verna', 50766, 'Dodge'),
(471, 'Viper', 890387, 'Dodge'),
(475, '430', 0, 'Ferrari'),
(476, '458', 0, 'Ferrari'),
(477, '599', 0, 'Ferrari'),
(478, '612', 0, 'Ferrari'),
(479, 'F12', 0, 'Ferrari'),
(480, 'La Ferrari', 0, 'Ferrari'),
(481, '500', 221640, 'Fiat'),
(482, 'Albea', 75400, 'Fiat'),
(483, 'Bravo', 117000, 'Fiat'),
(484, 'Grande Punto', 76657, 'Fiat'),
(485, 'Linea', 118000, 'Fiat'),
(486, 'Panda', 77908, 'Fiat'),
(487, 'Stilo', 97800, 'Fiat'),
(488, 'Bronco', 0, 'Ford'),
(489, 'Club Wagon', 0, 'Ford'),
(493, 'Econoline', 171225, 'Ford'),
(494, 'Escort', 0, 'Ford'),
(495, 'Excursion', 0, 'Ford'),
(496, 'F-100', 0, 'Ford'),
(499, 'Five Hundred', 82700, 'Ford'),
(500, 'Freestar', 100350, 'Ford'),
(502, 'Ikon', 98350, 'Ford'),
(503, 'Interceptor', 338475, 'Ford'),
(504, 'Ka', 45233, 'Ford'),
(506, 'Mondeo', 69310, 'Ford'),
(508, 'Taurus', 0, 'Ford'),
(510, 'Windstar', 0, 'Ford'),
(511, 'Canyon', 182000, 'GMC'),
(515, 'Savana', 0, 'GMC'),
(517, 'Element', 0, 'Honda'),
(518, 'Passport', 0, 'Honda'),
(519, 'H1', 0, 'Hummer'),
(520, 'H2', 0, 'Hummer'),
(521, 'H3', 0, 'Hummer'),
(522, 'Atos', 0, 'Hyundai'),
(523, 'Attitude', 0, 'Hyundai'),
(524, 'Elantra', 224769, 'Hyundai'),
(525, 'Grand i10', 136722, 'Hyundai'),
(527, 'H100', 0, 'Hyundai'),
(528, 'ix35', 200520, 'Hyundai'),
(529, 'Sonata', 300443, 'Hyundai'),
(530, 'Verna', 0, 'Hyundai'),
(531, 'FX', 500350, 'Infiniti'),
(532, 'FX 50', 0, 'Infiniti'),
(533, 'G', 357625, 'Infiniti'),
(534, 'I30', 0, 'Infiniti'),
(535, 'JX', 430200, 'Infiniti'),
(536, 'Q 45', 0, 'Infiniti'),
(537, 'Q50', 519076, 'Infiniti'),
(538, 'QX', 0, 'Infiniti'),
(539, 'Rodeo', 0, 'Isuzu'),
(540, 'S-Type', 150450, 'Jaguar'),
(541, 'X-Type', 122725, 'Jaguar'),
(542, 'XK', 615857, 'Jaguar'),
(543, 'CJ5', 0, 'Jeep'),
(544, 'Commander', 157492, 'Jeep'),
(545, 'Grand Wagoneer', 0, 'Jeep'),
(546, 'Liberty', 188641, 'Jeep'),
(547, 'Asterion', 0, 'Lamborghini'),
(548, 'Huracan', 0, 'Lamborghini'),
(549, 'Veneno', 0, 'Lamborghini'),
(550, 'Evoque', 690500, 'Land Rover'),
(551, 'Freelander', 108600, 'Land Rover'),
(552, 'LR3', 209962, 'Land Rover'),
(553, 'LR4', 505630, 'Land Rover'),
(554, 'Aviator', 0, 'Lincoln'),
(555, 'LS', 97000, 'Lincoln'),
(556, 'MKC', 499270, 'Lincoln'),
(557, 'Town Car', 122750, 'Lincoln'),
(558, 'Zephyr', 113700, 'Lincoln'),
(559, 'CX7', 179026, 'Mazda'),
(560, 'Tribute', 0, 'Mazda'),
(561, 'MP4-12C', 0, 'McLaren'),
(566, 'Clase CL', 937917, 'Mercedes Benz'),
(567, 'Clase CLK', 263046, 'Mercedes Benz'),
(568, 'Clase M', 578767, 'Mercedes Benz'),
(569, 'Clase R', 316430, 'Mercedes Benz'),
(570, 'Sprinter', 476619, 'Mercedes Benz'),
(571, 'Vito', 219848, 'Mercedes Benz'),
(572, 'Grand Marquis', 0, 'Mercury'),
(573, 'Mariner', 0, 'Mercury'),
(574, 'Milan', 0, 'Mercury'),
(576, 'Mountaineer', 0, 'Mercury'),
(578, 'CBO', 125775, 'Cbo'),
(580, 'Eclipse', 142225, 'Mitsubishi'),
(581, 'Endeavor', 146240, 'Mitsubishi'),
(582, 'Galant', 79163, 'Mitsubishi'),
(583, 'Grandis', 125200, 'Mitsubishi'),
(584, '240SX', 0, 'Nissan'),
(585, '350Z', 189600, 'Nissan'),
(586, 'Aprio', 69450, 'Nissan'),
(587, 'Cabstar', 294305, 'Nissan'),
(588, 'Estacas', 169790, 'Nissan'),
(589, 'NV2500', 303385, 'Nissan'),
(590, 'Platina', 58266, 'Nissan'),
(591, 'Quest', 128606, 'Nissan'),
(592, 'Tiida', 111954, 'Nissan'),
(593, 'Xterra', 0, 'Nissan'),
(595, '206', 63464, 'Peugeot'),
(596, '307', 81807, 'Peugeot'),
(597, '406', 0, 'Peugeot'),
(598, '407', 93361, 'Peugeot'),
(599, '607', 103000, 'Peugeot'),
(600, 'Grand Raid', 89709, 'Peugeot'),
(601, 'Partner', 172626, 'Peugeot'),
(605, 'G-3', 70855, 'Pontiac'),
(606, 'G-4', 66766, 'Pontiac'),
(607, 'G-5', 88000, 'Pontiac'),
(608, 'G-6', 95266, 'Pontiac'),
(609, 'Grand Am', 0, 'Pontiac'),
(610, 'Grand Prix', 0, 'Pontiac'),
(611, 'Matiz', 44885, 'Pontiac'),
(612, 'Montana', 107887, 'Pontiac'),
(613, 'Solstice', 144780, 'Pontiac'),
(614, 'Sunfire', 0, 'Pontiac'),
(615, 'Torrent', 111772, 'Pontiac'),
(621, '918 Spyder', 0, 'Porsche'),
(624, 'Clio', 108000, 'Renault'),
(625, 'Euroclio', 0, 'Renault'),
(627, 'Laguna', 66600, 'Renault'),
(628, 'Megane', 80572, 'Renault'),
(630, 'Scala', 94237, 'Renault'),
(631, 'Scenic', 73400, 'Renault'),
(632, 'Trafic Panel', 171911, 'Renault'),
(633, 'Wraith', 0, 'Rolls Royce'),
(634, '9-2', 0, 'Saab'),
(635, '9-3', 0, 'Saab'),
(636, '90', 0, 'Saab'),
(639, 'Alhambra', 101700, 'Seat'),
(640, 'Cordoba', 82635, 'Seat'),
(641, 'Exeo', 211150, 'Seat'),
(642, 'Forfour', 219000, 'Smart'),
(643, 'B9 Tribeca', 0, 'Subaru'),
(644, 'Tribeca', 235850, 'Subaru'),
(645, 'Aerio', 62600, 'Suzuki'),
(646, 'SX4', 134540, 'Suzuki'),
(647, 'Vitara', 289756, 'Suzuki'),
(648, 'XL7', 137360, 'Suzuki'),
(649, '4Runner', 155264, 'Toyota'),
(650, 'Matrix', 109200, 'Toyota'),
(651, 'Rush', 113750, 'Toyota'),
(652, 'Solara', 113700, 'Toyota'),
(653, 'Tercel', 0, 'Toyota'),
(654, 'Yaris', 143268, 'Toyota'),
(655, 'Bora', 124253, 'Volkswagen'),
(656, 'Derby', 63075, 'Volkswagen'),
(657, 'Cabrio', 0, 'Volkswagen'),
(658, 'Caribe', 0, 'Volkswagen'),
(659, 'Golf', 252992, 'Volkswagen'),
(665, 'TLX', 478290, 'Acura'),
(666, 'Spider', 0, 'Alfa Romeo'),
(667, 'Mirage', 167900, 'Mitsubishi'),
(668, 'C30', 171037, 'Volvo'),
(672, 'DBS', 0, 'Aston Martin'),
(673, 'DB9', 3859500, 'Aston Martin'),
(674, 'Lagonda', 0, 'Aston Martin'),
(675, 'Vantage', 2720250, 'Aston Martin'),
(676, 'Vanquish', 5580000, 'Aston Martin'),
(677, 'Rapide', 3906000, 'Aston Martin'),
(678, 'Elise', 0, 'Lotus'),
(679, 'Exige', 0, 'Lotus'),
(680, 'Evora', 0, 'Lotus'),
(681, 'MG3', 0, 'MG'),
(682, 'MG6', 0, 'MG'),
(683, 'S', 2137587, 'Tesla'),
(684, 'X', 2326825, 'Tesla'),
(685, '500', 0, 'Abarth'),
(686, 'Forte', 270506, 'KIA'),
(687, 'Sorento', 440080, 'KIA'),
(688, 'Sportage', 368219, 'KIA'),
(689, 'Logan', 174524, 'Renault'),
(692, 'Macan', 1010744, 'Porsche'),
(693, 'Escalade', 689650, 'Cadillac'),
(694, 'Silverado', 178660, 'Chevrolet'),
(695, 'Mini', 343512, 'Mini Cooper'),
(696, 'Mini S', 323112, 'Mini Cooper'),
(697, 'Coupe', 301593, 'Mini Cooper'),
(698, 'Convertible', 290934, 'Mini Cooper'),
(699, 'Roadster', 313133, 'Mini Cooper'),
(700, 'Countryman', 331884, 'Mini Cooper'),
(701, 'Paceman', 349017, 'Mini Cooper'),
(702, 'John Cooper Works', 0, 'Mini Cooper'),
(703, '207', 109263, 'Peugeot'),
(704, '2008', 286114, 'Peugeot'),
(705, 'V50', 126000, 'Volvo'),
(706, 'C70', 304557, 'Volvo'),
(707, 'S40', 149377, 'Volvo'),
(708, '488', 0, 'Ferrari'),
(709, 'Tucson', 343817, 'Hyundai'),
(710, 'CX5', 321758, 'Mazda'),
(711, 'HR-V', 311173, 'Honda'),
(712, 'CX3', 295390, 'Mazda'),
(713, 'Clase GLA', 485557, 'Mercedes Benz'),
(714, 'Clase GLC', 723551, 'Mercedes Benz'),
(715, 'Clase GLE', 1368918, 'Mercedes Benz'),
(716, 'AMG GT', 2718345, 'Mercedes Benz'),
(717, 'Aero', 0, 'Saab'),
(718, 'Ciaz', 216360, 'Suzuki'),
(719, 'Clase V', 844904, 'Mercedes Benz'),
(722, 'Up', 163962, 'Volkswagen'),
(723, 'Optima', 360900, 'KIA'),
(724, 'Rio', 223032, 'KIA'),
(725, 'Leaf', 531990, 'Nissan'),
(726, 'S3', 0, 'Audi'),
(727, '3', 0, 'Tesla'),
(728, 'Twizy', 0, 'Renault'),
(729, 'Soul', 275188, 'KIA'),
(730, 'Volt', 658880, 'Chevrolet'),
(731, 'Figo', 171262, 'Ford'),
(732, 'D20', 169088, 'Baic'),
(733, 'X25', 237345, 'Baic'),
(734, 'Ignis', 197956, 'Suzuki'),
(735, 'Creta', 189895, 'Hyundai'),
(737, 'SEI2', 383714, 'JAC'),
(738, 'SEI3', 346922, 'JAC'),
(802, 'Serie 500', 1142796, 'HINO'),
(1264, 'NSX', 3818225, 'Acura'),
(1265, 'Q2', 541153, 'Audi'),
(1266, 'BJ40', 520166, 'Baic'),
(1267, 'Bentayga', 4278000, 'Bentley'),
(1268, 'Serie Z', 555130, 'BMW'),
(1269, 'Envision', 597200, 'Buick'),
(1270, 'XT5', 775655, 'Cadillac'),
(1271, 'CBO', 173000, 'Cbo'),
(1272, 'Transit Van', 498596, 'Ford'),
(1273, 'Beat', 167757, 'Chevrolet'),
(1274, 'Bolt EV', 695333, 'Chevrolet'),
(1275, 'Cargo Van', 361027, 'Chevrolet'),
(1276, 'Cavalier', 272971, 'Chevrolet'),
(1277, 'Express Cutaway', 326457, 'Chevrolet'),
(1278, 'Express Van', 439228, 'Chevrolet'),
(1279, 'S-10', 270122, 'Chevrolet'),
(1280, 'Sierra', 580652, 'Chevrolet'),
(1281, 'Silverado 1500', 363866, 'Chevrolet'),
(1282, 'Silverado 2500', 404665, 'Chevrolet'),
(1283, 'Silverado 3500', 402850, 'Chevrolet'),
(1284, 'ACCENT', 240760, 'Hyundai'),
(1285, 'SANTA FE', 533277, 'Hyundai'),
(1286, 'QX30', 632983, 'Infiniti'),
(1287, 'CITYSTAR', 717030, 'International'),
(1288, 'F Pace', 1300675, 'Jaguar'),
(1289, 'XE', 970270, 'Jaguar'),
(1290, 'NIRO', 452475, 'KIA'),
(1291, 'Discovery Sport', 772785, 'Land Rover'),
(1292, 'Range Rover Sport', 1326131, 'Land Rover'),
(1293, 'Continental', 1196750, 'Lincoln'),
(1294, 'Ghibli', 1320600, 'Maserati'),
(1295, 'Cargo Van', 504323, 'Mercedes Benz'),
(1296, 'Chasis Cabina', 367440, 'Mercedes Benz'),
(1297, 'Clase GLS', 1801912, 'Mercedes Benz'),
(1298, 'Clase SLC', 835650, 'Mercedes Benz'),
(1299, 'Clase SLS', 3415950, 'Mercedes Benz'),
(1300, 'Crew Cab', 429587, 'Mercedes Benz'),
(1301, 'Chasis Cabina', 185095, 'Nissan'),
(1302, 'Doble Cabina', 223808, 'Nissan'),
(1303, 'Frontier', 347004, 'Nissan'),
(1304, 'GT-R', 2180600, 'Nissan'),
(1305, 'Kicks', 311277, 'Nissan'),
(1306, 'Pick Up', 214570, 'Nissan'),
(1307, 'Partner Maxi', 221392, 'Peugeot'),
(1308, 'Captur', 307844, 'Renault'),
(1309, 'Kangoo Express', 175550, 'Renault'),
(1310, 'Twitzy Z.E.', 250300, 'Renault'),
(1311, 'ATECA', 406112, 'Seat'),
(1312, 'BRZ', 470283, 'Subaru'),
(1313, 'Hunter', 542000, 'UAZ'),
(1314, 'Caddy', 237534, 'Volkswagen'),
(1315, 'Crafter', 426691, 'Volkswagen'),
(1316, 'Crafter Pasajeros', 549187, 'Volkswagen'),
(1317, 'Cross Golf', 277150, 'Volkswagen'),
(1318, 'Jetta Nuevo', 214175, 'Volkswagen'),
(1319, 'Transporter', 332755, 'Volkswagen'),
(1320, 'S90', 1042940, 'Volvo'),
(1321, 'Ducato Van', 285908, 'Fiat'),
(1322, 'Mobi', 165188, 'Fiat'),
(1523, 'Stinger', 647283, 'KIA'),
(1524, 'Ioniq', 438900, 'Hyundai'),
(1525, 'C-HR', 367400, 'Toyota'),
(1526, 'Renegade', 396920, 'Jeep'),
(1527, 'Starex', 416400, 'Hyundai'),
(1528, 'Sedona', 654650, 'KIA'),
(1536, 'Arona', 345150, 'Seat'),
(1537, 'Ram 1500', 453421, 'RAM'),
(1538, 'Ram 2500', 439179, 'RAM'),
(1539, 'Ram 4000', 379308, 'RAM'),
(1540, 'H 100 Wagon', 223850, 'Dodge'),
(1541, 'Econoline Wagon', 291950, 'Ford'),
(1542, 'ELF 200', 380933, 'Isuzu'),
(1543, 'ELF 400', 481755, 'Isuzu'),
(1544, 'ELF 300', 426500, 'Isuzu'),
(1545, 'Clubman', 361742, 'Mini Cooper'),
(1546, 'GTS', 151950, 'Dodge'),
(1547, 'Ram Promaster', 389350, 'RAM'),
(1548, 'Cabrio', 212563, 'Smart'),
(1549, 'Coupé', 181446, 'Smart'),
(1550, 'Vision', 156660, 'Dodge'),
(1551, 'Ram 700', 220046, 'RAM'),
(1552, 'ELF 100', 299800, 'Isuzu'),
(1553, 'GF60', 152850, 'FAW'),
(1554, 'Giulia', 1187400, 'Alfa Romeo'),
(1555, 'X65', 343880, 'Baic'),
(1556, 'Expert', 403700, 'Peugeot'),
(1557, 'Expert Van', 469750, 'Peugeot'),
(1558, 'Traveller', 682200, 'Peugeot'),
(1559, 'XC40', 684950, 'Volvo'),
(1560, 'Stelvio', 1456666, 'Alfa Romeo'),
(1561, 'Q8', 1449900, 'Audi'),
(1562, 'X35', 288900, 'Baic'),
(1563, 'X2', 652400, 'BMW'),
(1564, 'X7', 1769900, 'BMW'),
(1565, 'XT4', 746500, 'Cadillac'),
(1566, 'Serie 300', 811452, 'HINO'),
(1567, 'BRV', 333900, 'Honda'),
(1568, 'Insight', 549900, 'Honda'),
(1569, 'QX50', 821233, 'Infiniti'),
(1570, 'Frison', 364000, 'JAC'),
(1571, 'J4', 214000, 'JAC'),
(1572, 'SEI7', 506500, 'JAC'),
(1573, 'E Pace', 1111564, 'Jaguar'),
(1574, 'I Pace', 2250375, 'Jaguar'),
(1575, 'Velar', 1252681, 'Land Rover'),
(1576, 'Nautilus', 951600, 'Lincoln'),
(1577, 'Eclipse Cross', 429950, 'Mitsubishi'),
(1578, '5008', 661566, 'Peugeot'),
(1579, 'Rifter', 339900, 'Peugeot'),
(1580, 'Oroch', 310900, 'Renault'),
(1581, 'Ertiga', 288323, 'Suzuki'),
(1582, 'Teramont', 788398, 'Volkswagen'),
(1583, 'Kwid', 181566, 'Renault'),
(1734, 'Virtus', 321600, 'Volkswagen'),
(1735, 'MX2', 0, 'Zacua'),
(1736, 'MX3', 0, 'Zacua'),
(1737, 'CX30', 439900, 'Mazda'),
(1738, 'Seltos', 0, 'KIA'),
(1739, 'Onix', 270500, 'Chevrolet'),
(1740, 'T-Cross', 0, 'Volkswagen');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idxbrand` (`brand_name`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1741;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
