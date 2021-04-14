-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Apr 2021 pada 07.26
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
(40, 1376, NULL, 'Referensi Buku', 200, 'kini menjadi salah satu kebutuhan agar tetap terlihat menarik dalam berbagai kesempatan, pilihan style yang gak ribet dan simple juga menjadi prioritas bagi para kaum hawa. Selain untuk meminimalisir waktu, pilihan gaya yang simple juga penting untuk meminimalisir budget.kini menjadi salah satu kebutuhan agar tetap terlihat menarik dalam berbagai kesempatan, pilihan style yang gak ribet dan simple juga menjadi prioritas bagi para kaum hawa. Selain untuk meminimalisir waktu, pilihan gaya yang simple juga penting untuk meminimalisir budget.kini menjadi salah satu kebutuhan agar tetap terlihat menarik dalam berbagai kesempatan, pilihan style yang gak ribet dan simple juga menjadi prioritas bagi para kaum hawa. Selain untuk meminimalisir waktu, pilihan gaya yang simple juga penting untuk meminimalisir budget.kini menjadi salah satu kebutuhan agar tetap terlihat menarik dalam berbagai kesempatan, pilihan style yang gak ribet dan simple juga menjadi prioritas bagi para kaum hawa. Selain untuk meminimalisir waktu, pilihan gaya yang simple juga penting untuk meminimalisir budget.kini menjadi salah satu kebutuhan agar tetap terlihat menarik dalam berbagai kesempatan, pilihan style yang gak ribet dan simple juga menjadi prioritas bagi para kaum hawa. Selain untuk meminimalisir waktu, pilihan gaya yang simple juga penting untuk meminimalisir budget.kini menjadi salah satu kebutuhan agar tetap terlihat menarik dalam berbagai kesempatan, pilihan style yang gak ribet dan simple juga menjadi prioritas bagi para kaum hawa. Selain untuk meminimalisir waktu, pilihan gaya yang simple juga penting untuk meminimalisir budget.', 'Mas Andi', '2020', 'document/Referensi Buku/index.html', 'document/20210413132634.png', NULL, NULL, NULL, '2021-04-13 06:26:34', '2021-04-13 06:26:34', NULL, NULL, '2021-04-13 13:26:34');

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
(47, 1377, 'Buku Transmisi', 'preview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-adminpreview-admin', 'Pak Dodi', 2020, 3, 'ebook/20210413133005.png', 'Sudah Bagus', 'ebook/.20210410174922.pdf', 1, '2021-04-13 06:30:05', '2021-04-13 13:30:05', NULL, NULL, '2021-04-13 06:30:39'),
(48, 1376, 'referensi', 'https://meet.google.com/vjy-xgui-cuohttps://meet.google.com/vjy-xgui-cuohttps://meet.google.com/vjy-xgui-cuohttps://meet.google.com/vjy-xgui-cuohttps://meet.google.com/vjy-xgui-cuohttps://meet.google.com/vjy-xgui-cuohttps://meet.google.com/vjy-xgui-cuohttps://meet.google.com/vjy-xgui-cuo', 'andi', 2020, 3, 'ebook/20210413155302.jpg', NULL, 'ebook/.20210410174922 (1).pdf', NULL, '2021-04-13 08:53:02', '2021-04-13 15:53:02', NULL, NULL, '2021-04-13 08:53:02');

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
  `id_kategori` int(20) NOT NULL,
  `kategori_type_id` int(12) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `jumlah_dokumen` int(20) DEFAULT NULL,
  `jumlah_like` int(20) DEFAULT NULL,
  `jumlah_view` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(12) DEFAULT NULL,
  `modified_by` bigint(12) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori_type_id`, `kategori`, `jumlah_dokumen`, `jumlah_like`, `jumlah_view`, `created_at`, `modified_at`, `created_by`, `modified_by`, `updated_at`) VALUES
(1376, 1, 'pembangkit listrik', NULL, NULL, NULL, '2021-04-13 06:20:40', '2021-04-13 13:20:40', NULL, NULL, '2021-04-13 06:20:40'),
(1377, 2, 'Transmisi', NULL, NULL, NULL, '2021-04-13 06:20:59', '2021-04-13 13:20:59', NULL, NULL, '2021-04-13 06:20:59');

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
(116, 1699, '2021-04-01 12:11:37', 38, '2021-04-01 12:11:37', '2021-04-01 19:11:37');

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
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 18),
(1, 'App\\Models\\User', 38),
(1, 'App\\Models\\User', 42),
(1, 'App\\Models\\User', 47),
(1, 'App\\Models\\User', 51),
(1, 'App\\Models\\User', 56),
(1, 'App\\Models\\User', 60),
(1, 'App\\Models\\User', 66),
(1, 'App\\Models\\User', 70),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 38),
(2, 'App\\Models\\User', 42),
(2, 'App\\Models\\User', 47),
(2, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 56),
(2, 'App\\Models\\User', 60),
(2, 'App\\Models\\User', 66),
(2, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 51),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 66),
(3, 'App\\Models\\User', 70),
(4, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 38),
(4, 'App\\Models\\User', 42),
(4, 'App\\Models\\User', 47),
(4, 'App\\Models\\User', 51),
(4, 'App\\Models\\User', 56),
(4, 'App\\Models\\User', 60),
(4, 'App\\Models\\User', 66),
(4, 'App\\Models\\User', 70),
(5, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 9),
(5, 'App\\Models\\User', 14),
(5, 'App\\Models\\User', 18),
(5, 'App\\Models\\User', 38),
(5, 'App\\Models\\User', 42),
(5, 'App\\Models\\User', 47),
(5, 'App\\Models\\User', 51),
(5, 'App\\Models\\User', 56),
(5, 'App\\Models\\User', 60),
(5, 'App\\Models\\User', 66),
(5, 'App\\Models\\User', 70),
(6, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 2),
(6, 'App\\Models\\User', 5),
(6, 'App\\Models\\User', 9),
(6, 'App\\Models\\User', 14),
(6, 'App\\Models\\User', 18),
(6, 'App\\Models\\User', 38),
(6, 'App\\Models\\User', 42),
(6, 'App\\Models\\User', 47),
(6, 'App\\Models\\User', 51),
(6, 'App\\Models\\User', 56),
(6, 'App\\Models\\User', 60),
(6, 'App\\Models\\User', 66),
(6, 'App\\Models\\User', 70),
(7, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 2),
(7, 'App\\Models\\User', 5),
(7, 'App\\Models\\User', 9),
(7, 'App\\Models\\User', 14),
(7, 'App\\Models\\User', 18),
(7, 'App\\Models\\User', 38),
(7, 'App\\Models\\User', 42),
(7, 'App\\Models\\User', 47),
(7, 'App\\Models\\User', 51),
(7, 'App\\Models\\User', 56),
(7, 'App\\Models\\User', 60),
(7, 'App\\Models\\User', 66),
(7, 'App\\Models\\User', 70),
(8, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 2),
(8, 'App\\Models\\User', 5),
(8, 'App\\Models\\User', 9),
(8, 'App\\Models\\User', 14),
(8, 'App\\Models\\User', 18),
(8, 'App\\Models\\User', 38),
(8, 'App\\Models\\User', 42),
(8, 'App\\Models\\User', 47),
(8, 'App\\Models\\User', 51),
(8, 'App\\Models\\User', 56),
(8, 'App\\Models\\User', 60),
(8, 'App\\Models\\User', 66),
(8, 'App\\Models\\User', 70),
(9, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 5),
(9, 'App\\Models\\User', 9),
(9, 'App\\Models\\User', 14),
(9, 'App\\Models\\User', 18),
(9, 'App\\Models\\User', 38),
(9, 'App\\Models\\User', 42),
(9, 'App\\Models\\User', 47),
(9, 'App\\Models\\User', 51),
(9, 'App\\Models\\User', 56),
(9, 'App\\Models\\User', 60),
(9, 'App\\Models\\User', 66),
(9, 'App\\Models\\User', 70),
(10, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 5),
(10, 'App\\Models\\User', 9),
(10, 'App\\Models\\User', 14),
(10, 'App\\Models\\User', 18),
(10, 'App\\Models\\User', 38),
(10, 'App\\Models\\User', 42),
(10, 'App\\Models\\User', 47),
(10, 'App\\Models\\User', 51),
(10, 'App\\Models\\User', 56),
(10, 'App\\Models\\User', 60),
(10, 'App\\Models\\User', 66),
(10, 'App\\Models\\User', 70),
(11, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 5),
(11, 'App\\Models\\User', 9),
(11, 'App\\Models\\User', 14),
(11, 'App\\Models\\User', 18),
(11, 'App\\Models\\User', 38),
(11, 'App\\Models\\User', 42),
(11, 'App\\Models\\User', 47),
(11, 'App\\Models\\User', 51),
(11, 'App\\Models\\User', 56),
(11, 'App\\Models\\User', 60),
(11, 'App\\Models\\User', 66),
(11, 'App\\Models\\User', 70),
(12, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 2),
(12, 'App\\Models\\User', 3),
(12, 'App\\Models\\User', 5),
(12, 'App\\Models\\User', 9),
(12, 'App\\Models\\User', 14),
(12, 'App\\Models\\User', 15),
(12, 'App\\Models\\User', 18),
(12, 'App\\Models\\User', 38),
(12, 'App\\Models\\User', 42),
(12, 'App\\Models\\User', 47),
(12, 'App\\Models\\User', 51),
(12, 'App\\Models\\User', 56),
(12, 'App\\Models\\User', 58),
(12, 'App\\Models\\User', 59),
(12, 'App\\Models\\User', 60),
(12, 'App\\Models\\User', 61),
(12, 'App\\Models\\User', 62),
(12, 'App\\Models\\User', 63),
(12, 'App\\Models\\User', 64),
(12, 'App\\Models\\User', 66),
(12, 'App\\Models\\User', 67),
(12, 'App\\Models\\User', 70),
(13, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 2),
(13, 'App\\Models\\User', 3),
(13, 'App\\Models\\User', 5),
(13, 'App\\Models\\User', 9),
(13, 'App\\Models\\User', 14),
(13, 'App\\Models\\User', 15),
(13, 'App\\Models\\User', 18),
(13, 'App\\Models\\User', 38),
(13, 'App\\Models\\User', 42),
(13, 'App\\Models\\User', 47),
(13, 'App\\Models\\User', 51),
(13, 'App\\Models\\User', 56),
(13, 'App\\Models\\User', 58),
(13, 'App\\Models\\User', 59),
(13, 'App\\Models\\User', 60),
(13, 'App\\Models\\User', 61),
(13, 'App\\Models\\User', 62),
(13, 'App\\Models\\User', 63),
(13, 'App\\Models\\User', 64),
(13, 'App\\Models\\User', 66),
(13, 'App\\Models\\User', 67),
(13, 'App\\Models\\User', 70),
(14, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 2),
(14, 'App\\Models\\User', 3),
(14, 'App\\Models\\User', 5),
(14, 'App\\Models\\User', 9),
(14, 'App\\Models\\User', 14),
(14, 'App\\Models\\User', 15),
(14, 'App\\Models\\User', 18),
(14, 'App\\Models\\User', 38),
(14, 'App\\Models\\User', 42),
(14, 'App\\Models\\User', 47),
(14, 'App\\Models\\User', 51),
(14, 'App\\Models\\User', 56),
(14, 'App\\Models\\User', 58),
(14, 'App\\Models\\User', 59),
(14, 'App\\Models\\User', 60),
(14, 'App\\Models\\User', 61),
(14, 'App\\Models\\User', 62),
(14, 'App\\Models\\User', 63),
(14, 'App\\Models\\User', 64),
(14, 'App\\Models\\User', 66),
(14, 'App\\Models\\User', 67),
(14, 'App\\Models\\User', 70),
(15, 'App\\Models\\User', 1),
(15, 'App\\Models\\User', 2),
(15, 'App\\Models\\User', 3),
(15, 'App\\Models\\User', 5),
(15, 'App\\Models\\User', 9),
(15, 'App\\Models\\User', 14),
(15, 'App\\Models\\User', 15),
(15, 'App\\Models\\User', 18),
(15, 'App\\Models\\User', 38),
(15, 'App\\Models\\User', 42),
(15, 'App\\Models\\User', 47),
(15, 'App\\Models\\User', 51),
(15, 'App\\Models\\User', 56),
(15, 'App\\Models\\User', 58),
(15, 'App\\Models\\User', 59),
(15, 'App\\Models\\User', 60),
(15, 'App\\Models\\User', 61),
(15, 'App\\Models\\User', 62),
(15, 'App\\Models\\User', 63),
(15, 'App\\Models\\User', 64),
(15, 'App\\Models\\User', 66),
(15, 'App\\Models\\User', 67),
(15, 'App\\Models\\User', 70),
(16, 'App\\Models\\User', 1),
(16, 'App\\Models\\User', 3),
(16, 'App\\Models\\User', 5),
(16, 'App\\Models\\User', 9),
(16, 'App\\Models\\User', 14),
(16, 'App\\Models\\User', 18),
(16, 'App\\Models\\User', 38),
(16, 'App\\Models\\User', 42),
(16, 'App\\Models\\User', 47),
(16, 'App\\Models\\User', 51),
(16, 'App\\Models\\User', 56),
(16, 'App\\Models\\User', 60),
(16, 'App\\Models\\User', 66),
(16, 'App\\Models\\User', 70),
(17, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 2),
(17, 'App\\Models\\User', 3),
(17, 'App\\Models\\User', 5),
(17, 'App\\Models\\User', 9),
(17, 'App\\Models\\User', 14),
(17, 'App\\Models\\User', 18),
(17, 'App\\Models\\User', 38),
(17, 'App\\Models\\User', 42),
(17, 'App\\Models\\User', 47),
(17, 'App\\Models\\User', 51),
(17, 'App\\Models\\User', 56),
(17, 'App\\Models\\User', 60),
(17, 'App\\Models\\User', 66),
(17, 'App\\Models\\User', 70),
(18, 'App\\Models\\User', 1),
(18, 'App\\Models\\User', 2),
(18, 'App\\Models\\User', 3),
(18, 'App\\Models\\User', 5),
(18, 'App\\Models\\User', 9),
(18, 'App\\Models\\User', 14),
(18, 'App\\Models\\User', 18),
(18, 'App\\Models\\User', 38),
(18, 'App\\Models\\User', 42),
(18, 'App\\Models\\User', 47),
(18, 'App\\Models\\User', 51),
(18, 'App\\Models\\User', 56),
(18, 'App\\Models\\User', 60),
(18, 'App\\Models\\User', 66),
(18, 'App\\Models\\User', 70),
(19, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 5),
(19, 'App\\Models\\User', 9),
(19, 'App\\Models\\User', 14),
(19, 'App\\Models\\User', 18),
(19, 'App\\Models\\User', 38),
(19, 'App\\Models\\User', 42),
(19, 'App\\Models\\User', 47),
(19, 'App\\Models\\User', 51),
(19, 'App\\Models\\User', 56),
(19, 'App\\Models\\User', 60),
(19, 'App\\Models\\User', 66),
(19, 'App\\Models\\User', 70),
(20, 'App\\Models\\User', 1),
(20, 'App\\Models\\User', 5),
(20, 'App\\Models\\User', 9),
(20, 'App\\Models\\User', 14),
(20, 'App\\Models\\User', 18),
(20, 'App\\Models\\User', 38),
(20, 'App\\Models\\User', 42),
(20, 'App\\Models\\User', 47),
(20, 'App\\Models\\User', 51),
(20, 'App\\Models\\User', 56),
(20, 'App\\Models\\User', 60),
(20, 'App\\Models\\User', 66),
(20, 'App\\Models\\User', 70),
(21, 'App\\Models\\User', 1),
(21, 'App\\Models\\User', 2),
(21, 'App\\Models\\User', 3),
(21, 'App\\Models\\User', 5),
(21, 'App\\Models\\User', 9),
(21, 'App\\Models\\User', 14),
(21, 'App\\Models\\User', 18),
(21, 'App\\Models\\User', 38),
(21, 'App\\Models\\User', 42),
(21, 'App\\Models\\User', 47),
(21, 'App\\Models\\User', 51),
(21, 'App\\Models\\User', 56),
(21, 'App\\Models\\User', 60),
(21, 'App\\Models\\User', 66),
(21, 'App\\Models\\User', 70),
(22, 'App\\Models\\User', 1),
(22, 'App\\Models\\User', 2),
(22, 'App\\Models\\User', 3),
(22, 'App\\Models\\User', 5),
(22, 'App\\Models\\User', 9),
(22, 'App\\Models\\User', 14),
(22, 'App\\Models\\User', 18),
(22, 'App\\Models\\User', 38),
(22, 'App\\Models\\User', 42),
(22, 'App\\Models\\User', 47),
(22, 'App\\Models\\User', 51),
(22, 'App\\Models\\User', 56),
(22, 'App\\Models\\User', 60),
(22, 'App\\Models\\User', 66),
(22, 'App\\Models\\User', 70),
(23, 'App\\Models\\User', 1),
(23, 'App\\Models\\User', 5),
(23, 'App\\Models\\User', 9),
(23, 'App\\Models\\User', 14),
(23, 'App\\Models\\User', 18),
(23, 'App\\Models\\User', 38),
(23, 'App\\Models\\User', 42),
(23, 'App\\Models\\User', 47),
(23, 'App\\Models\\User', 51),
(23, 'App\\Models\\User', 56),
(23, 'App\\Models\\User', 60),
(23, 'App\\Models\\User', 66),
(23, 'App\\Models\\User', 70),
(24, 'App\\Models\\User', 1),
(24, 'App\\Models\\User', 5),
(24, 'App\\Models\\User', 9),
(24, 'App\\Models\\User', 14),
(24, 'App\\Models\\User', 18),
(24, 'App\\Models\\User', 38),
(24, 'App\\Models\\User', 42),
(24, 'App\\Models\\User', 47),
(24, 'App\\Models\\User', 51),
(24, 'App\\Models\\User', 56),
(24, 'App\\Models\\User', 60),
(24, 'App\\Models\\User', 66),
(24, 'App\\Models\\User', 70),
(25, 'App\\Models\\User', 1),
(25, 'App\\Models\\User', 5),
(25, 'App\\Models\\User', 9),
(25, 'App\\Models\\User', 14),
(25, 'App\\Models\\User', 18),
(25, 'App\\Models\\User', 38),
(25, 'App\\Models\\User', 42),
(25, 'App\\Models\\User', 47),
(25, 'App\\Models\\User', 51),
(25, 'App\\Models\\User', 56),
(25, 'App\\Models\\User', 60),
(25, 'App\\Models\\User', 66),
(25, 'App\\Models\\User', 70),
(26, 'App\\Models\\User', 1),
(26, 'App\\Models\\User', 5),
(26, 'App\\Models\\User', 9),
(26, 'App\\Models\\User', 14),
(26, 'App\\Models\\User', 18),
(26, 'App\\Models\\User', 38),
(26, 'App\\Models\\User', 42),
(26, 'App\\Models\\User', 47),
(26, 'App\\Models\\User', 51),
(26, 'App\\Models\\User', 56),
(26, 'App\\Models\\User', 60),
(26, 'App\\Models\\User', 66),
(26, 'App\\Models\\User', 70),
(27, 'App\\Models\\User', 1),
(27, 'App\\Models\\User', 3),
(27, 'App\\Models\\User', 5),
(27, 'App\\Models\\User', 9),
(27, 'App\\Models\\User', 14),
(27, 'App\\Models\\User', 18),
(27, 'App\\Models\\User', 38),
(27, 'App\\Models\\User', 42),
(27, 'App\\Models\\User', 47),
(27, 'App\\Models\\User', 51),
(27, 'App\\Models\\User', 56),
(27, 'App\\Models\\User', 60),
(27, 'App\\Models\\User', 66),
(27, 'App\\Models\\User', 70),
(28, 'App\\Models\\User', 1),
(28, 'App\\Models\\User', 5),
(28, 'App\\Models\\User', 9),
(28, 'App\\Models\\User', 14),
(28, 'App\\Models\\User', 18),
(28, 'App\\Models\\User', 38),
(28, 'App\\Models\\User', 42),
(28, 'App\\Models\\User', 47),
(28, 'App\\Models\\User', 51),
(28, 'App\\Models\\User', 56),
(28, 'App\\Models\\User', 60),
(28, 'App\\Models\\User', 66),
(28, 'App\\Models\\User', 70),
(29, 'App\\Models\\User', 1),
(29, 'App\\Models\\User', 5),
(29, 'App\\Models\\User', 9),
(29, 'App\\Models\\User', 14),
(29, 'App\\Models\\User', 18),
(29, 'App\\Models\\User', 38),
(29, 'App\\Models\\User', 42),
(29, 'App\\Models\\User', 47),
(29, 'App\\Models\\User', 51),
(29, 'App\\Models\\User', 56),
(29, 'App\\Models\\User', 60),
(29, 'App\\Models\\User', 66),
(29, 'App\\Models\\User', 70),
(30, 'App\\Models\\User', 1),
(30, 'App\\Models\\User', 2),
(30, 'App\\Models\\User', 3),
(30, 'App\\Models\\User', 4),
(30, 'App\\Models\\User', 5),
(30, 'App\\Models\\User', 6),
(30, 'App\\Models\\User', 7),
(30, 'App\\Models\\User', 8),
(30, 'App\\Models\\User', 9),
(30, 'App\\Models\\User', 10),
(30, 'App\\Models\\User', 11),
(30, 'App\\Models\\User', 14),
(30, 'App\\Models\\User', 15),
(30, 'App\\Models\\User', 18),
(30, 'App\\Models\\User', 38),
(30, 'App\\Models\\User', 39),
(30, 'App\\Models\\User', 42),
(30, 'App\\Models\\User', 47),
(30, 'App\\Models\\User', 48),
(30, 'App\\Models\\User', 51),
(30, 'App\\Models\\User', 56),
(30, 'App\\Models\\User', 57),
(30, 'App\\Models\\User', 58),
(30, 'App\\Models\\User', 59),
(30, 'App\\Models\\User', 60),
(30, 'App\\Models\\User', 61),
(30, 'App\\Models\\User', 62),
(30, 'App\\Models\\User', 63),
(30, 'App\\Models\\User', 64),
(30, 'App\\Models\\User', 66),
(30, 'App\\Models\\User', 67),
(30, 'App\\Models\\User', 68),
(30, 'App\\Models\\User', 69),
(30, 'App\\Models\\User', 70),
(30, 'App\\Models\\User', 71),
(30, 'App\\Models\\User', 72),
(30, 'App\\Models\\User', 73),
(30, 'App\\Models\\User', 74),
(31, 'App\\Models\\User', 1),
(31, 'App\\Models\\User', 2),
(31, 'App\\Models\\User', 3),
(31, 'App\\Models\\User', 4),
(31, 'App\\Models\\User', 5),
(31, 'App\\Models\\User', 6),
(31, 'App\\Models\\User', 7),
(31, 'App\\Models\\User', 8),
(31, 'App\\Models\\User', 9),
(31, 'App\\Models\\User', 10),
(31, 'App\\Models\\User', 11),
(31, 'App\\Models\\User', 14),
(31, 'App\\Models\\User', 15),
(31, 'App\\Models\\User', 18),
(31, 'App\\Models\\User', 38),
(31, 'App\\Models\\User', 39),
(31, 'App\\Models\\User', 42),
(31, 'App\\Models\\User', 47),
(31, 'App\\Models\\User', 48),
(31, 'App\\Models\\User', 51),
(31, 'App\\Models\\User', 56),
(31, 'App\\Models\\User', 57),
(31, 'App\\Models\\User', 58),
(31, 'App\\Models\\User', 59),
(31, 'App\\Models\\User', 60),
(31, 'App\\Models\\User', 61),
(31, 'App\\Models\\User', 62),
(31, 'App\\Models\\User', 63),
(31, 'App\\Models\\User', 64),
(31, 'App\\Models\\User', 66),
(31, 'App\\Models\\User', 67),
(31, 'App\\Models\\User', 68),
(31, 'App\\Models\\User', 69),
(31, 'App\\Models\\User', 70),
(31, 'App\\Models\\User', 71),
(31, 'App\\Models\\User', 72),
(31, 'App\\Models\\User', 73),
(31, 'App\\Models\\User', 74),
(32, 'App\\Models\\User', 1),
(32, 'App\\Models\\User', 2),
(32, 'App\\Models\\User', 3),
(32, 'App\\Models\\User', 4),
(32, 'App\\Models\\User', 5),
(32, 'App\\Models\\User', 6),
(32, 'App\\Models\\User', 7),
(32, 'App\\Models\\User', 8),
(32, 'App\\Models\\User', 9),
(32, 'App\\Models\\User', 10),
(32, 'App\\Models\\User', 11),
(32, 'App\\Models\\User', 14),
(32, 'App\\Models\\User', 15),
(32, 'App\\Models\\User', 18),
(32, 'App\\Models\\User', 38),
(32, 'App\\Models\\User', 39),
(32, 'App\\Models\\User', 42),
(32, 'App\\Models\\User', 47),
(32, 'App\\Models\\User', 48),
(32, 'App\\Models\\User', 51),
(32, 'App\\Models\\User', 56),
(32, 'App\\Models\\User', 57),
(32, 'App\\Models\\User', 58),
(32, 'App\\Models\\User', 59),
(32, 'App\\Models\\User', 60),
(32, 'App\\Models\\User', 61),
(32, 'App\\Models\\User', 62),
(32, 'App\\Models\\User', 63),
(32, 'App\\Models\\User', 64),
(32, 'App\\Models\\User', 66),
(32, 'App\\Models\\User', 67),
(32, 'App\\Models\\User', 68),
(32, 'App\\Models\\User', 69),
(32, 'App\\Models\\User', 70),
(32, 'App\\Models\\User', 71),
(32, 'App\\Models\\User', 72),
(32, 'App\\Models\\User', 73),
(32, 'App\\Models\\User', 74),
(33, 'App\\Models\\User', 1),
(33, 'App\\Models\\User', 2),
(33, 'App\\Models\\User', 3),
(33, 'App\\Models\\User', 4),
(33, 'App\\Models\\User', 5),
(33, 'App\\Models\\User', 6),
(33, 'App\\Models\\User', 7),
(33, 'App\\Models\\User', 8),
(33, 'App\\Models\\User', 9),
(33, 'App\\Models\\User', 10),
(33, 'App\\Models\\User', 11),
(33, 'App\\Models\\User', 14),
(33, 'App\\Models\\User', 15),
(33, 'App\\Models\\User', 18),
(33, 'App\\Models\\User', 38),
(33, 'App\\Models\\User', 39),
(33, 'App\\Models\\User', 42),
(33, 'App\\Models\\User', 47),
(33, 'App\\Models\\User', 48),
(33, 'App\\Models\\User', 51),
(33, 'App\\Models\\User', 56),
(33, 'App\\Models\\User', 57),
(33, 'App\\Models\\User', 58),
(33, 'App\\Models\\User', 59),
(33, 'App\\Models\\User', 60),
(33, 'App\\Models\\User', 61),
(33, 'App\\Models\\User', 62),
(33, 'App\\Models\\User', 63),
(33, 'App\\Models\\User', 64),
(33, 'App\\Models\\User', 66),
(33, 'App\\Models\\User', 67),
(33, 'App\\Models\\User', 68),
(33, 'App\\Models\\User', 69),
(33, 'App\\Models\\User', 70),
(33, 'App\\Models\\User', 71),
(33, 'App\\Models\\User', 72),
(33, 'App\\Models\\User', 73),
(33, 'App\\Models\\User', 74),
(34, 'App\\Models\\User', 1),
(34, 'App\\Models\\User', 4),
(34, 'App\\Models\\User', 5),
(34, 'App\\Models\\User', 6),
(34, 'App\\Models\\User', 7),
(34, 'App\\Models\\User', 8),
(34, 'App\\Models\\User', 9),
(34, 'App\\Models\\User', 10),
(34, 'App\\Models\\User', 11),
(34, 'App\\Models\\User', 14),
(34, 'App\\Models\\User', 18),
(34, 'App\\Models\\User', 38),
(34, 'App\\Models\\User', 39),
(34, 'App\\Models\\User', 42),
(34, 'App\\Models\\User', 47),
(34, 'App\\Models\\User', 48),
(34, 'App\\Models\\User', 51),
(34, 'App\\Models\\User', 56),
(34, 'App\\Models\\User', 57),
(34, 'App\\Models\\User', 60),
(34, 'App\\Models\\User', 66),
(34, 'App\\Models\\User', 68),
(34, 'App\\Models\\User', 69),
(34, 'App\\Models\\User', 70),
(34, 'App\\Models\\User', 71),
(34, 'App\\Models\\User', 72),
(34, 'App\\Models\\User', 73),
(34, 'App\\Models\\User', 74);

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
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 18),
(1, 'App\\Models\\User', 38),
(1, 'App\\Models\\User', 42),
(1, 'App\\Models\\User', 47),
(1, 'App\\Models\\User', 51),
(1, 'App\\Models\\User', 56),
(1, 'App\\Models\\User', 60),
(1, 'App\\Models\\User', 66),
(1, 'App\\Models\\User', 70),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 39),
(2, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 67),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(3, 'App\\Models\\User', 45),
(3, 'App\\Models\\User', 46),
(3, 'App\\Models\\User', 49),
(3, 'App\\Models\\User', 50),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54),
(3, 'App\\Models\\User', 55),
(3, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(3, 'App\\Models\\User', 61),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 63),
(3, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 68),
(3, 'App\\Models\\User', 69),
(3, 'App\\Models\\User', 71),
(3, 'App\\Models\\User', 72),
(3, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 74);

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
(1, 'user-list', 'web', '2021-04-13 06:15:44', '2021-04-13 06:15:44'),
(2, 'user-create', 'web', '2021-04-13 06:15:44', '2021-04-13 06:15:44'),
(3, 'user-edit', 'web', '2021-04-13 06:15:44', '2021-04-13 06:15:44'),
(4, 'user-delete', 'web', '2021-04-13 06:15:44', '2021-04-13 06:15:44'),
(5, 'user-import-export', 'web', '2021-04-13 06:15:44', '2021-04-13 06:15:44'),
(6, 'kategori-list', 'web', '2021-04-13 06:15:44', '2021-04-13 06:15:44'),
(7, 'kategori-create', 'web', '2021-04-13 06:15:44', '2021-04-13 06:15:44'),
(8, 'kategori-edit', 'web', '2021-04-13 06:15:44', '2021-04-13 06:15:44'),
(9, 'kategori-delete', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(10, 'kategori-export', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(11, 'kategori-import', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(12, 'dokumen-list', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(13, 'dokumen-create', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(14, 'dokumen-edit', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(15, 'dokumen-delete', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(16, 'dokumen-export', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(17, 'ebook-list-admin', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(18, 'ebook-delete-admin', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(19, 'ebook-list-superadmin', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(20, 'ebook-delete-superadmin', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(21, 'ebook-create-admin', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(22, 'ebook-edit-admin', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(23, 'ebook-edit-superadmin', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(24, 'komentar-list', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(25, 'komentar-delete', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(26, 'komentar-export', 'web', '2021-04-13 06:15:45', '2021-04-13 06:15:45'),
(27, 'preview-admin', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(28, 'preview-list', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(29, 'dashboard-admin', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(30, 'profile', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(31, 'reference', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(32, 'like', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(33, 'dashboard-user', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(34, 'kumpulan-buku', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46');

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
(1, 'superadmin', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(2, 'admin', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(3, 'pusdiklat', 'web', '2021-04-13 06:15:46', '2021-04-13 06:15:46');

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
(1, 'gambar/20210413135824.jpg', '2021-04-13 06:58:24', '2021-04-13 06:58:24'),
(2, 'gambar/20210413175804.jpeg', '2021-04-13 10:58:04', '2021-04-13 10:58:04');

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
(1, 'Di Terima', '2021-04-13 06:15:44', NULL),
(2, 'Di Tolak', '2021-04-13 06:15:44', NULL);

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
(1, 'superadmin', NULL, 'superadmin@plnpusdiklat.com', 'superadmin', '$2y$10$xC584d6zHBhvxyii9F8ZDO6G.QgRx71Vl0tfZ6cYW64s.5D9iajha', NULL, NULL, NULL, NULL, '2021-04-13 20:15:46', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(2, 'wahyu', NULL, 'administrator@plnpusdiklat.com', 'wahyu', '$2y$10$1UYwQ7zrfJdrocLDOq9FB.93dReKGpbqZUUqfl9XiVDon047ixhNm', NULL, NULL, NULL, NULL, '2021-04-13 20:15:46', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(3, 'admin', NULL, 'admin@plnpusdiklat.com', 'admin', '$2y$10$..OcYJduuPXVTiBMookuQ.smxHld6xe9gHGWCxJ8FDdWMYE9LPhGO', NULL, NULL, NULL, NULL, '2021-04-13 20:15:46', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(4, 'andi', NULL, 'andi@plnpusdiklat.com', 'andi', '$2y$10$VXLyv.uw4oGW9HuTE9CPvOjCVh.YUreU3HMluh7y/AnWSKYghylgC', NULL, NULL, NULL, NULL, '2021-04-13 20:15:46', '2021-04-13 06:15:46', '2021-04-13 06:15:46'),
(66, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$0saIJqIpV2Psyg1UWImrvuPbdsU4JTrqKxAbHLyz5TeJftW3oR.u6', NULL, NULL, NULL, NULL, '2021-04-13 20:55:56', '2021-04-13 06:55:56', '2021-04-13 06:56:05'),
(67, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$ClcNZtvUzCQSnWjFgWCrmOQDD0fEOckCPzlMfcgcRWcK0nvrYBDeC', NULL, NULL, NULL, NULL, '2021-04-13 20:55:56', '2021-04-13 06:55:56', '2021-04-13 06:56:05'),
(68, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$FPcXveuxqFAYnBcfc25Qd.BtYXFURhwbhm3D2B3qWLwmmddXOLaLO', NULL, NULL, NULL, NULL, '2021-04-13 20:55:57', '2021-04-13 06:55:57', '2021-04-13 06:56:05'),
(69, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$bA6gYPavdnkcMP2EZ.2NE.Bh/KDOdSBKn3PnB7TzPHKK0QryUFd.m', NULL, NULL, NULL, NULL, '2021-04-13 20:55:57', '2021-04-13 06:55:57', '2021-04-13 06:56:04'),
(70, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$tUwVgqHH0Ujy.3iRidOJ9Oy8QwPXVBBm9oHzvB0CAIXk7xH.YXAEC', NULL, NULL, NULL, NULL, '2021-04-13 20:55:57', '2021-04-13 06:55:57', '2021-04-13 06:56:03'),
(71, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$XRvECGCUml5NpgQAvVm4z.JJ37781s613lTiapH/HBt..qLlRaTNi', NULL, NULL, NULL, NULL, '2021-04-13 20:55:57', '2021-04-13 06:55:57', '2021-04-13 06:56:03'),
(72, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$lbrJQcVy9eRAoCVyzletNOwsc5o6L37HwyctdpZz4m7j6xsYdnuly', NULL, NULL, NULL, NULL, '2021-04-13 20:55:57', '2021-04-13 06:55:57', '2021-04-13 06:56:02'),
(73, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$rioTGTWhTqJ4JksjLpyIn.hqDTHTSaBPPsdwbBpT20vC5XlDPhzgK', NULL, NULL, NULL, NULL, '2021-04-13 20:55:57', '2021-04-13 06:55:57', '2021-04-13 06:56:05'),
(74, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '11223344', '$2y$10$R7Jd1emUygTrnzx3YS8AgeB620L4/TV2Jy5tOLyrKOoPOIXDUUU.W', NULL, NULL, NULL, NULL, '2021-04-13 20:55:59', '2021-04-13 06:55:59', '2021-04-13 06:55:59');

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
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1378;

--
-- AUTO_INCREMENT untuk tabel `kategori_type`
--
ALTER TABLE `kategori_type`
  MODIFY `kategori_type_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `likesdocument`
--
ALTER TABLE `likesdocument`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id_status` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_auth`
--
ALTER TABLE `user_auth`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
