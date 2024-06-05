-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 31, 2022 at 09:28 PM
-- Server version: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PakarLaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `apotik`
--

CREATE TABLE `apotik` (
  `id` int(50) NOT NULL,
  `nama_apotik` varchar(225) NOT NULL,
  `lat` varchar(225) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apotik`
--

INSERT INTO `apotik` (`id`, `nama_apotik`, `lat`, `lng`, `alamat`, `gambar`) VALUES
(6, 'ewew', '-3.980618', '122.5062965', 'swewewef', '1639403911.png'),
(7, 'erwr', '-3.980618', '122.5062965', 'ewdwdwdca', '1639403934.png'),
(9, 'smp', '-4.00267924918114', '122.5273325086395', 'wewerwr', '1639991179.png');

-- --------------------------------------------------------

--
-- Table structure for table `aturan`
--

CREATE TABLE `aturan` (
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `gejala_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aturan`
--

INSERT INTO `aturan` (`penyakit_id`, `gejala_id`) VALUES
(8, 28),
(8, 31),
(8, 32),
(8, 34),
(8, 35),
(9, 32),
(9, 33),
(9, 34),
(9, 35),
(9, 36),
(9, 37),
(9, 74),
(10, 36),
(10, 37),
(10, 38),
(10, 57),
(12, 28),
(12, 35),
(12, 38),
(13, 33),
(14, 28),
(14, 32),
(14, 36),
(15, 28),
(15, 33),
(15, 39),
(15, 45),
(15, 57),
(16, 28),
(16, 43),
(16, 50);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id` int(10) UNSIGNED NOT NULL,
  `pasien_id` int(10) UNSIGNED NOT NULL,
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `persentase` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`id`, `pasien_id`, `penyakit_id`, `persentase`) VALUES
(26, 35, 14, 20),
(27, 35, 13, 60),
(28, 35, 12, 20),
(29, 36, 12, 56),
(30, 36, 14, 28),
(31, 36, 15, 17),
(32, 37, 12, 38),
(33, 37, 14, 38),
(34, 37, 15, 23),
(35, 38, 14, 62),
(36, 38, 15, 38),
(37, 39, 14, 100),
(38, 40, 12, 24),
(39, 40, 14, 48),
(40, 40, 15, 29),
(41, 41, 12, 38),
(42, 41, 14, 38),
(43, 41, 15, 23),
(44, 44, 14, 100),
(45, 47, 14, 100),
(46, 48, 12, 62),
(47, 48, 15, 38),
(48, 49, 12, 38),
(49, 49, 14, 38),
(50, 49, 15, 23),
(51, 50, 12, 22),
(52, 50, 14, 44),
(53, 50, 15, 13),
(54, 50, 16, 22),
(55, 51, 13, 65),
(56, 51, 15, 13),
(57, 51, 12, 22),
(58, 66, 14, 100),
(59, 73, 12, 67),
(60, 73, 15, 33),
(61, 76, 14, 67),
(62, 76, 15, 33),
(63, 78, 13, 44),
(64, 78, 15, 11),
(65, 78, 12, 22),
(66, 78, 14, 22),
(67, 79, 13, 80),
(68, 79, 15, 20),
(69, 83, 14, 67),
(70, 83, 15, 33),
(71, 86, 16, 100),
(72, 87, 15, 100),
(73, 88, 14, 100);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `name`, `created_at`, `updated_at`) VALUES
(30, 'Gelisahh', '2020-12-09 10:04:08', '2021-12-19 05:39:35'),
(31, 'Kelelahan', '2020-12-09 10:04:26', '2020-12-09 10:04:26'),
(32, 'Luka antara gusi dan gigi', '2020-12-09 10:04:38', '2020-12-09 10:04:38'),
(33, 'Benjolan di bagian kepala, leher, atau rahang', '2020-12-09 10:04:52', '2020-12-09 10:04:52'),
(34, 'Demam', '2020-12-09 10:05:06', '2020-12-09 10:05:06'),
(35, 'Gusi mudah berdarah', '2020-12-09 10:05:18', '2020-12-09 10:05:18'),
(36, 'Kelenjar getah bening di bagian bawah rahang sering bengkak', '2020-12-09 10:05:30', '2020-12-09 10:05:30'),
(37, 'Nyeri pada saat menelan makanan', '2020-12-09 10:05:54', '2020-12-09 10:05:54'),
(38, 'Nyeri pada mulut', '2020-12-09 10:06:15', '2020-12-09 10:06:15'),
(39, 'Kehilangan selera makan', '2020-12-09 10:06:27', '2020-12-09 10:06:27'),
(40, 'Bengkak pada gusi', '2020-12-09 10:06:39', '2020-12-09 10:06:39'),
(41, 'Sakit pada saat membuka mulut', '2020-12-09 10:06:49', '2020-12-09 10:06:49'),
(42, 'Pada sudut mulut pecah-pecah dan kemerahan', '2020-12-09 10:07:03', '2020-12-09 10:07:03'),
(43, 'Radang pada lidah', '2020-12-09 10:07:17', '2020-12-09 10:07:17'),
(44, 'Pembengkakan kelenjar getah bening di leher', '2020-12-09 10:07:34', '2020-12-09 10:07:34'),
(45, 'Permukaan lidah halus', '2020-12-09 10:07:45', '2020-12-09 10:07:45'),
(46, 'Sakit saat mengunyah makanan', '2020-12-09 10:07:56', '2020-12-09 10:07:56'),
(47, 'Lidah berwarna merah keputihan', '2020-12-09 10:08:07', '2020-12-09 10:08:07'),
(48, 'Alergi pada pasta gigi dan obat kumur', '2020-12-09 10:08:31', '2020-12-09 10:08:31'),
(49, 'Nyeri saat gigi tertekan oleh makanan', '2020-12-09 10:08:43', '2020-12-09 10:08:43'),
(50, 'Sulit mengunyah, menelan, dan berbicara', '2020-12-09 10:08:56', '2020-12-09 10:08:56'),
(51, 'Ujung gusi mengalami pengikisan', '2020-12-09 10:09:14', '2020-12-09 10:09:14'),
(52, 'Bintik kuning, putih, di dalam mulut', '2020-12-09 10:09:24', '2020-12-09 10:09:24'),
(53, 'Kulit terkelupas', '2020-12-09 10:09:37', '2020-12-09 10:09:37'),
(54, 'Pusing', '2020-12-09 10:09:58', '2020-12-09 10:09:58'),
(55, 'Pendarahan apabila gusi tergores', '2020-12-09 10:10:12', '2020-12-09 10:10:12'),
(56, 'Timbul kerak yang berlebihan', '2020-12-09 10:10:24', '2020-12-09 10:10:24'),
(57, 'Tubuh terasa meriang dan pegal-pegal', '2020-12-09 10:10:34', '2020-12-09 10:10:34'),
(58, 'Merintih kecil', '2020-12-09 10:10:48', '2020-12-09 10:10:48'),
(59, 'Bibir terasa kering', '2020-12-09 10:11:00', '2020-12-09 10:11:00'),
(60, 'Luka terbuka lebar pada mulut', '2020-12-09 10:11:18', '2020-12-09 10:11:18'),
(61, 'Gusi berwarna merah terang', '2020-12-09 10:11:30', '2020-12-09 10:11:30'),
(62, 'Banyak luka terbuka berwarna putih dan kuning pada mulut', '2020-12-09 10:11:43', '2020-12-09 10:11:43'),
(63, 'Perih di sekitar luka pada mulut', '2020-12-09 10:11:52', '2020-12-09 10:11:52'),
(64, 'Sakit dan bercak gatal di mulut dan kulit', '2020-12-09 10:12:06', '2020-12-09 10:12:06'),
(65, 'Perbedaan warna pada kulit sekitar mulut', '2020-12-09 10:12:18', '2020-12-09 10:12:18'),
(66, 'Kesemutan pada wilayah bibir', '2020-12-09 10:12:30', '2020-12-09 10:12:30'),
(67, 'Gusi menyerupai keju', '2020-12-09 10:12:43', '2020-12-09 10:12:43'),
(68, 'Di dalam mulut seperti terdapat kapas', '2020-12-09 10:12:53', '2020-12-09 10:12:53'),
(69, 'Gatal dan iritasi pada bagian bibir dan mulut', '2020-12-09 10:13:06', '2020-12-09 10:13:06'),
(70, 'Rasa nyeri dan sakit pada bibir dan mulut', '2020-12-09 10:13:19', '2020-12-09 10:13:19'),
(71, 'Muncul nanah pada mulut', '2020-12-09 10:13:30', '2020-12-09 10:13:30'),
(72, 'Pusing dan meriang', '2020-12-09 10:13:40', '2020-12-09 10:13:40'),
(73, 'Lecet pada bibir dan mulut', '2020-12-09 10:13:49', '2020-12-09 10:13:49'),
(74, 'Nyeri pada gusi', '2020-12-09 10:13:58', '2020-12-09 10:13:58'),
(75, 'Sakit tenggorokan', '2020-12-09 10:14:12', '2020-12-09 10:14:12'),
(76, 'Terjadi papular, lesi vesikular pada mukosa mulut', '2020-12-09 10:14:28', '2020-12-09 10:14:28'),
(77, 'Terjadi popular, lesi vesikular pada mukosa faringeal', '2020-12-09 10:14:37', '2020-12-09 10:14:37'),
(78, 'panas dingin', '2020-12-11 15:24:44', '2020-12-11 15:24:44'),
(79, 'muntah-muntah', '2020-12-14 22:45:49', '2020-12-14 22:45:49'),
(80, 'gigi berlubang', '2021-04-05 02:43:00', '2021-04-05 02:43:00'),
(81, 'batuk berdahak', '2021-12-13 04:52:06', '2021-12-13 04:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `kelamin`
--

CREATE TABLE `kelamin` (
  `id` int(11) NOT NULL,
  `js_kelamin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelamin`
--

INSERT INTO `kelamin` (`id`, `js_kelamin`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(5) NOT NULL,
  `link` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `link`) VALUES
(2, 'srfegressgert');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_01_195049_create_gejala_table', 1),
(4, '2017_07_01_195148_create_penyakit_table', 1),
(5, '2017_07_02_031810_create_gejala_penyakit_table', 1),
(6, '2017_07_02_062333_create_pasien_table', 1),
(7, '2017_07_02_085613_create_tmp_diagnosa_table', 1),
(8, '2017_07_09_081816_create_diagnosa_table', 1),
(9, '2017_07_09_111229_create_tmp_gejala_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 2),
(13, '2020_12_10_154125_add_field_level_user', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pakar`
--

CREATE TABLE `pakar` (
  `id` int(10) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `biografi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pakar`
--

INSERT INTO `pakar` (`id`, `nama`, `biografi`, `gambar`) VALUES
(7, 'Healthcare for Kids', 'Voluptate aperiam esse possimus maxime repellendus, nihil quod accusantium .', '1639991345.jpg'),
(8, 'Medical Counseling', 'Voluptate aperiam esse possimus maxime repellendus, nihil quod accusantium .', '1639991379.jpg'),
(9, 'Modern Equipments', 'Voluptate aperiam esse possimus maxime repellendus, nihil quod accusantium .', '1639991402.jpg'),
(10, 'Qualified Doctors', 'Voluptate aperiam esse possimus maxime repellendus, nihil quod accusantium .', '1639991429.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lokasi` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_telpon` int(11) NOT NULL,
  `kelamin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `lokasi`, `created_at`, `updated_at`, `tgl_lahir`, `no_telpon`, `kelamin_id`) VALUES
(28, 'wahid', 'kendari', '2021-04-04 07:25:57', '2021-04-04 07:25:57', '2021-04-08', 3435, 2),
(29, 'wahid', 'kendari', '2021-04-04 07:26:17', '2021-04-04 07:26:17', '2021-04-08', 3435, 2),
(30, 'wahid', 'kendari', '2021-04-04 07:26:26', '2021-04-04 07:26:26', '2021-04-08', 3435, 2),
(31, 'wahid', 'kendari', '2021-04-04 07:26:37', '2021-04-04 07:26:37', '2021-04-08', 3435, 2),
(32, 'wahid', 'kendari', '2021-04-04 07:27:18', '2021-04-04 07:27:18', '2021-04-08', 3435, 2),
(33, 'wahid', 'kendari', '2021-04-04 07:27:45', '2021-04-04 07:27:45', '2021-04-08', 3435, 2),
(34, 'wahid', 'kendari', '2021-04-04 07:30:04', '2021-04-04 07:30:04', '2021-04-08', 3435, 2),
(35, 'wahid', 'kendari', '2021-04-04 07:30:38', '2021-04-04 07:30:38', '2021-04-08', 4343, 2),
(36, 'wahid', 'kendari', '2021-04-05 02:45:49', '2021-04-05 02:45:49', '2021-04-07', 84375, 1),
(37, 'pasien 2', 'kendari', '2021-04-05 02:49:45', '2021-04-05 02:49:45', '2021-04-08', 856, 2),
(38, 'wahid', 'kendari', '2021-04-17 06:11:38', '2021-04-17 06:11:38', '2021-04-14', 8453, 1),
(39, 'wahid', 'kendari', '2021-04-19 01:53:07', '2021-04-19 01:53:07', '2021-04-08', 845, 1),
(40, 'adni', 'kendari', '2021-04-19 01:56:40', '2021-04-19 01:56:40', '2021-04-07', 8454, 2),
(41, 'wahid', 'surabaya', '2021-04-19 03:23:31', '2021-04-19 03:23:31', '2021-04-14', 7575, 1),
(42, 'wahid', 'kendari', '2021-04-19 05:19:36', '2021-04-19 05:19:36', '2021-04-14', 9546, 2),
(43, 'wahid', 'kendari', '2021-04-19 05:39:34', '2021-04-19 05:39:34', '2021-04-14', 9546, 2),
(44, 'riki', 'karawang', '2021-04-19 05:44:34', '2021-04-19 05:44:34', '2021-04-15', 6765, 1),
(45, 'wahid', 'kendari', '2021-04-19 07:45:25', '2021-04-19 07:45:25', '2021-04-08', 4645, 1),
(46, 'rini', 'kendari', '2021-04-19 07:46:10', '2021-04-19 07:46:10', '2021-04-14', 3955, 1),
(47, 'rini', 'kendari', '2021-04-19 07:47:49', '2021-04-19 07:47:49', '2021-04-14', 3434, 1),
(48, 'wahid', 'jakarta', '2021-04-19 07:48:39', '2021-04-19 07:48:39', '2021-04-15', 343, 1),
(49, 'rini', 'karawang', '2021-04-22 03:30:12', '2021-04-22 03:30:12', '2021-04-15', 854, 1),
(50, 'wahid', 'edw', '2021-04-25 19:37:59', '2021-04-25 19:37:59', '2021-04-07', 773, 1),
(51, 'wahid', 'kendari', '2021-04-30 05:16:26', '2021-04-30 05:16:26', '2021-03-31', 2131, 1),
(52, 'wahid safri jayanto', 'bombana', '2021-12-12 22:42:49', '2021-12-12 22:42:49', '2021-12-10', 213456, 1),
(53, 'wahid safri jayanto', 'bombana', '2021-12-12 22:44:33', '2021-12-12 22:44:33', '2021-12-10', 213456, 1),
(54, 'wahid safri jayanto', 'bombana', '2021-12-12 22:47:34', '2021-12-12 22:47:34', '2021-12-10', 213456, 1),
(55, 'wahid safri jayanto', 'bombana', '2021-12-12 22:49:40', '2021-12-12 22:49:40', '2021-12-10', 213456, 1),
(56, 'wahid safri jayanto', 'bombana', '2021-12-12 22:51:04', '2021-12-12 22:51:04', '2021-12-10', 213456, 1),
(57, 'wahid safri jayanto', 'bombana', '2021-12-12 22:51:51', '2021-12-12 22:51:51', '2021-12-10', 213456, 1),
(58, 'wahid safri jayanto', 'bombana', '2021-12-12 22:52:32', '2021-12-12 22:52:32', '2021-12-10', 213456, 1),
(59, 'wahid', 'kendari', '2021-12-12 22:53:50', '2021-12-12 22:53:50', '2021-12-09', 213456, 1),
(60, 'komputer', 'kendari', '2021-12-12 22:55:43', '2021-12-12 22:55:43', '2021-12-03', 213456, 1),
(61, 'wahid', 'kendari', '2021-12-12 22:57:00', '2021-12-12 22:57:00', '2021-12-08', 213456, 2),
(62, 'wahid', 'kendari', '2021-12-12 22:57:38', '2021-12-12 22:57:38', '2021-12-08', 213456, 2),
(63, 'wahid', 'kendari', '2021-12-12 22:57:51', '2021-12-12 22:57:51', '2021-12-08', 213456, 2),
(64, 'wahid', 'kendari', '2021-12-12 22:58:24', '2021-12-12 22:58:24', '2021-12-08', 213456, 2),
(65, 'wahidsafri jayanto', 'kendari', '2021-12-12 22:59:14', '2021-12-12 22:59:14', '2021-12-08', 213456, 1),
(66, 'wahidsafri jayanto', 'kendari', '2021-12-12 23:00:57', '2021-12-12 23:00:57', '2021-12-08', 213456, 1),
(67, 'komputer', 'kendari', '2021-12-13 02:24:36', '2021-12-13 02:24:36', '2021-12-17', 134546, 2),
(68, 'komputer', 'kendari', '2021-12-13 02:25:46', '2021-12-13 02:25:46', '2021-12-17', 134546, 2),
(69, 'komputer', 'kendari', '2021-12-13 02:26:37', '2021-12-13 02:26:37', '2021-12-17', 134546, 2),
(70, 'komputer', 'kendari', '2021-12-13 02:27:33', '2021-12-13 02:27:33', '2021-12-17', 134546, 2),
(71, 'komputer', 'kendari', '2021-12-13 02:30:29', '2021-12-13 02:30:29', '2021-12-22', 213456, 1),
(72, 'wahid', 'kendari', '2021-12-13 02:33:26', '2021-12-13 02:33:26', '2021-12-03', 213456, 1),
(73, 'komputer', 'kendari', '2021-12-18 04:54:37', '2021-12-18 04:54:37', '2021-12-08', 134546, 2),
(74, 'komputer', 'kendari', '2021-12-18 05:13:45', '2021-12-18 05:13:45', '2021-12-08', 134546, 2),
(75, 'komputer', 'sdfsf', '2021-12-18 05:15:44', '2021-12-18 05:15:44', '2021-12-01', 213456, 2),
(76, 'komputer', 'kendari', '2021-12-18 05:17:57', '2021-12-18 05:17:57', '2021-12-04', 134546, 2),
(77, 'komputer', 'kendari', '2021-12-18 05:27:09', '2021-12-18 05:27:09', '2021-12-04', 134546, 2),
(78, 'komputer', 'kendari', '2021-12-18 05:28:26', '2021-12-18 05:28:26', '2021-12-08', 213456, 1),
(79, 'wahid', 'kendari', '2021-12-18 06:19:26', '2021-12-18 06:19:26', '2021-12-15', 213456, 2),
(80, 'komputer', 'kendari', '2021-12-18 06:22:12', '2021-12-18 06:22:12', '2021-12-10', 213456, 2),
(81, 'komputer', 'kendari', '2021-12-18 06:23:07', '2021-12-18 06:23:07', '2021-12-10', 213456, 2),
(82, 'komputer', 'kendari', '2021-12-18 06:25:52', '2021-12-18 06:25:52', '2021-12-10', 213456, 2),
(83, 'komputer', 'kendari', '2021-12-18 06:26:12', '2021-12-18 06:26:12', '2021-12-03', 213456, 1),
(84, 'komputer', 'kendari', '2021-12-18 06:26:47', '2021-12-18 06:26:47', '2021-12-03', 213456, 1),
(85, 'komputer', 'kendari', '2021-12-18 06:27:39', '2021-12-18 06:27:39', '2021-12-03', 213456, 1),
(86, 'komputer', 'kendari', '2021-12-18 06:28:42', '2021-12-18 06:28:42', '2021-12-09', 213456, 1),
(87, 'komputer', 'kendari', '2021-12-20 00:45:21', '2021-12-20 00:45:21', '2021-12-10', 213456, 1),
(88, 'wahid', 'kendari', '2021-12-21 02:02:00', '2021-12-21 02:02:00', '2021-12-15', 213456, 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definisi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `penyebab` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `solusi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama`, `definisi`, `penyebab`, `created_at`, `updated_at`, `solusi_id`) VALUES
(12, 'kanker', 'kenker berbahaya', 'gigi berlubang', '2020-12-10 12:16:20', '2020-12-10 12:16:20', 2),
(13, 'rtyu', 'ertyujk', 'ertyui', '2020-12-10 19:33:26', '2020-12-10 19:33:26', 2),
(14, 'liver', 'lever adalah penyakit berat', 'kulit pucat', '2020-12-14 22:45:04', '2020-12-14 22:45:04', 4),
(15, 'gigi berlubang', 'penyakit berebahaya', 'jarang gosok gigi', '2021-04-05 02:44:42', '2021-04-05 02:44:42', 6),
(16, 'Radang tenggorokan', 'djdsjfjs', 'kurang minum', '2021-04-25 19:31:08', '2021-04-25 19:31:08', 4);

-- --------------------------------------------------------

--
-- Table structure for table `solusi`
--

CREATE TABLE `solusi` (
  `id` int(11) NOT NULL,
  `nama_solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solusi`
--

INSERT INTO `solusi` (`id`, `nama_solusi`) VALUES
(2, 'perbanyak minum air putih'),
(3, 'konsumsi lasegar'),
(4, 'perbanyak makan vitamin c'),
(5, 'erewfe'),
(6, 'pergi ke dokter'),
(7, 'sakit kepala'),
(8, 'cek dulu ke dokter'),
(9, 'sfdsfs'),
(10, 'ewe3w2');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_diagnosa`
--

CREATE TABLE `tmp_diagnosa` (
  `pasien_id` int(10) UNSIGNED DEFAULT NULL,
  `penyakit_id` int(10) UNSIGNED DEFAULT NULL,
  `gejala` int(10) UNSIGNED DEFAULT NULL,
  `gejala_terpenuhi` int(10) UNSIGNED DEFAULT NULL,
  `persen` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmp_diagnosa`
--

INSERT INTO `tmp_diagnosa` (`pasien_id`, `penyakit_id`, `gejala`, `gejala_terpenuhi`, `persen`) VALUES
(35, 14, 3, 1, 33),
(35, 13, 1, 1, 100),
(35, 12, 3, 1, 33),
(36, 12, 3, 2, 67),
(36, 14, 3, 1, 33),
(36, 15, 5, 1, 20),
(37, 12, 3, 1, 33),
(37, 14, 3, 1, 33),
(37, 15, 5, 1, 20),
(38, 14, 3, 1, 33),
(38, 15, 5, 1, 20),
(39, 14, 3, 1, 33),
(40, 12, 3, 1, 33),
(40, 14, 3, 2, 67),
(40, 15, 5, 2, 40),
(41, 12, 3, 1, 33),
(41, 14, 3, 1, 33),
(41, 15, 5, 1, 20),
(44, 14, 3, 1, 33),
(47, 14, 3, 1, 33),
(48, 12, 3, 1, 33),
(48, 15, 5, 1, 20),
(49, 12, 3, 1, 33),
(49, 14, 3, 1, 33),
(49, 15, 5, 1, 20),
(50, 12, 3, 1, 33),
(50, 14, 3, 2, 67),
(50, 15, 5, 1, 20),
(50, 16, 3, 1, 33),
(51, 13, 1, 1, 100),
(51, 15, 5, 1, 20),
(51, 12, 3, 1, 33),
(66, 14, 3, 2, 67),
(73, 12, 2, 1, 50),
(73, 15, 4, 1, 25),
(76, 14, 2, 1, 50),
(76, 15, 4, 1, 25),
(78, 13, 1, 1, 100),
(78, 15, 4, 1, 25),
(78, 12, 2, 1, 50),
(78, 14, 2, 1, 50),
(79, 13, 1, 1, 100),
(79, 15, 4, 1, 25),
(83, 14, 2, 1, 50),
(83, 15, 4, 1, 25),
(86, 16, 2, 1, 50),
(87, 15, 4, 1, 25),
(88, 14, 2, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `pasien_id` int(10) UNSIGNED NOT NULL,
  `gejala_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`pasien_id`, `gejala_id`) VALUES
(2, 1),
(2, 4),
(2, 23),
(3, 1),
(3, 25),
(4, 2),
(4, 4),
(4, 8),
(4, 20),
(5, 35),
(5, 40),
(5, 43),
(5, 44),
(5, 45),
(5, 46),
(5, 68),
(6, 28),
(6, 39),
(6, 42),
(6, 44),
(7, 28),
(7, 29),
(7, 31),
(7, 32),
(7, 34),
(7, 47),
(7, 49),
(8, 28),
(8, 30),
(9, 28),
(9, 44),
(9, 50),
(9, 70),
(10, 29),
(10, 33),
(11, 28),
(11, 29),
(12, 28),
(12, 30),
(12, 32),
(12, 34),
(12, 40),
(13, 28),
(13, 31),
(13, 34),
(13, 38),
(14, 28),
(14, 33),
(14, 39),
(15, 28),
(15, 34),
(15, 47),
(15, 49),
(15, 51),
(15, 65),
(15, 66),
(16, 28),
(16, 35),
(16, 42),
(16, 45),
(16, 52),
(16, 55),
(16, 72),
(17, 36),
(17, 77),
(19, 28),
(19, 30),
(19, 32),
(19, 34),
(19, 35),
(19, 49),
(34, 50),
(34, 52),
(34, 53),
(34, 66),
(34, 68),
(34, 69),
(35, 29),
(35, 32),
(35, 33),
(35, 35),
(36, 28),
(36, 35),
(36, 48),
(36, 59),
(37, 28),
(37, 50),
(37, 52),
(37, 70),
(38, 32),
(38, 42),
(38, 45),
(38, 79),
(39, 32),
(39, 52),
(39, 77),
(40, 28),
(40, 36),
(40, 57),
(41, 28),
(41, 40),
(42, 34),
(42, 42),
(42, 73),
(43, 63),
(44, 30),
(44, 36),
(44, 52),
(45, 43),
(46, 34),
(46, 52),
(47, 32),
(47, 61),
(48, 35),
(48, 57),
(49, 28),
(49, 78),
(50, 28),
(50, 29),
(50, 30),
(50, 31),
(50, 32),
(51, 29),
(51, 33),
(51, 38),
(66, 32),
(66, 36),
(66, 47),
(66, 62),
(66, 80),
(73, 35),
(73, 39),
(73, 42),
(74, 78),
(74, 81),
(75, 34),
(75, 42),
(75, 53),
(75, 63),
(76, 36),
(76, 39),
(76, 48),
(76, 60),
(76, 71),
(76, 81),
(77, 77),
(77, 79),
(78, 33),
(78, 35),
(78, 36),
(78, 62),
(79, 33),
(79, 34),
(79, 37),
(79, 44),
(83, 36),
(83, 39),
(83, 49),
(83, 63),
(84, 62),
(84, 64),
(84, 66),
(84, 77),
(85, 31),
(85, 37),
(85, 40),
(85, 53),
(85, 65),
(86, 40),
(86, 41),
(86, 48),
(86, 50),
(86, 70),
(87, 39),
(87, 41),
(87, 70),
(88, 32),
(88, 37),
(88, 44),
(88, 47),
(88, 51);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(9, 'adminis', 'admin@gmail.com', '$2y$10$Y9MmyIuOmL3OrHX2IiaP9er0a2oZsT5ihaiqDJtFoiwh/5hrjBLCm', NULL, '2021-03-22 10:12:37', '2022-03-31 05:19:31', 'admin'),
(12, 'wahid safri', 'wahid@admin.com', '$2y$10$Z.2nheIe1sV1uRCM9dKgOOTkvPrv1XhVKW2LoaF1CyReOO//./oq.', NULL, '2021-12-10 09:19:06', '2021-12-10 09:19:06', 'pasien');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apotik`
--
ALTER TABLE `apotik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`penyakit_id`,`gejala_id`);

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnosa_pasien_id_foreign` (`pasien_id`),
  ADD KEY `diagnosa_penyakit_id_foreign` (`penyakit_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelamin`
--
ALTER TABLE `kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakar`
--
ALTER TABLE `pakar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelamin_id` (`kelamin_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solusi_id` (`solusi_id`);

--
-- Indexes for table `solusi`
--
ALTER TABLE `solusi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_diagnosa`
--
ALTER TABLE `tmp_diagnosa`
  ADD KEY `tmp_diagnosa_pasien_id_foreign` (`pasien_id`),
  ADD KEY `tmp_diagnosa_penyakit_id_foreign` (`penyakit_id`);

--
-- Indexes for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD PRIMARY KEY (`pasien_id`,`gejala_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apotik`
--
ALTER TABLE `apotik`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `kelamin`
--
ALTER TABLE `kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pakar`
--
ALTER TABLE `pakar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `solusi`
--
ALTER TABLE `solusi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD CONSTRAINT `diagnosa_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diagnosa_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`kelamin_id`) REFERENCES `kelamin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD CONSTRAINT `penyakit_ibfk_1` FOREIGN KEY (`solusi_id`) REFERENCES `solusi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tmp_diagnosa`
--
ALTER TABLE `tmp_diagnosa`
  ADD CONSTRAINT `tmp_diagnosa_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tmp_diagnosa_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
