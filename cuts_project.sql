-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2023 pada 10.39
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuts_project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(120) NOT NULL,
  `alamat_admin` varchar(120) NOT NULL,
  `email_admin` varchar(120) NOT NULL,
  `no_telepon` varchar(120) NOT NULL,
  `foto_admin` varchar(255) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `alamat_admin`, `email_admin`, `no_telepon`, `foto_admin`, `username`, `password`) VALUES
(1, 'Juliandi Darmawan', 'Kota Langsa', 'juliandiholic@gmail.com', '082272725527', '1.jpg', 'admin123', '0192023a7bbd73250516f069df18b500'),
(13, 'Taufik', 'taufik01', 'taufik@gmail.com', '1234567', '', 'taufik01', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `atas_nama` varchar(50) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `sistem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id_bank`, `atas_nama`, `nama_bank`, `no_rekening`, `sistem`) VALUES
(4, 'Juliandi Darmawans', 'Bank BRI', '4523 - 5628022 - 9821', 'Non-Tunai'),
(5, 'Juliandi Darmawan', 'Bank BNI', '09847593753628', 'Non-Tunai'),
(6, 'Juliandi Darmawan', 'Bank Mandiri', '038475 - 34 - 052385', 'Non-Tunai'),
(8, 'LOBS', 'Bayar Ke Kapster', '-', 'Tunai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(120) NOT NULL,
  `alamat_karyawan` varchar(120) NOT NULL,
  `email_karyawan` varchar(120) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `foto_karyawan` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`, `email_karyawan`, `no_telepon`, `foto_karyawan`, `status`, `username`, `password`) VALUES
(31, 'Agus Ramadhana', 'Simpang Kapal, Aceh Tamiang', 'agusrmdhn@gmail.com', '087864532342', 'team-1.jpg', '1', 'karyawan17', '3095b5db43552d8121b12b88a1bd6397'),
(32, 'Ridho Akbari', 'Paya Bujok Seuleumak, Jln.Ahmad Yani', 'abdul@gmail.com', '09827262221', 'team-3.jpg', '1', 'karyawan2', '4ce72ad7152d094af6e0113e1ee600ee'),
(33, 'Imam Supriyadi', 'Karang Anyar, Kota Langsa', 'imamganteng@gmail.com', '082213465767', 'testimonials-5.jpg', '1', 'karyawan3', 'd4d63bf8dc2ca30adee3304d0d1ddbd2'),
(36, 'Al Aziz', 'Gedubang Jawa, Kota Langsa', 's@gmail.com', '082435243633', 'team-2.jpg', '1', 'karyawan4', '1c079f80aec40fecc164f2ff59743ae0'),
(37, 'Bayu Fiqri', 'Karang Anyar, Kota Langsa', 's@gmail.com', '082435243633', 'testimonials-2.jpg', '0', 'karyawan5', 'd5cff9e63bdf56ba61a86f19a626291b'),
(41, 'Riski Faiturrahman', 'Karang Anyar, Kota Langsa', 'y@gmail.com', '0866272531253', 'team-4.jpg', '1', 'karyawan6', '065f6ca8061edb7fdfa9e8e0043b65e6'),
(42, 'Sayed Akram', 'Gedubang Jawa, Kota Langsa', 'yo@gmail.com', '0866272531253', 'testimonials-3.jpg', '1', 'karyawan7', '7217e9dfb7090b42105be6bf9c8a4b96');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(11) NOT NULL,
  `nama_layanan` varchar(120) NOT NULL,
  `ket_layanan` varchar(300) NOT NULL,
  `tarif` int(50) NOT NULL,
  `foto_layanan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama_layanan`, `ket_layanan`, `tarif`, `foto_layanan`) VALUES
(10, 'Paket 1', 'Pangkas + Pijat Kepala', 40000, 'logo_barber.jpg'),
(11, 'Paket 2', 'Pangkas + Pijat Kepala + Shaving ( Pomade/Vitamin )', 50000, 'p21.jpg'),
(12, 'Paket 3', 'Pangkas + Pijat Kepala + Shaving + Masker Wajah', 70000, 'i2.jpg'),
(13, 'Paket Full', 'Pangkas + Shaving + Masker Wajah & Mata + Pijat Kepala, & Kaki', 110000, 'logo_barber2.jpg'),
(14, 'Treatment 1', 'Cat Rambut ( Hitam )', 60000, 'i1.jpg'),
(15, 'Treatment 2', 'Paket 1 + Cat Rambut ( Hitam )', 90000, 'p211.jpg'),
(16, 'Treatment 3', 'Paket 2 + Cat Rambut ( Hitam )', 100000, 'logo_barber3.jpg'),
(21, 'Treatment 4', 'Paket 3 + Cat Rambut ( Hitam )', 120000, 'i21.jpg'),
(22, 'Treatment Full', 'Paket Full + Cat Rambut ( Hitam )', 150000, 'p21.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `foto_pelanggan` varchar(255) NOT NULL,
  `nama_pelanggan` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `email_pelanggan` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `foto_pelanggan`, `nama_pelanggan`, `username`, `alamat`, `no_telepon`, `email_pelanggan`, `password`) VALUES
(53, 'file.jpg', 'Bayu Ananda', 'pelanggan1', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '082272725527', 'bayu@gmail.com', '7f6c3d8b7070f48e0260c1916b09ebf5'),
(54, 'foto31.jpg', 'Zaki Mubarak', 'pelanggan2', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '082290878678', 'zaki@gmail.com', 'b25af008eece00df190436bbfff1da58'),
(55, 'formal_jas.jpg', 'Verdi Saputra', 'pelanggan3', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '082123083838', 'verr@gmail.com', 'f903c3c741c8fb0bae1ef4bd538ecfa2'),
(56, 'rhiskiyasyah-albazahara.jpg', 'Furqan Azizi', 'pelanggan4', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '0866272531253', 'frqn@gmail.com', '09f7cf1339376aace4687e45be82437c'),
(57, '1.jpg', 'Bagus Riansyah', 'pelanggan5', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '0866272533212', 'gsmnnn@gmail.com', '69a783a581a2f7b8e4c30b339e354efe'),
(58, 'rhiskiyasyah-albazahara1.jpg', 'Bayu Aji', 'pelanggan6', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '0866272533212', 'bayu@gmail.com', '2174ae3778d687b11e14096baec3d589'),
(59, '11.jpg', 'Sayed Akram', 'pelanggan7', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '082290878678', 'saeyd@gmail.com', '9b6cd0165a020a73c7bfe0d205a2c666'),
(60, 'IMG_20210325_141747_942(1).jpg', 'Luqman Hakim', 'pelanggan8', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '082123083838', 'lqmn@gmail.com', '1bdbae117a32fa1b00ef86475595f243'),
(61, 'foto4.jpg', 'Irfan Hakim', 'pelanggan9', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '0878645323421', 'irfan@gmail.com', '040aea70b199a73067af96784d26313b'),
(62, 'foto2.jpg', 'Takemichi Hanagaki', 'pelanggan10', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '082123083838', 'tkmchi@yahoo.com', '4109e19539e5f512445611804658cb3d'),
(63, 'seprian-foto.jpg', 'Mikey Manjiro', 'pelanggan11', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '0866272533212', 'mikey@gmail.com', '73597cd37a5e0d07475dc3dbdbb7db74'),
(64, 'formal_jas1.jpg', 'Coki Pardede', 'pelanggan12', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '087864532342', 'ck@gmail.com', 'c38e91cf1b97995cb379b68757eca01b'),
(66, '19.jpg', 'Liannnnnnnnnnnnnnn', 'liannnnn', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '0866272533212', 'y@gmail.com', 'b45429c3a7888c3e671a4e23b1bf9ad2'),
(70, '12.jpg', 'BAYU', 'bayu12345', 'Lr. Tgk Muhammad, Jln. Ahmad Yani, PB Seuleumak, Kota Langsa', '0866272533212', 'bayu@gmail.com', '4ca97cb9f1770f0a5d9fda6b7e86c542');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `tanggal_pesanan` datetime NOT NULL,
  `status_pesanan` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(120) NOT NULL,
  `status_pembayaran` int(11) NOT NULL,
  `penilaian` int(5) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_pelanggan`, `id_karyawan`, `id_layanan`, `id_bank`, `tanggal_pesanan`, `status_pesanan`, `bukti_pembayaran`, `status_pembayaran`, `penilaian`, `komentar`) VALUES
(143, 55, 32, 10, 5, '2021-09-24 10:21:42', 'Selesai', '11.jpg', 1, 2, 'eqwr'),
(144, 58, 37, 11, 5, '2021-10-10 14:18:53', 'Belum Selesai', '', 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
