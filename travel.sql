-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2017 at 04:43 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Du lịch', 1, '2017-10-10 10:42:33', '2017-10-10 10:42:33'),
(2, 'Ẩm Thực', 1, '2017-10-10 10:43:20', '2017-10-10 10:43:20'),
(3, 'Văn Hóa', 1, '2017-10-10 10:43:36', '2017-10-10 10:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `city` (`id`, `name`, `img`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Thành Phố Hà Nội', '/uploads/files/photo-1-1507979890614.jpg', 'HÀ NỘI THỦ ĐÔ VIỆT NAM', 1, '2017-10-10 10:35:25', '2017-10-10 10:36:10'),
(3, 'Thành Phố Hồ Chí Minh', '/uploads/files/photo-1-1507979890614.jpg', 'HCM THỦ ĐÔ VIỆT NAM', 1, '2017-10-10 10:35:59', '2017-10-10 10:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `company` (`id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'ITEC', 'Cầu Giấy - Hà Nôi', 'canhvinhdev@gmail.com', '0984009503', '2017-10-10 10:42:16', '2017-10-10 10:42:16'),
(2, 'Du lịch mytour', 'Đê La Thành, Hà Nội', 'mytour.vn@gmail.com', '09855554444', '2017-10-15 02:05:57', '2017-10-15 02:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `county`
--

CREATE TABLE `county` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `county`
--

INSERT INTO `county` (`id`, `city_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Đống Đa', 1, '2017-10-10 10:40:50', '2017-10-10 10:40:50'),
(2, 2, 'Hai Bà Trưng', 1, '2017-10-10 10:41:04', '2017-10-10 10:41:04'),
(3, 2, 'Cầu giấy', 1, '2017-10-10 10:41:26', '2017-10-10 10:41:26'),
(4, 3, 'Thủ Đức', 1, '2017-10-11 04:14:04', '2017-10-11 04:14:04'),
(5, 3, 'Bình Thạnh', 1, '2017-10-11 04:14:20', '2017-10-11 04:14:50'),
(7, 2, 'Thanh Xuân', 1, '2017-10-11 09:07:23', '2017-10-11 09:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `county_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `location_x` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_y` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `location` (`id`, `county_id`, `name`, `description`, `location_x`, `location_y`, `thumbnail`, `category_id`, `user_id`, `company_id`, `content`, `status`, `updated_at`, `created_at`) VALUES
(2, 1, 'gò đống đa', '<p style=\"text-align: justify;\">G&ograve; Đống Đa l&agrave; một g&ograve; đất v&agrave; l&agrave; một di t&iacute;ch nằm b&ecirc;n đường phố T&acirc;y Sơn, phường Quang Trung, quận Đống Đa, Th&agrave;nh phố H&agrave; Nội. Tại đ&acirc;y năm 1789 qu&acirc;n T&acirc;y Sơn đ&atilde; đại ph&aacute; v&agrave; đ&aacute;nh thắng qu&acirc;n nh&agrave; Thanh Trung Quốc trong Trận Ngọc Hồi - Đống Đa[1].</p>\r\n<p style=\"text-align: justify;\">Tương truyền sau chiến thắng, vua&nbsp;<a title=\"Nguyễn Huệ\" href=\"https://vi.wikipedia.org/wiki/Nguy%E1%BB%85n_Hu%E1%BB%87\">Quang Trung</a>&nbsp;cho thu nhặt x&aacute;c giặc xếp v&agrave;o 12 c&aacute;i hố rộng, lấp đất ch&ocirc;n v&agrave; đắp cao th&agrave;nh g&ograve; gọi l&agrave; \"K&igrave;nh ngh&ecirc; qu&aacute;n\" (g&ograve; ch&ocirc;n x&aacute;c \"k&igrave;nh ngh&ecirc;\" - 2 lo&agrave;i c&aacute; dữ ngo&agrave;i biển, một c&aacute;ch gọi &aacute;m chỉ qu&acirc;n x&acirc;m lược T&agrave;u). Theo truyền thuyết, 12 g&ograve; n&agrave;y nằm rải r&aacute;c từ l&agrave;ng Thịnh Quang đến l&agrave;ng Nam Đồng, tr&ecirc;n c&aacute;c g&ograve; c&acirc;y cối mọc um t&ugrave;m n&ecirc;n c&oacute; t&ecirc;n l&agrave; Đống Đa. Năm&nbsp;<a title=\"1851\" href=\"https://vi.wikipedia.org/wiki/1851\">1851</a>, do mở đường mở chợ, đ&agrave;o xẻ nhiều nơi thấy nhiều h&agrave;i cốt, lại cho thu v&agrave;o một hố cao l&ecirc;n nối liền với n&uacute;i Xưa, th&agrave;nh g&ograve; thứ 13, tức l&agrave; g&ograve; c&ograve;n lại hiện nay. C&ograve;n 12 g&ograve; kh&aacute;c đ&atilde; bị phạt đi trong thời gian người&nbsp;<a title=\"Ph&aacute;p\" href=\"https://vi.wikipedia.org/wiki/Ph%C3%A1p\">Ph&aacute;p</a>&nbsp;mở rộng H&agrave; Nội năm&nbsp;<a title=\"1890\" href=\"https://vi.wikipedia.org/wiki/1890\">1890</a>.</p>\r\n<p style=\"text-align: justify;\">Chiến thắng Đống Đa c&ugrave;ng với Chiến thắng Ngọc Hồi - Đống Đa dưới sự chỉ huy của Quang Trung đ&atilde; ph&aacute; tan 20 vạn qu&acirc;n Thanh, giải ph&oacute;ng th&agrave;nh Thăng Long (xem b&agrave;i ch&iacute;nh:&nbsp;<strong><a title=\"Nguyễn Huệ\" href=\"https://vi.wikipedia.org/wiki/Nguy%E1%BB%85n_Hu%E1%BB%87\">Nguyễn Huệ</a></strong>).</p>\r\n<p style=\"text-align: justify;\">Nhưng tr&ecirc;n thực tế, c&oacute; nhiều chứng cứ cho rằng G&ograve; Đống Đa l&agrave; một g&ograve; tự nhi&ecirc;n được h&igrave;nh th&agrave;nh từ c&aacute;ch đ&acirc;y khoảng 4000 năm.</p>\r\n<p style=\"text-align: justify;\">Nh&acirc;n kỷ niệm 200 năm chiến thắng Ngọc Hồi-Đống Đa, năm 1989, C&ocirc;ng vi&ecirc;n Văn h&oacute;a Đống Đa được th&agrave;nh lập tr&ecirc;n cơ sở khu vực G&ograve; Đống Đa<sup id=\"cite_ref-gtvt_1-1\" class=\"reference\"><a href=\"https://vi.wikipedia.org/wiki/G%C3%B2_%C4%90%E1%BB%91ng_%C4%90a#cite_note-gtvt-1\">[1]</a></sup>. Đ&acirc;y l&agrave; c&ocirc;ng tr&igrave;nh kiến tr&uacute;c mang t&iacute;nh lịch sử văn h&oacute;a nhằm ghi nhớ c&ocirc;ng ơn của người Anh h&ugrave;ng &aacute;o vải Quang Trung - Nguyễn Huệ. Tổng diện t&iacute;ch của c&ocirc;ng tr&igrave;nh 21.745 m2 được chia l&agrave;m 2 khu vực, gồm khu vực tượng đ&agrave;i, nh&agrave; trưng b&agrave;y v&agrave; khu vực g&ograve;.</p>', '21.0110245', '105.82521020000001', '/uploads/files/2godongda.jpg', 1, 5, 1, '<p>be &gt; &gt;</p>', 1, '2017-10-15 01:59:54', '2017-10-11 08:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `content`, `thumbnail`, `description`, `user_id`, `updated_at`, `created_at`, `status`) VALUES
(1, 'Thủ tướng: Không phải có dự án du lịch, sân golf là phá hết rừng', '<p>Thủ tướng: Kh&ocirc;ng phải c&oacute; dự &aacute;n du lịch, s&acirc;n golf l&agrave; ph&aacute; hết rừng</p>', '/uploads/files/medium_ydo1507303602.jpg', '<h1 class=\"title\">Thủ tướng: Kh&ocirc;ng phải c&oacute; dự &aacute;n du lịch, s&acirc;n golf l&agrave; ph&aacute; hết rừng</h1>', 5, '2017-10-15 13:03:22', '2017-10-10 08:53:40', 1),
(2, 'Khách quốc tế đến Việt Nam trong tháng 9 giảm hơn 20% so với tháng trước', '<p style=\"text-align: justify;\">Ri&ecirc;ng trong th&aacute;ng 9/2017, lượng&nbsp;<a title=\"kh&aacute;ch quốc tế\" draggable=\"false\" href=\"http://cafef.vn/khach-quoc-te.html\" target=\"_blank\">kh&aacute;ch quốc tế</a>&nbsp;đến Việt Nam đạt 975.952 lượt, giảm 20,6% so với th&aacute;ng trước v&agrave; tăng 18,6% so với c&ugrave;ng kỳ năm 2016.</p>\r\n<p style=\"text-align: justify;\">Cũng trong 9 th&aacute;ng, lượng&nbsp;<a title=\"kh&aacute;ch du lịch\" draggable=\"false\" href=\"http://cafef.vn/khach-du-lich.html\" target=\"_blank\">kh&aacute;ch du lịch</a>&nbsp;nội địa đạt 57,9 triệu lượt (trong đ&oacute; c&oacute; 27,8 triệu lượt kh&aacute;ch lưu tr&uacute;). Tổng thu từ kh&aacute;ch du lịch ước đạt 376.000 tỷ đồng, tăng 26,5% so c&ugrave;ng kỳ năm 2016.</p>\r\n<div class=\"VCSortableInPreviewMode IMSCurrentEditorEditObject\" style=\"text-align: justify;\">\r\n<div><img id=\"img_1d310940-a291-11e7-a065-7937920d296b\" src=\"http://cafefcdn.com/thumb_w/640/2017/photo-0-1506412980349.jpg\" alt=\"\r\n. Ảnh minh họa\r\n\" data-original=\"http://cafefcdn.com/2017/photo-0-1506412980349.jpg\" /></div>\r\n<div class=\"PhotoCMS_Caption\">\r\n<p>. Ảnh minh họa</p>\r\n</div>\r\n</div>\r\n<p style=\"text-align: justify;\">Trong th&aacute;ng 9/2017, Tổng cục Du lịch đ&atilde; triển khai h&agrave;ng loạt chương tr&igrave;nh x&uacute;c tiến, ph&aacute;t động thị trường tại c&aacute;c thị trường quan trọng của du lịch Việt Nam. Trong đ&oacute;, đ&aacute;ng ch&uacute; &yacute; l&agrave; chương tr&igrave;nh ph&aacute;t động thị trường tại 4 nước Bắc &Acirc;u gồm Đan Mạch, Na Uy, Phần Lan, Thụy Điển (từ 13-22/9); tại 4 th&agrave;nh phố của Nhật Bản gồm Kanagawa, Tokyo, Sendai v&agrave; Nagoya (từ 15-23/9). Từ ng&agrave;y 25-30/9, Tổng cục Du lịch cũng sẽ tiếp tục quảng b&aacute;, giới thiệu du lịch Việt Nam tại 3 thị trường Đ&ocirc;ng Nam &Aacute; l&agrave; Indonesia, Malaysia v&agrave; Th&aacute;i Lan.</p>\r\n<p style=\"text-align: justify;\">B&ecirc;n cạnh đ&oacute;, trong th&aacute;ng n&agrave;y, du lịch Việt Nam cũng tham gia một số hội chợ quốc tế lớn như Hội chợ Du lịch quốc tế JATA tại Nhật Bản, Hội chợ du lịch quốc tế Top Resa tại Ph&aacute;p&hellip;</p>\r\n<p style=\"text-align: justify;\">Với hiệu quả từ những chương tr&igrave;nh x&uacute;c tiến, quảng b&aacute; du lịch ở c&aacute;c thị trường trọng điểm, lượng kh&aacute;ch quốc tế đến Việt Nam trong những th&aacute;ng cuối năm được kỳ vọng sẽ tiếp tục tăng trưởng mạnh, g&oacute;p phần ho&agrave;n th&agrave;nh mục ti&ecirc;u đạt 13 triệu lượt kh&aacute;ch quốc tế trong năm 2017 của ng&agrave;nh Du lịch.</p>', '/uploads/files/medium_ydo1507303602.jpg', '<h2 class=\"sapo\">Theo số liệu từ Tổng cục Thống k&ecirc;, trong 9 th&aacute;ng năm 2017, đ&atilde; c&oacute; 9.448.331 lượt kh&aacute;ch quốc tế đến Việt Nam, tăng 28,4% so với c&ugrave;ng kỳ năm 2016.</h2>', 5, '2017-10-15 13:03:33', '2017-10-15 02:02:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`) VALUES
(1, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `remember_token` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `username`, `role_id`, `address`, `phone`, `id`, `fullname`, `updated_at`, `created_at`, `remember_token`) VALUES
('admin@gmail.com', '$2y$10$n/07XaOm9kgCsgIZYQcz9OE8oKX05ZMKe9K/N5u6FvTQpN6zFpNXS', 'admin', 1, 'ha noi', '0984009503', 5, 'Nguyễn Cảnh Vinh', '2017-10-10 08:13:03', '2017-10-09 13:41:02', 'rzJ0gLcUIlKYsJxZZsv0LZ4WNXVCvHIHEDvsETVc8fnUMaJEanCu0I0A3Enl'),
('qdat@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin2', 1, 'HN', '098666666', 7, 'Tester', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `county`
--
ALTER TABLE `county`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `county_id` (`county_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `county`
--
ALTER TABLE `county`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `county`
--
ALTER TABLE `county`
  ADD CONSTRAINT `county_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`),
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `location_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `location_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
