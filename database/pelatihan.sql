-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 06:00 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelatihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `badan_usaha`
--

CREATE TABLE `badan_usaha` (
  `id_badan_usaha` int(11) NOT NULL,
  `badan_usaha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_instruktur`
--

CREATE TABLE `data_instruktur` (
  `id_data_instruktur` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_jadwal`
--

CREATE TABLE `data_jadwal` (
  `id_data_jadwal` int(11) NOT NULL,
  `jadwal` varchar(200) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_materi`
--

CREATE TABLE `data_materi` (
  `id_data_materi` int(11) NOT NULL,
  `materi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_panitia`
--

CREATE TABLE `data_panitia` (
  `id_data_panitia` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_penilaian`
--

CREATE TABLE `data_penilaian` (
  `id_data_penilaian` int(11) NOT NULL,
  `id_data_peserta` int(11) NOT NULL,
  `id_data_jadwal` int(11) NOT NULL,
  `soal` varchar(200) NOT NULL,
  `hasil` varchar(200) NOT NULL,
  `id_data_instruktur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_peserta`
--

CREATE TABLE `data_peserta` (
  `id_data_peserta` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `nama_tabel` varchar(50) NOT NULL,
  `id_tabel` int(11) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(1, 0, 'Login', 1591033924.9074, 'Daniel', 'Login'),
(2, 4, 'yii\\db\\Command::execute', 1591033924.9076, 'Daniel', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1591033924.9074, \'Daniel\', \'Login\')'),
(3, 0, 'Login', 1591033946.604, 'Daniel', 'Login'),
(4, 4, 'yii\\db\\Command::execute', 1591033946.6042, 'Daniel', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1591033946.604, \'Daniel\', \'Login\')'),
(5, 4, 'yii\\db\\Command::execute', 1591033978.6465, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=220'),
(6, 4, 'yii\\db\\Command::execute', 1591033981.3567, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=221'),
(7, 4, 'yii\\db\\Command::execute', 1591033984.14, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=222'),
(8, 4, 'yii\\db\\Command::execute', 1591033986.2111, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=223'),
(9, 4, 'yii\\db\\Command::execute', 1591033989.2, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=217'),
(10, 4, 'yii\\db\\Command::execute', 1591033994.758, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=216'),
(11, 4, 'yii\\db\\Command::execute', 1591034000.7226, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=215'),
(12, 4, 'yii\\db\\Command::execute', 1591034010.3352, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=214'),
(13, 4, 'yii\\db\\Command::execute', 1591034029.9138, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=213'),
(14, 4, 'yii\\db\\Command::execute', 1591034060.0075, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=212'),
(15, 4, 'yii\\db\\Command::execute', 1591034074.7276, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=207'),
(16, 4, 'yii\\db\\Command::execute', 1591034079.5281, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=206'),
(17, 4, 'yii\\db\\Command::execute', 1591034085.101, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=205'),
(18, 4, 'yii\\db\\Command::execute', 1591034087.7152, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=230'),
(19, 4, 'yii\\db\\Command::execute', 1591034090.7926, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=204'),
(20, 4, 'yii\\db\\Command::execute', 1591034099.2947, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=201'),
(21, 4, 'yii\\db\\Command::execute', 1591034101.7, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=202'),
(22, 4, 'yii\\db\\Command::execute', 1591034103.9883, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=203'),
(23, 4, 'yii\\db\\Command::execute', 1591034106.6938, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=200'),
(24, 4, 'yii\\db\\Command::execute', 1591034153.1418, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=235'),
(25, 4, 'yii\\db\\Command::execute', 1591034156.3565, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=234'),
(26, 4, 'yii\\db\\Command::execute', 1591034162.1153, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=233'),
(27, 4, 'yii\\db\\Command::execute', 1591034165.8663, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=232'),
(28, 4, 'yii\\db\\Command::execute', 1591034169.6946, 'Daniel', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=231'),
(29, 4, 'yii\\db\\Command::execute', 1591034179.7801, 'Daniel', 'DELETE FROM `badan_usaha` WHERE `id_badan_usaha`=6'),
(30, 4, 'yii\\db\\Command::execute', 1591034181.7714, 'Daniel', 'DELETE FROM `badan_usaha` WHERE `id_badan_usaha`=5'),
(31, 4, 'yii\\db\\Command::execute', 1591034183.9695, 'Daniel', 'DELETE FROM `badan_usaha` WHERE `id_badan_usaha`=4'),
(32, 4, 'yii\\db\\Command::execute', 1591034186.0981, 'Daniel', 'DELETE FROM `badan_usaha` WHERE `id_badan_usaha`=3'),
(33, 4, 'yii\\db\\Command::execute', 1591034187.8028, 'Daniel', 'DELETE FROM `badan_usaha` WHERE `id_badan_usaha`=2'),
(34, 4, 'yii\\db\\Command::execute', 1591034189.7782, 'Daniel', 'DELETE FROM `badan_usaha` WHERE `id_badan_usaha`=1'),
(35, 4, 'yii\\db\\Command::execute', 1591034206.9944, 'Daniel', 'UPDATE `setting` SET `konten`=\'-\' WHERE `id_setting`=1'),
(36, 4, 'yii\\db\\Command::execute', 1591034272.4158, 'Daniel', 'INSERT INTO `system_role` (`nama_role`) VALUES (\'INSTRUKTUR\')'),
(37, 4, 'yii\\db\\Command::execute', 1591034278.7304, 'Daniel', 'INSERT INTO `system_role` (`nama_role`) VALUES (\'PANITIA\')'),
(38, 4, 'yii\\db\\Command::execute', 1591034302.3544, 'Daniel', 'INSERT INTO `system_role` (`nama_role`) VALUES (\'PESERTA\')'),
(39, 0, 'Login', 1592193600.1809, 'Daniel', 'Login'),
(40, 4, 'yii\\db\\Command::execute', 1592193600.1811, 'Daniel', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592193600.1809, \'Daniel\', \'Login\')');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`, `nama`, `foto`) VALUES
(36, 'daniel', '9383b6a71f6ad7974f0bd7ea6583c72e', 'Daniel', 'avatar5.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu_navigasi`
--

CREATE TABLE `menu_navigasi` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_navigasi`
--

INSERT INTO `menu_navigasi` (`id_menu`, `nama_menu`, `url`, `id_parent`, `no_urut`, `icon`, `status`) VALUES
(1, 'Master Data', '#', 0, 1, 'database', 0),
(2, 'Login', 'login', 1, 2, 'sign-in-alt', 0),
(3, 'Menu Navigasi', 'menu-navigasi', 1, 1, 'bars', 0),
(4, 'Hak Akses', 'systemrole', 1, 3, 'at', 0),
(5, 'Setting Aplikasi', 'setting', 1, 4, 'sliders-h', 0),
(6, 'Badan Usaha', 'badan-usaha', 1, 5, 'building', 0),
(115, 'Log', '#', 0, 19, 'check-circle', 0),
(124, 'Log', '/log', 115, 1, 'list-ul', 0),
(125, 'Rekap Log', '/log/rekap-log', 115, 2, 'list-ul', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_navigasi_role`
--

CREATE TABLE `menu_navigasi_role` (
  `id_menu_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_navigasi_role`
--

INSERT INTO `menu_navigasi_role` (`id_menu_role`, `id_menu`, `id_system_role`) VALUES
(5, 5, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(31, 31, 1),
(32, 32, 1),
(36, 36, 1),
(40, 40, 1),
(42, 42, 1),
(43, 43, 1),
(44, 44, 1),
(46, 46, 1),
(48, 48, 1),
(52, 52, 1),
(53, 53, 1),
(76, 76, 1),
(77, 77, 1),
(78, 78, 1),
(79, 79, 1),
(80, 80, 1),
(81, 81, 1),
(82, 82, 1),
(83, 83, 1),
(84, 84, 1),
(85, 85, 1),
(86, 86, 1),
(88, 88, 1),
(89, 89, 1),
(105, 105, 1),
(106, 106, 1),
(107, 107, 1),
(108, 108, 1),
(109, 109, 1),
(110, 110, 1),
(111, 111, 1),
(112, 112, 1),
(133, 61, 11),
(134, 61, 1),
(147, 71, 12),
(148, 71, 1),
(149, 75, 3),
(150, 75, 1),
(151, 87, 1),
(152, 87, 13),
(166, 47, 8),
(167, 47, 1),
(202, 91, 15),
(203, 91, 16),
(204, 91, 1),
(205, 92, 15),
(206, 92, 16),
(207, 92, 1),
(208, 93, 15),
(209, 93, 16),
(210, 93, 1),
(211, 94, 15),
(212, 94, 16),
(213, 94, 1),
(220, 98, 15),
(221, 98, 16),
(222, 98, 1),
(223, 97, 15),
(224, 97, 16),
(225, 97, 1),
(226, 99, 15),
(227, 99, 16),
(228, 99, 1),
(229, 100, 15),
(230, 100, 16),
(231, 100, 1),
(235, 102, 15),
(236, 102, 16),
(237, 102, 1),
(238, 103, 15),
(239, 103, 16),
(240, 103, 1),
(241, 104, 15),
(242, 104, 16),
(243, 104, 1),
(315, 6, 8),
(316, 6, 5),
(317, 6, 1),
(318, 62, 11),
(319, 62, 1),
(320, 63, 11),
(321, 63, 1),
(322, 64, 11),
(323, 64, 1),
(324, 65, 11),
(325, 65, 1),
(326, 66, 11),
(327, 66, 1),
(330, 67, 11),
(331, 67, 1),
(332, 68, 11),
(333, 68, 1),
(336, 69, 11),
(337, 69, 1),
(340, 70, 11),
(341, 70, 1),
(354, 57, 11),
(355, 57, 1),
(356, 57, 10),
(360, 59, 11),
(361, 59, 1),
(362, 59, 10),
(366, 60, 11),
(367, 60, 1),
(368, 60, 10),
(370, 56, 11),
(371, 56, 1),
(372, 56, 10),
(373, 55, 11),
(374, 55, 1),
(375, 55, 10),
(377, 116, 6),
(378, 116, 1),
(379, 117, 4),
(380, 117, 1),
(381, 119, 4),
(382, 119, 1),
(383, 118, 4),
(384, 118, 1),
(387, 51, 9),
(388, 51, 1),
(389, 120, 9),
(390, 120, 1),
(393, 121, 4),
(394, 121, 1),
(406, 33, 7),
(407, 33, 9),
(408, 33, 1),
(422, 115, 15),
(423, 115, 1),
(424, 122, 14),
(425, 122, 1),
(436, 15, 15),
(437, 15, 9),
(438, 15, 17),
(439, 15, 1),
(440, 16, 15),
(441, 16, 9),
(442, 16, 17),
(443, 16, 1),
(447, 17, 15),
(448, 17, 9),
(449, 17, 17),
(450, 17, 1),
(451, 18, 15),
(452, 18, 9),
(453, 18, 17),
(454, 18, 1),
(455, 19, 15),
(456, 19, 9),
(457, 19, 17),
(458, 19, 1),
(459, 20, 15),
(460, 20, 9),
(461, 20, 17),
(462, 20, 1),
(463, 123, 14),
(464, 123, 15),
(465, 123, 1),
(467, 124, 15),
(468, 124, 1),
(469, 125, 15),
(470, 125, 1),
(473, 73, 12),
(474, 73, 1),
(475, 74, 12),
(476, 74, 1),
(509, 7, 8),
(510, 7, 5),
(511, 7, 4),
(512, 7, 1),
(513, 8, 6),
(514, 8, 8),
(515, 8, 5),
(516, 8, 4),
(517, 8, 1),
(520, 35, 7),
(521, 35, 9),
(522, 35, 1),
(523, 38, 7),
(524, 38, 9),
(525, 38, 1),
(533, 37, 7),
(534, 37, 9),
(535, 37, 1),
(536, 39, 7),
(537, 39, 9),
(538, 39, 1),
(539, 41, 7),
(540, 41, 9),
(541, 41, 1),
(548, 126, 8),
(549, 126, 1),
(550, 128, 7),
(551, 128, 9),
(552, 128, 1),
(553, 129, 7),
(554, 129, 9),
(555, 129, 1),
(556, 130, 8),
(557, 130, 5),
(558, 130, 1),
(559, 131, 8),
(560, 131, 5),
(561, 131, 1),
(563, 132, 2),
(564, 132, 6),
(565, 132, 3),
(566, 132, 7),
(567, 132, 14),
(568, 132, 8),
(569, 132, 15),
(570, 132, 9),
(571, 132, 11),
(572, 132, 18),
(573, 132, 5),
(574, 132, 12),
(575, 132, 16),
(576, 132, 17),
(577, 132, 4),
(578, 132, 1),
(579, 132, 13),
(580, 132, 10),
(581, 113, 7),
(582, 113, 8),
(583, 113, 9),
(584, 113, 18),
(585, 113, 1),
(594, 133, 18),
(595, 133, 1),
(597, 134, 18),
(598, 134, 1),
(601, 45, 7),
(602, 45, 8),
(603, 45, 9),
(604, 45, 1),
(605, 136, 1),
(606, 136, 10),
(607, 30, 4),
(608, 30, 1),
(615, 14, 7),
(616, 14, 15),
(617, 14, 9),
(618, 14, 17),
(619, 14, 4),
(620, 14, 1),
(621, 137, 9),
(622, 137, 1),
(626, 135, 18),
(627, 135, 1),
(628, 138, 9),
(629, 138, 1),
(630, 34, 7),
(631, 34, 1),
(636, 2, 15),
(637, 2, 1),
(638, 3, 15),
(639, 3, 1),
(640, 4, 15),
(641, 4, 1),
(648, 142, 9),
(649, 142, 1),
(656, 29, 6),
(657, 29, 7),
(658, 29, 1),
(665, 141, 9),
(666, 141, 4),
(667, 141, 1),
(671, 144, 4),
(672, 144, 1),
(673, 145, 7),
(674, 145, 9),
(675, 145, 1),
(676, 146, 15),
(677, 146, 16),
(678, 146, 1),
(679, 147, 15),
(680, 147, 16),
(681, 147, 1),
(682, 148, 11),
(683, 148, 1),
(690, 151, 3),
(691, 151, 1),
(692, 9, 8),
(693, 9, 5),
(694, 9, 4),
(695, 9, 1),
(700, 11, 8),
(701, 11, 15),
(702, 11, 5),
(703, 11, 16),
(704, 11, 4),
(705, 11, 1),
(706, 12, 8),
(707, 12, 5),
(708, 12, 4),
(709, 12, 1),
(710, 21, 9),
(711, 21, 5),
(712, 21, 4),
(713, 21, 1),
(714, 22, 9),
(715, 22, 5),
(716, 22, 4),
(717, 22, 1),
(722, 50, 9),
(723, 50, 1),
(724, 13, 6),
(725, 13, 7),
(726, 13, 15),
(727, 13, 9),
(728, 13, 17),
(729, 13, 1),
(748, 96, 2),
(749, 96, 6),
(750, 96, 15),
(751, 96, 16),
(752, 96, 4),
(753, 96, 1),
(754, 152, 3),
(755, 152, 1),
(756, 153, 15),
(757, 153, 1),
(758, 154, 15),
(759, 154, 1),
(760, 155, 15),
(761, 155, 1),
(762, 156, 12),
(763, 156, 1),
(764, 157, 3),
(765, 157, 1),
(777, 159, 6),
(778, 159, 9),
(779, 159, 4),
(780, 159, 1),
(785, 139, 9),
(786, 139, 1),
(787, 140, 9),
(788, 140, 1),
(791, 161, 6),
(792, 161, 4),
(793, 161, 1),
(794, 162, 14),
(795, 162, 1),
(799, 163, 9),
(800, 163, 1),
(803, 165, 14),
(804, 165, 15),
(805, 165, 1),
(816, 27, 6),
(817, 27, 7),
(818, 27, 16),
(819, 27, 4),
(820, 27, 1),
(821, 28, 16),
(822, 28, 4),
(823, 28, 1),
(824, 10, 8),
(825, 10, 5),
(826, 10, 16),
(827, 10, 4),
(828, 10, 1),
(829, 114, 6),
(830, 114, 16),
(831, 114, 1),
(832, 166, 6),
(833, 166, 1),
(834, 143, 6),
(835, 143, 4),
(836, 143, 1),
(838, 167, 11),
(839, 167, 1),
(840, 167, 10),
(841, 58, 1),
(844, 168, 9),
(845, 168, 1),
(847, 170, 11),
(848, 170, 1),
(849, 171, 11),
(850, 171, 1),
(854, 49, 7),
(855, 49, 9),
(856, 49, 1),
(857, 172, 11),
(858, 172, 1),
(859, 173, 11),
(860, 173, 1),
(861, 174, 11),
(862, 174, 1),
(865, 176, 11),
(866, 176, 1),
(867, 177, 11),
(868, 177, 1),
(871, 179, 11),
(872, 179, 1),
(873, 180, 11),
(874, 180, 1),
(877, 182, 11),
(878, 182, 1),
(879, 183, 11),
(880, 183, 1),
(883, 185, 11),
(884, 185, 1),
(885, 186, 11),
(886, 186, 1),
(889, 188, 11),
(890, 188, 1),
(895, 191, 9),
(896, 191, 1),
(897, 192, 9),
(898, 192, 1),
(899, 160, 7),
(900, 160, 9),
(901, 160, 1),
(902, 193, 14),
(903, 193, 1),
(912, 158, 3),
(913, 158, 11),
(914, 158, 12),
(915, 158, 1),
(923, 169, 11),
(924, 169, 1),
(925, 189, 11),
(926, 189, 1),
(927, 1, 6),
(928, 1, 8),
(929, 1, 15),
(930, 1, 11),
(931, 1, 5),
(932, 1, 16),
(933, 1, 4),
(934, 1, 1),
(938, 175, 11),
(939, 175, 1),
(940, 175, 10),
(941, 178, 11),
(942, 178, 1),
(943, 178, 10),
(944, 181, 11),
(945, 181, 1),
(946, 181, 10),
(947, 184, 11),
(948, 184, 1),
(949, 184, 10),
(950, 187, 11),
(951, 187, 1),
(952, 187, 10),
(953, 190, 11),
(954, 190, 1),
(955, 190, 10),
(959, 90, 6),
(960, 90, 15),
(961, 90, 16),
(962, 90, 1),
(963, 194, 11),
(964, 194, 1),
(965, 195, 11),
(966, 195, 1),
(969, 95, 15),
(970, 95, 16),
(971, 95, 1),
(972, 196, 12),
(973, 196, 1),
(974, 197, 11),
(975, 197, 1),
(978, 54, 11),
(979, 54, 1),
(980, 54, 10),
(981, 198, 11),
(982, 198, 1),
(983, 164, 11),
(984, 164, 1),
(985, 164, 10),
(986, 199, 3),
(987, 199, 1),
(991, 201, 1),
(992, 202, 1),
(993, 203, 1),
(996, 206, 1),
(997, 207, 1),
(999, 209, 1),
(1003, 211, 1),
(1008, 216, 1),
(1019, 208, 1),
(1023, 210, 1),
(1025, 220, 1),
(1026, 221, 1),
(1027, 222, 1),
(1028, 223, 1),
(1029, 224, 1),
(1030, 218, 1),
(1032, 225, 1),
(1033, 226, 1),
(1035, 217, 1),
(1038, 219, 1),
(1039, 227, 1),
(1040, 228, 1),
(1042, 229, 1),
(1043, 200, 1),
(1045, 213, 1),
(1047, 214, 1),
(1050, 212, 1),
(1052, 205, 1),
(1053, 230, 1),
(1055, 204, 1),
(1058, 215, 1),
(1059, 231, 1),
(1060, 232, 1),
(1061, 233, 1),
(1062, 234, 1),
(1063, 235, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama`, `konten`) VALUES
(1, 'nama_perusahaan', '-'),
(2, 'email', '-'),
(3, 'telepon', '-');

-- --------------------------------------------------------

--
-- Table structure for table `system_role`
--

CREATE TABLE `system_role` (
  `id_system_role` int(11) NOT NULL,
  `nama_role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_role`
--

INSERT INTO `system_role` (`id_system_role`, `nama_role`) VALUES
(1, 'SYSTEM ADMINISTRATOR'),
(22, 'INSTRUKTUR'),
(23, 'PANITIA'),
(24, 'PESERTA');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id_user_role` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL,
  `id_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id_user_role`, `id_system_role`, `id_login`) VALUES
(230, 1, 36),
(576, 1, 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badan_usaha`
--
ALTER TABLE `badan_usaha`
  ADD PRIMARY KEY (`id_badan_usaha`);

--
-- Indexes for table `data_instruktur`
--
ALTER TABLE `data_instruktur`
  ADD PRIMARY KEY (`id_data_instruktur`);

--
-- Indexes for table `data_jadwal`
--
ALTER TABLE `data_jadwal`
  ADD PRIMARY KEY (`id_data_jadwal`);

--
-- Indexes for table `data_materi`
--
ALTER TABLE `data_materi`
  ADD PRIMARY KEY (`id_data_materi`);

--
-- Indexes for table `data_panitia`
--
ALTER TABLE `data_panitia`
  ADD PRIMARY KEY (`id_data_panitia`);

--
-- Indexes for table `data_penilaian`
--
ALTER TABLE `data_penilaian`
  ADD PRIMARY KEY (`id_data_penilaian`);

--
-- Indexes for table `data_peserta`
--
ALTER TABLE `data_peserta`
  ADD PRIMARY KEY (`id_data_peserta`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  ADD PRIMARY KEY (`id_menu_role`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_system_role` (`id_system_role`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `system_role`
--
ALTER TABLE `system_role`
  ADD PRIMARY KEY (`id_system_role`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_user_role`),
  ADD KEY `id_system_role` (`id_system_role`),
  ADD KEY `id_login` (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badan_usaha`
--
ALTER TABLE `badan_usaha`
  MODIFY `id_badan_usaha` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_instruktur`
--
ALTER TABLE `data_instruktur`
  MODIFY `id_data_instruktur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_jadwal`
--
ALTER TABLE `data_jadwal`
  MODIFY `id_data_jadwal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_materi`
--
ALTER TABLE `data_materi`
  MODIFY `id_data_materi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_panitia`
--
ALTER TABLE `data_panitia`
  MODIFY `id_data_panitia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_penilaian`
--
ALTER TABLE `data_penilaian`
  MODIFY `id_data_penilaian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_peserta`
--
ALTER TABLE `data_peserta`
  MODIFY `id_data_peserta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  MODIFY `id_menu_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1064;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_role`
--
ALTER TABLE `system_role`
  MODIFY `id_system_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_user_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
