-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2021 at 10:25 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temb`
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
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `databarang`
--

INSERT INTO `databarang` (`id_barang`, `id_laboratorium`, `kode_barang`, `nama_barang`, `merk`, `kondisi`, `satuan`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(5, 1, 'HRW000005', 'Printer', 'Canon', 'Normal', 'Unit', 500000, 1, '2021-07-28 23:45:08', '2021-07-28 23:45:08'),
(6, 1, 'HRW000006', 'Access Point', 'Cisco', 'Normal', 'Unit', 2000000, 1, '2021-07-29 00:40:41', '2021-07-29 00:40:41'),
(7, 1, 'HRW000007', 'Set PC', 'HP', 'Normal', 'Unit', 7800000, 20, '2021-07-29 01:22:39', '2021-07-29 01:22:39'),
(9, 2, 'MLT000008', 'Set PC', 'HP', 'Normal', 'Unit', 8000000, 20, '2021-07-31 04:56:54', '2021-07-31 04:56:54'),
(10, 2, 'MLT000010', 'Proyektor', 'Epson', 'Normal', 'Unit', 1500000, 1, '2021-07-31 04:57:33', '2021-07-31 04:57:33'),
(11, 2, 'MLT000011', 'Access Point', 'Cisco', 'Normal', 'Unit', 700000, 1, '2021-07-31 04:58:05', '2021-07-31 04:58:05'),
(12, 3, 'SFW000012', 'Set PC', 'HP', 'Normal', 'Unit', 8000000, 20, '2021-07-31 05:10:05', '2021-07-31 05:10:05'),
(13, 3, 'SFW000013', 'Speaker', 'Advance', 'Normal', 'Unit', 50000, 1, '2021-07-31 05:11:02', '2021-07-31 05:11:02'),
(14, 3, 'SFW000014', 'Access Point', 'Cisco', 'Rusak', 'Unit', 1500000, 1, '2021-07-31 05:11:41', '2021-07-31 05:11:41'),
(15, 3, 'SFW000015', 'Laptop', 'ASUS', 'Normal', 'Unit', 6000000, 1, '2021-08-01 07:27:04', '2021-08-01 07:27:04'),
(16, 1, 'HRW000016', 'LAN Tester', 'Cisco', 'Rusak', 'Unit', 60000, 1, '2021-08-01 07:36:25', '2021-08-01 07:36:25'),
(17, 1, 'HRW000017', 'Speaker', 'Dazumba', 'Normal', 'unit', 300000, 2, '2021-09-20 07:25:23', '2021-09-20 07:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `datapeminjaman`
--

CREATE TABLE `datapeminjaman` (
  `id_peminjaman` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_status` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datapeminjaman`
--

INSERT INTO `datapeminjaman` (`id_peminjaman`, `id_member`, `id_status`, `created_at`, `updated_at`) VALUES
(26, 1, 1, '2021-09-23 13:09:41', '2021-09-23 13:09:41'),
(27, 1, 1, '2021-09-23 13:45:16', '2021-09-23 13:45:16'),
(28, 2, 1, '2021-09-23 14:35:17', '2021-09-23 14:35:34'),
(29, 5, 1, '2021-09-23 14:37:06', '2021-09-23 14:37:11'),
(30, 1, 1, '2021-09-24 02:28:31', '2021-09-24 02:28:31'),
(31, 4, 1, '2021-09-24 02:34:43', '2021-09-24 02:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `datapeminjaman_detail`
--

CREATE TABLE `datapeminjaman_detail` (
  `id_peminjaman_detail` int(10) UNSIGNED NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datapeminjaman_detail`
--

INSERT INTO `datapeminjaman_detail` (`id_peminjaman_detail`, `id_peminjaman`, `id_barang`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 8, 6, 1, '2021-08-31 06:20:16', '2021-08-31 06:20:16'),
(4, 10, 11, 1, '2021-09-08 07:48:07', '2021-09-08 07:48:07'),
(5, 11, 6, 1, '2021-09-12 00:14:52', '2021-09-12 00:14:52'),
(7, 12, 14, 1, '2021-09-12 01:30:13', '2021-09-12 01:30:13'),
(8, 12, 15, 1, '2021-09-12 03:07:00', '2021-09-12 03:07:00'),
(9, 14, 7, 1, '2021-09-12 06:36:32', '2021-09-12 06:36:32'),
(11, 16, 16, 1, '2021-09-14 06:56:00', '2021-09-14 06:56:00'),
(12, 17, 15, 1, '2021-09-14 07:57:14', '2021-09-14 07:57:14'),
(14, 19, 7, 1, '2021-09-14 08:13:38', '2021-09-14 08:13:38'),
(16, 21, 7, 1, '2021-09-14 19:51:00', '2021-09-14 19:51:00'),
(20, 25, 11, 1, '2021-09-22 10:14:50', '2021-09-22 10:14:50'),
(21, 26, 6, 1, '2021-09-23 13:09:53', '2021-09-23 13:09:53'),
(22, 27, 16, 1, '2021-09-23 13:45:20', '2021-09-23 13:45:20'),
(23, 28, 15, 1, '2021-09-23 14:35:23', '2021-09-23 14:35:23'),
(24, 29, 6, 1, '2021-09-23 14:37:09', '2021-09-23 14:37:09'),
(25, 30, 6, 1, '2021-09-24 02:28:39', '2021-09-24 02:28:39'),
(26, 31, 10, 1, '2021-09-24 02:34:49', '2021-09-24 02:34:49');

-- --------------------------------------------------------

--
-- Table structure for table `datapengembalian`
--

CREATE TABLE `datapengembalian` (
  `id_pengembalian` int(10) UNSIGNED NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `nama_pengembali` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '00004', 'Nugroho Eko', '152341235', 'Mahasiswa', '085329428382', '2021-09-01 20:07:25', '2021-09-28 08:18:01'),
(5, '00005', 'Pak Mundzir', '173040037', 'Mahasiswa', '085164825358', '2021-09-22 10:09:56', '2021-09-22 10:09:56');

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
(24, '2021_09_23_193020_create_status_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_masuk`
--

CREATE TABLE `mutasi_masuk` (
  `id_mutasi_masuk` int(10) UNSIGNED NOT NULL,
  `kode_mutasi_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mutasi_masuk`
--

INSERT INTO `mutasi_masuk` (`id_mutasi_masuk`, `kode_mutasi_masuk`, `nama_barang_mutasi`, `merk`, `kondisi`, `satuan`, `asal_barang`, `tempat`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(7, 'MUT00001', 'LED TV', 'Cooca', 'Normal', 'Unit', 'Lab Mesin', 'Laboratorium Software', 2000000, 1, '2021-09-22 02:13:11', '2021-09-22 02:13:11'),
(10, 'MUT00002', 'LED TV', 'LG', 'Normal', 'Unit', 'Lab Mesin', 'Laboratorium Multimedia', 2000000, 1, '2021-09-23 10:34:32', '2021-09-23 10:34:32');

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
('6f9jsgH8qh9Df7E3RUtOkiuanjAINwbgLxMAUMPO', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWnVlNTlMMEd1OGwwV0o2bE9vamFNeDd0QkpvY251Sk90TDU1WXp3ZSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxOiJodHRwOi8vbG9jYWxob3N0L3RlbWJvay9wdWJsaWMvcGVtaW5qYW1hbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRCWEgvZWhCNUlhQ1BjcEc4aFV1RXQudzJ1RFhOOHZPR2kyb3lONGxEV2MybUJaZ3A4ejFLVyI7fQ==', 1632801808),
('6lVoCqADgLuyFEVzQmX2mXklRZhQrbfLTTutKQ0Z', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSm9EaHFIU3ZOSDNFWFdiNXBJdEhCTXhnRVNOeElmaFI3akxqNkdDUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEJYSC9laEI1SWFDUGNwRzhoVXVFdC53MnVEWE44dk9HaTJveU40bERXYzJtQlpncDh6MUtXIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRCWEgvZWhCNUlhQ1BjcEc4aFV1RXQudzJ1RFhOOHZPR2kyb3lONGxEV2MybUJaZ3A4ejFLVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3QvdGVtYm9rL3B1YmxpYy9wZW1pbmphbWFuIjt9fQ==', 1632757246),
('hGFc7AUlXBgwHz3UAGHtqA3d99VO30Tc4pvH1Vht', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZ2xURTlPNjVRUXd6S1Q4QlB0bHZHUXN2bUNLZ1l1TDh0TEp2anFJNSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxOiJodHRwOi8vbG9jYWxob3N0L3RlbWJvay9wdWJsaWMvcGVtaW5qYW1hbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRCWEgvZWhCNUlhQ1BjcEc4aFV1RXQudzJ1RFhOOHZPR2kyb3lONGxEV2MybUJaZ3A4ejFLVyI7fQ==', 1632790655),
('kTAerbpV4hqGoEAZ7gqvvFQZqg6ukcW35XjTL73F', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoid0FTMXhHZzQwd3B2b3E3UDY0TlV2dHJBeGh2ZWZ4bktMWE9DbjMyWSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L3RlbWJvay9wdWJsaWMvc2V0dGluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRCWEgvZWhCNUlhQ1BjcEc4aFV1RXQudzJ1RFhOOHZPR2kyb3lONGxEV2MybUJaZ3A4ejFLVyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkQlhIL2VoQjVJYUNQY3BHOGhVdUV0LncydURYTjh2T0dpMm95TjRsRFdjMm1CWmdwOHoxS1ciO30=', 1632817451);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_laboratorium` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_laboratorium`, `alamat`, `telepon`, `tipe_nota`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'Laboratorium Komputer', 'Jln Kijang', '089123456789', 1, '/img/logo-2021-09-28152333.png', '/img/member.png', NULL, '2021-09-28 08:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(10) UNSIGNED NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', NULL, NULL),
(2, 'Sukses', NULL, NULL);

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
  `level` tinyint(4) NOT NULL DEFAULT 0,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$BXH/ehB5IaCPcpG8hUuEt.w2uDXN8vOGi2oyN4lDWc2mBZgp8z1KW', 1, NULL, NULL, NULL, NULL, NULL, '2021-07-28 08:44:03', '2021-07-28 08:44:03'),
(2, 'Arif Rifan', 'arif.laboran@gmail.com', NULL, '$2y$10$d..dIbU9zNKqz5Wf488nHebELVOWVooxvmiUDjm.KRHdcOu7W5Ic.', 2, NULL, NULL, NULL, NULL, NULL, '2021-09-17 16:29:59', '2021-09-17 16:38:49');

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
-- Indexes for table `laboratorium`
--
ALTER TABLE `laboratorium`
  ADD PRIMARY KEY (`id_laboratorium`);

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
-- Indexes for table `mutasi_masuk`
--
ALTER TABLE `mutasi_masuk`
  ADD PRIMARY KEY (`id_mutasi_masuk`);

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
  MODIFY `id_barang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `datapeminjaman`
--
ALTER TABLE `datapeminjaman`
  MODIFY `id_peminjaman` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `datapeminjaman_detail`
--
ALTER TABLE `datapeminjaman_detail`
  MODIFY `id_peminjaman_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `datapengembalian`
--
ALTER TABLE `datapengembalian`
  MODIFY `id_pengembalian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laboratorium`
--
ALTER TABLE `laboratorium`
  MODIFY `id_laboratorium` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mutasi_masuk`
--
ALTER TABLE `mutasi_masuk`
  MODIFY `id_mutasi_masuk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id_status` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
