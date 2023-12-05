-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 09, 2023 lúc 05:23 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php1summer`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lab7`
--

CREATE TABLE `lab7` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lab7`
--

INSERT INTO `lab7` (`username`, `pass`, `name`, `img`) VALUES
('dodo', '12345', 'hồ vĩnh thành đô', 'dodo-bca.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ID` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ID`, `name`, `img`, `price`) VALUES
(1, 'CHIKKU LOAFERS', 's2', 475),
(2, '(SRV) SNEAKERS', 's3', 575),
(3, 'SHUBERRY HEELS', 's4', 575),
(4, 'RED BELLIES', 's5', 675),
(5, 'CATWALK FLATS', 's6', 375),
(6, 'RUNNING SHOES', 's7', 470),
(7, 'SUKUN CASUALS', 's2', 485),
(8, 'BANK SNEAKERS', 's2', 485),
(9, 'MEN LEATHER SHOES', 's10', 875),
(10, 'WILD SANDAL', 's11', 175),
(11, 'LUXURY BLACK', 's12', 975);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`username`, `pass`, `name`, `img`, `Email`) VALUES
('dodo', '$2y$10$j.lecpH/wJkk8CoM2V0V/Oz.3A5nBSWIn2uE53hbZsDCcJnImoFt2', 'hồ vĩnh thành đô', 'dodo-bca.jpg', 'chodenmot@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `lab7`
--
ALTER TABLE `lab7`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
