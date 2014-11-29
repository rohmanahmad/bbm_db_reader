-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2014 at 10:04 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bbm_messages`
--

CREATE TABLE IF NOT EXISTS `bbm_messages` (
  `message_id` int(11) NOT NULL,
  `conversation_id` varchar(10) NOT NULL,
  `partisipant_id` varchar(10) NOT NULL,
  `text_messages` tinytext NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bbm_messages`
--

INSERT INTO `bbm_messages` (`message_id`, `conversation_id`, `partisipant_id`, `text_messages`, `status`) VALUES
(16505, '230', '461', 'Dicari staff ( pribumi )\r* Laki" dan perempuan\r\rLOKASI  DI MEDAN \r(Tmpt kerja di  Medan johor , medan titikuning. )\r\rUsia 20 - 26 tahun\r( Punya motor dan bs berkendara motor )\r*pny sim C\r\rKerjaan : \r* packing barang \r* kirim Brg ke JNE , TIKI ( tidak jauh', 5),
(16518, '224', '448', 'bagi anda yg membutuhkan website untuk usaha anda silahkan hubungi kami di rezstore.com pd bagian contact.... atau di bbm kami ini.... \ndapatkan DISKON dan GARANSI service dari kami selama 3th. \nkami jamin penjualan anda akan semakin dikenal banyak orang.', 2),
(16519, '226', '452', 'bagi anda yg membutuhkan website untuk usaha anda silahkan hubungi kami di rezstore.com pd bagian contact.... atau di bbm kami ini.... \ndapatkan DISKON dan GARANSI service dari kami selama 3th. \nkami jamin penjualan anda akan semakin dikenal banyak orang.', 2),
(16520, '230', '460', 'bagi anda yg membutuhkan website untuk usaha anda silahkan hubungi kami di rezstore.com pd bagian contact.... atau di bbm kami ini.... \ndapatkan DISKON dan GARANSI service dari kami selama 3th. \nkami jamin penjualan anda akan semakin dikenal banyak orang.', 2),
(16521, '231', '462', 'bagi anda yg membutuhkan website untuk usaha anda silahkan hubungi kami di rezstore.com pd bagian contact.... atau di bbm kami ini.... \ndapatkan DISKON dan GARANSI service dari kami selama 3th. \nkami jamin penjualan anda akan semakin dikenal banyak orang.', 2),
(16522, '232', '464', 'bagi anda yg membutuhkan website untuk usaha anda silahkan hubungi kami di rezstore.com pd bagian contact.... atau di bbm kami ini.... \ndapatkan DISKON dan GARANSI service dari kami selama 3th. \nkami jamin penjualan anda akan semakin dikenal banyak orang.', 2),
(16527, '233', '467', 'Ayuuukk cek DP saia..\nBagus loo tas nyaa..\nLaris manis..\nTawarin k temen2 nyaa, siapa tau minat..\nFor more details, Chat me..\nThank you ({}) \n\nJgn lupa slalu check www.fashiongrand.com\nBanyak item baru nya loohh..\n;) ', 5),
(16540, '235', '471', 'Pagiiiii,.\nJum''at ceria,. Free Ongkir yaa,.obat pelangsing herbalnya khusus ?ª?? transfer jum''at ini,.cuzzz rekappp iY?????ªªª siss,. Grab it fast({})', 5),
(16548, '235', '470', 'Sis kemaren saya pesen peninggi badan super usa masih ada apa??? Trus harga totalnya berapa', 5),
(16549, '235', '471', 'Ongkir kmn?', 5),
(16550, '235', '470', 'Malang sis', 5),
(16551, '235', '471', '150rb +8rb= 158rb', 5),
(16552, '235', '470', 'Lho kok naik sis... Saya kemaren 80 sama ongkirnya...', 5),
(16553, '235', '471', 'Ohh sory salah harga', 5),
(16554, '235', '471', 'Salah liat', 5),
(16555, '235', '470', 'Waduh sis...', 5),
(16556, '235', '471', '80rb iY?????ªªª sama ongkir', 5),
(16557, '235', '471', '8160597071 BCa an jatining mas udah', 5),
(16558, '235', '471', 'Habis tt konfrm', 5),
(16559, '235', '470', 'Yaudah saya kabari nanti.', 5),
(16560, '235', '471', 'Minta nama, alamat no hp', 5),
(16561, '235', '470', 'Bri aja', 5),
(16562, '235', '471', 'Bri 057901011622505 an JATINING MAS''UDAH', 5),
(16563, '233', '467', 'Ayoo..cepetan buka website..\rwww.fashiongrand.com \rAda NEW ARRIVAL!\rBagus loohh tas nyaa..\rStock limited..\rBuruan yaa order.. Sebelum abis..\r\rSekalian mau kasi tau ni..\rFashion Grand skg punya 2 pin BB..\rD add yaa..\r24E4BF19\r\rMakasii.. ({})', 4),
(16568, '237', '475', 'bbm sempat error, yang sudah check stock/ order mohon rechat :)', 4),
(16570, '235', '471', 'Punya berat badan besar, endut,perut buncit,lemak dimana2,  ?G?????Å??????? ideal banget kan??pengen nurunin berat badan males, olahraga rutin pun ?G?????Å??????? cukup, minum ramuan2 pelangsing ?ª? jamin aman,à?á efek samping, banyak pantangan, super rib', 5),
(16577, '231', '463', 'cek dp sista wedges cantik, ready warna: gold,silver dan hitam, material: kulit, ukuran:36-40, tinggi:5cm, yuk siapa lagi yang minat limited stock lho...', 5),
(16632, '231', '463', 'Ready on Dp wedges pita cantik, warna:biru-hitam-merah, uk:36-40, bahan: suede+kulit, sol karet, tinggi:5cm, Yuk silahkan diorder sista..limited Stock <3<3', 4),
(16821, '240', '481', 'Pipii', 5),
(16822, '240', '480', 'Iya cyank....', 5),
(16826, '240', '481', 'Ohhhhh', 5),
(16827, '240', '481', 'Tpiii pipiii gk error kn', 5),
(16831, '240', '481', 'Pipiiiiii', 5),
(16832, '240', '481', 'Mimii sayang pipiii', 5),
(16833, '240', '480', 'Iyaaa mimi...pipi juga sayang sm pipi...', 5),
(16834, '240', '480', 'Mimi mksdnya hehehe', 5),
(16835, '240', '481', 'Hahahahaaaa', 5),
(16836, '240', '481', '=d =)) \\=d/ *Rotfl* ', 5),
(16837, '240', '481', 'Muuuaacchhhhh', 5),
(16838, '240', '481', 'Wall apa pii', 5),
(16839, '240', '480', 'Yaa wall bbm mimi dong...', 5),
(16840, '240', '481', 'Wall itu apa pii', 5),
(16842, '240', '480', 'Foto profil cyank...', 5),
(16843, '240', '481', 'Ohhhhh heheee knp piiii', 5),
(16844, '240', '480', 'Lucu bnget miii...:D', 5),
(16845, '240', '481', 'Truusss piiiii', 5),
(16846, '240', '480', 'Pipi pulang cyank....', 5),
(16847, '240', '481', 'Kok bisaa lucuuu...', 5),
(16848, '240', '481', 'Kykny biasaa ajh piii', 5),
(16849, '240', '481', 'Pipiii htiii2 yaaa piii', 5),
(16850, '240', '480', 'Oke cyank...', 5),
(16851, '240', '480', 'Assalamualaikum...', 5),
(16852, '240', '481', 'Pipii ke zaky nyaaa htiii2 yaaaa', 5),
(16853, '240', '481', 'Waalaikumsalam', 5),
(16854, '230', '461', 'Hello guys..\r\rKatalog readystock sudah diemail ya\r" Readystock 16 november ,medan "\r\rBagi yg sudah pernah kasi emailnya sudah diemail..silahkan cek email anda ya..\r\rJika anda belum menerima emailnya,\rChat saya email address anda ..akan kita emailkan * tid', 4),
(16856, '231', '463', 'Ready on Dp flat mika flower warna:biru-pink-apricot, uk:36-41, bahan:jelly mika,, Yuk silahkan diorder sista..limited Stock <3<3', 4),
(16857, '235', '471', 'Punya berat badan besar, endut,perut buncit,lemak dimana2,  ?G?????Å??????? ideal banget kan??pengen nurunin berat badan males, olahraga rutin pun ?G?????Å??????? cukup, minum ramuan2 pelangsing ?ª? jamin aman,à?á efek samping, banyak pantangan, super rib', 5),
(16858, '232', '465', 'sorry ganggu, tes kontak skalian tawarin siapa tau ada yg minat\ntas lokal @50rb\ntas lokal set jam+dompet @110rb\ntas semsup-super @100-160rb\ntas semsup-super set jam+dompet @200\nspatu cwe flat 25-60rb\nspatu cwe wedjes heels @50-80rb\njam lokal free box@25-5', 4),
(16859, '240', '480', 'Mimi cyank....', 5),
(16860, '240', '481', 'Iyaaa pipiiii', 5),
(16861, '240', '480', 'Lg apa mimi', 5),
(16862, '240', '481', 'Mimi diem pii mumett', 5),
(16863, '240', '480', 'Mumet knp cyank...', 5),
(16864, '240', '481', 'Ndak tw nih piiii', 5),
(16865, '240', '481', '... mimi pgen kpipiii', 5),
(16866, '240', '480', 'Iya udah cyank... Ksini aja... Yaah...', 5),
(16868, '240', '480', 'Kok mesti pending yahh ...', 5),
(16869, '240', '481', 'Iyaa piii .....', 5),
(16870, '240', '481', 'Tpi gk ykin mw pkek motor piiiii', 5),
(16871, '233', '467', 'Haloo..\nCek website Fashion Grand yuukk..\nAda NEW ARRIVAL loo..\nBuruan yuk order..\nwww.fashiongrand.com \nDptkan disc utk pngambilan 3pcs item apapun.. \nDtunggu yaa orderannyaa.. jgn sampai kehabisan loohh.. ;) ', 4),
(16872, '240', '480', 'Yaudah nanti pipi jemput aja yaa cyank...', 5),
(16873, '230', '461', 'OPEN PO24.\rClosing 7 Desember \rEstimasi Ready 28 Januari\rPas bangett utk dipakai waktu Imlekkk bierrr kecehhhh <3<3<3<3 \rYang engga imlek pas banget pake utk persiapan Valentine Day @>-- \rPO24 kita menampilkan Model tas yg lebihhh Fashion lagi drpd yg seb', 4),
(16874, '235', '471', '.Peeling Gel & Spray:\r• Aichun Peeling Gel : 25rb\r• Aichun Revitalizing : 38rb\r• Maiden Premium Spray : 53rb\r• Kojic Peeling Gel : 44rb\rKaki :\r• Kinoki White : 20rb\r• Heel Balm Nitro : 28rb\rPerontok Bulu :\r• Depilatory : 29rb\r• Rolanjona Depilatory : 40rb', 4),
(16875, '224', '449', 'END SALE.. dr 200.000 turun 180.000 selama persediaan masih ada.. yuuk diorder', 4),
(16876, '235', '471', '#PROMO HARI INI\r@125rb PB Samsung 32.000mah\rMinimal Order 5pcs.\r\r#TONGSIS + TRIPOD :\r• Tongsis Monopod : 50rb \r• Tongsis + Holder L : 65rb\r• Tongsis + Holder U : 60rb\r• Tripod + Holder U : 60rb\r• Tomsis Bluetooth : 65rb\r• Fish Eyes 3in1 : 65rb\r• Lazypod :', 4),
(16877, '235', '471', 'Wajah :\r• Honey Jelly Old Pack : 23rb\r• Lixiao : 23rb\r• Pake Cream Korea Lokal : 25rb\r• Cream Ester non sabun : 25rb\r• Bedak Palgantong : 25rb\r• Cream aDHa Pink/Ijo : 25rb\r• Cream Walet 2in1 : 25rb\r• Cream Walet Gold : 26rb\r• Cream Syahrini HN 15gr : 26rb', 4),
(16879, '240', '480', 'Iya cyank', 5),
(16880, '240', '481', 'Mimiii dsruh pulng cpet piii...', 5),
(16882, '240', '480', 'Lho pusing knp cyank....', 5),
(16883, '240', '481', 'Pipiii ......', 5),
(16884, '240', '480', 'Knp cyank....', 5);

-- --------------------------------------------------------

--
-- Table structure for table `bbm_participants`
--

CREATE TABLE IF NOT EXISTS `bbm_participants` (
  `participant_id` varchar(10) NOT NULL DEFAULT 'no_id',
  `conversation_id` varchar(10) NOT NULL DEFAULT 'no_id',
  `user_id` varchar(10) NOT NULL DEFAULT 'no_id',
  PRIMARY KEY (`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bbm_participants`
--

INSERT INTO `bbm_participants` (`participant_id`, `conversation_id`, `user_id`) VALUES
('378', '189', '34'),
('449', '224', '47'),
('453', '226', '27'),
('461', '230', '50'),
('463', '231', '52'),
('465', '232', '53'),
('467', '233', '15'),
('471', '235', '44'),
('475', '237', '16'),
('481', '240', '56'),
('483', '241', '33');

-- --------------------------------------------------------

--
-- Table structure for table `bbm_users`
--

CREATE TABLE IF NOT EXISTS `bbm_users` (
  `userid` int(11) NOT NULL,
  `pin` varchar(10) NOT NULL DEFAULT 'no_pin',
  `name` varchar(100) NOT NULL DEFAULT 'no_name',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bbm_users`
--

INSERT INTO `bbm_users` (`userid`, `pin`, `name`, `status`) VALUES
(0, '7ca5e6d9', 'bebe', 0),
(7, '7d1131ff', 'Silvia Putri ?<3', 0),
(15, '24d7991b', 'Fashion Grand', 0),
(16, '79dd3436', 'CS 5 - tas123.com - 082140450350', 0),
(27, '7d2758da', 'Ari*Ria Lollys', 0),
(32, '30e19d79', 'Arlianty Agreswara', 0),
(33, '7a269661', 'Rizky Yuliawan', 0),
(34, '75ff8861', 'Panca Akbar', 0),
(43, '7f9f142f', 'Letterz All', 0),
(44, '237e45c0', '?Uud SHOP | HARGA GROSIR|Pelangsing HerbaL|Skin Care@>-- ({}) ?', 0),
(47, '51ad47c3', '<3N@dN€u *KISS* Ol''shop (*) *Gifts* ', 0),
(50, '29003886', 'Butik1001.com - cs1 | importir | medan', 0),
(52, '7e70781a', 'Vie-Vie Grosir Shoes/Wedges/Heel/Flatshoes Reseller-Dropship', 0),
(53, '76b13d9d', 'Wulan <3 Yongki (yolan collection jakarta)', 0),
(56, '7d333967', '\\/¡!?   <3<3 ', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
