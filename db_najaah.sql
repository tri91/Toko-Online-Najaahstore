-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2019 at 03:45 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_najaah`
--

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(11) UNSIGNED NOT NULL,
  `kabupaten_id` int(11) NOT NULL DEFAULT 0,
  `nama_website` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `facebook` varchar(50) NOT NULL DEFAULT '0',
  `no_telp` varchar(50) NOT NULL DEFAULT '0',
  `nama_bank` varchar(50) NOT NULL DEFAULT '0',
  `alamat` varchar(255) NOT NULL DEFAULT '0',
  `favicon` varchar(255) NOT NULL DEFAULT '0',
  `logo` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `kabupaten_id`, `nama_website`, `email`, `facebook`, `no_telp`, `nama_bank`, `alamat`, `favicon`, `logo`) VALUES
(1, 35862, 'NajaahStore - Toko Muslim Indonesia', 'triahoo@gmail.com', 'http://facebook.com/muharrikunnajaah', '085743071992', 'Bank BRI', 'Ngawonggo, RT.020/RW.009, Ngawonggo, Kec. Ceper, Kabupaten Klaten', 'icon_najaah.png', 'logo_najaah_store.png');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `nama_kabupaten` varchar(45) DEFAULT NULL,
  `provinsi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `nama_kabupaten`, `provinsi_id`) VALUES
(35862, 'KLATEN', 32676);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` varchar(45) DEFAULT NULL,
  `kabupaten_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `nama_kecamatan`, `kabupaten_id`) VALUES
(35863, 'PRAMBANAN', 35862),
(35880, 'GANTIWARNO', 35862),
(35897, 'WEDI', 35862),
(35917, 'BAYAT', 35862),
(35936, 'CAWAS', 35862),
(35957, 'TRUCUK', 35862),
(35976, 'KEBONARUM', 35862),
(35984, 'JOGONALAN', 35862),
(36003, 'MANISRENGGO', 35862),
(36020, 'KARANGNONGKO', 35862),
(36035, 'CEPER', 35862),
(36054, 'PEDAN', 35862),
(36069, 'KARANGDOWO', 35862),
(36089, 'JUWIRING', 35862),
(36109, 'WONOSARI', 35862),
(36128, 'DELANGGU', 35862),
(36145, 'POLANHARJO', 35862),
(36164, 'KARANGANOM', 35862),
(36184, 'TULUNG', 35862),
(36203, 'JATINOM', 35862),
(36222, 'KEMALANG', 35862),
(36236, 'NGAWEN', 35862),
(36250, 'KALIKOTES', 35862),
(36258, 'KLATEN UTARA', 35862),
(36267, 'KLATEN TENGAH', 35862),
(36277, 'KLATEN SELATAN', 35862);

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id_kelurahan` int(11) NOT NULL,
  `nama_kelurahan` varchar(45) DEFAULT NULL,
  `kecamatan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(32676, 'JAWA TENGAH');

-- --------------------------------------------------------

--
-- Table structure for table `rekening_bank`
--

CREATE TABLE `rekening_bank` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `cabang` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening_bank`
--

INSERT INTO `rekening_bank` (`id_rekening`, `nama_bank`, `cabang`, `atas_nama`, `no_rekening`) VALUES
(1, 'Bank BCA', 'Klaten', 'Triyanto', '11805462'),
(2, 'Bank BRI', 'Klaten', 'Triyanto', '84215132');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(10) UNSIGNED NOT NULL,
  `judul` varchar(50) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `judul`, `caption`, `gambar`, `url`) VALUES
(6, 'Promo Mushaf Asli Madina', 'Mushaf al-Madinah al-Qur’an al-Karim, Cetakan Dar Syafi’i', 'Promo_Mushaf_Asli_Madina.jpg', 'http://localhost/najaahstore/produk/detail_produk/15-mushaf-al-madinah-al-quran-al-karim-ukuran-a5'),
(7, 'Islamic Portable Harddisk', 'Berisi ribuan konten-konten islami yang bermutu dan berkualitas', 'Promo_Islamic_Portable_Harddisk.jpg', 'http://localhost/najaahstore/produk/detail_produk/16-harddisk-eksternal-portable-yufid-volume-01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_alamat_kirim`
--

CREATE TABLE `tb_alamat_kirim` (
  `id_alamat` int(10) UNSIGNED NOT NULL,
  `kecamatan_id` int(10) UNSIGNED NOT NULL,
  `nama_alamat` varchar(50) NOT NULL,
  `nama_penerima` varchar(50) NOT NULL,
  `nomor_penerima` varchar(50) NOT NULL,
  `alamat_lengkap` varchar(255) NOT NULL,
  `kode_pos` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alamat_kirim`
--

INSERT INTO `tb_alamat_kirim` (`id_alamat`, `kecamatan_id`, `nama_alamat`, `nama_penerima`, `nomor_penerima`, `alamat_lengkap`, `kode_pos`) VALUES
(5, 36003, 'Alamat Rumah', 'Jaka Digdaya', '085745071992', 'Sonodimulyo RT.05/RW.02, Planggu', 57467),
(6, 36258, 'Alamat Kantor', 'Jaka Digdaya', '085745071992', 'Belang Wetan', 57438),
(7, 35897, 'Alamat Rumah', 'Ardita Cinta Laura', '081212566800', 'Dukuh Kemuning RT.03/RW.21', 54421);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Aksesoris'),
(2, 'Al Quran'),
(3, 'Buku'),
(4, 'Pakaian');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konfirmasi_transfer`
--

CREATE TABLE `tb_konfirmasi_transfer` (
  `id_konfirmasi` int(10) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL DEFAULT '0',
  `nama_pengirim` varchar(255) NOT NULL DEFAULT '0',
  `bank_pengirim` varchar(50) NOT NULL,
  `rekening_pengirim` varchar(20) NOT NULL DEFAULT '0',
  `rekening_tujuan` varchar(50) NOT NULL DEFAULT '0',
  `jumlah_transfer` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT '0',
  `waktu_konfirmasi` datetime NOT NULL DEFAULT current_timestamp(),
  `bukti_transfer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_konfirmasi_transfer`
--

INSERT INTO `tb_konfirmasi_transfer` (`id_konfirmasi`, `kode_transaksi`, `nama_pengirim`, `bank_pengirim`, `rekening_pengirim`, `rekening_tujuan`, `jumlah_transfer`, `status`, `waktu_konfirmasi`, `bukti_transfer`) VALUES
(16, 'TRX-18072019-000001', 'Jaka Digdaya', 'BCA', '342342341', 'Bank BCA - 11805462', '25945', 'N', '2019-07-18 23:05:59', 'ba12c1d00f19bed8cff76acebdf079fd.jpg'),
(17, 'TRX-19072019-000001', 'Jaka Digdaya', 'BCA', '342342341', 'Bank BCA - 11805462', '147495', 'N', '2019-07-19 00:58:48', '0cdc94a37ed4c7185a9c77665fdf2fcd.jpg'),
(18, 'TRX-19072019-000002', 'Ardita Cinta Laura', 'BRI', '6534333009', 'Bank BRI - 84215132', '71396', 'N', '2019-07-19 01:15:23', '31cd50e7a16f8d62cff554bd60b1148e.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ongkir`
--

CREATE TABLE `tb_ongkir` (
  `id_ongkir` int(10) UNSIGNED NOT NULL,
  `kecamatan_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `biaya` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ongkir`
--

INSERT INTO `tb_ongkir` (`id_ongkir`, `kecamatan_id`, `biaya`) VALUES
(1, 35957, '8000'),
(2, 35936, '5000'),
(3, 36054, '10000'),
(4, 35976, '9000'),
(5, 35917, '5000'),
(6, 36222, '8000'),
(7, 36109, '7000'),
(8, 35897, '9000'),
(9, 36184, '6000'),
(10, 35863, '8500'),
(11, 36145, '5500'),
(12, 36236, '6000'),
(13, 36003, '7000'),
(14, 36258, '12000'),
(15, 36267, '8500'),
(16, 36277, '9000'),
(17, 36020, '5500'),
(18, 36069, '8000'),
(19, 36164, '5500'),
(20, 36250, '6000'),
(21, 36089, '7000'),
(22, 35984, '5500'),
(23, 36203, '6000'),
(24, 35880, '8000'),
(25, 36128, '9000'),
(26, 36035, '8500');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `alamat_id` int(10) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `total_ongkir` varchar(50) NOT NULL,
  `total_harga` varchar(50) NOT NULL,
  `total_fee` varchar(50) DEFAULT NULL,
  `kode_unik` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `waktu_konfirmasi` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`id_pemesanan`, `user_id`, `alamat_id`, `kode_transaksi`, `total_ongkir`, `total_harga`, `total_fee`, `kode_unik`, `tanggal`, `waktu_konfirmasi`, `status`) VALUES
(14, 19, 4, 'TRX-18072019-000001', '5000', '19000', '1000', 945, '2019-07-18 23:02:51', '2019-07-18 23:06:57', 'Dikirim'),
(15, 19, 6, 'TRX-19072019-000001', '12000', '130000', '5000', 495, '2019-07-19 00:56:44', '2019-07-19 07:31:27', 'Dikirim'),
(16, 20, 7, 'TRX-19072019-000002', '9000', '59000', '3000', 396, '2019-07-19 01:13:51', '2019-07-19 01:16:04', 'Dikirim'),
(17, 20, 7, 'TRX-19072019-000003', '90000', '9495000', '125000', 209, '2019-07-19 07:30:53', NULL, 'Belum Dibayar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan_detail`
--

CREATE TABLE `tb_pemesanan_detail` (
  `id_pemesanan_detail` int(10) UNSIGNED NOT NULL,
  `pemesanan_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `produk_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `harga` varchar(50) NOT NULL DEFAULT '0',
  `fee_jastip` varchar(50) DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemesanan_detail`
--

INSERT INTO `tb_pemesanan_detail` (`id_pemesanan_detail`, `pemesanan_id`, `produk_id`, `harga`, `fee_jastip`, `qty`) VALUES
(21, 14, 17, '19000', '1000', 1),
(22, 15, 18, '130000', '5000', 1),
(23, 16, 11, '59000', '3000', 1),
(24, 17, 16, '1899000', '25000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengiriman`
--

CREATE TABLE `tb_pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `pemesanan_id` int(11) DEFAULT NULL,
  `nama_kurir` varchar(50) DEFAULT NULL,
  `nomor_kurir` varchar(50) DEFAULT NULL,
  `tgl_kirim` datetime DEFAULT current_timestamp(),
  `tgl_terima` datetime DEFAULT NULL,
  `nama_penerima` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengiriman`
--

INSERT INTO `tb_pengiriman` (`id_pengiriman`, `pemesanan_id`, `nama_kurir`, `nomor_kurir`, `tgl_kirim`, `tgl_terima`, `nama_penerima`) VALUES
(3, 14, 'Benny', '13323122898', '2019-07-18 23:08:10', NULL, NULL),
(4, 16, 'Benny', '13323122898', '2019-07-19 07:29:13', NULL, NULL),
(5, 15, 'Benny', '13323122898', '2019-07-19 07:31:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengiriman_detail`
--

CREATE TABLE `tb_pengiriman_detail` (
  `id_pengiriman_detail` int(10) UNSIGNED NOT NULL,
  `pengiriman_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(50) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengiriman_detail`
--

INSERT INTO `tb_pengiriman_detail` (`id_pengiriman_detail`, `pengiriman_id`, `status`, `keterangan`, `timestamp`) VALUES
(7, 3, 'Dalam Pengiriman', 'Pesanan Sedang Dikirim Oleh Kurir', '2019-07-18 23:08:10'),
(8, 4, 'Dalam Pengiriman', 'Pesanan Sedang Dikirim Oleh Kurir', '2019-07-19 07:29:13'),
(9, 5, 'Dalam Pengiriman', 'Pesanan Sedang Dikirim Oleh Kurir', '2019-07-19 07:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `fee_jastip` varchar(50) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar_1` varchar(255) DEFAULT NULL,
  `gambar_2` varchar(255) DEFAULT NULL,
  `gambar_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `kategori_id`, `kode_produk`, `nama_produk`, `harga`, `fee_jastip`, `berat`, `deskripsi`, `gambar_1`, `gambar_2`, `gambar_3`) VALUES
(8, 2, 'ALQU001', 'Alquran Tajwid Al-Qahhar ukuran A5', '90000', '5000', '800', 'Al-Qur’an Tajwid Al-Qahhar, Penerbit Maghfirah Pustaka, format alquran hardcover, ukuran Alquran 14.5 x 21 cm, berat Alquran packing kurang lebih 800 gram, Harga Rp 90.000,-', 'Alquran_Tajwid_Al-Qahhar_ukuran_A5_(Maghfirah_Pustaka)-1.jpg', 'Alquran_Tajwid_Al-Qahhar_ukuran_A5_(Maghfirah_Pustaka)-2.jpg', 'Alquran_Tajwid_Al-Qahhar_ukuran_A5_(Maghfirah_Pustaka)-3.jpg'),
(9, 1, 'AKSE001', 'Jam Tangan DZAF Bulat - Diameter 35', '250000', '5000', '500', 'Jam tangan dzaF yang merupakan produksi asli dalam negeri ini mengaplikasikan angka arab yang tentunya akan membuat setiap waktu dan setiap detik bagi kita menjadi serasa lebih dekat dengan nilai-nilai Islam.\r\n\r\nSPESIFIKASI JAM TANGAN DZAF:\r\nFrame: Kayu Sonokeling\r\nBackground : Kayu Sungkai\r\nStrap: Genuine Leather\r\nDiameter : 35 Bulat\r\nMovement: Epson Corp Japan', 'Jam_Tangan_DZAF_Bulat_Diameter_35-1.jpg', 'Jam_Tangan_DZAF_Bulat_Diameter_35-2.jpg', 'Jam_Tangan_DZAF_Bulat_Diameter_35-3.jpg'),
(10, 3, 'BUKU001', '10 Jurus Penangkal Sihir - Dengkai dan Ain', '7000', '2000', '144', 'Buku 10 Jurus Penangkal Sihir Dengki dan Ain, Buku cetak edisi softcover, tebal buku44 halaman, ukuran buku 12 x 18 cm, dan dengan berat 144 gram. Penulis: Ibnul Qayyim Al-Jauziyyah, Penerbit: At-Tibyan, Harga Rp. 7.000,-', 'Buku_10_Jurus_Penangkal_Sihir_-_Dengkai_dan_Ain_AIN_-AT-TIBYAN-01.jpg', 'Buku_10_Jurus_Penangkal_Sihir_-_Dengkai_dan_Ain_AIN_-AT-TIBYAN-02.jpg', 'Buku_10_Jurus_Penangkal_Sihir_-_Dengkai_dan_Ain_AIN_-AT-TIBYAN-03.jpg'),
(11, 3, 'BUKU002', 'Buku Anak - 10 Sahabat Cilik Rasulullah', '59000', '3000', '258', 'Buku 10 Sahabat Cilik Rasulullah Shallallahu\'alaihi wa Sallam, Buku cetak edisi softcover dan full colour/warna, tebal buku 143 halaman, ukuran buku 18 x 24 cm dan dengan berat 258 gram. Penulis: Muhammad Al-Mathariqi, Penerbit: Fatiha Kids, Harga Rp. 59.000,-', 'Buku_10_Sahabat_Cilik_Rasulullah-01.jpg', 'Buku_10_Sahabat_Cilik_Rasulullah-02.jpg', 'Buku_10_Sahabat_Cilik_Rasulullah-03.jpg'),
(12, 3, 'BUKU003', 'Buku 100 Dosa yang Diremehkan Wanita', '54000', '3000', '518', 'Buku 100 Yang Diremehkan Wanita New Cover Penerbit Al-Qowam, Buku cetak edisi softcover, tebal buku 244 halaman, ukuran 15 x 23 cm, dan dengan berat 518 gram, Harga Rp. 54.000,-', 'Buku_100_Dosa_yang_Diremehkan_Wanita-01.jpg', 'Buku_100_Dosa_yang_Diremehkan_Wanita-02.jpg', 'Buku_100_Dosa_yang_Diremehkan_Wanita-03.jpg'),
(13, 2, 'ALQU002', 'Al-Quran Al-Fatih Ukuran A5', '70000', '3000', '450', 'Al-Qur’an Al-Fatih Ukuran A5, Penerbit Al-Fatih, format alquran hardcover, tebal alquran 643 halaman, ukuran alquran 14 x 21 cm, berat packing alquran +/- 450 gram, Harga Rp. 70.000,-', 'Al-Quran_Al-Fatih_Ukuran_A5.jpg', 'Al-Quran_Al-Fatih_Ukuran_A5-01.jpg', 'Al-Quran_Al-Fatih_Ukuran_A5-02.jpg'),
(14, 2, 'ALQU003', 'Al-Quran Hafalan Cepat Al-hafidz -Cordoba', '178000', '5000', '1400', 'Al-Qur’an Hafalan Cepat Al-Hafidz, Cetakan Cordoba, Ukuran Alquran 14,5 x 20,5 Berat alquran 1400 gram, Harga Rp. 178.000,-', 'Al-Quran_Hafalan_Cepat_Al-hafidz_-Cordoba.jpg', 'Al-Quran_Hafalan_Cepat_Al-hafidz_-Cordoba-01.jpg', 'Al-Quran_Hafalan_Cepat_Al-hafidz_-Cordoba-02.jpg'),
(15, 2, 'ALQU004', 'Mushaf Al-Madinah Al-Quran Al-Karim Ukuran A5', '100000', '3000', '850', 'Mushaf al-Madinah al-Qur’an al-Karim, Cetakan Dar Syafi’i, format alquran hardcover, ukuran alquran 15 x 21.5 cm, berat alquran 850 gram, Harga Rp. 100.000,-', 'Mushaf_Al-Madinah_Al-Quran_Al-Karim_Ukuran_A5.jpg', 'Mushaf_Al-Madinah_Al-Quran_Al-Karim_Ukuran_A5-01.jpg', 'Mushaf_Al-Madinah_Al-Quran_Al-Karim_Ukuran_A5-02.jpg'),
(16, 1, 'AKSE002', 'Harddisk Eksternal Portable Yufid Volume 01', '1899000', '25000', '2000', 'Harddisk ekssternal portable dari Yufid dengan kapasitas 1 TB, berisi puluhan ribu konten-konten Islami yang bermutu dan berkualitas serta sarat akan ilmu agama yang bermanfaat. Format video dalam harddisk eksternal Yufid adalah MP4, format MP4 sangat cocok diputar di handphone, komputer, laptop, PC maupun MAC. Harddisk Eksternal Portable Yufid Volume 1, Berat 2000 gram, ukuran  14 x 20.5 cm Harga Rp. 1.899.000,-', 'Harddisk_Eksternal_Portable_Yufid_Volume_01.jpg', 'Harddisk_Eksternal_Portable_Yufid_Volume_01-01.jpg', 'Harddisk_Eksternal_Portable_Yufid_Volume_01-02.jpg'),
(17, 1, 'AKSE003', 'Aksesoris Gunting Kuku dengan Logo Yufid TV', '19000', '1000', '450', 'Memotong kuku adalah termasuk bagian dari menjaga kebersihan tubuh. Alat gunting kuku ini didesain eksklusif dengan kualitas yang bagus dan tajam. Sangat mudah dan praktis dibawa bepergian.Dilengkapi dengan pena sehingga sangat membantu jika sewaktu-waktu dibutuhkan untuk menulis.\r\n\r\nCatatan : Gunting kuku ini dijual satuan', 'Aksesoris_Gunting_Kuku_dengan_Merk_Yufid_TV.jpg', 'Aksesoris_Gunting_Kuku_dengan_Merk_Yufid_TV-01.jpg', 'Aksesoris_Gunting_Kuku_dengan_Merk_Yufid_TV-02.jpg'),
(18, 4, 'BAJU001', 'Rompi Shalat FAZA Kombinas Warna Coklat-Hitam', '130000', '5000', '600', 'SPESIFIKASI ROMPI DAN UKURAN \r\n\r\nBahan: Premium Toyobo\r\nM: PB 76, LD 50, BB 55-65\r\nL: PB 78, LD 52, BB 66-75\r\nXL: PB 80, LD 54, BB 76-86\r\n\r\nPB: Panjang badan\r\nLD: Lingkar dada\r\nBB: Berat badan', 'Rompi_Shalat_FAZA_Kombinas_Warna_Coklat-Hitam.jpg', 'Rompi_Shalat_FAZA_Kombinas_Warna_Coklat-Hitam-02.jpg', 'Rompi_Shalat_FAZA_Kombinas_Warna_Coklat-Hitam-01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_refund`
--

CREATE TABLE `tb_refund` (
  `id_refund` int(11) UNSIGNED NOT NULL,
  `pemesanan_id` int(11) DEFAULT NULL,
  `jumlah_refund` varchar(50) DEFAULT NULL,
  `alasan_pembatalan` varchar(255) DEFAULT NULL,
  `status_refund` varchar(255) DEFAULT NULL,
  `tanggal_refund` datetime DEFAULT NULL,
  `tanggal_pengajuan` datetime NOT NULL DEFAULT current_timestamp(),
  `nama_bank` varchar(50) DEFAULT NULL,
  `rekening_bank` varchar(50) DEFAULT NULL,
  `atas_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_lengkap` varchar(128) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `aktif` char(1) NOT NULL,
  `waktu_daftar` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `email`, `nama_lengkap`, `username`, `password`, `role`, `aktif`, `waktu_daftar`) VALUES
(1, 'triyanto@gmail.com', 'Triyanto (Admin)', 'admin', '$2y$11$qmhrhhVO/3UrWgBAFpd5nOhs.hQD2N3BYu40B8kn6dPIsf36BrkIC', 'administrator', 'Y', '2019-07-16 10:00:46'),
(16, 'acengpilek@ueo.com', 'Aceng Pilek', 'aceng', '$2y$11$d.qKQ8eM6t7TZjH1A.s/ROmmcgKxnAbdckLeD4KRq5BZ8jmPgHveu', 'pelanggan', 'Y', '2019-07-16 11:18:42'),
(19, 'jakadig@gmail.com', 'Jaka Digdaya', 'jakadig', '$2y$11$vRbVgYgHlv2JM4VZ1qL6g.pLQ31Qn/Rh4Qq632RCaM6oTpQedFTla', 'pelanggan', 'Y', '2019-07-18 12:07:31'),
(20, 'arditacl@gmail.com', 'Ardita Cinta Laura', 'ardita', '$2y$11$ppvs4IkiErZn03FYWBCc8.69Oo37o4JZxLmiygygUEB./2FVP6Uf6', 'pelanggan', 'Y', '2019-07-19 01:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_alamat`
--

CREATE TABLE `tb_user_alamat` (
  `id_user_alamat` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `alamat_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user_alamat`
--

INSERT INTO `tb_user_alamat` (`id_user_alamat`, `user_id`, `alamat_id`) VALUES
(4, 19, 5),
(5, 19, 6),
(6, 20, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `rekening_bank`
--
ALTER TABLE `rekening_bank`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tb_alamat_kirim`
--
ALTER TABLE `tb_alamat_kirim`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_konfirmasi_transfer`
--
ALTER TABLE `tb_konfirmasi_transfer`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indexes for table `tb_ongkir`
--
ALTER TABLE `tb_ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `tb_pemesanan_detail`
--
ALTER TABLE `tb_pemesanan_detail`
  ADD PRIMARY KEY (`id_pemesanan_detail`);

--
-- Indexes for table `tb_pengiriman`
--
ALTER TABLE `tb_pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indexes for table `tb_pengiriman_detail`
--
ALTER TABLE `tb_pengiriman_detail`
  ADD PRIMARY KEY (`id_pengiriman_detail`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `kode_produk` (`kode_produk`);

--
-- Indexes for table `tb_refund`
--
ALTER TABLE `tb_refund`
  ADD PRIMARY KEY (`id_refund`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tb_user_alamat`
--
ALTER TABLE `tb_user_alamat`
  ADD PRIMARY KEY (`id_user_alamat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rekening_bank`
--
ALTER TABLE `rekening_bank`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_alamat_kirim`
--
ALTER TABLE `tb_alamat_kirim`
  MODIFY `id_alamat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_konfirmasi_transfer`
--
ALTER TABLE `tb_konfirmasi_transfer`
  MODIFY `id_konfirmasi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_ongkir`
--
ALTER TABLE `tb_ongkir`
  MODIFY `id_ongkir` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  MODIFY `id_pemesanan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_pemesanan_detail`
--
ALTER TABLE `tb_pemesanan_detail`
  MODIFY `id_pemesanan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_pengiriman`
--
ALTER TABLE `tb_pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pengiriman_detail`
--
ALTER TABLE `tb_pengiriman_detail`
  MODIFY `id_pengiriman_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_refund`
--
ALTER TABLE `tb_refund`
  MODIFY `id_refund` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_user_alamat`
--
ALTER TABLE `tb_user_alamat`
  MODIFY `id_user_alamat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
