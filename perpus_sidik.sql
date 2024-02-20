-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2024 pada 15.48
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
-- Database: `perpus_sidik`
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
(2, 'esti sitanggang', '4321', 'admin2', '085870283409', 'admin');

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
('65d2ef027f648.jpg', 'Zz01', 'novel', 'Pelangi diatas gelagah wangi ', 'S.TiDJAB', 'Qanita PT Mizan pustaka ', '2008-08-01', 720, 'DIANGKAT DARI SANDIWARA RADIO TERSUKSES 2007 DISIARKAN KE LEBIH DARI 100 RADIO DI SELURUH TANAH AIR *** &quot;Baik. Sekarang lihat!&quot; Endang Kusumadewi mendengus dan bersiap mengeluarkan jurus maut ilmu pukulan Pangracut Sukma. &quot;Tunggu Kusumadewi! Tunggu! Ini hanya latihan biasa!&quot; teriak Mpu Janardana berusaha memperingatkan. &quot;Aku belum pernah mencoba ilmu pukulan ini.&quot; &quot;Dan sekarang kau akan melontarkannya padaku?&quot; &quot;Paman takut?&quot; &quot;Bukannya takut. Tapi latihan kita ini tidak perlu sampai sejauh itu.&quot; Endang Kusumadewi kembali mendengus. &quot;Aku tak perduli! Pokoknya aku ingin merasakan seperti apa hebatnya ilmu pukulan Pangracut Sukma. Awas paman. Tahan!&quot; *** Terlambat. Pukulan pamungkas itu menyambar dada Mpu Janardana hingga membuatnya terkapar tak sadarkan diri.', '(Pelangi di atas Gelagahwangi drama cinta di senja kala Majapahit – Novel)_Library ( PDFDrive ).pdf'),
('65d2f0f4610dd.jpg', 'Zz02', 'novel', ' ‘Kau, Aku &amp; Sepucuk Angpau Merah’', 'Darwis', 'Tereliye', '2005-11-10', 512, 'menceritakan tentang sebuah kisah cinta yang sangat sulit antara pemuda asal Kalimantan bernama Borno dan pemuda Tionghoa bernama Mei. Gagal menjadi pekerja pabrik karet, sarang burung walet, petugas karcis, akhirnya menjadi pengemudi sepit (Speedboat)', 'tere-liye-aku-kau-dan-sepucuk-angpau-merah.pdf'),
('65d2f222e8f2b.jpg', 'Zz03', 'novel', 'Negeri 5 menara ', 'a.fuadi', 'PT Gramedia pustaka utama ', '2003-12-10', 440, 'Alif lahir di pinggir Danau Maninjau dan tidak pernah menginjak tanah di luar ranah Minangkabau. Masa kecilnya adalah berburu durian runtuh di rimba Bukit Barisan, bermain bola di sawah berlumpur dan tentu mandi berkecipak di air biru Danau Maninjau.', 'negeri-5-menara-dewikz-tmt1.pdf'),
('65d2f3f555cb7.jpg', 'Zz04', 'novel', 'Sang pemimpi ', 'Adrea hirata', 'Bentang Anggota IKAPI (PT Bentang Pustaka)', '2006-02-19', 168, 'mengisahkan petualangan dua sahabat, Ikal dan Arai, di desa Gantong, Belitung Timur.\r\nIkal, yang bercita-cita menjadi penulis terkenal, dan Arai, yang bercita-cita menjadi insinyur terkenal, bersama-sama menghadapi berbagai tantangan dalam mencapai impian mereka.\r\nDi awal cerita, Ikal dan Arai memutuskan untuk melanjutkan sekolah di sebuah sekolah teknik di Bandung.', 'andrea-hirata-sang-pemimpi.pdf'),
('65d4358420991.jpg', 'Zz05', 'novel', 'Laskar pelangi ', 'Adrea hirata', 'Bentang Pustaka (Yogyakarta)', '2005-01-14', 382, 'Ceritanya terjadi di desa Gantung, Belitung Timur. Dimulai ketika sekolah Muhammadiyah terancam akan dibubarkan oleh Depdikbud Sumsel jikalau tidak mencapai siswa baru sejumlah 10 anak. Ketika itu baru 9 anak yang menghadiri upacara pembukaan, akan tetapi tepat ketika Pak Harfan, sang kepala sekolah, hendak berpidato menutup sekolah, Harun dan ibunya datang untuk mendaftarkan diri di sekolah kecil itu.', 'Novel LASKAR PELANGI - yimg.com ( PDFDrive ).pdf'),
('65d4369810c63.jpg', 'Zz06', 'sains', 'Sains dan Teknologi Atmosfer Benua Maritim Indonesia', 'Ir. Halimurrahman, MT', 'CV. Media Akselerasi Anggota IKAPI', '2016-02-20', 136, 'Pusat Sains dan Teknologi Atmosfer LAPAN', 'Sains dan Teknologi Atmosfer Benua Maritim Indonesia ( PDFDrive ).pdf');

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
(335544, '222', 'sidik', '$2y$10$sKozABesmXZrOjZbenCv/OrHzBZ6BzrDM8fomxPz.c2YzRcH9OaRa', 'Laki laki', 'XII', 'Teknik Instalasi Tenaga Listrik', '0897655222', '2024-02-15');

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
(81, 'inf04', 335544, 1, '2024-02-15', '2024-02-22', 'ya');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

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
