-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for fjs_bucket-shop
CREATE DATABASE IF NOT EXISTS `fjs_bucket-shop` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `fjs_bucket-shop`;

-- Dumping structure for table fjs_bucket-shop.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table fjs_bucket-shop.cart: ~0 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table fjs_bucket-shop.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table fjs_bucket-shop.category: ~4 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `slug`, `title`) VALUES
	(7, 'bucket-bunga', 'BUCKET BUNGA'),
	(8, 'bucket-snack', 'BUCKET SNACK'),
	(9, 'bucket-balon', 'BUCKET BALON'),
	(10, 'bucket-uang', 'BUCKET UANG'),
	(11, 'bucket-boneka', 'BUCKET BONEKA');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table fjs_bucket-shop.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `date` date NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` enum('waiting','paid','delivered','cancel') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table fjs_bucket-shop.orders: ~2 rows (approximately)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `id_user`, `date`, `invoice`, `total`, `name`, `address`, `phone`, `status`) VALUES
	(1, 5, '2022-12-06', '520221206063609', 80000, 'paijo', 'gunung terang ', '085643213452', 'delivered');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table fjs_bucket-shop.orders_confirm
CREATE TABLE IF NOT EXISTS `orders_confirm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_orders` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table fjs_bucket-shop.orders_confirm: ~1 rows (approximately)
DELETE FROM `orders_confirm`;
/*!40000 ALTER TABLE `orders_confirm` DISABLE KEYS */;
INSERT INTO `orders_confirm` (`id`, `id_orders`, `account_name`, `account_number`, `nominal`, `note`, `image`) VALUES
	(1, 1, 'paijo', '0987654321', 65000, '-mas ditunggu barangnya ', '520221206063609-20221206063742.jpeg');
/*!40000 ALTER TABLE `orders_confirm` ENABLE KEYS */;

-- Dumping structure for table fjs_bucket-shop.order_detail
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_orders` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(4) NOT NULL,
  `subtotal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table fjs_bucket-shop.order_detail: ~3 rows (approximately)
DELETE FROM `order_detail`;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` (`id`, `id_orders`, `id_product`, `qty`, `subtotal`) VALUES
	(2, 1, 3, 2, 6000000),
	(3, 2, 2, 1, 500000),
	(4, 1, 5, 1, 80000);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

-- Dumping structure for table fjs_bucket-shop.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table fjs_bucket-shop.product: ~1 rows (approximately)
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `id_category`, `slug`, `title`, `description`, `price`, `is_available`, `image`) VALUES
	(5, 7, 'bucket-bunga-couver-ping-ukuran-medium', 'Bucket Bunga Couver Ping Ukuran Medium', 'buket bunga cocok untuk anda yang ingin merayakan hari spesial', 80000, 1, 'bucket-bunga-couver-ping-ukuran-medium-20221206012853.jpg'),
	(6, 8, 'bucket-snack-campur-pocky-silverqueen-chic-choc', 'Bucket Snack Campur Pocky,Silverqueen,Chic Choc', 'cocok untuk anda yang ingin merayakan hari bahagia bersama sahabat tercinta', 65000, 1, 'bucket-snack-campur-pockysilverqueenchic-choc-20221206012901.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table fjs_bucket-shop.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','member') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table fjs_bucket-shop.user: ~2 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `is_active`, `image`) VALUES
	(4, 'alvi', 'alvisuhartanto@gmail.com', '$2y$10$c/QYpTAClloEolLz8ycUj.AUs6EI9ARLEIolotBmY19zfusS/2B32', 'admin', 1, 'alvi-20221206064032.jpg'),
	(5, 'paijo', 'paijo@gmail.com', '$2y$10$Q4AmvAgL9HYjU6Rb5fGrKeWzD19SU0HMFphhDuUsFkvhj.KGRxkIq', 'member', 1, 'paijo-20221206063815.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
