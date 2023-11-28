-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2022 at 04:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rii`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_keluar` char(7) NOT NULL,
  `tanggal_keluar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_keluar`, `tanggal_keluar`) VALUES
('KLR0120', '2022-07-10'),
('KLR0121', '2022-07-11'),
('KLR0122', '2022-07-12'),
('KLR0123', '2022-07-13'),
('KLR0124', '2022-07-14'),
('KLR0125', '2022-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_masuk` char(7) NOT NULL,
  `tanggal_masuk` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_masuk`, `tanggal_masuk`) VALUES
('MSK0120', '2022-07-10'),
('MSK0121', '2022-07-08'),
('MSK0123', '2022-07-05'),
('MSK0124', '2022-07-01'),
('MSK0125', '2022-06-15'),
('MSK0126', '2022-06-25'),
('MSK0127', '2022-06-10'),
('MSK0128', '2022-06-11');

-- --------------------------------------------------------

--
-- Stand-in structure for view `brnng_keluar`
-- (See below for the actual view)
--
CREATE TABLE `brnng_keluar` (
`ID Keluar` char(7)
,`Tanggal Keluar` date
,`Total Barang Keluar` decimal(32,0)
,`Keterangan` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `brnng_masuk`
-- (See below for the actual view)
--
CREATE TABLE `brnng_masuk` (
`ID MASUK` char(7)
,`Tanggal Masuk` date
,`Total Barang Masuk` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE `data_barang` (
  `kd_barang` char(7) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `merek` varchar(50) NOT NULL,
  `stock` int(4) NOT NULL,
  `harga_beli` int(9) NOT NULL,
  `harga_jual` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`kd_barang`, `nama_barang`, `kategori`, `merek`, `stock`, `harga_beli`, `harga_jual`) VALUES
('BRNG001', 'Minyak 1 Liter', 'Minyak Goreng', 'Bimoli', 20, 20000, 25000),
('BRNG002', 'Minyak 1 Liter', 'Minyak Goreng', 'Sovia', 15, 19000, 23000),
('BRNG003', 'Minyak 1 Liter', 'Minyak Goreng', 'Sania', 15, 18000, 24000),
('BRNG004', 'Minyak 1 Liter', 'Minyak Goreng', 'Favorita', 27, 18000, 24000),
('BRNG005', 'Minyak 1 Liter', 'Minyak Goreng', 'Fartune', -10, 17000, 22000),
('BRNG006', 'Telur Ayam 1 Kilo', 'Telur', 'NA', 23, 30000, 35000),
('BRNG007', 'Telur Bebek 1 Kilo', 'Telur', 'NA', 9, 40000, 50000),
('BRNG008', 'Kecap Manis 135ml', 'Kecap Manis', 'ABC', 55, 7500, 8000),
('BRNG009', 'Kecap Manis 135ml', 'Kecap Manis', 'Bango', 42, 8000, 9000),
('BRNG010', 'Kecap Manis 620ml', 'Kecap Manis', 'ABC', 35, 30000, 35000),
('BRNG011', 'Kecap Manis 620ml', 'Kecap Manis', 'Bango', 15, 35000, 40000),
('BRNG012', 'Mie Sedap Ayam Bakar Limau', 'Mie Instant', 'Mie Sedap', -41, 2600, 3000),
('BRNG013', 'Mie Sedap Goreng', 'Mie Instant', 'Mie Sedap', 44, 2700, 3000),
('BRNG014', 'Mie Sedap Selection', 'Mie Instant', 'Mie Sedap', -32, 2800, 3000),
('BRNG015', 'Mie Sedap Ayam Bawang', 'Mie Instant', 'Mie Sedap', 17, 2800, 3000),
('BRNG016', 'Mie Sedap Singapore Spicy Laksa', 'Mie Instant', 'Mie Sedap', 68, 2800, 3000),
('BRNG017', 'Indomie Rendang', 'Mie Instant', 'Indomie', 57, 2800, 3000),
('BRNG018', 'Indomie Aceh', 'Mie Instant', 'Indomie', -7, 2800, 3000),
('BRNG019', 'Indomie Ayam Geprek', 'Mie Instant', 'Indomie', 79, 2800, 3000),
('BRNG020', 'Indomie Goreng', 'Mie Instant', 'Indomie', 74, 2800, 3000),
('BRNG021', 'Beras Raja 10 kg', 'Beras', 'Raja', 27, 95000, 100000),
('BRNG022', 'Beras Raja 20 kg', 'Beras', 'Raja', 27, 195000, 200000),
('BRNG023', 'Beras Topi Koki 10 kg', 'Beras', 'Topi Koki', 10, 97000, 103000),
('BRNG024', 'Beras Topi Koki 20 kg', 'Beras', 'Topi Koki', 115, 195000, 205000),
('BRNG025', 'Sabun Dettol 60 gr', 'Sabun', 'Dettol', 63, 2000, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `data_costumer`
--

CREATE TABLE `data_costumer` (
  `kd_costumer` char(7) NOT NULL,
  `nama_costumer` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `alamat` varchar(100) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `nohp` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_costumer`
--

INSERT INTO `data_costumer` (`kd_costumer`, `nama_costumer`, `jenis_kelamin`, `alamat`, `kota`, `nohp`) VALUES
('CSTMR01', 'Muhammad Saripudin', 'Laki-Laki', 'Merah Mata', 'Palembang', '087652382312'),
('CSTMR02', 'Aji', 'Laki-Laki', 'Sungai Lais', 'Palembang', '087657382312'),
('CSTMR03', 'Georde', 'Laki-Laki', 'Jakabaring', 'Palembang', '087217382312'),
('CSTMR04', 'Nanda', 'Perempuan', 'Mariana', 'Banyuasin', '087217322312'),
('CSTMR05', 'Minasa', 'Perempuan', 'Balai', 'Banyuasin', '081217322312');

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `kd_pegawai` char(7) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `alamat` varchar(100) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `nohp` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`kd_pegawai`, `nama_pegawai`, `bagian`, `jenis_kelamin`, `alamat`, `kota`, `nohp`) VALUES
('EMP0123', 'Rico Pratama', 'Admin', 'Laki-Laki', 'Merah Mata RT 01 RW 01', 'Palembang', '0895620543325'),
('EMP0124', 'Putri Regina', 'Admin', 'Perempuan', 'Gandus', 'Palembang', '0895632543325'),
('EMP0125', 'Putri Paradila', 'Staff', 'Perempuan', 'Sukarami', 'Palembang', '089632543325'),
('EMP0126', 'Gebi Wulandari', 'Manager', 'Perempuan', 'Plaju', 'Palembang', '082332543325'),
('EMP0127', 'Taris Tantriana', 'Kashift', 'Perempuan', 'Plaju', 'Palembang', '081932543325');

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang_keluar`
--

CREATE TABLE `detail_barang_keluar` (
  `id_keluar` char(7) NOT NULL,
  `kd_barang` char(7) NOT NULL,
  `stock_keluar` int(9) NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_barang_keluar`
--

INSERT INTO `detail_barang_keluar` (`id_keluar`, `kd_barang`, `stock_keluar`, `keterangan`) VALUES
('KLR0120', 'BRNG006', 1, 'Telur Busuk dan pecah 1 Kg'),
('KLR0120', 'BRNG007', 2, 'Telur Busuk dan pecah 2 Kg'),
('KLR0121', 'BRNG013', 5, 'Kadarluarsa'),
('KLR0121', 'BRNG015', 15, 'Kadarluarsa'),
('KLR0122', 'BRNG011', 10, 'Kadarluarsa'),
('KLR0122', 'BRNG016', 12, 'Kadarluarsa'),
('KLR0123', 'BRNG012', 22, 'Kadarluarsa'),
('KLR0123', 'BRNG021', 1, 'Karung Bolong'),
('KLR0123', 'BRNG018', 40, 'Dicuri'),
('KLR0124', 'BRNG012', 40, 'Dicuri'),
('KLR0124', 'BRNG014', 40, 'Dicuri'),
('KLR0125', 'BRNG005', 5, 'Dicuri'),
('KLR0125', 'BRNG008', 4, 'Dicuri');

--
-- Triggers `detail_barang_keluar`
--
DELIMITER $$
CREATE TRIGGER `detail_barang_keluar` AFTER INSERT ON `detail_barang_keluar` FOR EACH ROW update data_barang set stock=stock-new.stock_keluar
where kd_barang=new.kd_barang;
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang_masuk`
--

CREATE TABLE `detail_barang_masuk` (
  `id_masuk` char(7) NOT NULL,
  `kd_barang` char(7) NOT NULL,
  `stock_masuk` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_barang_masuk`
--

INSERT INTO `detail_barang_masuk` (`id_masuk`, `kd_barang`, `stock_masuk`) VALUES
('MSK0123', 'BRNG001', 10),
('MSK0123', 'BRNG001', 10),
('MSK0120', 'BRNG002', 10),
('MSK0120', 'BRNG003', 10),
('MSK0120', 'BRNG004', 5),
('MSK0121', 'BRNG004', 5),
('MSK0121', 'BRNG011', 15),
('MSK0121', 'BRNG012', 5),
('MSK0121', 'BRNG025', 25),
('MSK0124', 'BRNG025', 15),
('MSK0124', 'BRNG015', 15),
('MSK0124', 'BRNG013', 15),
('MSK0125', 'BRNG017', 40),
('MSK0125', 'BRNG016', 40),
('MSK0126', 'BRNG019', 40),
('MSK0126', 'BRNG020', 40),
('MSK0127', 'BRNG010', 20),
('MSK0127', 'BRNG009', 22),
('MSK0127', 'BRNG008', 23),
('MSK0127', 'BRNG008', 21),
('MSK0127', 'BRNG004', 12),
('MSK0128', 'BRNG024', 100),
('MSK0128', 'BRNG022', 20),
('MSK0128', 'BRNG021', 10);

--
-- Triggers `detail_barang_masuk`
--
DELIMITER $$
CREATE TRIGGER `detail_barang_masuk` AFTER INSERT ON `detail_barang_masuk` FOR EACH ROW update data_barang set stock=stock+new.stock_masuk
where kd_barang=new.kd_barang;
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `no_faktur` char(7) NOT NULL,
  `kd_barang` char(7) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`no_faktur`, `kd_barang`, `jumlah`) VALUES
('FAK0119', 'BRNG001', 10),
('FAK0120', 'BRNG002', 5),
('FAK0120', 'BRNG003', 5),
('FAK0122', 'BRNG004', 5),
('FAK0123', 'BRNG005', 15),
('FAK0123', 'BRNG006', 6),
('FAK0124', 'BRNG007', 9),
('FAK0125', 'BRNG014', 12),
('FAK0125', 'BRNG012', 11),
('FAK0125', 'BRNG014', 20),
('FAK0126', 'BRNG020', 1),
('FAK0126', 'BRNG010', 5),
('FAK0127', 'BRNG017', 15),
('FAK0127', 'BRNG018', 7),
('FAK0128', 'BRNG013', 6),
('FAK0128', 'BRNG017', 8),
('FAK0129', 'BRNG019', 1),
('FAK0129', 'BRNG020', 5),
('FAK0130', 'BRNG021', 2),
('FAK0130', 'BRNG022', 3),
('FAK0131', 'BRNG012', 13),
('FAK0131', 'BRNG015', 23),
('FAK0131', 'BRNG025', 2);

--
-- Triggers `detail_penjualan`
--
DELIMITER $$
CREATE TRIGGER `barang_keluar` AFTER INSERT ON `detail_penjualan` FOR EACH ROW begin
update data_barang set stock=stock-new.jumlah
where kd_barang=new.kd_barang;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `faktur`
-- (See below for the actual view)
--
CREATE TABLE `faktur` (
`No Faktur` char(7)
,`Tanggal Pembelian` date
,`Nama Costumer` varchar(50)
,`Nama Pegawai` varchar(50)
,`Nama Barang` varchar(50)
,`merek` varchar(50)
,`Total Barang` int(5)
,`Total Harga` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_faktur` char(7) NOT NULL,
  `tanggal` date NOT NULL,
  `kd_pelanggan` char(7) NOT NULL,
  `kd_pegawai` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no_faktur`, `tanggal`, `kd_pelanggan`, `kd_pegawai`) VALUES
('FAK0119', '2022-07-05', 'CSTMR05', 'EMP0127'),
('FAK0120', '2022-07-04', 'CSTMR04', 'EMP0126'),
('FAK0121', '2022-07-03', 'CSTMR03', 'EMP0125'),
('FAK0122', '2022-07-02', 'CSTMR02', 'EMP0124'),
('FAK0123', '2022-07-01', 'CSTMR01', 'EMP0123'),
('FAK0124', '2022-07-06', 'CSTMR01', 'EMP0124'),
('FAK0125', '2022-07-05', 'CSTMR02', 'EMP0123'),
('FAK0126', '2022-07-05', 'CSTMR02', 'EMP0123'),
('FAK0127', '2022-07-04', 'CSTMR01', 'EMP0124'),
('FAK0128', '2022-07-11', 'CSTMR05', 'EMP0125'),
('FAK0129', '2022-07-11', 'CSTMR05', 'EMP0125'),
('FAK0130', '2022-07-10', 'CSTMR05', 'EMP0125'),
('FAK0131', '2022-07-10', 'CSTMR02', 'EMP0123');

-- --------------------------------------------------------

--
-- Structure for view `brnng_keluar`
--
DROP TABLE IF EXISTS `brnng_keluar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `brnng_keluar`  AS SELECT `barang_keluar`.`id_keluar` AS `ID Keluar`, `barang_keluar`.`tanggal_keluar` AS `Tanggal Keluar`, sum(`detail_barang_keluar`.`stock_keluar`) AS `Total Barang Keluar`, `detail_barang_keluar`.`keterangan` AS `Keterangan` FROM (`detail_barang_keluar` join `barang_keluar` on(`barang_keluar`.`id_keluar` = `detail_barang_keluar`.`id_keluar`)) GROUP BY `barang_keluar`.`tanggal_keluar``tanggal_keluar`  ;

-- --------------------------------------------------------

--
-- Structure for view `brnng_masuk`
--
DROP TABLE IF EXISTS `brnng_masuk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `brnng_masuk`  AS SELECT `barang_masuk`.`id_masuk` AS `ID MASUK`, `barang_masuk`.`tanggal_masuk` AS `Tanggal Masuk`, sum(`detail_barang_masuk`.`stock_masuk`) AS `Total Barang Masuk` FROM (`detail_barang_masuk` join `barang_masuk` on(`barang_masuk`.`id_masuk` = `detail_barang_masuk`.`id_masuk`)) GROUP BY `barang_masuk`.`tanggal_masuk``tanggal_masuk`  ;

-- --------------------------------------------------------

--
-- Structure for view `faktur`
--
DROP TABLE IF EXISTS `faktur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `faktur`  AS SELECT `penjualan`.`no_faktur` AS `No Faktur`, `penjualan`.`tanggal` AS `Tanggal Pembelian`, `data_costumer`.`nama_costumer` AS `Nama Costumer`, `data_pegawai`.`nama_pegawai` AS `Nama Pegawai`, `data_barang`.`nama_barang` AS `Nama Barang`, `data_barang`.`merek` AS `merek`, `detail_penjualan`.`jumlah` AS `Total Barang`, `data_barang`.`harga_jual`* `detail_penjualan`.`jumlah` AS `Total Harga` FROM ((((`data_pegawai` join `penjualan` on(`data_pegawai`.`kd_pegawai` = `penjualan`.`kd_pegawai`)) join `detail_penjualan` on(`penjualan`.`no_faktur` = `detail_penjualan`.`no_faktur`)) join `data_barang` on(`data_barang`.`kd_barang` = `detail_penjualan`.`kd_barang`)) join `data_costumer` on(`penjualan`.`kd_pelanggan` = `data_costumer`.`kd_costumer`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_keluar`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_masuk`);

--
-- Indexes for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `data_costumer`
--
ALTER TABLE `data_costumer`
  ADD PRIMARY KEY (`kd_costumer`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`kd_pegawai`);

--
-- Indexes for table `detail_barang_keluar`
--
ALTER TABLE `detail_barang_keluar`
  ADD KEY `Barang` (`kd_barang`),
  ADD KEY `barang_keluar` (`id_keluar`);

--
-- Indexes for table `detail_barang_masuk`
--
ALTER TABLE `detail_barang_masuk`
  ADD KEY `barang_masuk` (`kd_barang`),
  ADD KEY `barang_masukk` (`id_masuk`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `relasi_barang` (`kd_barang`),
  ADD KEY `relasi_faktur` (`no_faktur`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_faktur`),
  ADD KEY `relasi_pegawai` (`kd_pegawai`),
  ADD KEY `relasi_costumer` (`kd_pelanggan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_barang_keluar`
--
ALTER TABLE `detail_barang_keluar`
  ADD CONSTRAINT `Barang` FOREIGN KEY (`kd_barang`) REFERENCES `data_barang` (`kd_barang`),
  ADD CONSTRAINT `barang_keluar` FOREIGN KEY (`id_keluar`) REFERENCES `barang_keluar` (`id_keluar`);

--
-- Constraints for table `detail_barang_masuk`
--
ALTER TABLE `detail_barang_masuk`
  ADD CONSTRAINT `barang_masuk` FOREIGN KEY (`kd_barang`) REFERENCES `data_barang` (`kd_barang`),
  ADD CONSTRAINT `barang_masukk` FOREIGN KEY (`id_masuk`) REFERENCES `barang_masuk` (`id_masuk`);

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `relasi_barang` FOREIGN KEY (`kd_barang`) REFERENCES `data_barang` (`kd_barang`),
  ADD CONSTRAINT `relasi_faktur` FOREIGN KEY (`no_faktur`) REFERENCES `penjualan` (`no_faktur`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `relasi_costumer` FOREIGN KEY (`kd_pelanggan`) REFERENCES `data_costumer` (`kd_costumer`),
  ADD CONSTRAINT `relasi_pegawai` FOREIGN KEY (`kd_pegawai`) REFERENCES `data_pegawai` (`kd_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
