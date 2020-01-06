/*
 Navicat Premium Data Transfer

 Source Server         : TEST
 Source Server Type    : MySQL
 Source Server Version : 100408
 Source Host           : localhost:3306
 Source Schema         : onetomany

 Target Server Type    : MySQL
 Target Server Version : 100408
 File Encoding         : 65001

 Date: 06/01/2020 02:51:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for artikel
-- ----------------------------
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artikel
-- ----------------------------
INSERT INTO `artikel` VALUES (1, 'Latar Belakang Pariwisata', '<p><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\"><strong>Pariwisata</strong> telah menjadi industri yang sangat besar untuk skala global tidak terkecuali untuk Asia Tenggara. berdasarkan data dari GlobalData yang merupakan salah satu perusahaan analisis bahwa kunjungan wisata di kawasan Asia Tenggara (ASEAN) akan terus mengalami peningkatan sebesar 4,72 persen setiap tahun tercatat pada 2018, negara-negara di kawasan Asia Tenggara (ASEAN) berhasil mendatangkan 129,2 juta pengunjung dan diperkirakan akan naik menjadi 155,4 juta untuk tahun 2022. </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Meskipun tingkat kunjungan wisatawan asing ke ASEAN cukup tinggi berdasarkan data dari &ldquo;<em>Good News From Southeast Asia</em>&rdquo; jumlah kunjungan wisatawan asing ke Indonesia masih dibawah Thailand (38,3 juta), Singapura (25,8 Juta) dan Malaysia (18,5 juta). Indonesia berada di posisi ke-4 dengan jumlah wisatawan mencapai 15,8 juta </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Melihat jumlah kunjungan pariwisata di kawasan ASEAN, jumlah wisatawan Asing di Indonesia masih sangat jauh dibawah Thailand (terpaut 18 juta wisatawan), tetapi jika melihat perkembangan aktivitas pariwisata di Indonesia, sektor pariwisata di Indonesia sudah mulai tumbuh dan berkembang, bahkan sudah mulai menjadi trend dan gaya hidup tersendiri dalam masyarakat. Pemerintah mengharapkan aktivitas pariwisata dapat menjadi sektor andalan yang mampu menggerakkan sektor-sektor ekonomi lain yang terkait erat. Bahkan tertuang pada Rencana Induk Pembangunan Nasional, sudah diprogramkan oleh pemerintah pusat bahwa pembangunan 5 tahun ke depan pemerintah memfokuskan pada sektor Pariwisata infrastruktur, maritim, energi dan pangan. Penetapan kelima sektor ini dengan pertimbangan karena mempunyai peran yang sangat signifikan dalam pembangunan nasional, baik untuk jangka pendek, menengah, maupun jangka panjang.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Khusus untuk sektor pariwisata sendiri Presiden Republik Indonesia Bapak Ir.H. Joko Widodo memberikan pernyataan pada Rapat Terbatas. Beliau menegaskan bahwa Indonesia menetapkan Pariwisata sebagai <em>leading sector</em>. Selain itu beliau juga menyampaikan bahwa seluruh jajaran kementerian Republik Indonesia wajib mendukungnya.</span></span></span></p>\r\n');
INSERT INTO `artikel` VALUES (2, 'Pariwisata Leading Sector', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Pariwisata ditetapkan sebagai leading sektor&nbsp; karena dalam jangka pendek, menengah, maupun jangka panjang diprediksi akan mempunyai pertumbuhan yang positif serta dianggap sebagai sektor yang strategis serta mampu menjadi media integrasi program antar sektor (Kajian Data Pasar Wisatawan Nusantara BPS, 2018)&nbsp; </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Dalam sasaran pembangunan pariwisata 2015-2019 oleh Kementerian Perencanaan Pembangunan Nasional/Bapenas juga telah dicanangkan bahwa pada Tahun 2019 sektor pariwisata Indonesia memiliki tingkat kontribusi terhadap PDB Nasional sebesar 8%, dengan jumlah kunjugan wisatawan mancanegara 20 juta wisatawan dan memberikan devisa sebesar 240 triliun Rupiah.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Mencermati apa yang telah direncakan oleh Pemerintah pusat dan Bapenas sektor&nbsp; pariwisata diharapkan mampu menggalakan ekonomi maupun sektor -sektor lainnya seperti lapangan kerja pendapatan masyarakat, daerah dan negara. Hal ini merupakan tantangan tersendiri bagi sektor&nbsp; pariwisata, khususnya kepada pihak-pihak yang berkopetensi disektor ini. Dengan harapan bahwa dalam usaha pemasaran kepariwisataan dilaksanakan berdasarkan azasusaha bersama, kekeluargaan, adil dan merata. </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Menyadari pentingnya peranan sektor pariwisata ini, pemerintah telah menempuh banyak langkah-langkah dalam menumbuhkankan sektor pariwisata, seperti pengembangan objek wisata, pembangunan infrastruktur konektivitas, peningkatan kegiatan promosi dan pemasaran</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Usaha-usaha pemerintah tersebut diantaranya: Program <em>Wonderful Indonesia</em> yang merupakan <em>Country Branding </em>sebuah website pembantu wisatawan asing untuk mengenal Indonesia lebih jauh maupun memberikan informasi detail mengenai daftar destinasi wisata di Indonesia adalah salah satu dari sebagian besar program <em>Wonderful Indonesia</em>.</span></span></span></p>\r\n');
INSERT INTO `artikel` VALUES (3, 'Kunjungan Pariwisata', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Selain itu Berbagai macam program promosi juga telah dilakukan oleh <em>Wonderful Indonesia</em> di berbagai belahan dunia seperti Festival Kebudayaan Indonesia, Festival Colourful Indonesia, Festival Indonesia Day dan Festival Kuliner Indonesia di negara Perancis, Turki, Inggris, Korea, Jepang dll.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Pembangunan demi pembangunan juga telah dilakukan oleh pemerintah selama 4 tahun terakhir seperti pembangunan jalan tol dan jalan raya sepanjang lebih dari 4.000 km, pembangunan jalur kereta api sekaligus rehabilitasi jalur kereta api yang sudah ada sepanjang 1.300 km&rsquo;sp dan pembangunan 10 bandar udara baru (Miangas, Letung, Tebeliang, Maratua, Morowali, Namniwel, Weru dan Koroway Batu) </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Dari berbagai kegiatan tersebut telah membawa hasil yang menggembirakan ini terlihat adannya peningkatan kunjungan wisatawan mancanegara yang datang ke Indonesia yang dapat dilihat pada tabel I.2.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Dilihat dari jumlah wisatawan yang masuk ke Indonesia pada tahun 2012-2019 terlihat kenaikan secara terus-menerus terutama pada tahun 2015 sampai dengan 2017 terjadi kenaikan signifikan mencapai lebih dari 3 juta pengunjung.Dari angka pertumbuhan kunjungan yang terjadi dalam kurun waktu 10 tahun terakhir dan jumlah 2 bulan pertama pada tahun ini diharapkan total kunjungan pada tahun 2019 dapat mencapai angka 20 juta kunjungan. </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Berkenaan dengan perkembangan sektor pariwisata di Indonesia baik berupa kegiatan promosi dan peningkatan infratruktur pendukung sebagai salah satu destinasi wisatawan di Indonesia, Jawa barat memiliki jumlah kunjungan wisata yang relatif tinggi. Dari tahun ke tahun jawa barat juga memiliki peningkatan yang selengkapnya dapat dilihat pada tabel I.3.</span></span></span></p>\r\n');
INSERT INTO `artikel` VALUES (4, 'Peningkatan Jumlah Wisatawan', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Peningkatan jumlah wisatawan asing yang masuk ke Jawa Barat tidak terlepas dari aktivitas yang dilakukan oleh Dinas Pariwisata &nbsp;bersama dengan Badan Promosi yang ada di Jawa Barat. Kenaikan signifikan terlihat pada tahun 2014-2018. Asean Games 2018 yang diadakan di Indonesia merupakan alasan utama jumlah kunjungan wisatawan mancanegara pada tahun 2018&nbsp; mencapai angka 5.692.776.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Menurut Anwar Ujang (2006) Sektor promosi sangat berperan penting dalam hal ini karena dianggap sebagai alat dalam mempengaruhi memberitahu, mengkomunikasikan mengingatkan dengan maksud untuk mempengaruhi perilaku konsumen. </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Selain faktor promosi menurut Dalivanh Sirisak, dkk (2014) fasilitas, jenis tempat hiburan, jenis objek wisata, perkembangan jumlah hotel dan restaurant yang beberapa dari itu merupakan daya tarik khas daerah tersebut menjadi penarik wisatawan mancanegara untuk mengunjungi suatu daerah.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Faktor aksesbilitas juga menjadi faktor yang menarik wisatawan mancanegara untuk berkunjung ke Jawa Barat yang salah satunya telah disebutkan diatas yaitu promosi. Infratruktur, noda transportasi, terlebih tranportasi udara sangat berpengaruh kepada tingkat kunjungan wisatawan mancanegara, Seperti yang diungkapkan oleh Irma Yusfida (2013) Penerbangan merupakan moda utama wisatawan mancanegara karena lebih mudah menghubungkan antara titik asal menuju tujuan. </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\">Sejalan dengan pernyataan diatas pemerintah melalui RKPD Jawa Barat 2020 berencana menggali dan mengembangkan potensi wilayah dalam bidang pariwisata untuk meningkatkan pendapatan nasional dan penciptaan lapangan kerja dan kesempatan usaha masyarakat dan berharap destinasi pariwisata dapat dikembangkan dengan seluas-luasnya.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-size:12.0pt\">Berkenaan dengan itu, pariwisata juga berperan dalam pemerataan pendapatan, mendukung perkembangan dan pelestarian seni budaya serta keindahan alam di Provinsi Jawa Barat. Untuk mewujudkan hal tersebut Pemerintah Daerah Provinsi Jawa Barat telah mengeluarkan berbagai kebijakan di bidang Pariwisata untuk menarik wisatawan datang antara lain:</span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:10pt\"><span style=\"font-size:12.0pt\">Membangun akses ke destinasi wisata yang sudah ada</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:10pt\"><span style=\"font-size:12.0pt\">Membangun destinasi wisata baru</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:10pt\"><span style=\"font-size:12.0pt\">Membuat Kawasan Ekonomi Khusus (KEK) berbasis pariwisata</span></span></li>\r\n</ol>\r\n');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artikel_id` int(11) NULL DEFAULT NULL,
  `kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `relation_id`(`artikel_id`) USING BTREE,
  CONSTRAINT `relation_id` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 1, 'Traveling');
INSERT INTO `kategori` VALUES (2, 2, 'Wisata');
INSERT INTO `kategori` VALUES (3, 3, 'Pemerintah');
INSERT INTO `kategori` VALUES (4, 4, 'Pariwisata');
INSERT INTO `kategori` VALUES (5, 3, 'Leading Sector');
INSERT INTO `kategori` VALUES (6, 4, 'Indonesia');
INSERT INTO `kategori` VALUES (7, 2, 'Pariwisata');
INSERT INTO `kategori` VALUES (8, 1, 'Pariwisata');
INSERT INTO `kategori` VALUES (9, 2, 'NKRI');
INSERT INTO `kategori` VALUES (10, 3, 'Wisatawan');
INSERT INTO `kategori` VALUES (11, 4, 'Traveling');
INSERT INTO `kategori` VALUES (12, 3, 'Pariwisata');
INSERT INTO `kategori` VALUES (13, 2, 'Pemerintah');
INSERT INTO `kategori` VALUES (15, 4, 'Leading Sector');
INSERT INTO `kategori` VALUES (16, 3, 'Indonesia');
INSERT INTO `kategori` VALUES (17, 2, 'Wisatawan');
INSERT INTO `kategori` VALUES (18, 1, 'Wisata');
INSERT INTO `kategori` VALUES (19, 4, 'NKRI');
INSERT INTO `kategori` VALUES (20, 3, 'Wisatawan');

SET FOREIGN_KEY_CHECKS = 1;
