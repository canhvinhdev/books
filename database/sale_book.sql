-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2018 at 09:13 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sale_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `description`, `created_at`, `updated_at`, `parent_id`, `status`) VALUES
(9, 2, 'Sách kinh tế', 'Mô tả về các loại sách kinh tế', '2018-06-17 08:59:54', '2018-06-17 08:59:54', 0, 1),
(10, 2, 'Sách giáo dục', 'Mô tả về các loại sách giáo dục', '2018-06-17 09:00:19', '2018-06-17 09:00:19', 0, 1),
(11, 2, 'Sách văn hóa xã hội', 'Mô tả về các loại sách văn hóa xã hội', '2018-06-17 09:00:49', '2018-06-17 09:00:49', 0, 1),
(12, 2, 'Sách tiếng Anh', 'Mô tả về Sách tiếng Anh', '2018-06-17 09:02:08', '2018-06-17 09:02:08', 0, 1),
(13, 2, 'Sách lịch sử', 'Mô tả về Sách lịch sử', '2018-06-17 09:53:24', '2018-06-17 09:53:24', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `sub_id`, `user_id`, `product_id`, `content`, `status`, `created_at`, `updated_at`) VALUES
(9, 0, 2, 17, 'daa', 2, '2018-06-17 13:00:08', '2018-06-17 13:00:08'),
(10, 0, 2, 15, 'assss', 2, '2018-06-17 13:00:43', '2018-06-17 13:00:43'),
(11, 10, 2, 15, 'aaaa', 1, '2018-06-17 13:04:50', '2018-06-17 13:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_details_id` int(11) NOT NULL,
  `price_all` int(11) NOT NULL,
  `method` tinyint(2) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `code`, `order_details_id`, `price_all`, `method`, `status`, `created_at`, `updated_at`) VALUES
(7, 6, '0000002', 4, 300000, 0, 0, '2018-06-17 17:01:11', '2018-06-17 17:01:11'),
(8, 7, '0000003', 7, 320000, 0, 0, '2018-06-17 23:55:06', '2018-06-17 23:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(3, 15, 1, 300000, '2018-06-17 16:50:49', '2018-06-17 16:50:49'),
(4, 15, 1, 300000, '2018-06-17 17:01:11', '2018-06-17 17:01:11'),
(5, 17, 1, 320000, '2018-06-17 23:50:16', '2018-06-17 23:50:16'),
(6, 17, 1, 320000, '2018-06-17 23:54:28', '2018-06-17 23:54:28'),
(7, 17, 1, 320000, '2018-06-17 23:55:06', '2018-06-17 23:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `user_id`, `name`, `description`, `content`, `image`, `price`, `created_at`, `updated_at`, `status`) VALUES
(14, 9, 2, 'COMBO TƯ BẢN THÂN HỮU TRUNG QUỐC & BUỔI ĐẦU QUAN HỆ MỸ-VIỆT 1787-1941', '<p style=\"text-align: justify;\">Thế giới đang đứng trước một cơ hội lớn c&oacute; thể gọi l&agrave; cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư. Đ&acirc;y kh&ocirc;ng chỉ đơn thuần l&agrave; sự đổi mới về mặt kỹ thuật, m&agrave; l&agrave; sự thay đổi lớn về c&ocirc;ng nghệ ở mức độ c&oacute; thể tạo ra một cuộc c&aacute;ch mạng thay đổi cơ bản cấu tr&uacute;c của x&atilde; hội hiện tại. Một trong những đại diện của n&oacute; l&agrave; cuộc c&aacute;ch mạng trong nền c&ocirc;ng nghiệp T&agrave;i ch&iacute;nh &ndash; FinTech. C&oacute; thể coi những c&ocirc;ng ty FinTech đang đảm nhận vai tr&ograve; n&agrave;y l&agrave; những &ldquo;c&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n xử l&yacute; dữ liệu lớn li&ecirc;n quan đến tiền.&rdquo;</p>', '<table cellspacing=\"0\" class=\"table table-bordered table-detail table-striped\" id=\"product-attribute-specs-table\" style=\"background-attachment:initial; background-clip:initial; background-image:initial; background-origin:initial; background-position:0px 0px; background-repeat:initial; background-size:initial; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(221, 221, 221); box-sizing:border-box; font-family:arial,sans-serif; margin:20px 0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:1170px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">C&ocirc;ng ty ph&aacute;t h&agrave;nh</td>\r\n			<td style=\"vertical-align:top\">Nh&agrave; S&aacute;ch Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Nh&agrave; xuất bản</td>\r\n			<td style=\"vertical-align:top\"><a href=\"http://nhasachphuongnam.com/search/dp/nxb-cong-thuong/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">NXB C&ocirc;ng Thương</a>,&nbsp;<a href=\"http://nhasachphuongnam.com/search/dp/thai-ha-books/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">Th&aacute;i H&agrave; Books</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Trọng lượng vận chuyển</td>\r\n			<td style=\"vertical-align:top\">350&nbsp;gr</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">K&iacute;ch thước</td>\r\n			<td style=\"vertical-align:top\">15.5 x 24cm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Số trang</td>\r\n			<td style=\"vertical-align:top\">234.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Ng&agrave;y xuất bản</td>\r\n			<td style=\"vertical-align:top\">th&aacute;ng 06/2018.&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">SKU</td>\r\n			<td style=\"vertical-align:top\">103532</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Loại b&igrave;a</td>\r\n			<td style=\"vertical-align:top\">B&igrave;a mềm.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '/uploads/files/tu-ban-than-huu-trung-quoc_450x652_w_b.jpg', '120000', '2018-06-17 09:06:26', '2018-06-17 09:06:26', 1),
(15, 9, 2, 'LỰA CHỌN THÔNG MINH TRONG KINH DOANH', '<p style=\"text-align: justify;\">Khi gặp phải những t&igrave;nh huống kh&ocirc;ng mong muốn trong c&ocirc;ng việc, ch&uacute;ng ta thường phải đứng trước c&aacute;c lựa chọn kh&oacute; khăn. Liệu quyết định của ta c&oacute; thật sự ch&iacute;nh x&aacute;c? Liệu ta c&oacute; thể đ&aacute;nh đổi c&aacute;c gi&aacute; trị m&igrave;nh đang c&oacute; để thực hiện quyết định n&agrave;y?... Những băn khoăn v&agrave; &aacute;p lực khi đứng trước c&aacute;c lựa chọn khiến ch&uacute;ng ta kh&oacute; l&ograve;ng thỏa m&atilde;n 100% v&agrave; lu&ocirc;n cảm thấy &ldquo;thiếu một c&aacute;i g&igrave; đ&oacute;&rdquo;. Nhưng tại sao phải m&atilde;i lưỡng lự, đắn đo để t&igrave;m kiếm một phương &aacute;n đỡ-tệ-nhất, trong khi ta c&oacute; thể tự tạo ra một c&aacute;ch giải quyết mới v&agrave; vượt trội?</p>', '<p>Ch&igrave;a kh&oacute;a cho vấn đề n&agrave;y l&agrave; phương ph&aacute;p tư duy t&iacute;ch hợp (integrative thinking), một c&aacute;ch ho&agrave;n to&agrave;n mới trong tư duy tạo lựa chọn được nghi&ecirc;n cứu, ph&acirc;n t&iacute;ch v&agrave; ph&aacute;t triển bởi nh&agrave; tư tưởng, chiến lược gia Roger Martin. Trong cuốn s&aacute;ch &ldquo;Lựa chọn th&ocirc;ng minh trong kinh doanh&rdquo;, Martin cộng t&aacute;c với gi&aacute;o sư Jennifer Riel của trường quản l&iacute; Rotman để khai th&aacute;c l&iacute; thuyết v&agrave; ứng dụng đa dạng hơn phương ph&aacute;p tư duy n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" class=\"table table-bordered table-detail table-striped\" id=\"product-attribute-specs-table\" style=\"background-attachment:initial; background-clip:initial; background-image:initial; background-origin:initial; background-position:0px 0px; background-repeat:initial; background-size:initial; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(221, 221, 221); box-sizing:border-box; font-family:arial,sans-serif; margin:20px 0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:1170px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">C&ocirc;ng ty ph&aacute;t h&agrave;nh</td>\r\n			<td style=\"vertical-align:top\">Nh&agrave; S&aacute;ch Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Nh&agrave; xuất bản</td>\r\n			<td style=\"vertical-align:top\"><a href=\"http://nhasachphuongnam.com/search/dp/nxb-dh-kinh-te-quoc-dan/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">NXB ĐH Kinh Tế Quốc D&acirc;n</a>,&nbsp;<a href=\"http://nhasachphuongnam.com/search/dp/1980-books/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">1980 Books</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Trọng lượng vận chuyển</td>\r\n			<td style=\"vertical-align:top\">460&nbsp;gr</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">K&iacute;ch thước</td>\r\n			<td style=\"vertical-align:top\">13.5 x 20.5cm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Số trang</td>\r\n			<td style=\"vertical-align:top\">404.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Ng&agrave;y xuất bản</td>\r\n			<td style=\"vertical-align:top\">th&aacute;ng 06/2018.&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">SKU</td>\r\n			<td style=\"vertical-align:top\">103541</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Loại b&igrave;a</td>\r\n			<td style=\"vertical-align:top\">B&igrave;a mềm.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '/uploads/images/tu-duy.jpg', '300000', '2018-06-17 09:11:33', '2018-06-17 09:11:33', 1),
(16, 9, 2, 'FINTECH 4.0 - NHỮNG ĐIỂN HÌNH THÀNH CÔNG TRONG CUỘC CÁCH MẠNG CÔNG NGHỆ TÀI CHÍNH', '<p style=\"text-align: justify;\">Thế giới đang đứng trước một cơ hội lớn c&oacute; thể gọi l&agrave; cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư. Đ&acirc;y kh&ocirc;ng chỉ đơn thuần l&agrave; sự đổi mới về mặt kỹ thuật, m&agrave; l&agrave; sự thay đổi lớn về c&ocirc;ng nghệ ở mức độ c&oacute; thể tạo ra một cuộc c&aacute;ch mạng thay đổi cơ bản cấu tr&uacute;c của x&atilde; hội hiện tại. Một trong những đại diện của n&oacute; l&agrave; cuộc c&aacute;ch mạng trong nền c&ocirc;ng nghiệp T&agrave;i ch&iacute;nh &ndash; FinTech. C&oacute; thể coi những c&ocirc;ng ty FinTech đang đảm nhận vai tr&ograve; n&agrave;y l&agrave; những &ldquo;c&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n xử l&yacute; dữ liệu lớn li&ecirc;n quan đến tiền.&rdquo;</p>', '<p style=\"text-align: justify;\">&ldquo;Fintech 4.0 &ndash; những điển h&igrave;nh th&agrave;nh c&ocirc;ng trong cuộc c&aacute;ch mạng c&ocirc;ng nghệ t&agrave;i ch&iacute;nh&rdquo; cuốn s&aacute;ch n&agrave;y được t&aacute;c giả Kitao Yoshitaka viết với mục đ&iacute;ch kh&ocirc;ng giống như s&aacute;ch nhập m&ocirc;n thường thấy của c&aacute;c học giả hay chuy&ecirc;n gia t&agrave;i ch&iacute;nh, m&agrave; t&aacute;c giả muốn n&oacute; hướng tới những nh&agrave; l&atilde;nh đạo doanh nghiệp đang ng&agrave;y đ&ecirc;m chiến đấu để tạo ra cuộc c&aacute;ch mạng FinTech (&ldquo;financial technology&rdquo;, c&oacute; nghĩa l&agrave; &ldquo;c&ocirc;ng nghệ trong t&agrave;i ch&iacute;nh).</p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" class=\"table table-bordered table-detail table-striped\" id=\"product-attribute-specs-table\" style=\"background-attachment:initial; background-clip:initial; background-image:initial; background-origin:initial; background-position:0px 0px; background-repeat:initial; background-size:initial; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(221, 221, 221); box-sizing:border-box; font-family:arial,sans-serif; margin:20px 0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:1170px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">C&ocirc;ng ty ph&aacute;t h&agrave;nh</td>\r\n			<td style=\"vertical-align:top\">Nh&agrave; S&aacute;ch Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Nh&agrave; xuất bản</td>\r\n			<td style=\"vertical-align:top\"><a href=\"http://nhasachphuongnam.com/search/dp/nxb-cong-thuong/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">NXB C&ocirc;ng Thương</a>,&nbsp;<a href=\"http://nhasachphuongnam.com/search/dp/thai-ha-books/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">Th&aacute;i H&agrave; Books</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Trọng lượng vận chuyển</td>\r\n			<td style=\"vertical-align:top\">350&nbsp;gr</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">K&iacute;ch thước</td>\r\n			<td style=\"vertical-align:top\">15.5 x 24cm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Số trang</td>\r\n			<td style=\"vertical-align:top\">234.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Ng&agrave;y xuất bản</td>\r\n			<td style=\"vertical-align:top\">th&aacute;ng 06/2018.&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">SKU</td>\r\n			<td style=\"vertical-align:top\">103532</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Loại b&igrave;a</td>\r\n			<td style=\"vertical-align:top\">B&igrave;a mềm.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '/uploads/images/fintech-4_0_450x652_w_b.jpg', '450000', '2018-06-17 09:14:12', '2018-06-17 09:14:12', 1),
(17, 9, 2, 'QUỐC GIA THĂNG TRẦM - LÝ GIẢI VẬN MỆNH CỦA CÁC NỀN KINH TẾ', '<p style=\"text-align:justify\">Bản chất ph&ugrave; du v&agrave; chật vật của sự tăng trưởng mạnh mẽ giờ đ&acirc;y đ&atilde; được nh&igrave;n thấy r&otilde;, v&agrave; n&oacute; đặt ra một c&acirc;u hỏi đơn giản. L&agrave;m thế n&agrave;o, trong một thế giới v&ocirc; thường, ta c&oacute; thể dự đo&aacute;n những quốc gia c&oacute; nhiều cơ may sẽ tăng tiến hoặc suy vong? Đ&acirc;u l&agrave; những dấu hiệu quan trọng nhất cho thấy vận mệnh của một quốc gia sắp chuyển biến, v&agrave; l&agrave;m thế n&agrave;o nh&igrave;n ra những dấu hiệu đ&oacute;? Để gi&uacute;p định hướng trong một thế giới thường t&igrave;nh &ndash; một m&ocirc;i trường dễ gặp phải sự b&ugrave;ng nổ tăng trưởng, sa s&uacute;t v&agrave; phản kh&aacute;ng &ndash;&nbsp;</p>', '<p style=\"text-align:justify\">&ldquo;Chứa đựng nguồn th&ocirc;ng tin đ&aacute;ng kinh ngạc&hellip; những hiểu biết s&acirc;u sắc c&ugrave;ng với c&aacute;c giai thoại được c&ocirc;ng bố, đ&acirc;y quả thực l&agrave; tư liệu tốt nhất đối với nền kinh tế to&agrave;n cầu hiện nay m&agrave; bất kỳ nh&agrave; đầu tư hay kẻ ngo&agrave;i cuộc n&agrave;o cũng chẳng thể ng&oacute; lơ.&rdquo; -&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" class=\"table table-bordered table-detail table-striped\" id=\"product-attribute-specs-table\" style=\"background-attachment:initial; background-clip:initial; background-image:initial; background-origin:initial; background-position:0px 0px; background-repeat:initial; background-size:initial; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(221, 221, 221); box-sizing:border-box; font-family:arial,sans-serif; margin:20px 0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:1170px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">C&ocirc;ng ty ph&aacute;t h&agrave;nh</td>\r\n			<td style=\"vertical-align:top\">Nh&agrave; S&aacute;ch Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Nh&agrave; xuất bản</td>\r\n			<td style=\"vertical-align:top\"><a href=\"http://nhasachphuongnam.com/search/dp/nxb-the-gioi/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">NXB Thế Giới</a>,&nbsp;<a href=\"http://nhasachphuongnam.com/search/dp/phuong-nam-book/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">Phương Nam Book</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Trọng lượng vận chuyển</td>\r\n			<td style=\"vertical-align:top\">680&nbsp;gr</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">K&iacute;ch thước</td>\r\n			<td style=\"vertical-align:top\">15.5 x 23.5cm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Số trang</td>\r\n			<td style=\"vertical-align:top\">506.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Ng&agrave;y xuất bản</td>\r\n			<td style=\"vertical-align:top\">th&aacute;ng 06/2018.&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">SKU</td>\r\n			<td style=\"vertical-align:top\">103468</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Loại b&igrave;a</td>\r\n			<td style=\"vertical-align:top\">B&igrave;a mềm.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '/uploads/files/s7_1_master.jpg', '320000', '2018-06-17 09:16:28', '2018-06-17 09:18:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `name`, `start_day`, `end_day`, `status`, `user_id`) VALUES
(1, 'khuyen mai thang 6', '2018-06-18 17:00:00', '2018-06-29 17:00:00', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `promotion_product`
--

CREATE TABLE `promotion_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  `number_discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotion_product`
--

INSERT INTO `promotion_product` (`id`, `product_id`, `promotion_id`, `number_discount`) VALUES
(3, 14, 1, 10),
(4, 16, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-06-17 15:54:08', '0000-00-00 00:00:00'),
(2, 'user', '2018-06-17 15:54:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `content`, `image`, `created_at`, `updated_at`, `status`) VALUES
(7, '<p>Khuyến mại th&aacute;ng 5</p>', '/uploads/images/ms_banner_img1.jpg', '2018-06-17 09:46:12', '2018-06-17 09:46:12', 1),
(8, '<p>Ch&agrave;o đ&oacute;n h&egrave; 2018</p>', '/uploads/images/ms_banner_img2.jpg', '2018-06-17 09:46:27', '2018-06-17 09:46:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `phone`, `address`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `_token`, `status`) VALUES
(2, 'admin', 1, 'admin@gmail.com', '1642155930', 'hanoi', '$2y$10$DbHDrI2uGUTr5gqiVQSk3./C207UptRkTZmX6ody4TiLngpriFzcq', 'qiK1gxsCmWAcEl8KRyVlrKRxErhKagTh4dgZpOwNjct33aUqKgFKdN7fIrhk', '2018-05-18 23:42:40', '2018-06-17 16:45:46', 'admin', NULL, 1),
(6, 'test', 2, 'user@gmail.com', '984009503', '12/15/dong da ha noi', '$2y$10$5.m8hTJ10yzPGwaPVorrbO2ZKEQ.vO3aNDVDIasZBb5obs8Ow90QC', 'G8V0iuoVx7ftFVT0w3v1cUsGqqpt8xewvI4rZ3CaBZta2Fy8Fk23L5EyD6Cx', '2018-06-17 16:58:21', '2018-06-17 17:01:11', 'test', NULL, NULL),
(7, 'Stella', 2, 'vinhpros94@gmail.com', '1-231-212-1212', 'asdasds', '$2y$10$kgnmN0KrcTQUjYka2I.CHek1Ur9VBalqvAY3qT.L5IN.4DbqHrv92', 'Wxx6InOE4aVPFp9AGFUv4uEjJrlpjUk4LP6OFnJqTUAMdlyXGn6zes9nQEbg', '2018-06-17 23:48:05', '2018-06-17 23:48:25', 'admin', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `code` (`order_details_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_product`
--
ALTER TABLE `promotion_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `promotion_id` (`promotion_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promotion_product`
--
ALTER TABLE `promotion_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`order_details_id`) REFERENCES `order_details` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `promotion_product`
--
ALTER TABLE `promotion_product`
  ADD CONSTRAINT `promotion_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `promotion_product_ibfk_2` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
