-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2020 pada 09.14
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

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
-- Struktur dari tabel `badan_usaha`
--

CREATE TABLE `badan_usaha` (
  `id_badan_usaha` int(11) NOT NULL,
  `badan_usaha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `badan_usaha`
--

INSERT INTO `badan_usaha` (`id_badan_usaha`, `badan_usaha`) VALUES
(1, 'Data Pesawat AU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `nama_tabel` varchar(50) NOT NULL,
  `id_tabel` int(11) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lambung`
--

CREATE TABLE `lambung` (
  `id_lambung` int(11) NOT NULL,
  `fixediving` int(11) NOT NULL,
  `id_pesawat` int(11) NOT NULL,
  `id_login` int(11) NOT NULL,
  `no_lambung` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `kedudukan` int(11) NOT NULL,
  `sn_pesud` varchar(255) NOT NULL,
  `posisi` varchar(255) NOT NULL,
  `jt_pesud` double NOT NULL,
  `jp` double NOT NULL,
  `jt_total` double NOT NULL,
  `jt_jatah` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `harla_yad` date NOT NULL,
  `harla_lalu` date NOT NULL,
  `permasalahan` varchar(255) NOT NULL,
  `tanggal_temuan` date NOT NULL,
  `aksi` varchar(255) NOT NULL,
  `hasil` varchar(255) NOT NULL,
  `blade` date NOT NULL,
  `slu` date NOT NULL,
  `warranty` varchar(255) NOT NULL,
  `crew` varchar(255) NOT NULL,
  `jenis_operasi` varchar(255) NOT NULL,
  `status_dua` int(11) NOT NULL,
  `keterangan_umum` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lambung`
--

INSERT INTO `lambung` (`id_lambung`, `fixediving`, `id_pesawat`, `id_login`, `no_lambung`, `tanggal`, `kedudukan`, `sn_pesud`, `posisi`, `jt_pesud`, `jp`, `jt_total`, `jt_jatah`, `status`, `harla_yad`, `harla_lalu`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `crew`, `jenis_operasi`, `status_dua`, `keterangan_umum`) VALUES
(12, 1, 3, 41, 'Ab75', '2020-06-18', 1, '', 'Ab', 10, 40, 60, 100, 1, '2020-06-19', '2020-06-25', 'Oke', '2020-06-18', 'Perbaiki', 'baik', '2020-06-18', '2020-06-18', '2', 'Abc', 'Ok', 1, 'Oke'),
(13, 0, 3, 39, '2323', '2020-06-18', 0, '', '', 3, 89, 11, 100, 0, '2020-06-18', '2020-06-18', '', '2020-06-18', 'tst', '', '2020-06-18', '2020-06-18', 'tst', 'tst', 'tst', 2, ''),
(14, 1, 3, 41, '2232', '2020-06-19', 0, '', 'kepala', 0, 1000, 0, 1000, 0, '2020-06-18', '2020-06-18', 'tidak ada', '2020-06-18', 'ada', 'baik', '2020-06-19', '2020-06-19', '1 tahun', 'co pilot', 'militer', 1, ''),
(17, 1, 5, 39, 'ab21', '2020-06-20', 1, '', 'kepala', 0, 1000, 0, 1000, 0, '2020-06-19', '2020-06-18', 'tidak ada', '2020-06-12', 'ada', 'baik', '2020-06-20', '2020-06-20', '1 tahun', 'pilot', 'militer', 0, ''),
(18, 1, 5, 39, 'ab31', '2020-06-20', 1, '', 'kepala', 2, 4998, 2, 5000, 0, '2020-06-20', '2020-06-20', 'ac mati', '2020-06-20', 'ada', 'baik', '2020-06-20', '2020-06-20', '1 tahun', 'co pilot', 'gak tau', 1, 'segera perbaiki ac'),
(19, 0, 3, 39, 'Ab76', '2020-06-20', 0, '', '', 0, 34, 0, 34, 0, '2020-06-19', '2020-06-26', '', '2020-06-20', 'ada', '', '2020-06-20', '2020-06-20', '1 tahun', 'pilot', 'gfdhh', 0, ''),
(20, 0, 4, 39, 'Ab75', '2020-06-20', 0, '', '', 0, 44, 0, 44, 0, '2020-06-20', '2020-06-20', '', '2020-06-20', 'ada', '', '2020-06-20', '2020-06-20', '1 tahun', 'co pilot', 'militer', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
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
-- Dumping data untuk tabel `log`
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
(40, 4, 'yii\\db\\Command::execute', 1592193600.1811, 'Daniel', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592193600.1809, \'Daniel\', \'Login\')'),
(41, 0, 'Login', 1592195227.5282, 'dicky', 'Login'),
(42, 4, 'yii\\db\\Command::execute', 1592195227.5283, 'dicky', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592195227.5282, \'dicky\', \'Login\')'),
(43, 0, 'Login', 1592195278.3171, 'Daniel', 'Login'),
(44, 4, 'yii\\db\\Command::execute', 1592195278.3172, 'Daniel', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592195278.3171, \'Daniel\', \'Login\')'),
(45, 4, 'yii\\db\\Command::execute', 1592195303.296, 'Daniel', 'DELETE FROM `login` WHERE `id_login`=37'),
(46, 4, 'yii\\db\\Command::execute', 1592195337.3066, 'Daniel', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'dicky\', \'81dc9bdb52d04dc20036dbd8313ed055\', \'Dicky Saputra\', \'avatar5.png\')'),
(47, 4, 'yii\\db\\Command::execute', 1592195344.9246, 'Daniel', 'DELETE FROM `user_role` WHERE `id_login`=\'38\''),
(48, 4, 'yii\\db\\Command::execute', 1592195344.9395, 'Daniel', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (22, 38)'),
(49, 4, 'yii\\db\\Command::execute', 1592195344.9409, 'Daniel', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (23, 38)'),
(50, 4, 'yii\\db\\Command::execute', 1592195344.9418, 'Daniel', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (24, 38)'),
(51, 4, 'yii\\db\\Command::execute', 1592195344.9426, 'Daniel', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 38)'),
(52, 4, 'yii\\db\\Command::execute', 1592195469.0164, 'Daniel', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Pesawat\', \'pesawat\', 0, \'fa-fighter-jet\', 0, 20)'),
(53, 4, 'yii\\db\\Command::execute', 1592195479.2976, 'Daniel', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'126\''),
(54, 4, 'yii\\db\\Command::execute', 1592195479.3151, 'Daniel', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (22, 126)'),
(55, 4, 'yii\\db\\Command::execute', 1592195479.3194, 'Daniel', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 126)'),
(56, 4, 'yii\\db\\Command::execute', 1592195479.3231, 'Daniel', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (24, 126)'),
(57, 4, 'yii\\db\\Command::execute', 1592195479.3286, 'Daniel', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 126)'),
(58, 4, 'yii\\db\\Command::execute', 1592195501.9336, 'Daniel', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=20, `icon`=\'fighter-jet\', `status`=0 WHERE `id_menu`=126'),
(59, 4, 'yii\\db\\Command::execute', 1592195514.244, 'Daniel', 'DELETE FROM `system_role` WHERE `id_system_role`=24'),
(60, 4, 'yii\\db\\Command::execute', 1592195520.3947, 'Daniel', 'DELETE FROM `system_role` WHERE `id_system_role`=22'),
(61, 4, 'yii\\db\\Command::execute', 1592195530.851, 'Daniel', 'UPDATE `system_role` SET `nama_role`=\'ADMIN\' WHERE `id_system_role`=23'),
(62, 4, 'yii\\db\\Command::execute', 1592195981.8727, 'Daniel', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Data Pesawat\', `id_parent`=0, `no_urut`=20, `status`=0 WHERE `id_menu`=126'),
(63, 0, 'Login', 1592199736.2857, 'Daniel', 'Login'),
(64, 4, 'yii\\db\\Command::execute', 1592199736.2859, 'Daniel', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592199736.2857, \'Daniel\', \'Login\')'),
(65, 0, 'Login', 1592199769.7823, 'Daniel', 'Login'),
(66, 4, 'yii\\db\\Command::execute', 1592199769.7826, 'Daniel', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592199769.7823, \'Daniel\', \'Login\')'),
(67, 4, 'yii\\db\\Command::execute', 1592199797.8524, 'Daniel', 'DELETE FROM `login` WHERE `id_login`=38'),
(68, 4, 'yii\\db\\Command::execute', 1592199806.7113, 'Daniel', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'dicky\', \'81dc9bdb52d04dc20036dbd8313ed055\', \'Dicky Saputra\', \'avatar5.png\')'),
(69, 4, 'yii\\db\\Command::execute', 1592199812.6486, 'Daniel', 'DELETE FROM `user_role` WHERE `id_login`=\'39\''),
(70, 4, 'yii\\db\\Command::execute', 1592199812.669, 'Daniel', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (23, 39)'),
(71, 4, 'yii\\db\\Command::execute', 1592199812.6715, 'Daniel', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 39)'),
(72, 0, 'Login', 1592199825.4215, 'Dicky Saputra', 'Login'),
(73, 4, 'yii\\db\\Command::execute', 1592199825.4218, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592199825.4215, \'Dicky Saputra\', \'Login\')'),
(74, 4, 'yii\\db\\Command::execute', 1592201799.6656, 'Dicky Saputra', 'INSERT INTO `pesawat` (`nama_pesawat`, `model_pesawat`, `tipe_pesawat`) VALUES (\'Garuda\', \'gggg\', \'aaa\')'),
(75, 4, 'yii\\db\\Command::execute', 1592201920.2066, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=2, `status`=0 WHERE `id_menu`=126'),
(76, 4, 'yii\\db\\Command::execute', 1592201926.5605, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'126\''),
(77, 4, 'yii\\db\\Command::execute', 1592201926.5812, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 126)'),
(78, 4, 'yii\\db\\Command::execute', 1592201926.5846, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 126)'),
(79, 4, 'yii\\db\\Command::execute', 1592203719.4983, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `no_lambung`, `tahun_produksi_lambung`, `jam_terbang_lambung`, `tanggal_cctp_lambung`, `status_lambung`, `cycle_lambung`) VALUES (1, \'222\', 2121, 22, \'2002-11-21\', \'kjkjkjk\', \'jklklkl\')'),
(80, 4, 'yii\\db\\Command::execute', 1592205557.4595, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `no_lambung`, `tahun_produksi_lambung`, `jam_terbang_lambung`, `tanggal_cctp_lambung`, `status_lambung`, `cycle_lambung`) VALUES (2, \'223\', 2121, 22, \'2002-11-21\', \'kjkjkjk\', \'jklklkl\')'),
(81, 4, 'yii\\db\\Command::execute', 1592205671.4689, 'Dicky Saputra', 'INSERT INTO `pesawat` (`nama_pesawat`, `model_pesawat`, `tipe_pesawat`) VALUES (\'Lion Air\', \'gggg\', \'aaa\')'),
(82, 4, 'yii\\db\\Command::execute', 1592207965.3237, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `no_lambung`, `tahun_produksi_lambung`, `jam_terbang_lambung`, `tanggal_cctp_lambung`, `status_lambung`, `cycle_lambung`) VALUES (2, \'224\', 2020, 23, \'2020-11-21\', \'kjkjkjk\', \'jklklkl\')'),
(83, 4, 'yii\\db\\Command::execute', 1592208049.0873, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `no_lambung`, `tahun_produksi_lambung`, `jam_terbang_lambung`, `tanggal_cctp_lambung`, `status_lambung`, `cycle_lambung`) VALUES (1, \'2232\', 2020, 23, \'2020-11-21\', \'kjkjkjk\', \'jklklkl\')'),
(84, 4, 'yii\\db\\Command::execute', 1592208086.0615, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=1, `no_lambung`=\'2233\', `tahun_produksi_lambung`=2020, `jam_terbang_lambung`=23 WHERE `id_lambung`=4'),
(85, 4, 'yii\\db\\Command::execute', 1592208173.2122, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'coba\', \'#\', 115, \'fighter-jet\', 0, 3)'),
(86, 4, 'yii\\db\\Command::execute', 1592208177.1243, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'127\''),
(87, 4, 'yii\\db\\Command::execute', 1592208177.1381, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 127)'),
(88, 4, 'yii\\db\\Command::execute', 1592208198.6222, 'Dicky Saputra', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=127'),
(89, 4, 'yii\\db\\Command::execute', 1592208747.1523, 'Dicky Saputra', 'DELETE FROM `lambung` WHERE `id_lambung`=4'),
(90, 4, 'yii\\db\\Command::execute', 1592209147.1058, 'Dicky Saputra', 'DELETE FROM `lambung` WHERE `id_lambung`=1'),
(91, 4, 'yii\\db\\Command::execute', 1592209422.3345, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `no_lambung`, `tahun_produksi_lambung`, `jam_terbang_lambung`, `tanggal_cctp_lambung`, `status_lambung`, `cycle_lambung`) VALUES (1, \'2232\', 2020, 22, \'2002-11-21\', \'kjkjkjk\', \'jklklkl\')'),
(92, 4, 'yii\\db\\Command::execute', 1592209427.5747, 'Dicky Saputra', 'DELETE FROM `lambung` WHERE `id_lambung`=5'),
(93, 4, 'yii\\db\\Command::execute', 1592213080.3211, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=2, `tahun_produksi_lambung`=2020, `jam_terbang_lambung`=23, `tanggal_cctp_lambung`=\'2020-11-01\' WHERE `id_lambung`=3'),
(94, 4, 'yii\\db\\Command::execute', 1592213098.1909, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=2, `tahun_produksi_lambung`=2020, `jam_terbang_lambung`=23, `tanggal_cctp_lambung`=\'2020-08-02\' WHERE `id_lambung`=3'),
(95, 0, 'Login', 1592270474.9072, 'Dicky Saputra', 'Login'),
(96, 4, 'yii\\db\\Command::execute', 1592270474.9074, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592270474.9072, \'Dicky Saputra\', \'Login\')'),
(97, 4, 'yii\\db\\Command::execute', 1592271411.9019, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'admin\', \'21232f297a57a5a743894a0e4a801fc3\', \'admin\', \'avatar5.png\')'),
(98, 4, 'yii\\db\\Command::execute', 1592271417.1827, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'40\''),
(99, 4, 'yii\\db\\Command::execute', 1592271417.2001, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (23, 40)'),
(100, 0, 'Login', 1592271428.8396, 'admin', 'Login'),
(101, 4, 'yii\\db\\Command::execute', 1592271428.8398, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592271428.8396, \'admin\', \'Login\')'),
(102, 0, 'Login', 1592271994.1807, 'Dicky Saputra', 'Login'),
(103, 4, 'yii\\db\\Command::execute', 1592271994.1808, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592271994.1807, \'Dicky Saputra\', \'Login\')'),
(104, 4, 'yii\\db\\Command::execute', 1592275537.6052, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=2, `jt_pesud`=0.89, `jam_putar`=0.99, `jt_total`=0.87, `status`=\'S\', `harla_yad`=9, `harla_lalu`=7, `permasalahan`=\'hggjgjh\', `aksi_yg_dilakukan`=\'kjhkjhjkh\', `sisa_jt`=0.2, `jt_harla`=0.1, `warranty`=\'hgjhkj\', `selesai_warranty`=\'kjhjkhkj\', `crew`=\'kjhkjh\', `operasi`=\'gfdhh\' WHERE `id_lambung`=3'),
(105, 4, 'yii\\db\\Command::execute', 1592276261.4828, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=2, `tanggal`=\'2020-06-02\', `jt_pesud`=0, `jam_putar`=0, `jt_total`=0, `status`=\'S\', `harla_yad`=0, `harla_lalu`=0, `permasalahan`=\'hggjgjh\', `aksi_yg_dilakukan`=\'kjhkjhjkh\', `sisa_jt`=0, `jt_harla`=0, `blade`=\'2020-06-14\', `warranty`=\'hgjhkj\', `selesai_warranty`=\'kjhjkhkj\', `crew`=\'kjhkjh\', `operasi`=\'gfdhh\' WHERE `id_lambung`=2'),
(106, 4, 'yii\\db\\Command::execute', 1592276885.5528, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=2, `jt_pesud`=0, `jam_putar`=0, `jt_total`=0, `harla_yad`=0, `harla_lalu`=0, `sisa_jt`=0, `jt_harla`=0 WHERE `id_lambung`=2'),
(107, 4, 'yii\\db\\Command::execute', 1592280505.5343, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Pesawat\', `id_parent`=0, `no_urut`=2, `status`=0 WHERE `id_menu`=126'),
(108, 4, 'yii\\db\\Command::execute', 1592281392.4228, 'Dicky Saputra', 'DELETE FROM `lambung` WHERE `id_lambung`=2'),
(109, 4, 'yii\\db\\Command::execute', 1592281625.554, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `no_lambung`, `tanggal`, `jt_pesud`, `jam_putar`, `jt_total`, `status`, `harla_yad`, `harla_lalu`, `permasalahan`, `aksi_yg_dilakukan`, `sisa_jt`, `jt_harla`, `blade`, `warranty`, `selesai_warranty`, `crew`, `operasi`) VALUES (1, \'2232\', \'2020-06-01\', 0.89, 0.99, 0.87, \'S\', 9, 7, \'hggjgjh\', \'kjhkjhjkh\', 0.2, 0.1, \'2020-06-15\', \'hgjhkj\', \'kjhjkhkj\', \'kjhkjh\', \'gfdhh\')'),
(110, 4, 'yii\\db\\Command::execute', 1592281750.6325, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `no_lambung`, `tanggal`, `jt_pesud`, `jam_putar`, `jt_total`, `status`, `harla_yad`, `harla_lalu`, `permasalahan`, `aksi_yg_dilakukan`, `sisa_jt`, `jt_harla`, `blade`, `warranty`, `selesai_warranty`, `crew`, `operasi`) VALUES (1, \'2232\', \'2020-06-02\', 0.89, 0.99, 0.87, \'S\', 9, 7, \'hggjgjh\', \'kjhkjhjkh\', 0.2, 0.1, \'2020-06-15\', \'hgjhkj\', \'kjhjkhkj\', \'kjhkjh\', \'gfdhh\')'),
(111, 4, 'yii\\db\\Command::execute', 1592281768.3023, 'Dicky Saputra', 'DELETE FROM `lambung` WHERE `id_lambung`=5'),
(112, 4, 'yii\\db\\Command::execute', 1592282029.3642, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `no_lambung`, `tanggal`, `jt_pesud`, `jam_putar`, `jt_total`, `status`, `harla_yad`, `harla_lalu`, `permasalahan`, `aksi_yg_dilakukan`, `sisa_jt`, `jt_harla`, `blade`, `warranty`, `selesai_warranty`, `crew`, `operasi`) VALUES (2, \'224\', \'2020-06-01\', 0.89, 0.99, 0.87, \'S\', 9, 7, \'hggjgjh\', \'kjhkjhjkh\', 0.2, 0.1, \'2020-06-01\', \'hgjhkj\', \'kjhjkhkj\', \'kjhkjh\', \'gfdhh\')'),
(113, 4, 'yii\\db\\Command::execute', 1592282140.6266, 'Dicky Saputra', 'DELETE FROM `lambung` WHERE `id_lambung`=6'),
(114, 4, 'yii\\db\\Command::execute', 1592288462.3986, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=2, `jt_pesud`=0.89, `jam_putar`=0.99, `jt_total`=0.87, `harla_yad`=9, `harla_lalu`=7, `sisa_jt`=0.2, `jt_harla`=0.1, `blade`=\'2020-06-02\' WHERE `id_lambung`=3'),
(115, 0, 'Login', 1592359931.1372, 'Dicky Saputra', 'Login'),
(116, 4, 'yii\\db\\Command::execute', 1592359931.1374, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592359931.1372, \'Dicky Saputra\', \'Login\')'),
(117, 0, 'Login', 1592361082.7021, 'Dicky Saputra', 'Login'),
(118, 4, 'yii\\db\\Command::execute', 1592361082.7023, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592361082.7021, \'Dicky Saputra\', \'Login\')'),
(119, 0, 'Login', 1592362328.9456, 'Dicky Saputra', 'Login'),
(120, 4, 'yii\\db\\Command::execute', 1592362328.9458, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592362328.9456, \'Dicky Saputra\', \'Login\')'),
(121, 4, 'yii\\db\\Command::execute', 1592364739.747, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=1, `jt_pesud`=600, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=4'),
(122, 4, 'yii\\db\\Command::execute', 1592364957.8901, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=1, `jt_pesud`=600, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=4'),
(123, 4, 'yii\\db\\Command::execute', 1592364987.5672, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=1, `jt_pesud`=600, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=4'),
(124, 4, 'yii\\db\\Command::execute', 1592364999.6131, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=1, `jt_pesud`=600, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7, `blade`=\'2020-06-02\' WHERE `id_lambung`=4'),
(125, 4, 'yii\\db\\Command::execute', 1592365239.4978, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=1, `jt_pesud`=600, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7, `slu`=\'-0001-11-30\' WHERE `id_lambung`=4'),
(126, 4, 'yii\\db\\Command::execute', 1592365336.3008, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=1, `jt_pesud`=600, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=4'),
(127, 4, 'yii\\db\\Command::execute', 1592365382.3501, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=1, `jt_pesud`=600, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=4'),
(128, 4, 'yii\\db\\Command::execute', 1592365413.9038, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=1, `jt_pesud`=600, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7, `slu`=\'2020-06-20\' WHERE `id_lambung`=4'),
(129, 4, 'yii\\db\\Command::execute', 1592365440.9148, 'Dicky Saputra', 'UPDATE `lambung` SET `id_pesawat`=1, `jt_pesud`=600, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7, `slu`=\'2020-06-17\' WHERE `id_lambung`=4'),
(130, 4, 'yii\\db\\Command::execute', 1592366028.3728, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `tanggal`=\'2020-06-03\', `kedudukan`=0, `jt_pesud`=600, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=4'),
(131, 0, 'Login', 1592366279.8597, 'admin', 'Login'),
(132, 4, 'yii\\db\\Command::execute', 1592366279.8599, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592366279.8597, \'admin\', \'Login\')'),
(133, 4, 'yii\\db\\Command::execute', 1592366472.3552, 'admin', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `kedudukan`=0, `jt_pesud`=601, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=4'),
(134, 4, 'yii\\db\\Command::execute', 1592366493.2791, 'admin', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `kedudukan`=0, `jt_pesud`=609, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=4'),
(135, 4, 'yii\\db\\Command::execute', 1592366619.5352, 'admin', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `kedudukan`=0, `jt_pesud`=700, `jp`=300, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=4'),
(136, 0, 'Login', 1592367875.0777, 'admin', 'Login'),
(137, 4, 'yii\\db\\Command::execute', 1592367875.0778, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592367875.0777, \'admin\', \'Login\')'),
(138, 0, 'Login', 1592368330.6254, 'admin', 'Login'),
(139, 4, 'yii\\db\\Command::execute', 1592368330.6256, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592368330.6254, \'admin\', \'Login\')'),
(140, 0, 'Login', 1592369486.8492, 'Dicky Saputra', 'Login'),
(141, 4, 'yii\\db\\Command::execute', 1592369486.8493, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592369486.8492, \'Dicky Saputra\', \'Login\')'),
(142, 0, 'Login', 1592372880.6545, 'admin', 'Login'),
(143, 4, 'yii\\db\\Command::execute', 1592372880.6546, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592372880.6545, \'admin\', \'Login\')'),
(144, 0, 'Login', 1592373000.2812, 'Dicky Saputra', 'Login'),
(145, 4, 'yii\\db\\Command::execute', 1592373000.2815, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592373000.2812, \'Dicky Saputra\', \'Login\')'),
(146, 4, 'yii\\db\\Command::execute', 1592373627.4293, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=1 WHERE `id_lambung`=4'),
(147, 0, 'Login', 1592374327.905, 'Dicky Saputra', 'Login'),
(148, 4, 'yii\\db\\Command::execute', 1592374327.9052, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592374327.905, \'Dicky Saputra\', \'Login\')'),
(149, 0, 'Login', 1592374553.048, 'Dicky Saputra', 'Login'),
(150, 4, 'yii\\db\\Command::execute', 1592374553.0483, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592374553.048, \'Dicky Saputra\', \'Login\')'),
(151, 4, 'yii\\db\\Command::execute', 1592374591.1215, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=3'),
(152, 4, 'yii\\db\\Command::execute', 1592374903.661, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=2, `kedudukan`=0, `jt_pesud`=600, `jp`=1400, `jt_total`=2000, `status`=0, `harla_yad`=9, `harla_lalu`=7, `status_dua`=0 WHERE `id_lambung`=3'),
(153, 4, 'yii\\db\\Command::execute', 1592375113.6973, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=2, `kedudukan`=0, `jt_pesud`=600, `jp`=1400, `jt_total`=2000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=3'),
(154, 4, 'yii\\db\\Command::execute', 1592375161.7923, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=2, `kedudukan`=0, `jt_pesud`=600, `jp`=1400, `jt_total`=2000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=3'),
(155, 4, 'yii\\db\\Command::execute', 1592375471.9934, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=2, `id_login`=39, `kedudukan`=0, `jt_pesud`=600, `jp`=1400, `jt_total`=2000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=3'),
(156, 0, 'Login', 1592376178.2416, 'Dicky Saputra', 'Login'),
(157, 4, 'yii\\db\\Command::execute', 1592376178.2418, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592376178.2416, \'Dicky Saputra\', \'Login\')'),
(158, 0, 'Login', 1592377294.0995, 'admin', 'Login'),
(159, 4, 'yii\\db\\Command::execute', 1592377294.0996, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592377294.0995, \'admin\', \'Login\')'),
(160, 4, 'yii\\db\\Command::execute', 1592377606.3388, 'admin', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `no_lambung`, `fixediving`, `tanggal`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`) VALUES (2, NULL, \'123\', 0, \'2020-06-17\', 1, \'kepala\', \'gak tau\', \'pilot\', 0, 601, 1000, 7, 9, \'aa\', \'2020-06-17\', \'kjhkjhjkh\', \'oke\', \'2020-06-16\', \'2020-06-16\', \'hgjhkj\', \'\')'),
(161, 4, 'yii\\db\\Command::execute', 1592377606.5354, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592377606.3388, \'admin\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `no_lambung`, `fixediving`, `tanggal`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`) VALUES (2, NULL, \\\'123\\\', 0, \\\'2020-06-17\\\', 1, \\\'kepala\\\', \\\'gak tau\\\', \\\'pilot\\\', 0, 601, 1000, 7, 9, \\\'aa\\\', \\\'2020-06-17\\\', \\\'kjhkjhjkh\\\', \\\'oke\\\', \\\'2020-06-16\\\', \\\'2020-06-16\\\', \\\'hgjhkj\\\', \\\'\\\')\')'),
(162, 0, 'Login', 1592377683.5989, 'Dicky Saputra', 'Login'),
(163, 4, 'yii\\db\\Command::execute', 1592377683.599, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592377683.5989, \'Dicky Saputra\', \'Login\')'),
(164, 4, 'yii\\db\\Command::execute', 1592379877.1138, 'admin', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`) VALUES (1, 40, \'222\', 0, 0, \'kepala\', \'gak tau\', \'pilot\', 0, 601, 1000, 7, 9, \'tydaq ada\', \'2020-06-10\', \'ada\', \'oke\', \'2020-06-16\', NULL, \'hgjhkj\', \'\')'),
(165, 4, 'yii\\db\\Command::execute', 1592379877.1553, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592379877.1138, \'admin\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`) VALUES (1, 40, \\\'222\\\', 0, 0, \\\'kepala\\\', \\\'gak tau\\\', \\\'pilot\\\', 0, 601, 1000, 7, 9, \\\'tydaq ada\\\', \\\'2020-06-10\\\', \\\'ada\\\', \\\'oke\\\', \\\'2020-06-16\\\', NULL, \\\'hgjhkj\\\', \\\'\\\')\')'),
(166, 4, 'yii\\db\\Command::execute', 1592379932.6041, 'admin', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`) VALUES (1, 40, \'222\', 0, 0, \'kepala\', \'gak tau\', \'pilot\', 0, 601, 1000, 7, 9, \'tydaq ada\', \'2020-06-10\', \'ada\', \'oke\', \'2020-06-16\', \'2020-06-10\', \'hgjhkj\', \'\')'),
(167, 4, 'yii\\db\\Command::execute', 1592380252.0069, 'admin', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `no_lambung`, `fixediving`, `tanggal`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`) VALUES (1, 40, \'223\', 0, \'2020-06-17\', 0, \'kepala\', \'gfdhh\', \'pilot\', 0, 609, 1000, 7, 9, \'gak ada\', \'2020-06-18\', \'ada\', \'oke\', \'2020-06-18\', \'2020-06-18\', \'hgjhkj\', \'\')'),
(168, 4, 'yii\\db\\Command::execute', 1592380356.1543, 'admin', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `no_lambung`, `fixediving`, `tanggal`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`) VALUES (1, 40, \'2233\', 0, \'2020-06-17\', 0, \'kepala\', \'gfdhh\', \'kjhkjh\', 0, 700, 1000, 7, 9, \'ss\', \'2020-06-17\', \'ada\', \'oke\', \'2020-06-17\', \'2020-06-17\', \'hgjhkj\', \'\')'),
(169, 4, 'yii\\db\\Command::execute', 1592380687.056, 'admin', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `no_lambung`, `fixediving`, `tanggal`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`) VALUES (1, 40, \'123\', 1, \'2020-06-17\', 1, \'kepala\', \'gfdhh\', \'pilot\', 0, 600, 1000, 7, 9, \'ss\', \'2020-06-17\', \'ada\', \'oke\', \'2020-06-17\', \'2020-06-17\', \'hgjhkj\', \'\')'),
(170, 4, 'yii\\db\\Command::execute', 1592380956.8929, 'admin', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `no_lambung`, `fixediving`, `tanggal`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`) VALUES (2, 40, \'222\', 1, \'2020-06-17\', 1, \'kepala\', \'gak tau\', \'pilot\', 0, 600, 1000, 7, 9, \'hh\', \'2020-06-17\', \'ada\', \'oke\', \'2020-06-17\', \'2020-06-17\', \'hgjhkj\', \'\')'),
(171, 4, 'yii\\db\\Command::execute', 1592381302.9312, 'admin', 'INSERT INTO `lambung` (`id_pesawat`, `tanggal`, `id_login`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`) VALUES (1, \'2020-06-17\', 40, \'2222\', 0, 1, \'kepala\', \'gak tau\', \'pilot\', 0, 601, 1000, 7, 9, \'aa\', \'2020-06-17\', \'ada\', \'oke\', \'2020-06-17\', \'2020-06-17\', \'hgjhkj\', \'\')'),
(172, 4, 'yii\\db\\Command::execute', 1592382143.9547, 'admin', 'INSERT INTO `lambung` (`id_pesawat`, `tanggal`, `id_login`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `jp`) VALUES (1, \'2020-06-17\', 40, \'1234\', 1, 0, \'kepala\', \'gak tau\', \'pilot\', 0, 600, 1000, 7, 9, \'44\', \'2020-06-17\', \'ada\', \'oke\', \'2020-06-17\', \'2020-06-17\', \'hgjhkj\', \'\', 400)'),
(173, 4, 'yii\\db\\Command::execute', 1592382608.4178, 'admin', 'UPDATE `lambung` SET `fixediving`=0, `id_pesawat`=1, `id_login`=40, `tanggal`=\'2020-06-18\', `kedudukan`=0, `jt_pesud`=601, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=5'),
(174, 4, 'yii\\db\\Command::execute', 1592382653.5239, 'admin', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `id_login`=40, `no_lambung`=\'221\', `kedudukan`=0, `jt_pesud`=601, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7, `tanggal_temuan`=\'2020-06-17\', `hasil`=\'okee\', `blade`=\'2020-06-17\', `slu`=\'2020-06-17\', `warranty`=\'hgjhkj000\' WHERE `id_lambung`=5'),
(175, 4, 'yii\\db\\Command::execute', 1592382690.5875, 'admin', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `id_login`=40, `kedudukan`=0, `jt_pesud`=601, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=5'),
(176, 4, 'yii\\db\\Command::execute', 1592382815.4619, 'admin', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `id_login`=40, `kedudukan`=0, `jt_pesud`=609, `jp`=391, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=5'),
(177, 0, 'Login', 1592382850.9581, 'Dicky Saputra', 'Login'),
(178, 4, 'yii\\db\\Command::execute', 1592382850.9582, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592382850.9581, \'Dicky Saputra\', \'Login\')'),
(179, 4, 'yii\\db\\Command::execute', 1592383079.9764, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `id_login`=39, `kedudukan`=0, `jt_pesud`=600, `jp`=400, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=11'),
(180, 4, 'yii\\db\\Command::execute', 1592383137.8514, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=0, `id_pesawat`=1, `id_login`=39, `kedudukan`=1, `jt_pesud`=601, `jp`=399, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=10'),
(181, 0, 'Login', 1592383821.6737, 'Dicky Saputra', 'Login'),
(182, 4, 'yii\\db\\Command::execute', 1592383821.6739, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592383821.6737, \'Dicky Saputra\', \'Login\')'),
(183, 4, 'yii\\db\\Command::execute', 1592383830.8472, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=5'),
(184, 4, 'yii\\db\\Command::execute', 1592383830.8509, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=6'),
(185, 4, 'yii\\db\\Command::execute', 1592383830.8532, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=7'),
(186, 4, 'yii\\db\\Command::execute', 1592383830.8556, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=8'),
(187, 4, 'yii\\db\\Command::execute', 1592383830.859, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=10'),
(188, 4, 'yii\\db\\Command::execute', 1592383830.8613, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=11'),
(189, 0, 'Login', 1592384313.8875, 'admin', 'Login'),
(190, 4, 'yii\\db\\Command::execute', 1592384313.8876, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592384313.8875, \'admin\', \'Login\')'),
(191, 4, 'yii\\db\\Command::execute', 1592384327.4968, 'admin', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `id_login`=40, `kedudukan`=0, `jt_pesud`=600, `jp`=400, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7 WHERE `id_lambung`=11'),
(192, 4, 'yii\\db\\Command::execute', 1592384536.604, 'admin', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `id_login`=40, `kedudukan`=0, `jt_pesud`=600, `jp`=400, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7, `warranty`=\'hgjhkj000\', `status_dua`=0 WHERE `id_lambung`=11'),
(193, 0, 'Login', 1592384753.2869, 'Dicky Saputra', 'Login'),
(194, 4, 'yii\\db\\Command::execute', 1592384753.287, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592384753.2869, \'Dicky Saputra\', \'Login\')'),
(195, 4, 'yii\\db\\Command::execute', 1592385858.744, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=8'),
(196, 4, 'yii\\db\\Command::execute', 1592385858.7499, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=10'),
(197, 4, 'yii\\db\\Command::execute', 1592385858.7525, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=11'),
(198, 4, 'yii\\db\\Command::execute', 1592385873.1099, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=1, `id_login`=39, `kedudukan`=1, `jt_pesud`=600, `jp`=400, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7, `status_dua`=0 WHERE `id_lambung`=8'),
(199, 4, 'yii\\db\\Command::execute', 1592385881.4743, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=0, `id_pesawat`=1, `id_login`=39, `kedudukan`=1, `jt_pesud`=601, `jp`=399, `jt_total`=1000, `status`=0, `harla_yad`=9, `harla_lalu`=7, `status_dua`=0 WHERE `id_lambung`=10'),
(200, 0, 'Login', 1592386796.3592, 'Dicky Saputra', 'Login'),
(201, 4, 'yii\\db\\Command::execute', 1592386796.3594, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592386796.3592, \'Dicky Saputra\', \'Login\')'),
(202, 4, 'yii\\db\\Command::execute', 1592386807.1705, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=10'),
(203, 4, 'yii\\db\\Command::execute', 1592386966.2888, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=1 WHERE `id_lambung`=8'),
(204, 4, 'yii\\db\\Command::execute', 1592387368.8852, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=4'),
(205, 4, 'yii\\db\\Command::execute', 1592387368.8885, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=8'),
(206, 4, 'yii\\db\\Command::execute', 1592445034.6594, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'operator\', \'4b583376b2767b923c3e1da60d10de59\', \'Operator\', \'avatar5.png\')'),
(207, 4, 'yii\\db\\Command::execute', 1592445040.0716, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(208, 4, 'yii\\db\\Command::execute', 1592445040.0843, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (23, 41)'),
(209, 4, 'yii\\db\\Command::execute', 1592445040.0868, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 41)'),
(210, 0, 'Login', 1592445093.7679, 'admin', 'Login'),
(211, 4, 'yii\\db\\Command::execute', 1592445093.7681, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592445093.7679, \'admin\', \'Login\')'),
(212, 4, 'yii\\db\\Command::execute', 1592445136.7936, 'Dicky Saputra', 'UPDATE `login` SET `password`=\'a2ac1e2a67f66b89e4b181d542c8fcca\' WHERE `id_login`=41'),
(213, 4, 'yii\\db\\Command::execute', 1592445154.5672, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(214, 4, 'yii\\db\\Command::execute', 1592445154.5798, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (23, 41)'),
(215, 4, 'yii\\db\\Command::execute', 1592445164.7159, 'Dicky Saputra', 'UPDATE `login` SET `password`=\'c3284d0f94606de1fd2af172aba15bf3\' WHERE `id_login`=40'),
(216, 4, 'yii\\db\\Command::execute', 1592445167.129, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'40\''),
(217, 4, 'yii\\db\\Command::execute', 1592445167.144, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (23, 40)'),
(218, 4, 'yii\\db\\Command::execute', 1592445167.1453, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 40)'),
(219, 4, 'yii\\db\\Command::execute', 1592445334.1696, 'Dicky Saputra', 'UPDATE `login` SET `password`=\'21232f297a57a5a743894a0e4a801fc3\' WHERE `id_login`=40'),
(220, 4, 'yii\\db\\Command::execute', 1592445336.8107, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'40\''),
(221, 4, 'yii\\db\\Command::execute', 1592445336.8256, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (23, 40)'),
(222, 4, 'yii\\db\\Command::execute', 1592445336.8267, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 40)'),
(223, 0, 'Login', 1592445341.6609, 'admin', 'Login'),
(224, 4, 'yii\\db\\Command::execute', 1592445341.6611, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592445341.6609, \'admin\', \'Login\')'),
(225, 4, 'yii\\db\\Command::execute', 1592445381.5888, 'admin', 'INSERT INTO `badan_usaha` (`badan_usaha`) VALUES (\'Data Pesawat AU\')'),
(226, 4, 'yii\\db\\Command::execute', 1592445450.9334, 'Dicky Saputra', 'UPDATE `login` SET `password`=\'4b583376b2767b923c3e1da60d10de59\' WHERE `id_login`=41'),
(227, 4, 'yii\\db\\Command::execute', 1592445453.9512, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(228, 4, 'yii\\db\\Command::execute', 1592445453.9659, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (23, 41)'),
(229, 0, 'Login', 1592445468.4918, 'Operator', 'Login'),
(230, 4, 'yii\\db\\Command::execute', 1592445468.492, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592445468.4918, \'Operator\', \'Login\')'),
(231, 4, 'yii\\db\\Command::execute', 1592445646.7934, 'Operator', 'INSERT INTO `pesawat` (`nama_pesawat`, `model_pesawat`, `tipe_pesawat`) VALUES (\'NOMAD\', \'Pesawat Militer\', \'Pengangkut\')'),
(232, 4, 'yii\\db\\Command::execute', 1592446526.7653, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `tanggal`, `id_login`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `jp`) VALUES (3, \'2020-06-18\', NULL, \'AB 172\', 0, 0, \'BANDARA JUANDA\', \'MILITER\', \'PILOT HENDI COPILOT TEGUH\', 0, 0, 10000, 4, 5, \' SAYAP RETAK, HARUS DI CEK\', \'2020-07-01\', \'PERBAIKI SEKARANG\', \'BELUM ADA\', \'2020-07-01\', \'2020-07-01\', \'1 TAHUN\', \'SEGERA PERBAIKI PESAWAT\', 10000)'),
(233, 4, 'yii\\db\\Command::execute', 1592446526.9691, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592446526.7653, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `tanggal`, `id_login`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `jp`) VALUES (3, \\\'2020-06-18\\\', NULL, \\\'AB 172\\\', 0, 0, \\\'BANDARA JUANDA\\\', \\\'MILITER\\\', \\\'PILOT HENDI COPILOT TEGUH\\\', 0, 0, 10000, 4, 5, \\\' SAYAP RETAK, HARUS DI CEK\\\', \\\'2020-07-01\\\', \\\'PERBAIKI SEKARANG\\\', \\\'BELUM ADA\\\', \\\'2020-07-01\\\', \\\'2020-07-01\\\', \\\'1 TAHUN\\\', \\\'SEGERA PERBAIKI PESAWAT\\\', 10000)\')'),
(234, 0, 'Login', 1592446686.5476, 'Operator', 'Login'),
(235, 4, 'yii\\db\\Command::execute', 1592446686.5477, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592446686.5476, \'Operator\', \'Login\')'),
(236, 0, 'Login', 1592446809.8633, 'Operator', 'Login'),
(237, 4, 'yii\\db\\Command::execute', 1592446809.8635, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592446809.8633, \'Operator\', \'Login\')'),
(238, 4, 'yii\\db\\Command::execute', 1592446931.9959, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `status`, `jt_pesud`, `jt_total`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `jp`) VALUES (3, 0, \'2020-06-18\', \'Ab75\', 0, 0, \'Ab\', \'Ok\', \'Abc\', 0, 10, 20, 1, 3, \'Oke\', \'2020-06-18\', \'Perbaiki\', \'Oke\', \'2020-06-18\', \'2020-06-18\', \'2\', \'Oke\', 10)'),
(239, 0, 'Login', 1592447004.0693, 'Operator', 'Login'),
(240, 4, 'yii\\db\\Command::execute', 1592447004.0695, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592447004.0693, \'Operator\', \'Login\')'),
(241, 0, 'Login', 1592447128.1059, 'admin', 'Login'),
(242, 4, 'yii\\db\\Command::execute', 1592447128.1061, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592447128.1059, \'admin\', \'Login\')'),
(243, 0, 'Login', 1592447147.2589, 'admin', 'Login'),
(244, 4, 'yii\\db\\Command::execute', 1592447147.2591, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592447147.2589, \'admin\', \'Login\')'),
(245, 4, 'yii\\db\\Command::execute', 1592451148.7878, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `jp`) VALUES (3, 39, \'2020-06-18\', 0, 0, 0, \'2323\', 0, 0, \'\', \'tst\', \'tst\', \'2020-06-18\', NULL, \'\', NULL, \'tst\', \'\', \'2020-06-18\', \'2020-06-18\', \'tst\', \'\', 0, 0)'),
(246, 4, 'yii\\db\\Command::execute', 1592451149.0041, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592451148.7878, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `jp`) VALUES (3, 39, \\\'2020-06-18\\\', 0, 0, 0, \\\'2323\\\', 0, 0, \\\'\\\', \\\'tst\\\', \\\'tst\\\', \\\'2020-06-18\\\', NULL, \\\'\\\', NULL, \\\'tst\\\', \\\'\\\', \\\'2020-06-18\\\', \\\'2020-06-18\\\', \\\'tst\\\', \\\'\\\', 0, 0)\')'),
(247, 4, 'yii\\db\\Command::execute', 1592451196.0807, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `jp`) VALUES (3, 39, \'2020-06-18\', 0, 0, 0, \'2323\', 0, 0, \'\', \'tst\', \'tst\', \'2020-06-18\', NULL, \'\', NULL, \'tst\', \'\', \'2020-06-18\', \'2020-06-18\', \'tst\', \'\', 0, 0)'),
(248, 4, 'yii\\db\\Command::execute', 1592451196.2369, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592451196.0807, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `jp`) VALUES (3, 39, \\\'2020-06-18\\\', 0, 0, 0, \\\'2323\\\', 0, 0, \\\'\\\', \\\'tst\\\', \\\'tst\\\', \\\'2020-06-18\\\', NULL, \\\'\\\', NULL, \\\'tst\\\', \\\'\\\', \\\'2020-06-18\\\', \\\'2020-06-18\\\', \\\'tst\\\', \\\'\\\', 0, 0)\')'),
(249, 4, 'yii\\db\\Command::execute', 1592451256.7958, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `jp`) VALUES (3, 39, \'2020-06-18\', 0, 0, 0, \'2323\', 0, 0, \'\', \'tst\', \'tst\', \'2020-06-18\', NULL, \'\', NULL, \'tst\', \'\', \'2020-06-18\', \'2020-06-18\', \'tst\', \'\', 0, 0)'),
(250, 4, 'yii\\db\\Command::execute', 1592451256.9274, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592451256.7958, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `jp`) VALUES (3, 39, \\\'2020-06-18\\\', 0, 0, 0, \\\'2323\\\', 0, 0, \\\'\\\', \\\'tst\\\', \\\'tst\\\', \\\'2020-06-18\\\', NULL, \\\'\\\', NULL, \\\'tst\\\', \\\'\\\', \\\'2020-06-18\\\', \\\'2020-06-18\\\', \\\'tst\\\', \\\'\\\', 0, 0)\')');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(251, 4, 'yii\\db\\Command::execute', 1592451273.3864, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `jp`) VALUES (3, 39, \'2020-06-18\', 0, 0, 0, \'2323\', 0, 0, \'\', \'tst\', \'tst\', \'2020-06-18\', \'2020-06-18\', \'\', \'2020-06-18\', \'tst\', \'\', \'2020-06-18\', \'2020-06-18\', \'tst\', \'\', 0, 0)'),
(252, 4, 'yii\\db\\Command::execute', 1592451380.3263, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=0, `id_pesawat`=3, `id_login`=39, `kedudukan`=0, `jt_pesud`=2, `jp`=100, `jt_total`=0, `jt_jatah`=100, `status`=0 WHERE `id_lambung`=13'),
(253, 4, 'yii\\db\\Command::execute', 1592451493.9753, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=0, `id_pesawat`=3, `id_login`=39, `kedudukan`=0, `jt_pesud`=2, `jp`=98, `jt_total`=2, `jt_jatah`=100, `status`=0 WHERE `id_lambung`=13'),
(254, 4, 'yii\\db\\Command::execute', 1592451547.0953, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=0, `id_pesawat`=3, `id_login`=39, `kedudukan`=0, `jt_pesud`=3, `jp`=95, `jt_total`=5, `jt_jatah`=100, `status`=0 WHERE `id_lambung`=13'),
(255, 4, 'yii\\db\\Command::execute', 1592452262.2692, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=12'),
(256, 0, 'Login', 1592453127.3663, 'Dicky Saputra', 'Login'),
(257, 4, 'yii\\db\\Command::execute', 1592453127.3665, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592453127.3663, \'Dicky Saputra\', \'Login\')'),
(258, 4, 'yii\\db\\Command::execute', 1592453141.4927, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=3, `id_login`=39, `kedudukan`=0, `jt_pesud`=3, `jp`=92, `jt_total`=8, `jt_jatah`=100, `status`=0 WHERE `id_lambung`=13'),
(259, 4, 'yii\\db\\Command::execute', 1592453335.8786, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=0, `id_pesawat`=3, `id_login`=39, `kedudukan`=1, `jt_pesud`=10, `jp`=-30, `jt_total`=30, `jt_jatah`=0, `status`=0, `harla_yad`=\'2020-06-19\', `harla_lalu`=\'2020-06-25\', `status_dua`=0 WHERE `id_lambung`=12'),
(260, 0, 'Login', 1592453473.4009, 'admin', 'Login'),
(261, 4, 'yii\\db\\Command::execute', 1592453473.401, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592453473.4009, \'admin\', \'Login\')'),
(262, 4, 'yii\\db\\Command::execute', 1592453527.4253, 'admin', 'UPDATE `lambung` SET `status_dua`=1 WHERE `id_lambung`=12'),
(263, 4, 'yii\\db\\Command::execute', 1592453527.429, 'admin', 'UPDATE `lambung` SET `status_dua`=1 WHERE `id_lambung`=13'),
(264, 4, 'yii\\db\\Command::execute', 1592453540.2914, 'admin', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=12'),
(265, 0, 'Login', 1592454552.1372, 'Operator', 'Login'),
(266, 4, 'yii\\db\\Command::execute', 1592454552.1373, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592454552.1372, \'Operator\', \'Login\')'),
(267, 0, 'Login', 1592454570.6698, 'admin', 'Login'),
(268, 4, 'yii\\db\\Command::execute', 1592454570.6699, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592454570.6698, \'admin\', \'Login\')'),
(269, 4, 'yii\\db\\Command::execute', 1592454653.4603, 'admin', 'UPDATE `lambung` SET `fixediving`=0, `id_pesawat`=3, `id_login`=40, `kedudukan`=1, `jt_pesud`=10, `jp`=-40, `jt_total`=40, `jt_jatah`=0, `status`=1, `status_dua`=0 WHERE `id_lambung`=12'),
(270, 0, 'Login', 1592457264.1559, 'admin', 'Login'),
(271, 4, 'yii\\db\\Command::execute', 1592457264.1561, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592457264.1559, \'admin\', \'Login\')'),
(272, 0, 'Login', 1592464377.3571, 'Dicky Saputra', 'Login'),
(273, 4, 'yii\\db\\Command::execute', 1592464377.3574, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592464377.3571, \'Dicky Saputra\', \'Login\')'),
(274, 4, 'yii\\db\\Command::execute', 1592464501.2494, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=3, `id_login`=39, `kedudukan`=1, `jt_pesud`=10, `jp`=-50, `jt_total`=50, `jt_jatah`=0, `status`=1, `hasil`=\'baik\' WHERE `id_lambung`=12'),
(275, 4, 'yii\\db\\Command::execute', 1592464540.1671, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=0, `id_pesawat`=3, `id_login`=39, `kedudukan`=0, `jt_pesud`=3, `jp`=89, `jt_total`=11, `jt_jatah`=100, `status`=0, `status_dua`=0 WHERE `id_lambung`=13'),
(276, 4, 'yii\\db\\Command::execute', 1592464741.7715, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=2 WHERE `id_lambung`=13'),
(277, 4, 'yii\\db\\Command::execute', 1592464747.6756, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=1 WHERE `id_lambung`=12'),
(278, 0, 'Login', 1592465140.8963, 'Operator', 'Login'),
(279, 4, 'yii\\db\\Command::execute', 1592465140.8966, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592465140.8963, \'Operator\', \'Login\')'),
(280, 4, 'yii\\db\\Command::execute', 1592465366.3901, 'Operator', 'UPDATE `lambung` SET `fixediving`=1, `id_pesawat`=3, `id_login`=41, `kedudukan`=1, `jt_pesud`=10, `jp`=40, `jt_total`=60, `jt_jatah`=100, `status`=1, `status_dua`=0 WHERE `id_lambung`=12'),
(281, 0, 'Login', 1592465791.3931, 'Dicky Saputra', 'Login'),
(282, 4, 'yii\\db\\Command::execute', 1592465791.3934, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592465791.3931, \'Dicky Saputra\', \'Login\')'),
(283, 4, 'yii\\db\\Command::execute', 1592465813.9694, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'coba\', \'c3ec0f7b054e729c5a716c8125839829\', \'Coba admin\', \'avatar5.png\')'),
(284, 4, 'yii\\db\\Command::execute', 1592465820.6084, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'42\''),
(285, 4, 'yii\\db\\Command::execute', 1592465820.6287, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 42)'),
(286, 0, 'Login', 1592465831.5872, 'Coba admin', 'Login'),
(287, 4, 'yii\\db\\Command::execute', 1592465831.5873, 'Coba admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592465831.5872, \'Coba admin\', \'Login\')'),
(288, 0, 'Login', 1592465918.5708, 'Operator', 'Login'),
(289, 4, 'yii\\db\\Command::execute', 1592465918.571, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592465918.5708, \'Operator\', \'Login\')'),
(290, 0, 'Login', 1592467366.5314, 'Operator', 'Login'),
(291, 4, 'yii\\db\\Command::execute', 1592467366.5316, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592467366.5314, \'Operator\', \'Login\')'),
(292, 0, 'Login', 1592467446.3395, 'Dicky Saputra', 'Login'),
(293, 4, 'yii\\db\\Command::execute', 1592467446.3398, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592467446.3395, \'Dicky Saputra\', \'Login\')'),
(294, 0, 'Login', 1592471777.3187, 'Operator', 'Login'),
(295, 4, 'yii\\db\\Command::execute', 1592471777.3189, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592471777.3187, \'Operator\', \'Login\')'),
(296, 0, 'Login', 1592480332.5989, 'Dicky Saputra', 'Login'),
(297, 4, 'yii\\db\\Command::execute', 1592480332.5991, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592480332.5989, \'Dicky Saputra\', \'Login\')'),
(298, 4, 'yii\\db\\Command::execute', 1592480388.6607, 'Dicky Saputra', 'INSERT INTO `system_role` (`nama_role`) VALUES (\'OPERATOR\')'),
(299, 4, 'yii\\db\\Command::execute', 1592480449.3781, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(300, 4, 'yii\\db\\Command::execute', 1592480449.3975, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(301, 4, 'yii\\db\\Command::execute', 1592480482.6494, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'40\''),
(302, 4, 'yii\\db\\Command::execute', 1592480482.6661, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (23, 40)'),
(303, 0, 'Login', 1592480665.5033, 'admin', 'Login'),
(304, 4, 'yii\\db\\Command::execute', 1592480665.5035, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592480665.5033, \'admin\', \'Login\')'),
(305, 0, 'Login', 1592530781.1329, 'Dicky Saputra', 'Login'),
(306, 4, 'yii\\db\\Command::execute', 1592530781.1332, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592530781.1329, \'Dicky Saputra\', \'Login\')'),
(307, 4, 'yii\\db\\Command::execute', 1592530996.828, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(308, 4, 'yii\\db\\Command::execute', 1592531040.0348, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'2\''),
(309, 4, 'yii\\db\\Command::execute', 1592531040.0538, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 2)'),
(310, 4, 'yii\\db\\Command::execute', 1592531040.0576, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 2)'),
(311, 0, 'Login', 1592531050.8391, 'admin', 'Login'),
(312, 4, 'yii\\db\\Command::execute', 1592531050.8393, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592531050.8391, \'admin\', \'Login\')'),
(313, 0, 'Login', 1592531063.5637, 'Dicky Saputra', 'Login'),
(314, 4, 'yii\\db\\Command::execute', 1592531063.5639, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592531063.5637, \'Dicky Saputra\', \'Login\')'),
(315, 4, 'yii\\db\\Command::execute', 1592531072.4614, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'1\''),
(316, 4, 'yii\\db\\Command::execute', 1592531072.4822, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 1)'),
(317, 4, 'yii\\db\\Command::execute', 1592531072.4863, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 1)'),
(318, 0, 'Login', 1592531211.3708, 'admin', 'Login'),
(319, 4, 'yii\\db\\Command::execute', 1592531211.3712, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592531211.3708, \'admin\', \'Login\')'),
(320, 0, 'Login', 1592531743.0905, 'Operator', 'Login'),
(321, 4, 'yii\\db\\Command::execute', 1592531743.0907, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592531743.0905, \'Operator\', \'Login\')'),
(322, 0, 'Login', 1592531798.5401, 'Dicky Saputra', 'Login'),
(323, 4, 'yii\\db\\Command::execute', 1592531798.5403, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592531798.5401, \'Dicky Saputra\', \'Login\')'),
(324, 4, 'yii\\db\\Command::execute', 1592531810.8897, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(325, 4, 'yii\\db\\Command::execute', 1592531825.2373, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=2, `status`=0 WHERE `id_menu`=126'),
(326, 4, 'yii\\db\\Command::execute', 1592531831.0517, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'126\''),
(327, 4, 'yii\\db\\Command::execute', 1592531831.0741, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 126)'),
(328, 4, 'yii\\db\\Command::execute', 1592531831.0791, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 126)'),
(329, 4, 'yii\\db\\Command::execute', 1592531831.0824, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 126)'),
(330, 0, 'Login', 1592531890.1403, 'admin', 'Login'),
(331, 4, 'yii\\db\\Command::execute', 1592531890.1405, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592531890.1403, \'admin\', \'Login\')'),
(332, 4, 'yii\\db\\Command::execute', 1592533619.623, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=1 WHERE `id_pesawat`=3'),
(333, 4, 'yii\\db\\Command::execute', 1592534123.1305, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=2 WHERE `id_pesawat`=3'),
(334, 4, 'yii\\db\\Command::execute', 1592534123.1636, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592534123.1305, \'Dicky Saputra\', \'UPDATE `pesawat` SET `status_pesawat`=2 WHERE `id_pesawat`=3\')'),
(335, 4, 'yii\\db\\Command::execute', 1592534199.7075, 'Dicky Saputra', 'INSERT INTO `pesawat` (`nama_pesawat`, `model_pesawat`, `tipe_pesawat`) VALUES (\'Garuda\', \'komersil\', \'non militer\')'),
(336, 4, 'yii\\db\\Command::execute', 1592534821.9244, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=1 WHERE `id_pesawat`=4'),
(337, 0, 'Login', 1592535025.2835, 'Operator', 'Login'),
(338, 4, 'yii\\db\\Command::execute', 1592535025.2836, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592535025.2835, \'Operator\', \'Login\')'),
(339, 4, 'yii\\db\\Command::execute', 1592535440.3426, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'115\''),
(340, 4, 'yii\\db\\Command::execute', 1592535440.3794, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 115)'),
(341, 4, 'yii\\db\\Command::execute', 1592535440.3913, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 115)'),
(342, 4, 'yii\\db\\Command::execute', 1592535445.8845, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'115\''),
(343, 4, 'yii\\db\\Command::execute', 1592535445.9145, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 115)'),
(344, 4, 'yii\\db\\Command::execute', 1592535445.918, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 115)'),
(345, 0, 'Login', 1592535469.3825, 'Operator', 'Login'),
(346, 4, 'yii\\db\\Command::execute', 1592535469.3827, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592535469.3825, \'Operator\', \'Login\')'),
(347, 0, 'Login', 1592535479.1398, 'admin', 'Login'),
(348, 4, 'yii\\db\\Command::execute', 1592535479.14, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592535479.1398, \'admin\', \'Login\')'),
(349, 4, 'yii\\db\\Command::execute', 1592535612.1951, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'124\''),
(350, 4, 'yii\\db\\Command::execute', 1592535612.2184, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 124)'),
(351, 4, 'yii\\db\\Command::execute', 1592535612.2226, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 124)'),
(352, 4, 'yii\\db\\Command::execute', 1592536170.2193, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=115, `no_urut`=2, `status`=0 WHERE `id_menu`=125'),
(353, 4, 'yii\\db\\Command::execute', 1592536177.9829, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'125\''),
(354, 4, 'yii\\db\\Command::execute', 1592536178.0063, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 125)'),
(355, 4, 'yii\\db\\Command::execute', 1592536178.0121, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 125)'),
(356, 4, 'yii\\db\\Command::execute', 1592537061.9221, 'admin', 'DELETE FROM `login` WHERE `id_login`=42'),
(357, 0, 'Login', 1592538555.7931, 'Operator', 'Login'),
(358, 4, 'yii\\db\\Command::execute', 1592538555.7933, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592538555.7931, \'Operator\', \'Login\')'),
(359, 4, 'yii\\db\\Command::execute', 1592547399.4118, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `jp`) VALUES (3, 41, \'2020-06-19\', 0, 1000, 0, \'2232\', 1, 0, \'kepala\', \'militer\', \'co pilot\', \'2020-06-18\', \'2020-06-18\', \'tidak ada\', \'2020-06-18\', \'ada\', \'baik\', \'2020-06-19\', \'2020-06-19\', \'1 tahun\', \'\', 0, 1000)'),
(360, 0, 'Login', 1592547933.0891, 'admin', 'Login'),
(361, 4, 'yii\\db\\Command::execute', 1592547933.0893, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592547933.0891, \'admin\', \'Login\')'),
(362, 0, 'Login', 1592551596.8193, 'admin', 'Login'),
(363, 4, 'yii\\db\\Command::execute', 1592551596.8195, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592551596.8193, \'admin\', \'Login\')'),
(364, 4, 'yii\\db\\Command::execute', 1592552419.991, 'admin', 'UPDATE `pesawat` SET `status_pesawat`=2 WHERE `id_pesawat`=3'),
(365, 0, 'Login', 1592552452.4356, 'Operator', 'Login'),
(366, 4, 'yii\\db\\Command::execute', 1592552452.4359, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592552452.4356, \'Operator\', \'Login\')'),
(367, 4, 'yii\\db\\Command::execute', 1592552603.3689, 'Operator', 'UPDATE `pesawat` SET `tipe_pesawat`=\'Pengangkut barang\', `status_pesawat`=0 WHERE `id_pesawat`=3'),
(368, 4, 'yii\\db\\Command::execute', 1592553166.2457, 'admin', 'INSERT INTO `pesawat` (`nama_pesawat`, `model_pesawat`, `tipe_pesawat`) VALUES (\'Pesawat GSS\', \'GSS\', \'GSS\')'),
(369, 4, 'yii\\db\\Command::execute', 1592553521.4013, 'admin', 'UPDATE `pesawat` SET `status_pesawat`=2 WHERE `id_pesawat`=5'),
(370, 4, 'yii\\db\\Command::execute', 1592553565.9409, 'admin', 'UPDATE `pesawat` SET `status_pesawat`=1 WHERE `id_pesawat`=3'),
(371, 0, 'Login', 1592557746.0568, 'Daniel', 'Login'),
(372, 4, 'yii\\db\\Command::execute', 1592557746.057, 'Daniel', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592557746.0568, \'Daniel\', \'Login\')'),
(373, 4, 'yii\\db\\Command::execute', 1592557759.4136, 'Daniel', 'UPDATE `login` SET `password`=\'3366d8b09da8922ab491457163b6fe78\' WHERE `id_login`=36'),
(374, 4, 'yii\\db\\Command::execute', 1592557954.9152, 'Daniel', 'UPDATE `login` SET `password`=\'68f53b5fec26b2624d209ac1ddaff2b4\' WHERE `id_login`=36'),
(375, 4, 'yii\\db\\Command::execute', 1592558090.0739, 'Daniel', 'UPDATE `login` SET `username`=\'daniele\', `password`=\'32339fa72d143fc0481a65ce9287c5bb\' WHERE `id_login`=36'),
(376, 0, 'Login', 1592558520.9456, 'Dicky Saputra', 'Login'),
(377, 4, 'yii\\db\\Command::execute', 1592558520.946, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592558520.9456, \'Dicky Saputra\', \'Login\')'),
(378, 0, 'Login', 1592617146.545, 'Dicky Saputra', 'Login'),
(379, 4, 'yii\\db\\Command::execute', 1592617146.5452, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592617146.545, \'Dicky Saputra\', \'Login\')'),
(380, 4, 'yii\\db\\Command::execute', 1592619875.9175, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=2 WHERE `id_pesawat`=4'),
(381, 4, 'yii\\db\\Command::execute', 1592619887.6508, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=2 WHERE `id_pesawat`=3'),
(382, 4, 'yii\\db\\Command::execute', 1592619968.8986, 'Dicky Saputra', 'UPDATE `pesawat` SET `nama_pesawat`=\'NOMAD 101\', `status_pesawat`=0 WHERE `id_pesawat`=3'),
(383, 4, 'yii\\db\\Command::execute', 1592619986.574, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=0 WHERE `id_pesawat`=4'),
(384, 4, 'yii\\db\\Command::execute', 1592619993.6483, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=2 WHERE `id_pesawat`=4'),
(385, 4, 'yii\\db\\Command::execute', 1592620003.5308, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=1 WHERE `id_pesawat`=3'),
(386, 4, 'yii\\db\\Command::execute', 1592620030.0728, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=0 WHERE `id_pesawat`=4'),
(387, 4, 'yii\\db\\Command::execute', 1592620036.286, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=1 WHERE `id_pesawat`=4'),
(388, 0, 'Login', 1592622017.9502, 'Operator', 'Login'),
(389, 4, 'yii\\db\\Command::execute', 1592622017.9504, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592622017.9502, \'Operator\', \'Login\')'),
(390, 0, 'Login', 1592622179.7902, 'Dicky Saputra', 'Login'),
(391, 4, 'yii\\db\\Command::execute', 1592622179.7904, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592622179.7902, \'Dicky Saputra\', \'Login\')'),
(392, 4, 'yii\\db\\Command::execute', 1592622230.9385, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'aa\', \'c4ca4238a0b923820dcc509a6f75849b\', \'Dicky Saputra\', \'avatar5.png\')'),
(393, 4, 'yii\\db\\Command::execute', 1592622722.9034, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'aa\', \'0cc175b9c0f1b6a831c399e269772661\', \'admin\', \'avatar5.png\')'),
(394, 4, 'yii\\db\\Command::execute', 1592622723.0119, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592622722.9034, \'Dicky Saputra\', \'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\\\'aa\\\', \\\'0cc175b9c0f1b6a831c399e269772661\\\', \\\'admin\\\', \\\'avatar5.png\\\')\')'),
(395, 4, 'yii\\db\\Command::execute', 1592622724.8549, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'aa\', \'0cc175b9c0f1b6a831c399e269772661\', \'admin\', \'avatar5.png\')'),
(396, 4, 'yii\\db\\Command::execute', 1592622724.8602, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592622724.8549, \'Dicky Saputra\', \'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\\\'aa\\\', \\\'0cc175b9c0f1b6a831c399e269772661\\\', \\\'admin\\\', \\\'avatar5.png\\\')\')'),
(397, 4, 'yii\\db\\Command::execute', 1592622725.9117, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'aa\', \'0cc175b9c0f1b6a831c399e269772661\', \'admin\', \'avatar5.png\')'),
(398, 4, 'yii\\db\\Command::execute', 1592622725.9176, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592622725.9117, \'Dicky Saputra\', \'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\\\'aa\\\', \\\'0cc175b9c0f1b6a831c399e269772661\\\', \\\'admin\\\', \\\'avatar5.png\\\')\')'),
(399, 4, 'yii\\db\\Command::execute', 1592622728.3438, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'aa\', \'0cc175b9c0f1b6a831c399e269772661\', \'admin\', \'avatar5.png\')'),
(400, 4, 'yii\\db\\Command::execute', 1592622728.3511, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592622728.3438, \'Dicky Saputra\', \'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\\\'aa\\\', \\\'0cc175b9c0f1b6a831c399e269772661\\\', \\\'admin\\\', \\\'avatar5.png\\\')\')'),
(401, 4, 'yii\\db\\Command::execute', 1592622729.7968, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'aa\', \'0cc175b9c0f1b6a831c399e269772661\', \'admin\', \'avatar5.png\')'),
(402, 4, 'yii\\db\\Command::execute', 1592622729.8027, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592622729.7968, \'Dicky Saputra\', \'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\\\'aa\\\', \\\'0cc175b9c0f1b6a831c399e269772661\\\', \\\'admin\\\', \\\'avatar5.png\\\')\')'),
(403, 4, 'yii\\db\\Command::execute', 1592623416.2616, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (3, 39, \'2020-06-20\', 0, 1000, 0, \'ab75\', 1, 0, \'\', \'gak tau\', \'pilot\', 1000, \'2020-06-18\', NULL, \'\', NULL, \'ada\', \'\', \'2020-06-01\', \'2020-06-16\', \'1 tahun\', \'\', 0)'),
(404, 4, 'yii\\db\\Command::execute', 1592623416.3789, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592623416.2616, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (3, 39, \\\'2020-06-20\\\', 0, 1000, 0, \\\'ab75\\\', 1, 0, \\\'\\\', \\\'gak tau\\\', \\\'pilot\\\', 1000, \\\'2020-06-18\\\', NULL, \\\'\\\', NULL, \\\'ada\\\', \\\'\\\', \\\'2020-06-01\\\', \\\'2020-06-16\\\', \\\'1 tahun\\\', \\\'\\\', 0)\')'),
(405, 4, 'yii\\db\\Command::execute', 1592623594.5606, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \'2020-06-20\', 0, 0, 0, \'ab75\', 0, 0, \'\', \'militer\', \'co pilot\', 0, \'2020-06-10\', \'2020-06-23\', \'\', NULL, \'ada\', \'\', \'2020-06-24\', \'2020-06-25\', \'1 tahun\', \'\', 0, 0)'),
(406, 4, 'yii\\db\\Command::execute', 1592623594.6069, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592623594.5606, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab75\\\', 0, 0, \\\'\\\', \\\'militer\\\', \\\'co pilot\\\', 0, \\\'2020-06-10\\\', \\\'2020-06-23\\\', \\\'\\\', NULL, \\\'ada\\\', \\\'\\\', \\\'2020-06-24\\\', \\\'2020-06-25\\\', \\\'1 tahun\\\', \\\'\\\', 0, 0)\')'),
(407, 4, 'yii\\db\\Command::execute', 1592623628.7012, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \'2020-06-20\', 0, 0, 0, \'ab75\', 0, 0, \'\', \'militer\', \'co pilot\', 0, \'2020-06-10\', \'2020-06-23\', \'\', \'2020-06-19\', \'ada\', \'\', \'2020-06-24\', \'2020-06-25\', \'1 tahun\', \'\', 0, 0)'),
(408, 4, 'yii\\db\\Command::execute', 1592623643.8294, 'Dicky Saputra', 'UPDATE `lambung` SET `fixediving`=0, `id_pesawat`=3, `id_login`=39, `no_lambung`=\'Ab75\', `kedudukan`=0, `jt_pesud`=0, `jp`=0, `jt_total`=0, `jt_jatah`=0, `status`=0 WHERE `id_lambung`=15'),
(409, 4, 'yii\\db\\Command::execute', 1592623682.4015, 'Dicky Saputra', 'DELETE FROM `lambung` WHERE `id_lambung`=15'),
(410, 4, 'yii\\db\\Command::execute', 1592623848.39, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \'2020-06-20\', 0, 0, 0, \'ab75\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(411, 4, 'yii\\db\\Command::execute', 1592623848.3989, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592623848.39, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab75\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(412, 4, 'yii\\db\\Command::execute', 1592623850.4667, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \'2020-06-20\', 0, 0, 0, \'ab75\', 1, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(413, 4, 'yii\\db\\Command::execute', 1592623850.4711, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592623850.4667, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab75\\\', 1, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(414, 4, 'yii\\db\\Command::execute', 1592623852.412, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \'2020-06-20\', 0, 0, 0, \'ab75\', 1, 1, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(415, 4, 'yii\\db\\Command::execute', 1592623852.4166, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592623852.412, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab75\\\', 1, 1, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(416, 4, 'yii\\db\\Command::execute', 1592623883.491, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \'2020-06-20\', 0, 0, 0, \'Ab75\', 1, 1, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(417, 4, 'yii\\db\\Command::execute', 1592623883.4967, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592623883.491, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'Ab75\\\', 1, 1, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(418, 4, 'yii\\db\\Command::execute', 1592623886.414, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \'2020-06-20\', 0, 0, 0, \'Ab75\', 1, 1, \'kepala\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(419, 4, 'yii\\db\\Command::execute', 1592623886.4175, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592623886.414, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'Ab75\\\', 1, 1, \\\'kepala\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(420, 4, 'yii\\db\\Command::execute', 1592625540.3612, 'Dicky Saputra', 'UPDATE `pesawat` SET `tipe_pesawat`=\'GSS 123\', `status_pesawat`=0 WHERE `id_pesawat`=5'),
(421, 4, 'yii\\db\\Command::execute', 1592625545.3557, 'Dicky Saputra', 'UPDATE `pesawat` SET `status_pesawat`=1 WHERE `id_pesawat`=5'),
(422, 4, 'yii\\db\\Command::execute', 1592625555.8231, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'ab75\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(423, 4, 'yii\\db\\Command::execute', 1592625555.8343, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625555.8231, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab75\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(424, 4, 'yii\\db\\Command::execute', 1592625557.7774, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'ab751\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(425, 4, 'yii\\db\\Command::execute', 1592625557.7813, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625557.7774, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab751\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(426, 4, 'yii\\db\\Command::execute', 1592625558.8976, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'ab751\', 1, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(427, 4, 'yii\\db\\Command::execute', 1592625558.9048, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625558.8976, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab751\\\', 1, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(428, 4, 'yii\\db\\Command::execute', 1592625561.7349, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'ab751\', 1, 1, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(429, 4, 'yii\\db\\Command::execute', 1592625561.7387, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625561.7349, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab751\\\', 1, 1, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(430, 4, 'yii\\db\\Command::execute', 1592625562.6384, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'ab751\', 1, 1, \'kepala\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(431, 4, 'yii\\db\\Command::execute', 1592625562.6422, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625562.6384, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(432, 4, 'yii\\db\\Command::execute', 1592625564.1885, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'ab751\', 1, 1, \'kepala\', \'militer\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(433, 4, 'yii\\db\\Command::execute', 1592625564.1918, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625564.1885, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(434, 4, 'yii\\db\\Command::execute', 1592625565.7804, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'ab751\', 1, 1, \'kepala\', \'militer\', \'pilot\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(435, 4, 'yii\\db\\Command::execute', 1592625565.7842, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625565.7804, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(436, 4, 'yii\\db\\Command::execute', 1592625573.5866, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 500, 0, \'ab751\', 1, 1, \'kepala\', \'militer\', \'pilot\', 500, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(437, 4, 'yii\\db\\Command::execute', 1592625573.5903, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625573.5866, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 500, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 500, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(438, 4, 'yii\\db\\Command::execute', 1592625576.7185, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 500, 0, \'ab751\', 1, 1, \'kepala\', \'militer\', \'pilot\', 500, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(439, 4, 'yii\\db\\Command::execute', 1592625576.722, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625576.7185, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 500, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 500, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(440, 4, 'yii\\db\\Command::execute', 1592625579.4149, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 500, 0, \'ab751\', 1, 1, \'kepala\', \'militer\', \'pilot\', 500, \'2020-06-20\', NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(441, 4, 'yii\\db\\Command::execute', 1592625579.4186, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625579.4149, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 500, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 500, \\\'2020-06-20\\\', NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(442, 4, 'yii\\db\\Command::execute', 1592625582.5264, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 500, 0, \'ab751\', 1, 1, \'kepala\', \'militer\', \'pilot\', 500, \'2020-06-20\', \'2020-06-20\', \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(443, 4, 'yii\\db\\Command::execute', 1592625582.5302, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625582.5264, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 500, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 500, \\\'2020-06-20\\\', \\\'2020-06-20\\\', \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(444, 4, 'yii\\db\\Command::execute', 1592625585.7708, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 500, 0, \'ab751\', 1, 1, \'kepala\', \'militer\', \'pilot\', 500, \'2020-06-20\', \'2020-06-20\', \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(445, 4, 'yii\\db\\Command::execute', 1592625585.7751, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625585.7708, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 500, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 500, \\\'2020-06-20\\\', \\\'2020-06-20\\\', \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(446, 4, 'yii\\db\\Command::execute', 1592625591.8531, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 500, 0, \'ab751\', 1, 1, \'kepala\', \'militer\', \'pilot\', 500, \'2020-06-20\', \'2020-06-20\', \'\', \'2020-06-26\', \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(447, 4, 'yii\\db\\Command::execute', 1592625591.8575, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625591.8531, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 500, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 500, \\\'2020-06-20\\\', \\\'2020-06-20\\\', \\\'\\\', \\\'2020-06-26\\\', \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(448, 4, 'yii\\db\\Command::execute', 1592625594.9291, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 500, 0, \'ab751\', 1, 1, \'kepala\', \'militer\', \'pilot\', 500, \'2020-06-20\', \'2020-06-20\', \'\', \'2020-06-26\', \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(449, 4, 'yii\\db\\Command::execute', 1592625594.9325, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625594.9291, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 500, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 500, \\\'2020-06-20\\\', \\\'2020-06-20\\\', \\\'\\\', \\\'2020-06-26\\\', \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(450, 4, 'yii\\db\\Command::execute', 1592625600.1357, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 500, 0, \'ab751\', 1, 1, \'kepala\', \'militer\', \'pilot\', 500, \'2020-06-20\', \'2020-06-20\', \'\', \'2020-06-26\', \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(451, 4, 'yii\\db\\Command::execute', 1592625600.1391, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625600.1357, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 500, 0, \\\'ab751\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 500, \\\'2020-06-20\\\', \\\'2020-06-20\\\', \\\'\\\', \\\'2020-06-26\\\', \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(452, 4, 'yii\\db\\Command::execute', 1592625607.5205, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(453, 4, 'yii\\db\\Command::execute', 1592625607.5236, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625607.5205, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(454, 4, 'yii\\db\\Command::execute', 1592625608.807, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(455, 4, 'yii\\db\\Command::execute', 1592625608.8104, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625608.807, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(456, 4, 'yii\\db\\Command::execute', 1592625610.0356, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(457, 4, 'yii\\db\\Command::execute', 1592625610.039, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625610.0356, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(458, 4, 'yii\\db\\Command::execute', 1592625610.5884, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(459, 4, 'yii\\db\\Command::execute', 1592625610.5918, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625610.5884, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(460, 4, 'yii\\db\\Command::execute', 1592625610.9257, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(461, 4, 'yii\\db\\Command::execute', 1592625610.9304, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625610.9257, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(462, 4, 'yii\\db\\Command::execute', 1592625611.2273, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(463, 4, 'yii\\db\\Command::execute', 1592625611.2309, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625611.2273, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(464, 4, 'yii\\db\\Command::execute', 1592625611.4838, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(465, 4, 'yii\\db\\Command::execute', 1592625611.4883, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625611.4838, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(466, 4, 'yii\\db\\Command::execute', 1592625611.7633, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(467, 4, 'yii\\db\\Command::execute', 1592625611.7682, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625611.7633, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(468, 4, 'yii\\db\\Command::execute', 1592625612.006, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(469, 4, 'yii\\db\\Command::execute', 1592625612.01, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625612.006, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(470, 4, 'yii\\db\\Command::execute', 1592625612.2923, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(471, 4, 'yii\\db\\Command::execute', 1592625612.2963, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625612.2923, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(472, 4, 'yii\\db\\Command::execute', 1592625612.5375, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(473, 4, 'yii\\db\\Command::execute', 1592625612.5409, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625612.5375, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(474, 4, 'yii\\db\\Command::execute', 1592625612.8389, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(475, 4, 'yii\\db\\Command::execute', 1592625612.8431, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625612.8389, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(476, 4, 'yii\\db\\Command::execute', 1592625613.1104, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(477, 4, 'yii\\db\\Command::execute', 1592625613.1142, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625613.1104, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(478, 4, 'yii\\db\\Command::execute', 1592625618.5784, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(479, 4, 'yii\\db\\Command::execute', 1592625618.5815, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625618.5784, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(480, 4, 'yii\\db\\Command::execute', 1592625619.605, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0, 0)'),
(481, 4, 'yii\\db\\Command::execute', 1592625619.6084, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625619.605, \'Dicky Saputra\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0, 0)\')'),
(482, 0, 'Login', 1592625739.3706, 'Operator', 'Login'),
(483, 4, 'yii\\db\\Command::execute', 1592625739.3707, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592625739.3706, \'Operator\', \'Login\')'),
(484, 4, 'yii\\db\\Command::execute', 1592625755.4594, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'ab21\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(485, 4, 'yii\\db\\Command::execute', 1592625755.4681, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625755.4594, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab21\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(486, 4, 'yii\\db\\Command::execute', 1592625756.4606, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'ab21\', 1, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(487, 4, 'yii\\db\\Command::execute', 1592625756.4642, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625756.4606, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab21\\\', 1, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(488, 4, 'yii\\db\\Command::execute', 1592625758.2805, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'ab21\', 1, 1, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(489, 4, 'yii\\db\\Command::execute', 1592625758.2843, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625758.2805, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab21\\\', 1, 1, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(490, 4, 'yii\\db\\Command::execute', 1592625762.2448, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'ab21\', 1, 1, \'kepala\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(491, 4, 'yii\\db\\Command::execute', 1592625762.2482, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625762.2448, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(492, 4, 'yii\\db\\Command::execute', 1592625765.98, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(493, 4, 'yii\\db\\Command::execute', 1592625765.9834, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625765.98, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(494, 4, 'yii\\db\\Command::execute', 1592625770.1991, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(495, 4, 'yii\\db\\Command::execute', 1592625770.2036, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625770.1991, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(496, 4, 'yii\\db\\Command::execute', 1592625774.1898, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 1000, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 1000, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(497, 4, 'yii\\db\\Command::execute', 1592625774.1935, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625774.1898, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 1000, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 1000, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(498, 4, 'yii\\db\\Command::execute', 1592625776.8911, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 1000, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 1000, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(499, 4, 'yii\\db\\Command::execute', 1592625776.8988, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625776.8911, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 1000, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 1000, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(500, 4, 'yii\\db\\Command::execute', 1592625786.0319, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 1000, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 1000, \'2020-06-19\', NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(501, 4, 'yii\\db\\Command::execute', 1592625786.036, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625786.0319, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 1000, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 1000, \\\'2020-06-19\\\', NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(502, 4, 'yii\\db\\Command::execute', 1592625790.3473, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 1000, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 1000, \'2020-06-19\', \'2020-06-17\', \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(503, 4, 'yii\\db\\Command::execute', 1592625790.3518, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625790.3473, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 1000, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 1000, \\\'2020-06-19\\\', \\\'2020-06-17\\\', \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(504, 4, 'yii\\db\\Command::execute', 1592625795.9436, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 1000, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 1000, \'2020-06-19\', \'2020-06-17\', \'tidak ada\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(505, 4, 'yii\\db\\Command::execute', 1592625795.9472, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625795.9436, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 1000, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 1000, \\\'2020-06-19\\\', \\\'2020-06-17\\\', \\\'tidak ada\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(506, 4, 'yii\\db\\Command::execute', 1592625803.6159, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 1000, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 1000, \'2020-06-19\', \'2020-06-17\', \'tidak ada\', \'2020-06-21\', \'ada\', \'\', NULL, NULL, \'\', \'\', 0)'),
(507, 4, 'yii\\db\\Command::execute', 1592625803.6195, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625803.6159, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 1000, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 1000, \\\'2020-06-19\\\', \\\'2020-06-17\\\', \\\'tidak ada\\\', \\\'2020-06-21\\\', \\\'ada\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(508, 4, 'yii\\db\\Command::execute', 1592625806.3842, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 1000, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 1000, \'2020-06-19\', \'2020-06-17\', \'tidak ada\', \'2020-06-21\', \'ada\', \'baik\', NULL, NULL, \'\', \'\', 0)'),
(509, 4, 'yii\\db\\Command::execute', 1592625806.3876, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625806.3842, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 1000, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 1000, \\\'2020-06-19\\\', \\\'2020-06-17\\\', \\\'tidak ada\\\', \\\'2020-06-21\\\', \\\'ada\\\', \\\'baik\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(510, 4, 'yii\\db\\Command::execute', 1592625809.2607, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 1000, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 1000, \'2020-06-19\', \'2020-06-17\', \'tidak ada\', \'2020-06-21\', \'ada\', \'baik\', \'2020-06-20\', NULL, \'\', \'\', 0)'),
(511, 4, 'yii\\db\\Command::execute', 1592625809.2652, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625809.2607, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 1000, 0, \\\'ab21\\\', 1, 1, \\\'kepala\\\', \\\'militer\\\', \\\'pilot\\\', 1000, \\\'2020-06-19\\\', \\\'2020-06-17\\\', \\\'tidak ada\\\', \\\'2020-06-21\\\', \\\'ada\\\', \\\'baik\\\', \\\'2020-06-20\\\', NULL, \\\'\\\', \\\'\\\', 0)\')'),
(512, 4, 'yii\\db\\Command::execute', 1592625810.9209, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 1000, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 1000, \'2020-06-19\', \'2020-06-17\', \'tidak ada\', \'2020-06-21\', \'ada\', \'baik\', \'2020-06-20\', \'2020-06-20\', \'\', \'\', 0)'),
(513, 4, 'yii\\db\\Command::execute', 1592625819.9757, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(514, 4, 'yii\\db\\Command::execute', 1592625819.9789, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625819.9757, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(515, 4, 'yii\\db\\Command::execute', 1592625821.5181, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(516, 4, 'yii\\db\\Command::execute', 1592625821.5215, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625821.5181, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(517, 4, 'yii\\db\\Command::execute', 1592625823.0034, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(518, 4, 'yii\\db\\Command::execute', 1592625823.0082, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625823.0034, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(519, 4, 'yii\\db\\Command::execute', 1592625823.3399, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(520, 4, 'yii\\db\\Command::execute', 1592625823.3434, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625823.3399, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(521, 4, 'yii\\db\\Command::execute', 1592625823.6797, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(522, 4, 'yii\\db\\Command::execute', 1592625823.6831, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625823.6797, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(523, 4, 'yii\\db\\Command::execute', 1592625823.9939, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(524, 4, 'yii\\db\\Command::execute', 1592625823.9981, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625823.9939, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(525, 4, 'yii\\db\\Command::execute', 1592625824.5387, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(526, 4, 'yii\\db\\Command::execute', 1592625824.5424, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625824.5387, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(527, 4, 'yii\\db\\Command::execute', 1592625824.8594, 'Operator', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \'2020-06-20\', 0, 0, 0, \'\', 0, 0, \'\', \'\', \'\', 0, NULL, NULL, \'\', NULL, \'\', \'\', NULL, NULL, \'\', \'\', 0)'),
(528, 4, 'yii\\db\\Command::execute', 1592625824.8629, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1592625824.8594, \'Operator\', \'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`) VALUES (4, 41, \\\'2020-06-20\\\', 0, 0, 0, \\\'\\\', 0, 0, \\\'\\\', \\\'\\\', \\\'\\\', 0, NULL, NULL, \\\'\\\', NULL, \\\'\\\', \\\'\\\', NULL, NULL, \\\'\\\', \\\'\\\', 0)\')'),
(529, 4, 'yii\\db\\Command::execute', 1592625912.5034, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 0, 1000, 0, \'ab21\', 1, 1, \'kepala\', \'militer\', \'pilot\', 1000, \'2020-06-18\', \'2020-06-19\', \'tidak ada\', \'2020-06-12\', \'ada\', \'baik\', \'2020-06-20\', \'2020-06-20\', \'1 tahun\', \'\', 0, 0)'),
(530, 4, 'yii\\db\\Command::execute', 1592625982.1043, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (5, 39, \'2020-06-20\', 2, 5000, 2, \'ab31\', 1, 1, \'kepala\', \'gak tau\', \'co pilot\', 4998, \'2020-06-20\', \'2020-06-20\', \'ac mati\', \'2020-06-20\', \'ada\', \'baik\', \'2020-06-20\', \'2020-06-20\', \'1 tahun\', \'segera perbaiki ac\', 0, 1)'),
(531, 4, 'yii\\db\\Command::execute', 1592626001.0955, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=1 WHERE `id_lambung`=12'),
(532, 4, 'yii\\db\\Command::execute', 1592626001.1017, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=1 WHERE `id_lambung`=14'),
(533, 4, 'yii\\db\\Command::execute', 1592626084.3918, 'Dicky Saputra', 'DELETE FROM `lambung` WHERE `id_lambung`=16'),
(534, 4, 'yii\\db\\Command::execute', 1592628208.5956, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'aaaaa\', \'827ccb0eea8a706c4c34a16891f84e7b\', \'a5\', \'avatar5.png\')'),
(535, 4, 'yii\\db\\Command::execute', 1592628282.5472, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'aaaa\', \'81dc9bdb52d04dc20036dbd8313ed055\', \'a4\', \'avatar5.png\')'),
(536, 0, 'Login', 1592637098.7392, 'Dicky Saputra', 'Login'),
(537, 4, 'yii\\db\\Command::execute', 1592637098.7393, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592637098.7392, \'Dicky Saputra\', \'Login\')'),
(538, 0, 'Login', 1592660073.5807, 'Dicky Saputra', 'Login'),
(539, 4, 'yii\\db\\Command::execute', 1592660073.581, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592660073.5807, \'Dicky Saputra\', \'Login\')'),
(540, 4, 'yii\\db\\Command::execute', 1592660333.327, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (3, 39, \'2020-06-20\', 0, 34, 0, \'Ab76\', 0, 0, \'\', \'gfdhh\', \'pilot\', 34, \'2020-06-26\', \'2020-06-19\', \'\', \'2020-06-20\', \'ada\', \'\', \'2020-06-20\', \'2020-06-20\', \'1 tahun\', \'\', 0, 0)'),
(541, 4, 'yii\\db\\Command::execute', 1592660390.0152, 'Dicky Saputra', 'INSERT INTO `lambung` (`id_pesawat`, `id_login`, `tanggal`, `jt_total`, `jt_jatah`, `jt_pesud`, `no_lambung`, `fixediving`, `kedudukan`, `posisi`, `jenis_operasi`, `crew`, `jp`, `harla_lalu`, `harla_yad`, `permasalahan`, `tanggal_temuan`, `aksi`, `hasil`, `blade`, `slu`, `warranty`, `keterangan_umum`, `status`, `status_dua`) VALUES (4, 39, \'2020-06-20\', 0, 44, 0, \'Ab75\', 0, 0, \'\', \'militer\', \'co pilot\', 44, \'2020-06-20\', \'2020-06-20\', \'\', \'2020-06-20\', \'ada\', \'\', \'2020-06-20\', \'2020-06-20\', \'1 tahun\', \'\', 0, 0)'),
(542, 4, 'yii\\db\\Command::execute', 1592660408.6193, 'Dicky Saputra', 'UPDATE `lambung` SET `status_dua`=1 WHERE `id_lambung`=20'),
(543, 4, 'yii\\db\\Command::execute', 1592660445.2272, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'a\', \'c4ca4238a0b923820dcc509a6f75849b\', \'1\', \'avatar5.png\')'),
(544, 0, 'Login', 1592660943.5784, 'Dicky Saputra', 'Login'),
(545, 4, 'yii\\db\\Command::execute', 1592660943.5786, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592660943.5784, \'Dicky Saputra\', \'Login\')'),
(546, 0, 'Login', 1592790096.9536, 'Dicky Saputra', 'Login'),
(547, 4, 'yii\\db\\Command::execute', 1592790096.9538, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592790096.9536, \'Dicky Saputra\', \'Login\')'),
(548, 0, 'Login', 1592790153.4143, 'Dicky Saputra', 'Login'),
(549, 4, 'yii\\db\\Command::execute', 1592790153.4145, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592790153.4143, \'Dicky Saputra\', \'Login\')'),
(550, 0, 'Login', 1592791315.3634, 'Dicky Saputra', 'Login'),
(551, 4, 'yii\\db\\Command::execute', 1592791315.3636, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592791315.3634, \'Dicky Saputra\', \'Login\')'),
(552, 4, 'yii\\db\\Command::execute', 1592791346.7982, 'Dicky Saputra', 'INSERT INTO `login` (`foto`, `username`, `password`, `nama`) VALUES (\'avatar5.png\', \'a1\', \'0cc175b9c0f1b6a831c399e269772661\', \'a\')'),
(553, 4, 'yii\\db\\Command::execute', 1592791352.4386, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'51\''),
(554, 4, 'yii\\db\\Command::execute', 1592791352.4545, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 51)'),
(555, 0, 'Login', 1592793424.6672, 'Dicky Saputra', 'Login'),
(556, 4, 'yii\\db\\Command::execute', 1592793424.6674, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592793424.6672, \'Dicky Saputra\', \'Login\')'),
(557, 0, 'Login', 1592808877.5232, 'Dicky Saputra', 'Login'),
(558, 4, 'yii\\db\\Command::execute', 1592808877.5236, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592808877.5232, \'Dicky Saputra\', \'Login\')'),
(559, 0, 'Login', 1592809559.4131, 'Dicky Saputra', 'Login'),
(560, 4, 'yii\\db\\Command::execute', 1592809559.4133, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592809559.4131, \'Dicky Saputra\', \'Login\')');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`, `nama`, `foto`) VALUES
(36, 'daniele', '32339fa72d143fc0481a65ce9287c5bb', 'Daniel', 'avatar5.png'),
(39, 'dicky', '81dc9bdb52d04dc20036dbd8313ed055', 'Dicky Saputra', 'avatar5.png'),
(40, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'avatar5.png'),
(41, 'operator', '4b583376b2767b923c3e1da60d10de59', 'Operator', 'avatar5.png'),
(42, 'aa', 'c4ca4238a0b923820dcc509a6f75849b', 'Dicky Saputra', 'avatar5.png'),
(48, 'aaaaa', '827ccb0eea8a706c4c34a16891f84e7b', 'a5', 'avatar5.png'),
(49, 'aaaa', '81dc9bdb52d04dc20036dbd8313ed055', 'a4', 'avatar5.png'),
(50, 'a', 'c4ca4238a0b923820dcc509a6f75849b', '1', 'avatar5.png'),
(51, 'a1', '0cc175b9c0f1b6a831c399e269772661', 'a', 'avatar5.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_navigasi`
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
-- Dumping data untuk tabel `menu_navigasi`
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
(125, 'Rekap Log', '/log/rekap-log', 115, 2, 'list-ul', 0),
(126, 'Pesawat', 'pesawat', 0, 2, 'fighter-jet', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_navigasi_role`
--

CREATE TABLE `menu_navigasi_role` (
  `id_menu_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu_navigasi_role`
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
(1063, 235, 1),
(1070, 127, 1),
(1071, 2, 23),
(1072, 2, 1),
(1073, 1, 23),
(1074, 1, 1),
(1075, 126, 23),
(1076, 126, 25),
(1077, 126, 1),
(1080, 115, 23),
(1081, 115, 1),
(1082, 124, 23),
(1083, 124, 1),
(1084, 125, 23),
(1085, 125, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesawat`
--

CREATE TABLE `pesawat` (
  `id_pesawat` int(11) NOT NULL,
  `nama_pesawat` varchar(200) NOT NULL,
  `model_pesawat` varchar(200) NOT NULL,
  `tipe_pesawat` varchar(200) NOT NULL,
  `status_pesawat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesawat`
--

INSERT INTO `pesawat` (`id_pesawat`, `nama_pesawat`, `model_pesawat`, `tipe_pesawat`, `status_pesawat`) VALUES
(3, 'NOMAD 101', 'Pesawat Militer', 'Pengangkut barang', 1),
(4, 'Garuda', 'komersil', 'non militer', 1),
(5, 'Pesawat GSS', 'GSS', 'GSS 123', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `nama`, `konten`) VALUES
(1, 'nama_perusahaan', '-'),
(2, 'email', '-'),
(3, 'telepon', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_role`
--

CREATE TABLE `system_role` (
  `id_system_role` int(11) NOT NULL,
  `nama_role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `system_role`
--

INSERT INTO `system_role` (`id_system_role`, `nama_role`) VALUES
(1, 'SYSTEM ADMINISTRATOR'),
(25, 'OPERATOR'),
(23, 'ADMIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id_user_role` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL,
  `id_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id_user_role`, `id_system_role`, `id_login`) VALUES
(230, 1, 36),
(576, 1, 80),
(577, 22, 38),
(578, 23, 38),
(579, 24, 38),
(580, 1, 38),
(581, 23, 39),
(582, 1, 39),
(595, 25, 51),
(594, 23, 40),
(593, 25, 41),
(592, 1, 42);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `badan_usaha`
--
ALTER TABLE `badan_usaha`
  ADD PRIMARY KEY (`id_badan_usaha`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indeks untuk tabel `lambung`
--
ALTER TABLE `lambung`
  ADD PRIMARY KEY (`id_lambung`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `status` (`status`);

--
-- Indeks untuk tabel `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  ADD PRIMARY KEY (`id_menu_role`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_system_role` (`id_system_role`);

--
-- Indeks untuk tabel `pesawat`
--
ALTER TABLE `pesawat`
  ADD PRIMARY KEY (`id_pesawat`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `system_role`
--
ALTER TABLE `system_role`
  ADD PRIMARY KEY (`id_system_role`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_user_role`),
  ADD KEY `id_system_role` (`id_system_role`),
  ADD KEY `id_login` (`id_login`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `badan_usaha`
--
ALTER TABLE `badan_usaha`
  MODIFY `id_badan_usaha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lambung`
--
ALTER TABLE `lambung`
  MODIFY `id_lambung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT untuk tabel `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  MODIFY `id_menu_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1086;

--
-- AUTO_INCREMENT untuk tabel `pesawat`
--
ALTER TABLE `pesawat`
  MODIFY `id_pesawat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `system_role`
--
ALTER TABLE `system_role`
  MODIFY `id_system_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_user_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=596;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
