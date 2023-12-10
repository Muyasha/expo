-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 06:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naturewander`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'fahriza', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'riyaldo', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'yasir', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id_blog`, `judul`, `isi`, `gambar`) VALUES
(2, 'Mendaki di Gunung Semeru', 'Saya kembali lagi ke Kota Malang. Tujuan saya kali ini mendatangi Kota Malang adalah untuk mendaki Gunung Semeru. Saya dan teman-teman di komunitas Backpacker Indonesia akan melakukan pendakian ke Gunung Semeru yang merupakan gunung tertinggi di Pulau Jawa. Tinggi Gunung Semeru yang mencapai 3676 mdpl, sudah cukup membuat jantung saya berdegub kencang saat membayangkan tingginya.', '1701529669.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `cerita_pengunjung`
--

CREATE TABLE `cerita_pengunjung` (
  `id_cerita` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `cerita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cerita_pengunjung`
--

INSERT INTO `cerita_pengunjung` (`id_cerita`, `judul`, `lokasi`, `cerita`) VALUES
(5, 'Mencari tongkat kera sakti', 'warung pak budi', 'nggak ketemu e'),
(6, '', '', ''),
(7, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_wisata`
--

CREATE TABLE `kategori_wisata` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_wisata`
--

INSERT INTO `kategori_wisata` (`id_kategori`, `nama`, `deskripsi`) VALUES
(1, 'Gunung', 'Gunung merupakan salah satu destinasi wisata yang populer di Indonesia. Gunung menawarkan keindahan alam yang memukau, mulai dari pemandangan alam yang asri, udara yang sejuk, hingga tantangan untuk mendaki. Di Indonesia terdapat banyak gunung yang populer untuk wisata, seperti Gunung Semeru, Gunung Rinjani, Gunung Bromo, Gunung Merapi, dan Gunung Kerinci'),
(2, 'Pantai', 'Pantai adalah area pesisir laut yang biasanya memiliki pasir, batuan, atau vegetasi. Pantai adalah tempat yang populer untuk berenang, berjemur, bermain olahraga air, dan piknik. Pantai juga merupakan tujuan wisata yang populer, dengan banyak orang yang mengunjunginya untuk menikmati pemandangan, suasana, dan aktivitasnya. '),
(3, 'Cagar Alam', 'Cagar alam adalah kawasan hutan yang dilindungi karena keunikan tumbuhan, satwa dan ekosistem yang dimiliki. Cagar alam memiliki fungsi utama sebagai tempat pelestarian keanekaragaman hayati, baik flora maupun fauna. Namun, cagar alam juga dapat menjadi objek wisata yang menarik bagi wisatawan.\r\n\r\nWisata cagar alam dapat menjadi sarana edukasi bagi wisatawan untuk mengenal lebih dekat tentang kekayaan alam Indonesia. Wisatawan dapat melihat berbagai jenis flora dan fauna yang hidup di cagar alam. Selain itu, wisatawan juga dapat mempelajari tentang ekosistem yang ada di cagar alam.');

-- --------------------------------------------------------

--
-- Table structure for table `most_popular`
--

CREATE TABLE `most_popular` (
  `id_place` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `most_popular`
--

INSERT INTO `most_popular` (`id_place`, `gambar`, `tempat`, `deskripsi`) VALUES
(1, 'image-5.png', 'Pantai Ancol ', 'ini deskripsi pantai ancol'),
(2, 'image-11.jpg', 'Pantai Melasti Ungasan', 'Pantai Melasti Ungasan adalah salah satu pantai terindah di Bali. Pantai ini terletak di Desa Ungasan, Kecamatan Kuta Selatan, Kabupaten Badung, Bali. Pantai Melasti dapat dicapai dengan berkendara sekitar 45 menit dari Bandara Internasional Ngurah Rai. \r\nPantai Melasti memiliki garis pantai yang panjang dan landai, dengan pasir putih yang lembut dan air laut yang jernih berwarna biru kehijauan. Pantai ini dikelilingi oleh tebing-tebing tinggi yang menjulang, sehingga menambah keindahannya.'),
(3, 'image-5.png', 'Gunung Semeru', 'Gunung Semeru, yang juga dikenal sebagai Mahameru, adalah gunung tertinggi di Pulau Jawa, Indonesia, dengan ketinggian mencapai 3.676 meter di atas permukaan laut. Gunung ini terletak di Taman Nasional Bromo Tengger Semeru, yang merupakan salah satu destinasi wisata alam paling populer di Indonesia.'),
(4, 'image-13.jpg', 'Gunung Bromo', 'Gunung Bromo adalah salah satu destinasi wisata yang paling terkenal di Indonesia, terletak di Taman Nasional Bromo Tengger Semeru, Jawa Timur. Tempat ini menawarkan pemandangan alam yang spektakuler, termasuk gunung berapi aktif, lautan pasir, dan panorama matahari terbit yang memukau.'),
(5, 'image-14.jpg', 'Cagar Alam Kawah Ijen', 'Kawah Ijen merupakan bagian dari gunung berapi kompleks Ijen, yang terletak di ujung timur Gunung Ijen. Kawah ini terbentuk akibat runtuhnya dinding kawah purba gunung ini. Kawah Ijen memiliki panjang sekitar 1 kilometer dan lebar sekitar 0,8 kilometer, dengan kedalaman mencapai sekitar 300 meter. Namun, daya tarik utama dari Kawah Ijen bukan hanya ukurannya, melainkan fenomena alam yang langka yang terjadi di dalamnya.');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `harga_tiket` float NOT NULL,
  `foto_gambar` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_lokasi`, `deskripsi`, `lokasi`, `harga_tiket`, `foto_gambar`, `id_kategori`) VALUES
(1, 'Gunung Merapi', 'Gunung Merapi, yang terletak di pulau Jawa, Indonesia, adalah salah satu gunung berapi paling aktif dan ikonik di dunia. Dengan ketinggian mencapai 2.963 meter di atas permukaan laut, Merapi memiliki bentuk kerucut yang indah namun berbahaya. Daerah sekitarnya dikelilingi oleh lereng yang subur dan merupakan tempat tinggal bagi banyak penduduk, meskipun ancaman letusan selalu ada. Merapi sering menunjukkan aktivitas vulkaniknya dengan letusan kecil hingga besar, menyebabkan aliran lava, awan panas, dan material piroklastik. Keberadaan Gunung Merapi telah membentuk lanskap budaya dan spiritual di sekitarnya, dengan masyarakat lokal yang memandangnya sebagai entitas suci yang memiliki kekuatan mistis. Meskipun risiko letusan tetap ada, pemantauan yang ketat dan upaya mitigasi bencana telah diimplementasikan untuk melindungi penduduk dan memahami dinamika gunung ini.', 'https://www.google.com/maps/place/Gunung+Merapi/@-7.5407169,110.4250814,14z/data=!3m1!4b1!4m6!3m5!1s0x2e7a641ec0ff2fa5:0xe92612624cad8800!8m2!3d-7.5407175!4d110.4457241!16zL20vMDQ4ajVo?entry=ttu', 10000, 'image-2.png', 1),
(2, 'Pantai Parangtritis', 'Pantai Parangtritis, terletak di selatan Yogyakarta, Indonesia, memikat pengunjung dengan keindahan alamnya yang memukau dan atmosfer yang magis. Terkenal dengan garis pantainya yang panjang, pasir putih yang lembut, dan ombak yang menggulung, Parangtritis menjadi destinasi wisata yang populer. Pohon kelapa yang menjulang dan langit biru yang cerah menambah pesona pantai ini. Pantai ini juga melibatkan elemen budaya lokal, dengan kuda kereta andong yang menjadi ikonik dan keramahtamahan pedagang lokal yang menawarkan berbagai suvenir dan makanan khas. Wisatawan dapat menikmati sunset yang menakjubkan di Pantai Parangtritis, menciptakan pengalaman yang tak terlupakan di tepi Samudera Hindia yang memukau.', 'https://www.google.com/maps/place/Pantai+Parangtritis/@-8.0253988,110.3081287,14z/data=!3m1!4b1!4m6!3m5!1s0x2e7b00975eac533d:0x351bfe1453e22e36!8m2!3d-8.024608!4d110.3298045!16s%2Fg%2F11b_012ymp?entry=ttu', 0, '', 2),
(3, 'asdasdasd', 'asdasdasdasfasdasdasd', 'https://www.google.com/maps/place/Pantai+Parangtritis/@-8.0253988,110.3081287,14z/data=!3m1!4b1!4m6!3m5!1s0x2e7b00975eac533d:0x351bfe1453e22e36!8m2!3d-8.024608!4d110.3298045!16s%2Fg%2F11b_012ymp?entry=ttu', 0, '', 3),
(4, 'rteegefreferg', 'tyuththtythy', 'https://www.google.com/maps/place/Pantai+Parangtritis/@-8.0253988,110.3081287,14z/data=!3m1!4b1!4m6!3m5!1s0x2e7b00975eac533d:0x351bfe1453e22e36!8m2!3d-8.024608!4d110.3298045!16s%2Fg%2F11b_012ymp?entry=ttu', 0, '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `cerita_pengunjung`
--
ALTER TABLE `cerita_pengunjung`
  ADD PRIMARY KEY (`id_cerita`);

--
-- Indexes for table `kategori_wisata`
--
ALTER TABLE `kategori_wisata`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `most_popular`
--
ALTER TABLE `most_popular`
  ADD PRIMARY KEY (`id_place`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `FOREIGN KEY` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cerita_pengunjung`
--
ALTER TABLE `cerita_pengunjung`
  MODIFY `id_cerita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori_wisata`
--
ALTER TABLE `kategori_wisata`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `most_popular`
--
ALTER TABLE `most_popular`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wisata`
--
ALTER TABLE `wisata`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_wisata` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
