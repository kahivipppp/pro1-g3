-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2023 lúc 01:39 PM
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
  `status` int(1) NOT NULL COMMENT '0 là chưa giao 1 là đã giao',
  `total_money` int(11) NOT NULL
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
  `name` varchar(255) NOT NULL,
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
(1, 'Sữa tắm Bath & Body Works Mahogany Teakwood 295ml', 3000005, 280000, 's1.png', '0000-00-00 00:00:00', '2023-10-18 11:17:58', '<h3><strong>Giới thiệu về sản phẩm</strong></h3><p>Sữa tắm Bath &amp; Body Works Mahogany Teakwood là một sản phẩm chăm sóc da cho cơ thể. Nó được chiết xuất từ những thành phần tự nhiên và tinh dầu, giúp nuôi dưỡng làn da mềm mại và sáng trắng. Sữa tắm Bath &amp; Body Works Mahogany Teakwood còn giúp bảo vệ da khỏi các tác nhân gây hại, giúp giữ độ ẩm và tăng cường sức đề kháng. Sản phẩm là một lựa chọn hoàn hảo cho những ai muốn có một làn da mềm mại, sáng trắng và tươi trẻ.</p><figure class=\"image\"><img style=\"aspect-ratio:1024/540;\" src=\"https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-1024x540.jpg\" alt=\"Sữa tắm Bath &amp; Body Works Mahogany Teakwood\" srcset=\"https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-1024x540.jpg 1024w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-300x158.jpg 300w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-768x405.jpg 768w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-96x51.jpg 96w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-42x22.jpg 42w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-60x32.jpg 60w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-1536x810.jpg 1536w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-510x269.jpg 510w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-170x90.jpg 170w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image.jpg 1903w\" sizes=\"100vw\" width=\"1024\" height=\"540\"></figure><h3><strong>Thông tin của Sữa tắm Bath &amp; Body Works Mahogany Teakwood</strong></h3><ul><li><strong>Chất liệu:</strong> nhựa</li><li><strong>Dung tích</strong>: 295ml</li><li><strong>Mùi hương</strong>: Mahogany Teakwood – Mùi hương vô cùng phong phú với gỗ gụ, gỗ teak đen và hoa oải hương</li></ul><h3><strong>Sử dụng như thế nào</strong></h3><ol><li>Làm ướt cơ thể bằng nước</li><li>Sử dụng sữa tắm nhẹ nhàng massage toàn thân</li><li>Rửa sạch lại với nước.</li></ol><h3><strong>Bảo quản sản phẩm như thế nào?</strong></h3><ul><li>Tránh ánh sáng mặt trời chiếu trực tiếp vào</li><li>Tránh để những nơi có nhiệt độ trên 30 độ C</li><li>Để ở những nơi thoáng mát</li><li>Đậy nắp sau khi sử dụng</li></ul><blockquote><p>&nbsp;</p></blockquote>', 29, 1),
(2, 'Sữa tắm Bath & Body Works Shower Gel 295ml (15 Mùi', 300000, 260000, 's2.png', '0000-00-00 00:00:00', '2023-10-18 11:20:13', '<p>Sữa tắm Bath &amp; Body Works Shower Gel là một sản phẩm chăm sóc da cho cơ thể. Nó được chiết xuất từ những thành phần tự nhiên như vitamin E và lô hội, giúp nuôi dưỡng làn da mềm mại và mịn màng. Sữa tắm Bath &amp; Body Works Shower Gel còn giúp bảo vệ da khỏi các tác nhân gây hại, giúp giữ độ ẩm và tăng cường sức đề kháng. Sản phẩm là một lựa chọn hoàn hảo cho những ai muốn có một làn da mềm mại, tươi mát, sạch sẽ và có mùi thơm dễ chịu.</p><figure class=\"image\"><img style=\"aspect-ratio:1024/540;\" src=\"https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-1024x540.jpg\" alt=\"Sữa tắm Bath &amp; Body Works Shower Gel\" srcset=\"https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-1024x540.jpg 1024w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-300x158.jpg 300w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-768x405.jpg 768w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-96x51.jpg 96w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-42x22.jpg 42w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-60x32.jpg 60w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-1536x810.jpg 1536w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-510x269.jpg 510w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image-170x90.jpg 170w, https://clmensstore.com/wp-content/uploads/2022/12/bbw-storefront-banner-image.jpg 1903w\" sizes=\"100vw\" width=\"1024\" height=\"540\"></figure><h3><strong>Thông tin của Sữa tắm Bath &amp; Body Works Shower Gel</strong></h3><ul><li><strong>Chất liệu:</strong> nhựa</li><li><strong>Dung tích</strong>: 295ml</li><li><strong>Mùi hương</strong>:<ul><li><strong>MoonLight Path</strong> – Mùi hương như một khu vườn tươi tốt pha trộn giữa hoa nhài nở về đêm, Violet xanh, hoa oải hương tuyệt đẹp, hoa huệ thung lũng và xạ hương mềm mại.</li><li><strong>Into The Night</strong> – Mang đến một mùi hương vượt thời gian, gợi lên nét nữ tính, quyến rũ, đầy sự tự tin và rạng ngời của phái đẹp bởi sự kết hợp từ các hương mâm xôi đen, tinh thể hổ phách, cánh hoa hồng mượt mà, hoắc hương kem và xạ hương mocha.</li><li><strong>Dark Kiss</strong> – Là sự pha trộn ngọt ngào đầy quyến rũ của quả mâm xôi đen, hoa hồng đỏ tía và hương cam bergamot, đậu vani đen và xạ hương mận.</li><li><strong>Champagne Toast</strong> – Mùi hương trái cây đầy ngọt ngào được kết hợp từ rượu champagne sủi bọt, quả mọng lấp lánh và quýt ngọt.</li><li><strong>Beautiful Day</strong> – Hương thơm đầy mơ mộng của quả táo, hoa cúc dại, hoa mẫu đơn hồng.</li><li><strong>White Citrus</strong> – Sự kết hợp từ hương cam quýt giòn và hoa súng như mang đến cho bạn một khu rừng cam quýt đầy nắng ở Địa Trung Hải.</li><li><strong>Twilight Woods</strong> – Mùi hương mang đến&nbsp;sự ấm áp và bí ẩn của những cánh rừng đầy mê hoặc với sự pha trộn hấp dẫn của quả mọng tươi tốt, quýt lấp lánh, mimosa mềm, mật hoa mơ và gỗ cây bách.</li><li><strong>At the Beach</strong> – Hương thơm kết hợp từ hoa frangipani, dừa nướng và nước cam bergamot sẽ mang đến cho bạn một ngày đi biển hoàn hảo với cát, nắng và sóng biển.</li><li><strong>Waikiki Beach Coconut</strong> – Mang đến cho bạn một kỳ nghỉ ngọt ngào trên bãi biển đầy nắng từ hương thơm kết hợp từ dừa trắng nhiệt đới, gió biển và gỗ phơi nắng.</li><li><strong>Midnight Blue Citrus</strong> – Mùi hương nhẹ nhàng, ngọt ngào từ hương thơm của cam quýt ngon ngọt, nước suối tươi và xoài ngọt.</li><li><strong>Pretty As A Peach</strong> – Mang đến cho bạn cảm giác đang thưởng thức những món ngon ngọt ngào nhất, ngon ngọt nhất vừa được hái trong mùa từ hương thơm kết hợp của quả đào, cánh hoa nhài và quả xuân đào trắng.</li><li><strong>Fruity Sherbet Scoop</strong> – Hương thơm kết hợp từ sherbert cầu vồng, cam nồng nàn và dâu tây tỏa nắng sẽ mang đến trải nghiệm kỳ diệu không thể cưỡng lại được. Vị cam nồng nàn mang lại cảm giác tươi mát sảng khoái, trong khi vị dâu tây tạo thêm chút cám dỗ ngọt ngào.</li><li><strong>Cotton Candy Clouds</strong> –&nbsp; Hương thơm khiến bạn có thể ngửi thấy mùi hoàng hôn theo đúng nghĩa đen. Hãy nhắm mắt lại và để mình bị mê hoặc bởi hương thơm ngọt ngào của kẹo bông lan tỏa trong không khí như một phép màu. Hương thơm tinh tế của quả mọng màu hồng mang lại hương thơm nhẹ nhàng của trái cây, trong khi vani đánh bông góp phần tạo nên thành phần kem và gợi cảm.</li><li><strong>Japanese Cherry Blossom</strong> – Là sự kết hợp đầy duyên dáng của hoa anh đào Nhật Bản, quả lê châu Á, những cánh hoa mimosa tươi, hoa nhài trắng và gỗ đàn hương đỏ.</li><li><strong>Fairytale</strong> – Mật hoa lựu huyền diệu và hoa cam tươi với sự kết hợp của vani và hổ phách ấm áp khiến loại nước hoa này trở thành một trải nghiệm hương thơm cổ tích vô cùng đặc biệt.</li></ul></li></ul><h3><strong>Sử dụng như thế nào</strong></h3><ol><li>Làm ướt cơ thể bằng nước</li><li>Sử dụng sữa tắm nhẹ nhàng massage toàn thân</li><li>Rửa sạch lại với nước.</li></ol><h3><strong>Bảo quản sản phẩm như thế nào?</strong></h3><ul><li>Tránh ánh sáng mặt trời chiếu trực tiếp vào</li><li>Tránh để những nơi có nhiệt độ trên 30 độ C</li><li>Để ở những nơi thoáng mát</li><li>Đậy nắp sau khi sử dụng</li></ul>', 15, 1),
(3, 'Sữa tắm Bath & Body Works Aromatherapy Stress Reli', 300000, 280000, 's3.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 1),
(4, 'Sữa tắm Bath & Body Works Hero 295ml', 300000, 280000, 's4.jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 1),
(5, 'Sữa tắm Bath & Body Works Gingham Legend 295ml', 300000, 280000, 's5.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 1),
(6, 'Sữa tắm Bath & Body Works Clean Slate 295ml', 300000, 280000, 's6.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 1),
(7, 'Dầu xả It’s a 10 Miracle Daily Conditioner', 630000, 550000, 's7.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 4, 2),
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
(18, 'Black Kraken Tonic | Limited Edition 2023', 480000, 450000, 's18.png', '0000-00-00 00:00:00', '2023-10-15 11:41:30', '', 0, 3),
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
(35, 'Black Kraken Clay | Limited Edition 2023', 550000, 500000, 's34.png', '0000-00-00 00:00:00', '2023-10-15 11:41:22', '', 0, 6),
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
(46, 'Gôm Pacinos Final Touch Hair Spray – 250ml', 450000, 420000, 's45.png', '0000-00-00 00:00:00', '2023-10-15 10:50:45', '', 0, 8),
(47, 'Gôm xịt tóc Gatsby Moving Lock Spray – Extra Hard ', 250000, 220000, 's46.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 8),
(49, 'Gôm Tigi Bed Head Masterpiece – 340ml', 420000, 388000, 's47.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 8),
(50, 'Gôm Kevin Murphy Touchable', 720000, 690000, 's48.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 8),
(51, 'Amouage Search | 5ml – 10ml – 100ml', 5800000, 400000, 's49.jpg', '0000-00-00 00:00:00', '2023-10-15 11:42:20', '', 0, 9),
(52, 'Amouage Opus V Woods Symphony | 5ml – 10ml – 100ml', 4500000, 300000, 's50.jpg', '0000-00-00 00:00:00', '2023-10-15 11:42:53', '', 4, 9),
(53, 'Amouage Opus XIII Silver Oud | 5ml – 10ml – 100ml', 6500000, 400000, 's51.jpg', '0000-00-00 00:00:00', '2023-10-15 11:43:19', '', 0, 9),
(54, 'Amouage Boundless | 10ml – 100ml', 4700000, 550000, 's52.jpg', '0000-00-00 00:00:00', '2023-10-15 11:45:20', '', 0, 9),
(55, 'Diptyque Oyédo Eau de Toilette | 10ml – 100ml', 3300000, 410000, 's53.jpg', '0000-00-00 00:00:00', '2023-10-15 11:43:51', '', 0, 9),
(56, 'Dolce & Gabbana Light Blue Summer Vibes Pour Homme', 3200000, 340000, 's54.jpg', '0000-00-00 00:00:00', '2023-10-15 11:45:57', '', 0, 9),
(57, 'Amouage Boundless | 10ml – 100ml', 4700000, 550000, 's55.jpg', '0000-00-00 00:00:00', '2023-10-15 11:46:27', '', 0, 10),
(58, 'Diptyque Oyédo Eau de Toilette | 10ml – 100ml', 3300000, 410000, 's56.jpg', '0000-00-00 00:00:00', '2023-10-15 11:46:56', '', 0, 10),
(59, 'Montale Dark Purple EDP | 10ml – 100ml', 2450000, 2350000, 's57.png', '0000-00-00 00:00:00', '2023-10-15 11:47:26', '', 0, 10),
(60, 'Louis Vuitton Les Sables Roses | 5ml – 10ml – 100m', 10200000, 650000, 's58.jpg', '0000-00-00 00:00:00', '2023-10-15 11:47:53', '', 0, 10),
(61, 'Louis Vuitton Attrape-Rêves | 5ml – 10ml – 100ml', 8200000, 490000, 's59.jpg', '0000-00-00 00:00:00', '2023-10-15 11:48:23', '', 0, 10),
(62, 'Louis Vuitton Nuit de Feu | 5ml – 10ml – 100ml', 10200000, 650000, 's60.jpg', '0000-00-00 00:00:00', '2023-10-15 11:48:46', '', 0, 10),
(63, 'Roja Apex Parfum | 5ml – 10ml – 50ml', 9400000, 1000000, 's61.jpg', '0000-00-00 00:00:00', '2023-10-15 11:49:52', '', 0, 11),
(64, 'Roja Apex Eau de Parfum | 5ml – 10ml – 100ml', 7000000, 460000, 's62.jpg', '0000-00-00 00:00:00', '2023-10-15 11:50:15', '', 0, 11),
(65, 'Roja Isola Blu Parfum | 5ml – 10ml – 50ml', 9600000, 1050000, 's63.jpg', '0000-00-00 00:00:00', '2023-10-15 11:50:47', '', 0, 11),
(66, 'Roja Elysium Parfum Pour Homme | 5ml – 10ml – 50ml', 8600000, 950000, 's64.jpg', '0000-00-00 00:00:00', '2023-10-15 11:51:04', '', 0, 11),
(67, 'Roja Elysium Eau Intense | 5ml – 10ml – 100ml', 8350000, 530000, 's65.jpg', '0000-00-00 00:00:00', '2023-10-15 11:51:29', '', 0, 11),
(68, 'Roja Musk Aoud Crystal Parfum | 5ml – 10ml – 100ml', 14000000, 850000, 's66.jpg', '0000-00-00 00:00:00', '2023-10-15 11:51:47', '', 0, 11),
(69, 'Maison Francis Kurkdjian Oud Silk Mood Extrait de ', 6800000, 550000, 's67.jpg', '0000-00-00 00:00:00', '2023-10-15 11:52:32', '', 0, 12),
(70, 'Maison Francis Kurkdjian 724 Eau de Parfum | 5ml –', 4900000, 420000, 's68.jpg', '0000-00-00 00:00:00', '2023-10-15 11:52:55', '', 0, 12),
(71, 'Maison Francis Kurkdjian À La Rose Eau de Parfum |', 4900000, 760000, 's69.jpg', '0000-00-00 00:00:00', '2023-10-15 11:53:13', '', 0, 12),
(72, 'Louis Vuitton Nouveau Monde | 5ml – 10ml – 100ml', 8200000, 520000, 's70.jpg', '0000-00-00 00:00:00', '2023-10-15 11:53:28', '', 0, 12),
(73, 'Louis Vuitton L’Immensité | 5ml – 10ml – 100ml', 8200000, 520000, 's71.jpg', '0000-00-00 00:00:00', '2023-10-15 11:54:01', '', 0, 12),
(74, 'Louis Vuitton Orage | 5ml – 10ml – 100ml', 8200000, 520000, 's72.jpg', '0000-00-00 00:00:00', '2023-10-15 11:54:21', '', 0, 12),
(75, 'Sữa rửa mặt Apestomen Volcanic Clay Foam Cleanser ', 380000, 330000, 's73.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 13),
(76, 'Sữa rửa mặt Bulldog End Of Day Recovery Cleansing ', 430000, 410000, 's74.jpg', '0000-00-00 00:00:00', '2023-10-15 12:13:32', '', 0, 13),
(77, 'Sữa rửa mặt Bulldog Anytime Daily Cleansing Face C', 430000, 410000, 's75.jpg', '0000-00-00 00:00:00', '2023-10-15 12:13:46', '', 0, 13),
(78, 'Sữa rửa mặt Lab Series Daily Rescue Gel Cleanser 1', 850000, 820000, 's76.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 13),
(79, 'Sữa rửa mặt Lab Series All In One Multi Action Fac', 850000, 820000, 's77.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 13),
(80, 'Sữa rửa mặt Pacinos Beard & Face Scrub Cleanser 11', 480000, 450000, 's78.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 13),
(81, 'Tẩy tế bào chết 18.21 Man Made Octane 200 Scrub', 630000, 580000, 's79.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(82, 'Sữa rửa mặt Pacinos Beard & Face Scrub Cleanser 11', 480000, 450000, 's80.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(83, 'Tẩy tế bào chết Patricks FS1 | Crushed Diamond Fac', 2300000, 2150000, 's81.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(84, 'Tẩy tế bào chết Naruko Tea Tree Shine Control & Bl', 279000, 250000, 's82.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(85, 'Tẩy tế bào chết Bulldog Sensitive Face Scrub – 125', 300000, 285000, 's83.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(86, 'Tẩy tế bào chết Bulldog Original Face Scrub – 125m', 300000, 285000, 's84.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 14),
(87, 'Dưỡng ẩm da mặt Bulldog End Of Day Recovery Cream ', 530000, 490000, 's85.jpg', '0000-00-00 00:00:00', '2023-10-15 12:14:00', '', 0, 15),
(88, 'Dưỡng ẩm da mặt Bulldog End Of Day Recovery Serum ', 550000, 520000, 's86.jpg', '0000-00-00 00:00:00', '2023-10-15 12:14:11', '', 0, 15),
(89, 'Dưỡng ẩm da mặt Bulldog Anytime Daily Moisturising', 540000, 510000, 's87.jpg', '0000-00-00 00:00:00', '2023-10-15 12:14:38', '', 0, 15),
(90, 'Kem dưỡng ẩm Lab Series All In One Face Treatment ', 1000000, 990000, 's88.jpg', '0000-00-00 00:00:00', '2023-10-15 12:14:57', '', 0, 15),
(91, 'Kem dưỡng ẩm Patricks SL1 | Superleggera Moisturiz', 2600000, 2550000, 's89.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 15),
(92, 'Kem dưỡng ẩm Patricks AM1 | Anti-Aging Moisturizer', 3350000, 3100000, 's90.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 15),
(93, 'Lab Series Oil Control Clearing Water Lotion – Ton', 1050000, 1030000, 's91.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16),
(94, 'Toner cân bằng ngăn ngừa mụn Sukin Blemish Control', 80000, 59000, 's92.png', '0000-00-00 00:00:00', '2023-10-15 12:41:08', '', 0, 16),
(95, 'Toner làm sáng da Naruko Raw Job’s Tears Brighteni', 339000, 295000, 's93.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16),
(96, 'Toner cân bằng dầu Naruko Tea Tree Naruko Shine Co', 329000, 285000, 's94.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16),
(97, 'Toner cân bằng dầu Paula’s Choice Skin Balancing P', 729000, 680000, 's95.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16),
(98, 'Toner phục hồi độ ẩm da Paula’s Choice Skin Recove', 729000, 680000, 's96.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 16),
(103, 'Sữa tắm Bath & Body Works Whiskey Reserve 295ml', 300000, 25000, 's97.png', '2023-10-14 22:52:27', '2023-10-14 22:52:27', '', 0, 1),
(104, 'Sữa tắm Bath & Body Works Manhattan Nightcap 295ml', 300000, 280000, 's98.png', '2023-10-14 22:53:46', '2023-10-14 22:53:46', '', 0, 1),
(105, 'Dầu gội xả 2 trong 1 Old Spice Swagger – 1.18L', 700000, 650000, 's99.png', '2023-10-14 22:54:41', '2023-10-14 22:54:41', '', 0, 1),
(106, 'Sữa tắm Bath & Body Works Freshwater 295ml', 300000, 280000, 's100.png', '2023-10-14 22:56:01', '2023-10-14 22:56:01', '', 0, 1),
(107, 'Sữa tắm Bath & Body Works Smoked Old Fashioned 295', 300000, 250000, 's101.png', '2023-10-14 22:56:52', '2023-10-14 22:56:52', '', 0, 1),
(108, 'Dầu gội Doers Of London Shampoo 300ml', 600000, 580000, 's102.jpg', '2023-10-15 09:33:48', '2023-10-15 09:33:48', '', 0, 1),
(109, 'Dầu gội Olaplex No.4C – 250ml', 600000, 545000, 's103.png', '2023-10-15 09:34:39', '2023-10-15 09:34:39', '', 0, 1),
(110, 'Dầu gội Pacinos Shampoo – 750ml', 580000, 550000, 's104.jpg', '2023-10-15 09:35:28', '2023-10-15 09:35:28', '', 0, 1),
(111, 'Dầu gội xả Duke Cannon 2 in 1 Hair Wash Bay Rum', 500000, 450000, 's105.png', '2023-10-15 09:36:18', '2023-10-15 09:36:18', '', 0, 1),
(112, 'Dầu gội xả 2 trong 1 Old Spice Swagger – 1.18L', 700000, 650000, 's106.png', '2023-10-15 09:49:09', '2023-10-15 09:49:09', '', 0, 2),
(113, 'Dầu xả Dauntless Conditioner – 355ml', 500000, 225000, 's107.png', '2023-10-15 09:52:28', '2023-10-15 09:52:28', '', 0, 2),
(114, 'Dầu xả Hanz de Fuko Natural Conditioner – 237ml (M', 1060000, 550000, 's108.jpg', '2023-10-15 09:53:37', '2023-10-15 09:53:37', '', 0, 2),
(115, 'Dầu xả Moroccanoil Blonde Perfecting Purple Color ', 1250000, 479000, 's109.png', '2023-10-15 09:54:33', '2023-10-15 09:54:33', '', 0, 2),
(116, 'Bộ chăm sóc tóc Davines OI Absolute Kit – chuyên s', 899000, 800000, 's110.jpg', '2023-10-15 09:59:18', '2023-10-15 09:59:18', '', 0, 2),
(117, 'Gội xả OGX Biotin & Collagen 385ml – Làm dày tóc', 600000, 450000, 's111.jpg', '2023-10-15 10:01:32', '2023-10-15 10:01:32', '', 0, 2),
(119, 'Dầu xả Davines Heart Of Glass Conditioner – Dành cho tóc tẩy nhuộm | 250ml', 580000, 530000, 's112.png', '2023-10-15 10:03:04', '2023-10-15 10:03:04', '', 0, 2),
(120, 'Dầu xả The Groomed Man Co. Man Mint Hair And Beard Conditioner', 670000, 650000, 's113.jpg', '2023-10-15 10:04:02', '2023-10-15 10:04:02', '', 0, 2),
(121, 'Dầu xả Blumaan Nourishing Conditioner – 296ml', 580000, 560000, 's114.jpg', '2023-10-15 10:05:08', '2023-10-15 10:05:08', '', 0, 2),
(122, 'Tinh chất dưỡng tóc và da đầu Orien’t Fortify Scalp Treatment', 600000, 580000, 's115.jpg', '2023-10-15 10:06:23', '2023-10-15 10:06:23', '', 0, 3),
(123, 'Dầu dưỡng tóc Hanz De Fuko Hair Oil – 50ml', 580000, 550000, 's116.jpg', '2023-10-15 10:08:32', '2023-10-15 10:08:32', '', 0, 3),
(124, 'Bộ chăm sóc tóc Davines OI Absolute Kit – chuyên sâu 3 sản phẩm', 899000, 800000, 's117.jpg', '2023-10-15 10:09:21', '2023-10-15 10:09:21', '', 0, 3),
(125, 'Xịt dưỡng trị rụng tóc 18.21 Man Made Elixir 13 – Kích thích mọc tóc', 900000, 850000, 's118.jpg', '2023-10-15 10:10:31', '2023-10-15 10:10:31', '', 0, 3),
(126, 'Xịt dưỡng tóc Patricks RD1 | Recovery and Defence Spray – 20ml', 2300000, 2150000, 's119.jpg', '2023-10-15 10:11:18', '2023-10-15 10:11:18', '', 0, 3),
(127, 'Grizzly Tonic | Limited Edition 2022', 500000, 480000, 's120.jpg', '2023-10-15 10:12:35', '2023-10-15 10:12:35', '', 0, 3),
(128, 'Dầu dưỡng Shear Revival Progress All Purpose Oil', 530000, 430000, 's121.jpg', '2023-10-15 10:13:27', '2023-10-15 10:13:27', '', 0, 3),
(129, 'Moroccanoil Treatment Light Hair Oil', 850000, 1450000, 's122.jpg', '2023-10-15 10:14:32', '2023-10-15 10:14:32', '', 0, 3),
(130, 'Cub & Co. Grooming Tonic', 530000, 480000, 's123.jpg', '2023-10-15 10:15:35', '2023-10-15 10:15:35', '', 0, 3),
(131, 'Orien’t Sea Salt Spray | 50ml – 350ml', 580000, 300000, 's124.png', '2023-10-15 10:17:59', '2023-10-15 10:17:59', '', 0, 4),
(132, 'Arcadian Texture Spray', 550000, 500000, 's125.png', '2023-10-15 10:18:44', '2023-10-15 10:18:44', '', 0, 4),
(133, 'Flagship Streamline Seaside Spray – Sea Salt Holding Spray', 650000, 590000, 's126.jpg', '2023-10-15 10:19:40', '2023-10-15 10:19:40', '', 0, 4),
(134, 'By Vilain Sidekick Zero – Limited 2022', 500000, 460000, 's127.jpg', '2023-10-15 10:20:28', '2023-10-15 10:20:28', '', 0, 4),
(135, 'Daimon Barber Texture Tonic – 100ml', 730000, 690000, 's128.jpg', '2023-10-15 10:21:09', '2023-10-15 10:21:09', '', 0, 4),
(136, 'Reuzel Clay Spray 100ml – 355ml', 239000, 380000, 's129.jpg', '2023-10-15 10:22:08', '2023-10-15 10:22:08', '', 0, 4),
(137, 'Cub & Co. Grooming Tonic', 530000, 480000, 's130.jpg', '2023-10-15 10:22:46', '2023-10-15 10:22:46', '', 0, 4),
(138, 'Morgan’s Volume Spray 100ml', 370000, 350000, 's131.jpg', '2023-10-15 10:23:21', '2023-10-15 10:23:21', '', 0, 4),
(139, 'Morgan’s Sea Salt Spray 100ml', 370000, 350000, 's132.jpg', '2023-10-15 10:24:12', '2023-10-15 10:24:12', '', 0, 4),
(140, 'The Groomed Man Co. Styling Clay', 650000, 600000, 's133.jpg', '2023-10-15 10:25:22', '2023-10-15 10:25:22', '', 0, 5),
(141, 'Templeton Tonics x Viet Nam Oasis Clay – Quý Mão Limited 2023', 580000, 550000, 's134.jpg', '2023-10-15 10:26:21', '2023-10-15 10:26:21', '', 0, 5),
(142, 'Black Kraken Clay | Limited Edition 2023', 550000, 480000, 's135.png', '2023-10-15 10:27:04', '2023-10-15 10:27:04', '', 0, 5),
(143, 'Dauntless Matte Paste – 56g', 400000, 380000, 's136.jpg', '2023-10-15 10:28:17', '2023-10-15 10:28:17', '', 0, 5),
(144, 'Dauntless Heavy Clay – 56g', 400000, 380000, 's137.png', '2023-10-15 10:29:01', '2023-10-15 10:29:01', '', 0, 5),
(145, 'By Vilain Gold Digger Limited Edition 2022 – 75ml', 500000, 480000, 's138.jpg', '2023-10-15 10:30:53', '2023-10-15 10:30:53', '', 0, 5),
(146, 'Battle Born Matte Paste', 580000, 550000, 's139.jpg', '2023-10-15 10:35:25', '2023-10-15 10:35:25', '', 0, 5),
(147, 'Hanz De Fuko Two Ton Styling Cream', 600000, 580000, 's140.jpg', '2023-10-15 10:36:21', '2023-10-15 10:36:21', '', 0, 5),
(148, 'Hanz de Fuko Quicksand – New Fullbox 2023', 550000, 250000, 's141.png', '2023-10-15 10:37:51', '2023-10-15 10:37:51', '', 0, 5),
(149, 'Dauntless Gel Pomade – 56g', 400000, 380000, 's142.png', '2023-10-15 10:39:03', '2023-10-15 10:39:03', '', 0, 6),
(150, 'Battle Born Clay Pomade', 580000, 550000, 's143.jpg', '2023-10-15 10:40:07', '2023-10-15 10:40:07', '', 0, 6),
(151, 'Battle Born Original Pomade', 580000, 550000, 's144.jpg', '2023-10-15 10:41:55', '2023-10-15 10:41:55', '', 0, 6),
(152, 'Hanz De Fuko Two Ton Pomade', 600000, 580000, 's145.jpg', '2023-10-15 10:43:40', '2023-10-15 10:43:40', '', 0, 6),
(153, 'Lockhart’s Fatte Clay – Water Based Clay', 500000, 450000, 's146.jpg', '2023-10-15 10:44:37', '2023-10-15 10:44:37', '', 0, 6),
(154, 'Bona Fide Original Hold Pomade', 449000, 419000, 's147.png', '2023-10-15 10:45:26', '2023-10-15 10:45:26', '', 0, 6),
(155, 'Bona Fide All Around Pomade', 449000, 419000, 's148.png', '2023-10-15 10:46:10', '2023-10-15 10:46:10', '', 0, 6),
(156, 'Grand Classic Texture Balm', 550000, 500000, 's149.jpg', '2023-10-15 10:46:57', '2023-10-15 10:46:57', '', 0, 6),
(157, 'Grand Classic Traditional Pomade', 550000, 500000, 's150.jpg', '2023-10-15 10:47:35', '2023-10-15 10:47:35', '', 0, 6),
(158, 'Bột tạo phồng Dauntless Texture Powder', 500000, 480000, 's151.png', '2023-10-15 10:52:17', '2023-10-15 10:52:17', '', 0, 7),
(159, 'O’douds Texture Powder – Bột tạo phồng', 580000, 530000, 's152.png', '2023-10-15 10:52:59', '2023-10-15 10:52:59', '', 0, 7),
(160, 'Bột tạo phồng Reuzel Matte Texture Powder', 420000, 315000, 's153.jpg', '2023-10-15 10:53:56', '2023-10-15 10:53:56', '', 0, 7),
(161, 'Bột tạo phồng Dapper Dan Texture Dust', 390000, 350000, 's154.png', '2023-10-15 10:55:15', '2023-10-15 10:55:15', '', 0, 7),
(162, 'Bột tạo phồng Volcanic Ash Styling Powder', 340000, 270000, 's155.png', '2023-10-15 10:55:52', '2023-10-15 10:55:52', '', 0, 7),
(163, ' Bột tạo phồng Oil Can Grooming Benchmark Styling Powder', 370000, 350000, 's156.png', '2023-10-15 10:57:50', '2023-10-15 11:04:59', '', 0, 7),
(164, 'Bột tạo phồng Forte Series Texture Powder 3g', 450000, 300000, 's157.png', '2023-10-15 11:05:58', '2023-10-15 11:05:58', '', 0, 7),
(165, 'Bột Tạo Phồng Modern Pirate Superior Styling Powder 10g', 420000, 378000, 's158.png', '2023-10-15 11:06:53', '2023-10-15 11:06:53', '', 0, 7),
(166, 'Bột Tạo Phồng O’douds Texture Powder 114g', 530000, 490000, 's159.png', '2023-10-15 11:09:55', '2023-10-15 11:09:55', '', 0, 7),
(167, 'Gôm Tigi Bed Head Hard Head – 385ml', 390000, 190000, 's160.jpg', '2023-10-15 11:12:27', '2023-10-15 11:12:27', '', 0, 8),
(168, 'Gôm Kevin Murphy Bedroom Hair – Flexible Texturising', 690000, 630000, 's161.jpg', '2023-10-15 11:13:07', '2023-10-15 11:13:07', '', 0, 8),
(169, 'Gôm Forte Series Freeze Spray – Extreme Hold', 650000, 615000, 's162.jpg', '2023-10-15 11:13:50', '2023-10-15 11:13:50', '', 0, 8),
(170, 'Gôm Forte Series Texture Hair Spray – Flexible Hold', 620000, 520000, 's163.jpg', '2023-10-15 11:14:32', '2023-10-15 11:14:32', '', 0, 8),
(171, 'Gôm Davines Extra Strong Hairspray', 470000, 450000, 's164.jpg', '2023-10-15 11:15:37', '2023-10-15 11:15:37', '', 0, 8),
(172, 'Gôm Suavecito Hair Spray', 440000, 350000, 's165.jpg', '2023-10-15 11:16:18', '2023-10-15 11:16:18', '', 0, 8),
(173, 'Gôm Moroccanoil Luminous HairSpray – Extra Strong Hold', 545000, 490000, 's166.png', '2023-10-15 11:17:00', '2023-10-15 11:17:00', '', 0, 7),
(174, 'Gôm 2VEE', 255000, 235000, 's167.png', '2023-10-15 11:17:41', '2023-10-15 11:17:41', '', 0, 8),
(175, 'Kevin Murphy Body Builder', 690000, 660000, 's168.png', '2023-10-15 11:18:24', '2023-10-15 11:18:24', '', 0, 8),
(176, 'Gôm 18.21 Man Made Premium Hair Spray', 620000, 600000, 's169.jpg', '2023-10-15 11:19:34', '2023-10-15 11:19:34', '', 0, 8),
(177, 'Hanz de Fuko Style Lock Hair Spray', 650000, 600000, 's170.jpg', '2023-10-15 11:20:12', '2023-10-15 11:20:12', '', 0, 8),
(178, 'Kevin Murphy Session Spray', 750000, 650000, 's171.jpg', '2023-10-15 11:20:47', '2023-10-15 11:20:47', '', 0, 8),
(179, 'Yves Saint Laurent La Nuit de L’Homme Eau de Parfum | 10ml – 100ml', 3050000, 3000000, 's172.jpg', '2023-10-15 11:22:00', '2023-10-15 11:22:00', '', 0, 9),
(180, 'Armaf Club de Untold Eau de Parfum | 10ml – 105ml', 1200000, 1130000, 's173.jpg', '2023-10-15 11:22:54', '2023-10-15 11:22:54', '', 0, 9),
(181, 'Nasomatto Sadonaso | 5ml – 10ml – 30ml', 3650000, 3630000, 's174.jpg', '2023-10-15 11:23:45', '2023-10-15 11:23:45', '', 0, 9),
(182, 'Casamorati Fiero by Xerjoff | 5ml – 10ml – 100ml', 5300000, 5260000, 's175.jpg', '2023-10-15 11:24:33', '2023-10-15 11:24:33', '', 0, 9),
(183, 'Parfums de Marly Kalan | 5ml – 10ml – 125ml', 5000000, 4900000, 's176.jpg', '2023-10-15 11:25:19', '2023-10-15 11:25:19', '', 0, 9),
(184, 'Parfums de Marly Herod | 5ml – 10ml – 125ml', 5000000, 4990000, 's177.jpg', '2023-10-15 11:26:03', '2023-10-15 11:26:03', '', 0, 9),
(185, 'Louis Vuitton Les Sables Roses | 5ml – 10ml – 100ml', 10200000, 10000000, 's178.jpg', '2023-10-15 11:26:49', '2023-10-15 11:26:49', '', 0, 9),
(186, 'Louis Vuitton Nuit de Feu | 5ml – 10ml – 100ml', 10200000, 9990000, 's179.jpg', '2023-10-15 11:27:37', '2023-10-15 11:27:37', '', 0, 9),
(187, 'Louis Vuitton Fleur du Désert | 5ml – 10ml – 100ml', 10200000, 10100000, 's180.jpg', '2023-10-15 11:29:08', '2023-10-15 11:29:08', '', 0, 9),
(188, 'Armaf Club de Untold Eau de Parfum | 10ml – 105ml', 1200000, 1000000, 's181.jpg', '2023-10-15 11:30:19', '2023-10-15 11:30:19', '', 0, 10),
(189, 'Louis Vuitton Fleur du Désert | 5ml – 10ml – 100ml', 10200000, 10000000, 's182.jpg', '2023-10-15 11:31:56', '2023-10-15 11:31:56', '', 0, 10),
(190, 'Louis Vuitton City of Stars | 5ml – 10ml – 100ml', 8200000, 7500000, 's183.jpg', '2023-10-15 11:32:45', '2023-10-15 11:32:45', '', 0, 10),
(191, 'Orto Parisi Terroni | 5ml – 10ml – 50ml', 4500000, 550000, 's184.jpg', '2023-10-15 11:33:29', '2023-10-15 11:33:29', '', 0, 10),
(192, 'Orto Parisi Megamare | 5ml – 10ml – 50ml', 4900000, 620000, 's185.jpg', '2023-10-15 11:34:30', '2023-10-15 11:34:30', '', 0, 10),
(193, 'Jo Malone Peony & Blush Suede | 10ml – 100ml', 3050000, 410000, 's186.jpg', '2023-10-15 11:35:06', '2023-10-15 11:35:06', '', 0, 10),
(194, 'Jo Malone Basil & Neroli Cologne | 10ml – 100ml', 3050000, 410000, 's187.jpg', '2023-10-15 11:36:34', '2023-10-15 11:36:34', '', 0, 10),
(195, 'Kologne Shield Of Protection by Kilian | 10ml – 50ml', 5800000, 800000, 's188.png', '2023-10-15 11:37:43', '2023-10-15 11:37:43', '', 0, 10),
(196, 'Jo Malone Orange Blossom | 10ml – 100ml', 3050000, 410000, 's189.jpg', '2023-10-15 11:38:24', '2023-10-15 11:38:24', '', 0, 10),
(197, 'Roja A Midsummer Dream | 5ml – 10ml – 100ml', 8300000, 580000, 's190.jpg', '2023-10-15 11:55:58', '2023-10-15 11:55:58', '', 0, 11),
(198, 'Roja Aoud Crystal Parfum | 5ml – 10ml – 100ml', 14500000, 900000, 's191.jpg', '2023-10-15 11:56:49', '2023-10-15 11:56:49', '', 0, 11),
(199, 'Roja Oceania Eau de Parfum | 5ml – 10ml – 100ml', 10300000, 680000, 's192.jpg', '2023-10-15 11:57:24', '2023-10-15 11:57:24', '', 0, 11),
(200, 'Roja Manhattan Eau de Parfum | 5ml – 10ml – 100ml', 10500000, 700000, 's193.jpg', '2023-10-15 11:58:12', '2023-10-15 11:58:12', '', 0, 11),
(201, 'Roja Burlington 1819 | 5ml – 10ml – 100ml', 10300000, 680000, 's194.jpg', '2023-10-15 11:59:04', '2023-10-15 11:59:04', '', 0, 11),
(202, 'Roja Danger Pour Homme | 10ml – 100ml', 5800000, 700000, 's195.jpg', '2023-10-15 11:59:57', '2023-10-15 11:59:57', '', 0, 11),
(203, 'Roja Scandal Pour Homme | 10ml – 100ml', 5800000, 700000, 's196.jpg', '2023-10-15 12:00:34', '2023-10-15 12:00:34', '', 0, 11),
(204, 'Roja Enigma Pour Homme | 10ml – 100ml', 6500000, 770000, 's197.jpg', '2023-10-15 12:01:21', '2023-10-15 12:01:21', '', 0, 11),
(205, 'Roja Elixir Pour Femme | 10ml – 100ml', 6500000, 750000, 's198.jpg', '2023-10-15 12:01:59', '2023-10-15 12:01:59', '', 0, 11),
(206, 'Louis Vuitton Météore | 5ml – 10ml – 100ml', 8200000, 550000, 's199.jpg', '2023-10-15 12:04:19', '2023-10-15 12:04:19', '', 0, 12),
(207, 'Versace Eros Eau de Parfum | 10ml – 100ml', 1990000, 300000, 's200.png', '2023-10-15 12:05:02', '2023-10-15 12:05:02', '', 0, 12),
(208, 'Versace Eros Parfum | 10ml – 100ml', 2240000, 320000, 's201.png', '2023-10-15 12:05:49', '2023-10-15 12:05:49', '', 0, 12),
(209, 'Versace Versus Blue Jeans For Men EDT | 10ml – 75ml', 1200000, 160000, 's202.png', '2023-10-15 12:06:31', '2023-10-15 12:06:31', '', 0, 12),
(210, 'Louis Vuitton On The Beach | 5ml – 10ml – 100ml', 8200000, 530000, 's203.jpg', '2023-10-15 12:07:25', '2023-10-15 12:07:25', '', 0, 12),
(211, 'Chrome Pure by Azzaro | 10ml – 100ml', 1550000, 200000, 's204.jpg', '2023-10-15 12:08:13', '2023-10-15 12:08:13', '', 0, 12),
(212, 'Chrome Legend by Azzaro | 10ml – 125ml', 1250000, 180000, 's205.jpg', '2023-10-15 12:08:58', '2023-10-15 12:08:58', '', 0, 12),
(213, 'Visit by Azzaro | 10ml – 100ml', 1250000, 190000, 's206.jpg', '2023-10-15 12:09:43', '2023-10-15 12:09:43', '', 0, 12),
(214, 'Chrome Sport by Azzaro | 10ml – 100ml', 1250000, 190000, 's207.jpg', '2023-10-15 12:10:20', '2023-10-15 12:10:54', '', 0, 12),
(215, 'Sữa rửa mặt CeraVe Hydrating Cleanser – Dành cho da thường và khô | 473ml – 236ml', 500000, 320000, 's208.png', '2023-10-15 12:16:07', '2023-10-15 12:16:07', '', 0, 13),
(216, 'Sữa rửa mặt CeraVe Foaming Facial Cleanser – Dành cho da thường và dầu | 473ml', 600000, 500000, 's209.png', '2023-10-15 12:16:42', '2023-10-15 12:16:42', '', 0, 13),
(217, 'Sữa rửa mặt Hanz de Fuko Gentle Face Wash – 237ml', 720000, 650000, 's210.jpg', '2023-10-15 12:17:19', '2023-10-15 12:17:19', '', 0, 13),
(218, 'Sữa rửa mặt Naruko Ý dĩ nhân đỏ mới Raw Job’s Tears Brightening Foaming Wash – 120ml', 250000, 220000, 's211.png', '2023-10-15 12:18:02', '2023-10-15 12:18:02', '', 0, 13),
(219, 'Sữa rửa mặt Patricks FW1 | Anti-Aging Face Wash – 100ml', 1950000, 1900000, 's212.jpg', '2023-10-15 12:18:56', '2023-10-15 12:18:56', '', 0, 13),
(220, 'Sữa rửa mặt Paula’s Choice Clear Pore Normalizing Cleanser – Da mụn và thu nhỏ lỗ chân lông', 579000, 530000, 's213.jpg', '2023-10-15 12:19:36', '2023-10-15 12:19:36', '', 0, 13),
(221, 'Sữa rửa mặt Bulldog Sensitive Face Wash – 150ml (Dành cho da nhạy cảm)', 320000, 280000, 's214.png', '2023-10-15 12:20:14', '2023-10-15 12:20:14', '', 0, 13),
(222, 'Sữa rửa mặt Paula’s Choice Skin Balancing Oil-Reducing Cleanser – Cân bằng dầu và độ ẩm', 699000, 650000, 's215.jpg', '2023-10-15 12:20:45', '2023-10-15 12:20:45', '', 0, 13),
(223, 'Sữa rửa mặt Paula’s Choice Skin Recovery Softening Cream Cleanser – Phục hồi và làm mềm da', 699000, 650000, 's216.jpg', '2023-10-15 12:21:19', '2023-10-15 12:21:19', '', 0, 13),
(224, 'Tẩy tế bào chết Duke Cannon Quick Buff Siberian Mint Face Scrub – 180ml', 450000, 420000, 's217.png', '2023-10-15 12:23:17', '2023-10-15 12:23:17', '', 0, 14),
(225, 'Tẩy tế bào chết Paula’s Choice Skin Perfecting 2% BHA Liquid Exfoliant', 949000, 399000, 's218.jpg', '2023-10-15 12:24:14', '2023-10-15 12:24:14', '', 0, 14),
(226, 'Tẩy tế bào chết Paula’s Choice Resist Daily Smoothing Treatment 5% AHA – 50ml', 949000, 900000, 's219.jpg', '2023-10-15 12:25:06', '2023-10-15 12:25:06', '', 0, 14),
(227, 'Bộ combo chăm sóc da mặt Apricus Skincare (3 món)', 1870000, 1650000, 's220.jpg', '2023-10-15 12:26:06', '2023-10-15 12:26:06', '', 0, 14),
(228, 'Kem tẩy tế bào chết Apricus Exfoliating Scrub – 26ml', 500000, 450000, 's221.jpg', '2023-10-15 12:26:59', '2023-10-15 12:26:59', '', 0, 14),
(229, 'Tẩy tế bào chết Bulldog Energising Face Scrub (Dành cho da khô)', 300000, 285000, 's222.png', '2023-10-15 12:27:44', '2023-10-15 12:27:44', '', 0, 14),
(230, 'Tẩy tế bào chết The Groomed Man Co. Face Magnet Scrub', 760000, 720000, 's223.jpg', '2023-10-15 12:28:14', '2023-10-15 12:28:14', '', 0, 14),
(231, 'Kem Tẩy tế bào chết Morgan’s Exfoliating Face Scrub 100ml', 450000, 425000, 's224.jpg', '2023-10-15 12:29:07', '2023-10-15 12:29:07', '', 0, 14),
(232, 'Kem tẩy tế bào chết Lumin Reload Exfoliating Rub', 450000, 410000, 's225.png', '2023-10-15 12:29:47', '2023-10-15 12:29:47', '', 0, 14),
(233, 'Tẩy tế bào chết Bulldog Oil Control Face Scrub (Dành cho da dầu)', 300000, 285000, 's226.jpg', '2023-10-15 12:30:22', '2023-10-15 12:30:22', '', 0, 14),
(234, 'Kem tẩy tế bào chết Sukin For Men Facial Scrub – 125ml', 365000, 289000, 's227.jpg', '2023-10-15 12:31:02', '2023-10-15 12:31:02', '', 0, 14),
(235, 'Kem dưỡng ẩm da mặt Bulldog Sensitive Moisturiser – 100ml (Dành cho da nhạy cảm)', 380000, 349000, 's228.png', '2023-10-15 12:32:50', '2023-10-15 12:32:50', '', 0, 15),
(236, 'Kem Dưỡng Ẩm Ngừa Mụn Sukin Blemish Control Oil Free Moisturiser – 50ml', 159000, 89000, 's229.jpg', '2023-10-15 12:33:30', '2023-10-15 12:33:30', '', 0, 15),
(237, 'Kem dưỡng ẩm da mặt Bulldog Energizing Moisturiser – 100ml (dành cho da khô)', 380000, 349000, 's230.png', '2023-10-15 12:34:08', '2023-10-15 12:34:08', '', 0, 15),
(238, 'Kem dưỡng ẩm Apricus Skincare Moisturizer – 90ml', 740000, 690000, 's231.jpg', '2023-10-15 12:34:56', '2023-10-15 12:34:56', '', 0, 15),
(239, 'Kem dưỡng ẩm da mặt Salt & Stone Squalane Facial Cream', 1200000, 750000, 's232.jpg', '2023-10-15 12:35:34', '2023-10-15 12:35:34', '', 0, 15),
(240, 'Dầu dưỡng da mặt Salt & Stone Antioxidant Facial Oil', 1050000, 650000, 's233.jpg', '2023-10-15 12:36:22', '2023-10-15 12:36:22', '', 0, 15),
(241, 'Kem dưỡng ẩm da mặt Salt & Stone Hydrating Facial Lotion', 1050000, 650000, 's234.jpg', '2023-10-15 12:37:18', '2023-10-15 12:37:18', '', 0, 15),
(242, 'Kem dưỡng ẩm da mặt The Groomed Man Co. Smooth Operator Face Moisturiser', 880000, 810000, 's235.jpg', '2023-10-15 12:38:11', '2023-10-15 12:38:11', '', 0, 15),
(243, 'Kem dưỡng ẩm da mặt Sukin For Men Facial Moisturiser – 225ml', 365000, 255000, 's236.jpg', '2023-10-15 12:38:48', '2023-10-15 12:38:48', '', 0, 15),
(244, 'Toner cân bằng da Paula’s Choice Earth Sourced Purely Natural Refreshing – Tinh khiết thiên nhiên', 749000, 700000, 's237.jpg', '2023-10-15 12:42:01', '2023-10-15 12:42:01', '', 0, 16),
(245, 'Toner cân bằng da Sukin Rose Hydrating Mist (hương hoa hồng) – 125ml', 280000, 199000, 's238.jpg', '2023-10-15 12:42:42', '2023-10-15 12:42:42', '', 0, 16),
(246, 'Toner cân bằng da Sukin Green Tea Hydrating Mist (hương trà xanh)- 125ml', 280000, 199000, 's239.jpg', '2023-10-15 12:43:55', '2023-10-15 12:43:55', '', 0, 16),
(247, 'Toner cân bằng da Lumin Skin-Purifying', 610000, 590000, 's240.png', '2023-10-15 12:44:40', '2023-10-15 12:44:40', '', 0, 16),
(248, 'Xịt khoáng La Roche Posay Eau Thermale làm dịu và bảo vệ da – 300ml', 430000, 385000, 's241.png', '2023-10-15 12:45:38', '2023-10-15 12:45:38', '', 0, 16),
(249, 'Xịt khoáng Bioderma Hydrabio Brume 300ml', 250000, 215000, 's242.jpg', '2023-10-15 12:46:15', '2023-10-15 12:46:15', '', 0, 16),
(250, 'Xịt dưỡng ẩm da mặt Lumin Touchless Hydration Face Mist', 370000, 290000, 's243.png', '2023-10-15 12:46:57', '2023-10-15 12:46:57', '', 0, 16),
(251, 'Tinh chất làm sáng da và thu nhỏ lỗ chân lông Paula’s Choice 10% Niacinamide Booster – 20ml', 1790000, 1720000, 's244.jpg', '2023-10-15 12:47:44', '2023-10-15 12:47:44', '', 0, 16),
(252, 'Tinh chất trị thâm mụn Naruko Tea Tree Post Blemish Corrector tràm trà – 10ml', 295000, 250000, 's245.png', '2023-10-15 12:48:21', '2023-10-15 12:48:21', '', 0, 16),
(253, 'Tinh dầu chấm mụn Naruko Tea Tree Purifying Essential Oil tràm trà – 10ml', 289000, 265000, 's246.png', '2023-10-15 12:49:11', '2023-10-15 12:49:11', '', 0, 16),
(254, 'Tinh chất phục hồi và làm săn chắc da Paula’s Choice Peptide Booster – 20ml', 1599000, 1520000, 's247.jpg', '2023-10-15 12:50:10', '2023-10-15 12:50:10', '', 0, 16);

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
  `SDT` varchar(15) NOT NULL,
  `role` int(11) NOT NULL COMMENT '0 là admin 1 là user',
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `deleted` int(11) NOT NULL COMMENT '0 là tồn tại 1 là đã xóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `usr`
--

INSERT INTO `usr` (`username`, `pass`, `name`, `img`, `email`, `SDT`, `role`, `create_at`, `update_at`, `deleted`) VALUES
('dodo', '$2y$10$K.n738b0mAw2zb8CUL4W9uPI3Z873Baw8/nWNiQrsStMZCggun9s6', 'Hồ Vĩnh Thành Đô', 'dodo-bac.jpg', 'chodenmot@gmail.com', '0985618648', 0, '0000-00-00 00:00:00', '2023-10-11 19:22:02', 1),
('dodo2', '$2y$10$of/TnCatgsXafQ9adAEKG.kjN/YBlcl5BHjPGZmXdssy.ovkJ4VPy', 'a nhon xe o', 'dodo2-abc.jpg', 'chodenmot@gmail.com', '0', 1, '0000-00-00 00:00:00', '2023-10-11 19:14:29', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

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
