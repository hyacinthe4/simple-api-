-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2024 at 02:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `student_id` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `student_id`, `firstname`, `lastname`, `gender`, `address`) VALUES
(1, '8836697d-3231-4d8d-9154-c75a410e2ec4', 'MUVARA ', 'KIYIKO', 'Male', 'KAGITUMBA'),
(2, '0c85d301-1e38-4be9-a570-e7c4ce55bdd6', 'cyusa', 'tresall ', 'male', 'gikondo'),
(5, '5f7b5155-5695-43a9-8f22-5f2733845f08', 'sauverpro', '', '', ''),
(7, 'd3064cd1-57f5-4e5f-8596-99dac5bf9c55', 'waww', '', '', ''),
(8, 'f8426dff-93ff-4e1e-be7e-211b2ac6563a', '[object Object]', '', '', ''),
(9, '999352f0-327c-4587-b760-73deefeccb6e', 'waww', '', '', ''),
(10, '2eb79f45-74dd-4422-a679-264e37689f08', 'waww', '', '', ''),
(11, 'c3aa9c32-fa9f-4809-8ecd-50aadddd7203', 'kelly', 'mutiganda ', 'male', 'bugesera'),
(13, '27f63f74-c0fa-46b4-9a25-c80ed43495aa', '12345', '', '', ''),
(14, 'fb56b96a-ebc9-4e8e-8647-82cf70a113ff', '1', '', '', ''),
(17, '3c32d42b-f5f3-44c2-9fe4-7d4ba832ba1d', 'tuyizere', 'jean sauveur', 'male', 'kigali'),
(18, 'b205e9f5-b5d5-4a6d-b635-c51b33a8528d', 'kelia', 'mutesi ', 'female', 'rwamagana'),
(20, '39faaeb2-fe6b-45e3-a43c-c3dfbc3edb50', 'ENZO', 'tresall ', 'FEMALE', 'HUYE'),
(21, '610a63f5-fc62-4ef3-a24b-10f01b0aa59b', 'CYUMA ', 'tresallKESI ', 'FEMALE', 'NYANZA'),
(22, 'c1a57525-b8cf-4fc5-ab6e-dcb3e0c5ccd2', 'CYUMA ', 'tresallKESI ', 'FEMALE', 'NYANZA'),
(23, '71c7fd9a-2457-4442-97d3-725aa1ccc53a', 'jean sauveur', 'tuyizere', 'Mare', 'kigali'),
(25, '668448ed-2c55-4cff-876e-b64c77b71a7b', 'Joseph ', 'kigali', 'Male', 'kigali'),
(26, 'aee568b0-26bf-4a84-8582-68f9a652f943', 'Joseph ', 'kigali', 'Male', 'kigali'),
(27, '0026d435-b8e8-4a0b-b30f-ec3a816b226b', 'Joseph ', 'kigali', 'Male', 'kigali'),
(28, 'd036dc15-b89a-4bd2-9cb6-1ef23cf5a045', 'Joseph ', 'kigali', 'Male', 'kigali'),
(29, 'c25d2f32-4949-4a8e-83a5-13ab33ff0771', 'Joseph ', 'kigali', 'Male', 'kigali'),
(30, '20f6137e-1ee2-44b8-b4aa-111127d42bb3', 'Mukama ', 'titi', 'Male', 'kigali2'),
(31, '5506a084-0c1b-4961-ba35-a2333dc429ef', 'undefined', 'undefined', 'undefined', 'undefined'),
(32, 'c0d0d239-07aa-41c2-801d-8657e855888d', 'undefined', 'undefined', 'undefined', 'undefined'),
(33, 'bf9b96a9-faf0-45d5-89bb-fee9333b10f3', 'MUKESHIMANA ', 'KIZITO', 'FEMALE ', 'RULI'),
(34, '7766decd-9bbe-4d4b-b637-66c1bd786863', 'MUJYEMA ', 'OLA', 'FEMALE ', 'KARONGI'),
(35, '3262d0ab-2d90-4d15-a45a-e89f9097b3eb', 'MUKASINE ', 'KAGAME', 'FEMELE ', 'KARONGI');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Sauveur', '$2b$10$KbaSArCR8vlqqEn54UuZ8eRVReddNKW86E08tarjoRoZd4r/xHvPC'),
(2, 'Sauveur pro', ' $2b$10$.XLs21RE4EllBXGH55X/Ju9.XvG6WRd9f9RAOtMdUd/MnqBgSrGWm'),
(3, 'Joseph', '$2b$10$311VHCWrE4MRPmjAroIn1e6xCK1.NggQ0LZjj2g1jLXn/4pd34A8i'),
(4, 'Joseph', '$2b$10$kTg6LFTayM2lU9pO58KCSuCnmj.MswnB8FfRyNlHagtFfGFBuhcSi'),
(5, 'sauve', '$2b$10$2i/XP2EW4i0wplX23El/UOz8IvKUTB9wRl7i.wh.7zDRy74nlUvQu'),
(6, 'titi', '$2b$10$tKhmQZcYC.WArSXCMKrAFeYyBPZwoso2OZucd51lCi4YoM2GLISBC'),
(7, 'josephop', '$2b$10$DNIUJbh80Y33wINe5Rmc2eyafObrgLveTJTtdAZ4gMjH4UEeS8KTe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
