-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 09:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_argatravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_menu`
--

CREATE TABLE `tbl_access_menu` (
  `kd_access_menu` int(11) DEFAULT NULL,
  `kd_level` int(11) DEFAULT NULL,
  `kd_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_access_menu`
--

INSERT INTO `tbl_access_menu` (`kd_access_menu`, `kd_level`, `kd_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `nama_admin`, `username_admin`, `password_admin`, `img_admin`, `email_admin`, `level_admin`, `status_admin`, `date_create_admin`) VALUES
('ADM0001', 'Arga Hutama', 'supervisor', '$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG', 'assets/backend/img/default.png', 'owner@gmail.com', '1', 1, '1552819095'),
('ADM0002', 'Chelsea Islan', 'admin', '$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG', 'assets/backend/img/default.png', 'adm@gmail.com', '2', 1, '1552276812');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`kd_bank`, `nasabah_bank`, `nama_bank`, `nomrek_bank`, `photo_bank`) VALUES
('BNK0001', 'Arga Hutama', 'BCA', '54902520644', 'assets/frontend/img/bank/bca-icon.jpg'),
('BNK0002', 'Arga Hutama', 'MANDIRI', '6666666666', 'assets/frontend/img/bank/mandiri-icon.jpg'),
('BNK0003', 'Arga Hutama', 'BRI', '7777777777', 'assets/frontend/img/bank/bri-icon.jpg'),
('BNK0004', 'Arga Hutama', 'BNI', '8888888888', 'assets/frontend/img/bank/bni-icon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`kd_bus`, `nama_bus`, `plat_bus`, `kapasitas_bus`, `status_bus`, `desc_bus`) VALUES
('B001', 'JKT1', 'B 4514 BLN', 19, 1, '--'),
('B002', 'JKT2', 'B 4514 BLN', 19, 1, '--'),
('B003', 'BDG1', 'B 4514 BLN', 19, 1, '--'),
('B004', 'BDG2', 'B 4514 BLN', 19, 1, '--'),
('B005', 'BDG3', 'B 4561 BLN', 19, 1, '--'),
('B006', 'JKT3', 'B 1234 BLN', 19, 1, '--');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_bus` varchar(50) DEFAULT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `kd_asal` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`kd_jadwal`, `kd_bus`, `kd_tujuan`, `kd_asal`, `wilayah_jadwal`, `jam_berangkat_jadwal`, `jam_tiba_jadwal`, `harga_jadwal`) VALUES
('J0001', 'B003', 'TJ002', 'TJ001', 'bandung', '07:00:00', '10:30:00', '112500'),
('J0002', 'B004', 'TJ005', 'TJ003', 'bandung', '12:00:00', '15:45:00', '123000'),
('J0003', 'B005', 'TJ006', 'TJ004', 'bandung', '16:00:00', '19:00:00', '134000'),
('J0004', 'B001', 'TJ001', 'TJ002', 'jakarta', '07:30:00', '10:00:00', '145000'),
('J0005', 'B002', 'TJ003', 'TJ005', 'jakarta', '11:00:00', '03:00:00', '132000'),
('J0006', 'B006', 'TJ004', 'TJ006', 'jakarta', '17:00:00', '20:00:00', '128000'),
('J0007', 'B003', 'TJ001', 'TJ002', 'jakarta', '02:18:00', '18:18:00', '180000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konfirmasi`
--

CREATE TABLE `tbl_konfirmasi` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konfirmasi`
--

INSERT INTO `tbl_konfirmasi` (`kd_konfirmasi`, `kd_order`, `nama_konfirmasi`, `nama_bank_konfirmasi`, `norek_konfirmasi`, `total_konfirmasi`, `photo_konfirmasi`) VALUES
('KF0001', 'ORD00001', 'najsdkkasdn', 'BCA', '213123', '536000', '/assets/frontend/upload/payment/10__home.png'),
('KF0002', 'ORD00002', 'test', 'BCA', '23456543', '528000', '/assets/frontend/upload/payment/Penguins.jpg'),
('KF0003', 'ORD00003', 'adsdsa', 'BCA', '12', '290000', '/assets/frontend/upload/payment/14__laporan_transaksi1.png'),
('KF0004', 'ORD00012', 'Bambang', 'Mandiri', '121212', '112500', '/assets/frontend/upload/payment/wea.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `kd_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`kd_level`, `nama_level`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `kd_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`kd_menu`, `nama_menu`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `kd_order`, `kd_tiket`, `kd_jadwal`, `kd_pelanggan`, `kd_bank`, `asal_order`, `nama_order`, `tgl_beli_order`, `tgl_berangkat_order`, `nama_kursi_order`, `umur_kursi_order`, `no_kursi_order`, `no_ktp_order`, `no_tlpn_order`, `alamat_order`, `email_order`, `expired_order`, `qrcode_order`, `status_order`) VALUES
(14, 'ORD00001', 'TORD00003J0004202007052', 'J0004', 'PL0001', 'BNK0004', 'TJ002', 'Arga Hutama', 'Minggu, 05 Juli 2020, 19:53', '2020-07-05', 'Arga Hutama', '89', '2', '021452125', '089509509444', 'Tinggal di gedung mercu', 'argahut@gmail.com', '06-07-2020 19:53:18', 'assets/frontend/upload/qrcode/ORD00003.png', '2'),
(17, 'ORD00004', 'TORD00004J00062020070514', 'J0006', 'PL0008', 'BNK0004', 'TJ006', 'Arga Hutama', 'Minggu, 05 Juli 2020, 22:11', '2020-07-05', 'Anya Geraldine', '22', '14', '2312313123132', '023333333', 'Alamat Palsu', 'argahuts@gmail.com', '06-07-2020 22:11:43', 'assets/frontend/upload/qrcode/ORD00004.png', '2'),
(18, 'ORD00005', 'TORD00005J0006202007051', 'J0006', 'PL0008', 'BNK0002', 'TJ006', 'Arga Hutama', 'Minggu, 05 Juli 2020, 22:14', '2020-07-05', 'Marcus Rashford', '23', '1', '23423423', '023333333', 'Alamat Palsu', 'argahuts@gmail.com', '06-07-2020 22:14:27', 'assets/frontend/upload/qrcode/ORD00005.png', '2'),
(19, 'ORD00006', 'TORD00006J0004202007053', 'J0004', 'PL0008', 'BNK0003', 'TJ002', 'Arga Hutama', 'Minggu, 05 Juli 2020, 23:27', '2020-07-05', 'David De Gea', '26', '3', '12', '023333333', 'Alamat Palsu', 'argahuts@gmail.com', '06-07-2020 23:27:33', 'assets/frontend/upload/qrcode/ORD00006.png', '2'),
(20, 'ORD00007', 'TORD00007J0004202007053', 'J0004', 'PL0008', 'BNK0002', 'TJ002', 'Arga Hutama', 'Minggu, 05 Juli 2020, 23:28', '2020-07-05', 'David De Gea', '28', '3', '12', '023333333', 'Alamat Palsu', 'argahuts@gmail.com', '06-07-2020 23:28:57', 'assets/frontend/upload/qrcode/ORD00007.png', '2'),
(21, 'ORD00008', 'TORD00008J0004202007053', 'J0004', 'PL0008', 'BNK0002', 'TJ002', 'Arga Hutama', 'Minggu, 05 Juli 2020, 23:29', '2020-07-05', 'David De Gea', '28', '3', '12', '023333333', 'Alamat Palsu', 'argahuts@gmail.com', '06-07-2020 23:29:40', 'assets/frontend/upload/qrcode/ORD00008.png', '2'),
(22, 'ORD00009', 'TORD00009J0001202007098', 'J0001', 'PL0008', 'BNK0002', 'TJ001', 'Kocheng Oren', 'Selasa, 07 Juli 2020, 02:20', '2020-07-09', 'Kocheng Oren', '2', '8', '1', '023333333', 'Alamat Palsu', 'kocheng@gmail.com', '08-07-2020 02:20:21', 'assets/frontend/upload/qrcode/ORD00009.png', '2'),
(23, 'ORD00009', 'TORD00009J0001202007099', 'J0001', 'PL0008', 'BNK0002', 'TJ001', 'Kocheng Oren', 'Selasa, 07 Juli 2020, 02:20', '2020-07-09', 'Buwung Puyuh', '2', '9', '1', '023333333', 'Alamat Palsu', 'kocheng@gmail.com', '08-07-2020 02:20:21', 'assets/frontend/upload/qrcode/ORD00009.png', '2'),
(24, 'ORD00009', 'TORD00009J00012020070912', 'J0001', 'PL0008', 'BNK0002', 'TJ001', 'Kocheng Oren', 'Selasa, 07 Juli 2020, 02:20', '2020-07-09', 'Ayam Goyeng', '5', '12', '1', '023333333', 'Alamat Palsu', 'kocheng@gmail.com', '08-07-2020 02:20:21', 'assets/frontend/upload/qrcode/ORD00009.png', '2'),
(25, 'ORD00010', 'TORD00010J0001202007098', 'J0001', 'PL0008', 'BNK0002', 'TJ001', 'Kocheng Oren', 'Selasa, 07 Juli 2020, 02:20', '2020-07-09', 'Kocheng Oren', '2', '8', '1', '023333333', 'Alamat Palsu', 'kocheng@gmail.com', '08-07-2020 02:20:27', 'assets/frontend/upload/qrcode/ORD00010.png', '2'),
(26, 'ORD00010', 'TORD00010J0001202007099', 'J0001', 'PL0008', 'BNK0002', 'TJ001', 'Kocheng Oren', 'Selasa, 07 Juli 2020, 02:20', '2020-07-09', 'Buwung Puyuh', '2', '9', '1', '023333333', 'Alamat Palsu', 'kocheng@gmail.com', '08-07-2020 02:20:27', 'assets/frontend/upload/qrcode/ORD00010.png', '2'),
(27, 'ORD00010', 'TORD00010J00012020070912', 'J0001', 'PL0008', 'BNK0002', 'TJ001', 'Kocheng Oren', 'Selasa, 07 Juli 2020, 02:20', '2020-07-09', 'Ayam Goyeng', '5', '12', '1', '023333333', 'Alamat Palsu', 'kocheng@gmail.com', '08-07-2020 02:20:27', 'assets/frontend/upload/qrcode/ORD00010.png', '2'),
(28, 'ORD00011', 'TORD00011J0001202007098', 'J0001', 'PL0008', 'BNK0002', 'TJ001', 'Kocheng Oren', 'Selasa, 07 Juli 2020, 02:20', '2020-07-09', 'Kocheng Oren', '2', '8', '1', '023333333', 'Alamat Palsu', 'kocheng@gmail.com', '08-07-2020 02:20:59', 'assets/frontend/upload/qrcode/ORD00011.png', '2'),
(29, 'ORD00011', 'TORD00011J0001202007099', 'J0001', 'PL0008', 'BNK0002', 'TJ001', 'Kocheng Oren', 'Selasa, 07 Juli 2020, 02:20', '2020-07-09', 'Buwung Puyuh', '2', '9', '1', '023333333', 'Alamat Palsu', 'kocheng@gmail.com', '08-07-2020 02:20:59', 'assets/frontend/upload/qrcode/ORD00011.png', '2'),
(30, 'ORD00011', 'TORD00011J00012020070912', 'J0001', 'PL0008', 'BNK0002', 'TJ001', 'Kocheng Oren', 'Selasa, 07 Juli 2020, 02:20', '2020-07-09', 'Ayam Goyeng', '5', '12', '1', '023333333', 'Alamat Palsu', 'kocheng@gmail.com', '08-07-2020 02:20:59', 'assets/frontend/upload/qrcode/ORD00011.png', '2'),
(31, 'ORD00012', 'TORD00012J0001202007095', 'J0001', 'PL0008', 'BNK0001', 'TJ001', 'Bambang', 'Selasa, 07 Juli 2020, 02:23', '2020-07-09', 'Bambang', '65', '5', '3', '02333332', 'Buah Batu', 'Bambang@gmail.com', '08-07-2020 02:23:08', 'assets/frontend/upload/qrcode/ORD00012.png', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `kd_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `no_ktp_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon_pelanggan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `img_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kd_pelanggan`, `username_pelanggan`, `password_pelanggan`, `no_ktp_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `email_pelanggan`, `telpon_pelanggan`, `img_pelanggan`, `status_pelanggan`, `date_create_pelanggan`) VALUES
('PL0002', 'sella', '$2y$10$iV6Almk4gIrVuUeC2v5VG.8PxjaVQLgXakxMvrJcUp5TM9d3DxPx6', '02564651321564', 'sella', 'Gang Buntu', 'sellapurwita36@gmail.com', '089682261128', 'assets/frontend/img/default.png', 1, '1552202266'),
('PL0003', 'Dimas', '$2y$10$iV6Almk4gIrVuUeC2v5VG.8PxjaVQLgXakxMvrJcUp5TM9d3DxPx6', '346454215172455', 'Dimas', 'Cengkareng', 'dimasrestuadrianto@gmail.com', '6281299397276', 'assets/frontend/img/default.png', 1, '1552397128'),
('PL0008', 'argahutama', '$2y$10$SP7XNH3lyq.iZ4dSND/LwuxJJvNII6sgxgyGyO.2b7Q.6jgdd7lDC', '', 'Arga Hutama', 'Alamat Palsu', 'argahuts@gmail.com', '023333333', 'assets/frontend/img/default.png', 1, '1593961592'),
('PL0006', 'Rakel', '$2y$10$iV6Almk4gIrVuUeC2v5VG.8PxjaVQLgXakxMvrJcUp5TM9d3DxPx6', '', 'Rakel', 'Jl.in aja dulu', 'rizkifirmansyah435@gmail.com', '08745179471', 'assets/frontend/img/default.png', 1, '1554385261');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tiket`
--

INSERT INTO `tbl_tiket` (`kd_tiket`, `kd_order`, `nama_tiket`, `kursi_tiket`, `umur_tiket`, `asal_beli_tiket`, `harga_tiket`, `etiket_tiket`, `status_tiket`, `create_tgl_tiket`, `create_admin_tiket`) VALUES
('TORD00003J0004202007055', 'ORD00003', 'Arga Hutama', '5', '23 Tahun', 'TJ002', '145000', 'assets/backend/upload/etiket/ORD00003.pdf', '2', '2020-07-05', 'admin'),
('TORD00004J00062020070511', 'ORD00004', 'Arga Hutama', '11', '23 Tahun', 'TJ006', '128000', 'assets/backend/upload/etiket/ORD00004.pdf', '2', '2020-07-05', 'admin'),
('TORD00004J00062020070514', 'ORD00004', 'Anya Geraldine', '14', '22 Tahun', 'TJ006', '128000', 'assets/backend/upload/etiket/ORD00004.pdf', '2', '2020-07-05', 'admin'),
('TORD00005J0006202007051', 'ORD00005', 'Marcus Rashford', '1', '23 Tahun', 'TJ006', '128000', 'assets/backend/upload/etiket/ORD00005.pdf', '2', '2020-07-05', 'admin'),
('TORD00006J0004202007053', 'ORD00006', 'David De Gea', '3', '26 Tahun', 'TJ002', '145000', 'assets/backend/upload/etiket/ORD00006.pdf', '2', '2020-07-07', 'manager'),
('TORD00007J0004202007053', 'ORD00007', 'David De Gea', '3', '28 Tahun', 'TJ002', '145000', 'assets/backend/upload/etiket/ORD00007.pdf', '2', '2020-07-07', 'manager'),
('TORD00008J0004202007053', 'ORD00008', 'David De Gea', '3', '28 Tahun', 'TJ002', '145000', 'assets/backend/upload/etiket/ORD00008.pdf', '2', '2020-07-07', 'supervisor'),
('TORD00009J00012020070912', 'ORD00009', 'Ayam Goyeng', '12', '5 Tahun', 'TJ001', '112500', 'assets/backend/upload/etiket/ORD00009.pdf', '2', '2020-07-07', 'supervisor'),
('TORD00009J0001202007098', 'ORD00009', 'Kocheng Oren', '8', '2 Tahun', 'TJ001', '112500', 'assets/backend/upload/etiket/ORD00009.pdf', '2', '2020-07-07', 'supervisor'),
('TORD00009J0001202007099', 'ORD00009', 'Buwung Puyuh', '9', '2 Tahun', 'TJ001', '112500', 'assets/backend/upload/etiket/ORD00009.pdf', '2', '2020-07-07', 'supervisor'),
('TORD00010J00012020070912', 'ORD00010', 'Ayam Goyeng', '12', '5 Tahun', 'TJ001', '112500', 'assets/backend/upload/etiket/ORD00010.pdf', '2', '2020-07-07', 'supervisor'),
('TORD00010J0001202007098', 'ORD00010', 'Kocheng Oren', '8', '2 Tahun', 'TJ001', '112500', 'assets/backend/upload/etiket/ORD00010.pdf', '2', '2020-07-07', 'supervisor'),
('TORD00010J0001202007099', 'ORD00010', 'Buwung Puyuh', '9', '2 Tahun', 'TJ001', '112500', 'assets/backend/upload/etiket/ORD00010.pdf', '2', '2020-07-07', 'supervisor'),
('TORD00011J00012020070912', 'ORD00011', 'Ayam Goyeng', '12', '5 Tahun', 'TJ001', '112500', 'assets/backend/upload/etiket/ORD00011.pdf', '2', '2020-07-07', 'supervisor'),
('TORD00011J0001202007098', 'ORD00011', 'Kocheng Oren', '8', '2 Tahun', 'TJ001', '112500', 'assets/backend/upload/etiket/ORD00011.pdf', '2', '2020-07-07', 'supervisor'),
('TORD00011J0001202007099', 'ORD00011', 'Buwung Puyuh', '9', '2 Tahun', 'TJ001', '112500', 'assets/backend/upload/etiket/ORD00011.pdf', '2', '2020-07-07', 'supervisor'),
('TORD00012J0001202007095', 'ORD00012', 'Bambang', '5', '65 Tahun', 'TJ001', '112500', 'assets/backend/upload/etiket/ORD00012.pdf', '2', '2020-07-07', 'supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tujuan`
--

CREATE TABLE `tbl_tujuan` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tujuan`
--

INSERT INTO `tbl_tujuan` (`kd_tujuan`, `kota_tujuan`, `nama_terminal_tujuan`, `terminal_tujuan`) VALUES
('TJ001', 'jakarta', 'Terminal Kayu Besar', 'Jl. Auto Ring Road Kapuk Kamal Kayu Besar, Cengkareng, RT.7/RW.8, Cengkareng Bar., Cengkareng, Kota '),
('TJ002', 'bandung', 'Terminal Bojongloa ', 'Jl. Raya Sawahan No.283, Situsaeur, Bojongloa Kidul, Kota Bandung, Jawa Barat 40235'),
('TJ003', 'jakarta', 'Terminal Rawa Buaya', 'Jl. Darma Wanita 1 No.10, RT.7/RW.6, Duri Kosambi, Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibu'),
('TJ004', 'jakarta', 'Termnial Kali Deres', 'Terminal bus Kalideres, Jl. Daan Mogot, RT.4/RW.1, Kalideres, West Jakarta City, Jakarta 11840'),
('TJ005', 'bandung', 'Terminal Babakan', 'JL. Raya Gede Bage No.68, Babakan Penghulu, Cinambo, Bandung City, West Java 40295'),
('TJ006', 'bandung', 'Terimnal Ledeng', 'Jl. Setiabudhi Dalam, Ledeng, Cidadap, Kota Bandung, Jawa Barat 40143');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`kd_bank`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`kd_bus`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`kd_jadwal`),
  ADD KEY `kd_bus` (`kd_bus`),
  ADD KEY `kd_tujuan` (`kd_tujuan`);

--
-- Indexes for table `tbl_konfirmasi`
--
ALTER TABLE `tbl_konfirmasi`
  ADD PRIMARY KEY (`kd_konfirmasi`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`kd_level`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `kd_jadwal` (`kd_jadwal`),
  ADD KEY `kd_kustomer` (`kd_pelanggan`),
  ADD KEY `kd_tiket` (`kd_tiket`),
  ADD KEY `kd_bank` (`kd_bank`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`kd_tiket`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_tujuan`
--
ALTER TABLE `tbl_tujuan`
  ADD PRIMARY KEY (`kd_tujuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `kd_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `kd_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
