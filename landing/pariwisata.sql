-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09 Des 2019 pada 14.37
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `username`, `password`, `email`, `level`) VALUES
(1, 'admin', 'admin123', 'admin@gmail.com', 'admin'),
(2, 'aaaa', '12345678', 'okee@gmail.com', ''),
(3, 'rofi', '12345678', 'rofistylz807@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(10) NOT NULL,
  `nama_event` varchar(255) NOT NULL,
  `tanggal_event` varchar(255) NOT NULL,
  `jam_event` varchar(255) NOT NULL,
  `tentang_event` varchar(2000) NOT NULL,
  `gambar_event` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id_event`, `nama_event`, `tanggal_event`, `jam_event`, `tentang_event`, `gambar_event`) VALUES
(9, 'Peringatan Peristiwa Merah Putih ( Sanga - Sanga )', '26 Januari - 31 Januari 2019', 'Januari ', 'Peristiwa Merah Putih Sanga Sanga merupakan perjuangan berskala nasional yang sepantasnya menjadi catatan sejarah penting di antara sejarah nasional lainnya. Karenanya, peringatan Peristiwa Merah Putih Sanga Sanga menjadi momentum pemicu semangat berkorban, semangat patriotisme dan semangat membangun.', '23102019182644c0a3db8b-afdf-4f01-9c4c-09a2cb35ebc7_169.jpeg'),
(10, 'Festival Jembayan Kampung Tuha III', '24 Maret - 01 April 2019', 'Maret - April', 'Festival Jembayan Kampung Tuha III di Kecamatan Loa Kulu, Kutai Kartanegara kembali di gelar, kegiatan  berlangsung selama seminggu, dibuka pada tanggal 24 Maret dan akan ditutup pada tanggal 01 April 2019, festival ini terjadwal dalam kalender event Dinas Pariwisata Kabupaten Kutai Kartanegara, kembali di gelar berbagai macam kegiatan di dalamnya, diantaranya pada tanggal 21 maret doa bersama ( haul akbar ), ritual tepung tawar, karnaval.', '23102019183925Jembayan Kampong Tuha.jpg'),
(11, 'Muara Badak Festival ', '8 Maret - 17 Maret 2019', 'Maret ', 'Muara Badak (MB) Festival sudah menjadi bagian dari Kalender Event Daerah Kutai Kartanegara (Kukar), hal itu dikatakan Bupati Kukar Edi Damansyah pada saat membuka MB Festival 2019 di Halaman Sepak Bola Kecamatan Muara Badak, Edi mengatakan, setiap event dalam kalender event daerah menjadi representasi dan potret Kukar dengan berbagai keunikan dan keragaman wilayahnya. Demikian pula dengan MB Festival, yang secara khusus menghadirkan Usaha Kecil dan Menengah (UKM).', '23102019183941mbfest 33.jpg'),
(12, 'Hari Tanpa Bayangan ', '23 Maret 2019', 'Maret ', 'Peringatan Hari Tanpa Bayangan yang telah terlaksana dan terjadwal di kalender event Dinas Pariwisata Kab Kutai Kartanegara, Acara ini juga diikuti dan di hadiri Kabid dan Kasi Dinas Pariwisata Kab Kutai Kartanegara, beserta ratusan warga dan Saka Pariwisata yang telah melaksanakan kegiatan di Tugu Equator Marang Kayu.', '2310201918435353123449_268090170768035_6613967378581589723_n.jpg'),
(13, 'Festival Budaya Maluhu', '31 Maret - 27 April 2019', 'Maret - April', 'Kegiatan yang biasa dilaksanakan sejak tahun 1970 itu menampilkan kesenian Kuda Lumping, Campur Sari, Reog Ponorogo, Tari Kreasi Anak. Pada malam harinya, Resepsi dimeriahkan 49 Tumpeng dan tablig Akbar serta Pawai Budaya. Selain itu juga dilaksanakan turnamen bola volly, Futsal, bulutangkis, jalan santai, Burung Berkicau dan Kontes dangdut serta Bazar Murah.', '24102019012939fstival bud maluhu1.jpg'),
(14, 'Upacara Adat Mencaq Undat', '3 Mei - 5 Mei 2019', 'Mei', ' Kemeriahan pembukaan Festival Upacara Adat Mecaq Undat yang berlangsung di Tabang Kab Kutai Kartanegara. Seluruh Masyarakat tumpah ruah hadir saat upacara adat tersebut, dan para peserta yang hadirpun seragam masing â€“ masing mengenakan pakaian adat dayaknya lengkap beserta aksesorisnya. Keramahan seluruh warga masyarakat menyambut para pengunjung menjadi salah satu ciri khas masyarakat Dayak Kenyah Lepok Tukung di Desa Tukung Ritan dan Ritan Baru.', '241020190150262. mencaq undat.png'),
(15, 'Festival Kota Raja', '6 Juli - 14 Juli 2019', 'Juli', 'Kemriahan Festival Kota Raja (FKR) VIII dan Tenggarong Fair III tahun 2019, resmi dibuka sisten I Pemerintahan dan Kesra Setkab Kukar Akhmad Taufik Hidayat, di lapangan parkir Stadion Rondong Demang Tenggarong, Sabtu (6/7) malam. Acara tersebut berlangsung dari tanggal 7-14 Juli mendatang dengan berbagai macam kegiatan diantaranya, Permainan Tradisional, Liga Dangdut, Pameran dan Bazar Art dan Craft,Komunitas Cover Dancer (KDC), Black Sweet Ent, Tenggarong Drummer Community (TDC).', '241020190153270989af1deefe221e49490b9921144b51.png'),
(16, 'Erau Adat Kutai & 7th International Folk Arts Festival ( Tenggarong ) ', '21 September - 29 September 2019', 'September', 'Kegiatan tersebut sebagai upaya melestarikan Tradisi Adat Kesultanan Kutai Kartanegara Ing Martadipura yang menjadi salah satu ikon kegiatan budaya di tanah air serta mengangkat Festival Budaya Daerah ke Kancah Internasional dengan melibatkan peserta Kesenian Rakyat dari Manca Negara. Erau berasal dari kata â€œEROHâ€ yang berarti ramai, riuh dan penuh sukacita. Semula upacara adat ini dilakukan untuk prosesi Tijak Tanah Aji Batara Agung Dewa Sakti (Raja Pertama Kerajaan Kutai)', '24102019020229BELIMBUR.jpg'),
(17, 'Festival Budaya Loa Kulu', '27 Desember - 30 Desember 2019', 'Desember ', 'Kegiatan ini beseprah tempe kali ini melibatkan, 15 desa yang ada di Kec Loa, masyarakat setempat dan khususnya pemberdayaan ekonomi dan usaha kecil di Loa Kulu,â€ ujarnya. Rangkaian  kegiatan festival ini mempertunjukkan seni budaya yang ada di Loa Kulu, yang juga menghadirkan beseprah tempe, karena trand khasnya prodak lokal Loa Kulu adalah tempe.  ', '24102019022040fks-2-jembayan-tegah-meriah.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id_event` int(10) NOT NULL,
  `nama_event` varchar(255) NOT NULL,
  `tanggal_event` varchar(255) NOT NULL,
  `jam_event` varchar(255) NOT NULL,
  `tentang_event` varchar(2000) NOT NULL,
  `gambar_event` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id_event`, `nama_event`, `tanggal_event`, `jam_event`, `tentang_event`, `gambar_event`) VALUES
(3, 'Merah Putih Event Commemoration (Sanga - Sanga)', 'January 26 - January 31 2019', 'January', 'The Red and White Incident of Sanga Sanga is a national-scale struggle which should be an important historical record among other national histories. Therefore, the commemoration of the Red and White Sanga Sanga event was a momentum that triggered a spirit of sacrifice, a spirit of patriotism and a spirit of development.', '25102019033235c0a3db8b-afdf-4f01-9c4c-09a2cb35ebc7_169.jpeg'),
(4, 'Festival Jembayan Kampung Tuha III', 'March 24 - April 1 2019', 'March - April', 'Jembayan Festival Kampung Tuha III in Loa Kulu Subdistrict, Kutai Kartanegara returned to the title, the activity lasted for a week, opened on March 24 and will be closed on April 1, 2019, the festival is scheduled in the calendar of the Kutai Kartanegara Regency Tourism Office, again in the title various kinds of activities in it, including on the 21st of March a joint prayer (haul akbar), a plain flour ritual, carnival.', '25102019032208Jembayan Kampong Tuha.jpg'),
(5, 'Muara Badak Festival', 'March 8 - March 17 2019', 'March', 'Muara Badak Festival has become part of the Kutai Kartanegara Regional Event Calendar, it was said by the Regent of Kukar Edi Damansyah when opening the MB Festival 2019 in the Soccer Page of Muara Badak District, Edi said, every event in the regional event calendar became a representation and portrait of Kukar with various the uniqueness and diversity of the region. Likewise, the MB Festival, which specifically presents Small and Medium Enterprises', '25102019033823mbfest 33.jpg'),
(6, 'A Day Without a Shadow', 'March 23 2019', 'March', 'Commemoration of the Shadowless Day that has been carried out and scheduled in the calendar of the Kutai Kartanegara District Tourism Office event, this event was also followed and attended by the Head of the Department of Tourism and the Kutai Kartanegara District Tourism Office, along with hundreds of residents and Saka Tourism who have carried out activities at the Marang Kayu Equator Monument.', '2510201903425853123449_268090170768035_6613967378581589723_n.jpg'),
(7, 'Festival Budaya Maluhu', 'March 31 - April 27 2019', 'March - April', 'The activity which is usually carried out since 1970 featured the arts of Kuda Lumping, Sari Sari, Reog Ponorogo, Children Creative Dance. In the evening, 49 reception was enlivened by Tumpeng and Tablig Akbar and the Cultural Parade. In addition, there were also volleyball tournaments, Futsal, badminton, leisurely walks, Twitter Birds and Dangdut Contests and Cheap Bazaars.', '25102019034559fstival bud maluhu1.jpg'),
(8, 'Upacara Adat Mecaq Undat', 'May 3 - May 5 2019', 'May', 'The excitement of the opening of the Mecaq Undat Traditional Ceremony Festival which took place in Tabang, Kutai Kartanegara District. The entire community spilled in at the traditional ceremony, and the participants who were present even had their uniforms dressed in their full Dayak traditional clothing and accessories. The hospitality of all residents welcomed the visitors to be one of the characteristics of the Dayak Kenyah Lepok Tukung community in the villages of Tukung Ritan and Ritan Baru.', '251020190347032. mencaq undat.png'),
(9, 'Festival Kota Raja', 'July 6 - July 14 2019', 'July', '\r\n462/5000\r\nThe festivities of the King VIII City Festival and Tenggarong Fair III in 2019, were officially opened by the Government and Kesra Setukab Office of Kukar Akhmad Taufik Hidayat, in the parking lot of Rondong Demang Tenggarong Stadium, Saturday night. The event took place from July 7-14 with various activities including, Traditional Games, Dangdut League, Art and Craft Exhibition and Bazaar, Cover Dancer Community, Black Sweet Ent, Tenggarong Drummer Community.', '251020190348310989af1deefe221e49490b9921144b51.png'),
(10, 'Erau Adat Kutai & 7th International Folk Arts Festival ( Tenggarong )', 'September 21 - September 29 2019', 'September', 'The activity is an effort to preserve the Indigenous Traditions of the Kutai Kartanegara Sultanate Ing Martadipura which has become an icon of cultural activities in the country and elevates the Regional Cultural Festival to the International arena by involving Folk Art participants from the Five Nations. Erau comes from the word \"EROH\" which means crowded, boisterous and full of joy. Initially this traditional ceremony was carried out for the procession of Tijak Tanah Aji Batara Agung Dewa Sakti (the First King of the Kutai Kingdom)', '25102019034931BELIMBUR.jpg'),
(11, 'Festival Budaya Loa Kulu', 'December 27 - December 30 2019', 'December', 'This activity will be tempe this time involving, 15 villages in the Loa district, the local community and especially economic empowerment and small businesses in Loa Kulu, \"he said. The series of activities of this festival showcases the existing cultural arts in Loa Kulu, which also presents beseprah tempe, because the typical tra of the local product of Loa Kulu is tempe.', '25102019035029fks-2-jembayan-tegah-meriah.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `komentar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `nama`, `komentar`) VALUES
(1, 'aaa', 'aaa'),
(2, 'rofi', 'okeee');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `kode_wahana` int(11) NOT NULL,
  `vote` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`id`, `kode_wahana`, `vote`) VALUES
(32, 1, 4.4),
(33, 1, 3.7),
(34, 1, 4.6),
(35, 1, 4.1),
(36, 1, 4.5),
(37, 1, 4.4),
(38, 1, 4.5),
(39, 1, 4.5),
(40, 1, 4.3),
(41, 1, 3.4),
(42, 1, 4.6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id_event` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
