-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Apr 2022 pada 05.03
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngadu_new`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` bigint(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `foto_profile` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`, `foto_profile`) VALUES
(0, 'aldi', '', '', '', ''),
(123, 'robbi', 'masyarakat', '$2y$10$BqCVWU56ME/Y.MctVXBw7uI8w26d1gK/HY219JiQWe./ppfYVEeYS', '123', 'user.png'),
(98767677, 'yeli yulia', 'linda2', '$2y$10$Mqx0.NO9TXrltfgfDwjNI.SIYKVUyHMzQ/CSu51jDckIJyRDI53Xa', '08977647545', 'user.png'),
(6575687857, 'Laela Mukaromah', 'laila', '$2y$10$Fm9CHGajVHrTG5v6rj3WKeYYqpeRTQY5rpJn9uE7g9J5K8bfzHUey', '457365873568', 'user.png'),
(9879674534, 'yeli yulia', 'yeli', '$2y$10$1aQfyf5cjdLWWOSB5grCGe2B888iUiRFEKogM2cC/HhV/uDg05wda', '08977647545', 'user.png'),
(9879674554, 'ailinda', 'linda', '$2y$10$60nmOIsuldvm2v.sWvVbzuVVveBKTD/p9ciPEhXA5fr4xcl0I5sbO', '08977647545', 'user.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` bigint(16) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` bigint(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai','tolak') NOT NULL,
  `judul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`, `judul`) VALUES
(2, '2021-03-18', 36463, 'ngadu muncang', '39fa39806fccc27b24b0a45700b4ee00.png', 'tolak', ''),
(3, '2021-03-18', 45454, 'ngadu muncang', '3c7a82e123a9315856c807d7e7a12403.png', 'tolak', ''),
(4, '2021-03-18', 45454, 'ngadu muncang di diditu', '55906b3152399c8da00c3655d87dc329.png', 'proses', ''),
(6, '2021-03-18', 45454, 'dfdfdf', '7e8c89bd9dcfd6cf9c62ede960273405.jpg', 'proses', ''),
(7, '2021-03-18', 45454, 'sdsdsd', '71ca3796414ad6f1ba974dd060e807d2.jpg', 'proses', 'sdfsd'),
(8, '2021-03-18', 56464, 'di kampung saya ada yang jualan miras tolong di gerebeg', '24069e21d81b401c47453c3ddb1b0303.jpg', 'proses', 'kasus miras'),
(9, '2021-03-18', 45454, 'tolong dikampung saya ada yang jualan miras', '265fa910ba732fa61a8b3c9460d600bc.jpg', 'tolak', 'miras'),
(10, '2021-03-18', 45454, 'tolong dikampung saya ada penjual miras gerebeg sekarang', 'e4f2d89c4a906fa46509dad9c2bac9d3.png', 'tolak', 'miras'),
(11, '2021-03-18', 45454, 'gerebeg', '0603498d7bb75345fbdd0106d86e1a37.png', 'proses', 'miras'),
(12, '2021-03-18', 45454, 'ada narkoba disini', '5a7ba6c2a7756466969a2e09a31806fb.png', 'proses', 'narkoba'),
(13, '2021-03-18', 45454, 'dfdf', '8074d5403de40ba628c2ee4697e8f65a.png', 'proses', 'dfdf'),
(14, '2021-03-29', 45454, 'sdssdsd', '91291c2e8b2a5d0a768603c2c33c0e54.png', '0', 'swdsdsd'),
(15, '2021-03-30', 878785656, 'ghghg', '7256605cca874a360bc16141c91c15ab.png', 'proses', 'ghghghg'),
(16, '2021-03-30', 23232667, 'tolong ke tempat saya ada yang jual miras', '4251f83691b2353d95350612157de4ff.png', 'tolak', 'miras '),
(17, '2021-03-31', 9879674534, 'TOLONG GEREBEG', 'c9fc679259cd59aa6f75268e5565d4da.png', '0', 'KERUSUHAN'),
(18, '2021-03-31', 98767677, 'KERUSUHAN', 'f157473b91de2ebc7bbad4cb9af0a4a5.png', 'tolak', 'KERUSUHAN'),
(19, '2021-03-31', 98767677, 'kerusuhan', 'ff03fedf75047bab35dca0656e867222.jpg', 'tolak', 'kerusuhan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL,
  `foto_profile` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`, `foto_profile`) VALUES
(6, 'petugas', 'petugas', '$2y$10$SIUNsTMGwDOoXJ62kgoMueorXuuDenxdG0ZKRU1NUigM2Xby0bAmC', '123456', 'petugas', 'user.png'),
(7, 'aldi', 'aldi', '$2y$10$iDNWKZLR31D4xGgdLZqRP.k4RP.GrruYV22ksQY9rlGrYUEQXFEby', '0897438483434', 'petugas', 'user.png'),
(8, 'aldi', 'skuy', '5cf15fc7e77e85f5d525727358c0ffc9', '0897438483434', 'admin', 'user.png'),
(10, 'aldi', 'petugas2', '$2y$10$w.eTSrzbBgIzFVG4zpF4HuCH9aCByaiIU363GCJjT.KDJZ6saHhOe', '08946746547', 'petugas', 'user.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` bigint(16) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(1, 1, '2021-03-17', 'oke', 8),
(2, 2, '2021-03-18', 'maaf ajuan anda di tolak', 7),
(3, 3, '2021-03-18', 'maaf tanggapan anda di tolakdfdf', 7),
(4, 4, '2021-03-18', 'ngdnfjdhfdf', 2),
(5, 6, '2021-03-18', 'oke siap', 2),
(6, 7, '2021-03-18', 'sdsds', 2),
(7, 9, '2021-03-18', 'okeh', 2),
(8, 10, '2021-03-18', 'okeh siap 86', 2),
(9, 11, '2021-03-18', 'okeh', 7),
(10, 12, '2021-03-18', 'dfdfd', 2),
(11, 8, '2021-03-18', 'fghfgfg', 2),
(12, 15, '2021-03-30', 'ok', 2),
(13, 16, '2021-03-30', 'OKEH GASKEUN', 2),
(14, 13, '2021-03-30', 'wewe', 2),
(15, 18, '2021-03-31', 'di tampi', 7),
(16, 19, '2021-03-31', 'oke siap besok di cek ke lokasi', 7);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nik` (`nik`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_pengaduan` (`id_pengaduan`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` bigint(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
