-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 09, 2021 lúc 09:16 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlst`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(4, 'CocaCola'),
(5, 'Vinamilk'),
(6, 'AceCook'),
(7, 'McDonald’s'),
(8, 'Fanta'),
(9, 'America'),
(10, 'Market');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(6, 'Cake'),
(7, 'Fruits'),
(8, 'Fresh Food'),
(9, 'Dry Food'),
(10, 'Nutritional Food'),
(11, 'Soda\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `change_shift`
--

CREATE TABLE `change_shift` (
  `shift_id` int(11) NOT NULL,
  `main_shift` varchar(50) NOT NULL,
  `switch_shift` varchar(50) NOT NULL,
  `date_switch` date NOT NULL,
  `shift_change_date` date NOT NULL,
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `change_shift`
--

INSERT INTO `change_shift` (`shift_id`, `main_shift`, `switch_shift`, `date_switch`, `shift_change_date`, `emp_id`, `emp_name`, `emp_email`) VALUES
(1, 'Shift 1', 'Shift 2', '2021-09-09', '2021-09-10', 18, 'Minh Huy', 'tminhhuy19@gmail.com'),
(2, 'Shift 1', 'Shift 2', '2021-09-09', '2021-09-09', 20, 'Nhan Hau', 'hau@gmail.com'),
(3, 'Shift 2', 'Shift 1', '2021-09-10', '2021-09-10', 19, 'Tan Duc', 'duc @gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_gender` varchar(255) NOT NULL,
  `cus_code` int(11) NOT NULL,
  `cus_address` varchar(200) NOT NULL,
  `cus_issue` date NOT NULL,
  `last_purchase_date` date NOT NULL,
  `cus_point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_gender`, `cus_code`, `cus_address`, `cus_issue`, `last_purchase_date`, `cus_point`) VALUES
(0, 'Walk-in Guest', 'Male', 0, '', '2021-09-05', '2021-09-08', 50),
(10, 'A', 'male', 1, '', '2021-09-08', '2021-09-08', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_birthday` varchar(40) NOT NULL,
  `emp_gender` varchar(100) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_phone` varchar(40) NOT NULL,
  `emp_start_date` varchar(40) NOT NULL,
  `title_id` int(11) NOT NULL,
  `emp_user` varchar(100) NOT NULL,
  `emp_pass` varchar(100) NOT NULL,
  `emp_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_birthday`, `emp_gender`, `emp_email`, `emp_address`, `emp_phone`, `emp_start_date`, `title_id`, `emp_user`, `emp_pass`, `emp_status`) VALUES
(18, 'Minh Huy', '2002-01-01', 'male', 'huy@gmail.com', '', '', '1/1/2022', 5, 'a', 'eb06vnOrfI9WJte01OFGxw==', 0),
(19, 'Trần Minh HUy', '2/2/2002', 'male', 'b@gmail.com', '', '', '', 6, 'b', 'eb06vnOrfI9WJte01OFGxw==', 1),
(20, 'security', '2002-01-01', 'male', 'security@gmail.com', 'aptech', '111', '1/1/2022', 7, 'c', 'eb06vnOrfI9WJte01OFGxw==', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `input`
--

CREATE TABLE `input` (
  `input_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `input`
--

INSERT INTO `input` (`input_id`, `emp_id`, `time`, `total`) VALUES
(11, 18, '2021-09-04 23:06:08', 100000),
(12, 18, '2021-09-05 22:00:01', 100000),
(13, 19, '2021-09-07 13:42:25', NULL),
(14, 19, '2021-09-07 13:44:54', NULL),
(15, 19, '2021-09-07 13:47:48', NULL),
(16, 19, '2021-09-07 13:52:20', NULL),
(17, 19, '2021-09-07 13:54:03', NULL),
(18, 19, '2021-09-07 13:57:50', NULL),
(19, 19, '2021-09-07 13:59:55', NULL),
(20, 19, '2021-09-07 14:01:23', NULL),
(21, 19, '2021-09-08 10:50:14', NULL),
(22, 18, '2021-09-08 15:53:55', 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `input_detail`
--

CREATE TABLE `input_detail` (
  `input_detail_id` int(11) NOT NULL,
  `input_id` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `expiry` date NOT NULL,
  `amount` int(11) NOT NULL,
  `input_price` int(11) NOT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `input_detail`
--

INSERT INTO `input_detail` (`input_detail_id`, `input_id`, `sup_id`, `pro_id`, `expiry`, `amount`, `input_price`, `total`) VALUES
(21, 11, 4, 27, '2021-08-30', 0, 10000, 100000),
(22, 11, 3, 28, '2021-08-29', 18, 20000, 200000),
(23, 11, 3, 29, '2021-08-28', 6, 10000, 100000),
(24, 11, 3, 28, '2021-08-29', 50, 20000, 200000),
(25, 11, 3, 27, '2021-08-30', 116, 10000, 100000),
(26, 11, 3, 28, '2021-08-29', 0, 20000, 200000),
(27, 11, 3, 29, '2021-09-28', 90, 10000, 100000),
(28, 11, 3, 27, '2021-08-30', 0, 10000, 100000),
(30, 11, 3, 28, '2021-09-30', 104, 10000, 100000),
(31, 11, 3, 30, '2021-08-30', 0, 10000, 100000),
(32, 11, 3, 31, '2021-08-30', 0, 10000, 100000),
(33, 19, 4, 35, '2021-09-02', 10, 324234, NULL),
(34, 20, 4, 36, '2021-08-08', 9, 12345, NULL),
(35, 21, 3, 33, '2021-08-09', 0, 10, NULL),
(36, 11, 3, 27, '2021-08-31', 10, 10000, 100000),
(37, 22, 3, 27, '2021-09-01', 15, 10000, 100000);

--
-- Bẫy `input_detail`
--
DELIMITER $$
CREATE TRIGGER `DELETE_IPD` BEFORE DELETE ON `input_detail` FOR EACH ROW DELETE FROM ware_house 
    WHERE input_detail_id=(SELECT input_detail_id FROM input_detail WHERE expiry + INTERVAL 7 DAY<= NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `INSERT_TBL_EXPIRY` AFTER INSERT ON `input_detail` FOR EACH ROW INSERT INTO tbl_expiry VALUES(NULL,
                       NEW.input_detail_id,NEW.sup_id,NEW.pro_id,NEW.expiry,0,NEW.input_price,0)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `INSERT_WH` AFTER INSERT ON `input_detail` FOR EACH ROW INSERT INTO ware_house VALUES(NULL,NEW.input_detail_id,NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UPDATE_TBL_EXPIRY` BEFORE UPDATE ON `input_detail` FOR EACH ROW UPDATE tbl_expiry
SET amount=OLD.amount,total=OLD.amount*OLD.input_price
WHERE input_detail_id=OLD.input_detail_id AND OLD.expiry<NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `total_price` int(11) DEFAULT NULL,
  `cus_id` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `emp_id`, `time`, `total_price`, `cus_id`, `point`, `discount`) VALUES
(424, 19, '2021-09-07 10:24:45', 874000, 0, 0, 0),
(425, 19, '2021-09-07 11:28:11', 764000, 0, 0, 0),
(426, 19, '2021-09-07 11:29:23', 24000, 0, 0, 0),
(427, 19, '2021-09-07 11:30:00', NULL, 0, NULL, NULL),
(428, 19, '2021-09-07 11:30:48', NULL, 0, NULL, NULL),
(429, 19, '2021-09-07 11:34:08', 952000, 0, 0, 0),
(430, 19, '2021-09-07 13:22:59', 125, 0, 0, 0),
(431, 19, '2021-09-08 13:42:19', 55, 0, 0, 0),
(432, 19, '2021-09-08 13:49:11', 56, 0, 0, 0),
(433, 19, '2021-09-08 16:16:12', 135, 10, 50, 0);

--
-- Bẫy `orders`
--
DELIMITER $$
CREATE TRIGGER `DELETE_ORDER_DETAIL` BEFORE DELETE ON `orders` FOR EACH ROW DELETE 
FROM orders_detail
WHERE order_id=OLD.order_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `DELETE_OUTPUT` BEFORE DELETE ON `orders` FOR EACH ROW DELETE 
FROM output
WHERE order_id=OLD.order_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `INSERT_OUTPUT` AFTER INSERT ON `orders` FOR EACH ROW INSERT INTO output VALUES(NULL,NEW.emp_id ,NOW() ,NEW.order_id,0)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT 2,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`order_detail_id`, `order_id`, `name`, `quantity`, `pro_id`, `price`, `total`) VALUES
(472, 424, 'Bánh Sầu Riêng', 3, 27, 12000, 36000),
(473, 424, 'Táo Tàu', 3, 28, 22000, 66000),
(474, 424, 'Cá Ngừ', 3, 29, 220000, 660000),
(475, 424, 'Bánh Sầu Riêng', 2, 27, 12000, 24000),
(476, 424, 'Táo Tàu', 4, 28, 22000, 88000),
(477, 425, 'Bánh Sầu Riêng', 3, 27, 12000, 36000),
(478, 425, 'Táo Tàu', 2, 28, 22000, 44000),
(479, 425, 'Cá Ngừ', 3, 29, 220000, 660000),
(480, 425, 'Bánh Sầu Riêng', 2, 27, 12000, 24000),
(481, 426, 'Bánh Sầu Riêng', 2, 27, 12000, 24000),
(482, 428, 'Bánh Sầu Riêng', 3, 27, 12000, 36000),
(483, 428, 'Táo Tàu', 2, 28, 22000, 44000),
(484, 428, 'Cá Ngừ', 2, 29, 220000, 440000),
(485, 429, 'Bánh Sầu Riêng', 3, 27, 12000, 36000),
(486, 429, 'Táo Tàu', 4, 28, 22000, 88000),
(487, 429, 'Cá Ngừ', 3, 29, 220000, 660000),
(488, 429, 'Coca', 4, 30, 10000, 40000),
(489, 429, 'Avocado', 2, 31, 24000, 48000),
(490, 429, 'Coca', 8, 30, 10000, 80000),
(493, 430, 'Durian ', 2, 27, 7, 14),
(494, 430, 'Coca', 3, 30, 3, 9),
(495, 430, 'Coca', 2, 30, 3, 6),
(496, 430, 'Apple', 3, 28, 10, 30),
(497, 430, 'Beef Kobe', 2, 29, 25, 50),
(498, 430, 'Avocado', 2, 31, 8, 16),
(499, 431, 'Durian ', 5, 27, 7, 35),
(500, 431, 'Apple', 2, 28, 10, 20),
(501, 432, 'Durian ', 2, 27, 7, 14),
(502, 432, 'Durian ', 2, 27, 7, 14),
(503, 432, 'Apple', 4, 28, 10, 28),
(504, 433, 'Durian ', 5, 27, 7, 35),
(505, 433, 'Beef Kobe', 4, 29, 25, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `output`
--

CREATE TABLE `output` (
  `output_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `order_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `output`
--

INSERT INTO `output` (`output_id`, `emp_id`, `time`, `order_id`, `status`) VALUES
(96, 19, '2021-09-07 10:24:45', 424, 0),
(97, 19, '2021-09-07 11:28:11', 425, 0),
(98, 19, '2021-09-07 11:29:23', 426, 0),
(99, 19, '2021-09-07 11:30:00', 427, 0),
(100, 19, '2021-09-07 11:30:48', 428, 0),
(101, 19, '2021-09-07 11:34:08', 429, 0),
(102, 19, '2021-09-07 13:22:59', 430, 0),
(103, 19, '2021-09-08 13:42:19', 431, 0),
(104, 19, '2021-09-08 13:49:11', 432, 0),
(105, 19, '2021-09-08 16:16:12', 433, 0);

--
-- Bẫy `output`
--
DELIMITER $$
CREATE TRIGGER `DELETE_OUTPUT_DETAIL` BEFORE DELETE ON `output` FOR EACH ROW DELETE 
FROM output_detail
WHERE output_id= OLD.output_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `output_detail`
--

CREATE TABLE `output_detail` (
  `output_detail_id` int(11) NOT NULL,
  `output_id` int(11) NOT NULL,
  `wh_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `output_detail`
--

INSERT INTO `output_detail` (`output_detail_id`, `output_id`, `wh_id`, `quantity`) VALUES
(307, 96, 133, 5),
(308, 96, 137, 0),
(309, 96, 140, 0),
(310, 96, 134, 7),
(311, 96, 136, 0),
(312, 96, 142, 0),
(313, 96, 135, 3),
(314, 96, 139, 0),
(315, 97, 133, 5),
(316, 97, 137, 0),
(317, 97, 140, 0),
(318, 97, 134, 2),
(319, 97, 136, 0),
(320, 97, 142, 0),
(321, 97, 135, 3),
(322, 97, 139, 0),
(323, 98, 133, 2),
(324, 98, 137, 0),
(325, 98, 140, 0),
(326, 101, 133, 3),
(327, 101, 137, 0),
(328, 101, 140, 0),
(329, 101, 134, 4),
(330, 101, 136, 0),
(331, 101, 142, 0),
(332, 101, 135, 3),
(333, 101, 139, 0),
(334, 101, 143, 12),
(335, 101, 144, 2),
(336, 102, 133, 2),
(337, 102, 137, 0),
(338, 102, 140, 0),
(339, 102, 134, 3),
(340, 102, 136, 0),
(341, 102, 142, 0),
(342, 102, 135, 1),
(343, 102, 139, 1),
(344, 102, 143, 5),
(345, 102, 144, 2),
(346, 103, 137, 5),
(347, 103, 142, 2),
(348, 104, 137, 4),
(349, 104, 142, 4),
(350, 105, 137, 5),
(351, 105, 148, 0),
(352, 105, 149, 0),
(353, 105, 135, 4),
(354, 105, 139, 0);

--
-- Bẫy `output_detail`
--
DELIMITER $$
CREATE TRIGGER `ADD_INPUT_DETAIL_BEFORE_DELETE` BEFORE DELETE ON `output_detail` FOR EACH ROW UPDATE input_detail
SET amount=amount + OLD.quantity
WHERE input_detail_id=(
SELECT ware_house.input_detail_id FROM ware_house WHERE OLD.wh_id=ware_house.wh_id
)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_sale_price` int(11) NOT NULL,
  `pro_expiry` date NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `unit_id` int(11) NOT NULL,
  `barcode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_sale_price`, `pro_expiry`, `brand_id`, `cat_id`, `unit_id`, `barcode`) VALUES
(27, 'Durian ', 7, '2021-09-15', 10, 7, 6, '123'),
(28, 'Apple', 10, '2021-09-18', 9, 7, 6, '234'),
(29, 'Beef Kobe', 25, '2021-09-15', 7, 6, 3, '345'),
(30, 'Coca', 3, '2021-09-15', 7, 11, 8, '456'),
(31, 'Avocado', 8, '2021-09-15', 10, 7, 6, '567');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(100) NOT NULL,
  `sup_address` varchar(100) NOT NULL,
  `sup_phone` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`sup_id`, `sup_name`, `sup_address`, `sup_phone`) VALUES
(3, 'A', 'a', '112'),
(4, 'B', 'b', '113');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_expiry`
--

CREATE TABLE `tbl_expiry` (
  `expiry_id` int(11) NOT NULL,
  `input_detail_id` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `expiry` date NOT NULL,
  `amount` int(11) NOT NULL,
  `input_price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_expiry`
--

INSERT INTO `tbl_expiry` (`expiry_id`, `input_detail_id`, `sup_id`, `pro_id`, `expiry`, `amount`, `input_price`, `total`) VALUES
(2, 8, 3, 27, '2021-08-09', 10, 10000, 100000),
(4, 8, 3, 27, '2021-08-30', 0, 20000, 0),
(5, 8, 4, 28, '2021-08-29', 1, 20000, 20000),
(6, 8, 3, 27, '2021-10-13', 0, 10000, 0),
(7, 8, 3, 27, '2021-08-30', 7, 10000, 70000),
(8, 10, 3, 29, '2021-09-30', 202, 325334, 65717468),
(11, 30, 3, 28, '2021-09-30', 0, 10000, 0),
(12, 31, 3, 39, '2021-09-30', 93, 10000, 930000),
(13, 32, 3, 31, '2021-09-30', 106, 10000, 1060000),
(14, 33, 4, 35, '2021-09-02', 0, 324234, 0),
(15, 34, 4, 36, '2021-09-08', 0, 12345, 0),
(16, 35, 3, 33, '2021-09-09', 20, 10, 200),
(17, 36, 3, 27, '2021-08-31', 10, 10000, 100000),
(18, 37, 3, 27, '2021-09-01', 15, 10000, 150000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timesheets`
--

CREATE TABLE `timesheets` (
  `th_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `shift` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `timesheets`
--

INSERT INTO `timesheets` (`th_id`, `emp_id`, `shift`, `date`) VALUES
(1, 19, 'Shift 2', '2021-09-06 04:47:01'),
(2, 19, 'Shift 3', '2021-09-06 04:47:01'),
(3, 19, 'Shift 2', '2021-09-08 16:18:41'),
(4, 19, 'Shift 2', '2021-09-08 16:18:42'),
(5, 19, 'Shift 2', '2021-09-08 16:18:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `title`
--

CREATE TABLE `title` (
  `title_id` int(11) NOT NULL,
  `title_name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `title`
--

INSERT INTO `title` (`title_id`, `title_name`, `description`) VALUES
(5, 'manager', 'manager'),
(6, 'emp', 'employee'),
(7, 'emp_security', 'security');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `unit`
--

CREATE TABLE `unit` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_name`) VALUES
(6, 'Kg'),
(4, 'bag'),
(5, 'boxes'),
(8, 'can'),
(7, 'gam'),
(3, 'piece');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ware_house`
--

CREATE TABLE `ware_house` (
  `wh_id` int(11) NOT NULL,
  `input_detail_id` int(11) NOT NULL,
  `date_input` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ware_house`
--

INSERT INTO `ware_house` (`wh_id`, `input_detail_id`, `date_input`) VALUES
(133, 21, '2021-09-04 23:08:13'),
(134, 22, '2021-09-04 23:08:13'),
(135, 23, '2021-09-04 23:08:13'),
(136, 24, '2021-09-04 23:31:21'),
(137, 25, '2021-09-05 22:00:24'),
(139, 27, '2021-09-05 22:00:24'),
(140, 28, '2021-09-05 22:05:45'),
(142, 30, '2021-09-05 22:24:17'),
(143, 31, '2021-09-07 11:34:39'),
(144, 32, '2021-09-07 11:34:48'),
(145, 33, '2021-09-07 13:59:55'),
(146, 34, '2021-09-07 14:01:23'),
(147, 35, '2021-09-08 10:50:33'),
(148, 36, '2021-09-08 15:37:19'),
(149, 37, '2021-09-08 15:54:45');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `change_shift`
--
ALTER TABLE `change_shift`
  ADD PRIMARY KEY (`shift_id`),
  ADD KEY `FK_CS_EMP` (`emp_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`),
  ADD UNIQUE KEY `constraint_name` (`cus_code`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `user_unique` (`emp_user`),
  ADD UNIQUE KEY `unique_emp_user` (`emp_user`),
  ADD UNIQUE KEY `inique_emp_email` (`emp_email`),
  ADD KEY `FK_emp_title_id` (`title_id`);

--
-- Chỉ mục cho bảng `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`input_id`),
  ADD KEY `FK_input_emp` (`emp_id`);

--
-- Chỉ mục cho bảng `input_detail`
--
ALTER TABLE `input_detail`
  ADD PRIMARY KEY (`input_detail_id`),
  ADD KEY `FK_input_detail_sup` (`sup_id`),
  ADD KEY `FK_inputdetail_input` (`input_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_order_cus` (`cus_id`),
  ADD KEY `FK_order_emp` (`emp_id`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FK_orderdetaild_order` (`order_id`),
  ADD KEY `FK_ordersdetail_pro` (`pro_id`);

--
-- Chỉ mục cho bảng `output`
--
ALTER TABLE `output`
  ADD PRIMARY KEY (`output_id`),
  ADD KEY `FK_output_emp` (`emp_id`),
  ADD KEY `FK_output_orders` (`order_id`);

--
-- Chỉ mục cho bảng `output_detail`
--
ALTER TABLE `output_detail`
  ADD PRIMARY KEY (`output_detail_id`),
  ADD KEY `FK_output_detail_output` (`output_id`),
  ADD KEY `FK_output_detail_wh` (`wh_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`),
  ADD UNIQUE KEY `constraint_barcode` (`barcode`),
  ADD KEY `FK_pro_brand` (`brand_id`),
  ADD KEY `FK_pro_cat` (`cat_id`),
  ADD KEY `FK_pro_unit` (`unit_id`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sup_id`),
  ADD UNIQUE KEY `sup_name_unique` (`sup_name`),
  ADD UNIQUE KEY `sup_phone_unique` (`sup_phone`);

--
-- Chỉ mục cho bảng `tbl_expiry`
--
ALTER TABLE `tbl_expiry`
  ADD PRIMARY KEY (`expiry_id`);

--
-- Chỉ mục cho bảng `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`th_id`);

--
-- Chỉ mục cho bảng `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`title_id`);

--
-- Chỉ mục cho bảng `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`unit_id`),
  ADD UNIQUE KEY `unit_name_unique` (`unit_name`);

--
-- Chỉ mục cho bảng `ware_house`
--
ALTER TABLE `ware_house`
  ADD PRIMARY KEY (`wh_id`),
  ADD KEY `FK_wh_input_detail` (`input_detail_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `change_shift`
--
ALTER TABLE `change_shift`
  MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `input`
--
ALTER TABLE `input`
  MODIFY `input_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `input_detail`
--
ALTER TABLE `input_detail`
  MODIFY `input_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT cho bảng `output`
--
ALTER TABLE `output`
  MODIFY `output_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `output_detail`
--
ALTER TABLE `output_detail`
  MODIFY `output_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_expiry`
--
ALTER TABLE `tbl_expiry`
  MODIFY `expiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `th_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `title`
--
ALTER TABLE `title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `unit`
--
ALTER TABLE `unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `ware_house`
--
ALTER TABLE `ware_house`
  MODIFY `wh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `change_shift`
--
ALTER TABLE `change_shift`
  ADD CONSTRAINT `FK_CS_EMP` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`);

--
-- Các ràng buộc cho bảng `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_emp_title_id` FOREIGN KEY (`title_id`) REFERENCES `title` (`title_id`);

--
-- Các ràng buộc cho bảng `input`
--
ALTER TABLE `input`
  ADD CONSTRAINT `FK_input_emp` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`);

--
-- Các ràng buộc cho bảng `input_detail`
--
ALTER TABLE `input_detail`
  ADD CONSTRAINT `FK_input_detail_sup` FOREIGN KEY (`sup_id`) REFERENCES `supplier` (`sup_id`),
  ADD CONSTRAINT `FK_inputdetail_input` FOREIGN KEY (`input_id`) REFERENCES `input` (`input_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_order_cus` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`),
  ADD CONSTRAINT `FK_order_emp` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`);

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `FK_orderdetaild_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FK_ordersdetail_pro` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Các ràng buộc cho bảng `output`
--
ALTER TABLE `output`
  ADD CONSTRAINT `FK_output_emp` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `FK_output_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Các ràng buộc cho bảng `output_detail`
--
ALTER TABLE `output_detail`
  ADD CONSTRAINT `FK_output_detail_output` FOREIGN KEY (`output_id`) REFERENCES `output` (`output_id`),
  ADD CONSTRAINT `FK_output_detail_wh` FOREIGN KEY (`wh_id`) REFERENCES `ware_house` (`wh_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_pro_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  ADD CONSTRAINT `FK_pro_cat` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `FK_pro_unit` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`unit_id`);

--
-- Các ràng buộc cho bảng `ware_house`
--
ALTER TABLE `ware_house`
  ADD CONSTRAINT `FK_wh_input_detail` FOREIGN KEY (`input_detail_id`) REFERENCES `input_detail` (`input_detail_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
