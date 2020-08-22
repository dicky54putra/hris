-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2020 pada 06.39
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
-- Database: `hris`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `tanggal_absensi` date NOT NULL,
  `keterangan_absensi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES
(4, 1, '2020-06-29', 1),
(6, 2, '2020-06-29', 0),
(7, 1, '2020-06-30', 0),
(8, 2, '2020-06-30', 1),
(10, 3, '2020-06-30', 3),
(12, 1, '2020-07-03', 0),
(13, 2, '2020-07-03', 3),
(16, 3, '2020-07-03', 0),
(17, 5, '2020-07-03', 0),
(18, 6, '2020-07-04', 0),
(19, 1, '2020-07-04', 1);

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
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `id_content` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `status_content` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`id_content`, `judul`, `deskripsi`, `status_content`) VALUES
(1, 'Visi', 'Tydaq taw', 0),
(2, 'Misi', '1. Menjadi toko maju\r\n2. Semakin didepan\r\n3. tapi bukan Yamaha\r\n4. Chakkssszzz', 0),
(3, 'Culture', 'Tydaq taw lagwi', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `jenis_cuti` varchar(200) NOT NULL,
  `hak_cuti_tersisa` int(11) NOT NULL,
  `hak_cuti_diambil` int(11) NOT NULL,
  `waktu_cuti_awal` date NOT NULL,
  `waktu_cuti_akhir` date NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `keterangan_cuti` text NOT NULL,
  `diajukan_tanggal` date NOT NULL,
  `alasan_cuti_setuju` text,
  `status_cuti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `id_karyawan`, `tanggal_pengajuan`, `jenis_cuti`, `hak_cuti_tersisa`, `hak_cuti_diambil`, `waktu_cuti_awal`, `waktu_cuti_akhir`, `telepon`, `keterangan_cuti`, `diajukan_tanggal`, `alasan_cuti_setuju`, `status_cuti`) VALUES
(1, 1, '2020-07-01', 'asas', 21, 2, '2020-07-01', '2020-07-01', '0850291029109', '1212', '2020-07-01', 'kasian', 1),
(2, 3, '2020-07-01', 'liburan', 9, 1, '2020-07-01', '2020-07-01', '085200404996', 'asas', '2020-07-01', '', 0),
(3, 3, '2020-07-02', 'aa', 6, 4, '2020-07-02', '2020-07-05', '085200404996', 'asa', '2020-07-02', ' ', 0);

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
-- Struktur dari tabel `ijin`
--

CREATE TABLE `ijin` (
  `id_ijin` int(11) NOT NULL,
  `ipc` varchar(200) NOT NULL,
  `tanggal_ijin` date NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `keperluan` varchar(200) NOT NULL,
  `waktu_awal` time NOT NULL,
  `waktu_akhir` time NOT NULL,
  `status_ijin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ijin`
--

INSERT INTO `ijin` (`id_ijin`, `ipc`, `tanggal_ijin`, `id_karyawan`, `keperluan`, `waktu_awal`, `waktu_akhir`, `status_ijin`) VALUES
(1, 'sakit', '2020-07-01', 2, 'instirahat', '11:28:00', '14:31:00', 0),
(2, '121', '2020-07-02', 3, '121', '11:11:00', '22:22:00', 0),
(3, '123ghv', '2020-07-03', 3, 'Pengen liburan', '15:55:00', '01:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(200) NOT NULL,
  `nik_karyawan` int(11) NOT NULL,
  `tempat_lahir_karyawan` varchar(50) NOT NULL,
  `tanggal_lahir_karyawan` date NOT NULL,
  `alamat_karyawan` text NOT NULL,
  `keluarga_karyawan` text NOT NULL,
  `pedidikan_terahir` varchar(200) NOT NULL,
  `status_kontrak` int(11) NOT NULL,
  `status_mutasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`, `status_kontrak`, `status_mutasi`) VALUES
(1, 'Dicky', 2100997226, 'Jepara', '2001-11-28', 'Jepara', 'Istri / Suami : -\r\nAnak : -\r\nAnak : -\r\nAnak : -\r\n\r\nAyah : Messi\r\nIbu : Ariana\r\nSaudara Kandung : Justin', 'SMK', 1, 1),
(2, 'Dimass', 2100997223, 'Jepara', '2000-06-26', 'Semarang', 'Ada', 'SMK', 1, 0),
(3, 'Joni', 12345, 'Jepara', '2020-06-03', 'Smg', 'Lengkap', 'SMK', 1, 1),
(5, 'asin', 123, 'jepara', '2020-07-02', 'kawak', 'ayah', 'sma', 0, 1),
(6, 'beni', 54321, 'jakarta', '2020-06-29', 'semarang', 'Istri / Suami : -\r\nAnak : -\r\nAnak : -\r\nAnak : -\r\n\r\nAyah : just\r\nIbu : now\r\nSaudara Kandung : -\r\n', 'S1', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontrak`
--

CREATE TABLE `kontrak` (
  `id_kontrak` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `dari_tanggal` date NOT NULL,
  `sampai_tanggal` date NOT NULL,
  `status_kontrak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontrak`
--

INSERT INTO `kontrak` (`id_kontrak`, `id_karyawan`, `dari_tanggal`, `sampai_tanggal`, `status_kontrak`) VALUES
(1, 1, '2020-06-17', '2020-06-30', 0),
(2, 2, '2020-06-10', '2021-09-23', 0),
(5, 3, '2020-07-01', '2020-08-01', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kpi`
--

CREATE TABLE `kpi` (
  `id_kpi` int(11) NOT NULL,
  `aku` varchar(200) NOT NULL,
  `kpi` varchar(255) NOT NULL,
  `bobot_kpi` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `rat` int(11) NOT NULL,
  `skor` double NOT NULL,
  `skor_akhir` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kpi`
--

INSERT INTO `kpi` (`id_kpi`, `aku`, `kpi`, `bobot_kpi`, `target`, `rat`, `skor`, `skor_akhir`) VALUES
(1, 'Rekrutmen', 'Placement karyawan H-0 (Penggantian karyawan tepat waktu saat karyawan sebelumnya resign)', 33, 100, 90, 90, 29.7),
(2, 'Rekrutmen', 'Placement karyawan H-0 (Penggantian karyawan tepat waktu saat karyawan sebelumnya resign)', 80, 100, 80, 80, 64);

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
(560, 4, 'yii\\db\\Command::execute', 1592809559.4133, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592809559.4131, \'Dicky Saputra\', \'Login\')'),
(561, 0, 'Login', 1592813875.3906, 'Operator', 'Login'),
(562, 4, 'yii\\db\\Command::execute', 1592813875.3908, 'Operator', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592813875.3906, \'Operator\', \'Login\')'),
(563, 0, 'Login', 1592814732.0713, 'Dicky Saputra', 'Login'),
(564, 4, 'yii\\db\\Command::execute', 1592814732.0715, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592814732.0713, \'Dicky Saputra\', \'Login\')'),
(565, 0, 'Login', 1592894110.7276, 'Dicky Saputra', 'Login'),
(566, 4, 'yii\\db\\Command::execute', 1592894110.7278, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592894110.7276, \'Dicky Saputra\', \'Login\')'),
(567, 0, 'Login', 1592905321.3112, 'Dicky Saputra', 'Login'),
(568, 4, 'yii\\db\\Command::execute', 1592905321.3113, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1592905321.3112, \'Dicky Saputra\', \'Login\')'),
(569, 0, 'Login', 1593152646.9139, 'Dicky Saputra', 'Login'),
(570, 4, 'yii\\db\\Command::execute', 1593152646.9141, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593152646.9139, \'Dicky Saputra\', \'Login\')'),
(571, 4, 'yii\\db\\Command::execute', 1593152684.5917, 'Dicky Saputra', 'DELETE FROM `login` WHERE `id_login`=51'),
(572, 4, 'yii\\db\\Command::execute', 1593152688.5263, 'Dicky Saputra', 'DELETE FROM `login` WHERE `id_login`=50'),
(573, 4, 'yii\\db\\Command::execute', 1593152691.5675, 'Dicky Saputra', 'DELETE FROM `login` WHERE `id_login`=49'),
(574, 4, 'yii\\db\\Command::execute', 1593152694.4238, 'Dicky Saputra', 'DELETE FROM `login` WHERE `id_login`=48'),
(575, 4, 'yii\\db\\Command::execute', 1593152698.0578, 'Dicky Saputra', 'DELETE FROM `login` WHERE `id_login`=42'),
(576, 0, 'Login', 1593155495.1259, 'Dicky Saputra', 'Login'),
(577, 4, 'yii\\db\\Command::execute', 1593155495.1261, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593155495.1259, \'Dicky Saputra\', \'Login\')'),
(578, 4, 'yii\\db\\Command::execute', 1593155548.4042, 'Dicky Saputra', 'UPDATE `system_role` SET `nama_role`=\'MANAGER\' WHERE `id_system_role`=25'),
(579, 4, 'yii\\db\\Command::execute', 1593155587.5622, 'Dicky Saputra', 'UPDATE `login` SET `username`=\'manager\', `password`=\'c4ca4238a0b923820dcc509a6f75849b\', `nama`=\'Manager\' WHERE `id_login`=41'),
(580, 4, 'yii\\db\\Command::execute', 1593155591.6243, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(581, 4, 'yii\\db\\Command::execute', 1593155591.6473, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(582, 4, 'yii\\db\\Command::execute', 1593155713.8758, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(583, 4, 'yii\\db\\Command::execute', 1593155713.9137, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(584, 4, 'yii\\db\\Command::execute', 1593155831.5768, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(585, 4, 'yii\\db\\Command::execute', 1593155831.6032, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(586, 0, 'Login', 1593155968.0884, 'admin', 'Login'),
(587, 4, 'yii\\db\\Command::execute', 1593155968.0886, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593155968.0884, \'admin\', \'Login\')'),
(588, 4, 'yii\\db\\Command::execute', 1593155979.1805, 'admin', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(589, 4, 'yii\\db\\Command::execute', 1593155979.2034, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(590, 4, 'yii\\db\\Command::execute', 1593156051.7702, 'admin', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(591, 4, 'yii\\db\\Command::execute', 1593156076.9069, 'admin', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(592, 4, 'yii\\db\\Command::execute', 1593156076.9344, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(593, 4, 'yii\\db\\Command::execute', 1593156110.8922, 'admin', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(594, 4, 'yii\\db\\Command::execute', 1593156110.9202, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(595, 4, 'yii\\db\\Command::execute', 1593156127.8399, 'admin', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(596, 4, 'yii\\db\\Command::execute', 1593156127.8669, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(597, 4, 'yii\\db\\Command::execute', 1593156130.4917, 'admin', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(598, 4, 'yii\\db\\Command::execute', 1593156130.5107, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(599, 4, 'yii\\db\\Command::execute', 1593156133.8724, 'admin', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(600, 4, 'yii\\db\\Command::execute', 1593156133.8912, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(601, 4, 'yii\\db\\Command::execute', 1593156146.1695, 'admin', 'DELETE FROM `user_role` WHERE `id_login`=\'41\''),
(602, 4, 'yii\\db\\Command::execute', 1593156146.2066, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 41)'),
(603, 0, 'Login', 1593156251.7988, 'Dicky Saputra', 'Login'),
(604, 4, 'yii\\db\\Command::execute', 1593156251.7989, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593156251.7988, \'Dicky Saputra\', \'Login\')'),
(605, 4, 'yii\\db\\Command::execute', 1593156285.3896, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(606, 4, 'yii\\db\\Command::execute', 1593156315.9839, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Karyawan\', \'karyawan\', 1, \'fighter-jet\', 0, 6)'),
(607, 4, 'yii\\db\\Command::execute', 1593156330.3718, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'127\''),
(608, 4, 'yii\\db\\Command::execute', 1593156330.3952, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 127)'),
(609, 4, 'yii\\db\\Command::execute', 1593156330.3998, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 127)'),
(610, 4, 'yii\\db\\Command::execute', 1593156330.4031, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 127)'),
(611, 4, 'yii\\db\\Command::execute', 1593156356.3763, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'1\''),
(612, 4, 'yii\\db\\Command::execute', 1593156356.3964, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 1)'),
(613, 4, 'yii\\db\\Command::execute', 1593156356.4011, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 1)'),
(614, 4, 'yii\\db\\Command::execute', 1593156356.4038, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 1)'),
(615, 4, 'yii\\db\\Command::execute', 1593157523.3989, 'Dicky Saputra', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'Dicky\', 2100997226, \'Jepara\', \'2001-11-28\', \'Jepara\', \'Lengkap\', \'SMK\')'),
(616, 0, 'Login', 1593157601.8751, 'Manager', 'Login'),
(617, 4, 'yii\\db\\Command::execute', 1593157601.8752, 'Manager', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593157601.8751, \'Manager\', \'Login\')'),
(618, 0, 'Login', 1593158717.9746, 'Dicky Saputra', 'Login'),
(619, 4, 'yii\\db\\Command::execute', 1593158717.9748, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593158717.9746, \'Dicky Saputra\', \'Login\')'),
(620, 0, 'Login', 1593160696.3009, 'Dicky Saputra', 'Login'),
(621, 4, 'yii\\db\\Command::execute', 1593160696.3011, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593160696.3009, \'Dicky Saputra\', \'Login\')'),
(622, 0, 'Login', 1593161629.4439, 'Dicky Saputra', 'Login'),
(623, 4, 'yii\\db\\Command::execute', 1593161629.4441, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593161629.4439, \'Dicky Saputra\', \'Login\')'),
(624, 4, 'yii\\db\\Command::execute', 1593161659.6021, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Personal Info\', \'#\', 0, \'users\', 0, 20)'),
(625, 4, 'yii\\db\\Command::execute', 1593161709.3733, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'128\''),
(626, 4, 'yii\\db\\Command::execute', 1593161709.3988, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 128)'),
(627, 4, 'yii\\db\\Command::execute', 1593161709.4025, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 128)'),
(628, 4, 'yii\\db\\Command::execute', 1593161709.406, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 128)'),
(629, 4, 'yii\\db\\Command::execute', 1593161727.9558, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=2, `status`=0 WHERE `id_menu`=128'),
(630, 4, 'yii\\db\\Command::execute', 1593161777.1369, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=128, `no_urut`=6, `status`=0 WHERE `id_menu`=127'),
(631, 4, 'yii\\db\\Command::execute', 1593161781.6115, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'127\''),
(632, 4, 'yii\\db\\Command::execute', 1593161781.6327, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 127)'),
(633, 4, 'yii\\db\\Command::execute', 1593161781.6373, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 127)'),
(634, 4, 'yii\\db\\Command::execute', 1593161781.6406, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 127)'),
(635, 4, 'yii\\db\\Command::execute', 1593161804.9547, 'Dicky Saputra', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=126'),
(636, 4, 'yii\\db\\Command::execute', 1593161851.9431, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Absensi\', \'#\', 128, \'calendar\', 0, 7)'),
(637, 4, 'yii\\db\\Command::execute', 1593162100.35, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Profesional Info\', \'#\', 0, \'address-book\', 0, 20)'),
(638, 4, 'yii\\db\\Command::execute', 1593162110.1363, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'130\''),
(639, 4, 'yii\\db\\Command::execute', 1593162110.162, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 130)'),
(640, 4, 'yii\\db\\Command::execute', 1593162110.1672, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 130)'),
(641, 4, 'yii\\db\\Command::execute', 1593162131.6984, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=3, `status`=0 WHERE `id_menu`=130'),
(642, 4, 'yii\\db\\Command::execute', 1593162152.2263, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=19, `status`=1 WHERE `id_menu`=115'),
(643, 4, 'yii\\db\\Command::execute', 1593162207.7186, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Kontrak\', \'#\', 130, \'file-signature\', 0, 1)'),
(644, 4, 'yii\\db\\Command::execute', 1593162350.938, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Promosi\', \'#\', 130, \'address-card\', 0, 2)'),
(645, 4, 'yii\\db\\Command::execute', 1593162364.3926, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'132\''),
(646, 4, 'yii\\db\\Command::execute', 1593162364.4219, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 132)'),
(647, 4, 'yii\\db\\Command::execute', 1593162364.4261, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 132)'),
(648, 4, 'yii\\db\\Command::execute', 1593162439.8139, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Mutasi\', \'#\', 0, \'calendar-alt\', 0, 20)'),
(649, 4, 'yii\\db\\Command::execute', 1593162443.2931, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'133\''),
(650, 4, 'yii\\db\\Command::execute', 1593162443.3211, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 133)'),
(651, 4, 'yii\\db\\Command::execute', 1593162443.3244, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 133)'),
(652, 4, 'yii\\db\\Command::execute', 1593162459.3313, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=130, `no_urut`=20, `status`=0 WHERE `id_menu`=133'),
(653, 4, 'yii\\db\\Command::execute', 1593162462.691, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'133\''),
(654, 4, 'yii\\db\\Command::execute', 1593162462.7236, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 133)'),
(655, 4, 'yii\\db\\Command::execute', 1593162462.7279, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 133)'),
(656, 4, 'yii\\db\\Command::execute', 1593162500.4995, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Training\', \'#\', 130, \'analitics\', 0, 21)'),
(657, 4, 'yii\\db\\Command::execute', 1593162505.5416, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'134\''),
(658, 4, 'yii\\db\\Command::execute', 1593162505.5648, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 134)'),
(659, 4, 'yii\\db\\Command::execute', 1593162505.5694, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 134)'),
(660, 4, 'yii\\db\\Command::execute', 1593162521.5373, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=130, `no_urut`=21, `icon`=\'analytics\', `status`=0 WHERE `id_menu`=134'),
(661, 4, 'yii\\db\\Command::execute', 1593162536.1426, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=130, `no_urut`=21, `icon`=\'running\', `status`=0 WHERE `id_menu`=134'),
(662, 4, 'yii\\db\\Command::execute', 1593162591.5566, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'View Data\', \'#\', 130, \'file\', 0, 22)'),
(663, 4, 'yii\\db\\Command::execute', 1593162599.8436, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'135\''),
(664, 4, 'yii\\db\\Command::execute', 1593162599.8688, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 135)'),
(665, 4, 'yii\\db\\Command::execute', 1593162599.8727, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 135)'),
(666, 4, 'yii\\db\\Command::execute', 1593162664.7393, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Performa App\', \'#\', 0, \'chart-line\', 0, 20)'),
(667, 4, 'yii\\db\\Command::execute', 1593162669.671, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'136\''),
(668, 4, 'yii\\db\\Command::execute', 1593162669.6965, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 136)'),
(669, 4, 'yii\\db\\Command::execute', 1593162669.7014, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 136)'),
(670, 4, 'yii\\db\\Command::execute', 1593162727.6468, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Target\', \'#\', 130, \'dot-circle\', 0, 23)'),
(671, 4, 'yii\\db\\Command::execute', 1593162757.9055, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=136, `no_urut`=23, `status`=0 WHERE `id_menu`=137'),
(672, 4, 'yii\\db\\Command::execute', 1593162829.9287, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Nilai Penilaian\', \'#\', 136, \'sort-numeric-up-alt\', 0, 24)'),
(673, 4, 'yii\\db\\Command::execute', 1593162836.209, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'138\''),
(674, 4, 'yii\\db\\Command::execute', 1593162836.2301, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 138)'),
(675, 4, 'yii\\db\\Command::execute', 1593162836.2333, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 138)'),
(676, 4, 'yii\\db\\Command::execute', 1593162860.382, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=136, `no_urut`=24, `icon`=\'sort-numeric-up\', `status`=0 WHERE `id_menu`=138'),
(677, 4, 'yii\\db\\Command::execute', 1593162911.0121, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=128, `no_urut`=6, `icon`=\'user\', `status`=0 WHERE `id_menu`=127'),
(678, 4, 'yii\\db\\Command::execute', 1593163547.2181, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Kotak Masuk\', \'#\', 0, \'envelope\', 0, 21)'),
(679, 4, 'yii\\db\\Command::execute', 1593163917.6547, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'kontrak\', `id_parent`=130, `no_urut`=1, `status`=0 WHERE `id_menu`=131'),
(680, 0, 'Login', 1593220696.5642, 'Manager', 'Login'),
(681, 4, 'yii\\db\\Command::execute', 1593220696.5644, 'Manager', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593220696.5642, \'Manager\', \'Login\')'),
(682, 0, 'Login', 1593220734.8716, 'Dicky Saputra', 'Login'),
(683, 4, 'yii\\db\\Command::execute', 1593220734.8717, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593220734.8716, \'Dicky Saputra\', \'Login\')'),
(684, 4, 'yii\\db\\Command::execute', 1593220751.2515, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=21, `status`=0 WHERE `id_menu`=139'),
(685, 4, 'yii\\db\\Command::execute', 1593220755.4347, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'139\''),
(686, 4, 'yii\\db\\Command::execute', 1593220755.4529, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 139)'),
(687, 4, 'yii\\db\\Command::execute', 1593220755.4566, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 139)'),
(688, 0, 'Login', 1593220771.3861, 'admin', 'Login'),
(689, 4, 'yii\\db\\Command::execute', 1593220771.3866, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593220771.3861, \'admin\', \'Login\')'),
(690, 0, 'Login', 1593220801.3451, 'Dicky Saputra', 'Login'),
(691, 4, 'yii\\db\\Command::execute', 1593220801.3453, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593220801.3451, \'Dicky Saputra\', \'Login\')'),
(692, 4, 'yii\\db\\Command::execute', 1593220895.9675, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'137\''),
(693, 4, 'yii\\db\\Command::execute', 1593220895.9848, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 137)'),
(694, 4, 'yii\\db\\Command::execute', 1593220895.9877, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 137)'),
(695, 4, 'yii\\db\\Command::execute', 1593220909.3105, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'129\''),
(696, 4, 'yii\\db\\Command::execute', 1593220909.3287, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 129)'),
(697, 4, 'yii\\db\\Command::execute', 1593220909.3328, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 129)'),
(698, 4, 'yii\\db\\Command::execute', 1593221928.1488, 'Dicky Saputra', 'INSERT INTO `kontrak` (`id_karyawan`, `dari_tanggal`, `sampai_tanggal`, `status_kontrak`) VALUES (1, \'2020-06-27\', \'2020-07-26\', 1)'),
(699, 0, 'Login', 1593222640.3693, 'Dicky Saputra', 'Login'),
(700, 4, 'yii\\db\\Command::execute', 1593222640.3694, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593222640.3693, \'Dicky Saputra\', \'Login\')'),
(701, 0, 'Login', 1593223576.2052, 'Dicky Saputra', 'Login'),
(702, 4, 'yii\\db\\Command::execute', 1593223576.2054, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593223576.2052, \'Dicky Saputra\', \'Login\')'),
(703, 4, 'yii\\db\\Command::execute', 1593223651.9546, 'Dicky Saputra', 'UPDATE `kontrak` SET `id_karyawan`=1, `dari_tanggal`=\'2020-06-17\', `sampai_tanggal`=\'2020-06-27\', `status_kontrak`=1 WHERE `id_kontrak`=1'),
(704, 4, 'yii\\db\\Command::execute', 1593225122.328, 'Dicky Saputra', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'Dimas\', 2100997223, \'Jepara\', \'2000-06-26\', \'Semarang\', \'Ada\', \'SMK\')'),
(705, 4, 'yii\\db\\Command::execute', 1593225202.5804, 'Dicky Saputra', 'INSERT INTO `kontrak` (`id_karyawan`, `dari_tanggal`, `sampai_tanggal`, `status_kontrak`) VALUES (2, \'2020-06-10\', \'2020-09-30\', 0)'),
(706, 4, 'yii\\db\\Command::execute', 1593225527.0828, 'Dicky Saputra', 'UPDATE `kontrak` SET `id_karyawan`=2, `sampai_tanggal`=\'2021-09-23\', `status_kontrak`=0 WHERE `id_kontrak`=2'),
(707, 0, 'Login', 1593231438.1102, 'Dicky Saputra', 'Login'),
(708, 4, 'yii\\db\\Command::execute', 1593231438.1104, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593231438.1102, \'Dicky Saputra\', \'Login\')'),
(709, 4, 'yii\\db\\Command::execute', 1593231630.0575, 'Dicky Saputra', 'UPDATE `kontrak` SET `status_kontrak`=0 WHERE `id_kontrak`=1'),
(710, 4, 'yii\\db\\Command::execute', 1593231731.9214, 'Dicky Saputra', 'UPDATE `kontrak` SET `sampai_tanggal`=\'2020-06-30\', `status_kontrak`=0 WHERE `id_kontrak`=1'),
(711, 4, 'yii\\db\\Command::execute', 1593232466.6694, 'Dicky Saputra', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'Joni\', 2100997224, \'Jepara\', \'2020-06-03\', \'Smg\', \'Lengkap\', \'SMK\')'),
(712, 4, 'yii\\db\\Command::execute', 1593232988.8583, 'Dicky Saputra', 'UPDATE `karyawan` SET `status_kontrak`=1 WHERE `id_karyawan`=3'),
(713, 4, 'yii\\db\\Command::execute', 1593232988.8734, 'Dicky Saputra', 'INSERT INTO `kontrak` (`id_karyawan`, `dari_tanggal`, `sampai_tanggal`, `status_kontrak`) VALUES (3, \'2020-06-01\', \'2020-06-30\', 0)'),
(714, 4, 'yii\\db\\Command::execute', 1593233285.855, 'Dicky Saputra', 'UPDATE `karyawan` SET `status_kontrak`=0 WHERE `id_karyawan`=3'),
(715, 4, 'yii\\db\\Command::execute', 1593233285.8695, 'Dicky Saputra', 'DELETE FROM `kontrak` WHERE `id_kontrak`=3'),
(716, 4, 'yii\\db\\Command::execute', 1593235109.9784, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'training\', `id_parent`=130, `no_urut`=21, `status`=0 WHERE `id_menu`=134'),
(717, 0, 'Login', 1593238022.4933, 'Dicky Saputra', 'Login'),
(718, 4, 'yii\\db\\Command::execute', 1593238022.4934, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593238022.4933, \'Dicky Saputra\', \'Login\')'),
(719, 4, 'yii\\db\\Command::execute', 1593238562.2269, 'Dicky Saputra', 'INSERT INTO `training` (`judul_training`, `waktu_training`, `sertifikat_training`, `penyelenggara_training`) VALUES (\'Arsip\', \'2020-06-25\', \'cek\', \'cv gss\')'),
(720, 4, 'yii\\db\\Command::execute', 1593239582.6873, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'absensi\', `id_parent`=128, `no_urut`=7, `status`=0 WHERE `id_menu`=129'),
(721, 0, 'Login', 1593395404.4875, 'admin', 'Login'),
(722, 4, 'yii\\db\\Command::execute', 1593395404.4878, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593395404.4875, \'admin\', \'Login\')'),
(723, 0, 'Login', 1593395688.5581, 'Dicky Saputra', 'Login'),
(724, 4, 'yii\\db\\Command::execute', 1593395688.5582, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593395688.5581, \'Dicky Saputra\', \'Login\')'),
(725, 4, 'yii\\db\\Command::execute', 1593396264.7538, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'absensi/create\', `id_parent`=128, `no_urut`=7, `status`=0 WHERE `id_menu`=129'),
(726, 4, 'yii\\db\\Command::execute', 1593398201.3271, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'absensi\', `id_parent`=130, `no_urut`=22, `status`=0 WHERE `id_menu`=135'),
(727, 4, 'yii\\db\\Command::execute', 1593403073.5415, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'absensi%2Fabsen\', `id_parent`=128, `no_urut`=7, `status`=0 WHERE `id_menu`=129'),
(728, 4, 'yii\\db\\Command::execute', 1593411398.8295, 'Dicky Saputra', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (2, \'2020-06-29\', 0)'),
(729, 0, 'Login', 1593414434.0629, 'Dicky Saputra', 'Login'),
(730, 4, 'yii\\db\\Command::execute', 1593414434.0631, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593414434.0629, \'Dicky Saputra\', \'Login\')'),
(731, 4, 'yii\\db\\Command::execute', 1593415444.9369, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'request\', `id_parent`=0, `no_urut`=21, `status`=0 WHERE `id_menu`=139'),
(732, 4, 'yii\\db\\Command::execute', 1593421779.3358, 'Dicky Saputra', 'UPDATE `request` SET `status_request`=1 WHERE `id_request`=1'),
(733, 4, 'yii\\db\\Command::execute', 1593421779.5545, 'Dicky Saputra', 'INSERT INTO `absensi` (`tanggal_absensi`, `id_karyawan`, `keterangan_absensi`) VALUES (\'2020-06-30\', 1, 0)'),
(734, 4, 'yii\\db\\Command::execute', 1593422509.1152, 'Dicky Saputra', 'UPDATE `request` SET `status_request`=1 WHERE `id_request`=1'),
(735, 4, 'yii\\db\\Command::execute', 1593422612.7027, 'Dicky Saputra', 'UPDATE `request` SET `status_request`=2 WHERE `id_request`=1'),
(736, 0, 'Login', 1593422691.9432, 'Manager', 'Login'),
(737, 4, 'yii\\db\\Command::execute', 1593422691.9434, 'Manager', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593422691.9432, \'Manager\', \'Login\')'),
(738, 0, 'Login', 1593422727.1148, 'Dicky Saputra', 'Login'),
(739, 4, 'yii\\db\\Command::execute', 1593422727.1152, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593422727.1148, \'Dicky Saputra\', \'Login\')'),
(740, 4, 'yii\\db\\Command::execute', 1593422835.7076, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'request%2Frequest_manager\', `id_parent`=0, `no_urut`=21, `status`=0 WHERE `id_menu`=139'),
(741, 0, 'Login', 1593422896.6868, 'Manager', 'Login'),
(742, 4, 'yii\\db\\Command::execute', 1593422896.687, 'Manager', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593422896.6868, \'Manager\', \'Login\')'),
(743, 4, 'yii\\db\\Command::execute', 1593422926.7976, 'Manager', 'UPDATE `request` SET `status_request`=1 WHERE `id_request`=1'),
(744, 4, 'yii\\db\\Command::execute', 1593422926.8247, 'Manager', 'INSERT INTO `absensi` (`tanggal_absensi`, `id_karyawan`, `keterangan_absensi`) VALUES (\'2020-06-30\', 1, 1)'),
(745, 0, 'Login', 1593423031.3179, 'Dicky Saputra', 'Login'),
(746, 4, 'yii\\db\\Command::execute', 1593423031.3181, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593423031.3179, \'Dicky Saputra\', \'Login\')'),
(747, 4, 'yii\\db\\Command::execute', 1593423042.8653, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'1\''),
(748, 4, 'yii\\db\\Command::execute', 1593423042.8885, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 1)'),
(749, 4, 'yii\\db\\Command::execute', 1593423042.8925, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 1)'),
(750, 0, 'Login', 1593423079.8716, 'admin', 'Login'),
(751, 4, 'yii\\db\\Command::execute', 1593423079.8719, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593423079.8716, \'admin\', \'Login\')'),
(752, 4, 'yii\\db\\Command::execute', 1593423088.3091, 'admin', 'UPDATE `login` SET `password`=\'c4ca4238a0b923820dcc509a6f75849b\' WHERE `id_login`=40'),
(753, 0, 'Login', 1593423463.7477, 'Manager', 'Login'),
(754, 4, 'yii\\db\\Command::execute', 1593423463.748, 'Manager', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593423463.7477, \'Manager\', \'Login\')'),
(755, 0, 'Login', 1593423710.1321, 'Dicky Saputra', 'Login'),
(756, 4, 'yii\\db\\Command::execute', 1593423710.1324, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593423710.1321, \'Dicky Saputra\', \'Login\')'),
(757, 0, 'Login', 1593481625.1677, 'Dicky Saputra', 'Login'),
(758, 4, 'yii\\db\\Command::execute', 1593481625.1679, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593481625.1677, \'Dicky Saputra\', \'Login\')'),
(759, 0, 'Login', 1593486143.1077, 'admin', 'Login'),
(760, 4, 'yii\\db\\Command::execute', 1593486143.108, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593486143.1077, \'admin\', \'Login\')'),
(761, 4, 'yii\\db\\Command::execute', 1593486211.8393, 'admin', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'rendi\', 2100997227, \'Semarang\', \'2020-06-01\', \'semarang kota\', \'Ayah : sapa\', \'SMK\')'),
(762, 4, 'yii\\db\\Command::execute', 1593486234.2613, 'admin', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (1, \'2020-06-30\', 0)'),
(763, 4, 'yii\\db\\Command::execute', 1593486237.0674, 'admin', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (2, \'2020-06-30\', 1)'),
(764, 4, 'yii\\db\\Command::execute', 1593486248.3664, 'admin', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (4, \'2020-06-30\', 2)'),
(765, 4, 'yii\\db\\Command::execute', 1593486250.0956, 'admin', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (3, \'2020-06-30\', 3)'),
(766, 0, 'Login', 1593486447.8917, 'Dicky Saputra', 'Login'),
(767, 4, 'yii\\db\\Command::execute', 1593486447.8919, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593486447.8917, \'Dicky Saputra\', \'Login\')'),
(768, 4, 'yii\\db\\Command::execute', 1593486473.0961, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=130, `no_urut`=1, `status`=0 WHERE `id_menu`=131'),
(769, 4, 'yii\\db\\Command::execute', 1593486479.9349, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'131\''),
(770, 4, 'yii\\db\\Command::execute', 1593486479.9574, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 131)'),
(771, 4, 'yii\\db\\Command::execute', 1593486479.962, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 131)'),
(772, 4, 'yii\\db\\Command::execute', 1593486695.6295, 'Dicky Saputra', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=132'),
(773, 4, 'yii\\db\\Command::execute', 1593486705.7307, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=130, `no_urut`=20, `icon`=\'address-card\', `status`=0 WHERE `id_menu`=133'),
(774, 4, 'yii\\db\\Command::execute', 1593486738.2, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'mutasi\', `id_parent`=130, `no_urut`=20, `status`=0 WHERE `id_menu`=133'),
(775, 4, 'yii\\db\\Command::execute', 1593488547.2086, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Mutasi / Promosi\', `id_parent`=130, `no_urut`=20, `status`=0 WHERE `id_menu`=133'),
(776, 4, 'yii\\db\\Command::execute', 1593489030.8809, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Target Kerja (kpi)\', `url`=\'kpi\', `id_parent`=136, `no_urut`=23, `status`=0 WHERE `id_menu`=137'),
(777, 4, 'yii\\db\\Command::execute', 1593489081.0233, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Nilai (hasil PA)\', `url`=\'nilai\', `id_parent`=136, `no_urut`=24, `status`=0 WHERE `id_menu`=138'),
(778, 4, 'yii\\db\\Command::execute', 1593491069.8373, 'Dicky Saputra', 'INSERT INTO `kpi` (`aku`, `kpi`, `bobot_kpi`, `target`, `rat`, `skor`, `skor_akhir`) VALUES (\'Rekrutmen\', \'Placement karyawan H-0 (Penggantian karyawan tepat waktu saat karyawan sebelumnya resign)\', 33, 100, 90, 90, 29.7)'),
(779, 0, 'Login', 1593491996.5074, 'admin', 'Login'),
(780, 4, 'yii\\db\\Command::execute', 1593491996.5076, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593491996.5074, \'admin\', \'Login\')'),
(781, 4, 'yii\\db\\Command::execute', 1593492085.1865, 'admin', 'INSERT INTO `mutasi` (`id_karyawan`, `tanggal_mutasi`, `promosi`, `grade`, `posisi_awal`, `posisi_baru`) VALUES (1, \'2020-06-30\', 1, \'5A\', \'Sekretaris\', \'Manager\')'),
(782, 0, 'Login', 1593498253.5261, 'Dicky Saputra', 'Login'),
(783, 4, 'yii\\db\\Command::execute', 1593498253.5263, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593498253.5261, \'Dicky Saputra\', \'Login\')'),
(784, 4, 'yii\\db\\Command::execute', 1593498431.8287, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'kpi%2Fnilai\', `id_parent`=136, `no_urut`=24, `status`=0 WHERE `id_menu`=138'),
(785, 4, 'yii\\db\\Command::execute', 1593501221.2485, 'Dicky Saputra', 'INSERT INTO `kpi` (`aku`, `kpi`, `bobot_kpi`, `target`, `rat`, `skor`, `skor_akhir`) VALUES (\'Rekrutmen\', \'Placement karyawan H-0 (Penggantian karyawan tepat waktu saat karyawan sebelumnya resign)\', 80, 100, 80, 80, 64)'),
(786, 4, 'yii\\db\\Command::execute', 1593503089.3328, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=21, `status`=0 WHERE `id_menu`=139'),
(787, 4, 'yii\\db\\Command::execute', 1593503092.3223, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'139\''),
(788, 4, 'yii\\db\\Command::execute', 1593503092.3436, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 139)'),
(789, 4, 'yii\\db\\Command::execute', 1593503092.3486, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 139)'),
(790, 4, 'yii\\db\\Command::execute', 1593503145.8283, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Ijin\', \'#\', 139, \'calendar\', 0, 1)'),
(791, 4, 'yii\\db\\Command::execute', 1593503151.1017, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'140\''),
(792, 4, 'yii\\db\\Command::execute', 1593503151.1249, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 140)'),
(793, 4, 'yii\\db\\Command::execute', 1593503151.1285, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 140)'),
(794, 4, 'yii\\db\\Command::execute', 1593503168.7953, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Cuti\', \'#\', 0, \'users\', 0, 22)'),
(795, 4, 'yii\\db\\Command::execute', 1593503173.6017, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'141\''),
(796, 4, 'yii\\db\\Command::execute', 1593503173.6251, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 141)'),
(797, 4, 'yii\\db\\Command::execute', 1593503173.6279, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 141)'),
(798, 4, 'yii\\db\\Command::execute', 1593503181.4701, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=139, `no_urut`=22, `status`=0 WHERE `id_menu`=141'),
(799, 4, 'yii\\db\\Command::execute', 1593503211.2669, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Tunjangan\', \'#\', 139, \'fa-fighter-jet\', 0, 23)');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(800, 4, 'yii\\db\\Command::execute', 1593503219.5952, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'142\''),
(801, 4, 'yii\\db\\Command::execute', 1593503219.6201, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 142)'),
(802, 4, 'yii\\db\\Command::execute', 1593503219.6238, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 142)'),
(803, 4, 'yii\\db\\Command::execute', 1593503465.4326, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=139, `no_urut`=22, `icon`=\'water\', `status`=0 WHERE `id_menu`=141'),
(804, 4, 'yii\\db\\Command::execute', 1593503525.9875, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=139, `no_urut`=1, `icon`=\'plus-square\', `status`=0 WHERE `id_menu`=140'),
(805, 4, 'yii\\db\\Command::execute', 1593503606.9183, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=139, `no_urut`=23, `icon`=\'receipt\', `status`=0 WHERE `id_menu`=142'),
(806, 0, 'Login', 1593566472.9405, 'Dicky Saputra', 'Login'),
(807, 4, 'yii\\db\\Command::execute', 1593566472.9408, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593566472.9405, \'Dicky Saputra\', \'Login\')'),
(808, 4, 'yii\\db\\Command::execute', 1593569908.4041, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'ijin\', `id_parent`=139, `no_urut`=1, `status`=0 WHERE `id_menu`=140'),
(809, 4, 'yii\\db\\Command::execute', 1593569911.6081, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'139\''),
(810, 4, 'yii\\db\\Command::execute', 1593569911.6285, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 139)'),
(811, 4, 'yii\\db\\Command::execute', 1593569911.6323, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 139)'),
(812, 4, 'yii\\db\\Command::execute', 1593569920.7824, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'cuti\', `id_parent`=139, `no_urut`=22, `status`=0 WHERE `id_menu`=141'),
(813, 4, 'yii\\db\\Command::execute', 1593569931.3572, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'tunjangan\', `id_parent`=139, `no_urut`=23, `status`=0 WHERE `id_menu`=142'),
(814, 4, 'yii\\db\\Command::execute', 1593569934.3718, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'139\''),
(815, 4, 'yii\\db\\Command::execute', 1593569934.3901, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (25, 139)'),
(816, 4, 'yii\\db\\Command::execute', 1593569934.3934, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 139)'),
(817, 4, 'yii\\db\\Command::execute', 1593572863.4317, 'Dicky Saputra', 'INSERT INTO `tunjangan` (`id_karyawan`, `id_mutasi`, `perihal`, `status_karyawan`, `dp_buku_nikah`, `dp_surat_kelahiran`, `dp_surat_kematian`, `keterngan`, `tanggal_berita`, `jumlah_uang`, `status_tunjangan`) VALUES (1, 1, \'kelahiran\', 1, 1, 1, 0, \'qq\', \'2020-11-11\', 200000, 0)'),
(818, 4, 'yii\\db\\Command::execute', 1593575043.6374, 'Dicky Saputra', 'UPDATE `tunjangan` SET `status_tunjangan`=1 WHERE `id_tunjangan`=1'),
(819, 4, 'yii\\db\\Command::execute', 1593577743.0392, 'Dicky Saputra', 'INSERT INTO `ijin` (`ipc`, `tanggal_ijin`, `id_karyawan`, `keperluan`, `waktu_awal`, `waktu_akhir`, `status_ijin`) VALUES (\'sakit\', \'2020-07-01\', 2, \'instirahat\', \'11:28\', \'14:31\', 0)'),
(820, 4, 'yii\\db\\Command::execute', 1593578799.3167, 'Dicky Saputra', 'UPDATE `tunjangan` SET `status_tunjangan`=2 WHERE `id_tunjangan`=1'),
(821, 4, 'yii\\db\\Command::execute', 1593584307.5169, 'Dicky Saputra', 'UPDATE `ijin` SET `status_ijin`=1 WHERE `id_ijin`=1'),
(822, 4, 'yii\\db\\Command::execute', 1593584329.0168, 'Dicky Saputra', 'UPDATE `ijin` SET `status_ijin`=2 WHERE `id_ijin`=1'),
(823, 4, 'yii\\db\\Command::execute', 1593585863.7388, 'Dicky Saputra', 'INSERT INTO `cuti` (`id_karyawan`, `tanggal_pengajuan`, `jenis_cuti`, `hak_cuti_tersisa`, `hak_cuti_diambil`, `waktu_cuti_awal`, `waktu_cuti_akhir`, `telepon`, `keterangan_cuti`, `diajukan_tanggal`, `alasan_cuti_setuju`, `status_cuti`) VALUES (1, \'2020-07-01\', \'liburan\', 6, 4, \'2020-07-01\', \'2020-07-05\', 85200404996, \'ascasc\', NULL, \'\', 0)'),
(824, 4, 'yii\\db\\Command::execute', 1593585864.0415, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1593585863.7388, \'Dicky Saputra\', \'INSERT INTO `cuti` (`id_karyawan`, `tanggal_pengajuan`, `jenis_cuti`, `hak_cuti_tersisa`, `hak_cuti_diambil`, `waktu_cuti_awal`, `waktu_cuti_akhir`, `telepon`, `keterangan_cuti`, `diajukan_tanggal`, `alasan_cuti_setuju`, `status_cuti`) VALUES (1, \\\'2020-07-01\\\', \\\'liburan\\\', 6, 4, \\\'2020-07-01\\\', \\\'2020-07-05\\\', 85200404996, \\\'ascasc\\\', NULL, \\\'\\\', 0)\')'),
(825, 4, 'yii\\db\\Command::execute', 1593586027.4087, 'Dicky Saputra', 'INSERT INTO `cuti` (`id_karyawan`, `tanggal_pengajuan`, `jenis_cuti`, `hak_cuti_tersisa`, `hak_cuti_diambil`, `waktu_cuti_awal`, `waktu_cuti_akhir`, `telepon`, `keterangan_cuti`, `diajukan_tanggal`, `alasan_cuti_setuju`, `status_cuti`) VALUES (1, \'2020-07-01\', \'liburan\', 6, 4, \'2020-07-01\', \'2020-07-05\', \'085200404996\', \'ascasc\', NULL, \'\', 0)'),
(826, 4, 'yii\\db\\Command::execute', 1593586027.4529, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1593586027.4087, \'Dicky Saputra\', \'INSERT INTO `cuti` (`id_karyawan`, `tanggal_pengajuan`, `jenis_cuti`, `hak_cuti_tersisa`, `hak_cuti_diambil`, `waktu_cuti_awal`, `waktu_cuti_akhir`, `telepon`, `keterangan_cuti`, `diajukan_tanggal`, `alasan_cuti_setuju`, `status_cuti`) VALUES (1, \\\'2020-07-01\\\', \\\'liburan\\\', 6, 4, \\\'2020-07-01\\\', \\\'2020-07-05\\\', \\\'085200404996\\\', \\\'ascasc\\\', NULL, \\\'\\\', 0)\')'),
(827, 4, 'yii\\db\\Command::execute', 1593586409.3296, 'Dicky Saputra', 'INSERT INTO `cuti` (`id_karyawan`, `tanggal_pengajuan`, `jenis_cuti`, `hak_cuti_tersisa`, `hak_cuti_diambil`, `waktu_cuti_awal`, `waktu_cuti_akhir`, `telepon`, `keterangan_cuti`, `diajukan_tanggal`, `alasan_cuti_setuju`, `status_cuti`) VALUES (1, \'2020-07-01\', \'liburan\', 9, 1, \'2020-07-01\', \'2020-07-01\', \'085200404996\', \'asas\', \'2020-07-01\', \'\', 0)'),
(828, 4, 'yii\\db\\Command::execute', 1593588155.025, 'Dicky Saputra', 'UPDATE `ijin` SET `status_ijin`=1 WHERE `id_ijin`=1'),
(829, 4, 'yii\\db\\Command::execute', 1593589520.2362, 'Dicky Saputra', 'UPDATE `cuti` SET `diajukan_tanggal`=\'2020-07-01\', `alasan_cuti_setuju`=\'kasian\', `status_cuti`=1 WHERE `id_cuti`=1'),
(830, 4, 'yii\\db\\Command::execute', 1593589864.7389, 'Dicky Saputra', 'UPDATE `ijin` SET `status_ijin`=1 WHERE `id_ijin`=1'),
(831, 4, 'yii\\db\\Command::execute', 1593590409.5553, 'Dicky Saputra', 'UPDATE `ijin` SET `status_ijin`=2 WHERE `id_ijin`=1'),
(832, 4, 'yii\\db\\Command::execute', 1593590500.6916, 'Dicky Saputra', 'UPDATE `cuti` SET `status_cuti`=2 WHERE `id_cuti`=2'),
(833, 0, 'Login', 1593593024.0633, 'test karyawan', 'Login'),
(834, 4, 'yii\\db\\Command::execute', 1593593024.0635, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593593024.0633, \'test karyawan\', \'Login\')'),
(835, 0, 'Login', 1593593069.4669, 'test karyawan', 'Login'),
(836, 4, 'yii\\db\\Command::execute', 1593593069.4671, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593593069.4669, \'test karyawan\', \'Login\')'),
(837, 0, 'Login', 1593593111.4274, 'test karyawan', 'Login'),
(838, 4, 'yii\\db\\Command::execute', 1593593111.4276, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593593111.4274, \'test karyawan\', \'Login\')'),
(839, 0, 'Login', 1593593412.3229, 'test karyawan', 'Login'),
(840, 4, 'yii\\db\\Command::execute', 1593593412.3231, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593593412.3229, \'test karyawan\', \'Login\')'),
(841, 0, 'Login', 1593593972.1339, 'Dicky Saputra', 'Login'),
(842, 4, 'yii\\db\\Command::execute', 1593593972.1341, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593593972.1339, \'Dicky Saputra\', \'Login\')'),
(843, 4, 'yii\\db\\Command::execute', 1593594011.5939, 'Dicky Saputra', 'INSERT INTO `system_role` (`nama_role`) VALUES (\'KARYAWAN\')'),
(844, 4, 'yii\\db\\Command::execute', 1593594031.9387, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'42\''),
(845, 4, 'yii\\db\\Command::execute', 1593594031.9576, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (26, 42)'),
(846, 4, 'yii\\db\\Command::execute', 1593594050.7215, 'Dicky Saputra', 'DELETE FROM `user_role` WHERE `id_login`=\'45\''),
(847, 4, 'yii\\db\\Command::execute', 1593594050.7381, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (26, 45)'),
(848, 0, 'Login', 1593594084.3195, 'test karyawan', 'Login'),
(849, 4, 'yii\\db\\Command::execute', 1593594084.3197, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593594084.3195, \'test karyawan\', \'Login\')'),
(850, 0, 'Login', 1593594952.2683, 'Dicky Saputra', 'Login'),
(851, 4, 'yii\\db\\Command::execute', 1593594952.2685, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593594952.2683, \'Dicky Saputra\', \'Login\')'),
(852, 0, 'Login', 1593595067.1644, 'test karyawan 2', 'Login'),
(853, 4, 'yii\\db\\Command::execute', 1593595067.1646, 'test karyawan 2', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593595067.1644, \'test karyawan 2\', \'Login\')'),
(854, 0, 'Login', 1593595097.5832, 'Dicky Saputra', 'Login'),
(855, 4, 'yii\\db\\Command::execute', 1593595097.5834, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593595097.5832, \'Dicky Saputra\', \'Login\')'),
(856, 4, 'yii\\db\\Command::execute', 1593595159.9729, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Login Kayawan\', \'login-karyawan-create\', 1, \'list\', 0, 6)'),
(857, 4, 'yii\\db\\Command::execute', 1593595176.2117, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'143\''),
(858, 4, 'yii\\db\\Command::execute', 1593595181.1448, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'143\''),
(859, 4, 'yii\\db\\Command::execute', 1593595181.1612, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 143)'),
(860, 0, 'Login', 1593607329.3948, 'Dicky Saputra', 'Login'),
(861, 4, 'yii\\db\\Command::execute', 1593607329.395, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593607329.3948, \'Dicky Saputra\', \'Login\')'),
(862, 4, 'yii\\db\\Command::execute', 1593607883.0684, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Dashboard\', \'dashboard\', 0, \'tachometer-alt\', 0, 22)'),
(863, 4, 'yii\\db\\Command::execute', 1593607909.295, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'144\''),
(864, 4, 'yii\\db\\Command::execute', 1593607909.3167, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (26, 144)'),
(865, 4, 'yii\\db\\Command::execute', 1593607987.5988, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Request\', \'#\', 0, \'clipboard\', 0, 23)'),
(866, 4, 'yii\\db\\Command::execute', 1593607993.2993, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'145\''),
(867, 4, 'yii\\db\\Command::execute', 1593607993.3202, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (26, 145)'),
(868, 4, 'yii\\db\\Command::execute', 1593607993.3233, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 145)'),
(869, 4, 'yii\\db\\Command::execute', 1593608047.7118, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Ijin\', \'#\', 145, \'plus-square\', 0, 1)'),
(870, 4, 'yii\\db\\Command::execute', 1593608057.539, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'146\''),
(871, 4, 'yii\\db\\Command::execute', 1593608057.558, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (26, 146)'),
(872, 4, 'yii\\db\\Command::execute', 1593608057.5613, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 146)'),
(873, 4, 'yii\\db\\Command::execute', 1593608097.3877, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Cuti\', \'#\', 145, \'water\', 0, 2)'),
(874, 4, 'yii\\db\\Command::execute', 1593608132.3842, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Tunjangan\', \'#\', 145, \'receipt\', 0, 3)'),
(875, 4, 'yii\\db\\Command::execute', 1593608135.2414, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'148\''),
(876, 4, 'yii\\db\\Command::execute', 1593608135.2662, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (26, 148)'),
(877, 4, 'yii\\db\\Command::execute', 1593608135.2702, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 148)'),
(878, 0, 'Login', 1593608264.2509, 'test karyawan', 'Login'),
(879, 4, 'yii\\db\\Command::execute', 1593608264.2511, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593608264.2509, \'test karyawan\', \'Login\')'),
(880, 0, 'Login', 1593608477.8714, 'Dicky Saputra', 'Login'),
(881, 4, 'yii\\db\\Command::execute', 1593608477.8716, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593608477.8714, \'Dicky Saputra\', \'Login\')'),
(882, 4, 'yii\\db\\Command::execute', 1593608505.9825, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'147\''),
(883, 4, 'yii\\db\\Command::execute', 1593608506.0098, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (26, 147)'),
(884, 4, 'yii\\db\\Command::execute', 1593608506.0169, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 147)'),
(885, 4, 'yii\\db\\Command::execute', 1593608546.0379, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'ijin%2Fcreate\', `id_parent`=145, `no_urut`=1, `status`=0 WHERE `id_menu`=146'),
(886, 0, 'Login', 1593652592.7861, 'Dicky Saputra', 'Login'),
(887, 4, 'yii\\db\\Command::execute', 1593652592.7863, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593652592.7861, \'Dicky Saputra\', \'Login\')'),
(888, 0, 'Login', 1593653048.0124, 'test karyawan', 'Login'),
(889, 4, 'yii\\db\\Command::execute', 1593653048.0125, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593653048.0124, \'test karyawan\', \'Login\')'),
(890, 0, 'Login', 1593653178.9345, 'test karyawan', 'Login'),
(891, 4, 'yii\\db\\Command::execute', 1593653178.9347, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593653178.9345, \'test karyawan\', \'Login\')'),
(892, 0, 'Login', 1593653949.9994, 'test karyawan', 'Login'),
(893, 4, 'yii\\db\\Command::execute', 1593653949.9996, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593653949.9994, \'test karyawan\', \'Login\')'),
(894, 4, 'yii\\db\\Command::execute', 1593654277.7856, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Data DIri\', `id_parent`=0, `no_urut`=22, `icon`=\'user\', `status`=0 WHERE `id_menu`=144'),
(895, 4, 'yii\\db\\Command::execute', 1593654280.8096, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'144\''),
(896, 4, 'yii\\db\\Command::execute', 1593654280.8288, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (26, 144)'),
(897, 4, 'yii\\db\\Command::execute', 1593654309.2504, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'data-diri\', `id_parent`=0, `no_urut`=22, `status`=0 WHERE `id_menu`=144'),
(898, 0, 'Login', 1593657501.0252, 'test karyawan 2', 'Login'),
(899, 4, 'yii\\db\\Command::execute', 1593657501.0253, 'test karyawan 2', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593657501.0252, \'test karyawan 2\', \'Login\')'),
(900, 0, 'Login', 1593659354.5979, 'test karyawan', 'Login'),
(901, 4, 'yii\\db\\Command::execute', 1593659354.5982, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593659354.5979, \'test karyawan\', \'Login\')'),
(902, 0, 'Login', 1593659419.8351, 'test karyawan', 'Login'),
(903, 4, 'yii\\db\\Command::execute', 1593659419.8353, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593659419.8351, \'test karyawan\', \'Login\')'),
(904, 4, 'yii\\db\\Command::execute', 1593659615.0961, 'Dicky Saputra', 'UPDATE `karyawan` SET `status_kontrak`=1 WHERE `id_karyawan`=4'),
(905, 4, 'yii\\db\\Command::execute', 1593659615.1686, 'Dicky Saputra', 'INSERT INTO `kontrak` (`id_karyawan`, `dari_tanggal`, `sampai_tanggal`, `status_kontrak`) VALUES (4, \'2020-07-09\', \'2021-07-01\', 0)'),
(906, 4, 'yii\\db\\Command::execute', 1593659686.5886, 'Dicky Saputra', 'INSERT INTO `mutasi` (`id_karyawan`, `tanggal_mutasi`, `promosi`, `grade`, `posisi_awal`, `posisi_baru`) VALUES (4, \'2020-07-02\', 0, \'5b\', \'pengngguran\', \'Programmer\')'),
(907, 0, 'Login', 1593659698.5333, 'test karyawan 2', 'Login'),
(908, 4, 'yii\\db\\Command::execute', 1593659698.5334, 'test karyawan 2', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593659698.5333, \'test karyawan 2\', \'Login\')'),
(909, 0, 'Login', 1593662863.4572, 'Dicky Saputra', 'Login'),
(910, 4, 'yii\\db\\Command::execute', 1593662863.4574, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593662863.4572, \'Dicky Saputra\', \'Login\')'),
(911, 0, 'Login', 1593662893.7174, 'test karyawan 2', 'Login'),
(912, 4, 'yii\\db\\Command::execute', 1593662893.7176, 'test karyawan 2', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593662893.7174, \'test karyawan 2\', \'Login\')'),
(913, 4, 'yii\\db\\Command::execute', 1593667835.9596, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'cuti%2Fcreate\', `id_parent`=145, `no_urut`=2, `status`=0 WHERE `id_menu`=147'),
(914, 4, 'yii\\db\\Command::execute', 1593667847.496, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'tunjangan%2Fcreate\', `id_parent`=145, `no_urut`=3, `status`=0 WHERE `id_menu`=148'),
(915, 0, 'Login', 1593668979.3969, 'test karyawan', 'Login'),
(916, 4, 'yii\\db\\Command::execute', 1593668979.3971, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593668979.3969, \'test karyawan\', \'Login\')'),
(917, 4, 'yii\\db\\Command::execute', 1593670647.4479, 'Dicky Saputra', 'UPDATE `cuti` SET `status_cuti`=2 WHERE `id_cuti`=2'),
(918, 4, 'yii\\db\\Command::execute', 1593671112.5087, 'test karyawan', 'INSERT INTO `cuti` (`id_karyawan`, `tanggal_pengajuan`, `jenis_cuti`, `hak_cuti_tersisa`, `hak_cuti_diambil`, `waktu_cuti_awal`, `waktu_cuti_akhir`, `telepon`, `keterangan_cuti`, `status_cuti`, `diajukan_tanggal`, `alasan_cuti_setuju`) VALUES (3, \'2020-07-02\', \'aa\', 6, 4, \'2020-07-02\', \'2020-07-05\', \'085200404996\', \'asa\', 0, \'0000-00-00\', NULL)'),
(919, 4, 'yii\\db\\Command::execute', 1593671112.8382, 'test karyawan', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1593671112.5087, \'test karyawan\', \'INSERT INTO `cuti` (`id_karyawan`, `tanggal_pengajuan`, `jenis_cuti`, `hak_cuti_tersisa`, `hak_cuti_diambil`, `waktu_cuti_awal`, `waktu_cuti_akhir`, `telepon`, `keterangan_cuti`, `status_cuti`, `diajukan_tanggal`, `alasan_cuti_setuju`) VALUES (3, \\\'2020-07-02\\\', \\\'aa\\\', 6, 4, \\\'2020-07-02\\\', \\\'2020-07-05\\\', \\\'085200404996\\\', \\\'asa\\\', 0, \\\'0000-00-00\\\', NULL)\')'),
(920, 4, 'yii\\db\\Command::execute', 1593671183.6635, 'test karyawan', 'INSERT INTO `cuti` (`id_karyawan`, `tanggal_pengajuan`, `jenis_cuti`, `hak_cuti_tersisa`, `hak_cuti_diambil`, `waktu_cuti_awal`, `waktu_cuti_akhir`, `telepon`, `keterangan_cuti`, `status_cuti`, `diajukan_tanggal`, `alasan_cuti_setuju`) VALUES (3, \'2020-07-02\', \'aa\', 6, 4, \'2020-07-02\', \'2020-07-05\', \'085200404996\', \'asa\', 0, \'0000-00-00\', NULL)'),
(921, 4, 'yii\\db\\Command::execute', 1593671287.8436, 'test karyawan', 'UPDATE `cuti` SET `id_karyawan`=0, `hak_cuti_tersisa`=10, `hak_cuti_diambil`=4, `status_cuti`=0 WHERE `id_cuti`=3'),
(922, 4, 'yii\\db\\Command::execute', 1593671562.8848, 'test karyawan', 'UPDATE `cuti` SET `hak_cuti_tersisa`=6, `status_cuti`=0 WHERE `id_cuti`=3'),
(923, 4, 'yii\\db\\Command::execute', 1593671891.0831, 'Dicky Saputra', 'UPDATE `cuti` SET `diajukan_tanggal`=\'2020-07-02\', `alasan_cuti_setuju`=\'kasian\', `status_cuti`=1 WHERE `id_cuti`=3'),
(924, 0, 'Login', 1593673508.4443, 'test karyawan 2', 'Login'),
(925, 4, 'yii\\db\\Command::execute', 1593673508.4445, 'test karyawan 2', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593673508.4443, \'test karyawan 2\', \'Login\')'),
(926, 0, 'Login', 1593673525.7963, 'Joni', 'Login'),
(927, 4, 'yii\\db\\Command::execute', 1593673525.7965, 'Joni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593673525.7963, \'Joni\', \'Login\')'),
(928, 4, 'yii\\db\\Command::execute', 1593673763.0658, 'Joni', 'INSERT INTO `ijin` (`id_karyawan`, `ipc`, `tanggal_ijin`, `keperluan`, `waktu_awal`, `waktu_akhir`, `status_ijin`) VALUES (3, \'121\', \'2020-07-02\', \'121\', \'11:11\', \'22:22\', 0)'),
(929, 0, 'Login', 1593674898.1856, 'test karyawan 2', 'Login'),
(930, 4, 'yii\\db\\Command::execute', 1593674898.186, 'test karyawan 2', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593674898.1856, \'test karyawan 2\', \'Login\')'),
(931, 4, 'yii\\db\\Command::execute', 1593675687.3959, 'test karyawan 2', 'INSERT INTO `tunjangan` (`id_karyawan`, `perihal`, `status_karyawan`, `dp_buku_nikah`, `dp_surat_kelahiran`, `dp_surat_kematian`, `keterngan`, `tanggal_berita`, `jumlah_uang`, `status_tunjangan`) VALUES (0, \'asa\', 0, 1, 1, 0, \'asa\', \'2020-07-02\', 10000, 0)'),
(932, 4, 'yii\\db\\Command::execute', 1593676070.4996, 'test karyawan 2', 'INSERT INTO `tunjangan` (`id_karyawan`, `perihal`, `status_karyawan`, `dp_buku_nikah`, `dp_surat_kelahiran`, `dp_surat_kematian`, `keterngan`, `tanggal_berita`, `jumlah_uang`, `status_tunjangan`, `id_mutasi`) VALUES (4, \'asa\', 0, 1, 0, 0, \'as\', \'2020-07-02\', 10000, 0, 2)'),
(933, 4, 'yii\\db\\Command::execute', 1593676538.1731, 'Dicky Saputra', 'UPDATE `tunjangan` SET `status_tunjangan`=1 WHERE `id_tunjangan`=3'),
(934, 4, 'yii\\db\\Command::execute', 1593677306.735, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'KNOWLADGE MANAGEMENT\', \'management\', 0, \'tasks\', 0, 24)'),
(935, 4, 'yii\\db\\Command::execute', 1593677317.6277, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'149\''),
(936, 4, 'yii\\db\\Command::execute', 1593677317.6408, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (26, 149)'),
(937, 4, 'yii\\db\\Command::execute', 1593677317.6465, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 149)'),
(938, 4, 'yii\\db\\Command::execute', 1593677329.8018, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'149\''),
(939, 4, 'yii\\db\\Command::execute', 1593677329.8196, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (26, 149)'),
(940, 4, 'yii\\db\\Command::execute', 1593677329.8236, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 149)'),
(941, 4, 'yii\\db\\Command::execute', 1593677350.524, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Knowlage Management\', `id_parent`=0, `no_urut`=24, `status`=0 WHERE `id_menu`=149'),
(942, 4, 'yii\\db\\Command::execute', 1593677587.4242, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'149\''),
(943, 4, 'yii\\db\\Command::execute', 1593677587.4443, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (26, 149)'),
(944, 4, 'yii\\db\\Command::execute', 1593677607.0632, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Knowlage Management\', \'content\', 0, \'tasks\', 0, 25)'),
(945, 4, 'yii\\db\\Command::execute', 1593677614.6154, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'150\''),
(946, 4, 'yii\\db\\Command::execute', 1593677614.6304, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 150)'),
(947, 4, 'yii\\db\\Command::execute', 1593677614.6347, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 150)'),
(948, 4, 'yii\\db\\Command::execute', 1593678254.5906, 'Dicky Saputra', 'INSERT INTO `content` (`judul`, `deskripsi`, `status_content`) VALUES (\'Visi\', \'Tydaq taw\', 1)'),
(949, 4, 'yii\\db\\Command::execute', 1593678343.4159, 'Dicky Saputra', 'UPDATE `content` SET `status_content`=0 WHERE `id_content`=1'),
(950, 4, 'yii\\db\\Command::execute', 1593678366.4335, 'Dicky Saputra', 'INSERT INTO `content` (`judul`, `deskripsi`, `status_content`) VALUES (\'Misi\', \'tydaq taw jugwa\', 0)'),
(951, 4, 'yii\\db\\Command::execute', 1593678400.1217, 'Dicky Saputra', 'INSERT INTO `content` (`judul`, `deskripsi`, `status_content`) VALUES (\'Culture\', \'Tydaq taw lagwi\', 0)'),
(952, 4, 'yii\\db\\Command::execute', 1593678583.3179, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `url`=\'content%2Fmanagement\', `id_parent`=0, `no_urut`=24, `status`=0 WHERE `id_menu`=149'),
(953, 4, 'yii\\db\\Command::execute', 1593679270.6484, 'Dicky Saputra', 'UPDATE `content` SET `deskripsi`=\'1. tydaq taw jugwa\\r\\n2. tydaq taw jugwa\\r\\n3. tydaq taw jugwa\\r\\n4. tydaq taw jugwa\', `status_content`=0 WHERE `id_content`=2'),
(954, 4, 'yii\\db\\Command::execute', 1593683022.3901, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'123\', \'dcfcd07e645d245babe887e5e2daa016\', \'asa\', \'avatar5.png\')'),
(955, 4, 'yii\\db\\Command::execute', 1593683022.3943, 'Dicky Saputra', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'asa\', 123, \'jepara\', \'2020-07-02\', \'kawak\', \'ayah\', \'sma\')'),
(956, 4, 'yii\\db\\Command::execute', 1593685085.6706, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_login`, `id_system_role`) VALUES (46, 26)'),
(957, 0, 'Login', 1593685154.7195, 'asa', 'Login'),
(958, 4, 'yii\\db\\Command::execute', 1593685154.7197, 'asa', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593685154.7195, \'asa\', \'Login\')'),
(959, 4, 'yii\\db\\Command::execute', 1593685239.1117, 'Dicky Saputra', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'asa2\', 111, \'jepara\', \'2020-07-23\', \'asa\', \'asa\', \'sma\')'),
(960, 4, 'yii\\db\\Command::execute', 1593685373.1201, 'Dicky Saputra', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'asa3\', 112, \'jepara\', \'2020-07-02\', \'asa\', \'asa\', \'sma\')'),
(961, 4, 'yii\\db\\Command::execute', 1593685424.5089, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'113\', \'cfcd208495d565ef66e7dff9f98764da\', \'asa4\', \'avatar5.png\')'),
(962, 4, 'yii\\db\\Command::execute', 1593685424.5145, 'Dicky Saputra', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'asa4\', 113, \'jepara\', \'2020-07-02\', \'sas\', \'asa\', \'sma\')'),
(963, 4, 'yii\\db\\Command::execute', 1593685493.8748, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_login`, `id_system_role`) VALUES (47, 26)'),
(964, 0, 'Login', 1593685502.2027, 'asa4', 'Login'),
(965, 4, 'yii\\db\\Command::execute', 1593685502.2029, 'asa4', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593685502.2027, \'asa4\', \'Login\')'),
(966, 0, 'Login', 1593738287.6863, 'asa', 'Login'),
(967, 4, 'yii\\db\\Command::execute', 1593738287.6866, 'asa', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593738287.6863, \'asa\', \'Login\')'),
(968, 0, 'Login', 1593738312.2473, 'Dicky Saputra', 'Login'),
(969, 4, 'yii\\db\\Command::execute', 1593738312.2475, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593738312.2473, \'Dicky Saputra\', \'Login\')'),
(970, 4, 'yii\\db\\Command::execute', 1593738705.0106, 'Dicky Saputra', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'asa\', 123, \'jepara\', \'2020-07-03\', \'asa\', \'saas\', \'sma\')'),
(971, 0, 'Login', 1593738755.8329, 'asa', 'Login'),
(972, 4, 'yii\\db\\Command::execute', 1593738755.8332, 'asa', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593738755.8329, \'asa\', \'Login\')'),
(973, 0, 'Login', 1593738792.5054, 'Dicky Saputra', 'Login'),
(974, 4, 'yii\\db\\Command::execute', 1593738792.5056, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593738792.5054, \'Dicky Saputra\', \'Login\')'),
(975, 0, 'Login', 1593739324.5731, 'Dicky Saputra', 'Login'),
(976, 4, 'yii\\db\\Command::execute', 1593739324.5732, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593739324.5731, \'Dicky Saputra\', \'Login\')'),
(977, 0, 'Login', 1593739406.8994, 'Dicky Saputra', 'Login'),
(978, 4, 'yii\\db\\Command::execute', 1593739406.8996, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593739406.8994, \'Dicky Saputra\', \'Login\')'),
(979, 4, 'yii\\db\\Command::execute', 1593740501.4295, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'admin2\', \'c4ca4238a0b923820dcc509a6f75849b\', \'a2\', \'avatar5.png\')'),
(980, 4, 'yii\\db\\Command::execute', 1593740814.5654, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'1233\', \'cfcd208495d565ef66e7dff9f98764da\', \'jon\', \'avatar5.png\')'),
(981, 4, 'yii\\db\\Command::execute', 1593740814.5704, 'Dicky Saputra', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'jon\', 1233, \'jepara\', \'2020-07-03\', \'asdas\', \'sdsad\', \'sma\')'),
(982, 4, 'yii\\db\\Command::execute', 1593740819.5765, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_login`, `id_system_role`) VALUES (49, 26)'),
(983, 4, 'yii\\db\\Command::execute', 1593741175.2064, 'Dicky Saputra', 'UPDATE `karyawan` SET `nama_karyawan`=\'Dimass\', `nik_karyawan`=2100997223 WHERE `id_karyawan`=2'),
(984, 4, 'yii\\db\\Command::execute', 1593741259.3417, 'Dicky Saputra', 'UPDATE `karyawan` SET `nama_karyawan`=\'asa kuy\', `nik_karyawan`=123 WHERE `id_karyawan`=9'),
(985, 4, 'yii\\db\\Command::execute', 1593741281.7166, 'Dicky Saputra', 'UPDATE `karyawan` SET `nama_karyawan`=\'asi\', `nik_karyawan`=123 WHERE `id_karyawan`=5'),
(986, 4, 'yii\\db\\Command::execute', 1593741378.1251, 'Dicky Saputra', 'UPDATE `karyawan` SET `nama_karyawan`=\'asin\', `nik_karyawan`=123 WHERE `id_karyawan`=5'),
(987, 4, 'yii\\db\\Command::execute', 1593741977.5173, 'Dicky Saputra', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'08022001\', \'cfcd208495d565ef66e7dff9f98764da\', \'daniel\', \'avatar5.png\')'),
(988, 4, 'yii\\db\\Command::execute', 1593741977.5233, 'Dicky Saputra', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'daniel\', 8022001, \'Semarang\', \'2001-02-08\', \'Semarang\', \'Ada\', \'SMK\')'),
(989, 4, 'yii\\db\\Command::execute', 1593742033.085, 'Dicky Saputra', 'INSERT INTO `user_role` (`id_login`, `id_system_role`) VALUES (50, 26)'),
(990, 0, 'Login', 1593742237.2698, 'daniel', 'Login'),
(991, 4, 'yii\\db\\Command::execute', 1593742237.2699, 'daniel', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593742237.2698, \'daniel\', \'Login\')'),
(992, 0, 'Login', 1593742248.3427, 'Dicky Saputra', 'Login'),
(993, 4, 'yii\\db\\Command::execute', 1593742248.3429, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593742248.3427, \'Dicky Saputra\', \'Login\')'),
(994, 4, 'yii\\db\\Command::execute', 1593742343.6456, 'Dicky Saputra', 'UPDATE `karyawan` SET `nik_karyawan`=987654321 WHERE `id_karyawan`=11'),
(995, 4, 'yii\\db\\Command::execute', 1593742343.6618, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1593742343.6456, \'Dicky Saputra\', \'UPDATE `karyawan` SET `nik_karyawan`=987654321 WHERE `id_karyawan`=11\')'),
(996, 4, 'yii\\db\\Command::execute', 1593742361.0742, 'Dicky Saputra', 'UPDATE `karyawan` SET `nik_karyawan`=1111 WHERE `id_karyawan`=11'),
(997, 4, 'yii\\db\\Command::execute', 1593742361.0914, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1593742361.0742, \'Dicky Saputra\', \'UPDATE `karyawan` SET `nik_karyawan`=1111 WHERE `id_karyawan`=11\')'),
(998, 4, 'yii\\db\\Command::execute', 1593742443.3122, 'Dicky Saputra', 'UPDATE `karyawan` SET `nik_karyawan`=1111111111 WHERE `id_karyawan`=11'),
(999, 4, 'yii\\db\\Command::execute', 1593742443.3356, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1593742443.3122, \'Dicky Saputra\', \'UPDATE `karyawan` SET `nik_karyawan`=1111111111 WHERE `id_karyawan`=11\')'),
(1000, 4, 'yii\\db\\Command::execute', 1593742718.3399, 'Dicky Saputra', 'UPDATE `karyawan` SET `nik_karyawan`=987654321 WHERE `id_karyawan`=11'),
(1001, 4, 'yii\\db\\Command::execute', 1593742718.3602, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1593742718.3399, \'Dicky Saputra\', \'UPDATE `karyawan` SET `nik_karyawan`=987654321 WHERE `id_karyawan`=11\')'),
(1002, 4, 'yii\\db\\Command::execute', 1593742757.789, 'Dicky Saputra', 'UPDATE `karyawan` SET `nik_karyawan`=8022001 WHERE `id_karyawan`=11'),
(1003, 4, 'yii\\db\\Command::execute', 1593742757.8063, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1593742757.789, \'Dicky Saputra\', \'UPDATE `karyawan` SET `nik_karyawan`=8022001 WHERE `id_karyawan`=11\')'),
(1004, 4, 'yii\\db\\Command::execute', 1593746470.2039, 'Dicky Saputra', 'DELETE FROM `login` WHERE `id_login`=45'),
(1005, 4, 'yii\\db\\Command::execute', 1593746470.2067, 'Dicky Saputra', 'DELETE FROM `karyawan` WHERE `id_karyawan`=4'),
(1006, 4, 'yii\\db\\Command::execute', 1593746509.815, 'Dicky Saputra', 'DELETE FROM `login` WHERE `id_login`=50'),
(1007, 4, 'yii\\db\\Command::execute', 1593746509.8182, 'Dicky Saputra', 'DELETE FROM `karyawan` WHERE `id_karyawan`=11'),
(1008, 4, 'yii\\db\\Command::execute', 1593746615.592, 'Dicky Saputra', 'UPDATE `karyawan` SET `nik_karyawan`=125, `alamat_karyawan`=\'Istri / Suami : -\\r\\nAnak : -\\r\\nAnak : -\\r\\nAnak : -\\r\\n\\r\\nAyah : solekan\\r\\nIbu : solekah\\r\\nSaudara Kandung : -\' WHERE `id_karyawan`=9'),
(1009, 4, 'yii\\db\\Command::execute', 1593746648.4935, 'Dicky Saputra', 'UPDATE `karyawan` SET `nik_karyawan`=125, `alamat_karyawan`=\'asas\', `keluarga_karyawan`=\'Istri / Suami : -\\r\\nAnak : -\\r\\nAnak : -\\r\\nAnak : -\\r\\n\\r\\nAyah : solekan\\r\\nIbu : solekah\\r\\nSaudara Kandung : -\' WHERE `id_karyawan`=9'),
(1010, 4, 'yii\\db\\Command::execute', 1593746780.6428, 'Dicky Saputra', 'DELETE FROM `karyawan` WHERE `id_karyawan`=6'),
(1011, 4, 'yii\\db\\Command::execute', 1593746798.4681, 'Dicky Saputra', 'DELETE FROM `login` WHERE `id_login`=49'),
(1012, 4, 'yii\\db\\Command::execute', 1593746798.4713, 'Dicky Saputra', 'DELETE FROM `karyawan` WHERE `id_karyawan`=10'),
(1013, 4, 'yii\\db\\Command::execute', 1593747227.4806, 'Dicky Saputra', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (1, \'2020-07-03\', 0)'),
(1014, 4, 'yii\\db\\Command::execute', 1593747231.236, 'Dicky Saputra', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (2, \'2020-07-03\', 3)'),
(1015, 0, 'Login', 1593747394.4104, 'Dicky Saputra', 'Login'),
(1016, 4, 'yii\\db\\Command::execute', 1593747394.4106, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593747394.4104, \'Dicky Saputra\', \'Login\')'),
(1017, 4, 'yii\\db\\Command::execute', 1593748434.054, 'Dicky Saputra', 'INSERT INTO `mutasi` (`id_karyawan`, `tanggal_mutasi`, `promosi`, `grade`, `posisi_awal`, `posisi_baru`) VALUES (7, \'2020-07-03\', 0, \'5b\', \'pengngguran\', \'Programmer\')'),
(1018, 4, 'yii\\db\\Command::execute', 1593748459.5462, 'Dicky Saputra', 'UPDATE `karyawan` SET `status_kontrak`=1 WHERE `id_karyawan`=7'),
(1019, 4, 'yii\\db\\Command::execute', 1593748459.5491, 'Dicky Saputra', 'INSERT INTO `kontrak` (`id_karyawan`, `dari_tanggal`, `sampai_tanggal`, `status_kontrak`) VALUES (7, \'2020-07-03\', \'2020-07-31\', 0)'),
(1020, 4, 'yii\\db\\Command::execute', 1593748475.7784, 'Dicky Saputra', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (7, \'2020-07-03\', 3)'),
(1021, 4, 'yii\\db\\Command::execute', 1593749228.6177, 'Dicky Saputra', 'DELETE FROM `login` WHERE `id_login`=47'),
(1022, 4, 'yii\\db\\Command::execute', 1593749228.6215, 'Dicky Saputra', 'DELETE FROM `kontrak` WHERE `id_kontrak`=4'),
(1023, 4, 'yii\\db\\Command::execute', 1593749228.6242, 'Dicky Saputra', 'DELETE FROM `absensi` WHERE `id_absensi`=14'),
(1024, 4, 'yii\\db\\Command::execute', 1593749228.6265, 'Dicky Saputra', 'DELETE FROM `karyawan` WHERE `id_karyawan`=7'),
(1025, 4, 'yii\\db\\Command::execute', 1593749427.6214, 'Dicky Saputra', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (9, \'2020-07-03\', 1)'),
(1026, 4, 'yii\\db\\Command::execute', 1593749438.1382, 'Dicky Saputra', 'DELETE FROM `kontrak` WHERE `id_kontrak`=3'),
(1027, 4, 'yii\\db\\Command::execute', 1593749438.1425, 'Dicky Saputra', 'DELETE FROM `mutasi` WHERE `id_mutasi`=2'),
(1028, 4, 'yii\\db\\Command::execute', 1593749438.1458, 'Dicky Saputra', 'DELETE FROM `absensi` WHERE `id_absensi`=15'),
(1029, 4, 'yii\\db\\Command::execute', 1593749438.1493, 'Dicky Saputra', 'DELETE FROM `karyawan` WHERE `id_karyawan`=9'),
(1030, 0, 'Login', 1593749496.4314, 'Joni', 'Login'),
(1031, 4, 'yii\\db\\Command::execute', 1593749496.4316, 'Joni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593749496.4314, \'Joni\', \'Login\')'),
(1032, 0, 'Login', 1593749597.2535, 'Joni', 'Login'),
(1033, 4, 'yii\\db\\Command::execute', 1593749597.2536, 'Joni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593749597.2535, \'Joni\', \'Login\')'),
(1034, 0, 'Login', 1593751157.892, 'Dicky Saputra', 'Login'),
(1035, 4, 'yii\\db\\Command::execute', 1593751157.8923, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593751157.892, \'Dicky Saputra\', \'Login\')'),
(1036, 4, 'yii\\db\\Command::execute', 1593751226.256, 'Dicky Saputra', 'UPDATE `karyawan` SET `status_kontrak`=1 WHERE `id_karyawan`=3'),
(1037, 4, 'yii\\db\\Command::execute', 1593751226.2597, 'Dicky Saputra', 'INSERT INTO `kontrak` (`id_karyawan`, `dari_tanggal`, `sampai_tanggal`, `status_kontrak`) VALUES (3, \'2020-07-01\', \'2020-08-01\', 0)'),
(1038, 4, 'yii\\db\\Command::execute', 1593751307.592, 'Dicky Saputra', 'INSERT INTO `mutasi` (`id_karyawan`, `tanggal_mutasi`, `promosi`, `grade`, `posisi_awal`, `posisi_baru`) VALUES (3, \'2020-07-03\', 0, \'5d\', \'nganggur\', \'kasir\')'),
(1039, 0, 'Login', 1593760486.0808, 'Manager', 'Login'),
(1040, 4, 'yii\\db\\Command::execute', 1593760486.081, 'Manager', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593760486.0808, \'Manager\', \'Login\')'),
(1041, 4, 'yii\\db\\Command::execute', 1593763532.1802, 'Dicky Saputra', 'INSERT INTO `mutasi` (`id_karyawan`, `tanggal_mutasi`, `promosi`, `grade`, `posisi_awal`, `posisi_baru`) VALUES (2, \'2020-07-03\', 0, \'5c\', \'\', \'jkas\')'),
(1042, 4, 'yii\\db\\Command::execute', 1593766355.185, 'Manager', 'UPDATE `tunjangan` SET `status_tunjangan`=1 WHERE `id_tunjangan`=1'),
(1043, 0, 'Login', 1593766476.1179, 'Joni', 'Login'),
(1044, 4, 'yii\\db\\Command::execute', 1593766476.118, 'Joni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593766476.1179, \'Joni\', \'Login\')'),
(1045, 0, 'Login', 1593766574.5889, 'Joni', 'Login'),
(1046, 4, 'yii\\db\\Command::execute', 1593766574.589, 'Joni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593766574.5889, \'Joni\', \'Login\')'),
(1047, 4, 'yii\\db\\Command::execute', 1593766659.4854, 'Joni', 'INSERT INTO `ijin` (`id_karyawan`, `ipc`, `tanggal_ijin`, `keperluan`, `waktu_awal`, `waktu_akhir`, `status_ijin`) VALUES (3, \'123ghv\', \'2020-07-03\', \'Pengen liburan\', \'15:55\', \'01:00\', 0)'),
(1048, 0, 'Login', 1593766757.7399, 'admin', 'Login'),
(1049, 4, 'yii\\db\\Command::execute', 1593766757.74, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593766757.7399, \'admin\', \'Login\')'),
(1050, 4, 'yii\\db\\Command::execute', 1593766843.9171, 'admin', 'UPDATE `content` SET `deskripsi`=\'1. Menjadi toko maju\\r\\n2. Semakin didepan\\r\\n3. tapi bukan Yamaha\\r\\n4. Chakkssszzz\', `status_content`=0 WHERE `id_content`=2'),
(1051, 4, 'yii\\db\\Command::execute', 1593766899.2934, 'admin', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (3, \'2020-07-03\', 0)'),
(1052, 4, 'yii\\db\\Command::execute', 1593766901.2183, 'admin', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (5, \'2020-07-03\', 0)'),
(1053, 0, 'Login', 1593825501.5159, 'Dicky Saputra', 'Login'),
(1054, 4, 'yii\\db\\Command::execute', 1593825501.516, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593825501.5159, \'Dicky Saputra\', \'Login\')'),
(1055, 0, 'Login', 1593825978.4107, 'Manager', 'Login'),
(1056, 4, 'yii\\db\\Command::execute', 1593825978.4109, 'Manager', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593825978.4107, \'Manager\', \'Login\')'),
(1057, 0, 'Login', 1593826107.8692, 'Joni', 'Login'),
(1058, 4, 'yii\\db\\Command::execute', 1593826107.8696, 'Joni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593826107.8692, \'Joni\', \'Login\')'),
(1059, 0, 'Login', 1593826174.041, 'Dicky Saputra', 'Login'),
(1060, 4, 'yii\\db\\Command::execute', 1593826174.0412, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593826174.041, \'Dicky Saputra\', \'Login\')'),
(1061, 0, 'Login', 1593826805.7374, 'admin', 'Login'),
(1062, 4, 'yii\\db\\Command::execute', 1593826805.7376, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593826805.7374, \'admin\', \'Login\')'),
(1063, 0, 'Login', 1593827045.5976, 'Manager', 'Login'),
(1064, 4, 'yii\\db\\Command::execute', 1593827045.5978, 'Manager', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593827045.5976, \'Manager\', \'Login\')'),
(1065, 0, 'Login', 1593827546.5402, 'Manager', 'Login'),
(1066, 4, 'yii\\db\\Command::execute', 1593827546.5405, 'Manager', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593827546.5402, \'Manager\', \'Login\')'),
(1067, 0, 'Login', 1593828203.0549, 'admin', 'Login'),
(1068, 4, 'yii\\db\\Command::execute', 1593828203.0552, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593828203.0549, \'admin\', \'Login\')'),
(1069, 4, 'yii\\db\\Command::execute', 1593828909.775, 'admin', 'UPDATE `karyawan` SET `nik_karyawan`=2100997226, `keluarga_karyawan`=\'Istri / Suami : -\\r\\nAnak : -\\r\\nAnak : -\\r\\nAnak : -\\r\\n\\r\\nAyah : Messi\\r\\nIbu : Ariana\\r\\nSaudara Kandung : Justin\' WHERE `id_karyawan`=1'),
(1070, 0, 'Login', 1593829294.4985, 'Joni', 'Login'),
(1071, 4, 'yii\\db\\Command::execute', 1593829294.4987, 'Joni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593829294.4985, \'Joni\', \'Login\')'),
(1072, 0, 'Login', 1593829327.7304, 'admin', 'Login'),
(1073, 4, 'yii\\db\\Command::execute', 1593829327.7306, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593829327.7304, \'admin\', \'Login\')'),
(1074, 4, 'yii\\db\\Command::execute', 1593829382.341, 'admin', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'54321\', \'cfcd208495d565ef66e7dff9f98764da\', \'beni\', \'avatar5.png\')'),
(1075, 4, 'yii\\db\\Command::execute', 1593829382.3461, 'admin', 'INSERT INTO `karyawan` (`nama_karyawan`, `nik_karyawan`, `tempat_lahir_karyawan`, `tanggal_lahir_karyawan`, `alamat_karyawan`, `keluarga_karyawan`, `pedidikan_terahir`) VALUES (\'beni\', 54321, \'jakarta\', \'2020-06-29\', \'semarang\', \'Istri / Suami : -\\r\\nAnak : -\\r\\nAnak : -\\r\\nAnak : -\\r\\n\\r\\nAyah : just\\r\\nIbu : now\\r\\nSaudara Kandung : -\\r\\n\', \'S1\')'),
(1076, 4, 'yii\\db\\Command::execute', 1593829385.1505, 'admin', 'INSERT INTO `user_role` (`id_login`, `id_system_role`) VALUES (49, 26)'),
(1077, 0, 'Login', 1593829397.5408, 'beni', 'Login'),
(1078, 4, 'yii\\db\\Command::execute', 1593829397.541, 'beni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593829397.5408, \'beni\', \'Login\')'),
(1079, 0, 'Login', 1593829689.6149, 'Joni', 'Login'),
(1080, 4, 'yii\\db\\Command::execute', 1593829689.6151, 'Joni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593829689.6149, \'Joni\', \'Login\')'),
(1081, 4, 'yii\\db\\Command::execute', 1593829719.7633, 'Joni', 'INSERT INTO `tunjangan` (`id_karyawan`, `perihal`, `status_karyawan`, `dp_buku_nikah`, `dp_surat_kelahiran`, `dp_surat_kematian`, `keterngan`, `tanggal_berita`, `jumlah_uang`, `status_tunjangan`, `id_mutasi`) VALUES (3, \'asda\', 0, 1, 1, 0, \'asd\', \'2020-07-03\', 10000, 0, 4)'),
(1082, 0, 'Login', 1593829846.539, 'beni', 'Login'),
(1083, 4, 'yii\\db\\Command::execute', 1593829846.5392, 'beni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593829846.539, \'beni\', \'Login\')'),
(1084, 0, 'Login', 1593831781.944, 'admin', 'Login'),
(1085, 4, 'yii\\db\\Command::execute', 1593831781.9442, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593831781.944, \'admin\', \'Login\')'),
(1086, 4, 'yii\\db\\Command::execute', 1593832461.149, 'admin', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (6, \'2020-07-04\', 0)'),
(1087, 0, 'Login', 1593832668.8987, 'Dicky Saputra', 'Login'),
(1088, 4, 'yii\\db\\Command::execute', 1593832668.8988, 'Dicky Saputra', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593832668.8987, \'Dicky Saputra\', \'Login\')');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(1089, 4, 'yii\\db\\Command::execute', 1593832700.5295, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=1, `no_urut`=6, `status`=1 WHERE `id_menu`=143'),
(1090, 4, 'yii\\db\\Command::execute', 1593832704.2373, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'1\''),
(1091, 4, 'yii\\db\\Command::execute', 1593832704.2562, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 1)'),
(1092, 4, 'yii\\db\\Command::execute', 1593832704.2602, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 1)'),
(1093, 4, 'yii\\db\\Command::execute', 1593832892.4143, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=23, `status`=0 WHERE `id_menu`=145'),
(1094, 4, 'yii\\db\\Command::execute', 1593832898.9897, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'145\''),
(1095, 4, 'yii\\db\\Command::execute', 1593832899.0083, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (26, 145)'),
(1096, 4, 'yii\\db\\Command::execute', 1593832954.8927, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Request\', \'#\', 0, \'clipboard\', 0, 26)'),
(1097, 4, 'yii\\db\\Command::execute', 1593832958.8127, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'151\''),
(1098, 4, 'yii\\db\\Command::execute', 1593832958.8306, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 151)'),
(1099, 4, 'yii\\db\\Command::execute', 1593832958.8346, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 151)'),
(1100, 4, 'yii\\db\\Command::execute', 1593832997.2002, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Ijin\', \'#\', 0, \'plus-square\', 0, 27)'),
(1101, 4, 'yii\\db\\Command::execute', 1593833009.378, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'152\''),
(1102, 4, 'yii\\db\\Command::execute', 1593833009.3973, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 152)'),
(1103, 4, 'yii\\db\\Command::execute', 1593833009.4008, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 152)'),
(1104, 4, 'yii\\db\\Command::execute', 1593833017.5225, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=145, `no_urut`=27, `status`=0 WHERE `id_menu`=152'),
(1105, 4, 'yii\\db\\Command::execute', 1593833029.6351, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=151, `no_urut`=27, `status`=0 WHERE `id_menu`=152'),
(1106, 4, 'yii\\db\\Command::execute', 1593833057.3912, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Cuti\', \'#\', 0, \'water\', 0, 27)'),
(1107, 4, 'yii\\db\\Command::execute', 1593833063.1132, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'153\''),
(1108, 4, 'yii\\db\\Command::execute', 1593833063.1371, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 153)'),
(1109, 4, 'yii\\db\\Command::execute', 1593833063.1396, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 153)'),
(1110, 4, 'yii\\db\\Command::execute', 1593833071.3743, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=145, `no_urut`=27, `status`=0 WHERE `id_menu`=153'),
(1111, 4, 'yii\\db\\Command::execute', 1593833081.7168, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=151, `no_urut`=27, `status`=0 WHERE `id_menu`=153'),
(1112, 4, 'yii\\db\\Command::execute', 1593833106.1876, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Request an\', `id_parent`=0, `no_urut`=26, `status`=0 WHERE `id_menu`=151'),
(1113, 4, 'yii\\db\\Command::execute', 1593833142.0196, 'Dicky Saputra', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Tunjangan\', \'#\', 151, \'receipt\', 0, 28)'),
(1114, 4, 'yii\\db\\Command::execute', 1593833145.9745, 'Dicky Saputra', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'154\''),
(1115, 4, 'yii\\db\\Command::execute', 1593833145.9957, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (23, 154)'),
(1116, 4, 'yii\\db\\Command::execute', 1593833145.9991, 'Dicky Saputra', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 154)'),
(1117, 4, 'yii\\db\\Command::execute', 1593833760.3098, 'Dicky Saputra', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=26, `status`=1 WHERE `id_menu`=151'),
(1118, 0, 'Login', 1593835247.4783, 'admin', 'Login'),
(1119, 4, 'yii\\db\\Command::execute', 1593835247.4785, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593835247.4783, \'admin\', \'Login\')'),
(1120, 4, 'yii\\db\\Command::execute', 1593835349.1092, 'admin', 'INSERT INTO `absensi` (`id_karyawan`, `tanggal_absensi`, `keterangan_absensi`) VALUES (1, \'2020-07-04\', 1)'),
(1121, 4, 'yii\\db\\Command::execute', 1593835460.6119, 'admin', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'diaz\', \'4297f44b13955235245b2497399d7a93\', \'Diaz\', \'avatar5.png\')'),
(1122, 4, 'yii\\db\\Command::execute', 1593835466.5868, 'admin', 'DELETE FROM `user_role` WHERE `id_login`=\'50\''),
(1123, 4, 'yii\\db\\Command::execute', 1593835466.6018, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (23, 50)'),
(1124, 4, 'yii\\db\\Command::execute', 1593835466.6032, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (26, 50)'),
(1125, 4, 'yii\\db\\Command::execute', 1593835466.6043, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (25, 50)'),
(1126, 0, 'Login', 1593835577.9705, 'Diaz', 'Login'),
(1127, 4, 'yii\\db\\Command::execute', 1593835577.9707, 'Diaz', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593835577.9705, \'Diaz\', \'Login\')'),
(1128, 4, 'yii\\db\\Command::execute', 1593835617.8046, 'Diaz', 'DELETE FROM `user_role` WHERE `id_login`=\'50\''),
(1129, 4, 'yii\\db\\Command::execute', 1593835617.8204, 'Diaz', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (26, 50)'),
(1130, 0, 'Login', 1593836984.6239, 'Joni', 'Login'),
(1131, 4, 'yii\\db\\Command::execute', 1593836984.624, 'Joni', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1593836984.6239, \'Joni\', \'Login\')');

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
(40, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin', 'avatar5.png'),
(41, 'manager', 'c4ca4238a0b923820dcc509a6f75849b', 'Manager', 'avatar5.png'),
(42, '12345', 'cfcd208495d565ef66e7dff9f98764da', 'Joni', 'avatar5.png'),
(46, '123', 'cfcd208495d565ef66e7dff9f98764da', 'asa', 'avatar5.png'),
(48, 'admin2', 'c4ca4238a0b923820dcc509a6f75849b', 'a2', 'avatar5.png'),
(49, '54321', 'cfcd208495d565ef66e7dff9f98764da', 'beni', 'avatar5.png'),
(50, 'diaz', '4297f44b13955235245b2497399d7a93', 'Diaz', 'avatar5.png');

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
(115, 'Log', '#', 0, 19, 'check-circle', 1),
(124, 'Log', '/log', 115, 1, 'list-ul', 0),
(125, 'Rekap Log', '/log/rekap-log', 115, 2, 'list-ul', 0),
(127, 'Karyawan', 'karyawan', 128, 6, 'user', 0),
(128, 'Personal Info', '#', 0, 2, 'users', 0),
(129, 'Absensi', 'absensi%2Fabsen', 128, 7, 'calendar', 0),
(130, 'Profesional Info', '#', 0, 3, 'address-book', 0),
(131, 'Kontrak', 'kontrak', 130, 1, 'file-signature', 0),
(133, 'Mutasi / Promosi', 'mutasi', 130, 20, 'address-card', 0),
(134, 'Training', 'training', 130, 21, 'running', 0),
(135, 'View Data', 'absensi', 130, 22, 'file', 0),
(136, 'Performa App', '#', 0, 20, 'chart-line', 0),
(137, 'Target Kerja (kpi)', 'kpi', 136, 23, 'dot-circle', 0),
(138, 'Nilai (hasil PA)', 'kpi%2Fnilai', 136, 24, 'sort-numeric-up', 0),
(139, 'Kotak Masuk', '#', 0, 21, 'envelope', 0),
(140, 'Ijin', 'ijin', 139, 1, 'plus-square', 0),
(141, 'Cuti', 'cuti', 139, 22, 'water', 0),
(142, 'Tunjangan', 'tunjangan', 139, 23, 'receipt', 0),
(143, 'Login Kayawan', 'login-karyawan-create', 1, 6, 'list', 1),
(144, 'Data DIri', 'data-diri', 0, 22, 'user', 0),
(145, 'Request', '#', 0, 23, 'clipboard', 0),
(146, 'Ijin', 'ijin%2Fcreate', 145, 1, 'plus-square', 0),
(147, 'Cuti', 'cuti%2Fcreate', 145, 2, 'water', 0),
(148, 'Tunjangan', 'tunjangan%2Fcreate', 145, 3, 'receipt', 0),
(149, 'Knowlage Management', 'content%2Fmanagement', 0, 24, 'tasks', 0),
(150, 'Knowlage Management', 'content', 0, 25, 'tasks', 0),
(151, 'Request an', '#', 0, 26, 'clipboard', 1),
(152, 'Ijin', '#', 151, 27, 'plus-square', 0),
(153, 'Cuti', '#', 151, 27, 'water', 0),
(154, 'Tunjangan', '#', 151, 28, 'receipt', 0);

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
(581, 113, 7),
(582, 113, 8),
(583, 113, 9),
(584, 113, 18),
(585, 113, 1),
(601, 45, 7),
(602, 45, 8),
(603, 45, 9),
(604, 45, 1),
(607, 30, 4),
(608, 30, 1),
(615, 14, 7),
(616, 14, 15),
(617, 14, 9),
(618, 14, 17),
(619, 14, 4),
(620, 14, 1),
(630, 34, 7),
(631, 34, 1),
(638, 3, 15),
(639, 3, 1),
(640, 4, 15),
(641, 4, 1),
(656, 29, 6),
(657, 29, 7),
(658, 29, 1),
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
(1071, 2, 23),
(1072, 2, 1),
(1075, 126, 23),
(1076, 126, 25),
(1077, 126, 1),
(1080, 115, 23),
(1081, 115, 1),
(1082, 124, 23),
(1083, 124, 1),
(1084, 125, 23),
(1085, 125, 1),
(1092, 128, 23),
(1093, 128, 25),
(1094, 128, 1),
(1095, 127, 23),
(1096, 127, 25),
(1097, 127, 1),
(1098, 130, 23),
(1099, 130, 1),
(1100, 132, 23),
(1101, 132, 1),
(1104, 133, 23),
(1105, 133, 1),
(1106, 134, 23),
(1107, 134, 1),
(1108, 135, 23),
(1109, 135, 1),
(1110, 136, 23),
(1111, 136, 1),
(1112, 138, 23),
(1113, 138, 1),
(1116, 137, 23),
(1117, 137, 1),
(1118, 129, 23),
(1119, 129, 1),
(1122, 131, 23),
(1123, 131, 1),
(1126, 140, 25),
(1127, 140, 1),
(1128, 141, 25),
(1129, 141, 1),
(1130, 142, 25),
(1131, 142, 1),
(1134, 139, 25),
(1135, 139, 1),
(1136, 143, 1),
(1140, 146, 26),
(1141, 146, 1),
(1142, 148, 26),
(1143, 148, 1),
(1144, 147, 26),
(1145, 147, 1),
(1146, 144, 26),
(1151, 149, 26),
(1152, 150, 23),
(1153, 150, 1),
(1154, 1, 23),
(1155, 1, 1),
(1156, 145, 26),
(1157, 151, 23),
(1158, 151, 1),
(1159, 152, 23),
(1160, 152, 1),
(1161, 153, 23),
(1162, 153, 1),
(1163, 154, 23),
(1164, 154, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi`
--

CREATE TABLE `mutasi` (
  `id_mutasi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `tanggal_mutasi` date NOT NULL,
  `promosi` int(11) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `posisi_awal` varchar(200) DEFAULT NULL,
  `posisi_baru` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mutasi`
--

INSERT INTO `mutasi` (`id_mutasi`, `id_karyawan`, `tanggal_mutasi`, `promosi`, `grade`, `posisi_awal`, `posisi_baru`) VALUES
(1, 1, '2020-06-30', 1, '5A', 'Sekretaris', 'Manager'),
(4, 3, '2020-07-03', 0, '5d', 'nganggur', 'kasir'),
(5, 5, '2020-07-03', 1, '5c', 'null', 'bendahara'),
(6, 2, '2020-07-03', 0, '5c', '', 'jkas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `request`
--

CREATE TABLE `request` (
  `id_request` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keperluan_request` int(11) NOT NULL,
  `keterangan_request` text NOT NULL,
  `status_request` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `request`
--

INSERT INTO `request` (`id_request`, `id_karyawan`, `tanggal`, `keperluan_request`, `keterangan_request`, `status_request`) VALUES
(1, 1, '2020-06-30', 0, 'Liburan', 0);

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
(25, 'MANAGER'),
(23, 'ADMIN'),
(26, 'KARYAWAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `training`
--

CREATE TABLE `training` (
  `id_training` int(11) NOT NULL,
  `judul_training` varchar(200) NOT NULL,
  `waktu_training` date NOT NULL,
  `sertifikat_training` varchar(200) NOT NULL,
  `penyelenggara_training` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `training`
--

INSERT INTO `training` (`id_training`, `judul_training`, `waktu_training`, `sertifikat_training`, `penyelenggara_training`) VALUES
(1, 'Arsip', '2020-06-25', 'cek', 'cv gss');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tunjangan`
--

CREATE TABLE `tunjangan` (
  `id_tunjangan` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_mutasi` int(11) DEFAULT NULL,
  `perihal` varchar(200) NOT NULL,
  `status_karyawan` int(11) NOT NULL,
  `dp_buku_nikah` int(11) NOT NULL,
  `dp_surat_kelahiran` int(11) NOT NULL,
  `dp_surat_kematian` int(11) NOT NULL,
  `keterngan` text NOT NULL,
  `tanggal_berita` date NOT NULL,
  `jumlah_uang` int(11) NOT NULL,
  `status_tunjangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tunjangan`
--

INSERT INTO `tunjangan` (`id_tunjangan`, `id_karyawan`, `id_mutasi`, `perihal`, `status_karyawan`, `dp_buku_nikah`, `dp_surat_kelahiran`, `dp_surat_kematian`, `keterngan`, `tanggal_berita`, `jumlah_uang`, `status_tunjangan`) VALUES
(1, 1, 1, 'kelahiran', 1, 1, 1, 0, 'qq', '2020-11-11', 200000, 1),
(3, 5, 4, 'asa', 0, 1, 0, 0, 'as', '2020-07-02', 10000, 0),
(4, 3, 4, 'asda', 0, 1, 1, 0, 'asd', '2020-07-03', 10000, 0);

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
(605, 25, 41),
(606, 26, 42),
(607, 26, 45),
(608, 26, 46),
(609, 26, 47),
(610, 26, 49),
(612, 26, 49),
(616, 26, 50);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indeks untuk tabel `badan_usaha`
--
ALTER TABLE `badan_usaha`
  ADD PRIMARY KEY (`id_badan_usaha`);

--
-- Indeks untuk tabel `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id_content`);

--
-- Indeks untuk tabel `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indeks untuk tabel `ijin`
--
ALTER TABLE `ijin`
  ADD PRIMARY KEY (`id_ijin`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `kontrak`
--
ALTER TABLE `kontrak`
  ADD PRIMARY KEY (`id_kontrak`);

--
-- Indeks untuk tabel `kpi`
--
ALTER TABLE `kpi`
  ADD PRIMARY KEY (`id_kpi`);

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
-- Indeks untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id_mutasi`);

--
-- Indeks untuk tabel `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id_request`);

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
-- Indeks untuk tabel `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id_training`);

--
-- Indeks untuk tabel `tunjangan`
--
ALTER TABLE `tunjangan`
  ADD PRIMARY KEY (`id_tunjangan`);

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
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `badan_usaha`
--
ALTER TABLE `badan_usaha`
  MODIFY `id_badan_usaha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `content`
--
ALTER TABLE `content`
  MODIFY `id_content` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ijin`
--
ALTER TABLE `ijin`
  MODIFY `id_ijin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kontrak`
--
ALTER TABLE `kontrak`
  MODIFY `id_kontrak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kpi`
--
ALTER TABLE `kpi`
  MODIFY `id_kpi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1132;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  MODIFY `id_menu_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1165;

--
-- AUTO_INCREMENT untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `request`
--
ALTER TABLE `request`
  MODIFY `id_request` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `system_role`
--
ALTER TABLE `system_role`
  MODIFY `id_system_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `training`
--
ALTER TABLE `training`
  MODIFY `id_training` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tunjangan`
--
ALTER TABLE `tunjangan`
  MODIFY `id_tunjangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_user_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
