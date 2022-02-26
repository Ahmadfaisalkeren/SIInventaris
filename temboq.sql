-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 03:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temboq`
--

-- --------------------------------------------------------

--
-- Table structure for table `databarang`
--

CREATE TABLE `databarang` (
  `id_barang` int(10) UNSIGNED NOT NULL,
  `id_laboratorium` int(10) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `id` int(11) NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `databarang`
--

INSERT INTO `databarang` (`id_barang`, `id_laboratorium`, `kode_barang`, `nama_barang`, `asal_barang`, `id_kategori`, `id`, `merk`, `tahun`, `kondisi`, `satuan`, `created_at`, `updated_at`) VALUES
(1, 1, 'HRW000001', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:40:30', '2022-01-02 04:18:55'),
(2, 1, 'HRW000002', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:42:59', '2022-01-02 04:25:42'),
(3, 1, 'HRW000003', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:43:29', '2022-01-02 04:19:02'),
(4, 1, 'HRW000004', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:44:32', '2021-12-06 05:44:32'),
(5, 1, 'HRW000005', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:45:28', '2021-12-06 05:45:28'),
(6, 1, 'HRW000006', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:46:02', '2021-12-06 05:46:02'),
(7, 1, 'HRW000007', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:47:04', '2021-12-06 05:47:04'),
(8, 1, 'HRW000008', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:47:38', '2021-12-06 05:47:38'),
(9, 1, 'HRW000009', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:48:12', '2021-12-06 05:48:12'),
(10, 1, 'HRW000010', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:48:45', '2021-12-06 05:48:45'),
(11, 1, 'HRW000011', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:49:05', '2021-12-06 05:49:05'),
(12, 1, 'HRW000012', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:49:37', '2021-12-06 05:49:37'),
(13, 1, 'HRW000013', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:49:57', '2021-12-06 05:49:57'),
(14, 1, 'HRW000014', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:50:16', '2021-12-06 05:50:16'),
(15, 1, 'HRW000015', 'PC user MSI 7758 core i5', 'Yayasan', 1, 6, 'MSI', 2013, 'Normal', 'Unit', '2021-12-06 05:50:35', '2021-12-06 05:50:35'),
(16, 1, 'HRW000016', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:01:25', '2021-12-06 06:01:25'),
(17, 1, 'HRW000017', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:02:16', '2021-12-06 06:02:16'),
(18, 1, 'HRW000018', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:03:21', '2021-12-06 06:03:21'),
(19, 1, 'HRW000019', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:04:31', '2021-12-06 06:04:31'),
(20, 1, 'HRW000020', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:05:03', '2021-12-06 06:05:03'),
(21, 1, 'HRW000021', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:05:34', '2021-12-06 06:05:34'),
(22, 1, 'HRW000022', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:06:33', '2021-12-06 06:06:33'),
(23, 1, 'HRW000023', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:07:09', '2021-12-06 06:07:09'),
(24, 1, 'HRW000024', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:07:31', '2021-12-06 06:07:31'),
(25, 1, 'HRW000025', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:08:03', '2021-12-06 06:08:03'),
(26, 1, 'HRW000026', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:08:36', '2021-12-06 06:08:36'),
(27, 1, 'HRW000027', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:08:59', '2021-12-06 06:08:59'),
(28, 1, 'HRW000028', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:09:24', '2021-12-06 06:09:24'),
(29, 1, 'HRW000029', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:09:43', '2021-12-06 06:09:43'),
(30, 1, 'HRW000030', 'Monitor AOC 17\"', 'Yayasan', 5, 6, 'AOC', 2013, 'Normal', 'Unit', '2021-12-06 06:10:04', '2021-12-06 06:10:04'),
(31, 1, 'HRW000031', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:20:07', '2021-12-06 06:20:07'),
(32, 1, 'HRW000032', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:21:40', '2021-12-06 06:21:40'),
(33, 1, 'HRW000033', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:23:50', '2021-12-06 06:23:50'),
(34, 1, 'HRW000034', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:24:18', '2021-12-06 06:24:18'),
(35, 1, 'HRW000035', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:24:42', '2021-12-06 06:24:42'),
(36, 1, 'HRW000036', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:25:30', '2021-12-06 06:25:30'),
(37, 1, 'HRW000037', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:26:33', '2021-12-06 06:26:33'),
(38, 1, 'HRW000038', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:27:09', '2021-12-06 06:27:09'),
(39, 1, 'HRW000039', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:27:39', '2021-12-06 06:27:39'),
(40, 1, 'HRW000040', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:30:25', '2021-12-06 06:30:25'),
(41, 1, 'HRW000041', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:32:17', '2021-12-06 06:32:17'),
(42, 1, 'HRW000042', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:32:43', '2021-12-06 06:32:43'),
(43, 1, 'HRW000043', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:33:09', '2021-12-06 06:33:09'),
(44, 1, 'HRW000044', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Rusak', 'Unit', '2021-12-06 06:33:53', '2021-12-06 06:33:53'),
(45, 1, 'HRW000045', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Rusak', 'Unit', '2021-12-06 06:34:30', '2021-12-06 06:34:47'),
(46, 1, 'HRW000046', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:37:56', '2021-12-06 06:37:56'),
(47, 1, 'HRW000047', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:38:46', '2021-12-06 06:38:46'),
(48, 1, 'HRW000048', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:39:18', '2021-12-06 06:39:18'),
(49, 1, 'HRW000049', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:40:25', '2021-12-06 06:40:25'),
(50, 1, 'HRW000050', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:44:51', '2021-12-06 06:44:51'),
(51, 1, 'HRW000051', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:45:30', '2021-12-06 06:45:30'),
(52, 1, 'HRW000052', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:46:11', '2021-12-06 06:46:11'),
(53, 1, 'HRW000053', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:46:43', '2021-12-06 06:46:43'),
(54, 1, 'HRW000054', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:47:16', '2021-12-06 06:47:16'),
(55, 1, 'HRW000055', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:47:39', '2021-12-06 06:47:39'),
(56, 1, 'HRW000056', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:48:36', '2021-12-06 06:48:36'),
(57, 1, 'HRW000057', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:49:11', '2021-12-06 06:49:11'),
(58, 1, 'HRW000058', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:52:14', '2021-12-06 06:52:14'),
(59, 1, 'HRW000059', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:52:40', '2021-12-06 06:52:40'),
(60, 1, 'HRW000060', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:54:39', '2021-12-06 06:54:39'),
(61, 1, 'HRW000061', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:55:55', '2021-12-06 06:55:55'),
(62, 1, 'HRW000062', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:56:38', '2021-12-06 06:56:38'),
(63, 1, 'HRW000063', 'Kursi tanpa meja', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 06:57:06', '2021-12-06 06:57:06'),
(64, 1, 'HRW000064', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 06:57:31', '2021-12-06 07:03:10'),
(65, 1, 'HRW000065', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:05:06', '2021-12-06 07:05:06'),
(66, 1, 'HRW000066', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:05:35', '2021-12-06 07:05:35'),
(67, 1, 'HRW000067', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:06:19', '2021-12-06 07:06:19'),
(68, 1, 'HRW000068', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:07:09', '2021-12-06 07:07:27'),
(69, 1, 'HRW000069', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:08:16', '2021-12-06 07:08:16'),
(70, 1, 'HRW000070', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:09:00', '2021-12-06 07:09:00'),
(71, 1, 'HRW000071', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:09:24', '2021-12-06 07:09:24'),
(72, 1, 'HRW000072', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:10:07', '2021-12-06 07:10:07'),
(73, 1, 'HRW000073', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:10:30', '2021-12-06 07:10:30'),
(74, 1, 'HRW000074', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:10:53', '2021-12-06 07:10:53'),
(75, 1, 'HRW000075', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:11:22', '2021-12-06 07:11:22'),
(76, 1, 'HRW000076', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:12:15', '2021-12-06 07:12:15'),
(77, 1, 'HRW000077', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:12:46', '2021-12-06 07:12:46'),
(78, 1, 'HRW000078', 'Keyboard Logitech K-100', 'Yayasan', 6, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:13:12', '2021-12-06 07:13:12'),
(79, 1, 'HRW000079', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:15:43', '2021-12-06 07:15:43'),
(80, 1, 'HRW000080', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:16:54', '2021-12-06 07:16:54'),
(81, 1, 'HRW000081', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:17:18', '2021-12-06 07:17:18'),
(82, 1, 'HRW000082', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:17:49', '2021-12-06 07:17:49'),
(83, 1, 'HRW000083', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:18:21', '2021-12-06 07:18:21'),
(84, 1, 'HRW000084', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:18:46', '2021-12-06 07:18:46'),
(85, 1, 'HRW000085', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:19:54', '2021-12-06 07:19:54'),
(86, 1, 'HRW000086', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:20:16', '2021-12-06 07:20:16'),
(87, 1, 'HRW000087', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:20:38', '2021-12-06 07:20:38'),
(88, 1, 'HRW000088', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:20:59', '2021-12-06 07:20:59'),
(89, 1, 'HRW000089', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:22:47', '2021-12-06 07:22:47'),
(90, 1, 'HRW000090', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:23:06', '2021-12-06 07:23:06'),
(91, 1, 'HRW000091', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:23:29', '2021-12-06 07:23:29'),
(92, 1, 'HRW000092', 'Mouse Logitech B-100', 'Yayasan', 4, 6, 'Logitech', 2013, 'Normal', 'Unit', '2021-12-06 07:23:52', '2021-12-06 07:23:52'),
(93, 1, 'HRW000093', 'Mouse HP RH304AA', 'Yayasan', 4, 6, 'HP', 2013, 'Normal', 'Unit', '2021-12-06 07:35:38', '2021-12-06 07:35:38'),
(94, 1, 'HRW000094', 'Kursi Kayu Bulat', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 07:36:44', '2021-12-06 07:36:44'),
(95, 1, 'HRW000095', 'Kursi Kayu Bulat', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 07:37:19', '2021-12-06 07:37:19'),
(96, 1, 'HRW000096', 'Kursi Kayu Bulat', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 07:37:44', '2021-12-06 07:37:44'),
(97, 1, 'HRW000097', 'LCD Proyektor SONY', 'Yayasan', 7, 6, 'Sony', 2015, 'Normal', 'Unit', '2021-12-06 07:38:55', '2021-12-06 07:38:55'),
(98, 1, 'HRW000098', 'Meja Kerja Dosen', 'Yayasan', 8, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 07:42:12', '2021-12-06 07:42:12'),
(99, 1, 'HRW000099', 'Meja Kerja Dosen', 'Yayasan', 8, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 07:42:50', '2021-12-06 07:42:50'),
(100, 1, 'HRW000100', 'Kursi Dosen Putar Besar', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 07:51:15', '2021-12-06 07:51:15'),
(101, 1, 'HRW000101', 'Kursi Dosen Putar Tanggung', 'Yayasan', 3, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 07:52:08', '2021-12-06 07:52:08'),
(102, 1, 'HRW000102', 'LG DVD Writer GP65NB60', '-', 9, 6, 'LG', 2018, 'Normal', 'Unit', '2021-12-06 07:53:50', '2021-12-06 07:53:50'),
(103, 1, 'HRW000103', 'Matsugawa Stabiliser 500VA', 'Yayasan', 10, 6, 'Matsugawa', 0, 'Normal', 'Unit', '2021-12-06 07:56:44', '2021-12-06 07:56:44'),
(104, 1, 'HRW000104', 'Matsugawa Stabiliser 500VA', 'Yayasan', 10, 6, 'Matsugawa', 0, 'Normal', 'Unit', '2021-12-06 07:58:05', '2021-12-06 07:58:05'),
(105, 1, 'HRW000105', 'Shasugi Stabiliser SVC-500', 'Yayasan', 10, 6, 'Shasugi', 0, 'Normal', 'Unit', '2021-12-06 07:58:42', '2021-12-06 07:58:42'),
(106, 1, 'HRW000106', 'Shasugi Stabiliser SVC-500', 'Yayasan', 10, 6, 'Shasugi', 0, 'Normal', 'Unit', '2021-12-06 07:59:14', '2021-12-06 07:59:14'),
(107, 1, 'HRW000107', 'Matsugawa Stabiliser start SVC-500N', 'Yayasan', 10, 6, 'Matsugawa', 0, 'Normal', 'Unit', '2021-12-06 07:59:51', '2021-12-06 07:59:51'),
(108, 1, 'HRW000108', 'Matsugawa Stabiliser start SVC-500N', 'Yayasan', 10, 6, 'Matsugawa', 0, 'Normal', 'Unit', '2021-12-06 08:00:19', '2021-12-06 08:00:19'),
(109, 1, 'HRW000109', 'Matsugawa Stabiliser SVC-1500N', 'Yayasan', 10, 6, 'Matsugawa', 0, 'Normal', 'Unit', '2021-12-06 08:01:11', '2021-12-06 08:01:11'),
(110, 1, 'HRW000110', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:03:50', '2021-12-06 08:03:50'),
(111, 1, 'HRW000111', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:05:23', '2021-12-06 08:05:23'),
(112, 1, 'HRW000112', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:06:07', '2021-12-06 08:06:07'),
(113, 1, 'HRW000113', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:06:33', '2021-12-06 08:06:33'),
(114, 1, 'HRW000114', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:07:06', '2021-12-06 08:07:06'),
(115, 1, 'HRW000115', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:07:31', '2021-12-06 08:07:31'),
(116, 1, 'HRW000116', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:08:24', '2021-12-06 08:08:24'),
(117, 1, 'HRW000117', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:08:44', '2021-12-06 08:08:44'),
(118, 1, 'HRW000118', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:12:57', '2021-12-06 08:12:57'),
(119, 1, 'HRW000119', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:13:18', '2021-12-06 08:13:18'),
(120, 1, 'HRW000120', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:13:43', '2021-12-06 08:13:43'),
(121, 1, 'HRW000121', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:14:09', '2021-12-06 08:14:09'),
(122, 1, 'HRW000122', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:14:32', '2021-12-06 08:14:32'),
(123, 1, 'HRW000123', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:14:52', '2021-12-06 08:14:52'),
(124, 1, 'HRW000124', 'Linksys Wireless-G WRT54GL', 'Yayasan', 11, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:15:33', '2021-12-06 08:15:33'),
(125, 1, 'HRW000125', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:20:32', '2021-12-06 08:20:32'),
(126, 1, 'HRW000126', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:21:15', '2021-12-06 08:21:15'),
(127, 1, 'HRW000127', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:21:36', '2021-12-06 08:21:36'),
(128, 1, 'HRW000128', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:21:53', '2021-12-06 08:21:53'),
(129, 1, 'HRW000129', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:22:16', '2021-12-06 08:22:16'),
(130, 1, 'HRW000130', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:22:34', '2021-12-06 08:22:34'),
(131, 1, 'HRW000131', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:22:52', '2021-12-06 08:22:52'),
(132, 1, 'HRW000132', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:23:12', '2021-12-06 08:23:12'),
(133, 1, 'HRW000133', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:23:33', '2021-12-06 08:23:33'),
(134, 1, 'HRW000134', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:23:53', '2021-12-06 08:23:53'),
(135, 1, 'HRW000135', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:24:15', '2021-12-06 08:24:15'),
(136, 1, 'HRW000136', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:24:36', '2021-12-06 08:24:36'),
(137, 1, 'HRW000137', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:25:19', '2021-12-06 08:25:19'),
(138, 1, 'HRW000138', 'Linksys LAN SE2800', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:25:38', '2021-12-06 08:25:38'),
(139, 1, 'HRW000139', 'Linksys LAN SG90D-08', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:26:39', '2021-12-06 08:26:39'),
(140, 1, 'HRW000140', 'Linksys LAN SG90D-08', 'Yayasan', 12, 6, 'Linksys', 2014, 'Normal', 'Unit', '2021-12-06 08:26:57', '2021-12-06 08:26:57'),
(141, 1, 'HRW000141', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:30:46', '2021-12-06 08:30:46'),
(142, 1, 'HRW000142', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:31:52', '2021-12-06 08:31:52'),
(143, 1, 'HRW000143', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:32:26', '2021-12-06 08:32:26'),
(144, 1, 'HRW000144', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:32:47', '2021-12-06 08:32:47'),
(145, 1, 'HRW000145', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:33:09', '2021-12-06 08:33:09'),
(146, 1, 'HRW000146', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:33:36', '2021-12-06 08:33:36'),
(147, 1, 'HRW000147', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:33:56', '2021-12-06 08:33:56'),
(148, 1, 'HRW000148', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:34:20', '2021-12-06 08:34:20'),
(149, 1, 'HRW000149', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:34:39', '2021-12-06 08:34:39'),
(150, 1, 'HRW000150', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:35:07', '2021-12-06 08:35:07'),
(151, 1, 'HRW000151', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:35:35', '2021-12-06 08:35:35'),
(152, 1, 'HRW000152', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:35:54', '2021-12-06 08:35:54'),
(153, 1, 'HRW000153', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:36:11', '2021-12-06 08:36:11'),
(154, 1, 'HRW000154', 'Jiashou JS-002 Tester Cable LAN', 'Yayasan', 13, 6, 'Jiashou', 2014, 'Normal', 'Unit', '2021-12-06 08:36:32', '2021-12-06 08:36:32'),
(155, 1, 'HRW000155', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:37:49', '2021-12-06 08:37:49'),
(156, 1, 'HRW000156', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:38:38', '2021-12-06 08:38:38'),
(157, 1, 'HRW000157', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:39:07', '2021-12-06 08:39:07'),
(158, 1, 'HRW000158', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:39:29', '2021-12-06 08:39:29'),
(159, 1, 'HRW000159', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:39:48', '2021-12-06 08:39:48'),
(160, 1, 'HRW000160', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:40:12', '2021-12-06 08:40:12'),
(161, 1, 'HRW000161', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:40:34', '2021-12-06 08:40:34'),
(162, 1, 'HRW000162', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:40:56', '2021-12-06 08:40:56'),
(163, 1, 'HRW000163', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:41:22', '2021-12-06 08:41:22'),
(164, 1, 'HRW000164', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:41:45', '2021-12-06 08:41:45'),
(165, 1, 'HRW000165', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:42:04', '2021-12-06 08:42:04'),
(166, 1, 'HRW000166', 'GoldTool Crimping Tool', 'Yayasan', 14, 6, 'GoldTool', 2014, 'Normal', 'Unit', '2021-12-06 08:42:26', '2021-12-06 08:42:26'),
(167, 1, 'HRW000167', 'UBIQUITI Acces Point LBG-MS-23', 'Yayasan', 11, 6, 'UBIQUITI', 2017, 'Normal', 'Unit', '2021-12-06 09:15:21', '2021-12-06 09:15:21'),
(168, 1, 'HRW000168', 'UBIQUITI Acces Point LBG-MS-23', 'Yayasan', 11, 6, 'UBIQUITI', 2017, 'Normal', 'Unit', '2021-12-06 09:15:46', '2021-12-06 09:15:46'),
(169, 1, 'HRW000169', 'Microtik Router 750', 'Yayasan', 11, 6, 'Microtik', 2015, 'Normal', 'Unit', '2021-12-06 09:16:51', '2021-12-06 09:16:51'),
(170, 1, 'HRW000170', 'TP-Link TL-SF1008D', 'Yayasan', 11, 6, 'TP-LINK', 2015, 'Normal', 'Unit', '2021-12-06 09:17:41', '2021-12-06 09:17:41'),
(171, 1, 'HRW000171', 'TP-Link TL-MR3220', 'Yayasan', 11, 6, 'TP-LINK', 2015, 'Normal', 'Unit', '2021-12-06 09:18:12', '2021-12-06 09:18:12'),
(172, 1, 'HRW000172', 'Microtik heX Lite IDRB750i-2', 'Yayasan', 11, 6, 'Microtik', 2015, 'Normal', 'Unit', '2021-12-06 09:18:50', '2021-12-06 09:18:50'),
(173, 1, 'HRW000173', 'Microtik heX Lite IDRB750i-2', 'Yayasan', 11, 6, 'Microtik', 2015, 'Normal', 'Unit', '2021-12-06 09:19:13', '2021-12-06 09:19:13'),
(174, 1, 'HRW000174', 'Microtik hAP ID=RB95iUi-2ND', 'Yayasan', 11, 6, 'Microtik', 2015, 'Normal', 'Unit', '2021-12-06 09:19:47', '2021-12-06 09:19:47'),
(175, 1, 'HRW000175', 'Papan Tulis Jadwal Praktikum', 'Yayasan', 15, 6, '-', 2017, 'Normal', 'Unit', '2021-12-06 09:21:24', '2021-12-06 09:21:24'),
(176, 1, 'HRW000176', 'IBM UPS Model RU1', 'Yayasan', 10, 6, 'IBM', 2017, 'Normal', 'Unit', '2021-12-06 09:24:02', '2021-12-06 09:24:02'),
(177, 1, 'HRW000177', 'Kabel VGA 10 Meter', 'Hibah', 16, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:29:32', '2021-12-06 09:29:32'),
(178, 1, 'HRW000178', 'HDMI Connector', 'Yayasan', 16, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:30:07', '2021-12-06 09:30:07'),
(179, 1, 'HRW000179', 'Samsung AC', 'Yayasan', 17, 6, 'Samsung', 2013, 'Normal', 'Unit', '2021-12-06 09:32:05', '2021-12-06 09:32:05'),
(180, 1, 'HRW000180', 'Samsung AC', 'Yayasan', 17, 6, 'Samsung', 2013, 'Normal', 'Unit', '2021-12-06 09:32:50', '2021-12-06 09:32:50'),
(187, 1, 'HRW000181', 'Meja Kerja Laboran', 'Yayasan', 18, 6, '-', 2013, 'Normal', 'Unit', '2021-12-06 09:40:26', '2021-12-06 09:40:26'),
(188, 1, 'HRW000188', 'Talon Tool Cat 6', 'Yayasan', 14, 6, 'Talon', 2019, 'Normal', 'Unit', '2021-12-06 09:40:55', '2021-12-06 09:40:55'),
(189, 1, 'HRW000189', 'Talon Tool Cat 6', 'Yayasan', 14, 6, 'Talon', 2019, 'Normal', 'Unit', '2021-12-06 09:43:47', '2021-12-06 09:43:47'),
(190, 1, 'HRW000190', 'Ubiquiti LiteBeam Antenna', 'Yayasan', 11, 6, 'UBIQUITI', 2019, 'Normal', 'Unit', '2021-12-06 09:45:38', '2021-12-06 09:45:38'),
(191, 1, 'HRW000191', 'Ubiquiti LiteBeam Antenna', 'Yayasan', 11, 6, 'UBIQUITI', 2019, 'Normal', 'Unit', '2021-12-06 09:46:06', '2021-12-06 09:46:06'),
(192, 1, 'HRW000192', 'Ubiquiti LiteBeam Antenna', 'Yayasan', 11, 6, 'UBIQUITI', 2019, 'Normal', 'Unit', '2021-12-06 09:46:30', '2021-12-06 09:46:30'),
(193, 1, 'HRW000193', 'Ubiquiti LiteBeam Antenna', 'Yayasan', 11, 6, 'UBIQUITI', 2019, 'Normal', 'Unit', '2021-12-06 09:46:54', '2021-12-06 09:46:54'),
(194, 1, 'HRW000194', 'Lemari Arsip 2 Pintu Type B-203', 'Yayasan', 19, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:47:45', '2021-12-06 09:47:45'),
(195, 1, 'HRW000195', 'Lemari Arsip 2 Pintu Type B-203', 'Yayasan', 19, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:48:28', '2021-12-06 09:48:57'),
(196, 1, 'HRW000196', 'LCD Display 32 in', 'Yayasan', 5, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:49:19', '2021-12-06 09:49:19'),
(197, 1, 'HRW000197', 'Switch Cisco Gigabit 24 port', 'Yayasan', 12, 6, 'Cisco', 2018, 'Normal', 'Unit', '2021-12-06 09:50:33', '2021-12-06 09:50:33'),
(198, 1, 'HRW000198', 'BOX 100liter', 'Yayasan', 20, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:51:20', '2021-12-06 09:51:20'),
(199, 1, 'HRW000199', 'BOX 100liter', 'Yayasan', 20, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:51:52', '2021-12-06 09:51:52'),
(200, 1, 'HRW000200', 'BOX 100liter', 'Yayasan', 20, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:52:19', '2021-12-06 09:52:19'),
(201, 1, 'HRW000201', 'BOX 100liter', 'Yayasan', 20, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:52:54', '2021-12-06 09:52:54'),
(202, 1, 'HRW000202', 'BOX 100liter', 'Yayasan', 20, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:53:13', '2021-12-06 09:53:13'),
(203, 1, 'HRW000203', 'BOX 100liter', 'Yayasan', 20, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:53:40', '2021-12-06 09:53:40'),
(204, 1, 'HRW000204', 'BOX 100liter', 'Yayasan', 20, 6, '-', 2018, 'Normal', 'Unit', '2021-12-06 09:53:59', '2021-12-06 09:53:59'),
(205, 2, 'MLT000205', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:38:08', '2021-12-08 09:38:08'),
(206, 2, 'MLT000206', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:38:54', '2021-12-08 09:38:54'),
(207, 2, 'MLT000207', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:39:19', '2021-12-08 09:39:19'),
(208, 2, 'MLT000208', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:39:44', '2021-12-08 09:39:44'),
(209, 2, 'MLT000209', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:40:26', '2021-12-08 09:40:26'),
(210, 2, 'MLT000210', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:40:46', '2021-12-08 09:40:46'),
(211, 2, 'MLT000211', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:41:06', '2021-12-08 09:41:06'),
(212, 2, 'MLT000212', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:43:52', '2021-12-08 09:43:52'),
(213, 2, 'MLT000213', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:44:16', '2021-12-08 09:44:16'),
(214, 2, 'MLT000214', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:44:45', '2021-12-08 09:44:45'),
(215, 2, 'MLT000215', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:45:32', '2021-12-08 09:45:32'),
(216, 2, 'MLT000216', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:45:57', '2021-12-08 09:45:57'),
(217, 2, 'MLT000217', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:46:21', '2021-12-08 09:46:21'),
(218, 2, 'MLT000218', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:46:51', '2021-12-08 09:46:51'),
(219, 2, 'MLT000219', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:47:45', '2021-12-08 09:47:45'),
(220, 2, 'MLT000220', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:48:14', '2021-12-08 09:48:14'),
(221, 2, 'MLT000221', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:48:33', '2021-12-08 09:48:33'),
(222, 2, 'MLT000222', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:48:54', '2021-12-08 09:48:54'),
(223, 2, 'MLT000223', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:49:13', '2021-12-08 09:49:13'),
(224, 2, 'MLT000224', 'Meja Komputer MTC 8060', 'Yayasan', 2, 7, 'MTC', 2017, 'Normal', 'Unit', '2021-12-08 09:49:34', '2021-12-08 09:49:34'),
(225, 2, 'MLT000225', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:53:27', '2021-12-08 09:53:27'),
(226, 2, 'MLT000226', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:54:02', '2021-12-08 09:54:02'),
(227, 2, 'MLT000227', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:54:29', '2021-12-08 09:54:29'),
(228, 2, 'MLT000228', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:54:53', '2021-12-08 09:54:53'),
(229, 2, 'MLT000229', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:55:41', '2021-12-08 09:55:41'),
(230, 2, 'MLT000230', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:56:03', '2021-12-08 09:56:03'),
(231, 2, 'MLT000231', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:56:22', '2021-12-08 09:56:22'),
(232, 2, 'MLT000232', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:56:49', '2021-12-08 09:56:49'),
(233, 2, 'MLT000233', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:57:09', '2021-12-08 09:57:09'),
(234, 2, 'MLT000234', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:57:34', '2021-12-08 09:57:34'),
(235, 2, 'MLT000235', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:57:57', '2021-12-08 09:57:57'),
(236, 2, 'MLT000236', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:58:23', '2021-12-08 09:58:23'),
(237, 2, 'MLT000237', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:58:52', '2021-12-08 09:58:52'),
(238, 2, 'MLT000238', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:59:12', '2021-12-08 09:59:12'),
(239, 2, 'MLT000239', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 09:59:43', '2021-12-08 09:59:43'),
(240, 2, 'MLT000240', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 10:00:04', '2021-12-08 10:00:04'),
(241, 2, 'MLT000241', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 10:01:08', '2021-12-08 10:01:08'),
(242, 2, 'MLT000242', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 10:01:34', '2021-12-08 10:01:34'),
(243, 2, 'MLT000243', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 10:01:52', '2021-12-08 10:01:52'),
(244, 2, 'MLT000244', 'Kursi Chitose Caesar Hijau', 'Yayasan', 3, 7, 'Chitose', 2017, 'Normal', 'Unit', '2021-12-08 10:02:14', '2021-12-08 10:02:14'),
(245, 2, 'MLT000245', 'Dell Inspiron 3268 -PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:04:10', '2021-12-08 10:04:10'),
(246, 2, 'MLT000246', 'Dell Inspiron 3268 -PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:04:39', '2021-12-08 10:04:39'),
(247, 2, 'MLT000247', 'Dell Inspiron 3268 -PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:05:02', '2021-12-08 10:05:02'),
(248, 2, 'MLT000248', 'Dell Inspiron 3268 -PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:05:21', '2021-12-08 10:06:05'),
(249, 2, 'MLT000249', 'Dell Inspiron 3268 -PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:05:45', '2021-12-08 10:05:45'),
(250, 2, 'MLT000250', 'Dell Inspiron 3268 -PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:07:00', '2021-12-08 10:07:00'),
(251, 2, 'MLT000251', 'Dell Inspiron 3268 -PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:07:20', '2021-12-08 10:07:20'),
(252, 2, 'MLT000252', 'Dell Inspiron 3268 -PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:07:39', '2021-12-08 10:07:39'),
(253, 2, 'MLT000253', 'Dell Inspiron 3268 -PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:08:02', '2021-12-08 10:08:02'),
(254, 2, 'MLT000254', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:08:41', '2021-12-08 10:08:41'),
(255, 2, 'MLT000255', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:09:08', '2021-12-08 10:09:08'),
(256, 2, 'MLT000256', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:09:30', '2021-12-08 10:09:30'),
(257, 2, 'MLT000257', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:09:48', '2021-12-08 10:09:48'),
(258, 2, 'MLT000258', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:10:11', '2021-12-08 10:10:11'),
(259, 2, 'MLT000259', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:10:42', '2021-12-08 10:10:42'),
(260, 2, 'MLT000260', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:11:06', '2021-12-08 10:11:06'),
(261, 2, 'MLT000261', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:11:26', '2021-12-08 10:11:26'),
(262, 2, 'MLT000262', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:12:04', '2021-12-08 10:12:04'),
(263, 2, 'MLT000263', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:12:27', '2021-12-08 10:12:27'),
(264, 2, 'MLT000264', 'Dell Inspiron 3668 - PC', 'Yayasan', 1, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:12:47', '2021-12-08 10:12:47'),
(265, 2, 'MLT000265', 'Wireless N VPN Firewall Cisco RV 110W-E-G5-K9', 'Yayasan', 11, 7, 'Cisco', 2017, 'Normal', 'Unit', '2021-12-08 10:14:45', '2021-12-08 10:14:45'),
(266, 2, 'MLT000266', 'Wireless N VPN Firewall Cisco RV 110W-E-G5-K9', 'Yayasan', 11, 7, 'Cisco', 2017, 'Normal', 'Unit', '2021-12-08 10:15:14', '2021-12-08 10:15:14'),
(267, 2, 'MLT000267', 'Wireless N VPN Firewall Cisco RV 110W-E-G5-K9', 'Yayasan', 11, 7, 'Cisco', 2017, 'Normal', 'Unit', '2021-12-08 10:15:32', '2021-12-08 10:15:32'),
(268, 2, 'MLT000268', 'Wireless N VPN Firewall Cisco RV 110W-E-G5-K9', 'Yayasan', 11, 7, 'Cisco', 2017, 'Normal', 'Unit', '2021-12-08 10:15:51', '2021-12-08 10:15:51'),
(269, 2, 'MLT000269', 'Max Power Tangset', 'Yayasan', 12, 7, 'Maxpower', 2017, 'Normal', 'Unit', '2021-12-08 10:17:13', '2021-12-08 10:17:13'),
(270, 2, 'MLT000270', 'Max Power Tangset', 'Yayasan', 12, 7, 'Maxpower', 2017, 'Normal', 'Unit', '2021-12-08 10:18:26', '2021-12-08 10:18:26'),
(271, 2, 'MLT000271', 'Max Power Tangset', 'Yayasan', 12, 7, 'Maxpower', 2017, 'Normal', 'Unit', '2021-12-08 10:18:53', '2021-12-08 10:18:53'),
(272, 2, 'MLT000272', 'Max Power Tangset', 'Yayasan', 12, 7, 'Maxpower', 2017, 'Normal', 'Unit', '2021-12-08 10:19:24', '2021-12-08 10:19:24'),
(273, 2, 'MLT000273', 'Max Power Tangset', 'Yayasan', 12, 7, 'Maxpower', 2017, 'Normal', 'Unit', '2021-12-08 10:19:55', '2021-12-08 10:19:55'),
(274, 2, 'MLT000274', 'Max Power Tangset', 'Yayasan', 12, 7, 'Maxpower', 2017, 'Normal', 'Unit', '2021-12-08 10:20:24', '2021-12-08 10:20:24'),
(275, 2, 'MLT000275', 'Sanwa CD800A', 'Yayasan', 10, 7, 'Sanwa', 2017, 'Normal', 'Unit', '2021-12-08 10:23:20', '2021-12-08 10:23:20'),
(276, 2, 'MLT000276', 'Sanwa CD800A', 'Yayasan', 10, 7, 'Sanwa', 2017, 'Normal', 'Unit', '2021-12-08 10:24:09', '2021-12-08 10:24:09'),
(277, 2, 'MLT000277', 'Sanwa CD800A', 'Yayasan', 10, 7, 'Sanwa', 2017, 'Normal', 'Unit', '2021-12-08 10:24:33', '2021-12-08 10:24:33'),
(278, 2, 'MLT000278', 'Sanwa CD800A', 'Yayasan', 10, 7, 'Sanwa', 2017, 'Normal', 'Unit', '2021-12-08 10:24:59', '2021-12-08 10:24:59'),
(279, 2, 'MLT000279', 'Sanwa CD800A', 'Yayasan', 10, 7, 'Sanwa', 2017, 'Normal', 'Unit', '2021-12-08 10:25:26', '2021-12-08 10:25:26'),
(280, 2, 'MLT000280', 'Sanwa CD800A', 'Yayasan', 10, 7, 'Sanwa', 2017, 'Normal', 'Unit', '2021-12-08 10:25:52', '2021-12-08 10:25:52'),
(281, 2, 'MLT000281', 'Jonnesway Obengset', 'Yayasan', 10, 7, 'Jonnesway', 2017, 'Normal', 'Unit', '2021-12-08 10:26:51', '2021-12-08 10:26:51'),
(282, 2, 'MLT000282', 'Jonnesway Obengset', 'Yayasan', 10, 7, 'Jonnesway', 2017, 'Normal', 'Unit', '2021-12-08 10:27:33', '2021-12-08 10:27:33'),
(283, 2, 'MLT000283', 'Jonnesway Obengset', 'Yayasan', 10, 7, 'Jonnesway', 2017, 'Normal', 'Unit', '2021-12-08 10:27:51', '2021-12-08 10:27:51'),
(284, 2, 'MLT000284', 'Jonnesway Obengset', 'Yayasan', 10, 7, 'Jonnesway', 2017, 'Normal', 'Unit', '2021-12-08 10:28:09', '2021-12-08 10:28:09'),
(285, 2, 'MLT000285', 'Jonnesway Obengset', 'Yayasan', 10, 7, 'Jonnesway', 2017, 'Normal', 'Unit', '2021-12-08 10:28:37', '2021-12-08 10:28:37'),
(286, 2, 'MLT000286', 'Jonnesway Obengset', 'Yayasan', 10, 7, 'Jonnesway', 2017, 'Normal', 'Unit', '2021-12-08 10:28:58', '2021-12-08 10:28:58'),
(287, 2, 'MLT000287', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:29:47', '2021-12-08 10:29:47'),
(288, 2, 'MLT000288', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:30:18', '2021-12-08 10:30:18'),
(289, 2, 'MLT000289', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:30:36', '2021-12-08 10:30:36'),
(290, 2, 'MLT000290', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:30:57', '2021-12-08 10:30:57'),
(291, 2, 'MLT000291', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:31:36', '2021-12-08 10:31:36'),
(292, 2, 'MLT000292', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:31:54', '2021-12-08 10:31:54'),
(293, 2, 'MLT000293', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:32:13', '2021-12-08 10:32:13'),
(294, 2, 'MLT000294', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:32:32', '2021-12-08 10:32:32'),
(295, 2, 'MLT000295', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:32:52', '2021-12-08 10:32:52'),
(296, 2, 'MLT000296', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:33:16', '2021-12-08 10:33:16'),
(297, 2, 'MLT000297', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:33:39', '2021-12-08 10:33:39'),
(298, 2, 'MLT000298', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:34:12', '2021-12-08 10:34:12'),
(299, 2, 'MLT000299', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:34:32', '2021-12-08 10:34:32'),
(300, 2, 'MLT000300', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:34:55', '2021-12-08 10:34:55'),
(301, 2, 'MLT000301', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:35:16', '2021-12-08 10:35:16'),
(302, 2, 'MLT000302', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:35:34', '2021-12-08 10:35:34'),
(303, 2, 'MLT000303', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:35:54', '2021-12-08 10:35:54'),
(304, 2, 'MLT000304', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:36:15', '2021-12-08 10:36:15'),
(305, 2, 'MLT000305', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:36:37', '2021-12-08 10:36:37'),
(306, 2, 'MLT000306', 'LED Dell E1916 HV', 'Yayasan', 5, 7, 'Dell', 2017, 'Normal', 'Unit', '2021-12-08 10:36:55', '2021-12-08 10:36:55'),
(307, 2, 'MLT000307', 'Lan Tester Gold Tool TCT 2690', 'Yayasan', 13, 7, 'GoldTool', 2017, 'Normal', 'Unit', '2021-12-08 10:38:24', '2021-12-08 10:38:24'),
(308, 2, 'MLT000308', 'Lan Tester Gold Tool TCT 2690', 'Yayasan', 13, 7, 'GoldTool', 2017, 'Normal', 'Unit', '2021-12-08 10:40:08', '2021-12-08 10:40:08'),
(309, 2, 'MLT000309', 'Lan Tester Gold Tool TCT 2690', 'Yayasan', 13, 7, 'GoldTool', 2017, 'Normal', 'Unit', '2021-12-08 10:40:41', '2021-12-08 10:40:41'),
(310, 2, 'MLT000310', 'Lan Tester Gold Tool TCT 2690', 'Yayasan', 13, 7, 'GoldTool', 2017, 'Normal', 'Unit', '2021-12-08 10:41:08', '2021-12-08 10:41:08'),
(311, 2, 'MLT000311', 'Lan Tester Gold Tool TCT 2690', 'Yayasan', 13, 7, 'GoldTool', 2017, 'Normal', 'Unit', '2021-12-08 10:41:40', '2021-12-08 10:41:40'),
(312, 2, 'MLT000312', 'Lan Tester Gold Tool TCT 2690', 'Yayasan', 13, 7, 'GoldTool', 2017, 'Normal', 'Unit', '2021-12-08 10:42:01', '2021-12-08 10:42:01'),
(313, 2, 'MLT000313', 'Kursi Kerja', 'Yayasan', 3, 7, '-', 2016, 'Normal', 'Unit', '2021-12-08 10:43:32', '2021-12-08 10:43:32'),
(314, 2, 'MLT000314', 'Kursi Kerja', 'Yayasan', 3, 7, '-', 2016, 'Normal', 'Unit', '2021-12-08 10:44:03', '2021-12-08 10:44:03'),
(315, 2, 'MLT000315', 'Meja kerja', 'Yayasan', 8, 7, '-', 2016, 'Normal', 'Unit', '2021-12-08 10:44:38', '2021-12-08 10:44:38'),
(316, 2, 'MLT000316', 'Meja kerja', 'Yayasan', 8, 7, '-', 2016, 'Normal', 'Unit', '2021-12-08 10:45:35', '2021-12-08 10:45:35'),
(317, 2, 'MLT000317', 'Stella', 'Yayasan', 21, 7, 'Stella', 2017, 'Normal', 'Unit', '2021-12-08 10:46:51', '2021-12-08 10:46:51'),
(318, 2, 'MLT000318', 'Jam Dinding', 'Yayasan', 22, 7, '-', 2017, 'Normal', 'Unit', '2021-12-08 10:50:51', '2021-12-08 10:50:51'),
(319, 2, 'MLT000319', 'IBM UPS Model RU1', 'Yayasan', 10, 7, 'IBM', 2017, 'Rusak', 'Unit', '2021-12-08 10:57:16', '2021-12-08 10:57:16'),
(320, 2, 'MLT000320', 'Canon Camera EOS1200D', 'Yayasan', 23, 7, 'Canon', 2017, 'Normal', 'Unit', '2021-12-08 10:59:02', '2021-12-08 10:59:02'),
(321, 2, 'MLT000321', 'VR BOX 3D Glasses R3x-plus', 'Yayasan', 24, 7, 'VR Box', 2018, 'Normal', 'Unit', '2021-12-09 03:51:07', '2021-12-09 03:51:07'),
(322, 2, 'MLT000322', 'VR BOX 3D Glasses R3x-plus', 'Yayasan', 24, 7, 'VR Box', 2018, 'Normal', 'Unit', '2021-12-09 03:51:44', '2021-12-09 03:51:44'),
(323, 2, 'MLT000323', 'LG Proyektor DS420', 'Yayasan', 7, 7, 'LG', 2017, 'Rusak', 'Unit', '2021-12-09 03:52:23', '2021-12-09 03:53:44'),
(326, 2, 'MLT000326', 'Scanner Barcode Wirelles 1D & 2D', 'Yayasan', 25, 7, '-', 2019, 'Normal', 'Unit', '2021-12-09 03:57:26', '2021-12-09 03:57:26'),
(327, 2, 'MLT000327', 'Scanner Barcode Wirelles 1D & 2D', 'Yayasan', 25, 7, '-', 2019, 'Normal', 'Unit', '2021-12-09 03:57:53', '2021-12-09 03:57:53'),
(328, 2, 'MLT000328', 'Scanner Barcode Wirelles 1D & 2D', 'Yayasan', 25, 7, '-', 2019, 'Normal', 'Unit', '2021-12-09 03:58:13', '2021-12-09 03:58:13'),
(329, 2, 'MLT000329', 'Scanner Barcode Wirelles 1D & 2D', 'Yayasan', 25, 7, '-', 2019, 'Normal', 'Unit', '2021-12-09 03:58:34', '2021-12-09 03:58:34'),
(330, 2, 'MLT000330', 'Scanner Barcode Wirelles 1D & 2D', 'Yayasan', 25, 7, '-', 2019, 'Normal', 'Unit', '2021-12-09 03:58:54', '2021-12-09 03:58:54'),
(331, 2, 'MLT000331', 'Panda Printer Kasir Thermal PRJ-POS80AT-U', 'Yayasan', 26, 7, 'Panda', 2019, 'Normal', 'Unit', '2021-12-09 04:00:58', '2021-12-09 04:00:58'),
(332, 2, 'MLT000332', 'Kertas Printer Kasir 58x40mm', 'Yayasan', 26, 7, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:01:44', '2021-12-09 04:01:44'),
(333, 2, 'MLT000333', 'Kertas Printer Kasir 58x40mm', 'Yayasan', 26, 7, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:02:15', '2021-12-09 04:02:48'),
(334, 2, 'MLT000334', 'EPSON Printer L3110', 'Yayasan', 26, 7, 'Epson', 2019, 'Normal', 'Unit', '2021-12-09 04:03:17', '2021-12-09 04:03:17'),
(335, 2, 'MLT000335', 'EPSON Proyektor EB-S400', 'Yayasan', 7, 7, 'Epson', 2019, 'Normal', 'Unit', '2021-12-09 04:04:11', '2021-12-09 04:04:11'),
(336, 2, 'MLT000336', 'Panasonic AC', 'Yayasan', 17, 7, 'Panasonic', 2019, 'Normal', 'Unit', '2021-12-09 04:04:39', '2021-12-09 04:04:39'),
(337, 2, 'MLT000337', 'Samsung AC', 'Yayasan', 17, 7, 'Samsung', 2017, 'Normal', 'Unit', '2021-12-09 04:05:27', '2021-12-09 04:05:27'),
(338, 2, 'MLT000338', 'License Windows 10 OEM', 'Yayasan', 27, 7, 'Windows', 2019, 'Normal', 'Unit', '2021-12-09 04:06:31', '2021-12-09 04:06:31'),
(339, 2, 'MLT000339', 'License Windows 10 OEM', 'Yayasan', 27, 7, 'Windows', 2019, 'Normal', 'Unit', '2021-12-09 04:07:03', '2021-12-09 04:07:03'),
(340, 2, 'MLT000340', 'License Windows 10 OEM', 'Yayasan', 27, 7, 'Windows', 2019, 'Normal', 'Unit', '2021-12-09 04:07:32', '2021-12-09 04:07:32'),
(341, 2, 'MLT000341', 'Mikrotik Router RB750r2', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:09:07', '2021-12-09 04:09:07'),
(342, 2, 'MLT000342', 'Mikrotik Router RB750r2', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:09:30', '2021-12-09 04:09:30'),
(343, 2, 'MLT000343', 'Mikrotik Router RB750r2', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:10:04', '2021-12-09 04:10:04'),
(344, 2, 'MLT000344', 'Mikrotik Router RB750r2', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:10:25', '2021-12-09 04:10:25'),
(345, 2, 'MLT000345', 'Mikrotik Router RB750r2', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:10:48', '2021-12-09 04:10:48'),
(346, 2, 'MLT000346', 'BOX 100liter', 'Yayasan', 20, 7, '-', 2018, 'Normal', 'Unit', '2021-12-09 04:11:30', '2021-12-09 04:11:30'),
(347, 2, 'MLT000347', 'WD HDD 6T', 'Yayasan', 28, 7, 'WD', 2018, 'Normal', 'Unit', '2021-12-09 04:12:40', '2021-12-09 04:12:40'),
(348, 2, 'MLT000348', 'PRINTER PANDA PRJ-CX58B', 'Yayasan', 26, 7, 'Panda', 2021, 'Normal', 'Unit', '2021-12-09 04:13:25', '2021-12-09 04:13:25'),
(349, 2, 'MLT000349', '2D Barcode Scanner PRJ-666', 'Yayasan', 25, 7, '-', 2021, 'Normal', 'Unit', '2021-12-09 04:16:20', '2021-12-09 04:16:20'),
(350, 2, 'MLT000350', '2D Barcode Scanner PRJ-BT888', 'Yayasan', 25, 7, '-', 2021, 'Normal', 'Unit', '2021-12-09 04:17:08', '2021-12-09 04:17:08'),
(351, 2, 'MLT000351', 'Wacom CTL4100', 'Yayasan', 29, 7, 'Wacom', 2021, 'Normal', 'Unit', '2021-12-09 04:18:43', '2021-12-09 04:18:43'),
(352, 2, 'MLT000352', 'Router Mikrotik RB750r2', 'Yayasan', 11, 7, 'Microtik', 2021, 'Normal', 'Unit', '2021-12-09 04:20:32', '2021-12-09 04:20:32'),
(353, 2, 'MLT000353', 'Router Mikrotik RB750r2', 'Yayasan', 11, 7, 'Microtik', 2021, 'Normal', 'Unit', '2021-12-09 04:21:44', '2021-12-09 04:21:44'),
(354, 2, 'MLT000354', 'Router Mikrotik RB941-2nD', 'Yayasan', 11, 7, 'Microtik', 2021, 'Normal', 'Unit', '2021-12-09 04:23:49', '2021-12-09 04:23:49'),
(355, 2, 'MLT000355', 'Router  Mikrotik RB941-2nD', 'Yayasan', 11, 7, 'Microtik', 2021, 'Normal', 'Unit', '2021-12-09 04:24:17', '2021-12-09 04:24:53'),
(356, 2, 'MLT000356', 'Router  Mikrotik RB941-2nD', 'Yayasan', 11, 7, 'Microtik', 2021, 'Normal', 'Unit', '2021-12-09 04:25:12', '2021-12-09 04:25:12'),
(357, 2, 'MLT000357', 'Mikrotik Router RB750r2', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:25:55', '2021-12-09 04:25:55');
INSERT INTO `databarang` (`id_barang`, `id_laboratorium`, `kode_barang`, `nama_barang`, `asal_barang`, `id_kategori`, `id`, `merk`, `tahun`, `kondisi`, `satuan`, `created_at`, `updated_at`) VALUES
(358, 2, 'MLT000358', 'Mikrotik Router RB750r2', 'Yayasan', 11, 7, 'Microtik', 2019, 'Rusak', 'Unit', '2021-12-09 04:26:21', '2021-12-09 04:26:21'),
(359, 2, 'MLT000359', 'Mikrotik Router RB941-2ND', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:27:49', '2021-12-09 04:27:49'),
(360, 2, 'MLT000360', 'Mikrotik Router RB941-2ND', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:28:07', '2021-12-09 04:28:07'),
(361, 2, 'MLT000361', 'Mikrotik Router RB941-2ND', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:28:41', '2021-12-09 04:28:41'),
(362, 2, 'MLT000362', 'Mikrotik Router RB941-2ND', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:29:00', '2021-12-09 04:29:00'),
(363, 2, 'MLT000363', 'Mikrotik Router RB941-2ND', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:29:19', '2021-12-09 04:29:19'),
(364, 2, 'MLT000364', 'Mikrotik Router RB941-2ND', 'Yayasan', 11, 7, 'Microtik', 2019, 'Normal', 'Unit', '2021-12-09 04:29:36', '2021-12-09 04:29:36'),
(365, 3, 'SFW000365', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:33:41', '2021-12-09 04:33:41'),
(366, 3, 'SFW000366', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:34:05', '2021-12-09 04:34:05'),
(367, 3, 'SFW000367', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:34:24', '2021-12-09 04:34:24'),
(368, 3, 'SFW000368', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:34:42', '2021-12-09 04:34:42'),
(369, 3, 'SFW000369', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:35:01', '2021-12-09 04:35:01'),
(370, 3, 'SFW000370', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:35:16', '2021-12-09 04:35:16'),
(371, 3, 'SFW000371', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:35:32', '2021-12-09 04:35:32'),
(372, 3, 'SFW000372', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:35:45', '2021-12-09 04:35:45'),
(373, 3, 'SFW000373', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:36:00', '2021-12-09 04:36:00'),
(374, 3, 'SFW000374', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:36:18', '2021-12-09 04:36:18'),
(375, 3, 'SFW000375', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:36:35', '2021-12-09 04:36:35'),
(376, 3, 'SFW000376', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:36:49', '2021-12-09 04:36:49'),
(377, 3, 'SFW000377', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:37:04', '2021-12-09 04:37:04'),
(378, 3, 'SFW000378', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:37:19', '2021-12-09 04:37:19'),
(379, 3, 'SFW000379', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:37:36', '2021-12-09 04:37:36'),
(380, 3, 'SFW000380', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:37:51', '2021-12-09 04:37:51'),
(381, 3, 'SFW000381', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:38:04', '2021-12-09 04:38:04'),
(382, 3, 'SFW000382', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:38:18', '2021-12-09 04:38:18'),
(383, 3, 'SFW000383', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:38:33', '2021-12-09 04:38:33'),
(384, 3, 'SFW000384', 'Lenovo PC Core i5-4460', 'Yayasan', 1, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:38:48', '2021-12-09 04:38:48'),
(385, 3, 'SFW000385', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:39:21', '2021-12-09 04:39:21'),
(386, 3, 'SFW000386', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:40:04', '2021-12-09 04:40:04'),
(387, 3, 'SFW000387', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:40:18', '2021-12-09 04:40:18'),
(388, 3, 'SFW000388', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:40:47', '2021-12-09 04:40:47'),
(389, 3, 'SFW000389', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:41:07', '2021-12-09 04:41:07'),
(390, 3, 'SFW000390', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:41:27', '2021-12-09 04:41:27'),
(391, 3, 'SFW000391', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:41:45', '2021-12-09 04:41:45'),
(392, 3, 'SFW000392', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:42:03', '2021-12-09 04:42:03'),
(393, 3, 'SFW000393', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:42:24', '2021-12-09 04:42:24'),
(394, 3, 'SFW000394', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:42:40', '2021-12-09 04:42:40'),
(395, 3, 'SFW000395', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:43:00', '2021-12-09 04:43:00'),
(396, 3, 'SFW000396', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:43:20', '2021-12-09 04:43:20'),
(397, 3, 'SFW000397', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:43:38', '2021-12-09 04:43:38'),
(398, 3, 'SFW000398', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:44:01', '2021-12-09 04:44:01'),
(399, 3, 'SFW000399', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:44:20', '2021-12-09 04:44:20'),
(400, 3, 'SFW000400', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:44:37', '2021-12-09 04:44:37'),
(401, 3, 'SFW000401', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:44:56', '2021-12-09 04:44:56'),
(402, 3, 'SFW000402', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:45:22', '2021-12-09 04:45:22'),
(403, 3, 'SFW000403', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:45:47', '2021-12-09 04:45:47'),
(404, 3, 'SFW000404', 'Lenovo Monitor 19\"', 'Yayasan', 5, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2021-12-09 04:46:05', '2021-12-09 04:46:05'),
(405, 3, 'SFW000405', 'Samsung AC', 'Yayasan', 17, 8, 'Samsung', 2019, 'Normal', 'Unit', '2021-12-09 04:46:30', '2021-12-09 04:46:30'),
(406, 3, 'SFW000406', 'Printer Canon ip2770', 'Yayasan', 26, 8, 'Canon', 2019, 'Rusak', 'Unit', '2021-12-09 04:47:53', '2021-12-09 04:47:53'),
(407, 3, 'SFW000407', 'Printer Epson L360', 'Yayasan', 26, 8, 'Epson', 2019, 'Normal', 'Unit', '2021-12-09 04:48:20', '2021-12-09 04:48:20'),
(408, 3, 'SFW000408', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:51:23', '2021-12-09 04:51:23'),
(409, 3, 'SFW000409', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:51:47', '2021-12-09 04:51:47'),
(410, 3, 'SFW000410', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:52:10', '2021-12-09 04:52:10'),
(411, 3, 'SFW000411', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:52:26', '2021-12-09 04:52:26'),
(412, 3, 'SFW000412', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:52:41', '2021-12-09 04:52:41'),
(413, 3, 'SFW000413', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:52:58', '2021-12-09 04:52:58'),
(414, 3, 'SFW000414', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:53:20', '2021-12-09 04:53:20'),
(415, 3, 'SFW000415', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:53:40', '2021-12-09 04:53:40'),
(416, 3, 'SFW000416', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:54:05', '2021-12-09 04:54:05'),
(417, 3, 'SFW000417', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:54:18', '2021-12-09 04:54:18'),
(418, 3, 'SFW000418', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:54:47', '2021-12-09 04:54:47'),
(419, 3, 'SFW000419', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:55:06', '2021-12-09 04:55:06'),
(420, 3, 'SFW000420', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:55:20', '2021-12-09 04:55:20'),
(421, 3, 'SFW000421', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:55:38', '2021-12-09 04:55:38'),
(422, 3, 'SFW000422', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:55:55', '2021-12-09 04:55:55'),
(423, 3, 'SFW000423', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:56:15', '2021-12-09 04:56:15'),
(424, 3, 'SFW000424', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:56:30', '2021-12-09 04:56:30'),
(425, 3, 'SFW000425', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:56:50', '2021-12-09 04:56:50'),
(426, 3, 'SFW000426', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:57:31', '2021-12-09 04:57:31'),
(427, 3, 'SFW000427', 'Meja Komputer', 'Yayasan', 2, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:57:44', '2021-12-09 04:57:44'),
(428, 3, 'SFW000428', 'Meja Kerja', 'Yayasan', 8, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:58:53', '2021-12-09 04:58:53'),
(429, 3, 'SFW000429', 'Meja Kerja', 'Yayasan', 8, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:59:28', '2021-12-09 04:59:28'),
(430, 3, 'SFW000430', 'Meja Kerja', 'Yayasan', 8, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 04:59:52', '2021-12-09 04:59:52'),
(431, 3, 'SFW000431', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:01:20', '2021-12-09 05:01:20'),
(432, 3, 'SFW000432', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:01:44', '2021-12-09 05:01:44'),
(433, 3, 'SFW000433', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:02:06', '2021-12-09 05:02:06'),
(434, 3, 'SFW000434', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:03:06', '2021-12-09 05:03:06'),
(435, 3, 'SFW000435', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:03:20', '2021-12-09 05:03:20'),
(436, 3, 'SFW000436', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:03:34', '2021-12-09 05:03:34'),
(437, 3, 'SFW000437', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:03:53', '2021-12-09 05:03:53'),
(438, 3, 'SFW000438', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:04:12', '2021-12-09 05:04:12'),
(439, 3, 'SFW000439', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:04:29', '2021-12-09 05:04:29'),
(440, 3, 'SFW000440', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:04:50', '2021-12-09 05:04:50'),
(441, 3, 'SFW000441', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:05:05', '2021-12-09 05:05:05'),
(442, 3, 'SFW000442', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:05:21', '2021-12-09 05:05:21'),
(443, 3, 'SFW000443', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:05:38', '2021-12-09 05:05:38'),
(444, 3, 'SFW000444', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:11:24', '2021-12-09 05:11:24'),
(445, 3, 'SFW000445', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:11:46', '2021-12-09 05:11:46'),
(446, 3, 'SFW000446', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:12:06', '2021-12-09 05:12:06'),
(447, 3, 'SFW000447', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:12:20', '2021-12-09 05:12:20'),
(448, 3, 'SFW000448', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:12:49', '2021-12-09 05:12:49'),
(449, 3, 'SFW000449', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:13:11', '2021-12-09 05:13:11'),
(450, 3, 'SFW000450', 'Chitose Kursi', 'Yayasan', 3, 8, 'Chitose', 2019, 'Normal', 'Unit', '2021-12-09 05:13:27', '2021-12-09 05:13:27'),
(451, 3, 'SFW000451', 'Lemari', 'Yayasan', 19, 8, '-', 2018, 'Normal', 'Unit', '2021-12-09 05:14:09', '2021-12-09 05:14:09'),
(452, 3, 'SFW000452', 'Layar Proyektor', 'Yayasan', 7, 8, '-', 2018, 'Normal', 'Unit', '2021-12-09 05:14:52', '2021-12-09 05:14:52'),
(453, 3, 'SFW000453', 'A174 Hp Jg914a 1620-48g Switch 48 Port Gigabit Switch Hub', 'Yayasan', 12, 8, 'Gigabit', 2019, 'Normal', 'Unit', '2021-12-09 05:15:42', '2021-12-09 05:15:42'),
(454, 3, 'SFW000454', 'Netis WF2411E Router', 'Yayasan', 11, 8, 'Netis', 2018, 'Normal', 'Unit', '2021-12-09 05:16:25', '2021-12-09 05:16:25'),
(455, 3, 'SFW000455', 'Kursi Kerja', 'Yayasan', 3, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 05:16:52', '2021-12-09 05:16:52'),
(456, 3, 'SFW000456', 'Kursi Kerja', 'Yayasan', 3, 8, '-', 2019, 'Normal', 'Unit', '2021-12-09 05:17:48', '2021-12-09 05:17:48'),
(457, 3, 'SFW000457', 'Kursi Tamu', 'Yayasan', 3, 8, '-', 2018, 'Normal', 'Unit', '2021-12-09 05:18:17', '2021-12-09 05:18:17'),
(458, 3, 'SFW000458', 'Kursi Tamu', 'Yayasan', 3, 8, '-', 2018, 'Normal', 'Unit', '2021-12-09 05:18:38', '2021-12-09 05:18:38'),
(459, 3, 'SFW000459', 'Mesin Pengharum Stella', 'Hibah', 21, 8, 'Stella', 2019, 'Normal', 'Unit', '2021-12-09 05:19:21', '2021-12-09 05:19:21'),
(460, 1, 'HRW000460', 'Kursi Gaming', 'Yayasan', 3, 6, 'Taff', 2021, 'Normal', 'Unit', '2021-12-19 09:25:54', '2021-12-20 04:35:51'),
(461, 2, 'MLT000461', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:48:29', '2022-02-03 10:48:29'),
(462, 2, 'MLT000462', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:49:19', '2022-02-03 10:49:19'),
(463, 2, 'MLT000463', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:50:24', '2022-02-03 10:50:24'),
(464, 2, 'MLT000464', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:50:50', '2022-02-03 10:50:50'),
(465, 2, 'MLT000465', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:51:09', '2022-02-03 10:51:09'),
(466, 2, 'MLT000466', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:51:26', '2022-02-03 10:51:26'),
(467, 2, 'MLT000467', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:51:44', '2022-02-03 10:51:44'),
(468, 2, 'MLT000468', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:51:59', '2022-02-03 10:51:59'),
(469, 2, 'MLT000469', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:52:18', '2022-02-03 10:52:18'),
(470, 2, 'MLT000470', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:52:35', '2022-02-03 10:52:35'),
(471, 2, 'MLT000471', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:52:51', '2022-02-03 10:52:51'),
(472, 2, 'MLT000472', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:53:09', '2022-02-03 10:53:09'),
(473, 2, 'MLT000473', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:53:26', '2022-02-03 10:53:26'),
(474, 2, 'MLT000474', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:53:47', '2022-02-03 10:53:47'),
(475, 2, 'MLT000475', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:54:06', '2022-02-03 10:54:06'),
(476, 2, 'MLT000476', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:54:26', '2022-02-03 10:54:26'),
(477, 2, 'MLT000477', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:54:44', '2022-02-03 10:54:44'),
(478, 2, 'MLT000478', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:54:59', '2022-02-03 10:54:59'),
(479, 2, 'MLT000479', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:55:14', '2022-02-03 10:55:14'),
(480, 2, 'MLT000480', 'Mouse Lenovo DOK-M680', 'Yayasan', 4, 7, 'Lenovo', 2017, 'Normal', 'Unit', '2022-02-03 10:55:37', '2022-02-03 10:55:37'),
(481, 3, 'SFW000481', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:11:49', '2022-02-04 23:11:49'),
(482, 3, 'SFW000482', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:12:37', '2022-02-04 23:12:37'),
(483, 3, 'SFW000483', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:13:00', '2022-02-04 23:13:00'),
(484, 3, 'SFW000484', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:13:25', '2022-02-04 23:13:25'),
(485, 3, 'SFW000485', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:13:48', '2022-02-04 23:13:48'),
(486, 3, 'SFW000486', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:14:07', '2022-02-04 23:14:07'),
(487, 3, 'SFW000487', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:14:26', '2022-02-04 23:14:26'),
(488, 3, 'SFW000488', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:14:46', '2022-02-04 23:14:46'),
(489, 3, 'SFW000489', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:15:11', '2022-02-04 23:15:11'),
(490, 3, 'SFW000490', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:15:31', '2022-02-04 23:15:31'),
(491, 3, 'SFW000491', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:15:51', '2022-02-04 23:15:51'),
(492, 3, 'SFW000492', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:16:22', '2022-02-04 23:16:22'),
(493, 3, 'SFW000493', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:17:08', '2022-02-04 23:17:08'),
(494, 3, 'SFW000494', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:17:28', '2022-02-04 23:17:28'),
(495, 3, 'SFW000495', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:17:46', '2022-02-04 23:17:46'),
(496, 3, 'SFW000496', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:18:05', '2022-02-04 23:18:05'),
(497, 3, 'SFW000497', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:18:25', '2022-02-04 23:18:25'),
(498, 3, 'SFW000498', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:18:45', '2022-02-04 23:18:45'),
(499, 3, 'SFW000499', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:19:05', '2022-02-04 23:19:05'),
(500, 3, 'SFW000500', 'Mouse Lenovo SM-8825', 'Yayasan', 4, 8, 'Lenovo', 2019, 'Normal', 'Unit', '2022-02-04 23:19:24', '2022-02-04 23:19:24'),
(501, 1, 'HRW000501', 'Meja Komputer', 'Yayasan', 2, 6, '-', 2013, 'Normal', 'Unit', '2022-02-07 04:33:15', '2022-02-07 04:33:15'),
(502, 2, 'MLT000502', 'Meja Kerja Laboran', 'Yayasan', 18, 7, '-', 2017, 'Normal', 'Unit', '2022-02-07 07:09:17', '2022-02-07 07:09:17'),
(503, 3, 'SFW000503', 'Meja Kerja Laboran', 'Yayasan', 18, 8, '-', 2019, 'Normal', 'Unit', '2022-02-07 07:46:35', '2022-02-07 07:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `datapeminjaman`
--

CREATE TABLE `datapeminjaman` (
  `id_peminjaman` int(10) UNSIGNED NOT NULL,
  `id_member` int(10) NOT NULL,
  `id_status` int(10) NOT NULL,
  `id_laboratorium` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datapeminjaman`
--

INSERT INTO `datapeminjaman` (`id_peminjaman`, `id_member`, `id_status`, `id_laboratorium`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, '2022-02-14 03:59:55', '2022-02-14 04:00:50'),
(2, 6, 5, 1, '2022-02-14 06:03:04', '2022-02-14 06:03:38'),
(3, 3, 4, 1, '2022-02-14 06:03:47', '2022-02-14 06:04:34'),
(6, 2, 4, 1, '2022-02-14 07:59:38', '2022-02-14 08:00:46'),
(11, 1, 4, 1, '2022-02-14 14:01:34', '2022-02-14 14:02:27'),
(12, 1, 1, 1, '2022-02-14 14:03:39', '2022-02-14 14:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `datapeminjaman_detail`
--

CREATE TABLE `datapeminjaman_detail` (
  `id_peminjaman_detail` int(10) UNSIGNED NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_laboratorium` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `tanggal_kembali` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datapeminjaman_detail`
--

INSERT INTO `datapeminjaman_detail` (`id_peminjaman_detail`, `id_peminjaman`, `id_barang`, `id_laboratorium`, `id_status`, `tanggal_kembali`, `created_at`, `updated_at`) VALUES
(1, 1, 157, 1, 4, '2022-02-14 07:22:53', '2022-02-14 04:00:00', '2022-02-14 04:00:50'),
(2, 2, 156, 1, 5, '2022-02-14 07:22:53', '2022-02-14 06:03:12', '2022-02-14 06:03:38'),
(3, 3, 157, 1, 4, '2022-02-14 07:22:53', '2022-02-14 06:03:53', '2022-02-14 06:04:34'),
(6, 6, 155, 1, 4, '2022-02-14 08:00:46', '2022-02-14 07:59:45', '2022-02-14 08:00:46'),
(11, 11, 156, 1, 4, '2022-02-15 17:00:00', '2022-02-14 14:01:44', '2022-02-14 14:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `datapengembalian`
--

CREATE TABLE `datapengembalian` (
  `id_pengembalian` int(10) UNSIGNED NOT NULL,
  `id_peminjaman_detail` int(10) NOT NULL,
  `id_laboratorium` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datapengembalian`
--

INSERT INTO `datapengembalian` (`id_pengembalian`, `id_peminjaman_detail`, `id_laboratorium`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-02-14 04:00:39', '2022-02-14 04:00:39'),
(2, 3, 1, '2022-02-14 06:04:17', '2022-02-14 06:04:17'),
(3, 6, 1, '2022-02-14 08:00:33', '2022-02-14 08:00:33'),
(4, 9, 1, '2022-02-14 13:52:22', '2022-02-14 13:52:22'),
(5, 11, 1, '2022-02-14 14:02:11', '2022-02-14 14:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'CPU', '2021-10-19 07:51:31', '2021-12-06 05:41:17'),
(2, 'Meubel Meja PC', '2021-10-19 07:51:44', '2021-12-06 06:18:54'),
(3, 'Meubel Kursi', '2021-10-19 07:52:01', '2021-12-06 06:36:56'),
(4, 'Perangkat Input Mouse', '2021-10-19 11:34:14', '2021-12-06 07:14:13'),
(5, 'Perangkat Output Monitor', '2021-12-06 05:58:14', '2021-12-06 05:59:55'),
(6, 'Perangkat Input Keyboard', '2021-12-06 07:02:18', '2021-12-06 07:14:23'),
(7, 'Perangkat Output Proyektor', '2021-12-06 07:38:20', '2021-12-06 07:38:20'),
(8, 'Meubel Meja Dosen', '2021-12-06 07:41:02', '2021-12-06 07:41:02'),
(9, 'Perangkat Input DVD', '2021-12-06 07:52:59', '2021-12-06 07:52:59'),
(10, 'Perangkat Kelistrikan', '2021-12-06 07:55:44', '2021-12-06 09:22:49'),
(11, 'Perangkat Jaringan Wireless', '2021-12-06 08:02:39', '2021-12-06 08:02:58'),
(12, 'Perangkat Jaringan Kabel', '2021-12-06 08:17:36', '2021-12-06 08:17:36'),
(13, 'Perangkat Jaringan LAN Tester', '2021-12-06 08:27:41', '2021-12-06 08:27:41'),
(14, 'Perangkat Jaringan Crimping', '2021-12-06 08:37:12', '2021-12-06 08:37:12'),
(15, 'Meubel Papan Tulis', '2021-12-06 09:20:49', '2021-12-06 09:20:49'),
(16, 'Perangkat Kabel', '2021-12-06 09:28:44', '2021-12-06 09:28:44'),
(17, 'AC', '2021-12-06 09:31:23', '2021-12-06 09:31:23'),
(18, 'Meubel Meja Laboran', '2021-12-06 09:34:16', '2021-12-06 09:34:16'),
(19, 'Meubel Lemari', '2021-12-06 09:47:14', '2021-12-06 09:47:14'),
(20, 'BOX', '2021-12-06 09:50:45', '2021-12-06 09:50:45'),
(21, 'Pengharum Ruangan', '2021-12-08 10:46:11', '2021-12-08 10:46:11'),
(22, 'Perkakas', '2021-12-08 10:50:08', '2021-12-08 10:50:08'),
(23, 'Perangkat Kamera', '2021-12-08 10:58:10', '2021-12-08 10:58:10'),
(24, 'Perangkat Output VR', '2021-12-09 03:49:39', '2021-12-09 03:49:39'),
(25, 'Scanner', '2021-12-09 03:49:39', '2021-12-09 03:56:15'),
(26, 'Perangkat Output Printer', '2021-12-09 04:00:28', '2021-12-09 04:00:28'),
(27, 'Lisensi', '2021-12-09 04:05:53', '2021-12-09 04:05:53'),
(28, 'Storage', '2021-12-09 04:12:08', '2021-12-09 04:12:08'),
(29, 'Perangkat Drawing', '2021-12-09 04:18:17', '2021-12-09 04:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `laboratorium`
--

CREATE TABLE `laboratorium` (
  `id_laboratorium` int(10) UNSIGNED NOT NULL,
  `nama_laboratorium` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laboratorium`
--

INSERT INTO `laboratorium` (`id_laboratorium`, `nama_laboratorium`, `created_at`, `updated_at`) VALUES
(1, 'Laboratorium Hardware', '2021-07-28 08:55:13', '2021-07-28 08:56:27'),
(2, 'Laboratorium Multimedia', '2021-07-28 08:55:25', '2021-07-28 08:55:25'),
(3, 'Laboratorium Software', '2021-07-28 08:55:41', '2021-07-28 08:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level` int(10) UNSIGNED NOT NULL,
  `nama_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level`, `nama_level`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Program Studi', NULL, NULL),
(2, 'Kepala Laboratorium Hardware', NULL, NULL),
(3, 'Kepala Laboratorium Multimedia', NULL, NULL),
(4, 'Kepala Laboratorium Software', NULL, NULL),
(5, 'Laboran Lab Hardware', NULL, NULL),
(6, 'Laboran Lab Multimedia', NULL, NULL),
(7, 'Laboran Lab Software', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `nim`, `status`, `telepon`, `created_at`, `updated_at`) VALUES
(1, '00001', 'Faisal Luthfi', '173040053', 'Mahasiswa', '085742132468', '2021-08-28 07:05:54', '2021-09-23 15:05:39'),
(2, '00002', 'Juden', '173040027', 'Mahasiswa', '0851863781633', '2021-08-28 07:06:12', '2021-09-23 15:05:55'),
(3, '00003', 'PeMirza', '173040024', 'Mahasiswa', '085186378178', '2021-08-28 07:44:15', '2021-09-23 15:06:04'),
(4, '00004', 'Nugroho Eko', '152341235', 'Dosen', '085329428382', '2021-09-01 20:07:25', '2021-09-28 22:15:41'),
(5, '00005', 'Pak Mundzir', '173040037', 'Mahasiswa', '085164825358', '2021-09-22 10:09:56', '2021-09-22 10:09:56'),
(6, '00006', 'M. Fikri', '468361147', 'Mahasiswa', '086345326347', '2021-09-30 15:28:13', '2021-09-30 15:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_07_09_161631_add_new_column_to_users_table', 1),
(7, '2021_07_09_162556_create_laboratorium_table', 1),
(8, '2021_07_09_162948_create_databarang_table', 1),
(9, '2021_07_09_163740_create_datapeminjaman_table', 1),
(10, '2021_07_09_164400_create_datapengembalian_table', 1),
(11, '2021_07_10_032135_create_sessions_table', 1),
(12, '2021_07_10_154028_add_foreign_key_to_databarang_table', 1),
(13, '2021_07_11_140120_add_kode_barang_to_databarang_table', 1),
(15, '2021_08_17_143010_create_member_table', 2),
(16, '2021_08_28_135113_add_new_column_to_datapeminjaman_table', 2),
(17, '2021_08_28_142358_add_new_column_to_datapeminjaman_table', 3),
(18, '2021_08_29_070134_create_datapeminjaman_detail_table', 4),
(19, '2021_09_19_114304_create_setting_table', 5),
(20, '2021_09_20_141426_create_mutasi_masuk_table', 6),
(21, '2021_09_20_143910_add_new_column_to_mutasi_masuk_table', 7),
(22, '2021_09_22_085802_add_new_column_to_mutasi_masuk_table', 8),
(23, '2021_09_22_170354_add_new_column_to_member_table', 9),
(24, '2021_09_23_193020_create_status_table', 10),
(25, '2021_09_29_183510_add_new_column_to_datapeminjaman_table', 11),
(26, '2021_09_30_151952_add_new_column_to_datapeminjaman_table', 12),
(27, '2021_09_30_161120_add_new_column_to_datapeminjaman_table', 13),
(28, '2021_09_30_202101_create_new_datapengembalian_detail_table', 14),
(29, '2021_10_01_185955_add_new_column_to_datapengembalian_table', 15),
(30, '2021_10_04_164440_add_new_column_to_datapengembalian_table', 16),
(31, '2021_10_06_150524_add_new_column_to_datapengembalian_table', 17),
(32, '2021_10_07_092333_add_new_column_to_datapengembalian_table', 18),
(33, '2021_10_09_190422_add_new_column_to_datapengembalian_table', 19),
(34, '2021_10_13_174944_create_mutasi_keluar_table', 20),
(35, '2021_10_15_203943_create_kategori_table', 21),
(36, '2021_10_15_220756_add_new_column_to_databarang_table', 22),
(37, '2021_10_19_193356_add_new_column_to_datapeminjaman_detail', 23),
(38, '2021_10_19_205602_add_new_column_to_datapeminjaman', 24),
(39, '2021_10_20_103804_add_new_column_to_datapengembalian_table', 25),
(40, '2021_11_02_100751_add_new_column_to_databarang_table', 26),
(41, '2021_11_04_214921_add_new_column_to_users_table', 27),
(42, '2021_11_09_105844_create_level_table', 28),
(43, '2021_11_15_113336_add_column_to_datapeminjaman_detail_table', 29),
(44, '2021_11_16_204005_add_new_column_to_datapeminjaman_detail_table', 30),
(45, '2021_11_18_135549_add_new_column_to_datapengembalian_detail_table', 31),
(46, '2021_12_06_114430_add_new_column_to_databarang_table', 32),
(47, '2022_02_07_110701_add_new_column_to_databarang_table', 33),
(48, '2022_02_07_152913_add_new_column_to_datapeminjaman_detail_table', 34),
(49, '2022_02_07_154617_add_new_column_to_datapeminjaman_detail_table', 35),
(50, '2022_02_14_142136_add_new_column_to_datapeminjaman_detail_table', 36);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cRz36wD3Pu2wO9LkGfaUcQp3rVDfsRDASP5rxxJT', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVFJOUnBvbHlrMU9EMTdFV01IN1IyaVhycmoxRE9JeDlZVXQ3MDAzbiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwOi8vbG9jYWxob3N0L2ludi9wdWJsaWMvcGVuZ2VtYmFsaWFuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHRpZWNrMXRIYXcyU2tKNnBTT0Eya2VoV1F0Uk1ESUNXeC8zMzN2YUtFUUlxUE5jbnI5aXFPIjt9', 1644847352),
('DSShM7vEw5v1AUsLRwohXa16ZE3zr1M2Z0Ob8JGE', 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoid2lIaUxNTkRxUENmRXpnaHhXZFQ5dWtjTU1FbWdxSTV5YUdpWlpQZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9sb2NhbGhvc3QvaW52L3B1YmxpYy9wZW1pbmphbWFuIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDd4a3J6WjVVVnlOTkJXNDc5eC45NS50Ty9YUFI5WTZMZzd5N3RINWpyeFVnS0JyeTNySzBhIjtzOjEzOiJpZF9wZW1pbmphbWFuIjtpOjEyO3M6OToiaWRfbWVtYmVyIjtzOjE6IjEiO3M6MTU6ImlkX3BlbmdlbWJhbGlhbiI7aTo1O3M6MjA6ImlkX3BlbWluamFtYW5fZGV0YWlsIjtzOjI6IjExIjt9', 1644847486),
('Dx4qTd6IDxD2OCEEXXVWSuHccjt22umq3AdobmVc', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMkZKUTVRZlJqZllMVjA3OFBQSkZPMDRsbk15WEc4WW95Z0w4T1ZnYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1644845377);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_laboratorium` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_laboratorium`, `alamat`, `telepon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Informatika Universitas Wahid Hasyim', 'Gedung D Unwahas, Jln. Menoreh Tengah X/22 Sampangan', '089123456789', '/img/logo-2021-10-25210941.png', '/img/logo-2022-01-21191438.jpg', NULL, '2022-02-05 02:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(10) UNSIGNED NOT NULL,
  `status_transaksi` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status_transaksi`, `created_at`, `updated_at`) VALUES
(1, 'Pending', NULL, NULL),
(2, 'Sedang Dipinjam', NULL, NULL),
(3, 'Menunggu Konfirmasi', NULL, NULL),
(4, 'Telah Dikembalikan', NULL, NULL),
(5, 'Ditolak', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(10) NOT NULL DEFAULT 0,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Ketua Program Studi', 'admin@gmail.com', NULL, '$2y$10$BXH/ehB5IaCPcpG8hUuEt.w2uDXN8vOGi2oyN4lDWc2mBZgp8z1KW', '/img/logo-20220211063806.png', 1, NULL, NULL, NULL, NULL, NULL, '2021-07-28 08:44:03', '2022-02-10 23:38:06'),
(2, 'Ka-Lab Hardware', 'labhardware@gmail.com', NULL, '$2y$10$tieck1tHaw2SkJ6pSOA2kehWQtRMDICWx/333vaKEQIqPNcnr9iqO', '/img/logo-20211109113442.png', 2, NULL, NULL, NULL, NULL, NULL, '2021-09-17 16:29:59', '2021-11-09 04:34:42'),
(4, 'Ka-Lab Multimedia', 'labmultimedia@gmail.com', NULL, '$2y$10$UBEwZwp/UsOLExUukSnDjuc9l.G/WmutxubZTfw.WYVYZo.la4ade', '/img/logo-20211109113258.png', 3, NULL, NULL, NULL, NULL, NULL, '2021-11-09 04:14:40', '2021-11-09 04:32:58'),
(5, 'Ka-Lab Software', 'labsoftware@gmail.com', NULL, '$2y$10$1lhgkYedqmzvKrr8LuRMT.ruGN1440/uHy7F6TbaCn/61koTKWfO.', '/img/logo-20211109113406.png', 4, NULL, NULL, NULL, NULL, NULL, '2021-11-09 04:15:47', '2021-11-09 04:34:06'),
(6, 'Laboran Hardware', 'laboranhardware@gmail.com', NULL, '$2y$10$7xkrzZ5UVyNNBW479x.95.tO/XPR9Y6Lg7y7tH5jrxUgKBry3rK0a', '/img/logo-20211110085507.png', 5, NULL, NULL, NULL, NULL, NULL, '2021-11-09 11:41:43', '2022-02-10 23:36:37'),
(7, 'John Shelby', 'laboranmultimedia@gmail.com', NULL, '$2y$10$.Erq3OLCiEh/rvMSXT/H4OsnPGVyRpWdEZuV3dt7NEZOBGSFHVJsK', '/img/logo-20211110102923.png', 6, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:00:51', '2022-02-07 07:47:29'),
(8, 'Arthur Shelby', 'laboransoftware@gmail.com', NULL, '$2y$10$qM7QKpVMLhrjZWc6yABpFOvtD4aVH5p9HXLS0pg/Od/lDkhsHzQxO', '/img/logo-20211110103011.png', 7, NULL, NULL, NULL, NULL, NULL, '2021-11-09 12:03:03', '2022-02-07 07:47:16'),
(9, 'Laboran Hardware 2', 'laboranhardware2@gmail.com', NULL, '$2y$10$dGUXRSL7/Nly7Hek4Y3H1.jvcmG8FnWPsLmOIxmLFIXR2MxsHWyN2', '/img/logo-20220204113009.png', 5, NULL, NULL, 'tWotFyX7McNVVqu9S2eoOvJ8yGcLOkvRxzcZkV8whdkoOzHPuwPfGBMoFglp', NULL, NULL, '2022-01-21 15:29:20', '2022-02-05 01:36:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `databarang`
--
ALTER TABLE `databarang`
  ADD PRIMARY KEY (`id_barang`),
  ADD UNIQUE KEY `databarang_kode_barang_unique` (`kode_barang`),
  ADD KEY `databarang_id_laboratorium_foreign` (`id_laboratorium`);

--
-- Indexes for table `datapeminjaman`
--
ALTER TABLE `datapeminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `datapeminjaman_detail`
--
ALTER TABLE `datapeminjaman_detail`
  ADD PRIMARY KEY (`id_peminjaman_detail`);

--
-- Indexes for table `datapengembalian`
--
ALTER TABLE `datapengembalian`
  ADD PRIMARY KEY (`id_pengembalian`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `laboratorium`
--
ALTER TABLE `laboratorium`
  ADD PRIMARY KEY (`id_laboratorium`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

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
-- AUTO_INCREMENT for table `databarang`
--
ALTER TABLE `databarang`
  MODIFY `id_barang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- AUTO_INCREMENT for table `datapeminjaman`
--
ALTER TABLE `datapeminjaman`
  MODIFY `id_peminjaman` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `datapeminjaman_detail`
--
ALTER TABLE `datapeminjaman_detail`
  MODIFY `id_peminjaman_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `datapengembalian`
--
ALTER TABLE `datapengembalian`
  MODIFY `id_pengembalian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `laboratorium`
--
ALTER TABLE `laboratorium`
  MODIFY `id_laboratorium` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `databarang`
--
ALTER TABLE `databarang`
  ADD CONSTRAINT `databarang_id_laboratorium_foreign` FOREIGN KEY (`id_laboratorium`) REFERENCES `laboratorium` (`id_laboratorium`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
