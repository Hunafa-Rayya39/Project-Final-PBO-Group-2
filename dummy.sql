-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2024 pada 16.10
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
-- Database: `dummy`
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
('1', 'ibu kota australia', 'sydney ', 'canberra', 'brunei', 'hanoi', 'canberra'),
('2', 'manakah hewan herbivora', 'singa', 'kambing', 'harimau', 'elang', 'kambing'),
('3', '32+54', '54', '67', '34', '86', '86'),
('4', 'hasil 7x8 adalah', '54', '56', '55', '57', '56'),
('5', 'apa hewan terbesar di dunia', 'paus biru', 'paus orca', 'gajah', 'megalodon', 'paus biru'),
('6', 'berapa 5x5 adalah', '23', '24', '22', '25', '25'),
('7', 'berapa 34x8-6+9', '255', '275', '235', '245', '275');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `quiz`
--

INSERT INTO `quiz` (`id`, `name`) VALUES
(4, 'MTK'),
(5, 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_id` int(11) DEFAULT NULL,
  `question_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_id`, `question_id`) VALUES
(4, '3'),
(4, '4'),
(4, '6'),
(4, '7'),
(5, '2'),
(5, '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `rollNo` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `email` varchar(500) NOT NULL,
  `marks` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`rollNo`, `name`, `gender`, `contactNo`, `email`, `marks`) VALUES
('3214', 'mukhlish', 'Male', '5345435', 'pdas@gmai.com', 2),
('32143', 'abim', 'Male', '53453', 'dasda@afds.com', 7),
('3233234', 'gopal', 'Male', '4324432', 'dasdsa@gmail.com', 8),
('53453', 'bekam', 'Male', '535345345', 'dsada', 7),
('432432', 'hakim', 'Male', '535345', 'fdsfds', 7),
('123', 'bekam', 'Male', '08191111111', 'bekambekam@gmail.com', 0),
('asda', 'as', 'Male', 'asdas', 'asda', 0),
('432', 'iuo', 'Male', '54343', 'ert', 2),
('43242', 'rewrw', 'Male', 'rewr', 'rewr', 1),
('876', 'p', 'Male', 'p', 'p', 0),
('5543', 'er', 'Male', 'tre', 'ter', 1),
('321', 'ewq', 'Male', '432', 'ewqeq', 3),
('432', 'rew', 'Male', '342', 'rew', 2),
('432', 'fdfs', 'Male', '432', 'dsf', 2),
('54', 'tre', 'Male', '654', 'tertre', 2),
('43', 're', 'Male', 'ter', 'ter', 0),
('523', '534', 'Male', '534', 'ewt', 0),
('312', 'ewq', 'Male', '432', 'dsadasd', 2),
('3213', 'rew', 'Male', 'rewrwe', 'rewrew', 1),
('432', 'abim', 'Male', '324', 'eqwee', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `question_id` (`question_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD CONSTRAINT `quiz_question_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`),
  ADD CONSTRAINT `quiz_question_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
