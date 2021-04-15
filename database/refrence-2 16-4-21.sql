-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2021 pada 00.14
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `refrence-2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `document`
--

CREATE TABLE `document` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `id_forum` int(122) DEFAULT NULL,
  `judul_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `deskripsi_dokumen` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(122) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe_dokumen` int(20) DEFAULT NULL,
  `jumlah_like` int(122) DEFAULT NULL,
  `jumlah_view` int(122) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified_by` int(12) DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `document`
--

INSERT INTO `document` (`id`, `id_kategori`, `id_forum`, `judul_dokumen`, `jumlah_halaman`, `deskripsi_dokumen`, `publisher`, `tahun`, `file`, `cover`, `tipe_dokumen`, `jumlah_like`, `jumlah_view`, `created_at`, `updated_at`, `created_by`, `modified_by`, `modified_at`) VALUES
(40, 2, NULL, 'referensi', 1200, 'Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.', 'dodi', '2021', 'document/referensi/index.html', NULL, NULL, 1, 1, '2021-04-15 11:58:24', '2021-04-15 12:18:29', NULL, NULL, '2021-04-15 18:58:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ebook`
--

CREATE TABLE `ebook` (
  `id_ebook` int(122) NOT NULL,
  `id_kategori` int(122) NOT NULL,
  `judul_ebook` varchar(130) NOT NULL,
  `deskripsi_ebook` mediumtext NOT NULL,
  `publisher` varchar(130) NOT NULL,
  `tahun` int(12) NOT NULL,
  `user_id` int(122) DEFAULT NULL,
  `cover` varchar(222) DEFAULT NULL,
  `keterangan` varchar(1000) DEFAULT NULL,
  `file` varchar(120) NOT NULL,
  `id_status` int(8) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(12) DEFAULT NULL,
  `modified_by` bigint(12) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ebook`
--

INSERT INTO `ebook` (`id_ebook`, `id_kategori`, `judul_ebook`, `deskripsi_ebook`, `publisher`, `tahun`, `user_id`, `cover`, `keterangan`, `file`, `id_status`, `created_at`, `modified_at`, `created_by`, `modified_by`, `updated_at`) VALUES
(47, 1, 'referensi', 'adminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadminadmin', 'andi dan rommy', 2021, 3, 'ebook/20210415185521.png', NULL, 'ebook/.781.pdf', NULL, '2021-04-15 11:55:21', '2021-04-15 18:55:21', NULL, NULL, '2021-04-15 11:55:21'),
(48, 1, 'percobaan 1', 'Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.Now you can browse privately, and other people who use this device won’t see your activity.', 'andi', 2020, 3, NULL, NULL, 'ebook/.161-822-1-PB (1).pdf', 1, '2021-04-15 12:20:34', '2021-04-15 19:20:34', NULL, NULL, '2021-04-15 12:25:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum`
--

CREATE TABLE `forum` (
  `id` int(21) NOT NULL,
  `message` varchar(6500) NOT NULL,
  `user_id` int(21) NOT NULL,
  `dokumen_id` varchar(122) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `kategori_type_id` int(11) NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_dokumen` bigint(20) DEFAULT NULL,
  `jumlah_like` bigint(20) DEFAULT NULL,
  `jumlah_view` bigint(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori_type_id`, `kategori`, `jumlah_dokumen`, `jumlah_like`, `jumlah_view`, `created_by`, `modified_by`, `modified_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'teknis', NULL, NULL, NULL, NULL, NULL, '2021-04-16 01:54:25', '2021-04-15 11:54:25', '2021-04-15 11:54:25'),
(2, 2, 'transmisi', NULL, 1, NULL, NULL, NULL, '2021-04-16 01:54:36', '2021-04-15 11:54:36', '2021-04-15 12:18:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_type`
--

CREATE TABLE `kategori_type` (
  `kategori_type_id` int(122) NOT NULL,
  `type` varchar(122) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_type`
--

INSERT INTO `kategori_type` (`kategori_type_id`, `type`, `created_at`) VALUES
(1, 'Teknis', '2021-02-23 07:26:58'),
(2, 'Non Teknis', '2021-02-23 07:27:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likesdocument`
--

CREATE TABLE `likesdocument` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `document_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `likesdocument`
--

INSERT INTO `likesdocument` (`id`, `user_id`, `updated_at`, `document_id`, `created_at`, `modified_at`) VALUES
(108, 1947, '2021-03-25 04:44:30', 38, '2021-03-25 04:44:30', '2021-03-25 11:44:30'),
(111, 5, '2021-03-30 14:30:08', 36, '2021-03-30 14:30:08', '2021-03-30 21:30:08'),
(112, 5, '2021-03-30 14:30:32', 37, '2021-03-30 14:30:32', '2021-03-30 21:30:32'),
(113, 5, '2021-03-30 14:31:13', 38, '2021-03-30 14:31:13', '2021-03-30 21:31:13'),
(114, 1699, '2021-04-01 12:09:44', 34, '2021-04-01 12:09:44', '2021-04-01 19:09:44'),
(115, 1699, '2021-04-01 12:09:51', 36, '2021-04-01 12:09:51', '2021-04-01 19:09:51'),
(116, 1699, '2021-04-01 12:11:37', 38, '2021-04-01 12:11:37', '2021-04-01 19:11:37'),
(117, 3, '2021-04-15 12:18:07', 40, '2021-04-15 12:18:07', '2021-04-15 19:18:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_29_063035_create_user_auth', 1),
(2, '2021_03_30_164042_create_kategori_type', 1),
(3, '2021_03_30_164137_create_status', 1),
(4, '2021_03_30_164253_create_kategori', 1),
(5, '2021_03_30_165415_create_document', 1),
(6, '2021_03_30_170230_create_ebook', 1),
(7, '2021_03_30_170953_create_forum', 1),
(8, '2021_03_30_171045_create_likesdocument', 1),
(9, '2021_03_30_173318_create_permission_tables', 1),
(10, '2021_04_13_081732_create_slider_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 13),
(5, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 9),
(5, 'App\\Models\\User', 13),
(6, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 6),
(6, 'App\\Models\\User', 9),
(6, 'App\\Models\\User', 13),
(7, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 9),
(7, 'App\\Models\\User', 13),
(8, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 6),
(8, 'App\\Models\\User', 9),
(8, 'App\\Models\\User', 13),
(9, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 6),
(9, 'App\\Models\\User', 9),
(9, 'App\\Models\\User', 13),
(10, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 6),
(10, 'App\\Models\\User', 9),
(10, 'App\\Models\\User', 13),
(11, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 9),
(11, 'App\\Models\\User', 13),
(12, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 2),
(12, 'App\\Models\\User', 3),
(12, 'App\\Models\\User', 9),
(12, 'App\\Models\\User', 10),
(12, 'App\\Models\\User', 13),
(13, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 2),
(13, 'App\\Models\\User', 3),
(13, 'App\\Models\\User', 9),
(13, 'App\\Models\\User', 10),
(13, 'App\\Models\\User', 13),
(14, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 2),
(14, 'App\\Models\\User', 3),
(14, 'App\\Models\\User', 9),
(14, 'App\\Models\\User', 10),
(14, 'App\\Models\\User', 13),
(15, 'App\\Models\\User', 1),
(15, 'App\\Models\\User', 2),
(15, 'App\\Models\\User', 3),
(15, 'App\\Models\\User', 9),
(15, 'App\\Models\\User', 10),
(15, 'App\\Models\\User', 13),
(16, 'App\\Models\\User', 1),
(16, 'App\\Models\\User', 9),
(16, 'App\\Models\\User', 13),
(17, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 2),
(17, 'App\\Models\\User', 3),
(17, 'App\\Models\\User', 4),
(17, 'App\\Models\\User', 9),
(17, 'App\\Models\\User', 10),
(17, 'App\\Models\\User', 13),
(18, 'App\\Models\\User', 1),
(18, 'App\\Models\\User', 2),
(18, 'App\\Models\\User', 3),
(18, 'App\\Models\\User', 4),
(18, 'App\\Models\\User', 9),
(18, 'App\\Models\\User', 10),
(18, 'App\\Models\\User', 13),
(19, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 2),
(19, 'App\\Models\\User', 3),
(19, 'App\\Models\\User', 4),
(19, 'App\\Models\\User', 9),
(19, 'App\\Models\\User', 10),
(19, 'App\\Models\\User', 13),
(20, 'App\\Models\\User', 1),
(20, 'App\\Models\\User', 2),
(20, 'App\\Models\\User', 3),
(20, 'App\\Models\\User', 4),
(20, 'App\\Models\\User', 9),
(20, 'App\\Models\\User', 10),
(20, 'App\\Models\\User', 13),
(21, 'App\\Models\\User', 1),
(21, 'App\\Models\\User', 9),
(21, 'App\\Models\\User', 13),
(22, 'App\\Models\\User', 1),
(22, 'App\\Models\\User', 9),
(22, 'App\\Models\\User', 13),
(23, 'App\\Models\\User', 1),
(23, 'App\\Models\\User', 9),
(23, 'App\\Models\\User', 13),
(24, 'App\\Models\\User', 1),
(24, 'App\\Models\\User', 9),
(24, 'App\\Models\\User', 13),
(25, 'App\\Models\\User', 1),
(25, 'App\\Models\\User', 9),
(25, 'App\\Models\\User', 13),
(26, 'App\\Models\\User', 1),
(26, 'App\\Models\\User', 9),
(26, 'App\\Models\\User', 13),
(27, 'App\\Models\\User', 1),
(27, 'App\\Models\\User', 9),
(27, 'App\\Models\\User', 13),
(28, 'App\\Models\\User', 1),
(28, 'App\\Models\\User', 9),
(28, 'App\\Models\\User', 13),
(29, 'App\\Models\\User', 1),
(29, 'App\\Models\\User', 9),
(29, 'App\\Models\\User', 13),
(30, 'App\\Models\\User', 1),
(30, 'App\\Models\\User', 2),
(30, 'App\\Models\\User', 3),
(30, 'App\\Models\\User', 4),
(30, 'App\\Models\\User', 5),
(30, 'App\\Models\\User', 6),
(30, 'App\\Models\\User', 9),
(30, 'App\\Models\\User', 10),
(30, 'App\\Models\\User', 11),
(30, 'App\\Models\\User', 12),
(30, 'App\\Models\\User', 13),
(30, 'App\\Models\\User', 14),
(30, 'App\\Models\\User', 15),
(30, 'App\\Models\\User', 16),
(30, 'App\\Models\\User', 17),
(31, 'App\\Models\\User', 1),
(31, 'App\\Models\\User', 2),
(31, 'App\\Models\\User', 3),
(31, 'App\\Models\\User', 4),
(31, 'App\\Models\\User', 5),
(31, 'App\\Models\\User', 6),
(31, 'App\\Models\\User', 9),
(31, 'App\\Models\\User', 10),
(31, 'App\\Models\\User', 11),
(31, 'App\\Models\\User', 12),
(31, 'App\\Models\\User', 13),
(31, 'App\\Models\\User', 14),
(31, 'App\\Models\\User', 15),
(31, 'App\\Models\\User', 16),
(31, 'App\\Models\\User', 17),
(32, 'App\\Models\\User', 1),
(32, 'App\\Models\\User', 2),
(32, 'App\\Models\\User', 3),
(32, 'App\\Models\\User', 4),
(32, 'App\\Models\\User', 5),
(32, 'App\\Models\\User', 6),
(32, 'App\\Models\\User', 9),
(32, 'App\\Models\\User', 10),
(32, 'App\\Models\\User', 11),
(32, 'App\\Models\\User', 12),
(32, 'App\\Models\\User', 13),
(32, 'App\\Models\\User', 14),
(32, 'App\\Models\\User', 15),
(32, 'App\\Models\\User', 16),
(32, 'App\\Models\\User', 17),
(33, 'App\\Models\\User', 1),
(33, 'App\\Models\\User', 2),
(33, 'App\\Models\\User', 3),
(33, 'App\\Models\\User', 4),
(33, 'App\\Models\\User', 5),
(33, 'App\\Models\\User', 6),
(33, 'App\\Models\\User', 9),
(33, 'App\\Models\\User', 10),
(33, 'App\\Models\\User', 11),
(33, 'App\\Models\\User', 12),
(33, 'App\\Models\\User', 13),
(33, 'App\\Models\\User', 14),
(33, 'App\\Models\\User', 15),
(33, 'App\\Models\\User', 16),
(33, 'App\\Models\\User', 17),
(34, 'App\\Models\\User', 1),
(34, 'App\\Models\\User', 4),
(34, 'App\\Models\\User', 5),
(34, 'App\\Models\\User', 6),
(34, 'App\\Models\\User', 9),
(34, 'App\\Models\\User', 11),
(34, 'App\\Models\\User', 12),
(34, 'App\\Models\\User', 13),
(34, 'App\\Models\\User', 14),
(34, 'App\\Models\\User', 15),
(34, 'App\\Models\\User', 16),
(34, 'App\\Models\\User', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user-list', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(2, 'user-create', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(3, 'user-edit', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(4, 'user-delete', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(5, 'user-import-export', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(6, 'kategori-list', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(7, 'kategori-create', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(8, 'kategori-edit', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(9, 'kategori-delete', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(10, 'kategori-export', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(11, 'kategori-import', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(12, 'dokumen-list', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(13, 'dokumen-create', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(14, 'dokumen-edit', 'web', '2021-04-15 08:49:27', '2021-04-15 08:49:27'),
(15, 'dokumen-delete', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(16, 'dokumen-export', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(17, 'ebook-list-admin', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(18, 'ebook-delete-admin', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(19, 'ebook-create-admin', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(20, 'ebook-edit-admin', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(21, 'ebook-edit-superadmin', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(22, 'ebook-list-superadmin', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(23, 'ebook-delete-superadmin', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(24, 'komentar-list', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(25, 'komentar-delete', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(26, 'komentar-export', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(27, 'preview-admin', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(28, 'preview-list', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(29, 'dashboard-admin', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(30, 'profile', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(31, 'reference', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(32, 'like', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(33, 'dashboard-user', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(34, 'kumpulan-buku', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'pusdiklat', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(2, 'updl', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(3, 'siswa', 'web', '2021-04-15 08:49:28', '2021-04-15 08:49:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'gambar/20210415184858.jpg', '2021-04-15 11:48:58', '2021-04-15 11:48:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Di Terima', '2021-04-15 08:49:27', NULL),
(2, 'Di Tolak', '2021-04-15 08:49:27', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_auth`
--

CREATE TABLE `user_auth` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_id` bigint(20) DEFAULT NULL,
  `user_entity_id` bigint(20) DEFAULT NULL,
  `user_key` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_at` datetime DEFAULT NULL,
  `modified_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_auth`
--

INSERT INTO `user_auth` (`id`, `full_name`, `avatar_file`, `email`, `username`, `password`, `user_type_id`, `user_entity_id`, `user_key`, `login_at`, `modified_at`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', NULL, 'superadmin@plnpusdiklat.com', 'superadmin', '$2y$10$puUj.00dugQ5npa9E8D7bO2bRtQe4OegYnq85bP5tNO3rgQrBiyFa', NULL, NULL, NULL, NULL, '2021-04-15 22:49:28', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(2, 'wahyu', NULL, 'administrator@plnpusdiklat.com', 'wahyu', '$2y$10$mzgkP.kvteOvFYTp3vy8uuIJ/pIaPWP2WzNTYl0FPpZK5dhkWE5Rq', NULL, NULL, NULL, NULL, '2021-04-15 22:49:28', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(3, 'admin', NULL, 'admin@plnpusdiklat.com', 'admin', '$2y$10$PsOTm5Ofer.Ips7bc72uCOX4KOJo3sf376m5yhrI4Cyhxu8gnrDsW', NULL, NULL, NULL, NULL, '2021-04-15 22:49:28', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(4, 'andi', NULL, 'andi@plnpusdiklat.com', 'andi', '$2y$10$h2VeYRNmNS/9DvjtRu6Ik.0YFhQ1sbANXsK0i.88Irid/13EvcyqC', NULL, NULL, NULL, NULL, '2021-04-15 22:49:28', '2021-04-15 08:49:28', '2021-04-15 08:49:28'),
(5, 'wahyu', NULL, 'wahyu@gmail.com', 'wahyu1', '$2y$10$r/aTBDgnMde2FtQn5bzxhOpjtagyMB81oklcH15WCksVoOE8mz0Uy', NULL, NULL, NULL, NULL, '2021-04-15 22:57:26', '2021-04-15 08:57:26', '2021-04-15 08:57:26'),
(6, 'srobek', NULL, 'srob@gmail.com', 'srob', '$2y$10$hmpHqm.l2eU2GhjTFtJ4Q.2M01LixcSNrZf1CA7Rpgui0oEagFGiK', NULL, NULL, NULL, NULL, '2021-04-15 22:58:10', '2021-04-15 08:58:10', '2021-04-15 09:02:51'),
(9, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$iCukK6QcPhwJ2iClNiDvBuX.1TlWyHk4oBX/W..K1y/EFlPscy2wK', NULL, NULL, NULL, NULL, '2021-04-16 03:04:44', '2021-04-15 13:04:44', '2021-04-15 13:04:53'),
(10, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$VZ7WZqSK0S0HTirL4vypf.9OVwCUlS6CVlGYwYIpOQKozjVg93VPq', NULL, NULL, NULL, NULL, '2021-04-16 03:04:45', '2021-04-15 13:04:45', '2021-04-15 13:04:54'),
(11, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$XvOhQMMYVCcloqfyY12PNeP1IfleZ/u0xGgjnwF07pUtxqit4X6D6', NULL, NULL, NULL, NULL, '2021-04-16 03:04:45', '2021-04-15 13:04:45', '2021-04-15 13:04:54'),
(12, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$0oCWU1uvGXuSnEn5T9On7ere30xS/mTXpcUQQmhpb4zQO.p5kG/5O', NULL, NULL, NULL, NULL, '2021-04-16 03:04:45', '2021-04-15 13:04:45', '2021-04-15 13:04:53'),
(13, 'andi agus', NULL, 'andiaja@gmail.com', 'updl', '$2y$10$0KkzxgueORuE51kD7dCZW.iNrOLS/sKwP6DNIePxxpWPMEvHYYD0u', NULL, NULL, NULL, NULL, '2021-04-16 03:04:45', '2021-04-15 13:04:45', '2021-04-15 13:04:52'),
(14, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$zQl8B5Igut4I5MJ3bhn1xeJWs4SqGCtOOpb8AUQ91g.sOkTB0wVjG', NULL, NULL, NULL, NULL, '2021-04-16 03:04:45', '2021-04-15 13:04:45', '2021-04-15 13:04:52'),
(15, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$/GzhbSp9Tzyb1Py3gA6frO21AE2qD2hAnIQzUqFcu/Yd16mssiala', NULL, NULL, NULL, NULL, '2021-04-16 03:04:45', '2021-04-15 13:04:45', '2021-04-15 13:04:50'),
(16, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$6ZXAHAOUq.q8Ip0SqvIy9ecbJmppsyVAdM2vKt49x5HaeY70ca/uK', NULL, NULL, NULL, NULL, '2021-04-16 03:04:45', '2021-04-15 13:04:45', '2021-04-15 13:04:53'),
(17, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '11223344', '$2y$10$TrdPD9XkPWoBg1InKJSZoeNJB0/4tFi5nbNCsN/QKV.XtlvK.MlKK', NULL, NULL, NULL, NULL, '2021-04-16 03:04:47', '2021-04-15 13:04:47', '2021-04-15 13:04:47');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`id_ebook`);

--
-- Indeks untuk tabel `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kategori_type`
--
ALTER TABLE `kategori_type`
  ADD PRIMARY KEY (`kategori_type_id`);

--
-- Indeks untuk tabel `likesdocument`
--
ALTER TABLE `likesdocument`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `user_auth`
--
ALTER TABLE `user_auth`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `document`
--
ALTER TABLE `document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `ebook`
--
ALTER TABLE `ebook`
  MODIFY `id_ebook` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategori_type`
--
ALTER TABLE `kategori_type`
  MODIFY `kategori_type_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `likesdocument`
--
ALTER TABLE `likesdocument`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id_status` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_auth`
--
ALTER TABLE `user_auth`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
