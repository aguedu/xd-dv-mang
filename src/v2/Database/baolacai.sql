-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2019 at 10:26 AM
-- Server version: 5.7.25
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baolacai`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `ID` int(11) NOT NULL,
  `IDChuDe` int(10) NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci,
  `HinhAnh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `baiviet`
--

INSERT INTO `baiviet` (`ID`, `IDChuDe`, `TieuDe`, `TomTat`, `NoiDung`, `HinhAnh`) VALUES
(36, 5, 'Khoa Công nghệ thông tin tăng cường hợp tác với Công ty TMA Solutions', '<p>Vừa qua, 60 sinh vi&ecirc;n Khoa C&ocirc;ng nghệ th&ocirc;ng tin &ndash; Trường Đại học An Giang đ&atilde; c&oacute; chuyến tham quan, trải nghiệm m&ocirc;i trường l&agrave;m việc tại C&ocirc;ng ty TMA Solutions, Tp.HCM. Chuyến đi nhằm gi&uacute;p sinh vi&ecirc;n của khoa c&oacute; cơ hội học tập thực tế v&agrave; định hướng r&otilde; r&agrave;ng nghề nghiệp trong tương lai.</p>\r\n', '<p>Chuyến thực tế nằm trong chương tr&igrave;nh hợp t&aacute;c giữa Khoa C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; c&aacute;c doanh nghiệp C&ocirc;ng nghệ th&ocirc;ng tin h&agrave;ng đầu tại Tp.HCM, trong đ&oacute; c&oacute; c&ocirc;ng ty TMA Solutions. Đ&acirc;y cũng l&agrave; một trong nhiều hoạt động đẩy mạnh hợp t&aacute;c, tư vấn giới thiệu việc l&agrave;m, kết nối giữa sinh vi&ecirc;n với doanh nghiệp được Khoa t&iacute;ch cực thực hiện trong thời gian qua.</p>\r\n\r\n<p>C&ocirc;ng ty TMA Solutions l&agrave; c&ocirc;ng ty chuy&ecirc;n ph&aacute;t triển phần mềm, được th&agrave;nh lập năm 1997 v&agrave; hiện nay l&agrave; c&ocirc;ng ty phần mềm h&agrave;ng đầu Việt Nam với 15 năm li&ecirc;n tiếp (2004-2018) đạt huy chương v&agrave;ng xuất khẩu phần mềm, c&oacute; hơn 2400 kỹ sư đang l&agrave;m việc. Ngo&agrave;i Việt Nam, c&ocirc;ng ty c&ograve;n c&oacute; trụ sở tại c&aacute;c nước như: Canada, Hoa Kỳ, Ireland, &Uacute;c.</p>\r\n\r\n<p>Tham dự chương tr&igrave;nh, c&aacute;c bạn sinh vi&ecirc;n được &ocirc;ng B&ugrave;i Quốc Th&aacute;i &ndash; Gi&aacute;m đốc Dự &aacute;n v&agrave; b&agrave; B&ugrave;i B&iacute;ch Thị Quỳnh Trang &ndash; Trưởng bộ phận Đ&agrave;o tạo chia sẻ, cung cấp th&ocirc;ng tin về C&ocirc;ng ty; về m&ocirc;i trường, văn h&oacute;a l&agrave;m việc tại TMA cũng như c&aacute;c chương tr&igrave;nh tuyển dụng thực tập v&agrave; việc l&agrave;m. Đặc biệt, c&aacute;c bạn được tham quan, kh&aacute;m ph&aacute; kh&ocirc;ng gian l&agrave;m việc hiện đại, chuy&ecirc;n nghiệp v&agrave; năng động tại TMA Solutions, trải nghiệm v&agrave; giao lưu trực tiếp với c&aacute;c anh chị lập tr&igrave;nh vi&ecirc;n về c&aacute;c lĩnh vực như IoT, Blockchain, Điện to&aacute;n đ&aacute;m m&acirc;y, Robot,&hellip;</p>\r\n\r\n<p>Hiện tại, tại TMA c&oacute; hơn 20 bạn l&agrave; cựu sinh vi&ecirc;n Khoa CNTT &ndash; Trường ĐHAG đang l&agrave;m việc. Trong phần giao lưu, c&aacute;c bạn trong đo&agrave;n thực tế c&ograve;n được kết nối trực tiếp (video call) với 2 cựu sinh vi&ecirc;n của Khoa đang được cử c&ocirc;ng t&aacute;c d&agrave;i hạn tại Th&aacute;i Lan.</p>\r\n\r\n<p>Song song hoạt động tham quan, bộ phận tuyển dụng đ&atilde; tiến h&agrave;nh phỏng vấn trực tiếp 16 bạn sinh vi&ecirc;n năm 3, năm 4 của Khoa. Được biết th&ecirc;m, trong ch&iacute;nh s&aacute;ch tuyển dụng của C&ocirc;ng ty TMA l&agrave; ch&agrave;o đ&oacute;n cả sinh vi&ecirc;n mới ra trường, đảm bảo được kiến thức chuy&ecirc;n m&ocirc;n cơ bản v&agrave; c&oacute; tinh thần cầu tiến, ham học hỏi. Đ&acirc;y ch&iacute;nh l&agrave; cơ hội để c&aacute;c bạn t&igrave;m kiếm việc l&agrave;m, ph&aacute;t huy khả năng ngay khi vừa mới bước ch&acirc;n ra khỏi ghế nh&agrave; trường.</p>\r\n\r\n<p>Với mong muốn mang đến trải nghiệm thực tế, cơ hội học tập trực quan, t&igrave;m hiểu m&ocirc;i trường chuy&ecirc;n nghiệp Khoa CNTT đ&atilde; v&agrave; đang t&igrave;m kiếm nhiều hơn những cơ hội hợp t&aacute;c với c&aacute;c doanh nghiệp h&agrave;ng đầu về CNTT hiện nay. Vừa l&agrave; khuyến kh&iacute;ch sinh vi&ecirc;n học tập, tăng cơ hội việc l&agrave;m ph&ugrave; hợp chuy&ecirc;n ng&agrave;nh v&agrave; cũng l&agrave; để Khoa c&oacute; những đ&aacute;nh gi&aacute; kh&aacute;ch quan về chương tr&igrave;nh đ&agrave;o tạo của m&igrave;nh.</p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/18.jpg\" />To&agrave;n cảnh buổi chia sẻ, giao lưu</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/6.jpg\" />&Ocirc;ng B&ugrave;i Quốc Th&aacute;i &ndash; Gi&aacute;m đốc dự &aacute;n giới thiệu về c&ocirc;ng ty</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/7.jpg\" />B&agrave; B&ugrave;i B&iacute;ch Thị Quỳnh Trang &ndash; Trưởng bộ phận Đ&agrave;o tạo giới thiệu về m&ocirc;i trường l&agrave;m việc tại TMA</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/3.jpg\" /></em></p>\r\n\r\n<p><em>Sinh vi&ecirc;n đặt c&acirc;u hỏi với đại diện c&ocirc;ng ty</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/9.jpg\" /></em></p>\r\n\r\n<p><em>C&aacute;c anh chị cựu sinh vi&ecirc;n AGU tại TMA giao lưu c&ugrave;ng c&aacute;c bạn</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/10.jpg\" /></em></p>\r\n\r\n<p><em>C&aacute;c anh chị cựu sinh vi&ecirc;n AGU tại TMA giao lưu c&ugrave;ng c&aacute;c bạn</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/11.jpg\" /></em></p>\r\n\r\n<p><em>C&aacute;c bạn sinh vi&ecirc;n tham quan trực tiếp c&aacute;c ph&ograve;ng l&agrave;m việc v&agrave; dự &aacute;n của C&ocirc;ng ty</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/13.jpg\" /></em></p>\r\n\r\n<p><em>C&aacute;c bạn sinh vi&ecirc;n nghe tr&igrave;nh b&agrave;y về dự &aacute;n IoT v&agrave; c&aacute;c ứng dụng thực tế</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/16.jpg\" />Đại diện Khoa trao v&agrave; nhận qu&agrave; tặng lưu niệm từ c&ocirc;ng ty</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/17.jpg\" />Giảng vi&ecirc;n khoa CNTT v&agrave; đại diện c&ocirc;ng ty chụp ảnh lưu niệm</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/TMA/1.jpg\" />Sinh vi&ecirc;n chụp ảnh lưu niệm trước trụ sở c&ocirc;ng ty TMA</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khoa CNTT</p>\r\n', '17.jpg'),
(37, 5, 'Lễ công bố quyết định bổ nhiệm Phó Hiệu trưởng Trường Phổ thông Thực hành Sư phạm', '<p>S&aacute;ng 02/12/2019, Trường Phổ th&ocirc;ng Thực h&agrave;nh Sư phạm (PTTHSP) đ&atilde; long trọng tổ chức lễ c&ocirc;ng bố quyết định bổ nhiệm Ph&oacute; Hiệu trưởng nh&agrave; trường đối với ThS Dương Ph&uacute; Điền.</p>\r\n', '<p>Đến tham dự buổi lễ n&agrave;y, về ph&iacute;a Trường Đại học An Giang c&oacute; PGS.TS Trần Văn Đạt &ndash; Ph&oacute; Hiệu trưởng Trường Đại học An Giang, ThS Phan Minh Tr&iacute; &ndash; Ph&oacute; Trưởng ph&ograve;ng Tổ chức &ndash; Ch&iacute;nh trị; về ph&iacute;a Trường PTTHSP c&oacute; c&ocirc; Nguyễn Thị Ngọc Thơ - Hiệu trưởng, thầy L&ecirc; Văn Điền &ndash; Ph&oacute; Hiệu trưởng c&ugrave;ng to&agrave;n thể c&aacute;n bộ - gi&aacute;o vi&ecirc;n &ndash; nh&acirc;n vi&ecirc;n v&agrave; học sinh của trường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/PTTHSP-PhoHT/NR4A1564.JPG\" /></p>\r\n\r\n<p><em>ThS Phan Minh Tr&iacute; &ndash; Ph&oacute; Trưởng ph&ograve;ng Tổ chức &ndash; Ch&iacute;nh trị đ&atilde; c&ocirc;ng bố quyết định bổ nhiệm ThS Dương Ph&uacute; Điền giữ chức Ph&oacute; Hiệu trưởng trường PTTHSP</em></p>\r\n\r\n<p>Tại buổi lễ, ThS Phan Minh Tr&iacute; &ndash; Ph&oacute; Trưởng ph&ograve;ng Tổ chức &ndash; Ch&iacute;nh trị đ&atilde; c&ocirc;ng bố quyết định bổ nhiệm ThS Dương Ph&uacute; Điền giữ chức Ph&oacute; Hiệu trưởng trường PTTHSP. Tiếp đ&oacute;, PGS.TS Trần Văn Đạt &ndash; Ph&oacute; Hiệu trưởng Trường Đại học An Giang đ&atilde; trao Quyết định bổ nhiệm cho t&acirc;n Ph&oacute; Hiệu trưởng v&agrave; mong rằng thầy Dương Ph&uacute; Điền sẽ kế tục xuất sắc những th&agrave;nh tựu m&agrave; Trường Phổ th&ocirc;ng Thực h&agrave;nh Sư phạm đ&atilde; đạt được.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&ocirc; Nguyễn Thị Ngọc Thơ - Hiệu trưởng nh&agrave; trường đ&atilde; thay mặt to&agrave;n thể c&aacute;n bộ - gi&aacute;o vi&ecirc;n &ndash; nh&acirc;n vi&ecirc;n v&agrave; học sinh của trường tặng hoa ch&uacute;c mừng thầy Dương Ph&uacute; Điền.</p>\r\n\r\n<p><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/PTTHSP-PhoHT/NR4A1567.JPG\" /></p>\r\n\r\n<p><em>PGS.TS Trần Văn Đạt &ndash; Ph&oacute; Hiệu trưởng Trường Đại học An Giang đ&atilde; trao Quyết định bổ nhiệm cho t&acirc;n Ph&oacute; Hiệu trưởng ThS Dương Ph&uacute; Điền&nbsp;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><img alt=\"\" src=\"http://enews.agu.edu.vn/images/assets/2019/12/bantin/PTTHSP-PhoHT/NR4A1570.JPG\" /></em></p>\r\n\r\n<p><em>C&ocirc; Nguyễn Thị Ngọc Thơ - Hiệu trưởng nh&agrave; trường tặng hoa ch&uacute;c mừng thầy Dương Ph&uacute; Điền</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>T&iacute;nh đến thời điểm hiện tại, Ban Gi&aacute;m hiệu trường PTTHSP gồm c&oacute; c&ocirc; Nguyễn Thị Ngọc Thơ l&agrave; Hiệu trưởng, thầy L&ecirc; Văn Điền v&agrave; thầy Dương Ph&uacute; Điền giữ cương vị Ph&oacute; Hiệu trưởng. Năm học n&agrave;y, nh&agrave; trường c&oacute; tổng số 72 lớp v&agrave; bộ phận b&aacute;n tr&uacute;. Nh&agrave; trường hoạt động đạt hiệu quả cao, chất lượng giảng dạy v&agrave; gi&aacute;o dục đi v&agrave;o chiều s&acirc;u. B&ecirc;n cạnh giảng dạy kiến thức v&agrave; r&egrave;n luyện đạo đức cho học sinh, nh&agrave; trường c&ograve;n ch&uacute; trọng tạo m&ocirc;i trường r&egrave;n luyện thể dục thể thao v&agrave; tổ chức nhiều s&acirc;n chơi l&agrave;nh mạnh kh&aacute;c để c&aacute;c em được trang bị c&aacute;c kĩ năng sống cần thiết, đ&agrave;o tạo một thế hệ học sinh vừa giỏi kiến thức vừa năng động.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ch&acirc;u Tr&acirc;n &ndash; GV Trường PTTH Sư phạm</p>\r\n', 'NR4A1570.jpg'),
(38, 14, 'SEA Games 30: Tú Chinh vượt 2 đối thủ nhập tịch, giành HCV 100 m', '<p>L&ecirc; T&uacute; Chinh xuất sắc vượt qua 2 đối thủ nhập tịch đến từ Philippines để gi&agrave;nh tấm HCV nội dung 100 m nữ với th&agrave;nh t&iacute;ch 11 gi&acirc;y 54, hơn người về nh&igrave; đ&uacute;ng 1% gi&acirc;y.</p>\r\n', '<p><strong>Danh s&aacute;ch VĐV gi&agrave;nh huy chương ng&agrave;y 8/12</strong></p>\r\n\r\n<p><strong><em>- HCV</em></strong></p>\r\n\r\n<p>Phạm Thị Thu Trang (điền kinh, đi bộ 10 km nữ)</p>\r\n\r\n<p>Phạm Thị Huệ (điền kinh, chạy 10.000 m nữ)</p>\r\n\r\n<p>Đỗ Thị &Aacute;nh Nguyệt, Lộc Thị Đ&agrave;o, Nguyễn Thị Phương (bắn cung, cung 1 d&acirc;y đồng đội nữ)</p>\r\n\r\n<p>Nguyễn Ho&agrave;ng Phi Vũ - Lộc Thị Đ&agrave;o (bắn cung, cung 1 d&acirc;y đ&ocirc;i nam nữ)</p>\r\n\r\n<p>Lộc Thị Đ&agrave;o (bắn cung, cung 1 d&acirc;y c&aacute; nh&acirc;n nữ)</p>\r\n\r\n<p>Nguyễn Thanh Duy (karate, kumite dưới 60 kg nam)</p>\r\n\r\n<p>Nguyễn Thị Phương, Lưu Thị Thu Uy&ecirc;n, L&ecirc; Thị Kh&aacute;nh Vy (karate, kata đồng đội nữ)</p>\r\n\r\n<p>Ng&ocirc; Đ&igrave;nh Nại (billiards, carom 1 băng)</p>\r\n\r\n<p>B&ugrave;i Yến Ly (muay, 54 kg nữ)</p>\r\n\r\n<p>Nguyễn Phước Đến, Nguyễn Tiến Nhật, Trương Trần Nhật Minh v&agrave; Đặng Anh Tuấn (đấu kiếm, kiếm 3 cạnh đồng đội nam)</p>\r\n\r\n<p>Nguyễn Thị Oanh (điền kinh, 1.500 m nữ)</p>\r\n\r\n<p>Dương Văn Th&aacute;i ( điền kinh, 1.500 m nam)</p>\r\n\r\n<p>L&ecirc; T&uacute; Chinh (điền kinh, 100 m nữ)</p>\r\n\r\n<p><em><strong>- HCB</strong></em></p>\r\n\r\n<p>Phạm Thị Hồng Lệ (điền kinh, chạy 10.000 m nữ)</p>\r\n\r\n<p>L&ecirc; Thị Hiền - Phạm Thị Huệ (rowing, thuyền đ&ocirc;i nữ)</p>\r\n\r\n<p>Nguyễn Văn H&agrave; - Như Đ&igrave;nh Nam (rowing, thuyền đ&ocirc;i nam hạng nhẹ 2 m&aacute;i ch&egrave;o)</p>\r\n\r\n<p>Phạm Cảnh Ph&uacute;c (billiards, carom 1 băng)</p>\r\n\r\n<p>B&ugrave;i Thu H&agrave;, Ph&ugrave;ng Kh&aacute;nh Ly, L&ecirc; Minh Hằng, Đỗ Thị T&acirc;m (đấu kiếm, kiếm ch&eacute;m đồng đội nữ)</p>\r\n\r\n<p>L&ecirc; Quang Li&ecirc;m (cờ vua, cờ chớp nam)</p>\r\n\r\n<p>Nguyễn Do&atilde;n Long (muay, 57 kg nam)</p>\r\n\r\n<p><strong><em>- HCĐ</em></strong></p>\r\n\r\n<p>L&ecirc; Ho&agrave;ng Đức (muay, 45 kg nam)</p>\r\n\r\n<p>L&ecirc; Tuấn Minh (cơ vua, cờ chớp nam)</p>\r\n\r\n<p>Ho&agrave;ng Thị Bảo Tr&acirc;m (cờ vua, cờ chớp nữ)</p>\r\n\r\n<p>Khuất Phương Anh (điền kinh, 1.500 m nữ)</p>\r\n\r\n<p>Đặng Hồng Sơn (karate, 67 kg nam)</p>\r\n\r\n<p>Trang Cẩm L&agrave;nh (karate, 55 kg nữ)</p>\r\n\r\n<p>Hồ Thị Thu Hiền (karate, 61 kg nữ)</p>\r\n\r\n<p>Vũ Thị Mộng Mơ (điền kinh, nhảy xa nữ)</p>\r\n\r\n<ul>\r\n	<li>Trong ng&agrave;y thi đấu 7/12, Đo&agrave;n thể thao Việt Nam gi&agrave;nh được&nbsp;<strong>8 HCV, 9 HCB v&agrave; 11 HCĐ</strong>,&nbsp;qua đ&oacute; n&acirc;ng tổng số huy chương l&ecirc;n th&agrave;nh&nbsp;<strong>46 HCV, 50 HCB v&agrave; 64 HCĐ</strong>, xếp&nbsp;<strong>thứ 3</strong>&nbsp;sau Indonesia v&agrave; Philippines. Mục ti&ecirc;u của đo&agrave;n l&agrave;&nbsp;<strong>gi&agrave;nh &iacute;t nhất 65 HCV,</strong>&nbsp;trong t<strong>op 3 dẫn đầu</strong>.</li>\r\n	<li>Ng&agrave;y 8/12, c&aacute;c VĐV Việt Nam tranh t&agrave;i ở&nbsp; 21 m&ocirc;n thi đấu, trong đ&oacute;, niềm hy vọng v&agrave;ng đến từ&nbsp;<strong>điền kinh, bơi, b&oacute;ng đ&aacute; nữ, rowing, bắn cung v&agrave; cờ vua.</strong></li>\r\n	<li>Điền kinh: Nguyễn Thị Huyền, Qu&aacute;ch Thị Lan, L&ecirc; T&uacute; Chinh, Dương Văn Th&aacute;i, Phạm Thị Huệ</li>\r\n	<li>Bơi: Nguyễn Thị &Aacute;nh Vi&ecirc;n, Nguyễn Hữu Kim Sơn, Trần Hưng Nguy&ecirc;n, Phạm Thanh Bảo, L&ecirc; Nguyễn Paul, Ho&agrave;ng Qu&yacute; Phước.</li>\r\n	<li>Cờ vua: L&ecirc; Quang Li&ecirc;m, V&otilde; Kim Phụng, Bảo Tr&acirc;m</li>\r\n	<li><strong><a href=\"https://news.zing.vn/bang-tong-sap-huy-chuong-sea-games-30-doan-viet-nam-co-them-2-hcv-post1022769.html\" target=\"_blank\">Bảng tổng sắp huy chương t&iacute;nh đến 11h30 ng&agrave;y 8/12</a></strong></li>\r\n	<li><strong><a href=\"https://news.zing.vn/lich-thi-dau-chung-ket-bong-da-nu-sea-games-30-viet-nam-gap-thai-lan-post1022759.html\" target=\"_blank\">Lịch thi đấu Đo&agrave;n thể thao Việt Nam ng&agrave;y 8/12.</a></strong></li>\r\n</ul>\r\n\r\n<p><strong><a href=\"https://news.zing.vn/video-le-tu-chinh-ky-vong-vang-cua-dien-kinh-viet-post1022580.html\" target=\"_blank\">L&ecirc; T&uacute; Chinh &ndash; kỳ vọng v&agrave;ng của điền kinh Việt</a></strong>&nbsp;L&ecirc; T&uacute; Chinh từng c&oacute; th&agrave;nh t&iacute;ch rực rỡ tại SEA Games 29 ở Malaysia, c&ocirc; l&agrave; một trong những VĐV điền kinh được kỳ vọng nhất năm nay tại Philippines.</p>\r\n', '2019-12-08_171402.png'),
(39, 14, 'Bùi Tiến Dũng cảm ơn CĐV sau khi U22 Việt Nam vào chung kết', '<p>Thủ m&ocirc;n B&ugrave;i Tiến Dũng c&oacute; lời cảm ơn đến người h&acirc;m mộ sau khi U22 Việt Nam gi&agrave;nh chiến thắng thuyết phục 4-0 trước Campuchia ở b&aacute;n kết SEA Games 30 diễn ra tối 7/12.</p>\r\n', '<p>Trận b&aacute;n kết b&oacute;ng đ&aacute; nam SEA Games 30 giữa U22 Việt Nam với Campuchia kết th&uacute;c với chiến thắng đậm thuộc về thầy tr&ograve; huấn luyện vi&ecirc;n Park Hang-seo. Với kết quả n&agrave;y, U22 Việt Nam bước tiếp v&agrave;o chung kết gặp Indonesia.&nbsp;</p>\r\n\r\n<p>Nhiều cầu thủ l&ecirc;n tiếng cảm ơn đồng đội, kh&aacute;n giả tr&ecirc;n trang c&aacute; nh&acirc;n, trong đ&oacute; c&oacute; thủ th&agrave;nh B&ugrave;i Tiến Dũng. Anh kh&ocirc;ng g&oacute;p mặt trong đội h&igrave;nh thi đấu, m&agrave; dự bị cho thủ m&ocirc;n Văn Toản.&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Bui Tien Dung cam on CDV sau khi U22 Viet Nam vao chung ket hinh anh 1 \" src=\"https://znews-photo.zadn.vn/w660/Uploaded/ofh_nuottuqz/2019_12_07/ct.jpg\" style=\"height:527px; width:1064px\" /></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&ugrave;i Tiến Dũng đăng ảnh c&ugrave;ng đồng đội k&egrave;m theo lời cảm ơn tr&ecirc;n trang c&aacute; nh&acirc;n.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Thủ m&ocirc;n của CLB H&agrave; Nội viết: &quot;Xin cảm ơn mọi người. Ch&uacute;ng t&ocirc;i ở đ&acirc;y để c&ugrave;ng tạo n&ecirc;n tập thể đo&agrave;n kết, ai cũng được v&igrave; c&aacute;i chung, một mục ti&ecirc;u chung. Tất cả như một&quot;.&nbsp;</p>\r\n\r\n<p>D&ograve;ng trạng th&aacute;i n&agrave;y nhanh ch&oacute;ng nhận được hơn 50.000 lượt cảm x&uacute;c, 320 lượt chia sẻ c&ugrave;ng gần 2.000 b&igrave;nh luận. Ngay ph&iacute;a dưới b&agrave;i viết, &quot;người h&ugrave;ng&quot;&nbsp;<a href=\"https://news.zing.vn/tieu-diem/ha-duc-chinh.html\">H&agrave; Đức Chinh</a>&nbsp;h&oacute;m hỉnh đăng k&eacute; bức h&igrave;nh của m&igrave;nh.&nbsp;</p>\r\n\r\n<p>Nhiều cổ động vi&ecirc;n cũng d&agrave;nh lời ch&uacute;c đến ch&agrave;ng thủ m&ocirc;n c&ugrave;ng đội tuyển U22 b&ecirc;n dưới b&agrave;i đăng. &quot;Ch&uacute;c mừng em v&agrave; to&agrave;n đội nh&eacute; B&ugrave;i Tiến Dũng!&nbsp;Chờ huy chương v&agrave;ng c&aacute;c em mang về. Việt Nam v&ocirc; địch!&quot;, t&agrave;i khoản&nbsp;<em>Tran Ngoc Tiep</em>&nbsp;ch&uacute;c mừng.&nbsp;</p>\r\n\r\n<p>L&uacute;c 19h ng&agrave;y 10/12, trận chung kết giữa đội tuyển U22 Việt Nam v&agrave; Indonesia sẽ diễn ra tr&ecirc;n s&acirc;n vận động Rizal Memorial. Người h&acirc;m mộ đang đặt niềm tin gi&agrave;nh HCV v&agrave;o thầy tr&ograve; huấn luyện vi&ecirc;n Park Hang-seo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://news.zing.vn/video-cdv-han-quoc-ong-park-la-so-1-va-viet-nam-chien-thang-post1021607.html\" target=\"_blank\">CĐV H&agrave;n Quốc: &#39;&Ocirc;ng Park l&agrave; số 1 v&agrave; Việt Nam chiến thắng&#39;</a></strong>&nbsp;&Ocirc;ng Tiger Park, một HLV Taekwondo đang l&agrave;m việc ở Việt Nam đ&atilde; qua Philippines cỗ vũ U22 Việt Nam. &Ocirc;ng cho biết, người H&agrave;n y&ecirc;u th&iacute;ch &ocirc;ng Park v&agrave; tin Việt Nam chiến thắng.</p>\r\n', 'ff65b2ae4deea4b0fdff.jpg'),
(40, 13, 'Tổng thống Ukraine triệu tập cuộc họp quan trọng trước thềm gặp Tổng thống Nga', '<p>(PLVN) -&nbsp;Ng&agrave;y 7/12, Hội đồng An ninh v&agrave; Quốc ph&ograve;ng Ukraine đ&atilde; tiến h&agrave;nh một cuộc họp dưới sự chủ tr&igrave; của Tổng thống Volodymyr Zelensky.</p>\r\n', '<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Tổng thống Ukraine triệu tập cuộc họp quan trọng trước thềm gặp Tổng thống Nga \" src=\"https://image.baophapluat.vn/w800/Uploaded/2019/qjcqrmdwp/2019_12_08/1_taeu_thumb.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>H&igrave;nh ảnh tại cuộc họp</p>\r\n\r\n<p>Theo tờ Ukrinform, cuộc họp diễn ra chỉ &iacute;t ng&agrave;y trước Hội nghị thượng đỉnh Bộ tứ Normandy c&oacute; sự tham gia của l&atilde;nh đạo Ukraine, Nga, Ph&aacute;p v&agrave; Đức.</p>\r\n\r\n<p>&ldquo;Tổng thống Ukraine Volodymyr Zelensky đ&atilde; triệu tập một cuộc họp của Hội đồng Quốc ph&ograve;ng v&agrave; An ninh Quốc gia trước thềm cuộc họp Bộ tứ Normandy&rdquo;, bộ phận b&aacute;o ch&iacute; của văn ph&ograve;ng Tổng thống Ukraine đưa tin.</p>\r\n\r\n<p>Theo th&ocirc;ng tin từ Tổng thống Ukraine cuộc họp k&iacute;n của Hội đồng An ninh v&agrave; Quốc ph&ograve;ng Ukraine được tổ chức tại Văn ph&ograve;ng Tổng thống với sự tham gia của tất cả c&aacute;c th&agrave;nh vi&ecirc;n Hội đồng.</p>\r\n\r\n<p>C&aacute;c nh&agrave; l&atilde;nh đạo của Ukraine, Nga, Ph&aacute;p v&agrave; Đức sẽ gặp nhau tại Paris, Ph&aacute;p v&agrave;o ng&agrave;y 9/12 tới.</p>\r\n\r\n<p>Ngo&agrave;i ra, &ocirc;ng Zelensky cũng đ&atilde; x&aacute;c nhận sẽ c&oacute; cuộc gặp song phương với Tổng thống Nga Vladimir Putin tại Paris.</p>\r\n\r\n<p>Hội nghị thượng đỉnh Bộ tứ Normandy gần đ&acirc;y nhất được tổ chức tại Berlin, Đức v&agrave;o th&aacute;ng 10/2016.&nbsp;</p>\r\n\r\n<p>Những người tham gia cuộc họp sau đ&oacute; thừa nhận cuộc họp đ&atilde; kh&ocirc;ng đưa đến đột ph&aacute; n&agrave;o trong việc giải quyết cuộc xung đột ở Donbas.</p>\r\n\r\n<p>H&agrave; Dung</p>\r\n', '89d84a13b5535c0d0542.jpg'),
(41, 5, 'Trao bằng tốt nghiệp cho 81 tân cử nhân ngành Luật, Ngôn ngữ Anh ', '<p>(CT)- Ng&agrave;y 8-12, Trường Đại học (ĐH) Kỹ thuật - C&ocirc;ng nghệ Cần Thơ phối hợp Trường ĐH Cần Thơ tổ chức lễ trao bằng tốt nghiệp đại học văn bằng 2 hệ vừa l&agrave;m vừa học kh&oacute;a 2016-2019. C&oacute; 81 t&acirc;n cử nh&acirc;n nhận bằng tốt nghiệp ở 2 ng&agrave;nh: Luật v&agrave; Ng&ocirc;n ngữ Anh. Trong đ&oacute;, c&oacute; 7% sinh vi&ecirc;n tốt nghiệp đạt loại Xuất sắc, Giỏi l&agrave; 26% v&agrave; 53% loại Kh&aacute;.</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://baocantho.com.vn/image/fckeditor/upload/2019/20191208/images/image001.gif\" /></p>\r\n\r\n<p><em>PGS.TS Huỳnh Thanh Nh&atilde; (thứ 3 từ tr&aacute;i qua), Hiệu trưởng Trường ĐH Kỹ thuật - C&ocirc;ng nghệ Cần Thơ v&agrave; PGS.TS L&ecirc; Việt Dũng, Ph&oacute; Hiệu trưởng Trường ĐH Cần Thơ, khen thưởng cho t&acirc;n khoa tốt nghiệp đạt loại Xuất sắc.</em></p>\r\n\r\n<p>(CT)- Ng&agrave;y 8-12, Trường Đại học (ĐH) Kỹ thuật - C&ocirc;ng nghệ Cần Thơ phối hợp Trường ĐH Cần Thơ tổ chức lễ trao bằng tốt nghiệp đại học văn bằng 2 hệ vừa l&agrave;m vừa học kh&oacute;a 2016-2019. C&oacute; 81 t&acirc;n cử nh&acirc;n nhận bằng tốt nghiệp ở 2 ng&agrave;nh: Luật v&agrave; Ng&ocirc;n ngữ Anh. Trong đ&oacute;, c&oacute; 7% sinh vi&ecirc;n tốt nghiệp đạt loại Xuất sắc, Giỏi l&agrave; 26% v&agrave; 53% loại Kh&aacute;.</p>\r\n\r\n<p>Nhiều năm qua, Trường ĐH Kỹ thuật - C&ocirc;ng nghệ Cần Thơ (trước đ&acirc;y l&agrave; Trung t&acirc;m ĐH Tại chức Cần Thơ) đ&atilde; li&ecirc;n kết với Trường ĐH Cần Thơ đ&agrave;o tạo 19 chuy&ecirc;n ng&agrave;nh tr&igrave;nh độ đại học, với 9.426 sinh vi&ecirc;n tốt nghiệp ra trường (trong đ&oacute; c&oacute; kh&oacute;a đ&agrave;o tạo đại học văn bằng 2); qua đ&oacute; đ&atilde; g&oacute;p phần cung cấp nguồn nh&acirc;n lực tr&igrave;nh độ cao phục vụ ph&aacute;t triển kinh tế - x&atilde; hội của th&agrave;nh phố v&agrave; ĐBSCL.</p>\r\n\r\n<p>Tin, ảnh: B.NG</p>\r\n', 'image001.gif');

-- --------------------------------------------------------

--
-- Table structure for table `chude`
--

CREATE TABLE `chude` (
  `ID` int(11) NOT NULL,
  `TenLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chude`
--

INSERT INTO `chude` (`ID`, `TenLoai`) VALUES
(1, 'Cười'),
(2, 'Đời sống'),
(3, 'Du lịch'),
(4, 'Giải trí'),
(5, 'Giáo dục'),
(6, 'Góc nhìn'),
(7, 'Khoa học'),
(8, 'Kinh doanh'),
(9, 'Pháp luật'),
(10, 'Số hóa'),
(11, 'Sức khỏe'),
(12, 'Tâm sự'),
(13, 'Thế giới'),
(14, 'Thể thao'),
(15, 'Thời sự'),
(16, 'Video'),
(17, 'Xe'),
(18, 'Ý kiến');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyenhan` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `quyenhan`) VALUES
(1, 'Quản trị viên', 'admin', '123456', 2),
(2, 'Người Dùng', 'user', '123456', 1),
(8, 'Huynh Phuc Lam Truong Anh', '123', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `chude`
--
ALTER TABLE `chude`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
