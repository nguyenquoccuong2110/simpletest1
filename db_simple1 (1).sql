-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 01, 2020 lúc 02:29 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_simple1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id_bill` int(10) NOT NULL,
  `id_customer` int(10) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id_bill`, `id_customer`, `total`, `payment`, `note`) VALUES
(1, 1, 1590000, 'tại nhà', 'No');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id_ctbill` int(10) NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unti_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id_ctbill`, `id_bill`, `id_sp`, `quantity`, `unti_price`) VALUES
(1, 1, 1, 1, 1590000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet`
--

CREATE TABLE `chitiet` (
  `id_chitiet` int(10) NOT NULL,
  `loai_sp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dungtich` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `muc_congsuat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chuc_nang_chinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chuc_nang_ham_nong` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inverter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chuc_nang_nuong` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chuc_nang_doi_luu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nau_nuong_ket_hop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chuc_nang_ra_dong` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hen_gio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bang_dieu_khien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kieu_mo_cua` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phu_kien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mau_sac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chat_lieu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dien_ap` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cong_suat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hang_san_xuat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xuat_xu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bao_hanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_sp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet`
--

INSERT INTO `chitiet` (`id_chitiet`, `loai_sp`, `model`, `dungtich`, `muc_congsuat`, `chuc_nang_chinh`, `chuc_nang_ham_nong`, `inverter`, `chuc_nang_nuong`, `chuc_nang_doi_luu`, `nau_nuong_ket_hop`, `chuc_nang_ra_dong`, `hen_gio`, `bang_dieu_khien`, `kieu_mo_cua`, `phu_kien`, `mau_sac`, `chat_lieu`, `dien_ap`, `cong_suat`, `hang_san_xuat`, `xuat_xu`, `bao_hanh`, `id_sp`) VALUES
(1, 'Lò Vi Sóng - Nướng Kết Hợp', '20MG65-L', '20 Lít', 'Hoạt động với 6 mức công suất.', 'Nấu / Hâm / Nướng / Rã đông.', 'Có', 'Không', 'Nướng bằng đèn.', 'Không', '3 mức nướng kết hợp vi sóng.', 'Có', 'Tối đa 30 Phút.', 'Nút xoay cơ.', 'Tay cầm kim loại.', 'Đĩa xoay : 245 mm.', 'Đen', 'Vỏ ngoài thép sơn tĩnh điện.', '220V-50Hz', '800W', 'SIMPLEHOME ( Thương hiệu USA )', 'Trung Quốc', '24 tháng', 1),
(2, 'Lò Vi Sóng', '20MX63-L', '20 Lít', 'Hoạt động với 6 mức công suất.', 'Nấu / Hâm / Rã đông.', 'Có', 'Không', 'Không', 'Không', '', 'Có', 'Tối đa 30 Phút.', 'Nút nhấn', '', '', 'Trắng', 'Vỏ ngoài thép sơn tĩnh điện', '220V-50Hz', '800W', 'SIMPLEHOME(Thương hiệu USA)', 'Trung Quốc', '24 tháng', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id_customer`, `name`, `gender`, `email`, `address`, `phone_number`, `note`) VALUES
(1, 'Cuong', 'Nam', 'abc@gmail.com', 'VL', '0123456789', 'No');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganhhang`
--

CREATE TABLE `nganhhang` (
  `id_nh` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nganhhang`
--

INSERT INTO `nganhhang` (`id_nh`, `name`) VALUES
(1, 'Điện Gia Dụng'),
(2, 'Nội Thất'),
(3, 'Gia Dụng'),
(4, 'Hàng Trang Trí'),
(5, 'Dịch Vụ'),
(6, 'Chuyên Mục');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_sp` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nxs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_sp`, `name`, `id_type`, `unit_price`, `promotion_price`, `image`, `nxs`, `ma_sp`, `loai`) VALUES
(1, 'Lò Vi Sóng KITCHENLUX 20MG65-L/800W', 1, 2190000, 1590000, 'lovisong-1.jpg', 'SimpleHome ', '500000412', 'A'),
(2, 'Ghế Sofa Phòng Khách 123', 9, 1230000, 1190000, '', '', '', ''),
(3, 'Lò Vi Sóng SIMPLEHOME 20MX63-L', 1, 1690000, 1290000, 'lo-vi-song-2.jpg', 'SimpleHome ', '500000410', 'A'),
(4, 'Lò Vi Sóng SIMPLEHOME 20MG63-L', 1, 1890000, 1490000, 'lo-vi-song-3.jpg', 'SimpleHome ', '500000411', 'A');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id_sl` int(11) NOT NULL,
  `link` varchar(100) CHARACTER SET utf8 NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `vt` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id_sl`, `link`, `image`, `vt`) VALUES
(1, '', 'banner-cat1.jpg', 1),
(2, '', 'banner-cat2.jpg', 2),
(3, '', 'banner-cat3.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id_type` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_nganh` int(10) NOT NULL,
  `menu` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id_type`, `name`, `id_nganh`, `menu`) VALUES
(1, 'Lò vi sóng', 1, 1),
(2, 'Bếp điện từ/hồng ngoại', 1, 1),
(3, 'Vĩ nướng điện', 1, 1),
(4, 'Máy xay sinh tố/Máy ép', 1, 2),
(5, 'Bình điện đun nước', 1, 2),
(6, 'Máy vắt nước cam', 1, 2),
(7, 'Bàn ủi', 1, 3),
(8, 'Bình nước nóng lạnh', 1, 3),
(9, 'Sofa phòng khách', 2, 1),
(10, 'Ghế bàn/thư giãn', 2, 1),
(11, 'Bàn phòng khách', 2, 1),
(12, 'Bàn làm việc', 2, 1),
(13, 'Ghế văn phòng', 2, 2),
(14, 'Ghế ăn', 2, 2),
(15, 'Bàn ăn', 2, 2),
(16, 'Bộ bàn - ghế ăn', 2, 2),
(17, 'Giường ngủ', 2, 3),
(18, 'Tủ các loại', 2, 3),
(19, 'Bộ phòng ngủ', 2, 3),
(20, 'Các bộ nội thất', 2, 3),
(21, 'Đồ gia dụng', 3, 1),
(22, 'Hàng trang trí', 4, 1),
(23, 'Dịch vụ', 5, 1),
(24, 'Giới thiệu', 6, 1),
(25, 'Tin tức', 6, 1),
(26, 'Phong thủy', 6, 2),
(27, 'Giải pháp', 6, 2),
(28, 'Tiện ích', 6, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datebirth` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monthbirth` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yearbirth` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id_ctbill`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `chitiet`
--
ALTER TABLE `chitiet`
  ADD PRIMARY KEY (`id_chitiet`),
  ADD KEY `chitiet_ibfk_1` (`id_sp`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Chỉ mục cho bảng `nganhhang`
--
ALTER TABLE `nganhhang`
  ADD PRIMARY KEY (`id_nh`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_type` (`id_type`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_sl`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id_type`),
  ADD KEY `id_nganh` (`id_nganh`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id_bill` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id_ctbill` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chitiet`
--
ALTER TABLE `chitiet`
  MODIFY `id_chitiet` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nganhhang`
--
ALTER TABLE `nganhhang`
  MODIFY `id_nh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_sp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id_sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id_type` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `products` (`id_sp`);

--
-- Các ràng buộc cho bảng `chitiet`
--
ALTER TABLE `chitiet`
  ADD CONSTRAINT `chitiet_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `products` (`id_sp`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id_type`);

--
-- Các ràng buộc cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD CONSTRAINT `type_products_ibfk_1` FOREIGN KEY (`id_nganh`) REFERENCES `nganhhang` (`id_nh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
