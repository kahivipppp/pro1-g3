-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2023 lúc 07:14 AM
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
-- Cơ sở dữ liệu: `maitocxi_database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Dầu gội '),
(2, 'Dầu xã'),
(3, 'Hair oil'),
(4, 'Pre-styling'),
(5, 'Sáp vuốt tóc'),
(6, 'Pomade'),
(7, 'Bột tạo phồng'),
(8, 'Gôm giữ nếp'),
(9, 'Nước hoa nam'),
(10, 'Nước hoa nữ'),
(11, 'Nước hoa hương tươi mát'),
(12, 'Nước hoa note trầm hương'),
(13, 'Sữa rửa mặt '),
(14, 'Tẩy tế bào chết'),
(15, 'Cấp ẩm'),
(16, 'Toner');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cmt`
--

CREATE TABLE `cmt` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `create_at` varchar(20) NOT NULL,
  `update_at` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(100) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `description` text DEFAULT NULL,
  `view` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `discount`, `img`, `create_at`, `update_at`, `description`, `view`, `id_cate`) VALUES
(1, 'Sữa tắm Bath & Body Works Mahogany Teakwood 295ml', 3000005, 280000, 's1.png', '0000-00-00 00:00:00', '2023-10-11 21:49:30', '', 0, 1),
(2, 'Sữa tắm Bath & Body Works Shower Gel 295ml (15 Mùi', 300000, 260000, 's2.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 1),
(3, 'Sữa tắm Bath & Body Works Aromatherapy Stress Reli', 300000, 280000, 's3.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 1),
(4, 'Sữa tắm Bath & Body Works Hero 295ml', 300000, 280000, 's4.jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 1),
(5, 'Sữa tắm Bath & Body Works Gingham Legend 295ml', 300000, 280000, 's5.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 1),
(6, 'Sữa tắm Bath & Body Works Clean Slate 295ml', 300000, 280000, 's6.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 1),
(7, 'Dầu xả It’s a 10 Miracle Daily Conditioner', 630000, 550000, 's7.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 2),
(8, 'Dầu xả Doers Of London Conditioner 300ml', 600000, 580000, 's8.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 2),
(9, 'Dầu xả Pacinos Conditioner – 750ml', 580000, 550000, 's9.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 2),
(10, 'Dầu gội xả Duke Cannon 2 in 1 Hair Wash Bay Rum', 500000, 450000, 's10.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 2),
(11, 'Dầu gội xả Duke Cannon 2 in 1 Hair Wash Naval Dipl', 500000, 450000, 's11.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 2),
(12, '18.21 Man Made Wash – 100ml (4 Mùi hương)', 300000, 280000, 's12.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 2),
(13, 'Dầu dưỡng tóc Firsthand Supply Hair Oil – 50ml', 850000, 800000, 's13.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 3),
(14, 'Tinh chất dưỡng tóc Olaplex No.9 Bond Protector No', 780000, 730000, 's14.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 3),
(15, 'Dầu dưỡng tóc Templeton Tonics x Viet Nam Quý Mão ', 580000, 550000, 's15.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 3),
(16, 'Serum dưỡng tóc Patricks RD2 | Chống rụng tóc – 30', 3350000, 3100000, 's16.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 3),
(17, '18.21 Man Made Oil – 4 Mùi hương', 700000, 650000, 's17.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 3),
(18, 'Black Kraken Tonic | Limited Edition 2023', 480000, 0, 's18.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 3),
(19, 'Mane Man Sea Salt Spray', 550000, 480000, 's19.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 4),
(20, 'Tinh chất dưỡng tóc Olaplex No.9 Bond Protector No', 780000, 730000, 's20.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 4),
(21, 'Dauntless Tribute Sea Salt Spray – 118ml', 480000, 450000, 's21.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 4),
(22, 'Battle Born Sea Salt Spray', 580000, 550000, 's22.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 4),
(23, 'Xịt tăng phồng Moroccanoil Volumizing Mist – 160ml', 590000, 540000, 's23.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 4),
(24, 'Urban Primate Sea Salt Spray – 200ml', 350000, 309000, 's24.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 4),
(25, 'Mane Man Matte Paste', 550000, 480000, 's25.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 5),
(26, 'Mane Man Matte Cream', 550000, 480000, 's26.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 5),
(27, 'Mane Man Ultra Matte Paste', 550000, 480000, 's27.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 5),
(28, 'Mane Man Low Sheen Paste', 550000, 480000, 's28.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 5),
(29, 'Kevin Murphy Night Rider – Travel Size 30g', 350000, 270000, 's29.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 5),
(30, 'Pacinos Clay Maximum Control – 118ml', 480000, 450000, 's30.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 5),
(31, 'Suavecito Summer Matte Pomade 2023', 480000, 450000, 's31.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 6),
(32, 'Bona Fide Fiber Pomade', 449000, 419000, 's32.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 6),
(34, 'Dauntless Pomade – 56g', 400000, 380000, 's33.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 6),
(35, 'Black Kraken Clay | Limited Edition 2023', 550000, 0, 's34.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 6),
(36, 'Hanz De Fuko Gel Triq – 237ml', 720000, 650000, 's35.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 6),
(37, 'Dauntless Heavy Clay – 56g', 400000, 380000, 's36.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 6),
(38, 'Bột tạo phồng By Vilain Blow Hair Powder (Mới) – 1', 500000, 480000, 's37.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 7),
(39, 'Bột tạo phồng Forte Series Texture Powder – 3g', 510000, 490000, 's38.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 7),
(40, 'Bột tạo phồng Shear Revival Gleodream Texture Powd', 580000, 400000, 's39.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 7),
(41, 'Bột tạo phồng Suavecito Texturizing Powder – 50gr', 510000, 490000, 's40.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 7),
(42, 'Bột tạo phồng Pacinos Texture Powder', 450000, 420000, 's41.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 7),
(43, 'Bột tạo phồng Arcadian Texture Powder', 470000, 340000, 's42.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 7),
(44, 'Gôm Davines Strong Hairspray – 400ml', 418000, 390000, 's43.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 8),
(45, 'Bọt tạo kiểu Davines Volume Boosting Mousse – 250m', 458000, 399000, 's44.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 8),
(46, 'Gôm Pacinos Final Touch Hair Spray – 250ml', 450000, 420000, 's45.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 7),
(47, 'Gôm xịt tóc Gatsby Moving Lock Spray – Extra Hard ', 250000, 220000, 's46.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 8),
(48, 'Gôm Pacinos Final Touch Hair Spray – 250ml', 450000, 420000, 's45.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 8),
(49, 'Gôm Tigi Bed Head Masterpiece – 340ml', 420000, 388000, 's47.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 8),
(50, 'Gôm Kevin Murphy Touchable', 720000, 690000, 's48.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 8),
(51, 'Amouage Search | 5ml – 10ml – 100ml', 400000, 0, 's49.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 9),
(52, 'Amouage Opus V Woods Symphony | 5ml – 10ml – 100ml', 300000, 0, 's50.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 9),
(53, 'Amouage Opus XIII Silver Oud | 5ml – 10ml – 100ml', 400000, 0, 's51.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 9),
(54, 'Amouage Boundless | 10ml – 100ml', 550000, 0, 's52.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 9),
(55, 'Diptyque Oyédo Eau de Toilette | 10ml – 100ml', 410000, 0, 's53.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 9),
(56, 'Dolce & Gabbana Light Blue Summer Vibes Pour Homme', 340000, 0, 's54.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 9),
(57, 'Amouage Boundless | 10ml – 100ml', 550000, 0, 's55.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 10),
(58, 'Diptyque Oyédo Eau de Toilette | 10ml – 100ml', 410000, 0, 's56.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 10),
(59, 'Montale Dark Purple EDP | 10ml – 100ml', 2450000, 0, 's57.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 10),
(60, 'Louis Vuitton Les Sables Roses | 5ml – 10ml – 100m', 650000, 0, 's58.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 10),
(61, 'Louis Vuitton Attrape-Rêves | 5ml – 10ml – 100ml', 490000, 0, 's59.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 10),
(62, 'Louis Vuitton Nuit de Feu | 5ml – 10ml – 100ml', 650000, 0, 's60.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 10),
(63, 'Roja Apex Parfum | 5ml – 10ml – 50ml', 1000000, 0, 's61.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 11),
(64, 'Roja Apex Eau de Parfum | 5ml – 10ml – 100ml', 460000, 0, 's62.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 11),
(65, 'Roja Isola Blu Parfum | 5ml – 10ml – 50ml', 1050000, 0, 's63.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 11),
(66, 'Roja Elysium Parfum Pour Homme | 5ml – 10ml – 50ml', 950000, 0, 's64.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 11),
(67, 'Roja Elysium Eau Intense | 5ml – 10ml – 100ml', 530000, 0, 's65.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 11),
(68, 'Roja Musk Aoud Crystal Parfum | 5ml – 10ml – 100ml', 850000, 0, 's66.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 11),
(69, 'Maison Francis Kurkdjian Oud Silk Mood Extrait de ', 550000, 0, 's67.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 12),
(70, 'Maison Francis Kurkdjian 724 Eau de Parfum | 5ml –', 420000, 0, 's68.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 12),
(71, 'Maison Francis Kurkdjian À La Rose Eau de Parfum |', 760000, 0, 's69.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 12),
(72, 'Louis Vuitton Nouveau Monde | 5ml – 10ml – 100ml', 520000, 0, 's70.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 12),
(73, 'Louis Vuitton L’Immensité | 5ml – 10ml – 100ml', 520000, 0, 's71.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 12),
(74, 'Louis Vuitton Orage | 5ml – 10ml – 100ml', 520000, 0, 's72.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 12),
(75, 'Sữa rửa mặt Apestomen Volcanic Clay Foam Cleanser ', 380000, 330000, 's73.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 13),
(76, 'Sữa rửa mặt Bulldog End Of Day Recovery Cleansing ', 430000, 0, 's74.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 13),
(77, 'Sữa rửa mặt Bulldog Anytime Daily Cleansing Face C', 430000, 0, 's75.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 13),
(78, 'Sữa rửa mặt Lab Series Daily Rescue Gel Cleanser 1', 850000, 820000, 's76.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 13),
(79, 'Sữa rửa mặt Lab Series All In One Multi Action Fac', 850000, 820000, 's77.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 13),
(80, 'Sữa rửa mặt Pacinos Beard & Face Scrub Cleanser 11', 480000, 450000, 's78.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 13),
(81, 'Tẩy tế bào chết 18.21 Man Made Octane 200 Scrub', 630000, 580000, 's79.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(82, 'Sữa rửa mặt Pacinos Beard & Face Scrub Cleanser 11', 480000, 450000, 's80.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(83, 'Tẩy tế bào chết Patricks FS1 | Crushed Diamond Fac', 2300000, 2150000, 's81.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(84, 'Tẩy tế bào chết Naruko Tea Tree Shine Control & Bl', 279000, 250000, 's82.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(85, 'Tẩy tế bào chết Bulldog Sensitive Face Scrub – 125', 300000, 285000, 's83.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(86, 'Tẩy tế bào chết Bulldog Original Face Scrub – 125m', 300000, 285000, 's84.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(87, 'Dưỡng ẩm da mặt Bulldog End Of Day Recovery Cream ', 530000, 0, 's85.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 15),
(88, 'Dưỡng ẩm da mặt Bulldog End Of Day Recovery Serum ', 550000, 0, 's86.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 15),
(89, 'Dưỡng ẩm da mặt Bulldog Anytime Daily Moisturising', 540000, 0, 's87.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 15),
(90, 'Kem dưỡng ẩm Lab Series All In One Face Treatment ', 1000000, 0, 's88.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 15),
(91, 'Kem dưỡng ẩm Patricks SL1 | Superleggera Moisturiz', 2600000, 2550000, 's89.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 15),
(92, 'Kem dưỡng ẩm Patricks AM1 | Anti-Aging Moisturizer', 3350000, 3100000, 's90.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 15),
(93, 'Lab Series Oil Control Clearing Water Lotion – Ton', 1050000, 1030000, 's91.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16),
(94, 'Toner cân bằng ngăn ngừa mụn Sukin Blemish Control', 80000, 59000, 's93.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16),
(95, 'Toner làm sáng da Naruko Raw Job’s Tears Brighteni', 339000, 295000, 's93.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16),
(96, 'Toner cân bằng dầu Naruko Tea Tree Naruko Shine Co', 329000, 285000, 's94.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16),
(97, 'Toner cân bằng dầu Paula’s Choice Skin Balancing P', 729000, 680000, 's95.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16),
(98, 'Toner phục hồi độ ẩm da Paula’s Choice Skin Recove', 729000, 680000, 's96.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usr`
--

CREATE TABLE `usr` (
  `username` varchar(20) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) NOT NULL COMMENT '0 là admin 1 là user',
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `deleted` int(11) NOT NULL COMMENT '0 là tồn tại 1 là đã xóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `usr`
--

INSERT INTO `usr` (`username`, `pass`, `name`, `img`, `email`, `role`, `create_at`, `update_at`, `deleted`) VALUES
('dodo', '$2y$10$K.n738b0mAw2zb8CUL4W9uPI3Z873Baw8/nWNiQrsStMZCggun9s6', 'Hồ Vĩnh Thành Đô', 'dodo-bac.jpg', 'chodenmot@gmail.com', 0, '0000-00-00 00:00:00', '2023-10-11 19:22:02', 1),
('dodo2', '$2y$10$of/TnCatgsXafQ9adAEKG.kjN/YBlcl5BHjPGZmXdssy.ovkJ4VPy', 'a nhon xe o', 'dodo2-abc.jpg', 'chodenmot@gmail.com', 1, '0000-00-00 00:00:00', '2023-10-11 19:14:29', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cmt`
--
ALTER TABLE `cmt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cmt_prod` (`id_prod`),
  ADD KEY `fk_cmt_usr` (`id_user`);

--
-- Chỉ mục cho bảng `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gale_prod` (`id_prod`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_usr` (`id_user`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderdetails_orders` (`id_order`),
  ADD KEY `fk_orderdetails_prod` (`id_prod`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prod_cate` (`id_cate`);

--
-- Chỉ mục cho bảng `usr`
--
ALTER TABLE `usr`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `cmt`
--
ALTER TABLE `cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cmt`
--
ALTER TABLE `cmt`
  ADD CONSTRAINT `fk_cmt_prod` FOREIGN KEY (`id_prod`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_cmt_usr` FOREIGN KEY (`id_user`) REFERENCES `usr` (`username`);

--
-- Các ràng buộc cho bảng `galery`
--
ALTER TABLE `galery`
  ADD CONSTRAINT `fk_gale_prod` FOREIGN KEY (`id_prod`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_usr` FOREIGN KEY (`id_user`) REFERENCES `usr` (`username`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_orderdetails_orders` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_orderdetails_prod` FOREIGN KEY (`id_prod`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_prod_cate` FOREIGN KEY (`id_cate`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
