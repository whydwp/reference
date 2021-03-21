-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2021 pada 09.32
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
-- Database: `refrence-3`
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
(31, 5, NULL, 'upload gambar', 12, '@include(\'sweetalert::alert\')', 'lia', '2019', 'document/20210208183218/index.html', 'document/20210125084904.png', NULL, 4, 5, '2021-01-25 01:49:04', '2021-03-15 11:41:51', NULL, NULL, '2021-01-25 08:49:04'),
(32, 6, NULL, 'belajar laravel', 12, 'success', 'robby', '2020', 'document/20210125085015/index/', 'document/20210125085015.png', NULL, 2, NULL, '2021-01-25 01:50:15', '2021-03-06 09:53:52', NULL, NULL, '2021-01-25 08:50:15'),
(33, 6, NULL, 'Undang undang', 222, 'xiaawan, for lack of a better term, your totally out of luck here. The only way to ensure that a font is used across a website (and thus the visitor see it in that way) is to have it installed on the end users machine - either by them having the font or it being attached to the page through the likes of CSS3. While this may seem like an easy problem to fix (have it in the page and then it’ll download to any persons machine who doesn’t have it), Myriad Pro is one of the many font’s which their license explicitly prohibits their use for web embedding. If I’m not mistaken Myriad is owned by Adobe (who license that font) and as their license prevents the use of embedding for the web you cannot use that method to ensure your visitors see that font (it would constitute a criminal offence - copyright theft on a large scale). As such, if you chose to use Myriad Pro in your font family, all you can do is add some other fonts to the family which provide alternatives for as and when the end user doesn’t have it installed. Whether your client likes it or not, you can’t just pick a font and have the website use it for every end user, with the way typefaces are licensed if you were to attempt to embed it, you could get a lawsuit from the owners of the font. :slight_smile:', 'siapa', '2929', 'document/20210125104918/index.html', 'document/20210125104926.png', NULL, 4, 3, '2021-01-25 03:49:26', '2021-02-20 13:18:40', NULL, NULL, '2021-01-25 10:49:26'),
(34, 9, NULL, 'wahyu', 21, 'lorem ipsu', 'wahyu', '2020', 'document/20210127223341/index.html', 'document/20210127223926.png', NULL, 2, 2, '2021-01-27 15:33:50', '2021-03-16 01:13:23', NULL, NULL, '2021-01-27 22:33:50'),
(35, 9, NULL, 'novian', 12, 'lorem ipsu digtu aja', 'novian', '2020', 'document/20210127224251.pdf', NULL, NULL, 4, 3, '2021-01-27 15:42:51', '2021-02-23 09:22:28', NULL, NULL, '2021-01-27 22:42:51'),
(36, 18, NULL, 'hukum online', 1212, 'Illuminate\\Contracts\\Filesystem\\FileNotFoundException\r\nFile not found at path: home/k3508610/referenceLearning/public/uploads/1078158958kategori2021-01-29 03_37_20.xlsx', 'fatih', '2020', 'document/hukum online/index.html', NULL, NULL, 3, 5, '2021-01-28 21:12:19', '2021-03-17 11:41:24', NULL, NULL, '2021-01-29 04:12:19'),
(37, 6, NULL, 'hukum undang undang', 18, 'The markup Readmore.js requires is so simple, you can probably use it with your existing HTML—there\'s no need for complicated sets of div\'s or hardcoded classes, just call .readmore() on the element containing your block of text and Readmore.js takes care of the rest. Readmore.js plays well in a responsive environment, too.', 'wahyu', '2020', 'document/hukum undang undang/index.html', NULL, NULL, 5, 16, '2021-01-28 21:14:38', '2021-03-19 06:06:05', NULL, NULL, '2021-01-29 04:14:38'),
(38, 15, NULL, 'Honorarium Tenaga Penyelenggara dan Pengembang Materi Pembelajaran di Lingkungan PT PLN (Persero) Pusdiklat dan Petunjuk Teknis', 100, '26\r\nOCTOBER\r\n2017\r\nPATIKU BEGITU MENGESANKAN\r\nPosted by WAHYU DWI PURWANTO under: Uncategorized.\r\n\r\nHari pertama aku pati diruang infokom C aku datang tepat waktu tetapi pada saat itu pun aku tidak tahu aku kenapa pada saat evaluasi nilaiku tidak memuaskan. Hari kedua aku berhijrah di ekonomi C pada saat itu pun aku telat 15 menit waktu yang terbuang sia-sia, Tapi Alhamdulillah nilai evaluasiku sangat memuaskan. hari ketiga pun dijalani hampir mirip dengan hari kedua tetapi aku tidak telat kali ini. Ternyata yang ditunggu-tunggu telat tiba intruktuk memberikan tugas Besarnya yaitu membuat blog dalam dan blog luar. Aku bingung waktuku untuk mengerjakan tidaklah lama kerena kepotong dengan kuliah. aku mengerjakan blog tengah malam dan alhasil tidurku pun berkurang hany 3 jam untuk mengerjakan blog dalam dan blog luar, bagaimana tidak aku kulaih dari pagi sampe jam 8. itulah pengalamanku pati yang menarik bisa juga dikatakan mengesankan.\r\n\r\n0 \r\n26\r\nOCTOBER\r\n2017\r\nINTRUKTURKU (Ramdani&Novita)\r\nPosted by WAHYU DWI PURWANTO under: Uncategorized.\r\n\r\nShit 2 aku masuk di ekonomi C waktu masuk pun sudah disambut ramah dengan intrukturku. Ramadani namanya intruktur tang pertama dan intruktur yang kedua namanya novita sari. pada saat menyampaikan materi pun intrukturku begitu santai dan serius. Tetapi aku harus mendengarkan apa yang beliau intruksikan dalam menyampaikan materi agar di evaluasi dapat nilai yang memuaskan. walau tidak seluruh yang keluar di evaluasi tapi kebanyakan apa yang disampaikan intruktur itu lah yang keluar di evaluasi. Aku berharap dan berdo’a agar ilmu yang mereka sampaikan bermanfaat dikemudian hari bagiku dan orang lain.\r\n\r\n0 \r\n25\r\nOCTOBER\r\n2017\r\nUNIKNYA JURUSANKU\r\nPosted by WAHYU DWI PURWANTO under: Uncategorized.\r\n\r\nAku sekarang sedang kuliah di Kampus Universitas Muhammadiyah Malang dengan mengambil program studi Teknik Informatika,aku melihat perkembangan zaman saat ini yang semakin hari semakin canggih. Di zaman modern ini, komputer akan menjadi suatu kebutuhan semua manusia. Maka daripada itu, jika kebutuhan yang semakin meningkat, maka permintaan akan seorang ahli komputer juga berkembang pesat. Ketika, jurusan ini dapat bekerja dimana saja, dan yang ke-empat minat dan kemampuan ku ya di situ, aku ingin mengetahui lebih dalam lagi mengenai komputer. Kelak agar aku dapat menjadi Programmer melalui gelar sarjana.\r\n\r\nDan yang selanjutnya, kenapa aku memilih melanjutkan pendidikan di Kampus Universitas Muhammadiyah Malang, karena kemauan ku sendiri. Aku ingin belajar hidup mandiri dan punya rasa bertanggung jawab saat jauh dari kedua Orang Tua. Selain itu, karena aku senang melihat pemandangan di Kampus UMM, dan aku tertarik ingin mengikuti Organisasi-organisasi ataupum PKM yang ada di Kampus UMM tersebut.\r\n\r\n0 \r\n25\r\nOCTOBER\r\n2017\r\nPROBOLINGGO ZONA NYAMAN\r\nPosted by WAHYU DWI PURWANTO under: Uncategorized.\r\n\r\naku terlahir dikota indah nan nyaman yaitu Probolingo. Kota yang penuh sensasi ini membuatku nyaman yaa Probolinggo namanya maskotnya yang terkenal akan buah mangga dan anggurnya ini memberikan sejuta wisata yang sangat lah indah mulai dari pegunungannya sampai pantainya pun begitu indah di pandang.\r\n\r\nSiapa sih yang gak kenal gunung Bromo yang menjadi salah satu keajaiban dunia pula. mulai dari pelosok kecil sampai besarpun Bromo yang terkenal akan keindahannnya. lautan api menjadi ciri khas gunung yang berada di kabupaten Probolinggo tersebut. Banyak turis-turis internasional yang mengunjungi gunung tersebut.\r\n\r\nnah kalau dipegunungan itu sedangkan di daerah dataran rendah ada wisata mangrove yang didirikan pada tahun2012 itu menjadi nuansa tersendiri bila mengunjunginya mulai dari lampu-lampunya sampai dengan suguhan yang dberikan.\r\n\r\n0 \r\n25\r\nOCTOBER\r\n2017\r\nTENTANG UMM\r\nPosted by WAHYU DWI PURWANTO under: Uncategorized.\r\n\r\nIni adalah kisah tentang jas merah kampus putih yaaa kampusku namanya Universitas Muhammadiyah Malang didirikan tahun 1964. Saat itu, UMM menempati Kampus I yang berlokasi di Jl. Bandung No. 1 Malang. Sejak tahun 1980-an, UMM mulai melakukan ekspansi untuk membangun kampus II di Jl. Bendungan Sutami 188A Sumbersari Malang. Kemudian mulai tahun 1991, UMM menempati kampus baru, yaitu Kampus III yang berlokasi di Jl. Raya Tlogomas No. 246 Tegalgondo Malang nah aku berada di kampus III .\r\nUniversitas Muhammadiyah Malang (UMM) hingga tahun 2010 ini sudah berumur 46 tahun.  Selama itu pula UMM mengabdikan diri untuk negeri dalam mencerdaskan anak bangsa. Mahasiswa UMM berasal dari seluruh penjuru negeri, bahkan dari manca Negara, seperti: Singapura, Thailand, Malaysia, Australia, Timor Leste, Amerika Serikat dan beberapa negara Eropa. Sudah banyak alumni yang dihasilkan dan sebagian besar berhasil meraih lapangan kerja sesuai dengan bidang keilmuan masing-masing.\r\nUMM itu luas banget pertama kali aku kuliah disini benar benar terasa sekali capeknya dari parkiran ke tempat saya kuliah yaitu di GKB 3 tapi lumayanlah sekalian olahraga juga.  Kalau masalah fasilitas jangan diragukan lagi deh , Dome , Rusunawa , Stadion , Masjid A.R Fachrudin , UMM juga mempunyai usaha mandiri seperti  Taman Rekreasi Sengkaling , Pom Bensin , Rumah sakit UMM , UMM Inn, dan lain lain. Bicara tentang prestasi jangan diragukan lagi mulai dari nasional sampai internasional pun sudah banyak diraih yang baru-baru ini juara 1 internasional robotika di USA.\r\n0 \r\n25\r\nOCTOBER\r\n2017\r\nFASILITAS UMM\r\nPosted by WAHYU DWI PURWANTO under: Uncategorized.\r\n\r\n1. RUMAH SAKIT UMM\r\n\r\nindex\r\n\r\n \r\n\r\nRumah Sakit Universitas Muhammadiyah Malang diresmikan oleh Presiden Ke-5 Republik Indonesia oleh Ibu Hj. Megawati Soekarno Putri pada tanggal 17 Juni 2014 di bangun diatas lahan dengan lokasirumah sakit tidak jauh dari Kampus 3 Universitas Muhammadiyah Malang yaitu tepatnya di sebelah timur terminal Landungsari.\r\n\r\nBerdiri diatas tanah seluas 9 hektare dan memiliki bangunan utama setinggi 6 lantai dan beberapa bangunan gedung penunjang setinggi 5 lantai dan gedung rawat inap setinggi 3 lantai. Bentuk bangunan yang megah dan tertata rapi dengan ciri khas arsitektur tiongkok, menjadikan RS Universitas Muhammadiyah Malang ini mudah dikenali oleh segala lapisan masyarakat.\r\n\r\n \r\n\r\nKeberadaan RS UMM merupakan bagian dari layanan kesehatan berusaha untuk memberikan pelayanan  terbaik bagi seluruh pasien. Mengusung motto “pelayananku, pengabdianku” mendorong RS UMM agar terus dan terus belajar meningkatkan layanan yang memuaskan masyarakat.\r\n\r\nSumbar : http://hospital.umm.ac.id/\r\n\r\nMasjid bernuansa Tiongkok yang satu ini benar benar istimewa, karena dibangun bukan oleh komunitas Muslim Tionghoa Indonesia tapi justru dibangun oleh Universitas Muhammadiyah Malang. Ketika Universitas Muhammadiyah Malang berencana membangun sebuah Rumah Sakit lengkap dengan fasilitas Masjid, Rektorat UMM memutuskan untuk memprioritaskan pembangunan masjid agar segera dapat dimanfaatkan oleh masyarakat sekitar, dan setelah beberapa kali berganti design ahirnya diputuskan untuk membangun sebuah masjid dengan arsitektur Tiongkok.\r\n\r\nRektor UMM Dr. Muhadjir Effendy, MAP memberi nama masjid itu dengan nama Masjid KH M. Bedjo Darmoleksono, Nama seorang tokoh pelopor Muhammadiyah di Malang. Pada saat artikel ini dibuat masjid ini belum genap berumur sebulan dan Lantai satu masjid ini sementara waktu masih digunakan sebagai kantor Pengelola Rumah Sakit.\r\n\r\nMasjid KH M. Bedjo Darmoleksono terletak di dalam Komplek Rumah Sakit Pendidikan Universitas Muhammadiyah Malang di di Jl. Tlogomas, sekitar 500 meter dari kampus III Universitas Muhammadiyah Malang.\r\n\r\n2. UMM INN\r\n\r\n23\r\n\r\nUMM Inn adalah hotel pendidikan pertama di Malang. Hotel ini berada 3 mil dari pusat kota Malang dan dekat dengan Kota Batu. Hotel ini juga merupakan tempat sempurna untuk pertemuan, konferensi, dan seminar sekaligus menyediakan pelayanan yang mudah yang bagi kebutuhan berbagai tema pesta yang sesuai dengan kebutuhan.\r\n\r\nPengunjung akan bisa menikmati perpaduan nuansa elegan yang bercitarasa modern, nyaman, dan bernuansa klasik dari 40 ruang tamu dan suite yang unik. Kami menjamin Anda akan menemukan perbedaan yang membuat kami menjadi pilihan favorit di antara hotel-hotel di Batu dan Malang\r\n\r\nSumber: https://muniraatamimi.wordpress.com\r\n\r\n3. Bookstore UMM\r\n\r\n34.jpg\r\n\r\nBookstore UMM diresmikan pada tanggal 21 Agustus 2005. Sebagai salah satu unit bisnis Universitas Muhammadiyah Malang. Dalam masa beroperasi Bookstore UMM telah mengalami perkembangan dari berbagai sisi meskipun dalam masa perkembangannya masih terdapat banyak kekurangan. terdapat beberapa kendala yang begitu mempengaruhi kinerja Bookstore UMM sejak beroperasi selama kurang lebih 4 tahun 4 bulan. Kendala tersebut masih dirasakan sampai sekarang misalnya jumlah mobilitas penjualan yang rendah.\r\n\r\nSampai saat ini Bookstore UMM telah memiliki 3 divisi yaitu divisi buku, divisi stationery dan divisi computer, dan beberapa waktu yang lalu Bookstore UMM mengembangkan satu divisi baru yang bekerjasama dengan pihak perorangan dengan membentuk unit usaha baru yang dinamai pusat souvenir UMM, dimana pihak perseorangan ini dipilih karena memiliki visi dan misi yang sama dengan universitas muhammadiyah malang. Pangsa pasar yang dituju oleh pusat souvenir ini terutama dari kalangan civitas UMM maupun kalangan non civitas diharapkan mampu memberikan kontribusi yang lebih baik dalam perkembangan Bookstore UMM di masa sekarang dan masa mendatang. 3 (tiga) divisi yang dimiliki Bookstore UMM ini berada 1 (satu) lantai dengan display yang terbagi sebelah barat untuk display divisi alat tulis kantor dan sebelah timur untuk display divisi buku dan divisi computer.\r\n\r\nBerpijak pada rencana jangka panjang Bookstore UMM yang mengacu pada beberapa toko di area Malang dan sekitamya, Bookstore berupaya mengembangkan konsep baru dalam upaya promosi atas Bookstore UMM, penciptaan brand baru dalam menunjang proses pemasaran mulai dikembangkan sejak November 2010. Berpijak pada kondisi real Bookstore UMM dimasa sekarang, akan dikembangkan sebagai One Stop Market Of Education n Shopping.\r\n\r\nsumber : http://bagaskara.student.umm.ac.id\r\n\r\n4. TR Sengaling dan SeKul (Senkaling Kuliner)\r\n\r\nsengkaling-food-festiva.jpg\r\n\r\nTaman Rekreasi Sengkaling terletak di  Jl. Raya Mulyoagung No. 188, Kecamatan Dau, Kabupaten Malang, atau berjarak sekitar10 km dari pusat Kota Malang. Lokasinya sangat strategis karena tepat berada di tepi jalan raya yang menghubungkan antara Kota Malang dengan Kota Batu, sehingga sangat mudah dicapai oleh kendaraan pribadi maupun angkutan umum. Taman Rekreasi Sengkaling Malang adalah tempat wisata keluarga, sesuai dengan slogannya Wisata Air Impian Keluarga, dan menyediakan berbagai macam wahana permainan demi memanjakan pengunjung, di antaranya adalah taman bermain, wahana permainan di darat dan air, gedung serbaguna, dan kolam pemandian. Luas keseluruhan Sengkaling sekitar 9 hektar dan 6 hektar di antaranya berupa taman dan pepohonan yang menyejukkan. Taman Rekreasi Sengkaling dibuka setiap hari, dengan jam operasional mulai pukul 06.00 hingga pukul 17.00 WIB. Hal ini dimaksudkan untuk memberi keleluasaan kepada masyarakat yang akan melakukan rekreasi sekaligus bersantai bersama  keluarga.\r\n\r\nTaman Rekreasi Sengkaling pertama kali didirikan oleh seorang warga Belanda bernama Mr. Coolman pada tahun 1950 dan sempat dikelola oleh Mochtar warga dari Padang. Ketika dikelola Mochtar, Sengkaling selalu tutup pada hari Jumat. Sejak tahun 1975 sampai sekarang, pengelolaan Taman Rekreasi Sengkaling ini diambil alih oleh PT. Bentoel Group dan dikelola oleh PT. Taman Bentoel. PT. Taman Bentoel, merupakan salah satu anak perusahaan Bentoel Group yang bergerak di bidang jasa pariwisata dalam bentuk taman rekreasi. Jika dahulu pada awal beroperasinya Taman Rekreasi Sengkaling ini, hanya diperuntukkan bagi karyawan PT. Bentoel. Tapi seraya perkembangannya, Taman Rekreasi Sengkaling lantas dibuka untuk umum. Taman Rekreasi Sengkaling dengan luas tanah keseluruhan 9 hektar, terbagi atas 6 hektar yang lain masih berupa taman dan pepohonan hijau yang rindang. Tempat wisata ini mempunyai berbagai fasilitas yang memiliki keunggulan tersendiri dibandingkan tempat wisata yang lain. Salah satunya adalah wisata airnya  yang berasal dari sumber alami pegunungan. Konon, salah satu sumber yang ada yaitu Kolam Tirta Alam, dipercayai bisa membuat orang awet muda dan sampai saat inipun masih banyak masyarakat yang mempercayainya.\r\n\r\nAlamat Taman Rekreasi Sengkaling:\r\nJl. Raya Mulyoagung 188 Malang\r\n\r\nsumber : http://wisata-sengkaling.com\r\n\r\n0 \r\n25\r\nOCTOBER\r\n2017\r\nTIPS DAN TRIK PATI\r\nPosted by WAHYU DWI PURWANTO under: Uncategorized.\r\n\r\nPATI adalah Pelatihan Aplikasi Teknologi Informasi yang diadakan oleh Universitas Muhammadiyah Malang. Pelatihan ini wajib diikuti oleh mahasiswa baru Universitas Muhammadiyah Malang karena memuat tentang aplikasi dasar teknologi & internet yang akan sangat penting bagi kehidupan terutama dimasa kuliah dan masa kerja.', 'andi', '2020', 'document/pusdikat/index.html', NULL, NULL, 3, 25, '2021-02-08 23:49:38', '2021-03-21 01:19:17', NULL, NULL, '2021-02-09 06:49:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `e_books`
--

CREATE TABLE `e_books` (
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
-- Dumping data untuk tabel `e_books`
--

INSERT INTO `e_books` (`id_ebook`, `id_kategori`, `judul_ebook`, `deskripsi_ebook`, `publisher`, `tahun`, `user_id`, `cover`, `keterangan`, `file`, `id_status`, `created_at`, `modified_at`, `created_by`, `modified_by`, `updated_at`) VALUES
(2, 17, 'hai', 'By default, the views rendered to display the pagination links are compatible with the Tailwind CSS framework. However, if you are not using Tailwind, you are free to define your own views to render these links. When calling the links method on a paginator instance, you may pass the view name as the first argument to the method:By default, the views rendered to display the pagination links are compatible with the Tailwind CSS framework. However, if you are not using Tailwind, you are free to define your own views to render these links. When calling the links method on a paginator instance, you may pass the view name as the first argument to the method:By default, the views rendered to display the pagination links are compatible with the Tailwind CSS framework. However, if you are not using Tailwind, you are free to define your own views to render these links. When calling the links method on a paginator instance, you may pass the view name as the first argument to the method:\r\nThe when method only executes the given Closure when the first parameter is true. If the first parameter is false, the Closure will not be executed.\r\n\r\nYou may pass another Closure as the third parameter to the when method. This Closure will execute if the first parameter evaluates as false. To illustrate how this feature may be used, we will use it to configure the default sorting of a query:\r\nThe when method only executes the given Closure when the first parameter is true. If the first parameter is false, the Closure will not be executed.\r\n\r\nYou may pass another Closure as the third parameter to the when method. This Closure will execute if the first parameter evaluates as false. To illustrate how this feature may be used, we will use it to configure the default sorting of a query:', 'wahyu', 2020, NULL, NULL, 'Perlu ada revisi dibagian halaman 20', 'ebook/20210317212718.pdf', 2, '2021-03-17 14:27:18', '2021-03-17 21:27:18', NULL, NULL, '2021-03-19 10:33:26'),
(3, 18, 'percobaan lagi', 'his single route declaration creates multiple routes to hand', 'wahyu', 2020, NULL, NULL, NULL, 'ebook/20210317213330.pdf', 1, '2021-03-17 14:33:30', '2021-03-17 21:33:30', NULL, NULL, '2021-03-17 14:33:30'),
(12, 18, 'sispa', 'lkslksklsklsa', 'ssososos', 9229, NULL, 'ebook/20210319131705.png', NULL, 'ebook/20210319131705.pdf', 1, '2021-03-19 06:17:05', '2021-03-19 13:17:05', NULL, NULL, '2021-03-19 06:17:05'),
(13, 18, 'WAHYU', 'KKKLSLKSLKSLK', 'WAHYU', 20020, NULL, 'ebook/20210319162022.jpg', NULL, 'ebook/20210319162022.pdf', 2, '2021-03-19 09:20:22', '2021-03-19 16:20:22', NULL, NULL, '2021-03-19 12:03:56'),
(14, 6, 'iyo ws dada sayang', 'dewa kipas', 'wahyu', 2020, NULL, 'ebook/20210319180541.png', NULL, 'ebook/20210319180541.pdf', NULL, '2021-03-19 11:05:41', '2021-03-19 18:05:41', NULL, NULL, '2021-03-19 11:05:41'),
(15, 17, 'fatih', 'adminEbookkakakaka', 'wahyu', 2020, NULL, 'ebook/20210319184454.png', NULL, 'ebook/20210319184454.pdf', NULL, '2021-03-19 11:44:54', '2021-03-19 18:44:54', NULL, NULL, '2021-03-19 11:44:54'),
(16, 19, 'faqoh', 'wahyu dwi purwanto', 'wahyu', 2020, NULL, 'ebook/20210319185153.jpg', NULL, 'ebook/20210319185153.pdf', NULL, '2021-03-19 11:51:53', '2021-03-19 18:51:53', NULL, NULL, '2021-03-19 11:51:53'),
(17, 9, 'wahyu', 'ini adalah', 'wahyu', 2020, NULL, 'ebook/20210320160855.jpg', NULL, 'ebook/20210320160855.pdf', NULL, '2021-03-20 09:08:55', '2021-03-20 16:08:56', NULL, NULL, '2021-03-20 09:08:55'),
(18, 7, 'wahyu', 'ini adalah ebook', 'aurelia', 2020, NULL, 'C:\\xampp\\tmp\\php6301.tmp', NULL, 'ebook/20210321074143.pdf', NULL, '2021-03-21 00:41:43', '2021-03-21 07:41:43', NULL, NULL, '2021-03-21 00:43:59'),
(19, 13, 'wahyu', 'ini adalah form wahyu', 'wahyu', 2020, NULL, 'ebook/20210321074911.pdf', NULL, 'ebook/20210321074911.pdf', NULL, '2021-03-21 00:49:11', '2021-03-21 07:49:11', NULL, NULL, '2021-03-21 00:49:11'),
(20, 17, 'ini adalah form baaru', 'ini adlah form yang baru', 'siapa ini', 2020, NULL, 'ebook/20210321075126.pdf', NULL, 'ebook/20210321075126.pdf', NULL, '2021-03-21 00:51:26', '2021-03-21 07:51:26', NULL, NULL, '2021-03-21 00:51:26'),
(21, 17, 'wahyu', 'ini form baru', 'diandra', 2020, NULL, 'C:\\xampp\\tmp\\php1156.tmp', NULL, 'ebook/20210321075222.pdf', NULL, '2021-03-21 00:52:22', '2021-03-21 07:52:22', NULL, NULL, '2021-03-21 00:52:22'),
(22, 8, 'wahyu', 'saya form', '2020', 2020, NULL, 'w3logo.jpg', 'jadi', 'ebook/20210321075344.pdf', 1, '2021-03-21 00:53:44', '2021-03-21 07:53:44', NULL, NULL, '2021-03-21 01:06:14');

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

--
-- Dumping data untuk tabel `forum`
--

INSERT INTO `forum` (`id`, `message`, `user_id`, `dokumen_id`, `created_at`, `update_at`) VALUES
(75, 'assalamualaikum pak', 3, '32', '2021-01-24 16:24:59', NULL),
(79, 'apa kabar andi', 1699, '33', '2021-02-08 18:22:18', NULL),
(80, 'jebule', 1947, '31', '2021-02-09 07:19:30', NULL),
(81, 'haiii', 2, '33', '2021-02-19 06:09:03', NULL),
(82, 'haikkk', 5, '35', '2021-02-19 06:48:42', NULL),
(84, 'hai', 5, '35', '2021-02-19 06:50:30', NULL),
(85, 'hai', 5, '31', '2021-02-19 06:50:50', NULL),
(87, 'hai', 5, '32', '2021-02-19 09:25:05', NULL),
(88, 'hai', 5, '33', '2021-02-19 09:25:45', NULL),
(89, 'hahah', 5, '35', '2021-02-24 15:47:58', NULL),
(135, 'hai', 5, NULL, '2021-03-17 18:51:29', NULL);

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
(4, 1, 'Supply Chain Management', 12, 14, 12, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-01-20 08:07:18'),
(5, 1, 'Peralatan Ketenagalistrikan', 12, 36, 12, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-02-08 23:56:25'),
(6, 1, 'Pembelejaran', 45, 62, 33, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-03-11 08:26:24'),
(7, 2, 'Penelitian dan Pengembangan', 66, 76, 80, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-01-25 01:18:03'),
(8, 2, 'distribusi', 11, 67, 55, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-01-11 12:29:25'),
(9, 2, 'K2, K3, Keamanan dan lingkungan', 33, 39, 32, '2021-01-04 12:16:38', '2021-01-04 12:17:05', NULL, NULL, '2021-02-23 09:22:28'),
(10, 2, 'dokument baru', NULL, NULL, NULL, '2021-01-14 09:57:21', '2021-01-14 16:57:21', NULL, NULL, '2021-01-15 01:09:42'),
(13, 2, 'Pembangkit', NULL, 2, NULL, '2021-01-14 23:12:13', '2021-01-15 06:12:13', NULL, NULL, '2021-02-09 00:03:39'),
(14, 1, 'kategori2', NULL, NULL, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-02-08 00:37:43'),
(15, 1, 'pembangkit listrik', NULL, 3, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-03-11 09:09:39'),
(16, 1, 'K2, K3, Keamanan dan lingkungan', NULL, 4, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-02-06 11:14:57'),
(17, 2, 'distribusi', NULL, 4, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-02-08 11:17:50'),
(18, 2, 'Penelitian dan Pengembangan', NULL, 3, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-03-17 11:41:24'),
(19, 2, 'Pembelejaran', NULL, NULL, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-01-25 23:59:23'),
(20, 1, 'Peralatan Ketenagalistrikan', NULL, NULL, NULL, '2021-01-25 23:59:23', '2021-01-26 06:59:23', NULL, NULL, '2021-01-25 23:59:23'),
(1375, 1, 'kategori beranak', NULL, NULL, NULL, '2021-03-16 05:24:19', '2021-03-16 12:24:19', NULL, NULL, '2021-03-16 05:24:32');

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
(3, 5, '2021-01-20 06:45:19', 27, '2021-01-20 06:45:19', '2021-01-20 13:45:19'),
(7, 5, '2021-01-20 08:06:37', 29, '2021-01-20 08:06:37', '2021-01-20 15:06:37'),
(8, 25, '2021-01-20 08:07:18', 29, '2021-01-20 08:07:18', '2021-01-20 15:07:18'),
(9, 5, '2021-01-20 08:41:45', 28, '2021-01-20 08:41:45', '2021-01-20 15:41:45'),
(15, 5, '2021-01-25 01:18:03', 30, '2021-01-25 01:18:03', '2021-01-25 08:18:03'),
(29, 25, '2021-01-26 05:35:55', 31, '2021-01-26 05:35:55', '2021-01-26 12:35:55'),
(33, 25, '2021-01-26 05:37:55', 33, '2021-01-26 05:37:55', '2021-01-26 12:37:55'),
(38, 23, '2021-02-05 11:41:05', 36, '2021-02-05 11:41:05', '2021-02-05 18:41:05'),
(39, 23, '2021-02-05 11:41:09', 35, '2021-02-05 11:41:09', '2021-02-05 18:41:09'),
(44, 1959, '2021-02-05 12:11:16', 35, '2021-02-05 12:11:16', '2021-02-05 19:11:16'),
(45, 1959, '2021-02-05 12:14:08', 37, '2021-02-05 12:14:08', '2021-02-05 19:14:08'),
(46, 1959, '2021-02-05 12:14:16', 36, '2021-02-05 12:14:16', '2021-02-05 19:14:16'),
(50, 1959, '2021-02-05 12:18:52', 34, '2021-02-05 12:18:52', '2021-02-05 19:18:52'),
(52, 1959, '2021-02-05 12:19:35', 32, '2021-02-05 12:19:35', '2021-02-05 19:19:35'),
(53, 1959, '2021-02-05 12:19:44', 31, '2021-02-05 12:19:44', '2021-02-05 19:19:44'),
(54, 23, '2021-02-05 12:23:03', 37, '2021-02-05 12:23:03', '2021-02-05 19:23:03'),
(65, 1699, '2021-02-06 01:51:38', 33, '2021-02-06 01:51:38', '2021-02-06 08:51:38'),
(71, 1699, '2021-02-06 01:57:09', 31, '2021-02-06 01:57:09', '2021-02-06 08:57:09'),
(72, 1947, '2021-02-06 02:46:23', 36, '2021-02-06 02:46:23', '2021-02-06 09:46:23'),
(73, 1947, '2021-02-06 07:03:46', 37, '2021-02-06 07:03:46', '2021-02-06 14:03:46'),
(74, 1947, '2021-02-06 07:22:19', 33, '2021-02-06 07:22:19', '2021-02-06 14:22:19'),
(79, 1699, '2021-02-06 11:14:57', 35, '2021-02-06 11:14:57', '2021-02-06 18:14:57'),
(86, 1947, '2021-02-08 23:56:25', 31, '2021-02-08 23:56:25', '2021-02-09 06:56:25'),
(87, 1699, '2021-02-09 00:03:39', 32, '2021-02-09 00:03:39', '2021-02-09 07:03:39'),
(92, 1947, '2021-02-18 11:22:34', 38, '2021-02-18 11:22:34', '2021-02-18 18:22:34'),
(96, 5, '2021-02-20 13:08:42', 34, '2021-02-20 13:08:42', '2021-02-20 20:08:42'),
(98, 5, '2021-02-20 13:18:40', 33, '2021-02-20 13:18:40', '2021-02-20 20:18:40'),
(99, 5, '2021-02-23 09:22:28', 35, '2021-02-23 09:22:28', '2021-02-23 16:22:28'),
(101, 1699, '2021-02-23 13:50:42', 38, '2021-02-23 13:50:42', '2021-02-23 20:50:42'),
(103, 1699, '2021-02-27 12:03:24', 37, '2021-02-27 12:03:24', '2021-02-27 19:03:24'),
(105, 5, '2021-03-11 08:26:24', 37, '2021-03-11 08:26:24', '2021-03-11 15:26:24'),
(106, 5, '2021-03-11 09:09:39', 38, '2021-03-11 09:09:39', '2021-03-11 16:09:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` int(12) NOT NULL,
  `status` varchar(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `status`, `created_at`) VALUES
(1, 'Di Terima', '2021-03-17 19:18:11'),
(2, 'Di Tolak', '2021-03-17 19:18:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(122) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access`
--

CREATE TABLE `user_access` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `like_is` tinyint(1) DEFAULT NULL,
  `dislike_is` tinyint(1) DEFAULT NULL,
  `accessed_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_auth`
--

CREATE TABLE `user_auth` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `avatar_file` varchar(64) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_id` tinyint(4) NOT NULL,
  `user_entity_id` bigint(20) DEFAULT NULL,
  `user_key` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_auth`
--

INSERT INTO `user_auth` (`id`, `full_name`, `avatar_file`, `email`, `username`, `password`, `user_type_id`, `user_entity_id`, `user_key`, `created_at`, `updated_at`, `login_at`, `modified_at`) VALUES
(1, 'Aurelia F R', '20210106070701.png', 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$OodErjg0.0gu1MWPr.YabeQ6pRNz.X6nSpYHuRtp.SOmrqnEOunIC', 1, NULL, NULL, '2020-11-12 17:42:41', '2021-01-13 08:27:16', NULL, '2020-11-12 17:42:41'),
(2, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$neJ379i3ubKC5TcVQj1YUuIKE2dWcNPhMNfv.cShm3VAp41UPTNRW', 2, NULL, NULL, '2020-11-12 17:42:41', '2020-11-12 17:42:41', NULL, '2020-11-12 17:42:41'),
(3, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$fefqcQAb8Aa18p4w7cXA.eUT4o4.hAzS2FIlpjfmVwjf7KlO8Sd42', 3, NULL, NULL, '2020-11-12 17:42:41', '2021-01-06 05:53:24', NULL, '2020-11-12 17:42:41'),
(4, 'noviansyah', '20210106074140.jpg', 'novian@gmail.com', '12345', '$2y$10$R4DuK.nTomw3OGGfUURm7uQDuKd4fL5y9sWMNsuOJkTvIsXEEqbXK', 3, NULL, NULL, '2021-01-06 00:16:48', '2021-01-06 00:41:40', NULL, '2021-01-06 07:16:48'),
(5, 'andi agus', '20210131132040.png', 'andiaja@gmail.com', 'admin', '$2y$10$rfzq3wT2Hpk4KSdPH9.Fe.8F0UYjhW81qKmYtE8oIn3lJbhv38YKq', 1, NULL, NULL, '2021-01-06 00:48:44', '2021-02-06 06:51:56', NULL, '2021-01-06 07:48:44'),
(22, 'NUR SYAMSU SAFRILLAH', '20210128024047.png', 'syahsu@gmail.com', '7095123R', '$2y$10$fE4Xgwm4QV6mi1bKcz1QRe5Caqi8iwp9q.nvdkCdqaSjf1t0IiFQ6', 3, NULL, NULL, '2021-01-06 05:51:13', '2021-01-27 19:40:47', NULL, '2021-01-06 12:51:13'),
(23, 'ROMMY ARIE PRASETIA', '20210107060806.jpg', 'rommy@gmail.com', '88112003Z', '$2y$10$xAOwMENFo/6eqSiB2rqWz.RIpvXd9n/faRA7lIH8CM0/BtIdLRAyq', 3, NULL, NULL, '2021-01-06 05:52:07', '2021-01-06 23:08:06', NULL, '2021-01-06 12:52:07'),
(25, 'ANDI AGUS T', '20210106144405.JPG', 'agus@gmail.com', '94161714ZY', '$2y$10$N9SwZkNOUnIaswnIBlIS2ORw5oAr85o8Iu9H6V9ZP05bIenEVl6vq', 3, NULL, NULL, '2021-01-06 05:54:08', '2021-01-06 23:04:42', NULL, '2021-01-06 12:54:08'),
(1685, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$kvWQCRHQM2bJVEG9g3JVmORcEGVghxTDkEpcxHJ1PJoA9LDfTv3wK', 1, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1686, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$fBwBkUxYQDoyNr9zNe3F6..RvLWE4IOorOX1VMzMXz27O6ahGLDdu', 2, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1687, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$BDmXYfaBhjkGkezBvTXn6.fTzVHT.R8izosTELS5lgINKcakEFnWi', 3, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1688, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$EDuvarNxpW4gSCJJoLxwQevQLZ2kmREmt4TksqbJ01d4ZbvYqN7oO', 3, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1689, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$LT3uNi52Ml.23vFvaqoNPuJYEWmsIAU1TuX1gPuA0Qd3HsNqThwI2', 1, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1690, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$FVQ3j6r3q251srjKYuv2POXO0qRFO.6v4vS8BN1/4BkDzSdcfQcWa', 3, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1691, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$.AIvOkkjyKGO/5oHqZbHy.JU7tnRRB0Mu53KWJ/rOMEwJwaR4J.NO', 3, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1692, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$XQE7gUGHapsp5JqMN459RecEvQ.Pl4k8gNTksEsabQMqp.jSyn0dm', 3, NULL, NULL, '2021-01-27 11:18:13', '2021-01-27 11:18:13', NULL, '2021-01-27 18:18:13'),
(1693, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$lLZrO14Wj8eraGB94dQEGeyfncF1fs7H..E4U36CzhWSJNO/xiBnm', 1, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1694, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$saeicEy.Is8J72uq6dcwE.7HBEASLJsE6BFH8Wyjp.rrD2Cz/VTCO', 2, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1695, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$wTMpDm0.P57wVPlUNVcnMOhYvu5ZklwJpWtiZfJ65yKaZ/J.Ys9Qi', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1696, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$PoEeiEgNGwSdj7VtxikCSOB/ev4IpnoCKw3JB2GW3ec3tGuu6G8N.', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1697, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$wytIIPMiW3G5ZZNgSEWoHuQCJw2gfoO9sRBBaFn6oP70.bf5hO06i', 1, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1698, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$65vfX4O0PyzFpdVx6xW6aOOHQXhdUl52TGsZNiPV.42WFuJCk6auy', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1699, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '11223344', '$2y$10$6WscB8QwkbykC.MFRmfc1OVikptSdtAIkdemSIN/cycz10i4yip7a', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1700, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$Zt4qkF9ebMCaVdJZKqXiJeFjU1y6jebjIjKyICHvHjoKbAhZ/5aNO', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1701, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$ecZRLL/03EBGnADZt91oFOa.djWo5B9XyfeZGe7sL4hwmRJVEi5Wi', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1702, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$E8zz6Yv8B4xRL9w7f0BmcOhm4mqjRAyeYGoHeUPKqqp/MK37M6R9K', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1703, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$XkEET24aMfYm8bq.a49dieqUS.szIJRouwcGIYwGokTE4M4twFNci', 1, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1704, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$lHlto0UOqHhaFR9/eT9gZ.LNc6RXJeJ.m4JLlPxB5dlLH8hfmgvo6', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1705, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$V6/ODqdCHnlb/WDEFg9Y..SCxLTz.FlFvytWgAmNEuN6i7SZwU6Mi', 3, NULL, NULL, '2021-01-27 11:27:15', '2021-01-27 11:27:15', NULL, '2021-01-27 18:27:15'),
(1706, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$g/cyL2i4ioaCEJZH9OPHDOr/GunpkkHIocYjHUL6o/pTDpI20Tv1u', 2, NULL, NULL, '2021-01-27 11:27:16', '2021-01-27 11:27:16', NULL, '2021-01-27 18:27:16'),
(1707, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$/.62reCiBYaF8n/4E4zFD.qCHlrLZ20NSv3L6FRisdfVCCO2op9CG', 1, NULL, NULL, '2021-01-27 11:27:16', '2021-01-27 11:27:16', NULL, '2021-01-27 18:27:16'),
(1708, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$4plYuDbQw/1PsAz4recCFeendepNpta9dWQIwrrmKjQqpgjugPgfu', 3, NULL, NULL, '2021-01-27 11:27:16', '2021-01-27 11:27:16', NULL, '2021-01-27 18:27:16'),
(1709, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$6u6rnURefUe5LgOun4fLzuPNgc2qIZBO9ThEJtmlVPauR7XfpvYp.', 1, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1710, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$k7tJJ9.YNJe5bqXyHzTn/OilqAjcJNBLgR3oOoZYdULVjs.rF7DKa', 2, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1711, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$Jb6XzUddHKUhK82bu/r21.fL.XpZ0SP76saTaAvUusqjdEuLaNGhe', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1712, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$L2SxwtOrUC6NFuKbmWmbqudhkyIHdJUPLBHbX.qXOpFG5dq6240gu', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1713, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$ilcYySSQUNpyxSGWhCsZZOkBQoFhe/Lw80ImJV2kVwAaOA1z3FBfO', 1, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1714, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$g0Ixc.cTFTdZC3S94CHz0uz21WNtgyjs9jGIjoigrCT8nkyXqs1aa', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1715, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$nM1vR8swrWlmx1wxCNIi4eYPNH3IbD1S5j1NFDIgWaazvlBKREAYm', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1716, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$obS1nZu/RbJGyDbDFlYOqed2IRI9zhXGbTpStHHGLlECLxp8k39OG', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1717, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$c/udgCuqKO1y2Pcs6TMq/O1JVP2WzIgmVxJ12s7lTVg5HsH09VY5u', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1718, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$THpjG6vmRFCzhWh268R14u4YrXmIrw45YPeALdkJ7StVmdudctGby', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1719, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$rp4GKVaIAnXUfRdZg3L3YOjLcc65NjT5wh9UjTApX5.wXXcW.mkAy', 1, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1720, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$8qz0x6ep7yrd5KJmwSaQB.vGAyIFUnXVGBMVEpSQnG7c9gwU/XGea', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1721, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$1JtQir2jOYtfzRDjQt2ehO3apMRID8GgnLUYQE2Ldcau42UcB0i/C', 3, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1722, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$DxTeeCbyN95hCqsK/H1peu4wWb2nqOFP3p5m5ADhJwzcIu/jZO6H6', 2, NULL, NULL, '2021-01-27 11:28:35', '2021-01-27 11:28:35', NULL, '2021-01-27 18:28:35'),
(1723, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$rwyogMP6M.cEsbYsCuT6s.5.EDU1.9sFFutpbcTxc..8j8En3HLoy', 1, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1724, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$fpgrcyM5WWdixajh0J9T9O5P8quk4l.RuyPOdw0QNYgJwBN8wDr4W', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1725, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$v1jMZyzE5WYdGXXxSjaDGOGaF/QoR3F0bbdFGE3rmmI.F2sE7Dd3W', 1, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1726, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$96k1ni02qEiCvgkRn9SxZuWqS2QGxzJ/YIUmo3./P90fjl/R66Hty', 2, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1727, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$Yu72sP4qiTdz9oVauRAucOmrU9fy/MyT0da7SeBrmxz9gS5LWadLW', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1728, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$vtCSunOI3PPzwvqfFy8g2e896MW.wTaRDV4yn5PyRojvNT0E/3Ene', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1729, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$StWZ0JyARNVWTKaEVRHspOwqWoIyWGMv1FtcrsOR49pVbg.gU4AGy', 1, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1730, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$ET8jLFtHgKiEPf1c8vz6vO3nzp7TkNI3CI2pLt4J3/BaZpU/CDqRa', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1731, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$SnROaGqyA9tyWhGTV.SJm.P5d.hbFQCpXapmdH1ptMfXuLg6E0KE6', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1732, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$/uz2YvAFOwg20aQOFL2hZO/1y.fXhJ0PbZaUPjZ.2nOmOwjiLs7nq', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1733, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$HNd2IHJFA9kxNv9qwIIyxuCmy8xwjQfC5yIRVm3ZBOABxkmhMtuvm', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1734, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$McicQItUEIeBehjAdsJEr.82v/i0FCyZKIF/wLN6vatShdlLQjuHu', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1735, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$EGJAhkLCsPuRSw2BnwH42OQka0L0ALCIxrSpe4WrOr4rdZQ1DQHqC', 1, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1736, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$UdpRj7Wcg47TQPyK1kS9muZByk0Xp8ei38Ls/kfItUAMlF9NQxxxW', 3, NULL, NULL, '2021-01-27 11:28:36', '2021-01-27 11:28:36', NULL, '2021-01-27 18:28:36'),
(1737, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$SP/l8vDqF1D.W6c48uYIpujJ3fmjtWA7J8i.DJbYPVvZ7exsKWcAq', 3, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1738, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$J64ZianuUmDNdOTp4gErCu5c3ZSsROsmrXtMg0xqUnmmkXN1ZhNXa', 2, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1739, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$0b0At.2CZts.m/KO.vYnjuHFhkpZoZe8CZ48ksUCKxvOSs1lqwHtS', 1, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1740, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$/B0bcCKxwz6mYZZdhVIPee7oqdP12jUqaorpg1BnxTYNacqthDHdm', 3, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1741, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$ljUOkrknNXuk4cHLGOkmBugi/h2kwGDV2f5.8ebAkKRXy4a4apdhu', 1, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1742, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$K/9mPmVreRZAjQnmU3iyG.b5blWZvgKLAuYXwu9r9BJoul1ZXRMJW', 2, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1743, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$sgsR/ZvEzwFuLJAgF2xU/uJWuFNLxSf.jqVKan1nJI2.nWmIwR.sO', 3, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1744, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$lGH90RFROYt8bwZDCyuEsOs9a6RNkMaY9tcr1T5f.jX8dAMWBODBu', 3, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1745, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$upVxZK0QyTl3VXAA/o1LkuXED2Y720KTzznYEQb9KSsrvTtgY2gC6', 1, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1746, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$9UUZe64zH/zCokuE.S.tNep0CAbSkTe1g5.JOx4TwoBEsRMPzRs1e', 3, NULL, NULL, '2021-01-27 11:28:37', '2021-01-27 11:28:37', NULL, '2021-01-27 18:28:37'),
(1747, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$8/gTM.TdTiAZgraZpmw2w.9/It4GPTNv3BZjzhZEtw5NJYnvxXO.e', 1, NULL, NULL, '2021-01-27 11:29:37', '2021-01-27 11:29:37', NULL, '2021-01-27 18:29:37'),
(1748, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$Kgxk2hmbvvXcpuaR/Z00k.WlHCpL0lgrHWBPINyPKt7ne30XnD/YK', 2, NULL, NULL, '2021-01-27 11:29:37', '2021-01-27 11:29:37', NULL, '2021-01-27 18:29:37'),
(1749, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$kt.IuFE7N17ik6Yr68qCjeQPNWWNaqbvak8A9PZR2OgjkKagRUPzm', 3, NULL, NULL, '2021-01-27 11:29:37', '2021-01-27 11:29:37', NULL, '2021-01-27 18:29:37'),
(1750, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$irg8udm9VG4KYGagrELHNu0iwaorDe.7y0aHyHGL91eaQb8wBN3wW', 3, NULL, NULL, '2021-01-27 11:29:37', '2021-01-27 11:29:37', NULL, '2021-01-27 18:29:37'),
(1751, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$Vkn0T5lGs546Cwy7ZUuRIe.upOjNvgqpXDcPyF/IYGn0xrpcBRB9O', 1, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1752, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$vKWOXKZ0WR5NEUVNPb7O4e1Dgt/xK4TqKRBrHbCHvJF3q/1GWHSxK', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1753, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$EGOSA3voC6W0Cz46ornGH.IHBIrOP5MLusUDZaKpCm7WvRZ57c3Tu', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1754, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$yQo3LjExHZDA9aECEntnduAlJ5zWJiR7e3Wk1XhyNu/N4Gi5IkVJC', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1755, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$7wXJ.sqTjE3GflzKXK4CFuPVuafsDgmF1ZJ1.gYGtFp8fGVnTbvIe', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1756, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$SKfstujmLjbVH6HnBJM9zu2.LnzhJyVjZQIPaOcYG68/0br2Scnw2', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1757, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$DM..lonWWWN1MN7cB/f0AOpFW6uAcGTD70MOHrz2RxzDQJLen94AK', 1, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1758, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$VuMGxHMjIFIpzTV6pky62OqBH0X29koYxl/uMXhWHtPLWK7fqsaie', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1759, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$r.fnW1QzqyBNxtYeQ1ui/uSW16pGDM9wc5auLA/eVx.ButfFF7LYm', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1760, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$kkLC4YcGHhWSehMwhT39tefpUqTEEpLb2KUgyU4StgUUjtVqES3gK', 2, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1761, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$s4XwEeaZsh/zqq1ompPv/.IQlzmTKHeRJn/aedzmr7.JpRCSUBlJa', 1, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1762, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$CfKN3ZI8nspXgj.buC6F2ewz78Ss9CoqCJPhcoHi4cFfMVcsdfJqi', 3, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1763, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$mCN.zIjVFVi6iVmHsLiXNuJb1x9vS.18zZ0cwzI9ddGiH1aU/uR9q', 1, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1764, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$H8Bl1L7AN5Bzrm7RIKgQcuQTwMEFgD2/Bz1VZQejQ2SmuJVQelEhq', 2, NULL, NULL, '2021-01-27 11:29:38', '2021-01-27 11:29:38', NULL, '2021-01-27 18:29:38'),
(1765, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$/9MVusYVp.oUejRU8Tq/8eihcJLrr6O6AL61qILkMN9Ss.I04oIKe', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1766, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Bmk.fbTMgxl1GnRrrF9f9uhsV5dCT.a.FVK.sKJ8lDbc3FuLkCtMG', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1767, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$.Van4QO8vxzHDvAI5PurIuIhaJqIHGcONlFI/CuVxES87aPQxidTW', 1, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1768, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$wUGxUeBKL4gnh2T925pRnO6FT12OnQXzxV01ghAyfSZO6cTc7XJNa', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1769, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$ZFBfGlsWj6wkwZYcOAOy2eDdRv2PR76mE4a.Oz5SyMM0hChNj0C1W', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1770, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$4QWvuUYo.mOantRX8WjMMeKChmJdFiVe/.r9Fvz77JnQY22jul3gm', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1771, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$5nA5KWIiKmQwXwx2CA3b0uGgYqg.7MpRw6zgbmGU9JqoxouZHXspO', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1772, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$aWeOOCwNzhwdl1DhjAD25OnrICqpLa5q/CCaIFddx4JK0dcbJc2ke', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1773, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$sL.L95ISzZEH/HncQTukB.26Gi3IdQ9tsf0IBNWGcGr6gF0ZirBim', 1, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1774, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$EBaYxt1qyg7uAwpGB7RnYexF2XGQpQwwcGAuCD5Mz5mxUa3U6dX5.', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1775, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$yZlcamueI7DlMw42RJwX8OR/Z7/Op84BcjrfBcW0n0MaOAsgxBPDi', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1776, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$u6wkrKkFIvmsyD2uonI9i.1jgAGJhQtNedXAYB7Zl7f7eqYR5Fu9.', 2, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1777, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$Lq2KcyijAHlpfdaq5A1xrukx6hoMn1Fp5SW.t/Er00WVs3cAcQUTK', 1, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1778, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$NHY59YYumryBptmY2eB1tumetzFfAZ.iznJzhNSOkzvA4gmaRJOJm', 3, NULL, NULL, '2021-01-27 11:29:39', '2021-01-27 11:29:39', NULL, '2021-01-27 18:29:39'),
(1779, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$B1yL3Cr9wjq4PKOAQSg8.OfHxwn/B8gPqZ3Ec.DSF1GRPaa8eVIUy', 1, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1780, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$mJvuD3bFW7YZJVEwF88TJuQb/z9HAGTyC21z8e46AOJL0L3d1p6cG', 2, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1781, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$UzDrHtSszg661fRR6B8x7Of1N/GewxdN7s3.vG/kMvUPZald.rRBm', 3, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1782, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$fPQAKHVf4F71iAMg6rJIGuyUNv7KY24ZU0ufSZjVXbdZT79Vx1B8u', 3, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1783, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$RRPSthTgYjNTkOJxhuC2i.mxzZrJmVPpTUz/C3QC6RWiXKqXzGBxS', 1, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1784, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Jl5YmI/KM4GPIqFNhYREB.07QfBQT41mBn5vL9T92nTp3uPe2Zl06', 3, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1785, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$ohDYaiMR/H975WyPgAIG4OS8BxywJLwF15qjUsNEnd2T85dC1LIci', 3, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1786, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Sf5EBUU4z6dAPiDKgShMJuM8z8Lbq6RIjuX2gzux2z2m4QLDLtMvy', 3, NULL, NULL, '2021-01-27 11:29:40', '2021-01-27 11:29:40', NULL, '2021-01-27 18:29:40'),
(1787, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$woTOfqBDDMmoKSrwqCCZ1uDIfMf29MCxeq8fMld.muK1B/iFS4KWO', 1, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1788, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$YyhTnIO0VSXoGpIYrY.mL.iGVzReVRSRxUtZ95RpBur02KLlu0C6i', 2, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1789, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$zkn651Ijz97dqbQ49sidNu5ho5Yi6a9/8DD/lDCZGpisK3z76OMI2', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1790, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Z7c3lT64DUcvi3XW6EwJ1OjJax1AJAwRrCZSXU77ptKLGv.fBAUGu', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1791, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$URj7E.RZN/d.36lHkntuf.bP1lyWChN2IZJGJwwXqD4E76FNgqWwu', 1, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1792, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$aMmlrfyC/uSUext4bMKjSOwZOJsJXPfxV.GWqP517ytBvG087zrDK', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1793, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$MMGgvBB3ystwZPwcDs5nI.P0OR88221EwCqjwKAQH6cP1BzhBIXaS', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1794, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$Ny4PZRC147GhmMswjpc9VOpE/tuq4QhWwTRcV4u6PdcZvug5Vw3.a', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1795, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$dFhoTZWoYocfCSMFM5dScu2X/V96SKbdqYPaoSMIIi3zmcyhpukv.', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1796, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Osqme7s3jK5LsCgvtBz8p.mkiZ46mTWlTbtaKGDSrcXlSlFqKePE6', 3, NULL, NULL, '2021-01-27 15:45:15', '2021-01-27 15:45:15', NULL, '2021-01-27 22:45:15'),
(1797, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$AOE7ru2OsYMXXMpJbkJGQOJNuv1sKgDG/XKsMsBr/uHccAQcNEQaO', 1, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1798, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$u4PZ1yEsSzFhGuUnSPuwfedgJsCRSxvFdS3E/OFH2G8xjr0cYfX6G', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1799, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$ZXQHrK6Bd1W4WjvykcKXd.rsJW811nCLvusV7jry3.th1WwH9XXLG', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1800, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$w1Y9bvOz/2izy8GKZzoZxO3sEe6SelCdVFtFDykGvtqtEJR7WKrQ6', 2, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1801, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$wz9C21xTXtGV/8G9hHrZGOoAacDppRBRmWubhGT5n/4l3Ze0ISZau', 1, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1802, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$n8TS8gYuJjxtpFrpiWydXOSjbOVHwj.FcuX.Je.3zhGdcm3xQy3lu', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1803, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$BtmYd.wKTySKZConq/VVa.rcrCz9nZAVfnavxy5LpwGDHKu7IJvYS', 1, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1804, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$rb1hVzDNSkDO7ZIZYHbf7uW9UMwk294lkjWpvjJZtXPV9NQLx2bou', 2, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1805, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$PGa3LoD6VR/9pdpup3JyV.O9JaM10ERvuY6zLlxFBBb8t/PwHxwTy', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1806, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$joxbcIeZOrnRt/Gv4Fm9KeZQJu5QKK2ThclriuWGswIkOrY17VCfG', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1807, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$HCMk68y6FXeNRvuf4D.TWuC/4HxBB5R6cpL4cHSLBINJfR3e2852m', 1, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1808, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$p.R.mD8xVpkwD43Fr1mZHuiUeiuNiADx2YrMfUlt7sS0Imj9a5Suy', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1809, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$x3Eqi2FaphhR6p48prYlO.sRgLByiszT93qxZnfkDiQx5LzCtaJjm', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1810, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$gzrHPfWlZAELJNoJLnNZbuov6pNBIpxf0J1QpLsMh7byInzRJ4SaK', 3, NULL, NULL, '2021-01-27 15:45:16', '2021-01-27 15:45:16', NULL, '2021-01-27 22:45:16'),
(1811, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$2CWKx./FTXHvhQ/tukQHKObZPs/BmTQOO8Euz9wchwWvLmBCBxbG2', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1812, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$COXNRFZx2p1zYIgOnSdKhee4h9loHFJCaYktvyda01PLJQUGDBGlW', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1813, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$EHrc/38u.XwEqUD3E.rO0OyzEHCTwJML3SiFOS4D/CmdojyXkmYXu', 1, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1814, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$ZkYwlN.wtgF2uL7EGPlna.kTm8e/ZDiWmpWlKZo5/M4beXaTuVOQy', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1815, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$jll52ud./e5ZnGABI1Wjy.clVdhNN6v4F0sI4D2.wQ5W6XyeKoCIm', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1816, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$giIEumD93nve2Rx00pTw9eaG7IyznzFw7Y6uenZtXDoxvKtMXbzOe', 2, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1817, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$Nw.xstyCvcCMwASdLmqv1O1pmD1itKX1pSvdapIcw4YadB88qKFE.', 1, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1818, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$qVdHPaw/4.kUHV/U17JSm.6.n8V69Qj4JPPtZ.fJ.8GS/SLDziQIS', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1819, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$tjxNRKiLiXhlnY9Zf8.gze/Plrgkjeu1aUWpyzVpc6/RGIWruYso.', 1, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1820, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$.f9JJQ6dKOETFj59quWZaOPJ6PtGhp1r.RsxA8oO4e94oqTP.CdWe', 2, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1821, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$hO6MB6VlNCuYRZMaWdHmk.flw.W9NhqBznTelJmIl91tZcyb38J4i', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1822, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Q8eWySGbnXgiUexluJrdReL57YT8ICQFB3Gu7PYqwi0.ZRIYDak6K', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1823, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$.nOGA5HntOQx24t0pgjaduUZSy4U/DVfDZw2Z8TmnhvmE2cojgBuW', 1, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1824, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$V9xvrNLvqEDyfES9sTnu8e.tY3gjztehsRZfpLFrwxU/PLVuJRMMi', 3, NULL, NULL, '2021-01-27 15:45:17', '2021-01-27 15:45:17', NULL, '2021-01-27 22:45:17'),
(1825, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$gu84jp8gOO/nn2PF7Bc9CulCsgnah54YVPVWLGeVO888Kn0OxwS.G', 3, NULL, NULL, '2021-01-27 15:45:18', '2021-01-27 15:45:18', NULL, '2021-01-27 22:45:18'),
(1826, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$fZww/Vq9i6B9gqPE.gy7FObCcYSTfoXIPlNNMD8tXiN1gzt3N2mrm', 3, NULL, NULL, '2021-01-27 15:45:18', '2021-01-27 15:45:18', NULL, '2021-01-27 22:45:18'),
(1827, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$dAzK.M2SRPV95OcW.vL3Hubgra3yEfA.IEzVmvj6L/LBQdn0xez0a', 1, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1828, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$apXBUAobWcSy58P7jrlYL.C2W65SPSGthnhf54/w/TKHC5/C2gNfG', 2, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1829, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$HmFl8vsibuiIXZJe316i9ecQX2g8107pImyd1p1zoG/Cm0PKyIENi', 3, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1830, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$qzmqfexo5GhKvLmY2pu6Tu4fC44Pp3lJ39jAQxZ.DGO9SThqWiHtq', 3, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1831, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$P/brtyauXx9VSLxGjRBW1eTKMqO39y83crPwCDlgt/O.g/9mvWLKW', 1, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1832, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$C4yThdpdP23HKmBF/ikeb.5KzDPq.Fwf/ujU/OrfPVdt7ieZdlneS', 3, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1833, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$sM6Y2vCZkKIa6trXVjKNWOdSDltaup.H0aHa5iZWYvuvcNhF61Cqi', 3, NULL, NULL, '2021-01-27 15:49:24', '2021-01-27 15:49:24', NULL, '2021-01-27 22:49:24'),
(1834, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$Chovhs0dyFSn2e1AsFFSpu.CatA0oGM9I1QqsH4wPSvMy2uq2oF/m', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1835, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$uUHI9tTpBO2cEUlftA4M0uijVMp8OKVn6H0W4TAYYJi9Sns2PJYya', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1836, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$j27Mj7hB4z1MzJeDomJKx.a9sdC0JwMdNnfyZjTBxIunwz7aq/AsK', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1837, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$BctvMS605GGole0.smBgcOknoTmehqmtv9kGI6Rh6cjiKFrfJB/Na', 1, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1838, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$zgAEFB1RPERnJG4rNsoGLODCOOAnumi4C2xSRVCEv61KWYbe./1lK', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1839, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$49WpMd82Q8ntBRN11RE83..g93BAwdrMx6AIrtyJ7Sm1OgKso15Iu', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1840, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$771EOkfXgXKeAZbzs58r4.hfp7xggHXsrRbG2v63RzBVQljhiTpoa', 2, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1841, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$secDr1eRiUvid0gQL7OoPe8KA3Bu5HBZ.FQv4McE3mf73gjEcekCq', 1, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1842, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$c5QFdlQRFqwLY0RBoIwDrOjFcL4gFZDIWsUcBMPrOOc9SU7hSpDfW', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1843, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$dUySPZtdJSus.DCckalg/.k4GLanqM1QHbXmv.FT9dRnGl7f.2eaW', 1, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1844, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$sRyZv9hGuuRABb3GnDSRY.a3J7i.SZGeI0T9SGAdqKjGbnj4Ez0kG', 2, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1845, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$Vq/FkbFzLxQ2pnTSO9XuVO626gtZGSWzCS.UnAcuPhDGZgRMWjrGi', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1846, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$dcd18vLRLCxazf3PFOF8C.zpEWssJhLpBLkY/9dGgzsuFFajg2zbO', 3, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1847, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$QivJtdmgsumEJrfZOaeaROGrcWK1R32W1ECvPjevce.2TVQk4n9wu', 1, NULL, NULL, '2021-01-27 15:49:25', '2021-01-27 15:49:25', NULL, '2021-01-27 22:49:25'),
(1848, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$aq6FKqEyO98s/ehhDdkuFutTf0zKxzzM0zTp/pEo48EqjXTYM2Xea', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1849, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$X2nRAekoSWLP6EY3TlYqHOvUMbeOqJOaQem2j8Bs6nIneqWKvC9PW', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1850, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$1qc/mVxQi4DLDFItCBYXROQTlC3SjfisrcOIXK32EClDOfPJfmxGi', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1851, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$ZVo/ArFYoIMry/..1G3eV.1YxXEUhfWR5P5g8q.J04LL9RA.fIRSa', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1852, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$tCLgSgy0.zChkhK.7iI9H.McGHF5cowyDCQ7eQ5KqL/8JM4p9.Jcy', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1853, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$rE0KKB81jrX2Fwz9MdoG6uXnd2JV/wwimeW.3Mge4jNDXTYPOTScq', 1, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1854, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$d69kF3NpfLsvT6gbd8.24.u7C7V.ofV3e.Ui5dPO3qNeCsmBJFeoy', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1855, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$pZl/rETXk0Ouuce1WHPwaufo2LPYACx7buN4bLzNE2knSGRjhYb6a', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1856, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$mkPbcPtS1CPI8Qf2vSjXh.YcDVUD0uvBNdSXyzpqWf5skQuEbjc/q', 2, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1857, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$Ucp2lE31hhDh5hdlgcQ2.O/Dt9cDK6B4doUQnuVDwY13lfD85mQVm', 1, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1858, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$2YKeuuquhL6QwUzIvNmXs.Zhxam/SthpRFfG0Y.DLRh0i.b00gpd6', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1859, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$F7k2j6LqhRs7C.ExOz3d5OaVP7YT6neYVK.Jk8j/2P6WkfbuU9T6q', 1, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1860, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$n/aUSHpSnZzOV7AutJ/eU.Bhj9tV4o6oHy2.aDGQBjiW08JCYhZ5y', 2, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1861, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$OzccEYNbxRmnrRbALXOTA.yZJaR5OUL6wKYzbDw1Ya/fqElfmsw1u', 3, NULL, NULL, '2021-01-27 15:49:26', '2021-01-27 15:49:26', NULL, '2021-01-27 22:49:26'),
(1862, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$K0mb4Ehmn1op9.jb4tsGo.121qTO6F56rJgrdeX4y7ngzdJTCyyzS', 3, NULL, NULL, '2021-01-27 15:49:27', '2021-01-27 15:49:27', NULL, '2021-01-27 22:49:27'),
(1863, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$n41JVDrZZl9oIy/HeIRBjOSddWRfQYjsLGj3UGVI60rHUyA6BMMu.', 1, NULL, NULL, '2021-01-27 15:49:27', '2021-01-27 15:49:27', NULL, '2021-01-27 22:49:27'),
(1864, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$OgK88OlVGFsioI74w80/xOlhDywMheeD2H3ycU57gU9eN2Y2QsYzW', 3, NULL, NULL, '2021-01-27 15:49:27', '2021-01-27 15:49:27', NULL, '2021-01-27 22:49:27'),
(1865, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$wEfz77GPTGBVSPjfCwo12ej77SbQM/m4p4NTBB76d5P40L.90Qmze', 3, NULL, NULL, '2021-01-27 15:49:27', '2021-01-27 15:49:27', NULL, '2021-01-27 22:49:27'),
(1866, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$f/Ga6spNH0paZCP2jZNbY.Zz5B11oQqjc.bzYKIrbJjllzdGY7t3S', 3, NULL, NULL, '2021-01-27 15:49:27', '2021-01-27 15:49:27', NULL, '2021-01-27 22:49:27'),
(1867, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$Hlkua43TOBIb/jdDvB5aGOhTSy63itBSmx.JC4HsF7a2p8Z7eqndW', 1, NULL, NULL, '2021-01-27 16:02:05', '2021-01-27 16:02:05', NULL, '2021-01-27 23:02:05'),
(1868, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$rqMqRmHeiLKXCqwwnCasueHnA4z5LF7kHID7xHQZrG2vhYmMb79vS', 2, NULL, NULL, '2021-01-27 16:02:05', '2021-01-27 16:02:05', NULL, '2021-01-27 23:02:05'),
(1869, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$VJi5Me7FaZXlxBYKAH238OsjLcCrvnUzpCoDiRdgUrl0UpjmRV6r6', 3, NULL, NULL, '2021-01-27 16:02:05', '2021-01-27 16:02:05', NULL, '2021-01-27 23:02:05'),
(1870, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Cqz2VafWSuIbTrgBvOmU..9dmOHQYkpxZT5F2mHyyj4Ek3dFvZVvS', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1871, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$4f.1q3ZOuwILBrZvcWRbV.aHpX76i7NPKjc29XYNC33HIO2a8HrYq', 1, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1872, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Yiu5ShVIx4Yd78kKlyvc4eANjC0XWvVn9f463esfhebjSJKyDtkuu', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1873, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$MECcmG./l4JbZipzEhZcgODvBLYTW8IMxi6IYuvDeACXe/jAftiQS', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1874, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$ys2c3557fkO.ZuuXojbgZues8GYo8fxJNp9D/FeXYATZ53PFXF/MS', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1875, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$ZaPEiGT/hpgeI/KVbysIV.KjYgEXhYLbCZFWbusPW68HZo9Lhn6sG', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1876, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$oYNyGnsifXbumS5ALg/NjO.QRUN1FkLAn6KOWqPNN0A5/csGKeyuW', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1877, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$ZN3Jv5AiBoCRkRU.SF4ujOjiPuEdcB6TACoRDNar7/1Dvz0s8oldW', 1, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1878, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$aU1LbsjEBJOk3N5xvp.G7OL2GTaIzwD1m/c9kk4DKi3vLzoJrpx32', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1879, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$p8gHDiAuZqI6O8jWLr2vuefVzw5J9415/JzdcTyorM7gwl5ZVdavG', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1880, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$6ATT6Q5byXgi7Q./Y4hvDeNctce2FEVU3b7LWJH7.nSNlyDVuwj0W', 2, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1881, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$0c2yNMnBXVha993zv9Ppy.PdQWojGun83cyhE47HGIhkwEI6UflAy', 1, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1882, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$P6bO1vze3PUiY4wAIFT4i.Km/lH9P46KdZ6n2dVn/W4X38Z.xbZ0i', 3, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1883, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$29yQP05Ym5NtFjqWKtMO5OiPMxTrVO50XRBV9Cyj9/H2swzgjVh2i', 1, NULL, NULL, '2021-01-27 16:02:06', '2021-01-27 16:02:06', NULL, '2021-01-27 23:02:06'),
(1884, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$cRJYA6lYGOy5LPm6GtliE.X1Ngf4lPocf4SEgPGIGjG/SRiWIO/i2', 2, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1885, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$3MV0YtW3JBiduT1r6p1W.uBg4cY9d1KTXBaB6qFkJY/jjxvDTVYm2', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1886, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Mu0yDQioxKrAfWJ1aM8KTOw3rVZcZuEWltZi38a.3LDvLC9raqD6q', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1887, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$XnWxSTxfbSeeHNEhQQS8Vu017kZceO6vmIH2IJuBONytYVzZKzT0a', 1, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1888, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$m17q.WWn4tzhroczAikIbOkaN4TVDaR3.XeXPxkKlEcJRaZxBAy5q', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1889, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$9lrDM0u3ayHPTYqYZ6xV1OIJeuGNgW8avy5QUA6mJqpIVirHwv04S', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1890, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$5Da/Fc2YTxxtNxNdPrd/B.DC60XqeaCD1Qth2zzeOhn3Lt2Eoxujy', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1891, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$lfX8n9eCSUSzN.6KGS3QEehk6.8vegSk7/ueUxFv7E0Dp9HY50PVO', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1892, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$HeIO2OvHiH5fCcLiUdPQI.gje2OimgGELqtdEC8Va.i1m7LzkX/US', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1893, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$Trl0.ksAyKkI0jx/LgNwYuhMoMuuL/urZh3bTikcKMTnafs.Upzsi', 1, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1894, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$NnoQa0leaJG1Kf/NW8FD.ucrMjoMVZe.FaNz6pNX8L9JOpaBfz1Rq', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1895, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$FLIUUpgCKhA2ch0HwMBPpuELLP.wXncWhdHFcRn3HuIecsJOuAVHu', 3, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1896, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$qDE4QN3QTNO10l4.JwKrr.uC2Z631IIRDFFJAUNXH0GAKfWFTr58W', 2, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1897, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$eLnmFGyJLhjsa91H4ohrmOS6Nzg7STVtarq9K7JE0zllz1HL1lDby', 1, NULL, NULL, '2021-01-27 16:02:07', '2021-01-27 16:02:07', NULL, '2021-01-27 23:02:07'),
(1898, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$0CLQOR3aUpBu.icBpuaaOu5E6./GNDC8lEzJKsk8oujESs.tiv1NO', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1899, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$zxYwfEh9xYyF9qtHsGQ8K.xKHSdXSDn973Hb4ZEkWrWIcsFrwgqG.', 1, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1900, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$giw4a52j/MCjdi9Ch.QwEuPxWpeh9ZSJYpmh0uWLvaBnN2qx40dEa', 2, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1901, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$BcpTOFUgxETrYuTlyp1wNOZ3YebNVR9CrDkJTzvTYgL5nj0SEwP/2', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1902, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$58XL09/RCxSJXgmLuJDK9OLDXly1PVdh6ysiG1FRL0EFkn4Bu95IO', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1903, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$0.tz8EqErPtxd3RYXzutQuJvuFtBIwmkaG7y9gQDQXAgS8upcibj2', 1, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1904, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$X.pCKWSZJEllWHlpd3yYpuRw5ydIAbmJJKFK87nIn4pb2pSuTZ182', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1905, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$vwm80JA/Hu3Yfmmx4Hx3COXMQhh3xOG3LkKKi4uoDrscZodituFAa', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08');
INSERT INTO `user_auth` (`id`, `full_name`, `avatar_file`, `email`, `username`, `password`, `user_type_id`, `user_entity_id`, `user_key`, `created_at`, `updated_at`, `login_at`, `modified_at`) VALUES
(1906, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$7hrCQCt4wiWNVrZUl3s7B.hES3RZiOalp7gVpFACUkqIkqDkofLBi', 3, NULL, NULL, '2021-01-27 16:02:08', '2021-01-27 16:02:08', NULL, '2021-01-27 23:02:08'),
(1907, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$RUmmZeie6.PVRDrssKlAOOStfgFm368HmzYGRcEyb6Pe0rwL1kqKq', 1, NULL, NULL, '2021-01-27 16:03:02', '2021-01-27 16:03:02', NULL, '2021-01-27 23:03:02'),
(1908, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$P03iqlw6IpKZmb.p8pw3.eZcCOQodmXeAFrH9lELdEX5o1fLMSpDS', 2, NULL, NULL, '2021-01-27 16:03:02', '2021-01-27 16:03:02', NULL, '2021-01-27 23:03:02'),
(1909, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$bwcdTQqgpjbhE60QMnppLevfprYXlbaLgWgezaPvEzcZ.8OAwUcdO', 3, NULL, NULL, '2021-01-27 16:03:02', '2021-01-27 16:03:02', NULL, '2021-01-27 23:03:02'),
(1910, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$ijHl626hHmFNN3zni6GGG.9sWATC9vcelQlYVRfbH133lMUu7tMPC', 3, NULL, NULL, '2021-01-27 16:03:02', '2021-01-27 16:03:02', NULL, '2021-01-27 23:03:02'),
(1911, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$L.uOV139zlgSFtCFIYWeH.equGa6Sb4JhFzG.i2nch5HdgmnFVxfm', 1, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1912, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$C6z1he6tTAO006718lPOBOXk12hWlRpZYyjcD0wwaUrfs1uthWhl2', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1913, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$J8JKqC2gScflD1cc0K0mQO9ElctGE9ZAHrJmv2BuAWKTW4iaKiISi', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1914, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$Us64vZxlWwOoihB3shs37eNO1Vz0y3DwPYVQbtganXE7IltNlosr6', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1915, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$RVlTdjsum1cWSF.Tt4AWluTJrmE0fyAfBG/Vzqie0MLulRd4Udqgy', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1916, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$U059/eO.PfeRYXc.Sj.ZueHTNXwHtHNm4hM.qs8cJVcDpaY9Wfwme', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1917, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$elbUIbFbUxPesL43lM./me4hjqNx0R9X/805B9ZYgRmxxaWObzday', 1, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1918, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$W6dacdvnwP1MFXShjJyRjO5zmnucd/NwbdCSVtvr5Xwt3djV6g5q.', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1919, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$0ufRyANB5FojPdzCwvgVteyup52cOIV86IDvbvn0S8zOR0Zqk8wHe', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1920, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$Toy2ysXVsRhxfmwqPNhOJ.cX1TbbgHHr4/MLDwc7wx6paze/zf1OW', 2, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1921, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$vkjUpDEh5lU3Y8qJpLz8Xeqs1193gr3jlkhjIwEO59T3O1xurq3va', 1, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1922, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$aB47KtzqyR/fxlc2G4RHpus/xC9TPMbaP8VUTLSV7mEh7gCgKt9lm', 3, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1923, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$.4VVLZqeeDAtRE//k1F6QeNDMivjEsGV6m8d6bbMZCRZkrt.jZxXS', 1, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1924, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$LbIZnpvlF0faCzGfuUMJpezb2P0UwTm53fvaoq13ptXojgERYI.bu', 2, NULL, NULL, '2021-01-27 16:03:03', '2021-01-27 16:03:03', NULL, '2021-01-27 23:03:03'),
(1925, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$v/0sO3ZuX8zArxj0B0RFB.GtZ0So44MQGr/MzFJAyXc3GtPmzlQbq', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1926, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$sgb2Z.5DCwxYh82LboNHqu7nv7D9UoixqnEMEq.3pKCWJt/diLJUu', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1927, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$pDyC/ocfKm2kNVYmEDC6YusB5ikbBAal3NFi5jxz9jiE5O2K4piyO', 1, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1928, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$gGHyijUQ3sLyXaTKwl5RouD4TtZSjw6PO563QR58qkbvegnKHZtYa', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1929, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$W4InOaN3/Ftcksai6Zj4Ve3r.xa3pLRbDQeSbBhSirPMi9AyxUPPe', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1930, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$AsMrb9prQYr5IGwKa6BdN.ZYggS7Rwz/11OvunDECO/QASITg/cGu', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1931, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$.oawMT98WCoNb5lPkOhcEOmQqsbfduCT.nO7uNElkbcEn8Q0Ocqui', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1932, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$ju/jPZBQfIaGTMVlETzsD.cUEFiWcweRYeP8IIlMixlxDz8Q1w9Be', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1933, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$ijvUvqV/L4Q8bq4T5WUMf.eo5oSnOLO99a55bHiG8cdJmd7RpHEGq', 1, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1934, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$wXrCAw44NYxTYIhcblcuces8Q0AXNQOjBYTWBXdAXr/4BXRACMR3i', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1935, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$NCWgG3BISjqwIgQD0lNhPeRKQyM0kKZhU0tdcd7QNVpWpt6sQ8.SC', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1936, 'A Fairuz R', NULL, 'lia.fairuz@yahoo.com', '05111740000120', '$2y$10$XZrPNV1fwtDs3VAndIuGo.ODIIDZoiDZLHY//z1zJ79G5AZV7sU/i', 2, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1937, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$TquZtMwhS5SO94LTloDXFuspUPNvtNV3LPGEwgkDFvzqMxgQlBaZG', 1, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1938, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$UVnYveadbI9zPDO3qyCUG.gp0NZD1HYku6S4gImzA4KZDmGwI5nb6', 3, NULL, NULL, '2021-01-27 16:03:04', '2021-01-27 16:03:04', NULL, '2021-01-27 23:03:04'),
(1939, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$EfRhKV3mH.1j1Y4NIq0cVeD0WEwKdgis.RckQ7CaV1hD75HtZlvLS', 1, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1940, 'NUR SYAMSU SAFRILLAH', NULL, 'lia.fairuz@yahoo.com', '7095123R', '$2y$10$IN3knmQim8RkMKdv2PYCG.5o0g1Ay8zLuhFNrVD8KLtNBoQhfI9RO', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1941, 'ROMMY ARIE PRASETIA', NULL, 'aureliafr@gmail.com', '88112003Z', '$2y$10$mLrbCSJsYQHubK8V7DwFXeiTvCp/r7osfJD0kICKEC9RpmXOO1VGa', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1942, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$VFo1d/LeR0hKSTWyBsJIuuEk7tsdg9NiEI3Hez0ZJ75SKPYK2yRo2', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1943, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$MqX4RZ4OMKVYzK3XVd97ge2WnDnv.LT7ycvBM9KYfcuIQPgyaOdzy', 1, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1944, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$tqt9fjnoZnFLW6xOJq405unuugwk0oCKK4F69edx/jhlFhlZSpR.y', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1945, 'A F Rachmadi', NULL, 'aureliafr@gmail.com', '12309876', '$2y$10$o6IMPoS3n04milirrEzY1eFAvRUd06tAifLO.PgTta0jo49RhbTkC', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1946, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$LDU3AZyrlstnRBa/5fXF2OXvmGui1AOZ6cBkN3EXmyDObGMJhi0Fy', 3, NULL, NULL, '2021-01-27 16:03:05', '2021-01-27 16:03:05', NULL, '2021-01-27 23:03:05'),
(1947, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '123456', '$2y$10$F.5XESIHv177jsq0FfGRweWclNFvNXHG/AD6QIBnpyAo.tag2cKQu', 2, NULL, NULL, '2021-02-02 07:24:52', '2021-02-05 12:27:39', NULL, '2021-02-02 14:24:52'),
(1948, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$6jGIhzSHoQWaFJnUJfqK5OV9wvV3tHa4thhTBEZhGGUZehAlucuQK', 2, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1949, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$z0p7Ln8cX/mSTRGmWLp14uPFyNT.t7QklcJ097hznhkl1gSUYfgSe', 1, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1950, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$jqeJPPJ0KptpoIlbE.DDZegfeIaIqgTJ202X.1mgT3Vuvdr5p53jW', 1, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1951, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$lcWjQV9oEFdpG3o.6Dho2eRXqd1dtEUyY8UjvJmV7FlP.A2JGsXbe', 1, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1952, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$cAoH1IhbxppVZioRDyPNS.Q0Cy3r/eBAS0yAL8U9jSaAVnXKmihFy', 3, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1953, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$l9uZKghK59xRuLID5ca9muytpK8oxUU4il.H8IFRAu9V/y/6YrMvS', 3, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1954, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$TDghhCT7mRWA9gzOsK1o2.UdzYlv9zyfQ1nybXC2Jbwzjsn7.AqRq', 2, NULL, NULL, '2021-02-02 07:24:52', '2021-02-09 00:43:16', NULL, '2021-02-02 14:24:52'),
(1955, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$wgLKE.diOcWSIpetMMlkO.K77xwShWBeH95kZXEYUrBp/L15SHmKS', 3, NULL, NULL, '2021-02-02 07:24:52', '2021-02-02 07:24:52', NULL, '2021-02-02 14:24:52'),
(1956, 'TOHA NGAFIF', NULL, 'user@gmail.com', '123456', '$2y$10$Hh.t4X545saIReORNOdhw.abJ0LFDu6t114pCnkqV3lvnYIo/5f6O', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 11:43:41', NULL, '2021-02-02 14:24:53'),
(1957, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$pSldARA0VGPWikpkhPfb3OObFwG9ryYvo2y/SVh2IDZa6Y2i35zbS', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 07:24:53', NULL, '2021-02-02 14:24:53'),
(1958, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$qhLU8qk6XODYd20FT96z0eguZOo3rwx9w1jYQWNxxAD4/IFHQu6G.', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 07:24:53', NULL, '2021-02-02 14:24:53'),
(1959, 'RIDHA DIANINGRATRI', NULL, 'dianingratri.ridha@gmail.com', '8107102Z', '$2y$10$FSImE1EG04S7/kT.8zMmSu0k00QEXvGpSVYVgo1m4cqtUOGEsX2sK', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 07:24:53', NULL, '2021-02-02 14:24:53'),
(1960, 'DWI YUANITA HARCHAN', NULL, 'dwi_yuanita@pln.co.id', '8106293Z', '$2y$10$fVq4QWeCf4BW6J9hvLOj0.WI7su7jKv6uyzoatxSOKVyyAIV42.TG', 3, NULL, NULL, '2021-02-02 07:24:53', '2021-02-02 07:24:53', NULL, '2021-02-02 14:24:53'),
(1961, 'BADRUL MUSTHAFA', NULL, 'badrul.musthafa@pln.co.id', '6794008D', '$2y$10$EaImoJnwoufht2fsR82f1ump7ulN9HgfZdVbJNs6CerTpsda2xnSa', 1, NULL, NULL, '2021-02-02 07:24:53', '2021-02-09 00:38:02', NULL, '2021-02-02 14:24:53'),
(1962, 'faqih', NULL, 'faqih@gmail.com', '123456', '$2y$10$RBph5RRm2sh5fl0fCl9tZuY.Mm3qWkEKtNhS05fjdBI7EjSIpoANu', 2, NULL, NULL, '2021-02-09 00:50:27', '2021-02-09 00:50:27', NULL, '2021-02-09 07:50:27'),
(1963, 'wahyu', NULL, 'wahyu@gmail.com', '123456', '$2y$10$8XANCDeMcl4pzRawm.sNou097e02aY2SRZoR3BfKxvUMZsA2ZAMUS', 2, NULL, NULL, '2021-02-09 00:51:23', '2021-02-09 00:51:23', NULL, '2021-02-09 07:51:23'),
(1964, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$xctsQNWrdyoxoM1zMvYOEuJqPBP9olIUP78Gam8XDLO3PjlWmZsRW', 3, NULL, NULL, '2021-02-09 03:15:54', '2021-02-09 03:15:54', NULL, '2021-02-09 10:15:54'),
(1965, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$awmK4IKlGibJI7apYiTM0.tU8Ypi/33Hm8c5hXWVcHWRcpcAXPcRa', 3, NULL, NULL, '2021-02-09 03:15:54', '2021-02-09 03:15:54', NULL, '2021-02-09 10:15:54'),
(1966, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$Cvvgxze.EojygQrnJq23kOhUKWnLB8YTSrUDJmtq9RnfpXjdjlY5K', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1967, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$TxInwXJYWIXk/91er.EYzOIypu70lrlpDy/LYHgEJpBaxHTcFXV/2', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1968, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$OpaiX5pgw32Gppv04BzMy.aulOqNo3oeYGkigPOTk0chmEQnh/PQm', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1969, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$JBi0kl18SIWjThEehbYqiuziFD2lF0RRgkkV4GH0dKFqUiejemr8O', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1970, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$CZjr3p677QqzGNcAe64ZW.dHwX0oPFNwdFhee1ik3Gx9zYHBfzq5a', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1971, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$noxcfNYWvUw2hboJmMD.EekmcwDvnvQgvvIGEc1tGFb6nYhHCTbxe', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1972, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$8dXlRdHerjoJ93WrAw9oGeY9D7RqAAV5ffI0tgCAlr/4d0eiIgZBi', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1973, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$JPAhTIk4x0SgzQ2R4rWlmeUI52YK2YZlg9wDkYfS76fLMvjejSV0G', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1974, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$ragJQQ4RuhU9gy3OIluZCeEiTIlJLN00GmoCLuAosN97.d0kFmtk.', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1975, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$s/9ZpCrjY1LmuG/nr/jjLeKjSJDiuQ3uD5dH04huBn7nrec8RhWA6', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1976, 'RIDHA DIANINGRATRI', NULL, 'dianingratri.ridha@gmail.com', '8107102Z', '$2y$10$t/xv3umhKwHfLMCVJcALNeVml1OMGkZMD4Ir7Gjtm3zs4K/gpZIoC', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1977, 'DWI YUANITA HARCHAN', NULL, 'dwi_yuanita@pln.co.id', '8106293Z', '$2y$10$avv/75aMrSGHIWvo2X6sneZPTgA8.ugDUd2vd18xFyQKN6GQXyt7a', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1978, 'BADRUL MUSTHAFA', NULL, 'badrul.musthafa@pln.co.id', '6794008D', '$2y$10$SkgKMs2JB7lKNPb7UNitPuXVEnZO3vRsVR0QU8iEgKNy.iOWwP5H6', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1979, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$O7LVmpWVUuJwtxjFEjHQ5u6PYdbqnNKSbT3eqMK8fvjvmET8DrpuO', 3, NULL, NULL, '2021-02-09 03:15:55', '2021-02-09 03:15:55', NULL, '2021-02-09 10:15:55'),
(1980, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$5hq6pOHQjMbYPyJwKaBGhOCohuRQAqy1HjYmf8cD0l5YBVwcP1vFC', 3, NULL, NULL, '2021-02-09 03:15:56', '2021-02-09 03:15:56', NULL, '2021-02-09 10:15:56'),
(1981, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$T7aT8OciTMi4z3FFW4nM3u96VA3aY004xDQQz9/g22lOhIZp2cNxO', 3, NULL, NULL, '2021-02-09 03:15:56', '2021-02-09 03:15:56', NULL, '2021-02-09 10:15:56'),
(1982, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$1SfgIM0BYLTOQUDwlARwKe2OwmQxyTeHIf5sp08j1LLVuQLt4cjzu', 3, NULL, NULL, '2021-02-09 03:15:56', '2021-02-09 03:15:56', NULL, '2021-02-09 10:15:56'),
(1983, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$mD5krOLFhvv8wUmKqaU.eezjiU5Gj5iVDUJLmTkJGTlJYP32ALsya', 3, NULL, NULL, '2021-02-09 03:15:56', '2021-02-09 03:15:56', NULL, '2021-02-09 10:15:56'),
(1984, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$glIcFATyMsrjWs/Iv7cfoeynqiyMwGQN8i6gu.f.87ynxLIt4qxiK', 3, NULL, NULL, '2021-02-09 03:15:56', '2021-02-09 03:15:56', NULL, '2021-02-09 10:15:56'),
(1985, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$g5EvUA7zBC0IpMBC8TIY1.uTZtyyixniXRVdfvUWayyiL/FcZAluS', 3, NULL, NULL, '2021-02-09 03:15:56', '2021-02-09 03:15:56', NULL, '2021-02-09 10:15:56'),
(1986, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$XgxNNyDVRM0SPO/wtiUxYOBVfb0N2G9jBxvoDIOtEB/b3lTyegVLG', 3, NULL, NULL, '2021-02-09 03:17:45', '2021-02-09 03:17:45', NULL, '2021-02-09 10:17:45'),
(1987, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$H3ntrSgeKFtts.DrovqOfOV529hTfDsxxKZ89T55ZR/8bZkV84me6', 3, NULL, NULL, '2021-02-09 03:17:45', '2021-02-09 03:17:45', NULL, '2021-02-09 10:17:45'),
(1988, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$9z7q.NkEwDeHWcggpZN2eOY8hKRnwrPbHS4nBJ/3OktNYjchhYS2e', 3, NULL, NULL, '2021-02-09 03:17:45', '2021-02-09 03:17:45', NULL, '2021-02-09 10:17:45'),
(1989, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$UnFWasNML3f6wqHU.Z4GC.7Cb7QRH9BEtK5Mg4185DWaey7rlKOjO', 3, NULL, NULL, '2021-02-09 03:17:45', '2021-02-09 03:17:45', NULL, '2021-02-09 10:17:45'),
(1990, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$AfKPHICBHRbyrD.uGfic7eCX4mleR10HpSkqQMGX2JzSKadvIj0F.', 3, NULL, NULL, '2021-02-09 03:17:45', '2021-02-09 03:17:45', NULL, '2021-02-09 10:17:45'),
(1991, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$uo12TNTDaJOcQ9vKAoTM5OI.wLV5vRY.TnRkg1He9/OzA9wg5oJTG', 3, NULL, NULL, '2021-02-09 03:17:45', '2021-02-09 03:17:45', NULL, '2021-02-09 10:17:45'),
(1992, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$6g887WnlzADsGbyeq19vJudPySKwIDTPAydgonwELoS9GqUKC/JWO', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(1993, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$yDLT5XnTBsFTdeR3zs/7tOPZZb4SdRCa2m3Y9bRoH7/gJ/X7F1YXe', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(1994, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$lI6PbOWJSkkJmYZ1k2GQf.8OzdDOAXbTMDtt5JIhekm.KSW3nVxSC', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(1995, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$2T35Ra/VKoAYMdNIDeW9KuYS2J/LQZbHJMZGiM.hqQOz.KUk/73Pa', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(1996, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$UdorxxbrtTQfvQbh044lzOskzGmwwDjynAMfz9kwRZz7FAnmktWZy', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(1997, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$pu/bwF1iHwp1XYRY7ldZjeBn6uGhi1Y3xtOV1Ys8uskibTEpBYq2y', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(1998, 'RIDHA DIANINGRATRI', NULL, 'dianingratri.ridha@gmail.com', '8107102Z', '$2y$10$810XtURkW7mnt/KFJ8su6ObkEq/LYZzF9ozYXSz0ulfIWFJR/4Zle', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(1999, 'DWI YUANITA HARCHAN', NULL, 'dwi_yuanita@pln.co.id', '8106293Z', '$2y$10$k4lPFcKHyqhHEOzEFf.DwODcANDk7k9vM5ndy7rJHS9Jadyb6WbS.', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(2000, 'BADRUL MUSTHAFA', NULL, 'badrul.musthafa@pln.co.id', '6794008D', '$2y$10$t4ZyJ4OI6xQzGV1ohId2I.GlfH7vl2uDM5vipRWmmD8uCsn1lT1ve', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(2001, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$Dc8zRedHqy.Fr3Fr/n9if.eyRzCoqNqafuUoNl21b5tJlkQ7WE2cO', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(2002, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$JOfVWXpWuZcvsXX63LMmoO.tV0kE4ATsMbrkm3Sodx4YY.bh/KNGu', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(2003, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$1l4TbEK7EUvrogKadzpQ6O3ZPJxJ/LN8nbD7tga7CLFfgFQ9X7Q9G', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(2004, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Z8xE/CDAwPi9AOCTHyJ0Du5hp.UZVI8YRceAT7OteK6k8aZNT0ca6', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(2005, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$yo3nkhe3x./qOGSBHghQZuDmFHqemJj7ljfKkQAdFUhgJMeIH/O.u', 3, NULL, NULL, '2021-02-09 03:17:46', '2021-02-09 03:17:46', NULL, '2021-02-09 10:17:46'),
(2006, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$6JQ.135EgmEEmvgNVjw5e.Q4dGU.VQaDWgg1e6ZmS6.f9nYPaVouC', 3, NULL, NULL, '2021-02-09 03:17:47', '2021-02-09 03:17:47', NULL, '2021-02-09 10:17:47'),
(2007, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$diZ.Y3JFHK7YLluyeFLv2u3jVa8MPYiD6IBtNWvbDLfm2M8okSyz6', 3, NULL, NULL, '2021-02-09 03:17:47', '2021-02-09 03:17:47', NULL, '2021-02-09 10:17:47'),
(2008, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$PU21ZZAF6dyahsQL3JjoGeJFC9kbirU1OoCkO5X1BLFXT96cpiMs.', 3, NULL, NULL, '2021-02-09 03:18:10', '2021-02-09 03:18:10', NULL, '2021-02-09 10:18:10'),
(2009, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$dQ9lT7.GrNJorwrtseG0k.jCMQRs56KZqZaTQFHw6uR9rpaG13yGy', 3, NULL, NULL, '2021-02-09 03:18:10', '2021-02-09 03:18:10', NULL, '2021-02-09 10:18:10'),
(2010, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$SYQ1NRk7JI6vtH.dBOl8Yu2iDXjX1CSFXy6HwqQQKRLYNaygIWk9W', 3, NULL, NULL, '2021-02-09 03:18:10', '2021-02-09 03:18:10', NULL, '2021-02-09 10:18:10'),
(2011, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$Ufxgleb01fVJ57MNBpY3heBQpgbqykRAhrahdZ76k6n.RNoVln2EG', 3, NULL, NULL, '2021-02-09 03:18:10', '2021-02-09 03:18:10', NULL, '2021-02-09 10:18:10'),
(2012, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$/W0atCybcekneC4zL3HVnO/JI4sUCSw0mLZbFwOaTsuvDFWnRNdWu', 3, NULL, NULL, '2021-02-09 03:18:10', '2021-02-09 03:18:10', NULL, '2021-02-09 10:18:10'),
(2013, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$d5zuJT5JkMRpYkqqn74aFutW6k5758Z29tKQMp6PTFriD00ZN.zt6', 3, NULL, NULL, '2021-02-09 03:18:10', '2021-02-09 03:18:10', NULL, '2021-02-09 10:18:10'),
(2014, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$ogLpA2n.4vJ8hY7oSh9sTeXGi9GpS33W/WpbdFqH7zlTdhpYUi4gK', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2015, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$eh937u4eMjSPKCKGhoY6H.O/3xOGs9dQpGQ3NgO5rByjBfL.lekNG', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2016, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$LXX0HzFrTuvb27jdhq8cfesp56owqXm2c9xv5MFw43Lx5l1h9HKGy', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2017, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$m6cyHV2TcehEFaLQlzfOaevZhgHCbhhYTQj5CKuL81tFr1VWm16pe', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2018, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$kUHJg/kPegS04ikfRzuH3eHylWgnhHKmd8SybGKQFsSPKtFxReU.2', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2019, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$0A22ZVOozlNcFmOOWsp19OVndTA./c6rNTAuYHwRJUTUOV0b.nYvu', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2020, 'RIDHA DIANINGRATRI', NULL, 'dianingratri.ridha@gmail.com', '8107102Z', '$2y$10$1IN5AuIqR3xT3P9QIjbEDeQvW/EyVfwkArgn3NNll1Aoe5b.S9yZy', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2021, 'DWI YUANITA HARCHAN', NULL, 'dwi_yuanita@pln.co.id', '8106293Z', '$2y$10$Leajxd2UYpIxXHyks6xAw.jYnv2AknmcMU0Q/S7p3ljgaeNRL2pWa', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2022, 'BADRUL MUSTHAFA', NULL, 'badrul.musthafa@pln.co.id', '6794008D', '$2y$10$WRPHLvD9x5QDEcYv3OOeH.NUd71u6O5atNxkOJqO2ZkIp36oSdhFG', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2023, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$ykDZRqoGZTBvUyoWCiMckuvdN0MHPIJXRFqkphaU.pwL8cq01278m', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2024, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$iifFBfQvg4/5D4ot1UOme.UlQOU3mBEgs9WIJb/h8DT2EqEk7pj8m', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2025, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$rXabXV2kglC20mta0/5SM.qu/GbxZrBu2Reulvw.BKd4gXjqxzeQy', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2026, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Q0cNCwGVJchtkoDyycfY0ud9jKoj722hBgNwB3qJ2RbfRyWVnS9Im', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2027, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$HGfgGu770bygkmuRIEHXn.OFTj2V.wYTtiGrdDgDemCoCTG6bB2ju', 3, NULL, NULL, '2021-02-09 03:18:11', '2021-02-09 03:18:11', NULL, '2021-02-09 10:18:11'),
(2028, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$NxsYue5Umwybc/UTCzC6b.7SqxPT06LmUbckQxAmPqc/lXWxADD9.', 3, NULL, NULL, '2021-02-09 03:18:12', '2021-02-09 03:18:12', NULL, '2021-02-09 10:18:12'),
(2029, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$qiSPSkv2O7ApgRn1MAyvBeCku/CpNlXlTb6HYthokwkDzUtMfmJ4C', 3, NULL, NULL, '2021-02-09 03:18:12', '2021-02-09 03:18:12', NULL, '2021-02-09 10:18:12'),
(2030, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$Hh5YOoit9cXPmn.0uKPzgu07iR.51STzCH.6iAULROAAwmpy81fyK', 3, NULL, NULL, '2021-02-09 03:18:12', '2021-02-09 03:18:12', NULL, '2021-02-09 10:18:12'),
(2031, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$L/6lKorHJs9slYJmAGIJ4.vAWK6Zt7.EkLDwZ8UdPrujtF9ewbJQC', 3, NULL, NULL, '2021-02-09 03:18:12', '2021-02-09 03:18:12', NULL, '2021-02-09 10:18:12'),
(2032, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$xjj0fHY57KaFNOsjkBsJhuom1mX48DTk0p6tlZ8e/gqXwgjVjld9W', 3, NULL, NULL, '2021-02-09 03:18:12', '2021-02-09 03:18:12', NULL, '2021-02-09 10:18:12'),
(2033, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$szKmBNSARS1fxE5FMOXhM.lz0lfS0XbBwkqlpA7FIPkk1Isk5dhCm', 3, NULL, NULL, '2021-02-09 03:18:28', '2021-02-09 03:18:28', NULL, '2021-02-09 10:18:28'),
(2034, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$ZwoJsn6DjHMvtN1QByvVX.B7ySjuaBDanOaWBOj8DoHIm7gH4HmIK', 3, NULL, NULL, '2021-02-09 03:18:28', '2021-02-09 03:18:28', NULL, '2021-02-09 10:18:28'),
(2035, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$TGnVr3R2N4o6ZPDGHceGDub8ljvTYgwOjAf3NiYz/q8g5efqpKId6', 3, NULL, NULL, '2021-02-09 03:18:28', '2021-02-09 03:18:28', NULL, '2021-02-09 10:18:28'),
(2036, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$e8y5B9RHAk.8WFJFBOEYbODc4PxS9MVxDsQ7aEkPdGHesiNDZnVwC', 3, NULL, NULL, '2021-02-09 03:18:28', '2021-02-09 03:18:28', NULL, '2021-02-09 10:18:28'),
(2037, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$8kO1ryen09f7EioZR3GAr.10sIzRCFo4MPqoLIn3B.AJlTsHNrMcq', 3, NULL, NULL, '2021-02-09 03:18:28', '2021-02-09 03:18:28', NULL, '2021-02-09 10:18:28'),
(2038, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$yoHfc4YvNzwGhRqNW/9kjOb8oO82sAhak8buz.mQtJbotKC7Hnd8K', 3, NULL, NULL, '2021-02-09 03:18:28', '2021-02-09 03:18:28', NULL, '2021-02-09 10:18:28'),
(2039, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$ku.fJxcAKukoVBwtTrYIz.8scYB3gStSuiCJtPjKW59b1V5QqMtLy', 3, NULL, NULL, '2021-02-09 03:18:28', '2021-02-09 03:18:28', NULL, '2021-02-09 10:18:28'),
(2040, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$pbpfhQQBHQxFgS4Tit4N9.mKlvAi2PkQPBnkum0J2WMQKG7bciVIW', 3, NULL, NULL, '2021-02-09 03:18:28', '2021-02-09 03:18:28', NULL, '2021-02-09 10:18:28'),
(2041, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$0AMJ/eTp/bNAUVbVQd0wEu/3peYx03YCZsDmpdLhT46MRdZkVAuLa', 3, NULL, NULL, '2021-02-09 03:18:28', '2021-02-09 03:18:28', NULL, '2021-02-09 10:18:28'),
(2042, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$FNatVQqcVbgRjPOKptXmiulx06kgeAhVlwU3rBHBuKKx7LkfChVPW', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2043, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$DwSP0aP1KYTNmUAimHR96.beXKnyuf8.DmCQFVZ6eD0gwMn.bk.F.', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2044, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$HF85dsMaVE5WNiiZtGm6d.qqwujRammAfId7E4x30EqTFVShkYqwO', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2045, 'RIDHA DIANINGRATRI', NULL, 'dianingratri.ridha@gmail.com', '8107102Z', '$2y$10$3Z8RKOL5Z5RTE2gTKFrOGOqfgQTk4/qHLt7inb7z74ZGiojTERNvy', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2046, 'DWI YUANITA HARCHAN', NULL, 'dwi_yuanita@pln.co.id', '8106293Z', '$2y$10$hdSK6.U1p6ZspuhPlaBjceZ2b5DQeZufCS9kBh22VlFq/1zhCjPBS', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2047, 'BADRUL MUSTHAFA', NULL, 'badrul.musthafa@pln.co.id', '6794008D', '$2y$10$3xy2KeBlSlyjI7es7vJdFevqW9l/g6HiG4ZIo59DmJS8fTUXJe2FS', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2048, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$QPupHTiCMQBBgYqBP70m8u4ifAt3If/OM6ZzuVfUsS7rNod6SmRnG', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2049, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$PxIBMK29AZCXRFH2bdHJAeriz22V/3GQmK3f8pAl6jL/8NDVAVNvm', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2050, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$.5w/x/p/BPimmkgMJYj3Ru75NRE8q0y618VvbGvArMfzmSpBkSSYq', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2051, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$vl1evqRZJ/RCqAiIsG4JouNLlqaDhQLbD4/WzrWIJT20D9pX9A.p.', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2052, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$CBt6P.ACIojC9feVkRNd1OjXZcESIbm1ZEnz69Fu50ZlPYT4GqOby', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2053, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$wS/SX8nfUofB87tXaakh7.Q0ncPLnG.XVpvXyVtLC0AzDCd1wG3Ia', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2054, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$IY2QfvhlpaKYIOtHZQzXiu7C4iFUpYj20lmZ0drGNWnlby4SPMMzu', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2055, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$3yV6iHIRtCy7n5SjBVjLze/9hFh2rtMn6tJhzcJHVWjmsAjunG.hK', 3, NULL, NULL, '2021-02-09 03:18:29', '2021-02-09 03:18:29', NULL, '2021-02-09 10:18:29'),
(2056, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$q7ct9nSMTvR/AsEiJ0jXwuZe9iLe4HGhpoGzwF5GhdKTb9K2.yBla', 3, NULL, NULL, '2021-02-09 03:18:30', '2021-02-09 03:18:30', NULL, '2021-02-09 10:18:30'),
(2057, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$U20vslxZr1vseY/IX4Rnfuvp6NfXI7JArBGXfX549DAUgmCGy7Er2', 3, NULL, NULL, '2021-02-09 03:18:30', '2021-02-09 03:18:30', NULL, '2021-02-09 10:18:30'),
(2058, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$P05TxWqyFNwHSJVETpEcLuylN0MmsBYWwatb0tceczN5OhENuQRBm', 3, NULL, NULL, '2021-02-09 03:20:39', '2021-02-09 03:20:39', NULL, '2021-02-09 10:20:39'),
(2059, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$C.0/F3y3PSdScubRM2Ds5.Bt3aqAZbS4SmiNgO6H9CLRYcocu/HmW', 3, NULL, NULL, '2021-02-09 03:20:39', '2021-02-09 03:20:39', NULL, '2021-02-09 10:20:39'),
(2060, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$ZGLlPZHvaekYttZ3KQK2lOIDTHqvEZ04TaXp/.uByIHF/BLkuuqb.', 3, NULL, NULL, '2021-02-09 03:20:39', '2021-02-09 03:20:39', NULL, '2021-02-09 10:20:39'),
(2061, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$flnA/egZRoLljMIRBZaxMuBGcIOfgiVeNL2G2eQqxmsI5O/QV0tpC', 3, NULL, NULL, '2021-02-09 03:20:39', '2021-02-09 03:20:39', NULL, '2021-02-09 10:20:39'),
(2062, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$A/bCEXopXmrN8k4a/roq9.U5OJtN/KQuxFF6vPQakFlMk4abDedkq', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2063, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Ir8FSP32IInsJcVF3TxwYeTU/.FFi9nHBt028OICSQxev81OsuLRa', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2064, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$8zeqA8kHfFEA3Su7QP.tyO45.XH2tpoZSwOXBVX.8GB5BsYoijMgu', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2065, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$KUSmoZsCse6mzMswjNPCwu5Vqmgr7aknvZXjcdMgA2q.jByRuPfAa', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2066, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$pq2hN8F6lkMNAFGe0BO7OOebCmMwK3ZK4cv3UC1LpBoZqyNAwMTeS', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2067, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$ydZJI.22l4zMeA70gKMgGecgqnod9cw8Q84B4vsUeJcIbl17jaelK', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2068, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$DKmGjq/3Otg.T4IGd0l85OBRg0NZVpeYSaIHateM1wFRbh3cpIGBq', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2069, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$tzMgfvdDhJXTTNxQ.W.KQeJky5LWAWFiN0QQ2pnsiHLvIq8pFz7Aa', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2070, 'RIDHA DIANINGRATRI', NULL, 'dianingratri.ridha@gmail.com', '8107102Z', '$2y$10$fX9uW./s2MEb/IRyF/Lg3.kItW9/Z6wQCnkc3LCt/4xyiYKIJv/bq', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2071, 'DWI YUANITA HARCHAN', NULL, 'dwi_yuanita@pln.co.id', '8106293Z', '$2y$10$QhfwsaBKVO4ir3poR.faGe2DCGilqz5iq.NcLf5v/Gjs3U5ISk1Mi', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2072, 'BADRUL MUSTHAFA', NULL, 'badrul.musthafa@pln.co.id', '6794008D', '$2y$10$4SaHEK3dKbfiKO1X.D0fXOFTlOoaFWBHkDTbocNd7h94Xalv/Nb..', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2073, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$L6TcToG1ZfCrhFzvEHDyCe5dZmjQiyme6lpyUKY3DOYeREjJ5viaG', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2074, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$MaISL9mfNTQB6dXn7LTBXOWOMot17WUJnQ8/kXPhCRXvvL1fYyXDO', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2075, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$yR0gJSMLQZp9jApD6REYruttMjB/m.quFAz88HFt8D/6JfuVb1gYS', 3, NULL, NULL, '2021-02-09 03:20:40', '2021-02-09 03:20:40', NULL, '2021-02-09 10:20:40'),
(2076, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Oyk8i2VmRMv1udR/oFdsguyfw31qhUSmzTejtve1uUJOWGCgD9c6a', 3, NULL, NULL, '2021-02-09 03:20:41', '2021-02-09 03:20:41', NULL, '2021-02-09 10:20:41'),
(2077, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$yCxLsX08gLa54qDPiMrgruuc0XAMjSl1vGp7isntwCUwJr8CQvffG', 3, NULL, NULL, '2021-02-09 03:20:41', '2021-02-09 03:20:41', NULL, '2021-02-09 10:20:41'),
(2078, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$RYNttiIGfNG6zRG.MzUYb.ITZTsRQ99jMLdZbiaF57o5A9s8Ds7Na', 3, NULL, NULL, '2021-02-09 03:20:41', '2021-02-09 03:20:41', NULL, '2021-02-09 10:20:41'),
(2079, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$pctaC5fpcu33jPQDhOFXJ.5OdMErTVEVuB.HHtg9a4nhfH3ZNMe6q', 3, NULL, NULL, '2021-02-09 03:20:41', '2021-02-09 03:20:41', NULL, '2021-02-09 10:20:41'),
(2080, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$Gz.PbXNtw.BrD3vMCl.6yOA9WH7kzsZpidY4dboEh6a/579SI00rK', 3, NULL, NULL, '2021-02-09 03:20:41', '2021-02-09 03:20:41', NULL, '2021-02-09 10:20:41'),
(2081, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$TGjZ2aocvVURhzNUX89UIe.RI3VOig0c795a9nUjj2pTpTqVE1cC.', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2082, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$tB0G3jl278kb12ITte5M2OsDf3anFksRSDxcS32h.zcmgbr8CrTBq', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2083, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$h4lEvx7bmyzph5yMsfWv.Oyi78gdYOdtlPA1NSvv8EgsLNszCs8Zi', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2084, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$YDJl0R2BRNqYtwAQ9Hhuveg0GqrqiOix4awb8oydrOXvc.lp95Msi', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2085, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$jobwgxluPNEvhihyl46z2./2Epfdpf82QfaPYenAFjkHcsZdKP9Ii', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2086, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$x2ClJ3i83YxHyO2owALmduPL95gGjT0dBhItz33S2HfQ2KhyJCOsO', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2087, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$XyQhhRVbTETdd9kK5AaHYeUQtwU4/TsNXZBfy3ZA1StMDqBMipMoe', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2088, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$SIaJAN.ZDiPwKdnRz0Kpx.GW5f1GzTmaZWCkdIpcHUgNBzPBp4qKe', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2089, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$mMolxClb5o/n8DVsd5E3E.1deaxjmDjS1/00mirkgLi4VAoZHq712', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2090, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$PuLQuEoy0x1.SXub7ZxIx.8UY3Z9ch06/PWDdz9AuIyR4VpBYf2.q', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2091, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$fpEqRZVcW7Cap4isenwQFuWKUvrpQFtaSLOwJWDdABrEMe61v35r2', 3, NULL, NULL, '2021-02-09 03:26:02', '2021-02-09 03:26:02', NULL, '2021-02-09 10:26:02'),
(2092, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$CUA1WfwoUSM4l.cvNociaus8iLExaBbW93oXMuZCcPB.JkQseXwum', 3, NULL, NULL, '2021-02-09 03:26:03', '2021-02-09 03:26:03', NULL, '2021-02-09 10:26:03'),
(2093, 'RIDHA DIANINGRATRI', NULL, 'dianingratri.ridha@gmail.com', '8107102Z', '$2y$10$6wjt8y7jnowmxwfklZyDP.gwiG.UFgPxxbKxGPhky30nRMPfrOX5.', 3, NULL, NULL, '2021-02-09 03:26:03', '2021-02-09 03:26:03', NULL, '2021-02-09 10:26:03'),
(2094, 'DWI YUANITA HARCHAN', NULL, 'dwi_yuanita@pln.co.id', '8106293Z', '$2y$10$ws2lRGnepA3FabE07kU7GeIIxYZGGm.CoprZDVZPUJxNvOZummBuq', 3, NULL, NULL, '2021-02-09 03:26:03', '2021-02-09 03:26:03', NULL, '2021-02-09 10:26:03'),
(2095, 'BADRUL MUSTHAFA', NULL, 'badrul.musthafa@pln.co.id', '6794008D', '$2y$10$zXomVTkf.p8QnSjHBZ.Qo./fnvyakEQUhOhveiNNhQH37jsO2T1K.', 3, NULL, NULL, '2021-02-09 03:26:03', '2021-02-09 03:26:03', NULL, '2021-02-09 10:26:03'),
(2096, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$Z5b2C9ijhFvnzFUs8x.ypOVfhvsPWiLFLOljaVDsoRx8jOivIv686', 3, NULL, NULL, '2021-02-09 03:26:03', '2021-02-09 03:26:03', NULL, '2021-02-09 10:26:03'),
(2097, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$YZkaCEMRcaH66EsAGtHRWucCuYpxUSLSsNE7p29HO6OVshOOoYj5a', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2098, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$abY7H1bCACoXgP7WVHxRN.vG2XcWyydIpLzM8sRAA7nC.34Fw8Qfy', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2099, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$jKStemoSiF7QDBROlxjtdelGk/TueHfVUYXsAelsVvMM0suFky6P6', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2100, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$LYZsx9ABliaw91gH3V/CVeVG/E6qwNk7emd4cVg24AVReHDg4BDHO', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2101, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$f4oFhEN1mwEdd8tvUGh03e69v4v.lGlRYqV/5uzzKLAvZqp4whtbm', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2102, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$hxJI/gN4bkPB78IxV8.ku.BAVfmU.Zg/ZIkbSEk4tNMaoMoYZ5YGK', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2103, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$RrVZhntv6oZTeYEq8.ZdcO7GkbCHiJyaw1hBs6pGFRrwLLEMXgD.2', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2104, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$F7A.IkTKym2I3UuQJEA14OyIv9U06Bc7OwgJWwWtyvbgmvIhbjQwW', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2105, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$a3jQgdhiRDvG0Ge1DJ4aaeQ12OTaheg7kN/Lw5c2oW0pkyi/1mJiG', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2106, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$mxVqk8ylqXexjAwT6eGWkuZPU.7OPt5NpWVRpFa3f6GHVZPaaQ/cW', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2107, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$xknuooboHWYXmaFl.MdsMusSaJw0h/5SNN0mfpJ8zmfaPI6iQpp4q', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2108, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$ifnQz6WsNZOxqIOACMmouumOo9d1eZHTnSfi3BD4ekiFWl41U901e', 3, NULL, NULL, '2021-02-09 03:28:42', '2021-02-09 03:28:42', NULL, '2021-02-09 10:28:42'),
(2109, 'RIDHA DIANINGRATRI', NULL, 'dianingratri.ridha@gmail.com', '8107102Z', '$2y$10$BA2O.ZDHG8weEYuechamvO6NjLCKA6EG0BHzU5vCMHxIjflYKaaYO', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2110, 'DWI YUANITA HARCHAN', NULL, 'dwi_yuanita@pln.co.id', '8106293Z', '$2y$10$tVfH/YATnFe7JN4QQ5ZK8uKTbpCtDeLKo3O8Y/b5z12tdGw.cOaCC', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2111, 'BADRUL MUSTHAFA', NULL, 'badrul.musthafa@pln.co.id', '6794008D', '$2y$10$fn/8Af9ObXL8mW7x36B7JeDFq1.XJmjX.KXS2jGErXIbnwldpEvUK', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2112, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$MJt4JgET5hxFOtNzozjvheTxTohpfXrlQAmFFchZ.qNsLljTKmFWy', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2113, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$GsxJjdH7Ciu3W4mKBNHkMeEUXmlkN9fpBRvmnNKJoLgb3prU6XIHi', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2114, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$Li6flERionFNPmUyyRW5SOgFSp3iqfGDfgN6AHwi0RcQ5egGt2KSu', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2115, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$8Z4t3EGsLxqH2tWd23Kfm.9Md7qWwl2/oNdDYqoaze07slwrel0Sq', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2116, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$yGh.DPS4c067ZJtezwpDz.L2z8fyBjfohkAjt34tcLmeTRopJnkDu', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2117, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$1ZAew4gy9Kjv/Rv0aqC9.eUs46u/uiprZd2h3kAhB4wojLU3ArVgC', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2118, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$yKTm7ka4.m8Q2JKBlsJLpuEk/Nk6JWP4JBYA51DvkA47TXgRFkWqi', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2119, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$/oY9aqU06eJxJpFkcTr06O4GaExjO2Li3LBZNzGP2/kvNz1Tym9XW', 3, NULL, NULL, '2021-02-09 03:28:43', '2021-02-09 03:28:43', NULL, '2021-02-09 10:28:43'),
(2120, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$wqFTGT/9mvmdbq4RVAmWl.aMChxx55dVyLxCOK2kqO1cryhgwGRky', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2121, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$BaR0BVlA8Pe9d.G1jddIxOvItCjOEvNwcMTHZZMfrHZ2CH3PBhikG', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2122, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$Zhkdtaylp7aY032GQgq8k.n9JaGR77L5Iqc9Er1J0cz01vN9DROnq', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2123, 'IRWAN DARWIN', NULL, 'user@gmail.com', '6584003ZD', '$2y$10$gkKQDcGZAYRpnrqMwj/JJuNAhIECUTN.W6qPMhgKMt395bFyKLxu2', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2124, 'T. SUHARTA HARAZI', NULL, 'user@gmail.com', '6584634K3', '$2y$10$BKz5uRGXLfCfr0LaoOzj.uqUmpS/yCn0N//kNX94k4QYGIY3znH7O', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2125, 'WAHYUDI', NULL, 'user@gmail.com', '6584126K3', '$2y$10$/b9MbtWMAjVm.fuQaWK/jeVaOWInXop1Hv2l16ACmhfX1vDnMV9Hy', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2126, 'PRAPTO WALUYO', NULL, 'user@gmail.com', '6585008T', '$2y$10$u1MBsNnSxvlvngMHaNdaQuOOU5.dlRYrPM4729y5s7zz16LrsjIj2', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2127, 'M. ARFAN', NULL, 'user@gmail.com', '6585021T', '$2y$10$u.6MdKJ29gAnVpsj2IZwQetXQwo/W8dKNOAOjisIvOU7WHlH.fleS', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2128, 'SUJARNO', NULL, 'user@gmail.com', '6586007T', '$2y$10$PTlY5QJM/706NB/YfWHlP.Zu6BUDPslsoq4iGJEd6Gf2V4fmDBUI6', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2129, 'TATI NATALIA', NULL, 'user@gmail.com', '6586009T', '$2y$10$u2cX3JU4KMgaHDnqirGM7uVkb9ZKVJT0BC4eeS0bVApLKs0yUmDqi', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2130, 'MULYATI', NULL, 'user@gmail.com', '6586012T', '$2y$10$.tG6BySJ7bDDP93tqH9D.Oapg27bDM8ZqOeUhESzJonEZNa7VhJ7q', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2131, 'DARMAWAN R.', NULL, 'user@gmail.com', '6589018T', '$2y$10$H1UNl3zRU70u24k5eYnEzeTa0PkEhSB7jGlzaWbZuX7xxEVOEbWNm', 3, NULL, NULL, '2021-02-09 03:30:04', '2021-02-09 03:30:04', NULL, '2021-02-09 10:30:04'),
(2132, 'SOPI ACHMAD YUSUF', NULL, 'user@gmail.com', '6591029T', '$2y$10$NojL3GxbMMxX9Iyw46pco.q..hzyXlYBbE3v06Uw76d.hYSzA3pGW', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2133, 'GATOT DWI ANTORO', NULL, 'user@gmail.com', '6590067D', '$2y$10$VfngPSr0Y6wCzlFrYkMideyziz4zf.3g804N8DvlubyYFeaLF9Pqy', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2134, 'ENDANG SUPRIATNA', NULL, 'user@gmail.com', '6591001T', '$2y$10$djLRBRhEigFODN0i14dqg.EqBvHc72GMl6sWomgtEM7Qbsf.TPSOy', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2135, 'SUHARTO', NULL, 'user@gmail.com', '6591053T', '$2y$10$ecQ/NlArfxs.cjNtComEMu7w1fafA2qTZWTrd/0e/dEVo6c3ogJSO', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2136, 'SUGIYONO', NULL, 'user@gmail.com', '6591059T', '$2y$10$Gz.jZ6t2K769glW/aWxBBuT9e3q.9KFgH3FwDrK9Q6LG03dz0oGT6', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2137, 'NEVRIYENI', NULL, 'user@gmail.com', '6593002LMK', '$2y$10$Sf70zoXWTVuGfSEdq8gfUOFDppcf9Pf7YHjATHt2y3WfaG.u1FePq', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05');
INSERT INTO `user_auth` (`id`, `full_name`, `avatar_file`, `email`, `username`, `password`, `user_type_id`, `user_entity_id`, `user_key`, `created_at`, `updated_at`, `login_at`, `modified_at`) VALUES
(2138, 'AKIMAN NAINGGOLAN', NULL, 'user@gmail.com', '6593048Z', '$2y$10$A2pZWUQWxi7J36WeyfAImOQvTCKJf5RKGSduo5GaZnI/uiVuDMX8i', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2139, 'MUHAMAD SYAFRUDIN', NULL, 'user@gmail.com', '6593064Z', '$2y$10$sKBwieMhlhgxhISUFyyPmOHtxRLyUN4bLHucWqfUq3Xlj2MEtWzD6', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2140, 'PRIMIARNA', NULL, 'user@gmail.com', '6593062Z', '$2y$10$AbVCmIPEiRuOhbF52zBpfu.4y5eo7Lg0hhP7qIzxtnr5/wOFPtZUy', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2141, 'SUPARLAN', NULL, 'user@gmail.com', '6595008T', '$2y$10$A8RP6xA10yastqaoreQJ/ejRlZse.S6ZcQCFnOSPt7PsHmQdCm172', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2142, 'PIANA', NULL, 'user@gmail.com', '6595032T', '$2y$10$hBk4mgQklXzl4W4fU1xw8u95No3Qva4sruDKlJXVS3mCVfXxqlrNW', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2143, 'HERI HERMAWAN', NULL, 'user@gmail.com', '6595082T', '$2y$10$BUEhlzQ9vN5Fbc3c8FVS6ukEOhgCav5fvLVLz.P7/4kZd8vZCsqHS', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2144, 'ROTUA D TAMBUNAN', NULL, 'user@gmail.com', '6595082T', '$2y$10$V5HCVprTrQ2ykRCAHKsdP.QyiFxiAZz8F4xFtNKLryvt.f2rcyvIy', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2145, 'RULI SIHOMBING', NULL, 'user@gmail.com', '6686006T', '$2y$10$i2fA0VxvqYa5WE3dDT4CVeZ/VqxxxHseBiqSPrr.NgOYrGgQsE0Mi', 3, NULL, NULL, '2021-02-09 03:30:05', '2021-02-09 03:30:05', NULL, '2021-02-09 10:30:05'),
(2146, 'MUJIONO', NULL, 'user@gmail.com', '6686021D', '$2y$10$RTzqMFNtQ.PRrZgpIeotXO4AxLM8xSAzlUT0K2TfWj.tHfn2Z4qwS', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2147, 'SLAMET', NULL, 'user@gmail.com', '6687103D', '$2y$10$KWgOISI3XDXl/wdSJMjxsu8.nbSBcqv7.sCsPQUolifP7C6twAc2W', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2148, 'SUMARMIN', NULL, 'user@gmail.com', '6690004S', '$2y$10$oI5z23RIA3kS1MmxTmlYKuh9pYU2j8B/2cYpzuGKB6DP66fesICUW', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2149, 'AHMAD ZAHRONI', NULL, 'user@gmail.com', '6691003T', '$2y$10$lrUekrQbPvPy71SXUzm0z.EbG4bG9LJSbQf1PX1P8YR1ehJhPr6Yq', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2150, 'ANNA AGUSTINA', NULL, 'user@gmail.com', '6691028T', '$2y$10$b.s0XucAsBGATznqUZvqR..bL02wFYUdxPuFq0IZpUBdu.tdJy2r6', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2151, 'DUDUH SANTOSA', NULL, 'user@gmail.com', '6691042T', '$2y$10$hDwwiuEvPmtMz6pYV0X6HOvcrWKLZXiWRBNwYX6Gfcs.7xjMze0/K', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2152, 'ABDUL KARIM', NULL, 'user@gmail.com', '6693349B', '$2y$10$QfF94v3ui1T5paPwhfbpxunG9J7MBIl0W6tTf6tLYP7o2YWLdx5Ba', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2153, 'TRI SAKTI ADIWIBOWO', NULL, 'user@gmail.com', '6692063Z', '$2y$10$4hPDVYbO0briHc1v.pJiEOfXnG1rI24jXxJZ5MWsYIY6wJFnE9D92', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2154, 'ALBERTUS PRAJARTORO', NULL, 'user@gmail.com', '6693075Z', '$2y$10$Ik2hdK690virbY/717BjJODQZdrBs2a.6mNa7B7PYtH6H6NQU.Hly', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2155, 'MOCHAMAD ARIF IHWAN', NULL, 'user@gmail.com', '6694002P2B', '$2y$10$Zd0VnW8hPdes.30LJYk5BeY4AkSPBu7/d50MQw0Sy6hio0mwA.v/u', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2156, 'MUSTHOFA', NULL, 'user@gmail.com', '6694246B', '$2y$10$EdikLtxqaRHU1onM.xxK4./QOJM.GE0iLR9kbhVYwWxMA8AxCKElW', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2157, 'HARIYONO', NULL, 'user@gmail.com', '6695033T', '$2y$10$/TtPR1EFb7YkPe.K/Zh8UOvt0Rpexkhgxyh7Ruv7D4NaEZGj/mtZi', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2158, 'SLAMET WIDODO', NULL, 'user@gmail.com', '6695059T', '$2y$10$ZS3RjqJa9ZEVMvs137NVgO97xMTpnvfO5Qt8pMPNsloynJ7ZorVuK', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2159, 'MAHMUDDIN', NULL, 'user@gmail.com', '6695084T', '$2y$10$QeB4XsFfoUNieA29RtrD6uWABxKORPn4DZxxvw2k0GQJUiC7IiBfK', 3, NULL, NULL, '2021-02-09 03:30:06', '2021-02-09 03:30:06', NULL, '2021-02-09 10:30:06'),
(2160, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$Y9PaSIFHAsmWJ3sOVsu.yO4YQ2DEJep140QHP1vSNfwt7FeKsTZGO', 3, NULL, NULL, '2021-02-09 03:33:37', '2021-02-09 03:33:37', NULL, '2021-02-09 10:33:37'),
(2161, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$6bPfgrnl9dfb4xeqjCVt/OThkkTDdl2MFR221aX42Z63pWA8PvGzi', 3, NULL, NULL, '2021-02-09 03:33:37', '2021-02-09 03:33:37', NULL, '2021-02-09 10:33:37'),
(2162, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$hROd0pbFcBB3MNhdDdmMcuYP/RokCxAd0zvpGYVlE/mSQL2fZ0ldC', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2163, 'IRWAN DARWIN', NULL, 'user@gmail.com', '6584003ZD', '$2y$10$jn9Jg59gY1icB3ZisvK3nOvcS0vgg.n84X1S.gE1TfGBCrRYuFLOa', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2164, 'T. SUHARTA HARAZI', NULL, 'user@gmail.com', '6584634K3', '$2y$10$I.06MJ4XFx.3HdzNMaFh7.paGhGnc2jDAO5EA7y96aV6tzkScYsvq', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2165, 'WAHYUDI', NULL, 'user@gmail.com', '6584126K3', '$2y$10$9LUIW.IpFcIABKNSL43a/.O4f2A94An4PbrMFzvDHYVX4MoZADP22', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2166, 'PRAPTO WALUYO', NULL, 'user@gmail.com', '6585008T', '$2y$10$37kdw2lg0rFN4hjpmfTeGO1WLqjbu2LW3yI49dqb3Y/FTYAKnQGxu', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2167, 'M. ARFAN', NULL, 'user@gmail.com', '6585021T', '$2y$10$UjPoAdLLWk7BXE8bHFjDX.LWJHYvRfVht2MtFEqE3jnmZlI.ITtHu', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2168, 'SUJARNO', NULL, 'user@gmail.com', '6586007T', '$2y$10$jMNjfXpBwDLTnTY8p2WEdO.qwKWfES3qo9sdZAtfBH4O3xSCgDco6', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2169, 'TATI NATALIA', NULL, 'user@gmail.com', '6586009T', '$2y$10$m5atOzFtE2WviUOuEDNDJu17KWUwkA5aHrtg5juZHAkW5PPNvOvLq', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2170, 'MULYATI', NULL, 'user@gmail.com', '6586012T', '$2y$10$kW9lexES2mjDOqHN9Ln34epIUkuNa9GlTKhe2eX1prTfuveU/Uyu2', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2171, 'DARMAWAN R.', NULL, 'user@gmail.com', '6589018T', '$2y$10$xj3OcbSJ0UJdI5ovep.uCu4uAofj9EmQ7qpMPSy3Tn58pDBogX/bO', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2172, 'SOPI ACHMAD YUSUF', NULL, 'user@gmail.com', '6591029T', '$2y$10$cointTTNGUuTas.q9RdIhuMkHRbbaiYvwtayfI6D8by5DvU2QdSVC', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2173, 'GATOT DWI ANTORO', NULL, 'user@gmail.com', '6590067D', '$2y$10$P1A.Jj5p1GROSrZI8ExTK.oc.ZmwcLYhsBpZ/VZGR9hjSGioEK.zG', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2174, 'ENDANG SUPRIATNA', NULL, 'user@gmail.com', '6591001T', '$2y$10$N6xuWxbcUFOkhm772TVYTuPHOS8fbGZqQAeJ6m2jz6EuQ0BzozpJu', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2175, 'SUHARTO', NULL, 'user@gmail.com', '6591053T', '$2y$10$u0PXyZwRQF0s4DJEZpFwcegmKulsjhmeeJdD.7mE5lqCzvZknlPsq', 3, NULL, NULL, '2021-02-09 03:33:38', '2021-02-09 03:33:38', NULL, '2021-02-09 10:33:38'),
(2176, 'SUGIYONO', NULL, 'user@gmail.com', '6591059T', '$2y$10$8GiSLm2gX/d6KLEDTuqfZOG/KKic.vhLA4wKxJE4dZbhnQS/1mll.', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2177, 'NEVRIYENI', NULL, 'user@gmail.com', '6593002LMK', '$2y$10$EYRN0lHiKtfcg/boS0uHoO2U9q7eR/UU3lriuQmRlZUr8lga1nDMa', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2178, 'AKIMAN NAINGGOLAN', NULL, 'user@gmail.com', '6593048Z', '$2y$10$g2fIblDr5Z7WA8KVYDzadOzjKnZsvRluw7QJsc1sRM.tX7tMUGODW', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2179, 'MUHAMAD SYAFRUDIN', NULL, 'user@gmail.com', '6593064Z', '$2y$10$px9J/peYgxshyQBIHuLpq.WPxe3YtDrOCnGTjnaXtmKmV1ZKBFmQK', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2180, 'PRIMIARNA', NULL, 'user@gmail.com', '6593062Z', '$2y$10$uFsqFNaL5U2dCj/NEH2NMOjIeAhKfdFf1GphQKUQESeCTJhCQK/K6', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2181, 'SUPARLAN', NULL, 'user@gmail.com', '6595008T', '$2y$10$8VBU6DUWZnLOHQffFJkgIuQckM5SUqjPbUECqCx.KH9u89CATLsrC', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2182, 'PIANA', NULL, 'user@gmail.com', '6595032T', '$2y$10$5T/KuVT/.KVh2i9XCDmV5OXd9Ds.Cilw90mAvjkNvR7YK7LGfAZW6', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2183, 'HERI HERMAWAN', NULL, 'user@gmail.com', '6595082T', '$2y$10$NRuT9/x5nyN7yhw0wEwQVeTJ2ACNwDOStpHD587Z7KLPl59ciGF7u', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2184, 'ROTUA D TAMBUNAN', NULL, 'user@gmail.com', '6595091T', '$2y$10$hfy5Aq0A7U5eWJeDwNrZOe8LPSVNDXsjMP66AVEpe.yzIrE.8p/Yi', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2185, 'RULI SIHOMBING', NULL, 'user@gmail.com', '6686006T', '$2y$10$l/amycjyDvh0PtXf8lsC6.oehYCBE4xY/ao1knramEzTWtqlKPZOO', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2186, 'MUJIONO', NULL, 'user@gmail.com', '6686021D', '$2y$10$IpEymVkwrp8KSVnWySNF1OUCSQy7LHpT/mPKP9yPRv9xkG63..Swe', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2187, 'SLAMET', NULL, 'user@gmail.com', '6687103D', '$2y$10$KHAOBFpg9aIhi5VuX4g9OuVId0bCon8kAiiSCH5BYdGCymp5zcALy', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2188, 'SUMARMIN', NULL, 'user@gmail.com', '6690004S', '$2y$10$EzR1oBkk7ZcGBtdvCeK5gOCRXWp31Vfq84jOIArV70nCMljBish82', 3, NULL, NULL, '2021-02-09 03:33:39', '2021-02-09 03:33:39', NULL, '2021-02-09 10:33:39'),
(2189, 'AHMAD ZAHRONI', NULL, 'user@gmail.com', '6691003T', '$2y$10$fYyRClwJOH0oskvVRc2t7OXE.IAWHFenE/BXnTUxGNn1UvfQU16Oe', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2190, 'ANNA AGUSTINA', NULL, 'user@gmail.com', '6691028T', '$2y$10$LNg7lMMQeW8DXOUYjV42q.H8up4fNPounoOHWrUcSGS1kTJ7kK0K.', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2191, 'DUDUH SANTOSA', NULL, 'user@gmail.com', '6691042T', '$2y$10$RSOxBGtEEZFs1NzgHUZ1x.nRZ0D048m0cuFIu/LPSEG87cPre4WHa', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2192, 'ABDUL KARIM', NULL, 'user@gmail.com', '6693349B', '$2y$10$BXaR8AFPNgKepwbkDV7njeTQ4QICWKUhrdLGy2gwHBXTIo5cHx3U2', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2193, 'TRI SAKTI ADIWIBOWO', NULL, 'user@gmail.com', '6692063Z', '$2y$10$hjyf2zXxuew0kjU8ljOf3OZcSbviblVByWEatDjKe6JG4DDBDRM7S', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2194, 'ALBERTUS PRAJARTORO', NULL, 'user@gmail.com', '6693075Z', '$2y$10$GeHL3hDbJngNRDulPS3qeOzbYlE2izA..RO8oEfpsVcUl4.CqNdnG', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2195, 'MOCHAMAD ARIF IHWAN', NULL, 'user@gmail.com', '6694002P2B', '$2y$10$XYGebDVjVoYufSt5CD0x2uKHIVhMTjKIzyXgqJFe0SZN7b1xtoqFW', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2196, 'MUSTHOFA', NULL, 'user@gmail.com', '6694246B', '$2y$10$0DL2RACfSOKgF0X04zLZi.CcZhA0GFSrRl4be8rHygJlbdt6H8Uwa', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2197, 'HARIYONO', NULL, 'user@gmail.com', '6695033T', '$2y$10$vD.szedHdtC16uuKuLPIeenDtZRvJ0v6IAcYSzVX71kkBVuTxiqjG', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2198, 'SLAMET WIDODO', NULL, 'user@gmail.com', '6695059T', '$2y$10$sSa26zejZWj2CTBw4noZVuOir6pdUlF.vroPlhyBUkMovbiKsSvP2', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2199, 'MAHMUDDIN', NULL, 'user@gmail.com', '6695084T', '$2y$10$pDHaBGjmcNO9gnSlUiBwk.R95H0Z/K4TKq6oQa5HfPIyU5SXWoB2m', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2200, 'SUHARTO', NULL, 'user@gmail.com', '6695047P', '$2y$10$cOGxx4SlfRqUCW4MyIrZeuK7my5ipSDSKBku1v4cn28u1JqnNWaYK', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2201, 'AGUS WAHYUDIN', NULL, 'user@gmail.com', '6793230B', '$2y$10$CHFIow/j.l35dc8.M6T0JudqKkFAwPpBphS5cVpBPrXsO.BmCShoy', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2202, 'ALJOHARDI', NULL, 'user@gmail.com', '6789006T', '$2y$10$d4PtIwgs5X1.cVfY1tnn.e.IfEQ2vGRNN14D9ENOrJNWkAJNuYpuC', 3, NULL, NULL, '2021-02-09 03:33:40', '2021-02-09 03:33:40', NULL, '2021-02-09 10:33:40'),
(2203, 'TEDDY HERDIANTO', NULL, 'user@gmail.com', '6791050T', '$2y$10$mpAeX8hDjY79DefD94uchOva4C6oZjwhw4.popW9fqCKNeGhwASTi', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2204, 'HONZO FABIOLA', NULL, 'user@gmail.com', '6791055T', '$2y$10$MpNkOTFtsznuTWEgrZ7aRew/R43E5whPmZ4Go27/H2OfCMcpVsQp.', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2205, 'ACHMADI SALIM', NULL, 'user@gmail.com', '6791056T', '$2y$10$i6tqeZlUbfKlIFe.cyFXb.ItaZZArQYMMnPHGutRpIgJG2A1OhIby', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2206, 'SUBRONTO', NULL, 'user@gmail.com', '6792041K3', '$2y$10$yGYOFIVIKFmOZJ60ybPOv.QUM/QpuNCTlWopq3Qj9IwdbXQLzcvrm', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2207, 'KETHUT MANDROWO', NULL, 'user@gmail.com', '6792086Z', '$2y$10$sHdUXoeSalNQH8Ht3UBNMuCwxyOgvfTiPubwv8yFsilOjDfjBB23O', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2208, 'TJATUR ENDIEK PRAMUDIANTO', NULL, 'user@gmail.com', '6792080Z', '$2y$10$Dfgxb7uPs6LiIb8dUBLIwu8IvxxowCSxeozYXSAu4wkqa6L0bs69O', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2209, 'AGUNG RAKHMAWAN', NULL, 'user@gmail.com', '6793157Z', '$2y$10$yBKZLn7WQBUjRvLhDioyfeg39v2Y.RYhriWjyYxjM1Peq0qnBBLLe', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2210, 'BADRUL MUSTHAFA', NULL, 'user@gmail.com', '6794008D', '$2y$10$k71neH44pzewxwefcRSFjO2492qrIquGxFQSCwkI71xu577Y2XmpC', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2211, 'SLAMET', NULL, 'user@gmail.com', '6795061T', '$2y$10$RmHWbO7ekfVX6TeA7Nnmqu5XW170xJM.EANz.qCmxL48ad//5ru7O', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2212, 'SLAMET KISWANTO', NULL, 'user@gmail.com', '6795064T', '$2y$10$5PmYSZca4SmUhum/qOC06Ouz4MF9sH45R/hfyXk5z.VTXdyQE5GUi', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2213, 'MARIA GORETHI ENI WAHYU FEBRIYANTI', NULL, 'user@gmail.com', '6795085T', '$2y$10$HypkPQMkMcP7iovblwwfW.w4ckAZ2a07MuJYlKNAIbIXH97affzTe', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2214, 'HESTI WISNA', NULL, 'user@gmail.com', '6795086T', '$2y$10$RyP60tco4aTI6OnIJOADQ.UfiacayuCzHLTOqNQKHanNq1USH5KBW', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2215, 'ARIANA CHRISANTI', NULL, 'user@gmail.com', '6891018T', '$2y$10$YHXkmdZhhjkiJ4egL7XLq.YCeGRiifiVGl6cnYoEtl853M/Ar31Pu', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2216, 'MOCH. ANIS MULYANTO', NULL, 'user@gmail.com', '6891088J', '$2y$10$vxcx/IghR4dR3W7WFoCUfOAbvjycME5MIB.1znO2A/nBX8Yky9a4q', 3, NULL, NULL, '2021-02-09 03:33:41', '2021-02-09 03:33:41', NULL, '2021-02-09 10:33:41'),
(2217, 'UJANG SUBAGJA', NULL, 'user@gmail.com', '6892048M', '$2y$10$e3rlx2rJ4Z526pb1hY4EcekU6naA9OobMkDrRuuqKWjbBB4ejNU.S', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2218, 'LOLITA ADHYANA JOEDO', NULL, 'user@gmail.com', '6893192Z', '$2y$10$FDF2FsyhFjVC8/LiDNnVourN8v01o8yddxZCUWOudwfm8n4z1ke1O', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2219, 'IMAM BARI\' WAFA\'UL WAFA\'', NULL, 'user@gmail.com', '6893219R', '$2y$10$pABNRzr9kYt/o/.HDDIYOO0ImVdoObNuGPiuuzi.cG.tb75xIdnrC', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2220, 'WAHYU BINTORO', NULL, 'user@gmail.com', '6893005L', '$2y$10$Ps/8mi.SD1Qagb7OHAK4IeeS3.W.3QpT59eXCxiDucyE3PvxfRGYC', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2221, 'MURDANI', NULL, 'user@gmail.com', '6894257B', '$2y$10$06qSLxRDnc8FMMyG4P4WpO49K5zisOGcdZC4Rr8.j3TYm20.Xuuim', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2222, 'MILCHA ERLINA TANAU', NULL, 'user@gmail.com', '6895004T', '$2y$10$wemTPZX9lNv8/nUBadJSQ.0TYlK1qP/I2qkZXImPEc.0f.EK2k4RC', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2223, 'TINTRIANI', NULL, 'user@gmail.com', '6895023T', '$2y$10$K62R7k3Xc3C.7BUzzg3vg.1HjC0iFlOKN8AqiDZxd2oRL84F4ut32', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2224, 'SAMSUL HIDAYAT', NULL, 'user@gmail.com', '6895036T', '$2y$10$eguNqR.8bd1bvl47UWbcXOkG2giLU8DwkwWu0v26xMaroCcy7euXW', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2225, 'AKHMAD SYAIFUDIN ISHAK', NULL, 'user@gmail.com', '6895037T', '$2y$10$5TZ9CLHzvajK28/oHVkU6.cGeV1syGCg2.AFSRX4as7JR7dkgo45.', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2226, 'ANSOR HIDAYAT', NULL, 'user@gmail.com', '6895057T', '$2y$10$MmmxjWNcFhPt.MG0c6cds.QwEJ3jzNDlvAlVZs1KH7LtLHK7Ou0B6', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2227, 'HASANUDDIN', NULL, 'user@gmail.com', '6895081T', '$2y$10$m0YTp54nlVzOqes2YAT2huOr12A4Na0xmRZWt16wNuGLwcRm.Tbr2', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2228, 'AHMAD FIRMAN', NULL, 'user@gmail.com', '6895014Z', '$2y$10$7t7rPuyeyIj.TQkdKjlbwunusdUOs.2zpcA8vx/UPChSwW/4Rdzhu', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2229, 'SONI ASMAUL FUADI', NULL, 'user@gmail.com', '6895002D', '$2y$10$Zj/0If/c9DmMwHLledvGP.lknhkXwTe7qcVfu1C8ScNahTxDsb4ie', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2230, 'INDRIYANI WIDAYATI', NULL, 'user@gmail.com', '6895009S', '$2y$10$KIycOnG2IEdAWwR1De4IGu1BzlBzBNr6l2ENRhtHuMq.t5evz6ZuW', 3, NULL, NULL, '2021-02-09 03:33:42', '2021-02-09 03:33:42', NULL, '2021-02-09 10:33:42'),
(2231, 'GOENTORO', NULL, 'user@gmail.com', '6993420B', '$2y$10$.cuUK5esVO77zTi5Lv3P/eumlilJGkDPgd/1iES7/kc6Mv6PeDjIG', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2232, 'DODI HENDRA', NULL, 'user@gmail.com', '6994018D', '$2y$10$YM/RSEcMsfYGolDvLsHHC.biEZCXlbREt5Q4YLxoZ.tABBKxvmTJS', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2233, 'HELFBERD TAMPUBOLON', NULL, 'user@gmail.com', '6994003K', '$2y$10$lZL.EC0IfmDXh8K1/5IdPe2fCHJaFd2GjIgF.k52py7O.RnKVZX4q', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2234, 'PERI EDISON GURUSINGA', NULL, 'user@gmail.com', '6994009H', '$2y$10$mexqLVvpCuUQTkK6Cd520.0jOvmOwJNoq2Twzc59Fha.poCKp1Mfi', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2235, 'EDRIN', NULL, 'user@gmail.com', '6995021T', '$2y$10$hVURjo.R71r6C7V6eWYxjOB9oQjiI.4dxLdazLx/emrgHHwGsy3cq', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2236, 'SUGENG KUSTOMO', NULL, 'user@gmail.com', '6995034T', '$2y$10$ZEs5N8EYTKjKnQH03qWe7euUk57LFij/jYG.vfOjsw92moNHSHMEy', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2237, 'MINDAR PURWANTORO', NULL, 'user@gmail.com', '6995070T', '$2y$10$243sLZdS4OP8FwRMMM..SupXR3Gnn72cgZcXsOo.c73EO3WE5BFni', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2238, 'DIAHUDIN TENGKER', NULL, 'user@gmail.com', '6995089T', '$2y$10$zO9aaVIwpXEvmcHpmLRSmO0isqoRHvzKjB52rMhkR8gBqdesUTjZy', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2239, 'NEILAWATI MARIANI', NULL, 'user@gmail.com', '6995094T', '$2y$10$Tj.yurPTfd2PAcdZEhzD1udX4Hyk6xGr0dFrfBsm3dvxWElIdRo5i', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2240, 'FADJAR KURNIADI', NULL, 'user@gmail.com', '6995009J', '$2y$10$t8HY7kG/pABeNspqA9WqFe0Qli55VENT8nDGa97vxn9zTY6YVKS2y', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2241, 'HARI KAPTONO ADI', NULL, 'user@gmail.com', '6995021D', '$2y$10$aiIOhSA3qmpILIyhBwZP7OptrYhrg/eu5lu/Fs4iJoKYXAJ8sbBaO', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2242, 'WENNY TRISANTI', NULL, 'user@gmail.com', '7091015T', '$2y$10$7U.xT2Q7xleeCWfyX.09qeROtqC3uKp5oDuulYmd6.vn4N9x/Q5mC', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2243, 'ENDANG LESTARI', NULL, 'user@gmail.com', '7091024T', '$2y$10$y4ajcbT/kDT0w8fOpUxMg.580KeVOD7aHSkg2k2v0d5C5ECAvvWzO', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2244, 'SUHENDI', NULL, 'user@gmail.com', '7093428K3', '$2y$10$3NoU52DJmkD5Pp/w07Sqze15QMZOAfLf8b3pJJ5yVD2EP7gIV0dd6', 3, NULL, NULL, '2021-02-09 03:33:43', '2021-02-09 03:33:43', NULL, '2021-02-09 10:33:43'),
(2245, 'MOHAMAD ARIEF FATCHIUDIN', NULL, 'user@gmail.com', '7093019LMK', '$2y$10$AvuwGWo669ulXtzS5TaRiuyHbsRKI.uVNfqe9DFPgomhBGggJRo9e', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2246, 'WIWIK CENDRARIZAL', NULL, 'user@gmail.com', '7093228R', '$2y$10$XIZ64027FeAqOPBmdi1Ji.Eumc.2eREYVkLONzGhy5qKcABvKuV/.', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2247, 'KHOIRUR ROHMAT', NULL, 'user@gmail.com', '7094102G', '$2y$10$dujvLbgKyGrNiiEOxPbxIusiXGeB8idBTJwF2W5tZYRrIXmtfx1iq', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2248, 'DEDI SUSANTO', NULL, 'user@gmail.com', '7095035T', '$2y$10$LBCplNmsWlnx6Lbf1MlGWuiziUouxE5gUe/A2b12p/1X4cpzTnPG.', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2249, 'DANI IRAWAN', NULL, 'user@gmail.com', '7095062T', '$2y$10$PxpJ2eyV9hiuIutW3L2vY.t6mtgJyVHfMWIZLL/.WQsqPiQqO5r6a', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2250, 'NUR SYAMSU SAFRILLAH', NULL, 'user@gmail.com', '7095123R', '$2y$10$4Qa.yypZHNq.Neh9NF7GkeaacPWBiFa9BFhZKzuWl2eKXu4FKC2iS', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2251, 'HERI ANDI', NULL, 'user@gmail.com', '7095013H', '$2y$10$Rv7HYukKt.zI67mUo1fjmu2YFLzq8eM759bcl8Utn92ig7poWySFq', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2252, 'YENI HERYANI', NULL, 'user@gmail.com', '7193006LMK', '$2y$10$nYjSaZtJ3YXd5tQs5r/9E.I3sFUWb9TRSsQXteDErNl4nkw4s7EgO', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2253, 'RENY RAMDHASARI', NULL, 'user@gmail.com', '7194100B', '$2y$10$xxvDwUizw2u/bRCqFL9gauaNRsLgTopzdypEJcy3krEdbo9VzR/Ei', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2254, 'RETNO SUHARMINI', NULL, 'user@gmail.com', '7195002T', '$2y$10$e5PVk0.ka7i3huKlNF1QDOq2b7uwtuCVF6HezsBCNriss8tYsSPD2', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2255, 'FAHRIZAL', NULL, 'user@gmail.com', '7195013T', '$2y$10$P8ycr3.YaHW7GgtwNfLdr.PndY.qEoE/NPCZR0lHdyfnX6GG.OEgi', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2256, 'ADHIANA', NULL, 'user@gmail.com', '7195031T', '$2y$10$JJJrE4VNaXzmzmPh99th1uSrAF7FolDIlzSEM3Lq4IoY7nGFW1cIi', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2257, 'MURDIJATI', NULL, 'user@gmail.com', '7195040T', '$2y$10$4oumFA6VQT38jfzclELeYOOv2.DF3JgRvTsx11m.uUfupWpLwjf5m', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2258, 'DODI YAN PUTRA', NULL, 'user@gmail.com', '7195084R', '$2y$10$vY/KUiIPOpGzWdf07tRo2OtVH4OGsshc3FvWAGjeWkr8Z/QLudi0.', 3, NULL, NULL, '2021-02-09 03:33:44', '2021-02-09 03:33:44', NULL, '2021-02-09 10:33:44'),
(2259, 'LIANY FATMASARI', NULL, 'user@gmail.com', '7195001D', '$2y$10$Q.gm1oWMsNkPyx4YycWaZutR1tS16HfiCBxhMC23vkZm9DxnLm.hK', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2260, 'BASUKI RUDIANTA', NULL, 'user@gmail.com', '7292166M', '$2y$10$yTlSoySCgqk/OEcGz9HTuOLX8mxH/WkoOuP0g76E0A0lkQVN9xvvu', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2261, 'KOKO SOEHANDOKO', NULL, 'user@gmail.com', '7293005LMK', '$2y$10$eeAL1ratlwaDT7urwTwuvecsFRBi5JOMbfg8xI8vE9QvnicsX4TJu', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2262, 'LILI DEVI', NULL, 'user@gmail.com', '7295019T', '$2y$10$lD5/oQ5YOhg6uNUQzRpHkOXnH4TuItcFJvxdoIV1UsO8lEjh7IC7e', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2263, 'SUSENO', NULL, 'user@gmail.com', '7295026T', '$2y$10$IKel96vzd4RmmhOF2F7eiOE6/c9TCv087ckwpkMTqGPrFX62CRk5a', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2264, 'JOKO PITOYO', NULL, 'user@gmail.com', '7295008N', '$2y$10$JZ3ONiz2EMhMIRfYycSIJuCyfGpnkPgkmOBJRMTWwpdpigeAPWfW.', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2265, 'SARMIDI', NULL, 'user@gmail.com', '7391048T', '$2y$10$aivaG7/OzRh5H2OZwMur/.h33d41/rlMy3kzpGLoQwmreBA7WZuy2', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2266, 'ANDRY JUNIAN', NULL, 'user@gmail.com', '7395006T', '$2y$10$H2hjjyj9ecXL0/HlLSsslOlcC/d8BSsLWnOL5DGDPkPvR0kkduNdm', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2267, 'ARIEF YUNTANU', NULL, 'user@gmail.com', '7395018P', '$2y$10$TifllGFko8WhI6/x6v8ouuNQNJcaTjvhqgk6NItRmfXuQXeELI15.', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2268, 'ARIEF HIDAYAT', NULL, 'user@gmail.com', '740325138I', '$2y$10$qxzmGco5m/ZXNt1L/RRDWuIfi21t0leOoDr.Rzo8/pzDGpHHib672', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2269, 'MUHAMMAD EDDY SANTOSO', NULL, 'user@gmail.com', '7495003T', '$2y$10$SYEziXfKjoWfnYapBvbBPecAMww.KT8YJ7oDxNWn0q57UFzu5neKi', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2270, 'ADE GUSTIWATI', NULL, 'user@gmail.com', '7495088T', '$2y$10$vrWlLxy0uejj7Pa.KzAwMOmnIg5vasZ/mZ0ockGjFD68ay7Mar.T2', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2271, 'AHMAD PARUHUMAN', NULL, 'user@gmail.com', '7496090R', '$2y$10$E3sKZ58ezRgA1bF2XigJsO.UCFgBTRVC7YIMKjKbPYfdsJDRdJb7i', 3, NULL, NULL, '2021-02-09 03:33:45', '2021-02-09 03:33:45', NULL, '2021-02-09 10:33:45'),
(2272, 'DEDI MAS PUTRA', NULL, 'user@gmail.com', '7596057R', '$2y$10$25Hk.SpoEr3nCKSqhKfvT.oBJy2PH86SfuGbINonU88DNXdqRyfr2', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2273, 'AGUS HARYA MAULANA', NULL, 'user@gmail.com', '7603004P3B', '$2y$10$jl65wZhZjSQDybDGrdZ3WerBZGwZEzX85nhiuMprvKLXU8LWA6ys2', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2274, 'SIHOL PARSAORAN', NULL, 'user@gmail.com', '7604002B4', '$2y$10$I1aWYoOdOngrLdIlJZC2zO.rHfa.kv4sri.SaRKbCThk1.mKqJS62', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2275, 'DINA PERMATA SHARI', NULL, 'user@gmail.com', '7702013JA', '$2y$10$RpnhGEI1byeQ2aYTjLloJOSyBn5KmIBHlNIoIcR5tzf8/X9K5Iux6', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2276, 'ERWIN', NULL, 'user@gmail.com', '7704010D', '$2y$10$tb5nT8n0Kxlz/byQlmH9qeAtcCz8z3umsgM6AQ5.J6aqOSXFWmula', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2277, 'ERNA NOVITASARI', NULL, 'user@gmail.com', '7806020Z', '$2y$10$5FZrSAjA2G8XqtmAajHSXuM1egFsPFavXgl5gl9S4ay8kK5qcv4pu', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2278, 'IWAN HER TAMDOLEY TAMBUNAN', NULL, 'user@gmail.com', '7806025Z', '$2y$10$70zilB8QK0o8jWyF8govO.W85o5p10mT3EUVTd1ja09IXA9URsldq', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2279, 'AFFAN PRIBADI', NULL, 'user@gmail.com', '7806036Z', '$2y$10$tyAZv.C4CBlwVfOI7xlTruLDEDIl6UeETAFxohX7RWK3rR3tWQF.O', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2280, 'SHELLY JUNIARTI', NULL, 'user@gmail.com', '7904005M', '$2y$10$Tgr7wuhYXFCzTF8c8Kh7W.1.WFB9RNo/qn89VyVC5l46o2tT6EfiW', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2281, 'SHINTA SYAFITRI', NULL, 'user@gmail.com', '7904022B3', '$2y$10$hDNUfxG2qec63IAYV1w53ey0P9d5JEvS299qP4nwn0QNx8JEGOT6y', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2282, 'SUHARDHIKA SIH SUDEWANTO', NULL, 'user@gmail.com', '7905012F', '$2y$10$4nX3MaLVDJmGMWmvpPR9o.yulam8LEqam1uOYcNJCfx1AR5/hWVtG', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2283, 'VIAN ENDRAMANTO', NULL, 'user@gmail.com', '7906120Z', '$2y$10$s85HkT/f6IZdsI8nxFaTXelp6xkRLg1bUF8cmPWPGi2MOEfHdYHuG', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2284, 'AGUNG RAHUTOMO', NULL, 'user@gmail.com', '7906127Z', '$2y$10$mCce.nBMWosyjVX5VCbfVuyUdqEqYaiXlNlhW7cufR7FvS5jse5NO', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2285, 'AGUNG BAYU KUSUMO', NULL, 'user@gmail.com', '7907003Z', '$2y$10$zZiL7XKG1nMYEb3WDu3.QevDFswj6H/XEMarqvc5mc.c9LRLXOnD.', 3, NULL, NULL, '2021-02-09 03:33:46', '2021-02-09 03:33:46', NULL, '2021-02-09 10:33:46'),
(2286, 'RIDHO HUTOMO', NULL, 'user@gmail.com', '8005005Z', '$2y$10$q3DGw7mcwseuRLwGR.Dhnuc1b2uZDBjZG04hAjpMrb/YSPgG3V/xm', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2287, 'INDAH LESTARI DIANAWATI', NULL, 'user@gmail.com', '8006187Z', '$2y$10$/4UjujTxy2YBVtRpz4JIW.wtuzmifCtDm7KNbOYUoiaurqMtMYi9O', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2288, 'FEBRIANA SARIATI MARPAUNG', NULL, 'user@gmail.com', '8006197Z', '$2y$10$26G/DeAAsa75KCm23ouluuFlmM6JHgLrJ/PPJ6xXthCECKoYFsNNi', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2289, 'RANDY ZULKARNAIN', NULL, 'user@gmail.com', '8006257Z', '$2y$10$pyb86nhmO9TcOjSqIn54lO/ETkq94lCdJFUJNG5KMA0KBeIeS3L/O', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2290, 'EKO SETIONO', NULL, 'user@gmail.com', '8006528Z', '$2y$10$6BCNT2HIKzsT98TUrx7Ds.fDNofWR1apqEodJpZ3f2n7TrV0fyxrW', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2291, 'ASTUTI LIA NUGRAHENI', NULL, 'user@gmail.com', '8006214Z', '$2y$10$e/P67dH2zBTaxGBCECE79eYkioL97T0aYOQ/nPccr09xH8VaTjM/e', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2292, 'MOHAMMAD IKHFAN', NULL, 'user@gmail.com', '8006246Z', '$2y$10$DGX3PbZiY60oWLW.Z3gjtOjGuRnpZ8Wg4NKRvX4iQTiE2ABg1V57i', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2293, 'ZAKI YAMANI KERTAPATI', NULL, 'user@gmail.com', '8008023Z', '$2y$10$GC6X8g0iGHPmfRDl0qvPa.ugSpfKuRwl925sLmcCH5Ohz4k5ivBym', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2294, 'HELENA WIDANINGRUM', NULL, 'user@gmail.com', '8008228Z', '$2y$10$2QdGWnC1AloTvzYR7FCTq..xzQ2diAhQg2H9tRvEGSsuBQKJINyh.', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2295, 'UCU DANINGSIH', NULL, 'user@gmail.com', '8105006H2', '$2y$10$sFQZVI1Fg7TI9BPM7H9HvuTd7xVMEz4wA1PlG8n8ogH5KYS.uhRCO', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2296, 'DENNY MURDANY MUCHSIN', NULL, 'user@gmail.com', '8106573Z', '$2y$10$oLm8PlnaJ4B.bv4d4Pgaa.VO/yFUyClu.CXOkNzp4RscvyhLugtbe', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2297, 'ENDAH PUSPITANINGTYAS', NULL, 'user@gmail.com', '8106304Z', '$2y$10$es8MuvHsZRsEyMenIIOxmuZeY5eD4Ir.OzQKbztPrUYWKexbO2QH2', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2298, 'DWI YUANITA HARCHAN', NULL, 'user@gmail.com', '8106293Z', '$2y$10$IdN8ZVXQuIJjPI7.HGRuY.3/BaQ5Fgf2BYTdKV0gnzD9Bu1tGAlLm', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2299, 'MUHAMMAD SAID AL MANSHURY', NULL, 'user@gmail.com', '8106370Z', '$2y$10$11Q.LV8AMc9sCEXVmGblCODvU0wuZXKpgk/BnKCDoqVjow83p3dd.', 3, NULL, NULL, '2021-02-09 03:33:47', '2021-02-09 03:33:47', NULL, '2021-02-09 10:33:47'),
(2300, 'LIZA LIDYANA', NULL, 'user@gmail.com', '8106285Z', '$2y$10$PkF7avxgMYbgfNqmDV/MG.uMPcatG1oB7d/B0PHDLe5GPXPgSVhQa', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2301, 'WIJAYANTI', NULL, 'user@gmail.com', '8106348Z', '$2y$10$LE7fqj6zdxnhnRZlmUB8LucOCeyNwnyt2Q6M9.XlUIvW//Ma49vgS', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2302, 'MARIA TORIKA ISPUJAYASWARI', NULL, 'user@gmail.com', '8106324Z', '$2y$10$o8gPPgGo5xD2egQNJZgK/ez//xn1XPbNSCMImUH6LIKArxU1M30dG', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2303, 'RIDHA DIANINGRATRI', NULL, 'user@gmail.com', '8107102Z', '$2y$10$dXOAU4bIXEGNeh5cHWY2vOEvqbZ863jx75br/ZvHlwzdnh3OJn7jq', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2304, 'VICTRY ANI SUHARTONO', NULL, 'user@gmail.com', '8107143Z', '$2y$10$3R.NvVi5/Du..BpNrdLLfudK81Vx01qmqULhYP32.Z/apHhdgpAHq', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2305, 'RUDI SUSANTO', NULL, 'user@gmail.com', '8107114Z', '$2y$10$rfChZEuwtt3Xw6iC0nrbkuQa8lVowkapxrlioFXo4BmZsGTJlB/2a', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2306, 'IYAN SUDIANTO', NULL, 'user@gmail.com', '8108244Z', '$2y$10$J2ldeeSPtgW4u2xEjJaQKOT0cVjot9QOQWkRUVgEqX5r5N5U9iW5u', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2307, 'KRISNA SULISTYA', NULL, 'user@gmail.com', '8108041Z', '$2y$10$n1IfajuSq8B2YBgbuztOKu2XkkIgZnTIbh0UlPGHmrjqg5IjmnYky', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2308, 'ANDRIAN JULI FITRIANTO', NULL, 'user@gmail.com', '8108432Z', '$2y$10$JY8if66psslajD2JtkCZne58faUCPIEP0zzI..sUXpvArPCbv31Om', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2309, 'RAIHAN AMIN SYIBRAMULIS', NULL, 'user@gmail.com', '8108070Z', '$2y$10$K0Fg6NLlyiTcQRIpQt/UWOsJE0DR2wTgzAphffqvQCSn5TCleT9Ui', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2310, 'TRI ANDHIKA PURI', NULL, 'user@gmail.com', '8109016Z', '$2y$10$R9U6p3vKbDQpOkI7t4OPwegxcI38Ao8afo.LlnYV4k5G8QdxHVZxy', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2311, 'ELIA SUSANTI', NULL, 'user@gmail.com', '8206410Z', '$2y$10$svaV4ktrzCiC6ga1CrKGsexGTc4QR2RdjtroiGtc4saWLoVh33Snu', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2312, 'SRI WINDARTI DWIATMI', NULL, 'user@gmail.com', '8206447Z', '$2y$10$N9OZ1ih8C6k/H6/47TNqQeFtkKZQAMims.kGIUohtnucfxTJYUWtC', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2313, 'IIN KURNIA SARI', NULL, 'user@gmail.com', '8206448Z', '$2y$10$OhHXK8yZOqvAh7jmiZFR8eNkbxGqDfxGLF3SgPuj2STGQlZt7no0a', 3, NULL, NULL, '2021-02-09 03:33:48', '2021-02-09 03:33:48', NULL, '2021-02-09 10:33:48'),
(2314, 'AHMAD FAUZY HAMDANI RAHMAT', NULL, 'user@gmail.com', '8208275Z', '$2y$10$3dTl9O.VG3IBNQsUY/N6G.XdsnTNAeNkERsTng7yw4K44u5JAqE.e', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2315, 'FAJRIE AGUS DWINO PUTRA', NULL, 'user@gmail.com', '8208108Z', '$2y$10$b/M8gJJDhr8yj2HMsMvzCulRa9d0qS9m49RKCcbeT0Gl4LypaGHui', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2316, 'FARIEDS', NULL, 'user@gmail.com', '8208267Z', '$2y$10$2bLMNNOL/U2mwpGPH6/5Du7zZ2AoTxyNkjhhJTY0bC71vwOGgtn4q', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2317, 'KUNTO BASKORO', NULL, 'user@gmail.com', '8209149Z', '$2y$10$SMb5L2Pg5g84jnICwD9rZelNUbElMUrJAWo/DJdjaIggg0ysdkdIC', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2318, 'ELFIN KURNIAWAN', NULL, 'user@gmail.com', '8209403Z', '$2y$10$EHaFgHal.xqK.42qu0/sY.Z5tvh5gCsTWwpsOPDzAqM6fgxpZgNJy', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2319, 'RADEN SURYANDI BUWONO COKRO', NULL, 'user@gmail.com', '8209678Z', '$2y$10$x1PJIwy/ehORrGzhLztncuKoYL3/BllqekSRHLjw5CG2.1P4oFIXS', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2320, 'AGUS TRIMANTO', NULL, 'user@gmail.com', '8306658Z', '$2y$10$fsDZQUmbPaBDLOiRW./7/.kTnaCKB7Fsdw3zCuvEA7oxMH2v8S.Ee', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2321, 'DWI ANDINA RAHAJENG', NULL, 'user@gmail.com', '8308128Z', '$2y$10$3pwYJDhmAgR4i.tu9P5pPeERGoJpLiG.3/te2/pVctWyzJrLTTT5W', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2322, 'EMMEILIA VERA HINCE LUMBAN TOBING', NULL, 'user@gmail.com', '8308144Z', '$2y$10$JWqM9YEREDsUV9Xh4igzBOn0pygNT6rP5ptqgyHDM3MkCG9S0PqTO', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2323, 'BARZALIUS AKBAR', NULL, 'user@gmail.com', '8308152Z', '$2y$10$/hKXPHKSDoN1KvGR3YlXW.Lo4ikBS3xjx0HBMpuiTYHfJ1lffH0fi', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2324, 'ZAENAL ABIDIN HARTOYO', NULL, 'user@gmail.com', '8308131Z', '$2y$10$hISqLOO3mGAmOi8gIMzWx..exryLIRMFYnJ8D2ZuXsGkTiYowQTyS', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2325, 'DJUBAIDILLAH HASAN', NULL, 'user@gmail.com', '8309074Z', '$2y$10$e.hyg5FrQwa/Tv99pLqouOgm/MMipBF5AM8BaPvxBzFaaOcn2/zWW', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2326, 'RUDITANINGTYAS MIJIL RETNO AYU MUMPUNI', NULL, 'user@gmail.com', '8309191Z', '$2y$10$defMC41UzmTfKqDr0/tpxuMMWlOV9P9b7BQwnRBU.YhhmVbBdGuOC', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2327, 'ARRIZKI ABIDIN', NULL, 'user@gmail.com', '8408199Z', '$2y$10$aKouUuK8r5z2z37G63lyiOCQ/Fd/ypuucOP/tTbXVJsYsmn4PKhPK', 3, NULL, NULL, '2021-02-09 03:33:49', '2021-02-09 03:33:49', NULL, '2021-02-09 10:33:49'),
(2328, 'BUDI APRIANDA', NULL, 'user@gmail.com', '8408350Z', '$2y$10$I3tlw1qk8JcmpOKpUUu9vOXbhAOIpbQ6/pOpm9dHalzqKMsBKA4s6', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2329, 'MUHAMMAD MAWARDI', NULL, 'user@gmail.com', '8408510Z', '$2y$10$Blww8xV2/vJntq..KWvEG.1v990Xqlm9XpcLQ3khZRvfDf3E4h7OC', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2330, 'ARRIZAL ICHWAN YUWANA', NULL, 'user@gmail.com', '8408364Z', '$2y$10$40tWRbbgoEBW.mCbJHcRx.Qu/9sdxfslsRqBWk3IQKZrqXN5ENBHy', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2331, 'NURAPNI', NULL, 'user@gmail.com', '8409596Z', '$2y$10$e69LtqFPreIflv.YmLPN1uxLI8rGPi4mPe12JDhyIqoD6FIcdl0s.', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2332, 'STOZN ROMEO', NULL, 'user@gmail.com', '8409095Z', '$2y$10$vsCnQrgo4R1j1lmm/RalMucDLYhnSg3OSN/4uL3o0L7lZXb9h4.g.', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2333, 'JON MARJUNI KADANG', NULL, 'user@gmail.com', '8409590Z', '$2y$10$LrkVmrFH2W3PZ/wwZik9huwYdHBfS.WtER0sgiw5M6ZHq/JzPFNoS', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2334, 'FITRIA AFIF NAWANSYAH', NULL, 'user@gmail.com', '8410186Z', '$2y$10$f5LTjKrsmgeDs5ol30w5we6b8eZ4/ESU0NOpMKh680XTrEV2487t.', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2335, 'CANDRA HANDI ARIBOWO', NULL, 'user@gmail.com', '84111603Z', '$2y$10$31EIuHPWdyX5omtrS4VgoeS29/.rzntC8.7Jw/YzaWx/ODjbbsQYu', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2336, 'RATIH CRYSANTHY LUTFIYANI R', NULL, 'user@gmail.com', '84112002Z', '$2y$10$RW.N8HdM7xXOHJRBXPaNA.bcaPBXDTR0Za75GCIHzddEwqygCrD.W', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2337, 'MUHAMMAD ARIEF BILLAH', NULL, 'user@gmail.com', '8508001T', '$2y$10$t4MnyhGn/g7NjQYoWvI0R.t9eDPc.5cs.ahZ12vHAe6pvIVupFCZm', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2338, 'PETER PARADA MANJORANG', NULL, 'user@gmail.com', '8508002T', '$2y$10$09W0lo.D57A/YwyoUucqgeIG76v6TCIf2ehW8yRhxxbjPdOz.pMX.', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2339, 'YULIA AGUSTIN', NULL, 'user@gmail.com', '8508216Z', '$2y$10$SsPEvZhvvO2dxESiTJdW7e9tRTgdnF4PmUKuVQCBvJrNvPzAPQIqO', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2340, 'SAMS TUA YOHANES GULTOM', NULL, 'user@gmail.com', '8509001T', '$2y$10$aHp4Eb5XuLfS37kSAXouEe5PY.t.axy/ttcVliAaNVpG9aLy4whJC', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2341, 'AULIA ADITYA PRATAMA', NULL, 'user@gmail.com', '8509632Z', '$2y$10$4mA/3K4Xw09jb0QuKx/Gyu1q/hTG7E5OHJQkJ79RYL614AJ1QKc0i', 3, NULL, NULL, '2021-02-09 03:33:50', '2021-02-09 03:33:50', NULL, '2021-02-09 10:33:50'),
(2342, 'DIAR KURNIAWAN', NULL, 'user@gmail.com', '8510971Z', '$2y$10$TiXjPJYd4mDAknZp/1A2/ezu5srriCQBoV67CpoFy1NZVtBYBRWmK', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2343, 'KEMAL FAROUQ HANIFA', NULL, 'user@gmail.com', '8510976Z', '$2y$10$xEmkkTz1npy8jLN9ysrzEO.0wRowsIazXdUUWC/OPm7KuMmVX/uDm', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2344, 'DEWI IRA WARDANI', NULL, 'user@gmail.com', '8510977Z', '$2y$10$v.DMUqvyfuhDRw2D/BvY9.UMDcXkMRWe8YX.FWRr2cWf30WiYufzG', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2345, 'BASKORO FAJAR NUGROHO', NULL, 'user@gmail.com', '8510982Z', '$2y$10$xrlP30fwfNYfcVZJUF41cu4SRnr4MJxIYMfk0GkmJ9fEgCvGjb6V2', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2346, 'AGUS NOOR SIDIQ', NULL, 'user@gmail.com', '8510343Z', '$2y$10$Nv.jx9Ttuvm7vWxE66FlguFFvkCjYsWIgifmALdJBf3/JjIKCbDRm', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2347, 'DWI BASUKI NUGROHO', NULL, 'user@gmail.com', '8510398Z', '$2y$10$uUoOdTUqEdHmtUlsv2zhMux4GSqCgp0E0q6wyvr/dz3UjUMuFy2ee', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2348, 'WENING ANGGA PUSPITA', NULL, 'user@gmail.com', '85111461Z', '$2y$10$DOU0p9LOP8hMTo5zt0.1lORkcqoLvzQWhTItwaNLkQVsdqZbLogY.', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2349, 'TATAS WICAKSONO', NULL, 'user@gmail.com', '8511254Z', '$2y$10$TPRDo1vYR24bUA98M9qz7.AxRNsoPGYEYQlArG780/1VkMYKD4hMS', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2350, 'NURINA MARIYANSARI', NULL, 'user@gmail.com', '8511252Z', '$2y$10$3T3va9aQTKMhYQvemteizePNu95We69AAn7JjmEmGt8.V1vY6S2W2', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2351, 'SATRIA INDRAPRASTA', NULL, 'user@gmail.com', '8511247Z', '$2y$10$vJp/ZqDWP7vBwC3SspGY3uFnd.LeOAu8p1VPLOIqKT01JvL3Frsga', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2352, 'BUDI SUWARNO', NULL, 'user@gmail.com', '8511003Z', '$2y$10$tR6OT9AYiyB1Fk1oHFOUA.hAKUouN.LuLZE4EBEDy3DjNmozkEJee', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2353, 'ERNA PUJI LESTARI', NULL, 'user@gmail.com', '8511060Z', '$2y$10$0rPCfCO797UvkKINDrYrveIVvixmUJ9VSFGQmYTk0MYhI6M5zzaca', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2354, 'WISDOMY TANNAR', NULL, 'user@gmail.com', '8511063Z', '$2y$10$XdbG2QBcu7xIyt1WNnNReeiTBUXtTuAwXNTCEqYggqtNjAnlZecGm', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2355, 'LUHUT ROIDEL SIMARMATA', NULL, 'user@gmail.com', '8511077Z', '$2y$10$eBYr.hstGET8fI70p9.IaOj5.I8fFTo24RJSPB6bWlA2z7orT1ni2', 3, NULL, NULL, '2021-02-09 03:33:51', '2021-02-09 03:33:51', NULL, '2021-02-09 10:33:51'),
(2356, 'YUNIAR ADJI RAHMAWATI', NULL, 'user@gmail.com', '85111747Z', '$2y$10$PSBbjcr.jL8ETyDHLOoj0.HTF.6YSjTOXKNgpR0yioLVlSXDywKLK', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2357, 'IHWANDA AGUSTRIANSYAH', NULL, 'user@gmail.com', '8511440Z', '$2y$10$JYZKJlOzWxvbJQx5YH97zuXhnk5B5Hy6BGxEbB2V7kOFZCdaOcuOK', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2358, 'TYAS ENDRIYANI', NULL, 'user@gmail.com', '8608003T', '$2y$10$Ihe.iSO1r0odW9cAbs3eV.NqXjA.4LZzPyjJe2eTeNpn6NTjqnqSa', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2359, 'MUBAROQ LUBIS', NULL, 'user@gmail.com', '8609399Z', '$2y$10$MzOJx7BUqcd6DwFunh3/RO5tAnQ1RBO1vmZCQbEA03AOpnEDSz2kK', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2360, 'DWI ANA ERNAINI RITA SETYANDARI', NULL, 'user@gmail.com', '86101000Z', '$2y$10$sUw34c9Co9UHfoYY7cnCq.WJv1xFivkO5eEvE2Tu7r6DP/dIRkIua', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2361, 'TIKA SUMUNAR', NULL, 'user@gmail.com', '86101006Z', '$2y$10$4os2M3v8p7zQOnME7AFuMuPUXowgBAJcml4zUlSiPsd1VwECFGLn2', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2362, 'FAISAL RIFKI KAFIL', NULL, 'user@gmail.com', '8610983Z', '$2y$10$1IAMMJUyGODGniJRji/85uK07Vc9A4vCti9NBD74B7odpMmS1ZPZG', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2363, 'FANDY NUARY', NULL, 'user@gmail.com', '8610984Z', '$2y$10$gDEW14CQCSdRG7MjyXkACuX4Y7ntc/fNpoOmSED/aKn3e6zu0HQuG', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2364, 'DIAN HERNANTO', NULL, 'user@gmail.com', '8610689Z', '$2y$10$INTgvO5fvIOoMHzgewQI..UYo3usWb0VBe.v7lSSfpIv/2VkWMblG', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2365, 'CAHYA WICAKSONO', NULL, 'user@gmail.com', '8610252Z', '$2y$10$BJCnFo.1LsePv6Y2Y6Hy2OTll7g3jvr/ZDcegu8ejuPgz6jPa9rU6', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2366, 'SAPUTRA DWI NUGROHO', NULL, 'user@gmail.com', '8610948Z', '$2y$10$e9ivk7hVQt3nc.c2qo/rt.D30vUfNeMhIIZ3pr9XUrLbD5gmiIKfa', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2367, 'HENDRA BUDIONO PUTRA PARAPA', NULL, 'user@gmail.com', '8611295Z', '$2y$10$nCHERoNsvTUKAlAczS3bH.lnlgraDyzFg9ygvNAPuowT8rXQ5JUuG', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2368, 'EVA WAHYU PUSPITA', NULL, 'user@gmail.com', '8611286Z', '$2y$10$xIzvD2EHbZ.sF1mInTw98eirhpcXht5pwDuBtR/Dos2LdtO7slDuS', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52');
INSERT INTO `user_auth` (`id`, `full_name`, `avatar_file`, `email`, `username`, `password`, `user_type_id`, `user_entity_id`, `user_key`, `created_at`, `updated_at`, `login_at`, `modified_at`) VALUES
(2369, 'BUDI WARMAN', NULL, 'user@gmail.com', '86111995Z', '$2y$10$xewC4B/kM9C.qFNKpeFTJ.m2bcCUcpXzvV7Ct3MlHe6bcgwpZKC3q', 3, NULL, NULL, '2021-02-09 03:33:52', '2021-02-09 03:33:52', NULL, '2021-02-09 10:33:52'),
(2370, 'ROY HADINATA SIJABAT', NULL, 'user@gmail.com', '86112004Z', '$2y$10$a7liu0iXncpSViHzXMcvOuGMq7rzGPfSFZygLd.VGH0ebFf6NgKwm', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2371, 'FIRMAN ALIEF', NULL, 'user@gmail.com', '8611469Z', '$2y$10$xjshgB1NnnCgs6w2oN7rQOwBw3W.36nHW5P5OJZNd/yVMbON59wR6', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2372, 'REZA HARDIANSYAH', NULL, 'user@gmail.com', '8611518Z', '$2y$10$gbCnpTbmdhl.Xu7fNNMDTePsMM05/pmKhYzw.D6bMemk9bZePBe4q', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2373, 'MOHAMMAD ANIS FAHRUDDIN', NULL, 'user@gmail.com', '8611084Z', '$2y$10$XRiGmz23AjF36EIrEIkw4ORtCTVeHgqmEsJBSAsUg9kRvRzqZsJSq', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2374, 'MUHAMAD SYAMSUDIN', NULL, 'user@gmail.com', '8611092Z', '$2y$10$EetJ0sc09K82ImQ46MkS5.MOUYANRE5a1s4sK4irI58DFySWCrXc6', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2375, 'RATNA PUTRI MINDASA', NULL, 'user@gmail.com', '8611110Z', '$2y$10$9H08qxEKTZ.krZBdU4xswOL8IXBqaH0EmQMLm6UPzFZQZhI1JZVg2', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2376, 'WIDAGDO DWI NUGRAHADI PRASETYA', NULL, 'user@gmail.com', '86111200Z', '$2y$10$wcDQjsUgw3flhp1JFE8kIeuCwV2FDPdNLJLbsASnoNIjhyVWSIk1G', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2377, 'MUTHIA ANDRIANA PUTRI', NULL, 'user@gmail.com', '86111202Z', '$2y$10$l/8VLMkCIWdflKzNSkAwWu.fO6sJtqk/aLf3aXPrH0rCdtF7Tk/xC', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2378, 'RIKE RANKINE TRESNAWATI', NULL, 'user@gmail.com', '86111204Z', '$2y$10$a61j8DS2gLhzujV4R6OXEupodkpbhDKS1XxpyWdS/AK5DSZnrMZXm', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2379, 'AYU PRATIWI GANDINI', NULL, 'user@gmail.com', '86111248Z', '$2y$10$kEAN63BYvGj86CGRdQ4D6uVSv4rT0ZX4xKKhHAZODWcmfNqxal/yi', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2380, 'BASYID DEDDY HERMAWAN', NULL, 'user@gmail.com', '86111493Z', '$2y$10$P3taynneN4ATXKHBXf1hwOK6cVnipYeG3P1fQfsloB1X7kael.ek2', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2381, 'ARIE HENDRIYADI', NULL, 'user@gmail.com', '86111994Z', '$2y$10$JMqXmwZ3pUtBIxM5Cejym.0glwyl9DKaK6BTQQPS3RrzF/bq5.vkO', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2382, 'TIRTA MAYASARI', NULL, 'user@gmail.com', '8611510Z', '$2y$10$lD9AedCbo7.m6h.pWDybZOovlyL6EyVzxAYbEpcLyvu95p4t4JwAi', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2383, 'HERIYANTO', NULL, 'user@gmail.com', '86111714Z', '$2y$10$H0vTqkD3gw0Qp3ReXEYWneJSY0suxIdJ5ywBnqBIZlp9pmRNzK1tG', 3, NULL, NULL, '2021-02-09 03:33:53', '2021-02-09 03:33:53', NULL, '2021-02-09 10:33:53'),
(2384, 'NOVA MILA SANTI MAULUDIYAH', NULL, 'user@gmail.com', '86111506Z', '$2y$10$0/bmc9y82uEHjG3H7D5LT.bMi8sWfRgAnwVbPTLOfhpu8lnpS/ipG', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2385, 'MOCHAMAD MARTE ARDHIANTO', NULL, 'user@gmail.com', '86112176Z', '$2y$10$dcOUe1RqEpvElJpwQNGNau/HtIGHuhCZ0OOTSKKo.R2yC.W5WE.8u', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2386, 'DWI MEYRIZKA PRATIVI', NULL, 'user@gmail.com', '8709453Z', '$2y$10$Avyet5XC99blFN0U.AJCnuilgmn2OZ3fiCny75rgtGMArmnv9KhLC', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2387, 'RANGGA ADINDA NUGRAHA', NULL, 'user@gmail.com', '8710829Z', '$2y$10$mJUGUrP3eqsx6bJnPruqeeJdReSFS1uuuvcWDgFDtQblX.UOlLxbq', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2388, 'ANDI KURNIAWAN', NULL, 'user@gmail.com', '87101024Z', '$2y$10$zvU3n56L1MNEI8rN2TBRPeKkp82tgkIgb6NWSDYqvHJU3Del9/h4O', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2389, 'HERU PRIYATNO', NULL, 'user@gmail.com', '87101025Z', '$2y$10$wBvpZpHTIdlClqEE3h1yHu7XM3U9cciQP2iL1gth04nxRMSB0nz6y', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2390, 'MEI RAMADHANI SUSTANANDA', NULL, 'user@gmail.com', '87101027Z', '$2y$10$O5UA2Y80Lg6SDc.RagHh0.ChLLVh/PtYaJMo1zHcPJFn5rEWr7oZW', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2391, 'MOCH. ANGGA ALDINO SAHA', NULL, 'user@gmail.com', '8710057Z', '$2y$10$MbrgRrrus4aVvSouJWtO6.7XrAyrvQQgmur9KEPLFIN78dnEFNfYW', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2392, 'ANDITA ZHENA FAHMI', NULL, 'user@gmail.com', '87101030Z', '$2y$10$69VhgVFhemxWqGe99.KBHOlVE9JgwEH586UnQU10IAf4yZUA617qW', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2393, 'SOFYA MAHARDIYANI', NULL, 'user@gmail.com', '87111215Z', '$2y$10$gC9YeiaKqOJFDo/.9uvxB.qjhS7zI9ed8exZ4gHy4XpF5FxyRqNt2', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2394, 'AINI ROHIMAH', NULL, 'user@gmail.com', '8711136Z', '$2y$10$1vwJnsDrD/5UHr34oykNceXKpX74vhMXJmcXtWPDLNvInvuutGQ42', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2395, 'RACHMAD ARIYADI', NULL, 'user@gmail.com', '8711139Z', '$2y$10$VAOeT4UlgPb0l3KfgtFJ4.Szg5fxyxM.2QV.VKZ/MENhZT6vBMaPu', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2396, 'NUR RAHMAULINA', NULL, 'user@gmail.com', '8711148Z', '$2y$10$GsESb3QrqVTbEcLZuEzjHuWRYxU3vuj5rm9ROwQuExDTjHykBqOqC', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2397, 'SILVIAN NIZAR PALAMANI', NULL, 'user@gmail.com', '87111513Z', '$2y$10$nRc3iq5trrgyzvbyOUMQyOgqAshWAxsZBiGpBVBZK4O66o.53rfaq', 3, NULL, NULL, '2021-02-09 03:33:54', '2021-02-09 03:33:54', NULL, '2021-02-09 10:33:54'),
(2398, 'DINA SUBEKTI KANTIRAHAYU', NULL, 'user@gmail.com', '87111555Z', '$2y$10$KVFkN8HwLnel8ngvma7paexL55MGo62aYnAdS08NbpwPonkxGLT7C', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2399, 'INA SUGIARTO', NULL, 'user@gmail.com', '87111744Z', '$2y$10$vsDbkOVjSrAiS/m6Qer4G.uMbzlfje7TaH6VRgnfeU4igEnFpClLa', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2400, 'SRI ISYANA HAPSARI', NULL, 'user@gmail.com', '87111759Z', '$2y$10$gNn3ufCmr2mguclZRzvZyenhAKGiK0fxA3JqM38zIGrXEDN2d89hu', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2401, 'AHMAD FADLI', NULL, 'user@gmail.com', '87111993Z', '$2y$10$MXcUdl2TnbdVO6LhvwNiFehcjEnqn06j/x8DINN59lmXmvA0Lxdc.', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2402, 'HAJI AHMAD SUSWIYANTO', NULL, 'user@gmail.com', '87111996Z', '$2y$10$eHAiEF9OKDGxiYSXL54vFukgHM7SEq7ImT3stfqI.E9R/1QOkg5SK', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2403, 'IRMA PRIYAN ANGGORO', NULL, 'user@gmail.com', '87111997Z', '$2y$10$wB3sDm2Pf8JlYR6QncgKcuSFYREEWndr05.bpH8elUr4Mf/6CjxWm', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2404, 'M. IKBAL RIZKA SAPUTRA', NULL, 'user@gmail.com', '87111999Z', '$2y$10$iES4pFqQffcQcAfFNWPdtujjWjuDPA4eLq0LTaQxOupOYhSP.Vi4e', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2405, 'ADHISTY PRIMA VARADIAN', NULL, 'user@gmail.com', '87112161Z', '$2y$10$4yxBSTgllRQKzZA9xCHGsuDZE1IB7wrMYe/PRjCLMqYH7L58uMKp2', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2406, 'TIARA ANNISA', NULL, 'user@gmail.com', '8711597Z', '$2y$10$.92EdTtXjkQw30/aHLZleetBEBXmrlC9eSOCIsEcCA9NflPslbmTy', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2407, 'SUZAN KENCANA', NULL, 'user@gmail.com', '8711608Z', '$2y$10$xEg.tpqHsi5kYuPntGWQJeTw9qKZQPsUZ4I0pRn26hmyAj15TDeVa', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2408, 'TAUFIQ NUGROHO', NULL, 'user@gmail.com', '8711029Z', '$2y$10$tuhxwnLLqqTacA6KJvlttOpEi04N5IsK2VuTNbbm8Bn4mV8L4Rwzu', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2409, 'ROULY MANURUNG', NULL, 'user@gmail.com', '87111745Z', '$2y$10$LmFWlyX.F9KLFtaWAwRVieB.iDWXSSJIQDx4NaOZuxQpK0bP3cYtW', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2410, 'GALIH PERMANA', NULL, 'user@gmail.com', '87111194Z', '$2y$10$s9Fu.vSBpIZB2HrKFq4Ju.LjLGA3UpTvBMi4aIF.4uudI562lsyqW', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2411, 'AGENG INDERO PANGARIBOWO', NULL, 'user@gmail.com', '87112160Z', '$2y$10$prgK92R1OnEQLu5ZWzo27.NVfQ2/viHMa5Phyoeh.IXm1QB61U4w.', 3, NULL, NULL, '2021-02-09 03:33:55', '2021-02-09 03:33:55', NULL, '2021-02-09 10:33:55'),
(2412, 'AJENG RAHMADANI', NULL, 'user@gmail.com', '8711132Z', '$2y$10$Cx4zc7LF7ySkRQbzMXEmuueozpYLjRG5sA0csD02YkDJIyFlteRL2', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2413, 'YUYU YULIANTI', NULL, 'user@gmail.com', '87111016Z', '$2y$10$eUzrbJg8LeM2.7CUmsox2ejJM8VP4EDkvVpyzp3ABfWh1HeTVGloC', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2414, 'ADHA HAJI SETYO BUDI', NULL, 'user@gmail.com', '87111346Z', '$2y$10$QEhSGFEhKUGqrSlSHknTheo0E.zzVw.kgOonw3xRK1j1M5fE.ld5a', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2415, 'MARIO HADI KUSUMA', NULL, 'user@gmail.com', '8711315Z', '$2y$10$X/rMmUuJ2S2GhwKCaTC/sOMDnXITS9dMFXV9NfZZwDSl70.bItnrm', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2416, 'GAMA AJIYANTONO', NULL, 'user@gmail.com', '88101052Z', '$2y$10$zQcAYVDFnC/fBIJXl3ATI.0Bw5xrvc7FOxJPRThQxwe39/jCWfNau', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2417, 'MIFTAHURROZAQ', NULL, 'user@gmail.com', '88101074Z', '$2y$10$zvGl/1ulo8MkY9AIeonjEe6oz1O37ir69sZHYdLk0z36Nl9fG14Lu', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2418, 'FATHONY YAMLICHA', NULL, 'user@gmail.com', '8810060Z', '$2y$10$qxEOV2XXyTTZqeVHfNtrwuQVyw79zQUqvuORfmnjlhxnP5ufijq9C', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2419, 'FITRIANA BUDIARTI', NULL, 'user@gmail.com', '88111768Z', '$2y$10$t86zmUx16GPSb0ToHaS/wuDHXtUb5/IU992KhpNI1cgE.sfBDah/m', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2420, 'YENI SRI RAHAYU', NULL, 'user@gmail.com', '88112008Z', '$2y$10$Jc0AsL11fIsDR0h38z98YO5vcH1Tij1t1yPwc/LFfRDAK2zEz2NtW', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2421, 'YUDIANSYAH', NULL, 'user@gmail.com', '88112009Z', '$2y$10$DzRXYCb9AZTKkN3n77QFE.qgcFDjVIAgRG.2zIJ850kdh.J84zEH6', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2422, 'ANUGRA PUTRA PERMANA', NULL, 'user@gmail.com', '88112162Z', '$2y$10$dlPEyw/cwkRt9s/otx0Wju/994gk5mqestp.MRrqDRBewVAE58gPO', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2423, 'ROMMY ARIE PRASETIA', NULL, 'user@gmail.com', '88112003Z', '$2y$10$xowEMsJ8HQpTrwJpw1Mum.j1BH7qBNKHt2gTiY6Mvn1TcVJ1W/l1G', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2424, 'DENNI RESAPITA BR, SEMBIRING', NULL, 'user@gmail.com', '88111367Z', '$2y$10$o/roy9MWd36RnbHKJPTHGepFyuxqMWjD8vyROToNBB8lbaQg0dzRi', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2425, 'MANGANTAR AFRIJON SIMANJUNTAK', NULL, 'user@gmail.com', '88111379Z', '$2y$10$bF1Y540lL25mvTk9pWYhruifCkN218f8kE.xe7t9P1ZvXn.EzMywm', 3, NULL, NULL, '2021-02-09 03:33:56', '2021-02-09 03:33:56', NULL, '2021-02-09 10:33:56'),
(2426, 'HASNIL MASRI', NULL, 'user@gmail.com', '88111393Z', '$2y$10$OQemoh4Xb5cQM2CCnJ6nUeLDbAW6dqOrigqrRDzel3/HjvJDY9pxi', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2427, 'NUR AISYAH', NULL, 'user@gmail.com', '88111408Z', '$2y$10$G3BnIBfeYcg1TKcNTXrngu4Gy0pQNZbtYFNrfXufeflm3en4gO72C', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2428, 'NINA FAJARWATI', NULL, 'user@gmail.com', '8811892Z', '$2y$10$j.dJ4mHfEHunxzD9vLbS9u3mHLOlpb1VRV6hYxd5n9D.zqhhD.G96', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2429, 'HENYTA GUSTIANA', NULL, 'user@gmail.com', '88111192Z', '$2y$10$Bo68plbochyq4k9GY1MXAe8E8LkNKMEU8lg61T6xq6OKWiYPPKIK6', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2430, 'SENTRI INDAH MAYASARI', NULL, 'user@gmail.com', '88111770Z', '$2y$10$PIaM5uAeugoDM6IzlFmZheLFmz7rT7MGYtQt6M9HIDH57OWG1.Vhi', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2431, 'RISKA SETIAWAN', NULL, 'user@gmail.com', '8812357ZY', '$2y$10$UBkciBzJVNFjD/chOmJ3i.HXgNFC5kixYUb/6BiVUT/OQsvm/bcx2', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2432, 'SYIRIIF ABDULLAH', NULL, 'user@gmail.com', '8812544ZY', '$2y$10$PwwPOQLCU82UNQ/unKJAr.Co.9wLt0tSnuOQJzUmWFpvLWto2goCK', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2433, 'BAYU NUGROHO YUWONO', NULL, 'user@gmail.com', '8813046ZY', '$2y$10$zwk8O23emOOj5hFbzW55BeO4yAuCfnWR4wZs5ot0mbk7biNB1BfN.', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2434, 'KHARISMA HARIS ADYANTO', NULL, 'user@gmail.com', '8814038ZY', '$2y$10$/PBQR6HNpH4BV0Ko0RlDaOsVjVcZQ6WzKsIjK1DKbOTTBWAgvS8vy', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2435, 'CAHYO TRI WIBOWO', NULL, 'user@gmail.com', '8815001ZY', '$2y$10$f.Cu7uAygvszssefINtzyOLuK6Id2yx4/7kHwrI6qxzM3I/LzyHlS', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2436, 'ROSKA RAUSYANFIKR A', NULL, 'user@gmail.com', '8910505Z', '$2y$10$JXscgN/khDRNjMyW8nA4ye5g4h9A8iKI9yrd5n9UPCLRYKafoEXTq', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2437, 'PRIMA OLIVIA SANTI', NULL, 'user@gmail.com', '89111690Z', '$2y$10$U9mqV4vsUOcQ.dW3/fTyKO/BjlW5UTWFbYXuezEswUiGx7xeiGpfG', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2438, 'HAFFY DWI KUSUMO', NULL, 'user@gmail.com', '89112163Z', '$2y$10$jMsJErIK6k2a0xrRjP17XevwPrW7dUWtKWNRnIR9z8Vfnmmy9Si1q', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2439, 'ADI WAHYUDI', NULL, 'user@gmail.com', '89112164Z', '$2y$10$btaJg31yMlOlKt3AUMGI7.MGwC/AKLJDgevCOh.UucEJ.W2O5bm4K', 3, NULL, NULL, '2021-02-09 03:33:57', '2021-02-09 03:33:57', NULL, '2021-02-09 10:33:57'),
(2440, 'BENNY ADHETYA', NULL, 'user@gmail.com', '89112248Z', '$2y$10$CSC3WFdJjbmV5Jwj67lIIOIlOjvxlgZMGhcfHlQCq30a9ypfvFRv6', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2441, 'FIFI SYAFITRI', NULL, 'user@gmail.com', '89112255Z', '$2y$10$WaiKnLLyHD6WAwIek43RbuyXZE3RNqtqhyn6C/RCy8A3fLOAuDTeC', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2442, 'NATASYA', NULL, 'user@gmail.com', '8911753Z', '$2y$10$L9NLhjdBW619SHtvetbog.OouL8gVOZ2W7C1EnSXqXqcCWqDsTJxa', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2443, 'EDO HARWINDO WIBISONO', NULL, 'user@gmail.com', '8914669ZY', '$2y$10$PYpaiKK2qXSjgJcxfO6UxednH/wBtTRTy4ZFIz2g2wmnH.AxRUt0K', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2444, 'SANTI DWI DESY LESTARI', NULL, 'user@gmail.com', '8915046ZY', '$2y$10$uiH2Aodw0gkgMYwWKZMuvOtd6bweNymOEGsf5FX8fJgPAUFqr2nxO', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2445, 'ASEP CEFY', NULL, 'user@gmail.com', '8916763ZY', '$2y$10$4u0xf1DBEY3kJXR8GMF7COm3104PRty2lNdFSVRrk/xxKuN5W7KQC', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2446, 'YOSEFIN', NULL, 'user@gmail.com', '8916769ZY', '$2y$10$GJ3sKmj5ILYYbwBBxU.d9ORaW78VY8FTN6a3ZhX7nZ63w8O583f6q', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2447, 'NOVRAN ANKOPA', NULL, 'user@gmail.com', '8916783ZY', '$2y$10$CWP7H5yIjjiCLX.sC0x4YuWVicOdefb3uwLlinECXzrZrFFnbdUy2', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2448, 'RAHMAT NOVRONANSYAH', NULL, 'user@gmail.com', '89161086ZY', '$2y$10$ZBbNrwbOJGSi6HGhuv261em/KMOnRHDv2gN9wVGnBwc2ERkDoU8nK', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2449, 'PUSPITA DIAN ARISTA', NULL, 'user@gmail.com', '89172149ZY', '$2y$10$vumoPOWE1QAVEhGl.VEK.O1elX1uiDmCdEkCUf5UwAfrG6LWa5PB.', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2450, 'ARIZA', NULL, 'user@gmail.com', '9015102ZY', '$2y$10$Da9IXYpp9q2pPgRvbaGQMeadqYx19A62qvbkyc00ZdBFrwPvvNgm2', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2451, 'A. SYAMSUL RISAL M', NULL, 'user@gmail.com', '90151106ZY', '$2y$10$tJbCV.1omBVzlBJ9cac/telC.BMqSnzWKFTrawS7sPqXgenLNZwl.', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2452, 'LUQI ABIDIN', NULL, 'user@gmail.com', '90151134ZY', '$2y$10$9yHlVsO1IWYAZzOjhli7JuxLrYVmyzwbjxs.mDgR3CUOtYjr0LlRm', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2453, 'DINA SILVANA SIBAGARIANG', NULL, 'user@gmail.com', '9016377ZY', '$2y$10$pnuLVTLc7ztoOiSkvIbsd.GhDfxORfOJa1SOMMZg7fEz9qkbgAqsO', 3, NULL, NULL, '2021-02-09 03:33:58', '2021-02-09 03:33:58', NULL, '2021-02-09 10:33:58'),
(2454, 'MEYER NIXON NELWAN', NULL, 'user@gmail.com', '9016801ZY', '$2y$10$1rTGfy2z/tf/xbi4VS7FteAI5Qof7LCd2gHGzXxhTIolnnpSS46T6', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2455, 'DAWANG WAHYUDA', NULL, 'user@gmail.com', '9114277ZY', '$2y$10$Uw6e1skK2iSMig.FGd5XvOExqyBor6fIftxIrh77B8p4lDcOIk7Be', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2456, 'RIDHO SATRIANA', NULL, 'user@gmail.com', '9114274ZY', '$2y$10$PFQtRKAmB9r/twyxEp/AcOhzKyZ2E72LoqvY8WefQeGxfoYrb6rPa', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2457, 'I KADEK DIAN PRASIDI', NULL, 'user@gmail.com', '9114712ZY', '$2y$10$/JKv.NIUusGU7iHqGCmBMONv7swaH3P7/hpBJz5gt4ODtGIeRDPHO', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2458, 'MAHENDRA YUDA BATARA', NULL, 'user@gmail.com', '9114932ZY', '$2y$10$wnTRpD/dWHTkvix2KOddx.EdnJ5Gzgul8k5C8FQr//510chFpWr7y', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2459, 'EKO NIO RIZKI', NULL, 'user@gmail.com', '9115806ZY', '$2y$10$dna6zelDYoyKiIPR.zSCwOclVf5iN1Xgap3dS4DnLYzKEa78SMVTu', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2460, 'ADRIAN MANSUR', NULL, 'user@gmail.com', '91151149ZY', '$2y$10$kNSPWuVwEvs3MWP0lHATeO5HclN8JH8JO7ED7LOPPoxsq7bklDeO.', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2461, 'MUHAMMAD FIKRI TAUHID', NULL, 'user@gmail.com', '9116466ZY', '$2y$10$eKXpNUW0b7rdKsyzF1rYMe7gN30CfZKlOOkTSCWsd.HcMCyfXlcY2', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2462, 'ARSANTI OKTAWATI SUSENO', NULL, 'user@gmail.com', '9116467ZY', '$2y$10$b1wn2sKsF8pwzaTvJjKO0uSEI0D7xei5Lg/xc3uBcsNM41HucDvTO', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2463, 'I MADE BENNY PRABAWA WIGUNA', NULL, 'user@gmail.com', '9116829ZY', '$2y$10$MSFbxWxMW7Lc4e.9Pc7K3u1MtZteIOMy6XswfyL5SMP/f2SHXdapq', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2464, 'AGUS ARYA JUNADI', NULL, 'user@gmail.com', '9116851ZY', '$2y$10$dYeHNsoAIRGk3ajM3/z0t.OrgW5PyDkZMBffpnZOHGI9U/Ja3CjYe', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2465, 'ANDREAS SURYAGANDA', NULL, 'user@gmail.com', '91161203ZY', '$2y$10$VDBquOaDkh8SxkY8mFudo.Enq8br6MRNWwXysSt8PTTezjpMD.mhC', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2466, 'FILIPUS ARDIAN WIJAYA', NULL, 'user@gmail.com', '91161200ZY', '$2y$10$dJG.EVq9imYnkF.aQd7N7O89nf8J3pTG7YPaeVhy7jX0Y2JoV5GBi', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2467, 'YONESA PUTRA', NULL, 'user@gmail.com', '91161180ZY', '$2y$10$994U3wBOz8qm6vASew4YOuk9JW9xSAQ6kBnld/INQKfjN.y1Psxse', 3, NULL, NULL, '2021-02-09 03:33:59', '2021-02-09 03:33:59', NULL, '2021-02-09 10:33:59'),
(2468, 'DIASTRID ANUGRAH PUTRI', NULL, 'user@gmail.com', '91161199ZY', '$2y$10$Wpo5Ajtp87C2Blavwo3I/OiCit52uHt7uB5nbcW0UDpztDjZPY3Yi', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2469, 'HENDRA NUR FAUZAN', NULL, 'user@gmail.com', '9213001TY', '$2y$10$fzchIs8YsGlpQM5Ima2gCuF0Igxui826cEqJkJDR4H3rRwufHr9JG', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2470, 'KRISTIAN SETYO ADI', NULL, 'user@gmail.com', '9214212ZY', '$2y$10$57le/m6R/TgeayTNlTicc.6JXrpgQyz/8abURv4lpfO6umOWUjiCe', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2471, 'ROZI ADI PUTRA', NULL, 'user@gmail.com', '9214401ZY', '$2y$10$rrigvUVq5Va6QlgObMFZpuqUzLQI/I34HFP0HapDywJnCMDhr4BPS', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2472, 'FARIKHA HIMAWATI', NULL, 'user@gmail.com', '9214405ZY', '$2y$10$irusPrUHdo2Oc3hSdKmR9ugMo4juzxx5pNaaIcWKg9J7oZ0dH7CjS', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2473, 'ARIO DWI PRABOWO', NULL, 'user@gmail.com', '9214340ZY', '$2y$10$bWCJ9yueH5IfHszTW3AGh.6Vw6wrYa2T63qxeeg5eBuTneQ2ZTIYC', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2474, 'MADA LINGGA NUGRAHA', NULL, 'user@gmail.com', '9214347ZY', '$2y$10$iNcn8x39bZmfcZU.KqB1ZeBWCUk/DnNcFIzURMzWeewpemn72ZKZa', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2475, 'WIKAN DIASWARA TRIJAYANTI', NULL, 'user@gmail.com', '9215230ZY', '$2y$10$micvjxMMTs.XKZqFHa6Z6uhXNWxyxhSyXM8nWzZ91VB.tzIGlGCBi', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2476, 'FIKRY YASRAH SALLUM', NULL, 'user@gmail.com', '9215242ZY', '$2y$10$81xWkLNSQzfljASspdi61uZswLcCgmorgjhbfIpKl/roWXMBaP6Wu', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2477, 'RIDHO RAMADHAN', NULL, 'user@gmail.com', '92151195ZY', '$2y$10$j2kWygz8XJYbiOtU3NyOPufAXx8UnT9WO3b9QAyHZeDDIY0gNRHha', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2478, 'APRIYANTI LINDANG', NULL, 'user@gmail.com', '92151201ZY', '$2y$10$FKN.cuOgujqJRphcXxlKRu6p/TcwaTAiB/Xrt7dHRDH9NgHWYpYka', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2479, 'EDI WIBOWO', NULL, 'user@gmail.com', '92151207ZY', '$2y$10$.R0uWUNPG4JsAt9K3bCdcedEaeNcLy2vvwVUBTIXaLqLxOQjH58VO', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2480, 'SUBAEDA BINTI ISRAIL', NULL, 'user@gmail.com', '92151231ZY', '$2y$10$49yNli7WdY0wpO5Oos3b7.hN8nYzpjfCp5E5DG8dAFYx1g6bw5V/y', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2481, 'ISTIQOMAH NURHAYATI', NULL, 'user@gmail.com', '9216552ZY', '$2y$10$k5EdBI/LwZpfaTZq1Lr89.ofqqBFL7o6/XZMj9LUvHououyXDK2NK', 3, NULL, NULL, '2021-02-09 03:34:00', '2021-02-09 03:34:00', NULL, '2021-02-09 10:34:00'),
(2482, 'ERLINA KURNIASARI', NULL, 'user@gmail.com', '9216603ZY', '$2y$10$RmXUiEVsAGmwM6NxdzChDeuEdy2GDY0WFfrvQTN0Cm62xm59sYu7G', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2483, 'TRINARMADA ANUGRAHA', NULL, 'user@gmail.com', '9216900ZY', '$2y$10$AA6Wt223vvStvJ7W4oVLLeeu6Of71ViXLmeOaIOmsDN51imyMB/vq', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2484, 'ACHMAD FAQIH', NULL, 'user@gmail.com', '9216970ZY', '$2y$10$WleOp2yQtUfu5yxmQHqQ4eKOS.k5wSjpf2KoVm9VCVtZ8XaIYgmHK', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2485, 'SINTA RAHMADANI', NULL, 'user@gmail.com', '92161809ZY', '$2y$10$dA4NofqPQQvIbrdS3rERye.6qVTc5a5uxLctU6Zb1/SBG/bCBFWQq', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2486, 'ORLANDO AMBARITA', NULL, 'user@gmail.com', '92162524ZY', '$2y$10$ORPILTtu1vpQEyXttIUzf.CRfyx8xHEQVMswzEiBVKplu5oe87n8a', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2487, 'BELLA PUSPITA SUGARI', NULL, 'user@gmail.com', '92163107ZY', '$2y$10$z8of8pInWWRg/LLi5MqKNugEIqJqJFQaM.9lu1eY9OTbQd/cjm9z.', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2488, 'IIS KARTIKA HALIM', NULL, 'user@gmail.com', '92171848ZY', '$2y$10$xHPzihfritXunvb1QJJI4u1Lmvbhd4qCFBccNQrtSy3b.CIHjJLQa', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2489, 'AHMAD NURIZKI RIFAIE', NULL, 'user@gmail.com', '9219435ZY', '$2y$10$gJ4z8NWswOl.Dx5dfRwBnOCfNuCsnLUrWAloQ0ip5mPFFvceLTwY.', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2490, 'MUANIF', NULL, 'user@gmail.com', '9314417ZY', '$2y$10$s5uBCipXUTQh77WFASI4m.NEPL4VU07iT6/bUom48KMTdQ225W1fK', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2491, 'MEIRA DEWI ARIANINGRUM', NULL, 'user@gmail.com', '9314418ZY', '$2y$10$d4LHKkx0BwHRuwC3duY4r.5WCafdJq.xuphdM90r1mM124CjlLzQy', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2492, 'ODY WIDODO', NULL, 'user@gmail.com', '9314412ZY', '$2y$10$EEidPL1q5MqEFhWdJaFtaexgstGrC42z9CX/CtrFKD/64E43ylGYG', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2493, 'KRISTIAN ADI WAHYUDI', NULL, 'user@gmail.com', '93151323ZY', '$2y$10$sQDs6XxdMYeCiPZWGxI4mu037qcLQeOaShMLylYcmNZmcY5s6AxWC', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2494, 'ALFAN ARIS SETIAWAN', NULL, 'user@gmail.com', '93151339ZY', '$2y$10$bX1VQcwyfHXZwTv5PtQAjekYQ48E8sQL.6J2RzKm7hPWxNX59h08G', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2495, 'KADEK RANI DWI NOVIYANTI', NULL, 'user@gmail.com', '93151391ZY', '$2y$10$FCst/ZuioWHGueq7EjN9z.Ws7msgQ.KS8LKZvTFCjyzMO/geD.rcK', 3, NULL, NULL, '2021-02-09 03:34:01', '2021-02-09 03:34:01', NULL, '2021-02-09 10:34:01'),
(2496, 'ANDHIP MAHDI MANGGALA', NULL, 'user@gmail.com', '93151404ZY', '$2y$10$2dVAuEWLEZBOhPnBs8FlxOv1MPsKLDMS.NXoi8Dr5tKbJKM424Fte', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2497, 'ELYANA ESTYANDHIKA', NULL, 'user@gmail.com', '93161031ZY', '$2y$10$EY332XFRDLA3QhDuz7DweuUq4SV6.uHRIMrfffB1886Ny33Ud1cDK', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2498, 'CIPTANANDA CITRAHARDHANI', NULL, 'user@gmail.com', '93161538ZY', '$2y$10$JzNUbI02Dz2n9MDvdilGV.8wMgG8Kh1sIsQEqD0ynxbLlAHouChf.', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2499, 'EDWAR KENEDY', NULL, 'user@gmail.com', '93161432ZY', '$2y$10$.AmOGZJXah22wtB1KW8uve9XdD5oQekn3JC4WvRBjVDu4AzZ3IwPa', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2500, 'ANNISA MAYANG KENANGA DANUWIJAYA', NULL, 'user@gmail.com', '93161469ZY', '$2y$10$d8Toi8IceEf4QYXEB09Bde815EnYTJ29Tt9NqO50/StZcseoIbhCW', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2501, 'RIZKI PRASETYO', NULL, 'user@gmail.com', '93162823ZY', '$2y$10$I9C16Rm7I42/veAEFQ.wg..BoAfNrlDFU.1rw2ow8BuE7o2Eidpsm', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2502, 'RADEN BAGUS JATMIKO WIDYANTO WIBOWO', NULL, 'user@gmail.com', '93162805ZY', '$2y$10$R7oKrjZoExgNjhnp63wWJOmh387SvxXmwl2lMHvcp4dg1BgwxjRX6', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2503, 'GABRIEL LIONY', NULL, 'user@gmail.com', '93163376ZY', '$2y$10$rOuou/7o2SaIpT8wS/lbPe.saQPTYGUeAulG161fh75g8pH7fYoOq', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2504, 'RIZAL FAJAR PRIATNA', NULL, 'user@gmail.com', '93163406ZY', '$2y$10$3DLixD9FAmqqQh6nS/SIuuA88vdHydlOQ.Qqn9Vs//ZTDPZsSSRii', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2505, 'FAIZAL HARITS HASIBUAN', NULL, 'user@gmail.com', '93171135ZY', '$2y$10$.0JYDz4wpXA3daVmeikPSuwf.kraV9tpBtIyCbM/Gg6XgOwY1jvYi', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2506, 'RONI ANANTA PURBA', NULL, 'user@gmail.com', '93171439ZY', '$2y$10$if2Pdc37Tl6PpbpyWWene.Vm8xZGiTFKeVQrhFs.VSrS/qv6XCefG', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2507, 'FEBRIANA RUSYDA', NULL, 'user@gmail.com', '93171849ZY', '$2y$10$6LXg2512G1xOraPfZLOyNOx6LsMv852IuviV6RLugMO14lODV78RC', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2508, 'MUHAMMAD IHSAN', NULL, 'user@gmail.com', '93171850ZY', '$2y$10$Cdm7TauTCbfDN0vZIbAQDeQ5hnqyVdWYZCbO0PLVpvqHmaEQ6RIie', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2509, 'ADRIAN BARTENPUTRA', NULL, 'user@gmail.com', '9318026ZY', '$2y$10$58jCcK4RxOfs58JRCxiUNe9FlLRpF52bC65Tw/yJZpr4/IJJ.37EO', 3, NULL, NULL, '2021-02-09 03:34:02', '2021-02-09 03:34:02', NULL, '2021-02-09 10:34:02'),
(2510, 'I GUSTI NGURAH BAGUS SURYA ADI BASKARA', NULL, 'user@gmail.com', '94151423ZY', '$2y$10$OgOuXr4K7F7/Dkc0VHKOlOREonouANHSo00UKYTdVSx1qozwR7vCu', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2511, 'ANDI AGUS TRIWIDODO', NULL, 'user@gmail.com', '94161714ZY', '$2y$10$Ji2No6E.I2NG.q0ar5qXPug44k0ftPTUZ5auZcE6VtFya0Nj7PdPW', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2512, 'BERNAT BANDORO', NULL, 'user@gmail.com', '94161739ZY', '$2y$10$xUCeQG5zUqnbTPpMvHK8f.4HqXNy0QW5YqwagGX6/QJCPSnAXHH2a', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2513, 'SEVREN BUANA PUTRA', NULL, 'user@gmail.com', '94162906ZY', '$2y$10$47eWs1rLAodaumrWfsbNMuRHxgIXzgHd0Cf3.BNpVJ5m9BjLd0Btu', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2514, 'EFI YULIANI', NULL, 'user@gmail.com', '94163470ZY', '$2y$10$yeocJ2FPtPBw15oUTmerhudTKiU8YC6Wm7oOtc9jmVexJVs87DnFS', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2515, 'INA RAHMATIKA FAJRI', NULL, 'user@gmail.com', '94171136ZY', '$2y$10$4.YpXAlkJHbUKW3ZhoYUUevw7MONyBl0jGMQ.46liYvD03U5kRTP2', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2516, 'NOLA VILA VIOLITA', NULL, 'user@gmail.com', '94171137ZY', '$2y$10$xUVXP1NPGDlmkIwcna9XhOa7keocmMM1aix.Y3eQs52Ub7FH/eD/a', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2517, 'MARINA DWILIA SYAFITRI', NULL, 'user@gmail.com', '94171851ZY', '$2y$10$s/9odkVk5UWlUDGUpNAyeOb5UTMiRVkkFDbq6XptTlUUA5BXoph1S', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2518, 'YOHANA LORIVA AMBARITA', NULL, 'user@gmail.com', '94171852ZY', '$2y$10$DaZdfY5x63x4GuKWMC77DO3SE920Zg06uSaGw2DsHyUcT2RXtKvl.', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2519, 'EKA NOVYANA', NULL, 'user@gmail.com', '94171853ZY', '$2y$10$lZhwtiyQfc9lqfPD64XqTOD2e1gJVRrkgw.yq1GYU0glmxD2FpinK', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2520, 'REZA AYU KAHFI', NULL, 'user@gmail.com', '9419036ZY', '$2y$10$jxn5ip.Kyu5/EgeSlaTqKuqmp39W8rsb6K.GXRHbSnMtC8ZimYlZW', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2521, 'ARDIYAN WISNU ADI', NULL, 'user@gmail.com', '9419436ZY', '$2y$10$tB.x0zEiXA/P7RkQIKkQAOHktdiSVdXeZaKr3NQPSyAWUeA9rWkYm', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2522, 'DODY ASHARA GHAFAR LAKSUMA', NULL, 'user@gmail.com', '94191931ZY', '$2y$10$YEGEZkCN98dnUKzI2WPDz.S4nQNui6.t54PzpoO5zX8Oge5PD5Iz.', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2523, 'RYAN BUSRA KOWARA', NULL, 'user@gmail.com', '95161054ZY', '$2y$10$C8SurZdlrD80phKait01JOWUrXBMjXxRvUSpAss.R6Gv87N98YR2m', 3, NULL, NULL, '2021-02-09 03:34:03', '2021-02-09 03:34:03', NULL, '2021-02-09 10:34:03'),
(2524, 'HAMZAH NUR FAHREZA', NULL, 'user@gmail.com', '95161784ZY', '$2y$10$YkRQoGm0osbHwi7L.wtHme7o/YrvQjqaSws3u3XLvA2myOh1sN8t2', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2525, 'MOCHAMAD TAUFAN RIZKIA', NULL, 'user@gmail.com', '95161789ZY', '$2y$10$j4KWkPCfPH8QzmagyMscs.7w2/SnLhIyZxPO1xoTiRwxJ.qrSStem', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2526, 'MEYLA YAN SARI', NULL, 'user@gmail.com', '9517478ZY', '$2y$10$21wzWUUDhroxOSmP0ctxZuEcMgeq8Clq8fatsfAP3Ckww9rCtZXQK', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2527, 'DEWI ZULFANA', NULL, 'user@gmail.com', '95171440ZY', '$2y$10$75LD.SqggT9A23ZU.aOOuOYAow8/SzW2ASEKQGq4PcTyfHjelMEhe', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2528, 'SOFA NADHIRA', NULL, 'user@gmail.com', '95171854ZY', '$2y$10$UtvtIw9/zH9lidfuFWTwnOTmj5rJSwZanS0toL046SVZoJE.wtjqW', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2529, 'ALWAN HABIBIE', NULL, 'user@gmail.com', '95171855ZY', '$2y$10$nqW463R8PqvUv72HCxzpTOGjAgwhkJGYhjJ8IvwLrQy2tf5aJHd/y', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2530, 'ADDENIN NADIDAH', NULL, 'user@gmail.com', '95171441ZY', '$2y$10$73k2DGRP/v3sXpguA1AmfunnJf./IK3R6KS6NQGHXMimFXTnN3UBW', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2531, 'DADANG ARIS SETYO BUDI', NULL, 'user@gmail.com', '9619037ZY', '$2y$10$G8D8bclIb.qb9eLw6VtlQO12Eb8AfkR41qCZ7ZewdZ0Gs84WtwsTK', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2532, 'FETRISYA SIHOMBING', NULL, 'user@gmail.com', '9619437ZY', '$2y$10$wpEFTBhBO3JQyXoXmGC0J.wwI0D8IDtW4QOrMzkg/OuW/puU/ku7S', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2533, 'BEMI PRATAMA', NULL, 'user@gmail.com', '9718001XAY', '$2y$10$vWIUncmSnzexGRtcArCjB.GaSLi7kDZSaVfJ7B55CbNiNQ6whEUSu', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2534, 'PRASETYO', NULL, 'user@gmail.com', '9718002XAY', '$2y$10$VDfQr4FofhzW.DLAWb.w0.g7f1nNQxIEiWSV16VSwgKUUpfjpxuCK', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2535, 'MUHAMMAD YUDA KHABIBULLOH', NULL, 'user@gmail.com', '9720375ZY', '$2y$10$NM3zk/R8YdKK/4WECeFbmeQ2xNjjdjXf1pMqS1RcNM1UwEyyeGyCW', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2536, 'ULFA DWI SAFITRI', NULL, 'user@gmail.com', '9817001XAY', '$2y$10$.URNOOxdmKW4x2B870UjHO3ETN80AIH9xiJsU2VjF7II8HEBpqmWa', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2537, 'DEBI TAMARA', NULL, 'user@gmail.com', '9817002XAY', '$2y$10$jBYOvN/slajhE4pb5avqae1qqn31LXkq87j4dqeGjwRPzpaaEgUhW', 3, NULL, NULL, '2021-02-09 03:34:04', '2021-02-09 03:34:04', NULL, '2021-02-09 10:34:04'),
(2538, 'OLLDRY TIARA MUSTIKA', NULL, 'user@gmail.com', '9820132ZY', '$2y$10$0KOm37LGkufp0Ax5TzMV1O3CQBkwnPCrdrPa4flznYxWlFfeeBE.i', 3, NULL, NULL, '2021-02-09 03:34:05', '2021-02-09 03:34:05', NULL, '2021-02-09 10:34:05'),
(2539, 'AQIBAH RIZKYTA NOVADELLYA', NULL, 'user@gmail.com', '9820606ZY', '$2y$10$T/cw8lv3RVEL.bh1LptXAOyv9PosPvXqhzEV8mrMZIIyqwDXHssC2', 3, NULL, NULL, '2021-02-09 03:34:05', '2021-02-09 03:34:05', NULL, '2021-02-09 10:34:05'),
(2540, 'Wahyu', NULL, 'wahyu@gmail.com', '0123', '$2y$10$Rsulzbnx1nNLhU3S5GNrcep1mE0rbL21SDL75tT/Zu2R53uAfxnFG', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2541, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$.uPym57ygmEwo276ru1eP.PUDuqMQeUtHbgB3G6IareroByaLf.t6', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2542, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$9nPxtv.23lGF5hVVgZV3uud/bRBVxDRFBaC22ULICnCwxypXgknGW', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2543, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$4c0xR2JkoN76i.BuY.7ld..miIcBgBrLKo6niY.OsEIuAWNEkGHuS', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2544, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$dQAK5TAMw8PaBwzk.3LNeuJL2KvLqgvkG0zzlr0j3LHJpOyfNbGuy', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2545, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$biNWGByJ.iVgC/495vOVielxo.z9HM5q6UnKve7jkSU51s1PG1h3u', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2546, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$eb5ZvsC198JQ5hjMQJsMduMMCVXa7rg0G6Qi/ypXoOdKmSiddu3GC', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2547, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$iLzbhvswmgRTaICUGc5E1e1kjMTIjwDhk.gWSpO3I0H.cc2m3mGYi', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2548, 'ANDI AGUS T', NULL, 'agus@gmail.com', '94161714ZY', '$2y$10$pFY3nbk7bMMog56D85l0geml86kgWCDXwbQcWVd8Wk7O.9GQA5Tx6', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2549, 'TOHA NGAFIF', NULL, 'user@gmail.com', '6485022T', '$2y$10$aU0GmLA6nYNgINQfNlIWP.Jj8IMU1bCuMooLgdNpTMcD4aDwgvNxe', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2550, 'IGNATIUS SUMEDIYA', NULL, 'user@gmail.com', '6485439K3', '$2y$10$kNc9lSJmfKWb1uSUvdLS/udP3PMGwYYJ2WNgQ4a.MBs.cNfQ5OcJq', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2551, 'FRANKY PAULUS', NULL, 'user@gmail.com', '6495025T', '$2y$10$sFHDWTArHIf8CiwKDmIIEuHAF.3pG/3phmC880VOu6RyIOmM8sG0a', 3, NULL, NULL, '2021-03-06 12:33:46', '2021-03-06 12:33:46', NULL, '2021-03-06 19:33:46'),
(2552, 'RIDHA DIANINGRATRI', NULL, 'dianingratri.ridha@gmail.com', '8107102Z', '$2y$10$jhAmFvqG1tMkUS1RP83.guDTZ/MTqddv3peztymwEgUNKXxY.RADq', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47'),
(2553, 'DWI YUANITA HARCHAN', NULL, 'dwi_yuanita@pln.co.id', '8106293Z', '$2y$10$4RdGDszV/1e3jXtK9lvg7./gA46qdBH9B5omtbSsOedbswejyDLay', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47'),
(2554, 'BADRUL MUSTHAFA', NULL, 'badrul.musthafa@pln.co.id', '6794008D', '$2y$10$dQRq4AKcYAsW0tNGQuam7O93D/VGahxkjBsftKqpgTlWVNDbPX2tW', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47'),
(2555, 'DODI HENDRA', NULL, 'dodi@gmail.com', '6994018D', '$2y$10$dcqrxq4219Ra/7gOt/pVoudVxl64QUeW9Su9C0pncggBCXT/Vab92', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47'),
(2556, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$qP5e3JaIxuWIQSBuUN9/Fe/rph.Ll/lf82AsUwaBYPI3kMkFNuD6e', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47'),
(2557, 'Roby', NULL, 'roby@gmail.com', '0789', '$2y$10$frMAaUZckXEwPC0Uy426qOMwwKB7bkggz0odk7vOTsos2cBLZcb5m', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47'),
(2558, 'NUR SYAMSU SAFRILLAH', NULL, 'syahsu@gmail.com', '7095123R', '$2y$10$Qnfi6S2QsMSYxzKZ71dmSOD0y51Ht24JSO.6aAttQhJlXq4.4OmVW', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47'),
(2559, 'andi agus', NULL, 'andiaja@gmail.com', 'admin', '$2y$10$gR0qxaOCR37IHH5iizS80.ZSw87RB.ureDKBfUWQAy4PPqAXPy2Jm', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47'),
(2560, 'noviansyah', NULL, 'novian@gmail.com', '12345', '$2y$10$nEKvmilfHdBIVm73hTMt0OdUPq1sUkUbVI9kwPtnQhpFGcmMGg/ce', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47'),
(2561, 'Wahyu', NULL, 'wahyu@gmail.com', '1234', '$2y$10$8rPTliPeKkiI5SROGr05BuK5PuBVnO6xP/OboaDLJhauxutT9ljyG', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-19 05:21:22', NULL, '2021-03-06 19:33:47'),
(2562, 'Aurelia F R', NULL, 'liafrchmdi@gmail.com', '05111740000141', '$2y$10$GNZBuTS8noXn9cRtRCoHB.t7x9xnNcEjRk0gE4ZJR2SrL5mbBUPeW', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47'),
(2563, 'ROMMY ARIE PRASETIA', NULL, 'rommy@gmail.com', '88112003Z', '$2y$10$D4vUWVjgTAoGp5hg8pCL..QNE2tbkifiLzrTSfyTps3Exn8cvihwu', 3, NULL, NULL, '2021-03-06 12:33:47', '2021-03-06 12:33:47', NULL, '2021-03-06 19:33:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_type`
--

CREATE TABLE `user_type` (
  `user_type_id` tinyint(4) NOT NULL,
  `type` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(20) DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `type`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 'superadmin', '2020-11-12 17:31:31', NULL, '2020-11-12 17:31:31', NULL),
(2, 'admin', '2020-11-12 17:31:31', NULL, '2020-11-12 17:31:31', NULL),
(3, 'pusdiklat', '2020-11-12 17:31:31', NULL, '2020-11-12 17:31:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `e_books`
--
ALTER TABLE `e_books`
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
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_auth`
--
ALTER TABLE `user_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `document`
--
ALTER TABLE `document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `e_books`
--
ALTER TABLE `e_books`
  MODIFY `id_ebook` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1376;

--
-- AUTO_INCREMENT untuk tabel `kategori_type`
--
ALTER TABLE `kategori_type`
  MODIFY `kategori_type_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `likesdocument`
--
ALTER TABLE `likesdocument`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_access`
--
ALTER TABLE `user_access`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_auth`
--
ALTER TABLE `user_auth`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2564;

--
-- AUTO_INCREMENT untuk tabel `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `likesdocument`
--
ALTER TABLE `likesdocument`
  ADD CONSTRAINT `likesdocument_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_auth` (`id`),
  ADD CONSTRAINT `likesdocument_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_auth` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
