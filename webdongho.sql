-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2024 at 05:19 PM
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
-- Database: `shoplaptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nguoidung`
--

CREATE TABLE `tbl_nguoidung` (
  `MaNguoiDung` int(10) NOT NULL,
  `TenNguoiDung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `QuyenHan` tinyint(1) NOT NULL,
  `Khoa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_nguoidung`
--

INSERT INTO `tbl_nguoidung` (`MaNguoiDung`, `TenNguoiDung`, `TenDangNhap`, `MatKhau`, `QuyenHan`, `Khoa`) VALUES
(1, 'phammysil', 'msp', '9b4f40f25292e451ea28c741de323dd4', 2, 0),
(2, 'phammysil', 'BlackSil', 'dcb2775b21745cd340efbdc787415651', 1, 0),
(3, 'phamsil', 'MySilPham', '9b4f40f25292e451ea28c741de323dd4', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhasanxuat`
--

CREATE TABLE `tbl_nhasanxuat` (
  `IdNhaSanXuat` int(20) NOT NULL,
  `TenNhaSanXuat` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_nhasanxuat`
--

INSERT INTO `tbl_nhasanxuat` (`IdNhaSanXuat`, `TenNhaSanXuat`) VALUES
(1, 'Rolex'),
(2, 'Patek Philippe'),
(3, 'Audemars Piguet'),
(4, 'Hublot'),
(5, 'Franck Muller'),
(6, 'Richard Mille');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `IdSanPham` int(10) NOT NULL,
  `MaSanPham` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenSanPham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `IdNhaSanXuat` int(20) NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(20) NOT NULL,
  `MoTa` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(10) NOT NULL,
  `TiLeGiamGia` int(5) NOT NULL,
  `CauHinh` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `LuotXem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`IdSanPham`, `MaSanPham`, `TenSanPham`, `IdNhaSanXuat`, `HinhAnh`, `DonGia`, `MoTa`, `SoLuong`, `TiLeGiamGia`, `CauHinh`, `LuotXem`) VALUES
(1, '1', 'Rolex Day-Date 36 128235-0050', 1, 'images/Rolex1.png', 198000000, 'abcd', 10, 5, '<p>Tot chuan</p>\r\n', 4),
(2, '2', 'Rolex Datejust 31 278273-0032', 1, 'images/Rolex2.png', 351000000, 'Mặt Số Hoạ Tiết Hoa Xanh Olive Dây Đeo Jubilee Thép Vàng Vàng\r\nBộ Máy: Automatic Calibre 2236\r\nKích Thước: 31mm\r\nChất Liệu Dây: Oystersteel, Yellow Gold\r\nChất Liệu Vỏ: Oystersteel, Yellow Gold', 10, 5, '<p>Tốt</p>\r\n', 1),
(3, '3', 'Hồ Rolex Submariner 41 126610lv-0002', 1, 'images/Rolex3.png', 503000000, 'Mặt Số Đen Dây Oyster\r\nBộ máy:Rolex Calibre 3235\r\nKích thước: 41mm\r\nChất liệu dây: Oyster\r\nChất liệu vỏ: Oystersteel\r\n \r\n \r\n ', 10, 5, '<p>Tốt</p>\r\n', 0),
(4, '4', 'Rolex GMT-Master II 40 126711chnr-0002', 1, 'images/Rolex4.png', 601020000, 'Mặt Số Đen Dây Oyster\r\nBộ máy: Rolex Calibre 3285\r\nKích thước: 40mm\r\nChất liệu dây:Everose Rolesor - hỗn hợp thép Oystersteel và vàng Everose 18 ct\r\nChất liệu vỏ:Everose Rolesor - hỗn hợp thép Oystersteel và vàng Everose 18 ct', 15, 5, '<p>Tốt</p>\r\n', 1),
(5, '5', 'Rolex Cosmograph Daytona 40 116518ln-0048 ', 1, 'images/Rolex5.png', 945000000, 'Mặt Số Vàng Dây Đeo Oysterflex\r\nBộ máy: 4130 Manufacture Rolex\r\nkích thước: 40mm\r\nChất liệu dây: Oysterflex\r\nChất liệu vỏ: Oyster, Yellow Gold', 20, 5, '<p>Tốt</p>\r\n', 9),
(6, '7', 'Hublot Classic Fusion Aerofusion Chronograph Orlinski King Gold Alternative Pave 45mm ', 4, 'images/Hublot1.png', 1141000000, 'Mã sản phẩm: 525.OX.0180.RX.1804.ORL19\r\nChuyển động: Caliber HUB1155\r\nKích thước: 45mm\r\nChất liệu dây: Dây Cao Su\r\nChất liệu vỏ: King Gold Vàng Vàng', 10, 3, '<p>Tốt</p>\r\n', 0),
(7, '8', 'Hublot Big Bang Ferrari Unico Magic Gold 45mm', 4, 'images/Hublot2.png', 815000000, 'Mã sản phẩm: 402.MX.0138.WR\r\nChuyển động:HUB1241 UNICO Manufacture Self-winding Chronograph Flyback Movement with Column Wheel\r\nKích thước: 45mm\r\nChất liệu dây: Cao su\r\nChất liệu vỏ: Magic Gold', 10, 3, '<p>Tốt</p>\r\n', 0),
(8, '9', 'Hublot Classic Fusion Aerofusion UEFA Champions League 45mm', 4, 'images/Hublot3.png', 390000000, 'Mã sản phẩm: 525.EX.0170.RX.UCL20\r\nChuyển động: HUB1155\r\nKích thước: 45mm\r\nChất liệu dây: Cao Su\r\nChất liệu vỏ: Titanium\r\n', 15, 3, '<p>Tốt</p>\r\n', 0),
(9, '10', 'Hublot Big Bang MP-11 Power Reserve 14 Days RED Magic 45mm', 4, 'images/Hublot4.png', 1890920000, 'Mã sản phẩm: 911.CF.0113.RX\r\nChuyển động: HUB9011 Manufacture Manual-winding Skeleton Power Reserve Movement with 7 Series-coupled Barrels and Power Reserve Display Roll\r\nKích thước: 45mm\r\nChất liệu dây: Cao Su\r\nChất liệu vỏ: Titanium', 10, 4, '<p>Tốt</p>\r\n', 0),
(10, '11', 'Hublot Spirit Of Big Bang Beige Ceramic Titanium Diamonds 39mm', 4, 'images/Hublot5.png', 314250000, 'Mã sản phẩm: 665.CZ.891B.LR.1204\r\nChuyển động: HUB1710 Self-winding Movement\r\nKích thước: 39mm\r\nChất liệu dây: Dây da\r\nChất liệu vỏ: Ceramic', 10, 3, '<p>Tốt</p>\r\n', 0),
(11, '12', 'Hublot Spirit of Big Bang Titanium Full Pavé 39mm', 4, 'images/Hublot6.png', 919000000, 'Mã sản phẩm: 665.NX.9010.LR.1604\r\nChuyển động: HUB1710 Self-winding Movement\r\nKích thước: 39mm\r\nChất liệu dây: Dây da\r\nChất liệu vỏ: Titanium', 15, 3, '<p>Tốt</p>\r\n', 0),
(12, '13', 'Franck Muller Lady Vanguard V32 Custom Diamonds Cọc Số Trắng Dây Đeo Trắng', 5, 'images/Franck1.png', 183645000, 'Chuyển động: Automatic/Quartz\r\nKích thước: 32mm\r\nChất liệu dây: Da và Cao Su\r\nChất liệu vỏ: Thép Không Gỉ', 5, 5, '<p>Tốt</p>\r\n', 2),
(13, '14', 'Franck Muller Lady Vanguard V32 Custom Diamonds Cọc Số Đỏ Dây Đeo Đỏ', 5, 'images/franck2.png', 158400000, 'Chuyển động: Automatic/Quartz\r\nKích thước: 32mm\r\nChất liệu dây: Da và Cao Su\r\nChất liệu vỏ: Thép Không Gỉ', 15, 5, '<p>Tốt</p>\r\n', 1),
(14, '15', 'Franck Muller Vanguard', 5, 'images/Franck3.png', 182000000, 'Mã sản phẩm: V 41 SC DT (TT.BR.5N)\r\nChuyển động: Automatic\r\nKích thước: 41mm\r\nChất liệu dây: Dây da\r\nChất liệu vỏ: Titanium', 15, 5, '<p>Tốt</p>\r\n', 2),
(15, '16', 'Franck Muller Vanguard V41 King Gold Custom Diamonds Mặt Số Đen Dây Đeo Đen', 5, 'images/Franck4.png', 240000000, 'Chuyển động: Automatic\r\nKích thước: 41mm\r\nChất liệu dây: Dây da\r\nChất liệu vỏ: Thép và Kim Cương', 10, 5, '<p>Tốt</p>\r\n', 2),
(16, '17', 'Franck Muller Vanguard', 5, 'images/Franck5.png', 225000000, 'Mã sản phẩm: V 41 SC DT YACHTING (5N.BL)\r\nChuyển động: Automatic\r\nKích thước: 40.8mm\r\nChất liệu dây: Dây da\r\nChất liệu vỏ: Vàng hồng 18K', 10, 5, '<p>Tốt</p>\r\n', 1),
(18, '18', 'Richard Mille RM 015 Dual Time Zone Rose Gold Tourbillon', 6, 'images/RichardMille2.png', 680000000, 'Mã sản phẩm: RM 015\r\nChuyển động: Calibre RM015\r\nKích thước: 48x39.30mm\r\nChất liệu dây: Da cá sấu\r\nChất liệu vỏ: Vàng Hồng', 10, 5, '<p>Tốt</p>\r\n', 2),
(22, '19', 'Richard Mille RM 016 Automatic Winding Extra Flat', 6, 'images/RichardMille3.png', 24000000, 'Mã sản phẩm: RM 016\r\nChuyển động: Calibre RMAS7\r\nKích thước: 50x38x8.25mm\r\nChất liệu dây: Cao su\r\nChất liệu vỏ: Titanium Titalyt', 11, 3, '<p>Tốt</p>\r\n', 0),
(23, '20', 'Mã sản phẩm: RM 016 Chuyển động: Calibre RMAS7 Kích thước: 50x38x8.25mm Chất liệu dây: Cao su Chất liệu vỏ: Titanium Titalyt®', 6, 'images/RichardMille4.png', 450500000, 'Mã sản phẩm: RM 032 Automatic Les Voiles de Saint Barth\r\nChuyển động: Calibre RMAC2\r\nKích thước: 50 x 17.80 mm\r\nChất liệu dây: Dây cao su\r\nChất liệu vỏ: Vàng Hồng 18K', 12, 6, '<p>Tốt</p>\r\n', 0),
(24, '21', 'Richard Mille RM 07-01 Dark Night Intergalactic Automatic Winding', 6, 'images/RichardMille5.png', 359000000, 'Mã sản phẩm: RM 07-01 Intergalactic Dark Night\r\nChuyển động: Calibre CRMA2\r\nKích thước: 31.4 x 45.66 mm\r\nChất liệu dây: Dây cao su\r\nChất liệu vỏ: Carbon TPT', 13, 6, '<p>Tốt</p>\r\n', 1),
(25, '22', 'Richard Mille RM 011 White Gold Diamonds RM011', 6, 'images/RichardMille6.png', 300000000, 'Mã sản phẩm: RM 011 FM, RM011\r\nChuyển động: Cal. RMAC1\r\nKích thước: 49.94 x 44.50mm\r\nChất liệu dây: Cao Su\r\nChất liệu vỏ: Vàng Trắng', 14, 7, '<p>Tốt</p>\r\n', 2),
(26, '23', 'Audemars Piguet Royal Oak Concept Flying Tourbillon GMT', 3, 'images/AudemarsPiguet1.png', 407200000, 'Mã sản phẩm: 26589IO.OO.D002CA.01\r\nChuyển động: Manufacture Calibre 2954\r\nKích thước: 47mm\r\nChất liệu dây: Black rubber strap with sandblasted titanium AP folding clasp. Additional black alligator strap\r\nChất liệu vỏ: Titanium', 15, 5, '<p>Tốt</p>\r\n', 0),
(27, '24', 'Audemars Piguet Code 11.59 By Audemars Piguet Selfwinding', 3, 'images/AudemarsPiguet2.png', 699000000, 'Mã sản phẩm: 15210CR.OO.A009CR.01\r\nChuyển động: Selfwinding, Calibre 4302\r\nKích thước: 41mm\r\nChất liệu dây: White Gold, Leather\r\nChất liệu vỏ: Pink Gold', 7, 4, '<p>Tốt</p>\r\n', 1),
(28, '25', 'Audemars Piguet Code 11.59 By Audermars Piguet Selfwinding Chronograph', 3, 'images/AudemarsPiguet3.png', 101000000, 'Mã sản phẩm: 26393BC.OO.A068CR.01\r\nBộ máy: MANUFACTURE CALIBRE 4401\r\nKích thước: 41mm\r\nChất liệu dây: Da cá sấu đỏ tía\r\nChất liệu vỏ: Vàng hồng', 13, 7, '<p>Tốt</p>\r\n', 0),
(29, '26', 'Audemars Piguet Royal Oak', 3, 'images/AudemarsPiguet4.jpg', 462200000, 'Mã sản phẩm: 15407OR.OO.1220OR.01\r\nChuyển động: Selfwinding, Manufacture Calibre 3132\r\nKích thước: 41mm\r\nChất liệu dây: Pink Gold\r\nChất liệu vỏ: Pink Gold', 15, 6, '<p>Tốt</p>\r\n', 0),
(30, '27', 'Audemars Piguet Royal Oak', 3, 'images/AudemarsPiguet5.jpg', 148400000, 'Mã sản phẩm: 15305OR.OO.D088CR.01\r\nBộ máy: Selfwinding,  Calibre 3129 Manufacture\r\nKích thước: 39mm\r\nChất liệu dây: Da Cá Sấu\r\nChất liệu vỏ: Vàng hồng', 12, 5, '<p>Tốt</p>\r\n', 2),
(36, '28', 'Patek Philippe Grand Complications Platinum Calestial Moon Age', 2, 'images/PatekPhilippe1.png', 940000009, 'Mã sản phẩm: 6120P-001\r\nChuyển động: Automatic, Cal  240 LU CL C\r\nKích thước: 44mm\r\nChất liệu dây: Da cá sấu\r\nChất liệu vỏ: Hợp kim\r\n', 11, 8, '<p>Tốt</p>\r\n', 0),
(37, '29', 'Hợp kim', 2, 'images/PatekPhilippe2.png', 745940000, 'Mã sản phẩm: 5271P-001\r\nChuyển động: Automatic, CH 29-535 PS Q\r\nKích thước: 41mm\r\nChất liệu dây: Da Cá Sấu\r\nChất liệu vỏ: Bạch Kim\r\n', 13, 8, '<p>Tốt</p>\r\n', 0),
(38, '30', 'Patek Philippe Annual Calendar Complications', 2, 'images/PatekPhilippe3.png', 106132500, 'Mã sản phẩm: 4947G-010\r\nChuyển động: Caliber 324 S QALU\r\nKích thước: 38mm\r\nChất liệu dây: Da Cá Sấu\r\nChất liệu vỏ: Vàng Trắng và Kim Cương\r\n', 20, 10, '<p>Tốt</p>\r\n', 0),
(39, '31', 'Patek Philippe Aquanaut', 2, 'images/PatekPhilippe4.png', 125211500, 'Mã sản phẩm: 5067A-024\r\nChuyển động: Caliber E23-250SC\r\nKích thước: 35.6mm\r\nChất liệu dây: Rubber\r\nChất liệu vỏ: Oystersteel\r\n', 30, 9, '<p>Tốt</p>\r\n', 0),
(40, '32', 'Patek Philippe Calatrava Engraved Black Dial Platium', 2, 'images/PatekPhilippe5.png', 217800000, 'Mã sản phẩm: 5088-100P-001\r\nChuyển động: Calibre 240\r\nKích thước: 38mm\r\nChất liệu dây: Da Cá Sấu\r\nChất liệu vỏ: Platinum\r\n', 10, 5, '<p>Tốt</p>\r\n', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_nguoidung`
--
ALTER TABLE `tbl_nguoidung`
  ADD PRIMARY KEY (`MaNguoiDung`);

--
-- Indexes for table `tbl_nhasanxuat`
--
ALTER TABLE `tbl_nhasanxuat`
  ADD PRIMARY KEY (`IdNhaSanXuat`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`IdSanPham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_nguoidung`
--
ALTER TABLE `tbl_nguoidung`
  MODIFY `MaNguoiDung` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_nhasanxuat`
--
ALTER TABLE `tbl_nhasanxuat`
  MODIFY `IdNhaSanXuat` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `IdSanPham` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
