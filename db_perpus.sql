-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Bulan Mei 2022 pada 04.22
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `idlogin` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` varchar(15) NOT NULL,
  `gender` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`idlogin`, `nama`, `email`, `password`, `role`, `gender`) VALUES
(1, 'admin', 'admin1@gmail', 'admin', 'admin', 'Laki-laki'),
(2, 'staff', 'staff@mail.id', 'staff', 'staff', 'Perempuan'),
(2022, 'ini admin', 'admin@mail', '3333', 'admin', 'Perempuan'),
(12345, 'Naama Saya', 'saya@mail', '1111', 'user', 'Perempuan'),
(1909116, 'Noni Margawari', 'noni@mail.id', '5555', 'user', 'Perempuan'),
(2009116000, 'Ahmad Jun', 'ahmad11@mail', '4444', 'user', 'Laki-laki'),
(2009116068, 'Abdillah Nur Ridho', 'abdillahnurr@gmail.com', '7777', 'user', 'Laki-laki'),
(2009116079, 'Dhestyara Alivia', 'dhesty@mail', '3333', 'staff', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `kategori` int(2) NOT NULL,
  `penulis` varchar(40) NOT NULL,
  `penerbit` varchar(40) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `kategori`, `penulis`, `penerbit`, `tahun`) VALUES
('B001', 'Logika Pemrograman Python', 1, 'Abdul Kadir', 'Elex Media Komputindo', 2019),
('B002', 'Computers and Programming', 1, 'Francis Scheid', 'McGraw-Hill', 1983),
('B003', 'the C++ Programming Language third edition', 2, 'Bjarne Stroustrup', 'AT & T Labs', 1997),
('B004', 'Pemrograman Database dengan Delphi7', 1, 'Abdul Kadir', 'Penerbit Andi', 2004),
('B005', 'Teknologi Informasi dan Komunikasi dalam Pendidikan', 2, 'Ariesto Hadi Sutopo', 'Graha Ilmu', 2018),
('B006', 'Aljabar Linear dan Aplikasinya Edisi 5', 3, 'Steven J.Leon', 'Erlangga', 2001),
('B007', 'Advanced Modern Algebra', 3, 'Joseph J. Rotman', 'Prentice Hall', 2002),
('B008', 'Foundation Action Script', 1, 'Sham Bhangal', 'Friends of ED', 2000),
('B009', 'Structural Equation Modeling', 1, 'Setyo Hari Wijanto', 'Graha Ilmu', 2008),
('B010', 'Topics in Algebra', 3, 'I. N. Herstein', 'John Wiley & Sons', 1975),
('B011', 'Sistem Informasi Akuntansi', 2, 'Faiz Zamzami', 'Gadjah Mada University Press', 2020),
('B012', 'Sistem Informasi Bisnis', 2, 'Tata Subari', 'Andi Publisher', 2019),
('B013', 'Elementary Number Theory', 3, 'Z. I. Borevich', 'Academic Press', 1966),
('B014', 'Differential Algebra', 3, 'Joseph Fells Rith', 'American Mathematical Society', 1948),
('B015', 'Ergonomika & Manajemen Teknologi Informasi', 2, 'Feri Sulianta', 'Andi Publisher', 2015),
('B016', 'Pemrograman Pascal', 1, 'Ir. Abdul Kadir', 'ANDI', 1999),
('B017', 'Seluk Beluk Database Relasional', 1, 'Mark Whitehorn', 'Erlangga', 2003),
('B018', 'Sistem Operasi Microsoft Windows XP', 1, 'Ian Chandra K', 'Elex Media Komputindo', 2009),
('B019', 'Communications in Algebra', 3, 'Mark R. Teply', 'Marcell Dekker Inc', 2000),
('B020', 'Linear Algebra Second Edition', 3, 'Kenneth Hoffman', 'Prentice Hall', 1971);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(2) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama_kategori`) VALUES
(1, 'Komputer'),
(2, 'Pendidikan'),
(3, 'Aljabar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `idpinjam` int(10) NOT NULL,
  `idlogin` int(20) NOT NULL,
  `kode_buku` varchar(10) NOT NULL,
  `judul` varchar(40) DEFAULT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_balik` date NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'dipinjam'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`idpinjam`, `idlogin`, `kode_buku`, `judul`, `tgl_pinjam`, `tgl_balik`, `status`) VALUES
(6, 0, 'B002', 'Computers and Programming', '2022-05-03', '2022-05-03', 'dikembalikan'),
(7, 2009116068, 'B002', 'Computers and Programming', '2022-05-03', '2022-05-03', 'dikembalikan'),
(8, 2009116068, 'B002', 'Computers and Programming', '2022-05-03', '2022-05-03', 'dikembalikan'),
(9, 2009116068, 'B003', 'the C++ Programming Language third editi', '2022-05-03', '2022-05-03', 'dikembalikan'),
(11, 2009116000, 'B002', 'Computers and Programming', '2022-05-03', '2022-05-03', 'dikembalikan'),
(12, 2009116000, 'B003', 'the C++ Programming Language third editi', '2022-05-03', '2022-05-03', 'dikembalikan'),
(13, 12345, 'B002', 'Computers and Programming', '2022-05-03', '2022-05-03', 'dikembalikan'),
(14, 12345, 'B001', 'Logika Pemrograman Python', '2022-05-03', '2022-05-05', 'dikembalikan'),
(15, 2009116068, 'B001', 'Logika Pemrograman Python', '2022-05-03', '2022-05-03', 'dikembalikan'),
(16, 2009116068, 'B003', 'the C++ Programming Language third editi', '2022-05-03', '2022-05-04', 'dikembalikan'),
(17, 2009116068, 'B003', 'the C++ Programming Language third editi', '2022-05-03', '2022-05-03', 'dikembalikan'),
(18, 2009116068, 'B001', 'Logika Pemrograman Python', '2022-05-03', '2022-05-05', 'dikembalikan'),
(19, 11111, 'B002', 'Computers and Programming', '2022-05-14', '2022-05-17', 'dikembalikan'),
(20, 11111, 'B003', 'the C++ Programming Language third editi', '2022-05-14', '2022-05-14', 'dikembalikan'),
(21, 2009116068, 'B002', 'Computers and Programming', '2022-05-14', '2022-05-14', 'dikembalikan'),
(22, 2009116068, 'B003', 'the C++ Programming Language third editi', '2022-05-14', '2022-05-31', 'dipinjam');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`idlogin`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`idpinjam`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `idpinjam` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
