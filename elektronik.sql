-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2020 pada 13.27
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elektronik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nama_barang`, `jumlah_barang`, `harga_beli`, `harga_jual`, `tanggal_masuk`) VALUES
('B0001', 'Kulkas', 5, 1000000, 1500000, '2019-12-24'),
('B0002', 'Televisi', 0, 1500000, 2000000, '2019-12-24'),
('B0003', 'Kipas Angin', 10, 100000, 200000, '2019-12-24'),
('B0004', 'Dispenser', 9, 400000, 700000, '2019-12-24'),
('B0005', 'Ac', 6, 130000, 1600000, '2019-12-24'),
('B0006', 'Ricecooker', 11, 100000, 250000, '2019-12-24'),
('B0007', 'Laptop', 4, 5000000, 6000000, '2020-01-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_beli`
--

CREATE TABLE `tbl_beli` (
  `nofaktur` varchar(11) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `hsatuan` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_beli`
--

INSERT INTO `tbl_beli` (`nofaktur`, `kd_barang`, `nama_barang`, `hsatuan`, `jumlah_beli`, `harga`, `bayar`, `kembalian`, `tanggal`) VALUES
('F0001', 'B0002', 'Televisi', 2000000, 2, 4000000, 5000000, 1000000, '2019-12-25'),
('F0002', 'B0002', 'Televisi', 2000000, 2, 4000000, 5000000, 1000000, '2019-12-31'),
('F0003', 'B0003', 'Kipas Angin', 200000, 2, 400000, 500000, 100000, '2020-01-01'),
('F0004', 'B0005', 'Ac', 1600000, 2, 3200000, 5000000, 1100000, '2020-01-01'),
('F0004', 'B0004', 'Dispenser', 700000, 1, 700000, 5000000, 1100000, '2020-01-01'),
('F0005', 'B0002', 'Televisi', 2000000, 1, 2000000, 3000000, 800000, '2020-01-02'),
('F0005', 'B0003', 'Kipas Angin', 200000, 1, 200000, 3000000, 800000, '2020-01-02'),
('F0006', 'B0006', 'Ricecooker', 250000, 2, 500000, 500000, 0, '2020-01-02'),
('F0007', 'B0006', 'Ricecooker', 250000, 1, 250000, 300000, 50000, '2020-01-02'),
('F0008', 'B0001', 'Kulkas', 1500000, 1, 1500000, 5000000, 1400000, '2020-01-02'),
('F0008', 'B0004', 'Dispenser', 700000, 3, 2100000, 5000000, 1400000, '2020-01-02'),
('F0009', 'B0001', 'Kulkas', 1500000, 2, 3000000, 5000000, 1800000, '2020-01-02'),
('F0009', 'B0003', 'Kipas Angin', 200000, 1, 200000, 5000000, 1800000, '2020-01-02'),
('F0010', 'B0003', 'Kipas Angin', 200000, 1, 200000, 200000, 0, '2020-01-03'),
('F0011', 'B0002', 'Televisi', 2000000, 2, 4000000, 5000000, 1000000, '2020-01-03'),
('F0012', 'B0004', 'Dispenser', 700000, 1, 700000, 1000000, 50000, '2020-01-03'),
('F0012', 'B0006', 'Ricecooker', 250000, 1, 250000, 1000000, 50000, '2020-01-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_login`
--

CREATE TABLE `tbl_login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` int(30) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_login`
--

INSERT INTO `tbl_login` (`username`, `password`, `jenis_kelamin`, `email`, `no_telp`, `agama`, `alamat`) VALUES
('aa', 'aa', 'Perempuan', 'aa', 11, 'Islam', 'aa'),
('ade', '111', 'Perempuan', 'ade@yahoo.co,id', 11, 'Islam', 'sudiang'),
('user', 'user', 'Laki-Laki', 'user@gmail.com', 81, 'Islam', 'Sudiang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_login_admin`
--

CREATE TABLE `tbl_login_admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` int(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_login_admin`
--

INSERT INTO `tbl_login_admin` (`username`, `password`, `jenis_kelamin`, `email`, `no_telp`, `agama`, `alamat`) VALUES
('admin', 'admin', 'Laki-Laki', 'fikratullahnugraha28@gmail.com', 821118887, 'islam', 'btp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tmp_beli`
--

CREATE TABLE `tbl_tmp_beli` (
  `id_tmp` int(11) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `hsatuan` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `tbl_tmp_beli`
--
DELIMITER $$
CREATE TRIGGER `batal` AFTER DELETE ON `tbl_tmp_beli` FOR EACH ROW BEGIN
UPDATE tbl_barang SET jumlah_barang = jumlah_barang + OLD.jumlah_beli
WHERE kd_barang = OLD.kd_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `beli` AFTER INSERT ON `tbl_tmp_beli` FOR EACH ROW BEGIN 
UPDATE tbl_barang SET jumlah_barang = jumlah_barang - new.jumlah_beli 
WHERE kd_barang = new.`kd_barang`; 
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tbl_login_admin`
--
ALTER TABLE `tbl_login_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tbl_tmp_beli`
--
ALTER TABLE `tbl_tmp_beli`
  ADD PRIMARY KEY (`id_tmp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_tmp_beli`
--
ALTER TABLE `tbl_tmp_beli`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
