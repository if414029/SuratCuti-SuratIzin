-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2018 at 05:26 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpgw`
--

-- --------------------------------------------------------

--
-- Table structure for table `hrdx_pegawai`
--

CREATE TABLE `hrdx_pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `profile_old_id` varchar(20) DEFAULT NULL,
  `nama` varchar(135) DEFAULT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `kpt_no` varchar(10) DEFAULT NULL,
  `kbk_id` varchar(20) DEFAULT NULL,
  `ref_kbk_id` int(11) DEFAULT NULL,
  `alias` varchar(9) DEFAULT NULL,
  `posisi` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(60) DEFAULT NULL,
  `tgl_lahir` varchar(60) DEFAULT NULL,
  `agama_id` int(11) DEFAULT NULL,
  `jenis_kelamin_id` int(11) DEFAULT NULL,
  `golongan_darah_id` int(11) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `telepon` varchar(45) DEFAULT NULL,
  `alamat` blob,
  `alamat_libur` varchar(150) DEFAULT NULL,
  `kecamatan` varchar(150) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `kabupaten_id` int(11) DEFAULT NULL,
  `kode_pos` varchar(15) DEFAULT NULL,
  `no_ktp` varchar(255) DEFAULT NULL,
  `email` text,
  `ext_num` char(30) DEFAULT NULL,
  `study_area_1` varchar(50) DEFAULT NULL,
  `study_area_2` varchar(50) DEFAULT NULL,
  `jabatan` char(1) DEFAULT NULL,
  `jabatan_akademik_id` int(11) DEFAULT NULL,
  `gbk_1` int(11) DEFAULT NULL,
  `gbk_2` int(11) DEFAULT NULL,
  `status_ikatan_kerja_pegawai_id` int(11) DEFAULT NULL,
  `status_akhir` char(1) DEFAULT NULL,
  `status_aktif_pegawai_id` int(11) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `nama_bapak` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `status_marital_id` int(11) DEFAULT NULL,
  `nama_p` varchar(50) DEFAULT NULL,
  `tgl_lahir_p` date DEFAULT NULL,
  `tmp_lahir_p` varchar(50) DEFAULT NULL,
  `pekerjaan_ortu` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `struktur_jabatan_id` int(11) DEFAULT NULL,
  `kuota_cuti_tahunan_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrdx_pegawai`
--

INSERT INTO `hrdx_pegawai` (`pegawai_id`, `profile_old_id`, `nama`, `nip`, `kpt_no`, `kbk_id`, `ref_kbk_id`, `alias`, `posisi`, `tempat_lahir`, `tgl_lahir`, `agama_id`, `jenis_kelamin_id`, `golongan_darah_id`, `hp`, `telepon`, `alamat`, `alamat_libur`, `kecamatan`, `kota`, `kabupaten_id`, `kode_pos`, `no_ktp`, `email`, `ext_num`, `study_area_1`, `study_area_2`, `jabatan`, `jabatan_akademik_id`, `gbk_1`, `gbk_2`, `status_ikatan_kerja_pegawai_id`, `status_akhir`, `status_aktif_pegawai_id`, `tanggal_masuk`, `tanggal_keluar`, `nama_bapak`, `nama_ibu`, `status`, `status_marital_id`, `nama_p`, `tgl_lahir_p`, `tmp_lahir_p`, `pekerjaan_ortu`, `user_id`, `role_id`, `struktur_jabatan_id`, `kuota_cuti_tahunan_id`, `deleted`, `deleted_at`, `deleted_by`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(37, NULL, 'Amos Sitorus', '11414029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'if414029@students.del.ac.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 1, 10, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, 'Nepy Gulo', '11414019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'if414019@students.del.ac.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 2, 9, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 'Eduardo Silalahi', '11414021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'if414021@students.del.ac.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 3, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 'Dina', '11414010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'if414010@students.del.ac.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 4, 4, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, 'Rodes Sirait', '11414025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'if414025@students.del.ac.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, 5, 6, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hrdx_r_kuota_cuti_tahunan`
--

CREATE TABLE `hrdx_r_kuota_cuti_tahunan` (
  `kuota_cuti_tahunan_id` int(11) NOT NULL,
  `lama_bekerja_min` int(11) DEFAULT NULL,
  `lama_bekerja_max` int(11) DEFAULT NULL,
  `kuota` varchar(20) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inst_struktur_jabatan`
--

CREATE TABLE `inst_struktur_jabatan` (
  `struktur_jabatan_id` int(11) NOT NULL,
  `instansi_id` int(11) DEFAULT NULL,
  `jabatan` varchar(45) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `inisial` varchar(45) DEFAULT NULL,
  `is_multi_tenant` tinyint(1) DEFAULT '0',
  `is_unit` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL,
  `updated_by` varbinary(32) DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inst_struktur_jabatan`
--

INSERT INTO `inst_struktur_jabatan` (`struktur_jabatan_id`, `instansi_id`, `jabatan`, `parent`, `inisial`, `is_multi_tenant`, `is_unit`, `deleted`, `deleted_at`, `deleted_by`, `updated_by`, `created_by`) VALUES
(1, NULL, 'Rektor', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(2, NULL, 'Wakil Rektor Bidang Keuangan dan Sumber Daya\r', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(3, NULL, 'Wakil Rektor Bidang Kemitraan, Penelitian dan', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(4, NULL, 'Wakil Rektor Bidang Akademik dan Kemahasiswaa', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(5, NULL, 'Koord Akademik dan Kemahasiswaan\r\n', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(6, NULL, 'Ka.Prodi Teknik Informatika\r\n', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(7, NULL, 'Ka.Prodi Sistem Informasi\r\n', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(8, NULL, 'Ka.Prodi Teknik Elektro\r\n', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(9, NULL, 'Dosen', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(10, 0, 'HRD', 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(11, NULL, 'Sekretaris/Staff Administrasi', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(12, NULL, 'Asisten Dosen', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(13, NULL, 'Staff Perpustakaan', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(14, NULL, 'Staff Kerohanian', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(15, NULL, 'Staff Keuangan', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(16, NULL, 'Staff Inventory', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(18, NULL, 'Staff LPPM', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(19, NULL, 'Staff Maintenance Teknik', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(20, NULL, 'Staff Duktek', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(21, NULL, 'Staff WR3', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(22, NULL, 'Dokter Keluarga', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(23, NULL, 'Suster Klinik', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(24, NULL, 'Bapak Asrama', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(25, NULL, 'Ibu Asrama', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(26, NULL, 'Abang Asrama', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(27, NULL, 'Ibu Asrama', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kpgw_laporan`
--

CREATE TABLE `kpgw_laporan` (
  `laporan_id` int(11) NOT NULL COMMENT 'ID',
  `surat_tugas_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_laporan` text,
  `tanggal_pelaporan` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpgw_laporan`
--

INSERT INTO `kpgw_laporan` (`laporan_id`, `surat_tugas_id`, `user_id`, `file_laporan`, `tanggal_pelaporan`, `deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(4, 5, 41, 'LaporanTugas_2017-05-18_5.docx', '2017-05-18 00:00:00', NULL, '2017-05-18 00:00:00', 'amos123', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kpgw_r_kategori_surat_cuti`
--

CREATE TABLE `kpgw_r_kategori_surat_cuti` (
  `kategori_surat_cuti_id` int(11) NOT NULL COMMENT 'ID',
  `desc` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpgw_r_kategori_surat_tugas`
--

CREATE TABLE `kpgw_r_kategori_surat_tugas` (
  `kategori_surat_tugas_id` int(11) NOT NULL COMMENT 'ID',
  `desc` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpgw_r_kategori_surat_tugas`
--

INSERT INTO `kpgw_r_kategori_surat_tugas` (`kategori_surat_tugas_id`, `desc`, `deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Akademik', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Undangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Kepanitiaan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'LPPM', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kpgw_r_signer`
--

CREATE TABLE `kpgw_r_signer` (
  `signer_id` int(11) NOT NULL COMMENT 'ID',
  `desc` varchar(30) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpgw_r_supir`
--

CREATE TABLE `kpgw_r_supir` (
  `supir_id` int(11) NOT NULL COMMENT 'ID',
  `desc` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpgw_r_transportasi`
--

CREATE TABLE `kpgw_r_transportasi` (
  `transportasi_id` int(11) NOT NULL COMMENT 'ID',
  `desc` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpgw_r_transportasi`
--

INSERT INTO `kpgw_r_transportasi` (`transportasi_id`, `desc`, `deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Kendaraan Del', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Kendaraan Umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kpgw_surat_cuti`
--

CREATE TABLE `kpgw_surat_cuti` (
  `surat_cuti_id` int(11) NOT NULL COMMENT 'ID',
  `user_id` int(11) DEFAULT NULL,
  `kategori_surat_cuti_id` int(11) DEFAULT NULL,
  `tanggal_berangkat` datetime DEFAULT NULL,
  `tanggal_kembali` datetime DEFAULT NULL,
  `alasan` varchar(255) DEFAULT NULL,
  `pengalihan_tugas` varchar(255) DEFAULT NULL,
  `status_approvingAtasan` varchar(20) DEFAULT NULL,
  `status_approvingWR` varchar(20) DEFAULT NULL,
  `status_broadcast` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpgw_surat_tugas`
--

CREATE TABLE `kpgw_surat_tugas` (
  `surat_tugas_id` int(11) NOT NULL COMMENT 'ID',
  `user_id` int(11) DEFAULT NULL,
  `kategori_surat_tugas_id` int(11) DEFAULT NULL,
  `transportasi_id` int(11) DEFAULT NULL,
  `supir_id` int(11) DEFAULT NULL,
  `signer_id` int(11) DEFAULT NULL,
  `tanggal_berangkat` datetime DEFAULT NULL,
  `tanggal_kembali` datetime DEFAULT NULL,
  `tanggal_mulai` datetime DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `alasan_tugas` varchar(255) DEFAULT NULL,
  `tujuan` varchar(50) DEFAULT NULL,
  `rute_berangkat` varchar(50) DEFAULT NULL,
  `rute_kembali` varchar(50) DEFAULT NULL,
  `allowance` varchar(50) DEFAULT NULL,
  `lokasi_inap` varchar(30) DEFAULT NULL,
  `dosen_pendamping` varchar(50) DEFAULT NULL,
  `transportasi_berangkat` int(11) DEFAULT NULL,
  `transportasi_kembali` int(11) DEFAULT NULL,
  `kebutuhan_khusus` varchar(255) DEFAULT NULL,
  `tanggal_pengajuan` datetime DEFAULT NULL,
  `rincian_perjalanan_berangkat` varchar(255) DEFAULT NULL,
  `rincian_perjalanan_kembali` varchar(255) DEFAULT NULL,
  `status_approvingHRD` varchar(20) DEFAULT 'Requesting',
  `status_approvingWR` varchar(20) DEFAULT 'Waiting',
  `status_laporan` varchar(20) DEFAULT NULL,
  `status_broadcast` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpgw_surat_tugas`
--

INSERT INTO `kpgw_surat_tugas` (`surat_tugas_id`, `user_id`, `kategori_surat_tugas_id`, `transportasi_id`, `supir_id`, `signer_id`, `tanggal_berangkat`, `tanggal_kembali`, `tanggal_mulai`, `tanggal_selesai`, `alasan_tugas`, `tujuan`, `rute_berangkat`, `rute_kembali`, `allowance`, `lokasi_inap`, `dosen_pendamping`, `transportasi_berangkat`, `transportasi_kembali`, `kebutuhan_khusus`, `tanggal_pengajuan`, `rincian_perjalanan_berangkat`, `rincian_perjalanan_kembali`, `status_approvingHRD`, `status_approvingWR`, `status_laporan`, `status_broadcast`, `deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(5, 41, 1, NULL, NULL, NULL, '2017-05-12 06:30:36', '2017-05-18 21:50:36', '2017-05-13 10:50:36', '2017-05-16 09:25:36', 'dsa', 'dsa', 'da', 'asdad', NULL, 'dsa', '42', 1, 2, 'dsa', '2017-05-11 00:00:00', 'ad', 'asda', 'Approved', 'Finale_Approving', NULL, NULL, NULL, '2017-05-11 00:00:00', 'amos123', NULL, NULL, NULL, NULL),
(6, 44, 2, NULL, NULL, NULL, '2017-05-13 10:50:29', '2017-05-19 10:50:29', '2017-05-13 14:30:29', '2017-05-18 10:30:29', 'Testing', 'Medan', 'IT Del - Medan', 'Medan - IT Del', NULL, 'Medan Hotel', '43', 1, 2, 'Testing', '2017-05-12 00:00:00', 'Testing', 'Tes', 'Approved', 'Finale_Approving', NULL, NULL, NULL, '2017-05-12 00:00:00', 'dina123', NULL, NULL, NULL, NULL),
(7, 41, 2, NULL, NULL, NULL, '2017-05-15 09:25:06', '2017-05-20 15:50:06', '2017-05-16 23:25:06', '2017-05-18 10:30:06', 'Uji CPa', 'Jakarta', 'Del - Jakarta', 'Jakarta - Del', NULL, 'TEsting', '43', 2, 2, 'Tes', '2017-05-14 00:00:00', 'Tes', 'Tes', 'Reject', 'Waiting', NULL, NULL, NULL, '2017-05-14 00:00:00', 'amos123', NULL, NULL, NULL, NULL),
(9, 41, 2, NULL, NULL, NULL, '2017-05-15 09:25:52', '2017-05-20 15:50:52', '2017-05-15 10:50:52', '2017-05-19 06:30:52', 'das', 'ds', 'dsa', 'das', NULL, 'dsa', '42', 2, 1, 'sda', '2017-05-14 00:00:00', 'dsa', 'dsa', 'Approved', 'Finale_Approving', NULL, NULL, NULL, '2017-05-14 00:00:00', 'amos123', NULL, NULL, NULL, NULL),
(10, 41, 4, NULL, NULL, NULL, '2017-05-15 09:45:24', '2017-05-20 11:50:24', '2017-05-16 09:25:24', '2017-05-19 23:30:24', 'dsa', 'ddsa', 'das', 'sda', NULL, 'dsa', '44', 2, 2, 'wda', '2017-05-14 00:00:00', 'dsa', 'dsa', 'Reject', 'Waiting', NULL, NULL, NULL, '2017-05-14 00:00:00', 'amos123', NULL, NULL, NULL, NULL),
(11, 41, 3, NULL, NULL, NULL, '2017-05-15 09:30:54', '2017-05-20 19:50:54', '2017-05-15 10:50:54', '2017-05-19 05:25:54', 'fa', 'das', 'dsa', 'ds', NULL, 'dsa', '43', 2, 2, 'das', '2017-05-14 00:00:00', 'das', 'das', 'Approved', 'Finale_Approving', NULL, NULL, NULL, '2017-05-14 00:00:00', 'amos123', NULL, NULL, NULL, NULL),
(12, 41, 4, NULL, NULL, NULL, '2017-05-16 10:45:54', '2017-05-25 13:25:54', '2017-05-17 10:30:54', '2017-05-24 10:10:54', 'Tes', 'das', 'jhghj', 'jg', NULL, 'jfjg', '43', 2, 2, 'jghjg', '2017-05-15 00:00:00', 'jg', 'jg', 'Approved', 'Waiting', NULL, NULL, NULL, '2017-05-15 00:00:00', 'amos123', NULL, NULL, NULL, NULL),
(14, 41, 1, NULL, NULL, NULL, '2017-05-19 04:30:36', '2017-06-24 17:50:36', '2017-05-19 15:35:36', '2017-06-10 19:55:35', 'nbhh', 'dsa', 'IT Del - Medan', 'Medan - IT Del', NULL, 'dsa', '42', 1, 1, 'lmmml', '2017-05-18 00:00:00', 'knnk', 'nknk', 'Approved', 'Waiting', NULL, NULL, NULL, '2017-05-18 00:00:00', 'amos123', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1491806037),
('m130524_201442_init', 1491806051);

-- --------------------------------------------------------

--
-- Table structure for table `sysx_role`
--

CREATE TABLE `sysx_role` (
  `role_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sysx_role`
--

INSERT INTO `sysx_role` (`role_id`, `parent_id`, `name`, `desc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, NULL, NULL, 'HRD', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, NULL, NULL, 'Pegawai', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, NULL, NULL, 'WR2', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, NULL, NULL, 'WR3', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, NULL, NULL, 'Atasan Pegawai', NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sysx_user`
--

CREATE TABLE `sysx_user` (
  `user_id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `sysx_key` varchar(32) DEFAULT NULL,
  `authentication_method_id` int(11) DEFAULT '1',
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sysx_user`
--

INSERT INTO `sysx_user` (`user_id`, `profile_id`, `sysx_key`, `authentication_method_id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(41, NULL, NULL, 1, 'amos123', 'Peo4uOQfTegh5LvXpDpSZGqDmc5k7s-S', '$2y$13$Oo9inLfX/JQFx9SlHFgdvejgNQSCx0w.zUwK6s2ERZz1UCoF8A01a', NULL, 'if414029@students.del.ac.id', 10, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(42, NULL, NULL, 1, 'nepy123', 'q35YUSAGJFQ2ZNtHbCpqV77YPiuI58lF', '$2y$13$8hjuvCMS6Crqs74Y28Ahn.p6H2a55Zz7cAzBXN5xIZwTFG17sUJmC', NULL, 'if414019@students.del.ac.id', 10, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(43, NULL, NULL, 1, 'eduardo123', 'WfGTlMeW93dRHXua5n6h7S6_Q-YIvVXi', '$2y$13$AK7IfXdlZ6Sedvqt67z/t.Jz1C0hchLYK8A1i9cERjm4Y4KFndFoa', NULL, 'if414021@students.del.ac.id', 10, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(44, NULL, NULL, 1, 'dina123', 'Fur9HST4tz_j7k3EY5WNBo2H5vGA3jIp', '$2y$13$wdRyItJPOn9w.1A04ECuc.bybUlFZk/.JC79JDpWqT64CA20S3yrW', NULL, 'if414010@students.del.ac.id', 10, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(45, NULL, NULL, 1, 'rodes123', 'wvXhBp-t76XTzUnVH6hmyrBPpJQsoBrJ', '$2y$13$Y0gudVlBbVDZH1O9I9QKjutPwgJZLBrA.YgCf7d.bKejkE0LHxJG6', NULL, 'if414025@students.del.ac.id', 10, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'bNq5pAfXbJ4PYeaKvxE3uv8wQTeZAsMA', '$2y$13$OG6xPUtBPuVKvUwrnIisa.olgZcdM25ujJxrqNDL6TnFEvDDxl1Yq', NULL, 'admin@gmail.com', 10, 1492681402, 1492681402);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hrdx_pegawai`
--
ALTER TABLE `hrdx_pegawai`
  ADD PRIMARY KEY (`pegawai_id`),
  ADD KEY `Const_pegawai_user` (`user_id`),
  ADD KEY `Const_pegawai_role` (`role_id`),
  ADD KEY `Const_pegawai_jabatan` (`struktur_jabatan_id`),
  ADD KEY `Const_pegawai_kuota` (`kuota_cuti_tahunan_id`);

--
-- Indexes for table `hrdx_r_kuota_cuti_tahunan`
--
ALTER TABLE `hrdx_r_kuota_cuti_tahunan`
  ADD PRIMARY KEY (`kuota_cuti_tahunan_id`);

--
-- Indexes for table `inst_struktur_jabatan`
--
ALTER TABLE `inst_struktur_jabatan`
  ADD PRIMARY KEY (`struktur_jabatan_id`);

--
-- Indexes for table `kpgw_laporan`
--
ALTER TABLE `kpgw_laporan`
  ADD PRIMARY KEY (`laporan_id`),
  ADD KEY `Const_laporan_tugas` (`surat_tugas_id`),
  ADD KEY `Const_laporan_user` (`user_id`);

--
-- Indexes for table `kpgw_r_kategori_surat_cuti`
--
ALTER TABLE `kpgw_r_kategori_surat_cuti`
  ADD PRIMARY KEY (`kategori_surat_cuti_id`);

--
-- Indexes for table `kpgw_r_kategori_surat_tugas`
--
ALTER TABLE `kpgw_r_kategori_surat_tugas`
  ADD PRIMARY KEY (`kategori_surat_tugas_id`);

--
-- Indexes for table `kpgw_r_signer`
--
ALTER TABLE `kpgw_r_signer`
  ADD PRIMARY KEY (`signer_id`),
  ADD KEY `Const_signer_user` (`user_id`);

--
-- Indexes for table `kpgw_r_supir`
--
ALTER TABLE `kpgw_r_supir`
  ADD PRIMARY KEY (`supir_id`);

--
-- Indexes for table `kpgw_r_transportasi`
--
ALTER TABLE `kpgw_r_transportasi`
  ADD PRIMARY KEY (`transportasi_id`);

--
-- Indexes for table `kpgw_surat_cuti`
--
ALTER TABLE `kpgw_surat_cuti`
  ADD PRIMARY KEY (`surat_cuti_id`),
  ADD KEY `Const_cuti_user` (`user_id`),
  ADD KEY `Const_cuti_kategori` (`kategori_surat_cuti_id`);

--
-- Indexes for table `kpgw_surat_tugas`
--
ALTER TABLE `kpgw_surat_tugas`
  ADD PRIMARY KEY (`surat_tugas_id`),
  ADD KEY `Const_tugas_user` (`user_id`),
  ADD KEY `Const_tugas_kategori` (`kategori_surat_tugas_id`),
  ADD KEY `Const_tugas_transportasi` (`transportasi_id`),
  ADD KEY `Const_tugas_supir` (`supir_id`),
  ADD KEY `Const_tugas_signer` (`signer_id`),
  ADD KEY `Const_tugas_berangkat` (`transportasi_berangkat`),
  ADD KEY `Const_tugas_kembali` (`transportasi_kembali`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `sysx_role`
--
ALTER TABLE `sysx_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sysx_user`
--
ALTER TABLE `sysx_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hrdx_pegawai`
--
ALTER TABLE `hrdx_pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `hrdx_r_kuota_cuti_tahunan`
--
ALTER TABLE `hrdx_r_kuota_cuti_tahunan`
  MODIFY `kuota_cuti_tahunan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inst_struktur_jabatan`
--
ALTER TABLE `inst_struktur_jabatan`
  MODIFY `struktur_jabatan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `kpgw_laporan`
--
ALTER TABLE `kpgw_laporan`
  MODIFY `laporan_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kpgw_r_kategori_surat_cuti`
--
ALTER TABLE `kpgw_r_kategori_surat_cuti`
  MODIFY `kategori_surat_cuti_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `kpgw_r_kategori_surat_tugas`
--
ALTER TABLE `kpgw_r_kategori_surat_tugas`
  MODIFY `kategori_surat_tugas_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kpgw_r_signer`
--
ALTER TABLE `kpgw_r_signer`
  MODIFY `signer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `kpgw_r_supir`
--
ALTER TABLE `kpgw_r_supir`
  MODIFY `supir_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `kpgw_r_transportasi`
--
ALTER TABLE `kpgw_r_transportasi`
  MODIFY `transportasi_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kpgw_surat_cuti`
--
ALTER TABLE `kpgw_surat_cuti`
  MODIFY `surat_cuti_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `kpgw_surat_tugas`
--
ALTER TABLE `kpgw_surat_tugas`
  MODIFY `surat_tugas_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `sysx_role`
--
ALTER TABLE `sysx_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sysx_user`
--
ALTER TABLE `sysx_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `hrdx_pegawai`
--
ALTER TABLE `hrdx_pegawai`
  ADD CONSTRAINT `Const_pegawai_jabatan` FOREIGN KEY (`struktur_jabatan_id`) REFERENCES `inst_struktur_jabatan` (`struktur_jabatan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_pegawai_kuota` FOREIGN KEY (`kuota_cuti_tahunan_id`) REFERENCES `hrdx_r_kuota_cuti_tahunan` (`kuota_cuti_tahunan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_pegawai_role` FOREIGN KEY (`role_id`) REFERENCES `sysx_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_pegawai_user` FOREIGN KEY (`user_id`) REFERENCES `sysx_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kpgw_laporan`
--
ALTER TABLE `kpgw_laporan`
  ADD CONSTRAINT `Const_laporan_tugas` FOREIGN KEY (`surat_tugas_id`) REFERENCES `kpgw_surat_tugas` (`surat_tugas_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_laporan_user` FOREIGN KEY (`user_id`) REFERENCES `sysx_user` (`user_id`);

--
-- Constraints for table `kpgw_r_signer`
--
ALTER TABLE `kpgw_r_signer`
  ADD CONSTRAINT `Const_signer_user` FOREIGN KEY (`user_id`) REFERENCES `sysx_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kpgw_surat_cuti`
--
ALTER TABLE `kpgw_surat_cuti`
  ADD CONSTRAINT `Const_cuti_kategori` FOREIGN KEY (`kategori_surat_cuti_id`) REFERENCES `kpgw_r_kategori_surat_cuti` (`kategori_surat_cuti_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_cuti_user` FOREIGN KEY (`user_id`) REFERENCES `sysx_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kpgw_surat_tugas`
--
ALTER TABLE `kpgw_surat_tugas`
  ADD CONSTRAINT `Const_tugas_berangkat` FOREIGN KEY (`transportasi_berangkat`) REFERENCES `kpgw_r_transportasi` (`transportasi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_tugas_kategori` FOREIGN KEY (`kategori_surat_tugas_id`) REFERENCES `kpgw_r_kategori_surat_tugas` (`kategori_surat_tugas_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_tugas_kembali` FOREIGN KEY (`transportasi_kembali`) REFERENCES `kpgw_r_transportasi` (`transportasi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_tugas_signer` FOREIGN KEY (`signer_id`) REFERENCES `kpgw_r_signer` (`signer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_tugas_supir` FOREIGN KEY (`supir_id`) REFERENCES `kpgw_r_supir` (`supir_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_tugas_transportasi` FOREIGN KEY (`transportasi_id`) REFERENCES `kpgw_r_transportasi` (`transportasi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Const_tugas_user` FOREIGN KEY (`user_id`) REFERENCES `sysx_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
