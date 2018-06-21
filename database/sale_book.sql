-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 21, 2018 lúc 02:31 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sale_book`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`, `parent_id`, `status`) VALUES
(9, 'Sách kinh tế', 'Mô tả về các loại sách kinh tế', '2018-06-17 08:59:54', '2018-06-17 08:59:54', 0, 1),
(10, 'Sách giáo dục', 'Mô tả về các loại sách giáo dục', '2018-06-17 09:00:19', '2018-06-17 09:00:19', 0, 1),
(11, 'Sách văn hóa xã hội', 'Mô tả về các loại sách văn hóa xã hội', '2018-06-17 09:00:49', '2018-06-17 09:00:49', 0, 1),
(12, 'Sách tiếng Anh', 'Mô tả về Sách tiếng Anh', '2018-06-17 09:02:08', '2018-06-17 09:02:08', 0, 1),
(13, 'Sách lịch sử', 'Mô tả về Sách lịch sử', '2018-06-17 09:53:24', '2018-06-17 09:53:24', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
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
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `sub_id`, `user_id`, `product_id`, `content`, `status`, `created_at`, `updated_at`) VALUES
(9, 0, 2, 17, 'daa', 2, '2018-06-17 13:00:08', '2018-06-17 13:00:08'),
(10, 0, 2, 15, 'assss', 2, '2018-06-17 13:00:43', '2018-06-17 13:00:43'),
(11, 10, 2, 15, 'aaaa', 1, '2018-06-17 13:04:50', '2018-06-17 13:04:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `user_id`, `name`, `description`, `content`, `image`, `created_at`, `updated_at`, `status`) VALUES
(15, 2, 'TƯỜNG THUẬT TRỰC TIẾP HỌP BÁO RA MẮT SÁCH HỒI KÝ NS KIM CƯƠNG SỐNG CHO NGƯỜI - SỐNG CHO MÌNH', '<p style=\"text-align: justify;\"><em>V&agrave;o l&uacute;c 15h30 chiều 10-5, tại GEM Center, C&ocirc;ng ty S&aacute;ch Phương Nam v&agrave; Nghệ sĩ Kim Cương đ&atilde; tổ chức họp b&aacute;o ra mắt hồi k&yacute; </em><em>Sống cho người, sống cho m&igrave;nh </em><em>- cuốn s&aacute;ch</em><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\"> </span><em>ghi lại những thăng trầm một chặng đời của kỳ nữ s&acirc;n khấu Việt.</em></p>', '<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, sans-serif;\">\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:times new roman; font-size:16px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Sau nhiều năm ấp ủ, hồi k&yacute;<em> Sống cho người, sống cho m&igrave;nh </em>đ&atilde; ra đời với kh&ocirc;ng &iacute;t những giọt nước mắt tủi hờn, những tiếng nấc nghẹn l&ograve;ng, những nụ cười hạnh ph&uacute;c của Nghệ sĩ Kim Cương khi nhớ lại chặng đường đ&atilde; đi qua. Ngược thời gian, <em>Sống cho người, sống cho m&igrave;nh</em> mở ra nhiều khoảng kh&ocirc;ng gian, thời gian, cảm x&uacute;c từ đắng cay </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:times new roman; font-size:16px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">đến hạnh ph&uacute;c, từ hi vọng đến thất vọng,&hellip; trong suốt 40 năm với nghề v&agrave; 80 năm với đời của người kỳ nữ.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:times new roman; font-size:16px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">&nbsp;</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"font-family:times new roman; font-size:16px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"http://orishopvn.com/hopbaokimcuong/_DSC0082.JPG\" style=\"background:0px 0px; border:0px; box-sizing:border-box; height:398px; margin:0px; outline:0px; padding:0px; vertical-align:top; width:600px\" /></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"font-family:times new roman; font-size:16px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"http://orishopvn.com/hopbaokimcuong/_DSC0098.JPG\" style=\"background:0px 0px; border:0px; box-sizing:border-box; height:398px; margin:0px; outline:0px; padding:0px; vertical-align:top; width:600px\" /></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:times new roman; font-size:16px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Trong kh&ocirc;ng gian ấm &aacute;p, th&acirc;n t&igrave;nh, nhưng cũng kh&ocirc;ng k&eacute;m phần sang trọng, Nghệ sĩ Kim Cương xuất hiện trong trang phục &aacute;o d&agrave;i với nụ cười tươi, vui vẻ đ&oacute;n tiếp c&aacute;c vị kh&aacute;ch mời l&agrave; những nghệ sĩ, những người bạn,&hellip; th&acirc;n thiết trong đời, trong nghề với nghệ sĩ Kim Cương.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:times new roman; font-size:16px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">&nbsp;</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"font-family:times new roman; font-size:16px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"http://nhasachphuongnam.com/backdropsongchonguoisongchominh.JPG/khonggian1.jpg\" style=\"background:0px 0px; border:0px; box-sizing:border-box; height:412px; margin:0px; outline:0px; padding:0px; vertical-align:top; width:652px\" /></span></span></span></p>\r\n</div>\r\n\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, sans-serif;\">&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, sans-serif; text-align: center;\">&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, sans-serif; text-align: center;\">\r\n<p dir=\"ltr\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Nghệ sĩ Minh Vương xuất hiện từ sớm</strong></span></span></p>\r\n</div>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://pnc.com.vn/images/kc4.jpg\" style=\"background:0px 0px; border:0px; box-sizing:border-box; height:400px; margin:0px; outline:0px; padding:0px; vertical-align:top; width:600px\" /></p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Ca sĩ Đ&agrave;m Vĩnh Hưng cũng c&oacute; mặt để ủng hộ cho người chị y&ecirc;u qu&yacute;</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong><img alt=\"\" src=\"http://pnc.com.vn/images/kc5.JPG\" style=\"background:0px 0px; border:0px; box-sizing:border-box; height:398px; margin:0px; outline:0px; padding:0px; vertical-align:top; width:600px\" /></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:times new roman; font-size:16px\"><span style=\"font-family:arial\">Buổi họp b&aacute;o bắt đầu với thước phim nghệ sĩ Kim Cương kể lại đ&ocirc;i n&eacute;t về những thăng trầm trong đời, trong nghề. Kh&ocirc;ng kh&iacute; trở n&ecirc;n lắng đọng khi những d&ograve;ng t&acirc;m sự của nghệ sĩ được ph&aacute;t với giọng kể đầy x&uacute;c động của người k&igrave; nữ một thời.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:times new roman; font-size:16px\"><span style=\"font-family:arial\"><img alt=\"\" src=\"http://pnc.com.vn/images/kkk.jpg\" style=\"background:0px 0px; border:0px; box-sizing:border-box; height:337px; margin:0px; outline:0px; padding:0px; vertical-align:top; width:600px\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, sans-serif;\"><span style=\"font-family:arial; font-size:16px\">Nghệ sĩ v&ocirc; c&ugrave;ng x&uacute;c động với những cố gắng của Phương Nam d&agrave;nh cho cuốn s&aacute;ch của m&igrave;nh</span></div>\r\n\r\n<div>&nbsp;</div>', '/uploads/images/t%E1%BA%A3i%20xu%E1%BB%91ng.jpg', '2018-06-17 09:23:24', '2018-06-17 09:23:24', 1),
(16, 2, 'TƯNG BỪNG GIẢM GIÁ - NGẬP TRÀN QUÀ TẶNG HỘI SÁCH TP. HỒ CHÍ MINH 2018', '<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\">Tham dự H&ocirc;̣i sách Thành ph&ocirc;́ H&ocirc;̀ Chí Minh l&acirc;̀n X &ndash; 2018, C&ocirc;ng ty CP Văn hóa Phương Nam (PNC) giới thi&ecirc;̣u đ&ecirc;́n quý đ&ocirc;̣c giả nhi&ecirc;̀u tác ph&acirc;̉m đặc bi&ecirc;̣t, đa dạng chương trình sự ki&ecirc;̣n giao lưu tác giả &ndash; giới thi&ecirc;̣u tác ph&acirc;̉m. B&ecirc;n cạnh đó, chương trình mua hàng với những ưu đ&atilde;i lớn kèm qu&agrave; tặng hấp dẫn, hứa hẹn là đi&ecirc;̉m đ&ecirc;́n kh&ocirc;ng th&ecirc;̉ bỏ qua của đ&ocirc;̣c giả khi đ&ecirc;́n Gian hàng Nhà sách Phương Nam tại C&ocirc;ng vi&ecirc;n L&ecirc; Văn Tám từ ngày 19 &ndash; 25/03/2018</span></p>', '<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\"><span style=\"font-size:13.3333px\"><span style=\"font-size:13.3333px\"><span style=\"font-size:13.3333px\"><span style=\"font-size:13.3333px\"><span style=\"font-size:13.3333px\"><span style=\"font-size:13.3333px\">rong khu&ocirc;n khổ Hội s&aacute;ch lần n&agrave;y, C&ocirc;ng ty Sách Phương Nam (đơn vị trực thu&ocirc;̣c C&ocirc;ng ty Văn h&oacute;a Phương Nam giới thiệu đến bạn đọc những t&aacute;c phẩm mới ra mắt của các tác giả n&ocirc;̉i ti&ecirc;́ng: nhà văn&nbsp;</span><strong>Nguy&ecirc;̃n Đ&ocirc;ng Thức</strong><span style=\"font-size:14px\">&nbsp;</span><span style=\"font-size:13.3333px\">ra mắt tự truy&ecirc;̣n Đi qua nước mắt nụ cười; Người xưa đã qu&ecirc;n ngày xưa - sáng tác mới nh&acirc;́t của tác giả tri&ecirc;̣u bản in&nbsp;</span><strong>Anh Khang</strong><span style=\"font-size:14px\">&nbsp;</span><span style=\"font-size:13.3333px\">, c&acirc;y bút dành cho phụ nữ&nbsp;</span><strong>Phan Ý Y&ecirc;n</strong><span style=\"font-size:14px\">&nbsp;</span><span style=\"font-size:13.3333px\">trình làng tác ph&acirc;̉m Y&ecirc;u, dại d&ocirc;̣t, y&ecirc;u; MC xinh đẹp&nbsp;</span><strong>Li&ecirc;u Hà Trinh</strong><span style=\"font-size:14px\">&nbsp;</span><span style=\"font-size:13.3333px\">giới thi&ecirc;̣u t&acirc;̣p thơ thứ 2 &ndash; Cúc họa mi, Giấc mộng ch&acirc;u &Aacute; của&nbsp;</span><strong>Trung Quốc</strong><span style=\"font-size:14px\">&nbsp;</span><span style=\"font-size:13.3333px\">&ndash; cu&ocirc;́n sách với chủ đ&ecirc;̀ h&acirc;́p d&acirc;̃n&hellip;</span></span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\"><span style=\"font-size:13.3333px\">Với mong muốn l&agrave; cầu nối đưa độc giả đến gần hơn với những t&aacute;c giả, t&aacute;c phẩm m&igrave;nh y&ecirc;u th&iacute;ch, b&ecirc;n cạnh việc giới thiệu những cuốn s&aacute;ch hay, trong Hội s&aacute;ch lần n&agrave;y, C&ocirc;ng ty CP Văn h&oacute;a Phương Nam c&ograve;n tổ chức nhiều sự kiện giao lưu, gặp gỡ với c&aacute;c t&aacute;c giả:</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\"><span style=\"font-size:13.3333px\">** Ng&agrave;y 20/03, 16h30: Ra mắt tác ph&acirc;̉m mới nh&acirc;́t của Nhà văn Anh Khang &ndash; Người xưa đã qu&ecirc;n ngày xưa.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\"><span style=\"font-size:13.3333px\">** Ng&agrave;y 21/03, 16h30: Ra mắt tác ph&acirc;̉m tác ph&acirc;̉m Y&ecirc;u, dại d&ocirc;̣t, y&ecirc;u &ndash; tác giả Phan Ý Y&ecirc;n.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\"><span style=\"font-size:13.3333px\">** Ngày 22/03, 19h30: Tác giả Phan Ý Y&ecirc;n ký tặng sách.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\"><span style=\"font-size:13.3333px\">** Ngày 23/03, 16h30: Chuy&ecirc;̣n trò cùng Nhà văn Nguy&ecirc;̃n Đ&ocirc;ng Thức: Đi qua nước mắt nụ cười.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\"><span style=\"font-size:13.3333px\">** Ngày 23/03, 19h00: Nhà văn Anh Khang ký tặng sách.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\"><span style=\"font-size:13.3333px\">** Ngày 24/03, 16h30: Nhà báo Phạm C&ocirc;ng Lu&acirc;̣n ký tặng sách.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\"><span style=\"font-size:13.3333px\">** Ngày 24/03, 19h00: Ra mắt t&acirc;̣p thơ Cúc họa mi &ndash; MC Li&ecirc;u Hà Trinh</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:13.3333px\"><span style=\"font-size:13.3333px\"><img alt=\"\" src=\"http://nhasachphuongnam.com/lich_su_kien.PNG\" style=\"background:0px 0px; border:0px; box-sizing:border-box; font-size:13.3333px; height:742px; margin:0px; outline:0px; padding:0px; vertical-align:top; width:247px\" /></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"font-size:13.3333px\">GIAN H&Agrave;NG NH&Agrave; S&Aacute;CH PHƯƠNG NAM:</span></div>\r\n\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"font-size:13.3333px\"><span style=\"font-size:13.3333px\">Khu tự dựng, Hội s&aacute;ch TP.HCM lần X năm 2018, C&ocirc;ng vi&ecirc;n L&ecirc; Văn T&aacute;m (V&agrave;o cổng Điện Bi&ecirc;n Phủ, quẹo tr&aacute;i 50m)</span></span></div>', '/uploads/images/t%E1%BA%A3i%20xu%E1%BB%91ng.jpg', '2018-06-17 09:24:15', '2018-06-17 09:24:15', 1),
(17, 2, '\"SÀI GÒN VẪN HÁT\" - NHỮNG TRĂN TRỞ RẤT ĐỜI VỚI NHẠC XƯA', '<p style=\"text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:12px\">Cuốn s&aacute;ch &ldquo;</span><strong>S&agrave;i G&ograve;n vẫn h&aacute;t</strong><span style=\"font-family:arial,sans-serif; font-size:12px\">&rdquo; kể c&acirc;u chuyện ri&ecirc;ng về những con người đi tr&ecirc;n con đường gập ghềnh với niềm hạnh ph&uacute;c tự th&acirc;n, kh&ocirc;ng h&agrave;o nho&aacute;ng hay ảo tưởng</span></p>', '<p style=\"text-align: right;\"><span style=\"font-size:12px\">S&agrave;i G&ograve;n vẫn h&aacute;t l&agrave; cuốn s&aacute;ch mới ph&aacute;t h&agrave;nh của hai t&aacute;c giả Mạc Thụy v&agrave; UBee Ho&agrave;ng - những người được biết đến nhiều hơn tr&ecirc;n mạng gắn liền với Người S&agrave;i G&ograve;n, một qu&aacute;n cafe c&oacute; &quot;chất&quot; giữa l&ograve;ng phố thị. Đam m&ecirc; đối với &quot;nhạc v&agrave;ng&quot;, hai người trẻ đ&atilde; kể một c&acirc;u chuyện về những gương mặt h&aacute;t bolero đang tồn tại giữa TP HCM hiện nay. Những gương mặt, c&oacute; người nổi tiếng, c&oacute; người kh&ocirc;ng, nhưng đều l&agrave; những n&eacute;t ph&aacute;c họa n&ecirc;n một bức tranh chung.</span></p>\r\n\r\n<p style=\"text-align: right;\"><span style=\"font-size:12px\"><img alt=\"\" src=\"http://nhasachphuongnam.com/SAI_GON_VAN_HAT_1.jpg\" style=\"background:0px 0px; border:0px; box-sizing:border-box; height:364px; margin:0px; outline:0px; padding:0px; vertical-align:top; width:450px\" /></span></p>\r\n\r\n<p style=\"text-align: right;\"><span style=\"font-size:12px\">&quot;<em>T&ocirc;i đ&atilde; từng m&ecirc; đắm một n&agrave;ng Bạch Yến, một giọng h&aacute;t &quot;cuồng phong&quot; từng l&agrave;m m&ecirc; đắm biết bao th&iacute;nh giả ho&agrave;n cầu</em>...&quot; - Mạc Thụy đ&atilde; mở đầu những trang viết của m&igrave;nh với giọng tự sự - giọng viết sẽ xuy&ecirc;n suốt cuốn s&aacute;ch, rủ rỉ kể những c&acirc;u chuyện đương thời.</span></p>\r\n\r\n<p style=\"text-align: right;\"><span style=\"font-size:12px\">Gần một phần ba cuốn s&aacute;ch, Mạc Thụy kể về những giọng ca đ&atilde; từng l&agrave;m &quot;khuynh đảo&quot; cả giới mộ điệu S&agrave;i th&agrave;nh thời trước: Bạch Yến, Phương Dung, Giao Linh - những người m&agrave; chỉ nghe t&ecirc;n, ta đ&atilde; chợt cảm thấy k&yacute; ức &ugrave;a về. Họ c&oacute; người đ&atilde; vượt s&oacute;ng biển từ những ng&agrave;y biến động của đất nước, kẻ l&agrave; lứa sau vẫn b&aacute;m trụ lấy nghiệp của m&igrave;nh, nhưng đều th&agrave;nh danh bởi ch&iacute;nh t&agrave;i năng v&agrave; sự đam m&ecirc; của m&igrave;nh.</span></p>\r\n\r\n<p style=\"text-align: right;\"><span style=\"font-size:12px\">Lấy những giai điệu rung động l&ograve;ng người đ&oacute; l&agrave;m lẽ sống, cuối c&ugrave;ng họ lại về lại với mảnh đất qu&ecirc; hương, tiếp tục đem những kh&uacute;c h&aacute;t th&agrave;nh danh đến cho một lứa kh&aacute;n giả trẻ tuổi. Cuộc đời họ, dẫu lắm tru&acirc;n chuy&ecirc;n, nhưng c&oacute; lẽ vẫn h&agrave;o hoa lắm, vẫn long lanh những kh&uacute;c nhạc những đ&ecirc;m diễn người người &aacute;i mộ.</span></p>', '/uploads/images/t%E1%BA%A3i%20xu%E1%BB%91ng.jpg', '2018-06-17 09:24:56', '2018-06-17 09:24:56', 1),
(18, 2, 'Giảm giá Diary of a Wimpy Kid tập 11 nhân dịp phát hành cùng lúc với thế giới', '<p style=\"text-align: justify;\"><strong><em>Ng&agrave;y 1/11 tới đ&acirc;y, tập mới nhất&nbsp;<a href=\"http://nhasachphuongnam.com/diary-of-a-wimpy-kid-double-down-book-11-p93600.html\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">Wimpy Kid # 11</a>&nbsp;thuộc bộ s&aacute;ch bom tấn d&agrave;nh cho thiếu nhi của t&aacute;c giả người Mỹ Jeff Kinney sẽ được C&ocirc;ng ty Văn h&oacute;a Phương Nam ph&aacute;t h&agrave;nh c&ugrave;ng l&uacute;c với thế giới. Diary of a Wimpy Kid l&agrave; bộ s&aacute;ch chiếm vị tr&iacute; đầu bảng những cuốn s&aacute;ch b&aacute;n chạy nhất trong 141 tuần tr&ecirc;n New York Times v&agrave; đ&atilde; đoạt giải Cuốn s&aacute;ch b&aacute;n chạy nhất tr&ecirc;n to&agrave;n cầu.</em></strong></p>', '<p style=\"text-align:justify\"><span style=\"font-size:12px\">Để chuẩn bị cho sự kiện n&agrave;y, một số lượng rất lớn tựa s&aacute;ch n&agrave;y đ&atilde; được vận chuyển bằng m&aacute;y bay từ Mỹ về Việt Nam sẽ được Phương Nam chuyển ngay cho c&aacute;c nh&agrave; s&aacute;ch trong hệ thống Phương Nam tr&ecirc;n to&agrave;n quốc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12px\">Năm 2010, Diary of a Wimpy Kid đ&atilde; được h&atilde;ng phim 20th Century Fox chuyển thể th&agrave;nh phim v&agrave; đ&atilde; thu về với con số kỷ lục: 500 triệu đ&ocirc;-la.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12px\">Jeff Kinney &ndash; t&aacute;c giả cuốn s&aacute;ch - khởi đầu &yacute; tưởng x&acirc;y dựng nh&acirc;n vật Ch&uacute; b&eacute; nh&uacute;t nh&aacute;t v&agrave;o năm 1998. Bảy năm sau, anh ph&aacute;t h&agrave;nh ẩn bản điện tử để thăm d&ograve; thị hiếu. Cuốn s&aacute;ch ngay lập tức trở n&ecirc;n &ldquo;Hot&rdquo; kh&ocirc;ng thể tưởng tượng nổi.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12px\">Đầu năm 2005, anh quyết định hợp t&aacute;c với một nh&agrave; xuất bản tại New York để in v&agrave; ph&aacute;t h&agrave;nh cuốn s&aacute;ch tr&ecirc;n to&agrave;n thế giới.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12px\">Sau 11 năm, kể từ lần đầu ti&ecirc;n ph&aacute;t h&agrave;nh, cuốn s&aacute;ch đ&atilde; c&aacute;n mốc 165 triệu bản in tr&ecirc;n. Tập thứ 11 của seria Diary of a Wimpy Kid lần n&agrave;y, hứa hẹn tiếp tục l&agrave; một hiện tượng bom tấn.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12px\">Tập 11 n&agrave;y &ndash; Double Down (tạm dịch: Ng&atilde; ngửa), t&aacute;c giả tiếp tục kể c&acirc;u chuyện về Grey - Ch&uacute; b&eacute; nh&uacute;t nh&aacute;t đang nỗ lực t&igrave;m c&aacute;ch để cải thiện h&igrave;nh ảnh với bố mẹ m&igrave;nh. Như bao đứa trẻ kh&aacute;c, Grey th&iacute;ch chơi game. Trong khi bố mẹ ch&uacute; th&igrave; cho rằng, chơi game chẳng được t&iacute;ch sự g&igrave; hết ngo&agrave;i việc l&agrave;m cho đầu &oacute;c mụ mị đi. Bố mẹ ch&uacute; mong muốn con m&igrave;nh tự nhận ra v&agrave; kh&aacute;m ph&aacute; những g&oacute;c cạnh kh&aacute;c s&aacute;ng tạo hơn trong ch&iacute;nh con người người m&igrave;nh.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12px\">V&agrave;o dịp Halloween, Grey thấy ma quỷ chẳng c&oacute; g&igrave; đ&aacute;ng sợ cả. Khi ph&aacute;t hiện ra một chiếc t&uacute;i đựng đầy những c&ocirc;n tr&ugrave;ng bằng nhựa, một &yacute; tưởng l&oacute;e l&ecirc;n trong đầu cậu. Grey sẽ thực hiện một bộ phim, v&agrave; với bộ phim n&agrave;y, cậu sẽ trở n&ecirc;n nổi tiếng v&agrave; gi&agrave;u c&oacute;. Cậu sẽ l&agrave;m cho bố mẹ thấy, thay đổi c&aacute;ch nh&igrave;n v&agrave; đ&aacute;nh gi&aacute; về cậu. Liệu cậu c&oacute; th&agrave;nh c&ocirc;ng kh&ocirc;ng? Hay cậu sẽ thất bại gấp đ&ocirc;i v&agrave; chuốc th&ecirc;m gấp bội những rắc rối m&agrave; cậu kh&ocirc;ng ngờ tới? Tất cả sẽ được h&eacute; lộ trong cuốn s&aacute;ch v&agrave;o ng&agrave;y 1/11 tới.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12px\"><img alt=\"giảm giá sách diary of a wimpy kid tập 11 nhasachphuongnam.com\" src=\"http://nhasachphuongnam.com/banner_diary-of-a-wimpy_kid_11.jpg\" style=\"background:0px 0px; border:0px; box-sizing:border-box; height:413px; margin:0px; outline:0px; padding:0px; vertical-align:top; width:930px\" title=\"giảm giá sách diary of a wimpy kid tập 11 nhasachphuongnam.com\" /></span></p>', '/uploads/images/t%E1%BA%A3i%20xu%E1%BB%91ng.jpg', '2018-06-17 09:25:51', '2018-06-17 09:25:51', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(3, 15, 1, 300000, '2018-06-17 16:50:49', '2018-06-17 16:50:49'),
(4, 15, 1, 300000, '2018-06-17 17:01:11', '2018-06-17 17:01:11'),
(5, 16, 1, 450000, '2018-06-20 16:06:53', '2018-06-20 16:06:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` int(11) NOT NULL,
  `price_all` int(11) NOT NULL,
  `method` tinyint(2) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `user_id`, `code`, `order_id`, `price_all`, `method`, `status`, `created_at`, `updated_at`) VALUES
(7, 6, '0000002', 4, 300000, 0, 0, '2018-06-17 17:01:11', '2018-06-17 17:01:11'),
(8, 2, '0000003', 5, 450000, 0, 0, '2018-06-20 16:06:53', '2018-06-20 16:06:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `user_id`, `name`, `description`, `content`, `image`, `price`, `created_at`, `updated_at`, `status`) VALUES
(14, 9, 2, 'COMBO TƯ BẢN THÂN HỮU TRUNG QUỐC & BUỔI ĐẦU QUAN HỆ MỸ-VIỆT 1787-1941', '<p style=\"text-align: justify;\">Thế giới đang đứng trước một cơ hội lớn c&oacute; thể gọi l&agrave; cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư. Đ&acirc;y kh&ocirc;ng chỉ đơn thuần l&agrave; sự đổi mới về mặt kỹ thuật, m&agrave; l&agrave; sự thay đổi lớn về c&ocirc;ng nghệ ở mức độ c&oacute; thể tạo ra một cuộc c&aacute;ch mạng thay đổi cơ bản cấu tr&uacute;c của x&atilde; hội hiện tại. Một trong những đại diện của n&oacute; l&agrave; cuộc c&aacute;ch mạng trong nền c&ocirc;ng nghiệp T&agrave;i ch&iacute;nh &ndash; FinTech. C&oacute; thể coi những c&ocirc;ng ty FinTech đang đảm nhận vai tr&ograve; n&agrave;y l&agrave; những &ldquo;c&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n xử l&yacute; dữ liệu lớn li&ecirc;n quan đến tiền.&rdquo;</p>', '<table cellspacing=\"0\" class=\"table table-bordered table-detail table-striped\" id=\"product-attribute-specs-table\" style=\"background-attachment:initial; background-clip:initial; background-image:initial; background-origin:initial; background-position:0px 0px; background-repeat:initial; background-size:initial; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(221, 221, 221); box-sizing:border-box; font-family:arial,sans-serif; margin:20px 0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:1170px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">C&ocirc;ng ty ph&aacute;t h&agrave;nh</td>\r\n			<td style=\"vertical-align:top\">Nh&agrave; S&aacute;ch Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Nh&agrave; xuất bản</td>\r\n			<td style=\"vertical-align:top\"><a href=\"http://nhasachphuongnam.com/search/dp/nxb-cong-thuong/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">NXB C&ocirc;ng Thương</a>,&nbsp;<a href=\"http://nhasachphuongnam.com/search/dp/thai-ha-books/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">Th&aacute;i H&agrave; Books</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Trọng lượng vận chuyển</td>\r\n			<td style=\"vertical-align:top\">350&nbsp;gr</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">K&iacute;ch thước</td>\r\n			<td style=\"vertical-align:top\">15.5 x 24cm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Số trang</td>\r\n			<td style=\"vertical-align:top\">234.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Ng&agrave;y xuất bản</td>\r\n			<td style=\"vertical-align:top\">th&aacute;ng 06/2018.&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">SKU</td>\r\n			<td style=\"vertical-align:top\">103532</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Loại b&igrave;a</td>\r\n			<td style=\"vertical-align:top\">B&igrave;a mềm.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '/uploads/files/tu-ban-than-huu-trung-quoc_450x652_w_b.jpg', '120000', '2018-06-17 09:06:26', '2018-06-17 09:06:26', 1),
(15, 9, 2, 'LỰA CHỌN THÔNG MINH TRONG KINH DOANH', '<p style=\"text-align: justify;\">Khi gặp phải những t&igrave;nh huống kh&ocirc;ng mong muốn trong c&ocirc;ng việc, ch&uacute;ng ta thường phải đứng trước c&aacute;c lựa chọn kh&oacute; khăn. Liệu quyết định của ta c&oacute; thật sự ch&iacute;nh x&aacute;c? Liệu ta c&oacute; thể đ&aacute;nh đổi c&aacute;c gi&aacute; trị m&igrave;nh đang c&oacute; để thực hiện quyết định n&agrave;y?... Những băn khoăn v&agrave; &aacute;p lực khi đứng trước c&aacute;c lựa chọn khiến ch&uacute;ng ta kh&oacute; l&ograve;ng thỏa m&atilde;n 100% v&agrave; lu&ocirc;n cảm thấy &ldquo;thiếu một c&aacute;i g&igrave; đ&oacute;&rdquo;. Nhưng tại sao phải m&atilde;i lưỡng lự, đắn đo để t&igrave;m kiếm một phương &aacute;n đỡ-tệ-nhất, trong khi ta c&oacute; thể tự tạo ra một c&aacute;ch giải quyết mới v&agrave; vượt trội?</p>', '<p>Ch&igrave;a kh&oacute;a cho vấn đề n&agrave;y l&agrave; phương ph&aacute;p tư duy t&iacute;ch hợp (integrative thinking), một c&aacute;ch ho&agrave;n to&agrave;n mới trong tư duy tạo lựa chọn được nghi&ecirc;n cứu, ph&acirc;n t&iacute;ch v&agrave; ph&aacute;t triển bởi nh&agrave; tư tưởng, chiến lược gia Roger Martin. Trong cuốn s&aacute;ch &ldquo;Lựa chọn th&ocirc;ng minh trong kinh doanh&rdquo;, Martin cộng t&aacute;c với gi&aacute;o sư Jennifer Riel của trường quản l&iacute; Rotman để khai th&aacute;c l&iacute; thuyết v&agrave; ứng dụng đa dạng hơn phương ph&aacute;p tư duy n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" class=\"table table-bordered table-detail table-striped\" id=\"product-attribute-specs-table\" style=\"background-attachment:initial; background-clip:initial; background-image:initial; background-origin:initial; background-position:0px 0px; background-repeat:initial; background-size:initial; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(221, 221, 221); box-sizing:border-box; font-family:arial,sans-serif; margin:20px 0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:1170px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">C&ocirc;ng ty ph&aacute;t h&agrave;nh</td>\r\n			<td style=\"vertical-align:top\">Nh&agrave; S&aacute;ch Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Nh&agrave; xuất bản</td>\r\n			<td style=\"vertical-align:top\"><a href=\"http://nhasachphuongnam.com/search/dp/nxb-dh-kinh-te-quoc-dan/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">NXB ĐH Kinh Tế Quốc D&acirc;n</a>,&nbsp;<a href=\"http://nhasachphuongnam.com/search/dp/1980-books/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">1980 Books</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Trọng lượng vận chuyển</td>\r\n			<td style=\"vertical-align:top\">460&nbsp;gr</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">K&iacute;ch thước</td>\r\n			<td style=\"vertical-align:top\">13.5 x 20.5cm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Số trang</td>\r\n			<td style=\"vertical-align:top\">404.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Ng&agrave;y xuất bản</td>\r\n			<td style=\"vertical-align:top\">th&aacute;ng 06/2018.&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">SKU</td>\r\n			<td style=\"vertical-align:top\">103541</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Loại b&igrave;a</td>\r\n			<td style=\"vertical-align:top\">B&igrave;a mềm.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '/uploads/images/tu-duy.jpg', '300000', '2018-06-17 09:11:33', '2018-06-17 09:11:33', 1),
(16, 9, 2, 'FINTECH 4.0 - NHỮNG ĐIỂN HÌNH THÀNH CÔNG TRONG CUỘC CÁCH MẠNG CÔNG NGHỆ TÀI CHÍNH', '<p style=\"text-align: justify;\">Thế giới đang đứng trước một cơ hội lớn c&oacute; thể gọi l&agrave; cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư. Đ&acirc;y kh&ocirc;ng chỉ đơn thuần l&agrave; sự đổi mới về mặt kỹ thuật, m&agrave; l&agrave; sự thay đổi lớn về c&ocirc;ng nghệ ở mức độ c&oacute; thể tạo ra một cuộc c&aacute;ch mạng thay đổi cơ bản cấu tr&uacute;c của x&atilde; hội hiện tại. Một trong những đại diện của n&oacute; l&agrave; cuộc c&aacute;ch mạng trong nền c&ocirc;ng nghiệp T&agrave;i ch&iacute;nh &ndash; FinTech. C&oacute; thể coi những c&ocirc;ng ty FinTech đang đảm nhận vai tr&ograve; n&agrave;y l&agrave; những &ldquo;c&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n xử l&yacute; dữ liệu lớn li&ecirc;n quan đến tiền.&rdquo;</p>', '<p style=\"text-align: justify;\">&ldquo;Fintech 4.0 &ndash; những điển h&igrave;nh th&agrave;nh c&ocirc;ng trong cuộc c&aacute;ch mạng c&ocirc;ng nghệ t&agrave;i ch&iacute;nh&rdquo; cuốn s&aacute;ch n&agrave;y được t&aacute;c giả Kitao Yoshitaka viết với mục đ&iacute;ch kh&ocirc;ng giống như s&aacute;ch nhập m&ocirc;n thường thấy của c&aacute;c học giả hay chuy&ecirc;n gia t&agrave;i ch&iacute;nh, m&agrave; t&aacute;c giả muốn n&oacute; hướng tới những nh&agrave; l&atilde;nh đạo doanh nghiệp đang ng&agrave;y đ&ecirc;m chiến đấu để tạo ra cuộc c&aacute;ch mạng FinTech (&ldquo;financial technology&rdquo;, c&oacute; nghĩa l&agrave; &ldquo;c&ocirc;ng nghệ trong t&agrave;i ch&iacute;nh).</p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" class=\"table table-bordered table-detail table-striped\" id=\"product-attribute-specs-table\" style=\"background-attachment:initial; background-clip:initial; background-image:initial; background-origin:initial; background-position:0px 0px; background-repeat:initial; background-size:initial; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(221, 221, 221); box-sizing:border-box; font-family:arial,sans-serif; margin:20px 0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:1170px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">C&ocirc;ng ty ph&aacute;t h&agrave;nh</td>\r\n			<td style=\"vertical-align:top\">Nh&agrave; S&aacute;ch Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Nh&agrave; xuất bản</td>\r\n			<td style=\"vertical-align:top\"><a href=\"http://nhasachphuongnam.com/search/dp/nxb-cong-thuong/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">NXB C&ocirc;ng Thương</a>,&nbsp;<a href=\"http://nhasachphuongnam.com/search/dp/thai-ha-books/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">Th&aacute;i H&agrave; Books</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Trọng lượng vận chuyển</td>\r\n			<td style=\"vertical-align:top\">350&nbsp;gr</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">K&iacute;ch thước</td>\r\n			<td style=\"vertical-align:top\">15.5 x 24cm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Số trang</td>\r\n			<td style=\"vertical-align:top\">234.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Ng&agrave;y xuất bản</td>\r\n			<td style=\"vertical-align:top\">th&aacute;ng 06/2018.&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">SKU</td>\r\n			<td style=\"vertical-align:top\">103532</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Loại b&igrave;a</td>\r\n			<td style=\"vertical-align:top\">B&igrave;a mềm.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '/uploads/images/fintech-4_0_450x652_w_b.jpg', '450000', '2018-06-17 09:14:12', '2018-06-17 09:14:12', 1),
(17, 9, 2, 'QUỐC GIA THĂNG TRẦM - LÝ GIẢI VẬN MỆNH CỦA CÁC NỀN KINH TẾ', '<p style=\"text-align:justify\">Bản chất ph&ugrave; du v&agrave; chật vật của sự tăng trưởng mạnh mẽ giờ đ&acirc;y đ&atilde; được nh&igrave;n thấy r&otilde;, v&agrave; n&oacute; đặt ra một c&acirc;u hỏi đơn giản. L&agrave;m thế n&agrave;o, trong một thế giới v&ocirc; thường, ta c&oacute; thể dự đo&aacute;n những quốc gia c&oacute; nhiều cơ may sẽ tăng tiến hoặc suy vong? Đ&acirc;u l&agrave; những dấu hiệu quan trọng nhất cho thấy vận mệnh của một quốc gia sắp chuyển biến, v&agrave; l&agrave;m thế n&agrave;o nh&igrave;n ra những dấu hiệu đ&oacute;? Để gi&uacute;p định hướng trong một thế giới thường t&igrave;nh &ndash; một m&ocirc;i trường dễ gặp phải sự b&ugrave;ng nổ tăng trưởng, sa s&uacute;t v&agrave; phản kh&aacute;ng &ndash;&nbsp;</p>', '<p style=\"text-align:justify\">&ldquo;Chứa đựng nguồn th&ocirc;ng tin đ&aacute;ng kinh ngạc&hellip; những hiểu biết s&acirc;u sắc c&ugrave;ng với c&aacute;c giai thoại được c&ocirc;ng bố, đ&acirc;y quả thực l&agrave; tư liệu tốt nhất đối với nền kinh tế to&agrave;n cầu hiện nay m&agrave; bất kỳ nh&agrave; đầu tư hay kẻ ngo&agrave;i cuộc n&agrave;o cũng chẳng thể ng&oacute; lơ.&rdquo; -&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" class=\"table table-bordered table-detail table-striped\" id=\"product-attribute-specs-table\" style=\"background-attachment:initial; background-clip:initial; background-image:initial; background-origin:initial; background-position:0px 0px; background-repeat:initial; background-size:initial; border-collapse:collapse; border-spacing:0px; border:1px solid rgb(221, 221, 221); box-sizing:border-box; font-family:arial,sans-serif; margin:20px 0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:1170px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">C&ocirc;ng ty ph&aacute;t h&agrave;nh</td>\r\n			<td style=\"vertical-align:top\">Nh&agrave; S&aacute;ch Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Nh&agrave; xuất bản</td>\r\n			<td style=\"vertical-align:top\"><a href=\"http://nhasachphuongnam.com/search/dp/nxb-the-gioi/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">NXB Thế Giới</a>,&nbsp;<a href=\"http://nhasachphuongnam.com/search/dp/phuong-nam-book/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(255, 144, 0); text-decoration-line: none; line-height: 18px;\">Phương Nam Book</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Trọng lượng vận chuyển</td>\r\n			<td style=\"vertical-align:top\">680&nbsp;gr</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">K&iacute;ch thước</td>\r\n			<td style=\"vertical-align:top\">15.5 x 23.5cm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Số trang</td>\r\n			<td style=\"vertical-align:top\">506.</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Ng&agrave;y xuất bản</td>\r\n			<td style=\"vertical-align:top\">th&aacute;ng 06/2018.&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">SKU</td>\r\n			<td style=\"vertical-align:top\">103468</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Loại b&igrave;a</td>\r\n			<td style=\"vertical-align:top\">B&igrave;a mềm.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '/uploads/files/s7_1_master.jpg', '320000', '2018-06-17 09:16:28', '2018-06-17 09:18:28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `promotion`
--

INSERT INTO `promotion` (`id`, `name`, `start_day`, `end_day`, `status`) VALUES
(1, 'khuyen mai thang 6', '2018-06-18 17:00:00', '2018-06-29 17:00:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion_product`
--

CREATE TABLE `promotion_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  `number_discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `promotion_product`
--

INSERT INTO `promotion_product` (`id`, `product_id`, `promotion_id`, `number_discount`) VALUES
(3, 14, 1, 10),
(4, 16, 1, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-06-17 15:54:08', '0000-00-00 00:00:00'),
(2, 'user', '2018-06-17 15:54:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
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
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `content`, `image`, `created_at`, `updated_at`, `status`) VALUES
(7, '<p>Khuyến mại th&aacute;ng 5</p>', '/uploads/images/ms_banner_img1.jpg', '2018-06-17 09:46:12', '2018-06-17 09:46:12', 1),
(8, '<p>Ch&agrave;o đ&oacute;n h&egrave; 2018</p>', '/uploads/images/ms_banner_img2.jpg', '2018-06-17 09:46:27', '2018-06-17 09:46:27', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `phone`, `address`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `_token`, `status`) VALUES
(2, 'admin', 1, 'admin@gmail.com', '1642155930', 'hanoi', '$2y$10$DbHDrI2uGUTr5gqiVQSk3./C207UptRkTZmX6ody4TiLngpriFzcq', 'p01QHqobkMAlSi2rAfV7BwJgLMWMNW193y7it6JKnVSu6aepwkjyNsWcOfcB', '2018-05-18 23:42:40', '2018-06-17 16:45:46', 'admin', NULL, 1),
(4, 'HN', 2, 'test@gmail.com', NULL, NULL, '$2y$10$3PemYt6ef7dVymTaKjZdgu7Bgl.S.0OXQlcWciuMWgirdIkg5MaY.', NULL, '2018-06-17 10:21:43', '2018-06-17 10:21:43', 'test', NULL, NULL),
(5, 'Test', 2, 'laptrinhvientest@gmail.com', '0986677766', 'Hà Nội 2', '$2y$10$DbHDrI2uGUTr5gqiVQSk3./C207UptRkTZmX6ody4TiLngpriFzcq', 'zvhLGNLrFxymdrLgJONjxd520Je10Mm7hSBCdI32iuHo7CiZYsSPLJReyqUZ', '2018-06-17 10:27:23', '2018-06-17 12:16:07', 'Test', NULL, 1),
(6, 'test', 2, 'user@gmail.com', '984009503', '12/15/dong da ha noi', '$2y$10$5.m8hTJ10yzPGwaPVorrbO2ZKEQ.vO3aNDVDIasZBb5obs8Ow90QC', 'G8V0iuoVx7ftFVT0w3v1cUsGqqpt8xewvI4rZ3CaBZta2Fy8Fk23L5EyD6Cx', '2018-06-17 16:58:21', '2018-06-17 17:01:11', 'test', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `code` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `promotion_product`
--
ALTER TABLE `promotion_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `promotion_id` (`promotion_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `promotion_product`
--
ALTER TABLE `promotion_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `promotion_product`
--
ALTER TABLE `promotion_product`
  ADD CONSTRAINT `promotion_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `promotion_product_ibfk_2` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
