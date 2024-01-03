-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2024 pada 09.14
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cart_user', 7, 'add_cart_user'),
(26, 'Can change cart_user', 7, 'change_cart_user'),
(27, 'Can delete cart_user', 7, 'delete_cart_user'),
(28, 'Can view cart_user', 7, 'view_cart_user'),
(29, 'Can add produk', 8, 'add_produk'),
(30, 'Can change produk', 8, 'change_produk'),
(31, 'Can delete produk', 8, 'delete_produk'),
(32, 'Can view produk', 8, 'view_produk'),
(33, 'Can add users', 9, 'add_users'),
(34, 'Can change users', 9, 'change_users'),
(35, 'Can delete users', 9, 'delete_users'),
(36, 'Can view users', 9, 'view_users'),
(37, 'Can add products', 10, 'add_products'),
(38, 'Can change products', 10, 'change_products'),
(39, 'Can delete products', 10, 'delete_products'),
(40, 'Can view products', 10, 'view_products');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'produk', 'cart_user'),
(10, 'produk', 'products'),
(8, 'produk', 'produk'),
(9, 'produk', 'users'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-31 06:49:26.072294'),
(2, 'auth', '0001_initial', '2023-12-31 06:49:27.104347'),
(3, 'admin', '0001_initial', '2023-12-31 06:49:27.502686'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-31 06:49:27.522689'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-31 06:49:27.542688'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-31 06:49:27.703719'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-31 06:49:27.801091'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-31 06:49:27.834934'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-31 06:49:27.851284'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-31 06:49:27.934449'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-31 06:49:27.938449'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-31 06:49:27.953448'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-31 06:49:27.973965'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-31 06:49:27.996018'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-31 06:49:28.023749'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-31 06:49:28.041410'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-31 06:49:28.068684'),
(18, 'produk', '0001_initial', '2023-12-31 06:49:28.101418'),
(19, 'sessions', '0001_initial', '2023-12-31 06:49:28.184092'),
(20, 'produk', '0002_users', '2024-01-02 07:30:42.600907'),
(21, 'produk', '0003_products', '2024-01-02 18:47:10.030554'),
(22, 'produk', '0004_remove_products_product_id', '2024-01-02 19:20:30.892594');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ejw4q9iz6mi6tvvye6zf6s5mno4kbg1e', 'eyJ1c2VybmFtZSI6ImF1eHkiLCJvcmRlcl9pZCI6IjU3MTM4NTAzIn0:1rKvgZ:Ki6gmGqdCLa8u5Y04g1Z5BTvx5AZo9lGnCTZs5sipdI', '2024-01-17 07:29:07.935795');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_cart_user`
--

CREATE TABLE `produk_cart_user` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `server_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk_cart_user`
--

INSERT INTO `produk_cart_user` (`id`, `order_id`, `product_id`, `category`, `name`, `price`, `quantity`, `user_id`, `server_id`, `status`) VALUES
(1, '8696e6c3', '1', 'Mobile Legends', '5 Diamonds (5+0 Bonus)', 1393, 1, '123', '123', 'pending'),
(2, '9534971a', '1', 'Mobile Legends', '5 Diamonds (5+0 Bonus)', 1393, 1, '123', '9445', 'pending'),
(3, '73ae803b', '1', 'Mobile Legends', '5 Diamonds (5+0 Bonus)', 1393, 1, '123', '123', 'pending'),
(4, 'fed22519', '1', 'Mobile Legends', '5 Diamonds (5+0 Bonus)', 1393, 1, '123', '123', 'success'),
(5, 'd86ef13f', '6', 'Mobile Legends', '19 Diamonds (17+2 Bonus)', 5102, 1, '123', '123', 'success'),
(6, '44ce0484', '396', 'Clash of Clans', '80 Gems (80+8 Bonus)', 12000, 1, '123', '123', 'success'),
(7, '533a7491', '1', 'Mobile Legends', '5 Diamonds (5+0 Bonus)', 1393, 1, '123', '9445', 'success'),
(8, '641e01b7', '59', 'Mobile Legends Promo', '86 Diamonds (78+8 Bonus)', 20794, 1, '123', '123', 'success'),
(9, '51986779', '69', 'Free Fire', '5 Diamonds', 812, 1, '123', '', 'success'),
(10, 'd673f455', '181', 'PUBG Mobile', '30 UC', 6075, 1, '123', '123', 'success'),
(11, '93a3cf9a', '207', 'Genshin Impact', '60 Genesis Crystals', 11068, 1, '123', '123', 'success'),
(12, '93c2b618', '354', 'Clash of Clans', '80 Gems (80+8 Bonus)', 12000, 1, '123', '123', 'success'),
(13, '64a64618', '196', 'Valorant', '125 Points', 13761, 1, '123', '123', 'success'),
(14, '71e0d9db', '343', 'Call of Duty Mobile', '31 CP', 4455, 1, '123', '9445', 'success'),
(15, '45c9b191', '488', 'Honkai Impact 3', '65 B-Chips', 15010, 1, '123', '9445', 'success'),
(16, 'a7943a01', '298', 'Arena of Valorant', '7 Vouchers', 1900, 1, '123', '', 'success'),
(17, '0d7e074c', '245', 'Tower of Fantasy', '60 Tanium', 11100, 1, '123', '123', 'success'),
(18, 'f70909fd', '981', '8 Ball Pool', '20 Cash', 13186, 1, '123', '123', 'success'),
(19, '8cf5bb7b', '1', 'Mobile Legends', '5 Diamonds (5+0 Bonus)', 1393, 1, '123', '9445', 'success'),
(20, '57138503', '61', 'Mobile Legends Promo', '257 Diamonds (234+23 Bonus)', 62380, 1, '123', '9445', 'success');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_products`
--

CREATE TABLE `produk_products` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk_products`
--

INSERT INTO `produk_products` (`id`, `category`, `name`, `type`, `status`, `note`, `price`) VALUES
(1, 'Mobile Legends', '5 Diamonds (5+0 Bonus)', 'populer', 'active', '', 1393),
(2, 'Mobile Legends', '10 Diamonds (9+1 Bonus)', 'populer', 'active', '', 2787),
(3, 'Mobile Legends', '12 Diamonds (11+1 Bonus)', 'populer', 'active', '', 3246),
(4, 'Mobile Legends', '14 Diamonds (13+1 Bonus)', 'populer', 'active', '', 3710),
(5, 'Mobile Legends', '18 Diamonds (17+1 Bonus)', 'populer', 'active', '', 4639),
(6, 'Mobile Legends', '19 Diamonds (17+2 Bonus)', 'populer', 'active', '', 5102),
(7, 'Mobile Legends', '28 Diamonds (25+3 Bonus)', 'populer', 'active', '', 7426),
(8, 'Mobile Legends', '36 Diamonds (33+3 Bonus)', 'populer', 'active', '', 9283),
(9, 'Mobile Legends', '59 Diamonds (53+6 Bonus)', 'populer', 'active', '', 14851),
(10, 'Mobile Legends', '74 Diamonds (67+7 Bonus)', 'populer', 'active', '', 18562),
(11, 'Mobile Legends', '85 Diamonds (77+8 Bonus)', 'populer', 'active', '', 21353),
(12, 'Mobile Legends', '88 Diamonds (80+8 Bonus)', 'populer', 'active', '', 22277),
(13, 'Mobile Legends', '110 Diamonds (100+10 Bonus)', 'populer', 'active', '', 27825),
(14, 'Mobile Legends', '128 Diamonds (117+11 Bonus)', 'populer', 'active', '', 32509),
(15, 'Mobile Legends', '148 Diamonds (134+14 Bonus)', 'populer', 'active', '', 37131),
(16, 'Mobile Legends', '184 Diamonds (167+17 Bonus)', 'populer', 'active', '', 46443),
(17, 'Mobile Legends', '222 Diamonds (200+22 Bonus)', 'populer', 'active', '', 55660),
(18, 'Mobile Legends', '240 Diamonds (217+23 Bonus)', 'populer', 'active', '', 60325),
(19, 'Mobile Legends', '258 Diamonds (233+25 Bonus)', 'populer', 'active', '', 64976),
(20, 'Mobile Legends', '277 Diamonds (250+27 Bonus)', 'populer', 'active', '', 69592),
(21, 'Mobile Legends', '284 Diamonds (257+27 Bonus)', 'populer', 'active', '', 71474),
(22, 'Mobile Legends', '296 Diamonds (267+29 Bonus)', 'populer', 'active', '', 74232),
(23, 'Mobile Legends', '300 Diamonds (264+36 Bonus)', 'populer', 'active', '', 75828),
(24, 'Mobile Legends', '370 Diamonds (333+37 Bonus)', 'populer', 'active', '', 92781),
(25, 'Mobile Legends', '408 Diamonds (367+41 Bonus)', 'populer', 'active', '', 102050),
(26, 'Mobile Legends', '568 Diamonds (568+0 Bonus)', 'populer', 'active', '', 139201),
(27, 'Mobile Legends', '642 Diamonds (635+7 Bonus)', 'populer', 'active', '', 157720),
(28, 'Mobile Legends', '716 Diamonds (702+14 Bonus)', 'populer', 'active', '', 176318),
(29, 'Mobile Legends', '760 Diamonds (678+82 Bonus)', 'populer', 'active', '', 188830),
(30, 'Mobile Legends', '790 Diamonds (768+22 Bonus)', 'populer', 'active', '', 194830),
(31, 'Mobile Legends', '845 Diamonds (818+27 Bonus)', 'populer', 'active', '', 209084),
(32, 'Mobile Legends', '938 Diamonds (901+37 Bonus)', 'populer', 'active', '', 232192),
(33, 'Mobile Legends', '966 Diamonds (836+130 Bonus)', 'populer', 'active', '', 239819),
(34, 'Mobile Legends', '1045 Diamonds (928+117 Bonus)', 'populer', 'active', '', 256898),
(35, 'Mobile Legends', '1136 Diamonds (1136+0 Bonus)', 'populer', 'active', '', 278219),
(36, 'Mobile Legends', '1443 Diamonds (1277+166 Bonus)', 'populer', 'active', '', 353418),
(37, 'Mobile Legends', '1704 Diamonds (1704+0 Bonus)', 'populer', 'active', '', 417546),
(38, 'Mobile Legends', '2010 Diamonds (2010+0 Bonus)', 'populer', 'active', '', 463774),
(39, 'Mobile Legends', '2232 Diamonds (2210+22 Bonus)', 'populer', 'active', '', 519380),
(40, 'Mobile Legends', '2380 Diamonds (2343+37 Bonus)', 'populer', 'active', '', 556425),
(41, 'Mobile Legends', '2578 Diamonds (2578 Bonus)', 'populer', 'active', '', 602835),
(42, 'Mobile Legends', '2625 Diamonds (2253+372 Bonus)', 'populer', 'active', '', 615754),
(43, 'Mobile Legends', '3453 Diamonds (2985+468 Bonus)', 'populer', 'active', '', 814481),
(44, 'Mobile Legends', '3738 Diamonds (3738+0 Bonus)', 'populer', 'active', '', 889586),
(45, 'Mobile Legends', '4020 Diamonds (4020+0 Bonus)', 'populer', 'active', '', 926702),
(46, 'Mobile Legends', '4588 Diamonds (4588+0 Bonus)', 'populer', 'active', '', 1064964),
(47, 'Mobile Legends', '4830 Diamonds (4033+827 Bonus)', 'populer', 'active', '', 1112837),
(48, 'Mobile Legends', '6030 Diamonds (6030+0 Bonus)', 'populer', 'active', '', 1390797),
(49, 'Mobile Legends', '6840 Diamonds (5711+1129 Bonus)', 'populer', 'active', '', 1576284),
(50, 'Mobile Legends', '8040 Diamonds (8040+0 Bonus)', 'populer', 'active', '', 1852879),
(51, 'Mobile Legends', '9660 Diamonds (8006+1654 Bonus)', 'populer', 'active', '', 2223006),
(52, 'Mobile Legends', '14412 Diamonds (14412+0 Bonus)', 'populer', 'active', '', 3328184),
(53, 'Mobile Legends', 'Twilight Pass', 'populer', 'active', '', 146036),
(54, 'Mobile Legends', 'Weekly Diamond Pass', 'populer', 'active', '', 26696),
(55, 'Mobile Legends', 'Weekly Diamond Pass 2x', 'populer', 'inactive', '', 67736),
(56, 'Mobile Legends', 'Weekly Diamond Pass 3x', 'populer', 'inactive', '', 95415),
(57, 'Mobile Legends', 'Weekly Diamond Pass 4x', 'populer', 'inactive', '', 124739),
(58, 'Mobile Legends', 'Weekly Diamond Pass 5x', 'populer', 'inactive', '', 154039),
(59, 'Mobile Legends Promo', '86 Diamonds (78+8 Bonus)', 'populer', 'active', '', 20794),
(60, 'Mobile Legends Promo', '172 Diamonds (156+16 Bonus)', 'populer', 'active', '', 41587),
(61, 'Mobile Legends Promo', '257 Diamonds (234+23 Bonus)', 'populer', 'active', '', 62380),
(62, 'Mobile Legends Promo', '706 Diamonds (625+81 Bonus)', 'populer', 'active', '', 166346),
(63, 'Mobile Legends Promo', '2195 Diamonds (1860+335 Bonus)', 'populer', 'active', '', 499038),
(64, 'Mobile Legends Promo', '3688 Diamonds (3099+589 Bonus)', 'populer', 'active', '', 831730),
(65, 'Mobile Legends Promo', '5532 Diamonds (4649+883 Bonus)', 'populer', 'active', '', 1247595),
(66, 'Mobile Legends Promo', '9288 Diamonds (7740+1548 Bonus)', 'populer', 'active', '', 2079325),
(67, 'Mobile Legends Promo', 'Twilight Pass', 'populer', 'active', '', 130719),
(68, 'Mobile Legends Promo', 'Weekly Diamond Pass', 'populer', 'active', '', 26751),
(69, 'Free Fire', '5 Diamonds', 'populer', 'active', '', 812),
(70, 'Free Fire', '10 Diamonds', 'populer', 'active', '', 1619),
(71, 'Free Fire', '12 Diamonds', 'populer', 'active', '', 1830),
(72, 'Free Fire', '15 Diamonds', 'populer', 'active', '', 2432),
(73, 'Free Fire', '20 Diamonds', 'populer', 'active', '', 3233),
(74, 'Free Fire', '25 Diamonds', 'populer', 'active', '', 4040),
(75, 'Free Fire', '30 Diamonds', 'populer', 'active', '', 4847),
(76, 'Free Fire', '40 Diamonds', 'populer', 'active', '', 6445),
(77, 'Free Fire', '50 Diamonds', 'populer', 'active', '', 6478),
(78, 'Free Fire', '55 Diamonds', 'populer', 'active', '', 7270),
(79, 'Free Fire', '60 Diamonds', 'populer', 'active', '', 8096),
(80, 'Free Fire', '70 Diamonds', 'populer', 'active', '', 8885),
(81, 'Free Fire', '75 Diamonds', 'populer', 'active', '', 9692),
(82, 'Free Fire', '80 Diamonds', 'populer', 'active', '', 10499),
(83, 'Free Fire', '90 Diamonds', 'populer', 'active', '', 12113),
(84, 'Free Fire', '100 Diamonds', 'populer', 'active', '', 12926),
(85, 'Free Fire', '120 Diamonds', 'populer', 'active', '', 15348),
(86, 'Free Fire', '130 Diamonds', 'populer', 'active', '', 16962),
(87, 'Free Fire', '140 Diamonds', 'populer', 'active', '', 17771),
(88, 'Free Fire', '145 Diamonds', 'populer', 'active', '', 18578),
(89, 'Free Fire', '150 Diamonds', 'populer', 'active', '', 19428),
(90, 'Free Fire', '160 Diamonds', 'populer', 'active', '', 20999),
(91, 'Free Fire', '180 Diamonds', 'populer', 'active', '', 23420),
(92, 'Free Fire', '190 Diamonds', 'populer', 'active', '', 24229),
(93, 'Free Fire', '200 Diamonds', 'populer', 'active', '', 25758),
(94, 'Free Fire', '210 Diamonds', 'populer', 'active', '', 26651),
(95, 'Free Fire', '250 Diamonds', 'populer', 'active', '', 32315),
(96, 'Free Fire', '280 Diamonds', 'populer', 'active', '', 35625),
(97, 'Free Fire', '300 Diamonds', 'populer', 'active', '', 38775),
(98, 'Free Fire', '355 Diamonds', 'populer', 'active', '', 44427),
(99, 'Free Fire', '350 Diamonds', 'populer', 'active', '', 44427),
(100, 'Free Fire', '375 Diamonds', 'populer', 'active', '', 47655),
(101, 'Free Fire', '400 Diamonds', 'populer', 'active', '', 50885),
(102, 'Free Fire', '405 Diamonds', 'populer', 'active', '', 50998),
(103, 'Free Fire', '425 Diamonds', 'populer', 'active', '', 53307),
(104, 'Free Fire', '475 Diamonds', 'populer', 'active', '', 59765),
(105, 'Free Fire', '500 Diamonds', 'populer', 'active', '', 62995),
(106, 'Free Fire', '510 Diamonds', 'populer', 'active', '', 64752),
(107, 'Free Fire', '515 Diamonds', 'populer', 'active', '', 65416),
(108, 'Free Fire', '545 Diamonds', 'populer', 'active', '', 68646),
(109, 'Free Fire', '565 Diamonds', 'populer', 'active', '', 70434),
(110, 'Free Fire', '600 Diamonds', 'populer', 'active', '', 76080),
(111, 'Free Fire', '635 Diamonds', 'populer', 'active', '', 79949),
(112, 'Free Fire', '655 Diamonds', 'populer', 'active', '', 82900),
(113, 'Free Fire', '720 Diamonds', 'populer', 'active', '', 88828),
(114, 'Free Fire', '700 Diamonds', 'populer', 'active', '', 88532),
(115, 'Free Fire', '790 Diamonds', 'populer', 'active', '', 97357),
(116, 'Free Fire', '800 Diamonds', 'populer', 'active', '', 99322),
(117, 'Free Fire', '860 Diamonds', 'populer', 'active', '', 105638),
(118, 'Free Fire', '930 Diamonds', 'populer', 'active', '', 115469),
(119, 'Free Fire', '1000 Diamonds', 'populer', 'active', '', 124350),
(120, 'Free Fire', '1050 Diamonds', 'populer', 'active', '', 130808),
(121, 'Free Fire', '1080 Diamonds', 'populer', 'active', '', 134335),
(122, 'Free Fire', '1200 Diamonds', 'populer', 'active', '', 149375),
(123, 'Free Fire', '1215 Diamonds', 'populer', 'active', '', 148802),
(124, 'Free Fire', '1300 Diamonds', 'populer', 'active', '', 162653),
(125, 'Free Fire', '1440 Diamonds', 'populer', 'active', '', 176047),
(126, 'Free Fire', '1450 Diamonds', 'populer', 'active', '', 177247),
(127, 'Free Fire', '1490 Diamonds', 'populer', 'active', '', 181422),
(128, 'Free Fire', '1510 Diamonds', 'populer', 'active', '', 186927),
(129, 'Free Fire', '1580 Diamonds', 'populer', 'active', '', 192561),
(130, 'Free Fire', '1795 Diamonds', 'populer', 'active', '', 222527),
(131, 'Free Fire', '1800 Diamonds', 'populer', 'active', '', 222070),
(132, 'Free Fire', '2000 Diamonds', 'populer', 'active', '', 248675),
(133, 'Free Fire', '2180 Diamonds', 'populer', 'active', '', 267258),
(134, 'Free Fire', '2190 Diamonds', 'populer', 'active', '', 271955),
(135, 'Free Fire', '2210 Diamonds', 'populer', 'active', '', 272060),
(136, 'Free Fire', '2280 Diamonds', 'populer', 'active', '', 282416),
(137, 'Free Fire', '2355 Diamonds', 'populer', 'active', '', 286370),
(138, 'Free Fire', '2720 Diamonds', 'populer', 'active', '', 336324),
(139, 'Free Fire', '3640 Diamonds', 'populer', 'active', '', 450499),
(140, 'Free Fire', '4000 Diamonds', 'populer', 'active', '', 490486),
(141, 'Free Fire', '7290 Diamonds', 'populer', 'active', '', 885060),
(142, 'Free Fire', 'Membership Mingguan', 'populer', 'active', '', 26625),
(143, 'Free Fire', 'Membership Bulanan', 'populer', 'active', '', 79825),
(144, 'Free Fire', 'Level Up Pass', 'populer', 'active', '', 13310),
(145, 'Free Fire', 'BP Card', 'populer', 'active', '', 39925),
(146, 'Free Fire', '5 Diamonds', 'populer', 'inactive', '', 814),
(147, 'Free Fire', '10 Diamonds', 'populer', 'inactive', '', 1623),
(148, 'Free Fire', '25 Diamonds', 'populer', 'inactive', '', 4050),
(149, 'Free Fire', '50 Diamonds', 'populer', 'inactive', '', 6478),
(150, 'Free Fire', '60 Diamonds', 'populer', 'inactive', '', 8096),
(151, 'Free Fire', '70 Diamonds', 'populer', 'inactive', '', 8905),
(152, 'Free Fire', '75 Diamonds', 'populer', 'inactive', '', 9714),
(153, 'Free Fire', '100 Diamonds', 'populer', 'inactive', '', 12955),
(154, 'Free Fire', '140 Diamonds', 'populer', 'inactive', '', 17810),
(155, 'Free Fire', '355 Diamonds', 'populer', 'inactive', '', 44525),
(156, 'Free Fire', '720 Diamonds', 'populer', 'inactive', '', 89025),
(157, 'Free Fire Max', '70 Diamonds', 'populer', 'active', '', 8783),
(158, 'Free Fire Max', '100 Diamonds', 'populer', 'active', '', 12778),
(159, 'Free Fire Max', '140 Diamonds', 'populer', 'active', '', 17566),
(160, 'Free Fire Max', '150 Diamonds', 'populer', 'active', '', 19162),
(161, 'Free Fire Max', '210 Diamonds', 'populer', 'active', '', 26344),
(162, 'Free Fire Max', '280 Diamonds', 'populer', 'active', '', 35137),
(163, 'Free Fire Max', '355 Diamonds', 'populer', 'active', '', 43915),
(164, 'Free Fire Max', '425 Diamonds', 'populer', 'active', '', 52693),
(165, 'Free Fire Max', '500 Diamonds', 'populer', 'active', '', 62269),
(166, 'Free Fire Max', '720 Diamonds', 'populer', 'active', '', 87805),
(167, 'Free Fire Max', '860 Diamonds', 'populer', 'active', '', 105361),
(168, 'Free Fire Max', '1000 Diamonds', 'populer', 'active', '', 122917),
(169, 'Free Fire Max', '1075 Diamonds', 'populer', 'active', '', 131695),
(170, 'Free Fire Max', '1440 Diamonds', 'populer', 'active', '', 176220),
(171, 'Free Fire Max', '1450 Diamonds', 'populer', 'active', '', 181425),
(172, 'Free Fire Max', '2180 Diamonds', 'populer', 'active', '', 272125),
(173, 'Free Fire Max', '3640 Diamonds', 'populer', 'active', '', 453525),
(174, 'Free Fire Max', '7290 Diamonds', 'populer', 'active', '', 877825),
(175, 'Free Fire Max', '36500 Diamonds', 'populer', 'active', '', 4405500),
(176, 'Free Fire Max', '73100 Diamonds', 'populer', 'active', '', 8811000),
(177, 'Free Fire Max', 'Membership Mingguan', 'populer', 'active', '', 25625),
(178, 'Free Fire Max', 'Membership Bulanan', 'populer', 'active', '', 76825),
(179, 'Free Fire Max', 'Level Up Pass', 'populer', 'active', '', 12810),
(180, 'Free Fire Max', 'BP Card', 'populer', 'active', '', 38425),
(181, 'PUBG Mobile', '30 UC', 'populer', 'inactive', '', 6075),
(182, 'PUBG Mobile', '60 UC', 'populer', 'inactive', '', 11923),
(183, 'PUBG Mobile', '325 UC (300+25 Bonus)', 'populer', 'active', '', 60291),
(184, 'PUBG Mobile', '660 UC (600+60 Bonus)', 'populer', 'active', '', 120050),
(185, 'PUBG Mobile', '1800 UC (1500+300 Bonus)', 'populer', 'active', '', 301691),
(186, 'PUBG Mobile', '3850 UC (3000+850 Bonus)', 'populer', 'active', '', 602583),
(187, 'PUBG Mobile', '8100 UC (6000+2100 Bonus)', 'populer', 'active', '', 1207082),
(188, 'PUBG Mobile', 'Royale Pass', 'populer', 'active', '', 38964),
(189, 'PUBG Mobile', 'Elite Pass Plus', 'populer', 'active', '', 368417),
(190, 'PUBG Mobile', '60 UC', 'populer', 'inactive', '', 13761),
(191, 'PUBG Mobile', '325 UC (300+25 Bonus)', 'populer', 'inactive', '', 30128),
(192, 'PUBG Mobile', '660 UC (600+60 Bonus)', 'populer', 'inactive', '', 45900),
(193, 'PUBG Mobile', '1800 UC (1500+300 Bonus)', 'populer', 'inactive', '', 73440),
(194, 'PUBG Mobile', '3850 UC (3000+850 Bonus)', 'populer', 'inactive', '', 137700),
(195, 'PUBG Mobile', '8100 UC (6000+2100 Bonus)', 'populer', 'inactive', '', 150588),
(196, 'Valorant', '125 Points', 'populer', 'active', '', 13761),
(197, 'Valorant', '300 Points', 'populer', 'inactive', '', 42123),
(198, 'Valorant', '420 Points', 'populer', 'active', '', 45900),
(199, 'Valorant', '700 Points', 'populer', 'active', '', 73440),
(200, 'Valorant', '1375 Points', 'populer', 'active', '', 137700),
(201, 'Valorant', '1650 Points', 'populer', 'inactive', '', 186997),
(202, 'Valorant', '2400 Points', 'populer', 'active', '', 229000),
(203, 'Valorant', '3400 Points', 'populer', 'inactive', '', 358573),
(204, 'Valorant', '4000 Points', 'populer', 'active', '', 366000),
(205, 'Valorant', '7000 Points', 'populer', 'inactive', '', 692985),
(206, 'Valorant', '8150 Points', 'populer', 'active', '', 733000),
(207, 'Genshin Impact', '60 Genesis Crystals', 'populer', 'active', '', 11068),
(208, 'Genshin Impact', '300+30 Genesis Crystals', 'populer', 'active', '', 57378),
(209, 'Genshin Impact', '980+110 Genesis Crystals', 'populer', 'active', '', 172257),
(210, 'Genshin Impact', '1980+260 Genesis Crystals', 'populer', 'active', '', 374331),
(211, 'Genshin Impact', '3280+600 Genesis Crystals', 'populer', 'active', '', 573477),
(212, 'Genshin Impact', '6480+1600 Genesis Crystals', 'populer', 'active', '', 1143277),
(213, 'Genshin Impact', 'Blessing of the Welkin Moon', 'populer', 'active', '', 57278),
(214, 'Genshin Impact', 'Blessing of the Welkin Moon 2x', 'populer', 'active', '', 115556),
(215, 'Genshin Impact', 'Blessing of the Welkin Moon 3x', 'populer', 'active', '', 171834),
(216, 'Genshin Impact', 'Blessing of the Welkin Moon 4x', 'populer', 'active', '', 229112),
(217, 'Genshin Impact', 'Blessing of the Welkin Moon 5x', 'populer', 'active', '', 286390),
(218, 'Sausage Man', '60 Candies', 'populer', 'active', '', 11404),
(219, 'Sausage Man', '180 Candies', 'populer', 'active', '', 34714),
(220, 'Sausage Man', '316 Candies', 'populer', 'active', '', 58164),
(221, 'Sausage Man', '718 Candies', 'populer', 'active', '', 115184),
(222, 'Sausage Man', '1368 Candies', 'populer', 'active', '', 230838),
(223, 'Sausage Man', '2118 Candies', 'populer', 'active', '', 350165),
(224, 'Sausage Man', '3548 Candies', 'populer', 'active', '', 580319),
(225, 'Sausage Man', '7048 Candies', 'populer', 'active', '', 1171157),
(226, 'Ragnarok Origin', '40 Nyan Berry', 'populer', 'active', '', 12631),
(227, 'Ragnarok Origin', '125 Nyan Berry', 'populer', 'active', '', 37900),
(228, 'Ragnarok Origin', '210 Nyan Berry', 'populer', 'active', '', 62722),
(229, 'Ragnarok Origin', '430 Nyan Berry', 'populer', 'active', '', 126516),
(230, 'Ragnarok Origin', '900 Nyan Berry', 'populer', 'active', '', 259276),
(231, 'Ragnarok Origin', '2300 Nyan Berry', 'populer', 'active', '', 635591),
(232, 'Ragnarok Origin', '4800 Nyan Berry', 'populer', 'active', '', 1268265),
(233, 'Honkai: Star Rail', '60 Oneiric Shard', 'populer', 'active', '', 14100),
(234, 'Honkai: Star Rail', '300+30 Oneiric Shard', 'populer', 'active', '', 57800),
(235, 'Honkai: Star Rail', '980+110 Oneiric Shard', 'populer', 'active', '', 169200),
(236, 'Honkai: Star Rail', '1280+140 Oneiric Shard', 'populer', 'active', '', 232000),
(237, 'Honkai: Star Rail', '1960+220 Oneiric Shard', 'populer', 'active', '', 371025),
(238, 'Honkai: Star Rail', '1980+260 Oneiric Shard', 'populer', 'active', '', 379325),
(239, 'Honkai: Star Rail', '3280+600 Oneiric Shard', 'populer', 'active', '', 587187),
(240, 'Honkai: Star Rail', 'Express Supply Pass', 'populer', 'active', '', 57800),
(241, 'Honkai: Star Rail', 'Express Supply Pass 2x', 'populer', 'active', '', 114600),
(242, 'Honkai: Star Rail', 'Express Supply Pass 3x', 'populer', 'active', '', 169900),
(243, 'Honkai: Star Rail', 'Express Supply Pass 4x', 'populer', 'active', '', 225969),
(244, 'Honkai: Star Rail', 'Express Supply Pass 5x', 'populer', 'active', '', 282023),
(245, 'Tower of Fantasy', '60 Tanium', 'populer', 'active', '', 11100),
(246, 'Tower of Fantasy', '300 Tanium + 20 Dark Crystal ', 'populer', 'active', '', 56800),
(247, 'Tower of Fantasy', '980 Tanium + 110 Dark Crystal', 'populer', 'active', '', 171000),
(248, 'Tower of Fantasy', '1980 Tanium + 270 Dark Crystal', 'populer', 'active', '', 342500),
(249, 'Tower of Fantasy', '3280 Tanium + 530 Dark Crystal', 'populer', 'active', '', 609193),
(250, 'Tower of Fantasy', '6480 Tanium + 1300 Dark Crystal', 'populer', 'active', '', 1140000),
(251, 'Tower of Fantasy', 'Rookie Supplies\r\n', 'populer', 'active', '', 11100),
(252, 'Tower of Fantasy', 'Adventure Pack', 'populer', 'active', '', 56900),
(253, 'Tower of Fantasy', 'Monthly Pass', 'populer', 'active', '', 56900),
(254, 'Tower of Fantasy', 'Basic Pass', 'populer', 'active', '', 114000),
(255, 'Tower of Fantasy', 'Upgrade Pass', 'populer', 'active', '', 126000),
(256, 'Tower of Fantasy', 'Collectors Edition Pass\r\n', 'populer', 'active', '', 227926),
(257, 'Zepeto', '7 Zems', 'populer', 'active', '', 7030),
(258, 'Zepeto', '14 Zems', 'populer', 'inactive', '', 12130),
(259, 'Zepeto', '60 Zems', 'populer', 'active', '', 55000),
(260, 'Zepeto', '125 Zems', 'populer', 'active', '', 108925),
(261, 'Zepeto', '196 Zems', 'populer', 'inactive', '', 172000),
(262, 'Zepeto', '770 Zems', 'populer', 'active', '', 630000),
(263, 'Zepeto', '4.680 Coins', 'populer', 'active', '', 13365),
(264, 'Zepeto', '21.000 Coins', 'populer', 'active', '', 55000),
(265, 'Zepeto', '62.800 Coins', 'populer', 'inactive', '', 162452),
(266, 'Zepeto', '234.000 Coins', 'populer', 'inactive', '', 625922),
(267, 'Zepeto', 'Zepeto Premium\r\n', 'populer', 'active', '', 56370),
(268, 'Eggy Party', '10 Eggy Coins', 'populer', 'active', '', 4340),
(269, 'Eggy Party', '63 Eggy Coins (60+3 Bonus)', 'populer', 'active', '', 128150),
(270, 'Eggy Party', '126 Eggy Coins (120+6 Bonus)', 'populer', 'active', '', 400527),
(271, 'Eggy Party', '324 Eggy Coins (300+24 Bonus)', 'populer', 'active', '', 2249862),
(272, 'Eggy Party', '757 Eggy Coins (700+57 Bonus)', 'populer', 'active', '', 16101031),
(273, 'Eggy Party', '1524 Eggy Coins (1380+144 Bonus)', 'populer', 'active', '', 43841766),
(274, 'Eggy Party', '2296 Eggy Coins (2080+216 Bonus)', 'populer', 'active', '', 109492258),
(275, 'Eggy Party', '3873 Eggy Coins (3450+423 Bonus)', 'populer', 'active', '', 281057865),
(276, 'Eggy Party', '7783 Eggy Coins (6880+903 Bonus)', 'populer', 'active', '', 1449215209),
(277, 'Eggy Party', 'Weekly Egg Coin Pack', 'populer', 'active', '', 33660),
(278, 'Eggy Party', 'Yoyo Membership', 'populer', 'active', '', 65478),
(279, 'Eggy Party', 'Shiny Coin Jar', 'populer', 'active', '', 99774),
(280, 'Ace Racer', '60 + 5 Tokens', 'topup', 'active', '', 11770),
(281, 'Ace Racer', '250 + 20 Tokens', 'topup', 'active', '', 47785),
(282, 'Ace Racer', '680 + 60 Tokens', 'topup', 'active', '', 119785),
(283, 'Ace Racer', '1180 + 120 Tokens', 'topup', 'active', '', 215760),
(284, 'Ace Racer', '2880 + 300 Tokens', 'topup', 'active', '', 549600),
(285, 'Ace Racer', '5880 + 650 Tokens', 'topup', 'active', '', 1077600),
(286, 'Arena Breakout', '60 + 6 Bons', 'topup', 'active', '', 13200),
(287, 'Arena Breakout', '310 + 25 Bons', 'topup', 'active', '', 66500),
(288, 'Arena Breakout', '630 + 45 Bons', 'topup', 'active', '', 132000),
(289, 'Arena Breakout', '1580 + 110 Bons', 'topup', 'active', '', 330000),
(290, 'Arena Breakout', '3200 + 200 Bons', 'topup', 'active', '', 670000),
(291, 'Arena Breakout', '6500 + 320 Bons', 'topup', 'active', '', 1320000),
(292, 'Arena Breakout', 'Pilihan Pemula', 'topup', 'active', '', 13200),
(293, 'Arena Breakout', 'Battle Pass Lanjutan', 'topup', 'active', '', 66500),
(294, 'Arena Breakout', 'Battle Pass Premium', 'topup', 'active', '', 205000),
(295, 'Arena Breakout', 'Kotak Anti Peluru 30 Hari', 'topup', 'active', '', 119000),
(296, 'Arena Breakout', 'Percobaan Elite 30 Hari', 'topup', 'active', '', 39500),
(297, 'Arena Breakout', 'Kotak Komposit 30 Hari', 'topup', 'active', '', 66500),
(298, 'Arena of Valorant', '7 Vouchers', 'topup', 'active', '', 1900),
(299, 'Arena of Valorant', '18 Vouchers', 'topup', 'active', '', 4750),
(300, 'Arena of Valorant', '40 Vouchers', 'topup', 'active', '', 8805),
(301, 'Arena of Valorant', '90 Vouchers', 'topup', 'active', '', 17610),
(302, 'Arena of Valorant', '230 Vouchers', 'topup', 'active', '', 44025),
(303, 'Arena of Valorant', '470 Vouchers', 'topup', 'active', '', 88025),
(304, 'Arena of Valorant', '950 Vouchers', 'topup', 'active', '', 176025),
(305, 'Arena of Valorant', '1430 Vouchers', 'topup', 'active', '', 264025),
(306, 'Arena of Valorant', '2390 Vouchers', 'topup', 'active', '', 440025),
(307, 'Arena of Valorant', '4800 Vouchers\r\n', 'topup', 'active', '', 880025),
(308, 'Be The King: Judge Destiny', '60 Gold', 'topup', 'active', '', 11760),
(309, 'Be The King: Judge Destiny', '300 Gold', 'topup', 'active', '', 59760),
(310, 'Be The King: Judge Destiny', '680 Gold', 'topup', 'active', '', 119760),
(311, 'Be The King: Judge Destiny', '2040 Gold', 'topup', 'active', '', 357600),
(312, 'Be The King: Judge Destiny', '3400 Gold', 'topup', 'active', '', 597600),
(313, 'Be The King: Judge Destiny', '6800 Gold', 'topup', 'active', '', 1197600),
(314, 'Black Clover M', '40 Premium Black Crystals', 'topup', 'active', '', 13356),
(315, 'Black Clover M', '210 Premium Black Crystals', 'topup', 'active', '', 63025),
(316, 'Black Clover M', '425 Premium Black Crystals', 'topup', 'active', '', 126025),
(317, 'Black Clover M', '860 Premium Black Crystals', 'topup', 'active', '', 252025),
(318, 'Black Clover M', '1300 Premium Black Crystals', 'topup', 'active', '', 378025),
(319, 'Black Clover M', '2180 Premium Black Crystals', 'topup', 'active', '', 632025),
(320, 'Black Clover M', '3100 Premium Black Crystals', 'topup', 'active', '', 885025),
(321, 'Black Clover M', '4550 Premium Black Crystals', 'topup', 'active', '', 1265025),
(322, 'Black Clover M', 'Summon Harian 1', 'topup', 'active', '', 12510),
(323, 'Black Clover M', 'Summon Harian 2', 'topup', 'active', '', 63025),
(324, 'Black Clover M', 'Summon Mingguan 1', 'topup', 'active', '', 63025),
(325, 'Black Clover M', 'Summon Mingguan 2', 'topup', 'active', '', 252025),
(326, 'Black Clover M', 'Summon Bulanan 1', 'topup', 'active', '', 126025),
(327, 'Black Clover M', 'Summon Bulanan 2', 'topup', 'active', '', 378025),
(328, 'Bleach Mobile 3D', '30 Kristal', 'topup', 'active', '', 4425),
(329, 'Bleach Mobile 3D', '60 Kristal', 'topup', 'active', '', 8850),
(330, 'Bleach Mobile 3D', '120 Kristal', 'topup', 'active', '', 17700),
(331, 'Bleach Mobile 3D', '180 Kristal', 'topup', 'active', '', 26550),
(332, 'Bleach Mobile 3D', '300 Kristal', 'topup', 'active', '', 44250),
(333, 'Bleach Mobile 3D', '360 Kristal', 'topup', 'active', '', 53100),
(334, 'Bleach Mobile 3D', '450 Kristal', 'topup', 'active', '', 66375),
(335, 'Bleach Mobile 3D', '600 Kristal', 'topup', 'active', '', 88500),
(336, 'Bleach Mobile 3D', '900 Kristal', 'topup', 'active', '', 132750),
(337, 'Bleach Mobile 3D', '1530 Kristal', 'topup', 'active', '', 225675),
(338, 'Bleach Mobile 3D', '1980 Kristal', 'topup', 'active', '', 292050),
(339, 'Bleach Mobile 3D', '2970 Kristal', 'topup', 'active', '', 438075),
(340, 'Bleach Mobile 3D', '3000 Kristal', 'topup', 'active', '', 442500),
(341, 'Bleach Mobile 3D', '4950 Kristal', 'topup', 'active', '', 730125),
(342, 'Bleach Mobile 3D', '9000 Kristal', 'topup', 'active', '', 1327500),
(343, 'Call of Duty Mobile', '31 CP', 'topup', 'active', '', 4455),
(344, 'Call of Duty Mobile', '63 CP', 'topup', 'active', '', 8808),
(345, 'Call of Duty Mobile', '128 CP', 'topup', 'active', '', 17600),
(346, 'Call of Duty Mobile', '321 CP', 'topup', 'active', '', 44025),
(347, 'Call of Duty Mobile', '645 CP', 'topup', 'active', '', 84000),
(348, 'Call of Duty Mobile', '1373 CP', 'topup', 'active', '', 172000),
(349, 'Call of Duty Mobile', '2060 CP', 'topup', 'active', '', 258688),
(350, 'Call of Duty Mobile', '3564 CP', 'topup', 'active', '', 435182),
(351, 'Call of Duty Mobile', '5618 CP', 'topup', 'inactive', '', 635821),
(352, 'Call of Duty Mobile', '7656 CP', 'topup', 'inactive', '', 870225),
(353, 'Call of Duty Mobile', '15312 CP', 'topup', 'active', '', 1800000),
(354, 'Clash of Clans', '80 Gems (80+8 Bonus)', 'topup', 'active', '', 12000),
(355, 'Clash of Clans', '550 Gems (500+50 Bonus)', 'topup', 'active', '', 61725),
(356, 'Clash of Clans', '1320 Gems (1200+120 Bonus)', 'topup', 'active', '', 124025),
(357, 'Clash of Clans', '2750 Gems (2500+250 Bonus)', 'topup', 'active', '', 250525),
(358, 'Clash of Clans', '7150 Gems (6500+650 Bonus)', 'topup', 'active', '', 624025),
(359, 'Clash of Clans', '15400 Gems (14000+1400 Bonus)', 'topup', 'active', '', 1251025),
(360, 'Clash of Clans', 'Gold Pass', 'topup', 'active', '', 86025),
(361, 'Clash Royale', '80 Gems (80+8 Bonus)', 'topup', 'active', '', 12700),
(362, 'Clash Royale', '550 Gems (500+50 Bonus)', 'topup', 'active', '', 63700),
(363, 'Clash Royale', '1320 Gems (1200+120 Bonus)', 'topup', 'active', '', 127800),
(364, 'Clash Royale', '2750 Gems (2500+250 Bonus)', 'topup', 'active', '', 254800),
(365, 'Clash Royale', '7150 Gems (6500+650 Bonus)', 'topup', 'active', '', 638000),
(366, 'Clash Royale', '15400 Gems (14000+1400 Bonus)', 'topup', 'active', '', 1276000),
(367, 'Clash Royale', 'Gold Pass', 'topup', 'active', '', 76500),
(368, 'Clash Royale', 'Diamond Pass', 'topup', 'active', '', 153100),
(369, 'Dragon Raja - Sea', '76 Coupons', 'topup', 'active', '', 14035),
(370, 'Dragon Raja - Sea', '456 Coupons', 'topup', 'active', '', 84210),
(371, 'Dragon Raja - Sea', '820 Coupons', 'topup', 'active', '', 140350),
(372, 'Dragon Raja - Sea', '1699 Coupons', 'topup', 'active', '', 280700),
(373, 'Dragon Raja - Sea', '5161 Coupons', 'topup', 'active', '', 842100),
(374, 'Dragon Raja - Sea', '9056 Coupons', 'topup', 'active', '', 1403500),
(375, 'Dragon Raja - Sea', 'Investment Fund', 'topup', 'active', '', 182455),
(376, 'Dragon Raja - Sea', 'Investment Fund II', 'topup', 'active', '', 249744),
(377, 'FC Mobile', '40 FC Points', 'topup', 'active', '', 6081),
(378, 'FC Mobile', '100 FC Points', 'topup', 'active', '', 14965),
(379, 'FC Mobile', '520 FC Points', 'topup', 'active', '', 73838),
(380, 'FC Mobile', '1070 FC Points', 'topup', 'active', '', 148610),
(381, 'FC Mobile', '2200 FC Points', 'topup', 'active', '', 307500),
(382, 'FC Mobile', '5750 FC Points', 'topup', 'active', '', 746786),
(383, 'FC Mobile', '12000 FC Points', 'topup', 'active', '', 1494506),
(384, 'Goddess of Victory Nikke', '60 + 1 Gems', 'topup', 'active', '', 11800),
(385, 'Goddess of Victory Nikke', '120 + 3 Gems', 'topup', 'active', '', 24000),
(386, 'Goddess of Victory Nikke', '320 + 10 Gems', 'topup', 'active', '', 60000),
(387, 'Goddess of Victory Nikke', '720 + 120 Gems', 'topup', 'active', '', 121000),
(388, 'Goddess of Victory Nikke', '1500 + 260 Gems', 'topup', 'active', '', 234000),
(389, 'Goddess of Victory Nikke', '2370 + 420 Gems', 'topup', 'active', '', 374000),
(390, 'Goddess of Victory Nikke', '2300 + 400 Gems', 'topup', 'active', '', 360000),
(391, 'Goddess of Victory Nikke', '4200 + 1000 Gems', 'topup', 'active', '', 673000),
(392, 'Goddess of Victory Nikke', '6200 + 1500 Gems', 'topup', 'active', '', 963000),
(393, 'Goddess of Victory Nikke', 'Monthly Pass', 'topup', 'active', '', 60000),
(394, 'Growtopia', 'Gem Fountain', 'topup', 'active', '', 67240),
(395, 'Growtopia', 'Royal Grow Pass', 'topup', 'active', '', 133545),
(396, 'Growtopia', 'Its Rainin Gems', 'topup', 'active', '', 133570),
(397, 'Growtopia', 'Gem Bounty', 'topup', 'active', '', 401543),
(398, 'Growtopia', 'Gem Abundance', 'topup', 'active', '', 669491),
(399, 'Growtopia', '1 Year Subscription Token', 'topup', 'active', '', 669491),
(400, 'Hago', '20 Diamonds', 'topup', 'active', '', 5900),
(401, 'Hago', '25 Diamonds', 'topup', 'active', '', 7200),
(402, 'Hago', '30 Diamonds', 'topup', 'active', '', 8610),
(403, 'Hago', '35 Diamonds', 'topup', 'active', '', 10045),
(404, 'Hago', '40 Diamonds', 'topup', 'active', '', 11480),
(405, 'Hago', '45 Diamonds', 'topup', 'active', '', 12915),
(406, 'Hago', '50 Diamonds', 'topup', 'active', '', 14350),
(407, 'Hago', '55 Diamonds', 'topup', 'active', '', 15785),
(408, 'Hago', '60 Diamonds', 'topup', 'active', '', 17220),
(409, 'Hago', '65 Diamonds', 'topup', 'active', '', 18655),
(410, 'Hago', '70 Diamonds', 'topup', 'active', '', 20090),
(411, 'Hago', '75 Diamonds', 'topup', 'active', '', 21525),
(412, 'Hago', '80 Diamonds', 'topup', 'active', '', 22960),
(413, 'Hago', '85 Diamonds', 'topup', 'active', '', 24395),
(414, 'Hago', '90 Diamonds', 'topup', 'active', '', 25830),
(415, 'Hago', '95 Diamonds', 'topup', 'active', '', 27265),
(416, 'Hago', '100 Diamonds', 'topup', 'active', '', 28700),
(417, 'Hago', '125 Diamonds', 'topup', 'active', '', 35875),
(418, 'Hago', '150 Diamonds', 'topup', 'active', '', 43050),
(419, 'Hago', '175 Diamonds', 'topup', 'active', '', 50225),
(420, 'Hago', '200 Diamonds', 'topup', 'active', '', 57400),
(421, 'Hago', '225 Diamonds', 'topup', 'active', '', 64575),
(422, 'Hago', '250 Diamonds', 'topup', 'active', '', 71750),
(423, 'Hago', '275 Diamonds', 'topup', 'active', '', 78925),
(424, 'Hago', '300 Diamonds', 'topup', 'active', '', 86100),
(425, 'Hago', '325 Diamonds', 'topup', 'active', '', 93275),
(426, 'Hago', '350 Diamonds', 'topup', 'active', '', 100450),
(427, 'Hago', '375 Diamonds', 'topup', 'active', '', 107625),
(428, 'Hago', '400 Diamonds', 'topup', 'active', '', 114800),
(429, 'Hago', '425 Diamonds', 'topup', 'active', '', 121975),
(430, 'Hago', '450 Diamonds', 'topup', 'active', '', 129150),
(431, 'Hago', '475 Diamonds', 'topup', 'active', '', 136325),
(432, 'Hago', '500 Diamonds', 'topup', 'active', '', 143500),
(433, 'Hago', '525 Diamonds', 'topup', 'active', '', 150675),
(434, 'Hago', '550 Diamonds', 'topup', 'active', '', 157850),
(435, 'Hago', '575 Diamonds', 'topup', 'active', '', 165025),
(436, 'Hago', '600 Diamonds', 'topup', 'active', '', 172200),
(437, 'Hago', '625 Diamonds', 'topup', 'active', '', 179375),
(438, 'Hago', '650 Diamonds', 'topup', 'active', '', 186550),
(439, 'Hago', '675 Diamonds', 'topup', 'active', '', 193725),
(440, 'Hago', '700 Diamonds', 'topup', 'active', '', 200900),
(441, 'Hago', '725 Diamonds', 'topup', 'active', '', 208075),
(442, 'Hago', '750 Diamonds', 'topup', 'active', '', 215250),
(443, 'Hago', '775 Diamonds', 'topup', 'active', '', 222425),
(444, 'Hago', '800 Diamonds', 'topup', 'active', '', 229600),
(445, 'Hago', '825 Diamonds', 'topup', 'active', '', 236775),
(446, 'Hago', '850 Diamonds', 'topup', 'active', '', 243950),
(447, 'Hago', '900 Diamonds', 'topup', 'active', '', 258300),
(448, 'Hago', '925 Diamonds', 'topup', 'active', '', 265475),
(449, 'Hago', '950 Diamonds', 'topup', 'active', '', 272650),
(450, 'Hago', '1000 Diamonds', 'topup', 'active', '', 287000),
(451, 'Hago', '1050 Diamonds', 'topup', 'active', '', 301350),
(452, 'Hago', '1100 Diamonds', 'topup', 'active', '', 315700),
(453, 'Hago', '1200 Diamonds', 'topup', 'active', '', 344400),
(454, 'Hago', '1250 Diamonds', 'topup', 'active', '', 358750),
(455, 'Hago', '1300 Diamonds', 'topup', 'active', '', 373100),
(456, 'Hago', '1350 Diamonds', 'topup', 'active', '', 387450),
(457, 'Hago', '1400 Diamonds', 'topup', 'active', '', 401800),
(458, 'Hago', '1450 Diamonds', 'topup', 'active', '', 416150),
(459, 'Hago', '1500 Diamonds', 'topup', 'active', '', 430500),
(460, 'Hago', '1600 Diamonds', 'topup', 'active', '', 459200),
(461, 'Hago', '1650 Diamonds', 'topup', 'active', '', 473550),
(462, 'Hago', '1700 Diamonds', 'topup', 'active', '', 487900),
(463, 'Hago', '1800 Diamonds', 'topup', 'active', '', 516600),
(464, 'Hago', '1900 Diamonds', 'topup', 'active', '', 545300),
(465, 'Hago', '2000 Diamonds', 'topup', 'active', '', 574000),
(466, 'Hago', '2100 Diamonds', 'topup', 'active', '', 602700),
(467, 'Hago', '2200 Diamonds', 'topup', 'active', '', 631400),
(468, 'Hago', '2300 Diamonds', 'topup', 'active', '', 660100),
(469, 'Hago', '2400 Diamonds', 'topup', 'active', '', 688800),
(470, 'Hago', '2500 Diamonds', 'topup', 'active', '', 717500),
(471, 'Hago', '2600 Diamonds', 'topup', 'active', '', 746200),
(472, 'Hago', '2700 Diamonds', 'topup', 'active', '', 774900),
(473, 'Hago', '2800 Diamonds', 'topup', 'active', '', 803600),
(474, 'Hago', '2900 Diamonds', 'topup', 'active', '', 832300),
(475, 'Hago', '3000 Diamonds', 'topup', 'active', '', 861000),
(476, 'Hago', '3250 Diamonds', 'topup', 'active', '', 932750),
(477, 'Hago', '3300 Diamonds', 'topup', 'active', '', 950000),
(478, 'Hago', '3500 Diamonds', 'topup', 'active', '', 1004500),
(479, 'Hago', '3750 Diamonds', 'topup', 'active', '', 1076250),
(480, 'Hago', '4000 Diamonds', 'topup', 'active', '', 1148000),
(481, 'Hago', '4250 Diamonds', 'topup', 'active', '', 1219750),
(482, 'Hago', '4500 Diamonds', 'topup', 'active', '', 1291500),
(483, 'Hago', '4750 Diamonds', 'topup', 'active', '', 1363250),
(484, 'Hago', '5000 Diamonds', 'topup', 'active', '', 1435000),
(485, 'Hago', '6000 Diamonds', 'topup', 'active', '', 1722000),
(486, 'Hago', '6500 Diamonds', 'topup', 'active', '', 1865500),
(487, 'Hago', '6750 Diamonds', 'topup', 'active', '', 1937250),
(488, 'Honkai Impact 3', '65 B-Chips', 'topup', 'active', '', 15010),
(489, 'Honkai Impact 3', '330 B-Chips', 'topup', 'active', '', 70000),
(490, 'Honkai Impact 3', '990 B-Chips', 'topup', 'active', '', 205000),
(491, 'Honkai Impact 3', '1320 B-Chips', 'topup', 'active', '', 280025),
(492, 'Honkai Impact 3', '1980 B-Chips', 'topup', 'active', '', 402000),
(493, 'Honkai Impact 3', '3300 B-Chips', 'topup', 'active', '', 700000),
(494, 'Honkai Impact 3', '6600 B-Chips', 'topup', 'active', '', 1400000),
(495, 'Honkai Impact 3', '65 Crystals', 'topup', 'active', '', 15010),
(496, 'Honkai Impact 3', '330 Crystals', 'topup', 'active', '', 70000),
(497, 'Honkai Impact 3', '710 Crystals', 'topup', 'active', '', 140000),
(498, 'Honkai Impact 3', '1430 Crystals', 'topup', 'active', '', 300000),
(499, 'Honkai Impact 3', '3860 Crystals', 'topup', 'active', '', 700000),
(500, 'Honkai Impact 3', '8088 Crystals', 'topup', 'active', '', 1400000),
(501, 'Honkai Impact 3', 'Monthly Card', 'topup', 'active', '', 70000),
(502, 'League of Legends', '150 RP', 'topup', 'active', '', 14666),
(503, 'League of Legends', '775 RP (750+25 Bonus)', 'topup', 'active', '', 72392),
(504, 'League of Legends', '1400 RP (1300+100 Bonus)', 'topup', 'active', '', 127353),
(505, 'League of Legends', '2850 RP (2625+225 Bonus)', 'topup', 'active', '', 254304),
(506, 'League of Legends', '5250 RP (4675+575 Bonus)', 'topup', 'active', '', 454810),
(507, 'League of Legends', '10000 RP (8425+1575 Bonus)', 'topup', 'active', '', 819367),
(508, 'Legends of Runeterra', '125 Coins', 'topup', 'active', '', 13751),
(509, 'Legends of Runeterra', '420 Coins', 'topup', 'active', '', 45827),
(510, 'Legends of Runeterra', '700 Coins', 'topup', 'active', '', 73308),
(511, 'Legends of Runeterra', '1375 Coins', 'topup', 'active', '', 137430),
(512, 'Legends of Runeterra', '2400 Coins', 'topup', 'active', '', 229033),
(513, 'Legends of Runeterra', '4000 Coins', 'topup', 'active', '', 366438),
(514, 'Legends of Runeterra', '8150 Coins', 'topup', 'active', '', 732850),
(515, 'Light of Thel New Era', '90 Crystals', 'topup', 'active', '', 11163),
(516, 'Light of Thel New Era', '450 Crystals', 'topup', 'active', '', 56981),
(517, 'Light of Thel New Era', '630 Crystals', 'topup', 'active', '', 79825),
(518, 'Light of Thel New Era', '900 Crystals', 'topup', 'active', '', 114092),
(519, 'Light of Thel New Era', '1350 Crystals', 'topup', 'active', '', 171203),
(520, 'Light of Thel New Era', '1800 Crystals', 'topup', 'active', '', 228444),
(521, 'Light of Thel New Era', '2250 Crystals', 'topup', 'active', '', 285814),
(522, 'Light of Thel New Era', '2980 Crystals', 'topup', 'active', '', 377322),
(523, 'Light of Thel New Era', '4500 Crystals', 'topup', 'active', '', 569292),
(524, 'Light of Thel New Era', '6300 Crystals', 'topup', 'active', '', 797995),
(525, 'Light of Thel New Era', '9000 Crystals', 'topup', 'active', '', 1133204),
(526, 'Lords Mobile', '123 Diamonds', 'topup', 'active', '', 16950),
(527, 'Lords Mobile', '134 Diamonds', 'topup', 'active', '', 19400),
(528, 'Lords Mobile', '246 Diamonds', 'topup', 'active', '', 33700),
(529, 'Lords Mobile', '737 Diamonds', 'topup', 'active', '', 99250),
(530, 'Lords Mobile', '1228 Diamonds', 'topup', 'active', '', 165250),
(531, 'Lords Mobile', '2011 Diamonds', 'topup', 'active', '', 285750),
(532, 'Lords Mobile', '2455 Diamonds', 'topup', 'active', '', 327750),
(533, 'Lords Mobile', '3352 Diamonds', 'topup', 'active', '', 475750),
(534, 'Lords Mobile', '7365 Diamonds', 'topup', 'active', '', 980300),
(535, 'Lost Saga', '15000 Gold', 'topup', 'inactive', '', 14500),
(536, 'Lost Saga', '30000 Gold', 'topup', 'inactive', '', 28900),
(537, 'Lost Saga', '50000 Gold', 'topup', 'inactive', '', 48100),
(538, 'Lost Saga', '100000 Gold', 'topup', 'inactive', '', 96100),
(539, 'Lost Saga', '200000 Gold', 'topup', 'inactive', '', 192100),
(540, 'Lost Saga', '300000 Gold', 'topup', 'inactive', '', 288100),
(541, 'Luna New World', '3750 Koin', 'topup', 'active', '', 14373),
(542, 'Luna New World', '7500 Koin', 'topup', 'active', '', 28750),
(543, 'Luna New World', '12500 Koin', 'topup', 'active', '', 47935),
(544, 'Luna New World', '25000 Koin', 'topup', 'active', '', 95740),
(545, 'Luna New World', '50000 Koin', 'topup', 'active', '', 191255),
(546, 'Luna New World', '75000 Koin', 'topup', 'active', '', 286770),
(547, 'Marvel Snap', '300 Gold', 'topup', 'active', '', 60914),
(548, 'Marvel Snap', '700 Gold (600+100 Bonus)', 'topup', 'active', '', 120741),
(549, 'Marvel Snap', '1450 Gold (1200+250 Bonus)', 'topup', 'active', '', 245050),
(550, 'Marvel Snap', '2600 Gold (2100+500 Bonus)', 'topup', 'active', '', 428942),
(551, 'Marvel Snap', '3850 Gold (3000+850 Bonus)', 'topup', 'active', '', 591534),
(552, 'Marvel Snap', '8000 Gold (6000+2000 Bonus)', 'topup', 'active', '', 1179189),
(553, 'Marvel Snap', 'Welcome Bundle', 'topup', 'active', '', 36503),
(554, 'Marvel Snap', 'Marvel Voice Pride', 'topup', 'active', '', 59368),
(555, 'Marvel Snap', 'Season Pass Premium', 'topup', 'active', '', 118408),
(556, 'Marvel Snap', 'Season Pass Premium Plus', 'topup', 'active', '', 178503),
(557, 'Marvel Snap', 'Bring the Pain', 'topup', 'active', '', 355669),
(558, 'Marvel Snap', 'Pro Bundle', 'topup', 'active', '', 1189485),
(559, 'Marvel Super War', '55 Star Credits', 'topup', 'active', '', 11060),
(560, 'Marvel Super War', '275 Star Credits', 'topup', 'active', '', 55875),
(561, 'Marvel Super War', '565 Star Credits', 'topup', 'active', '', 111975),
(562, 'Marvel Super War', '1155 Star Credits', 'topup', 'active', '', 224175),
(563, 'Marvel Super War', '1765 Star Credits', 'topup', 'active', '', 364275),
(564, 'Marvel Super War', '2950 Star Credits', 'topup', 'active', '', 560475),
(565, 'Marvel Super War', '6000 Star Credits', 'topup', 'active', '', 1121225),
(566, 'Metal Slug Awakening', '60 Ruby', 'topup', 'inactive', '', 13001),
(567, 'Metal Slug Awakening', '310 Ruby', 'topup', 'active', '', 60715),
(568, 'Metal Slug Awakening', '630 Ruby', 'topup', 'active', '', 117093),
(569, 'Metal Slug Awakening', '1300 Ruby', 'topup', 'active', '', 234132),
(570, 'Metal Slug Awakening', '3200 Ruby', 'topup', 'active', '', 606983),
(571, 'Metal Slug Awakening', '6500 Ruby', 'topup', 'active', '', 1170614),
(572, 'Metal Slug Awakening', 'Kartu Bulanan', 'topup', 'active', '', 60715),
(573, 'Metal Slug Awakening', 'Support Pass', 'topup', 'active', '', 61230),
(574, 'Metal Slug Awakening', 'Support Pass Premium', 'topup', 'active', '', 118063),
(575, 'Metal Slug Awakening', 'Kartu Bulanan Premium', 'topup', 'active', '', 117093),
(576, 'Omega Legends', '34 Gold', 'topup', 'active', '', 4550),
(577, 'Omega Legends', '69 Gold', 'topup', 'active', '', 9100),
(578, 'Omega Legends', '129 Gold', 'topup', 'active', '', 14175),
(579, 'Omega Legends', '146 Gold', 'topup', 'active', '', 18200),
(580, 'Omega Legends', '258 Gold', 'topup', 'active', '', 28351),
(581, 'Omega Legends', '374 Gold', 'topup', 'active', '', 45500),
(582, 'Omega Legends', '783 Gold', 'topup', 'active', '', 71825),
(583, 'Omega Legends', '828 Gold', 'topup', 'active', '', 85052),
(584, 'Omega Legends', '1429 Gold', 'topup', 'active', '', 141754),
(585, 'Omega Legends', '2026 Gold', 'topup', 'active', '', 227510),
(586, 'Omega Legends', '2927 Gold', 'topup', 'active', '', 283507),
(587, 'Omega Legends', '9000 Gold', 'topup', 'active', '', 850521),
(588, 'One Punch Man', '5 Kupon', 'topup', 'active', '', 7205),
(589, 'One Punch Man', '13 Kupon', 'topup', 'active', '', 18960),
(590, 'One Punch Man', '22 Kupon', 'topup', 'active', '', 33505),
(591, 'One Punch Man', '23 Kupon', 'topup', 'active', '', 35850),
(592, 'One Punch Man', '54 Kupon', 'topup', 'active', '', 84000),
(593, 'One Punch Man', '61 Kupon', 'topup', 'active', '', 95600),
(594, 'One Punch Man', '91 Kupon', 'topup', 'active', '', 143400),
(595, 'One Punch Man', '107 Kupon', 'topup', 'active', '', 168000),
(596, 'One Punch Man', '214 Kupon', 'topup', 'active', '', 336000),
(597, 'One Punch Man', '227 Kupon', 'topup', 'active', '', 358500),
(598, 'One Punch Man', '321 Kupon', 'topup', 'active', '', 504000),
(599, 'Point Blank', '1200 PB Cash', 'topup', 'active', '', 8900),
(600, 'Point Blank', '2400 PB Cash', 'topup', 'active', '', 17800),
(601, 'Point Blank', '6000 PB Cash', 'topup', 'active', '', 44500),
(602, 'Point Blank', '12000 PB Cash', 'topup', 'active', '', 89000),
(603, 'Point Blank', '24000 PB Cash', 'topup', 'active', '', 178000),
(604, 'Point Blank', '36000 PB Cash', 'topup', 'active', '', 267000),
(605, 'Point Blank', '60000 PB Cash', 'topup', 'active', '', 445000),
(606, 'PUBG New State Mobile', '300 NC', 'topup', 'active', '', 13084),
(607, 'PUBG New State Mobile', '1580 NC (1500+80 Bonus)', 'topup', 'active', '', 65949),
(608, 'PUBG New State Mobile', '3850 NC (3600+250 Bonus)', 'topup', 'active', '', 158462),
(609, 'PUBG New State Mobile', '10230 NC (9300+930 Bonus)', 'topup', 'active', '', 403400),
(610, 'PUBG New State Mobile', '16800 NC (15000+1800 Bonus)', 'topup', 'active', '', 650724),
(611, 'PUBG New State Mobile', '35000 NC (30000+5000 Bonus)', 'topup', 'active', '', 1301578),
(612, 'Ragnarok M: Eternal Love', '18 Big Cat Coins', 'topup', 'active', '', 41013),
(613, 'Ragnarok M: Eternal Love', '24 Big Cat Coins', 'topup', 'active', '', 54405),
(614, 'Ragnarok M: Eternal Love', '30 Big Cat Coins', 'topup', 'active', '', 68634),
(615, 'Ragnarok M: Eternal Love', '72 Big Cat Coins', 'topup', 'active', '', 133108),
(616, 'Ragnarok M: Eternal Love', '145 Big Cat Coins', 'topup', 'active', '', 275373),
(617, 'Ragnarok M: Eternal Love', '373 Big Cat Coins', 'topup', 'active', '', 668763),
(618, 'Ragnarok M: Eternal Love', '748 Big Cat Coins', 'topup', 'active', '', 1338363),
(619, 'Ragnarok M: Eternal Love', 'Ragnarok Premium', 'topup', 'active', '', 105000),
(620, 'Ragnarok X Next Generation', '2450 Diamonds', 'topup', 'active', '', 67500),
(621, 'Ragnarok X Next Generation', '5280 Diamonds', 'topup', 'active', '', 144000),
(622, 'Ragnarok X Next Generation', '10890 Diamonds', 'topup', 'active', '', 297000),
(623, 'Ragnarok X Next Generation', '15840 Diamonds', 'topup', 'active', '', 432000),
(624, 'Revelation Infinite Journey', '40 + 6 Jade', 'topup', 'active', '', 8500),
(625, 'Revelation Infinite Journey', '110 + 17 Jade', 'topup', 'active', '', 21500),
(626, 'Revelation Infinite Journey', '230 + 35 Jade', 'topup', 'active', '', 42800),
(627, 'Revelation Infinite Journey', '460 + 49 Jade', 'topup', 'active', '', 85500),
(628, 'Revelation Infinite Journey', '920 + 138 Jade', 'topup', 'active', '', 171500),
(629, 'Revelation Infinite Journey', '1150 + 173 Jade', 'topup', 'active', '', 212000),
(630, 'Revelation Infinite Journey', '1380 + 207 Jade', 'topup', 'active', '', 296000),
(631, 'Revelation Infinite Journey', '1610 + 242 Jade', 'topup', 'active', '', 296000),
(632, 'Revelation Infinite Journey', '2300 + 345 Jade', 'topup', 'active', '', 424000),
(633, 'Revelation Infinite Journey', '3220 + 483 Jade', 'topup', 'active', '', 593000),
(634, 'Revelation Infinite Journey', '4600 + 690 Jade', 'topup', 'active', '', 847000),
(635, 'Revelation Infinite Journey', '9200 + 1380 Jade', 'topup', 'active', '', 1695000),
(636, 'Revelation Infinite Journey', '23000 + 3450 Jade', 'topup', 'active', '', 4255000),
(637, 'Revelation Infinite Journey', 'Monthly Card 7 Days', 'topup', 'active', '', 8623),
(638, 'Revelation Infinite Journey', 'Webpay Gift Newbie', 'topup', 'active', '', 8623),
(639, 'Revelation Infinite Journey', 'Newbie Pack', 'topup', 'active', '', 8623),
(640, 'Revelation Infinite Journey', 'Battle Pass', 'topup', 'active', '', 55987),
(641, 'Revelation Infinite Journey', 'Webpay Gift Promotion', 'topup', 'active', '', 55987),
(642, 'Revelation Infinite Journey', 'Monthly Card', 'topup', 'active', '', 55987),
(643, 'Revelation Infinite Journey', 'Battle Pass Plus', 'topup', 'active', '', 111945),
(644, 'Revelation Infinite Journey', 'Growth Fund', 'topup', 'active', '', 111945),
(645, 'Revelation Infinite Journey', 'Monthly Card Premium', 'topup', 'active', '', 112009),
(646, 'Revelation Infinite Journey', 'Webpay Gift Special', 'topup', 'active', '', 111945),
(647, 'Revelation Infinite Journey', 'Daily Pack 7 Hari', 'topup', 'active', '', 385675),
(648, 'Seal M Sea', '123 Ruby', 'topup', 'inactive', '', 11833),
(649, 'Seal M Sea', '250 Ruby', 'topup', 'inactive', '', 23655),
(650, 'Seal M Sea', '775 Ruby', 'topup', 'inactive', '', 69732),
(651, 'Seal M Sea', '1300 Ruby', 'topup', 'inactive', '', 118518),
(652, 'Seal M Sea', '2650 Ruby', 'topup', 'inactive', '', 234276),
(653, 'Seal M Sea', '5375 Ruby', 'topup', 'inactive', '', 468615),
(654, 'Seal M Sea', '17500 Ruby', 'topup', 'inactive', '', 1390204),
(655, 'Seal M Sea', '35400 Ruby', 'topup', 'inactive', '', 2814697),
(656, 'Stumble Guys', '250 Gems', 'topup', 'active', '', 10930),
(657, 'Stumble Guys', '800 Gems', 'topup', 'active', '', 24025),
(658, 'Stumble Guys', '120 Tokens', 'topup', 'active', '', 30025),
(659, 'Stumble Guys', '1300 Tokens', 'topup', 'active', '', 251525),
(660, 'Stumble Guys', '1600 Gems dan 75 Tokens', 'topup', 'active', '', 41025),
(661, 'Stumble Guys', '5000 Gems dan 275 Tokens', 'topup', 'active', '', 102025),
(662, 'Super Sus', '100 Golder Star', 'topup', 'active', '', 8000),
(663, 'Super Sus', '310 Golder Star', 'topup', 'active', '', 24125),
(664, 'Super Sus', '520 Golder Star', 'topup', 'active', '', 43715),
(665, 'Super Sus', '1060 Golder Star', 'topup', 'active', '', 82025),
(666, 'Super Sus', '2180 Golder Star', 'topup', 'active', '', 168525),
(667, 'Super Sus', '5600 Golder Star', 'topup', 'active', '', 426525),
(668, 'Super Sus', 'Weekly Card', 'topup', 'active', '', 12000),
(669, 'Super Sus', 'Super Pass', 'topup', 'active', '', 67025),
(670, 'Super Sus', 'Pass Bundle', 'topup', 'active', '', 125775),
(671, 'Super Sus', 'Monthly Card', 'topup', 'active', '', 105389),
(672, 'Super Sus', 'VIP Card', 'topup', 'active', '', 145000),
(673, 'Football Master 2', '18 FMP', 'topup', 'active', '', 2807),
(674, 'Football Master 2', '95 FMP', 'topup', 'active', '', 14035),
(675, 'Football Master 2', '191 FMP', 'topup', 'active', '', 28070),
(676, 'Football Master 2', '382 FMP', 'topup', 'active', '', 56140),
(677, 'Football Master 2', '972 FMP', 'topup', 'active', '', 140350),
(678, 'Football Master 2', '1944 FMP', 'topup', 'active', '', 280700),
(679, 'Football Master 2', '3888 FMP', 'topup', 'active', '', 561400),
(680, 'Football Master 2', '9900 FMP', 'topup', 'active', '', 1403500),
(681, 'Pulsa Telkomsel', 'Pulsa 1.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 1895),
(682, 'Pulsa Telkomsel', 'Pulsa 2.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 2600),
(683, 'Pulsa Telkomsel', 'Pulsa 3.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 3795),
(684, 'Pulsa Telkomsel', 'Pulsa 4.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 4905),
(685, 'Pulsa Telkomsel', 'Pulsa 5.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 5530),
(686, 'Pulsa Telkomsel', 'Pulsa 10.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 10565),
(687, 'Pulsa Telkomsel', 'Pulsa 15.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 15205);
INSERT INTO `produk_products` (`id`, `category`, `name`, `type`, `status`, `note`, `price`) VALUES
(688, 'Pulsa Telkomsel', 'Pulsa 20.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 20205),
(689, 'Pulsa Telkomsel', 'Pulsa 25.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 25140),
(690, 'Pulsa Telkomsel', 'Pulsa 30.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 29870),
(691, 'Pulsa Telkomsel', 'Pulsa 35.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 35205),
(692, 'Pulsa Telkomsel', 'Pulsa 40.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 39545),
(693, 'Pulsa Telkomsel', 'Pulsa 45.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 45105),
(694, 'Pulsa Telkomsel', 'Pulsa 50.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 50020),
(695, 'Pulsa Telkomsel', 'Pulsa 55.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 54995),
(696, 'Pulsa Telkomsel', 'Pulsa 60.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 60045),
(697, 'Pulsa Telkomsel', 'Pulsa 65.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 64995),
(698, 'Pulsa Telkomsel', 'Pulsa 70.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 69945),
(699, 'Pulsa Telkomsel', 'Pulsa 75.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 73770),
(700, 'Pulsa Telkomsel', 'Pulsa 80.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 79845),
(701, 'Pulsa Telkomsel', 'Pulsa 85.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 84895),
(702, 'Pulsa Telkomsel', 'Pulsa 90.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 89840),
(703, 'Pulsa Telkomsel', 'Pulsa 95.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 94790),
(704, 'Pulsa Telkomsel', 'Pulsa 100.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 98130),
(705, 'Pulsa Telkomsel', 'Masa Aktif Kartu 5 Hari', 'prabayar', 'active', '-', 2855),
(706, 'Pulsa Telkomsel', 'Masa Aktif Kartu 10 Hari', 'prabayar', 'active', '-', 4360),
(707, 'Pulsa Telkomsel', 'Masa Aktif Kartu 15 Hari', 'prabayar', 'active', '-', 6310),
(708, 'Pulsa Telkomsel', 'Masa Aktif Kartu 30 Hari', 'prabayar', 'active', '-', 13789),
(709, 'Pulsa Telkomsel', 'Masa Aktif Kartu 90 Hari', 'prabayar', 'active', '-', 31635),
(710, 'Pulsa Telkomsel', 'Masa Aktif Kartu 180 Hari', 'prabayar', 'active', '-', 58885),
(711, 'Pulsa Telkomsel', 'Masa Aktif Kartu 360 Hari', 'prabayar', 'active', '-', 106475),
(712, 'Pulsa by.U', 'Pulsa 1.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 2000),
(713, 'Pulsa by.U', 'Pulsa 2.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 3000),
(714, 'Pulsa by.U', 'Pulsa 3.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 4000),
(715, 'Pulsa by.U', 'Pulsa 4.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 5000),
(716, 'Pulsa by.U', 'Pulsa 5.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 5508),
(717, 'Pulsa by.U', 'Pulsa 10.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 10546),
(718, 'Pulsa by.U', 'Pulsa 15.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 15455),
(719, 'Pulsa by.U', 'Pulsa 20.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 20375),
(720, 'Pulsa by.U', 'Pulsa 25.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 25290),
(721, 'Pulsa by.U', 'Pulsa 30.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 30340),
(722, 'Pulsa by.U', 'Pulsa 35.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 35200),
(723, 'Pulsa by.U', 'Pulsa 40.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 40345),
(724, 'Pulsa by.U', 'Pulsa 45.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 45115),
(725, 'Pulsa by.U', 'Pulsa 50.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 50395),
(726, 'Pulsa by.U', 'Pulsa 55.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 55015),
(727, 'Pulsa by.U', 'Pulsa 60.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 60065),
(728, 'Pulsa by.U', 'Pulsa 65.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 65020),
(729, 'Pulsa by.U', 'Pulsa 70.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 69945),
(730, 'Pulsa by.U', 'Pulsa 75.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 75140),
(731, 'Pulsa by.U', 'Pulsa 80.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 79845),
(732, 'Pulsa by.U', 'Pulsa 85.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 84875),
(733, 'Pulsa by.U', 'Pulsa 90.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 89840),
(734, 'Pulsa by.U', 'Pulsa 95.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 94790),
(735, 'Pulsa by.U', 'Pulsa 100.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 100165),
(736, 'Pulsa Indosat', 'Pulsa 5.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 5985),
(737, 'Pulsa Indosat', 'Pulsa 10.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 11065),
(738, 'Pulsa Indosat', 'Pulsa 20.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 20185),
(739, 'Pulsa Indosat', 'Pulsa 25.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 25230),
(740, 'Pulsa Indosat', 'Pulsa 50.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 49605),
(741, 'Pulsa Indosat', 'Pulsa 100.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 97694),
(742, 'Pulsa Indosat', 'Masa Aktif Kartu 90 Hari', 'prabayar', 'active', '-', 12860),
(743, 'Pulsa Indosat', 'Masa Aktif Kartu 180 Hari', 'prabayar', 'active', '-', 23100),
(744, 'Pulsa Indosat', 'Masa Aktif Kartu 360 Hari', 'prabayar', 'active', '-', 41325),
(745, 'Pulsa Axis', 'Pulsa 5.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 6102),
(746, 'Pulsa Axis', 'Pulsa 10.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 11177),
(747, 'Pulsa Axis', 'Pulsa 15.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 15295),
(748, 'Pulsa Axis', 'Pulsa 25.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 25250),
(749, 'Pulsa Axis', 'Pulsa 30.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 30305),
(750, 'Pulsa Axis', 'Pulsa 50.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 50320),
(751, 'Pulsa Axis', 'Pulsa 100.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 99445),
(752, 'Pulsa Axis', 'Masa Aktif Kartu 180 Hari', 'prabayar', 'active', '-', 4780),
(753, 'Pulsa Axis', 'Masa Aktif Kartu 360 Hari', 'prabayar', 'active', '-', 7980),
(754, 'Pulsa XL', 'Pulsa 5.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 6102),
(755, 'Pulsa XL', 'Pulsa 10.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 11177),
(756, 'Pulsa XL', 'Pulsa 15.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 15295),
(757, 'Pulsa XL', 'Pulsa 25.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 25250),
(758, 'Pulsa XL', 'Pulsa 30.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 30305),
(759, 'Pulsa XL', 'Pulsa 50.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 50320),
(760, 'Pulsa XL', 'Pulsa 100.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 99445),
(761, 'Pulsa Tri', 'Pulsa 1.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 1565),
(762, 'Pulsa Tri', 'Pulsa 2.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 2525),
(763, 'Pulsa Tri', 'Pulsa 3.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 3543),
(764, 'Pulsa Tri', 'Pulsa 4.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 4713),
(765, 'Pulsa Tri', 'Pulsa 5.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 5784),
(766, 'Pulsa Tri', 'Pulsa 10.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 10744),
(767, 'Pulsa Tri', 'Pulsa 15.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 15224),
(768, 'Pulsa Tri', 'Pulsa 20.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 20109),
(769, 'Pulsa Tri', 'Pulsa 25.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 24975),
(770, 'Pulsa Tri', 'Pulsa 30.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 30114),
(771, 'Pulsa Tri', 'Pulsa 40.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 39959),
(772, 'Pulsa Tri', 'Pulsa 50.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 49704),
(773, 'Pulsa Tri', 'Pulsa 60.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 59349),
(774, 'Pulsa Tri', 'Pulsa 70.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 69069),
(775, 'Pulsa Tri', 'Pulsa 75.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 74069),
(776, 'Pulsa Tri', 'Pulsa 80.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 78889),
(777, 'Pulsa Tri', 'Pulsa 90.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 88609),
(778, 'Pulsa Tri', 'Pulsa 100.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 98529),
(779, 'Pulsa Tri', 'Masa Aktif Kartu 4 Bulan', 'prabayar', 'active', '-', 4105),
(780, 'Pulsa Smartfren', 'Pulsa 5.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 5170),
(781, 'Pulsa Smartfren', 'Pulsa 10.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 10060),
(782, 'Pulsa Smartfren', 'Pulsa 15.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 14945),
(783, 'Pulsa Smartfren', 'Pulsa 20.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 19830),
(784, 'Pulsa Smartfren', 'Pulsa 25.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 24645),
(785, 'Pulsa Smartfren', 'Pulsa 30.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 29705),
(786, 'Pulsa Smartfren', 'Pulsa 35.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 34585),
(787, 'Pulsa Smartfren', 'Pulsa 40.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 39585),
(788, 'Pulsa Smartfren', 'Pulsa 45.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 44345),
(789, 'Pulsa Smartfren', 'Pulsa 50.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 48765),
(790, 'Pulsa Smartfren', 'Pulsa 55.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 54220),
(791, 'Pulsa Smartfren', 'Pulsa 60.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 59020),
(792, 'Pulsa Smartfren', 'Pulsa 65.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 63970),
(793, 'Pulsa Smartfren', 'Pulsa 70.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 68865),
(794, 'Pulsa Smartfren', 'Pulsa 75.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 73820),
(795, 'Pulsa Smartfren', 'Pulsa 80.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 78715),
(796, 'Pulsa Smartfren', 'Pulsa 85.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 83595),
(797, 'Pulsa Smartfren', 'Pulsa 90.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 88495),
(798, 'Pulsa Smartfren', 'Pulsa 95.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 93365),
(799, 'Pulsa Smartfren', 'Pulsa 100.000', 'prabayar', 'active', 'Menambah Masa Aktif.', 96565),
(800, 'Listrik PLN', 'Pln Pascabayar', 'pascabayar', 'active', '', 1000),
(801, 'PDAM', 'PDAM Belopa Kabupaten Luw', 'pascabayar', 'active', '', 1000),
(802, 'PDAM', 'PDAM Bone Watampone', 'pascabayar', 'active', '', 1000),
(803, 'PDAM', 'PDAM Kabupaten Enrekang', 'pascabayar', 'active', '', 1000),
(804, 'PDAM', 'PDAM Kabupaten Gowa', 'pascabayar', 'active', '', 1000),
(805, 'PDAM', 'PDAM Kabupaten Luwu Timur', 'pascabayar', 'active', '', 1000),
(806, 'PDAM', 'PDAM Kabupaten Luwu Utara', 'pascabayar', 'active', '', 1000),
(807, 'PDAM', 'PDAM Kabupaten Sidrap', 'pascabayar', 'active', '', 1000),
(808, 'PDAM', 'PDAM Kabupaten Sinjai', 'pascabayar', 'active', '', 1000),
(809, 'PDAM', 'PDAM Kabupaten Takalar', 'pascabayar', 'active', '', 1000),
(810, 'PDAM', 'PDAM Kabupaten Wajo', 'pascabayar', 'active', '', 1000),
(811, 'PDAM', 'PDAM Kota Makassar', 'pascabayar', 'active', '', 1000),
(812, 'PDAM', 'PDAM Kota Palopo', 'pascabayar', 'active', '', 1000),
(813, 'PDAM', 'PDAM Kota Pare-Pare', 'pascabayar', 'active', '', 1000),
(814, 'HP Pascabayar', 'Halo Postpaid', 'pascabayar', 'active', '', 1000),
(815, 'HP Pascabayar', 'Matrix', 'pascabayar', 'active', '', 1000),
(816, 'HP Pascabayar', 'Smartfren Postpaid', 'pascabayar', 'active', '', 1000),
(817, 'HP Pascabayar', 'Telkom', 'pascabayar', 'active', '', 1000),
(818, 'HP Pascabayar', 'Three Postpaid', 'pascabayar', 'active', '', 1000),
(819, 'HP Pascabayar', 'XL Postpaid', 'pascabayar', 'active', '', 1000),
(820, 'Internet', 'CBN', 'pascabayar', 'active', '', 1000),
(821, 'Internet', 'Iconnet', 'pascabayar', 'active', '', 1000),
(822, 'Internet', 'MyRepublic', 'pascabayar', 'active', '', 1000),
(823, 'Internet', 'SPEEDY & INDIHOME', 'pascabayar', 'active', '', 1000),
(824, 'Internet', 'TELKOMPSTN', 'pascabayar', 'active', '', 1000),
(825, 'BPJS Kesehatan', 'Bpjs Kesehatan', 'pascabayar', 'active', '', 1000),
(826, 'BPJS Kesehatan', 'Bpjs Ketenagakerjaan Bukan Penerima Upah', 'pascabayar', 'active', '', 1000),
(827, 'BPJS Kesehatan', 'Bpjs Ketenagakerjaan Penerima Upah', 'pascabayar', 'active', '', 1000),
(828, 'Multifinance', 'Adira Finance', 'pascabayar', 'active', '', 1000),
(829, 'Multifinance', 'Aeon Cicilan', 'pascabayar', 'active', '', 1000),
(830, 'Multifinance', 'Angsuran Columbia', 'pascabayar', 'active', '', 1000),
(831, 'Multifinance', 'Angsuran ITC Multi Finance', 'pascabayar', 'active', '', 1000),
(832, 'Multifinance', 'Artha Prima Finance', 'pascabayar', 'active', '', 1000),
(833, 'Multifinance', 'Bca Multifinance', 'pascabayar', 'active', '', 1000),
(834, 'Multifinance', 'Buana Finance', 'pascabayar', 'active', '', 1000),
(835, 'Multifinance', 'Bussan Auto Finance', 'pascabayar', 'active', '', 1000),
(836, 'Multifinance', 'CIMB Niaga JCB', 'pascabayar', 'active', '', 1000),
(837, 'Multifinance', 'CIMB Niaga Visa', 'pascabayar', 'active', '', 1000),
(838, 'Multifinance', 'Clipan Finance', 'pascabayar', 'active', '', 1000),
(839, 'Multifinance', 'Federal Inti Finance', 'pascabayar', 'active', '', 1000),
(840, 'Multifinance', 'Heksa Insurance Premi Lanjutan', 'pascabayar', 'active', '', 1000),
(841, 'Multifinance', 'Home Credit Indonesia', 'pascabayar', 'active', '', 1000),
(842, 'Multifinance', 'Jaccs MPM Finance Indonesia', 'pascabayar', 'active', '', 1000),
(843, 'Multifinance', 'MNC Finance', 'pascabayar', 'active', '', 1000),
(844, 'Multifinance', 'Mega Auto Finance', 'pascabayar', 'active', '', 1000),
(845, 'Multifinance', 'Mega Central Finance', 'pascabayar', 'active', '', 1000),
(846, 'Multifinance', 'Mega Finance', 'pascabayar', 'active', '', 1000),
(847, 'Multifinance', 'Multindo Auto Finance', 'pascabayar', 'active', '', 1000),
(848, 'Multifinance', 'NSC Finance', 'pascabayar', 'active', '', 1000),
(849, 'Multifinance', 'PT Aeon Credit Service Indonesia', 'pascabayar', 'active', '', 1000),
(850, 'Multifinance', 'PT Arthaasia Finance', 'pascabayar', 'active', '', 1000),
(851, 'Multifinance', 'Premi Jiwasraya', 'pascabayar', 'active', '', 1000),
(852, 'Multifinance', 'Pro Car International Finance', 'pascabayar', 'active', '', 1000),
(853, 'Multifinance', 'Pro Mitra Finance', 'pascabayar', 'active', '', 1000),
(854, 'Multifinance', 'Radana Finance / HD Finance', 'pascabayar', 'active', '', 1000),
(855, 'Multifinance', 'SMS Finance', 'pascabayar', 'active', '', 1000),
(856, 'Multifinance', 'Smart Multi Finance', 'pascabayar', 'active', '', 1000),
(857, 'Multifinance', 'Wom Finance', 'pascabayar', 'active', '', 1000),
(858, 'Gas Negara', 'Perusahaan Gas Negara', 'pascabayar', 'active', '', 1000),
(859, 'Gas Negara', 'Pertagas (Perusahaan Gas)', 'pascabayar', 'active', '', 1000),
(860, 'TV', 'FIRSTMEDIA', 'pascabayar', 'active', '', 1000),
(861, 'TV', 'INDOVISION', 'pascabayar', 'active', '', 1000),
(862, 'TV', 'NEX MEDIA', 'pascabayar', 'active', '', 1000),
(863, 'TV', 'TELKOMVISION', 'pascabayar', 'active', '', 1000),
(864, 'MU Origin 3', '70 Divine Diamonds', 'topup', 'active', '', 11910),
(865, 'MU Origin 3', '350 Divine Diamonds', 'topup', 'active', '', 60550),
(866, 'MU Origin 3', '1050 Divine Diamonds', 'topup', 'active', '', 181650),
(867, 'MU Origin 3', '2100 Divine Diamonds', 'topup', 'active', '', 362150),
(868, 'MU Origin 3', '3500 Divine Diamonds', 'topup', 'active', '', 605150),
(869, 'MU Origin 3', '7000 Divine Diamonds', 'topup', 'active', '', 1214250),
(870, 'Unipin Credits', '10000 IDR', 'voucher', 'active', 'Proses Otomatis', 9500),
(871, 'Unipin Credits', '20000 IDR', 'voucher', 'active', 'Proses Otomatis', 19000),
(872, 'Unipin Credits', '50000 IDR', 'voucher', 'active', 'Proses Otomatis', 47500),
(873, 'Unipin Credits', '100000 IDR', 'voucher', 'active', 'Proses Otomatis', 94975),
(874, 'Unipin Credits', '300000 IDR', 'voucher', 'active', 'Proses Otomatis', 285000),
(875, 'Unipin Credits', '500000 IDR', 'voucher', 'active', 'Proses Otomatis', 475000),
(876, 'Unipin Credits', '100000 IDR (PROMO)', 'voucher', 'inactive', 'Proses Otomatis', 91500),
(877, 'Unipin Credits', '5 BRL', 'voucher', 'inactive', 'Proses Manual.', 19600),
(878, 'Unipin Credits', '10 BRL', 'voucher', 'inactive', 'Proses Manual.', 34650),
(879, 'Unipin Credits', '30 BRL', 'voucher', 'inactive', 'Proses Manual.', 94840),
(880, 'Unipin Credits', '50 BRL', 'voucher', 'active', 'Proses Manual.', 156500),
(881, 'Unipin Credits', '100 BRL', 'voucher', 'active', 'Proses Manual.', 313000),
(882, 'Unipin Credits', '200 BRL', 'voucher', 'active', 'Proses Manual.', 626000),
(883, 'Unipin Credits', '300 BRL', 'voucher', 'active', 'Proses Manual.', 939000),
(884, 'Unipin Credits', '500 BRL', 'voucher', 'active', 'Proses Manual.', 1565000),
(885, 'Unipin Credits', '5 RM', 'voucher', 'inactive', 'Proses Manual.', 20240),
(886, 'Unipin Credits', '10 RM', 'voucher', 'inactive', 'Proses Manual.', 35930),
(887, 'Unipin Credits', '30 RM', 'voucher', 'inactive', 'Proses Manual.', 98730),
(888, 'Unipin Credits', '50 RM', 'voucher', 'active', 'Proses Manual.', 165000),
(889, 'Unipin Credits', '100 RM', 'voucher', 'active', 'Proses Manual.', 330000),
(890, 'Unipin Credits', '300 RM', 'voucher', 'active', 'Proses Manual.', 990000),
(891, 'Unipin Credits', '500 RM', 'voucher', 'active', 'Proses Manual.', 1650000),
(892, 'Unipin Credits', '1000 RM', 'voucher', 'active', 'Proses Manual.', 3300000),
(893, 'Unipin Credits', '3000 RM', 'voucher', 'active', 'Proses Manual.', 9900000),
(894, 'Unipin Credits', '10 PHP', 'voucher', 'inactive', 'Proses Manual.', 7120),
(895, 'Unipin Credits', '20 PHP', 'voucher', 'inactive', 'Proses Manual.', 9690),
(896, 'Unipin Credits', '50 PHP', 'voucher', 'inactive', 'Proses Manual.', 17330),
(897, 'Unipin Credits', '100 PHP', 'voucher', 'inactive', 'Proses Manual.', 30120),
(898, 'Unipin Credits', '300 PHP', 'voucher', 'inactive', 'Proses Manual.', 81250),
(899, 'Unipin Credits', '500 PHP', 'voucher', 'active', 'Proses Manual.', 135000),
(900, 'Unipin Credits', '1000 PHP', 'voucher', 'active', 'Proses Manual.', 270000),
(901, 'Unipin Credits', '2000 PHP', 'voucher', 'active', 'Proses Manual.', 540000),
(902, 'Unipin Credits', '5000 PHP', 'voucher', 'active', 'Proses Manual.', 1350000),
(903, 'Unipin Credits', '10000 PHP', 'voucher', 'active', 'Proses Manual.', 2700000),
(904, 'Smile One', '100 BRL', 'voucher', 'active', 'Proses Manual.', 340000),
(905, 'Smile One', '500 BRL', 'voucher', 'active', 'Proses Manual.', 1700000),
(906, 'Smile One', '1000 BRL', 'voucher', 'inactive', 'Proses Manual.', 3400000),
(907, 'Smile One', '10000 BRL', 'voucher', 'inactive', 'Proses Manual.', 34000000),
(908, 'Garena Voucher', '33 Shell', 'voucher', 'active', '-', 9505),
(909, 'Garena Voucher', '66 Shell', 'voucher', 'active', '-', 18610),
(910, 'Garena Voucher', '165 Shell', 'voucher', 'active', '-', 45625),
(911, 'Garena Voucher', '330 Shell', 'voucher', 'active', '-', 90050),
(912, 'Razer Gold', '10000 IDR', 'voucher', 'active', '-', 9440),
(913, 'Razer Gold', '20000 IDR', 'voucher', 'active', '-', 19000),
(914, 'Razer Gold', '50000 IDR', 'voucher', 'active', '-', 47500),
(915, 'Razer Gold', '100000 IDR', 'voucher', 'active', '-', 95000),
(916, 'Google Play', '5000 IDR', 'voucher', 'active', '-', 9515),
(917, 'Google Play', '10000 IDR', 'voucher', 'active', '-', 38140),
(918, 'Google Play', '20000 IDR', 'voucher', 'active', '-', 377280),
(919, 'Google Play', '50000 IDR', 'voucher', 'active', '-', 887800),
(920, 'Google Play', '100000 IDR', 'voucher', 'active', '-', 5250863),
(921, 'Google Play', '150000 IDR', 'voucher', 'active', '-', 6790180),
(922, 'Google Play', '300000 IDR', 'voucher', 'active', '-', 29046003),
(923, 'Google Play', '500000 IDR', 'voucher', 'active', '-', 72632493),
(924, 'Google Play', '$10 USD', 'voucher', 'inactive', '-', 4207900),
(925, 'Google Play', '$15 USD', 'voucher', 'inactive', '-', 15161025),
(926, 'Google Play', '$25 USD', 'voucher', 'inactive', '-', 56808975),
(927, 'Google Play', '$50 USD', 'voucher', 'inactive', '-', 327694400),
(928, 'Steam Wallet', '6000 IDR', 'voucher', 'active', '-', 7751),
(929, 'Steam Wallet', '8000 IDR', 'voucher', 'active', '-', 21896),
(930, 'Steam Wallet', '12000 IDR', 'voucher', 'active', '-', 35400),
(931, 'Steam Wallet', '45000 IDR', 'voucher', 'active', '-', 210670),
(932, 'Steam Wallet', '60000 IDR', 'voucher', 'active', '-', 549234),
(933, 'Steam Wallet', '90000 IDR', 'voucher', 'active', '-', 1631201),
(934, 'Steam Wallet', '120000 IDR', 'voucher', 'active', '-', 2672255),
(935, 'Steam Wallet', '250000 IDR', 'voucher', 'active', '-', 14753835),
(936, 'Steam Wallet', '400000 IDR', 'voucher', 'active', '-', 30280683),
(937, 'Steam Wallet', '600000 IDR', 'voucher', 'active', '-', 52844284),
(938, 'Xbox', '$5 USD', 'voucher', 'active', '-', 2295216),
(939, 'Xbox', '$10 USD', 'voucher', 'active', '-', 21140000),
(940, 'Xbox', '$15 USD', 'voucher', 'active', '-', 65200000),
(941, 'Xbox', '$25 USD', 'voucher', 'inactive', '-', 85904000),
(942, 'Xbox', '$50 USD', 'voucher', 'active', '-', 342888000),
(943, 'Xbox', 'Membership 3 Bulan', 'voucher', 'inactive', '-', 0),
(944, 'Playstation', '100000 IDR', 'voucher', 'active', '-', 1971768),
(945, 'Playstation', '300000 IDR', 'voucher', 'active', '-', 17376018),
(946, 'Playstation', '600000 IDR', 'voucher', 'active', '-', 68830518),
(947, 'Playstation', '1000000 IDR', 'voucher', 'active', '-', 97776840),
(948, 'Playstation', '1500000 IDR', 'voucher', 'active', '-', 219277954),
(949, 'Playstation', 'Membership 3 Bulan', 'voucher', 'inactive', '-', 13025400),
(950, 'Playstation', 'Membership 12 Bulan', 'voucher', 'active', '-', 65145000),
(951, 'Nintendo eShop', '$5 USD', 'voucher', 'active', '-', 1352000),
(952, 'Nintendo eShop', '$10 USD', 'voucher', 'active', '-', 14140000),
(953, 'iTunes', '$10 USD', 'voucher', 'active', '-', 6092368),
(954, 'iTunes', '$15 USD', 'voucher', 'active', '-', 57036000),
(955, 'iTunes', '$25 USD', 'voucher', 'active', '-', 87850000),
(956, 'iTunes', '$50 USD', 'voucher', 'active', '-', 350700000),
(957, 'iTunes', '$100 USD', 'voucher', 'active', '-', 2147483647),
(958, 'iTunes', 'Membership 3 Bulan', 'voucher', 'active', '-', 44901468),
(959, 'Wifi.id', '1 hari', 'voucher', 'active', '-', 18000),
(960, 'Wifi.id', '7 hari', 'voucher', 'active', '-', 282000),
(961, 'Wifi.id', '30 hari', 'voucher', 'active', '-', 1404000),
(962, 'Roblox', '100 Robux Global', 'voucher', 'active', '-', 53000),
(963, 'Roblox', '200 Robux Global', 'voucher', 'active', '-', 69025),
(964, 'Roblox', '400 Robux Global', 'voucher', 'active', '-', 119025),
(965, 'Roblox', '800 Robux Global', 'voucher', 'active', '-', 160615),
(966, 'Roblox', '1200 Robux Global', 'voucher', 'active', '-', 240910),
(967, 'Roblox', '1700 Robux Global', 'voucher', 'active', '-', 329285),
(968, 'Roblox', '2000 Robux Global', 'voucher', 'active', '-', 366655),
(969, 'Roblox', '2700 Robux Global', 'voucher', 'inactive', '-', 475025),
(970, 'Roblox', '3600 Robux Global', 'voucher', 'inactive', '-', 619025),
(971, 'Roblox', '4500 Robux Global', 'voucher', 'active', '-', 745405),
(972, 'Roblox', '10000 Robux Global', 'voucher', 'active', '-', 1490785),
(973, 'Roblox', '$10 USD', 'voucher', 'inactive', '-', 148525),
(974, 'Point Blank Voucher', 'Voucher 1200 PB Cash', 'voucher', 'active', '-', 8905),
(975, 'Point Blank Voucher', 'Voucher 2400 PB Cash', 'voucher', 'active', '-', 17810),
(976, 'Point Blank Voucher', 'Voucher 6000 PB Cash', 'voucher', 'active', '-', 44525),
(977, 'Point Blank Voucher', 'Voucher 12000 PB Cash', 'voucher', 'active', '-', 89025),
(978, 'Point Blank Voucher', 'Voucher 24000 PB Cash', 'voucher', 'active', '-', 178025),
(979, 'Point Blank Voucher', 'Voucher 36000 PB Cash', 'voucher', 'active', '-', 267025),
(980, 'Point Blank Voucher', 'Voucher 60000 PB Cash', 'voucher', 'active', '-', 445025),
(981, '8 Ball Pool', '20 Cash', 'topup', 'inactive', '', 13186),
(982, '8 Ball Pool', '50 Cash', 'topup', 'inactive', '', 32575),
(983, '8 Ball Pool', '110 Cash', 'topup', 'inactive', '', 64675),
(984, '8 Ball Pool', '250 Cash', 'topup', 'inactive', '', 129275),
(985, '8 Ball Pool', '800 Cash', 'topup', 'inactive', '', 318175),
(986, '8 Ball Pool', '2000 Cash', 'topup', 'inactive', '', 629275),
(987, '8 Ball Pool', '20.000 Coins', 'topup', 'active', '', 13096),
(988, '8 Ball Pool', '52000 Coins', 'topup', 'active', '', 32320),
(989, '8 Ball Pool', '112000 Coins', 'topup', 'active', '', 62120),
(990, '8 Ball Pool', '256000 Coins', 'topup', 'active', '', 123720),
(991, '8 Ball Pool', '800000 Coins', 'topup', 'active', '', 310120),
(992, '8 Ball Pool', '2000000 Coins', 'topup', 'active', '', 620120),
(993, 'Garena', '33 Shell', 'topup', 'inactive', '', 9500),
(994, 'Garena', '66 Shell', 'topup', 'inactive', '', 19000),
(995, 'Garena', '165 Shell', 'topup', 'inactive', '', 47500),
(996, 'Garena', '330 Shell', 'topup', 'inactive', '', 95256),
(997, 'Garena', '330 Shell (Promo)', 'topup', 'active', '', 89880),
(998, 'Bigo Live', '20 Diamonds', 'entertainment', 'active', '', 5995),
(999, 'Bigo Live', '50 Diamonds', 'entertainment', 'active', '', 14697),
(1000, 'Bigo Live', '100 Diamonds', 'entertainment', 'active', '', 28234),
(1001, 'Bigo Live', '200 Diamonds', 'entertainment', 'active', '', 56602),
(1002, 'Bigo Live', '500 Diamonds', 'entertainment', 'active', '', 141387),
(1003, 'Bigo Live', '2000 Diamonds', 'entertainment', 'active', '', 565632),
(1004, 'Bigo Live', '5000 Diamonds', 'entertainment', 'active', '', 1442690),
(1005, 'Likee', '80 Diamonds', 'entertainment', 'active', '', 24637),
(1006, 'Likee', '160 Diamonds', 'entertainment', 'active', '', 49278),
(1007, 'Likee', '240 Diamonds', 'entertainment', 'active', '', 74039),
(1008, 'Likee', '400 Diamonds', 'entertainment', 'active', '', 123316),
(1009, 'Likee', '800 Diamonds', 'entertainment', 'active', '', 246582),
(1010, 'Likee', '1600 Diamonds', 'entertainment', 'active', '', 493163),
(1011, 'Likee', '2400 Diamonds', 'entertainment', 'active', '', 739744),
(1012, 'Lita', '300 Coins', 'entertainment', 'active', '', 35179),
(1013, 'Lita', '600 Coins', 'entertainment', 'active', '', 70333),
(1014, 'Lita', '1000 Coins', 'entertainment', 'active', '', 116368),
(1015, 'Lita', '2000 Coins', 'entertainment', 'active', '', 232711),
(1016, 'Lita', '5000 Coins', 'entertainment', 'active', '', 581740),
(1017, 'StarMaker', '240 Coins', 'entertainment', 'active', '', 46879),
(1018, 'StarMaker', '400 Coins', 'entertainment', 'active', '', 78062),
(1019, 'StarMaker', '800 Coins', 'entertainment', 'active', '', 156098),
(1020, 'StarMaker', '1600 Coins', 'entertainment', 'active', '', 312170),
(1021, 'StarMaker', '2400 Coins', 'entertainment', 'active', '', 468377),
(1022, 'StarMaker', '4000 Coins', 'entertainment', 'active', '', 780521),
(1023, 'StarMaker', '8000 Coins', 'entertainment', 'active', '', 1561042),
(1024, 'Hiya', '500 Coins', 'entertainment', 'active', '', 9250),
(1025, 'Hiya', '1000 Coins', 'entertainment', 'active', '', 18500),
(1026, 'Hiya', '2000 Coins', 'entertainment', 'active', '', 37000),
(1027, 'Hiya', '3000 Coins', 'entertainment', 'active', '', 55500),
(1028, 'Hiya', '4000 Coins', 'entertainment', 'active', '', 74000),
(1029, 'Hiya', '5000 Coins', 'entertainment', 'active', '', 92500),
(1030, 'Hiya', '6000 Coins', 'entertainment', 'active', '', 111000),
(1031, 'Hiya', '7000 Coins', 'entertainment', 'active', '', 129500),
(1032, 'Hiya', '8000 Coins', 'entertainment', 'active', '', 148000),
(1033, 'Hiya', '9000 Coins', 'entertainment', 'active', '', 166500),
(1034, 'Hiya', '10000 Coins', 'entertainment', 'active', '', 185000),
(1035, 'Hiya', '11000 Coins', 'entertainment', 'active', '', 203500),
(1036, 'Hiya', '12000 Coins', 'entertainment', 'active', '', 222000),
(1037, 'Hiya', '13000 Coins', 'entertainment', 'active', '', 240500),
(1038, 'Hiya', '14000 Coins', 'entertainment', 'active', '', 259000),
(1039, 'Hiya', '15000 Coins', 'entertainment', 'active', '', 277500),
(1040, 'Hiya', '16000 Coins', 'entertainment', 'active', '', 296000),
(1041, 'Hiya', '17000 Coins', 'entertainment', 'active', '', 314500),
(1042, 'Hiya', '18000 Coins', 'entertainment', 'active', '', 333000),
(1043, 'Hiya', '19000 Coins', 'entertainment', 'active', '', 351500),
(1044, 'Hiya', '20000 Coins', 'entertainment', 'active', '', 370000),
(1045, 'Hiya', '30000 Coins', 'entertainment', 'active', '', 555000),
(1046, 'Hiya', '50000 Coins', 'entertainment', 'active', '', 925000),
(1047, 'Hiya', '100000 Coins', 'entertainment', 'active', '', 1850000),
(1048, 'Aswat', '1000 Koin', 'entertainment', 'active', '', 17100),
(1049, 'Aswat', '2000 Koin', 'entertainment', 'active', '', 34200),
(1050, 'Aswat', '3000 Koin', 'entertainment', 'active', '', 51300),
(1051, 'Aswat', '4000 Koin', 'entertainment', 'active', '', 68400),
(1052, 'Aswat', '5000 Koin', 'entertainment', 'active', '', 85500),
(1053, 'Aswat', '6000 Koin', 'entertainment', 'active', '', 102600),
(1054, 'Aswat', '7000 Koin', 'entertainment', 'active', '', 119700),
(1055, 'Aswat', '8000 Koin', 'entertainment', 'active', '', 136800),
(1056, 'Aswat', '9000 Koin', 'entertainment', 'active', '', 153900),
(1057, 'Aswat', '10000 Koin', 'entertainment', 'active', '', 171000),
(1058, 'Mango Live', '5000 Diamonds', 'entertainment', 'active', '', 18600),
(1059, 'Mango Live', '10000 Diamonds', 'entertainment', 'active', '', 37300),
(1060, 'Mango Live', '20000 Diamonds', 'entertainment', 'active', '', 74500),
(1061, 'Mango Live', '100000 Diamonds', 'entertainment', 'active', '', 360025),
(1062, 'Mango Live', '250000 Diamonds', 'entertainment', 'active', '', 855025),
(1063, 'Mango Live', '500000 Diamonds', 'entertainment', 'active', '', 1710025),
(1064, 'Mango Live', '1000000 Diamonds', 'entertainment', 'active', '', 3720025),
(1065, 'Iqiyi', 'Basic 1 Bulan', 'voucher', 'active', '', 13166),
(1066, 'Iqiyi', 'Basic 3 Bulan', 'voucher', 'active', '', 37274),
(1067, 'Iqiyi', 'Basic 1 Tahun', 'voucher', 'active', '', 129000),
(1068, 'Iqiyi', 'Standard 1 Bulan', 'voucher', 'active', '', 26970),
(1069, 'Iqiyi', 'Standard 3 Bulan', 'voucher', 'active', '', 75307),
(1070, 'Iqiyi', 'Standard 1 Tahun', 'voucher', 'active', '', 270000),
(1071, 'Iqiyi', 'Premium 1 Bulan', 'voucher', 'active', '', 40760),
(1072, 'Iqiyi', 'Premium 3 Bulan', 'voucher', 'active', '', 116681),
(1073, 'Iqiyi', 'Premium 1 Tahun', 'voucher', 'active', '', 417000),
(1074, 'Spotify', 'Subscription Voucher - 1 Bulan', 'voucher', 'active', '', 55025),
(1075, 'Spotify', 'Subscription Voucher - 3 Bulan', 'voucher', 'active', '', 165025),
(1076, 'Spotify', 'Subscription Voucher - 6 Bulan', 'voucher', 'active', '', 302925),
(1077, 'Vidio', 'Premier League Mobile 30 Hari', 'voucher', 'active', '', 24110),
(1078, 'Vidio', 'Platinum 30 Hari', 'voucher', 'active', '', 37325),
(1079, 'Vidio', 'Platinum 1 Tahun', 'voucher', 'active', '', 258425),
(1080, 'Vidio', 'Diamond Mobile 30 Hari', 'voucher', 'active', '', 48160),
(1081, 'Vidio', 'Diamond All Screen 30 Hari', 'voucher', 'active', '', 94625),
(1082, 'Vidio', 'Diamond Mobile 1 Tahun', 'voucher', 'active', '', 412725),
(1083, 'Vidio', 'Diamond All Screen 1 Tahun', 'voucher', 'active', '', 720525),
(1084, 'Viu', 'Viu 1 Bulan', 'voucher', 'active', '', 42150),
(1085, 'Viu', 'Viu 1 Tahun', 'voucher', 'active', '', 268175),
(1086, 'Joki Mobile Legends', 'GM → Epic	', 'joki', 'inactive', '', 96000),
(1087, 'Joki Mobile Legends', 'Full Grading', 'joki', 'inactive', '', 124800),
(1088, 'Joki Mobile Legends', 'Epic → Legend', 'joki', 'inactive', '', 144000),
(1089, 'Joki Mobile Legends', 'Legend → Mythic', 'joki', 'inactive', '', 168000),
(1090, 'Joki Mobile Legends', 'Grading → Honor', 'joki', 'inactive', '', 249600),
(1091, 'Joki Mobile Legends', 'Honor → Glory', 'joki', 'inactive', '', 360000),
(1092, 'Joki Mobile Legends', 'Grading → Glory', 'joki', 'inactive', '', 604800),
(1093, 'Joki Mobile Legends', 'Glory → Immortal', 'joki', 'inactive', '', 950400),
(1094, 'Joki Mobile Legends', 'Epic 5 Bintang', 'joki', 'inactive', '', 28800),
(1095, 'Joki Mobile Legends', 'Legend 5 Bintang', 'joki', 'inactive', '', 33600),
(1096, 'Joki Mobile Legends', 'Mythic 5 Bintang', 'joki', 'inactive', '', 62400),
(1097, 'Joki Mobile Legends', 'Honor 5 Bintang', 'joki', 'inactive', '', 72000),
(1098, 'Joki Mobile Legends', 'Glory 5 Bintang', 'joki', 'inactive', '', 96000),
(1099, 'Joki Mobile Legends', 'Immortal 5 Bintang', 'joki', 'inactive', '', 120000),
(1100, 'Joki Mobile Legends', 'Epic 5 Bintang', 'joki', 'inactive', '', 28800),
(1101, 'Joki Mobile Legends', 'Legend 5 Bintang', 'joki', 'inactive', '', 33600),
(1102, 'Joki Mobile Legends', 'Mythic 5 Bintang', 'joki', 'inactive', '', 62400),
(1103, 'Joki Mobile Legends', 'Honor 5 Bintang', 'joki', 'inactive', '', 72000),
(1104, 'Joki Mobile Legends', 'Glory 5 Bintang', 'joki', 'inactive', '', 96000),
(1105, 'Joki Mobile Legends', 'Immortal 5 Bintang', 'joki', 'inactive', '', 120000),
(1106, 'Joki Mobile Legends', 'Epic 5 Bintang', 'joki', 'inactive', '', 28800),
(1107, 'Joki Mobile Legends', 'Legend 5 Bintang', 'joki', 'inactive', '', 33600),
(1108, 'Joki Mobile Legends', 'Mythic 5 Bintang', 'joki', 'inactive', '', 62400),
(1109, 'Joki Mobile Legends', 'Honor 5 Bintang', 'joki', 'inactive', '', 72000),
(1110, 'Joki Mobile Legends', 'Glory 5 Bintang', 'joki', 'inactive', '', 96000),
(1111, 'Joki Mobile Legends', 'Immortal 5 Bintang', 'joki', 'inactive', '', 120000),
(1112, 'Joki Mobile Legends', 'Master', 'joki', 'inactive', '', 3840),
(1113, 'Joki Mobile Legends', 'Grand Master', 'joki', 'inactive', '', 4800),
(1114, 'Joki Mobile Legends', 'Epic', 'joki', 'inactive', '', 6720),
(1115, 'Joki Mobile Legends', 'Legend', 'joki', 'inactive', '', 7680),
(1116, 'Joki Mobile Legends', 'Mythic', 'joki', 'inactive', '', 13440),
(1117, 'Joki Mobile Legends', 'Honor', 'joki', 'inactive', '', 15360),
(1118, 'Joki Mobile Legends', 'Glory', 'joki', 'inactive', '', 20160),
(1119, 'Joki Mobile Legends', 'Immortal', 'joki', 'inactive', '', 25920),
(1120, 'Joki Mobile Legends', 'MCL Weekly', 'joki', 'inactive', '', 72000),
(1121, 'Joki Mobile Legends', 'MCL Final Gold', 'joki', 'inactive', '', 96000),
(1122, 'Token PLN', 'PLN 5.000', 'prabayar', 'active', '', 31331),
(1123, 'Token PLN', 'PLN 10.000', 'prabayar', 'active', '', 55147),
(1124, 'Token PLN', 'PLN 15.000', 'prabayar', 'active', '', 78897),
(1125, 'Token PLN', 'PLN 20.000', 'prabayar', 'active', '', 216573),
(1126, 'Token PLN', 'PLN 50.000', 'prabayar', 'active', '', 541173),
(1127, 'Token PLN', 'PLN 100.000', 'prabayar', 'active', '', 1082173),
(1128, 'Token PLN', 'PLN 200.000', 'prabayar', 'active', '', 2219977),
(1129, 'Nintendo eShop', '$20 USD', 'voucher', 'active', '-', 138479625),
(1130, 'Nintendo eShop', '$35 USD', 'voucher', 'active', '-', 172217425),
(1131, 'Nintendo eShop', '$50 USD', 'voucher', 'active', '-', 530761000),
(1132, 'Nintendo eShop', '3 Months Membership', 'voucher', 'active', '-', 5773625),
(1133, 'Nintendo eShop', '12 Months Membership', 'voucher', 'active', '-', 149123618);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_produk`
--

CREATE TABLE `produk_produk` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `href` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk_produk`
--

INSERT INTO `produk_produk` (`id`, `name`, `src`, `href`) VALUES
(1, 'Mobile Legends A', 'static/assets/ml.jpg', '/mobile-legends-a/'),
(2, 'Mobile Legends B', 'static/assets/ml.jpg', '/mobile-legends-b/'),
(3, 'FreeFire', 'static/assets/Freefire.jpg', '/freefire/'),
(4, 'PUBG Mobile', 'static/assets/pubgm.jpeg', '/pubg-mobile/'),
(5, 'Genshin Impact', 'static/assets/Genshin-Impact.jpeg', '/genshin-impact/'),
(6, 'Clash of Clans', 'static/assets/coc.jpeg', '/clash-of-clans/'),
(7, 'Valorant', 'static/assets/Valorant.jpeg', '/valorant/'),
(8, 'Call of Duty', 'static/assets/call-of-duty.jpeg', '/call-of-duty/'),
(9, 'Honkai Impact 3', 'static/assets/honkai-impact-3.jpeg', '/honkai-impact-3/'),
(10, 'Arena of Valor', 'static/assets/aov.jpeg', '/arena-of-valor/'),
(11, 'Tower of Fantasy', 'static/assets/tower-of-fantasy.jpg', '/tower-of-fantasy/'),
(12, '8 Ball Pool', 'static/assets/8-ball-pool.jpeg', '/8-ball-pool/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_users`
--

CREATE TABLE `produk_users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk_users`
--

INSERT INTO `produk_users` (`id`, `name`, `username`, `password`, `saldo`) VALUES
(1, 'Didik Sukma', 'didik', '123', 998607),
(2, 'wahyu andre wibowo', 'waw', '123', 871344),
(3, 'Risma Nurdiani', 'risma', '123', 998607),
(4, 'Auxylium Briton Edyn Bunga', 'auxy', '123', 937620);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `produk_cart_user`
--
ALTER TABLE `produk_cart_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk_products`
--
ALTER TABLE `produk_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk_produk`
--
ALTER TABLE `produk_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk_users`
--
ALTER TABLE `produk_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `produk_cart_user`
--
ALTER TABLE `produk_cart_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `produk_products`
--
ALTER TABLE `produk_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1134;

--
-- AUTO_INCREMENT untuk tabel `produk_produk`
--
ALTER TABLE `produk_produk`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `produk_users`
--
ALTER TABLE `produk_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
