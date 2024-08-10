-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2024 at 08:24 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abe_printing`
--
CREATE DATABASE IF NOT EXISTS `abe_printing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `abe_printing`;

-- --------------------------------------------------------

--
-- Table structure for table `ms_user`
--

CREATE TABLE `ms_user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nomor_hp` int(15) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_user`
--

INSERT INTO `ms_user` (`id`, `username`, `password`, `nomor_hp`, `level`) VALUES
(1, 'away', 'Nilai', 1234, 1),
(2, 'TaufikR', 'zack01', 12345678, 1),
(3, 'Udin', '1', 12345678, 0),
(4, 'ipin', '123', 23423424, 0),
(5, 'upin', '123', 123123, 1),
(6, 'amat', '123', 12123131, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `desc_barang` text NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_masuk` int(120) NOT NULL,
  `stok_keluar` int(120) NOT NULL,
  `stok_akhir` int(120) NOT NULL,
  `stok_rusak` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `type` varchar(128) NOT NULL,
  `img_source` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id`, `kode_barang`, `nama_barang`, `desc_barang`, `stok`, `stok_masuk`, `stok_keluar`, `stok_akhir`, `stok_rusak`, `harga`, `harga_beli`, `type`, `img_source`) VALUES
(1, 'A001', 'Kertas HVS', 'Kertas HVS Berkualitas oke punya', 20, 400, 10, 300, 30, 10000, 6000, 'Undangan', '73.jpg'),
(2, 'A002', 'Kertas Stiker', 'Kertas Stiker bisa nempel', 20, 40, 43, 17, 170, 7000, 5000, 'Undangan', '72.jpg'),
(3, 'A003', 'Tinta Printer', 'Kertas Karton', 20, 300, 240, 679, 60, 12000, 8000, 'Undangan', '71.jpg'),
(4, 'A004', 'Aladin 45', '', 20, 296, 160, 156, 10, 7500, 6000, 'Undangan', '70.jpg'),
(5, 'KTM001', 'PVC', '', 20, 210, 185, 45, 0, 9000, 7500, 'Kartu nama', '83.jpg'),
(6, 'KTM002', 'Superior Paper', '', 20, 2010, 300, 1730, 0, 5000, 4500, 'Kartu nama', '84.jpg'),
(7, 'SP001', 'Flexy Chinazz 280gsm', '', 20, 60, 0, 80, 0, 9000, 7500, 'Spanduk', '13.jpg'),
(8, 'SP002', 'Flexy China 280gsm', '', 20, 220, 100, 140, 0, 10000, 8000, 'Spanduk', '11.jpg'),
(9, 'SP003', 'Flexy ukuran 2x3 meter', '', 20, 130, 60, 90, 0, 10000, 6500, 'Spanduk', '10.jpg'),
(13, 'KTM003', 'Blues White', '', 40, 120, 0, 0, 20, 9000, 6000, 'Kartu nama', 'ktm_01.jpg'),
(14, 'KTM004', 'Art Cartoon', '', 30, 310, 245, 95, 0, 9000, 5500, 'Kartu nama', 'ktm_02.jpg'),
(18, 'AAA001', 'Contoh', '', 40, 30, 0, 70, 0, 35000, 0, 'Spanduk', '765527.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_desain`
--

CREATE TABLE `tb_desain` (
  `id` int(11) NOT NULL,
  `faktur` varchar(120) NOT NULL,
  `img` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_desain`
--

INSERT INTO `tb_desain` (`id`, `faktur`, `img`) VALUES
(11, 'F15', '2451721.jpg'),
(14, 'F11', '1250154-status-fb-lucu-khas-bapak-bapak.jpg'),
(15, 'F16', 'aaaddff.png'),
(16, 'F13', '10015.jpg'),
(17, 'F23', 'ac5c1f85fdd8e81e2aabb3328a689197.jpeg'),
(18, 'F24', '7-1433982135748.jpg'),
(19, 'F25', 'AllUnlocked_1920x1080.jpg'),
(20, 'F26', 'AllUnlocked_1920x10801.jpg'),
(21, 'F14', '7-14339821357481.jpg'),
(22, 'F27', 'AllUnlocked_1920x10802.jpg'),
(23, 'F28', 'ref3.png'),
(24, 'F29', '7-14339821357482.jpg'),
(25, 'F30', 'AllUnlocked_1920x10803.jpg'),
(26, 'F32', 'jadwal_kuliah.png'),
(27, 'F33', '7-14339821357483.jpg'),
(28, 'F34', 'supreme-logo-vector-115739386139f6rnj5kdm.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengembalian`
--

CREATE TABLE `tb_pengembalian` (
  `id` int(11) NOT NULL,
  `faktur` varchar(12) NOT NULL,
  `kode_barang` varchar(12) NOT NULL,
  `ket_pengembalian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengembalian`
--

INSERT INTO `tb_pengembalian` (`id`, `faktur`, `kode_barang`, `ket_pengembalian`) VALUES
(1, 'F15', 'KTM001', 'Barang Rusak Ketika diterima, patah dan lembek banget asu'),
(3, 'F11', 'KTM001', 'Kurang suka'),
(4, 'F13', 'KTM002', 'Barang Rusak'),
(5, 'F16', 'KTM004', 'Barang Sobek'),
(6, 'F19', 'A003', 'Barang Rusak'),
(7, 'F10', 'SP002', 'Barang Rusak\r\n'),
(8, 'F25', 'KTM001', 'Barang kurang 3'),
(9, 'F26', 'KTM002', 'scscs'),
(10, 'F34', 'A003', 'sasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekening`
--

CREATE TABLE `tb_rekening` (
  `id` int(11) NOT NULL,
  `jenis_bank` varchar(120) NOT NULL,
  `nama_bank` varchar(120) NOT NULL,
  `no_rekening` int(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rekening`
--

INSERT INTO `tb_rekening` (`id`, `jenis_bank`, `nama_bank`, `no_rekening`) VALUES
(1, 'Mandiri', 'UdinGaming', 12377534),
(2, 'BRI', 'Udin Killer', 576348212),
(3, 'Mandiriw', 'UdinTikTok', 2147483647),
(4, '2', 'UdinTikTokk', 2147483647),
(5, 'BCA', 'UdinTikTokkGaming', 2147483647),
(6, 'Mandiri', 'Roy', 335577459);

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok`
--

CREATE TABLE `tb_stok` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_masuk` int(120) NOT NULL,
  `stok_keluar` int(120) NOT NULL,
  `stok_akhir` int(120) NOT NULL,
  `stok_rusak` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `type` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_stok`
--

INSERT INTO `tb_stok` (`id`, `tanggal`, `kode_barang`, `nama_barang`, `stok`, `stok_masuk`, `stok_keluar`, `stok_akhir`, `stok_rusak`, `harga`, `harga_beli`, `type`) VALUES
(15, '2024-03-06', 'A002', 'Kertas Stiker', 0, 0, 0, 0, 20, 0, 5000, ''),
(16, '2024-03-06', 'A002', 'Kertas Stiker', 0, 0, 0, 0, 10, 0, 5000, ''),
(17, '2024-03-06', 'A003', 'Kertas Stiker', 0, 0, 0, 0, 10, 0, 5000, ''),
(18, '2024-03-06', 'A003', 'Kertas Stiker', 0, 0, 0, 0, 10, 0, 7500, ''),
(19, '2024-03-06', 'A001', 'Kertas HVS', 0, 0, 0, 0, 10, 0, 6000, ''),
(20, '2024-03-06', 'A001', 'Kertas HVS', 0, 10, 0, 0, 0, 0, 0, ''),
(26, '2024-03-07', 'A001', 'Kertas HVS', 0, 30, 0, 0, 0, 0, 0, ''),
(27, '2024-03-07', 'KTM003', '4000', 0, 0, 0, 0, 20, 0, 4000, ''),
(31, '2024-03-22', 'A0000', 'Kertas Stiker', 0, 20, 0, 0, 0, 0, 0, ''),
(32, '2024-03-22', 'AAA001', 'Contoh', 0, 30, 0, 0, 0, 0, 0, ''),
(33, '2024-03-22', 'A0000', 'Kertas Stiker', 0, 0, 0, 0, 10, 0, 15000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_trans`
--

CREATE TABLE `tb_trans` (
  `id` int(11) NOT NULL,
  `tgl_trs` date NOT NULL,
  `faktur` varchar(128) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `kode_barang` varchar(128) NOT NULL,
  `qty` int(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(120) NOT NULL,
  `bukti_pembayaran` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_trans`
--

INSERT INTO `tb_trans` (`id`, `tgl_trs`, `faktur`, `id_pembeli`, `kode_barang`, `qty`, `harga`, `status`, `bukti_pembayaran`) VALUES
(19, '2024-02-14', 'F10', 6, 'SP002', 70, 8500, 'Dikembalikan', ''),
(20, '2024-02-14', 'F11', 6, 'KTM001', 90, 500, 'Dikembalikan', ''),
(22, '2024-02-15', 'F13', 5, 'KTM002', 70, 5000, 'Dikembalikan', ''),
(23, '2024-02-15', 'F14', 5, 'SP003', 60, 10000, 'Desain Selesai', ''),
(25, '2024-02-22', 'F15', 6, 'KTM001', 90, 500, 'Dikembalikan', ''),
(26, '2024-02-23', 'F16', 6, 'KTM004', 200, 23000, 'Dikembalikan', ''),
(30, '2024-02-26', 'F19', 6, 'A003', 50, 2500, 'Dikembalikan', ''),
(31, '2024-03-01', 'F20', 6, 'A004', 10, 1500, 'Proses', '7-14339821357489.jpg'),
(33, '2024-03-06', 'F21', 6, 'A002', 10, 7000, 'Proses', ''),
(35, '2024-03-07', 'F23', 6, 'KTM002', 10, 5000, 'Desain Selesai', ''),
(36, '2024-03-07', 'F24', 6, 'KTM002', 50, 5000, 'Desain Selesai', ''),
(37, '2024-03-21', 'F25', 5, 'KTM001', 5, 9000, 'Dikembalikan', ''),
(38, '2024-03-21', 'F26', 5, 'KTM002', 100, 5000, 'Dikembalikan', ''),
(41, '2024-03-21', 'F29', 5, 'KTM004', 30, 9000, 'Desain Selesai', ''),
(42, '2024-03-21', 'F30', 5, 'A001', 10, 10000, 'Selesai', 'AllUnlocked_1920x10805.jpg'),
(43, '2024-03-21', 'F31', 5, 'A004', 64, 7500, 'Pending', ''),
(44, '2024-03-21', 'F32', 5, 'KTM004', 15, 9000, 'Desain Selesai', 'AllUnlocked_1920x10806.jpg'),
(47, '2024-03-21', 'F33', 5, 'SP002', 30, 10000, 'Desain Selesai', 'AllUnlocked_1920x10807.jpg'),
(48, '2024-03-22', 'F34', 5, 'A003', 30, 12000, 'Dikembalikan', ''),
(49, '2024-03-22', 'F35', 6, 'KTM002', 20, 5000, 'Pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `tx_trans_ktm`
--

CREATE TABLE `tx_trans_ktm` (
  `id` int(11) NOT NULL,
  `tgl_trs` date NOT NULL,
  `faktur` varchar(120) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_barang` varchar(120) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `no_telepon` int(12) NOT NULL,
  `pekerjaan` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `sosial_media` varchar(120) NOT NULL,
  `total_faktur` varchar(128) NOT NULL,
  `ket` mediumtext NOT NULL,
  `status` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tx_trans_ktm`
--

INSERT INTO `tx_trans_ktm` (`id`, `tgl_trs`, `faktur`, `id_pembeli`, `harga`, `qty`, `kode_barang`, `nama`, `no_telepon`, `pekerjaan`, `alamat`, `sosial_media`, `total_faktur`, `ket`, `status`) VALUES
(7, '2024-02-14', 'F11', 6, 500, 90, 'KTM001', 'UDIN ', 1230033, 'Karyawan', 'Belawang', 'aaaaaaaaa', '45,000', 'Cepat', 'Dikembalikan'),
(8, '2024-02-15', 'F12', 3, 5000, 70, 'KTM002', 'Petra', 123123, 'Gamer', 'Belawang', 'aaaaaaaaa', '350,000', 'cepat', 'Pending'),
(9, '2024-02-15', 'F13', 5, 5000, 70, 'KTM002', 'Petra', 1230033, 'Gamer', 'Belawang', 'aaaaaaaaa', '350,000', 'cpt', 'Desain Selesai'),
(11, '2024-02-22', 'F15', 6, 500, 90, 'KTM001', 'Zack Sparrow', 8123123, 'Gamer', 'sefsef', 'aaaaaaaaa', '45,000', 'fast', 'Dikembalikan'),
(12, '2024-02-23', 'F16', 6, 23000, 200, 'KTM004', 'Riku', 234234, 'Petani', 'Banjarmasin', '@RikuGaming', '4,600,000', 'Cepat', 'Selesai'),
(13, '2024-03-06', 'F22', 6, 9000, 5, 'KTM001', 'adads', 213123, 'asdasd', 'asdasd', 'asdasd', '45,000', 'adawd', 'Pending'),
(14, '2024-03-07', 'F23', 6, 5000, 10, 'KTM002', 'awdawd', 213123, 'awdawd', 'awdawdawd', 'awdawdw', '50,000', 'awdawd', 'Desain Selesai'),
(15, '2024-03-07', 'F24', 6, 5000, 50, 'KTM002', 'Sora', 8777333, 'Key Master', 'Traverse Town', 'Soraaaa', '250,000', 'cepat', 'Desain Selesai'),
(16, '2024-03-21', 'F25', 5, 9000, 5, 'KTM001', 'adsad', 32424, 'dsfsdfs', 'sdfsdf', 'fghfgh', '45,000', 'cepat', 'Dikembalikan'),
(17, '2024-03-21', 'F26', 5, 5000, 100, 'KTM002', 'weewff', 234234, 'Gamers', 'sdfsdff', 'dfsdfss', '500,000', 'sdfsdf', 'Dikembalikan'),
(18, '2024-03-21', 'F29', 5, 9000, 30, 'KTM004', 'sdfsdf', 234234, 'sfdf', 'dfsdfs', 'sdfsdf', '270,000', 'sasdf', 'Desain Selesai'),
(19, '2024-03-21', 'F32', 5, 9000, 15, 'KTM004', 'asdasd', 0, 'asdasd', 'asdasd', 'asdasd', '135,000', 'asdasd', 'Desain Selesai'),
(20, '2024-03-22', 'F35', 6, 5000, 20, 'KTM002', 'sdfsdf', 0, 'sdf', 'sdf', 'sdf', '100,000', 'cek', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tx_trans_spanduk`
--

CREATE TABLE `tx_trans_spanduk` (
  `id` int(11) NOT NULL,
  `tgl_trs` date NOT NULL,
  `faktur` varchar(120) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `harga` int(22) NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_barang` varchar(120) NOT NULL,
  `panjang` int(11) NOT NULL,
  `lebar` int(11) NOT NULL,
  `tema` varchar(120) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` int(12) NOT NULL,
  `total_faktur` varchar(16) NOT NULL,
  `ket` mediumtext NOT NULL,
  `status` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tx_trans_spanduk`
--

INSERT INTO `tx_trans_spanduk` (`id`, `tgl_trs`, `faktur`, `id_pembeli`, `harga`, `qty`, `kode_barang`, `panjang`, `lebar`, `tema`, `alamat`, `no_telepon`, `total_faktur`, `ket`, `status`) VALUES
(10, '2024-02-14', 'F10', 6, 8500, 70, 'SP002', 2, 4, 'Kampanye', 'Belawang', 8123123, '595,000', 'cepat', 'Pending'),
(11, '2024-02-15', 'F14', 5, 10000, 60, 'SP003', 3, 3, 'Kampanye', 'Jl.Proklamasi RT.01', 1230033, '600,000', 'cepat', 'Proses'),
(12, '2024-03-21', 'F33', 5, 10000, 30, 'SP002', 3, 4, 'Caleg', 'asasc', 1231313, '300,000', 'cepat', 'Desain Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tx_trans_undangan`
--

CREATE TABLE `tx_trans_undangan` (
  `id` int(11) NOT NULL,
  `tgl_trs` date NOT NULL,
  `faktur` varchar(128) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_barang` varchar(128) NOT NULL,
  `mempelai_pria` varchar(128) NOT NULL,
  `mempelai_wanita` varchar(128) NOT NULL,
  `akad_nikah` varchar(128) NOT NULL,
  `resepsi` varchar(128) NOT NULL,
  `pukul` varchar(128) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `total_faktur` varchar(11) NOT NULL,
  `ket` varchar(256) NOT NULL,
  `status` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tx_trans_undangan`
--

INSERT INTO `tx_trans_undangan` (`id`, `tgl_trs`, `faktur`, `id_pembeli`, `harga`, `qty`, `kode_barang`, `mempelai_pria`, `mempelai_wanita`, `akad_nikah`, `resepsi`, `pukul`, `alamat`, `total_faktur`, `ket`, `status`) VALUES
(36, '2024-01-28', 'F1', 5, 1500, 35, 'A004', 'Sparrow', 'iiii', 'rrrrr', 'Rumah', '11.00 WITA', 'll60', '52,500', 'pp', 'Proses'),
(37, '2024-01-28', 'F2', 5, 2500, 30, 'A003', 'Udinn', 'Jackk', 'Rumah', 'rumah', '11.00 WITA', 'jl.amat', '75,000', 'cepat', 'Proses'),
(38, '2024-02-12', 'F9', 5, 2000, 15, 'A002', 'Udin', 'Makima', 'asdasd', 'Shibuya RT 006', '10.00 Wita', 'sefsefesf', '30,000', 'sefsef', 'Proses'),
(40, '2024-02-26', 'F17', 6, 2500, 60, 'A003', 'sdfsfd', 'sdfsdfsdf', 'sdfsdfsdf', 'sdfsdfsdf', 'sdfsdfsfd', 'sdfsdfsdf', '150,000', 'asdasd', 'Proses'),
(41, '2024-02-26', 'F18', 6, 2500, 100, 'A003', 'awdawd', 'awdawdawd', 'awdawdawd', 'awdawd', 'awdawd', 'wadawd', '250,000', 'cepat', 'Proses'),
(42, '2024-02-26', 'F19', 6, 2500, 50, 'A003', 'sefsfe', 'sfesef', 'sefsefs', 'sefsefsef', 'sfesefesf', 'sefsfesfe', '125,000', 'sefs', 'Proses'),
(43, '2024-03-01', 'F20', 6, 1500, 10, 'A004', 'awdawd', 'awdawd', 'awdawda', 'awdawd', 'awdawd', 'awdadwa', '15,000', 'awdawda', 'Proses'),
(44, '2024-03-06', 'F21', 6, 7000, 10, 'A002', 'sefsfe', 'efsefsfe', 'sefsfesfe', 'sefsefsfe', 'sefsefef', 'sefsefsfe', '70,000', 'sefsefsef', 'Proses'),
(47, '2024-03-21', 'F30', 5, 10000, 10, 'A001', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', '100,000', 'aaaaaa', 'Selesai'),
(48, '2024-03-21', 'F31', 5, 7500, 64, 'A004', 'sdfd', 'sdfd', 'sdfd', 'sdfd', 'sdfd', 'sdfd', '480,000', 'sdfsdf', 'Pending'),
(49, '2024-03-22', 'F34', 5, 12000, 30, 'A003', 'asdadasdasd', 'asdasd', 'asdasda', 'asdasda', 'asasdasd', 'asdasd', '360,000', 'cepat', 'Dikembalikan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ms_user`
--
ALTER TABLE `ms_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_desain`
--
ALTER TABLE `tb_desain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rekening`
--
ALTER TABLE `tb_rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_stok`
--
ALTER TABLE `tb_stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_trans`
--
ALTER TABLE `tb_trans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tx_trans_ktm`
--
ALTER TABLE `tx_trans_ktm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tx_trans_spanduk`
--
ALTER TABLE `tx_trans_spanduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tx_trans_undangan`
--
ALTER TABLE `tx_trans_undangan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ms_user`
--
ALTER TABLE `ms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_desain`
--
ALTER TABLE `tb_desain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_rekening`
--
ALTER TABLE `tb_rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_stok`
--
ALTER TABLE `tb_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_trans`
--
ALTER TABLE `tb_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tx_trans_ktm`
--
ALTER TABLE `tx_trans_ktm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tx_trans_spanduk`
--
ALTER TABLE `tx_trans_spanduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tx_trans_undangan`
--
ALTER TABLE `tx_trans_undangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- Database: `beasiswa-app`
--
CREATE DATABASE IF NOT EXISTS `beasiswa-app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `beasiswa-app`;

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa`
--

CREATE TABLE `beasiswa` (
  `id` int(11) NOT NULL,
  `nama_beasiswa` varchar(50) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `jenis_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_beasiswa`
--

CREATE TABLE `jenis_beasiswa` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_beasiswa`
--

INSERT INTO `jenis_beasiswa` (`id`, `nama_jenis`, `keterangan`) VALUES
(1, 'Bidikmisi berprestasi', 'walau habis terang'),
(4, 'Prestasi Olahraga', 'juara 1');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran_pengguna`
--

CREATE TABLE `pendaftaran_pengguna` (
  `id` int(11) NOT NULL,
  `no_pendaftaran` varchar(20) DEFAULT NULL,
  `nama_lengkap` varchar(75) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `bukti_daftar` varchar(255) DEFAULT NULL,
  `prodi_id` int(11) DEFAULT NULL,
  `keterangan` enum('Belum Diverifikasi','Sudah Diverifikasi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_beasiswa`
--

CREATE TABLE `pengajuan_beasiswa` (
  `id` varchar(64) NOT NULL,
  `tanggal_pengajuan` date DEFAULT NULL,
  `pengguna_id` int(11) DEFAULT NULL,
  `beasiswa_id` int(11) DEFAULT NULL,
  `keterangan` enum('Diajukan','Ditolak','Diusulkan','Ditetapkan') DEFAULT 'Diajukan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `peran` enum('ADMIN','USER','OPERATOR') DEFAULT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pendaftaran_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `persyaratan`
--

CREATE TABLE `persyaratan` (
  `id` int(11) NOT NULL,
  `nama_persyaratan` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persyaratan`
--

INSERT INTO `persyaratan` (`id`, `nama_persyaratan`, `keterangan`) VALUES
(1, 'Bidikmisi ', 'tes'),
(4, 'tes', 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `persyaratan_beasiswa`
--

CREATE TABLE `persyaratan_beasiswa` (
  `id` int(11) NOT NULL,
  `beasiswa_id` int(11) DEFAULT NULL,
  `persyaratan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `persyaratan_pengajuan`
--

CREATE TABLE `persyaratan_pengajuan` (
  `id` int(11) NOT NULL,
  `pengajuan_id` int(11) DEFAULT NULL,
  `persyaratan_id` int(11) DEFAULT NULL,
  `tanggal_upload` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_file` varchar(255) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `nama_prodi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `nama_prodi`) VALUES
(4, 'Teknik Informatika');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_beasiswa`
--
ALTER TABLE `jenis_beasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftaran_pengguna`
--
ALTER TABLE `pendaftaran_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan_beasiswa`
--
ALTER TABLE `pengajuan_beasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persyaratan`
--
ALTER TABLE `persyaratan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persyaratan_beasiswa`
--
ALTER TABLE `persyaratan_beasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persyaratan_pengajuan`
--
ALTER TABLE `persyaratan_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_beasiswa`
--
ALTER TABLE `jenis_beasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pendaftaran_pengguna`
--
ALTER TABLE `pendaftaran_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persyaratan`
--
ALTER TABLE `persyaratan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `persyaratan_beasiswa`
--
ALTER TABLE `persyaratan_beasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persyaratan_pengajuan`
--
ALTER TABLE `persyaratan_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `database_4d`
--
CREATE DATABASE IF NOT EXISTS `database_4d` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `database_4d`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_departemen`
--

CREATE TABLE `tb_departemen` (
  `ID_Dept` int(10) NOT NULL,
  `Nama_Dept` varchar(50) NOT NULL,
  `Lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_departemen`
--

INSERT INTO `tb_departemen` (`ID_Dept`, `Nama_Dept`, `Lokasi`) VALUES
(1, 'Sales & Marketing', 'Jl.Kenangan Kita No 17'),
(2, 'Production', 'Jl.Ahmad Yani No 29'),
(3, 'Purchasing', 'Jl.Gatot Subroto'),
(4, 'IT', 'Jl.Proklamasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `ID` int(10) NOT NULL,
  `ID_Dept` int(10) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `ALAMAT` varchar(50) NOT NULL,
  `GAJI` mediumint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`ID`, `ID_Dept`, `NAMA`, `ALAMAT`, `GAJI`) VALUES
(100, 0, 'Arif', 'Surabaya', 10000),
(101, 0, 'Andi', 'Jakarta', 14000),
(102, 0, 'Burhan', 'Malang', 12000),
(103, 0, 'Fikri', 'Madiun', 15000),
(104, 0, 'Fariz', 'Malang', 17000),
(105, 0, 'Sigit', 'Surabaya', 20000),
(106, 0, 'Ifan', 'Kediri', 16000),
(107, 0, 'Hanif', 'Yogyakarta', 12000),
(108, 0, 'Zakiuddin', 'Surabaya', 21000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_departemen`
--
ALTER TABLE `tb_departemen`
  ADD PRIMARY KEY (`ID_Dept`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`ID`);
--
-- Database: `datamahasiswa`
--
CREATE DATABASE IF NOT EXISTS `datamahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `datamahasiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `telpon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `telpon`) VALUES
('20100100', 'upik', '085348832923'),
('20100101', 'udinGaming', '08237491293');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);
--
-- Database: `data_user`
--
CREATE DATABASE IF NOT EXISTS `data_user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `data_user`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(12) NOT NULL,
  `prodi` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);
--
-- Database: `dbhack`
--
CREATE DATABASE IF NOT EXISTS `dbhack` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbhack`;

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE `guestbook` (
  `comment_id` smallint(5) UNSIGNED NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `user` varchar(15) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `avatar` varchar(70) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `failed_login` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `user`, `password`, `avatar`, `last_login`, `failed_login`) VALUES
(1, 'admin', 'admin', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '/DVWA-master/hackable/users/admin.jpg', '2023-07-09 08:25:16', 0),
(2, 'Gordon', 'Brown', 'gordonb', 'e99a18c428cb38d5f260853678922e03', '/DVWA-master/hackable/users/gordonb.jpg', '2023-07-09 08:25:16', 0),
(3, 'Hack', 'Me', '1337', '8d3533d75ae2c3966d7e0d4fcc69216b', '/DVWA-master/hackable/users/1337.jpg', '2023-07-09 08:25:16', 0),
(4, 'Pablo', 'Picasso', 'pablo', '0d107d09f5bbe40cade3de5c71e9e9b7', '/DVWA-master/hackable/users/pablo.jpg', '2023-07-09 08:25:16', 0),
(5, 'Bob', 'Smith', 'smithy', '5f4dcc3b5aa765d61d8327deb882cf99', '/DVWA-master/hackable/users/smithy.jpg', '2023-07-09 08:25:16', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `comment_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `dbmaster`
--
CREATE DATABASE IF NOT EXISTS `dbmaster` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbmaster`;

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE `guestbook` (
  `comment_id` smallint(5) UNSIGNED NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guestbook`
--

INSERT INTO `guestbook` (`comment_id`, `comment`, `name`) VALUES
(1, 'This is a test comment.', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `user` varchar(15) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `avatar` varchar(70) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `failed_login` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `user`, `password`, `avatar`, `last_login`, `failed_login`) VALUES
(1, 'admin', 'admin', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '/DVWA-master/hackable/users/admin.jpg', '2023-07-09 07:23:07', 0),
(2, 'Gordon', 'Brown', 'gordonb', 'e99a18c428cb38d5f260853678922e03', '/DVWA-master/hackable/users/gordonb.jpg', '2023-07-09 07:23:07', 0),
(3, 'Hack', 'Me', '1337', '8d3533d75ae2c3966d7e0d4fcc69216b', '/DVWA-master/hackable/users/1337.jpg', '2023-07-09 07:23:07', 0),
(4, 'Pablo', 'Picasso', 'pablo', '0d107d09f5bbe40cade3de5c71e9e9b7', '/DVWA-master/hackable/users/pablo.jpg', '2023-07-09 07:23:07', 0),
(5, 'Bob', 'Smith', 'smithy', '5f4dcc3b5aa765d61d8327deb882cf99', '/DVWA-master/hackable/users/smithy.jpg', '2023-07-09 07:23:07', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `comment_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `dbsumberdayaalamkaltim`
--
CREATE DATABASE IF NOT EXISTS `dbsumberdayaalamkaltim` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbsumberdayaalamkaltim`;

-- --------------------------------------------------------

--
-- Table structure for table `datakota`
--

CREATE TABLE `datakota` (
  `KODE_KOTA` varchar(12) NOT NULL,
  `KOTA` varchar(50) NOT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datakota`
--

INSERT INTO `datakota` (`KODE_KOTA`, `KOTA`, `STATUS`) VALUES
('010145', 'Banjarmasin', 'Aktif'),
('010155', 'Marabahan', 'Non Aktif'),
('010677', 'Banjarbaru', 'Aktif'),
('015487', 'Kandangan', 'Non Aktif'),
('5760', 'Jakarta', 'Tahap Pembangunan');

-- --------------------------------------------------------

--
-- Table structure for table `datapotensi`
--

CREATE TABLE `datapotensi` (
  `KODE_POTENSI` int(12) NOT NULL,
  `DAERAH` varchar(50) NOT NULL,
  `POTENSI` varchar(20) NOT NULL,
  `STATUS` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datapotensi`
--

INSERT INTO `datapotensi` (`KODE_POTENSI`, `DAERAH`, `POTENSI`, `STATUS`) VALUES
(2114, 'Kelayan', 'Mantap', 'Aktif'),
(5001, 'Hulu Sungai', 'Sedikit Mantap', 'Non Aktif'),
(50999, 'Hulu Sungai', 'Sedikit Mantap', 'Tahap Pemban');

-- --------------------------------------------------------

--
-- Table structure for table `datauser`
--

CREATE TABLE `datauser` (
  `NIP` varchar(20) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `HP` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datauser`
--

INSERT INTO `datauser` (`NIP`, `NAMA`, `PASSWORD`, `EMAIL`, `HP`) VALUES
('2010010012', 'UpikBungas', 'upikgaming', 'taufiknew@gmail.com', 2147483647),
('201001003', 'Risky', 'Riskyyy', 'Risky@gmail.com', 2147483647),
('201001005', 'sefsefse', 'fsefsefs', 'ssefsf', 0),
('2010017563', 'AHMAD SODIKIN', 'admin', 'sodiking@gmail.com', 2147483647),
('2010050014', 'Udin22', 'admin', 'udinajhaaa@gmail.com', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datapotensi`
--
ALTER TABLE `datapotensi`
  ADD PRIMARY KEY (`KODE_POTENSI`);

--
-- Indexes for table `datauser`
--
ALTER TABLE `datauser`
  ADD PRIMARY KEY (`NIP`);
--
-- Database: `db_buku`
--
CREATE DATABASE IF NOT EXISTS `db_buku` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_buku`;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` varchar(10) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `nama_kategori`) VALUES
('0000', 'Action'),
('0001', 'Shonen'),
('0002', 'Pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `master_buku`
--

CREATE TABLE `master_buku` (
  `kode_buku` varchar(10) NOT NULL,
  `judul_buku` varchar(30) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `pengarang` varchar(10) NOT NULL,
  `penerbit` varchar(10) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_buku`
--

INSERT INTO `master_buku` (`kode_buku`, `judul_buku`, `kategori`, `pengarang`, `penerbit`, `tahun`, `deskripsi`, `harga`) VALUES
('008', 'One Piece Chapter 1050', 'Shonen', 'Uzumaki Na', 'Taufik Rid', '2015', 'Pertarungan Luffy', 20000),
('5547', 'Cinta Pertama', 'Pendidikan', 'Vinsmoke S', 'Yusuke Mur', '2018', 'Cinta Seorang anak smp dengan anak SMA', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `kode_penerbit` varchar(10) NOT NULL,
  `nama_penerbit` varchar(30) NOT NULL,
  `kota_penerbit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`kode_penerbit`, `nama_penerbit`, `kota_penerbit`) VALUES
('0222', 'Taufik Ridhani', 'Marabahan'),
('0555', 'Eichiro Oda', 'Yokohama'),
('0888', 'Masahsi Kishimoto', 'Yokohama'),
('0147', 'Yusuke Murata', 'Tokyo');

-- --------------------------------------------------------

--
-- Table structure for table `pengarang`
--

CREATE TABLE `pengarang` (
  `kode_pengarang` varchar(10) NOT NULL,
  `nama_pengarang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengarang`
--

INSERT INTO `pengarang` (`kode_pengarang`, `nama_pengarang`) VALUES
('0222', 'Uzumaki Naruto'),
('0336', 'Uchiha Sasuke'),
('1555', 'Vinsmoke Sanji');
--
-- Database: `db_penjualan`
--
CREATE DATABASE IF NOT EXISTS `db_penjualan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_penjualan`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_foto_pembelian`
--

CREATE TABLE `tb_foto_pembelian` (
  `no` int(3) NOT NULL,
  `foto_transaksi` text NOT NULL,
  `foto_desain_selesai` text NOT NULL,
  `foto_pengembalian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_foto_pembelian`
--

INSERT INTO `tb_foto_pembelian` (`no`, `foto_transaksi`, `foto_desain_selesai`, `foto_pengembalian`) VALUES
(20, 'images/pembelian/foto_transaksi/20.jpg', 'images/pembelian/foto_desain_selesai/20.jpg', ''),
(21, 'images/pembelian/foto_transaksi/21.jpg', 'images/pembelian/foto_desain_selesai/21.jpg', ''),
(27, 'images/pembelian/foto_transaksi/27.jpg', 'images/pembelian/foto_desain_selesai/27.jpg', '{\"jumlah_rusak\":\"1\",\"keterangan\":\"luntur dan sobek\",\"foto\":[{\"img\":\"images\\/pengembalian\\/27\\/0.jpg\"}]}'),
(29, 'images/pembelian/foto_transaksi/29.jpg', 'images/pembelian/foto_desain_selesai/29.jpg', ''),
(31, 'images/pembelian/foto_transaksi/31.jpg', 'images/pembelian/foto_desain_selesai/31.jpg', ''),
(32, 'images/pembelian/foto_transaksi/32.jpg', 'images/pembelian/foto_desain_selesai/32.jpg', ''),
(37, 'images/pembelian/foto_transaksi/37.jpg', 'images/pembelian/foto_desain_selesai/37.jpg', ''),
(39, 'images/pembelian/foto_transaksi/39.jpg', 'images/pembelian/foto_desain_selesai/39.jpg', ''),
(52, 'images/pembelian/foto_transaksi/52.jpg', 'images/pembelian/foto_desain_selesai/52.jpg', ''),
(58, 'images/pembelian/foto_transaksi/58.jpg', '', ''),
(59, 'images/pembelian/foto_transaksi/59.jpg', 'images/pembelian/foto_desain_selesai/59.jpg', ''),
(60, 'images/pembelian/foto_transaksi/60.jpg', 'images/pembelian/foto_desain_selesai/60.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `no` int(1) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`no`, `nama`) VALUES
(1, 'Undangan'),
(2, 'Kartu Nama'),
(3, 'Spanduk');

-- --------------------------------------------------------

--
-- Table structure for table `tb_komen`
--

CREATE TABLE `tb_komen` (
  `no` int(11) NOT NULL,
  `komen` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_komen`
--

INSERT INTO `tb_komen` (`no`, `komen`) VALUES
(10, '[{\"id_pembeli\":\"5\",\"id_pembelian\":\"21\",\"komen\":\"Barang diterima dengan keadaan baik\"}]'),
(11, '[{\"id_pembeli\":\"7\",\"id_pembelian\":\"29\",\"komen\":\"Bagus, Barang diterima dengan keadan bagus\"}]'),
(18, '[{\"id_pembeli\":\"7\",\"id_pembelian\":\"27\",\"komen\":\"desain bagussss\"}]'),
(19, '[{\"id_pembeli\":\"7\",\"id_pembelian\":\"31\",\"komen\":\"produk bagus\"}]'),
(20, '[{\"id_pembeli\":\"5\",\"id_pembelian\":\"20\",\"komen\":\"Barang diterima dengan keadaan baik\"},{\"id_pembeli\":\"7\",\"id_pembelian\":\"32\",\"komen\":\"produk bagus\"}]'),
(22, '[{\"id_pembeli\":\"7\",\"id_pembelian\":\"39\",\"komen\":\"bagus\"}]'),
(87, '[{\"id_pembeli\":\"7\",\"id_pembelian\":\"59\",\"komen\":\"Desain nya keren!\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `tb_komen_desain_sendiri`
--

CREATE TABLE `tb_komen_desain_sendiri` (
  `no` int(3) NOT NULL,
  `komen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembeli`
--

CREATE TABLE `tb_pembeli` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `no_telpon` varchar(13) NOT NULL,
  `alamat` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembeli`
--

INSERT INTO `tb_pembeli` (`id`, `nama`, `email`, `no_telpon`, `alamat`) VALUES
(1, 'Adrianus Aransina Tukan', 'karauksii@gmail.com', '082293246583', 'Jln Bukit Indah, Soreang, Parepare'),
(3, 'yuni', 'yunimulti263@yahoo.co.id', '083435543667', 'Parepare'),
(4, 'uni', 'uni@yahoo.com', '082333234567', 'Parepare, Perumnas wekke\'e'),
(5, 'Hasmia', 'hasmiah@yahoo.co.id', '082556456456', 'parepare'),
(6, 'chica', 'chica@yahoo.co.id', '082456546543', 'sidrap'),
(7, 'Udin Gaming', 'st249380@gmail.com', '085342033354', 'sidrap'),
(8, 'dilla', 'dillah95@gmail.com', '082567568457', 'wajo'),
(9, 'alam', 'alam123@yahoo.co.id', '082657546556', 'Parepare'),
(10, 'lina', 'lina@facebook', '084566676566', 'Parepare'),
(11, 'Kasep_Code', 'Kasep@gmail.com', '4354545422222', 'Indonesia'),
(12, 'Udin', 'udingaming@gmail.com', '0853226673256', 'Jl.Proklamasi RT.01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian`
--

CREATE TABLE `tb_pembelian` (
  `no` int(4) NOT NULL,
  `desain` int(1) NOT NULL,
  `kategori` int(1) DEFAULT NULL,
  `id_pembeli` int(3) NOT NULL,
  `id_produk` int(4) DEFAULT NULL,
  `id_transaksi` int(1) NOT NULL,
  `waktu_pembelian` datetime NOT NULL DEFAULT current_timestamp(),
  `deadline` int(1) DEFAULT NULL,
  `waktu_penerimaan` datetime DEFAULT NULL,
  `ket` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembelian`
--

INSERT INTO `tb_pembelian` (`no`, `desain`, `kategori`, `id_pembeli`, `id_produk`, `id_transaksi`, `waktu_pembelian`, `deadline`, `waktu_penerimaan`, `ket`) VALUES
(20, 0, NULL, 5, 20, 7, '2020-06-17 14:33:25', 3, '2020-06-29 19:50:03', '{\"panjang\":\"2\",\"lebar\":\"1\",\"jumlah_kertas\":\"1\",\"alamat\":\"parepare\",\"nama\":\"Sosbak (Sosis Bakar)\",\"tema\":\"Sosbak Makanan Anak Kekinian\",\"tanggal\":\"2020-06-24\",\"waktu\":\"14:36\",\"alamat_data\":\"Makassar\",\"no_telpon\":\"085342033354\",\"media_sosial\":\"Hasmia@yahoo.co.id\",\"penambahan_ket\":\"Jl. Jendral Ahmad Yani No.1\"}'),
(21, 0, NULL, 5, 10, 7, '2020-06-17 14:36:30', 4, '2020-06-29 19:50:18', '{\"panjang\":\"2\",\"lebar\":\"2.5\",\"jumlah_kertas\":\"1\",\"alamat\":\"parepare\",\"nama\":\"Kioas Cell Hasmia\",\"tema\":\"Beli Pulsa, Kouta data, kartu telpon dengan harga yang terjamin jerjangkau\",\"tanggal\":\"2020-06-28\",\"waktu\":\"12:36\",\"alamat_data\":\"Makassar\",\"no_telpon\":\"085342033354\",\"media_sosial\":\"Hasmia@yahoo.co.id\",\"penambahan_ket\":\"Makassar Jl. Jend Ahmad Yani No.1\"}'),
(27, 0, NULL, 7, 18, 11, '2020-06-24 19:45:58', 6, '2020-06-24 20:48:48', '{\"panjang\":\"2\",\"lebar\":\"3\",\"jumlah_kertas\":\"1\",\"alamat\":\"soppeng\",\"nama\":\"Maulid Besar\",\"tema\":\"Merayakan Hari Kelahiran Nabi Muhammad SAW\",\"tanggal\":\"2020-10-28\",\"waktu\":\"22:47\",\"alamat_data\":\"Soppeng\",\"no_telpon\":\"085434666876\",\"media_sosial\":\"Tilawa764@Yahoo.co.id\",\"penambahan_ket\":\"\"}'),
(29, 0, NULL, 7, 11, 7, '2020-06-24 21:30:44', 5, '2020-06-29 20:15:51', '{\"panjang\":\"1\",\"lebar\":\"1.5\",\"jumlah_kertas\":\"1\",\"alamat\":\"soppeng\",\"nama\":\"Baharuddin\",\"tema\":\"minuman\",\"tanggal\":\"2020-07-07\",\"waktu\":\"12:30\",\"alamat_data\":\"Makassar\",\"no_telpon\":\"082567568457\",\"media_sosial\":\"rudding@gmail.com\",\"penambahan_ket\":\"\"}'),
(31, 0, NULL, 7, 19, 7, '2020-06-27 22:12:49', 6, '2020-07-10 22:33:01', '{\"panjang\":\"2\",\"lebar\":\"2.5\",\"jumlah_kertas\":\"1\",\"alamat\":\"soppeng\",\"nama\":\"Minuman Kekinian Bubble Rainbow\",\"tema\":\"minuman\",\"tanggal\":\"2020-07-09\",\"waktu\":\"13:14\",\"alamat_data\":\"Soppeng\",\"no_telpon\":\"082567568457\",\"media_sosial\":\"ip314@gmail.com\",\"penambahan_ket\":\"\"}'),
(32, 0, NULL, 7, 20, 7, '2020-06-27 22:15:02', 5, '2020-07-10 22:33:20', '{\"panjang\":\"2\",\"lebar\":\"1\",\"jumlah_kertas\":\"1\",\"alamat\":\"soppeng\",\"nama\":\"Minuman Kekinian Bubble Rainbow\",\"tema\":\"Makanan\",\"tanggal\":\"2020-07-07\",\"waktu\":\"13:17\",\"alamat_data\":\"Soppeng\",\"no_telpon\":\"085342033354\",\"media_sosial\":\"ip314@gmail.com\",\"penambahan_ket\":\"\"}'),
(37, 0, NULL, 6, 18, 4, '2020-06-29 20:11:38', 7, NULL, '{\"panjang\":\"2\",\"lebar\":\"2.5\",\"jumlah_kertas\":\"1\",\"alamat\":\"sidrap\",\"nama\":\"Maulid Nabi Besar\",\"tema\":\"Merayakan Hari Kelahiran Nabi Muhammad SAW\",\"tanggal\":\"2020-07-10\",\"waktu\":\"20:16\",\"alamat_data\":\"Sidrap\",\"no_telpon\":\"085434666876\",\"media_sosial\":\"Chica@gmail.com\",\"penambahan_ket\":\"\"}'),
(39, 0, NULL, 7, 22, 7, '2020-07-10 14:26:51', 5, '2020-07-16 11:24:57', '{\"panjang\":\"2\",\"lebar\":\"2\",\"jumlah_kertas\":\"1\",\"alamat\":\"soppeng\",\"nama\":\"LOMBA\",\"tema\":\"Mengaktifkan kreatif anak-anak\",\"tanggal\":\"2020-07-31\",\"waktu\":\"22:29\",\"alamat_data\":\"Makassar\",\"no_telpon\":\"083435543667\",\"media_sosial\":\"ip314@gmail.com\",\"penambahan_ket\":\"\"}'),
(52, 1, 3, 5, NULL, 5, '2020-08-09 05:00:46', 4, NULL, '{\"panjang\":\"2\",\"lebar\":\"2\",\"jumlah_kertas\":\"1\",\"alamat\":\"parepare\",\"nama\":\"-\",\"tema\":\"-\",\"tanggal\":\"\",\"waktu\":\"\",\"alamat_data\":\"-\",\"no_telpon\":\"-\",\"media_sosial\":\"-\",\"penambahan_ket\":\"-\"}'),
(55, 0, NULL, 1, 68, 1, '2020-08-17 19:13:42', 3, NULL, '{\"jenis_kertas\":\"4000\",\"jumlah_kertas\":\"10\",\"alamat\":\"Jln Bukit Indah, Soreang, Parepare\",\"nama_pertama\":\"Kicap\",\"ket_nama_pertama\":\"Programmer\",\"nama_kedua\":\"Belum Ada\",\"ket_nama_kedua\":\"Gitaris\",\"tanggal\":\"2020-08-18\",\"akad\":\"123\",\"resepsi\":\"Ndak juga ku tau\",\"nama_ortu_pertama\":\"Antonius Medon Tukan\",\"ket_ortu_pertama\":\"Ndak Kerja\",\"nama_ortu_kedua\":\"Yohanna Parrangan\",\"ket_ortu_kedua\":\"Suri Rumah\",\"nama_keluarga_mengundang\":\"Sedare Mare\",\"ket_keluarga_mengundang\":\"Handalan Semua\",\"penambahan_ket\":\"asdasdsa\"}'),
(56, 0, NULL, 1, 75, 1, '2020-08-17 19:55:44', 4, NULL, '{\"jenis_kertas\":\"4000\",\"jumlah_kertas\":\"10\",\"alamat\":\"Jln Bukit Indah, Soreang, Parepare\",\"nama_anak\":\"Yohanna\",\"ket_anak\":\"Nama Panggillan : Ana\",\"tanggal\":\"2020-08-28\",\"waktu\":\"19:57\",\"tempat\":\"rumah bosku\",\"nama_ortu\":\"Antonius Medon Tukan \\/ Yohanna Parrangan\",\"ket_ortu\":\"Tiada Bosku\",\"nama_keluarga_mengundang\":\"Sedare Mare\",\"ket_keluarga_mengundang\":\"Handalan Semua\",\"penambahan_ket\":\"\"}'),
(57, 0, NULL, 1, 83, 1, '2020-08-17 20:00:52', 3, NULL, '{\"jenis_kertas\":\"25000\",\"jumlah_kertas\":\"10\",\"alamat\":\"Jln Bukit Indah, Soreang, Parepare\",\"nama\":\"Adrianus Aransina Tukan\",\"no_telpon\":\"0822516515615\",\"pekerjaan\":\"Programmer\",\"alamat_data\":\"Universitas Muhammadiyah Parepare\",\"media_sosial\":\"www.facebook.com\\/kicap.karan\",\"penambahan_ket\":\"\"}'),
(58, 0, NULL, 1, 83, 3, '2023-07-21 10:10:54', 3, NULL, '{\"jenis_kertas\":\"1000\",\"jumlah_kertas\":\"3\",\"alamat\":\"Jln Bukit Indah, Soreang, Parepare\",\"nama\":\"asasas\",\"no_telpon\":\"45545\",\"pekerjaan\":\"rtrtr\",\"alamat_data\":\"trtrt\",\"media_sosial\":\"rtrtr\",\"penambahan_ket\":\"trtrtrt\"}'),
(59, 0, NULL, 7, 87, 7, '2024-01-11 02:10:12', 3, '2024-01-11 02:34:53', '{\"jenis_kertas\":\"25000\",\"jumlah_kertas\":\"100\",\"alamat\":\"Belawang\",\"nama\":\"UDIN \",\"no_telpon\":\"0853226673256\",\"pekerjaan\":\"Karyawan\",\"alamat_data\":\"Konoha Rt.12\",\"media_sosial\":\"\",\"penambahan_ket\":\"Saya butuh cepat\"}'),
(60, 0, NULL, 7, 68, 7, '2024-01-19 15:57:39', 3, '2024-01-19 16:00:36', '{\"jenis_kertas\":\"4000\",\"jumlah_kertas\":\"5\",\"alamat\":\"sidrap\",\"nama_pertama\":\"Udin\",\"ket_nama_pertama\":\"Dokter\",\"nama_kedua\":\"Idin\",\"ket_nama_kedua\":\"Dokter\",\"tanggal\":\"2024-01-12\",\"akad\":\"Gedung\",\"resepsi\":\"Rumah\",\"nama_ortu_pertama\":\"Udin\",\"ket_ortu_pertama\":\"Dokter\",\"nama_ortu_kedua\":\"Idin\",\"ket_ortu_kedua\":\"Dokter\",\"nama_keluarga_mengundang\":\"Udin\",\"ket_keluarga_mengundang\":\"Dokter\",\"penambahan_ket\":\"Perlu Cepat\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `no` int(4) NOT NULL,
  `kategori` int(1) NOT NULL,
  `tanggal_upload` date DEFAULT NULL,
  `keterangan` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`no`, `kategori`, `tanggal_upload`, `keterangan`) VALUES
(10, 3, '2020-04-16', '{\"harga\":\"4000\",\"img\":\"images\\/produk\\/10.jpg\"}'),
(11, 3, '2020-04-16', '{\"harga\":\"3000\",\"img\":\"images\\/produk\\/11.jpg\"}'),
(13, 3, '2020-04-16', '{\"harga\":\"3500\",\"img\":\"images\\/produk\\/13.jpg\"}'),
(16, 3, '2020-04-16', '{\"harga\":\"3000\",\"img\":\"images\\/produk\\/16.jpg\"}'),
(17, 3, '2020-04-16', '{\"harga\":\"2500\",\"img\":\"images\\/produk\\/17.jpg\"}'),
(18, 3, '2020-04-16', '{\"harga\":\"4000\",\"img\":\"images\\/produk\\/18.jpg\"}'),
(19, 3, '2020-04-16', '{\"harga\":\"4500\",\"img\":\"images\\/produk\\/19.jpg\"}'),
(20, 3, '2020-04-16', '{\"harga\":\"3500\",\"img\":\"images\\/produk\\/20.jpg\"}'),
(21, 3, '2020-04-16', '{\"harga\":\"3000\",\"img\":\"images\\/produk\\/21.jpg\"}'),
(22, 3, '2020-04-16', '{\"harga\":\"5000\",\"img\":\"images\\/produk\\/22.jpg\"}'),
(23, 3, '2020-04-16', '{\"harga\":\"3000\",\"img\":\"images\\/produk\\/23.jpg\"}'),
(24, 3, '2020-04-16', '{\"harga\":\"3500\",\"img\":\"images\\/produk\\/24.jpg\"}'),
(68, 1, NULL, '{\"undangan\":\"2\",\"harga\":\"3000\",\"img\":\"images\\/produk\\/68.jpg\"}'),
(69, 1, NULL, '{\"undangan\":\"2\",\"harga\":\"2500\",\"img\":\"images\\/produk\\/69.jpg\"}'),
(70, 1, NULL, '{\"undangan\":\"2\",\"harga\":\"2000\",\"img\":\"images\\/produk\\/70.jpg\"}'),
(71, 1, NULL, '{\"undangan\":\"2\",\"harga\":\"3000\",\"img\":\"images\\/produk\\/71.jpg\"}'),
(72, 1, NULL, '{\"undangan\":\"2\",\"harga\":\"3000\",\"img\":\"images\\/produk\\/72.jpg\"}'),
(73, 1, NULL, '{\"undangan\":\"2\",\"harga\":\"3000\",\"img\":\"images\\/produk\\/73.jpg\"}'),
(74, 1, NULL, '{\"undangan\":\"2\",\"harga\":\"2000\",\"img\":\"images\\/produk\\/74.jpg\"}'),
(75, 1, NULL, '{\"undangan\":\"1\",\"harga\":\"2000\",\"img\":\"images\\/produk\\/75.jpg\"}'),
(76, 1, NULL, '{\"undangan\":\"1\",\"harga\":\"1500\",\"img\":\"images\\/produk\\/76.jpg\"}'),
(77, 1, NULL, '{\"undangan\":\"1\",\"harga\":\"2000\",\"img\":\"images\\/produk\\/77.jpg\"}'),
(78, 1, NULL, '{\"undangan\":\"1\",\"harga\":\"2500\",\"img\":\"images\\/produk\\/78.jpg\"}'),
(79, 1, NULL, '{\"undangan\":\"1\",\"harga\":\"2000\",\"img\":\"images\\/produk\\/79.jpg\"}'),
(80, 1, NULL, '{\"undangan\":\"1\",\"harga\":\"2000\",\"img\":\"images\\/produk\\/80.jpg\"}'),
(81, 1, NULL, '{\"undangan\":\"1\",\"harga\":\"1500\",\"img\":\"images\\/produk\\/81.jpg\"}'),
(82, 1, NULL, '{\"undangan\":\"1\",\"harga\":\"1500\",\"img\":\"images\\/produk\\/82.jpg\"}'),
(83, 2, NULL, '{\"harga\":\"1000\",\"img\":\"images\\/produk\\/83.jpg\"}'),
(84, 2, NULL, '{\"harga\":\"1500\",\"img\":\"images\\/produk\\/84.jpg\"}'),
(85, 2, NULL, '{\"harga\":\"1500\",\"img\":\"images\\/produk\\/85.jpg\"}'),
(86, 2, NULL, '{\"harga\":\"1500\",\"img\":\"images\\/produk\\/86.jpg\"}'),
(87, 2, NULL, '{\"harga\":\"1500\",\"img\":\"images\\/produk\\/87.jpg\"}'),
(88, 2, NULL, '{\"harga\":\"1000\",\"img\":\"images\\/produk\\/88.jpg\"}'),
(89, 2, NULL, '{\"harga\":\"1500\",\"img\":\"images\\/produk\\/89.jpg\"}'),
(90, 2, NULL, '{\"harga\":\"1500\",\"img\":\"images\\/produk\\/90.jpg\"}'),
(91, 2, NULL, '{\"harga\":\"1000\",\"img\":\"images\\/produk\\/91.jpg\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekening`
--

CREATE TABLE `tb_rekening` (
  `no` int(2) NOT NULL,
  `jenis_bank` varchar(50) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `nomor_bank` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rekening`
--

INSERT INTO `tb_rekening` (`no`, `jenis_bank`, `nama_bank`, `nomor_bank`) VALUES
(1, 'BNI', 'Kasep_Code', '0453488897'),
(2, 'BRI', 'Kasep_Code', '001701011645531'),
(3, 'Bank Mandiri', 'Kasep_Code', '9000007396360'),
(4, 'BCA', 'Kasep_Code', '0402495829');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `no` int(1) NOT NULL,
  `ket_user` varchar(100) NOT NULL,
  `ket_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`no`, `ket_user`, `ket_admin`) VALUES
(1, 'Belum Mengirim Bukti Pembayaran', 'Belum Mengirim Bukti Pembayaran'),
(2, 'Proses Pengesahan Bukti Pembayaran', 'Bukti Pembayaran Telah Dikirim / Menunggu Proses Pengesahan'),
(3, 'Pembayaran Disahkan / Sedang Dalam Proses Pembuatan Desain', 'Pembayaran Disahkan / Dalam Proses Pembuatan Desain'),
(4, 'Desain Selesai / Menunggu Pengesahan Dari Anda', 'Desain Selesai / Menunggu Pengesahan Dari Pembeli'),
(5, 'Desain Diterima / Menunggu Pencetakan Pesanan Desain Dari Tim Desain', 'Desain Diterima / Menunggu Pencetakan Pesanan Desain'),
(6, 'Cetakan Selesai / Pesanan Dapat Diambil', 'Pesanan Cetakan Akan Diambil / Menunggu Pengesahan Penerimaan Dari Pembeli'),
(7, 'Pesanan Diterima', 'Pesanan Diterima Pembeli'),
(8, 'Pesanan Diterima / Pengembalian Dalam Pengesahan', 'Pesanan Diterima / Pengesahan Detail Pengembalian Pembeli'),
(9, 'Pengesahan Pengembalian Diterima / Pesanan Gantian Sedang Dicetak', 'Pengesahan Pengembalian Diterima / Mencetak Pesanan Gantian'),
(10, 'Pesanan Gantian Dapat Diambil', 'Pesanan Gantian Diambil / Menunggu Pengesahan Penerimaan Dari Pembeli'),
(11, 'Pesanan Gantian Telah Diterima', 'Pesanan Gantian Telah Diterima Pembeli');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `no` int(3) NOT NULL,
  `id_user` int(3) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`no`, `id_user`, `username`, `password`, `level`) VALUES
(1, 1, 'Aran65831', 'Aran65831', 2),
(3, NULL, 'admin', 'admin', 1),
(4, 3, 'yuni36673', 'yuni36673', 2),
(5, 4, 'uni45', 'uni45', 2),
(6, 5, 'mia64', 'mia64', 2),
(7, 6, 'chica65', 'chica65', 2),
(8, 7, 'ip33', 'ip33', 2),
(9, 8, 'dilla84578', 'dilla84578', 2),
(10, 9, 'al65', 'al65', 2),
(11, 10, 'lina66', 'lina66', 2),
(12, 11, 'Kasep_Code222211', 'Kasep_Code222211', 2),
(13, 12, 'Udin325612', 'Udin325612', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_foto_pembelian`
--
ALTER TABLE `tb_foto_pembelian`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_komen`
--
ALTER TABLE `tb_komen`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `tb_komen_desain_sendiri`
--
ALTER TABLE `tb_komen_desain_sendiri`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `tb_pembeli`
--
ALTER TABLE `tb_pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`no`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `tb_rekening`
--
ALTER TABLE `tb_rekening`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `no` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_pembeli`
--
ALTER TABLE `tb_pembeli`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  MODIFY `no` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `no` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tb_rekening`
--
ALTER TABLE `tb_rekening`
  MODIFY `no` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `no` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_foto_pembelian`
--
ALTER TABLE `tb_foto_pembelian`
  ADD CONSTRAINT `tb_foto_pembelian_ibfk_1` FOREIGN KEY (`no`) REFERENCES `tb_pembelian` (`no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_komen`
--
ALTER TABLE `tb_komen`
  ADD CONSTRAINT `tb_komen_ibfk_1` FOREIGN KEY (`no`) REFERENCES `tb_produk` (`no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_komen_desain_sendiri`
--
ALTER TABLE `tb_komen_desain_sendiri`
  ADD CONSTRAINT `tb_komen_desain_sendiri_ibfk_1` FOREIGN KEY (`no`) REFERENCES `tb_pembelian` (`no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  ADD CONSTRAINT `tb_pembelian_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `tb_pembeli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pembelian_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pembelian_ibfk_3` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksi` (`no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pembelian_ibfk_4` FOREIGN KEY (`kategori`) REFERENCES `tb_kategori` (`no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD CONSTRAINT `tb_produk_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `tb_kategori` (`no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_pembeli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `db_praktikum_web2`
--
CREATE DATABASE IF NOT EXISTS `db_praktikum_web2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_praktikum_web2`;

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
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `npm` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `npm`, `jurusan`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `gender`, `foto`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '2010010033', 'TI', 'Banjarmasin', '2024-08-01', 'Banjarmasin', 'Perempuan', '2010010033_7-1433982135748.jpg', 3, '2024-08-09 22:15:43', '2024-08-09 22:23:06');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_19_133540_create_mahasiswas_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin_Utama', 'admin', '$2y$10$Pksum9FXdLUyZnrL4nI3x.1VE5ylgw00evahh27/to08PmvIDeJpC', 'admin', '2024-07-26 04:03:26', '2024-07-26 04:03:26'),
(2, 'Taufik', 'Taufik', '$2y$10$LmyypTbLFgZ7.NRipIurdODqd/DnyZCSgV4fcggFDwBbgVz9RS7IO', 'mahasiswa', '2024-08-09 21:53:06', '2024-08-09 21:55:21'),
(3, 'Moreno', 'Abellll', '$2y$10$.y0SJ7WDmRdplmG0ZgmZmuSJv4M6Q5xO7ScygiiXfJYFVBj/X4asa', 'mahasiswa', '2024-08-09 22:15:43', '2024-08-09 22:23:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `dvwa`
--
CREATE DATABASE IF NOT EXISTS `dvwa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dvwa`;

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE `guestbook` (
  `comment_id` smallint(5) UNSIGNED NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guestbook`
--

INSERT INTO `guestbook` (`comment_id`, `comment`, `name`) VALUES
(1, 'This is a test comment.', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `user` varchar(15) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `avatar` varchar(70) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `failed_login` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `user`, `password`, `avatar`, `last_login`, `failed_login`) VALUES
(1, 'admin', 'admin', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '/DVWA-master/hackable/users/admin.jpg', '2023-07-09 07:39:43', 0),
(2, 'Gordon', 'Brown', 'gordonb', 'e99a18c428cb38d5f260853678922e03', '/DVWA-master/hackable/users/gordonb.jpg', '2023-07-09 07:39:43', 0),
(3, 'Hack', 'Me', '1337', '8d3533d75ae2c3966d7e0d4fcc69216b', '/DVWA-master/hackable/users/1337.jpg', '2023-07-09 07:39:43', 0),
(4, 'Pablo', 'Picasso', 'pablo', '0d107d09f5bbe40cade3de5c71e9e9b7', '/DVWA-master/hackable/users/pablo.jpg', '2023-07-09 07:39:43', 0),
(5, 'Bob', 'Smith', 'smithy', '5f4dcc3b5aa765d61d8327deb882cf99', '/DVWA-master/hackable/users/smithy.jpg', '2023-07-09 07:39:43', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `comment_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `filemanager_pkl`
--
CREATE DATABASE IF NOT EXISTS `filemanager_pkl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `filemanager_pkl`;

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id_file` int(11) NOT NULL,
  `nama_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id_file`, `nama_file`) VALUES
(15, 'Simple Countertop Preview.png'),
(16, 'Simple Countertop Preview.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id_file`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `fti`
--
CREATE DATABASE IF NOT EXISTS `fti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fti`;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama_jabatan`) VALUES
(1, 'HRD'),
(2, 'Karyawans'),
(3, 'Advissor');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nik` varchar(225) NOT NULL,
  `nama_lengkap` varchar(225) NOT NULL,
  `handphone` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `pengguna` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `nama_lokasi`) VALUES
(5, 'Banjarmasin'),
(6, 'Surabaya'),
(7, 'Banjarbaru'),
(8, 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `peran` enum('ADMIN','USER') DEFAULT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `peran`, `login_terakhir`) VALUES
(1, 'admin', '$2y$10$baqQ4zTS37tzcjXzcU9GjO5.a.IIvc1OX1.kwHleKXxjVo9dZXDK2', 'ADMIN', '2024-01-12 11:53:45'),
(2, 'user', '$2y$10$gBV9hnlsGw6jzOrnmaTKROgwyEdVIdzEOMk3hpXFY2G9QwBoo2yEa', 'USER', '2022-01-18 09:59:08'),
(9, 'admin1', 'admin1', NULL, '2024-01-05 12:38:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `khanstore`
--
CREATE DATABASE IF NOT EXISTS `khanstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `khanstore`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(3, 'Rizwan', 'rizwan@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0'),
(4, 'ajay', 'ajay@gmail.com', '$2y$10$UGzx/ODNB4ZSFruRF8BN2eC/NNE.6MBhfTTYKtUo.k4ZVHZFD85DO', '0'),
(5, 'Rizwan', 'rizwankhan@gmail.com', '$2y$10$qZ0OoyX8bhAVxDFM/fx8leZSZwlyq15c1C/KTnaqDLSx6eCDJ0VpC', '0'),
(6, 'Faizan', 'faizan@gmail.com', '$2y$10$Ll2.sETLuB8sdhh1LRK4e.cQqn4CtTEudFg.exhf76D6rGzSOwWNm', '0'),
(7, 'Ajay Kumar', 'ajaykumar@gmail.com', '$2y$10$8GlkawEDsNrOQr8Vgv0GceD/MhVpHAXM4xqtMo0.SUaHFXe03MRdi', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Adidas'),
(2, 'Nike'),
(3, 'Reebok'),
(4, 'PUMA');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(4, 1, '::1', 3, 1),
(5, 4, '::1', 3, 1),
(6, 1, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Ladies Wearss'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(12, 'Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 12, 2, 'Men\'s Running Shoes. Nike ID', 10000, 50, 'Its a good shoes', 'nike1.jpg', 'nike, shoes, run'),
(2, 12, 3, 'Question Mid Men\'s Basketball Shoes', 40000, 5000, 'for men', 'reebok1.jpg', 'reebok, shoes, men wear'),
(4, 12, 2, 'Nike Air Zoom Alphafly NEXT% 2', 4089000, 100, 'what a color', 'nike2.jpg', 'nike, shoes, run'),
(5, 12, 2, 'Nike ZoomX Vaporfly NEXT% 2', 3209000, 5000, 'brand new shoes', 'nike3.jpg', 'nike, shoes, run');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '$2y$10$nrHEvIUwfzCI..xnLSt8D.POakAokuYB2Wt7kuWrPkIdUvYaKZdNC', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa'),
(3, 'Budi', 'Budiman', 'budi123@gmail.com', '70873e8580c9900986939611618d7b1e', '0882427389', 'Banjarmasin', 'Bjm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
--
-- Database: `mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `mahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mahasiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(20) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mahasiswa`, `prodi`, `tanggal_lahir`, `tempat_lahir`) VALUES
(123123, 'awdawed', 'safsf', '0000-00-00', 'asfadadw'),
(2010010014, 'Son Goku', 'Sistem Informasi', '2022-06-07', 'Namek'),
(2010010017, 'Taufik RIdhani', 'Teknik Informatika', '2002-06-20', 'Belawang'),
(2010010018, 'Uchiha Sasuke', 'Teknik Informatika', '2000-08-20', 'Konoha'),
(2010010038, 'Hashirama', 'Teknik Mesin', '2022-06-08', 'Konoha');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nm_mahasiswa` varchar(50) NOT NULL,
  `prodi` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
--
-- Database: `pbo4d`
--
CREATE DATABASE IF NOT EXISTS `pbo4d` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pbo4d`;

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `NIM` int(20) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jenis_Kelamin` varchar(11) NOT NULL,
  `Nomor_HP` int(12) NOT NULL,
  `Agama` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`NIM`, `Nama`, `Jenis_Kelamin`, `Nomor_HP`, `Agama`, `Status`) VALUES
(2010010017, 'Taufik Ridhani', 'Laki-Laki', 83332122, 'Islam', 'Aktif');
--
-- Database: `penggajian`
--
CREATE DATABASE IF NOT EXISTS `penggajian` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `penggajian`;

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id`, `nama`) VALUES
(1, 'Marketing'),
(2, 'HRD'),
(3, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` int(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `gaji_pokok` int(11) DEFAULT NULL,
  `status_karyawan` enum('TETAP','KONTRAK','MAGANG') DEFAULT NULL,
  `bagian_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `tanggal_mulai`, `gaji_pokok`, `status_karyawan`, `bagian_id`) VALUES
(1, 'WACHID', '2022-10-01', 3100000, 'TETAP', 3),
(2, 'DWI', '2011-01-05', 3100000, 'TETAP', 2),
(3, 'TRIO', '2011-01-05', 2900000, 'TETAP', 1),
(4, 'ARBA', '2015-09-09', 2400000, 'KONTRAK', 1),
(5, 'PANCA', '2019-09-09', 2200000, 'KONTRAK', 1),
(6, 'SITI', '2021-09-16', 1500000, 'MAGANG', 1),
(8, 'WINDU', '2018-08-08', 1300000, 'KONTRAK', 1),
(9, 'NINO', '2022-01-05', 1000000, 'TETAP', 1),
(11, 'EVAN', '2022-01-05', 1000000, 'MAGANG', 1),
(12, 'TIWI', '2022-12-31', 1234567, 'MAGANG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penggajian`
--

CREATE TABLE `penggajian` (
  `id` int(11) NOT NULL,
  `karyawan_nik` varchar(20) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `bulan` char(2) DEFAULT NULL,
  `gaji_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penggajian`
--

INSERT INTO `penggajian` (`id`, `karyawan_nik`, `tahun`, `bulan`, `gaji_bayar`) VALUES
(1, '0001', 2015, '07', 1000000),
(2, '0002', 2015, '07', 1000000),
(3, '0001', 2015, '08', 1000000),
(4, '0002', 2015, '08', 1000000),
(5, '0001', 2015, '09', 1200000),
(6, '0002', 2015, '09', 1200000),
(7, '0003', 2015, '09', 1000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `nik` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `penggajian`
--
ALTER TABLE `penggajian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `prodisp`
--
CREATE DATABASE IF NOT EXISTS `prodisp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prodisp`;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `totalamt` varchar(255) DEFAULT NULL,
  `itemsid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `username`, `email`, `mobile`, `totalamt`, `itemsid`, `type`) VALUES
(1, 'default', 'check@def', '787866699', '55.00', '1,3', 'selfpickup');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_adress`) VALUES
(2, 'Taufik', 'admin', 'admin', '0821654783', 'taufikgnteng@gmail.com', 'Desa Belawang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(100) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Lemari'),
(2, 'Meja');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `qty` int(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `qty`, `image`, `price`) VALUES
(1, 'Sofa Abu-abu', 0, '1.JFIF', 200000),
(2, 'Sofa Hitam', 0, '2.JFIF', 240000),
(3, 'Meja Putih', 0, '3.JFIF', 120000),
(4, 'Meja Hitam', 0, '4.JFIF', 150000),
(5, 'Kursi Kantor Hitam', 0, '5.JFIF', 350000),
(6, 'Kursi Direktur', 0, '6.JFIF', 450000),
(7, 'Lemari Kayu', 0, '7.JFIF', 500000),
(8, 'Lemari Iron', 0, '8.JFIF', 650000),
(9, 'TV LED PANASONIC', 0, '9.JFIF', 2400000),
(10, 'SMART TV SAMSUNG', 0, '10.JFIF', 3500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `psiswa`
--
CREATE DATABASE IF NOT EXISTS `psiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `psiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `calon_siswa`
--

CREATE TABLE `calon_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(16) NOT NULL,
  `agama` varchar(16) NOT NULL,
  `sekolah_asal` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon_siswa`
--

INSERT INTO `calon_siswa` (`id`, `nama`, `alamat`, `jenis_kelamin`, `agama`, `sekolah_asal`) VALUES
(1, 'Priscili Ayuliani', 'Jl. Mangga No. 3, Mataram', 'perempuan', 'Islam', 'SMPN 32 Ampenan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon_siswa`
--
ALTER TABLE `calon_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calon_siswa`
--
ALTER TABLE `calon_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `shop_db`
--
CREATE DATABASE IF NOT EXISTS `shop_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop_db`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(69, 1, '', 600, 1, '10.jfif'),
(70, 3, 'lemari', 100000, 1, '7.jfif'),
(71, 4, 'monitor', 600, 1, '10.jfif'),
(72, 5, 'monitor', 600, 1, '10.jfif'),
(73, 6, 'kursi gaming', 40000, 1, '5.jfif'),
(86, 8, 'lemari', 100000, 2, '7.jfif'),
(87, 8, 'kursi gaming', 40000, 5, '5.jfif'),
(94, 19, 'Bahan Pangan', 60000, 5, 'Beras Maknyuss.jpg'),
(95, 19, 'Minuman', 2000, 4, 'Aqua.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `db_belibarang`
--

CREATE TABLE `db_belibarang` (
  `id` int(255) NOT NULL,
  `id_pembelian` int(225) NOT NULL,
  `kode_pembelian` int(225) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `nm_supplier` varchar(225) NOT NULL,
  `nm_barang` varchar(225) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `jumlah_barang` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_belibarang`
--

INSERT INTO `db_belibarang` (`id`, `id_pembelian`, `kode_pembelian`, `tgl_pembelian`, `nm_supplier`, `nm_barang`, `harga_barang`, `jumlah_barang`) VALUES
(1, 101, 405, '2023-05-02', 'Toko Makmur Sentosa Aman Jaya', 'Soda Api (Pack)', 20000, 10),
(2, 112, 402, '2023-05-11', 'Toko Lee Chung Wee', 'Sabun Cair', 120000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `db_jualbarang`
--

CREATE TABLE `db_jualbarang` (
  `id` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `kode_penjualan` int(11) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `nm_supplier` varchar(225) NOT NULL,
  `nm_barang` varchar(225) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_jualbarang`
--

INSERT INTO `db_jualbarang` (`id`, `id_penjualan`, `kode_penjualan`, `tgl_penjualan`, `nm_supplier`, `nm_barang`, `harga_barang`, `jumlah`, `sub_total`) VALUES
(1, 220, 572, '2023-05-08', 'Toko LUTNA', 'Minuman Botol', 5000, 10, 500000),
(2, 332, 478, '2023-05-05', 'Toko LUTNA', 'Beras Karung 5Kg', 60000, 5, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `db_pendapatan`
--

CREATE TABLE `db_pendapatan` (
  `id` int(11) NOT NULL,
  `periode` int(11) NOT NULL,
  `hasil_penjualan` int(11) NOT NULL,
  `total_belisupplier` int(11) NOT NULL,
  `gj_karyawan` int(11) NOT NULL,
  `laba_kotor` int(11) NOT NULL,
  `laba_bersih` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_pendapatan`
--

INSERT INTO `db_pendapatan` (`id`, `periode`, `hasil_penjualan`, `total_belisupplier`, `gj_karyawan`, `laba_kotor`, `laba_bersih`) VALUES
(1, 2, 2000000, 4000000, 800000, 5000000, 450000),
(2, 5, 3000000, 3500000, 850000, 450000, 380000);

-- --------------------------------------------------------

--
-- Table structure for table `db_returnbarang`
--

CREATE TABLE `db_returnbarang` (
  `id` int(11) DEFAULT NULL,
  `kode_barang` int(11) NOT NULL,
  `status` varchar(225) NOT NULL,
  `faktur_pembelian` date NOT NULL,
  `supplier` varchar(225) NOT NULL,
  `pelaksana` varchar(225) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `tgl_dibuat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_returnbarang`
--

INSERT INTO `db_returnbarang` (`id`, `kode_barang`, `status`, `faktur_pembelian`, `supplier`, `pelaksana`, `tgl_pembelian`, `tgl_dibuat`) VALUES
(1, 888, 'kembali', '2023-05-12', 'PT KHONG SAN', 'UMIN', '2023-05-10', '2023-05-12'),
(2, 0, '', '0000-00-00', '', '', '0000-00-00', '0000-00-00'),
(1, 888, 'kembali', '2023-05-12', 'PT KHONG SAN', 'UMIN', '2023-05-10', '2023-05-12'),
(2, 0, '', '0000-00-00', '', '', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `shipping` varchar(24) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `id_product` varchar(225) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `merk` varchar(225) NOT NULL,
  `price` int(100) NOT NULL,
  `sell_price` int(225) NOT NULL,
  `qty` int(5) NOT NULL,
  `tgl_input` varchar(225) NOT NULL,
  `tgl_update` varchar(225) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_product`, `id_kategori`, `name`, `merk`, `price`, `sell_price`, `qty`, `tgl_input`, `tgl_update`, `image`) VALUES
(4, '01-AQU', 1, 'Minuman', 'Aqua', 2000, 5000, 20, '2023-05-21', '', 'Aqua.jpg'),
(5, '02-BKM', 2, 'Bahan Pangan', 'Beras Karung Maknyuss', 60000, 95000, 10, '2023-05-21', '', 'Beras Maknyuss.jpg'),
(6, '221', 2, 'Gula', 'Gulaku', 15000, 18000, 30, '2023-05-11', '', 'Gula.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `no` varchar(20) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ttl` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `no`, `gambar`, `name`, `ttl`, `alamat`, `email`, `password`, `user_type`) VALUES
(2, '0', '', 'sds', '', '', 'awde2@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(19, '089145723586', 'Foto Almameter Merah.jpg', 'TaufikR', 'Hokaido, 20-10-2009', 'Yokohama, Japan', '', '283dcb041862d66ee731742d2c176c59', 'user'),
(20, '082233441122', 'bapak.jpg', 'Admin Udin', 'Hokaido, 26-10-20010', 'Yokohama, Japan', '', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(21, '08234645573', 'bapak.jpg', 'Amat', 'Jakarta, 20-02-1992', 'Jl. Ahmad Dhani RT/RW 007/000 Kab.Bogor', '', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_belibarang`
--
ALTER TABLE `db_belibarang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_jualbarang`
--
ALTER TABLE `db_jualbarang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_pendapatan`
--
ALTER TABLE `db_pendapatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `db_belibarang`
--
ALTER TABLE `db_belibarang`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_jualbarang`
--
ALTER TABLE `db_jualbarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_pendapatan`
--
ALTER TABLE `db_pendapatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Database: `simawar_4k`
--
CREATE DATABASE IF NOT EXISTS `simawar_4k` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `simawar_4k`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bagian`
--

CREATE TABLE `tb_bagian` (
  `id_bagian` int(11) NOT NULL,
  `nm_bagian` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bagian`
--

INSERT INTO `tb_bagian` (`id_bagian`, `nm_bagian`) VALUES
(1, 'rektorat'),
(2, 'Keuangan'),
(3, 'Kepegawaian'),
(4, 'Akreditasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_srt_klr`
--

CREATE TABLE `tb_srt_klr` (
  `id_srt_klr` int(11) NOT NULL,
  `no_srt` varchar(50) NOT NULL,
  `tgl_srt` date NOT NULL,
  `lampiran` varchar(50) NOT NULL,
  `hal` varchar(100) NOT NULL,
  `untuk` text NOT NULL,
  `file` text NOT NULL,
  `penandatangan` int(11) NOT NULL,
  `tgl_ttd` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `oleh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_srt_klr`
--

INSERT INTO `tb_srt_klr` (`id_srt_klr`, `no_srt`, `tgl_srt`, `lampiran`, `hal`, `untuk`, `file`, `penandatangan`, `tgl_ttd`, `status`, `tgl_input`, `oleh`) VALUES
(1, '001/UNISKA/A.15/2022', '2022-06-10', '1 BERKAS', 'PERJANJIAN KERJA SAMA', 'UNIVERSITAS LAMBUNG MANGKURAT', 'surat.pdf', 4, '2022-06-10', 'Ditanda tangani', '2022-06-10 15:59:44', 'Moreno');

-- --------------------------------------------------------

--
-- Table structure for table `tb_srt_msk`
--

CREATE TABLE `tb_srt_msk` (
  `id_srt_msk` int(11) NOT NULL,
  `no_srt` varchar(50) NOT NULL,
  `tgl_srt` date NOT NULL,
  `lampiran` varchar(50) NOT NULL,
  `hal` varchar(100) NOT NULL,
  `dari` text NOT NULL,
  `file` text NOT NULL,
  `tgl_terima` datetime NOT NULL,
  `penerima` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_srt_msk`
--

INSERT INTO `tb_srt_msk` (`id_srt_msk`, `no_srt`, `tgl_srt`, `lampiran`, `hal`, `dari`, `file`, `tgl_terima`, `penerima`) VALUES
(1, '001/ULM/A.15/2022', '2022-06-10', '-', 'Permintaan kerja sama', 'ULM UNIVERSITAS LAMBUNG MANGKURAT', 'surat.pdf', '2022-06-10 15:51:42', 'moreno');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nm_user` varchar(100) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `id_bagian` int(11) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` int(11) NOT NULL,
  `tgl_reg` datetime NOT NULL,
  `oleh` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `theme` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `nm_user`, `nik`, `id_bagian`, `telp`, `email`, `foto`, `password`, `level`, `tgl_reg`, `oleh`, `status`, `theme`) VALUES
(1, 'upik', 'upik', '2010010017', 1, '0895704113699', 'upiks@gmail.com', 'default.png', '$2y$10$YNPFtL0qQhmy2HSMngrImeFqWSe3d6ElCJRBJsxlusqupYBZ2NIBq', 1, '2022-06-10 15:19:08', 'upik', 1, 'semi-dark'),
(2, 'udin', 'udin', '12928772', 2, '5648645452', 'udin@gmail.com', 'default.png', '$2y$10$YNPFtL0qQhmy2HSMngrImeFqWSe3d6ElCJRBJsxlusqupYBZ2NIBq', 2, '2022-06-10 15:23:41', 'udin', 1, 'semi-dark'),
(3, 'usup', 'usup', '845452346', 3, '131534844', 'usupgaming@gmail.com', 'default.png', '$2y$10$YNPFtL0qQhmy2HSMngrImeFqWSe3d6ElCJRBJsxlusqupYBZ2NIBq', 3, '2022-06-10 15:23:41', 'usup', 1, 'semi-dark');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bagian`
--
ALTER TABLE `tb_bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indexes for table `tb_srt_klr`
--
ALTER TABLE `tb_srt_klr`
  ADD PRIMARY KEY (`id_srt_klr`);

--
-- Indexes for table `tb_srt_msk`
--
ALTER TABLE `tb_srt_msk`
  ADD PRIMARY KEY (`id_srt_msk`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bagian`
--
ALTER TABLE `tb_bagian`
  MODIFY `id_bagian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_srt_klr`
--
ALTER TABLE `tb_srt_klr`
  MODIFY `id_srt_klr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_srt_msk`
--
ALTER TABLE `tb_srt_msk`
  MODIFY `id_srt_msk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `store_akhtar`
--
CREATE DATABASE IF NOT EXISTS `store_akhtar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `store_akhtar`;

-- --------------------------------------------------------

--
-- Table structure for table `mstr_customer`
--

CREATE TABLE `mstr_customer` (
  `cust_id` int(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mstr_customer`
--

INSERT INTO `mstr_customer` (`cust_id`, `nama`, `alamat`, `telp`) VALUES
(1, 'Dapa', 'JL Tembus Mantuil', '080990909'),
(2, 'Satria', 'Basirih', '089907689'),
(3, 'Putri', 'Kelayan B', '089079809'),
(4, 'Rahul', 'Banjarbaru', '08979908');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_product`
--

CREATE TABLE `mstr_product` (
  `prd_id` varchar(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `satuan` varchar(32) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mstr_product`
--

INSERT INTO `mstr_product` (`prd_id`, `nama`, `satuan`, `harga`, `stok`) VALUES
('P01', 'Rinso', 'pcs', 13000, 49),
('P02', 'Molto', 'pcs', 2000, 100),
('P03', 'Sikat Cuci Medium', 'pcs', 7500, 41),
('P04', 'Capit Cucian', 'pcs', 15000, 8),
('P05', 'Sampo', 'pcs', 9000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `mstr_user`
--

CREATE TABLE `mstr_user` (
  `user_id` varchar(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` datetime NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mstr_user`
--

INSERT INTO `mstr_user` (`user_id`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `password`) VALUES
('01', 'admin', 'Laki-laki', 'bjm', '2022-10-20 00:00:00', 'bjm', 'admin'),
('1', 'Moreno', 'Laki-laki', 'Banjarmasin', '2022-06-02 00:00:00', 'Jl Tembus Mantuil GG Gandapura', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ttrs_penjualan`
--

CREATE TABLE `ttrs_penjualan` (
  `faktur` varchar(32) NOT NULL,
  `tanggal` date NOT NULL,
  `cust_id` int(32) NOT NULL,
  `user_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ttrs_penjualan`
--

INSERT INTO `ttrs_penjualan` (`faktur`, `tanggal`, `cust_id`, `user_id`) VALUES
('FPra19', '2022-11-01', 2, '01'),
('FPra20', '2022-11-11', 5, '01');

-- --------------------------------------------------------

--
-- Table structure for table `ttrs_penjualan_detail`
--

CREATE TABLE `ttrs_penjualan_detail` (
  `faktur` varchar(32) NOT NULL,
  `prd_id` varchar(32) NOT NULL,
  `qty` int(3) NOT NULL,
  `diskon` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ttrs_penjualan_detail`
--

INSERT INTO `ttrs_penjualan_detail` (`faktur`, `prd_id`, `qty`, `diskon`) VALUES
('TP_01', 'ZP-000001', 1, 0),
('TP_01', 'ZP-000002', 1, 0),
('TP_01', 'ZP-000004', 1, 0),
('TP_02', 'ZP-000001', 1, 0),
('TP_02', 'ZP-000002', 1, 0),
('TP_02', 'ZP-000005', 1, 0),
('TP_03', 'ZP-000001', 1, 0),
('TP_03', 'ZP-000002', 1, 0),
('TP_04', 'ZP-000004', 1, 0),
('TP_04', 'ZP-000005', 1, 0),
('TP_05', 'ZP-000002', 1, 0),
('TP_05', 'ZP-000004', 1, 0),
('TP_05', 'ZP-000005', 1, 0),
('TP_06', 'ZP-000001', 1, 0),
('TP_06', 'ZP-000002', 1, 0),
('TP_07', 'ZP-000002', 1, 0),
('TP_07', 'ZP-000003', 1, 0),
('TP_07', 'ZP-000004', 1, 0),
('TP_08', 'ZP-000002', 1, 0),
('TP_08', 'ZP-000003', 1, 0),
('TP_08', 'ZP-000004', 1, 0),
('TP_09', 'ZP-000003', 1, 0),
('TP_09', 'ZP-000004', 1, 0),
('TP_09', 'ZP-000005', 1, 0),
('TP_10', 'ZP-000001', 1, 0),
('TP_10', 'ZP-000002', 1, 0),
('TP_10', 'ZP-000003', 1, 0),
('TP_11', 'ZP-000001', 1, 0),
('TP_11', 'ZP-000002', 1, 0),
('TP_12', 'ZP-000001', 1, 0),
('TP_12', 'ZP-000003', 1, 0),
('TP_13', 'ZP-000001', 1, 0),
('TP_13', 'ZP-000004', 1, 0),
('TP_14', 'ZP-000001', 1, 0),
('TP_14', 'ZP-000005', 1, 0),
('TP_15', 'ZP-000002', 1, 0),
('TP_15', 'ZP-000003', 1, 0),
('TP_16', 'ZP-000002', 1, 0),
('TP_16', 'ZP-000004', 1, 0),
('TP_17', 'ZP-000002', 1, 0),
('TP_17', 'ZP-000005', 1, 0),
('TP_18', 'ZP-000003', 1, 0),
('TP_18', 'ZP-000004', 1, 0),
('TP_19', 'ZP-000003', 1, 0),
('TP_19', 'ZP-000005', 1, 0),
('TP_20', 'ZP-000004', 1, 0),
('TP_20', 'ZP-000005', 1, 0),
('TP_21', 'ZP-000001', 1, 0),
('TP_21', 'ZP-000002', 1, 0),
('TP_21', 'ZP-000003', 1, 0),
('TP_22', 'ZP-000001', 1, 0),
('TP_22', 'ZP-000002', 1, 0),
('TP_22', 'ZP-000004', 1, 0),
('TP_23', 'ZP-000001', 1, 0),
('TP_23', 'ZP-000002', 1, 0),
('TP_23', 'ZP-000005', 1, 0),
('TP_24', 'ZP-000001', 1, 0),
('TP_24', 'ZP-000003', 1, 0),
('TP_24', 'ZP-000004', 1, 0),
('TP_25', 'ZP-000001', 1, 0),
('TP_25', 'ZP-000003', 1, 0),
('TP_25', 'ZP-000005', 1, 0),
('TP_26', 'ZP-000001', 1, 0),
('TP_26', 'ZP-000004', 1, 0),
('TP_26', 'ZP-000005', 1, 0),
('TP_27', 'ZP-000002', 1, 0),
('TP_27', 'ZP-000003', 1, 0),
('TP_27', 'ZP-000004', 1, 0),
('TP_28', 'ZP-000002', 1, 0),
('TP_28', 'ZP-000003', 1, 0),
('TP_28', 'ZP-000005', 1, 0),
('TP_29', 'ZP-000002', 1, 0),
('TP_29', 'ZP-000004', 1, 0),
('TP_29', 'ZP-000005', 1, 0),
('TP_30', 'ZP-000003', 1, 0),
('TP_30', 'ZP-000004', 1, 0),
('TP_30', 'ZP-000005', 1, 0),
('TP_31', 'ZP-000001', 1, 0),
('TP_31', 'ZP-000002', 1, 0),
('TP_31', 'ZP-000003', 1, 0),
('TP_31', 'ZP-000004', 1, 0),
('TP_32', 'ZP-000001', 1, 0),
('TP_32', 'ZP-000002', 1, 0),
('TP_32', 'ZP-000003', 1, 0),
('TP_32', 'ZP-000005', 1, 0),
('TP_33', 'ZP-000001', 1, 0),
('TP_33', 'ZP-000002', 1, 0),
('TP_33', 'ZP-000004', 1, 0),
('TP_33', 'ZP-000005', 1, 0),
('TP_34', 'ZP-000001', 1, 0),
('TP_34', 'ZP-000003', 1, 0),
('TP_35', 'ZP-000004', 1, 0),
('TP_35', 'ZP-000005', 1, 0),
('TP_36', 'ZP-000002', 1, 0),
('TP_36', 'ZP-000003', 1, 0),
('TP_36', 'ZP-000004', 1, 0),
('TP_36', 'ZP-000005', 1, 0),
('TP_37', 'ZP-000001', 1, 0),
('TP_37', 'ZP-000002', 1, 0),
('TP_37', 'ZP-000003', 1, 0),
('TP_37', 'ZP-000004', 1, 0),
('TP_37', 'ZP-000005', 1, 0),
('TP_38', 'ZP-000002', 1, 0),
('TP_38', 'ZP-000003', 1, 0),
('TP_38', 'ZP-000005', 1, 0),
('TP_39', 'ZP-000002', 1, 0),
('TP_39', 'ZP-000004', 1, 0),
('TP_39', 'ZP-000005', 1, 0),
('TP_40', 'ZP-000003', 1, 0),
('TP_40', 'ZP-000004', 1, 0),
('TP_40', 'ZP-000005', 1, 0),
('TP_41', 'ZP-000001', 1, 0),
('TP_41', 'ZP-000002', 1, 0),
('TP_41', 'ZP-000003', 1, 0),
('TP_41', 'ZP-000004', 1, 0),
('TP_42', 'ZP-000001', 1, 0),
('TP_42', 'ZP-000002', 1, 0),
('TP_42', 'ZP-000003', 1, 0),
('TP_42', 'ZP-000005', 1, 0),
('TP_43', 'ZP-000001', 1, 0),
('TP_43', 'ZP-000002', 1, 0),
('TP_43', 'ZP-000003', 1, 0),
('TP_43', 'ZP-000004', 1, 0),
('TP_43', 'ZP-000005', 1, 0),
('TP_44', 'ZP-000001', 1, 0),
('TP_44', 'ZP-000002', 1, 0),
('TP_45', 'ZP-000001', 1, 0),
('TP_45', 'ZP-000003', 1, 0),
('TP_46', 'ZP-000001', 1, 0),
('TP_46', 'ZP-000004', 1, 0),
('TP_47', 'ZP-000001', 1, 0),
('TP_47', 'ZP-000005', 1, 0),
('TP_48', 'ZP-000002', 1, 0),
('TP_48', 'ZP-000003', 1, 0),
('TP_49', 'ZP-000002', 1, 0),
('TP_50', 'ZP-000004', 1, 0),
('TP_51', 'ZP-000002', 1, 0),
('TP_51', 'ZP-000005', 1, 0),
('TP_52', 'ZP-000003', 1, 0),
('TP_52', 'ZP-000004', 1, 0),
('TP_53', 'ZP-000003', 1, 0),
('TP_53', 'ZP-000005', 1, 0),
('TP_54', 'ZP-000004', 1, 0),
('TP_54', 'ZP-000005', 1, 0),
('TP_55', 'ZP-000001', 1, 0),
('TP_55', 'ZP-000002', 1, 0),
('TP_55', 'ZP-000003', 1, 0),
('TP_56', 'ZP-000001', 1, 0),
('TP_56', 'ZP-000002', 1, 0),
('TP_56', 'ZP-000004', 1, 0),
('TP_57', 'ZP-000001', 1, 0),
('TP_57', 'ZP-000002', 1, 0),
('TP_57', 'ZP-000005', 1, 0),
('TP_58', 'ZP-000001', 1, 0),
('TP_58', 'ZP-000003', 1, 0),
('TP_58', 'ZP-000004', 1, 0),
('TP_59', 'ZP-000001', 1, 0),
('TP_59', 'ZP-000003', 1, 0),
('TP_59', 'ZP-000005', 1, 0),
('TP_60', 'ZP-000001', 1, 0),
('TP_60', 'ZP-000004', 1, 0),
('TP_60', 'ZP-000005', 1, 0),
('TP_61', 'ZP-000002', 1, 0),
('TP_61', 'ZP-000003', 1, 0),
('TP_61', 'ZP-000004', 1, 0),
('TP_62', 'ZP-000002', 1, 0),
('TP_62', 'ZP-000003', 1, 0),
('TP_62', 'ZP-000005', 1, 0),
('TP_62', 'ZP-000002', 1, 0),
('TP_63', 'ZP-000002', 1, 0),
('TP_63', 'ZP-000003', 1, 0),
('TP_63', 'ZP-000005', 1, 0),
('TP_64', 'ZP-000002', 1, 0),
('TP_64', 'ZP-000004', 1, 0),
('TP_64', 'ZP-000005', 1, 0),
('TP_64', 'ZP-000003', 1, 0),
('TP_65', 'ZP-000004', 1, 0),
('TP_65', 'ZP-000005', 1, 0),
('TP_65', 'ZP-000001', 1, 0),
('TP_65', 'ZP-000002', 1, 0),
('TP_65', 'ZP-000003', 1, 0),
('TP_65', 'ZP-000004', 1, 0),
('TP_66', 'ZP-000001', 1, 0),
('TP_66', 'ZP-000002', 1, 0),
('TP_66', 'ZP-000003', 1, 0),
('TP_66', 'ZP-000005', 1, 0),
('TP_67', 'ZP-000001', 1, 0),
('TP_67', 'ZP-000002', 1, 0),
('TP_67', 'ZP-000003', 1, 0),
('TP_67', 'ZP-000004', 1, 0),
('TP_67', 'ZP-000005', 1, 0);

--
-- Triggers `ttrs_penjualan_detail`
--
DELIMITER $$
CREATE TRIGGER `tg_mstr_produk_stok` AFTER INSERT ON `ttrs_penjualan_detail` FOR EACH ROW BEGIN
UPDATE mstr_product SET stok=stok-new.qty
WHERE prd_id=new.prd_id;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mstr_customer`
--
ALTER TABLE `mstr_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `mstr_product`
--
ALTER TABLE `mstr_product`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `mstr_user`
--
ALTER TABLE `mstr_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ttrs_penjualan`
--
ALTER TABLE `ttrs_penjualan`
  ADD PRIMARY KEY (`faktur`),
  ADD KEY `cust_id` (`cust_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ttrs_penjualan_detail`
--
ALTER TABLE `ttrs_penjualan_detail`
  ADD KEY `prd_id` (`prd_id`),
  ADD KEY `faktur` (`faktur`),
  ADD KEY `prd_id_2` (`prd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mstr_customer`
--
ALTER TABLE `mstr_customer`
  MODIFY `cust_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `suhu_db`
--
CREATE DATABASE IF NOT EXISTS `suhu_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `suhu_db`;

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `id_device` int(2) NOT NULL,
  `tanggal` datetime NOT NULL,
  `tanggal_update` datetime DEFAULT NULL,
  `nama` varchar(24) NOT NULL,
  `status` varchar(24) NOT NULL,
  `kondisi_sensor` varchar(20) NOT NULL,
  `kerusakan` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id_device`, `tanggal`, `tanggal_update`, `nama`, `status`, `kondisi_sensor`, `kerusakan`) VALUES
(1, '2024-07-21 19:31:34', '2024-07-31 09:09:11', 'Arduino A01', 'Dipasang', 'Baik', ''),
(2, '2024-07-21 19:51:22', '2024-07-31 09:09:02', 'Arduino B01', 'Dipasang', 'Baik', ''),
(43, '2024-07-31 09:28:32', NULL, 'Arduino C01', 'Baru', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `device_baru`
--

CREATE TABLE `device_baru` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nama` varchar(24) NOT NULL,
  `status` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `device_rusak`
--

CREATE TABLE `device_rusak` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `ruangan` varchar(24) NOT NULL,
  `nama` varchar(24) NOT NULL,
  `kerusakan` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_rusak`
--

INSERT INTO `device_rusak` (`id`, `tanggal`, `ruangan`, `nama`, `kerusakan`) VALUES
(1, '2024-07-04', 'Ruangan Server D', 'Arduino A04', 'Kabel Putus'),
(2, '2024-07-04', 'Ruangan Server E', 'Arduino A05', 'Sensor Mati');

-- --------------------------------------------------------

--
-- Table structure for table `kinerja_sensor`
--

CREATE TABLE `kinerja_sensor` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_sensor` int(10) NOT NULL,
  `rincian` varchar(120) NOT NULL,
  `hasil` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kinerja_sensor`
--

INSERT INTO `kinerja_sensor` (`id`, `tanggal`, `id_sensor`, `rincian`, `hasil`) VALUES
(1, '2024-07-03', 0, 'Membaca suhu ruangan server', 'Berfungsi'),
(2, '2024-07-04', 0, 'Membaca suhu ruangan server', 'berfungsi'),
(3, '2024-07-04', 19, 'Mendeteksi Suhu Ruangan Server', 'Berfungsi'),
(4, '2024-07-05', 23, 'Mendeteksi Suhu Ruangan Server', 'Berfungsi');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_device`
--

CREATE TABLE `lokasi_device` (
  `id_lokasi` int(11) NOT NULL,
  `alamat` varchar(24) NOT NULL,
  `nama` varchar(24) NOT NULL,
  `ruangan` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi_device`
--

INSERT INTO `lokasi_device` (`id_lokasi`, `alamat`, `nama`, `ruangan`) VALUES
(1, 'Jl.Proklamasi', 'Arduino A01', 'Ruangan Server D'),
(2, 'Jl.Patimura', 'Arduino A05', 'Ruangan Server E');

-- --------------------------------------------------------

--
-- Table structure for table `rata_suhu`
--

CREATE TABLE `rata_suhu` (
  `tanggal` date NOT NULL,
  `temperature` float NOT NULL,
  `humidity` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` int(2) NOT NULL,
  `nama` varchar(24) NOT NULL,
  `jumlah_pendingin` varchar(10) NOT NULL,
  `kondisi_ruangan` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `nama`, `jumlah_pendingin`, `kondisi_ruangan`) VALUES
(1, 'Ruangan Server A', '4', 'Baik'),
(2, 'Ruangan Server B', '4', 'Baik');

-- --------------------------------------------------------

--
-- Table structure for table `suhu`
--

CREATE TABLE `suhu` (
  `id` int(11) NOT NULL,
  `id_sensor` int(11) NOT NULL,
  `id_ruangan` int(11) DEFAULT NULL,
  `temperature` float NOT NULL,
  `humidity` float NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suhu`
--

INSERT INTO `suhu` (`id`, `id_sensor`, `id_ruangan`, `temperature`, `humidity`, `timestamp`) VALUES
(840, 1, 1, 20, 70, '2024-06-30 18:30:00'),
(841, 1, 1, 20.1, 70.1, '2024-06-30 18:40:00'),
(842, 1, 1, 20.2, 70.2, '2024-06-30 18:50:00'),
(843, 1, 1, 20, 70, '2024-06-30 19:00:00'),
(844, 1, 1, 20.1, 70.1, '2024-06-30 19:10:00'),
(845, 1, 1, 20.2, 70.2, '2024-06-30 19:20:00'),
(846, 1, 1, 20, 70, '2024-06-30 19:30:00'),
(847, 1, 1, 20.1, 70.1, '2024-06-30 19:40:00'),
(848, 1, 1, 20.2, 70.2, '2024-06-30 19:50:00'),
(849, 1, 1, 20, 70, '2024-06-30 20:00:00'),
(850, 1, 1, 20.1, 70.1, '2024-06-30 20:10:00'),
(851, 1, 1, 20.2, 70.2, '2024-06-30 20:20:00'),
(852, 1, 1, 20, 70, '2024-06-30 20:30:00'),
(853, 1, 1, 20.1, 70.1, '2024-06-30 20:40:00'),
(854, 1, 1, 20.2, 70.2, '2024-06-30 20:50:00'),
(855, 1, 1, 26, 70, '2024-07-01 18:30:00'),
(856, 1, 1, 26.1, 70.1, '2024-07-01 18:40:00'),
(857, 1, 1, 26.2, 70.2, '2024-07-01 18:50:00'),
(858, 1, 1, 26, 70, '2024-07-01 19:00:00'),
(859, 1, 1, 26.1, 70.1, '2024-07-01 19:10:00'),
(860, 1, 1, 26.2, 70.2, '2024-07-01 19:20:00'),
(861, 1, 1, 26, 70, '2024-07-01 19:30:00'),
(862, 1, 1, 26.1, 70.1, '2024-07-01 19:40:00'),
(863, 1, 1, 26.2, 70.2, '2024-07-01 19:50:00'),
(864, 1, 1, 26, 70, '2024-07-01 20:00:00'),
(865, 1, 1, 26.1, 70.1, '2024-07-01 20:10:00'),
(866, 1, 1, 26.2, 70.2, '2024-07-01 20:20:00'),
(867, 1, 1, 26, 70, '2024-07-01 20:30:00'),
(868, 1, 1, 26.1, 70.1, '2024-07-01 20:40:00'),
(869, 1, 1, 26.2, 70.2, '2024-07-01 20:50:00'),
(870, 1, 1, 23, 70, '2024-07-02 18:30:00'),
(871, 1, 1, 23.1, 70.1, '2024-07-02 18:40:00'),
(872, 1, 1, 23.2, 70.2, '2024-07-02 18:50:00'),
(873, 1, 1, 23, 70, '2024-07-02 19:00:00'),
(874, 1, 1, 23.1, 70.1, '2024-07-02 19:10:00'),
(875, 1, 1, 23.2, 70.2, '2024-07-02 19:20:00'),
(876, 1, 1, 23, 70, '2024-07-02 19:30:00'),
(877, 1, 1, 23.1, 70.1, '2024-07-02 19:40:00'),
(878, 1, 1, 23.2, 70.2, '2024-07-02 19:50:00'),
(879, 1, 1, 23, 70, '2024-07-02 20:00:00'),
(880, 1, 1, 23.1, 70.1, '2024-07-02 20:10:00'),
(881, 1, 1, 23.2, 70.2, '2024-07-02 20:20:00'),
(882, 1, 1, 23, 70, '2024-07-02 20:30:00'),
(883, 1, 1, 23.1, 70.1, '2024-07-02 20:40:00'),
(884, 1, 1, 23.2, 70.2, '2024-07-02 20:50:00'),
(885, 1, 1, 31, 70, '2024-07-03 18:30:00'),
(886, 1, 1, 31.1, 70.1, '2024-07-03 18:40:00'),
(887, 1, 1, 31.2, 70.2, '2024-07-03 18:50:00'),
(888, 1, 1, 31, 70, '2024-07-03 19:00:00'),
(889, 1, 1, 31.1, 70.1, '2024-07-03 19:10:00'),
(890, 1, 1, 31.2, 70.2, '2024-07-03 19:20:00'),
(891, 1, 1, 31, 70, '2024-07-03 19:30:00'),
(892, 1, 1, 31.1, 70.1, '2024-07-03 19:40:00'),
(893, 1, 1, 31.2, 70.2, '2024-07-03 19:50:00'),
(894, 1, 1, 31, 70, '2024-07-03 20:00:00'),
(895, 1, 1, 31.1, 70.1, '2024-07-03 20:10:00'),
(896, 1, 1, 31.2, 70.2, '2024-07-03 20:20:00'),
(897, 1, 1, 31, 70, '2024-07-03 20:30:00'),
(898, 1, 1, 31.1, 70.1, '2024-07-03 20:40:00'),
(899, 1, 1, 31.2, 70.2, '2024-07-03 20:50:00'),
(900, 1, 1, 31, 70, '2024-07-04 18:30:00'),
(901, 1, 1, 31.1, 70.1, '2024-07-04 18:40:00'),
(902, 1, 1, 31.2, 70.2, '2024-07-04 18:50:00'),
(903, 1, 1, 31, 70, '2024-07-04 19:00:00'),
(904, 1, 1, 31.1, 70.1, '2024-07-04 19:10:00'),
(905, 1, 1, 31.2, 70.2, '2024-07-04 19:20:00'),
(906, 1, 1, 31, 70, '2024-07-04 19:30:00'),
(907, 1, 1, 31.1, 70.1, '2024-07-04 19:40:00'),
(908, 1, 1, 31.2, 70.2, '2024-07-04 19:50:00'),
(909, 1, 1, 31, 70, '2024-07-04 20:00:00'),
(910, 1, 1, 31.1, 70.1, '2024-07-04 20:10:00'),
(911, 1, 1, 31.2, 70.2, '2024-07-04 20:20:00'),
(912, 1, 1, 31, 70, '2024-07-04 20:30:00'),
(913, 1, 1, 31.1, 70.1, '2024-07-04 20:40:00'),
(914, 1, 1, 31.2, 70.2, '2024-07-04 20:50:00'),
(915, 1, 1, 33, 70, '2024-07-05 18:30:00'),
(916, 1, 1, 33.1, 70.1, '2024-07-05 18:40:00'),
(917, 1, 1, 33.2, 70.2, '2024-07-05 18:50:00'),
(918, 1, 1, 33, 70, '2024-07-05 19:00:00'),
(919, 1, 1, 33.1, 70.1, '2024-07-05 19:10:00'),
(920, 1, 1, 33.2, 70.2, '2024-07-05 19:20:00'),
(921, 1, 1, 33, 70, '2024-07-05 19:30:00'),
(922, 1, 1, 33.1, 70.1, '2024-07-05 19:40:00'),
(923, 1, 1, 33.2, 70.2, '2024-07-05 19:50:00'),
(924, 1, 1, 33, 70, '2024-07-05 20:00:00'),
(925, 1, 1, 33.1, 70.1, '2024-07-05 20:10:00'),
(926, 1, 1, 33.2, 70.2, '2024-07-05 20:20:00'),
(927, 1, 1, 33, 70, '2024-07-05 20:30:00'),
(928, 1, 1, 33.1, 70.1, '2024-07-05 20:40:00'),
(929, 1, 1, 33.2, 70.2, '2024-07-05 20:50:00'),
(930, 1, 1, 20, 70, '2024-07-06 18:30:00'),
(931, 1, 1, 20.1, 70.1, '2024-07-06 18:40:00'),
(932, 1, 1, 20.2, 70.2, '2024-07-06 18:50:00'),
(933, 1, 1, 20, 70, '2024-07-06 19:00:00'),
(934, 1, 1, 20.1, 70.1, '2024-07-06 19:10:00'),
(935, 1, 1, 20.2, 70.2, '2024-07-06 19:20:00'),
(936, 1, 1, 20, 70, '2024-07-06 19:30:00'),
(937, 1, 1, 20.1, 70.1, '2024-07-06 19:40:00'),
(938, 1, 1, 20.2, 70.2, '2024-07-06 19:50:00'),
(939, 1, 1, 20, 70, '2024-07-06 20:00:00'),
(940, 1, 1, 20.1, 70.1, '2024-07-06 20:10:00'),
(941, 1, 1, 20.2, 70.2, '2024-07-06 20:20:00'),
(942, 1, 1, 20, 70, '2024-07-06 20:30:00'),
(943, 1, 1, 20.1, 70.1, '2024-07-06 20:40:00'),
(944, 1, 1, 20.2, 70.2, '2024-07-06 20:50:00'),
(945, 2, 2, 20, 70, '2024-06-30 18:30:00'),
(946, 2, 2, 20.1, 70.1, '2024-06-30 18:40:00'),
(947, 2, 2, 20.2, 70.2, '2024-06-30 18:50:00'),
(948, 2, 2, 20, 70, '2024-06-30 19:00:00'),
(949, 2, 2, 20.1, 70.1, '2024-06-30 19:10:00'),
(950, 2, 2, 20.2, 70.2, '2024-06-30 19:20:00'),
(951, 2, 2, 20, 70, '2024-06-30 19:30:00'),
(952, 2, 2, 20.1, 70.1, '2024-06-30 19:40:00'),
(953, 2, 2, 20.2, 70.2, '2024-06-30 19:50:00'),
(954, 2, 2, 20, 70, '2024-06-30 20:00:00'),
(955, 2, 2, 20.1, 70.1, '2024-06-30 20:10:00'),
(956, 2, 2, 20.2, 70.2, '2024-06-30 20:20:00'),
(957, 2, 2, 20, 70, '2024-06-30 20:30:00'),
(958, 2, 2, 20.1, 70.1, '2024-06-30 20:40:00'),
(959, 2, 2, 20.2, 70.2, '2024-06-30 20:50:00'),
(960, 2, 2, 23, 70, '2024-07-01 18:30:00'),
(961, 2, 2, 23.1, 70.1, '2024-07-01 18:40:00'),
(962, 2, 2, 23.2, 70.2, '2024-07-01 18:50:00'),
(963, 2, 2, 23, 70, '2024-07-01 19:00:00'),
(964, 2, 2, 23.1, 70.1, '2024-07-01 19:10:00'),
(965, 2, 2, 23.2, 70.2, '2024-07-01 19:20:00'),
(966, 2, 2, 23, 70, '2024-07-01 19:30:00'),
(967, 2, 2, 23.1, 70.1, '2024-07-01 19:40:00'),
(968, 2, 2, 23.2, 70.2, '2024-07-01 19:50:00'),
(969, 2, 2, 23, 70, '2024-07-01 20:00:00'),
(970, 2, 2, 23.1, 70.1, '2024-07-01 20:10:00'),
(971, 2, 2, 23.2, 70.2, '2024-07-01 20:20:00'),
(972, 2, 2, 23, 70, '2024-07-01 20:30:00'),
(973, 2, 2, 23.1, 70.1, '2024-07-01 20:40:00'),
(974, 2, 2, 23.2, 70.2, '2024-07-01 20:50:00'),
(975, 2, 2, 42, 70, '2024-07-02 18:30:00'),
(976, 2, 2, 42.1, 70.1, '2024-07-02 18:40:00'),
(977, 2, 2, 42.2, 70.2, '2024-07-02 18:50:00'),
(978, 2, 2, 42, 70, '2024-07-02 19:00:00'),
(979, 2, 2, 42.1, 70.1, '2024-07-02 19:10:00'),
(980, 2, 2, 42.2, 70.2, '2024-07-02 19:20:00'),
(981, 2, 2, 42, 70, '2024-07-02 19:30:00'),
(982, 2, 2, 42.1, 70.1, '2024-07-02 19:40:00'),
(983, 2, 2, 42.2, 70.2, '2024-07-02 19:50:00'),
(984, 2, 2, 42, 70, '2024-07-02 20:00:00'),
(985, 2, 2, 42.1, 70.1, '2024-07-02 20:10:00'),
(986, 2, 2, 42.2, 70.2, '2024-07-02 20:20:00'),
(987, 2, 2, 42, 70, '2024-07-02 20:30:00'),
(988, 2, 2, 42.1, 70.1, '2024-07-02 20:40:00'),
(989, 2, 2, 42.2, 70.2, '2024-07-02 20:50:00'),
(990, 2, 2, 28, 70, '2024-07-03 18:30:00'),
(991, 2, 2, 28.1, 70.1, '2024-07-03 18:40:00'),
(992, 2, 2, 28.2, 70.2, '2024-07-03 18:50:00'),
(993, 2, 2, 28, 70, '2024-07-03 19:00:00'),
(994, 2, 2, 28.1, 70.1, '2024-07-03 19:10:00'),
(995, 2, 2, 28.2, 70.2, '2024-07-03 19:20:00'),
(996, 2, 2, 28, 70, '2024-07-03 19:30:00'),
(997, 2, 2, 28.1, 70.1, '2024-07-03 19:40:00'),
(998, 2, 2, 28.2, 70.2, '2024-07-03 19:50:00'),
(999, 2, 2, 28, 70, '2024-07-03 20:00:00'),
(1000, 2, 2, 28.1, 70.1, '2024-07-03 20:10:00'),
(1001, 2, 2, 28.2, 70.2, '2024-07-03 20:20:00'),
(1002, 2, 2, 28, 70, '2024-07-03 20:30:00'),
(1003, 2, 2, 28.1, 70.1, '2024-07-03 20:40:00'),
(1004, 2, 2, 28.2, 70.2, '2024-07-03 20:50:00'),
(1005, 2, 2, 20, 70, '2024-07-04 18:30:00'),
(1006, 2, 2, 20.1, 70.1, '2024-07-04 18:40:00'),
(1007, 2, 2, 20.2, 70.2, '2024-07-04 18:50:00'),
(1008, 2, 2, 20, 70, '2024-07-04 19:00:00'),
(1009, 2, 2, 20.1, 70.1, '2024-07-04 19:10:00'),
(1010, 2, 2, 20.2, 70.2, '2024-07-04 19:20:00'),
(1011, 2, 2, 20, 70, '2024-07-04 19:30:00'),
(1012, 2, 2, 20.1, 70.1, '2024-07-04 19:40:00'),
(1013, 2, 2, 20.2, 70.2, '2024-07-04 19:50:00'),
(1014, 2, 2, 20, 70, '2024-07-04 20:00:00'),
(1015, 2, 2, 20.1, 70.1, '2024-07-04 20:10:00'),
(1016, 2, 2, 20.2, 70.2, '2024-07-04 20:20:00'),
(1017, 2, 2, 20, 70, '2024-07-04 20:30:00'),
(1018, 2, 2, 20.1, 70.1, '2024-07-04 20:40:00'),
(1019, 2, 2, 20.2, 70.2, '2024-07-04 20:50:00'),
(1020, 2, 2, 19, 70, '2024-07-05 18:30:00'),
(1021, 2, 2, 19.1, 70.1, '2024-07-05 18:40:00'),
(1022, 2, 2, 19.2, 70.2, '2024-07-05 18:50:00'),
(1023, 2, 2, 19, 70, '2024-07-05 19:00:00'),
(1024, 2, 2, 19.1, 70.1, '2024-07-05 19:10:00'),
(1025, 2, 2, 19.2, 70.2, '2024-07-05 19:20:00'),
(1026, 2, 2, 19, 70, '2024-07-05 19:30:00'),
(1027, 2, 2, 19.1, 70.1, '2024-07-05 19:40:00'),
(1028, 2, 2, 19.2, 70.2, '2024-07-05 19:50:00'),
(1029, 2, 2, 19, 70, '2024-07-05 20:00:00'),
(1030, 2, 2, 19.1, 70.1, '2024-07-05 20:10:00'),
(1031, 2, 2, 19.2, 70.2, '2024-07-05 20:20:00'),
(1032, 2, 2, 19, 70, '2024-07-05 20:30:00'),
(1033, 2, 2, 19.1, 70.1, '2024-07-05 20:40:00'),
(1034, 2, 2, 19.2, 70.2, '2024-07-05 20:50:00'),
(1035, 2, 2, 27, 70, '2024-07-06 18:30:00'),
(1036, 2, 2, 27.1, 70.1, '2024-07-06 18:40:00'),
(1037, 2, 2, 27.2, 70.2, '2024-07-06 18:50:00'),
(1038, 2, 2, 27, 70, '2024-07-06 19:00:00'),
(1039, 2, 2, 27.1, 70.1, '2024-07-06 19:10:00'),
(1040, 2, 2, 27.2, 70.2, '2024-07-06 19:20:00'),
(1041, 2, 2, 27, 70, '2024-07-06 19:30:00'),
(1042, 2, 2, 27.1, 70.1, '2024-07-06 19:40:00'),
(1043, 2, 2, 27.2, 70.2, '2024-07-06 19:50:00'),
(1044, 2, 2, 27, 70, '2024-07-06 20:00:00'),
(1045, 2, 2, 27.1, 70.1, '2024-07-06 20:10:00'),
(1046, 2, 2, 27.2, 70.2, '2024-07-06 20:20:00'),
(1047, 2, 2, 27, 70, '2024-07-06 20:30:00'),
(1048, 2, 2, 27.1, 70.1, '2024-07-06 20:40:00'),
(1049, 2, 2, 27.2, 70.2, '2024-07-06 20:50:00'),
(1050, 1, 1, 30.7, 70, '2024-07-31 16:00:00'),
(1051, 1, 1, 24.5, 70.1, '2024-07-31 16:10:00'),
(1052, 1, 1, 26.2, 70.2, '2024-07-31 16:20:00'),
(1053, 1, 1, 32.5, 70, '2024-07-31 16:30:00'),
(1054, 1, 1, 31.3, 70.1, '2024-07-31 16:40:00'),
(1055, 1, 1, 26.6, 70.2, '2024-07-31 16:50:00'),
(1056, 1, 1, 36.7, 70, '2024-07-31 17:00:00'),
(1057, 1, 1, 32.4, 70.1, '2024-07-31 17:10:00'),
(1058, 1, 1, 39, 70.2, '2024-07-31 17:20:00'),
(1059, 1, 1, 37, 70, '2024-07-31 17:30:00'),
(1060, 1, 1, 36.8, 70.1, '2024-07-31 17:40:00'),
(1061, 1, 1, 41.7, 70.2, '2024-07-31 17:50:00'),
(1062, 1, 1, 27.7, 70, '2024-07-31 18:00:00'),
(1063, 1, 1, 29.8, 70.1, '2024-07-31 18:10:00'),
(1064, 1, 1, 32.2, 70.2, '2024-07-31 18:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(2) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `telepon` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `telepon`) VALUES
(2, 'udin', 'admin', 832345123),
(3, 'amat', 'admin1', 823457683),
(4, 'Jack', 'admin', 0),
(5, 'Zack Sparrow', 'admin', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id_device`);

--
-- Indexes for table `device_baru`
--
ALTER TABLE `device_baru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_rusak`
--
ALTER TABLE `device_rusak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kinerja_sensor`
--
ALTER TABLE `kinerja_sensor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_device`
--
ALTER TABLE `lokasi_device`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indexes for table `suhu`
--
ALTER TABLE `suhu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `id_device` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `device_baru`
--
ALTER TABLE `device_baru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `device_rusak`
--
ALTER TABLE `device_rusak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kinerja_sensor`
--
ALTER TABLE `kinerja_sensor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lokasi_device`
--
ALTER TABLE `lokasi_device`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id_ruangan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suhu`
--
ALTER TABLE `suhu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1065;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `taufikr`
--
CREATE DATABASE IF NOT EXISTS `taufikr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `taufikr`;

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id_file` int(11) NOT NULL,
  `nama_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id_file`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tes`
--

CREATE TABLE `tb_tes` (
  `id_user` int(11) NOT NULL,
  `nm_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_tes`
--
ALTER TABLE `tb_tes`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_tes`
--
ALTER TABLE `tb_tes`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `uniska_press`
--
CREATE DATABASE IF NOT EXISTS `uniska_press` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `uniska_press`;

-- --------------------------------------------------------

--
-- Table structure for table `buku_matrix`
--

CREATE TABLE `buku_matrix` (
  `Halamaneksemplar` int(11) NOT NULL,
  `50eksemplar` double NOT NULL,
  `100eksemplar` double NOT NULL,
  `150eksemplar` double NOT NULL,
  `200eksemplar` double NOT NULL,
  `250` double NOT NULL,
  `300eksemplar` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku_matrix`
--

INSERT INTO `buku_matrix` (`Halamaneksemplar`, `50eksemplar`, `100eksemplar`, `150eksemplar`, `200eksemplar`, `250`, `300eksemplar`) VALUES
(80, 0, 0, 0, 0, 0, 0),
(100, 0, 0, 0, 0, 0, 0),
(80, 42400, 40900, 39400, 37900, 36400, 34900),
(100, 46000, 44500, 43000, 41500, 40000, 38500),
(120, 49600, 48100, 46600, 45100, 43600, 42100);

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `nama` varchar(32) NOT NULL,
  `nidn` int(13) NOT NULL,
  `isbn` int(15) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tahun` int(4) NOT NULL,
  `Hal` int(4) NOT NULL,
  `eks` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`nama`, `nidn`, `isbn`, `judul`, `tahun`, `Hal`, `eks`) VALUES
('ahmad', 2100, 100, 'Cinta itu buta', 2002, 20, 10),
('udin', 2101, 101, 'Matematika itu asik', 2005, 20, 11),
('Iman', 2102, 102, 'Cara dapat aerox', 2010, 15, 12),
('Usup', 2103, 103, 'Jangan mau disuruh', 2014, 24, 14),
('Siti', 2104, 104, 'Hisup Sederhana', 2021, 40, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`nidn`);
--
-- Database: `webgis-php`
--
CREATE DATABASE IF NOT EXISTS `webgis-php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webgis-php`;

-- --------------------------------------------------------

--
-- Table structure for table `m_kecamatan`
--

CREATE TABLE `m_kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kd_kecamatan` varchar(10) NOT NULL,
  `nm_kecamatan` varchar(30) NOT NULL,
  `geojson_kecamatan` varchar(30) NOT NULL,
  `warna_kecamatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kecamatan`
--

INSERT INTO `m_kecamatan` (`id_kecamatan`, `kd_kecamatan`, `nm_kecamatan`, `geojson_kecamatan`, `warna_kecamatan`) VALUES
(6, '63.01.08', 'Tambang Ulang', '28061219081242.geojson', '#009900'),
(8, '63.01.01', 'Takisung', '25061219081252.geojson', '#007700'),
(16, '63.01.05', 'Bati-Bati', '71061219081303.geojson', '#880000'),
(17, '63.01.02', 'Jorong', '34061219081408.geojson', '#000099'),
(18, '63.01.03', 'Pelaihari', '39061219081421.geojson', '#DD9900'),
(19, '63.01.04', 'Kurau', '30061219081442.geojson', '#009999'),
(20, '63.01.07', 'Kintap', '29061219081511.geojson', '#ff0099'),
(21, '63.01.09', 'Batu Ampar', '44061219081535.geojson', '#990099'),
(22, '63.01.10', 'Bajuin', '92061219081549.geojson', '#662222'),
(23, '63.01.11', 'Bumi Makmur', '58061219081604.geojson', '#888'),
(24, '63.01.06', 'Panyipatan', '3601282001.geojson', '#222'),
(28, '111.111', 'Banjarmasin Utara', '25010722020218.png', '#000000');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nm_pengguna` varchar(20) NOT NULL,
  `kt_sandi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nm_pengguna`, `kt_sandi`) VALUES
(1, 'bayy', '$2y$10$JOXytCQVDeK2V7LhGuhOn.iwRNqDvCyLOmjyThGEHzUWXE4rNggPu');

-- --------------------------------------------------------

--
-- Table structure for table `t_hotspot`
--

CREATE TABLE `t_hotspot` (
  `id_hotspot` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `lat` float(9,6) NOT NULL,
  `lng` float(9,6) NOT NULL,
  `tanggal` date NOT NULL,
  `marker` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_hotspot`
--

INSERT INTO `t_hotspot` (`id_hotspot`, `id_kecamatan`, `lokasi`, `keterangan`, `lat`, `lng`, `tanggal`, `marker`) VALUES
(1, 18, 'Jl. Peganggas gas amat', 'Kebakaran Parah sekali', -3.641010, 114.775002, '2019-12-19', '35281219011541.png'),
(2, 6, 'Jl. Pegangga', 'Kebakaran Parah sekali', -3.656000, 114.775002, '2019-12-19', '8010722020148.png'),
(3, 18, 'Jl. Raya', 'Rusak parah', -3.816298, 114.797401, '2019-12-20', '7281219011755.png'),
(4, 18, 'Jl A', 'Rusak parah', -3.817160, 114.800987, '2019-12-20', ''),
(5, 19, 'Jl. Sepeda', '-', -3.641010, 114.675003, '2020-01-20', ''),
(6, 6, 'Rumah Saiful', '-', -3.661010, 114.775002, '2020-01-20', ''),
(7, 21, 'Rmah Jakaria', '-', -3.846298, 114.897400, '2020-01-20', ''),
(8, 22, 'HUtan Rawa Merawa', '-', -3.761010, 114.857399, '2020-01-20', '91200120113957.png'),
(9, 18, 'Gang Jambu', 'Rumah Terbakar', -3.817130, 114.801888, '2020-02-11', ''),
(10, 6, 'Rumah Zakaria', 'Kompor Meledak', -3.657300, 114.766006, '2020-02-11', ''),
(11, 6, 'Gedung Pencakar', 'Lantai 4 terbakar', -3.655300, 114.696503, '2020-02-11', ''),
(12, 6, 'Pasar Kaki Lima', '4 Loket terbakar', -3.655300, 114.686501, '2020-02-11', ''),
(13, 6, 'Pasar 5', 'Terbakar habis', -3.685300, 114.776009, '2020-02-11', ''),
(14, 24, 'Hutan', 'Hutan Kosong', -3.289486, 114.594398, '2022-06-29', '9290622115305.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_kecamatan`
--
ALTER TABLE `m_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `t_hotspot`
--
ALTER TABLE `t_hotspot`
  ADD PRIMARY KEY (`id_hotspot`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_kecamatan`
--
ALTER TABLE `m_kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_hotspot`
--
ALTER TABLE `t_hotspot`
  MODIFY `id_hotspot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
