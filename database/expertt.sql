-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2025 at 03:16 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expertt`
--

-- --------------------------------------------------------

--
-- Table structure for table `atribut`
--

CREATE TABLE `atribut` (
  `atribut_id` int NOT NULL,
  `case_num` int NOT NULL,
  `user_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `goal` enum('T','F') NOT NULL,
  `atribut_desc` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `atribut`
--

INSERT INTO `atribut` (`atribut_id`, `case_num`, `user_id`, `atribut_name`, `goal`, `atribut_desc`) VALUES
(1, 1, 1, 'outlook', 'F', NULL),
(2, 1, 1, 'temperature', 'F', NULL),
(3, 1, 1, 'humidity', 'F', NULL),
(4, 1, 1, 'windy', 'F', NULL),
(5, 1, 1, 'Play', 'T', NULL),
(6, 2, 2, 'usia', 'F', ''),
(7, 2, 2, 'jeniskelamin', 'F', ''),
(8, 2, 2, 'kesadaran', 'F', ''),
(9, 2, 2, 'keadaanumum', 'F', ''),
(10, 2, 2, 'nyerikepala', 'F', ''),
(11, 2, 2, 'tekanansistolik', 'F', ''),
(12, 2, 2, 'tekanandiastolik', 'F', ''),
(13, 2, 2, 'suhu', 'F', ''),
(14, 2, 2, 'nafas', 'F', ''),
(15, 2, 2, 'nadi', 'F', ''),
(16, 2, 2, 'G1', 'F', 'Gangguan bicara (Afasia Ekspresif)'),
(17, 2, 2, 'G2', 'F', 'Status Fungsional'),
(18, 2, 2, 'G3', 'F', 'Keseimbangan'),
(19, 2, 2, 'G4', 'F', 'Pusing'),
(20, 2, 2, 'G5', 'F', 'Mual'),
(21, 2, 2, 'G6', 'F', 'Muntah'),
(22, 2, 2, 'G7', 'F', 'Lemas'),
(23, 2, 2, 'G8', 'F', 'Bicara Pelo'),
(24, 2, 2, 'G9', 'F', 'Memegang Pinggiran Kursi saat duduk?'),
(25, 2, 2, 'G10', 'F', 'Nyeri/kram saat berjalan (Claudicatio Intermitten)'),
(26, 2, 2, 'G11', 'F', 'Perlu penerjemah/susah mengerti (Afasia Reseptif)'),
(27, 2, 2, 'G12', 'F', 'Sulit berbicara (Disatria)'),
(28, 2, 2, 'G13', 'F', 'Sesak Nafas'),
(29, 2, 2, 'G14', 'F', 'Penurunan kesadaran'),
(30, 2, 2, 'G15', 'F', 'Kelemahan/kelumpuhan anggota gerak kanan/kiri (Hemiplegia)'),
(31, 2, 2, 'G16', 'F', 'Onset saat beraktivitas (tiba-tiba)'),
(32, 2, 2, 'G17', 'F', 'Tidak dapat mengendalikan rangsang defeksi (BAB)'),
(33, 2, 2, 'G18', 'F', 'Tidak dapat mengendalikan rangsang berkemih (BAK)'),
(34, 2, 2, 'G19', 'F', 'Tidak dapat membersihkan diri sendiri (cuci muka, sikat gigi, sisir rambut)'),
(35, 2, 2, 'G20', 'F', 'Onset saat istirahat'),
(36, 2, 2, 'G21', 'F', 'Tidak dapat makan sendiri'),
(37, 2, 2, 'G22', 'F', 'Tidak dapat berubah sikap dari berbaring ke duduk'),
(38, 2, 2, 'G23', 'F', 'Tidak mampu berjalan (Ataksia)'),
(39, 2, 2, 'G24', 'F', 'Tidak dapat memakai pakaian sendiri'),
(40, 2, 2, 'G25', 'F', 'Tidak mampu naik turun tangga'),
(41, 2, 2, 'G26', 'F', 'Tidak mampu mandi sendiri'),
(42, 2, 2, 'G27', 'F', 'Wajah bagian mata dan mulut agak turun sebelah/ wajah merot (Hemiparesis)'),
(43, 2, 2, 'G28', 'F', 'Sering kesemutan (Parestesia)'),
(44, 2, 2, 'G29', 'F', 'Gangguan penglihatan (Defisit penglihatan)'),
(45, 2, 2, 'G30', 'F', 'Telinga berdenging'),
(46, 2, 2, 'G31', 'F', 'Kesulitan dalam menelan makanan (Disfagia)'),
(47, 2, 2, 'G32', 'F', 'Bingung (disorientasi)'),
(48, 2, 2, 'G33', 'F', 'Wajah murung'),
(49, 2, 2, 'G34', 'F', 'Gangguan memori/pikun (deficit kognitif)'),
(50, 2, 2, 'G35', 'F', 'Susah menggerakkan kaki atau tangan'),
(51, 2, 2, 'G36', 'F', 'Kejang'),
(52, 2, 2, 'G37', 'F', 'Nafsu makan berkurang'),
(53, 2, 2, 'G38', 'F', 'Cemas/gelisah (Defisit emosional)'),
(54, 2, 2, 'G39', 'F', 'Batuk'),
(55, 2, 2, 'G40', 'F', 'Nyeri dibagian dada (Angina Pectoris)'),
(56, 2, 2, 'G41', 'F', 'Kaku pada bibir/mulut/lidah'),
(57, 2, 2, 'G42', 'F', 'Kaku pada leher'),
(58, 2, 2, 'G43', 'F', 'demam'),
(59, 2, 2, 'FR1', 'F', 'Riwayat Penyakit Jantung'),
(60, 2, 2, 'FR2', 'F', 'Riwayat Penyakit Hipertensi'),
(61, 2, 2, 'FR3', 'F', 'Riwayat Penyakit Diabetes Melitus'),
(62, 2, 2, 'FR4', 'F', 'Riwayat Penyakit Hiperkolesterolemia'),
(63, 2, 2, 'FR5', 'F', 'Riwayat Penyakit Obesitas'),
(64, 2, 2, 'FR6', 'F', 'Riwayat Penyakit Stroke'),
(65, 2, 2, 'FR7', 'F', 'Riwayat Penyakit dalam Keluarga Stroke'),
(66, 2, 2, 'FR8', 'F', 'Riwayat Penyakit dalam Keluarga Hipertensi'),
(67, 2, 2, 'FR9', 'F', 'Riwayat Penyakit dalam Keluarga Diabetes Melitus'),
(68, 2, 2, 'FR10', 'F', 'Ketergantungan Obat-obatan antikoagulan'),
(69, 2, 2, 'FR11', 'F', 'Ketergantungan Rokok'),
(70, 2, 2, 'FR12', 'F', 'Ketergantungan Alkohol'),
(71, 2, 2, 'Penyakit', 'T', 'Penyakit stroke'),
(83, 15, 15, 'ef', 'F', 'sdf'),
(84, 15, 15, 'efsad', 'T', 'sdgrsv'),
(86, 17, 17, 'a', 'F', 'aa'),
(87, 17, 17, 'b', 'F', 'bb'),
(88, 17, 17, 'c', 'F', 'cc'),
(89, 17, 17, 'g', 'T', 'gg'),
(109, 22, 22, 'coba', 'T', NULL),
(110, 22, 22, 'windy', 'F', NULL),
(111, 22, 22, 'coba_lagi', 'F', NULL),
(112, 22, 22, 'test', 'F', NULL),
(113, 22, 22, 'rainy', 'F', NULL),
(114, 21, 21, 'a', 'F', NULL),
(115, 21, 21, 'b', 'F', NULL),
(116, 21, 21, 'c', 'F', NULL),
(117, 21, 21, 'd', 'F', NULL),
(118, 21, 21, 'goals', 'T', NULL),
(141, 21, 21, 'coba_lagi', 'F', NULL),
(147, 24, 24, 'IPK', 'F', NULL),
(148, 24, 24, 'Kehadiran', 'F', NULL),
(149, 24, 24, 'Aktivitas_Organisasi', 'F', NULL),
(150, 24, 24, 'Beban_SKS', 'F', NULL),
(151, 24, 24, 'Status_Pekerjaan', 'F', NULL),
(152, 24, 24, 'Lulus_Tepat_Waktu', 'T', NULL),
(153, 25, 25, 'gaya', 'T', NULL),
(154, 25, 25, 'bentuk_tangan', 'F', NULL),
(155, 25, 25, 'bentuk_kaki', 'F', NULL),
(156, 25, 25, 'percikkan_air', 'F', NULL),
(157, 26, 26, 'a', 'F', NULL),
(158, 26, 26, 'b', 'F', 'atb b'),
(159, 26, 26, 'g', 'T', 'atb goal'),
(160, 27, 27, '1', 'F', NULL),
(161, 27, 27, '2', 'F', NULL),
(162, 27, 27, '3', 'F', NULL),
(163, 27, 27, '4', 'F', NULL),
(164, 27, 27, '5', 'F', NULL),
(165, 27, 27, '6', 'F', NULL),
(166, 27, 27, '7', 'F', NULL),
(167, 27, 27, 'goal', 'T', NULL),
(168, 27, 27, '9', 'F', NULL),
(169, 27, 27, '8', 'F', NULL),
(170, 27, 27, '10', 'F', NULL),
(171, 27, 27, '11', 'F', NULL),
(172, 27, 27, '12', 'F', NULL),
(173, 27, 27, '13', 'F', NULL),
(174, 27, 27, '14', 'F', NULL),
(175, 27, 27, '15', 'F', NULL),
(176, 27, 27, '16', 'F', NULL),
(177, 27, 27, '17', 'F', NULL),
(178, 27, 27, '18', 'F', NULL),
(179, 27, 27, '19', 'F', NULL),
(180, 27, 27, '20', 'F', NULL),
(181, 27, 27, '21', 'F', NULL),
(182, 27, 27, '22', 'F', NULL),
(183, 27, 27, '23', 'F', NULL),
(184, 27, 27, '24', 'F', NULL),
(185, 27, 27, '25', 'F', NULL),
(186, 27, 27, '26', 'F', NULL),
(187, 27, 27, '27', 'F', NULL),
(188, 27, 27, '28', 'F', NULL),
(189, 27, 27, '29', 'F', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `atribut_value`
--

CREATE TABLE `atribut_value` (
  `value_id` int NOT NULL,
  `atribut_id` int NOT NULL,
  `value_name` varchar(200) NOT NULL,
  `value_desc` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `atribut_value`
--

INSERT INTO `atribut_value` (`value_id`, `atribut_id`, `value_name`, `value_desc`, `user_id`, `case_num`) VALUES
(1, 1, 'sunny', NULL, 1, 1),
(2, 1, 'cloudy', NULL, 1, 1),
(3, 1, 'rainy', NULL, 1, 1),
(4, 2, 'hot', NULL, 1, 1),
(5, 2, 'mild', NULL, 1, 1),
(6, 2, 'cool', NULL, 1, 1),
(7, 3, 'high', NULL, 1, 1),
(8, 3, 'normal', NULL, 1, 1),
(9, 4, 'true', NULL, 1, 1),
(10, 4, 'false', NULL, 1, 1),
(11, 5, 'yes', NULL, 1, 1),
(12, 5, 'no', NULL, 1, 1),
(13, 6, 'dewasa-1', '0-30', 2, 2),
(14, 6, 'dewasa-2', '31-50', 2, 2),
(15, 6, 'dewasa-3', '51-60', 2, 2),
(16, 6, 'manula', '>60', 2, 2),
(17, 7, 'wanita', 'Wanita', 2, 2),
(18, 7, 'pria', 'Pria', 2, 2),
(19, 8, 'sadar', 'Compos Mentis (Sadar)', 2, 2),
(20, 8, 'apatis', 'Somnolen (Apatis)', 2, 2),
(21, 8, 'koma', 'Sopor (koma)', 2, 2),
(22, 9, 'Baik', '', 2, 2),
(23, 9, 'Sedang', '', 2, 2),
(24, 9, 'Jelek', '', 2, 2),
(25, 10, 'Nyeri', '', 2, 2),
(26, 10, 'Tidak-Nyeri', '', 2, 2),
(27, 11, 'rendah', '< 90 mmHG', 2, 2),
(28, 11, 'normal', '90 - 140 mmHG', 2, 2),
(29, 11, 'tinggi', '>140 mmHG', 2, 2),
(30, 12, 'rendah', '<60 mmHG', 2, 2),
(31, 12, 'normal', '60-90 mmHG', 2, 2),
(32, 12, 'tinggi', '>90 mmHG', 2, 2),
(33, 13, 'rendah', '< 35 derajat', 2, 2),
(34, 13, 'normal', '36 - 37,5', 2, 2),
(35, 13, 'tinggi', '>37,5 ', 2, 2),
(36, 14, 'lambat', '< 12', 2, 2),
(37, 14, 'normal', '12-20', 2, 2),
(38, 14, 'cepat', '> 20', 2, 2),
(39, 15, 'lambat', '< 60', 2, 2),
(40, 15, 'normal', '60-100', 2, 2),
(41, 15, 'cepat', '> 100', 2, 2),
(42, 16, 'Y', '', 2, 2),
(43, 16, 'T', '', 2, 2),
(44, 17, 'Y', '', 2, 2),
(45, 17, 'T', '', 2, 2),
(46, 18, 'Y', '', 2, 2),
(47, 18, 'T', '', 2, 2),
(48, 19, 'Y', '', 2, 2),
(49, 19, 'T', '', 2, 2),
(50, 20, 'Y', '', 2, 2),
(51, 20, 'T', '', 2, 2),
(52, 21, 'Y', '', 2, 2),
(53, 21, 'T', '', 2, 2),
(54, 22, 'Y', '', 2, 2),
(55, 22, 'T', '', 2, 2),
(56, 23, 'Y', '', 2, 2),
(57, 23, 'T', '', 2, 2),
(58, 24, 'Y', '', 2, 2),
(59, 24, 'T', '', 2, 2),
(60, 25, 'Y', '', 2, 2),
(61, 25, 'T', '', 2, 2),
(62, 26, 'Y', '', 2, 2),
(63, 26, 'T', '', 2, 2),
(64, 27, 'Y', '', 2, 2),
(65, 27, 'T', '', 2, 2),
(66, 28, 'Y', '', 2, 2),
(67, 28, 'T', '', 2, 2),
(68, 29, 'Y', '', 2, 2),
(69, 29, 'T', '', 2, 2),
(70, 30, 'Y', '', 2, 2),
(71, 30, 'T', '', 2, 2),
(72, 31, 'Y', '', 2, 2),
(73, 31, 'T', '', 2, 2),
(74, 32, 'Y', '', 2, 2),
(75, 32, 'T', '', 2, 2),
(76, 33, 'Y', '', 2, 2),
(77, 33, 'T', '', 2, 2),
(78, 34, 'Y', '', 2, 2),
(79, 34, 'T', '', 2, 2),
(80, 35, 'Y', '', 2, 2),
(81, 35, 'T', '', 2, 2),
(82, 36, 'Y', '', 2, 2),
(83, 36, 'T', '', 2, 2),
(84, 37, 'Y', '', 2, 2),
(85, 37, 'T', '', 2, 2),
(86, 38, 'Y', '', 2, 2),
(87, 38, 'T', '', 2, 2),
(88, 39, 'Y', '', 2, 2),
(89, 39, 'T', '', 2, 2),
(90, 40, 'Y', '', 2, 2),
(91, 40, 'T', '', 2, 2),
(92, 41, 'Y', '', 2, 2),
(93, 41, 'T', '', 2, 2),
(94, 42, 'Y', '', 2, 2),
(95, 42, 'T', '', 2, 2),
(96, 43, 'Y', '', 2, 2),
(97, 43, 'T', '', 2, 2),
(98, 44, 'Y', '', 2, 2),
(99, 44, 'T', '', 2, 2),
(100, 45, 'Y', '', 2, 2),
(101, 45, 'T', '', 2, 2),
(102, 46, 'Y', '', 2, 2),
(103, 46, 'T', '', 2, 2),
(104, 47, 'Y', '', 2, 2),
(105, 47, 'T', '', 2, 2),
(106, 48, 'Y', '', 2, 2),
(107, 48, 'T', '', 2, 2),
(108, 49, 'Y', '', 2, 2),
(109, 49, 'T', '', 2, 2),
(110, 50, 'Y', '', 2, 2),
(111, 50, 'T', '', 2, 2),
(112, 51, 'Y', '', 2, 2),
(113, 51, 'T', '', 2, 2),
(114, 52, 'Y', '', 2, 2),
(115, 52, 'T', '', 2, 2),
(116, 53, 'Y', '', 2, 2),
(117, 53, 'T', '', 2, 2),
(118, 54, 'Y', '', 2, 2),
(119, 54, 'T', '', 2, 2),
(120, 55, 'Y', '', 2, 2),
(121, 55, 'T', '', 2, 2),
(122, 56, 'Y', '', 2, 2),
(123, 56, 'T', '', 2, 2),
(124, 57, 'Y', '', 2, 2),
(125, 57, 'T', '', 2, 2),
(126, 58, 'Y', '', 2, 2),
(127, 58, 'T', '', 2, 2),
(128, 59, 'Y', '', 2, 2),
(129, 59, 'T', '', 2, 2),
(130, 60, 'Y', '', 2, 2),
(131, 60, 'T', '', 2, 2),
(132, 61, 'Y', '', 2, 2),
(133, 61, 'T', '', 2, 2),
(134, 62, 'Y', '', 2, 2),
(135, 62, 'T', '', 2, 2),
(136, 63, 'Y', '', 2, 2),
(137, 63, 'T', '', 2, 2),
(138, 64, 'Y', '', 2, 2),
(139, 64, 'T', '', 2, 2),
(140, 65, 'Y', '', 2, 2),
(141, 65, 'T', '', 2, 2),
(142, 66, 'Y', '', 2, 2),
(143, 66, 'T', '', 2, 2),
(144, 67, 'Y', '', 2, 2),
(145, 67, 'T', '', 2, 2),
(146, 68, 'Y', '', 2, 2),
(147, 68, 'T', '', 2, 2),
(148, 69, 'Y', '', 2, 2),
(149, 69, 'T', '', 2, 2),
(150, 70, 'Y', '', 2, 2),
(151, 70, 'T', '', 2, 2),
(152, 71, 'Thrombosis-Stroke', 'P1', 2, 2),
(153, 71, 'Embolism-Stroke', 'P2', 2, 2),
(154, 71, 'Intracerebral-hemorrhage-Stroke', 'P3', 2, 2),
(155, 71, 'Subarachnoid-hemorrhage-Stroke', 'P4', 2, 2),
(156, 71, 'Non-Stroke', 'P5', 2, 2),
(163, 84, 'dfvd', 'fv', 15, 15),
(164, 83, 'evs', 'sefb r', 15, 15),
(165, 86, 'a1', NULL, 17, 17),
(166, 86, 'a2', NULL, 17, 17),
(167, 86, 'a3', NULL, 17, 17),
(168, 87, 'b1', NULL, 17, 17),
(169, 87, 'b2', NULL, 17, 17),
(170, 88, 'c1', NULL, 17, 17),
(171, 88, 'c2', NULL, 17, 17),
(172, 88, 'c3', NULL, 17, 17),
(173, 89, 'g1', NULL, 17, 17),
(174, 89, 'g2', NULL, 17, 17),
(175, 83, 'okf', NULL, 15, 15),
(176, 83, 'wed3wfe', NULL, 15, 15),
(177, 83, 'wef', NULL, 15, 15),
(178, 83, 'ewds', NULL, 15, 15),
(179, 84, 'd', NULL, 15, 15),
(187, 110, 'jksv', NULL, 22, 22),
(188, 109, 'ewfj', NULL, 22, 22),
(189, 112, 'dfe', NULL, 22, 22),
(190, 112, 'wef', NULL, 22, 22),
(191, 113, 'fds', NULL, 22, 22),
(192, 111, 'fig', NULL, 22, 22),
(193, 114, 'a1', NULL, 21, 21),
(194, 114, 'a2', NULL, 21, 21),
(195, 114, 'a3', NULL, 21, 21),
(196, 114, 'a4', NULL, 21, 21),
(197, 115, 'b1', NULL, 21, 21),
(198, 115, 'b2', NULL, 21, 21),
(199, 115, 'b3', NULL, 21, 21),
(200, 115, 'b4', NULL, 21, 21),
(201, 115, 'b5', NULL, 21, 21),
(202, 116, 'c1', NULL, 21, 21),
(203, 116, 'c2', NULL, 21, 21),
(204, 117, 'd1', NULL, 21, 21),
(205, 117, 'd2', NULL, 21, 21),
(206, 117, 'd3', NULL, 21, 21),
(207, 118, 'penyakit', NULL, 21, 21),
(208, 118, 'buku', NULL, 21, 21),
(209, 118, 'perabotan', NULL, 21, 21),
(210, 118, 'makanan', NULL, 21, 21),
(214, 141, 'coba ini', NULL, 21, 21),
(222, 147, '< 2.5', NULL, 24, 24),
(223, 147, '2.5-3.0', NULL, 24, 24),
(224, 147, '3.0-3.5', NULL, 24, 24),
(225, 147, '> 3.5', NULL, 24, 24),
(226, 148, 'Rendah', NULL, 24, 24),
(227, 148, 'Sedang', NULL, 24, 24),
(228, 148, 'Tinggi', NULL, 24, 24),
(229, 149, 'Tidak Aktif', NULL, 24, 24),
(230, 149, 'Aktif', NULL, 24, 24),
(231, 150, 'Ringan', NULL, 24, 24),
(232, 150, 'Sedang', NULL, 24, 24),
(233, 150, 'Berat', NULL, 24, 24),
(234, 151, 'Tidak Bekerja', NULL, 24, 24),
(235, 151, 'Paruh Waktu', NULL, 24, 24),
(236, 151, 'Penuh Waktu', NULL, 24, 24),
(237, 152, 'Ya', NULL, 24, 24),
(238, 152, 'Tidak', NULL, 24, 24),
(240, 153, 'batu', NULL, 25, 25),
(241, 154, 'lurus', NULL, 25, 25),
(242, 155, 'ditekuk', NULL, 25, 25),
(243, 156, 'banyak', NULL, 25, 25),
(244, 153, 'katak', NULL, 25, 25),
(245, 154, 'miring', NULL, 25, 25),
(246, 155, 'lurus', NULL, 25, 25),
(247, 156, 'sedikit', NULL, 25, 25),
(248, 156, 'tidak ada', NULL, 25, 25),
(249, 153, 'kupu-kupu', NULL, 25, 25),
(250, 154, 'mengepak', NULL, 25, 25),
(251, 155, 'naik', NULL, 25, 25),
(252, 155, 'turun', NULL, 25, 25),
(253, 157, 'a1', 'atb v a1', 26, 26),
(254, 157, 'a2', 'atb v a2', 26, 26),
(255, 158, 'b1', 'atb b 1', 26, 26),
(256, 158, 'b2', NULL, 26, 26),
(257, 158, 'b3', NULL, 26, 26),
(258, 159, 't', NULL, 26, 26),
(259, 159, 'f', NULL, 26, 26),
(260, 160, '11', NULL, 27, 27),
(261, 160, '12', NULL, 27, 27),
(262, 161, '21', NULL, 27, 27),
(263, 161, '22', NULL, 27, 27),
(264, 161, '23', NULL, 27, 27),
(265, 162, '31', NULL, 27, 27),
(266, 162, '32', NULL, 27, 27),
(267, 162, '33', NULL, 27, 27),
(268, 162, '34', NULL, 27, 27),
(269, 163, '41', NULL, 27, 27),
(270, 163, '42', NULL, 27, 27),
(271, 164, '51', NULL, 27, 27),
(272, 164, '52', NULL, 27, 27),
(273, 165, '61', NULL, 27, 27),
(274, 165, '62', NULL, 27, 27),
(275, 166, '71', NULL, 27, 27),
(276, 167, 'hasil 1', NULL, 27, 27),
(277, 167, 'hasil 2', NULL, 27, 27),
(278, 167, 'hasil 3', NULL, 27, 27),
(279, 168, '91', NULL, 27, 27),
(280, 168, '92', NULL, 27, 27),
(281, 169, '81', NULL, 27, 27),
(282, 169, '82', NULL, 27, 27),
(283, 170, '101', NULL, 27, 27),
(284, 171, '111', NULL, 27, 27),
(285, 172, '121', NULL, 27, 27),
(286, 173, '131', NULL, 27, 27),
(287, 174, '141', NULL, 27, 27),
(288, 174, '142', NULL, 27, 27),
(289, 175, '151', NULL, 27, 27),
(290, 175, '152', NULL, 27, 27),
(291, 175, '153', NULL, 27, 27),
(292, 176, '161', NULL, 27, 27),
(293, 177, '171', NULL, 27, 27),
(294, 178, '181', NULL, 27, 27),
(295, 178, '182', NULL, 27, 27),
(296, 179, '191', NULL, 27, 27),
(297, 180, '201', NULL, 27, 27),
(298, 181, '211', NULL, 27, 27),
(299, 181, '212', NULL, 27, 27),
(300, 182, '221', NULL, 27, 27),
(301, 183, '231', NULL, 27, 27),
(302, 184, '241', NULL, 27, 27),
(303, 185, '251', NULL, 27, 27),
(304, 185, '252', NULL, 27, 27),
(305, 186, '261', NULL, 27, 27),
(306, 187, '271', NULL, 27, 27),
(307, 188, '281', NULL, 27, 27),
(308, 188, '282', NULL, 27, 27),
(309, 189, '291', NULL, 27, 27),
(310, 189, '292', NULL, 27, 27),
(311, 189, '293', NULL, 27, 27);

-- --------------------------------------------------------

--
-- Table structure for table `c45_case_user_1`
--

CREATE TABLE `c45_case_user_1` (
  `case_id` int NOT NULL DEFAULT '0',
  `1_outlook` enum('1_sunny','2_cloudy','3_rainy') DEFAULT NULL,
  `2_temperature` enum('4_hot','5_mild','6_cool') DEFAULT NULL,
  `3_humidity` enum('7_high','8_normal') DEFAULT NULL,
  `4_windy` enum('9_true','10_false') DEFAULT NULL,
  `5_Play` enum('11_yes','12_no') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `c45_case_user_1`
--

INSERT INTO `c45_case_user_1` (`case_id`, `1_outlook`, `2_temperature`, `3_humidity`, `4_windy`, `5_Play`, `user_id`, `case_num`) VALUES
(4, '3_rainy', '5_mild', '7_high', '10_false', '11_yes', 1, 1),
(5, '3_rainy', '6_cool', '8_normal', '10_false', '11_yes', 1, 1),
(10, '3_rainy', '5_mild', '8_normal', '10_false', '11_yes', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `c45_case_user_2`
--

CREATE TABLE `c45_case_user_2` (
  `case_id` int NOT NULL DEFAULT '0',
  `6_usia` enum('13_dewasa-1','14_dewasa-2','15_dewasa-3','16_manula') DEFAULT NULL,
  `7_jeniskelamin` enum('17_wanita','18_pria') DEFAULT NULL,
  `8_kesadaran` enum('19_sadar','20_apatis','21_koma') DEFAULT NULL,
  `9_keadaanumum` enum('22_Baik','23_Sedang','24_Jelek') DEFAULT NULL,
  `10_nyerikepala` enum('25_Nyeri','26_Tidak-Nyeri') DEFAULT NULL,
  `11_tekanansistolik` enum('27_rendah','28_normal','29_tinggi') DEFAULT NULL,
  `12_tekanandiastolik` enum('30_rendah','31_normal','32_tinggi') DEFAULT NULL,
  `13_suhu` enum('33_rendah','34_normal','35_tinggi') DEFAULT NULL,
  `14_nafas` enum('36_lambat','37_normal','38_cepat') DEFAULT NULL,
  `15_nadi` enum('39_lambat','40_normal','41_cepat') DEFAULT NULL,
  `16_G1` enum('42_Y','43_T') DEFAULT NULL,
  `17_G2` enum('44_Y','45_T') DEFAULT NULL,
  `18_G3` enum('46_Y','47_T') DEFAULT NULL,
  `19_G4` enum('48_Y','49_T') DEFAULT NULL,
  `20_G5` enum('50_Y','51_T') DEFAULT NULL,
  `21_G6` enum('52_Y','53_T') DEFAULT NULL,
  `22_G7` enum('54_Y','55_T') DEFAULT NULL,
  `23_G8` enum('56_Y','57_T') DEFAULT NULL,
  `24_G9` enum('58_Y','59_T') DEFAULT NULL,
  `25_G10` enum('60_Y','61_T') DEFAULT NULL,
  `26_G11` enum('62_Y','63_T') DEFAULT NULL,
  `27_G12` enum('64_Y','65_T') DEFAULT NULL,
  `28_G13` enum('66_Y','67_T') DEFAULT NULL,
  `29_G14` enum('68_Y','69_T') DEFAULT NULL,
  `30_G15` enum('70_Y','71_T') DEFAULT NULL,
  `31_G16` enum('72_Y','73_T') DEFAULT NULL,
  `32_G17` enum('74_Y','75_T') DEFAULT NULL,
  `33_G18` enum('76_Y','77_T') DEFAULT NULL,
  `34_G19` enum('78_Y','79_T') DEFAULT NULL,
  `35_G20` enum('80_Y','81_T') DEFAULT NULL,
  `36_G21` enum('82_Y','83_T') DEFAULT NULL,
  `37_G22` enum('84_Y','85_T') DEFAULT NULL,
  `38_G23` enum('86_Y','87_T') DEFAULT NULL,
  `39_G24` enum('88_Y','89_T') DEFAULT NULL,
  `40_G25` enum('90_Y','91_T') DEFAULT NULL,
  `41_G26` enum('92_Y','93_T') DEFAULT NULL,
  `42_G27` enum('94_Y','95_T') DEFAULT NULL,
  `43_G28` enum('96_Y','97_T') DEFAULT NULL,
  `44_G29` enum('98_Y','99_T') DEFAULT NULL,
  `45_G30` enum('100_Y','101_T') DEFAULT NULL,
  `46_G31` enum('102_Y','103_T') DEFAULT NULL,
  `47_G32` enum('104_Y','105_T') DEFAULT NULL,
  `48_G33` enum('106_Y','107_T') DEFAULT NULL,
  `49_G34` enum('108_Y','109_T') DEFAULT NULL,
  `50_G35` enum('110_Y','111_T') DEFAULT NULL,
  `51_G36` enum('112_Y','113_T') DEFAULT NULL,
  `52_G37` enum('114_Y','115_T') DEFAULT NULL,
  `53_G38` enum('116_Y','117_T') DEFAULT NULL,
  `54_G39` enum('118_Y','119_T') DEFAULT NULL,
  `55_G40` enum('120_Y','121_T') DEFAULT NULL,
  `56_G41` enum('122_Y','123_T') DEFAULT NULL,
  `57_G42` enum('124_Y','125_T') DEFAULT NULL,
  `58_G43` enum('126_Y','127_T') DEFAULT NULL,
  `59_FR1` enum('128_Y','129_T') DEFAULT NULL,
  `60_FR2` enum('130_Y','131_T') DEFAULT NULL,
  `61_FR3` enum('132_Y','133_T') DEFAULT NULL,
  `62_FR4` enum('134_Y','135_T') DEFAULT NULL,
  `63_FR5` enum('136_Y','137_T') DEFAULT NULL,
  `64_FR6` enum('138_Y','139_T') DEFAULT NULL,
  `65_FR7` enum('140_Y','141_T') DEFAULT NULL,
  `66_FR8` enum('142_Y','143_T') DEFAULT NULL,
  `67_FR9` enum('144_Y','145_T') DEFAULT NULL,
  `68_FR10` enum('146_Y','147_T') DEFAULT NULL,
  `69_FR11` enum('148_Y','149_T') DEFAULT NULL,
  `70_FR12` enum('150_Y','151_T') DEFAULT NULL,
  `71_Penyakit` enum('152_Thrombosis-Stroke','153_Embolism-Stroke','154_Intracerebral-hemorrhage-Stroke','155_Subarachnoid-hemorrhage-Stroke','156_Non-Stroke') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `c45_case_user_2`
--

INSERT INTO `c45_case_user_2` (`case_id`, `6_usia`, `7_jeniskelamin`, `8_kesadaran`, `9_keadaanumum`, `10_nyerikepala`, `11_tekanansistolik`, `12_tekanandiastolik`, `13_suhu`, `14_nafas`, `15_nadi`, `16_G1`, `17_G2`, `18_G3`, `19_G4`, `20_G5`, `21_G6`, `22_G7`, `23_G8`, `24_G9`, `25_G10`, `26_G11`, `27_G12`, `28_G13`, `29_G14`, `30_G15`, `31_G16`, `32_G17`, `33_G18`, `34_G19`, `35_G20`, `36_G21`, `37_G22`, `38_G23`, `39_G24`, `40_G25`, `41_G26`, `42_G27`, `43_G28`, `44_G29`, `45_G30`, `46_G31`, `47_G32`, `48_G33`, `49_G34`, `50_G35`, `51_G36`, `52_G37`, `53_G38`, `54_G39`, `55_G40`, `56_G41`, `57_G42`, `58_G43`, `59_FR1`, `60_FR2`, `61_FR3`, `62_FR4`, `63_FR5`, `64_FR6`, `65_FR7`, `66_FR8`, `67_FR9`, `68_FR10`, `69_FR11`, `70_FR12`, `71_Penyakit`, `user_id`, `case_num`) VALUES
(89, '14_dewasa-2', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '57_T', '59_T', '60_Y', '63_T', '64_Y', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '102_Y', '105_T', '106_Y', '109_T', '110_Y', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '122_Y', '124_Y', '126_Y', '129_T', '131_T', '133_T', '135_T', '136_Y', '138_Y', '140_Y', '142_Y', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `c45_case_user_15`
--

CREATE TABLE `c45_case_user_15` (
  `case_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `83_ef` enum('164_evs','175_okf','176_wed3wfe','177_wef','178_ewds') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `84_efsad` enum('163_dfvd','179_d') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `c45_case_user_15`
--

INSERT INTO `c45_case_user_15` (`case_id`, `user_id`, `case_num`, `83_ef`, `84_efsad`) VALUES
(1, 15, 15, '164_evs', '163_dfvd'),
(2, 15, 15, '164_evs', '179_d'),
(3, 15, 15, '175_okf', '163_dfvd'),
(4, 15, 15, '175_okf', '179_d'),
(5, 15, 15, '176_wed3wfe', '163_dfvd'),
(6, 15, 15, '176_wed3wfe', '179_d'),
(7, 15, 15, '177_wef', '163_dfvd'),
(8, 15, 15, '177_wef', '179_d'),
(9, 15, 15, '178_ewds', '163_dfvd'),
(10, 15, 15, '178_ewds', '179_d');

-- --------------------------------------------------------

--
-- Table structure for table `c45_case_user_17`
--

CREATE TABLE `c45_case_user_17` (
  `case_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `86_a` enum('165_a1','166_a2','167_a3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `87_b` enum('168_b1','169_b2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `88_c` enum('170_c1','171_c2','172_c3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `89_g` enum('173_g1','174_g2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `c45_case_user_17`
--

INSERT INTO `c45_case_user_17` (`case_id`, `user_id`, `case_num`, `86_a`, `87_b`, `88_c`, `89_g`) VALUES
(1, 17, 17, '165_a1', '168_b1', '170_c1', '174_g2');

-- --------------------------------------------------------

--
-- Table structure for table `c45_case_user_21`
--

CREATE TABLE `c45_case_user_21` (
  `case_id` int NOT NULL DEFAULT '0',
  `114_a` enum('193_a1','194_a2','195_a3','196_a4') DEFAULT NULL,
  `115_b` enum('197_b1','198_b2','199_b3','200_b4','201_b5') DEFAULT NULL,
  `116_c` enum('202_c1','203_c2') DEFAULT NULL,
  `117_d` enum('204_d1','205_d2','206_d3') DEFAULT NULL,
  `141_coba_lagi` enum('214_coba ini') DEFAULT NULL,
  `118_goals` enum('207_penyakit','208_buku','209_perabotan','210_makanan') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `c45_case_user_21`
--

INSERT INTO `c45_case_user_21` (`case_id`, `114_a`, `115_b`, `116_c`, `117_d`, `141_coba_lagi`, `118_goals`, `user_id`, `case_num`) VALUES
(1, '194_a2', '197_b1', '202_c1', '204_d1', '214_coba ini', '208_buku', 21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `c45_case_user_22`
--

CREATE TABLE `c45_case_user_22` (
  `case_id` int NOT NULL DEFAULT '0',
  `110_windy` enum('187_jksv') DEFAULT NULL,
  `111_coba_lagi` enum('192_fig') DEFAULT NULL,
  `112_test` enum('189_dfe','190_wef') DEFAULT NULL,
  `113_rainy` enum('191_fds') DEFAULT NULL,
  `109_coba` enum('188_ewfj') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `c45_case_user_22`
--

INSERT INTO `c45_case_user_22` (`case_id`, `110_windy`, `111_coba_lagi`, `112_test`, `113_rainy`, `109_coba`, `user_id`, `case_num`) VALUES
(1, '187_jksv', '192_fig', '189_dfe', '191_fds', '188_ewfj', 22, 22),
(2, '187_jksv', '192_fig', '190_wef', '191_fds', '188_ewfj', 22, 22);

-- --------------------------------------------------------

--
-- Table structure for table `c45_case_user_24`
--

CREATE TABLE `c45_case_user_24` (
  `case_id` int NOT NULL DEFAULT '0',
  `147_IPK` enum('222_< 2.5','223_2.5-3.0','224_3.0-3.5','225_> 3.5') DEFAULT NULL,
  `148_Kehadiran` enum('226_Rendah','227_Sedang','228_Tinggi') DEFAULT NULL,
  `149_Aktivitas_Organisasi` enum('229_Tidak Aktif','230_Aktif') DEFAULT NULL,
  `150_Beban_SKS` enum('231_Ringan','232_Sedang','233_Berat') DEFAULT NULL,
  `151_Status_Pekerjaan` enum('234_Tidak Bekerja','235_Paruh Waktu','236_Penuh Waktu') DEFAULT NULL,
  `152_Lulus_Tepat_Waktu` enum('237_Ya','238_Tidak') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `c45_case_user_24`
--

INSERT INTO `c45_case_user_24` (`case_id`, `147_IPK`, `148_Kehadiran`, `149_Aktivitas_Organisasi`, `150_Beban_SKS`, `151_Status_Pekerjaan`, `152_Lulus_Tepat_Waktu`, `user_id`, `case_num`) VALUES
(3, '225_> 3.5', '228_Tinggi', '230_Aktif', '231_Ringan', '235_Paruh Waktu', '237_Ya', 24, 24);

-- --------------------------------------------------------

--
-- Table structure for table `c45_case_user_25`
--

CREATE TABLE `c45_case_user_25` (
  `case_id` int NOT NULL DEFAULT '0',
  `154_bentuk_tangan` enum('241_lurus','245_miring','250_mengepak') DEFAULT NULL,
  `155_bentuk_kaki` enum('242_ditekuk','246_lurus','251_naik','252_turun') DEFAULT NULL,
  `156_percikkan_air` enum('243_banyak','247_sedikit','248_tidak ada') DEFAULT NULL,
  `153_gaya` enum('240_batu','244_katak','249_kupu-kupu') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c45_case_user_26`
--

CREATE TABLE `c45_case_user_26` (
  `case_id` int NOT NULL DEFAULT '0',
  `157_a` enum('253_a1','254_a2') DEFAULT NULL,
  `158_b` enum('255_b1','256_b2','257_b3') DEFAULT NULL,
  `159_g` enum('258_t','259_f') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `c45_case_user_26`
--

INSERT INTO `c45_case_user_26` (`case_id`, `157_a`, `158_b`, `159_g`, `user_id`, `case_num`) VALUES
(1, '254_a2', '255_b1', '258_t', 26, 26);

-- --------------------------------------------------------

--
-- Table structure for table `case_data`
--

CREATE TABLE `case_data` (
  `case_num` int NOT NULL,
  `case_title` varchar(255) NOT NULL,
  `case_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_data`
--

INSERT INTO `case_data` (`case_num`, `case_title`, `case_desc`) VALUES
(1, 'Playing Tennis', 'Kasus untuk menentukan apakah sebaiknya bermain tenis atau tidak berdasarkan 4 atribut yaitu outlook, temperature, humadity, dan windy. Kasus playing tenis yang terdiri dari 14 kasus. ');

-- --------------------------------------------------------

--
-- Table structure for table `case_user`
--

CREATE TABLE `case_user` (
  `case_id` int NOT NULL,
  `1_outlook` enum('1_sunny','2_cloudy','3_rainy') NOT NULL,
  `2_temperature` enum('4_hot','5_mild','6_cool') NOT NULL,
  `3_humidity` enum('7_high','8_normal') NOT NULL,
  `4_windy` enum('9_true','10_false') NOT NULL,
  `5_play` enum('11_yes','12_no') NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_user`
--

INSERT INTO `case_user` (`case_id`, `1_outlook`, `2_temperature`, `3_humidity`, `4_windy`, `5_play`, `user_id`, `case_num`) VALUES
(1, '1_sunny', '4_hot', '7_high', '10_false', '12_no', 1, 1),
(2, '1_sunny', '4_hot', '7_high', '9_true', '12_no', 1, 1),
(3, '2_cloudy', '4_hot', '7_high', '10_false', '11_yes', 1, 1),
(4, '3_rainy', '5_mild', '7_high', '10_false', '11_yes', 1, 1),
(5, '3_rainy', '6_cool', '8_normal', '10_false', '11_yes', 1, 1),
(6, '3_rainy', '6_cool', '8_normal', '9_true', '12_no', 1, 1),
(7, '2_cloudy', '6_cool', '8_normal', '9_true', '11_yes', 1, 1),
(8, '1_sunny', '5_mild', '7_high', '10_false', '12_no', 1, 1),
(9, '1_sunny', '6_cool', '8_normal', '10_false', '11_yes', 1, 1),
(10, '3_rainy', '5_mild', '8_normal', '10_false', '11_yes', 1, 1),
(11, '1_sunny', '5_mild', '8_normal', '9_true', '11_yes', 1, 1),
(12, '2_cloudy', '5_mild', '7_high', '9_true', '11_yes', 1, 1),
(13, '2_cloudy', '4_hot', '8_normal', '10_false', '11_yes', 1, 1),
(14, '3_rainy', '5_mild', '7_high', '9_true', '12_no', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `case_user_1`
--

CREATE TABLE `case_user_1` (
  `case_id` int NOT NULL,
  `1_outlook` enum('1_sunny','2_cloudy','3_rainy') DEFAULT NULL,
  `2_temperature` enum('4_hot','5_mild','6_cool') DEFAULT NULL,
  `3_humidity` enum('7_high','8_normal') DEFAULT NULL,
  `4_windy` enum('9_true','10_false') DEFAULT NULL,
  `5_Play` enum('11_yes','12_no') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_user_1`
--

INSERT INTO `case_user_1` (`case_id`, `1_outlook`, `2_temperature`, `3_humidity`, `4_windy`, `5_Play`, `user_id`, `case_num`) VALUES
(1, '1_sunny', '4_hot', '7_high', '10_false', '12_no', 1, 1),
(2, '1_sunny', '4_hot', '7_high', '9_true', '12_no', 1, 1),
(3, '2_cloudy', '4_hot', '7_high', '10_false', '11_yes', 1, 1),
(4, '3_rainy', '5_mild', '7_high', '10_false', '11_yes', 1, 1),
(5, '3_rainy', '6_cool', '8_normal', '10_false', '11_yes', 1, 1),
(6, '3_rainy', '6_cool', '8_normal', '9_true', '12_no', 1, 1),
(7, '2_cloudy', '6_cool', '8_normal', '9_true', '11_yes', 1, 1),
(8, '1_sunny', '5_mild', '7_high', '10_false', '12_no', 1, 1),
(9, '1_sunny', '6_cool', '8_normal', '10_false', '11_yes', 1, 1),
(10, '3_rainy', '5_mild', '8_normal', '10_false', '11_yes', 1, 1),
(11, '1_sunny', '5_mild', '8_normal', '9_true', '11_yes', 1, 1),
(12, '2_cloudy', '5_mild', '7_high', '9_true', '11_yes', 1, 1),
(13, '2_cloudy', '4_hot', '8_normal', '10_false', '11_yes', 1, 1),
(14, '3_rainy', '5_mild', '7_high', '9_true', '12_no', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `case_user_2`
--

CREATE TABLE `case_user_2` (
  `case_id` int NOT NULL,
  `6_usia` enum('13_dewasa-1','14_dewasa-2','15_dewasa-3','16_manula') DEFAULT NULL,
  `7_jeniskelamin` enum('17_wanita','18_pria') DEFAULT NULL,
  `8_kesadaran` enum('19_sadar','20_apatis','21_koma') DEFAULT NULL,
  `9_keadaanumum` enum('22_Baik','23_Sedang','24_Jelek') DEFAULT NULL,
  `10_nyerikepala` enum('25_Nyeri','26_Tidak-Nyeri') DEFAULT NULL,
  `11_tekanansistolik` enum('27_rendah','28_normal','29_tinggi') DEFAULT NULL,
  `12_tekanandiastolik` enum('30_rendah','31_normal','32_tinggi') DEFAULT NULL,
  `13_suhu` enum('33_rendah','34_normal','35_tinggi') DEFAULT NULL,
  `14_nafas` enum('36_lambat','37_normal','38_cepat') DEFAULT NULL,
  `15_nadi` enum('39_lambat','40_normal','41_cepat') DEFAULT NULL,
  `16_G1` enum('42_Y','43_T') DEFAULT NULL,
  `17_G2` enum('44_Y','45_T') DEFAULT NULL,
  `18_G3` enum('46_Y','47_T') DEFAULT NULL,
  `19_G4` enum('48_Y','49_T') DEFAULT NULL,
  `20_G5` enum('50_Y','51_T') DEFAULT NULL,
  `21_G6` enum('52_Y','53_T') DEFAULT NULL,
  `22_G7` enum('54_Y','55_T') DEFAULT NULL,
  `23_G8` enum('56_Y','57_T') DEFAULT NULL,
  `24_G9` enum('58_Y','59_T') DEFAULT NULL,
  `25_G10` enum('60_Y','61_T') DEFAULT NULL,
  `26_G11` enum('62_Y','63_T') DEFAULT NULL,
  `27_G12` enum('64_Y','65_T') DEFAULT NULL,
  `28_G13` enum('66_Y','67_T') DEFAULT NULL,
  `29_G14` enum('68_Y','69_T') DEFAULT NULL,
  `30_G15` enum('70_Y','71_T') DEFAULT NULL,
  `31_G16` enum('72_Y','73_T') DEFAULT NULL,
  `32_G17` enum('74_Y','75_T') DEFAULT NULL,
  `33_G18` enum('76_Y','77_T') DEFAULT NULL,
  `34_G19` enum('78_Y','79_T') DEFAULT NULL,
  `35_G20` enum('80_Y','81_T') DEFAULT NULL,
  `36_G21` enum('82_Y','83_T') DEFAULT NULL,
  `37_G22` enum('84_Y','85_T') DEFAULT NULL,
  `38_G23` enum('86_Y','87_T') DEFAULT NULL,
  `39_G24` enum('88_Y','89_T') DEFAULT NULL,
  `40_G25` enum('90_Y','91_T') DEFAULT NULL,
  `41_G26` enum('92_Y','93_T') DEFAULT NULL,
  `42_G27` enum('94_Y','95_T') DEFAULT NULL,
  `43_G28` enum('96_Y','97_T') DEFAULT NULL,
  `44_G29` enum('98_Y','99_T') DEFAULT NULL,
  `45_G30` enum('100_Y','101_T') DEFAULT NULL,
  `46_G31` enum('102_Y','103_T') DEFAULT NULL,
  `47_G32` enum('104_Y','105_T') DEFAULT NULL,
  `48_G33` enum('106_Y','107_T') DEFAULT NULL,
  `49_G34` enum('108_Y','109_T') DEFAULT NULL,
  `50_G35` enum('110_Y','111_T') DEFAULT NULL,
  `51_G36` enum('112_Y','113_T') DEFAULT NULL,
  `52_G37` enum('114_Y','115_T') DEFAULT NULL,
  `53_G38` enum('116_Y','117_T') DEFAULT NULL,
  `54_G39` enum('118_Y','119_T') DEFAULT NULL,
  `55_G40` enum('120_Y','121_T') DEFAULT NULL,
  `56_G41` enum('122_Y','123_T') DEFAULT NULL,
  `57_G42` enum('124_Y','125_T') DEFAULT NULL,
  `58_G43` enum('126_Y','127_T') DEFAULT NULL,
  `59_FR1` enum('128_Y','129_T') DEFAULT NULL,
  `60_FR2` enum('130_Y','131_T') DEFAULT NULL,
  `61_FR3` enum('132_Y','133_T') DEFAULT NULL,
  `62_FR4` enum('134_Y','135_T') DEFAULT NULL,
  `63_FR5` enum('136_Y','137_T') DEFAULT NULL,
  `64_FR6` enum('138_Y','139_T') DEFAULT NULL,
  `65_FR7` enum('140_Y','141_T') DEFAULT NULL,
  `66_FR8` enum('142_Y','143_T') DEFAULT NULL,
  `67_FR9` enum('144_Y','145_T') DEFAULT NULL,
  `68_FR10` enum('146_Y','147_T') DEFAULT NULL,
  `69_FR11` enum('148_Y','149_T') DEFAULT NULL,
  `70_FR12` enum('150_Y','151_T') DEFAULT NULL,
  `71_Penyakit` enum('152_Thrombosis-Stroke','153_Embolism-Stroke','154_Intracerebral-hemorrhage-Stroke','155_Subarachnoid-hemorrhage-Stroke','156_Non-Stroke') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_user_2`
--

INSERT INTO `case_user_2` (`case_id`, `6_usia`, `7_jeniskelamin`, `8_kesadaran`, `9_keadaanumum`, `10_nyerikepala`, `11_tekanansistolik`, `12_tekanandiastolik`, `13_suhu`, `14_nafas`, `15_nadi`, `16_G1`, `17_G2`, `18_G3`, `19_G4`, `20_G5`, `21_G6`, `22_G7`, `23_G8`, `24_G9`, `25_G10`, `26_G11`, `27_G12`, `28_G13`, `29_G14`, `30_G15`, `31_G16`, `32_G17`, `33_G18`, `34_G19`, `35_G20`, `36_G21`, `37_G22`, `38_G23`, `39_G24`, `40_G25`, `41_G26`, `42_G27`, `43_G28`, `44_G29`, `45_G30`, `46_G31`, `47_G32`, `48_G33`, `49_G34`, `50_G35`, `51_G36`, `52_G37`, `53_G38`, `54_G39`, `55_G40`, `56_G41`, `57_G42`, `58_G43`, `59_FR1`, `60_FR2`, `61_FR3`, `62_FR4`, `63_FR5`, `64_FR6`, `65_FR7`, `66_FR8`, `67_FR9`, `68_FR10`, `69_FR11`, `70_FR12`, `71_Penyakit`, `user_id`, `case_num`) VALUES
(1, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '44_Y', '46_Y', '49_T', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '121_T', '122_Y', '125_T', '127_T', '128_Y', '131_T', '132_Y', '135_T', '136_Y', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(2, '15_dewasa-3', '18_pria', '19_sadar', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '90_Y', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '117_T', '119_T', '120_Y', '122_Y', '125_T', '127_T', '128_Y', '131_T', '133_T', '135_T', '136_Y', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(3, '16_manula', '17_wanita', '20_apatis', '22_Baik', '25_Nyeri', '28_normal', '32_tinggi', '34_normal', '37_normal', '40_normal', '42_Y', '44_Y', '47_T', '48_Y', '51_T', '53_T', '55_T', '57_T', '59_T', '61_T', '63_T', '65_T', '67_T', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '117_T', '118_Y', '121_T', '123_T', '125_T', '127_T', '128_Y', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(4, '16_manula', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '53_T', '54_Y', '56_Y', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '132_Y', '135_T', '136_Y', '139_T', '141_T', '143_T', '145_T', '146_Y', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(5, '16_manula', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '32_tinggi', '35_tinggi', '37_normal', '40_normal', '43_T', '44_Y', '47_T', '48_Y', '50_Y', '53_T', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '125_T', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(7, '15_dewasa-3', '18_pria', '19_sadar', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '90_Y', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '116_Y', '119_T', '121_T', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(8, '15_dewasa-3', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '41_cepat', '43_T', '44_Y', '47_T', '49_T', '51_T', '53_T', '54_Y', '57_T', '59_T', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(9, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '61_T', '63_T', '65_T', '67_T', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '100_Y', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '118_Y', '120_Y', '122_Y', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(10, '13_dewasa-1', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '35_tinggi', '37_normal', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '52_Y', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '84_Y', '87_T', '89_T', '90_Y', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '125_T', '126_Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(11, '15_dewasa-3', '17_wanita', '21_koma', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '55_T', '56_Y', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '98_Y', '101_T', '103_T', '104_Y', '107_T', '109_T', '110_Y', '112_Y', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '126_Y', '129_T', '131_T', '133_T', '135_T', '137_T', '138_Y', '141_T', '142_Y', '145_T', '146_Y', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(12, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '32_tinggi', '35_tinggi', '37_normal', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '55_T', '57_T', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(13, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '50_Y', '53_T', '54_Y', '57_T', '58_Y', '61_T', '63_T', '65_T', '66_Y', '69_T', '70_Y', '72_Y', '74_Y', '76_Y', '78_Y', '81_T', '82_Y', '84_Y', '86_Y', '88_Y', '90_Y', '92_Y', '94_Y', '96_Y', '99_T', '101_T', '102_Y', '104_Y', '107_T', '109_T', '110_Y', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(14, '15_dewasa-3', '17_wanita', '19_sadar', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '52_Y', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '116_Y', '118_Y', '120_Y', '123_T', '125_T', '127_T', '128_Y', '131_T', '133_T', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(15, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '32_tinggi', '35_tinggi', '37_normal', '41_cepat', '43_T', '45_T', '47_T', '48_Y', '50_Y', '52_Y', '54_Y', '57_T', '58_Y', '61_T', '63_T', '65_T', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '140_Y', '143_T', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(16, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '52_Y', '54_Y', '56_Y', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '98_Y', '101_T', '103_T', '104_Y', '107_T', '108_Y', '110_Y', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '125_T', '127_T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(17, '14_dewasa-2', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '37_normal', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '52_Y', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '68_Y', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(18, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '28_normal', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '49_T', '51_T', '53_T', '55_T', '57_T', '59_T', '60_Y', '63_T', '65_T', '66_Y', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '114_Y', '117_T', '118_Y', '120_Y', '123_T', '124_Y', '127_T', '128_Y', '130_Y', '132_Y', '135_T', '137_T', '138_Y', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '152_Thrombosis-Stroke', 2, 2),
(19, '16_manula', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '57_T', '58_Y', '60_Y', '63_T', '65_T', '67_T', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '132_Y', '135_T', '136_Y', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(20, '16_manula', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '104_Y', '107_T', '109_T', '110_Y', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '133_T', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(21, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '46_Y', '49_T', '51_T', '53_T', '55_T', '57_T', '58_Y', '61_T', '62_Y', '64_Y', '66_Y', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '95_T', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '132_Y', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(22, '16_manula', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '49_T', '51_T', '53_T', '55_T', '56_Y', '59_T', '60_Y', '62_Y', '65_T', '66_Y', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '98_Y', '100_Y', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '128_Y', '130_Y', '132_Y', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '152_Thrombosis-Stroke', 2, 2),
(23, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '49_T', '50_Y', '53_T', '55_T', '56_Y', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '73_T', '74_Y', '76_Y', '78_Y', '80_Y', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '97_T', '98_Y', '101_T', '103_T', '104_Y', '107_T', '108_Y', '110_Y', '112_Y', '115_T', '117_T', '118_Y', '121_T', '122_Y', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '140_Y', '143_T', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(24, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '54_Y', '56_Y', '58_Y', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '104_Y', '107_T', '109_T', '110_Y', '113_T', '115_T', '116_Y', '119_T', '121_T', '122_Y', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(25, '16_manula', '17_wanita', '20_apatis', '22_Baik', '25_Nyeri', '28_normal', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '52_Y', '54_Y', '57_T', '58_Y', '61_T', '62_Y', '64_Y', '66_Y', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '78_Y', '81_T', '82_Y', '84_Y', '86_Y', '88_Y', '90_Y', '92_Y', '94_Y', '96_Y', '98_Y', '100_Y', '103_T', '104_Y', '106_Y', '109_T', '111_T', '112_Y', '115_T', '116_Y', '119_T', '121_T', '122_Y', '125_T', '126_Y', '129_T', '130_Y', '132_Y', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '146_Y', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(26, '16_manula', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '49_T', '51_T', '53_T', '54_Y', '57_T', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '98_Y', '101_T', '102_Y', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '118_Y', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '150_Y', '152_Thrombosis-Stroke', 2, 2),
(27, '16_manula', '17_wanita', '20_apatis', '22_Baik', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '53_T', '55_T', '57_T', '58_Y', '61_T', '63_T', '65_T', '66_Y', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '128_Y', '131_T', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '146_Y', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(28, '16_manula', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '37_normal', '40_normal', '42_Y', '44_Y', '46_Y', '49_T', '50_Y', '52_Y', '55_T', '57_T', '58_Y', '61_T', '62_Y', '64_Y', '66_Y', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '128_Y', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '146_Y', '148_Y', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(29, '16_manula', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '50_Y', '52_Y', '54_Y', '56_Y', '58_Y', '61_T', '62_Y', '64_Y', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '124_Y', '127_T', '128_Y', '130_Y', '133_T', '135_T', '137_T', '138_Y', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(30, '16_manula', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '52_Y', '54_Y', '56_Y', '59_T', '61_T', '63_T', '64_Y', '66_Y', '69_T', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '108_Y', '111_T', '112_Y', '115_T', '116_Y', '118_Y', '121_T', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(31, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '40_normal', '43_T', '44_Y', '46_Y', '48_Y', '50_Y', '53_T', '54_Y', '57_T', '58_Y', '61_T', '63_T', '65_T', '66_Y', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '78_Y', '81_T', '82_Y', '84_Y', '86_Y', '88_Y', '90_Y', '92_Y', '95_T', '96_Y', '99_T', '101_T', '102_Y', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '121_T', '122_Y', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '146_Y', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(32, '16_manula', '18_pria', '21_koma', '24_Jelek', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '42_Y', '44_Y', '46_Y', '49_T', '51_T', '52_Y', '55_T', '57_T', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '82_Y', '84_Y', '86_Y', '88_Y', '90_Y', '93_T', '95_T', '97_T', '99_T', '100_Y', '102_Y', '105_T', '107_T', '109_T', '110_Y', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(33, '16_manula', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '61_T', '62_Y', '65_T', '67_T', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '84_Y', '86_Y', '89_T', '90_Y', '92_Y', '94_Y', '96_Y', '99_T', '101_T', '103_T', '104_Y', '107_T', '108_Y', '110_Y', '113_T', '115_T', '116_Y', '119_T', '121_T', '123_T', '124_Y', '127_T', '128_Y', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(34, '15_dewasa-3', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '53_T', '54_Y', '57_T', '59_T', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '128_Y', '131_T', '132_Y', '135_T', '136_Y', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(35, '15_dewasa-3', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '55_T', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '128_Y', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(36, '16_manula', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '44_Y', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '90_Y', '93_T', '95_T', '96_Y', '99_T', '101_T', '103_T', '104_Y', '107_T', '109_T', '110_Y', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '134_Y', '137_T', '138_Y', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(37, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '35_tinggi', '37_normal', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '52_Y', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '112_Y', '115_T', '116_Y', '119_T', '121_T', '122_Y', '125_T', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(38, '15_dewasa-3', '17_wanita', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '53_T', '55_T', '57_T', '59_T', '60_Y', '63_T', '65_T', '66_Y', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '128_Y', '130_Y', '133_T', '135_T', '136_Y', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(39, '16_manula', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '54_Y', '57_T', '59_T', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '86_Y', '89_T', '90_Y', '92_Y', '94_Y', '96_Y', '99_T', '101_T', '103_T', '104_Y', '107_T', '109_T', '110_Y', '113_T', '114_Y', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '133_T', '135_T', '136_Y', '139_T', '141_T', '142_Y', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(40, '16_manula', '17_wanita', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '37_normal', '40_normal', '43_T', '44_Y', '47_T', '48_Y', '51_T', '53_T', '55_T', '57_T', '59_T', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '114_Y', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '136_Y', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(41, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '46_Y', '48_Y', '50_Y', '53_T', '54_Y', '57_T', '58_Y', '60_Y', '63_T', '65_T', '66_Y', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '117_T', '119_T', '121_T', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '148_Y', '151_T', '152_Thrombosis-Stroke', 2, 2),
(42, '14_dewasa-2', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '52_Y', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '98_Y', '100_Y', '103_T', '104_Y', '107_T', '109_T', '110_Y', '112_Y', '115_T', '117_T', '119_T', '121_T', '123_T', '125_T', '127_T', '129_T', '131_T', '132_Y', '134_Y', '137_T', '139_T', '140_Y', '142_Y', '145_T', '146_Y', '149_T', '150_Y', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(43, '14_dewasa-2', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '28_normal', '31_normal', '34_normal', '37_normal', '40_normal', '42_Y', '44_Y', '47_T', '48_Y', '51_T', '53_T', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '133_T', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '148_Y', '150_Y', '152_Thrombosis-Stroke', 2, 2),
(44, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '32_tinggi', '34_normal', '37_normal', '40_normal', '42_Y', '45_T', '46_Y', '49_T', '50_Y', '52_Y', '54_Y', '56_Y', '58_Y', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '98_Y', '100_Y', '103_T', '104_Y', '106_Y', '108_Y', '110_Y', '112_Y', '115_T', '117_T', '119_T', '121_T', '123_T', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '142_Y', '144_Y', '146_Y', '148_Y', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(45, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '44_Y', '46_Y', '49_T', '51_T', '52_Y', '54_Y', '57_T', '58_Y', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '98_Y', '101_T', '103_T', '104_Y', '107_T', '108_Y', '110_Y', '112_Y', '115_T', '117_T', '119_T', '121_T', '123_T', '125_T', '127_T', '129_T', '131_T', '132_Y', '135_T', '137_T', '138_Y', '140_Y', '143_T', '145_T', '146_Y', '149_T', '150_Y', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(46, '14_dewasa-2', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '37_normal', '40_normal', '43_T', '44_Y', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '63_T', '65_T', '67_T', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '95_T', '97_T', '99_T', '101_T', '102_Y', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '117_T', '118_Y', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '132_Y', '135_T', '136_Y', '139_T', '140_Y', '142_Y', '145_T', '147_T', '148_Y', '150_Y', '153_Embolism-Stroke', 2, 2),
(47, '16_manula', '17_wanita', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '37_normal', '40_normal', '43_T', '44_Y', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '57_T', '58_Y', '60_Y', '63_T', '65_T', '67_T', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '95_T', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '117_T', '118_Y', '121_T', '123_T', '125_T', '127_T', '129_T', '130_Y', '132_Y', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(48, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '61_T', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '74_Y', '76_Y', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '132_Y', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(49, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '51_T', '53_T', '55_T', '56_Y', '59_T', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '128_Y', '130_Y', '132_Y', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(50, '16_manula', '18_pria', '21_koma', '24_Jelek', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '37_normal', '40_normal', '43_T', '44_Y', '47_T', '48_Y', '51_T', '52_Y', '55_T', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(51, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '37_normal', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '57_T', '59_T', '60_Y', '62_Y', '65_T', '66_Y', '69_T', '70_Y', '73_T', '74_Y', '76_Y', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '128_Y', '130_Y', '133_T', '135_T', '137_T', '138_Y', '140_Y', '142_Y', '145_T', '147_T', '148_Y', '150_Y', '153_Embolism-Stroke', 2, 2),
(52, '16_manula', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '40_normal', '43_T', '44_Y', '46_Y', '48_Y', '51_T', '53_T', '55_T', '56_Y', '58_Y', '60_Y', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '74_Y', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '117_T', '119_T', '121_T', '123_T', '125_T', '127_T', '128_Y', '130_Y', '133_T', '135_T', '136_Y', '138_Y', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(53, '16_manula', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '49_T', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '104_Y', '106_Y', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(54, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '64_Y', '67_T', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '122_Y', '124_Y', '127_T', '129_T', '130_Y', '132_Y', '135_T', '137_T', '139_T', '141_T', '142_Y', '144_Y', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(55, '16_manula', '18_pria', '20_apatis', '23_Sedang', '26_Tidak-Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '41_cepat', '43_T', '45_T', '47_T', '49_T', '51_T', '53_T', '54_Y', '57_T', '59_T', '61_T', '63_T', '64_Y', '66_Y', '69_T', '70_Y', '73_T', '74_Y', '76_Y', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '98_Y', '101_T', '102_Y', '105_T', '107_T', '108_Y', '110_Y', '113_T', '115_T', '117_T', '118_Y', '120_Y', '123_T', '125_T', '127_T', '128_Y', '130_Y', '133_T', '135_T', '137_T', '138_Y', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(56, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '32_tinggi', '35_tinggi', '37_normal', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '55_T', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '117_T', '119_T', '121_T', '122_Y', '124_Y', '126_Y', '129_T', '130_Y', '132_Y', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '148_Y', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(57, '15_dewasa-3', '17_wanita', '19_sadar', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '49_T', '51_T', '53_T', '55_T', '57_T', '59_T', '60_Y', '62_Y', '64_Y', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '124_Y', '127_T', '129_T', '131_T', '132_Y', '135_T', '137_T', '138_Y', '141_T', '142_Y', '145_T', '146_Y', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(58, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '55_T', '56_Y', '58_Y', '60_Y', '63_T', '65_T', '66_Y', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '102_Y', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '121_T', '122_Y', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '136_Y', '138_Y', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(59, '15_dewasa-3', '17_wanita', '21_koma', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '62_Y', '64_Y', '67_T', '69_T', '70_Y', '73_T', '74_Y', '76_Y', '79_T', '80_Y', '83_T', '84_Y', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '121_T', '122_Y', '125_T', '127_T', '129_T', '130_Y', '132_Y', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '146_Y', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(60, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '53_T', '55_T', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '84_Y', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '132_Y', '135_T', '137_T', '138_Y', '140_Y', '143_T', '145_T', '146_Y', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(61, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '32_tinggi', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '55_T', '57_T', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '98_Y', '101_T', '103_T', '104_Y', '106_Y', '108_Y', '111_T', '113_T', '114_Y', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '132_Y', '135_T', '137_T', '138_Y', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(62, '16_manula', '18_pria', '21_koma', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '37_normal', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '54_Y', '56_Y', '59_T', '61_T', '63_T', '65_T', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '112_Y', '114_Y', '116_Y', '119_T', '121_T', '122_Y', '124_Y', '126_Y', '129_T', '130_Y', '132_Y', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(63, '15_dewasa-3', '17_wanita', '21_koma', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '35_tinggi', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '100_Y', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '115_T', '117_T', '119_T', '121_T', '122_Y', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '144_Y', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(64, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '26_Tidak-Nyeri', '29_tinggi', '31_normal', '34_normal', '37_normal', '41_cepat', '43_T', '45_T', '46_Y', '49_T', '51_T', '53_T', '54_Y', '57_T', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(65, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '54_Y', '56_Y', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '98_Y', '101_T', '102_Y', '104_Y', '107_T', '109_T', '110_Y', '113_T', '114_Y', '117_T', '119_T', '121_T', '122_Y', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '140_Y', '143_T', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(66, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '54_Y', '56_Y', '59_T', '61_T', '63_T', '65_T', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '114_Y', '116_Y', '119_T', '121_T', '123_T', '125_T', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(67, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '57_T', '59_T', '60_Y', '62_Y', '64_Y', '67_T', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '116_Y', '119_T', '121_T', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '146_Y', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(68, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '32_tinggi', '35_tinggi', '37_normal', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '52_Y', '55_T', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(69, '16_manula', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '70_Y', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '114_Y', '117_T', '118_Y', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(70, '14_dewasa-2', '17_wanita', '20_apatis', '22_Baik', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '49_T', '51_T', '53_T', '54_Y', '57_T', '59_T', '60_Y', '63_T', '64_Y', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '98_Y', '100_Y', '102_Y', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '116_Y', '119_T', '121_T', '122_Y', '124_Y', '127_T', '129_T', '130_Y', '132_Y', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(71, '16_manula', '18_pria', '19_sadar', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '31_normal', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '61_T', '62_Y', '64_Y', '67_T', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '102_Y', '105_T', '107_T', '108_Y', '110_Y', '113_T', '115_T', '117_T', '119_T', '121_T', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(72, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '52_Y', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '112_Y', '115_T', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '128_Y', '130_Y', '133_T', '135_T', '137_T', '138_Y', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(73, '16_manula', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '44_Y', '47_T', '49_T', '51_T', '53_T', '55_T', '56_Y', '59_T', '61_T', '62_Y', '64_Y', '67_T', '69_T', '70_Y', '73_T', '74_Y', '76_Y', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '102_Y', '105_T', '107_T', '108_Y', '110_Y', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '132_Y', '135_T', '137_T', '138_Y', '140_Y', '142_Y', '144_Y', '146_Y', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(74, '16_manula', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '37_normal', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '63_T', '64_Y', '66_Y', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '102_Y', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '116_Y', '118_Y', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '132_Y', '135_T', '136_Y', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(75, '16_manula', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '35_tinggi', '38_cepat', '40_normal', '43_T', '45_T', '46_Y', '49_T', '50_Y', '53_T', '55_T', '57_T', '58_Y', '60_Y', '63_T', '65_T', '67_T', '68_Y', '70_Y', '73_T', '75_T', '77_T', '78_Y', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '125_T', '126_Y', '129_T', '131_T', '133_T', '135_T', '137_T', '138_Y', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(76, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '35_tinggi', '38_cepat', '40_normal', '43_T', '45_T', '46_Y', '49_T', '50_Y', '52_Y', '55_T', '56_Y', '58_Y', '61_T', '63_T', '65_T', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '104_Y', '107_T', '109_T', '111_T', '112_Y', '114_Y', '117_T', '119_T', '121_T', '122_Y', '125_T', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(77, '15_dewasa-3', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '34_normal', '37_normal', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '50_Y', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '63_T', '64_Y', '66_Y', '69_T', '71_T', '73_T', '74_Y', '76_Y', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '98_Y', '101_T', '102_Y', '105_T', '107_T', '108_Y', '110_Y', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '128_Y', '131_T', '133_T', '135_T', '137_T', '138_Y', '141_T', '142_Y', '145_T', '147_T', '148_Y', '150_Y', '153_Embolism-Stroke', 2, 2),
(78, '15_dewasa-3', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '50_Y', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2);
INSERT INTO `case_user_2` (`case_id`, `6_usia`, `7_jeniskelamin`, `8_kesadaran`, `9_keadaanumum`, `10_nyerikepala`, `11_tekanansistolik`, `12_tekanandiastolik`, `13_suhu`, `14_nafas`, `15_nadi`, `16_G1`, `17_G2`, `18_G3`, `19_G4`, `20_G5`, `21_G6`, `22_G7`, `23_G8`, `24_G9`, `25_G10`, `26_G11`, `27_G12`, `28_G13`, `29_G14`, `30_G15`, `31_G16`, `32_G17`, `33_G18`, `34_G19`, `35_G20`, `36_G21`, `37_G22`, `38_G23`, `39_G24`, `40_G25`, `41_G26`, `42_G27`, `43_G28`, `44_G29`, `45_G30`, `46_G31`, `47_G32`, `48_G33`, `49_G34`, `50_G35`, `51_G36`, `52_G37`, `53_G38`, `54_G39`, `55_G40`, `56_G41`, `57_G42`, `58_G43`, `59_FR1`, `60_FR2`, `61_FR3`, `62_FR4`, `63_FR5`, `64_FR6`, `65_FR7`, `66_FR8`, `67_FR9`, `68_FR10`, `69_FR11`, `70_FR12`, `71_Penyakit`, `user_id`, `case_num`) VALUES
(79, '15_dewasa-3', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '55_T', '56_Y', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '104_Y', '106_Y', '108_Y', '110_Y', '112_Y', '115_T', '116_Y', '119_T', '121_T', '122_Y', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(80, '15_dewasa-3', '18_pria', '19_sadar', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '55_T', '56_Y', '59_T', '60_Y', '62_Y', '64_Y', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '108_Y', '110_Y', '113_T', '115_T', '116_Y', '118_Y', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(81, '16_manula', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '49_T', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '102_Y', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(82, '14_dewasa-2', '18_pria', '20_apatis', '24_Jelek', '25_Nyeri', '28_normal', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '112_Y', '115_T', '116_Y', '119_T', '121_T', '122_Y', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(83, '15_dewasa-3', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '97_T', '99_T', '101_T', '102_Y', '105_T', '107_T', '109_T', '110_Y', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '146_Y', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(84, '16_manula', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '37_normal', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '63_T', '64_Y', '66_Y', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '116_Y', '118_Y', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '132_Y', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(85, '14_dewasa-2', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '35_tinggi', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '62_Y', '64_Y', '67_T', '69_T', '71_T', '73_T', '74_Y', '77_T', '79_T', '80_Y', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '99_T', '101_T', '102_Y', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '125_T', '126_Y', '129_T', '130_Y', '132_Y', '134_Y', '136_Y', '139_T', '141_T', '143_T', '144_Y', '147_T', '148_Y', '150_Y', '153_Embolism-Stroke', 2, 2),
(86, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '63_T', '65_T', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '102_Y', '105_T', '107_T', '108_Y', '111_T', '113_T', '114_Y', '116_Y', '118_Y', '120_Y', '123_T', '125_T', '127_T', '128_Y', '131_T', '133_T', '135_T', '137_T', '139_T', '140_Y', '143_T', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(87, '14_dewasa-2', '18_pria', '21_koma', '24_Jelek', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '55_T', '56_Y', '59_T', '61_T', '63_T', '65_T', '66_Y', '68_Y', '70_Y', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '104_Y', '107_T', '108_Y', '110_Y', '112_Y', '115_T', '117_T', '119_T', '121_T', '122_Y', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(88, '14_dewasa-2', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '100_Y', '102_Y', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '116_Y', '119_T', '120_Y', '122_Y', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '143_T', '144_Y', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(89, '14_dewasa-2', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '57_T', '59_T', '60_Y', '63_T', '64_Y', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '102_Y', '105_T', '106_Y', '109_T', '110_Y', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '122_Y', '124_Y', '126_Y', '129_T', '131_T', '133_T', '135_T', '136_Y', '138_Y', '140_Y', '142_Y', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(90, '16_manula', '18_pria', '20_apatis', '23_Sedang', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '51_T', '53_T', '55_T', '57_T', '59_T', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '74_Y', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '114_Y', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '132_Y', '134_Y', '136_Y', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(91, '15_dewasa-3', '17_wanita', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '55_T', '56_Y', '59_T', '60_Y', '62_Y', '65_T', '67_T', '69_T', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '126_Y', '129_T', '130_Y', '132_Y', '134_Y', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(92, '14_dewasa-2', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '61_T', '63_T', '64_Y', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '114_Y', '117_T', '118_Y', '120_Y', '123_T', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '136_Y', '139_T', '141_T', '142_Y', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(93, '14_dewasa-2', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '57_T', '59_T', '60_Y', '63_T', '65_T', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '115_T', '117_T', '118_Y', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '134_Y', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(94, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '52_Y', '55_T', '57_T', '59_T', '61_T', '63_T', '64_Y', '67_T', '68_Y', '70_Y', '72_Y', '74_Y', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '104_Y', '106_Y', '109_T', '111_T', '113_T', '115_T', '116_Y', '118_Y', '121_T', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '134_Y', '137_T', '139_T', '141_T', '142_Y', '145_T', '146_Y', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(95, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '55_T', '57_T', '59_T', '60_Y', '62_Y', '64_Y', '67_T', '69_T', '71_T', '73_T', '75_T', '76_Y', '79_T', '80_Y', '83_T', '84_Y', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '104_Y', '107_T', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '134_Y', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(96, '16_manula', '17_wanita', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '57_T', '59_T', '61_T', '63_T', '64_Y', '66_Y', '69_T', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '98_Y', '100_Y', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '124_Y', '127_T', '129_T', '130_Y', '133_T', '134_Y', '137_T', '138_Y', '141_T', '142_Y', '145_T', '146_Y', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(97, '14_dewasa-2', '17_wanita', '21_koma', '24_Jelek', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '55_T', '57_T', '59_T', '61_T', '63_T', '64_Y', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '104_Y', '107_T', '109_T', '111_T', '112_Y', '115_T', '116_Y', '118_Y', '121_T', '122_Y', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '134_Y', '137_T', '139_T', '141_T', '143_T', '145_T', '146_Y', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(98, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '44_Y', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '62_Y', '64_Y', '67_T', '69_T', '71_T', '73_T', '74_Y', '76_Y', '78_Y', '80_Y', '83_T', '84_Y', '87_T', '89_T', '90_Y', '93_T', '95_T', '96_Y', '98_Y', '101_T', '102_Y', '105_T', '107_T', '108_Y', '111_T', '113_T', '114_Y', '117_T', '119_T', '121_T', '123_T', '125_T', '127_T', '128_Y', '131_T', '133_T', '135_T', '137_T', '139_T', '140_Y', '143_T', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(99, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '44_Y', '47_T', '49_T', '51_T', '53_T', '54_Y', '57_T', '59_T', '61_T', '62_Y', '64_Y', '67_T', '69_T', '70_Y', '73_T', '74_Y', '76_Y', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '106_Y', '108_Y', '111_T', '113_T', '115_T', '116_Y', '119_T', '120_Y', '122_Y', '124_Y', '127_T', '129_T', '131_T', '133_T', '134_Y', '137_T', '138_Y', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(100, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '57_T', '59_T', '60_Y', '63_T', '65_T', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '98_Y', '100_Y', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '116_Y', '119_T', '120_Y', '122_Y', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '136_Y', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '153_Embolism-Stroke', 2, 2),
(101, '16_manula', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '57_T', '59_T', '60_Y', '62_Y', '65_T', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '106_Y', '108_Y', '111_T', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '133_T', '134_Y', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(102, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '55_T', '56_Y', '59_T', '60_Y', '62_Y', '64_Y', '66_Y', '68_Y', '71_T', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '84_Y', '86_Y', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '112_Y', '114_Y', '117_T', '119_T', '121_T', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '134_Y', '137_T', '138_Y', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(103, '14_dewasa-2', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '52_Y', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '71_T', '72_Y', '75_T', '77_T', '78_Y', '81_T', '82_Y', '84_Y', '86_Y', '88_Y', '90_Y', '92_Y', '94_Y', '96_Y', '99_T', '101_T', '103_T', '104_Y', '106_Y', '109_T', '110_Y', '113_T', '115_T', '117_T', '119_T', '121_T', '122_Y', '124_Y', '127_T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(104, '16_manula', '17_wanita', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '71_T', '73_T', '74_Y', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '108_Y', '111_T', '113_T', '115_T', '117_T', '119_T', '120_Y', '122_Y', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '134_Y', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(105, '15_dewasa-3', '17_wanita', '21_koma', '24_Jelek', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '43_T', '44_Y', '47_T', '49_T', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '62_Y', '64_Y', '67_T', '68_Y', '71_T', '73_T', '74_Y', '77_T', '79_T', '80_Y', '83_T', '84_Y', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '112_Y', '115_T', '117_T', '119_T', '120_Y', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '134_Y', '137_T', '139_T', '141_T', '142_Y', '144_Y', '146_Y', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(106, '16_manula', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '63_T', '64_Y', '66_Y', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '131_T', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '148_Y', '151_T', '153_Embolism-Stroke', 2, 2),
(107, '16_manula', '17_wanita', '21_koma', '24_Jelek', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '53_T', '54_Y', '56_Y', '59_T', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '97_T', '98_Y', '101_T', '102_Y', '104_Y', '107_T', '108_Y', '110_Y', '112_Y', '115_T', '117_T', '118_Y', '121_T', '122_Y', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '143_T', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(108, '14_dewasa-2', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '52_Y', '54_Y', '56_Y', '58_Y', '61_T', '63_T', '65_T', '67_T', '68_Y', '70_Y', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '104_Y', '107_T', '109_T', '110_Y', '113_T', '115_T', '116_Y', '119_T', '121_T', '122_Y', '124_Y', '127_T', '129_T', '130_Y', '133_T', '134_Y', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '154_Intracerebral-hemorrhage-Stroke', 2, 2),
(109, '15_dewasa-3', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '53_T', '54_Y', '57_T', '58_Y', '61_T', '63_T', '65_T', '66_Y', '68_Y', '71_T', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '114_Y', '116_Y', '119_T', '121_T', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(110, '14_dewasa-2', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '44_Y', '46_Y', '48_Y', '50_Y', '53_T', '54_Y', '57_T', '58_Y', '61_T', '63_T', '65_T', '66_Y', '68_Y', '70_Y', '72_Y', '74_Y', '76_Y', '78_Y', '81_T', '82_Y', '84_Y', '86_Y', '88_Y', '90_Y', '92_Y', '94_Y', '96_Y', '99_T', '101_T', '102_Y', '105_T', '107_T', '109_T', '110_Y', '112_Y', '115_T', '116_Y', '119_T', '121_T', '122_Y', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(111, '15_dewasa-3', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '34_normal', '37_normal', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '55_T', '56_Y', '58_Y', '60_Y', '63_T', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '102_Y', '105_T', '107_T', '109_T', '110_Y', '113_T', '115_T', '116_Y', '119_T', '121_T', '122_Y', '124_Y', '126_Y', '129_T', '130_Y', '132_Y', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(112, '16_manula', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '138_Y', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(113, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '48_Y', '51_T', '53_T', '55_T', '56_Y', '59_T', '60_Y', '62_Y', '64_Y', '66_Y', '68_Y', '71_T', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '84_Y', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '104_Y', '107_T', '109_T', '110_Y', '113_T', '114_Y', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '134_Y', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(114, '16_manula', '17_wanita', '19_sadar', '22_Baik', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '52_Y', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '70_Y', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '97_T', '99_T', '101_T', '102_Y', '105_T', '107_T', '109_T', '110_Y', '113_T', '114_Y', '116_Y', '119_T', '121_T', '123_T', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(115, '16_manula', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '46_Y', '49_T', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '110_Y', '113_T', '114_Y', '117_T', '119_T', '120_Y', '123_T', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(116, '14_dewasa-2', '18_pria', '20_apatis', '22_Baik', '25_Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '48_Y', '50_Y', '53_T', '54_Y', '56_Y', '59_T', '60_Y', '63_T', '65_T', '67_T', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '90_Y', '93_T', '95_T', '96_Y', '99_T', '100_Y', '103_T', '104_Y', '107_T', '109_T', '110_Y', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '124_Y', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(117, '16_manula', '17_wanita', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '57_T', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '69_T', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '98_Y', '101_T', '102_Y', '105_T', '107_T', '109_T', '110_Y', '113_T', '114_Y', '117_T', '118_Y', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(118, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '46_Y', '49_T', '51_T', '53_T', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '67_T', '68_Y', '70_Y', '72_Y', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '94_Y', '97_T', '99_T', '101_T', '102_Y', '104_Y', '107_T', '109_T', '110_Y', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '151_T', '152_Thrombosis-Stroke', 2, 2),
(119, '14_dewasa-2', '18_pria', '19_sadar', '22_Baik', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '42_Y', '45_T', '47_T', '48_Y', '51_T', '53_T', '54_Y', '57_T', '58_Y', '60_Y', '63_T', '64_Y', '66_Y', '69_T', '70_Y', '73_T', '75_T', '77_T', '79_T', '80_Y', '83_T', '85_T', '87_T', '89_T', '90_Y', '93_T', '94_Y', '97_T', '99_T', '101_T', '102_Y', '105_T', '107_T', '108_Y', '110_Y', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '152_Thrombosis-Stroke', 2, 2),
(120, '16_manula', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '53_T', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '117_T', '118_Y', '120_Y', '123_T', '125_T', '126_Y', '129_T', '130_Y', '133_T', '134_Y', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '156_Non-Stroke', 2, 2),
(121, '14_dewasa-2', '17_wanita', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '53_T', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '115_T', '116_Y', '118_Y', '120_Y', '123_T', '125_T', '127_T', '129_T', '130_Y', '133_T', '135_T', '136_Y', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '156_Non-Stroke', 2, 2),
(122, '15_dewasa-3', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '53_T', '55_T', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '96_Y', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '117_T', '119_T', '120_Y', '123_T', '124_Y', '127_T', '128_Y', '130_Y', '133_T', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '156_Non-Stroke', 2, 2),
(123, '15_dewasa-3', '17_wanita', '19_sadar', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '50_Y', '53_T', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '128_Y', '130_Y', '132_Y', '134_Y', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '156_Non-Stroke', 2, 2),
(124, '14_dewasa-2', '18_pria', '20_apatis', '23_Sedang', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '53_T', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '114_Y', '116_Y', '118_Y', '120_Y', '123_T', '125_T', '127_T', '128_Y', '131_T', '133_T', '134_Y', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '156_Non-Stroke', 2, 2),
(125, '16_manula', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '29_tinggi', '32_tinggi', '35_tinggi', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '53_T', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '124_Y', '126_Y', '129_T', '130_Y', '133_T', '134_Y', '136_Y', '139_T', '141_T', '143_T', '145_T', '147_T', '149_T', '151_T', '156_Non-Stroke', 2, 2),
(126, '16_manula', '18_pria', '20_apatis', '22_Baik', '26_Tidak-Nyeri', '29_tinggi', '31_normal', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '47_T', '49_T', '51_T', '52_Y', '55_T', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '106_Y', '109_T', '111_T', '113_T', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '125_T', '127_T', '128_Y', '131_T', '133_T', '134_Y', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '156_Non-Stroke', 2, 2),
(127, '16_manula', '18_pria', '20_apatis', '23_Sedang', '26_Tidak-Nyeri', '29_tinggi', '32_tinggi', '34_normal', '38_cepat', '40_normal', '43_T', '45_T', '46_Y', '48_Y', '51_T', '53_T', '54_Y', '57_T', '59_T', '61_T', '63_T', '65_T', '66_Y', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '91_T', '93_T', '95_T', '97_T', '99_T', '101_T', '103_T', '105_T', '107_T', '109_T', '111_T', '112_Y', '115_T', '116_Y', '118_Y', '120_Y', '123_T', '124_Y', '127_T', '128_Y', '130_Y', '132_Y', '135_T', '137_T', '139_T', '141_T', '143_T', '145_T', '147_T', '148_Y', '151_T', '156_Non-Stroke', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `case_user_15`
--

CREATE TABLE `case_user_15` (
  `case_id` int NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `83_ef` enum('164_evs','175_okf','176_wed3wfe','177_wef','178_ewds') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `84_efsad` enum('163_dfvd','179_d') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_user_15`
--

INSERT INTO `case_user_15` (`case_id`, `user_id`, `case_num`, `83_ef`, `84_efsad`) VALUES
(1, 15, 15, '164_evs', '163_dfvd'),
(2, 15, 15, '164_evs', '179_d'),
(3, 15, 15, '175_okf', '163_dfvd'),
(4, 15, 15, '175_okf', '179_d'),
(5, 15, 15, '176_wed3wfe', '163_dfvd'),
(6, 15, 15, '176_wed3wfe', '179_d'),
(7, 15, 15, '177_wef', '163_dfvd'),
(8, 15, 15, '177_wef', '179_d'),
(9, 15, 15, '178_ewds', '163_dfvd'),
(10, 15, 15, '178_ewds', '179_d');

-- --------------------------------------------------------

--
-- Table structure for table `case_user_17`
--

CREATE TABLE `case_user_17` (
  `case_id` int NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `86_a` enum('165_a1','166_a2','167_a3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `87_b` enum('168_b1','169_b2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `88_c` enum('170_c1','171_c2','172_c3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `89_g` enum('173_g1','174_g2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_user_17`
--

INSERT INTO `case_user_17` (`case_id`, `user_id`, `case_num`, `86_a`, `87_b`, `88_c`, `89_g`) VALUES
(1, 17, 17, '165_a1', '168_b1', '170_c1', '174_g2');

-- --------------------------------------------------------

--
-- Table structure for table `case_user_21`
--

CREATE TABLE `case_user_21` (
  `case_id` int NOT NULL,
  `114_a` enum('193_a1','194_a2','195_a3','196_a4') DEFAULT NULL,
  `115_b` enum('197_b1','198_b2','199_b3','200_b4','201_b5') DEFAULT NULL,
  `116_c` enum('202_c1','203_c2') DEFAULT NULL,
  `117_d` enum('204_d1','205_d2','206_d3') DEFAULT NULL,
  `141_coba_lagi` enum('214_coba ini') DEFAULT NULL,
  `118_goals` enum('207_penyakit','208_buku','209_perabotan','210_makanan') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_user_21`
--

INSERT INTO `case_user_21` (`case_id`, `114_a`, `115_b`, `116_c`, `117_d`, `141_coba_lagi`, `118_goals`, `user_id`, `case_num`) VALUES
(1, '194_a2', '197_b1', '202_c1', '204_d1', '214_coba ini', '208_buku', 21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `case_user_22`
--

CREATE TABLE `case_user_22` (
  `case_id` int NOT NULL,
  `110_windy` enum('187_jksv') DEFAULT NULL,
  `111_coba_lagi` enum('192_fig') DEFAULT NULL,
  `112_test` enum('189_dfe','190_wef') DEFAULT NULL,
  `113_rainy` enum('191_fds') DEFAULT NULL,
  `109_coba` enum('188_ewfj') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_user_22`
--

INSERT INTO `case_user_22` (`case_id`, `110_windy`, `111_coba_lagi`, `112_test`, `113_rainy`, `109_coba`, `user_id`, `case_num`) VALUES
(1, '187_jksv', '192_fig', '189_dfe', '191_fds', '188_ewfj', 22, 22),
(2, '187_jksv', '192_fig', '190_wef', '191_fds', '188_ewfj', 22, 22);

-- --------------------------------------------------------

--
-- Table structure for table `case_user_24`
--

CREATE TABLE `case_user_24` (
  `case_id` int NOT NULL,
  `147_IPK` enum('222_< 2.5','223_2.5-3.0','224_3.0-3.5','225_> 3.5') DEFAULT NULL,
  `148_Kehadiran` enum('226_Rendah','227_Sedang','228_Tinggi') DEFAULT NULL,
  `149_Aktivitas_Organisasi` enum('229_Tidak Aktif','230_Aktif') DEFAULT NULL,
  `150_Beban_SKS` enum('231_Ringan','232_Sedang','233_Berat') DEFAULT NULL,
  `151_Status_Pekerjaan` enum('234_Tidak Bekerja','235_Paruh Waktu','236_Penuh Waktu') DEFAULT NULL,
  `152_Lulus_Tepat_Waktu` enum('237_Ya','238_Tidak') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_user_24`
--

INSERT INTO `case_user_24` (`case_id`, `147_IPK`, `148_Kehadiran`, `149_Aktivitas_Organisasi`, `150_Beban_SKS`, `151_Status_Pekerjaan`, `152_Lulus_Tepat_Waktu`, `user_id`, `case_num`) VALUES
(1, '224_3.0-3.5', '228_Tinggi', '230_Aktif', '232_Sedang', '234_Tidak Bekerja', '237_Ya', 24, 24),
(2, '223_2.5-3.0', '227_Sedang', '229_Tidak Aktif', '233_Berat', '236_Penuh Waktu', '238_Tidak', 24, 24),
(3, '225_> 3.5', '228_Tinggi', '230_Aktif', '231_Ringan', '235_Paruh Waktu', '237_Ya', 24, 24),
(4, '222_< 2.5', '226_Rendah', '229_Tidak Aktif', '233_Berat', '236_Penuh Waktu', '238_Tidak', 24, 24),
(5, '224_3.0-3.5', '227_Sedang', '230_Aktif', '232_Sedang', '234_Tidak Bekerja', '237_Ya', 24, 24);

-- --------------------------------------------------------

--
-- Table structure for table `case_user_25`
--

CREATE TABLE `case_user_25` (
  `case_id` int NOT NULL,
  `154_bentuk_tangan` enum('241_lurus','245_miring','250_mengepak') DEFAULT NULL,
  `155_bentuk_kaki` enum('242_ditekuk','246_lurus','251_naik','252_turun') DEFAULT NULL,
  `156_percikkan_air` enum('243_banyak','247_sedikit','248_tidak ada') DEFAULT NULL,
  `153_gaya` enum('240_batu','244_katak','249_kupu-kupu') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_user_25`
--

INSERT INTO `case_user_25` (`case_id`, `154_bentuk_tangan`, `155_bentuk_kaki`, `156_percikkan_air`, `153_gaya`, `user_id`, `case_num`) VALUES
(1, '241_lurus', '246_lurus', '247_sedikit', '240_batu', 25, 25),
(2, '245_miring', '242_ditekuk', '243_banyak', '244_katak', 25, 25),
(3, '245_miring', '252_turun', '248_tidak ada', '244_katak', 25, 25),
(4, '245_miring', '242_ditekuk', '247_sedikit', '244_katak', 25, 25),
(5, '250_mengepak', '251_naik', '243_banyak', '249_kupu-kupu', 25, 25),
(6, '250_mengepak', '242_ditekuk', '243_banyak', '240_batu', 25, 25);

-- --------------------------------------------------------

--
-- Table structure for table `case_user_26`
--

CREATE TABLE `case_user_26` (
  `case_id` int NOT NULL,
  `157_a` enum('253_a1','254_a2') DEFAULT NULL,
  `158_b` enum('255_b1','256_b2','257_b3') DEFAULT NULL,
  `159_g` enum('258_t','259_f') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_user_26`
--

INSERT INTO `case_user_26` (`case_id`, `157_a`, `158_b`, `159_g`, `user_id`, `case_num`) VALUES
(1, '254_a2', '255_b1', '258_t', 26, 26),
(2, '254_a2', '256_b2', '259_f', 26, 26),
(3, '253_a1', '255_b1', '259_f', 26, 26),
(4, '254_a2', '257_b3', '258_t', 26, 26),
(5, '253_a1', '257_b3', '258_t', 26, 26);

-- --------------------------------------------------------

--
-- Table structure for table `case_user_27`
--

CREATE TABLE `case_user_27` (
  `case_id` int NOT NULL,
  `160_1` enum('260_11','261_12') DEFAULT NULL,
  `161_2` enum('262_21','263_22','264_23') DEFAULT NULL,
  `162_3` enum('265_31','266_32','267_33','268_34') DEFAULT NULL,
  `163_4` enum('269_41','270_42') DEFAULT NULL,
  `164_5` enum('271_51','272_52') DEFAULT NULL,
  `165_6` enum('273_61','274_62') DEFAULT NULL,
  `166_7` enum('275_71') DEFAULT NULL,
  `168_9` enum('279_91','280_92') DEFAULT NULL,
  `169_8` enum('281_81','282_82') DEFAULT NULL,
  `170_10` enum('283_101') DEFAULT NULL,
  `171_11` enum('284_111') DEFAULT NULL,
  `172_12` enum('285_121') DEFAULT NULL,
  `173_13` enum('286_131') DEFAULT NULL,
  `174_14` enum('287_141','288_142') DEFAULT NULL,
  `175_15` enum('289_151','290_152','291_153') DEFAULT NULL,
  `176_16` enum('292_161') DEFAULT NULL,
  `177_17` enum('293_171') DEFAULT NULL,
  `178_18` enum('294_181','295_182') DEFAULT NULL,
  `179_19` enum('296_191') DEFAULT NULL,
  `180_20` enum('297_201') DEFAULT NULL,
  `181_21` enum('298_211','299_212') DEFAULT NULL,
  `182_22` enum('300_221') DEFAULT NULL,
  `183_23` enum('301_231') DEFAULT NULL,
  `184_24` enum('302_241') DEFAULT NULL,
  `185_25` enum('303_251','304_252') DEFAULT NULL,
  `186_26` enum('305_261') DEFAULT NULL,
  `187_27` enum('306_271') DEFAULT NULL,
  `188_28` enum('307_281','308_282') DEFAULT NULL,
  `189_29` enum('309_291','310_292','311_293') DEFAULT NULL,
  `167_goal` enum('276_hasil 1','277_hasil 2','278_hasil 3') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_bc_user_1`
--

CREATE TABLE `inferensi_bc_user_1` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_bc_user_1`
--

INSERT INTO `inferensi_bc_user_1` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`, `waktu`) VALUES
(4, '4', 'user_id=1', '1', '5_Play=11_yes', '1.0000', '0', 1, '0.04809284210205'),
(8, '8', 'user_id=1', '1', '5_Play=11_yes', '1.0000', '0', 1, '0.05380487442017'),
(10, '10', 'user_id=1', '3', '5_Play=11_yes', '1.0000', '0', 1, '0.05591988563538'),
(12, '12', 'user_id=1', '1', '5_Play=11_yes', '1.0000', '0', 1, '0.05804586410523');

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_bc_user_2`
--

CREATE TABLE `inferensi_bc_user_2` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_bc_user_2`
--

INSERT INTO `inferensi_bc_user_2` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`, `waktu`) VALUES
(13, '13', 'user_id=2', '28', '71_Penyakit=153_Embolism-Stroke', '1.0000', '0', 2, '0.04841089248657'),
(18, '18', 'user_id=2', '11', '71_Penyakit=154_Intracerebral-hemorrhage-Stroke', '1.0000', '0', 2, '0.05414485931397');

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_bc_user_26`
--

CREATE TABLE `inferensi_bc_user_26` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_bc_user_26`
--

INSERT INTO `inferensi_bc_user_26` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`, `waktu`) VALUES
(1, '3', 'user_id=26', '2', '159_g=258_t', '1.0000', '0', 26, '0.02733492851257');

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_fc_user_1`
--

CREATE TABLE `inferensi_fc_user_1` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_fc_user_1`
--

INSERT INTO `inferensi_fc_user_1` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`, `waktu`) VALUES
(3, '3', 'user_id=1', '1', '5_Play=11_yes', '1.0000', '0', 1, '0.01875710487366'),
(11, '11', 'user_id=1', '1', '5_Play=11_yes', '1.0000', '0', 1, '0.02350592613220'),
(13, '13', 'user_id=1', '1', '5_Play=11_yes', '1.0000', '0', 1, '0.02512693405151');

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_fc_user_2`
--

CREATE TABLE `inferensi_fc_user_2` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_fc_user_2`
--

INSERT INTO `inferensi_fc_user_2` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`, `waktu`) VALUES
(12, '12', 'user_id=2', '28', '71_Penyakit=153_Embolism-Stroke', '1.0000', '0', 2, '0.02313709259033'),
(15, '15', 'user_id=2', '3', '71_Penyakit=152_Thrombosis-Stroke', '1.0000', '0', 2, '0.02780508995056');

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_fc_user_26`
--

CREATE TABLE `inferensi_fc_user_26` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_fc_user_26`
--

INSERT INTO `inferensi_fc_user_26` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`, `waktu`) VALUES
(1, '2', 'user_id=26', '2', '159_g=258_t', '1.0000', '0', 26, '0.02821397781372');

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_user_`
--

CREATE TABLE `inferensi_user_` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_user_1`
--

CREATE TABLE `inferensi_user_1` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_user_1`
--

INSERT INTO `inferensi_user_1` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`, `waktu`) VALUES
(1, '1', 'user_id=1', '1', '5_Play=11_yes', '1.0000', '0', 1, '0.03643798828125');

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_user_2`
--

CREATE TABLE `inferensi_user_2` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_user_2`
--

INSERT INTO `inferensi_user_2` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`, `waktu`) VALUES
(11, '11', 'user_id=2', '28', '71_Penyakit=153_Embolism-Stroke', '1.0000', '0', 2, '0.05526590347290'),
(14, '14', 'user_id=2', '6', '71_Penyakit=153_Embolism-Stroke', '1.0000', '0', 2, '0.05982208251953'),
(16, '16', 'user_id=2', '29', '71_Penyakit=156_Non-Stroke', '1.0000', '0', 2, '0.06217503547669'),
(17, '17', 'user_id=2', '15', '71_Penyakit=153_Embolism-Stroke', '1.0000', '0', 2, '0.06434202194214');

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_user_15`
--

CREATE TABLE `inferensi_user_15` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_user_17`
--

CREATE TABLE `inferensi_user_17` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_user_21`
--

CREATE TABLE `inferensi_user_21` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_user_24`
--

CREATE TABLE `inferensi_user_24` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_user_24`
--

INSERT INTO `inferensi_user_24` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`) VALUES
(1, '1', '152_Lulus_Tepat_Waktu=', '3', '152_Lulus_Tepat_Waktu=237_Ya', '1.0000', '0', 24),
(2, '2', '152_Lulus_Tepat_Waktu=', '1', '152_Lulus_Tepat_Waktu=238_Tidak', '1.0000', '0', 24);

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_user_25`
--

CREATE TABLE `inferensi_user_25` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_user_25`
--

INSERT INTO `inferensi_user_25` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`, `waktu`) VALUES
(1, '1', 'user_id=25', '4', '153_gaya=240_batu', '1.0000', '0', 25, '0.02612113952637');

-- --------------------------------------------------------

--
-- Table structure for table `inferensi_user_26`
--

CREATE TABLE `inferensi_user_26` (
  `inf_id` int NOT NULL,
  `case_id` varchar(100) NOT NULL,
  `case_goal` varchar(200) NOT NULL,
  `rule_id` varchar(100) NOT NULL,
  `rule_goal` varchar(200) NOT NULL,
  `match_value` decimal(5,4) NOT NULL,
  `cocok` enum('1','0') NOT NULL,
  `user_id` int NOT NULL,
  `waktu` decimal(16,14) NOT NULL DEFAULT '0.00000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inferensi_user_26`
--

INSERT INTO `inferensi_user_26` (`inf_id`, `case_id`, `case_goal`, `rule_id`, `rule_goal`, `match_value`, `cocok`, `user_id`, `waktu`) VALUES
(1, '1', 'user_id=26', '2', '159_g=258_t', '1.0000', '0', 26, '0.02032709121704');

-- --------------------------------------------------------

--
-- Table structure for table `kasus`
--

CREATE TABLE `kasus` (
  `case_num` int NOT NULL,
  `case_title` varchar(200) NOT NULL,
  `case_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kasus`
--

INSERT INTO `kasus` (`case_num`, `case_title`, `case_desc`) VALUES
(1, 'Kasus keputusan bermain tenis', 'Kasus keputusan bermain tenis coba'),
(2, 'Kasus diagnosis penyakit stroke', 'Kasus diagnosis penyakit stroke'),
(15, 'ini coba', 'ini juga coba'),
(16, 'apa ya', 'coba terus'),
(17, 'projek 3', 'coba'),
(19, 'admin title', 'admin desc yaa'),
(21, 'Testing finishing', 'Testing finishing'),
(22, 'uji coba', 'uji coba'),
(23, 'kasus aa', 'kasus aa'),
(24, 'ini uji coba', 'uji coba descnya'),
(25, 'berenang', 'saya ingin berenangq'),
(26, 'kasus baru', 'ini kasus baru'),
(27, 'test banyak', 'test banyak');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `rule_id` int NOT NULL,
  `if_part` varchar(200) NOT NULL,
  `then_part` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rule_user_1`
--

CREATE TABLE `rule_user_1` (
  `rule_id` int NOT NULL,
  `if_part` varchar(200) NOT NULL,
  `then_part` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rule_user_1`
--

INSERT INTO `rule_user_1` (`rule_id`, `if_part`, `then_part`, `user_id`, `case_num`) VALUES
(1, '1_outlook=2_cloudy', '5_Play=11_yes', 1, 1),
(2, '1_outlook=1_sunny and 3_humidity=7_high', '5_Play=12_no', 1, 1),
(3, '1_outlook=1_sunny and 3_humidity=8_normal', '5_Play=11_yes', 1, 1),
(4, '1_outlook=3_rainy and 4_windy=9_true', '5_Play=12_no', 1, 1),
(5, '1_outlook=3_rainy and 4_windy=10_false', '5_Play=11_yes', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rule_user_2`
--

CREATE TABLE `rule_user_2` (
  `rule_id` int NOT NULL,
  `if_part` varchar(200) NOT NULL,
  `then_part` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rule_user_2`
--

INSERT INTO `rule_user_2` (`rule_id`, `if_part`, `then_part`, `user_id`, `case_num`) VALUES
(1, '25_G10=60_Y and 29_G14=68_Y and 23_G8=56_Y', '71_Penyakit=152_Thrombosis-Stroke', 2, 2),
(2, '25_G10=60_Y and 29_G14=68_Y and 23_G8=57_T and 12_tekanandiastolik=30_rendah', '71_Penyakit=156_Non-Stroke', 2, 2),
(3, '25_G10=60_Y and 29_G14=68_Y and 23_G8=57_T and 12_tekanandiastolik=31_normal', '71_Penyakit=152_Thrombosis-Stroke', 2, 2),
(4, '25_G10=60_Y and 29_G14=68_Y and 23_G8=57_T and 12_tekanandiastolik=32_tinggi', '71_Penyakit=153_Embolism-Stroke', 2, 2),
(5, '25_G10=60_Y and 29_G14=69_T and 31_G16=72_Y and 30_G15=70_Y', '71_Penyakit=152_Thrombosis-Stroke', 2, 2),
(6, '25_G10=60_Y and 29_G14=69_T and 31_G16=72_Y and 30_G15=71_T', '71_Penyakit=153_Embolism-Stroke', 2, 2),
(7, '25_G10=61_T and 29_G14=68_Y and 28_G13=66_Y and 6_usia=13_dewasa-1', '71_Penyakit=155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(8, '25_G10=61_T and 29_G14=68_Y and 28_G13=66_Y and 6_usia=15_dewasa-3', '71_Penyakit=155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(9, '25_G10=61_T and 29_G14=68_Y and 28_G13=66_Y and 6_usia=16_manula', '71_Penyakit=155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(10, '25_G10=61_T and 29_G14=68_Y and 28_G13=67_T and 47_G32=104_Y', '71_Penyakit=154_Intracerebral-hemorrhage-Stroke', 2, 2),
(11, '25_G10=61_T and 29_G14=69_T and 31_G16=72_Y and 23_G8=56_Y', '71_Penyakit=154_Intracerebral-hemorrhage-Stroke', 2, 2),
(12, '25_G10=60_Y and 29_G14=69_T and 31_G16=73_T and 37_G22=84_Y and 8_kesadaran=19_sadar', '71_Penyakit=156_Non-Stroke', 2, 2),
(13, '25_G10=60_Y and 29_G14=69_T and 31_G16=73_T and 37_G22=84_Y and 8_kesadaran=20_apatis', '71_Penyakit=152_Thrombosis-Stroke', 2, 2),
(14, '25_G10=60_Y and 29_G14=69_T and 31_G16=73_T and 37_G22=84_Y and 8_kesadaran=21_koma', '71_Penyakit=153_Embolism-Stroke', 2, 2),
(15, '25_G10=60_Y and 29_G14=69_T and 31_G16=73_T and 37_G22=85_T and 6_usia=13_dewasa-1', '71_Penyakit=153_Embolism-Stroke', 2, 2),
(16, '25_G10=60_Y and 29_G14=69_T and 31_G16=73_T and 37_G22=85_T and 6_usia=15_dewasa-3', '71_Penyakit=153_Embolism-Stroke', 2, 2),
(17, '25_G10=60_Y and 29_G14=69_T and 31_G16=73_T and 37_G22=85_T and 6_usia=16_manula', '71_Penyakit=153_Embolism-Stroke', 2, 2),
(18, '25_G10=61_T and 29_G14=68_Y and 28_G13=66_Y and 6_usia=14_dewasa-2 and 30_G15=70_Y', '71_Penyakit=155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(19, '25_G10=61_T and 29_G14=68_Y and 28_G13=66_Y and 6_usia=14_dewasa-2 and 30_G15=71_T', '71_Penyakit=154_Intracerebral-hemorrhage-Stroke', 2, 2),
(20, '25_G10=61_T and 29_G14=68_Y and 28_G13=67_T and 47_G32=105_T and 8_kesadaran=19_sadar', '71_Penyakit=154_Intracerebral-hemorrhage-Stroke', 2, 2),
(21, '25_G10=61_T and 29_G14=68_Y and 28_G13=67_T and 47_G32=105_T and 8_kesadaran=20_apatis', '71_Penyakit=155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(22, '25_G10=61_T and 29_G14=68_Y and 28_G13=67_T and 47_G32=105_T and 8_kesadaran=21_koma', '71_Penyakit=154_Intracerebral-hemorrhage-Stroke', 2, 2),
(23, '25_G10=61_T and 29_G14=69_T and 31_G16=72_Y and 23_G8=57_T and 9_keadaanumum=22_Baik', '71_Penyakit=152_Thrombosis-Stroke', 2, 2),
(24, '25_G10=61_T and 29_G14=69_T and 31_G16=72_Y and 23_G8=57_T and 9_keadaanumum=23_Sedang', '71_Penyakit=155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(25, '25_G10=61_T and 29_G14=69_T and 31_G16=72_Y and 23_G8=57_T and 9_keadaanumum=24_Jelek', '71_Penyakit=155_Subarachnoid-hemorrhage-Stroke', 2, 2),
(26, '25_G10=61_T and 29_G14=69_T and 31_G16=73_T and 35_G20=80_Y and 48_G33=106_Y', '71_Penyakit=152_Thrombosis-Stroke', 2, 2),
(27, '25_G10=61_T and 29_G14=69_T and 31_G16=73_T and 35_G20=80_Y and 48_G33=107_T', '71_Penyakit=153_Embolism-Stroke', 2, 2),
(28, '25_G10=61_T and 29_G14=69_T and 31_G16=73_T and 35_G20=81_T and 16_G1=42_Y', '71_Penyakit=153_Embolism-Stroke', 2, 2),
(29, '25_G10=61_T and 29_G14=69_T and 31_G16=73_T and 35_G20=81_T and 16_G1=43_T', '71_Penyakit=156_Non-Stroke', 2, 2),
(30, '25_G10=60_Y and 29_G14=69_T and 31_G16=73_T and 37_G22=85_T and 6_usia=14_dewasa-2 and 50_G35=111_T', '71_Penyakit=153_Embolism-Stroke', 2, 2),
(31, '25_G10=60_Y and 29_G14=69_T and 31_G16=73_T and 37_G22=85_T and 6_usia=14_dewasa-2 and 50_G35=110_Y and 13_suhu=33_rendah', '71_Penyakit=153_Embolism-Stroke', 2, 2),
(32, '25_G10=60_Y and 29_G14=69_T and 31_G16=73_T and 37_G22=85_T and 6_usia=14_dewasa-2 and 50_G35=110_Y and 13_suhu=34_normal', '71_Penyakit=152_Thrombosis-Stroke', 2, 2),
(33, '25_G10=60_Y and 29_G14=69_T and 31_G16=73_T and 37_G22=85_T and 6_usia=14_dewasa-2 and 50_G35=110_Y and 13_suhu=35_tinggi', '71_Penyakit=153_Embolism-Stroke', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rule_user_15`
--

CREATE TABLE `rule_user_15` (
  `rule_id` int NOT NULL,
  `if_part` varchar(200) NOT NULL,
  `then_part` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rule_user_17`
--

CREATE TABLE `rule_user_17` (
  `rule_id` int NOT NULL,
  `if_part` varchar(200) NOT NULL,
  `then_part` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rule_user_21`
--

CREATE TABLE `rule_user_21` (
  `rule_id` int NOT NULL,
  `if_part` varchar(200) NOT NULL,
  `then_part` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rule_user_24`
--

CREATE TABLE `rule_user_24` (
  `rule_id` int NOT NULL,
  `if_part` varchar(200) NOT NULL,
  `then_part` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rule_user_24`
--

INSERT INTO `rule_user_24` (`rule_id`, `if_part`, `then_part`, `user_id`, `case_num`) VALUES
(1, '147_IPK=222_< 2.5', '152_Lulus_Tepat_Waktu=238_Tidak', 24, 24),
(2, '147_IPK=223_2.5-3.0', '152_Lulus_Tepat_Waktu=238_Tidak', 24, 24),
(3, '147_IPK=224_3.0-3.5', '152_Lulus_Tepat_Waktu=237_Ya', 24, 24),
(4, '147_IPK=225_> 3.5', '152_Lulus_Tepat_Waktu=237_Ya', 24, 24);

-- --------------------------------------------------------

--
-- Table structure for table `rule_user_25`
--

CREATE TABLE `rule_user_25` (
  `rule_id` int NOT NULL,
  `if_part` varchar(200) NOT NULL,
  `then_part` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rule_user_25`
--

INSERT INTO `rule_user_25` (`rule_id`, `if_part`, `then_part`, `user_id`, `case_num`) VALUES
(1, '154_bentuk_tangan=241_lurus', '153_gaya=240_batu', 25, 25),
(2, '154_bentuk_tangan=245_miring', '153_gaya=244_katak', 25, 25),
(3, '154_bentuk_tangan=250_mengepak and 155_bentuk_kaki=242_ditekuk', '153_gaya=240_batu', 25, 25),
(4, '154_bentuk_tangan=250_mengepak and 155_bentuk_kaki=246_lurus', '153_gaya=240_batu', 25, 25),
(5, '154_bentuk_tangan=250_mengepak and 155_bentuk_kaki=251_naik', '153_gaya=249_kupu-kupu', 25, 25),
(6, '154_bentuk_tangan=250_mengepak and 155_bentuk_kaki=252_turun', '153_gaya=249_kupu-kupu', 25, 25);

-- --------------------------------------------------------

--
-- Table structure for table `rule_user_26`
--

CREATE TABLE `rule_user_26` (
  `rule_id` int NOT NULL,
  `if_part` varchar(200) NOT NULL,
  `then_part` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rule_user_26`
--

INSERT INTO `rule_user_26` (`rule_id`, `if_part`, `then_part`, `user_id`, `case_num`) VALUES
(1, '158_b=256_b2', '159_g=259_f', 26, 26),
(2, '158_b=257_b3', '159_g=258_t', 26, 26),
(3, '158_b=255_b1 and 157_a=253_a1', '159_g=259_f', 26, 26),
(4, '158_b=255_b1 and 157_a=254_a2', '159_g=258_t', 26, 26);

-- --------------------------------------------------------

--
-- Table structure for table `temp_atribut`
--

CREATE TABLE `temp_atribut` (
  `atribut_id` int NOT NULL,
  `case_num` int NOT NULL,
  `user_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `goal` enum('T','F') NOT NULL,
  `atribut_desc` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `temp_atribut`
--

INSERT INTO `temp_atribut` (`atribut_id`, `case_num`, `user_id`, `atribut_name`, `goal`, `atribut_desc`) VALUES
(1, 1, 1, 'outlook', 'F', NULL),
(2, 1, 1, 'temperature', 'F', NULL),
(3, 1, 1, 'humidity', 'F', NULL),
(4, 1, 1, 'windy', 'F', NULL),
(5, 1, 1, 'Play', 'T', NULL),
(6, 2, 2, 'usia', 'F', ''),
(7, 2, 2, 'jenis-kelamin', 'F', ''),
(8, 2, 2, 'kesadaran', 'F', ''),
(9, 2, 2, 'keadaan-umum', 'F', ''),
(10, 2, 2, 'nyeri-kepala', 'F', ''),
(11, 2, 2, 'tekanan-sistolik', 'F', ''),
(12, 2, 2, 'tekanan-diastolik', 'F', ''),
(13, 2, 2, 'suhu', 'F', ''),
(14, 2, 2, 'nafas', 'F', ''),
(15, 2, 2, 'nadi', 'F', ''),
(16, 2, 2, 'G1', 'F', 'Gangguan bicara (Afasia Ekspresif)'),
(17, 2, 2, 'G2', 'F', 'Status Fungsional'),
(18, 2, 2, 'G3', 'F', 'Keseimbangan'),
(19, 2, 2, 'G4', 'F', 'Pusing'),
(20, 2, 2, 'G5', 'F', 'Mual'),
(21, 2, 2, 'G6', 'F', 'Muntah'),
(22, 2, 2, 'G7', 'F', 'Lemas'),
(23, 2, 2, 'G8', 'F', 'Bicara Pelo'),
(24, 2, 2, 'G9', 'F', 'Memegang Pinggiran Kursi saat duduk?'),
(25, 2, 2, 'G10', 'F', 'Nyeri/kram saat berjalan (Claudicatio Intermitten)'),
(26, 2, 2, 'G11', 'F', 'Perlu penerjemah/susah mengerti (Afasia Reseptif)'),
(27, 2, 2, 'G12', 'F', 'Sulit berbicara (Disatria)'),
(28, 2, 2, 'G13', 'F', 'Sesak Nafas'),
(29, 2, 2, 'G14', 'F', 'Penurunan kesadaran'),
(30, 2, 2, 'G15', 'F', 'Kelemahan/kelumpuhan anggota gerak kanan/kiri (Hemiplegia)'),
(31, 2, 2, 'G16', 'F', 'Onset saat beraktivitas (tiba-tiba)'),
(32, 2, 2, 'G17', 'F', 'Tidak dapat mengendalikan rangsang defeksi (BAB)'),
(33, 2, 2, 'G18', 'F', 'Tidak dapat mengendalikan rangsang berkemih (BAK)'),
(34, 2, 2, 'G19', 'F', 'Tidak dapat membersihkan diri sendiri (cuci muka, sikat gigi, sisir rambut)'),
(35, 2, 2, 'G20', 'F', 'Onset saat istirahat'),
(36, 2, 2, 'G21', 'F', 'Tidak dapat makan sendiri'),
(37, 2, 2, 'G22', 'F', 'Tidak dapat berubah sikap dari berbaring ke duduk'),
(38, 2, 2, 'G23', 'F', 'Tidak mampu berjalan (Ataksia)'),
(39, 2, 2, 'G24', 'F', 'Tidak dapat memakai pakaian sendiri'),
(40, 2, 2, 'G25', 'F', 'Tidak mampu naik turun tangga'),
(41, 2, 2, 'G26', 'F', 'Tidak mampu mandi sendiri'),
(42, 2, 2, 'G27', 'F', 'Wajah bagian mata dan mulut agak turun sebelah/ wajah merot (Hemiparesis)'),
(43, 2, 2, 'G28', 'F', 'Sering kesemutan (Parestesia)'),
(44, 2, 2, 'G29', 'F', 'Gangguan penglihatan (Defisit penglihatan)'),
(45, 2, 2, 'G30', 'F', 'Telinga berdenging'),
(46, 2, 2, 'G31', 'F', 'Kesulitan dalam menelan makanan (Disfagia)'),
(47, 2, 2, 'G32', 'F', 'Bingung (disorientasi)'),
(48, 2, 2, 'G33', 'F', 'Wajah murung'),
(49, 2, 2, 'G34', 'F', 'Gangguan memori/pikun (deficit kognitif)'),
(50, 2, 2, 'G35', 'F', 'Susah menggerakkan kaki atau tangan'),
(51, 2, 2, 'G36', 'F', 'Kejang'),
(52, 2, 2, 'G37', 'F', 'Nafsu makan berkurang'),
(53, 2, 2, 'G38', 'F', 'Cemas/gelisah (Defisit emosional)'),
(54, 2, 2, 'G39', 'F', 'Batuk'),
(55, 2, 2, 'G40', 'F', 'Nyeri dibagian dada (Angina Pectoris)'),
(56, 2, 2, 'G41', 'F', 'Kaku pada bibir/mulut/lidah'),
(57, 2, 2, 'G42', 'F', 'Kaku pada leher'),
(58, 2, 2, 'G43', 'F', 'demam'),
(59, 2, 2, 'FR1', 'F', 'Riwayat Penyakit Jantung'),
(60, 2, 2, 'FR2', 'F', 'Riwayat Penyakit Hipertensi'),
(61, 2, 2, 'FR3', 'F', 'Riwayat Penyakit Diabetes Melitus'),
(62, 2, 2, 'FR4', 'F', 'Riwayat Penyakit Hiperkolesterolemia'),
(63, 2, 2, 'FR5', 'F', 'Riwayat Penyakit Obesitas'),
(64, 2, 2, 'FR6', 'F', 'Riwayat Penyakit Stroke'),
(65, 2, 2, 'FR7', 'F', 'Riwayat Penyakit dalam Keluarga Stroke'),
(66, 2, 2, 'FR8', 'F', 'Riwayat Penyakit dalam Keluarga Hipertensi'),
(67, 2, 2, 'FR9', 'F', 'Riwayat Penyakit dalam Keluarga Diabetes Melitus'),
(68, 2, 2, 'FR10', 'F', 'Ketergantungan Obat-obatan antikoagulan'),
(69, 2, 2, 'FR11', 'F', 'Ketergantungan Rokok'),
(70, 2, 2, 'FR12', 'F', 'Ketergantungan Alkohol'),
(71, 2, 2, 'Penyakit', 'T', 'Penyakit stroke');

-- --------------------------------------------------------

--
-- Table structure for table `test_case_user_1`
--

CREATE TABLE `test_case_user_1` (
  `case_id` int NOT NULL,
  `1_outlook` enum('1_sunny','2_cloudy','3_rainy') DEFAULT NULL,
  `2_temperature` enum('4_hot','5_mild','6_cool') DEFAULT NULL,
  `3_humidity` enum('7_high','8_normal') DEFAULT NULL,
  `4_windy` enum('9_true','10_false') DEFAULT NULL,
  `5_Play` enum('11_yes','12_no') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `algoritma` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_case_user_1`
--

INSERT INTO `test_case_user_1` (`case_id`, `1_outlook`, `2_temperature`, `3_humidity`, `4_windy`, `5_Play`, `user_id`, `case_num`, `algoritma`) VALUES
(1, '2_cloudy', '5_mild', '7_high', '9_true', NULL, 1, 1, 'Matching Rule');

-- --------------------------------------------------------

--
-- Table structure for table `test_case_user_2`
--

CREATE TABLE `test_case_user_2` (
  `case_id` int NOT NULL,
  `6_usia` enum('13_dewasa-1','14_dewasa-2','15_dewasa-3','16_manula') DEFAULT NULL,
  `7_jeniskelamin` enum('17_wanita','18_pria') DEFAULT NULL,
  `8_kesadaran` enum('19_sadar','20_apatis','21_koma') DEFAULT NULL,
  `9_keadaanumum` enum('22_Baik','23_Sedang','24_Jelek') DEFAULT NULL,
  `10_nyerikepala` enum('25_Nyeri','26_Tidak-Nyeri') DEFAULT NULL,
  `11_tekanansistolik` enum('27_rendah','28_normal','29_tinggi') DEFAULT NULL,
  `12_tekanandiastolik` enum('30_rendah','31_normal','32_tinggi') DEFAULT NULL,
  `13_suhu` enum('33_rendah','34_normal','35_tinggi') DEFAULT NULL,
  `14_nafas` enum('36_lambat','37_normal','38_cepat') DEFAULT NULL,
  `15_nadi` enum('39_lambat','40_normal','41_cepat') DEFAULT NULL,
  `16_G1` enum('42_Y','43_T') DEFAULT NULL,
  `17_G2` enum('44_Y','45_T') DEFAULT NULL,
  `18_G3` enum('46_Y','47_T') DEFAULT NULL,
  `19_G4` enum('48_Y','49_T') DEFAULT NULL,
  `20_G5` enum('50_Y','51_T') DEFAULT NULL,
  `21_G6` enum('52_Y','53_T') DEFAULT NULL,
  `22_G7` enum('54_Y','55_T') DEFAULT NULL,
  `23_G8` enum('56_Y','57_T') DEFAULT NULL,
  `24_G9` enum('58_Y','59_T') DEFAULT NULL,
  `25_G10` enum('60_Y','61_T') DEFAULT NULL,
  `26_G11` enum('62_Y','63_T') DEFAULT NULL,
  `27_G12` enum('64_Y','65_T') DEFAULT NULL,
  `28_G13` enum('66_Y','67_T') DEFAULT NULL,
  `29_G14` enum('68_Y','69_T') DEFAULT NULL,
  `30_G15` enum('70_Y','71_T') DEFAULT NULL,
  `31_G16` enum('72_Y','73_T') DEFAULT NULL,
  `32_G17` enum('74_Y','75_T') DEFAULT NULL,
  `33_G18` enum('76_Y','77_T') DEFAULT NULL,
  `34_G19` enum('78_Y','79_T') DEFAULT NULL,
  `35_G20` enum('80_Y','81_T') DEFAULT NULL,
  `36_G21` enum('82_Y','83_T') DEFAULT NULL,
  `37_G22` enum('84_Y','85_T') DEFAULT NULL,
  `38_G23` enum('86_Y','87_T') DEFAULT NULL,
  `39_G24` enum('88_Y','89_T') DEFAULT NULL,
  `40_G25` enum('90_Y','91_T') DEFAULT NULL,
  `41_G26` enum('92_Y','93_T') DEFAULT NULL,
  `42_G27` enum('94_Y','95_T') DEFAULT NULL,
  `43_G28` enum('96_Y','97_T') DEFAULT NULL,
  `44_G29` enum('98_Y','99_T') DEFAULT NULL,
  `45_G30` enum('100_Y','101_T') DEFAULT NULL,
  `46_G31` enum('102_Y','103_T') DEFAULT NULL,
  `47_G32` enum('104_Y','105_T') DEFAULT NULL,
  `48_G33` enum('106_Y','107_T') DEFAULT NULL,
  `49_G34` enum('108_Y','109_T') DEFAULT NULL,
  `50_G35` enum('110_Y','111_T') DEFAULT NULL,
  `51_G36` enum('112_Y','113_T') DEFAULT NULL,
  `52_G37` enum('114_Y','115_T') DEFAULT NULL,
  `53_G38` enum('116_Y','117_T') DEFAULT NULL,
  `54_G39` enum('118_Y','119_T') DEFAULT NULL,
  `55_G40` enum('120_Y','121_T') DEFAULT NULL,
  `56_G41` enum('122_Y','123_T') DEFAULT NULL,
  `57_G42` enum('124_Y','125_T') DEFAULT NULL,
  `58_G43` enum('126_Y','127_T') DEFAULT NULL,
  `59_FR1` enum('128_Y','129_T') DEFAULT NULL,
  `60_FR2` enum('130_Y','131_T') DEFAULT NULL,
  `61_FR3` enum('132_Y','133_T') DEFAULT NULL,
  `62_FR4` enum('134_Y','135_T') DEFAULT NULL,
  `63_FR5` enum('136_Y','137_T') DEFAULT NULL,
  `64_FR6` enum('138_Y','139_T') DEFAULT NULL,
  `65_FR7` enum('140_Y','141_T') DEFAULT NULL,
  `66_FR8` enum('142_Y','143_T') DEFAULT NULL,
  `67_FR9` enum('144_Y','145_T') DEFAULT NULL,
  `68_FR10` enum('146_Y','147_T') DEFAULT NULL,
  `69_FR11` enum('148_Y','149_T') DEFAULT NULL,
  `70_FR12` enum('150_Y','151_T') DEFAULT NULL,
  `71_Penyakit` enum('152_Thrombosis-Stroke','153_Embolism-Stroke','154_Intracerebral-hemorrhage-Stroke','155_Subarachnoid-hemorrhage-Stroke','156_Non-Stroke') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `algoritma` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_case_user_2`
--

INSERT INTO `test_case_user_2` (`case_id`, `6_usia`, `7_jeniskelamin`, `8_kesadaran`, `9_keadaanumum`, `10_nyerikepala`, `11_tekanansistolik`, `12_tekanandiastolik`, `13_suhu`, `14_nafas`, `15_nadi`, `16_G1`, `17_G2`, `18_G3`, `19_G4`, `20_G5`, `21_G6`, `22_G7`, `23_G8`, `24_G9`, `25_G10`, `26_G11`, `27_G12`, `28_G13`, `29_G14`, `30_G15`, `31_G16`, `32_G17`, `33_G18`, `34_G19`, `35_G20`, `36_G21`, `37_G22`, `38_G23`, `39_G24`, `40_G25`, `41_G26`, `42_G27`, `43_G28`, `44_G29`, `45_G30`, `46_G31`, `47_G32`, `48_G33`, `49_G34`, `50_G35`, `51_G36`, `52_G37`, `53_G38`, `54_G39`, `55_G40`, `56_G41`, `57_G42`, `58_G43`, `59_FR1`, `60_FR2`, `61_FR3`, `62_FR4`, `63_FR5`, `64_FR6`, `65_FR7`, `66_FR8`, `67_FR9`, `68_FR10`, `69_FR11`, `70_FR12`, `71_Penyakit`, `user_id`, `case_num`, `algoritma`) VALUES
(11, '13_dewasa-1', '17_wanita', '19_sadar', '23_Sedang', '25_Nyeri', '27_rendah', '31_normal', '33_rendah', '36_lambat', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '52_Y', '55_T', '56_Y', '58_Y', '61_T', '62_Y', '65_T', '67_T', '69_T', '71_T', '73_T', '74_Y', '76_Y', '78_Y', '81_T', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '99_T', '100_Y', '102_Y', '104_Y', '106_Y', '109_T', '111_T', '112_Y', '114_Y', '116_Y', '119_T', '120_Y', '122_Y', '124_Y', '126_Y', '128_Y', '130_Y', '132_Y', '134_Y', '136_Y', '138_Y', '141_T', '142_Y', '144_Y', '146_Y', '148_Y', '150_Y', NULL, 2, 2, 'Matching Rule'),
(12, '13_dewasa-1', '17_wanita', '19_sadar', '23_Sedang', '25_Nyeri', '27_rendah', '31_normal', '33_rendah', '36_lambat', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '52_Y', '55_T', '56_Y', '58_Y', '61_T', '62_Y', '65_T', '67_T', '69_T', '71_T', '73_T', '74_Y', '76_Y', '78_Y', '81_T', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '99_T', '100_Y', '102_Y', '104_Y', '106_Y', '109_T', '111_T', '112_Y', '114_Y', '116_Y', '119_T', '120_Y', '122_Y', '124_Y', '126_Y', '128_Y', '130_Y', '132_Y', '134_Y', '136_Y', '138_Y', '141_T', '142_Y', '144_Y', '146_Y', '148_Y', '150_Y', NULL, 2, 2, 'Forward Chaining'),
(13, '13_dewasa-1', '17_wanita', '19_sadar', '23_Sedang', '25_Nyeri', '27_rendah', '31_normal', '33_rendah', '36_lambat', '40_normal', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '52_Y', '55_T', '56_Y', '58_Y', '61_T', '62_Y', '65_T', '67_T', '69_T', '71_T', '73_T', '74_Y', '76_Y', '78_Y', '81_T', '83_T', '85_T', '86_Y', '89_T', '90_Y', '93_T', '94_Y', '96_Y', '99_T', '100_Y', '102_Y', '104_Y', '106_Y', '109_T', '111_T', '112_Y', '114_Y', '116_Y', '119_T', '120_Y', '122_Y', '124_Y', '126_Y', '128_Y', '130_Y', '132_Y', '134_Y', '136_Y', '138_Y', '141_T', '142_Y', '144_Y', '146_Y', '148_Y', '150_Y', NULL, 2, 2, 'Backward Chaining'),
(14, '14_dewasa-2', '17_wanita', '19_sadar', '22_Baik', '25_Nyeri', '28_normal', '30_rendah', '33_rendah', '36_lambat', '40_normal', '43_T', '44_Y', '47_T', '49_T', '51_T', '52_Y', '54_Y', '56_Y', '58_Y', '60_Y', '62_Y', '65_T', '66_Y', '69_T', '71_T', '72_Y', '74_Y', '76_Y', '78_Y', '81_T', '82_Y', '85_T', '86_Y', '88_Y', '90_Y', '92_Y', '94_Y', '96_Y', '99_T', '100_Y', '103_T', '104_Y', '107_T', '108_Y', '110_Y', '113_T', '114_Y', '117_T', '118_Y', '121_T', '122_Y', '125_T', '126_Y', '128_Y', '131_T', '132_Y', '135_T', '136_Y', '138_Y', '140_Y', '142_Y', '144_Y', '146_Y', '149_T', '150_Y', NULL, 2, 2, 'Matching Rule'),
(15, '13_dewasa-1', '17_wanita', '20_apatis', '23_Sedang', '26_Tidak-Nyeri', '28_normal', '31_normal', '34_normal', '37_normal', '41_cepat', '42_Y', '44_Y', '46_Y', '48_Y', '51_T', '52_Y', '55_T', '57_T', '58_Y', '60_Y', '62_Y', '64_Y', '66_Y', '68_Y', '70_Y', '72_Y', '74_Y', '76_Y', '78_Y', '80_Y', '82_Y', '85_T', '87_T', '88_Y', '91_T', '93_T', '94_Y', '96_Y', '98_Y', '101_T', '103_T', '105_T', '106_Y', '109_T', '110_Y', '113_T', '115_T', '116_Y', '119_T', '120_Y', '123_T', '125_T', '126_Y', '128_Y', '131_T', '132_Y', '134_Y', '136_Y', '139_T', '141_T', '142_Y', '145_T', '146_Y', '148_Y', '150_Y', NULL, 2, 2, 'Forward Chaining'),
(16, '14_dewasa-2', '18_pria', '20_apatis', '23_Sedang', '25_Nyeri', '28_normal', '31_normal', '34_normal', '36_lambat', '40_normal', '43_T', '44_Y', '47_T', '49_T', '50_Y', '53_T', '54_Y', '57_T', '58_Y', '61_T', '62_Y', '65_T', '67_T', '69_T', '71_T', '73_T', '75_T', '77_T', '79_T', '81_T', '83_T', '85_T', '87_T', '89_T', '90_Y', '92_Y', '94_Y', '97_T', '98_Y', '101_T', '102_Y', '105_T', '106_Y', '108_Y', '110_Y', '112_Y', '115_T', '117_T', '118_Y', '120_Y', '123_T', '124_Y', '126_Y', '128_Y', '130_Y', '132_Y', '134_Y', '136_Y', '138_Y', '141_T', '143_T', '145_T', '146_Y', '149_T', '150_Y', NULL, 2, 2, 'Matching Rule'),
(17, '13_dewasa-1', '18_pria', '19_sadar', '24_Jelek', '26_Tidak-Nyeri', '28_normal', '30_rendah', '33_rendah', '37_normal', '39_lambat', '43_T', '44_Y', '46_Y', '49_T', '50_Y', '53_T', '54_Y', '57_T', '58_Y', '60_Y', '63_T', '65_T', '66_Y', '69_T', '70_Y', '73_T', '74_Y', '77_T', '78_Y', '81_T', '83_T', '85_T', '86_Y', '88_Y', '90_Y', '92_Y', '94_Y', '97_T', '98_Y', '100_Y', '102_Y', '104_Y', '106_Y', '108_Y', '111_T', '113_T', '114_Y', '117_T', '118_Y', '120_Y', '122_Y', '124_Y', '126_Y', '128_Y', '131_T', '132_Y', '135_T', '137_T', '139_T', '140_Y', '142_Y', '144_Y', '146_Y', '148_Y', '151_T', NULL, 2, 2, 'Matching Rule'),
(18, '14_dewasa-2', '18_pria', '19_sadar', '22_Baik', '25_Nyeri', '27_rendah', '31_normal', '34_normal', '36_lambat', '40_normal', '43_T', '44_Y', '47_T', '49_T', '50_Y', '53_T', '54_Y', '56_Y', '59_T', '61_T', '63_T', '64_Y', '67_T', '69_T', '70_Y', '72_Y', '74_Y', '77_T', '78_Y', '81_T', '82_Y', '84_Y', '86_Y', '89_T', '91_T', '92_Y', '95_T', '96_Y', '99_T', '100_Y', '103_T', '105_T', '106_Y', '108_Y', '110_Y', '112_Y', '114_Y', '116_Y', '119_T', '120_Y', '123_T', '124_Y', '127_T', '128_Y', '131_T', '133_T', '134_Y', '137_T', '139_T', '140_Y', '142_Y', '145_T', '147_T', '149_T', '150_Y', NULL, 2, 2, 'Backward Chaining');

-- --------------------------------------------------------

--
-- Table structure for table `test_case_user_15`
--

CREATE TABLE `test_case_user_15` (
  `case_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `83_ef` enum('164_evs','175_okf','176_wed3wfe','177_wef','178_ewds') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `84_efsad` enum('163_dfvd','179_d') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_case_user_15`
--

INSERT INTO `test_case_user_15` (`case_id`, `user_id`, `case_num`, `83_ef`, `84_efsad`) VALUES
(0, 15, 15, '175_okf', '163_dfvd');

-- --------------------------------------------------------

--
-- Table structure for table `test_case_user_17`
--

CREATE TABLE `test_case_user_17` (
  `case_id` int NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `86_a` enum('165_a1','166_a2','167_a3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `87_b` enum('168_b1','169_b2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `88_c` enum('170_c1','171_c2','172_c3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `89_g` enum('173_g1','174_g2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_case_user_17`
--

INSERT INTO `test_case_user_17` (`case_id`, `user_id`, `case_num`, `86_a`, `87_b`, `88_c`, `89_g`) VALUES
(1, 17, 17, '165_a1', '168_b1', '171_c2', '173_g1');

-- --------------------------------------------------------

--
-- Table structure for table `test_case_user_21`
--

CREATE TABLE `test_case_user_21` (
  `case_id` int NOT NULL,
  `114_a` enum('193_a1','194_a2','195_a3','196_a4') DEFAULT NULL,
  `115_b` enum('197_b1','198_b2','199_b3','200_b4','201_b5') DEFAULT NULL,
  `116_c` enum('202_c1','203_c2') DEFAULT NULL,
  `117_d` enum('204_d1','205_d2','206_d3') DEFAULT NULL,
  `141_coba_lagi` enum('214_coba ini') DEFAULT NULL,
  `118_goals` enum('207_penyakit','208_buku','209_perabotan','210_makanan') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_case_user_21`
--

INSERT INTO `test_case_user_21` (`case_id`, `114_a`, `115_b`, `116_c`, `117_d`, `141_coba_lagi`, `118_goals`, `user_id`, `case_num`) VALUES
(1, '193_a1', '197_b1', '202_c1', '204_d1', '214_coba ini', NULL, 21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `test_case_user_22`
--

CREATE TABLE `test_case_user_22` (
  `case_id` int NOT NULL,
  `110_windy` enum('187_jksv') DEFAULT NULL,
  `111_coba_lagi` enum('192_fig') DEFAULT NULL,
  `112_test` enum('189_dfe','190_wef') DEFAULT NULL,
  `113_rainy` enum('191_fds') DEFAULT NULL,
  `109_coba` enum('188_ewfj') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_case_user_24`
--

CREATE TABLE `test_case_user_24` (
  `case_id` int NOT NULL,
  `147_IPK` enum('222_< 2.5','223_2.5-3.0','224_3.0-3.5','225_> 3.5') DEFAULT NULL,
  `148_Kehadiran` enum('226_Rendah','227_Sedang','228_Tinggi') DEFAULT NULL,
  `149_Aktivitas_Organisasi` enum('229_Tidak Aktif','230_Aktif') DEFAULT NULL,
  `150_Beban_SKS` enum('231_Ringan','232_Sedang','233_Berat') DEFAULT NULL,
  `151_Status_Pekerjaan` enum('234_Tidak Bekerja','235_Paruh Waktu','236_Penuh Waktu') DEFAULT NULL,
  `152_Lulus_Tepat_Waktu` enum('237_Ya','238_Tidak') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_case_user_24`
--

INSERT INTO `test_case_user_24` (`case_id`, `147_IPK`, `148_Kehadiran`, `149_Aktivitas_Organisasi`, `150_Beban_SKS`, `151_Status_Pekerjaan`, `152_Lulus_Tepat_Waktu`, `user_id`, `case_num`) VALUES
(1, '224_3.0-3.5', '228_Tinggi', '230_Aktif', '232_Sedang', '234_Tidak Bekerja', NULL, 24, 24),
(2, '222_< 2.5', '228_Tinggi', '230_Aktif', '232_Sedang', '234_Tidak Bekerja', NULL, 24, 24);

-- --------------------------------------------------------

--
-- Table structure for table `test_case_user_25`
--

CREATE TABLE `test_case_user_25` (
  `case_id` int NOT NULL,
  `154_bentuk_tangan` enum('241_lurus','245_miring','250_mengepak') DEFAULT NULL,
  `155_bentuk_kaki` enum('242_ditekuk','246_lurus','251_naik','252_turun') DEFAULT NULL,
  `156_percikkan_air` enum('243_banyak','247_sedikit','248_tidak ada') DEFAULT NULL,
  `153_gaya` enum('240_batu','244_katak','249_kupu-kupu') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `algoritma` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_case_user_25`
--

INSERT INTO `test_case_user_25` (`case_id`, `154_bentuk_tangan`, `155_bentuk_kaki`, `156_percikkan_air`, `153_gaya`, `user_id`, `case_num`, `algoritma`) VALUES
(1, '250_mengepak', '246_lurus', '247_sedikit', NULL, 25, 25, 'Matching Rule');

-- --------------------------------------------------------

--
-- Table structure for table `test_case_user_26`
--

CREATE TABLE `test_case_user_26` (
  `case_id` int NOT NULL,
  `157_a` enum('253_a1','254_a2') DEFAULT NULL,
  `158_b` enum('255_b1','256_b2','257_b3') DEFAULT NULL,
  `159_g` enum('258_t','259_f') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `algoritma` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test_case_user_26`
--

INSERT INTO `test_case_user_26` (`case_id`, `157_a`, `158_b`, `159_g`, `user_id`, `case_num`, `algoritma`) VALUES
(1, '254_a2', '257_b3', NULL, 26, 26, 'Matching Rule'),
(2, '254_a2', '257_b3', NULL, 26, 26, 'Forward Chaining'),
(3, '254_a2', '257_b3', NULL, 26, 26, 'Backward Chaining');

-- --------------------------------------------------------

--
-- Table structure for table `test_case_user_27`
--

CREATE TABLE `test_case_user_27` (
  `case_id` int NOT NULL,
  `160_1` enum('260_11','261_12') DEFAULT NULL,
  `161_2` enum('262_21','263_22','264_23') DEFAULT NULL,
  `162_3` enum('265_31','266_32','267_33','268_34') DEFAULT NULL,
  `163_4` enum('269_41','270_42') DEFAULT NULL,
  `164_5` enum('271_51','272_52') DEFAULT NULL,
  `165_6` enum('273_61','274_62') DEFAULT NULL,
  `166_7` enum('275_71') DEFAULT NULL,
  `168_9` enum('279_91','280_92') DEFAULT NULL,
  `169_8` enum('281_81','282_82') DEFAULT NULL,
  `170_10` enum('283_101') DEFAULT NULL,
  `171_11` enum('284_111') DEFAULT NULL,
  `172_12` enum('285_121') DEFAULT NULL,
  `173_13` enum('286_131') DEFAULT NULL,
  `174_14` enum('287_141','288_142') DEFAULT NULL,
  `175_15` enum('289_151','290_152','291_153') DEFAULT NULL,
  `176_16` enum('292_161') DEFAULT NULL,
  `177_17` enum('293_171') DEFAULT NULL,
  `178_18` enum('294_181','295_182') DEFAULT NULL,
  `179_19` enum('296_191') DEFAULT NULL,
  `180_20` enum('297_201') DEFAULT NULL,
  `181_21` enum('298_211','299_212') DEFAULT NULL,
  `182_22` enum('300_221') DEFAULT NULL,
  `183_23` enum('301_231') DEFAULT NULL,
  `184_24` enum('302_241') DEFAULT NULL,
  `185_25` enum('303_251','304_252') DEFAULT NULL,
  `186_26` enum('305_261') DEFAULT NULL,
  `187_27` enum('306_271') DEFAULT NULL,
  `188_28` enum('307_281','308_282') DEFAULT NULL,
  `189_29` enum('309_291','310_292','311_293') DEFAULT NULL,
  `167_goal` enum('276_hasil 1','277_hasil 2','278_hasil 3') DEFAULT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `algoritma` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tree`
--

CREATE TABLE `tree` (
  `tree_id` int NOT NULL,
  `treelevel` int NOT NULL,
  `parent_node` varchar(10) NOT NULL,
  `atribut_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `value_id` int NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `Child_node` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `goal` enum('T','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tree`
--

INSERT INTO `tree` (`tree_id`, `treelevel`, `parent_node`, `atribut_id`, `atribut_name`, `value_id`, `value_name`, `Child_node`, `user_id`, `case_num`, `goal`) VALUES
(1, 0, '0', 1, 'outlook', 1, 'sunny', '', 1, 1, 'F'),
(2, 0, '0', 1, 'outlook', 2, 'cloudy', '', 1, 1, 'F'),
(3, 0, '0', 1, 'outlook', 3, 'rainy', '', 1, 1, 'F'),
(4, 0, '0', 1, 'outlook', 1, 'sunny', '', 1, 1, 'F'),
(5, 0, '0', 1, 'outlook', 2, 'cloudy', '', 1, 1, 'F'),
(6, 0, '0', 1, 'outlook', 3, 'rainy', '', 1, 1, 'F'),
(7, 0, '0', 1, 'outlook', 1, 'sunny', '', 1, 1, 'F'),
(8, 0, '0', 1, 'outlook', 2, 'cloudy', '', 1, 1, 'F'),
(9, 0, '0', 1, 'outlook', 3, 'rainy', '', 1, 1, 'F'),
(10, 0, '0', 1, 'outlook', 1, 'sunny', '', 1, 1, 'F'),
(11, 0, '0', 1, 'outlook', 2, 'cloudy', '', 1, 1, 'F'),
(12, 0, '0', 1, 'outlook', 3, 'rainy', '', 1, 1, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `tree_user_1`
--

CREATE TABLE `tree_user_1` (
  `tree_id` int NOT NULL,
  `treelevel` int NOT NULL,
  `parent_node` varchar(10) NOT NULL,
  `atribut_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `value_id` int NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `Child_node` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `goal` enum('T','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tree_user_1`
--

INSERT INTO `tree_user_1` (`tree_id`, `treelevel`, `parent_node`, `atribut_id`, `atribut_name`, `value_id`, `value_name`, `Child_node`, `user_id`, `case_num`, `goal`) VALUES
(1, 0, '0', 1, 'outlook', 1, 'sunny', '1', 1, 1, 'F'),
(2, 0, '0', 1, 'outlook', 2, 'cloudy', '1', 1, 1, 'F'),
(3, 0, '0', 1, 'outlook', 3, 'rainy', '1', 1, 1, 'F'),
(4, 1, '1', 3, 'humidity', 7, 'high', '1', 1, 1, 'F'),
(5, 1, '1', 3, 'humidity', 8, 'normal', '1', 1, 1, 'F'),
(6, 1, '2', 5, 'Play', 11, 'yes', '1', 1, 1, 'T'),
(7, 1, '3', 4, 'windy', 9, 'true', '1', 1, 1, 'F'),
(8, 1, '3', 4, 'windy', 10, 'false', '1', 1, 1, 'F'),
(9, 1, '4', 5, 'Play', 12, 'no', '1', 1, 1, 'T'),
(10, 1, '5', 5, 'Play', 11, 'yes', '1', 1, 1, 'T'),
(11, 1, '7', 5, 'Play', 12, 'no', '1', 1, 1, 'T'),
(12, 1, '8', 5, 'Play', 11, 'yes', '1', 1, 1, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `tree_user_2`
--

CREATE TABLE `tree_user_2` (
  `tree_id` int NOT NULL,
  `treelevel` int NOT NULL,
  `parent_node` varchar(10) NOT NULL,
  `atribut_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `value_id` int NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `Child_node` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `goal` enum('T','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tree_user_2`
--

INSERT INTO `tree_user_2` (`tree_id`, `treelevel`, `parent_node`, `atribut_id`, `atribut_name`, `value_id`, `value_name`, `Child_node`, `user_id`, `case_num`, `goal`) VALUES
(1, 0, '0', 25, 'G10', 60, 'Y', '1', 2, 2, 'F'),
(2, 0, '0', 25, 'G10', 61, 'T', '1', 2, 2, 'F'),
(3, 1, '1', 29, 'G14', 68, 'Y', '1', 2, 2, 'F'),
(4, 1, '1', 29, 'G14', 69, 'T', '1', 2, 2, 'F'),
(5, 1, '2', 29, 'G14', 68, 'Y', '1', 2, 2, 'F'),
(6, 1, '2', 29, 'G14', 69, 'T', '1', 2, 2, 'F'),
(7, 1, '3', 23, 'G8', 56, 'Y', '1', 2, 2, 'F'),
(8, 1, '3', 23, 'G8', 57, 'T', '1', 2, 2, 'F'),
(9, 1, '4', 31, 'G16', 72, 'Y', '1', 2, 2, 'F'),
(10, 1, '4', 31, 'G16', 73, 'T', '1', 2, 2, 'F'),
(11, 1, '5', 28, 'G13', 66, 'Y', '1', 2, 2, 'F'),
(12, 1, '5', 28, 'G13', 67, 'T', '1', 2, 2, 'F'),
(13, 1, '6', 31, 'G16', 72, 'Y', '1', 2, 2, 'F'),
(14, 1, '6', 31, 'G16', 73, 'T', '1', 2, 2, 'F'),
(15, 1, '7', 71, 'Penyakit', 152, 'Thrombosis-Stroke', '1', 2, 2, 'T'),
(16, 1, '8', 12, 'tekanandiastolik', 30, 'rendah', '1', 2, 2, 'F'),
(17, 1, '8', 12, 'tekanandiastolik', 31, 'normal', '1', 2, 2, 'F'),
(18, 1, '8', 12, 'tekanandiastolik', 32, 'tinggi', '1', 2, 2, 'F'),
(19, 1, '9', 30, 'G15', 70, 'Y', '1', 2, 2, 'F'),
(20, 1, '9', 30, 'G15', 71, 'T', '1', 2, 2, 'F'),
(21, 1, '10', 37, 'G22', 84, 'Y', '1', 2, 2, 'F'),
(22, 1, '10', 37, 'G22', 85, 'T', '1', 2, 2, 'F'),
(23, 1, '11', 6, 'usia', 13, 'dewasa-1', '1', 2, 2, 'F'),
(24, 1, '11', 6, 'usia', 14, 'dewasa-2', '1', 2, 2, 'F'),
(25, 1, '11', 6, 'usia', 15, 'dewasa-3', '1', 2, 2, 'F'),
(26, 1, '11', 6, 'usia', 16, 'manula', '1', 2, 2, 'F'),
(27, 1, '12', 47, 'G32', 104, 'Y', '1', 2, 2, 'F'),
(28, 1, '12', 47, 'G32', 105, 'T', '1', 2, 2, 'F'),
(29, 1, '13', 23, 'G8', 56, 'Y', '1', 2, 2, 'F'),
(30, 1, '13', 23, 'G8', 57, 'T', '1', 2, 2, 'F'),
(31, 1, '14', 35, 'G20', 80, 'Y', '1', 2, 2, 'F'),
(32, 1, '14', 35, 'G20', 81, 'T', '1', 2, 2, 'F'),
(33, 1, '16', 71, 'Penyakit', 156, 'Non-Stroke', '1', 2, 2, 'T'),
(34, 1, '17', 71, 'Penyakit', 152, 'Thrombosis-Stroke', '1', 2, 2, 'T'),
(35, 1, '18', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T'),
(36, 1, '19', 71, 'Penyakit', 152, 'Thrombosis-Stroke', '1', 2, 2, 'T'),
(37, 1, '20', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T'),
(38, 1, '21', 8, 'kesadaran', 19, 'sadar', '1', 2, 2, 'F'),
(39, 1, '21', 8, 'kesadaran', 20, 'apatis', '1', 2, 2, 'F'),
(40, 1, '21', 8, 'kesadaran', 21, 'koma', '1', 2, 2, 'F'),
(41, 1, '22', 6, 'usia', 13, 'dewasa-1', '1', 2, 2, 'F'),
(42, 1, '22', 6, 'usia', 14, 'dewasa-2', '1', 2, 2, 'F'),
(43, 1, '22', 6, 'usia', 15, 'dewasa-3', '1', 2, 2, 'F'),
(44, 1, '22', 6, 'usia', 16, 'manula', '1', 2, 2, 'F'),
(45, 1, '23', 71, 'Penyakit', 155, 'Subarachnoid-hemorrhage-Stroke', '1', 2, 2, 'T'),
(46, 1, '24', 30, 'G15', 70, 'Y', '1', 2, 2, 'F'),
(47, 1, '24', 30, 'G15', 71, 'T', '1', 2, 2, 'F'),
(48, 1, '25', 71, 'Penyakit', 155, 'Subarachnoid-hemorrhage-Stroke', '1', 2, 2, 'T'),
(49, 1, '26', 71, 'Penyakit', 155, 'Subarachnoid-hemorrhage-Stroke', '1', 2, 2, 'T'),
(50, 1, '27', 71, 'Penyakit', 154, 'Intracerebral-hemorrhage-Stroke', '1', 2, 2, 'T'),
(51, 1, '28', 8, 'kesadaran', 19, 'sadar', '1', 2, 2, 'F'),
(52, 1, '28', 8, 'kesadaran', 20, 'apatis', '1', 2, 2, 'F'),
(53, 1, '28', 8, 'kesadaran', 21, 'koma', '1', 2, 2, 'F'),
(54, 1, '29', 71, 'Penyakit', 154, 'Intracerebral-hemorrhage-Stroke', '1', 2, 2, 'T'),
(55, 1, '30', 9, 'keadaanumum', 22, 'Baik', '1', 2, 2, 'F'),
(56, 1, '30', 9, 'keadaanumum', 23, 'Sedang', '1', 2, 2, 'F'),
(57, 1, '30', 9, 'keadaanumum', 24, 'Jelek', '1', 2, 2, 'F'),
(58, 1, '31', 48, 'G33', 106, 'Y', '1', 2, 2, 'F'),
(59, 1, '31', 48, 'G33', 107, 'T', '1', 2, 2, 'F'),
(60, 1, '32', 16, 'G1', 42, 'Y', '1', 2, 2, 'F'),
(61, 1, '32', 16, 'G1', 43, 'T', '1', 2, 2, 'F'),
(62, 1, '38', 71, 'Penyakit', 156, 'Non-Stroke', '1', 2, 2, 'T'),
(63, 1, '39', 71, 'Penyakit', 152, 'Thrombosis-Stroke', '1', 2, 2, 'T'),
(64, 1, '40', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T'),
(65, 1, '41', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T'),
(66, 1, '42', 50, 'G35', 110, 'Y', '1', 2, 2, 'F'),
(67, 1, '42', 50, 'G35', 111, 'T', '1', 2, 2, 'F'),
(68, 1, '43', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T'),
(69, 1, '44', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T'),
(70, 1, '46', 71, 'Penyakit', 155, 'Subarachnoid-hemorrhage-Stroke', '1', 2, 2, 'T'),
(71, 1, '47', 71, 'Penyakit', 154, 'Intracerebral-hemorrhage-Stroke', '1', 2, 2, 'T'),
(72, 1, '51', 71, 'Penyakit', 154, 'Intracerebral-hemorrhage-Stroke', '1', 2, 2, 'T'),
(73, 1, '52', 71, 'Penyakit', 155, 'Subarachnoid-hemorrhage-Stroke', '1', 2, 2, 'T'),
(74, 1, '53', 71, 'Penyakit', 154, 'Intracerebral-hemorrhage-Stroke', '1', 2, 2, 'T'),
(75, 1, '55', 71, 'Penyakit', 152, 'Thrombosis-Stroke', '1', 2, 2, 'T'),
(76, 1, '56', 71, 'Penyakit', 155, 'Subarachnoid-hemorrhage-Stroke', '1', 2, 2, 'T'),
(77, 1, '57', 71, 'Penyakit', 155, 'Subarachnoid-hemorrhage-Stroke', '1', 2, 2, 'T'),
(78, 1, '58', 71, 'Penyakit', 152, 'Thrombosis-Stroke', '1', 2, 2, 'T'),
(79, 1, '59', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T'),
(80, 1, '60', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T'),
(81, 1, '61', 71, 'Penyakit', 156, 'Non-Stroke', '1', 2, 2, 'T'),
(82, 1, '66', 13, 'suhu', 33, 'rendah', '1', 2, 2, 'F'),
(83, 1, '66', 13, 'suhu', 34, 'normal', '1', 2, 2, 'F'),
(84, 1, '66', 13, 'suhu', 35, 'tinggi', '1', 2, 2, 'F'),
(85, 1, '67', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T'),
(86, 1, '82', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T'),
(87, 1, '83', 71, 'Penyakit', 152, 'Thrombosis-Stroke', '1', 2, 2, 'T'),
(88, 1, '84', 71, 'Penyakit', 153, 'Embolism-Stroke', '1', 2, 2, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `tree_user_15`
--

CREATE TABLE `tree_user_15` (
  `tree_id` int NOT NULL,
  `treelevel` int NOT NULL,
  `parent_node` varchar(10) NOT NULL,
  `atribut_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `value_id` int NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `Child_node` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `goal` enum('T','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tree_user_17`
--

CREATE TABLE `tree_user_17` (
  `tree_id` int NOT NULL,
  `treelevel` int NOT NULL,
  `parent_node` varchar(10) NOT NULL,
  `atribut_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `value_id` int NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `Child_node` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `goal` enum('T','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tree_user_21`
--

CREATE TABLE `tree_user_21` (
  `tree_id` int NOT NULL,
  `treelevel` int NOT NULL,
  `parent_node` varchar(10) NOT NULL,
  `atribut_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `value_id` int NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `Child_node` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `goal` enum('T','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tree_user_22`
--

CREATE TABLE `tree_user_22` (
  `tree_id` int NOT NULL,
  `treelevel` int NOT NULL,
  `parent_node` varchar(10) NOT NULL,
  `atribut_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `value_id` int NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `Child_node` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `goal` enum('T','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tree_user_24`
--

CREATE TABLE `tree_user_24` (
  `tree_id` int NOT NULL,
  `treelevel` int NOT NULL,
  `parent_node` varchar(10) NOT NULL,
  `atribut_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `value_id` int NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `Child_node` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `goal` enum('T','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tree_user_24`
--

INSERT INTO `tree_user_24` (`tree_id`, `treelevel`, `parent_node`, `atribut_id`, `atribut_name`, `value_id`, `value_name`, `Child_node`, `user_id`, `case_num`, `goal`) VALUES
(1, 0, '0', 147, 'IPK', 222, '< 2.5', '1', 24, 24, 'F'),
(2, 0, '0', 147, 'IPK', 223, '2.5-3.0', '1', 24, 24, 'F'),
(3, 0, '0', 147, 'IPK', 224, '3.0-3.5', '1', 24, 24, 'F'),
(4, 0, '0', 147, 'IPK', 225, '> 3.5', '1', 24, 24, 'F'),
(5, 1, '1', 152, 'Lulus_Tepat_Waktu', 238, 'Tidak', '1', 24, 24, 'T'),
(6, 1, '2', 152, 'Lulus_Tepat_Waktu', 238, 'Tidak', '1', 24, 24, 'T'),
(7, 1, '3', 152, 'Lulus_Tepat_Waktu', 237, 'Ya', '1', 24, 24, 'T'),
(8, 1, '4', 152, 'Lulus_Tepat_Waktu', 237, 'Ya', '1', 24, 24, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `tree_user_25`
--

CREATE TABLE `tree_user_25` (
  `tree_id` int NOT NULL,
  `treelevel` int NOT NULL,
  `parent_node` varchar(10) NOT NULL,
  `atribut_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `value_id` int NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `Child_node` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `goal` enum('T','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tree_user_25`
--

INSERT INTO `tree_user_25` (`tree_id`, `treelevel`, `parent_node`, `atribut_id`, `atribut_name`, `value_id`, `value_name`, `Child_node`, `user_id`, `case_num`, `goal`) VALUES
(1, 0, '0', 154, 'bentuk_tangan', 241, 'lurus', '1', 25, 25, 'F'),
(2, 0, '0', 154, 'bentuk_tangan', 245, 'miring', '1', 25, 25, 'F'),
(3, 0, '0', 154, 'bentuk_tangan', 250, 'mengepak', '1', 25, 25, 'F'),
(4, 1, '1', 153, 'gaya', 240, 'batu', '1', 25, 25, 'T'),
(5, 1, '2', 153, 'gaya', 244, 'katak', '1', 25, 25, 'T'),
(6, 1, '3', 155, 'bentuk_kaki', 242, 'ditekuk', '1', 25, 25, 'F'),
(7, 1, '3', 155, 'bentuk_kaki', 246, 'lurus', '1', 25, 25, 'F'),
(8, 1, '3', 155, 'bentuk_kaki', 251, 'naik', '1', 25, 25, 'F'),
(9, 1, '3', 155, 'bentuk_kaki', 252, 'turun', '1', 25, 25, 'F'),
(10, 1, '6', 153, 'gaya', 240, 'batu', '1', 25, 25, 'T'),
(11, 1, '7', 153, 'gaya', 240, 'batu', '1', 25, 25, 'T'),
(12, 1, '8', 153, 'gaya', 249, 'kupu-kupu', '1', 25, 25, 'T'),
(13, 1, '9', 153, 'gaya', 249, 'kupu-kupu', '1', 25, 25, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `tree_user_26`
--

CREATE TABLE `tree_user_26` (
  `tree_id` int NOT NULL,
  `treelevel` int NOT NULL,
  `parent_node` varchar(10) NOT NULL,
  `atribut_id` int NOT NULL,
  `atribut_name` varchar(200) NOT NULL,
  `value_id` int NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `Child_node` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `case_num` int NOT NULL,
  `goal` enum('T','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tree_user_26`
--

INSERT INTO `tree_user_26` (`tree_id`, `treelevel`, `parent_node`, `atribut_id`, `atribut_name`, `value_id`, `value_name`, `Child_node`, `user_id`, `case_num`, `goal`) VALUES
(1, 0, '0', 158, 'b', 255, 'b1', '1', 26, 26, 'F'),
(2, 0, '0', 158, 'b', 256, 'b2', '1', 26, 26, 'F'),
(3, 0, '0', 158, 'b', 257, 'b3', '1', 26, 26, 'F'),
(4, 1, '1', 157, 'a', 253, 'a1', '1', 26, 26, 'F'),
(5, 1, '1', 157, 'a', 254, 'a2', '1', 26, 26, 'F'),
(6, 1, '2', 159, 'g', 259, 'f', '1', 26, 26, 'T'),
(7, 1, '3', 159, 'g', 258, 't', '1', 26, 26, 'T'),
(8, 1, '4', 159, 'g', 259, 'f', '1', 26, 26, 'T'),
(9, 1, '5', 159, 'g', 258, 't', '1', 26, 26, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` enum('T','F') NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `active`, `role`) VALUES
(1, 'rosadelima', '$2y$12$CBm9uGiO3JfISGwe2UOw0.ULvI4qBgbJQ4J4mjbUj8Iqvv58fSopi', 'T', 'user'),
(2, 'stroke', '$2y$12$WJc/cHYdcw4PhEYGCYwikO76O2yastFTXCRomOpmZlKi8dsFxiykO', 'T', 'user'),
(15, '71210789', '$2y$12$YisDic/SebTCakW3ehg8h.SblUhRXD.KYWGxVOklh6L5uIKvS2zEW', 'F', 'user'),
(16, 'juniarta', '$2y$12$7PfEUALJd2L67McHKqtsyOyZyrPGdVXVvX56WQo6BgnO6exft0iBy', 'F', 'user'),
(17, 'juni', '$2y$12$ThePhFFSNbOn1Ljf.ByNy.mB1IBWpSPquRCyM.0zhB4pKW./WhJAy', 'F', 'user'),
(19, 'admin', '$2y$12$ewfaSfmEPQeeYGazb1o.Tu3UBKxwuhkqNgC0oK.Zn5qXg75.htJre', 'T', 'admin'),
(21, 'LabFTI3', '$2y$12$.lPMiraEBoZQblfATfBoOud5ZYh97AC4kVYa9.5biWoZTLuieMQie', 'F', 'user'),
(22, 'lab 3', '$2y$12$3e/MihC5PwLEcXDKHKDsbOLsdwStaU1KJRGLdszWYW75mnlFLclqW', 'F', 'user'),
(24, 'yolan', '$2y$12$6oBuC/iVyYScAJQPEIeQ2OPlQH6GouEY5qinjnt8Sx4lPLY7fF9MW', 'T', 'user'),
(25, 'anelsaja', '$2y$12$JEtmm3FekSn/X30xRdyPLuAkRXFpvM/3OjIqR7lN5Tiqmc243qxSC', 'T', 'user'),
(26, 'baru', '$2y$12$T4hkhi2p6QHfCbb0OdSYHeGR/Sjkwrl6LszYvtHld/WG9kHcnf60.', 'T', 'user'),
(27, 'banyakKasus', '$2y$12$ZL70gRArutYbwa2huVWYLuP3WRi4VMHoQEnhkPUX2oPP6dozVa7se', 'T', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atribut`
--
ALTER TABLE `atribut`
  ADD PRIMARY KEY (`atribut_id`),
  ADD KEY `user_id_fk` (`user_id`),
  ADD KEY `case_num` (`case_num`);

--
-- Indexes for table `atribut_value`
--
ALTER TABLE `atribut_value`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `atribut_id_fk` (`atribut_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `case_num` (`case_num`);

--
-- Indexes for table `case_data`
--
ALTER TABLE `case_data`
  ADD PRIMARY KEY (`case_num`);

--
-- Indexes for table `case_user`
--
ALTER TABLE `case_user`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `case_user_1`
--
ALTER TABLE `case_user_1`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `case_user_2`
--
ALTER TABLE `case_user_2`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `case_user_15`
--
ALTER TABLE `case_user_15`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `case_user_17`
--
ALTER TABLE `case_user_17`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `case_user_21`
--
ALTER TABLE `case_user_21`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `case_user_22`
--
ALTER TABLE `case_user_22`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `case_user_24`
--
ALTER TABLE `case_user_24`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `case_user_25`
--
ALTER TABLE `case_user_25`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `case_user_26`
--
ALTER TABLE `case_user_26`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `case_user_27`
--
ALTER TABLE `case_user_27`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `inferensi_bc_user_1`
--
ALTER TABLE `inferensi_bc_user_1`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_bc_user_2`
--
ALTER TABLE `inferensi_bc_user_2`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_bc_user_26`
--
ALTER TABLE `inferensi_bc_user_26`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_fc_user_1`
--
ALTER TABLE `inferensi_fc_user_1`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_fc_user_2`
--
ALTER TABLE `inferensi_fc_user_2`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_fc_user_26`
--
ALTER TABLE `inferensi_fc_user_26`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_user_`
--
ALTER TABLE `inferensi_user_`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_user_1`
--
ALTER TABLE `inferensi_user_1`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_user_2`
--
ALTER TABLE `inferensi_user_2`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_user_15`
--
ALTER TABLE `inferensi_user_15`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_user_17`
--
ALTER TABLE `inferensi_user_17`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_user_21`
--
ALTER TABLE `inferensi_user_21`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_user_24`
--
ALTER TABLE `inferensi_user_24`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_user_25`
--
ALTER TABLE `inferensi_user_25`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `inferensi_user_26`
--
ALTER TABLE `inferensi_user_26`
  ADD PRIMARY KEY (`inf_id`);

--
-- Indexes for table `kasus`
--
ALTER TABLE `kasus`
  ADD PRIMARY KEY (`case_num`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rule_user_1`
--
ALTER TABLE `rule_user_1`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `rule_user_2`
--
ALTER TABLE `rule_user_2`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `rule_user_15`
--
ALTER TABLE `rule_user_15`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `rule_user_17`
--
ALTER TABLE `rule_user_17`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `rule_user_21`
--
ALTER TABLE `rule_user_21`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `rule_user_24`
--
ALTER TABLE `rule_user_24`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `rule_user_25`
--
ALTER TABLE `rule_user_25`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `rule_user_26`
--
ALTER TABLE `rule_user_26`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `temp_atribut`
--
ALTER TABLE `temp_atribut`
  ADD PRIMARY KEY (`atribut_id`);

--
-- Indexes for table `test_case_user_1`
--
ALTER TABLE `test_case_user_1`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `test_case_user_2`
--
ALTER TABLE `test_case_user_2`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `test_case_user_17`
--
ALTER TABLE `test_case_user_17`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `test_case_user_21`
--
ALTER TABLE `test_case_user_21`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `test_case_user_22`
--
ALTER TABLE `test_case_user_22`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `test_case_user_24`
--
ALTER TABLE `test_case_user_24`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `test_case_user_25`
--
ALTER TABLE `test_case_user_25`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `test_case_user_26`
--
ALTER TABLE `test_case_user_26`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `test_case_user_27`
--
ALTER TABLE `test_case_user_27`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`tree_id`),
  ADD KEY `value_id` (`value_id`),
  ADD KEY `link_value_id` (`Child_node`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tree_user_1`
--
ALTER TABLE `tree_user_1`
  ADD PRIMARY KEY (`tree_id`);

--
-- Indexes for table `tree_user_2`
--
ALTER TABLE `tree_user_2`
  ADD PRIMARY KEY (`tree_id`);

--
-- Indexes for table `tree_user_15`
--
ALTER TABLE `tree_user_15`
  ADD PRIMARY KEY (`tree_id`);

--
-- Indexes for table `tree_user_17`
--
ALTER TABLE `tree_user_17`
  ADD PRIMARY KEY (`tree_id`);

--
-- Indexes for table `tree_user_21`
--
ALTER TABLE `tree_user_21`
  ADD PRIMARY KEY (`tree_id`);

--
-- Indexes for table `tree_user_22`
--
ALTER TABLE `tree_user_22`
  ADD PRIMARY KEY (`tree_id`);

--
-- Indexes for table `tree_user_24`
--
ALTER TABLE `tree_user_24`
  ADD PRIMARY KEY (`tree_id`);

--
-- Indexes for table `tree_user_25`
--
ALTER TABLE `tree_user_25`
  ADD PRIMARY KEY (`tree_id`);

--
-- Indexes for table `tree_user_26`
--
ALTER TABLE `tree_user_26`
  ADD PRIMARY KEY (`tree_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atribut`
--
ALTER TABLE `atribut`
  MODIFY `atribut_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `atribut_value`
--
ALTER TABLE `atribut_value`
  MODIFY `value_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `case_data`
--
ALTER TABLE `case_data`
  MODIFY `case_num` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `case_user`
--
ALTER TABLE `case_user`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `case_user_1`
--
ALTER TABLE `case_user_1`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `case_user_2`
--
ALTER TABLE `case_user_2`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `case_user_15`
--
ALTER TABLE `case_user_15`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `case_user_17`
--
ALTER TABLE `case_user_17`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `case_user_21`
--
ALTER TABLE `case_user_21`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `case_user_22`
--
ALTER TABLE `case_user_22`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `case_user_24`
--
ALTER TABLE `case_user_24`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `case_user_25`
--
ALTER TABLE `case_user_25`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `case_user_26`
--
ALTER TABLE `case_user_26`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `case_user_27`
--
ALTER TABLE `case_user_27`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inferensi_bc_user_1`
--
ALTER TABLE `inferensi_bc_user_1`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inferensi_bc_user_2`
--
ALTER TABLE `inferensi_bc_user_2`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inferensi_bc_user_26`
--
ALTER TABLE `inferensi_bc_user_26`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inferensi_fc_user_1`
--
ALTER TABLE `inferensi_fc_user_1`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `inferensi_fc_user_2`
--
ALTER TABLE `inferensi_fc_user_2`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `inferensi_fc_user_26`
--
ALTER TABLE `inferensi_fc_user_26`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inferensi_user_`
--
ALTER TABLE `inferensi_user_`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inferensi_user_1`
--
ALTER TABLE `inferensi_user_1`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inferensi_user_2`
--
ALTER TABLE `inferensi_user_2`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `inferensi_user_15`
--
ALTER TABLE `inferensi_user_15`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inferensi_user_17`
--
ALTER TABLE `inferensi_user_17`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inferensi_user_21`
--
ALTER TABLE `inferensi_user_21`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inferensi_user_24`
--
ALTER TABLE `inferensi_user_24`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inferensi_user_25`
--
ALTER TABLE `inferensi_user_25`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inferensi_user_26`
--
ALTER TABLE `inferensi_user_26`
  MODIFY `inf_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kasus`
--
ALTER TABLE `kasus`
  MODIFY `case_num` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `rule_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rule_user_1`
--
ALTER TABLE `rule_user_1`
  MODIFY `rule_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rule_user_2`
--
ALTER TABLE `rule_user_2`
  MODIFY `rule_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rule_user_15`
--
ALTER TABLE `rule_user_15`
  MODIFY `rule_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rule_user_17`
--
ALTER TABLE `rule_user_17`
  MODIFY `rule_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rule_user_21`
--
ALTER TABLE `rule_user_21`
  MODIFY `rule_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rule_user_24`
--
ALTER TABLE `rule_user_24`
  MODIFY `rule_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rule_user_25`
--
ALTER TABLE `rule_user_25`
  MODIFY `rule_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rule_user_26`
--
ALTER TABLE `rule_user_26`
  MODIFY `rule_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test_case_user_1`
--
ALTER TABLE `test_case_user_1`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_case_user_2`
--
ALTER TABLE `test_case_user_2`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `test_case_user_17`
--
ALTER TABLE `test_case_user_17`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test_case_user_21`
--
ALTER TABLE `test_case_user_21`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_case_user_22`
--
ALTER TABLE `test_case_user_22`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_case_user_24`
--
ALTER TABLE `test_case_user_24`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test_case_user_25`
--
ALTER TABLE `test_case_user_25`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_case_user_26`
--
ALTER TABLE `test_case_user_26`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test_case_user_27`
--
ALTER TABLE `test_case_user_27`
  MODIFY `case_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tree`
--
ALTER TABLE `tree`
  MODIFY `tree_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tree_user_1`
--
ALTER TABLE `tree_user_1`
  MODIFY `tree_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tree_user_2`
--
ALTER TABLE `tree_user_2`
  MODIFY `tree_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tree_user_15`
--
ALTER TABLE `tree_user_15`
  MODIFY `tree_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tree_user_17`
--
ALTER TABLE `tree_user_17`
  MODIFY `tree_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tree_user_21`
--
ALTER TABLE `tree_user_21`
  MODIFY `tree_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tree_user_22`
--
ALTER TABLE `tree_user_22`
  MODIFY `tree_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tree_user_24`
--
ALTER TABLE `tree_user_24`
  MODIFY `tree_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tree_user_25`
--
ALTER TABLE `tree_user_25`
  MODIFY `tree_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tree_user_26`
--
ALTER TABLE `tree_user_26`
  MODIFY `tree_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `atribut`
--
ALTER TABLE `atribut`
  ADD CONSTRAINT `atribut_ibfk_1` FOREIGN KEY (`case_num`) REFERENCES `kasus` (`case_num`),
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `atribut_value`
--
ALTER TABLE `atribut_value`
  ADD CONSTRAINT `atribut_id_fk` FOREIGN KEY (`atribut_id`) REFERENCES `atribut` (`atribut_id`),
  ADD CONSTRAINT `atribut_value_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `atribut_value_ibfk_2` FOREIGN KEY (`case_num`) REFERENCES `kasus` (`case_num`);

--
-- Constraints for table `tree`
--
ALTER TABLE `tree`
  ADD CONSTRAINT `tree_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
