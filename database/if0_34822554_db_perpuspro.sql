-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql301.infinityfree.com
-- Waktu pembuatan: 09 Sep 2023 pada 11.04
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_34822554_db_perpuspro`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user_id` int(2) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'operator', 'operator', 'operator', 'admin/gambar_admin/avatar5.png'),
(2, 'admin', 'admin', 'Muh Adzkia', 'admin/gambar_admin/adzkia.jpg'),
(28, 'user', '123', 'Muhsyarof', 'admin/gambar_admin/2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota`
--

CREATE TABLE `data_anggota` (
  `id` int(4) NOT NULL,
  `no_induk` varchar(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_anggota`
--

INSERT INTO `data_anggota` (`id`, `no_induk`, `nama`, `jk`, `kelas`, `ttl`, `alamat`, `foto`) VALUES
(1, '15901', 'AGUNG SANTOSO', 'L', '9a', 'Cikarang, 4 Agustus 1997', 'Kp. Wangkal, Cikarang Barat', 'gambar_anggota/26115.jpg'),
(2, '15902', 'AHMAD MUCHTADIN', 'L', '9c', 'Bekasi, 27 Januari 1998', 'Cabang Lio, Cikarang Utara', 'gambar_anggota/Assy enggine.jpg'),
(3, '15903', 'HAMRI AJAH', 'L', '9b', 'Cikarang, 30 Januari 1997', 'Rawa Bangkong, Cikarang Timur', 'gambar_anggota/009.jpg'),
(4, '15904', 'ANI ANILAH', 'P', '9b', 'Cikarang, 20 Januari 1992', 'Sasak Bali, Sukatani', 'gambar_anggota/c.jpg'),
(5, '15905', 'RYAN SUPRIATNA', 'L', '9b', 'Cikarang, 9 Agustus 1995', 'Sukatani, Cikarang', 'gambar_anggota/ko caci.jpg'),
(6, '15906', 'LATHIFAH', 'P', '9c', 'Bekasi, 26 Juli 1997', 'Cikarang Baru', 'gambar_anggota/1098.jpg'),
(7, '15907', 'CANTIKA PUJIASTUTI', 'P', '9a', 'Karawang, 11 April 1998', 'Tambelang, Bekasi', 'gambar_anggota/user.jpg'),
(8, '15908', 'SEBASTIAN HADI PRASETYO', 'L', '9a', 'Bekasi, 17 Agustus 1990', 'Tambelang, Bekasi', 'gambar_anggota/26115.jpg'),
(9, '15909', 'RAMA AGUS SUPRIYADI', 'L', '9b', 'Bogor, 29 Juli 1994', 'Cikarang, Bekasi', 'gambar_anggota/l.jpg'),
(11, '51507', 'MUHAMMAD ADZKIA ADI SYAHPUTRA', 'L', '9d', 'Boyolali, 05 Januari 2005', 'Jl. Kolonel Sugiyono No.100, Kadipiro, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57135', 'gambar_anggota/Adzkia.jpg'),
(12, '20150', 'ANTON SUGIANTO', 'L', '9b', 'Indramayu, 28 Oktober 1988', 'cikarang barat bekasi', 'gambar_anggota/2.jpg'),
(13, '20150', 'DEDE RIZKI RAMADHAN', 'L', '9c', 'Bekasi, 30 November 1991', 'Pilar Barat, Cikarang, Bekasi', 'gambar_anggota/5.jpg'),
(14, '20151', 'ZALFA ZAIDAN', 'L', '9a', 'Boyolali, 05 Agustus 2007', 'Boyolali', 'gambar_anggota/foto.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_buku`
--

CREATE TABLE `data_buku` (
  `id` int(5) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `th_terbit` varchar(4) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `kode_klas` varchar(20) NOT NULL,
  `jumlah_buku` int(2) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `jum_temp` int(4) NOT NULL,
  `tgl_input` varchar(75) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_buku`
--

INSERT INTO `data_buku` (`id`, `judul`, `pengarang`, `th_terbit`, `penerbit`, `isbn`, `kategori`, `kode_klas`, `jumlah_buku`, `lokasi`, `asal`, `jum_temp`, `tgl_input`, `gambar`) VALUES
(2, 'Membangun Toko Online Dengan PHP dan MySQL', 'Sarjana Komedi', '2015', 'Gagal Koding', 'QWERT122345566', '1300', 'XII-Utama', 10, 'Rak A1', 'Pembelian', 0, '2015-10-10 07:47:40', ''),
(3, 'Aplikasi Penggajian Karyawan dengan PHP', 'Sarjana Komedi', '2015', 'Gagal Koding', 'QWERT1232446', '1300', 'XI-Utama', 10, 'Rak A2', 'Pembelian', 10, '2015-10-10 07:46:00', ''),
(4, 'Membangun Aplikasi Perpustakaan Berbasis Web', 'Sarjana Komedi', '2015', 'Gagal Koding', 'QWERT12234985', '1300', 'X-Utama', 10, 'Rak A2', 'Pembelian', 8, '2015-10-10 07:44:54', ''),
(5, 'Membangun Aplikasi Nilai Dengan PHP', 'Sarjana Komedi', '2009', 'Gagal Koding', 'QWERT12232454', '1300', 'X-Tambahan', 10, 'Rak H1', 'Pemberian Siswa', 9, '2015-10-10 07:48:50', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(6) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(17) NOT NULL,
  `perlu1` varchar(15) NOT NULL,
  `cari` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl_kunjung` date NOT NULL,
  `jam_kunjung` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama`, `jk`, `kelas`, `perlu1`, `cari`, `saran`, `tgl_kunjung`, `jam_kunjung`) VALUES
(1, 'Sebastian Hadi Prasetyo', 'L', '9a', 'Membaca', 'Antropologi', 'Pelayanan di tingkatkan lagi', '2015-10-11', '07:23:40'),
(2, 'Sarjana Komedi', 'L', 'XII4', 'Membaca', 'Buku Pemrograman', 'Perbanyak Buku Pemrograman', '0000-00-00', '04:21:50'),
(3, 'Niqo Bio Haqqul Yaqin', 'L', 'X2', 'Membaca', 'Buku Pemrograman', 'Tingkatkan Pelayanan', '2015-10-18', '04:23:04'),
(4, 'Ujang Syamsuddin', 'L', 'XII5', 'Membaca', 'Buku Paket', 'Tingkatkan Pelayanan', '2015-10-19', '19:40:59'),
(5, 'Sugiarto Cokro', 'L', 'XI5', 'Pinjam Buku', 'Biologi', 'Kalo telat jangan di denda dong.', '2015-10-19', '19:42:22'),
(6, 'Agung Purnomo', 'L', 'XI2', 'Membaca', 'Teknik Informatika', 'Lebih ditingkatkan lagi', '2017-04-26', '03:54:30'),
(7, 'Danu Budi Kuncoro', 'L', 'XII1', 'Membaca', 'Ilmu Komputer', 'Fasilitas meja untuk para pembaca kurang', '2017-04-26', '03:56:11'),
(8, 'Syafira Mutia Syahida', 'P', 'XI2', 'Pinjam Buku', 'Indahnya Membangun Cinta', 'No comment', '2017-04-26', '03:57:13'),
(9, 'Monika Widya Katerine', 'P', 'XII5', 'Membaca', 'Harap bersama Kekasih', 'Ruang perpustakaan mungkin lebih baik sering dibersihkan', '2017-04-26', '03:57:58'),
(10, 'Muhammad Adzkia', 'L', 'XII3', 'Tugas', 'Teknik Informatika', '-', '2023-08-19', '10:27:12'),
(11, 'Yosa Teknisi', 'L', 'XII2', 'Tugas', 'Kitab', '-', '2023-08-21', '09:31:48'),
(12, 'Muh Syarof', 'L', 'XII5', 'Debug', 'bug', 'Tambahkan improvisasi sendiri bisa fitur ataupun tampilan', '2023-08-24', '10:21:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trans_pinjam`
--

CREATE TABLE `trans_pinjam` (
  `id` int(5) NOT NULL,
  `judul_buku` varchar(250) NOT NULL,
  `id_peminjam` int(4) NOT NULL,
  `nama_peminjam` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(15) NOT NULL,
  `tgl_kembali` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trans_pinjam`
--

INSERT INTO `trans_pinjam` (`id`, `judul_buku`, `id_peminjam`, `nama_peminjam`, `tgl_pinjam`, `tgl_kembali`, `status`, `ket`) VALUES
(2, 'Membangun', 2, 'AHMAD', '31-10-2015', '07-11-2015', 'kembali', 'buku'),
(3, 'Membangun', 4, 'ANTON', '31-10-2015', '07-11-2015', 'kembali', 'pinjam donk'),
(4, 'Membangun', 5, 'SARJANA', '03-11-2015', '10-11-2015', 'kembali', 'Referensi Skripsi'),
(5, 'Membangun', 4, 'ZALFA', '24-08-2023', '31-08-2023', 'kembali', '1 Minggu harus balik');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trans_pinjam`
--
ALTER TABLE `trans_pinjam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `trans_pinjam`
--
ALTER TABLE `trans_pinjam`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
