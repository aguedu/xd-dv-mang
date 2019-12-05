-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 11, 2019 at 04:15 AM
-- Server version: 5.7.23
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trangtin`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `ID` int(10) NOT NULL,
  `MaChuDe` int(10) NOT NULL,
  `MaNguoiDung` int(10) NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayDang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LuotXem` int(10) NOT NULL DEFAULT '0',
  `KiemDuyet` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chude`
--

CREATE TABLE `tbl_chude` (
  `ID` int(10) NOT NULL,
  `TenChuDe` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_chude`
--

INSERT INTO `tbl_chude` (`ID`, `TenChuDe`) VALUES
(1, 'Cười'),
(3, 'Du lịch'),
(2, 'Đời sống'),
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
-- Table structure for table `tbl_nguoidung`
--

CREATE TABLE `tbl_nguoidung` (
  `ID` int(10) NOT NULL,
  `HoVaTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `QuyenHan` tinyint(1) NOT NULL DEFAULT '2',
  `Khoa` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_nguoidung`
--

INSERT INTO `tbl_nguoidung` (`ID`, `HoVaTen`, `TenDangNhap`, `MatKhau`, `QuyenHan`, `Khoa`) VALUES
(1, 'Quản Trị Viên', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 0),
(2, 'Thành Viên', 'user', 'e10adc3949ba59abbe56e057f20f883e', 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaChuDe` (`MaChuDe`),
  ADD KEY `MaNguoiDung` (`MaNguoiDung`);

--
-- Indexes for table `tbl_chude`
--
ALTER TABLE `tbl_chude`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TenChuDe` (`TenChuDe`);

--
-- Indexes for table `tbl_nguoidung`
--
ALTER TABLE `tbl_nguoidung`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TenDangNhap` (`TenDangNhap`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_chude`
--
ALTER TABLE `tbl_chude`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_nguoidung`
--
ALTER TABLE `tbl_nguoidung`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD CONSTRAINT `tbl_baiviet_ibfk_1` FOREIGN KEY (`MaChuDe`) REFERENCES `tbl_chude` (`ID`),
  ADD CONSTRAINT `tbl_baiviet_ibfk_2` FOREIGN KEY (`MaNguoiDung`) REFERENCES `tbl_nguoidung` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
