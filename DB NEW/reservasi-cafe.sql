-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 16 Nov 2022 pada 12.43
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservasi-cafe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_cart`
--

CREATE TABLE `detail_cart` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` tinyint(3) UNSIGNED DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `metode` enum('cash','e-wallet','bank') DEFAULT NULL,
  `status` enum('belum','lunas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tgl_sampai` datetime DEFAULT NULL,
  `penerima` varchar(25) DEFAULT NULL,
  `status` enum('Terkirim','OTW','Sampai') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `harga` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `stok` int(3) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `jenis`, `harga`, `keterangan`, `stok`, `gambar`) VALUES
(1, 'Ayam Bakar', 'Makanan', 13000, 'Ayam Bakar Geprek Bumbu kecap', 98, 'gambar_produk/images(5).jpg'),
(2, 'Pepes Ikan Patin', 'Makanan', 12000, 'Ikan Patin pepes bumbu', 100, 'gambar_produk/images(2).jpg'),
(3, 'Botok Tahu', 'Makanan', 5000, 'Botok Tahu campur bumbu dan rempah - rempah', 100, 'gambar_produk/images(3).jpg'),
(4, 'Sop Ayam', 'Makanan', 12000, 'Sop ayam bumbu lada', 100, 'gambar_produk/images(4).jpg'),
(5, 'Sayur lodeh', 'Makanan', 6000, 'Sayur lodeh kuah santan', 100, 'gambar_produk/images(6).jpg'),
(6, 'Ayam Kremes ', 'Makanan', 12000, 'Ayam Kremes Bumbu sambal gledek', 100, 'gambar_produk/images(7).jpg'),
(7, 'Sayur Asam', 'Makanan', 6000, 'Sayur Asam Khas Sunda', 100, 'gambar_produk/images(8).jpg'),
(8, 'Tahu Tempe', 'Makanan', 6000, 'Tahu tempe kremes sambal coet dadakan', 100, 'gambar_produk/images(9).jpg'),
(9, 'Sop Sapi', 'Makanan', 18000, 'Sop Sapi daging dan tangkar plus sambal hijau gledek', 100, 'gambar_produk/images(10).jpg'),
(10, 'Sayur Bayam', 'Makanan', 6000, 'Sayur bayam dengan jagung', 100, 'gambar_produk/images(11).jpg'),
(11, 'Urab', 'Makanan', 6000, 'Campuran sayuran dengan bumbu rempah dan parutan kelapa', 100, 'gambar_produk/images(12).jpg'),
(12, 'Pepes Jamur', 'Makanan', 10000, 'pepes jamur bumbu cabai dan bawang merah', 100, 'gambar_produk/images(13).jpg'),
(13, 'Ikan Mas Bakar', 'Makanan', 15000, 'Ikan Mas bakar bumbu kecap lada hitam', 100, 'gambar_produk/images(14).jpg'),
(14, 'Mujair Goreng', 'Makanan', 12000, 'Ikan Mujair goreng bumbu rempah', 100, 'gambar_produk/images(15).jpg'),
(15, 'Lalapan', 'Makanan', 5000, 'Lalapan plus sambel dadakan', 100, 'gambar_produk/images(16).jpg'),
(16, 'Oseng Kangkung', 'Makanan', 6000, 'Oseng kangkung bumbu teriyaki', 100, 'gambar_produk/images(17).jpg'),
(17, 'Oseng Paria', 'Makanan', 6000, 'Oseng paria (pare) bumbu cabe bawang dan rempah', 100, 'gambar_produk/images(18).jpg'),
(18, 'Komplit 1', 'Makanan', 18000, 'Nasi, Ayam Bakar, lalapan, sambal korek', 100, 'gambar_produk/images(19).jpg'),
(19, 'Sambal Hejo', 'Makanan', 6000, 'Sambal goreng hejo gledek', 100, 'gambar_produk/images(20).jpg'),
(20, 'Sambal Goang', 'Makanan', 6000, 'Sambal Goang Cabe Jablay', 100, 'gambar_produk/images(21).jpg'),
(21, 'Petai Bakar', 'Makanan', 15000, 'petai bakar sambal lalap (2pcs)', 100, 'gambar_produk/images(22).jpg'),
(22, 'Capcai Seafood', 'Makanan', 20000, 'Campuran sayuran, bakso, ayam dan seafood', 100, 'gambar_produk/images(23).jpg'),
(23, 'Oseng Oncom', 'Makanan', 6000, 'Oseng oncom plus teri bumbu pedas', 100, 'gambar_produk/images(24).jpg'),
(24, 'Asinan', 'Makanan', 6000, 'Asinan', 100, 'gambar_produk/images(25).jpg'),
(25, 'Oreg Tempe', 'Makanan', 6000, 'Oreg tempe bumbu kecap', 100, 'gambar_produk/images(26).jpg'),
(26, 'Kentang sambel', 'Makanan', 8000, 'Kentang sambel goreng petai', 100, 'gambar_produk/images(27).jpg'),
(27, 'Terong Sambal', 'Makanan', 8000, 'Terong sambal goreng petai', 100, 'gambar_produk/images(28).jpg'),
(28, 'Oseng Jamur Tahu', 'Makanan', 10000, 'Oseng Jamur Tahu', 100, 'gambar_produk/images(29).jpg'),
(29, 'Goreng Ikan Mas', 'Makanan', 11000, 'Goreng Ikan Mas', 100, 'gambar_produk/images(30).jpg'),
(30, 'Ati Ampela', 'Makanan', 10000, 'Ati Ampela bumbu kari pedas', 100, 'gambar_produk/images(31).jpg'),
(31, 'Bala - Bala', 'Makanan', 2000, 'Bala - Bala', 100, 'gambar_produk/images(32).jpg'),
(32, 'Bakwan Jagung', 'Makanan', 2000, 'Bakwan Jagung', 100, 'gambar_produk/images(33).jpg'),
(33, 'Tempe Goreng', 'Makanan', 1000, 'Tempe Goreng', 100, 'gambar_produk/images(34).jpg'),
(34, 'Semur Jengkol', 'Makanan', 10000, 'Semur Jengkol Bumbu Lada', 100, 'gambar_produk/images(35).jpg'),
(35, 'Ikan Kembung', 'Makanan', 10000, 'Ikan Kembung Sambel kecap pedas', 100, 'gambar_produk/images(36).jpg'),
(36, 'Ikan Bandeng', 'Makanan', 10000, 'Ikan Bandeng Goreng', 100, 'gambar_produk/images(37).jpg'),
(37, 'Sayur Nangka', 'Makanan', 6000, 'Sayur Nangka Bumbu Kunyit dan santan', 100, 'gambar_produk/images(38).jpg'),
(38, 'Pepes Ikan Mas', 'Makanan', 15000, 'Pepes Ikan Mas Pedas', 99, 'gambar_produk/images(39).jpg'),
(39, 'Oseng Genjer', 'Makanan', 6000, 'Oseng Genjer', 100, 'gambar_produk/images(40).jpg'),
(40, 'Sop Ayam Rempah', 'Makanan', 12000, 'Sop Ayam Rempah', 100, 'gambar_produk/images(41).jpg'),
(41, 'Nasi Putih', 'Makanan', 6000, 'Nasi Putih Bakul', 99, 'gambar_produk/images(42).jpg'),
(42, 'Oseng Kacang', 'Makanan', 6000, 'Oseng Kacang', 99, 'gambar_produk/images(43).jpg'),
(43, 'Pepes Ayam ', 'Makanan', 12000, 'Pepes Ayam bumbu kuyit, cabai, bawang', 100, 'gambar_produk/images.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_cart`
--
ALTER TABLE `detail_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_cart` (`id_cart`),
  ADD KEY `fk_order_produk` (`id_produk`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembayaran_cart` (`id_cart`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pengiriman_cart` (`id_cart`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detail_cart`
--
ALTER TABLE `detail_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_cart`
--
ALTER TABLE `detail_cart`
  ADD CONSTRAINT `fk_detail_cart` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `fk_order_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `fk_pembayaran_cart` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id`);

--
-- Ketidakleluasaan untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `fk_pengiriman_cart` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
