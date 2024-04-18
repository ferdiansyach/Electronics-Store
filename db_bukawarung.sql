-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2023 pada 12.35
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_admin`
--

CREATE TABLE `db_admin` (
  `admin_id` int(100) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `db_admin`
--

INSERT INTO `db_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Ferdiansyach', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+6285711231622', 'Bukawarung1699@gmail.com', 'Jl.Merak, Meruyung, Kec. Limo, Kota Depok, Jawa Barat 16514');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Laptop'),
(2, 'HandPhone'),
(3, 'Headset');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(10, 1, 'Asus ProArt', 12000000, '<p><strong>ASUS ProArt - Solusi Profesional untuk Kreativitas Tanpa Batas</strong></p>\r\n\r\n<p>ASUS ProArt menghadirkan solusi profesional lengkap yang dirancang dengan presisi dan keahlian demi memenuhi segala tuntutan industri kreatif. Produk-produk ASUS ProArt didukung oleh teknologi terkini dan desain yang elegan, memastikan performa optimal dan keakuratan warna yang luar biasa. Dengan rangkaian produk yang mencakup monitor, laptop, desktop, dan komponen lainnya, para profesional kreatif dapat mengandalkan ASUS ProArt untuk menjalankan proyek kreatif mereka dengan percaya diri.</p>\r\n\r\n<p><strong>Spesifikasi</strong></p>\r\n\r\n<p>**ASUS ProArt Monitor**</p>\r\n\r\n<p>Model: ASUS ProArt [Model Monitor]</p>\r\n\r\n<p>**Spesifikasi Utama:**<br />\r\n- Resolusi: [Contoh: 3840 x 2160 (4K UHD)]<br />\r\n- Ukuran Layar: [Contoh: 27 inci]<br />\r\n- Teknologi Layar: [Contoh: IPS / OLED]<br />\r\n- Tingkat Refresh Rate: [Contoh: 60Hz / 120Hz / 144Hz]<br />\r\n- Waktu Respon: [Contoh: 5ms]<br />\r\n- Teknologi Kalibrasi Warna: [Contoh: ASUS ProArt Calibration Technology]<br />\r\n- Ruang Warna: [Contoh: 100% sRGB / 98% DCI-P3]<br />\r\n- Kontras: [Contoh: 1000:1]<br />\r\n- Kecerahan: [Contoh: 350 cd/m&sup2;]<br />\r\n- Fitur HDR: [Contoh: HDR10 / Dolby Vision]<br />\r\n- Penghubung: [Contoh: HDMI 2.0, DisplayPort 1.4, USB Type-C, dll.]</p>\r\n\r\n<p>**Fitur Khusus:**<br />\r\n- ASUS ProArt Palette: Pengaturan warna yang presisi dan mudah disesuaikan.<br />\r\n- ASUS Eye Care: Teknologi perlindungan mata untuk mengurangi kelelahan mata.<br />\r\n- Bezel Tipis: Desain bezel tipis untuk pengalaman multi-monitor yang mulus.<br />\r\n- Stand Ergonomis: Stand yang dapat disesuaikan untuk kenyamanan penggunaan.<br />\r\n- ASUS SplendidPlus&trade; Video Intelligence Technology: Mengoptimalkan kualitas gambar dan video.<br />\r\n- ASUS QuickFit Virtual Scale: Memungkinkan tampilan &quot;on-screen&quot; untuk pengukuran akurat.<br />\r\n- ASUS Ultra-Low Blue Light Technology: Mengurangi tingkat cahaya biru untuk mengurangi ketegangan mata.</p>\r\n\r\n<p>**Dimensi dan Berat:**<br />\r\n- Dimensi Tanpa Stand: [Contoh: 612 x 362 x 40 mm]<br />\r\n- Dimensi Dengan Stand: [Contoh: 612 x 506 x 226 mm]<br />\r\n- Berat Tanpa Stand: [Contoh: 5,2 kg]<br />\r\n- Berat Dengan Stand: [Contoh: 7,8 kg]</p>\r\n\r\n<p>**Sistem Kompatibilitas:**<br />\r\n- Kompatibilitas OS: [Contoh: Windows 10, macOS, dll.]<br />\r\n- Kompatibilitas Sinyal Input: [Contoh: HDMI, DisplayPort, USB Type-C]</p>\r\n\r\n<p>**Lainnya:**<br />\r\n- Sertifikasi: [Contoh: TUV Rheinland Low Blue Light Certification]<br />\r\n- Garansi: [Contoh: 3 tahun]<br />\r\n- Aksesori: [Contoh: Kabel HDMI, kabel DisplayPort, kabel USB Type-C, dll.]</p>\r\n', 'produk1689917234.png', 1, '2023-07-22 08:19:31'),
(11, 1, 'Lenovo X3', 8000000, '<p>Lenovo X3 adalah laptop yang inovatif dan canggih yang dirancang untuk memberdayakan para profesional dan pengguna bisnis. Laptop ini menggabungkan performa tinggi, portabilitas yang luar biasa, dan fitur-fitur keamanan yang canggih untuk memastikan pengalaman komputasi yang unggul. Dengan desain yang elegan dan konstruksi yang kokoh, Lenovo X3 menjadi mitra ideal untuk memenuhi berbagai tuntutan kerja sehari-hari. Dengan Lenovo X3, Anda dapat bekerja dengan efisiensi tinggi di mana pun Anda berada, menghadirkan produktivitas maksimal dalam setiap tugas.</p>\r\n\r\n<p>**Spesifikasi Lenovo X3:**</p>\r\n\r\n<p>**Performa:**<br />\r\n- Prosesor: [Contoh: Intel Core i7-11800H / AMD Ryzen 9 5900HX]<br />\r\n- Kartu Grafis: [Contoh: NVIDIA GeForce RTX 3070 / AMD Radeon RX 6800M]<br />\r\n- Memori RAM: [Contoh: 16GB / 32GB DDR4]<br />\r\n- Penyimpanan: [Contoh: 512GB SSD / 1TB NVMe SSD]<br />\r\n- Sistem Operasi: [Contoh: Windows 10 Pro / Windows 11]</p>\r\n\r\n<p>**Desain dan Layar:**<br />\r\n- Ukuran Layar: [Contoh: 15,6 inci]<br />\r\n- Resolusi Layar: [Contoh: 1920 x 1080 (Full HD) / 3840 x 2160 (4K UHD)]<br />\r\n- Teknologi Layar: [Contoh: IPS / OLED]<br />\r\n- Desain Bezel: [Contoh: Bezel tipis]<br />\r\n- Fitur Layar Sentuh: [Contoh: Tidak]<br />\r\n- Dimensi: [Contoh: 356,6 x 253,4 x 18,9 mm]<br />\r\n- Berat: [Contoh: 1,9 kg]</p>\r\n\r\n<p>**Keamanan dan Privasi:**<br />\r\n- Fingerprint Reader: [Contoh: Ya]<br />\r\n- Webcam: [Contoh: Kamera HD 720p dengan Privasi Shutter]<br />\r\n- TPM (Trusted Platform Module): [Contoh: Ya]</p>\r\n\r\n<p>**Koneksi dan Port:**<br />\r\n- Wi-Fi: [Contoh: Wi-Fi 6E]<br />\r\n- Bluetooth: [Contoh: Bluetooth 5.2]<br />\r\n- Port USB: [Contoh: 2x USB 3.2 Gen 2, 2x USB Type-C (Thunderbolt 4)]<br />\r\n- Port Lainnya: [Contoh: HDMI, Audio Jack]</p>\r\n\r\n<p>**Fitur Tambahan:**<br />\r\n- Backlit Keyboard: [Contoh: Ya]<br />\r\n- Baterai: [Contoh: Daya tahan baterai hingga 10 jam]<br />\r\n- Audio: [Contoh: Dolby Atmos Speaker System]<br />\r\n- Dukungan Pen Stylus: [Contoh: Ya, dengan dukungan Lenovo Active Pen]</p>\r\n\r\n<p>**Keandalan dan Dukungan:**<br />\r\n- Garansi: [Contoh: Garansi 1 tahun]<br />\r\n- Layanan Dukungan: [Contoh: 24/7 Customer Support]</p>\r\n\r\n<p>Lenovo X3 merupakan laptop yang andal, tangguh, dan memenuhi standar keamanan tinggi, memberikan kinerja yang mengesankan untuk mendukung berbagai pekerjaan dan aktivitas produktif. Laptop ini juga cocok untuk hiburan dan multimedia, memastikan pengalaman visual yang menakjubkan dan audio yang mengagumkan. Dengan dukungan pen stylus opsional, Lenovo X3 juga ideal untuk tugas kreatif dan kolaboratif. Dengan menghadirkan kombinasi kekuatan, keamanan, dan portabilitas, Lenovo X3 menjadi pilihan sempurna untuk para profesional yang selalu bergerak dan berprestasi.</p>\r\n', 'produk1689924355.png', 1, '2023-07-21 07:25:55'),
(12, 1, 'ASUS ROG Zephyrus', 20000000, '<p>ASUS ROG Zephyrus adalah seri laptop gaming eksklusif dari ASUS Republic of Gamers (ROG) yang menggabungkan performa luar biasa dengan desain yang ramping dan portabilitas tinggi. Laptop ini dibuat khusus untuk memenuhi kebutuhan para gamer hardcore dan pencinta kinerja tinggi yang mencari pengalaman bermain game yang mengagumkan. Menggabungkan teknologi terbaru dan inovasi, ASUS ROG Zephyrus menawarkan kombinasi sempurna antara kekuatan dan keindahan, menjadikan laptop ini sebagai pilihan utama bagi para gamer yang menginginkan kemampuan gaming tanpa kompromi dalam paket yang elegan.</p>\r\n\r\n<p>**Spesifikasi ASUS ROG Zephyrus:**</p>\r\n\r\n<p>**Performa:**<br />\r\n- Prosesor: [Contoh: Intel Core i9-11900H / AMD Ryzen 9 5900HX]<br />\r\n- Kartu Grafis: [Contoh: NVIDIA GeForce RTX 3080 / AMD Radeon RX 6800M]<br />\r\n- Memori RAM: [Contoh: 16GB / 32GB DDR4]<br />\r\n- Penyimpanan: [Contoh: 1TB NVMe SSD / 2TB PCIe SSD]<br />\r\n- Sistem Operasi: [Contoh: Windows 10 Pro / Windows 11]</p>\r\n\r\n<p>**Desain dan Layar:**<br />\r\n- Ukuran Layar: [Contoh: 15,6 inci / 17,3 inci]<br />\r\n- Resolusi Layar: [Contoh: 1920 x 1080 (Full HD) / 2560 x 1440 (QHD)]<br />\r\n- Teknologi Layar: [Contoh: IPS / NanoEdge]<br />\r\n- Tingkat Refresh Rate: [Contoh: 240Hz / 300Hz]<br />\r\n- Waktu Respon: [Contoh: 3ms / 1ms]<br />\r\n- Desain Bezel: [Contoh: Bezel tipis]<br />\r\n- Dimensi: [Contoh: 355 x 243 x 19,9 mm]<br />\r\n- Berat: [Contoh: 2,1 kg]</p>\r\n\r\n<p>**Keamanan dan Privasi:**<br />\r\n- Fingerprint Reader: [Contoh: Ya]<br />\r\n- Webcam: [Contoh: Kamera HD 720p]</p>\r\n\r\n<p>**Koneksi dan Port:**<br />\r\n- Wi-Fi: [Contoh: Wi-Fi 6E]<br />\r\n- Bluetooth: [Contoh: Bluetooth 5.2]<br />\r\n- Port USB: [Contoh: 3x USB 3.2 Gen 2 Type-A, 2x USB Type-C (Thunderbolt 4)]<br />\r\n- Port Lainnya: [Contoh: HDMI, Audio Jack, RJ-45]</p>\r\n\r\n<p>**Fitur Gaming dan Audio:**<br />\r\n- ROG AURA Sync: Pencahayaan RGB yang dapat disesuaikan.<br />\r\n- ROG Overstroke Keyboard: Keyboard gaming dengan waktu respon yang cepat.<br />\r\n- ROG Armoury Crate: Mengontrol pengaturan laptop dan perangkat gaming dari satu aplikasi.<br />\r\n- ROG Audio: Teknologi audio yang menghadirkan suara mengagumkan dalam permainan.<br />\r\n- Smart AMP: Memperkuat suara untuk headphone dan speaker eksternal.</p>\r\n\r\n<p>**Baterai dan Daya Tahan:**<br />\r\n- Kapasitas Baterai: [Contoh: 90Wh]<br />\r\n- Daya Tahan Baterai: [Contoh: Hingga 8 jam (tergantung penggunaan)]</p>\r\n\r\n<p>**Keandalan dan Dukungan:**<br />\r\n- Garansi: [Contoh: Garansi 1 tahun]<br />\r\n- Layanan Dukungan: [Contoh: 24/7 Customer Support]</p>\r\n\r\n<p>ASUS ROG Zephyrus merupakan laptop gaming premium yang menghadirkan kinerja luar biasa, visual yang memukau, dan audio yang mendalam, memberikan pengalaman gaming yang tak tertandingi. Dengan desain yang ramping dan berat yang ringan, laptop ini mudah dibawa kemana-mana untuk bermain game atau bekerja. Dilengkapi dengan fitur-fitur gaming dan teknologi keamanan terkini, ASUS ROG Zephyrus menjaga para gamer tetap berada di puncak performa mereka dalam setiap sesi bermain. Dengan ASUS ROG Zephyrus, Anda akan mengalami kekuatan gaming sejati dalam balutan laptop yang elegan dan modern.</p>\r\n', 'produk1689917537.jpg', 1, '2023-07-22 08:19:23'),
(13, 2, 'Samsung S1 G', 7000000, '<p>Samsung S1 G adalah smartphone futuristik dari Samsung yang menggabungkan teknologi canggih dengan desain yang elegan. Dirancang untuk memenuhi kebutuhan pengguna masa depan, Samsung S1 G membawa pengalaman smartphone ke level yang baru dengan fitur-fitur yang revolusioner. Dari layar melengkung hingga kecerdasan buatan yang canggih, Samsung S1 G adalah perangkat yang mengubah cara Anda berinteraksi dengan dunia.</p>\r\n\r\n<p>**Spesifikasi Samsung S1 G:**</p>\r\n\r\n<p>**Desain dan Layar:**<br />\r\n- Bahan: Kombinasi metal dan kaca dengan finishing matte.<br />\r\n- Layar: Layar Super AMOLED melengkung 6,5 inci dengan resolusi Quad HD+ (3200 x 1440 piksel).<br />\r\n- Teknologi Layar: Dynamic Infinity Display dengan refresh rate adaptif hingga 120Hz.<br />\r\n- Sensor Sidik Jari: Sensor sidik jari terintegrasi di bawah layar.</p>\r\n\r\n<p>**Performa dan Baterai:**<br />\r\n- Prosesor: Samsung Exynos 990+ (fiksi) dengan AI Neural Processing Unit (NPU).<br />\r\n- Kartu Grafis: Mali-G77 MP12 (fiksi) untuk performa grafis yang cepat.<br />\r\n- RAM: 8GB / 12GB LPDDR5 (fiksi) untuk multitasking lancar.<br />\r\n- Penyimpanan: Pilihan kapasitas 128GB / 256GB / 512GB / 1TB (fiksi) dengan dukungan kartu microSD hingga 1TB.<br />\r\n- Baterai: Baterai Li-Po 5.000 mAh (fiksi) dengan dukungan pengisian cepat dan pengisian nirkabel.</p>\r\n\r\n<p>**Kamera:**<br />\r\n- Kamera Utama: Sistem Quad Camera 108MP (fiksi) dengan OIS dan Phase Detection Autofocus.<br />\r\n- Kamera Selfie: Kamera 40MP (fiksi) dengan teknologi Beauty AI dan Mode Potret.<br />\r\n- Fitur Kamera: Super Steady Video, Mode Malam AI, Perekaman Video 8K.</p>\r\n\r\n<p>**Keamanan dan Privasi:**<br />\r\n- Pengenalan Wajah: Teknologi Pengenalan Wajah 3D dengan kecepatan tinggi.<br />\r\n- Keamanan Lainnya: Sertifikasi IP68 tahan air dan debu, Knox Security Platform.</p>\r\n\r\n<p>**Konektivitas dan OS:**<br />\r\n- OS: Samsung One UI 4.5 (fiksi) berbasis Android 12.<br />\r\n- 5G: Dukungan jaringan 5G untuk kecepatan internet super cepat.<br />\r\n- Wi-Fi: Wi-Fi 6E untuk konektivitas yang stabil.<br />\r\n- NFC: Dukungan fitur NFC untuk pembayaran dan transfer data.</p>\r\n\r\n<p>**Fitur Lainnya:**<br />\r\n- Pengisian Daya Balik: Dukungan pengisian daya balik nirkabel untuk perangkat lain.<br />\r\n- Fitur AR: Dukungan fitur Realitas Augmented untuk pengalaman yang menakjubkan.<br />\r\n- Bixby 3.0: Asisten virtual dengan kemampuan kecerdasan buatan yang canggih.<br />\r\n- Samsung DeX: Mengubah smartphone menjadi desktop dengan mudah.</p>\r\n\r\n<p>Samsung S1 G adalah smartphone masa depan yang menghadirkan teknologi canggih dalam desain yang menawan. Smartphone ini membawa Anda ke dunia baru di mana segalanya lebih cepat, lebih cerdas, dan lebih menyenangkan. Samsung S1 G adalah perangkat andalan yang menyempurnakan kehidupan digital Anda dengan inovasi terbaru dari Samsung.</p>\r\n', 'produk1689924589.jpg', 1, '2023-07-21 07:29:49'),
(14, 2, 'Xiaomi 10', 6000000, '<p>Xiaomi 10 adalah smartphone unggulan dari Xiaomi yang menggabungkan desain elegan dengan teknologi mutakhir. Dirancang untuk memenuhi kebutuhan para pengguna yang menginginkan kinerja tinggi dan pengalaman fotografi yang luar biasa, Xiaomi 10 adalah perangkat yang memberikan kombinasi sempurna antara kecantikan dan kekuatan. Dengan layar yang memukau, sistem kamera canggih, dan performa luar biasa, Xiaomi 10 adalah pilihan ideal untuk mereka yang menginginkan smartphone premium dengan harga terjangkau.</p>\r\n\r\n<p>**Spesifikasi Xiaomi 10:**</p>\r\n\r\n<p>**Desain dan Layar:**<br />\r\n- Bahan: Frame logam dan bodi kaca dengan finishing glossy.<br />\r\n- Layar: Layar AMOLED 6,67 inci dengan resolusi Full HD+ (2400 x 1080 piksel).<br />\r\n- Teknologi Layar: TrueColor AMOLED dengan refresh rate adaptif hingga 90Hz.<br />\r\n- Sensor Sidik Jari: Sensor sidik jari optik di bawah layar.</p>\r\n\r\n<p>**Performa dan Baterai:**<br />\r\n- Prosesor: Qualcomm Snapdragon 865 (fiksi) dengan dukungan 5G.<br />\r\n- Kartu Grafis: Adreno 650 (fiksi) untuk performa grafis yang kencang.<br />\r\n- RAM: 8GB / 12GB LPDDR5 (fiksi) untuk kinerja multitasking yang lancar.<br />\r\n- Penyimpanan: Pilihan kapasitas 128GB / 256GB UFS 3.0 (fiksi) tanpa dukungan kartu microSD.<br />\r\n- Baterai: Baterai Li-Po 4.500 mAh (fiksi) dengan dukungan pengisian cepat dan pengisian nirkabel.</p>\r\n\r\n<p>**Kamera:**<br />\r\n- Kamera Utama: Sistem Quad Camera 108MP (fiksi) dengan OIS dan PDAF.<br />\r\n- Kamera Ultrawide: Lensa 16MP (fiksi) dengan sudut pandang 123 derajat.<br />\r\n- Kamera Makro: Lensa 5MP (fiksi) untuk foto close-up berkualitas tinggi.<br />\r\n- Kamera Depth: Sensor 2MP (fiksi) untuk efek bokeh yang menakjubkan.<br />\r\n- Kamera Selfie: Kamera 20MP (fiksi) dengan Mode Potret AI.<br />\r\n- Fitur Kamera: Perekaman Video 4K, Mode Malam, Super Slow-Motion.</p>\r\n\r\n<p>**Keamanan dan Privasi:**<br />\r\n- Pengenalan Wajah: Teknologi Pengenalan Wajah dengan kecepatan tinggi.<br />\r\n- Keamanan Lainnya: Sensor cahaya ambient dan deteksi gerakan, proteksi privasi.</p>\r\n\r\n<p>**Konektivitas dan OS:**<br />\r\n- OS: MIUI 12 (fiksi) berbasis Android 11.<br />\r\n- 5G: Dukungan jaringan 5G untuk kecepatan internet super cepat.<br />\r\n- Wi-Fi: Wi-Fi 6 untuk konektivitas yang stabil.<br />\r\n- NFC: Dukungan fitur NFC untuk pembayaran dan transfer data.</p>\r\n\r\n<p>**Fitur Lainnya:**<br />\r\n- Pengisian Daya Balik: Dukungan pengisian daya balik nirkabel untuk perangkat lain.<br />\r\n- Fitur IR Blaster: Kontrol perangkat elektronik dengan fitur IR Blaster.<br />\r\n- Xiaomi AI Assistant: Asisten virtual dengan dukungan kecerdasan buatan.</p>\r\n\r\n<p>Xiaomi 10 adalah smartphone yang menawarkan kombinasi yang luar biasa antara kinerja tinggi dan fitur-fitur kamera canggih, serta membawa Anda ke dalam dunia hiburan yang mendalam. Dengan harga yang terjangkau, Xiaomi 10 adalah pilihan tepat bagi mereka yang menginginkan smartphone berkualitas tinggi dengan fitur-fitur modern. Xiaomi 10 membawa Anda ke level selanjutnya dalam menghadapi tuntutan gaya hidup digital yang serba cepat dan inovatif.</p>\r\n', 'produk1689918250.jpg', 1, '2023-07-22 08:19:15'),
(15, 2, 'Xiaomi 5G', 4000000, '<p>Xiaomi 5G adalah smartphone terbaru dari Xiaomi yang telah dilengkapi dengan teknologi konektivitas 5G, memungkinkan Anda untuk menikmati kecepatan internet super cepat dan kinerja yang luar biasa. Dengan desain yang elegan dan layar yang memukau, Xiaomi 5G menawarkan pengalaman visual yang mengagumkan. Dibekali dengan sistem kamera canggih dan fitur-fitur inovatif, smartphone ini adalah pilihan ideal bagi para pengguna yang menginginkan perangkat canggih yang mampu menangani tugas sehari-hari dan hiburan dalam sekejap.</p>\r\n\r\n<p>**Spesifikasi Xiaomi 5G:**</p>\r\n\r\n<p>**Desain dan Layar:**<br />\r\n- Bahan: Frame logam dan bodi kaca dengan finishing matte.<br />\r\n- Layar: Layar AMOLED 6,4 inci dengan resolusi Full HD+ (2400 x 1080 piksel).<br />\r\n- Teknologi Layar: Super AMOLED dengan refresh rate adaptif hingga 90Hz.<br />\r\n- Sensor Sidik Jari: Sensor sidik jari optik di bawah layar.</p>\r\n\r\n<p>**Performa dan Baterai:**<br />\r\n- Prosesor: Qualcomm Snapdragon 780G (fiksi) dengan dukungan 5G.<br />\r\n- Kartu Grafis: Adreno 642 (fiksi) untuk performa grafis yang lancar.<br />\r\n- RAM: 6GB / 8GB LPDDR4X (fiksi) untuk kinerja multitasking yang lancar.<br />\r\n- Penyimpanan: Pilihan kapasitas 128GB / 256GB UFS 2.2 (fiksi) tanpa dukungan kartu microSD.<br />\r\n- Baterai: Baterai Li-Po 4.000 mAh (fiksi) dengan dukungan pengisian cepat.</p>\r\n\r\n<p>**Kamera:**<br />\r\n- Kamera Utama: Sistem Triple Camera 64MP (fiksi) dengan OIS dan PDAF.<br />\r\n- Kamera Ultrawide: Lensa 12MP (fiksi) dengan sudut pandang 120 derajat.<br />\r\n- Kamera Depth: Sensor 5MP (fiksi) untuk efek bokeh yang menakjubkan.<br />\r\n- Kamera Selfie: Kamera 32MP (fiksi) dengan Mode Potret AI.<br />\r\n- Fitur Kamera: Perekaman Video 4K, Mode Malam, AI Scene Detection.</p>\r\n\r\n<p>**Keamanan dan Privasi:**<br />\r\n- Pengenalan Wajah: Teknologi Pengenalan Wajah dengan kecepatan tinggi.<br />\r\n- Keamanan Lainnya: Sensor cahaya ambient dan deteksi gerakan, proteksi privasi.</p>\r\n\r\n<p>**Konektivitas dan OS:**<br />\r\n- OS: MIUI 12 (fiksi) berbasis Android 11.<br />\r\n- 5G: Dukungan jaringan 5G untuk kecepatan internet super cepat.<br />\r\n- Wi-Fi: Wi-Fi 6 untuk konektivitas yang stabil.<br />\r\n- NFC: Dukungan fitur NFC untuk pembayaran dan transfer data.</p>\r\n\r\n<p>**Fitur Lainnya:**<br />\r\n- Pengisian Daya Balik: Dukungan pengisian daya balik nirkabel untuk perangkat lain.<br />\r\n- Xiaomi AI Assistant: Asisten virtual dengan dukungan kecerdasan buatan.<br />\r\n- Fitur IR Blaster: Kontrol perangkat elektronik dengan fitur IR Blaster.</p>\r\n\r\n<p>Xiaomi 5G membawa konektivitas 5G ke dalam genggaman Anda, memberikan pengalaman internet dan komunikasi yang lebih cepat daripada sebelumnya. Dengan harga yang terjangkau dan performa yang tangguh, Xiaomi 5G adalah smartphone yang sempurna untuk menghadapi kebutuhan gaya hidup digital yang semakin serba cepat dan inovatif. Dengan Xiaomi 5G, Anda dapat terhubung dengan dunia dengan lebih mudah dan membagikan momen spesial dengan kualitas gambar yang memukau.</p>\r\n', 'produk1689918403.png', 1, '2023-07-22 08:19:03'),
(16, 3, 'Rexus G34', 3000000, '<p>Rexus G34 adalah headset gaming canggih yang dirancang untuk memberikan pengalaman audio yang mendalam dan immersif dalam permainan. Dengan kualitas suara yang superior, kenyamanan maksimal, dan desain yang elegan, Rexus G34 menjadi teman setia para gamer yang berusaha untuk mendapatkan keunggulan di medan pertempuran virtual. Terlebih lagi, dilengkapi dengan fitur-fitur modern, headset ini adalah pilihan sempurna bagi mereka yang mencari headset gaming berkualitas tinggi dengan harga yang terjangkau.</p>\r\n\r\n<p>**Spesifikasi Rexus G34:**</p>\r\n\r\n<p>**Desain:**<br />\r\n- Material: Headband yang kuat dan earcup yang nyaman dengan busa tebal.<br />\r\n- Desain: Closed-back dengan fitur noise-canceling untuk isolasi suara yang lebih baik.<br />\r\n- Warna: Hitam matte dengan sentuhan warna LED RGB pada earcup.</p>\r\n\r\n<p>**Kualitas Audio:**<br />\r\n- Driver: Driver audio 50mm (fiksi) untuk kualitas suara yang jernih dan mengagumkan.<br />\r\n- Suara Surround: Teknologi virtual surround (fiksi) untuk pengalaman gaming yang lebih immersif.<br />\r\n- Mikrofon: Mikrofon fleksibel dan sensitif dengan fitur noise-canceling untuk komunikasi yang jelas.</p>\r\n\r\n<p>**Kenyamanan:**<br />\r\n- Bantalan Telinga: Bantalan telinga berlapis busa lembut untuk kenyamanan maksimal selama berjam-jam bermain.<br />\r\n- Penyesuaian: Headband yang dapat disesuaikan untuk ukuran kepala yang berbeda.</p>\r\n\r\n<p>**Konektivitas:**<br />\r\n- Konektor: Konektor jack 3,5 mm untuk koneksi ke berbagai perangkat gaming.<br />\r\n- Kompatibilitas: Kompatibel dengan PC, laptop, konsol, smartphone, dan perangkat lainnya.</p>\r\n\r\n<p>**Fitur Lainnya:**<br />\r\n- Kontrol Suara: Tombol volume dan tombol mute mikrofon pada earcup untuk pengaturan suara yang mudah.<br />\r\n- Kabel Tangle-Free: Kabel yang dilapisi nilon untuk mencegah kusut dan memperpanjang umur produk.</p>\r\n\r\n<p>Rexus G34 memberikan keunggulan audio yang memberikan keuntungan tambahan di medan permainan, sehingga Anda dapat mendengar langkah musuh, suara senjata, dan efek game lainnya dengan jelas dan detail. Dengan kenyamanan dan desain yang mumpuni, Anda dapat bermain dengan fokus tanpa gangguan. Rexus G34 adalah headset gaming yang tangguh dan andal, siap membawa pengalaman gaming Anda ke level selanjutnya.</p>\r\n', 'produk1689924661.png', 1, '2023-07-21 07:31:01'),
(17, 3, 'Logitech G377 Wireless', 7000000, '<p>Logitech G377 Wireless adalah headset gaming nirkabel terbaru dari Logitech yang memberikan pengalaman audio tanpa kabel yang bebas hambatan. Dirancang untuk memenuhi kebutuhan para gamer hardcore, headset ini menyajikan kualitas suara yang superior, kenyamanan maksimal, dan fitur-fitur inovatif yang menjadikan setiap sesi gaming lebih menarik dan immersif. Dengan teknologi nirkabel terbaru dan desain ergonomis, Logitech G377 Wireless memberikan keunggulan dalam kinerja gaming Anda.</p>\r\n\r\n<p>**Spesifikasi Logitech G377 Wireless:**</p>\r\n\r\n<p>**Desain:**<br />\r\n- Material: Headband yang kokoh dan earcup dengan busa pelapis nyaman.<br />\r\n- Desain: Closed-back dengan fitur noise-canceling untuk isolasi suara yang lebih baik.<br />\r\n- Warna: Hitam matte dengan sentuhan aksen LED RGB pada earcup.</p>\r\n\r\n<p>**Kualitas Audio:**<br />\r\n- Driver: Driver audio 50mm (fiksi) untuk suara yang jernih dan mendalam.<br />\r\n- Teknologi Surround: Teknologi surround virtual (fiksi) untuk pengalaman gaming yang lebih immersif.<br />\r\n- Mikrofon: Mikrofon fleksibel dan sensitif dengan fitur noise-canceling untuk komunikasi yang jelas.</p>\r\n\r\n<p>**Kenyamanan:**<br />\r\n- Bantalan Telinga: Bantalan telinga berlapis busa lembut untuk kenyamanan maksimal selama berjam-jam bermain.<br />\r\n- Penyesuaian: Headband yang dapat disesuaikan untuk ukuran kepala yang berbeda.</p>\r\n\r\n<p>**Konektivitas:**<br />\r\n- Konektivitas Nirkabel: Koneksi nirkabel 2.4GHz dengan jangkauan yang luas dan stabil.<br />\r\n- Baterai: Baterai tahan lama dengan dukungan pengisian cepat.</p>\r\n\r\n<p>**Fitur Lainnya:**<br />\r\n- Kontrol Suara: Tombol volume dan tombol mute mikrofon pada earcup untuk pengaturan suara yang mudah.<br />\r\n- Mikrofon Flip-to-Mute: Mengalihkan mikrofon ke posisi mute dengan mudah dengan mengangkatnya.</p>\r\n\r\n<p>Logitech G377 Wireless membebaskan Anda dari kabel yang mengganggu dan memberikan mobilitas penuh selama bermain game. Dengan kualitas suara yang unggul, mikrofon yang jelas, dan desain yang nyaman, headset ini memberikan pengalaman gaming yang tak tertandingi. Nikmati kebebasan bergerak tanpa kabel dengan Logitech G377 Wireless dan hadapi pertempuran dengan keunggulan audio.</p>\r\n', 'produk1689918754.png', 1, '2023-07-22 08:18:56'),
(18, 3, 'Rexus X23', 4000000, '<p>Rexus X23 adalah keyboard gaming yang inovatif dan kuat, dirancang khusus untuk memenuhi kebutuhan para gamer hardcore dan pencinta kinerja tinggi. Dengan desain yang ergonomis, kualitas bahan yang tahan lama, dan fitur-fitur canggih, Rexus X23 memberikan performa maksimal dan kenyamanan saat bermain game. Keyboard ini membawa pengalaman gaming Anda ke level berikutnya dengan respon cepat, kualitas ketahanan tinggi, dan pencahayaan RGB yang menarik.</p>\r\n\r\n<p>**Spesifikasi Rexus X23:**</p>\r\n\r\n<p>**Desain dan Bahan:**<br />\r\n- Material: Body keyboard terbuat dari bahan logam dan ABS dengan lapisan permukaan matte.<br />\r\n- Desain: Full-sized keyboard dengan layout 104 tombol.<br />\r\n- Pencahayaan RGB: Lampu RGB pada setiap tombol untuk tampilan pencahayaan yang menarik dan dapat disesuaikan.</p>\r\n\r\n<p>**Performa dan Fungsionalitas:**<br />\r\n- Anti-Ghosting: Fitur Anti-Ghosting hingga N-Key Rollover (fiksi) untuk mengetik dan bermain game dengan lebih akurat.<br />\r\n- Multimedia Keys: Tombol multimedia terpisah untuk mengontrol volume dan media pemutaran.</p>\r\n\r\n<p>**Kenyamanan dan Ergonomis:**<br />\r\n- Tilt Legs: Kaki penyangga dengan sudut kemiringan untuk posisi pengetikan yang lebih ergonomis.<br />\r\n- Wrist Rest: Disertai dengan wrist rest (fiksi) untuk kenyamanan maksimal selama bermain game dalam jangka waktu lama.</p>\r\n\r\n<p>**Koneksi dan Kompatibilitas:**<br />\r\n- Koneksi: Kabel USB dengan panjang yang mencukupi untuk kenyamanan pengguna.<br />\r\n- Kompatibilitas: Kompatibel dengan PC dan laptop dengan sistem operasi Windows.</p>\r\n\r\n<p>Rexus X23 adalah partner gaming yang kuat dan handal bagi para pemain yang menginginkan keyboard mekanis dengan fitur dan performa premium. Dengan desain yang kokoh dan pencahayaan RGB yang menawan, Rexus X23 akan mempercantik setup gaming Anda dan memberikan pengalaman mengetik dan bermain game yang luar biasa. Hadapi pertempuran virtual dengan kenyamanan dan kepercayaan diri, karena Rexus X23 siap mendukung Anda dalam menjalani petualangan gaming yang tak terlupakan.</p>\r\n', 'produk1689924488.png', 1, '2023-07-22 09:48:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_admin`
--
ALTER TABLE `db_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `db_admin`
--
ALTER TABLE `db_admin`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
