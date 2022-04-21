-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2020 at 08:24 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datacop`
--
CREATE DATABASE IF NOT EXISTS `datacop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `datacop`;

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(10) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `tanggal_absen` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `status_masuk` enum('Y','N') NOT NULL DEFAULT 'N',
  `status_keluar` enum('Y','N') NOT NULL DEFAULT 'N',
  `ket` char(2) NOT NULL DEFAULT 'NA',
  `terlambat` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `no_hp`, `email`) VALUES
('7110001', 'Achmad Alfarel Nuzul Ghazali', '12345678', 'absdefg'),
('7110003', 'Adrian Devano', '12345678', 'absdefg'),
('7110004', 'Afifah Syabaniah Sanubari Lang', '12345678', 'absdefg'),
('7110005', 'Ahmad Arif Firmansyah', '12345678', 'absdefg'),
('7110007', 'Ainayya H.S.N Likur', '12345678', 'absdefg'),
('7110008', 'Ainunnisa Lisaninafi?ah Tanrhe', '12345678', 'absdefg'),
('7110011', 'Alpin juliandi', '12345678', 'absdefg'),
('7110012', 'Alsha Aurora Khansha Zein', '12345678', 'absdefg'),
('7110013', 'Alvian Ferrandy', '12345678', 'absdefg'),
('7110014', 'Alyeska Astri Az-zahra', '12345678', 'absdefg'),
('7110015', 'Amalia Restu Damayanti', '12345678', 'absdefg'),
('7110016', 'Amalia Rizkiyani', '12345678', 'absdefg'),
('7110017', 'Andi ainul yaqin s', '12345678', 'absdefg'),
('7110021', 'Annisa Putri Ramadhanty', '12345678', 'absdefg'),
('7110024', 'Ariesta Aidha', '12345678', 'absdefg'),
('7110025', 'Arrazi Rahadiyan', '12345678', 'absdefg'),
('7110026', 'Asika Cahyaning Tiwi Pradana', '12345678', 'absdefg'),
('7110027', 'Asrif''ah', '12345678', 'absdefg'),
('7110028', 'Astry Julyana Eliawati', '12345678', 'absdefg'),
('7110029', 'Ayu Rasydta Puspa Lestari', '12345678', 'absdefg'),
('7110033', 'Clara Shinta', '12345678', 'absdefg'),
('7110034', 'Conni Setyorini', '12345678', 'absdefg'),
('7110035', 'Dandy Adetiar Al Rizki', '12345678', 'absdefg'),
('7110036', 'Deasy Dirgantari', '12345678', 'absdefg'),
('7110037', 'Dessy Wahyuni', '12345678', 'absdefg'),
('7110038', 'Dewi Riska Setyaningrum', '12345678', 'absdefg'),
('7110040', 'Diah Henisa', '12345678', 'absdefg'),
('7110042', 'Diana Agustin', '12345678', 'absdefg'),
('7110043', 'Dilla Anggun Saphira', '12345678', 'absdefg'),
('7110044', 'Dina Rahmawati', '12345678', 'absdefg'),
('7110045', 'Disya Pratistaning Ratriatmaja', '12345678', 'absdefg'),
('7110046', 'Djoko Wirawan', '12345678', 'absdefg'),
('7110047', 'Donny Damara', '12345678', 'absdefg'),
('7110048', 'Dwi Anggraini ', '12345678', 'absdefg'),
('7110049', 'Dwi Ardian ', '12345678', 'absdefg'),
('7110052', 'Eliza Tiara Devi', '12345678', 'absdefg'),
('7110055', 'Erisa Nur Imama', '12345678', 'absdefg'),
('7110056', 'Ersa Budi Sutanto', '12345678', 'absdefg'),
('7110057', 'Erta Fajar Utari', '12345678', 'absdefg'),
('7110059', 'Ester Amelia Erika Wibowo', '12345678', 'absdefg'),
('7110061', 'Evita Dyah Wardhani', '12345678', 'absdefg'),
('7110062', 'Fadhilatul Khairi', '12345678', 'absdefg'),
('7110064', 'Fath Esa Prasanti Kusuma', '12345678', 'absdefg'),
('7110065', 'Fauzan Rais Arfizain', '12345678', 'absdefg'),
('7110066', 'Fauziah', '12345678', 'absdefg'),
('7110067', 'Faza Budiarti ', '12345678', 'absdefg'),
('7110068', 'Faza Nur Fuadina', '12345678', 'absdefg'),
('7110069', 'Feby Vanessa Wandri', '12345678', 'absdefg'),
('7110070', 'Fendyanto', '12345678', 'absdefg'),
('7110071', 'Fenty Berliana Tifalny', '12345678', 'absdefg'),
('7110072', 'Fitri Anna Resqiah Asri', '12345678', 'absdefg'),
('7110074', 'Ghina Noviana Rahmawati', '12345678', 'absdefg'),
('7110075', 'Ghytsa Alif Jabir', '12345678', 'absdefg'),
('7110077', 'Gilar Tri Panji Saputra ', '12345678', 'absdefg'),
('7110078', 'Gita Rizky Purwitasari', '12345678', 'absdefg'),
('7110079', 'Hafidya Hansari', '12345678', 'absdefg'),
('7110080', 'Handy Geraldy', '12345678', 'absdefg'),
('7110081', 'Hani Imtihanah', '12345678', 'absdefg'),
('7110082', 'Hanifa Azzahra', '12345678', 'absdefg'),
('7110083', 'Hanifah Busainah', '12345678', 'absdefg'),
('7110084', 'Hanifah Rahmah', '12345678', 'absdefg'),
('7110085', 'Helen Fricylya Br Tobing', '12345678', 'absdefg'),
('7110087', 'Heribertus Rivaldi de Lahut', '12345678', 'absdefg'),
('7110089', 'Heru Maulia Anggraeni', '12345678', 'absdefg'),
('7110090', 'Ian Tryaldi Halim', '12345678', 'absdefg'),
('7110091', 'Imam Abdul Hafizh', '12345678', 'absdefg'),
('7110092', 'Intan Maulida Khoirun Nisa''', '12345678', 'absdefg'),
('7110093', 'Ivan Adi Lukito', '12345678', 'absdefg'),
('7110097', 'Konita Iladini', '12345678', 'absdefg'),
('7110098', 'Krisnanda Prasetya Adi', '12345678', 'absdefg'),
('7110099', 'Kukuh Adhi Hatmanto', '12345678', 'absdefg'),
('7110100', 'Kuncoro Dwi Dhanutama', '12345678', 'absdefg'),
('7110102', 'Larasati Widyaningrum', '12345678', 'absdefg'),
('7110103', 'Levi Alvaro Samosir', '12345678', 'absdefg'),
('7110104', 'Lili Triana Wardatul Jannah', '12345678', 'absdefg'),
('7110105', 'Lira Azima', '12345678', 'absdefg'),
('7110106', 'Lissa Octavia Wardana', '12345678', 'absdefg'),
('7110107', 'Luklu Uzdah', '12345678', 'absdefg'),
('7110108', 'Lutfiah Setiawati', '12345678', 'absdefg'),
('7110111', 'Maghfira Ramadhani', '12345678', 'absdefg'),
('7110112', 'Maherna Irfah', '12345678', 'absdefg'),
('7110113', 'Makdum Syarif', '12345678', 'absdefg'),
('7110115', 'Maura Lovieta Jean Laurensia', '12345678', 'absdefg'),
('7110117', 'Mayszea Prawika F', '12345678', 'absdefg'),
('7110118', 'Mega Ayu Rahma MD', '12345678', 'absdefg'),
('7110119', 'Meilia Qurrota A''yun', '12345678', 'absdefg'),
('7110120', 'Mellinda', '12345678', 'absdefg'),
('7110121', 'Miftachul Rachman Dinda', '12345678', 'absdefg'),
('7110123', 'Mochammad Faizul', '12345678', 'absdefg'),
('7110125', 'Muftihatul Khair', '12345678', 'absdefg'),
('7110126', 'Muhammad Alif Taufiqulhakim', '12345678', 'absdefg'),
('7110127', 'Muhammad Azmil Mubarrok', '12345678', 'absdefg'),
('7110129', 'Muhammad Fauzi Fahzan Ariski', '12345678', 'absdefg'),
('7110130', 'Muhammad Hasby Ashshiddiq', '12345678', 'absdefg'),
('7110132', 'Muhammad Rizky', '12345678', 'absdefg'),
('7110133', 'Muhammad Rizky Alfarizi', '12345678', 'absdefg'),
('7110136', 'Muhammad Wildan Bayu Pamungkas', '12345678', 'absdefg'),
('7110137', 'Muhammad Yunus Hendrawan', '12345678', 'absdefg'),
('7110138', 'Mulyana', '12345678', 'absdefg'),
('7110139', 'Nada Salvia', '12345678', 'absdefg'),
('7110141', 'Nadiya Nur Husniyya', '12345678', 'absdefg'),
('7110142', 'Naufalul Ikbar', '12345678', 'absdefg'),
('7110143', 'Nimas Eka Kusuma', '12345678', 'absdefg'),
('7110144', 'Nisa Budi Noorfadila', '12345678', 'absdefg'),
('7110145', 'Nisrina Citra Nurfadilah', '12345678', 'absdefg'),
('7110147', 'Noval Irgi Zekha Firdaus', '12345678', 'absdefg'),
('7110150', 'Nufaisa Munia', '12345678', 'absdefg'),
('7110152', 'Nurfahmi Ramadhan Rasyid', '12345678', 'absdefg'),
('7110154', 'Nurul Raiyan', '12345678', 'absdefg'),
('7110155', 'Nurul Sulasfi', '12345678', 'absdefg'),
('7110157', 'Pidyatama Putri Situmorang', '12345678', 'absdefg'),
('7110158', 'Prabawati Istiqomah', '12345678', 'absdefg'),
('7110159', 'Pramudya Kusuma', '12345678', 'absdefg'),
('7110160', 'Priyo Mulyo Waskito', '12345678', 'absdefg'),
('7110161', 'Putri Dita Wingsanti', '12345678', 'absdefg'),
('7110162', 'Putri Nur Isnaini', '12345678', 'absdefg'),
('7110164', 'Refo Aulia Alba', '12345678', 'absdefg'),
('7110167', 'Reza Rizki Ramadhan ', '12345678', 'absdefg'),
('7110168', 'Ria Dhotul Ilmiah', '12345678', 'absdefg'),
('7110169', 'Riska fitriani', '12345678', 'absdefg'),
('7110170', 'Rizka Suhaiffah', '12345678', 'absdefg'),
('7110174', 'Ruri Alifia Ramadhani', '12345678', 'absdefg'),
('7110175', 'Seli Eria Dewi', '12345678', 'absdefg'),
('7110176', 'Septy Ratna Damayanti', '12345678', 'absdefg'),
('7110177', 'Shiddaq Quthbuddin Pajriannor', '12345678', 'absdefg'),
('7110178', 'Silvia N Maula', '12345678', 'absdefg'),
('7110179', 'Sitti Rahmawati', '12345678', 'absdefg'),
('7110180', 'Sri Indriyani Siregar', '12345678', 'absdefg'),
('7110182', 'Sutri Vininda', '12345678', 'absdefg'),
('7110183', 'Syahfianti Inung Pratiwi', '12345678', 'absdefg'),
('7110184', 'Syifa Rizqi Qatrunnada', '12345678', 'absdefg'),
('7110185', 'Tiara Guslendra', '12345678', 'absdefg'),
('7110186', 'Tika Novitasari', '12345678', 'absdefg'),
('7110187', 'Tino Aprilian', '12345678', 'absdefg'),
('7110188', 'Tsasya Raudhatunnisa', '12345678', 'absdefg'),
('7110189', 'Ujang Kurnia Krismayanto', '12345678', 'absdefg'),
('7110190', 'Viana Mei Reistiani', '12345678', 'absdefg'),
('7110192', 'Wilda Maria Ulfa', '12345678', 'absdefg'),
('7110193', 'Wildan Muhammad Bahari Sumardi', '12345678', 'absdefg'),
('7110194', 'Wildhan Nizar Ramadhan', '12345678', 'absdefg'),
('7110196', 'Yanro Eric Immanuel Kuron', '12345678', 'absdefg'),
('7110197', 'Yasmin', '12345678', 'absdefg'),
('7110198', 'Yessyana', '12345678', 'absdefg'),
('7110199', 'Yolanda Rizkie Aprilia', '12345678', 'absdefg'),
('7110200', 'Yosherina Dhea', '12345678', 'absdefg'),
('7110202', 'Yumna Nur Said Partuspratama', '12345678', 'absdefg'),
('7110203', 'Yusril Rizqi Putra Abdillah', '12345678', 'absdefg'),
('7110204', 'Zahrotin Dwi Hapsari', '12345678', 'absdefg'),
('7110206', 'Zaidan Najmuddin ', '12345678', 'absdefg'),
('7110207', 'Zaza Yuda Perwira', '12345678', 'absdefg'),
('7110209', 'Novia Putri Lestari', '12345678', 'absdefg'),
('8111001', 'Afflah Rofi'' Jauhar', '12345678', 'absdefg'),
('8111002', 'Agustien Wahyuningsih', '12345678', 'absdefg'),
('8111003', 'Ainur Rahma', '12345678', 'absdefg'),
('8111004', 'Ali akbar championa', '12345678', 'absdefg'),
('8111005', 'Annisa Kahmiliani', '12345678', 'absdefg'),
('8111006', 'Ardelia raras nisreyasa', '12345678', 'absdefg'),
('8111007', 'Arina Mana Sikana', '12345678', 'absdefg'),
('8111008', 'Assyifa Maretta Ilmarahma', '12345678', 'absdefg'),
('8111009', 'Azzahra Shyfa Dieni Islam', '12345678', 'absdefg'),
('8111010', 'Chaula Ramadhani Putri', '12345678', 'absdefg'),
('8111011', 'Chindi Prastiwi', '12345678', 'absdefg'),
('8111012', 'Cynthia As Bahri', '12345678', 'absdefg'),
('8111013', 'Dyah Ayu Pitaloka Sujangi', '12345678', 'absdefg'),
('8111014', 'Ela Nuzul Rahmawati', '12345678', 'absdefg'),
('8111015', 'Elsa Nur Ismadita', '12345678', 'absdefg'),
('8111016', 'Elvera Wahyu Triana', '12345678', 'absdefg'),
('8111017', 'Elyza Nurul Hapsari', '12345678', 'absdefg'),
('8111018', 'Erisa', '12345678', 'absdefg'),
('8111019', 'Fadhel Imam Haichal Tanjung', '12345678', 'absdefg'),
('8111020', 'Fani Visara', '12345678', 'absdefg'),
('8111021', 'Ghitha Nurfalah', '12345678', 'absdefg'),
('8111022', 'Ghytsa Alif Jabir', '12345678', 'absdefg'),
('8111023', 'Kamilia Wafa Pakuani', '12345678', 'absdefg'),
('8111024', 'Lara Aleva Vabian', '12345678', 'absdefg'),
('8111025', 'Lisa Agustina', '12345678', 'absdefg'),
('8111026', 'M. Hafiz Al Ihsan', '12345678', 'absdefg'),
('8111027', 'Maharani Izzaturrahma', '12345678', 'absdefg'),
('8111028', 'Moch Diaz Ilyaza', '12345678', 'absdefg'),
('8111029', 'Moh. Fadli Hidayat DJ M', '12345678', 'absdefg'),
('8111030', 'Mohamad Nur Arifin', '12345678', 'absdefg'),
('8111031', 'Muhammad Al Fatah', '12345678', 'absdefg'),
('8111032', 'Muhammad Rifky Ariyadi', '12345678', 'absdefg'),
('8111033', 'Muhammad Rifqi Wardana', '12345678', 'absdefg'),
('8111034', 'Muhammad Sholahuddin Al''Islami', '12345678', 'absdefg'),
('8111035', 'Nabila kharisma ramadhani', '12345678', 'absdefg'),
('8111036', 'Nadiyah Hanifah', '12345678', 'absdefg'),
('8111037', 'Nurul Syifa Amalia', '12345678', 'absdefg'),
('8111038', 'Nuryanti Nurdin Abdullah', '12345678', 'absdefg'),
('8111039', 'Pinky Aulia Viradina', '12345678', 'absdefg'),
('8111040', 'Prawira Yuda Husada', '12345678', 'absdefg'),
('8111041', 'Rezky Angga Pradana', '12345678', 'absdefg'),
('8111042', 'Rima Mayyadah', '12345678', 'absdefg'),
('8111043', 'Rizka Indah Pristania', '12345678', 'absdefg'),
('8111044', 'Rofin Sumarani Bombang', '12345678', 'absdefg'),
('8111045', 'Sabriella Hafifah', '12345678', 'absdefg'),
('8111046', 'Salsabila Latifah Putri', '12345678', 'absdefg'),
('8111047', 'Salsabila Muna Shobiha', '12345678', 'absdefg'),
('8111048', 'Septriyan Machsus', '12345678', 'absdefg'),
('8111049', 'Tiara Ariradana', '12345678', 'absdefg'),
('8111050', 'Tubagus Langlang Purwasasmita', '12345678', 'absdefg'),
('8111051', 'Wahidya Nurkarim', '12345678', 'absdefg'),
('8111052', 'Yenita Amelia Ika Putri', '12345678', 'absdefg'),
('8111053', 'Yunela tania sari', '12345678', 'absdefg'),
('8111054', 'Zidan Fakhri Zhafiri', '12345678', 'absdefg'),
('8111055', 'Alifah Zalfa Azizah', '12345678', 'abcdef');

-- --------------------------------------------------------

--
-- Table structure for table `kopmer`
--

CREATE TABLE `kopmer` (
  `id` int(2) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `pass` varchar(19) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kelas` varchar(5) DEFAULT NULL,
  `divisi` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kopmer`
--

INSERT INTO `kopmer` (`id`, `nim`, `pass`, `nama`, `kelas`, `divisi`) VALUES
(16, '111810595', 'BPH5', 'Salsabila Muna Shobiha', '2D32', 'BPH'),
(21, '111810627', 'Humsar2', 'Tiara Ariradana', '2D31', 'Humsar'),
(36, '111911086', 'PSDA6', 'Wenny Sukma Nababan', '1D32', 'PSDA'),
(24, '111911104', 'Produksi7', 'Firda Damayanti', '1D33', 'Produksi'),
(26, '111911107', 'Produksi9', 'Alwi hasitah', '1d34', 'Produksi'),
(1, '211709489', 'Pengawas', 'Achmad Alfarel Nuzul Ghazali', '3SE2', 'Pengawas'),
(10, '211709513', 'PSDA2', 'Ainunnisa Lisaninafi''ah Tanrheeina', '3SK6', 'PSDA'),
(7, '211709575', 'Toko3', 'Arrazi Rahadiyan', '3SK1', 'Toko'),
(6, '211709577', 'Toko2', 'Asika Cahyaning Tiwi Pradana', '3SE1', 'Toko'),
(2, '211709687', 'Produksi10', 'Fath Esa Prasanti Kusuma', '3SE6', 'Produksi'),
(5, '211709851', 'Produksi5', 'Muhammad Fauzi Fahzan Ariski', '3SK4', 'Produksi'),
(8, '211709896', 'nimas', 'Nimas Eka Kusuma', '3SE1', 'Humsar'),
(4, '211710005', 'Produksi4', 'Seli Eria Dewi', '3SK4', 'Produksi'),
(3, '211710007', 'Produksi3', 'Septy Ratna Damayanti', '3SE2', 'Produksi'),
(9, '211710081', 'yusril', 'Yusril Rizqi Putra Abdillah', '3SE3', 'Humsar'),
(27, '211810130', 'Produksi11', 'Akhmad Farkhan Hazim', '2ST8', 'Produksi'),
(17, '211810151', 'Produksi1', 'Alifah Zalfa Azizah', '2ST9', 'Produksi'),
(14, '211810190', 'BPH3', 'Ardelia Raras Nisreyasa', '2ST4', 'BPH'),
(13, '211810222', 'BPH2', 'Chindi Prastiwi', '2ST6', 'BPH'),
(15, '211810263', 'BPH4', 'Elsa Nur Ismadita', '2ST8', 'BPH'),
(20, '211810399', 'Humsar1', 'Muhammad Rifky Ariyadi', '2ST7', 'Humsar'),
(22, '211810486', 'PSDA1', 'Nabila Kharisma Ramadhani', '2ST5', 'PSDA'),
(19, '211810594', 'Toko1', 'Salsabila Latifah Putri', '2ST9', 'Toko'),
(28, '211910684', 'Produksi12', 'Alfath Dias Farras', '1ST4', 'Produksi'),
(25, '211910706', 'Produksi8', 'Bella Pradiana', '1ST7', 'Produksi'),
(30, '211910724', 'Toko5', 'Hanifah Vida Indrasari', '1ST4', 'Toko'),
(32, '211910752', 'Humsar3', 'Maziyyatul Mufiedah', '1ST6', 'Humsar'),
(31, '211910822', 'Toko6', 'Anas Rulloh Budi Alamsyah', '1ST5', 'Toko'),
(34, '211910855', 'PSDA4', 'Muhammad Syahrul Faizin', '1ST5', 'PSDA'),
(33, '211911037', 'Humsar4', 'Putri Dhinda Berliana', '1ST2', 'Humsar'),
(35, '211911098', 'PSDA5', 'Nadia Arsyta Putri', '1ST4', 'PSDA'),
(11, '221710035', 'PSDA3', 'Tsasya Raudhatunnisa', '3SD2', 'PSDA'),
(18, '221810421', 'Produksi2', 'Mochamad Diaz Ilyasa', '2KS3', 'Produksi'),
(12, '221810558', 'BPH1', 'Rezky Angga Pradana', '2KS4', 'BPH'),
(29, '221910853', 'Toko4', 'Dita Dwi Wulan Sari', '1KS4', 'Toko'),
(23, '221910940', 'Produksi6', 'Muhammad Arya Septa Kovitra', '1KS4', 'Produksi');

-- --------------------------------------------------------

--
-- Table structure for table `poinbelanja`
--

CREATE TABLE `poinbelanja` (
  `id` int(11) NOT NULL,
  `id_anggota` varchar(7) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poinbelanja`
--

INSERT INTO `poinbelanja` (`id`, `id_anggota`, `tanggal`, `keterangan`) VALUES
(2, '8111032', '2019-01-29', 'Poin Belanja'),
(3, '7110080', '2019-01-30', 'Poin Belanja'),
(4, '7110028', '2019-01-30', 'Poin Belanja'),
(5, '7110028', '2019-01-30', 'Poin Belanja'),
(6, '8111047', '2019-01-30', 'Poin Belanja'),
(7, '8111049', '2019-01-30', 'Poin Belanja'),
(8, '7110209', '2019-01-30', 'Poin Belanja'),
(9, '7110209', '2019-01-30', 'Poin Belanja'),
(10, '7110143', '2019-01-30', 'Poin Belanja'),
(11, '7110129', '2019-01-30', 'Poin Belanja'),
(12, '8111032', '2019-01-31', 'Poin Belanja'),
(13, '7110209', '2019-01-31', 'Poin Belanja'),
(14, '8111049', '2019-01-31', 'Poin Belanja'),
(15, '8111047', '2019-01-31', 'Poin Belanja'),
(16, '7110129', '2019-01-31', 'Poin Belanja'),
(17, '8111032', '2019-02-01', 'Poin Belanja'),
(18, '8111015', '2019-02-01', 'Poin Belanja'),
(19, '7110077', '2019-02-04', 'Poin Belanja'),
(20, '8111035', '2019-02-04', 'Poin Belanja'),
(21, '8111046', '2019-02-04', 'Poin Belanja'),
(22, '8111015', '2019-02-04', 'Poin Belanja'),
(23, '7110188', '2019-02-04', 'Poin Belanja'),
(24, '8111032', '2019-02-04', 'Poin Belanja'),
(25, '8111032', '2019-02-04', 'Poin Belanja'),
(26, '7110064', '2019-02-04', 'Poin Belanja'),
(27, '7110203', '2019-02-04', 'Poin Belanja'),
(28, '7110001', '2019-02-04', 'Poin Belanja'),
(29, '8111046', '2019-02-06', 'Poin Belanja'),
(30, '8111032', '2019-02-06', 'Poin Belanja'),
(31, '7110188', '2019-02-06', 'Poin Belanja'),
(32, '7110143', '2019-02-06', 'Poin Belanja'),
(33, '8111049', '2019-02-06', 'Poin Belanja'),
(34, '7110064', '2019-02-07', 'Poin Belanja'),
(35, '7110118', '2019-02-07', 'Poin Belanja'),
(36, '7110025', '2019-02-07', 'Poin Belanja'),
(37, '8111032', '2019-02-07', 'Poin Belanja'),
(38, '8111032', '2019-02-07', 'Poin Belanja'),
(39, '8111048', '2019-02-07', 'Poin Belanja'),
(40, '8111048', '2019-02-07', 'Poin Belanja'),
(41, '7110203', '2019-02-07', 'Poin Belanja'),
(42, '8111032', '2019-02-07', 'Poin Belanja'),
(43, '8111032', '2019-02-08', 'Poin Belanja'),
(44, '8111015', '2019-02-11', 'Poin Belanja'),
(45, '7110203', '2019-02-11', 'Poin Belanja'),
(46, '7110175', '2019-02-11', 'Poin Belanja'),
(47, '7110121', '2019-02-11', 'Poin Belanja'),
(48, '8111032', '2019-02-11', 'Poin Belanja'),
(49, '7110046', '2019-02-11', 'Poin Belanja'),
(50, '7110142', '2019-02-11', 'Poin Belanja'),
(51, '8111047', '2019-02-11', 'Poin Belanja'),
(52, '8111049', '2019-02-11', 'Poin Belanja'),
(53, '8111032', '2019-02-11', 'Poin Belanja'),
(54, '7110188', '2019-02-12', 'Poin Belanja'),
(55, '8111049', '2019-02-12', 'Poin Belanja'),
(56, '7110143', '2019-02-12', 'Poin Belanja'),
(57, '8111047', '2019-02-12', 'Poin Belanja'),
(58, '8111032', '2019-02-12', 'Poin Belanja'),
(59, '7110142', '2019-02-12', 'Poin Belanja'),
(60, '8111046', '2019-02-12', 'Poin Belanja'),
(61, '7110121', '2019-02-12', 'Poin Belanja'),
(62, '8111032', '2019-02-13', 'Poin Belanja'),
(63, '7110152', '2019-02-13', 'Poin Belanja'),
(64, '7110064', '2019-02-13', 'Poin Belanja'),
(65, '7110085', '2019-02-13', 'Poin Belanja'),
(66, '7110203', '2019-02-13', 'Poin Belanja'),
(67, '8111032', '2019-02-14', 'Poin Belanja'),
(68, '7110152', '2019-02-14', 'Poin Belanja'),
(69, '7110067', '2019-02-14', 'Poin Belanja'),
(70, '7110067', '2019-02-14', 'Poin Belanja'),
(71, '7110139', '2019-02-14', 'Poin Belanja'),
(72, '7110129', '2019-02-14', 'Poin Belanja'),
(73, '7110176', '2019-02-14', 'Poin Belanja'),
(74, '7110152', '2019-02-15', 'Poin Belanja'),
(75, '8111047', '2019-02-15', 'Poin Belanja'),
(76, '8111032', '2019-02-18', 'Poin Belanja'),
(77, '7110078', '2019-02-18', 'Poin Belanja'),
(78, '7110143', '2019-02-18', 'Poin Belanja'),
(79, '7110001', '2019-02-19', 'Poin Belanja'),
(80, '8111015', '2019-02-19', 'Poin Belanja'),
(81, '8111032', '2019-02-20', 'Poin Belanja'),
(82, '8111049', '2019-02-20', 'Poin Belanja'),
(83, '8111049', '2019-02-20', 'Poin Belanja'),
(84, '7110152', '2019-02-21', 'Poin Belanja'),
(85, '7110025', '2019-02-22', 'Poin Belanja'),
(86, '8111035', '2019-02-22', 'Poin Belanja'),
(87, '7110064', '2019-02-25', 'Poin Belanja'),
(88, '7110126', '2019-02-26', 'Poin Belanja'),
(89, '8111049', '2019-02-26', 'Poin Belanja'),
(90, '8111049', '2019-02-26', 'Poin Belanja'),
(91, '7110143', '2019-02-27', 'Poin Belanja'),
(92, '7110064', '2019-02-27', 'Poin Belanja'),
(93, '7110203', '2019-02-27', 'Poin Belanja'),
(94, '7110129', '2019-02-27', 'Poin Belanja'),
(95, '7110188', '2019-02-28', 'Poin Belanja'),
(96, '7110188', '2019-02-28', 'Poin Belanja'),
(97, '7110188', '2019-02-28', 'Poin Belanja'),
(98, '7110188', '2019-02-28', 'Poin Belanja'),
(99, '7110064', '2019-03-23', 'Poin Belanja'),
(100, '7110064', '2019-03-23', 'Poin Belanja'),
(101, '7110046', '2019-03-25', 'Poin Belanja'),
(102, '7110064', '2019-03-26', 'Poin Belanja'),
(103, '8111049', '2019-03-26', 'Poin Belanja'),
(104, '7110108', '2019-03-26', 'Poin Belanja'),
(105, '8111047', '2019-03-27', 'Poin Belanja'),
(106, '7110176', '2019-03-27', 'Poin Belanja'),
(107, '8111032', '2019-03-27', 'Poin Belanja'),
(108, '8111048', '2019-03-27', 'Poin Belanja'),
(109, '7110001', '2019-03-28', 'Poin Belanja'),
(110, '8111032', '2019-04-01', 'Poin Belanja'),
(111, '8111049', '2019-04-01', 'Poin Belanja'),
(112, '8111035', '2019-04-02', 'Poin Belanja'),
(113, '7110064', '2019-04-04', 'Poin Belanja'),
(114, '7110064', '2019-04-05', 'Poin Belanja'),
(115, '7110143', '2019-04-08', 'Poin Belanja'),
(116, '8111049', '2019-04-08', 'Poin Belanja'),
(117, '7110137', '2019-04-08', 'Poin Belanja'),
(118, '8111032', '2019-04-08', 'Poin Belanja'),
(119, '7110142', '2019-04-09', 'Poin Belanja'),
(120, '8111047', '2019-04-10', 'Poin Belanja'),
(121, '7110064', '2019-04-10', 'Poin Belanja'),
(122, '7110064', '2019-04-10', 'Poin Belanja'),
(123, '8111049', '2019-04-10', 'Poin Belanja'),
(124, '8111049', '2019-04-10', 'Poin Belanja'),
(125, '8111049', '2019-04-10', 'Poin Belanja'),
(126, '8111015', '2019-04-10', 'Poin Belanja'),
(127, '8111025', '2019-04-11', 'Poin Belanja'),
(128, '7110129', '2019-04-11', 'Poin Belanja'),
(129, '7110064', '2019-04-11', 'Poin Belanja'),
(130, '7110164', '2019-04-11', 'Poin Belanja'),
(131, '7110064', '2019-04-12', 'Poin Belanja'),
(132, '7110085', '2019-04-15', 'Poin Belanja'),
(133, '8111048', '2019-04-15', 'Poin Belanja'),
(134, '7110064', '2019-04-15', 'Poin Belanja'),
(135, '7110121', '2019-04-16', 'Poin Belanja'),
(136, '7110065', '2019-04-18', 'Poin Belanja'),
(137, '8111032', '2019-04-18', 'Poin Belanja'),
(138, '8111032', '2019-04-18', 'Poin Belanja'),
(139, '8111032', '2019-04-18', 'Poin Belanja'),
(140, '8111032', '2019-04-18', 'Poin Belanja'),
(141, '7110064', '2019-04-18', 'Poin Belanja'),
(142, '7110064', '2019-04-18', 'Poin Belanja'),
(143, '7110064', '2019-04-18', 'Poin Belanja'),
(144, '7110176', '2019-04-22', 'Poin Belanja'),
(145, '7110121', '2019-04-23', 'Poin Belanja'),
(146, '7110123', '2019-04-24', 'Poin Belanja'),
(147, '7110129', '2019-04-24', 'Poin Belanja'),
(148, '7110143', '2019-04-25', 'Poin Belanja'),
(149, '7110064', '2019-04-29', 'Poin Belanja'),
(150, '8111047', '2019-04-29', 'Poin Belanja'),
(151, '7110066', '2019-04-29', 'Poin Belanja'),
(152, '7110129', '2019-04-29', 'Poin Belanja'),
(153, '8111046', '2019-04-30', 'Poin Belanja'),
(154, '8111046', '2019-04-30', 'Poin Belanja'),
(155, '7110152', '2019-04-30', 'Poin Belanja'),
(156, '7110203', '2019-04-30', 'Poin Belanja'),
(157, '8111015', '2019-05-02', 'Poin Belanja'),
(158, '8111032', '2019-05-10', 'Poin Belanja'),
(159, '8111014', '2019-08-20', 'Poin Belanja'),
(160, '7110118', '2019-08-20', 'Poin Belanja'),
(161, '7110161', '2019-08-20', 'Poin Belanja'),
(162, '7110064', '2019-08-20', 'Poin Belanja'),
(163, '7110064', '2019-08-20', 'Poin Belanja'),
(164, '8111055', '2019-08-21', 'Poin Belanja'),
(165, '8111055', '2019-08-21', 'Poin Belanja'),
(166, '8111048', '2019-08-21', 'Poin Belanja'),
(167, '8111048', '2019-08-21', 'Poin Belanja'),
(168, '8111048', '2019-08-21', 'Poin Belanja'),
(169, '7110064', '2019-08-22', 'Poin Belanja'),
(170, '8111048', '2019-08-23', 'Poin Belanja'),
(171, '7110185', '2019-08-26', 'Poin Belanja'),
(172, '7110079', '2019-08-26', 'Poin Belanja'),
(173, '8111049', '2019-08-26', 'Poin Belanja'),
(174, '7110161', '2019-08-27', 'Poin Belanja'),
(175, '8111055', '2019-08-28', 'Poin Belanja'),
(176, '7110100', '2019-08-28', 'Poin Belanja'),
(177, '8111041', '2019-09-02', 'Poin Belanja'),
(178, '8111041', '2019-09-03', 'Poin Belanja'),
(179, '7110025', '2019-09-04', 'Poin Belanja'),
(180, '8111035', '2019-09-09', 'Poin Belanja'),
(181, '8111034', '2019-09-11', 'Poin Belanja'),
(182, '7110183', '2019-09-11', 'Poin Belanja'),
(183, '7110118', '2019-09-12', 'Poin Belanja'),
(184, '7110118', '2019-09-12', 'Poin Belanja'),
(185, '8111047', '2019-09-13', 'Poin Belanja'),
(186, '8111041', '2019-09-16', 'Poin Belanja'),
(187, '7110161', '2019-09-16', 'Poin Belanja'),
(188, '8111041', '2019-09-17', 'Poin Belanja'),
(189, '8111048', '2019-09-18', 'Poin Belanja'),
(190, '7110176', '2019-09-18', 'Poin Belanja'),
(191, '8111041', '2019-09-19', 'Poin Belanja'),
(192, '7110064', '2019-09-19', 'Poin Belanja'),
(193, '8111032', '2019-09-26', 'Poin Belanja'),
(194, '8111032', '2019-09-27', 'Poin Belanja'),
(195, '7110176', '2019-09-27', 'Poin Belanja'),
(196, '7110192', '2019-09-30', 'Poin Belanja'),
(197, '7110176', '2019-09-30', 'Poin Belanja'),
(198, '8111016', '2019-09-30', 'Poin Belanja'),
(199, '8111032', '2019-09-30', 'Poin Belanja'),
(200, '8111041', '2019-09-30', 'Poin Belanja'),
(201, '8111041', '2019-10-01', 'Poin Belanja'),
(202, '7110152', '2019-10-01', 'Poin Belanja'),
(203, '8111032', '2019-10-21', 'Poin Belanja'),
(204, '8111032', '2019-10-21', 'Poin Belanja'),
(205, '8111032', '2019-10-21', 'Poin Belanja'),
(206, '7110064', '2019-10-22', 'Poin Belanja'),
(207, '8111055', '2019-10-22', 'Poin Belanja'),
(208, '7110129', '2019-10-25', 'Poin Belanja'),
(209, '7110100', '2019-10-29', 'Poin Belanja'),
(210, '7110152', '2019-11-01', 'Poin Belanja'),
(211, '7110183', '2019-11-27', 'Poin Belanja'),
(212, '8111032', '2020-01-09', 'Poin Belanja'),
(213, '8111032', '2020-01-15', 'Poin Belanja'),
(214, '7110113', '2020-01-19', 'Poin Belanja'),
(215, '7110113', '2020-01-20', 'Poin Belanja'),
(216, '7110176', '2020-02-05', 'Poin Belanja');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` tinyint(3) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `no` int(100) NOT NULL,
  `nim` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `tanggal_jaga` date NOT NULL,
  `jam_datang` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `pekerjaan_selama_jaga` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`no`, `nim`, `pass`, `tanggal_jaga`, `jam_datang`, `jam_selesai`, `pekerjaan_selama_jaga`) VALUES
(738, '211910724', 'toko5', '2020-02-07', '07:55:00', '10:53:36', 1),
(739, '211810263', 'bph4', '2020-02-07', '09:45:00', '11:54:06', 0),
(740, '211810594', 'toko1', '2020-02-07', '10:30:00', '12:32:48', 0),
(741, '211810151', 'produksi1', '2020-02-07', '10:44:00', '12:35:51', 1),
(742, '211910752', 'humsar3', '2020-02-07', '11:00:00', '13:04:20', 1),
(743, '211810263', 'bph4', '2020-02-07', '12:00:00', '14:07:17', 0),
(744, '111810595', 'bph5', '2020-02-07', '12:00:00', '14:07:40', 0),
(745, '221810558', 'bph1', '2020-02-07', '11:30:00', '14:10:17', 1),
(746, '211810594', 'toko1', '2020-02-07', '12:25:00', '14:26:34', 2),
(747, '211810151', 'produksi1', '2020-02-07', '12:30:00', '15:51:44', 2),
(748, '211810263', 'bph4', '2020-02-07', '14:00:00', '16:00:37', 1),
(749, '111810595', 'bph5', '2020-02-07', '14:00:00', '16:01:07', 1),
(750, '211910822', 'toko6', '2020-02-07', '13:00:00', '16:01:31', 1),
(751, '211910752', 'humsar3', '2020-02-07', '13:00:00', '16:10:50', 1),
(752, '211810594', 'toko1', '2020-02-07', '14:30:00', '16:32:07', 2),
(753, '221810558', 'bph1', '2020-02-07', '14:30:00', '16:32:52', 2),
(754, '211810151', 'produksi1', '2020-02-07', '14:30:00', '16:34:03', 1),
(653, '211810263', 'BPH4', '2020-01-30', '00:00:10', '12:49:03', 1),
(654, '211810263', 'bph4', '2020-01-30', '13:00:00', '16:09:37', 1),
(655, '111810595', 'bph5', '2020-01-30', '13:00:00', '16:10:18', 1),
(656, '211810222', 'bph2', '2020-01-30', '12:30:00', '16:10:50', 0),
(657, '211810190', 'BPH3', '2020-01-30', '13:00:00', '16:11:47', 1),
(658, '211910752', 'hUMSAR3', '2020-01-30', '14:26:00', '16:26:57', 1),
(659, '111911086', 'PSDA6', '2020-01-30', '00:00:14', '16:28:00', 1),
(660, '211910724', 'TOKO5', '2020-01-30', '00:00:12', '16:29:16', 0),
(661, '211910855', 'psda4', '2020-01-30', '00:00:14', '16:30:40', 1),
(662, '211810594', 'toko1', '2020-01-31', '07:00:00', '09:25:40', 2),
(663, '211810399', 'humsar1', '2020-01-31', '07:00:00', '09:26:37', 2),
(664, '211910724', 'toko5', '2020-01-31', '00:00:07', '09:27:06', 3),
(665, '211911098', 'psda5', '2020-01-31', '00:00:07', '09:37:37', 2),
(666, '221910853', 'toko4', '2020-01-31', '00:00:07', '10:05:47', 1),
(667, '111911104', 'produksi7', '2020-01-31', '07:40:00', '10:11:46', 0),
(668, '211810594', 'TOKO1', '2020-01-31', '09:00:00', '11:08:48', 1),
(669, '211810399', 'HUMSAR1', '2020-01-31', '09:00:00', '11:10:06', 1),
(670, '211910822', 'TOKO6', '2020-01-31', '09:00:00', '11:10:32', 1),
(671, '221910940', 'PRODUKSI6', '2020-01-31', '00:00:09', '12:53:50', 1),
(672, '221810421', 'PRODUKSI2', '2020-01-31', '08:00:00', '12:59:50', 1),
(673, '221810558', 'BPH1', '2020-01-31', '10:00:00', '13:00:39', 1),
(674, '211810594', 'TOKO1', '2020-01-31', '11:00:00', '13:05:43', 2),
(675, '211810151', 'PRODUKSI1', '2020-01-31', '10:05:00', '13:08:50', 2),
(676, '211910822', 'toko6', '2020-01-31', '13:00:00', '16:09:18', 1),
(677, '211810399', 'humsar1', '2020-01-31', '13:00:00', '16:09:26', 2),
(678, '211910752', 'humsar3', '2020-01-31', '00:00:13', '16:25:53', 4),
(679, '221910940', 'produksi6', '2020-02-03', '00:00:07', '09:48:32', 1),
(680, '211910706', 'produksi8', '2020-02-03', '00:00:07', '09:51:08', 1),
(681, '211910684', 'produksi12', '2020-02-03', '00:00:07', '09:51:48', 1),
(682, '221810421', 'produksi2', '2020-02-03', '08:00:00', '11:23:58', 1),
(683, '111911104', 'produksi7', '2020-02-03', '10:10:00', '11:24:16', 0),
(684, '211910684', 'PRODUKSI12', '2020-02-03', '10:00:00', '12:30:59', 1),
(685, '211810399', 'HUMSAR1', '2020-02-03', '10:00:00', '12:49:26', 1),
(686, '221810421', 'PRODUKSI2', '2020-02-03', '10:00:00', '12:50:42', 1),
(687, '211810263', 'BPH4', '2020-02-03', '13:00:00', '16:25:01', 1),
(688, '111810595', 'bph5', '2020-02-04', '07:20:00', '09:50:34', 1),
(689, '221810421', 'produksi2', '2020-02-04', '07:20:00', '09:51:00', 1),
(690, '211810594', 'toko1', '2020-02-04', '08:00:00', '09:51:53', 2),
(691, '211810222', 'bph2', '2020-02-04', '10:00:00', '12:22:22', 0),
(692, '211810594', 'toko1', '2020-02-04', '10:00:00', '12:24:12', 0),
(693, '211810399', 'humsar1', '2020-02-04', '10:00:00', '12:46:04', 2),
(694, '221810421', 'produksi2', '2020-02-04', '10:00:00', '13:04:59', 1),
(695, '211710081', 'yusril', '2020-02-04', '00:00:12', '13:06:53', 1),
(696, '211810399', 'humsar1', '2020-02-04', '13:00:00', '16:06:26', 2),
(697, '211709896', 'nimas', '2020-02-04', '13:00:00', '16:07:09', 1),
(698, '221810558', 'bph1', '2020-02-04', '13:00:00', '16:08:27', 1),
(699, '211910684', 'Produksi12', '2020-02-04', '13:00:00', '16:09:11', 2),
(700, '111911086', 'psda6', '2020-02-04', '14:00:00', '16:09:58', 1),
(701, '211910752', 'Humsar3', '2020-02-04', '14:00:00', '16:10:32', 1),
(702, '211810222', 'bph2', '2020-02-04', '13:00:00', '16:11:05', 1),
(703, '211911098', 'psda5', '2020-02-04', '13:00:00', '16:11:27', 1),
(704, '211810263', 'bph4', '2020-02-04', '13:00:00', '16:15:21', 1),
(705, '211910855', 'PSDA4', '2020-02-04', '00:00:14', '16:18:55', 1),
(706, '211710081', 'yusril', '2020-02-05', '00:00:09', '10:07:36', 1),
(707, '111810595', 'bph5', '2020-02-05', '10:00:00', '12:01:23', 1),
(708, '211810594', 'toko1', '2020-02-05', '10:00:00', '12:01:48', 3),
(709, '211810151', 'produksi1', '2020-02-05', '10:00:00', '12:02:12', 2),
(710, '221810421', 'produksi2', '2020-02-05', '10:00:00', '12:02:36', 1),
(711, '211810594', 'toko1', '2020-02-05', '00:00:11', '13:16:58', 1),
(712, '211810151', 'produksi1', '2020-02-05', '00:00:11', '13:20:32', 1),
(713, '211910684', 'PRODUKSI12', '2020-02-05', '11:45:00', '13:21:06', 0),
(714, '221910853', 'TOKO4', '2020-02-05', '12:15:00', '14:36:53', 5),
(715, '211810222', 'BPH2', '2020-02-05', '13:00:00', '15:28:33', 5),
(716, '211910724', 'TOKO5', '2020-02-05', '11:40:00', '15:28:54', 3),
(717, '111810595', 'bph5', '2020-02-05', '12:00:00', '16:01:42', 3),
(718, '211911098', 'psda5', '2020-02-05', '11:30:00', '16:01:56', 0),
(719, '211910752', 'Humsar3', '2020-02-05', '13:41:00', '16:03:18', 1),
(720, '211709687', 'produksi10', '2020-02-05', '13:30:00', '16:19:50', 5),
(721, '211709896', 'nimas', '2020-02-05', '13:00:00', '16:20:10', 5),
(722, '211911037', 'Humsar4', '2020-02-06', '00:00:07', '09:35:36', 0),
(723, '111810595', 'bph5', '2020-02-06', '07:40:00', '09:36:25', 2),
(724, '211810130', 'produksi11', '2020-02-06', '10:00:00', '12:31:07', 1),
(725, '211910684', 'produksi12', '2020-02-06', '10:00:00', '12:32:28', 0),
(726, '211911098', 'psda5', '2020-02-06', '10:00:00', '12:33:07', 0),
(727, '211810263', 'bph4', '2020-02-06', '10:00:00', '12:43:18', 1),
(728, '221810421', 'produksi2', '2020-02-06', '10:00:00', '12:46:37', 1),
(729, '211810594', 'toko1', '2020-02-06', '10:00:00', '12:49:07', 1),
(730, '211810151', 'produksi1', '2020-02-06', '10:10:00', '12:49:47', 1),
(731, '211810399', 'humsar1', '2020-02-06', '13:00:00', '16:02:40', 2),
(732, '211910855', 'psda4', '2020-02-06', '14:00:00', '16:03:15', 1),
(733, '111810595', 'bph5', '2020-02-07', '07:30:00', '10:06:07', 1),
(734, '211810594', 'toko1', '2020-02-07', '09:30:00', '10:23:52', 1),
(735, '221810558', 'bph1', '2020-02-07', '08:15:00', '10:24:45', 1),
(736, '211910822', 'toko6', '2020-02-07', '08:15:00', '10:27:30', 1),
(737, '211810151', 'produksi1', '2020-02-07', '08:40:00', '10:44:41', 1),
(652, '211810399', 'HUMSAR1', '2020-01-30', '10:00:00', '12:44:08', 2),
(523, '211810594', 'toko1', '2020-01-19', '14:00:00', '16:02:03', 0),
(524, '211910706', 'PRODUKSI8', '2020-01-20', '00:00:07', '09:44:48', 0),
(525, '221910940', 'pRODUKSI6', '2020-01-20', '00:00:09', '09:46:41', 0),
(526, '221810421', 'PRODUKSI2', '2020-01-20', '00:00:07', '09:48:44', 0),
(527, '211910684', 'PRODUKSI12', '2020-01-20', '09:30:00', '12:21:28', 1),
(528, '111911104', 'pRODUKSI7', '2020-01-20', '10:11:00', '12:22:09', 1),
(529, '211810399', 'HUMSAR1', '2020-01-20', '09:45:00', '12:29:13', 2),
(530, '221810421', 'produksi2', '2020-01-20', '00:00:10', '12:41:19', 1),
(531, '111911086', 'psda6', '2020-01-20', '00:00:13', '16:00:22', 1),
(532, '211810151', 'produksi1', '2020-01-20', '14:10:00', '16:09:46', 0),
(533, '211810222', 'bph2', '2020-01-20', '13:00:00', '16:10:20', 1),
(534, '211710007', 'produksi3', '2020-01-20', '00:00:14', '16:16:39', 1),
(535, '211810594', 'toko1', '2020-01-20', '12:00:00', '16:17:55', 1),
(536, '221810558', 'BPH1', '2020-01-20', '00:00:12', '16:21:17', 1),
(537, '211810222', 'bph2', '2020-01-21', '08:30:00', '09:36:21', 0),
(538, '221810421', 'produksi2', '2020-01-21', '00:00:07', '10:00:32', 0),
(539, '211810399', 'humsar1', '2020-01-21', '07:40:00', '10:01:37', 2),
(540, '211810594', 'toko1', '2020-01-21', '09:00:00', '11:00:59', 1),
(541, '221910853', 'toko4', '2020-01-21', '09:30:00', '12:32:14', 0),
(542, '221910940', 'produksi6', '2020-01-21', '00:00:10', '13:02:31', 1),
(543, '211910752', 'Humsar3', '2020-01-21', '13:26:00', '15:26:16', 1),
(544, '211810486', 'PSDA1', '2020-01-21', '14:00:00', '16:00:42', 1),
(545, '211910822', 'TOKO6', '2020-01-21', '13:45:00', '16:04:57', 1),
(546, '211910855', 'psda4', '2020-01-21', '13:38:00', '16:06:21', 1),
(547, '111810595', 'BPH5', '2020-01-21', '12:45:00', '16:21:44', 2),
(548, '211810399', 'humsar1', '2020-01-21', '12:30:00', '16:39:33', 2),
(549, '211911037', 'hUMSAR4', '2020-01-22', '00:00:07', '09:32:39', 1),
(550, '211810399', 'HUMSAR1', '2020-01-22', '07:30:00', '09:49:57', 2),
(551, '211709489', 'pengawas', '2020-01-22', '10:00:00', '12:27:53', 1),
(552, '221810558', 'bph1', '2020-01-22', '10:00:00', '12:28:42', 1),
(553, '211810399', 'HUMSAR1', '2020-01-22', '10:00:00', '12:36:24', 1),
(554, '211810594', 'toko1', '2020-01-22', '10:00:00', '12:57:47', 2),
(555, '211810151', 'produksi1', '2020-01-22', '10:58:00', '12:58:18', 1),
(556, '111810595', 'bph5', '2020-01-22', '09:45:00', '12:58:55', 1),
(557, '221810421', 'produksi2', '2020-01-22', '09:30:00', '12:59:26', 0),
(558, '211910752', 'Humsar3', '2020-01-22', '14:00:00', '16:02:04', 1),
(559, '211910724', 'toko5', '2020-01-22', '13:28:00', '16:02:33', 1),
(560, '111911086', 'psda6', '2020-01-22', '13:38:00', '16:03:35', 1),
(561, '111911107', 'produksi9', '2020-01-22', '13:37:00', '16:25:50', 2),
(562, '211810151', 'produksi1', '2020-01-23', '07:03:00', '09:06:03', 0),
(563, '111911107', 'produksi9', '2020-01-23', '08:11:00', '10:00:41', 0),
(564, '211810594', 'toko1', '2020-01-23', '09:00:00', '11:02:18', 1),
(565, '211810151', 'produksi1', '2020-01-23', '09:16:00', '11:37:27', 0),
(566, '211810222', 'bph2', '2020-01-23', '10:00:00', '12:15:16', 0),
(567, '211810263', 'bph4', '2020-01-23', '10:00:00', '12:21:21', 0),
(568, '211911098', 'psda5', '2020-01-23', '00:00:10', '12:21:49', 0),
(569, '211709687', 'PRODUKSI10', '2020-01-23', '09:45:00', '12:22:24', 4),
(570, '221810421', 'PRODUKSI2', '2020-01-23', '10:00:00', '12:46:42', 1),
(571, '211810130', 'PRODUKSI11', '2020-01-23', '10:00:00', '12:47:08', 1),
(572, '221810558', 'BPH1', '2020-01-23', '10:00:00', '12:47:46', 1),
(573, '211810594', 'toko1', '2020-01-23', '11:02:00', '13:03:35', 1),
(574, '211910855', 'PSDA4', '2020-01-23', '00:00:13', '16:01:49', 1),
(575, '211709896', 'nimas', '2020-01-24', '11:00:00', '13:09:35', 1),
(576, '211810130', 'Produksi11', '2020-01-24', '07:30:00', '13:22:59', 1),
(577, '211810263', 'Bph4', '2020-01-24', '08:00:00', '13:23:30', 1),
(578, '211709896', 'nimas', '2020-01-24', '11:00:00', '13:24:46', 1),
(579, '211810151', 'Produksi1', '2020-01-24', '10:00:00', '13:25:15', 1),
(580, '221810558', 'Bph1', '2020-01-24', '10:00:00', '13:29:02', 1),
(581, '211910752', 'Humsar3', '2020-01-24', '12:00:00', '14:07:01', 1),
(582, '111911104', 'Produksi7', '2020-01-24', '07:00:00', '14:07:22', 1),
(583, '111911107', 'produksi9', '2020-01-24', '08:15:00', '14:10:49', 1),
(584, '221910853', 'toko4', '2020-01-24', '08:14:00', '14:11:18', 0),
(585, '111810595', 'bph5', '2020-01-24', '00:00:08', '14:12:04', 0),
(586, '211910724', 'toko5', '2020-01-24', '07:35:00', '14:12:45', 0),
(587, '221910940', 'produksi6', '2020-01-24', '00:00:07', '15:27:23', 2),
(588, '111911107', 'produksi9', '2020-01-24', '13:30:00', '15:30:39', 0),
(589, '211910684', 'produksi12', '2020-01-24', '08:30:00', '15:32:29', 1),
(590, '111911104', 'produksi7', '2020-01-24', '13:30:00', '15:33:25', 0),
(591, '211910752', 'Humsar3', '2020-01-24', '13:34:29', '15:34:29', 1),
(592, '211910855', 'PSDA4', '2020-01-24', '13:30:00', '15:40:37', 1),
(593, '211911098', 'PSDA5', '2020-01-24', '14:00:00', '15:41:20', 1),
(594, '221810421', 'PRODUKSI2', '2020-01-24', '11:00:00', '15:42:23', 1),
(595, '221810558', 'bph1', '2020-01-24', '13:00:00', '16:02:31', 1),
(596, '211910706', 'produksi8', '2020-01-25', '13:07:00', '15:09:17', 0),
(597, '211910752', 'humsar3', '2020-01-25', '13:00:00', '15:44:15', 0),
(598, '111911104', 'produksi7', '2020-01-25', '13:00:00', '15:45:11', 1),
(599, '221810421', 'produksi2', '2020-01-25', '13:00:00', '16:36:24', 2),
(600, '211910822', 'toko6', '2020-01-25', '13:00:00', '16:36:49', 1),
(601, '211810594', 'toko1', '2020-01-25', '13:20:00', '16:37:19', 2),
(602, '211810399', 'humsar1', '2020-01-25', '13:00:00', '16:38:03', 2),
(603, '221910940', 'produksi6', '2020-01-25', '13:00:00', '16:39:14', 1),
(604, '221810558', 'bph1', '2020-01-25', '13:00:00', '16:39:46', 1),
(605, '221910940', 'PRODUKSI6', '2020-01-27', '00:00:07', '09:53:34', 1),
(606, '221810421', 'PRODUKSI2', '2020-01-27', '07:00:00', '09:54:27', 1),
(607, '211910706', 'PRODUKSI8', '2020-01-27', '07:35:00', '09:59:40', 0),
(608, '221810558', 'BPH1', '2020-01-27', '08:15:00', '10:26:15', 1),
(609, '111911104', 'PRODUKSI7', '2020-01-27', '10:05:00', '12:31:26', 0),
(610, '221710035', 'PSDA3', '2020-01-27', '00:00:10', '12:32:23', 1),
(611, '211810399', 'HUMSAR1', '2020-01-27', '10:00:00', '12:54:46', 2),
(612, '211910684', 'pRODUKSI12', '2020-01-27', '09:45:00', '12:55:14', 1),
(613, '221810421', 'PRODUKSI2', '2020-01-27', '10:00:00', '12:55:54', 1),
(614, '221810558', 'BPH1', '2020-01-27', '00:00:10', '13:01:18', 1),
(615, '211710007', 'produksi3', '2020-01-27', '00:00:13', '16:04:01', 1),
(616, '221810421', 'produksi2', '2020-01-27', '13:00:00', '16:04:30', 1),
(617, '221810558', 'bph1', '2020-01-27', '13:00:00', '16:06:35', 1),
(618, '211810594', 'toko1', '2020-01-27', '00:00:12', '16:07:48', 0),
(619, '211910752', 'Humsar3', '2020-01-27', '14:10:00', '16:11:11', 1),
(620, '211810130', 'produksi11', '2020-01-28', '00:00:08', '09:55:49', 1),
(621, '221910853', 'toko4', '2020-01-28', '08:00:00', '09:58:52', 0),
(622, '111810595', 'bph5', '2020-01-28', '08:25:00', '10:00:28', 1),
(623, '211810594', 'toko1', '2020-01-28', '08:20:00', '10:00:57', 2),
(624, '221810558', 'bph1', '2020-01-28', '00:00:07', '10:01:45', 1),
(625, '221810421', 'produksi2', '2020-01-28', '00:00:07', '10:01:56', 1),
(626, '211810151', 'produksi1', '2020-01-28', '09:45:00', '10:55:45', 2),
(627, '111911104', 'produksi7', '2020-01-28', '10:10:00', '12:15:56', 0),
(628, '211810399', 'humsar1', '2020-01-28', '10:10:00', '12:33:16', 1),
(629, '221810421', 'produksi2', '2020-01-28', '10:00:00', '12:34:00', 1),
(630, '211810594', 'toko1', '2020-01-28', '10:00:00', '12:40:38', 2),
(631, '221910853', 'TOKO4', '2020-01-28', '12:59:00', '15:14:43', 1),
(632, '111810595', 'BPH5', '2020-01-28', '00:00:12', '15:15:29', 1),
(633, '211810399', 'HUMSAR1', '2020-01-28', '12:30:00', '16:23:19', 2),
(634, '211911037', 'Humsar4', '2020-01-29', '08:00:00', '09:42:46', 1),
(635, '211810399', 'humsar1', '2020-01-29', '07:30:00', '10:08:18', 2),
(636, '111911107', 'produksi9', '2020-01-29', '10:07:00', '12:53:40', 0),
(637, '111810595', 'bph5', '2020-01-29', '09:00:00', '12:54:12', 0),
(638, '211810222', 'bph2', '2020-01-29', '10:30:00', '12:54:46', 1),
(639, '211810399', 'humsar1', '2020-01-29', '10:09:00', '13:08:59', 2),
(640, '211910822', 'toko6', '2020-01-29', '13:00:00', '15:51:00', 1),
(641, '111810595', 'bph5', '2020-01-29', '12:00:00', '16:10:55', 1),
(642, '111911086', 'psda6', '2020-01-29', '13:00:00', '16:11:37', 1),
(643, '211910724', 'toko5', '2020-01-29', '13:00:00', '16:12:07', 1),
(644, '211810222', 'bph2', '2020-01-29', '13:00:00', '16:12:38', 1),
(645, '221810421', 'produksi2', '2020-01-29', '13:00:00', '16:13:00', 1),
(646, '111911107', 'produksi9', '2020-01-30', '07:48:00', '09:53:07', 0),
(647, '211810594', 'toko1', '2020-01-30', '10:00:00', '12:34:18', 0),
(648, '211911037', 'HUMSAR4', '2020-01-30', '11:00:00', '12:34:48', 1),
(649, '221810558', 'BPH1', '2020-01-30', '10:00:00', '12:35:41', 2),
(650, '211910724', 'TOKO5', '2020-01-30', '00:00:10', '12:39:19', 1),
(651, '211810130', 'PRODUKSI11', '2020-01-30', '00:00:10', '12:42:03', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `kopmer`
--
ALTER TABLE `kopmer`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `poinbelanja`
--
ALTER TABLE `poinbelanja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poinbelanja`
--
ALTER TABLE `poinbelanja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=755;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('kopmers', '[{"db":"information_schema","table":"USER_STATISTICS"},{"db":"information_schema","table":"USER_PRIVILEGES"},{"db":"information_schema","table":"VIEWS"}]'),
('root', '[{"db":"datacop","table":"poinbelanja"},{"db":"datacop","table":"kopmer"},{"db":"datacop","table":"user"},{"db":"datacop","table":"tbl_images"},{"db":"datacop","table":"absensi"},{"db":"datacop","table":"anggota"},{"db":"phpmyadmin","table":"pma__users"},{"db":"mysql","table":"user"},{"db":"datacop","table":"berita"},{"db":"datacop","table":"table 5"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'datacop', 'kopmer', '{"sorted_col":"`id`  ASC"}', '2020-01-17 10:40:51'),
('root', 'datacop', 'user', '{"sorted_col":"`nim` ASC"}', '2020-01-17 11:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('kopma', '2018-10-19 03:11:13', '{"collation_connection":"utf8mb4_unicode_ci"}'),
('kopmers', '2017-12-18 04:09:36', '{"collation_connection":"utf8mb4_unicode_ci"}'),
('root', '2017-01-27 07:23:02', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
