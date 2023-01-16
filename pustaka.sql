-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 05:58 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(2, 'Perahu Kertas', 10, 'Dee Lestari', 'Bentang Pustaka', 2012, '9786025118500', 23, 3, 1, 'img1653896448.jpg'),
(3, 'Rentang Kisah', 10, 'Gita Savitri Devi', 'Gramedia Pustaka Utama', 2017, '8346753547', 5, 1, 1, 'img1653897409.jpg'),
(4, 'Arah Langkah', 11, 'Fiersa Besari', 'Gramedia', 2016, '874387583987', 5, 0, 0, 'img1653898719.jpg'),
(5, 'Kesatria, Putri, Dan Bintang Jatuh', 10, 'Dee Lestari', 'bentang pustaka', 2014, '55633342367', 21, 0, 0, 'img1665397460.jpg'),
(6, 'Rapijali', 10, 'Dee Lestari', 'bentang pustaka', 2007, '123344', 30, 0, 0, 'img1665397474.jpg'),
(7, 'Malik & Elsa', 10, 'Boy Candra', 'Media Kita', 2010, '1222355562', 24, 0, 0, 'img1666000098.jpg'),
(8, 'Getir', 10, 'Boy Candra', 'Media Kita', 2008, '64223556890', 20, 0, 0, 'img1666000157.jpg'),
(9, 'Hujan Bulan Juni', 10, 'Sapardi Djoko Damono', 'bentang pustaka', 2014, '8765435666', 11, 0, 0, 'img1666000939.jpg'),
(10, 'Sebuah Usaha Melupakan', 10, 'Boy Candra', 'Media Kita', 2022, '87643578756', 15, 0, 0, 'img1666001693.jpg'),
(11, 'Buku Minta Dibanting', 11, 'Rintik Sedu', 'Gramedia Pustaka Utama', 2020, '644325666', 5, 0, 0, 'img1666001752.jpg'),
(12, 'BUku Minta Disayang', 11, 'Rintik Sedu', 'Gramedia Pustaka Utama', 2021, '99865778785', 2, 0, 0, 'img1666001831.jpg'),
(13, 'Ingkar', 10, 'Boy Candra', 'Media Kita', 2013, '099747884', 30, 0, 0, 'img1666001876.jpg'),
(14, 'Fokus US SMP/MTS 2022', 13, 'Darmono', 'Erlangga', 2021, '0976688855', 15, 0, 0, 'img1666006316.jpg'),
(15, 'Komik Marvel', 9, 'Sarah Julia', 'Berdetak rasa', 2016, '7554672211', 20, 0, 0, 'img1666006417.jpeg'),
(16, 'Masakan Nusantara', 12, 'Ratih Purnama', 'Selaras Cetak', 2017, '09990076467', 14, 0, 0, 'img1666006540.jpg'),
(17, '99 Resep Masakan Rumahan', 12, 'Nawang Wulan', 'Jendela Buku', 2018, '254467140001', 10, 0, 0, 'img1666006633.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'AgamaIslam'),
(8, 'Populer'),
(9, 'Komik'),
(10, 'Novel'),
(11, 'Sastra'),
(12, 'Makanan & Minuman'),
(13, 'Non Fiksi');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') NOT NULL DEFAULT 'Pinjam',
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `nama_role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `nama_role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) NOT NULL,
  `email_user` varchar(128) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'nadiap', 'pratiwinadiaanggun@gmail.com', 'iconadmin.png', '12345', 1, 1, 10),
(2, 'Ana Amanda', 'nanggunpratiwi@gmail.com', 'pro1653897238.png', 'abc', 1, 1, 165),
(3, 'Siti Farasya', 'siti.farasya07@gmail.com', 'default.jpg', '$2y$10$/9GqBA.ryErt8fE8yyVFpuu9gZqvKI5t1quJXX2vcvn.bwcReezEy', 2, 0, 1666006713),
(4, 'Santi Tri Haryani', 'santriharyan@gmail.com', 'default.jpg', '$2y$10$hY4E4JixR.UJBKc0ykw9DOBtfsDBVuftt2BvC4aQcJ3pxiw5Rpw16', 2, 0, 1666006772),
(5, 'Cinta Purnama Kasih', 'cinta.kasih11@gmail.com', 'default.jpg', '$2y$10$1fQE//NASNWU3VGWQI/2hOOMcawOzm2Aw.Wo4FGi5LF5E9HPz9lSu', 2, 0, 1666006816),
(6, 'Ruwiyanti Safitri', 'ruwisafitri99@gmail.com', 'default.jpg', '$2y$10$cjsdYj6yQUqovvBbgb74vOwn7GJ1tnYu7uaoWTPYXFZEu2ZHJxsFO', 2, 0, 1666006855),
(7, 'Raden Arya', 'raden_arya5@gmail.com', 'default.jpg', '$2y$10$0JuFqBrbgP82xQfVZIfgWuEjO2xDrXUrwI/6goWN/2VfRDQCJQiRy', 2, 0, 1666006882),
(8, 'Fandika Raditya', 'fandika.radit12@gmail.com', 'default.jpg', '$2y$10$OeuhBnWZ2g6n.rVnRdM4ieqqQ/FpoI2xiInteWlKuw5GPiHtcrZXC', 2, 0, 1666006930),
(9, 'Nadia Pratiwiyyy', 'nadia_anggun18@gmail.com', 'default.jpg', '$2y$10$hDJaM6loQ8HbJ/DTmXbim.YTrUAmeopjIZsw5JvoMoPBtQwElePsG', 2, 1, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
