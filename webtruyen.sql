-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 26, 2023 lúc 09:35 AM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webtruyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 9, '2023-12-17 05:48:59', '2023-12-17 05:48:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuong`
--

DROP TABLE IF EXISTS `chuong`;
CREATE TABLE IF NOT EXISTS `chuong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `truyen_id` int DEFAULT NULL,
  `NUMBER` int DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `truyen_id` (`truyen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `truyen_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_like` (`truyen_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

DROP TABLE IF EXISTS `tacgia`;
CREATE TABLE IF NOT EXISTS `tacgia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tentacgia` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`id`, `tentacgia`) VALUES
(1, 'Eiichiro Oda'),
(2, 'đang cập nhập'),
(3, 'đang cập nhập'),
(4, 'Duyệt Động Văn Hóa'),
(5, 'Murata Yuusuke, One'),
(6, 'Đang Cập Nhật'),
(10, 'Đang Cập Nhật'),
(11, 'Đang Cập Nhật'),
(12, 'Đang Cập Nhật'),
(13, 'Đang Cập Nhật'),
(14, 'Đang Cập Nhật'),
(15, 'Đang Cập Nhật'),
(16, 'Đang Cập Nhật'),
(17, 'Đang Cập Nhật'),
(18, 'Đang Cập Nhật'),
(19, 'Đang Cập Nhật'),
(20, 'Gotouge Koyoharu'),
(21, 'Đang Cập Nhật'),
(22, 'Đang Cập Nhật'),
(23, 'Đang Cập Nhật'),
(24, 'Đang Cập Nhật'),
(25, 'Đang Cập Nhật'),
(26, 'Đang Cập Nhật'),
(27, 'Đang Cập Nhật'),
(28, 'Đang Cập Nhật'),
(29, 'Đường Gia Tam Thiếu'),
(30, 'qwerq'),
(31, 'Đang Cập Nhật'),
(32, 'Tabata Yuuki'),
(33, 'Tabata Yuuki'),
(34, 'Hara Yasuhisa'),
(35, 'Đang Cập Nhật'),
(36, 'sdasd'),
(37, 'daf'),
(38, 'dadf'),
(39, 'Đang Cập Nhật'),
(40, 'sdf'),
(41, 'sdfa'),
(42, 'asdf'),
(43, 'Hara Yasuhisa'),
(44, '213123'),
(45, 'Đang Cập Nhật'),
(46, '7'),
(47, 'asdf'),
(48, 'qwer'),
(49, 'qwd'),
(50, 'asf'),
(51, 'adfasdf'),
(52, 'adfadsf'),
(53, 'adfasf'),
(54, 'asdf'),
(55, 'afdsas'),
(56, 'afdsas'),
(57, 'afdsas'),
(58, 'dsadf'),
(59, 'asdf'),
(60, 'asdf'),
(61, 'dfafds'),
(62, 'asdfa'),
(63, 'asdf'),
(64, 'asdf'),
(65, 'asdf'),
(66, 'asdf'),
(67, 'sdf'),
(68, 'asdf'),
(69, 'adf'),
(70, 'asdaffad'),
(71, 'dsfa'),
(72, 'asdfdfd'),
(73, 'Đang Cập Nhật'),
(74, 'Đang Cập Nhật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

DROP TABLE IF EXISTS `theloai`;
CREATE TABLE IF NOT EXISTS `theloai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tentheloai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mieuta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `tentheloai`, `mieuta`) VALUES
(1, 'Action', 'Hành động'),
(2, 'Adventure', 'Phiêu lưu'),
(3, 'Anime', 'Truyện chuyển thể từ anime'),
(4, 'Chuyển Sinh', 'Reincarnation - Chủ nhân chuyển sinh sang một thế giới khác'),
(5, 'Cổ Đại', 'Historical - Truyện diễn ra trong thời kỳ lịch sử cổ đại'),
(6, 'Comedy', 'Hài hước'),
(7, 'Comic', 'Truyện tranh'),
(8, 'Demons', 'Quỷ dữ'),
(9, 'Detective', 'Trinh thám'),
(10, 'Doujinshi', 'Truyện do các tác giả độc lập tạo ra, thường là về các nhân vật đã tồn tại'),
(11, 'Drama', 'Kịch tính'),
(12, 'Fantasy', 'Fantasy - Huyền bí'),
(13, 'Gender Bender', 'Đổi giới tính'),
(14, 'Harem', 'Nhiều nhân vật nữ xếp quanh một nhân vật nam'),
(15, 'Historical', 'Lịch sử'),
(16, 'Horror', 'Kinh dị'),
(17, 'Huyền Huyễn', 'Pha trộn giữa huyền bí và hiện thực'),
(18, 'Isekai', 'Người chuyển sinh sang một thế giới khác'),
(19, 'Josei', 'Dành cho phụ nữ trưởng thành'),
(20, 'Mafia', 'Liên quan đến băng đảng Mafia'),
(21, 'Magic', 'Ma thuật'),
(22, 'Manhua', 'Truyện tranh Trung Quốc'),
(23, 'Manhwa', 'Truyện tranh Hàn Quốc'),
(24, 'Martial Arts', 'Võ thuật'),
(25, 'Military', 'Quân sự'),
(26, 'Mystery', 'Bí ẩn'),
(27, 'Ngôn Tình', 'Tình cảm ngôn tình'),
(28, 'One shot', 'Truyện ngắn kết thúc trong một chương'),
(29, 'Psychological', 'Tâm lý học'),
(30, 'Romance', 'Lãng mạn'),
(31, 'School Life', 'Đời sống học đường'),
(32, 'Sci-fi', 'Khoa học viễn tưởng'),
(33, 'Seinen', 'Dành cho độc giả nam trưởng thành'),
(34, 'Shoujo', 'Dành cho độc giả nữ trưởng thành'),
(35, 'Shoujo Ai', 'Tình cảm đồng giới trong truyện dành cho nữ'),
(36, 'Shounen', 'Dành cho độc giả nam thanh niên'),
(37, 'Shounen Ai', 'Tình cảm đồng giới trong truyện dành cho nam'),
(38, 'Slice of Life', 'Đời sống hàng ngày'),
(39, 'Sports', 'Thể thao'),
(40, 'Supernatural', 'Siêu nhiên'),
(41, 'Tragedy', 'Bi kịch'),
(42, 'Trọng Sinh', 'Tái sinh'),
(43, 'Truyện Màu', 'Truyện có màu'),
(44, 'Webtoon', 'Truyện tranh trực tuyến'),
(45, 'Xuyên Không', 'Người chuyển sinh hoặc xuyên qua thời gian và không gian');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theodoi`
--

DROP TABLE IF EXISTS `theodoi`;
CREATE TABLE IF NOT EXISTS `theodoi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `truyen_id` int DEFAULT NULL,
  `follow_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `truyen_id` (`truyen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `theodoi`
--

INSERT INTO `theodoi` (`id`, `user_id`, `truyen_id`, `follow_time`) VALUES
(236, 10, 31, '2023-12-16 13:29:19'),
(241, 10, 32, '2023-12-16 13:30:48'),
(246, 10, 29, '2023-12-16 13:35:03'),
(296, 9, 26, '2023-12-16 15:33:49'),
(304, 9, 30, '2023-12-16 16:05:26'),
(306, 9, 29, '2023-12-17 07:40:23'),
(309, 9, 32, '2023-12-17 08:38:54'),
(310, 9, 34, '2023-12-17 15:08:18'),
(316, 9, 46, '2023-12-18 03:16:00'),
(325, 9, 25, '2023-12-20 07:56:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen`
--

DROP TABLE IF EXISTS `truyen`;
CREATE TABLE IF NOT EXISTS `truyen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cover_image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tentruyen` varchar(255) NOT NULL,
  `tacgia_id` int DEFAULT NULL,
  `noidung` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `tacgia_id` (`tacgia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen`
--

INSERT INTO `truyen` (`id`, `cover_image_path`, `tentruyen`, `tacgia_id`, `noidung`, `created_at`) VALUES
(1, 'uploads/slider_1559211185.jpg', 'One Piece', 1, 'One Piece là câu truyện kể về Luffy và các thuyền viên của mình. Khi còn nhỏ, Luffy ước mơ trở thành Vua Hải Tặc. Cuộc sống của cậu bé thay đổi khi cậu vô tình có được sức mạnh có thể co dãn như cao su, nhưng đổi lại, cậu không bao giờ có thể bơi được nữa. Giờ đây, Luffy cùng những người bạn hải tặc của mình ra khơi tìm kiếm kho báu One Piece, kho báu vĩ đại nhất trên thế giới. Trong One Piece, mỗi nhân vật trong đều mang một nét cá tính đặc sắc kết hợp cùng các tình huống kịch tính, lối dẫn truyện hấp dẫn chứa đầy các bước ngoặt bất ngờ và cũng vô cùng hài hước đã biến One Piece trở thành một trong những bộ truyện nổi tiếng nhất không thể bỏ qua. Hãy đọc One Piece để hòa mình vào một thế giới của những hải tặc rộng lớn, đầy màu sắc, sống động và thú vị, cùng đắm chìm với những nhân vật yêu tự do, trên hành trình đi tìm ước mơ của mình.', '2023-12-05 16:28:54'),
(2, 'uploads/boku-no-hero-academia_1552459650.jpg', 'Học Viện Anh Hùng', 2, 'Vào tương lai, lúc mà con người với những sức mạnh siêu nhiên là điều thường thấy quanh thế giới. Đây là câu chuyện về Izuku Midoriya, từ một kẻ bất tài trở thành một siêu anh hùng. Tất cả ta cần là mơ ước.\r\n\r\n', '2023-12-05 19:51:08'),
(3, 'uploads/vo-luyen-dinh-phong_1514903369.jpg', 'Võ Luyện Đỉnh Phong', 3, 'Võ đạo đỉnh phong, là cô độc, là tịch mịch, là dài đằng đẵng cầu tác, là cao xử bất thắng hàn\r\n\r\nPhát triển trong nghịch cảnh, cầu sinh nơi tuyệt địa, bất khuất không buông tha, mới có thể có thể phá võ chi cực đạo.\r\n\r\nLăng Tiêu các thí luyện đệ tử kiêm quét rác gã sai vặt Dương Khai ngẫu lấy được một bản vô tự hắc thư, từ nay về sau đạp vào dài đằng đẵng võ đạo.', '2023-12-05 20:07:16'),
(4, 'uploads/dai-vuong-tha-mang_1576200425.jpg', 'Đại Vương Tha Mạng', 4, 'Sau khi linh khí hồi phục, mọi người chắt chiu từng tơ linh khí, chỉ có Lữ Thụ, dựa vào hệ thống điểm cảm xúc tiêu cực , oán hận người khác là trở nên mạnh hơn! Cậu ta chỉ muốn bảo vệ em gái, nhưng mà thời kì lũ lụt khó có thể tránh khỏi, chỉ đành..... tiện oán hận người khác , trở nên mạnh hơn! Vậy thì , chuẩn bị xong chưa, Lữ Thụ \"Đại Ma Vương \" tới đây\r\n\r\n', '2023-12-05 21:15:15'),
(18, 'uploads/onepunch-man_1552232163.jpg', 'Onepunch Man', 15, 'Onepunch-Man là một Manga thể loại siêu anh hùng với đặc trưng phồng tôm đấm phát chết luôn… Lol!!! Nhân vật chính trong Onepunch-man là Saitama, một con người mà nhìn đâu cũng thấy “tầm thường”, từ khuôn mặt vô hồn, cái đầu trọc lóc, cho tới thể hình long tong. Tuy nhiên, con người nhìn thì tầm thường này lại chuyên giải quyết những vấn đề hết sức bất thường. Anh thực chất chính là một siêu anh hùng luôn tìm kiếm cho mình một đối thủ mạnh. Vấn đề là, cứ mỗi lần bắt gặp một đối thủ tiềm năng, thì đối thủ nào cũng như đối thủ nào, chỉ ăn một đấm của anh là… chết luôn. Liệu rằng Onepunch-Man Saitaman có thể tìm được cho mình một kẻ ác dữ dằn đủ sức đấu với anh? Hãy theo bước Saitama trên con đường một đấm tìm đối cực kỳ hài hước của anh!!', '2023-12-10 04:07:55'),
(20, 'uploads/nang-yankee-ngoi-canh-toi-co-vo-van-diem-yeu_1701849923.jpg', 'Nàng Yankee Ngồi Cạnh Tôi Có Vô Vàn Điểm Yếu!', 17, 'Itsuki Hayashi, một cậu học sinh trung bình otaku với ước mơ được làm họa sĩ manga, nhưng lại phải ngồi kế bên một nhỏ Yankee cực kì hầm hố và đáng sợ. Cơ mà thế quái nào càng tiếp xúc, cậu lại càng được thấy nhiều mặt dễ thương của nhỏ Yankee này..', '2023-12-10 04:14:04'),
(21, 'uploads/tensei-shitara-saikyoushutachi-ga-sumau-shima-deshita-kono-shima-de-slow-life-wo-tanoshimasu_1701588885.jpg', ' Tensei Shitara Saikyoushutachi Ga Sumau Shima Deshita. Kono Shima De Slow Life Wo Tanoshimasu', 18, 'Cuộc sống phởn cùng gái xinh', '2023-12-10 07:20:10'),
(22, 'uploads/dai-quan-gia-la-ma-hoang_1555489297.jpg', 'Đại Quản Gia Là Ma Hoàng', 19, 'Truyện tranh Đại Quản Gia Là Ma Hoàng được cập nhật nhanh và đầy đủ nhất tại TruyenQQ. Bạn đọc đừng quên để lại bình luận và chia sẻ, ủng hộ TruyenQQ ra các chương mới nhất của truyện Đại Quản Gia Là Ma Hoàng.', '2023-12-10 07:43:05'),
(23, 'uploads/kimetsu-no-yaiba_1478064120.jpg', 'Thanh Gươm Diệt Quỷ', 20, 'Kimetsu no Yaiba – Tanjirou là con cả của gia đình vừa mất cha. Một ngày nọ, Tanjirou đến thăm thị trấn khác để bán than, khi đêm về cậu ở nghỉ tại nhà người khác thay vì về nhà vì lời đồn thổi về ác quỷ luôn rình mò gần núi vào buổi tối. Khi cậu về nhà vào ngày hôm sau, bị kịch đang đợi chờ cậu…\r\n\r\n', '2023-12-12 14:45:53'),
(24, 'uploads/van-co-chi-ton_1622612388.jpg', 'Vạn Cổ Chí Tôn', 21, 'nội dung ư _ chờ đi chưa nghĩ ra  haha ', '2023-12-12 14:49:07'),
(25, 'uploads/nguyen-lai-ta-la-tu-tien-dai-lao_1644166269.jpg', 'Nguyên Lai Ta Là Tu Tiên Đại Lão', 22, '- Từ một thế giới tu tiên đang trên đà xuống dốc , sự xuất hiện của hắn giống như thổi một làn sức sống mới ngăn chặn sự xuống dốc đó . Từ sau đại kiếp , Long môn , Địa Phủ , Thiên Cung bị phong bế đều bởi vì hắn mà lần lượt mở ra ... Truyện đi từ từ dần dần mang đậm phong cách hài hước , tuy cũng có sạn nhưng cũng không phải nhiều bởi mỗi thế giới là của một tác giả tạo nên cho nên chẳng có ai có thể định đúng sai , tác giả có khác gì thiên đạo , truyện này mang tính giải trí cực cao , đủ để các đạo hữu đọc tới xuyên đêm .\r\n___________________\r\n-Tiên đạo mờ mịt , tiên tung khó tìm .\r\n-Lý Niệm Phàm tới thế giới tu tiên với thân thể của một người phàm , sau khi biết được rằng không có hy vọng ở việc tu tiên thì chỉ muốn sống một cuộc sống ổn định qua ngày . Lại không biết Con chó nhỏ mà mình nuôi dưỡng , bởi vì ở bên cạnh hắn cho nên được ăn các loại hoa quả mà hắn trồng ra , những món ăn mà hắn làm , thấy các loại thơ mà hắn viết từ đó trở thành một con chó sâu không lường được , âm thầm bảo vệ nơi ở của hắn . Cây cối hắn trồng ở hậu viện , bởi vì nghe hắn đánh đàn mà đều trở thành những cây đại thụ cũng sâu không lường được , chống đỡ làm cầu nối trong thiên địa . Hắn gặp phải một tên thư sinh ăn mặc như kẻ ăn mày , bởi vì theo những lời nói hững hờ của hắn mà lại trở thành thuận miệng điểm hóa cho tên thư sinh đó , trở thành người truyền đạo , đứng đầu một thời đại\r\n- Hỏa Tước vô cùng cực hiếm có đẻ ra trứng thì chỉ cần nhìn thấy hắn là ra sức đẻ trứng , một lần 2 3 4 5 quả trứng ... cuối cùng được gọi là gà biết để trứng . - Ngũ Sắc Thần Ngưu kiêu căng ngạo mạn , được kéo về hậu viện của hắn , lấy cỏ đều là linh căn mà ăn , thấy hắn thì ra sức mà tạo sữa , nguồn sữa dồi dào không dứt thành bò sữa\r\n___________________________\r\n-Cảnh giới trong thế giới tu tiên : Luyện Khí , Trúc Cơ , Kim Đan Nguyên Anh , Xuất Khiếu Phân Thần , Hợp Thế Độ Kiếp Đại Thừa Trong Tiên giới tiên nhân chia Thiên Tiên , Chân Tiên , Kim Tiên , Thái Ất Kim Tiên , Đại La Kim Tiên , Bán Thánh . Thánh Nhân', '2023-12-12 16:23:14'),
(26, 'uploads/toan-chuc-phap-su_1518956513.jpg', 'Toàn Chức Pháp Sư', 23, 'Tỉnh lại sau giấc ngủ, thế giới đại biến. Quen thuộc cao trung truyền thụ chính là phép thuật, nói cho mọi người muốn trở thành một tên xuất sắc Ma Pháp Sư. Ở lại đô thị ở ngoài du đãng tập kích nhân loại ma vật yêu thú, mắt nhìn chằm chằm. Tôn trọng khoa học thế giới đã biến thành tôn trọng phép thuật, một mực có như nhau lấy học tra đối xử giáo viên của chính mình, như nhau ánh mắt dị dạng bạn học, như nhau xã hội tầng dưới chót giãy dụa ba ba, như nhau thuần mỹ nhưng không thể bước đi không phải huyết thống muội muội…\r\n\r\nBất quá, Mạc Phàm phát hiện tuyệt đại đa số người đều chỉ có thể chủ tu nhất hệ phép thuật, chính mình nhưng là toàn hệ toàn năng pháp sư!', '2023-12-13 08:14:09'),
(27, 'uploads/nguoi-tren-van-nguoi_1620540971.jpg', 'Người Trên Vạn Người', 24, 'Truyện kể về Dịch Phong, 1 thanh niên thế kỷ 21 xuyên không đến thế giới tu luyện võ đạo. Người khác xuyên không thì có hệ thống “baba” lo hết, nhưng đáng tiếc hắn chỉ có thể làm 1 cái phàm nhân. Hắn bất đắc dĩ mở một cái võ quán nhỏ để duy trì sinh hoạt, làm cái ” Một đời tông sư ” không lý tưởng.\r\n\r\nCho đến một ngày, tiểu võ quán đột nhiên náo nhiệt. Mấy cái tiên phong đạo cốt lão đầu vì tranh dành con dao phay làm bếp của Dịch Phong mà mặt đỏ tới mang tai.\r\n\r\nĐạp phá hư không trung niên nam tử ngày ngày trốn trên mây nhìn lén Dịch Phọng luyện quyền. Thánh nữ nghiêng nước nghiêng thành cũng là tự nguyện đến làm thị nữ cho hắn.', '2023-12-13 09:06:34'),
(29, 'uploads/tao-muon-tro-thanh-chua-te-bong-toi_1546992987.jpg', 'Tao Muốn Trở Thành Chúa Tể Bóng Tối!!', 26, '\"Tôi không phải nhân vật chính, cũng chẳng phải trùm cuối...\"  \r\nTôi là một cậu trai ước mơ làm \"chúa tể bóng tối\", chèo lái câu chuyện trong bóng tối, bí mật phô bày năng lực, tên là Shido. Vừa mới hớn hở vì được chuyển sinh đến thế giới khác và quyết định \"mình sẽ là chúa tể bóng đêm, ngấm ngầm loại bỏ giáo phái đen tối\", thì hình như Shido lại tái sinh trong đúng cái giáo phái ấy?? Bộ truyện tranh hài nghiêm túc CỰC MẠNH nói về tổ chức bóng tối Ánh Viên đang dần mở rộng do Shido lãnh đạo bắt đầu!! \r\n\r\n', '2023-12-13 09:15:08'),
(30, 'uploads/vo-dao-doc-ton_1565077663.jpg', 'Võ Đạo Độc Tôn', 27, 'Thiên Nguyên đại lục, có Đại Năng Lực Giả có thể di sơn đảo hải, đá tinh đạp nguyệt, một quyền đánh vỡ trời xanh, một cước đập tan đại địa!\r\n\r\nDiệp Minh, một giới phàm lưu, con thứ xuất thân, vì báo huyết cừu, không ngừng vươn lên.\r\n\r\nDưới cơ duyên, thu hoạch được “Thần Linh bảo y”, dùng “Trúc Cơ thần đan”, tu được “Thông Thiên kinh đồ”.\r\n\r\nTâm thành chí dựng thẳng, dũng mãnh tinh tiến, dù ai cản con đường tu võ, giết không tha!\r\n\r\nBất Hủ hoàng triều, Vạn Cổ đại giáo, Hồng Hoang cự yêu, Kình Thiên ma thần, đối mặt này đầy trời Thần Ma, hắn không sợ hãi, mệnh ta tại ta không tại Thiên!\r\n\r\n\r\n\r\n\r\n\r\n', '2023-12-13 09:24:02'),
(31, 'uploads/vo-luyen-dinh-phong_1514903369.jpg', 'Võ Luyện Đỉnh Phong', 28, 'Võ đạo đỉnh phong, là cô độc, là tịch mịch, là dài đằng đẵng cầu tác, là cao xử bất thắng hàn\r\n\r\nPhát triển trong nghịch cảnh, cầu sinh nơi tuyệt địa, bất khuất không buông tha, mới có thể có thể phá võ chi cực đạo.\r\n\r\nLăng Tiêu các thí luyện đệ tử kiêm quét rác gã sai vặt Dương Khai ngẫu lấy được một bản vô tự hắc thư, từ nay về sau đạp vào dài đằng đẵng võ đạo.', '2023-12-13 09:44:14'),
(32, 'uploads/dau-la-dai-luc_1552267757.jpg', 'Đấu La Đại Lục', 29, 'Đấu La Thế Giới, một đại lục rộng lớn, cư dân đông đúc. Chức nghiệp cao quý nhất tại Đấu La Đại Lục được gọi là Hồn Sư. Mỗi người sinh ra, đều có một vũ hồn bẩm sinh. Vũ hồn có thể là cái cày, cái cuốc, liêm đao (liềm gặt)… thuộc khối công cụ, một đóa hoa cúc, một cành mai… thuộc thực vật hệ đến các vũ hồn cường đại như Tuyết Ảnh Ma Hùng, Tật Phong Ma Lang… Để có thể trở thành hồn sư, ngoài vũ hồn cường đại, còn cần đến hồn lực để sử dụng vũ hồn đó, vũ hồn càng lớn, hồn lực càng cao, đại biểu cho thực lực mạnh mẽ tại Đấu La Đại Lục. Cứ 10 cấp hồn lực, vũ hồn có thể phụ gia thêm một cái hồn hoàn, có được từ việc liệp sát hồn thú, những quái thú mạnh mẽ, có tu vị hằng nghìn năm. Hành trình tu luyện, tìm hiểu bí ẩn cái chết của mẫu thân, bị mật tông sư của phụ thân của Đường Tam – nhân vật chính trong truyện Đấu La Đại Lục sẽ cho người đọc những trải nghiệm thú vị.', '2023-12-13 09:49:16'),
(34, 'uploads/toan-cau-bang-phong-ta-che-tao-phong-an-toan-tai-tan-the_1696948011.jpg', 'Toàn Cầu Băng Phong: Ta Chế Tạo Phòng An Toàn Tại Tận Thế', 31, 'Toàn cầu tiến vào thời đại băng hà, 95% nhân loại mất mạng! Ở kiếp trước, Trương Dịch lòng dạ lương thiện, nhưng kết quả lại bị người ta lấy ân báo oán. Kiếp này, Trương Dịch trùng sinh trở về, thức tỉnh không gian dị năng, điên cuồng lưu trữ vật tư! Hàn băng tận thế, phân đất vi vương! Thề phải hoàn trả lại quá khứ đau khổ gấp cả trăm lần!\r\n\r\n', '2023-12-17 05:02:05'),
(36, 'uploads/black-clover_1552555341.jpg', 'Black Clover - Thế Giới Phép Thuật', 33, 'Aster và Yuno là hai đứa trẻ bị bỏ rơi ở nhà thờ và cùng nhau lớn lên tại đó. Khi còn nhỏ, chúng đã hứa với nhau xem ai sẽ trở thành Ma pháp vương tiếp theo. Thế nhưng, khi cả hai lớn lên, mọi sô chuyện đã thay đổi. Yuno là thiên tài ma pháp với sức mạnh tuyệt đỉnh trong khi Aster lại không thể sử dụng ma pháp và cố gắng bù đắp bằng thể lực. Khi cả hai được nhận sách phép vào tuổi 15, Yuno đã được ban cuốn sách phép cỏ bốn bá (trong khi đa số là cỏ ba lá) mà Aster lại không có cuốn nào. Tuy nhiên, khi Yuno bị đe dọa, sự thật về sức mạnh của Aster đã được giải mã- cậu ta được ban cuốn sách phép cỏ năm lá, cuốn sách phá ma thuật màu đen. Bấy giờ, hai người bạn trẻ đang hướng ra thế giới, cùng chung mục tiêu.', '2023-12-17 15:48:43'),
(38, 'uploads/van-co-toi-cuong-tong_1622612457.jpg', 'Vạn Cổ Tối Cường Tông', 35, 'Phế vật? Rác rưởi? Bản tọa điều giáo dưới, toàn trở thành thiên chi kiêu tử.\r\nThánh Tôn? Ma Đế? Bản tọa nhớ tới tu luyện vạn năm không dễ, thu lại làm canh cổng đệ tử.\r\nThần khí? Chí bảo? Bản tọa đệ tử nhân thủ mấy kiện.\r\nLãnh nhược băng sương? Vũ mị xinh đẹp?\r\nDịu dàng động lòng người? Ngạo kiều mạnh mẽ?\r\nTính cách khác lạ mỹ nữ nhất cái không thể thiếu, tất cả đều là bản tọa nữ... Ân, không sai, là nữ đệ tử.\r\n\"Chúng đệ tử, tùy bản tọa san bằng sơn hà vạn xuyên!\"', '2023-12-18 01:30:55'),
(46, 'uploads/kingdom-vuong-gia-thien-ha_1631766926.jpg', 'Vương Giả Thiên Hạ', 43, 'Trải qua hàng triệu năm kể từ thời đại của các vị thần. Đây là thời mà khát vọng của một người có thể xoay chuyển cả thế giới. Thời đại của hơn 500 năm binh biến: thời Chiến Quốc. Kingdom – Vương Giả Thiên Hạ là câu chuyển kể về một thiếu niên tên Tín cùng những thử thách cam go, những trận chiến đẫm máu mà cậu cần vượt qua để có thể trở thành một vị tướng quân vĩ đại. Tác phẩm đã giành được giải thưởng văn hóa Tezuka Osamu lần thứ 17 vào năm 2013.', '2023-12-18 03:15:56'),
(58, 'uploads/Screenshot 2023-12-19 180721.png', 'Học Viện Anh Hùng', 57, 'asdf', '2023-12-20 07:03:11'),
(63, 'uploads/van-co-toi-cuong-tong_1622612457.jpg', 'asf', 64, 'adf', '2023-12-20 07:18:31'),
(64, 'uploads/841955026435964928.png', 'sdfa', 72, 'asfsafasd', '2023-12-20 08:56:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen_hot`
--

DROP TABLE IF EXISTS `truyen_hot`;
CREATE TABLE IF NOT EXISTS `truyen_hot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `truyen_id` int DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `truyen_id` (`truyen_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen_hot`
--

INSERT INTO `truyen_hot` (`id`, `truyen_id`, `start_date`, `end_date`) VALUES
(1, 22, NULL, NULL),
(2, 1, NULL, NULL),
(3, 26, NULL, NULL),
(4, 27, NULL, NULL),
(5, 23, NULL, NULL),
(6, 25, NULL, NULL),
(7, 28, NULL, NULL),
(8, 30, NULL, NULL),
(9, 31, NULL, NULL),
(10, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen_theloai`
--

DROP TABLE IF EXISTS `truyen_theloai`;
CREATE TABLE IF NOT EXISTS `truyen_theloai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `truyen_id` int DEFAULT NULL,
  `theloai_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `truyen_id` (`truyen_id`),
  KEY `theloai_id` (`theloai_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen_theloai`
--

INSERT INTO `truyen_theloai` (`id`, `truyen_id`, `theloai_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 11),
(5, 1, 36),
(6, 1, 40),
(40, 2, 1),
(41, 2, 2),
(42, 2, 36),
(43, 2, 40),
(44, 2, 40),
(45, 3, 1),
(46, 3, 12),
(47, 3, 22),
(48, 3, 36),
(49, 3, 40),
(50, 3, 40),
(51, 4, 6),
(52, 4, 22),
(53, 4, 40),
(54, 4, 43),
(55, 4, 43),
(56, 18, 1),
(57, 18, 2),
(58, 18, 6),
(59, 18, 36),
(60, 18, 40),
(71, 20, 1),
(72, 20, 6),
(73, 20, 30),
(74, 20, 31),
(75, 20, 38),
(76, 21, 1),
(77, 21, 2),
(78, 21, 6),
(79, 21, 11),
(80, 21, 12),
(81, 21, 18),
(82, 21, 30),
(83, 22, 1),
(84, 22, 2),
(85, 22, 6),
(86, 22, 12),
(87, 22, 22),
(88, 22, 43),
(89, 23, 11),
(90, 23, 12),
(91, 23, 15),
(92, 23, 30),
(93, 23, 34),
(94, 24, 1),
(95, 24, 4),
(96, 24, 12),
(97, 24, 22),
(98, 24, 43),
(99, 25, 1),
(100, 25, 2),
(101, 25, 4),
(102, 25, 6),
(103, 25, 12),
(104, 25, 22),
(105, 25, 43),
(106, 26, 1),
(107, 26, 12),
(108, 26, 22),
(109, 26, 26),
(110, 26, 36),
(111, 26, 40),
(112, 26, 43),
(113, 27, 1),
(114, 27, 2),
(115, 27, 4),
(116, 27, 22),
(117, 27, 43),
(118, 27, 45),
(126, 29, 1),
(127, 29, 2),
(128, 29, 3),
(129, 29, 6),
(130, 29, 12),
(131, 29, 14),
(132, 29, 18),
(133, 29, 36),
(134, 29, 40),
(135, 30, 1),
(136, 30, 12),
(137, 30, 14),
(138, 30, 22),
(139, 30, 26),
(140, 30, 36),
(141, 30, 40),
(142, 30, 43),
(143, 31, 1),
(144, 31, 12),
(145, 31, 22),
(146, 31, 36),
(147, 31, 40),
(148, 32, 1),
(149, 32, 6),
(150, 32, 12),
(151, 32, 22),
(152, 32, 30),
(153, 32, 40),
(156, 34, 1),
(157, 34, 4),
(158, 34, 11),
(159, 34, 14),
(160, 34, 22),
(161, 34, 40),
(162, 34, 43),
(170, 36, 1),
(171, 36, 6),
(172, 36, 11),
(173, 36, 12),
(174, 36, 26),
(175, 36, 36),
(176, 36, 40),
(180, 38, 1),
(181, 38, 22),
(182, 38, 26),
(183, 38, 43),
(199, 46, 1),
(200, 46, 11),
(201, 46, 24),
(231, 58, 5),
(232, 58, 14),
(240, 63, 26),
(241, 63, 32),
(242, 64, 26),
(243, 64, 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ten`, `email`, `PASSWORD`, `avatar_url`, `created_at`) VALUES
(9, 'hoàng hoang', 'hoangvtpro369@gmail.com', '$2y$10$bWzOUoIKhDpgy7g7Q9rfyOCNw8gN3oV6reVLZX8E04Mjq.QZsiwfy', 'uploads/avatars/avatar_user_9.jpg', '2023-12-15 09:26:05'),
(10, 'việt hoàng ', 'hoangvtpro1@gmail.com', '$2y$10$gBnB2BgdLrzaZaXV3gyNYudzoe.c.56PwkxdbmHnhiu4nNKA.UiC2', 'uploads/avatars/avatar_user_10.PNG', '2023-12-15 11:48:38'),
(14, '', 'hoangvtpro147@gmail.com', '$2y$10$GfD6mhgfVM1EcMl/PZjKFuTx694r8AJxNkL7dHvoeWzr/OW/Hekoa', 'images/noavatar.png', '2023-12-19 03:52:35'),
(15, '', 'hoangvtpro3@gmail.com', '$2y$10$MsbMQwlSkMhMk0aIVQzlyevhl4B4VUr04IBIdfvVoEM8nrXCq1kVS', 'images/noavatar.png', '2023-12-20 06:21:01'),
(16, '', 'hoangvtpro1234@gmail.com', '$2y$10$kM8tNWSJ0fKidC2X.e53DuTig7b9Kz8wXJbbdaxDdUXywpo9VUGca', 'uploads/avatars/avatar_user_16.png', '2023-12-20 07:34:19'),
(20, 'hoàng', 'hoangvtpro4@gmail.com', '$2y$10$Nu71jnndHT3OekzeNqxgt.kJDmN40w7qHB0tzaR.PzADyJx3fT/OK', 'uploads/avatars/avatar_user_20.png', '2023-12-26 03:20:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `views`
--

DROP TABLE IF EXISTS `views`;
CREATE TABLE IF NOT EXISTS `views` (
  `id` int NOT NULL AUTO_INCREMENT,
  `truyen_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `truyen_id` (`truyen_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chuong`
--
ALTER TABLE `chuong`
  ADD CONSTRAINT `fk_chuong_truyen` FOREIGN KEY (`truyen_id`) REFERENCES `truyen` (`id`);

--
-- Các ràng buộc cho bảng `theodoi`
--
ALTER TABLE `theodoi`
  ADD CONSTRAINT `fk_theodoi_truyen` FOREIGN KEY (`truyen_id`) REFERENCES `truyen` (`id`),
  ADD CONSTRAINT `fk_theodoi_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `truyen`
--
ALTER TABLE `truyen`
  ADD CONSTRAINT `fk_truyen_tacgia` FOREIGN KEY (`tacgia_id`) REFERENCES `tacgia` (`id`);

--
-- Các ràng buộc cho bảng `truyen_theloai`
--
ALTER TABLE `truyen_theloai`
  ADD CONSTRAINT `fk_truyen_theloai_theloai` FOREIGN KEY (`theloai_id`) REFERENCES `theloai` (`id`),
  ADD CONSTRAINT `fk_truyen_theloai_truyen` FOREIGN KEY (`truyen_id`) REFERENCES `truyen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
