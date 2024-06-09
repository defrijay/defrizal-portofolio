-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Apr 2023 pada 05.48
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mamemam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan`
--

CREATE TABLE `bahan` (
  `id_bahan` int(11) NOT NULL,
  `nama_bahan` varchar(50) NOT NULL,
  `stok_bahan` int(11) NOT NULL,
  `harga_bahan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bahan`
--

INSERT INTO `bahan` (`id_bahan`, `nama_bahan`, `stok_bahan`, `harga_bahan`) VALUES
(1, 'Kerupuk', 70, 300),
(2, 'Mie Kuning', 39, 1500),
(3, 'Siomay Kering', 15, 1000),
(4, 'Tepung Terigu', 15, 2000),
(5, 'Telur Ayam', 80, 1500),
(6, 'Daging Ayam', 15, 10000),
(7, 'Daging Sapi', 25, 18000),
(8, 'Daging Domba', 15, 13000),
(9, 'Makaroni', 5, 2000),
(10, 'Makaroni Spiral', 9, 2000),
(11, 'Kwetiau', 7, 2000),
(12, 'Macam Macam Selai', 15, 9000),
(13, 'Mentega', 4, 3000),
(15, 'Caramel', 14, 110000),
(16, 'Soda', 15, 8700),
(17, 'Kerupuks', 100, 300);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chef`
--

CREATE TABLE `chef` (
  `id_chef` int(11) NOT NULL,
  `nama_chef` varchar(50) NOT NULL,
  `no_telp_chef` varchar(14) NOT NULL,
  `alamat_chef` varchar(50) NOT NULL,
  `jenis_kelamin_chef` varchar(11) NOT NULL,
  `foto_chef` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `chef`
--

INSERT INTO `chef` (`id_chef`, `nama_chef`, `no_telp_chef`, `alamat_chef`, `jenis_kelamin_chef`, `foto_chef`) VALUES
(1, 'Renata', '09887706723', 'Bali', 'P', 'renata.jpg'),
(2, 'Juna', '089644231673', 'Bekasi', 'L', 'juna.jpg'),
(3, 'Arnold', '081277089331', 'Bogor', 'L', 'arnold.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_menu`
--

CREATE TABLE `jenis_menu` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_menu`
--

INSERT INTO `jenis_menu` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Makanan'),
(2, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `foto_menu` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `id_chef` int(11) NOT NULL,
  `id_jenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `foto_menu`, `harga`, `deskripsi`, `id_chef`, `id_jenis`) VALUES
(1, 'Seblak Tulang', 'seblaktulang.jpg', 12000, 'Tulang lunak enak', 1, 1),
(2, 'Sate Taichan', 'satetaichan.jpg', 20000, 'Sate taichan terenak sebumi raya', 2, 1),
(3, 'Terang Bulan', 'terangbulan.jpg', 25000, 'Rasa boleh campur aduk', 3, 1),
(8, 'Jus Apel', 'jusapel.jpg', 15000, 'Jus apel menyegarkan di siang hari', 1, 2),
(9, 'Soda Bersedih', 'sodagembira.jpg', 19999, 'Soda yang sering dibilang bergembira oleh orang lain apakah dia tak boleh bersedih?', 3, 2),
(10, 'Caramell Machiato', 'caramelmachiato.jpg', 27000, 'Salah satu menu \'sosialita\' diantara menu yang lainnya', 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_bahan`
--

CREATE TABLE `menu_bahan` (
  `id_menu_bahan` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_bahan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_bahan`
--

INSERT INTO `menu_bahan` (`id_menu_bahan`, `id_menu`, `id_bahan`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 5),
(5, 1, 9),
(6, 1, 10),
(7, 1, 11),
(8, 2, 6),
(9, 2, 7),
(10, 2, 8),
(11, 3, 4),
(12, 3, 5),
(13, 3, 12),
(14, 3, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `no_telp_pelanggan` varchar(14) NOT NULL,
  `alamat_pelanggan` varchar(50) NOT NULL,
  `jenis_kelamin_pelanggan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `no_telp_pelanggan`, `alamat_pelanggan`, `jenis_kelamin_pelanggan`) VALUES
(1, 'Azzahra', '089655123198', 'Sukabumi', 'P'),
(2, 'Indah', '089277862556', 'Sumedang', 'P'),
(3, 'Cantika', '089677234667', 'Purwakarta', 'L'),
(4, 'Bayu', '089562879012', 'Cimahi', 'L'),
(5, 'Rafi', '087754267825', 'Sukabumi', 'L'),
(6, 'Fachri', '085132457645', 'Bandung', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_bahan`
--

CREATE TABLE `pembelian_bahan` (
  `id_pembelian_bahan` int(11) NOT NULL,
  `id_bahan` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `tanggal_beli` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian_bahan`
--

INSERT INTO `pembelian_bahan` (`id_pembelian_bahan`, `id_bahan`, `jumlah_beli`, `tanggal_beli`) VALUES
(1, 1, 100, '2023-03-12'),
(2, 2, 39, '2023-03-12'),
(3, 3, 30, '2023-03-12'),
(4, 4, 20, '2023-03-12'),
(5, 5, 100, '2023-03-12'),
(6, 6, 20, '2023-03-13'),
(7, 7, 30, '2023-03-13'),
(8, 8, 15, '2023-03-13'),
(9, 9, 20, '2023-03-11'),
(10, 10, 10, '2023-03-11'),
(11, 11, 10, '2023-03-11'),
(12, 12, 18, '2023-03-11'),
(13, 13, 40, '2023-03-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_status_pesanan` int(11) NOT NULL,
  `id_pramusaji` int(11) NOT NULL,
  `no_pesanan` int(11) NOT NULL,
  `waktu_pesanan` time DEFAULT current_timestamp(),
  `jumlah_pesanan` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_pesanan` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_pelanggan`, `id_status_pesanan`, `id_pramusaji`, `no_pesanan`, `waktu_pesanan`, `jumlah_pesanan`, `total_harga`, `tanggal_pesanan`) VALUES
(1, 1, 3, 1, 1, '20:10:36', 2, 14000, '2023-03-25'),
(2, 1, 2, 1, 2, '18:11:33', 1, 25000, '2023-03-23'),
(3, 2, 1, 2, 3, '14:12:18', 4, 88000, '2023-03-25'),
(4, 3, 1, 3, 4, '13:13:18', 2, 50000, '2023-03-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_menu`
--

CREATE TABLE `pesanan_menu` (
  `id_pesanan_menu` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan_menu`
--

INSERT INTO `pesanan_menu` (`id_pesanan_menu`, `id_pesanan`, `id_menu`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pramusaji`
--

CREATE TABLE `pramusaji` (
  `id_pramusaji` int(11) NOT NULL,
  `nama_pramusaji` varchar(50) NOT NULL,
  `no_telp_pramusaji` varchar(14) NOT NULL,
  `alamat_pramusaji` varchar(50) NOT NULL,
  `jenis_kelamin_pramusaji` varchar(11) NOT NULL,
  `jumlah_pesanan_pramusaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pramusaji`
--

INSERT INTO `pramusaji` (`id_pramusaji`, `nama_pramusaji`, `no_telp_pramusaji`, `alamat_pramusaji`, `jenis_kelamin_pramusaji`, `jumlah_pesanan_pramusaji`) VALUES
(1, 'Cipung Pangestu', '08579866467', 'Jakarta', 'L', 2),
(2, 'Abdul Cecep', '089677432555', 'Jogjakarta', 'P', 5),
(3, 'Iis Putri', ' 098788726555', 'Surabaya', 'P', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pesanan`
--

CREATE TABLE `status_pesanan` (
  `id_status_pesanan` int(11) NOT NULL,
  `keterangan_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_pesanan`
--

INSERT INTO `status_pesanan` (`id_status_pesanan`, `keterangan_status`) VALUES
(1, 'Sedang dimasak'),
(2, 'Selesai dimasak'),
(3, 'Dalam antrian masak');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id_bahan`);

--
-- Indeks untuk tabel `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`id_chef`);

--
-- Indeks untuk tabel `jenis_menu`
--
ALTER TABLE `jenis_menu`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_chef` (`id_chef`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indeks untuk tabel `menu_bahan`
--
ALTER TABLE `menu_bahan`
  ADD PRIMARY KEY (`id_menu_bahan`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_bahan` (`id_bahan`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembelian_bahan`
--
ALTER TABLE `pembelian_bahan`
  ADD PRIMARY KEY (`id_pembelian_bahan`),
  ADD KEY `id_bahan` (`id_bahan`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_status_pesanan` (`id_status_pesanan`),
  ADD KEY `id_pramusaji` (`id_pramusaji`);

--
-- Indeks untuk tabel `pesanan_menu`
--
ALTER TABLE `pesanan_menu`
  ADD PRIMARY KEY (`id_pesanan_menu`),
  ADD KEY `id_pesanan` (`id_pesanan`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `pramusaji`
--
ALTER TABLE `pramusaji`
  ADD PRIMARY KEY (`id_pramusaji`);

--
-- Indeks untuk tabel `status_pesanan`
--
ALTER TABLE `status_pesanan`
  ADD PRIMARY KEY (`id_status_pesanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bahan`
--
ALTER TABLE `bahan`
  MODIFY `id_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `chef`
--
ALTER TABLE `chef`
  MODIFY `id_chef` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jenis_menu`
--
ALTER TABLE `jenis_menu`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `menu_bahan`
--
ALTER TABLE `menu_bahan`
  MODIFY `id_menu_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pembelian_bahan`
--
ALTER TABLE `pembelian_bahan`
  MODIFY `id_pembelian_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pesanan_menu`
--
ALTER TABLE `pesanan_menu`
  MODIFY `id_pesanan_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pramusaji`
--
ALTER TABLE `pramusaji`
  MODIFY `id_pramusaji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `status_pesanan`
--
ALTER TABLE `status_pesanan`
  MODIFY `id_status_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_menu` (`id_jenis`),
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_chef`) REFERENCES `chef` (`id_chef`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_bahan`
--
ALTER TABLE `menu_bahan`
  ADD CONSTRAINT `menu_bahan_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_bahan_ibfk_2` FOREIGN KEY (`id_bahan`) REFERENCES `bahan` (`id_bahan`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembelian_bahan`
--
ALTER TABLE `pembelian_bahan`
  ADD CONSTRAINT `pembelian_bahan_ibfk_1` FOREIGN KEY (`id_bahan`) REFERENCES `bahan` (`id_bahan`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`id_status_pesanan`) REFERENCES `status_pesanan` (`id_status_pesanan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_3` FOREIGN KEY (`id_pramusaji`) REFERENCES `pramusaji` (`id_pramusaji`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanan_menu`
--
ALTER TABLE `pesanan_menu`
  ADD CONSTRAINT `pesanan_menu_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
