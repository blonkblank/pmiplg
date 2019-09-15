-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Sep 2019 pada 07.30
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `palang_merah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_besar_donasi_program`
--

CREATE TABLE `tb_besar_donasi_program` (
  `id_besar_program` varchar(20) NOT NULL,
  `id_donasi_program` varchar(20) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hp` double NOT NULL,
  `nominal` double NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_besar_donasi_program`
--

INSERT INTO `tb_besar_donasi_program` (`id_besar_program`, `id_donasi_program`, `nama_depan`, `nama_belakang`, `email`, `hp`, `nominal`, `foto`) VALUES
('5d79d458631b6', '5d7349725e4b2', 'asdasdsad', 'adsd1dfsd', 'asdasdad@gmail.com', 89765432124, 50000, 'item-190912_21b49d9441.JPG'),
('5d79d4983a3bf', '5d7349725e4b2', 'asdasdsad', 'adsd1dfsd', 'rhesnoakbar@gmail.com', 89765432124, 20000, 'item-190912_2927189f57.JPG'),
('5d79d591685ca', '5d7349725e4b2', 'test', 'test nian', 'asdasdad@gmail.com', 89765432124, 20000, 'item-190912_17e0ce48c8.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_deskripsi_transfer`
--

CREATE TABLE `tb_deskripsi_transfer` (
  `id` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `deskripsi` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_deskripsi_transfer`
--

INSERT INTO `tb_deskripsi_transfer` (`id`, `tanggal`, `jam`, `deskripsi`, `aktif`) VALUES
('5d7337370eccf', '0000-00-00', '14:00:00', '<fieldset id=\"give_offline_payment_info\">\r\n<p>Jika anda mengirimkan lebih dari 1 donasi, jangan melakukan transfer dengan menggabungkan total nilai donasi tersebut. Lakukan transfer terpisah untuk tiap-tiap donasi.</p>\r\n<p>Apabila terjadi kesalahan penulisan jumlah donasi dan mengakibatkan kesalahan jumlah uang yang ditransfer ke Rekening PMI, mohon kirimkan bukti transfer donasi tersebut disertai file lembar informasi donasinya, ke email: <a href=\"mailto:donasi@pmi.or.id\">donasi@pmi.or.id</a> dan berikan judul: KESALAHAN JUMLAH TRANSFER DONASI</p>\r\n</fieldset><fieldset id=\"give_terms_agreement\">\r\n<div id=\"give_terms\" class=\"give_terms-13395\">\r\n<p>Palang Merah Indonesia akan berupaya sekuat tenaga untuk mengarahkan donasi yang masuk sesuai dengan maksud / peruntukannya.<br>Namun jika ada prioritas dan kebutuhan lain, PMI dapat mengalihkan dana donasi dari satu peruntukan ke peruntukan yang lain tanpa pemberitahuan kepada donatur.</p>\r\n</div>\r\n</fieldset>', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_donasi_program`
--

CREATE TABLE `tb_donasi_program` (
  `id_donasi_program` varchar(20) NOT NULL,
  `judul_donasi_program` text NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `detail_donasi_program` text NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_donasi_program`
--

INSERT INTO `tb_donasi_program` (`id_donasi_program`, `judul_donasi_program`, `tanggal`, `lokasi`, `gambar`, `detail_donasi_program`, `hits`) VALUES
('5d7345d58ea66', 'Donasi Program Air dan Sanitasi', '2016-09-25', '<p>Seluruh Jawa dan Nusa Tenggara</p>', 'item-190907_9fa315bff7.jpg', '<p>Setiap harinya, manusia rata-rata membutuhkan 60 liter air bersih untuk memenuhi kebutuhan seperti minum, mandi, memasak dan lain sebagainya. Menurut data WHO tahun 2015, lebih dari 340.000 anak balita meninggal setiap tahun akibat penyakit diare karena sanitasi buruk, kebersihan buruk, atau air minum yang tidak aman atau hampir 1000 anak per hari. Saat ini, 2,1 miliar orang kekurangan akses terhadap layanan air minum yang dikelola dengan aman dan 4,5 miliar orang kekurangan layanan sanitasi yang dikelola dengan aman.</p>\r\n<p>Berdasarkan data UN water, pada 2012, hanya Pulau Jawa dan daerah yang kerap dilanda kemarau di bagian timur yang masuk kategori krisis air tingkat medium. Artinya, air bersih ada tetapi terbatas. “Namun pada 2025, seluruh Indonesia masuk kategori tersebut. Bahkan, Pulau Jawa masuk kategori krisis air tingkat tinggi,” ujar penasihat advokasi Water.org Indonesia, Ratih Hardjono, menutip data UN Water.</p>\r\n<p>Tahun 2018, setidaknya, terdapat sekitar 105 kabupaten/kota, 715 kecamatan, dan 2.726 kelurahan/desa yang mengalami kekeringan di Jawa dan Nusa Tenggara. Sekitar 3,9 juta jiwa masyarakat Jawa dan Nusa Tenggara terkena dampak dan segera memerlukan bantuan air bersih.</p>', 60),
('5d7349725e4b2', 'Program Kacamata Gratis', '2019-09-29', '<p>Palembang</p>', 'item-190907_ce5d75028d.JPG', '<p xss=removed>Program Kacamat Gratis ini merupakan program rancangan PMI dengan mitra yang peduli terhadap masalah kesehatan mata, dikarenakan masih banyak masyarakat Indonesia di beberapa daerah yang mengalami gangguan penglihatan seperti mata minus.</p>\r\n<p xss=removed>Salah satu program yang telah terlaksana adalah Healthy Visions GenerAKSI SEHATIndonesia Program 2015 bekerjasama dengan Astra Indonesia meliputi :<br xss=removed>Provinsi Nusa Tenggara Timur : Kabupaten Belu sebanyak 1500 Kacamata untuk siswa SD.</p>\r\n<p xss=removed>Kalimantan Utara kabupaten Nunukan sebanyak 1,503 kacamata untuk siswa SD.</p>\r\n<p xss=removed>5,000 penerima manfaat dari 45 Sekolah dasar dalam 1 tahun program.</p>\r\n<p xss=removed>Kegiatan utama alah sosialisasi dan edukasi kesehatan penglihatan, pemeriksaan mata oleh petugas spesialis optic dan pembagian kacamata.</p>', 366);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_info_transfer`
--

CREATE TABLE `tb_info_transfer` (
  `id_transfer` varchar(20) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_pemilik` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_info_transfer`
--

INSERT INTO `tb_info_transfer` (`id_transfer`, `nama_bank`, `no_rek`, `nama_pemilik`, `gambar`, `aktif`) VALUES
('5d731f5cb4cef', 'Bank Mandiri', '070-00-0687873-5', 'Palang Merah Indonesia Cabang: Jakarta Krakatau Steel', 'item-190907_5b1bf4359b.JPG', 'Y'),
('5d73260f029c8', 'Bank  BCA', '206.300334.4', 'Kantor Pusat PMI Cabang: KCU Thamrin', 'item-190907_723c26b346.JPG', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kabar_donasi`
--

CREATE TABLE `tb_kabar_donasi` (
  `id_kbr_donasi` varchar(20) NOT NULL,
  `judul_donasi` text NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `lokasi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `detail_donasi` text NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kabar_donasi`
--

INSERT INTO `tb_kabar_donasi` (`id_kbr_donasi`, `judul_donasi`, `tanggal`, `jam`, `lokasi`, `gambar`, `detail_donasi`, `hits`) VALUES
('5d70957ca8fa9', 'PAN PACIFIC GROUP UNTUK KORBAN BENCANA DI SULAWESI TENGAH', '2019-09-28', '13:00:00', '<p><span xss=removed>Markas Besar PMI di Jl. Gatot Subroto, Jakarta. </span></p>', 'item-190905_445b6949ed.JPG', '<div class=\"itemIntroText\" xss=removed>\r\n<p xss=removed>Meskipun 2 (dua) bulan telah berlalu dari bencana gempa dan tsunami yang menghantam Palu & Donggala, Sulawesi Tengah, namun tidak menyurutkan semangat perusahaan garmen asal Korea Selatan, Pan Pacific Group, untuk memberikan sumbangan dana bagi korban gempa dan tsunami dengan nilai sebesar Rp 178.000.000, yang merupakan gabungan donasi dari seluruh karyawan dan manajemen Pan Pacific Co. Ltd, PT Pan Pacific Jakarta, dan PT Pan Pacific Nesia. Selain itu, secara terpisah PT Pan Pacific Jakarta Cabang Semarang, PT Nesia Pan Pacific Clothing, dan PT Nesia Pan Pacific Knit juga melakukan penggalangan dana dengan nilai total sebesar Rp 100.000.000 yang telah disetorkan melalui PMI Kota Semarang, PMI Kabupaten Wonogiri, dan PMI Kota Salatiga.</p>\r\n<p xss=removed>Donasi diserahkan oleh Direktur Marketing PT Pan Pacific Jakarta, Mr. Kyubaek, Lee dan diterima oleh Bapak Sumarsono selaku Kepala Bidang Penanggulangan Bencana PMI Pusat pada hari Selasa, 27 November 2018 di Markas Besar PMI di Jl. Gatot Subroto, Jakarta. Adapun proses penggalangan dana di Pan Pacific Group sendiri telah berlangsung sejak tanggal 15 Oktober sampai dengan 9 November yang lalu. </p>\r\n</div>\r\n<div class=\"itemFullText\" xss=removed>\r\n<p xss=removed>Bapak Agung Wibowo, Manager Personalia PT Pan Pacific Jakarta selaku juru bicara menyampaikan duka yang mendalam kepada para korban dan juga berterimakasih kepada PMI selaku fasilitator sehingga kita pun bisa turut memberikan bantuan yang diharapkan dapat memenuhi kebutuhan operasional pasca bencana dan membangun kembali fasilitas / infrastruktur, hunian sementara, medis, pembersihan puing-puing bangunan dan kelangsungan hidup para pengungsi di Palu & Donggala di masa yang akan datang.</p>\r\n<p xss=removed>Kepala Markas PMI, Bapak Sunarbowo Sandi yang juga turut hadir dalam <em>ceremony</em> tersebut menambahkan, “PMI mengucapkan terima kasih atas kepercayaan dari Pan Pacific Group, dengan bantuan yang diberikan kepada PMI. Donasi ini nantinya akan dipergunakan untuk membantu masyarakat terdampak Gempa dan Tsunami di Sulawesi Tengah, untuk melakukan upaya rehabilitasi dan pemulihan paska gempa yang melanda, dan membantu masyarakat yang membutuhkan” jelas Sunarbowo.</p>\r\n</div>', 1),
('5d70a968d679b', 'PAN PACIFIC GROUP UNTUK KORBAN BENCANA DI SULAWESI TENGAH', '2019-09-12', '13:21:15', '<p>xZX</p>', 'item-190905_628f7dc508.JPG', '<p>adadad</p>', 3),
('5d70a988ca1c4', 'PAN PACIFIC GROUP UNTUK KORBAN BENCANA DI SULAWESI TENGAH', '2019-09-28', '13:21:45', '<p>asdasd</p>', 'item-190905_7fd60e8359.JPG', '<p><span xss=removed>Banjarnegara -  Selama Agustus kemarin Palang Merah Indonesia (PMI)  Banjarnegara Mendistribusikan sebanyak 265 ribu liter air bersih ke beberapa desa dan kecamatan yang mengalami kekeringan dan krisis air bersih.    Ketua PMI...</span></p>', 14),
('5d720a53bf307', 'asdasd', '2019-08-25', '14:27:15', '<p>asdasdada</p>', '', '<p>asdasdad</p>', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karier`
--

CREATE TABLE `tb_karier` (
  `id_karier` varchar(20) NOT NULL,
  `bagian` text NOT NULL,
  `Fungsi` text NOT NULL,
  `kualifikasi_umum` text NOT NULL,
  `kualifikasi_khusus` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `id_kegiatan` varchar(20) NOT NULL,
  `judul_kegiatan` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `lokasi` text NOT NULL,
  `detail_kegiatan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `penanggung_jawab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kegiatan`
--

INSERT INTO `tb_kegiatan` (`id_kegiatan`, `judul_kegiatan`, `tanggal`, `jam`, `lokasi`, `detail_kegiatan`, `gambar`, `penanggung_jawab`) VALUES
('5d6c860202b65', 'lomba brung', '2019-09-08', '20:00:00', '<p>Jl. Talang Jawo RT / RW: 001 / 002, No. 008, Tanjung Enim</p>', '<p><span xss=removed>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui lectus, pharetra nec elementum eget, vulputate ut nisi. Aliquam accumsan, nulla sed feugiat vehicula, lacus justo semper libero, quis porttitor turpis odio sit amet ligula. Duis dapibus fermentum orci, nec malesuada libero vehicula ut. Integer sodales, urna eget interdum eleifend, nulla nibh laoreet nisl, quis dignissim mauris dolor eget mi. Donec at mauris enim. Duis nisi tellus, adipiscing a convallis quis, tristique vitae risus. Nullam molestie gravida lobortis. Proin ut nibh quis felis auctor ornare. Cras ultricies, nibh at mollis faucibus, justo eros porttitor mi, quis auctor lectus arcu sit amet nunc. Vivamus gravida vehicula arcu, vitae vulputate augue lacinia faucibus.</span></p>', 'item-190902_ae2811a45b.jpg', 'siapo yang galak nahh'),
('5d6ca07f3da9b', 'dfgdfgdf', '2019-09-06', '11:52:45', '<p>dfgdf</p>', 'Quisque ligulas ipsum, euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. Vestibulum sodales ante a purus volutpat euismod. Proin sodales quam nec ante sollicitudin lacinia. Ut egestas bibendum tempor. Morbi non nibh sit amet ligula blandit ullamcorper in nec risus. Pellentesque fringilla diam faucibus tortor bibendum vulputate. Etiam turpis urna, rhoncus et mattis ut, dapibus eu nunc. Nunc sed aliquet nisi. Nullam ut magna non lacus adipiscing volutpat. Aenean odio mauris, consectetur quis consequat quis, blandit a nunc. Sed orci erat, placerat ac interdum ut, suscipit eu augue. Nunc vitae mi tortor. Ut vel justo quis lectus elementum', 'item-190902_6766aa2750.jpg', 'siapo yang galak nahh'),
('5d6cb9b0cb3f5', 'PMI KOTA SUKABUMI JADI PROYEK PERCONTOHAN PROGRAM KESIAPSIAGAAN GEMPA BUMI', '2019-09-15', '13:30:15', '<p><span xss=removed>PMI Kota Sukabumi.</span></p>', '<div xss=removed>Palang Merah Indonesia (PMI) Kota Sukabumi menjadi menjadi proyek percontohan untuk pelaksanaan program kesiapsiagaan dan ketangguhan masyarakat dalam merespon potensi bencana gempa bumi.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>Program yang dinamai Indonesia Earthquake Readiness ini akan memulai program selama satu tahun di kota sukabumi jawa barat ini. Selain itu lokasi lainnya yang menjadi percontohan program ini adalah kabupaten Banyuwangi Jawa Timur.</div>\r\n<div class=\"itemFullText\" xss=removed>\"Program ini adalah sebuah amanat dan kepercayaan dari PMI Pusat dan lembaga donor untuk kita jalankan sebaik baiknya di PMI kota sukabumi untuk kesuksesan dan keberlanjutan kedepannya,\" ungkap Ketua PMI Kota Sukabumi Suranto Sumowiryo dalam sambutanya disela acara sosialisasi internal program kesiapsiagaan gempa bumi di gedung Markas PMI Kota Sukabumi, Kamis (29/8).</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>Menurutnya, harapannya melalui program ini masyarakat di kota sukabumi khususnya sadar betul akan pengetahuan dan pemahaman akan kesiapsiagaan bencana gempa bumi di wilayahnya.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>\"Karena pada dasarnya Program ini bertujuan untuk meningkatkan kesiapsiagaan bencana gempa bumi di komunitas perkotaan dengan meningkatkan pengetahuan dan keterlibatan individu serta pemberdayaan masyarakat, minimal di lingkungan keluarganya masing masing tahu dan waspada bahwa kita berada di wilayah rawan dampak gempa bumi,\'\' tambah Suranto </div>\r\n<div xss=removed> </div>\r\n<div xss=removed>Sementara itu, Kepala Markas Kota Sukabumi, Asep Priatna menambahkan, Program kesiapsiagaan gempa bumi ini </div>\r\n<div xss=removed>mendapat dukungan dari USAID melalui Palang Merah Amerika.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>\"Untuk rencana lokasi intervensi programnya kita nanti akan difokuskan di satu kelurahan tepatnya di wilayah baros sebagai lokasi yang akan dijadikan binaan dari program ini,\" terang asep.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>Dijelaskannya, tujuan program kegiatan ini, selain meningkatkan pengetahuan dan keterlibatan individu serta pemberdayaan masyarakat di wilayah lokasi binaan, target lain pencapaian dari program ini adalah bagaimana mendorong serta memperkuat kapasitas PMI dengan memperluas kemitraan publik dan swasta serta meningkatkan kesiapsiagaan masyarakat dalam upaya tanggap terhadap potensi bencana gempa bumi.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>\"tujuan Paling penting lainnya adalah bagaimana mendorong pemangku kebijakan yaitu pemerintah Kota dan mitra lainnya untuk mensinergikan program dan kebijakan yang terkait dengan kesiapsiaagaan gempa bumi di wilayah kota sukabumi,\" kata Asep.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>Dalam acara sosialisasi program di internal PMI ini untuk memaparkan dan menjelaskan alur program kepada semua pihak di internal PMI baik jajaran pengurus, staf Markas dan UTD, serta sejumlah perwakilan Relawan di lingkungan PMI Kota Sukabumi.</div>', 'item-190902_0c78cd98d2.jpg', ' Biro Humas PMI Pusat'),
('5d720c4c0a229', 'PMI KOTA SUKABUMI JADI PROYEK PERCONTOHAN PROGRAM ', '2019-09-14', '14:34:00', '<p><span xss=removed>kabupaten Banyuwangi Jawa Timur</span></p>', '<div xss=removed>Palang Merah Indonesia (PMI) Kota Sukabumi menjadi menjadi proyek percontohan untuk pelaksanaan program kesiapsiagaan dan ketangguhan masyarakat dalam merespon potensi bencana gempa bumi.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>Program yang dinamai Indonesia Earthquake Readiness ini akan memulai program selama satu tahun di kota sukabumi jawa barat ini. Selain itu lokasi lainnya yang menjadi percontohan program ini adalah kabupaten Banyuwangi Jawa Timur.</div>\r\n<div class=\"itemFullText\" xss=removed>\"Program ini adalah sebuah amanat dan kepercayaan dari PMI Pusat dan lembaga donor untuk kita jalankan sebaik baiknya di PMI kota sukabumi untuk kesuksesan dan keberlanjutan kedepannya,\" ungkap Ketua PMI Kota Sukabumi Suranto Sumowiryo dalam sambutanya disela acara sosialisasi internal program kesiapsiagaan gempa bumi di gedung Markas PMI Kota Sukabumi, Kamis (29/8).</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>Menurutnya, harapannya melalui program ini masyarakat di kota sukabumi khususnya sadar betul akan pengetahuan dan pemahaman akan kesiapsiagaan bencana gempa bumi di wilayahnya.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>\"Karena pada dasarnya Program ini bertujuan untuk meningkatkan kesiapsiagaan bencana gempa bumi di komunitas perkotaan dengan meningkatkan pengetahuan dan keterlibatan individu serta pemberdayaan masyarakat, minimal di lingkungan keluarganya masing masing tahu dan waspada bahwa kita berada di wilayah rawan dampak gempa bumi,\'\' tambah Suranto </div>\r\n<div xss=removed> </div>\r\n<div xss=removed>Sementara itu, Kepala Markas Kota Sukabumi, Asep Priatna menambahkan, Program kesiapsiagaan gempa bumi ini </div>\r\n<div xss=removed>mendapat dukungan dari USAID melalui Palang Merah Amerika.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>\"Untuk rencana lokasi intervensi programnya kita nanti akan difokuskan di satu kelurahan tepatnya di wilayah baros sebagai lokasi yang akan dijadikan binaan dari program ini,\" terang asep.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>Dijelaskannya, tujuan program kegiatan ini, selain meningkatkan pengetahuan dan keterlibatan individu serta pemberdayaan masyarakat di wilayah lokasi binaan, target lain pencapaian dari program ini adalah bagaimana mendorong serta memperkuat kapasitas PMI dengan memperluas kemitraan publik dan swasta serta meningkatkan kesiapsiagaan masyarakat dalam upaya tanggap terhadap potensi bencana gempa bumi.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>\"tujuan Paling penting lainnya adalah bagaimana mendorong pemangku kebijakan yaitu pemerintah Kota dan mitra lainnya untuk mensinergikan program dan kebijakan yang terkait dengan kesiapsiaagaan gempa bumi di wilayah kota sukabumi,\" kata Asep.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>Dalam acara sosialisasi program di internal PMI ini untuk memaparkan dan menjelaskan alur program kepada semua pihak di internal PMI baik jajaran pengurus, staf Markas dan UTD, serta sejumlah perwakilan Relawan di lingkungan PMI Kota Sukabumi.</div>', '', ' Biro Humas PMI Pusat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komen_donasi`
--

CREATE TABLE `tb_komen_donasi` (
  `id_komen_donasi` varchar(20) NOT NULL,
  `id_kbr_donasi` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_komen_donasi`
--

INSERT INTO `tb_komen_donasi` (`id_komen_donasi`, `id_kbr_donasi`, `nama`, `tanggal`, `email`, `subject`, `komentar`) VALUES
('5d721ceeee037', '5d720a53bf307', 'asdasdas', '2019-09-06', 'rhesnoakbar@gmail.com', 'asasdas', 'mano foto ny ooo\r\nahhh shit lah asdasda'),
('5d7230ce382ce', '5d720a53bf307', 'adsasd', '2019-09-06', 'rhesno@gmail.com', 'asdasdasd', 'asdads');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komen_kegiatan`
--

CREATE TABLE `tb_komen_kegiatan` (
  `id_komen` varchar(20) NOT NULL,
  `id_kegiatan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_komen_kegiatan`
--

INSERT INTO `tb_komen_kegiatan` (`id_komen`, `id_kegiatan`, `nama`, `tanggal`, `email`, `subject`, `komentar`) VALUES
('5d6e786da9d8d', '5d6cb9b0cb3f5', 'aasdasd', '2019-09-03', 'asdasdad@gmail.comasd', 'sadas', 'Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui lectus, pharetra nec elementum eget, vulputate ut nisi. Aliquam accumsan, nulla sed feugiat vehicula, lacus justo semper libero, quis porttitor turpis odio sit amet ligula. Duis dapibus fermentum orci, nec malesuada libero vehicula ut. Integer sodales, urna eget interdum eleifend, nulla nibh laoreet nisl, quis dignissim mauris dolor eget mi. Donec at mauris enim. Duis nisi tellus, adipiscing a convallis quis, tristique vitae risus. Nullam molestie gravida lobortis. Proin ut nibh quis felis auctor ornare. Cras ultricies, nibh at mollis faucibus, justo eros porttitor mi, quis auctor lectus arcu sit amet nunc. Vivamus gravida vehicula arcu, vitae vulputate augue lacinia faucibus.'),
('5d6e7a3064ec9', '5d6ca07f3da9b', 'asdasda', '2019-09-03', 'blankblonk@rocketmail.com', 'asdasdasd', 'asdasdsd'),
('5d6f768f9b111', '5d6c860202b65', 'asdsad', '2019-09-04', 'blankblonk@rocketmail.com', 'asdasdasd', 'asdsad'),
('5d722b784720b', '5d720c4c0a229', 'asdasd', '2019-09-06', 'rhesno@gmail.com', 'asdasdasda', 'asdasdsad'),
('5d722b86e5718', '5d720c4c0a229', 'zxczxczx', '2019-09-06', 'adasd@gmial.com', 'asdasdasd', 'zxczxc'),
('5d722e0c8d09d', '5d6ca07f3da9b', 'asdasda', '2019-09-06', 'asdasdad@gmail.com', 'asdasdasda', 'addaadad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komen_peristiwa`
--

CREATE TABLE `tb_komen_peristiwa` (
  `id_komen_peristiwa` varchar(20) NOT NULL,
  `id_peristiwa` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_komen_peristiwa`
--

INSERT INTO `tb_komen_peristiwa` (`id_komen_peristiwa`, `id_peristiwa`, `nama`, `tanggal`, `email`, `subject`, `komentar`) VALUES
('5d70459d749cc', '5d6f426c1dada', 'sadsadasd', '2019-09-05', 'asdasdad@gmail.comasd', 'asdasd', 'asdassda'),
('5d7230ac5e435', '5d6f426c1dada', 'asdasda', '2019-09-06', 'rhesno@gmail.com', 'asdasdasda', 'asdasdas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komen_siaran`
--

CREATE TABLE `tb_komen_siaran` (
  `id_komen_siaran` varchar(20) NOT NULL,
  `id_siaran` varchar(20) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `tanggal` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_komen_siaran`
--

INSERT INTO `tb_komen_siaran` (`id_komen_siaran`, `id_siaran`, `nama`, `tanggal`, `email`, `subject`, `komentar`) VALUES
('5d7082c6efbb0', '5d70550dddc13', 'zxczxczxc', '2019-09-05', 'rhesnoakbar@gmail.com', 'zxczxc', 'Meskipun 2 (dua) bulan telah berlalu dari bencana gempa dan tsunami yang menghantam Palu & Donggala, Sulawesi Tengah, namun tidak menyurutkan semangat perusahaan garmen asal Korea Selatan, Pan Pacific Group, untuk memberikan sumbangan dana bagi korban gempa dan tsunami dengan nilai sebesar Rp 178.000.000, yang merupakan gabungan donasi dari seluruh karyawan dan manajemen Pan Pacific Co. Ltd, PT Pan Pacific Jakarta, dan PT Pan Pacific Nesia. Selain itu, secara terpisah PT Pan Pacific Jakarta Cabang Semarang, PT Nesia Pan Pacific Clothing, dan PT Nesia Pan Pacific Knit juga melakukan penggalangan dana dengan nilai total sebesar Rp 100.000.000 yang telah disetorkan melalui PMI Kota Semarang, PMI Kabupaten Wonogiri, dan PMI Kota Salatiga.\r\n\r\nDonasi diserahkan oleh Direktur Marketing PT Pan Pacific Jakarta, Mr. Kyubaek, Lee dan diterima oleh Bapak Sumarsono selaku Kepala Bidang Penanggulangan Bencana PMI Pusat pada hari Selasa, 27 November 2018 di Markas Besar PMI di Jl. Gatot Subroto, Jakarta. Adapun proses penggalangan dana di Pan Pacific Group sendiri telah berlangsung sejak tanggal 15 Oktober sampai dengan 9 November yang lalu. '),
('5d722a860859a', '5d705270c6398', 'adsasd', '2019-09-06', 'blankblonk@rocketmail.com', 'asdasd', 'asdsadasdasdadas'),
('5d722e5434809', '5d705270c6398', 'dasd', '2019-09-06', 'rhesno@gmail.com', 'asdasdasda', 'asdasdasda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `id` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` char(12) NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl` varchar(50) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `level` enum('super_admin','admin') NOT NULL,
  `blokir` enum('Y','N') NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`id`, `username`, `nama_lengkap`, `password`, `email`, `hp`, `tmp_lahir`, `tgl`, `agama`, `jk`, `gambar`, `level`, `blokir`, `alamat`) VALUES
('5d5c3a065d9e3', 'blonk', 'blonk', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 'admin@gmail.com', '8123893482', 'dasda', '01-08-2019', 'Islam', 'Laki-laki', 'item-190821_e474e85208.jpg', 'super_admin', 'N', '<p>yes berhasil,,,,,, Hore!!!!!!!!!!!!!!!!!! HOREEEEEEEEEEEEEE</p>'),
('5d5cab47ec879', 'gudang', 'admin bro', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'blonk@gmail.com', '123123123123', 'Tanjung Enim', '01-08-2019', 'Islam', 'Laki-laki', 'item-190821_7c32d42068.jpg', 'admin', 'N', '<p>hahsdasd</p>'),
('5d5cb85208b7a', 'admin', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin@gmail.com', '8123893482', 'Palembang', '01-08-2019', 'Islam', 'Laki-laki', 'item-190821_1359aa933b.jpg', 'super_admin', 'N', '<p>Tanjung Enim ne lah cok</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peristiwa`
--

CREATE TABLE `tb_peristiwa` (
  `id_peristiwa` varchar(20) NOT NULL,
  `judul_peristiwa` text NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `lokasi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `detail_peristiwa` text NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_peristiwa`
--

INSERT INTO `tb_peristiwa` (`id_peristiwa`, `judul_peristiwa`, `tanggal`, `jam`, `lokasi`, `gambar`, `detail_peristiwa`, `hits`) VALUES
('5d6ea28136ad5', '265 RIBU LITER AIR BERSIH TELAH DIDISTRIBUSIKAN', '2019-09-08', '10:00:00', '<p>Banjarnegara </p>', 'item-190904_e66aed023c.jpg', '<div>Banjarnegara -  Selama Agustus kemarin Palang Merah Indonesia (PMI)  Banjarnegara Mendistribusikan sebanyak 265 ribu liter air bersih ke beberapa desa dan kecamatan yang mengalami kekeringan dan krisis air bersih. </div>\r\n<div> </div>', 2),
('5d6f3dce5ca0d', 'PMI BOGOR EVAKUASI PENERJUN TERSANGKUT DI TOWER PEMANCAR DI BOGOR', '2019-09-08', '09:00:00', '<p>Bogor</p>', 'item-190904_f4a6ed9b26.jpg', '<div>Seorang penerjun payung tersangkut di atas menara tower pemancar komunukasi BTS di kelurahan tengah cibinong Kabupaten bogor.Selasa (3/9).</div>\r\n<div> </div>\r\n<div>Sejumlah personil dari Palang Merah Indonesia (PMI) kabupaten bogor dan Dinas Pemadam kebakaran diterjunkan untuk ikut membantu proses evakuasi insiden jatuhnya peterjun tersebut </div>\r\n<div> </div>\r\n<div>\"Setelah mendapatkan informasi kita memberangkatkan sejumlah personil dan armada ambulans untuk membantu proses evakuasi korban yang sempat terjebak di ketinggian kurang lebih 30 meter,\" ungkap Kepala Markas PMI Kabupaten Bogor, Saefudin, Selasa (3/9).</div>\r\n<div class=\"itemFullText\">Menurutnya, proses evakuasi cukup dramatis, petugas dari PMI Kabupaten bogor dan Dinas Pemadam Kebakaran Kabupaten Bogor melakukan upaya proses evakuasi dengan penuh hati hati sesuai prosedur penyelamatan. proses evakuasi berhasil dilakukan selama kurang lebih 10 menit.</div>\r\n<div> </div>\r\n<div>\"Kita melakukan petolongan pertama sesuai prosedur dengan melalukan fiksasi dan terapi oksigen untuk penunjang proses evakuasi rujukan ke RSUD cibinong, karna korban dicurigai mengalami cidera dibagian leher (Servikal) dan kaki kanan akibat  riwayat medis sebelumnya,\" kata Saefudin.</div>\r\n<div> </div>\r\n<div>Menurutnya, berdasarkan informasi, penerjun payung tersebut sedang mengadakan kegiatan Latihan yang di selenggarakan oleh Federasi AERO Sport Indonesia dan salah satu penerjunnya mengalami insiden tersangkut di Tower Pemancar </div>\r\n<div> </div>\r\n<div>Saefudin menduga jatuhnya penerjun payung diakibatkan kehilangan arah pendaratan sehingga hilang kendali dan tersangkut di tower dengan ketinggian 30 meter.</div>', 7),
('5d6f426c1dada', 'RELAWAN PMI BERJIBAKU MELAWAN API DI KALIMANTAN SELATAN', '2019-08-03', '10:00:00', '<p>Jakabaring Palembang</p>', 'item-190904_8b56c8b87e.JPG', '<div xss=removed>Palang Merah Indonesia (PMI) Kabupaten Banjar, Kalimantan Selatan menurunkan sejumlah personelnya untuk memadamkan kebakaran hutan dan lahan (karhutla) di sekitar Perumahan Pegawai Indrasari, Kecamatan Martapura.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>\"Ada delapan relawan yang kami turunkan untuk memadamkan kebakaran lahan rumput liar dan pepohonan dengan luas sekitar 30 hektare yang terbagi di beberapa titik,\" kata Wakil Sekretaris PMI Kabupaten Banjar M Jazuli Rahman.</div>', 43),
('5d720d18f2dc1', 'RELAWAN PMI BERJIBAKU MELAWAN API ', '2019-09-08', '14:38:45', '<p>asdasd</p>', '', '<div xss=removed>Palang Merah Indonesia (PMI) Kabupaten Banjar, Kalimantan Selatan menurunkan sejumlah personelnya untuk memadamkan kebakaran hutan dan lahan (karhutla) di sekitar Perumahan Pegawai Indrasari, Kecamatan Martapura.</div>\r\n<div xss=removed> </div>\r\n<div xss=removed>\"Ada delapan relawan yang kami turunkan untuk memadamkan kebakaran lahan rumput liar dan pepohonan dengan luas sekitar 30 hektare yang terbagi di beberapa titik,\" kata Wakil Sekretaris PMI Kabupaten Banjar M Jazuli Rahman.</div>', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sejarah`
--

CREATE TABLE `tb_sejarah` (
  `ip` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_sejarah`
--

INSERT INTO `tb_sejarah` (`ip`, `tanggal`, `hits`) VALUES
('::1', '2019-08-31', 3),
('::1', '2019-09-02', 3),
('::1', '2019-09-05', 25),
('::1', '2019-09-06', 8),
('::1', '2019-09-07', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siaran_pers`
--

CREATE TABLE `tb_siaran_pers` (
  `id_siaran` varchar(20) NOT NULL,
  `judul_siaran` text NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `lokasi` text NOT NULL,
  `deskripsi` text NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siaran_pers`
--

INSERT INTO `tb_siaran_pers` (`id_siaran`, `judul_siaran`, `tanggal`, `jam`, `gambar`, `lokasi`, `deskripsi`, `hits`) VALUES
('5d705270c6398', 'JUSUF KALLA RESMIKAN SEKOLAH RAMAH GEMPA DAN MASJID UNTUK MASYARAKAT NTB', '2018-09-05', '10:09:15', 'item-190905_8aa71aee35.JPG', '<p><span xss=removed>Lombok Barat, Lombok Tengah, Lombok Utara dan Lombok Timur</span></p>', '<div class=\"itemIntroText\" xss=removed>\r\n<p xss=removed>Wakil Presiden RI M Jusuf Kalla selaku Ketua Umum Palang Merah Indonesia (PMI) meresmikan 5 sekolah ramah gempa dan 3 masjid bantuan PMI, di Markas PMI NTB, Sabtu (3/8). Bantuan sekolah ramah gempa dan masjid tersebut berlokasi di Lombok Barat, Lombok Tengah, Lombok Utara dan Lombok Timur yang merupakan wilayah terdampak gempa bumi yang melanda NTB pada 2018 lalu.  </p>\r\n<p xss=removed>Peresmian bangunan sekolah ramah gempa dan masjid ini ditandai dengan penandatanganan delapan prasasti oleh Jusuf Kalla. Dalam sambutannya, Jusuf Kalla mengatakan gempa yang melanda NTB beberapa waktu lalu telah merusak bangunan termasuk sekolah dan masjid. Melalui bantuan ini, Ketua Umum berharap masyarakat dapat memanfaatkan sekolah dan masjid dengan sebaik-baiknya. </p>\r\n</div>\r\n<div class=\"itemFullText\" xss=removed>\r\n<p xss=removed>‘’Anak-anak dan para guru dapat kembali melakukan kegiatan belajar mengajar dengan rasa aman karena bantuan sekolah ini dibangun dengan bahan ringan sehingga ramah gempa. Masyarakat juga dapat memanfaatkan masjid baru ini untuk beribadah,’’ kata Jusuf Kalla.</p>\r\n<p xss=removed>Ke delapan bangunan yang diresmikan tersebut yaitu SDN 2 Gumantar, Lombok Utara, SDN 1 Dangiang, Lombok Utara, Madrasah Tsanawiyah (MTS) Nahdlatul Wathan Pangsor Gunung, Lombok Timur, SDI Obel-Obel Lombok Timur, SDI Asyababiyah, Lombok Barat, Masjid Nurul Anshor Tibuharapan di Lombok Timur, Masjid Nurul Muttakin di Lombok Utara, dan Masjid Nurul Iman di Lombok Tengah. Sementara itu masyarakat dan PMI saat ini masih dalam proses membangun tiga bangunan masjid lainnya, yaitu Masjid Quba’, Lombok Barat dan Masjid Al-Muhajirin serta Masjid Al-Muttakin di Lombok Utara.</p>\r\n<p xss=removed>Dalam peresmian ini, Jusuf Kalla juga menyaksikan secara simbolis bantuan 1 kendaraan tangki air dan 2 kendaraan ambulans dari Taiwan Economic Trade Office (TETO) serta 1 kendaraan ambulans dari PT. Samsung Electronic Indonesia. Bantuan ini diserahkan kepada Ketua PMI Provnsi NTB.</p>\r\n<p xss=removed>Data PMI per 2 Agustus 2019, bantuan PMI untuk masyarakat terdampak gempa bumi selama masa rehabilitasi dan pemulihan di NTB berupa distribusi 25.554.500 liter air bersih kepada 193.056 penerima manfaat, membangun pipanisasi sepanjang 46.907 meter, membangun 2 sekolah darurat, 22 tempat ibadah darurat, pelayanan kesehatan kepada sekitar 13.429 penerima manfaat, promosi kebersihan menjangkau 23.762 penerima manfaat, dan dukungan psikososial kepada 20.355 penerima manfaat.</p>\r\n</div>', 12),
('5d70555519a70', 'JUSUF KALLA RESMIKAN GEDUNG KALLA AFIAT CENTER', '2018-09-16', '13:00:00', 'item-190905_669d11d1eb.JPG', '<p><span xss=removed>Jalan Raya Pajajaran N0 80 , Kota Bogor</span></p>', '<div class=\"itemIntroText\" xss=removed>\r\n<p xss=removed>BOGOR-- Pembangunan gedung baru Rumah Sakit PMI Bogor akhirnya rampung. Senin (29/4/2019), gedung di Jalan Raya Pajajaran N0 80 , Kota Bogor tersebut diresmikan Wakil Presiden Republik Indonesia selaku ketua umum  Palang Merah Indonesia Bpk. Jusuf Kalla dan diberi nama Kalla Afiat Center.</p>\r\n<p xss=removed>Direktur Rumah Sakit PMI Bogor dr Yuliantini, MARS mengatakan pembangunan Kalla Afiat Center merupakan salah satu upaya menunjang berbagai kebutuhan masyarakat masa kini yang memiliki konsep One stop health service and life style.</p>\r\n<p xss=removed>Selain itu  akan ada penambahan beberapa spesialis pada kedokteran gigi dan sub spesialis seperti fetomaternal, onkologi serta konsulen ginjal, selain klinik khusus seperti , pain clinic dan woundcare clinic.</p>\r\n</div>\r\n<div class=\"itemFullText\" xss=removed>\r\n<p xss=removed>Pada Kalla Afiat Center juga sudah dan akan dikembangkan klinik yang menunjang gaya hidup seperti medical check up, kosmetik medik, klinik akupuntur, klinik gizi, klinik laktasi, klinik geriatric, klinik memory, man clinic, dan klinik lainnya. Sehingga diharapkan selain pelayanan pengobatan (kuratif) Kalla Afiat Center juga dapat menunjang pelayanan untuk menjaga kesehatan warga Bogor tetap sehat sesuai dengan kebutuhan gaya hidup masa kini. Sehingga Kalla Afiat Center tidak hanya diperuntukan bagi orang yang memerlukan pengobatan untuk kesehatannya, namun juga untuk orang-orang yang ingin mempertahankan kesehatannya. </p>\r\n<p xss=removed>Selain sarana penunjang kuratif dan life style, Kalla Afiat Center juga didukung fasilitas lainnya seperti Restoran, café, Bank, Minimarket, optik, dan toko perlatan kesehatan. Tak hanya itu, ballroom dengan kapasitas pengunjung lebih dari 700 orang di lantai 4  bisa dimanfaatkan bagi masyarakat yang hendak menggelar acara seperti seminar, rapat koordinasi serta  pesta pernikahan. (*)</p>\r\n<p xss=removed><span xss=removed>Sekilas Gedung Kalla Afiat Center</span></p>\r\n<p xss=removed>Gedung Kalla Afiat Center  adalah pengembangan dari gedung poliklinik Afiat sebelumnya yang diresmikan dan diberi nama oleh Bapak Marie Muhammad pada tahun 2003. Afiat didirikan untuk memenuhi kebutuhan masyarakat yang ingin mendapatkan pelayanan rawat jalan yang lebih nyaman dan waktu yang lebih fleksibel karena memulai pelayanan dari pukul 08:00 WIB sampai dengan pukul 21:00 WIB.</p>\r\n<p xss=removed>Poliklinik Afiat menjadi poliklinik kedua untuk melayani pasien umum, asuransi dan perusahaan, selain poliklinik regular di gedung terpisah untuk pelayanan pasien umum dan JKN. Seiring waktu poliklinik Afiat yang awalnya hanya satu lantai mulai dirasakan kurang karena peningkatan pasien dan keinginan RS PMI menambah layanan spesialis dan sub spesialis. Mengingat RS PMI yang seringkali menjadi rujukan jika ada kegiatan kepresidenan di Bogor, maka disiapkan ruang khusus kepresidenan sebagai layanan kesehatan terdekat sebelum rujukan lebih lanjut</p>\r\n<p xss=removed>Oktober 2017,  pembangunan  Gedung Kalla Afiat Center 4 lantai dimulai dan selesai dalam waktu 11 bulan, gedung dengan luas 9.721 m2 ini terdiri dari layanan poliklinik di lantai 1,2 dan 3 dan function hall/ ballroom di lantai 4 untuk menunjang kegiatan peningkatan pengetahuan/ pelatihan/seminar atau kegiaatan lainnya yang memberikan manfaat untuk rumah sakit. Selain itu Kalla Afiat Center  juga dilengkapi dengan fasilitas tambahan seperti coffee shop, restoran, minimarket, optic , bank, toko alat kesehatan dan ruang kantor.</p>\r\n</div>', 17),
('5d720ecae597e', 'JUSUF KALLA RESMIKAN GEDUNG KALLA zzzz', '2019-09-01', '14:45:30', '', '<p>Bogor</p>', '<div class=\"itemIntroText\">\r\n<p>BOGOR-- Pembangunan gedung baru Rumah Sakit PMI Bogor akhirnya rampung. Senin (29/4/2019), gedung di Jalan Raya Pajajaran N0 80 , Kota Bogor tersebut diresmikan Wakil Presiden Republik Indonesia selaku ketua umum  Palang Merah Indonesia Bpk. Jusuf Kalla dan diberi nama Kalla Afiat Center.</p>\r\n<p>Direktur Rumah Sakit PMI Bogor dr Yuliantini, MARS mengatakan pembangunan Kalla Afiat Center merupakan salah satu upaya menunjang berbagai kebutuhan masyarakat masa kini yang memiliki konsep One stop health service and life style.</p>\r\n<p>Selain itu  akan ada penambahan beberapa spesialis pada kedokteran gigi dan sub spesialis seperti fetomaternal, onkologi serta konsulen ginjal, selain klinik khusus seperti , pain clinic dan woundcare clinic.</p>\r\n</div>\r\n<div class=\"itemFullText\">\r\n<p>Pada Kalla Afiat Center juga sudah dan akan dikembangkan klinik yang menunjang gaya hidup seperti medical check up, kosmetik medik, klinik akupuntur, klinik gizi, klinik laktasi, klinik geriatric, klinik memory, man clinic, dan klinik lainnya. Sehingga diharapkan selain pelayanan pengobatan (kuratif) Kalla Afiat Center juga dapat menunjang pelayanan untuk menjaga kesehatan warga Bogor tetap sehat sesuai dengan kebutuhan gaya hidup masa kini. Sehingga Kalla Afiat Center tidak hanya diperuntukan bagi orang yang memerlukan pengobatan untuk kesehatannya, namun juga untuk orang-orang yang ingin mempertahankan kesehatannya. </p>\r\n<p>Selain sarana penunjang kuratif dan life style, Kalla Afiat Center juga didukung fasilitas lainnya seperti Restoran, café, Bank, Minimarket, optik, dan toko perlatan kesehatan. Tak hanya itu, ballroom dengan kapasitas pengunjung lebih dari 700 orang di lantai 4  bisa dimanfaatkan bagi masyarakat yang hendak menggelar acara seperti seminar, rapat koordinasi serta  pesta pernikahan. (*)</p>\r\n<p>Sekilas Gedung Kalla Afiat Center</p>\r\n<p>Gedung Kalla Afiat Center  adalah pengembangan dari gedung poliklinik Afiat sebelumnya yang diresmikan dan diberi nama oleh Bapak Marie Muhammad pada tahun 2003. Afiat didirikan untuk memenuhi kebutuhan masyarakat yang ingin mendapatkan pelayanan rawat jalan yang lebih nyaman dan waktu yang lebih fleksibel karena memulai pelayanan dari pukul 08:00 WIB sampai dengan pukul 21:00 WIB.</p>\r\n<p>Poliklinik Afiat menjadi poliklinik kedua untuk melayani pasien umum, asuransi dan perusahaan, selain poliklinik regular di gedung terpisah untuk pelayanan pasien umum dan JKN. Seiring waktu poliklinik Afiat yang awalnya hanya satu lantai mulai dirasakan kurang karena peningkatan pasien dan keinginan RS PMI menambah layanan spesialis dan sub spesialis. Mengingat RS PMI yang seringkali menjadi rujukan jika ada kegiatan kepresidenan di Bogor, maka disiapkan ruang khusus kepresidenan sebagai layanan kesehatan terdekat sebelum rujukan lebih lanjut</p>\r\n<p>Oktober 2017,  pembangunan  Gedung Kalla Afiat Center 4 lantai dimulai dan selesai dalam waktu 11 bulan, gedung dengan luas 9.721 m2 ini terdiri dari layanan poliklinik di lantai 1,2 dan 3 dan function hall/ ballroom di lantai 4 untuk menunjang kegiatan peningkatan pengetahuan/ pelatihan/seminar atau kegiaatan lainnya yang memberikan manfaat untuk rumah sakit. Selain itu Kalla Afiat Center  juga dilengkapi dengan fasilitas tambahan seperti coffee shop, restoran, minimarket, optic , bank, toko alat kesehatan dan ruang kantor.</p>\r\n</div>', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id` varchar(10) NOT NULL,
  `nama_slide` varchar(20) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_slider`
--

INSERT INTO `tb_slider` (`id`, `nama_slide`, `gambar`, `aktif`) VALUES
('5d64a4de4e', 'xzcczzccx', 'item-190827_ab8aa05e78.jpg', 'Y'),
('5d672c1f65', 'sdasdasd', 'item-190829_217dade2ab.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_statistik`
--

CREATE TABLE `tb_statistik` (
  `ip` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `hits` int(11) NOT NULL,
  `online` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_statistik`
--

INSERT INTO `tb_statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('::1', '2019-08-28', 59, '1567016595'),
('::1', '2019-08-29', 53, '1567051188'),
('::1', '2019-08-30', 11, '1567130416'),
('::1', '2019-08-31', 45, '1567231424'),
('::1', '2019-09-01', 21, '1567333650'),
('::1', '2019-09-02', 148, '1567452703'),
('::1', '2019-09-03', 44, '1567528512'),
('::1', '2019-09-04', 32, '1567587304'),
('::1', '2019-09-05', 69, '1567664776'),
('::1', '2019-09-06', 191, '1567773478'),
('::1', '2019-09-07', 19, '1567848395'),
('::1', '2019-09-08', 2, '1567904307'),
('::1', '2019-09-12', 6, '1568265948');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_video_pmi`
--

CREATE TABLE `tb_video_pmi` (
  `id` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `video` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_video_pmi`
--

INSERT INTO `tb_video_pmi` (`id`, `judul`, `video`, `tanggal`, `aktif`, `keterangan`) VALUES
('5d6b432e08540', 'Video Sambutan 2', 'item-190901_3d4893419e.mp4', '2019-09-07', 'Y', '<p>blanaksdasldjjsmnBZxyZ</p>'),
('5d6b9dbd171a6', 'visi', 'item-190901_bd722d51bd.mp4', '2019-09-02', 'N', '<p>sambutan ahahahha</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_visimisi`
--

CREATE TABLE `tb_visimisi` (
  `id` varchar(20) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_visimisi`
--

INSERT INTO `tb_visimisi` (`id`, `judul`, `tanggal`, `deskripsi`, `aktif`, `hits`) VALUES
('123sdfa123sdf', 'Visi', '2013-06-28', '<p>PMI yang berkarakter, profesional, mandiri dan dicintai masyarakat</p>', 'Y', 30),
('5d689a519798a', 'Misi', '2013-06-28', '<ol>\r\n<li>Menjadi organisasi kemanusiaan terdepan yang memberikan <strong>layanan berkualitas</strong> melalui kerja sama dengan masyarakat dan mitra sesuai dengan <strong>prinsip-prinsip dasar</strong> Gerakan Palang Merah dan Bulan Sabit Merah.</li>\r\n<li>Meningkatkan kemandirian organisasi PMI melalui <strong>kemitraan strategis</strong> yang berkesinambungan dengan pemerintah, swasta, mitra gerakan dan pemangku kepentingan lainnya di semua tingkatan.</li>\r\n<li>Meningkatkan <strong>reputasi organisasi</strong> PMI di tingkat Nasional dan Internasional.</li>\r\n</ol>', 'Y', 30);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_besar_donasi_program`
--
ALTER TABLE `tb_besar_donasi_program`
  ADD PRIMARY KEY (`id_besar_program`),
  ADD KEY `id_donasi_program` (`id_donasi_program`);

--
-- Indeks untuk tabel `tb_deskripsi_transfer`
--
ALTER TABLE `tb_deskripsi_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_donasi_program`
--
ALTER TABLE `tb_donasi_program`
  ADD PRIMARY KEY (`id_donasi_program`);

--
-- Indeks untuk tabel `tb_info_transfer`
--
ALTER TABLE `tb_info_transfer`
  ADD PRIMARY KEY (`id_transfer`);

--
-- Indeks untuk tabel `tb_kabar_donasi`
--
ALTER TABLE `tb_kabar_donasi`
  ADD PRIMARY KEY (`id_kbr_donasi`);

--
-- Indeks untuk tabel `tb_karier`
--
ALTER TABLE `tb_karier`
  ADD PRIMARY KEY (`id_karier`);

--
-- Indeks untuk tabel `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `tb_komen_donasi`
--
ALTER TABLE `tb_komen_donasi`
  ADD PRIMARY KEY (`id_komen_donasi`),
  ADD KEY `id_kbr_donasi` (`id_kbr_donasi`);

--
-- Indeks untuk tabel `tb_komen_kegiatan`
--
ALTER TABLE `tb_komen_kegiatan`
  ADD PRIMARY KEY (`id_komen`),
  ADD KEY `id_kegiatan` (`id_kegiatan`);

--
-- Indeks untuk tabel `tb_komen_peristiwa`
--
ALTER TABLE `tb_komen_peristiwa`
  ADD PRIMARY KEY (`id_komen_peristiwa`),
  ADD KEY `id_peristiwa` (`id_peristiwa`);

--
-- Indeks untuk tabel `tb_komen_siaran`
--
ALTER TABLE `tb_komen_siaran`
  ADD PRIMARY KEY (`id_komen_siaran`),
  ADD KEY `id_siaran` (`id_siaran`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_peristiwa`
--
ALTER TABLE `tb_peristiwa`
  ADD PRIMARY KEY (`id_peristiwa`);

--
-- Indeks untuk tabel `tb_siaran_pers`
--
ALTER TABLE `tb_siaran_pers`
  ADD PRIMARY KEY (`id_siaran`);

--
-- Indeks untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_video_pmi`
--
ALTER TABLE `tb_video_pmi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_visimisi`
--
ALTER TABLE `tb_visimisi`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
