-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2022 pada 15.36
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `combobox_level`
--
CREATE DATABASE IF NOT EXISTS `combobox_level` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `combobox_level`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id_kendaraan` int(11) NOT NULL,
  `nama_kendaraan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kendaraan`
--

INSERT INTO `kendaraan` (`id_kendaraan`, `nama_kendaraan`) VALUES
(1, 'mobil'),
(2, 'motor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk_kendaraan`
--

CREATE TABLE `merk_kendaraan` (
  `id_merk_kendaraan` int(11) NOT NULL,
  `merk_kendaraan` varchar(50) DEFAULT NULL,
  `id_kendaraan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `merk_kendaraan`
--

INSERT INTO `merk_kendaraan` (`id_merk_kendaraan`, `merk_kendaraan`, `id_kendaraan`) VALUES
(1, 'Yamaha', 2),
(2, 'Honda', 2),
(3, 'Honda', 1),
(4, 'Toyota', 1),
(5, 'Suzuki', 2),
(6, 'Nissan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_kendaraan`
--

CREATE TABLE `tipe_kendaraan` (
  `id_tipe_kendaraan` int(11) NOT NULL,
  `tipe_kendaraan` varchar(50) DEFAULT NULL,
  `id_merk_kendaraan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tipe_kendaraan`
--

INSERT INTO `tipe_kendaraan` (`id_tipe_kendaraan`, `tipe_kendaraan`, `id_merk_kendaraan`) VALUES
(1, 'Yamaha Nmax', 1),
(2, 'Yamaha Aerox', 1),
(3, 'Beat', 2),
(4, 'Vario', 2),
(5, 'Honda BR-V', 3),
(6, 'Honda Jazz', 3),
(7, 'Honda Mobilio', 3),
(8, 'Yamaha Aerox', 1),
(9, 'Toyota Kijang Inova', 4),
(10, 'Toyota Avanza', 4),
(11, 'Suzuki Nex', 5),
(12, 'Suzuki Satria', 5),
(13, 'Nissan X-Trail', 6),
(14, 'Nissan Livina', 6);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indeks untuk tabel `merk_kendaraan`
--
ALTER TABLE `merk_kendaraan`
  ADD PRIMARY KEY (`id_merk_kendaraan`),
  ADD KEY `id_kendaraan` (`id_kendaraan`);

--
-- Indeks untuk tabel `tipe_kendaraan`
--
ALTER TABLE `tipe_kendaraan`
  ADD PRIMARY KEY (`id_tipe_kendaraan`),
  ADD KEY `id_merk_kendaraan` (`id_merk_kendaraan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `merk_kendaraan`
--
ALTER TABLE `merk_kendaraan`
  MODIFY `id_merk_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tipe_kendaraan`
--
ALTER TABLE `tipe_kendaraan`
  MODIFY `id_tipe_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `merk_kendaraan`
--
ALTER TABLE `merk_kendaraan`
  ADD CONSTRAINT `merk_kendaraan_ibfk_1` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`);

--
-- Ketidakleluasaan untuk tabel `tipe_kendaraan`
--
ALTER TABLE `tipe_kendaraan`
  ADD CONSTRAINT `tipe_kendaraan_ibfk_1` FOREIGN KEY (`id_merk_kendaraan`) REFERENCES `merk_kendaraan` (`id_merk_kendaraan`),
  ADD CONSTRAINT `tipe_kendaraan_ibfk_2` FOREIGN KEY (`id_merk_kendaraan`) REFERENCES `merk_kendaraan` (`id_merk_kendaraan`);
--
-- Database: `db_mhs`
--
CREATE DATABASE IF NOT EXISTS `db_mhs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_mhs`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_agama`
--

CREATE TABLE `tb_agama` (
  `id_agama` int(11) NOT NULL,
  `agama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_agama`
--

INSERT INTO `tb_agama` (`id_agama`, `agama`) VALUES
(1, 'islam'),
(2, 'kristen'),
(3, 'katolik'),
(4, 'hindu'),
(5, 'budha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_daftar`
--

CREATE TABLE `tb_daftar` (
  `no_daftar` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nm_siswa` varchar(50) DEFAULT NULL,
  `jns_kelamin` varchar(50) DEFAULT NULL,
  `tmp_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `id_agama` int(11) NOT NULL,
  `alamat_lengkap` text DEFAULT NULL,
  `id_sekolah` int(11) NOT NULL,
  `no_tlp` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `level` varchar(12) DEFAULT NULL,
  `hasil` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_daftar`
--

INSERT INTO `tb_daftar` (`no_daftar`, `id_jurusan`, `nm_siswa`, `jns_kelamin`, `tmp_lahir`, `tgl_lahir`, `id_agama`, `alamat_lengkap`, `id_sekolah`, `no_tlp`, `email`, `password`, `level`, `hasil`) VALUES
(1, 1, 'sugeng', 'laki laki', 'Kuningan', '0000-00-00', 1, 'Dusun Kerajan Desa Jambu', 2, '087758231958', 'saputrasugeng60@gmail.com', 'sugeng', 'lulus', 'Selamat Anda Di');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `jurusan` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id_jurusan`, `jurusan`) VALUES
(1, 'Teknik Informatika'),
(2, 'Teknik Elektro'),
(3, 'Teknik Industri'),
(4, 'Teknik Sipil'),
(5, 'Teknik Mesin'),
(6, 'Matematika'),
(7, 'Fisika'),
(8, 'Kimia'),
(9, 'Biologi'),
(10, 'Akutansi'),
(11, 'Tata Boga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sekolah`
--

CREATE TABLE `tb_sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `jns_sekolah` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_sekolah`
--

INSERT INTO `tb_sekolah` (`id_sekolah`, `jns_sekolah`) VALUES
(1, 'SMA'),
(2, 'SMK'),
(3, 'MA'),
(4, 'Kejar Paket');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_agama`
--
ALTER TABLE `tb_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indeks untuk tabel `tb_daftar`
--
ALTER TABLE `tb_daftar`
  ADD PRIMARY KEY (`no_daftar`);

--
-- Indeks untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_daftar`
--
ALTER TABLE `tb_daftar`
  MODIFY `no_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `db_sekolah`
--
CREATE DATABASE IF NOT EXISTS `db_sekolah` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_sekolah`;
--
-- Database: `perti`
--
CREATE DATABASE IF NOT EXISTS `perti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `perti`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nama` varchar(50) DEFAULT NULL,
  `asal` varchar(50) DEFAULT NULL,
  `jnskel` enum('L','P') DEFAULT NULL,
  `tinggi` tinyint(3) UNSIGNED DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `nilai_uan` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nama`, `asal`, `jnskel`, `tinggi`, `jurusan`, `nilai_uan`) VALUES
('Riana Putria', 'Padang', 'P', 155, 'Kimia', '339.20'),
('Rudi Permana', 'Bandung', 'L', 163, 'Ilmu Komputer', '290.44'),
('Sari Citra Lestari', 'jakarta', 'P', 161, 'Manajemen', '310.60'),
('Rina Kumala Sari', 'jakarta', 'P', 158, 'Akutansi', '337.99'),
('james Situmorang', 'Medan', 'L', 168, 'Kedokteran Gigi', '341.10'),
('Sandri Fatmala', 'Bandung', 'P', 165, 'Ilmu Komputer', '322.91'),
('Husli Khairan', 'jakarta', 'L', 170, 'Akutansi', '288.55'),
('Christine Wijaya', 'Medan', 'P', 157, 'Manajemen', '371.24'),
('Ikhsan Prayoga', 'Jakarta', 'L', 172, 'Ilmu Komputer', '300.16'),
('Boby Permana', 'Medan', 'L', 161, 'Ilmu Komputer', '280.82');

-- --------------------------------------------------------

--
-- Struktur dari tabel `universitas`
--

CREATE TABLE `universitas` (
  `jurusan` varchar(20) DEFAULT NULL,
  `tgl_berdiri` date DEFAULT NULL,
  `nama_dekan` varchar(100) DEFAULT NULL,
  `jum_mhs` smallint(5) UNSIGNED DEFAULT NULL,
  `akr` enum('A','B','C','N/A') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `universitas`
--

INSERT INTO `universitas` (`jurusan`, `tgl_berdiri`, `nama_dekan`, `jum_mhs`, `akr`) VALUES
('Kimia', '1987-07-12', 'Prof. Mulyono, M.Sc.', 662, 'B'),
('Ilmu Komputer', '2003-02-23', 'Dr.Syahrial, M.Kom.', 412, 'A'),
('Akutansi', '1985-03-19', 'Maya Fitrianti, M.M.', 895, 'B'),
('Farmasi', '1997-05-30', 'Prof. Silvia Nst, M.farm.', 312, 'C'),
('Fisika', '1989-12-10', 'Dr. Umar Agustinus, M.sc.', 275, 'A'),
('Hukum', '1983-08-08', 'Prof. Gunarto, M.H.', 754, 'B');
--
-- Database: `phpmvc`
--
CREATE DATABASE IF NOT EXISTS `phpmvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phpmvc`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_guru`
--

CREATE TABLE `data_guru` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_guru`
--

INSERT INTO `data_guru` (`id`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(1, 'Novi Dyah puspitasari S.pd', 'Perempuan', 'Trenggalek');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(0, 'dari', 'lakilaki', 'trenggalek'),
(1, 'Sugeng Saputra', 'Laki laki', 'Trenggalek');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"phpmvc\",\"table\":\"data_guru\"},{\"db\":\"phpmvc\",\"table\":\"data_siswa\"},{\"db\":\"phpmvc\",\"table\":\"siswa\"},{\"db\":\"smkn2\",\"table\":\"siswa\"},{\"db\":\"smkn2\",\"table\":\"komli\"},{\"db\":\"combobox_level\",\"table\":\"tipe_kendaraan\"},{\"db\":\"combobox_level\",\"table\":\"merk_kendaraan\"},{\"db\":\"perti\",\"table\":\"mahasiswa\"},{\"db\":\"perti\",\"table\":\"universitas\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-09-14 13:35:37', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\",\"NavigationWidth\":757}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `smkn2`
--
CREATE DATABASE IF NOT EXISTS `smkn2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `smkn2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komli`
--

CREATE TABLE `komli` (
  `komli` varchar(20) DEFAULT NULL,
  `tgl_berdiri` date DEFAULT NULL,
  `nama_kakomli` varchar(50) DEFAULT NULL,
  `jun_siswa` smallint(5) UNSIGNED DEFAULT NULL,
  `akreditasi` enum('A','B','C','N/A') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komli`
--

INSERT INTO `komli` (`komli`, `tgl_berdiri`, `nama_kakomli`, `jun_siswa`, `akreditasi`) VALUES
('Tehnik Konstruksi da', '2004-04-23', 'HERY WAHYU DWIANTORO, S.T', 210, 'A'),
('Kuliner', '2004-04-23', 'AGENG DWI ASMARANI, S.Pd', 432, 'A'),
('Desain Pemodelan dan', '2008-05-05', 'Drs. ENDRO SUPRIYONO', 321, 'A'),
('Rekayasa Perangkat L', '2011-07-10', 'ERVI RAHMAWATI, ST', 332, 'A'),
('Teknik Pemanasan, Ta', '2014-04-12', 'RICKE DWANA SERVIANI, S.Pd', 358, 'N/A'),
('Akuntansi', '2015-07-25', 'KURNIYANTI PUJI H, S.E, M.Pd', 367, 'N/A'),
('Tehnik Pengelasan', '2019-06-23', 'AMANG ARDY CAHYO NIARGO, S.Pd', 34, 'N/A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` char(8) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jns_kel` enum('L','P') DEFAULT NULL,
  `tinggi` tinyint(3) UNSIGNED DEFAULT NULL,
  `asal_sekolah` varchar(50) DEFAULT NULL,
  `komli` varchar(20) DEFAULT NULL,
  `nilai_un` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jns_kel`, `tinggi`, `asal_sekolah`, `komli`, `nilai_un`) VALUES
('1400', 'ADI SANTOSO', 'L', 160, 'SMPN 4 TRENGGALEK', 'Teknik Konstruksi da', '29.00'),
('1401', 'AGISTA DWI SAPUTRA', 'L', 164, 'SMPN 4 TRENGGALEK', 'Teknik Konstruksi da', '27.00'),
('1404', 'FEBRILIAN NINDA YUANA', 'P', 160, 'SMPN 1 TUGU', 'Kuliner', '30.00'),
('1405', 'FITRIA RATNA NOVITASARI', 'P', 170, 'MTSN 3 TRENGGALEK', 'Kuliner', '27.00'),
('1406', 'GADIS TIARA PUTRI ISLAMI', 'P', 169, 'SMPN 2 KARANGAN', 'Kuliner', '33.00'),
('1410', 'NONSHITA SELLY CAHYANI', 'P', 160, 'SMP 2 DURENAN', 'Desain Permodelan da', '32.00'),
('1414', 'AULIYA RIZKI SEPTIANI', 'P', 166, 'SMPN 1 TRENGGALEK', 'Rekayasa Perangkat L', '28.00'),
('1415', 'AZIS FERDIYANSAH', 'L', 165, 'SMPN 2 POGALAN', 'Rekayasa Perangkat L', '32.00'),
('14166', 'BAGAS ARYA SYAH PUTRA', 'L', 169, 'SMPN 1 TUGU', 'Rekayasa Perangkat L', '34.00'),
('1419', 'NANDA PURWO GANTI', 'L', 166, 'MTsN 1 TRENGGALEK', 'Teknik Pemanasan, Ta', '35.00'),
('1420', 'NANDA WAHYU EKA RAHMADANI', 'P', 164, 'SMPN 2 TRENGGALEK', 'Teknik Pemanasan, Ta', '28.00'),
('1423', 'RANA HAMZAH', 'L', 166, 'SMPN 3 KARANGAN', 'Teknik Pemanasan, Ta', '32.00'),
('1424', 'ANIS SRI UTAMI', 'P', 168, 'SMPN 2 TUGU', 'Akuntansi', '32.00'),
('1425', 'ANISA VIDA BADIATUN NUHA', 'P', 163, 'SMPN 2 TRENGGALEK', 'Akuntasi', '27.00'),
('1426', 'APRILIA AYUNINGSIH', 'P', 160, 'SMPN 2 POGALAN', 'Akuntansi', '31.00'),
('1429', 'DIMAS AJIB ASNAWI', 'L', 168, 'SMPN 1 BENDUNGAN', 'Teknik Pengelasan', '33.00'),
('1430', 'DIMAS FAHREZA UTAMA', 'L', 170, 'SMPN 1 DONGKO', 'Teknik Pengelasan', '32.00'),
('1431', 'DIMAS PUTRA AJI MUHTAROM', 'L', 163, 'MTSN 2 TRENGGALEK', 'Teknik Pengelasan', '30.00'),
('1909', 'NAZILATUL FITRIANI', 'P', 161, 'SMPN 1 TRENGGALEK', 'Desain Permodelan da', '30.00'),
('5966', 'SUGENG SAPUTRA', 'L', 175, 'SMPN 1 TUGU', 'Rekayasa Perangkat L', '99.99');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `ujikom_db`
--
CREATE DATABASE IF NOT EXISTS `ujikom_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ujikom_db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_mobil`
--

CREATE TABLE `dt_mobil` (
  `nopol` varchar(10) NOT NULL,
  `nm_pelanggan` varchar(50) DEFAULT NULL,
  `merk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dt_mobil`
--

INSERT INTO `dt_mobil` (`nopol`, `nm_pelanggan`, `merk`) VALUES
('DW 1 WJT', 'Rangga Haris', 'Honda'),
('K 11 PWF', 'Oktyawati', 'Toyota'),
('N 1 SA', 'Nisa Maheswari', 'Mercedez'),
('WA 2 N', 'Diprayogi Listiyo Sakti', 'Mitsubishi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_servis`
--

CREATE TABLE `dt_servis` (
  `id_srv` int(5) NOT NULL,
  `nopol` varchar(10) DEFAULT NULL,
  `tgl_servis` date DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `tipe` varchar(10) DEFAULT NULL,
  `warna` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dt_servis`
--

INSERT INTO `dt_servis` (`id_srv`, `nopol`, `tgl_servis`, `model`, `tipe`, `warna`) VALUES
(1, 'K 11 PWF', '0000-00-00', 'Fortuner', 'SUV', 'Grey'),
(2, 'N 1 SA', '0000-00-00', 'AMG GTR', 'Sport', 'Grey'),
(3, 'N 1 SA', '0000-00-00', 'AMG GTR', 'Sport', 'Grey'),
(4, 'DW 1 WJT', '0000-00-00', 'City', 'Sedan', 'Hitam'),
(5, 'K 11 PFW', '0000-00-00', 'Fortuner', 'SUV', 'Grey');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dt_mobil`
--
ALTER TABLE `dt_mobil`
  ADD PRIMARY KEY (`nopol`);

--
-- Indeks untuk tabel `dt_servis`
--
ALTER TABLE `dt_servis`
  ADD PRIMARY KEY (`id_srv`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dt_servis`
--
ALTER TABLE `dt_servis`
  MODIFY `id_srv` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
