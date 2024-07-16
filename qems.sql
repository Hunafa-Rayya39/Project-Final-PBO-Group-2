-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jul 2024 pada 15.21
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qems`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `question`
--

CREATE TABLE `question` (
  `id` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `opt1` varchar(500) NOT NULL,
  `opt2` varchar(500) NOT NULL,
  `opt3` varchar(500) NOT NULL,
  `opt4` varchar(500) NOT NULL,
  `answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `question`
--

INSERT INTO `question` (`id`, `name`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`) VALUES
('1', '1+2 = ?', '3', '4', '2', '5', '3'),
('2', 'siapa bang pramuka dunia', 'asep', 'bambang', 'baden powell', 'sunarsip', 'baden powell'),
('3', 'siapa pemenang ww2', 'blok poros', 'blok sekutu', 'blok islam', 'non-blok', 'blok sekutu'),
('4', 'kapan indonesia merdeka', '18 agustus 1954', '18 agustus 1945', '19 agustus 1954', '18 agustus 1955', '18 agustus 1945'),
('5', 'Apa ibukota negara Jepang?', 'beijing', 'hanoi', 'tokyo', 'jakarta', 'tokyo'),
('6', 'Apa nama sungai terpanjang di dunia?', 'sungai amazon', 'sungai nil', 'sungai kapuas', 'sungai jordan', 'sungai nil'),
('7', 'Berapakah nilai pi (π) hingga dua tempat desimal?', '3.15', '3.14', '3.16', '3.13', '3.14'),
('8', 'apa ibu kota australia', 'sydney', 'canberra', 'melbourne', 'brisbane', 'canberra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `rollNo` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `fatherName` varchar(500) NOT NULL,
  `motherName` varchar(500) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `email` varchar(500) NOT NULL,
  `tenthUniversityName` varchar(200) NOT NULL,
  `tenthPercentage` varchar(10) NOT NULL,
  `tenthPassoutYear` varchar(5) NOT NULL,
  `twelveUniversityName` varchar(200) NOT NULL,
  `twelvePercentage` varchar(10) NOT NULL,
  `twelvePassoutYear` varchar(5) NOT NULL,
  `graduationUniversityName` varchar(200) NOT NULL,
  `graduationPercentage` varchar(10) NOT NULL,
  `graduationPassoutYear` varchar(5) NOT NULL,
  `address` varchar(500) NOT NULL,
  `marks` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`rollNo`, `name`, `fatherName`, `motherName`, `gender`, `contactNo`, `email`, `tenthUniversityName`, `tenthPercentage`, `tenthPassoutYear`, `twelveUniversityName`, `twelvePercentage`, `twelvePassoutYear`, `graduationUniversityName`, `graduationPercentage`, `graduationPassoutYear`, `address`, `marks`) VALUES
('3214', 'mukhlish', 'asep', 'dewi', 'Male', '5345435', 'pdas@gmai.com', 'man 10', '99', '2023', 'man 10', '99', '2023', 'man 10', '99', '2023', 'dfdsfdsfdsfs', 2),
('32143', 'abim', 'udin', 'narsumi', 'Male', '53453', 'dasda@afds.com', 'SMA 117', '76', '2023', 'SMA 117', '54', '2023', 'SMA 117', '78', '2023', 'xfgfdgdgdfgd', 7),
('3233234', 'gopal', 'dadang', 'pororo', 'Male', '4324432', 'dasdsa@gmail.com', 'SMA 90', '98', '2023', 'SMA 90', '87', '2023', 'SMA 90', '69', '2023', 'dsgdsgdf', 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
