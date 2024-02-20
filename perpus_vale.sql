-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2024 pada 15.49
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus_vale`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `kode_admin` varchar(12) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `role` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `password`, `kode_admin`, `no_tlp`, `role`) VALUES
(1, 'bambang subroto', '1234', 'admin1', '085749051409', 'petugas'),
(2, 'esti sitanggang', '4321', 'admin2', '085870283409', 'admin'),
(3, 'valefi', '233', 'admin3', '081299223454', 'admin'),
(4, 'ahmad', '322', 'admin4', '081345677655', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `buku_deskripsi` text NOT NULL,
  `isi_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_halaman`, `buku_deskripsi`, `isi_buku`) VALUES
('65d2d02b8bec8.jpg', 'zz01', 'filsafat', 'Ideologi dan Aparatus Ideologi Negara', 'Louis Althusser', 'indoPROGRESS, 2015', '2015-02-19', 65, 'Ideologi dan Aparatus Ideologi Negara', 'Ideologi dan Aparatus Ideologi Negara.pdf'),
('65d2d242ef795.jpg', 'zz02', 'bisnis', 'RICH DAD POOR DAD', 'ROBERT T. KIYOSAKI', 'Pts Publishing House Sdn. Bhd. no.12, jalan DBP, Dolomite bussines park, 68100 Batu Caves , selangor, malaysia. ', '1997-02-19', 371, 'Robert Kiyosaki ini membahas betapa pentingnya pendidikan finansial—yang mana sangat jarang terdapat dalam kurikulum pendidikan dan sekolah-sekolah formal.', 'Rich Dad Poor Dad by Robert T. Kiyosaki (z-lib.org) (1).pdf'),
('65d2d6c4f0304.jpg', 'zz03', 'sains', 'Buku  Hakikat Pembelajaran Sains', 'Dr. Ibrahim, m.pd', 'SEFA BUMI PERSADA Anggota IKAPI:No.021/DIA/2018', '2018-02-19', 124, 'Pada hakikat manusia itu terdiri atas aspek-aspek utama\r\nsebagai makhluk ciptaan Allah dapatlah berfungsi sebagai : Manusia\r\nbiasa sebagai makhluk Allah (khalifah dimuka bumi) sebagai\r\nmakhluk Individu (koloni), sebagai makhluk Sosial dan Berbudaya\r\n(hablum minannass), dan makhluk yang ber agama (hablum\r\nminallah).', 'Buku - Hakikat Pembelajaran Sains (2019).pdf'),
('65d2d9af41875.jpg', 'zz04', 'filsafat', 'tujuh filsuf muslim', 'ahmad zainul hamdi', 'pustaka pesantren', '2004-02-19', 232, 'Filsafat (Islam) merupakan salah satu bidang \r\nyang menguras energi umat Islam sejak dari awal. \r\nBukan hanya berkait dengan perdebatan konseptual (akademik), melainkan juga merangsek \r\npada wilayah nonakademik', 'Tujuh Filsuf Muslim.pdf'),
('65d2dbb53e532.jpg', 'zz05', 'filsafat', 'sampar', 'albert camus', 'Yayasan Pustaka Obo r Indonesia ', '2013-02-19', 381, 'peristiwa-peristiw\r\na ane\r\nh yan\r\ng\r\n menjad\r\ni poko\r\nk berita itu \r\nmuncu\r\nl pada tahu\r\nn 194..\r\n. , d\r\ni Oran\r\n. Umu\r\nm berpendapat\r\n, \r\nbahwa kejadian tersebut tidak wajar, menyimpang dari \r\nkebiasaan. Kesan pertama, memang Oran sebuah kota biasa, \r\ntidak lebih dari sebuah pusat pemerintahan daerah Tingkat \r\nSatu Perancis di Pantai Aljazair. ', 'Sampar.pdf'),
('65d2dcc60c0de.jpg', 'zz06', 'novel', 'alfa &amp; omega awal tanpa akhir', 'oda sekar ayu', 'PT Elex Media Komputindo', '2018-01-22', 307, 'alfa omega', 'Alfa & Omega by Oda Sekar Ayu.pdf'),
('65d2dec37d09e.jpg', 'zz07', 'informatika', 'web programming', 'Ani Oktarini, Ari Abdilah, sunarti', 'Graha Ilmu', '2019-02-19', 99, 'mempelajari web programming', 'BOOK-web-programming.pdf'),
('65d2e0837a135.jpg', 'zz08', 'novel', 'Are you? Relly? ', 'Innayah putri', 'PT Bukune kreatif cipta', '2017-01-05', 325, 'ketika yang terluka saling menemukan', 'Are You Really by Innayah Putri.pdf'),
('65d2e18248f96.jpg', 'zz09', 'filsafat', 'krisis kebebasan', 'albert camus', 'Yayasan Pustaka Obo Indonesia ', '1988-02-19', 174, 'kebebasan dan krisis yang melanda manusia dalam memperjuangkan kebebasannya. ', 'Krisis Kebebasan.pdf'),
('65d2e56fa6dc1.jpg', 'zz10', 'novel', 'Tentang Kamu', 'Tere Liye', 'republika', '2016-10-12', 524, 'tentang kamu', 'Tere liye - tentang kamu-1.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('bisnis'),
('filsafat'),
('informatika'),
('novel'),
('sains');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `kode_member` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tgl_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`nisn`, `kode_member`, `nama`, `password`, `jenis_kelamin`, `kelas`, `jurusan`, `no_tlp`, `tgl_pendaftaran`) VALUES
(987, '006', 'bonangfc', '$2y$10$8o8sf/aYP0jmC1y3K3AkDuKHCwihXe7ivC3G80C67IyuJ1A7ie70K', 'Laki laki', 'XII', 'Desain Gambar Mesin', '123456789', '2024-01-25'),
(9726, '444', 'rega', '$2y$10$sRWgDgGgwkWDTZ26NBgNe.yhBUzE.eXLn.0ZHbIfHIQ7N6PtM/G2S', 'Laki laki', 'XII', 'Sistem Informatika Jaringan dan Aplikasi', '0895557349', '2024-02-07'),
(556677, '111', 'valefi', '$2y$10$y7vfaoCGJ8QfL7wOLXz9AOquC2pZf6TvOCY7xRb5kyybjpvVdBzp2', 'Laki laki', 'XII', 'Teknik Tenaga Listrik', '088776656775', '2024-02-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(50) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('ya','tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `nisn`, `id_admin`, `tgl_peminjaman`, `tgl_pengembalian`, `status`) VALUES
(1, 'fil002', 9726, 1, '2024-02-09', '2024-02-16', 'ya'),
(80, 'fil002', 987, 1, '2024-01-25', '2024-02-01', 'tidak'),
(84, 'zz01', 556677, 4, '2024-02-19', '2024-02-26', 'ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `buku_kembali` date NOT NULL,
  `keterlambatan` enum('YA','TIDAK') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_admin` (`kode_admin`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `kode_member` (`kode_member`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `pengembalian_ibfk_4` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
