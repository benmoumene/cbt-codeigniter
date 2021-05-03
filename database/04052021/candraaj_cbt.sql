-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for candraaj_cbt
CREATE DATABASE IF NOT EXISTS `candraaj_cbt` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `candraaj_cbt`;

-- Dumping structure for table candraaj_cbt.bacaan_soal
CREATE TABLE IF NOT EXISTS `bacaan_soal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paket_soal_id` int(11) NOT NULL,
  `kode_bacaan` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `bacaan` longtext NOT NULL DEFAULT '',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `paket_soal_id_bacaan` (`paket_soal_id`),
  CONSTRAINT `paket_soal_id_bacaan` FOREIGN KEY (`paket_soal_id`) REFERENCES `paket_soal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.bacaan_soal: ~5 rows (approximately)
/*!40000 ALTER TABLE `bacaan_soal` DISABLE KEYS */;
REPLACE INTO `bacaan_soal` (`id`, `paket_soal_id`, `kode_bacaan`, `name`, `bacaan`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 6, 'PENALARAN UMUM', 'BACAAN 1 - 6', '<p style="margin: 0in 0in 0.0001pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Kementerian Kesehatan merilis total ada 502.110 orang yang dinyatakan positif virus corona. Kasus-kasus positif ini menyebar di seluruh provinsi, namun hampir separuhnya ada di Pulau Jawa. Jumlah kasus positif terbanyak didominasi DKI Jakarta dengan 127.164 orang, disusul Jawa Timur sebanyak 58.679 kasus positif, serta Jawa Barat (48.064), dan Jawa Tengah (47.380). Pembatasan Sosial Berskala Besar transisi masih diberlakukan di Jakarta - terus-menerus diperpanjang sejak bulan Juni. Sementara Jawa Timur sudah mengakhiri PSBB pada bulan Juni, kendati jumlah kasus terus bertambah. Dari total kasus positif yang mencapai lebih dari setengah juta orang itu, Kementerian Kesehatan menyatakan 16.002 meninggal dunia dan 422.386 orang sembuh.</span><o:p></o:p></p><p style="margin: 0in 0in 0.0001pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;<o:p></o:p></p><p style="margin: 0in 0in 0.0001pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Sejak pertama kali dikonfirmasi pemerintah pada 2 Maret, kasus konfirmasi positif virus corona terus naik dan belum ada tanda akan turun. Pada bulan Juni, pertambahan kasus harian berkisar di angka 1000-an dan 2000-an, lalu terus meningkat hingga kini sekitar 4.000 kasus positif per hari, bahkan sempat menyentuh 5.000 kasus baru dalam sehari. Presiden Joko Widodo pada bulan Agustus 2020 memasang target sebanyak 30.000 spesimen per hari untuk tes PCR. Saat itu pakar epidemiologi memperingatkan bahwa jumlah tes masih di bawah standar minimal yang ditetapkan WHO, dan menyebut Indonesia kini "dalam situasi kritis". Dalam sepekan terakhir hingga 23 November, rata-rata pemerintah mengadakan 40.000-an tes PCR per hari.</span><o:p></o:p></p><p style="margin: 0in 0in 0.0001pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><br></p><p style="margin: 0in 0in 0.0001pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Pemerintah mengaku jumlah tes ini masih di bawah standar Badan Kesehatan Dunia-WHO yang menghitung seharusnya dilakukan tes terhadap 267.000 orang per minggu berdasarkan jumlah penduduk Indonesia.<o:p></o:p></span></p><p style="margin: 0in 0in 0.0001pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><o:p>&nbsp;</o:p></p><p style="margin-bottom: 10px; text-align: justify;"><span style="line-height: 14.98px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Berikut kurva penularan virus corona di Indonesia</span></p><p style="margin-bottom: 10px; text-align: justify;"><img style="width: 50%;" src="http://localhost/cbt/storage/website/lembaga/grandsbmptn/bacaan_soal/bacaan_6/92e9717d0f1b375a6a15bdb53658deb8.png"><br></p><p style="margin-bottom: 10px; text-align: justify;">Pada 13 November tercatat kasus baru positif virus corona harian tertinggi selama delapan bulan terakhir yakni sebanyak 5.444 orang dalam 24 jam. Rekor kasus harian tertinggi sebelumnya yang juga sempat jadi sorotan yakni 2.719 kasus pada Kamis (27/08) ketika terjadi klaster di Sekolah Pendidikan Calon Perwira Angkatan Darat (Secapa AD), Bandung, Jawa Barat. Penambahan kasus positif di Indonesia mulai melaju cepat sejak 6 April yakni sekitar 200-300 orang per hari, lalu bergerak naik 300-400an kasus baru per hari. Dan pada bulan Juni, bergerak fluktuatif antara 400-an kasus hingga lebih dari 4.000 kasus baru per hari.</p><p style="margin: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span lang="EN-US" style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;</span></p><p style="margin: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span lang="EN-US" style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Jumlah kasus di Indonesia resmi melampaui China pada 19 Juli, ketika terdata 86.521 kasus, melampaui China. Jakarta dalam masa perpanjangan transisi PSBB bulan Juli, masih terdata di tiga besar provinsi dengan tambahan kasus harian terbanyak, sekitar 1.000an kasus baru per hari. Bandingkan dengan pertambahan pada bulan Juli yang masih sekitar 400-an kasus baru per hari. Pada masa sebelum transisi, penambahan kasus positif di Jakarta sempat bergerak di kisaran 70-100an kasus per hari.</span><span lang="EN-US"><o:p></o:p></span></p><p style="margin: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span lang="EN-US">&nbsp;</span><span lang="EN-US"><o:p></o:p></span></p><p style="margin: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span lang="EN-US" style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Pembatasan Sosial Berskala Besar transisi terus-menerus diperpanjang sejak bulan Juni di Jakarta. Gubernur DKI Jakarta Anies Baswedan pada Agustus memutuskan kembali memperpanjang masa transisi PSBB karena \'belum ada perbaikan\' dan kini ia memperpanjang kembali PSBB hingga 6 Desember. Anies mengatakan, berdasarkan data-data epidemiologis selama penerapan PSBB Masa Transisi dua pekan terakhir, kondisi Covid-19 masih terkendali dan menuju aman. "Akan tetapi, kita harus semakin waspada dan semakin disiplin dalam protokol kesehatan," kata Anies. Saat memperpanjang masa transisi PSBB untuk kedua kalinya pada pertengahan Juli, Gubernur DKI Jakarta Anies Baswedan mengatakan masih ada \'ketidakdisiplinan masyarakat dalam mencuci tangan, memakai masker, dan menjaga jarak\'. Jakarta \'awasi ketat pasar tradisional dan KRL\' dalam masa perpanjangan transisi PSBB ini.</span><span lang="EN-US"><o:p></o:p></span></p><p style="margin: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span lang="EN-US" style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&nbsp;</span></p><p style="margin: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span lang="EN-US" style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Awalnya Anies menetapkan bulan Juni sebagai masa transisi dengan pelonggaran kegiatan secara bertahap di berbagai sektor. Namun masa transisi ini diklamin \'bisa dihentikan setiap saat\' ketika ada indikator yang buruk. Salah satu indikator yang biasa dipantau adalah angka reproduksi R yang ditargetkan di bawah 1. Target tersebut bermakna satu orang positif berpotensi tidak akan menularkan pada orang lainnya.<o:p></o:p></span></p><p style="margin: 0cm; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span lang="EN-US">&nbsp;</span></p><p style="margin-bottom: 10px;"></p><div>(Dikutip dari: <a href="https://www.bbc.com/indonesia/)" target="_blank">https://www.bbc.com/indonesia/)</a></div><div><b>Edited</b></div>', '2021-04-12 16:04:55', '2021-04-12 16:54:44', 1),
	(2, 10, 'QUESTIONS21-24', 'Questions 21-24', '<p style="text-shadow: rgba(0, 0, 0, 0.024) 1px 1px 1px; margin-bottom: 15px; overflow-wrap: break-word; color: rgb(44, 62, 80); font-family: " helvetica="" neue",="" sans-serif;="" font-size:="" 15px;="" font-style:="" italic;="" text-align:="" justify;="" -webkit-font-smoothing:="" antialiased="" !important;="" backface-visibility:="" !important;"="" hidden="">We believe the Earth is about 4.6 billion years old. At percent, we are forced to look to other bodies in the solar system for hints as to what the early history of the Earth was like. Studies of our moon, Mercury, Mars, and the large satellites of Jupiter and Saturn have provided ample evidence that all these large celestial bodies had formed. This same bombardment must have affected Earth as well. The lunar record indicates that the rate of impacts decreased to its present low level about 4 billion years ago. On Earth, subsequent erosion and crustal motions have obliterated the craters that must have formed during this epoch.</p><p style="text-shadow: rgba(0, 0, 0, 0.024) 1px 1px 1px; overflow-wrap: break-word; color: rgb(44, 62, 80); font-family: " helvetica="" neue",="" sans-serif;="" font-size:="" 15px;="" font-style:="" italic;="" text-align:="" justify;="" -webkit-font-smoothing:="" antialiased="" !important;="" backface-visibility:="" !important;"="" hidden="">Scientists estimate the Earth’s age by measuring the ratios of various radioactive elements in rocks. The oldest Earth’s rocks tested thus far are about 3 1/3 billion years old. But no one knows whether these are oldest rocks on Earth. Tests on rocks from the moon and on meteorites show that these are about 4.6 billion years old. Scientists believe that this is the true age of the solar system and probably the true age of the Earth.</p>', '2021-04-24 07:18:37', '2021-04-24 15:28:53', 0),
	(3, 10, 'QUESTIONS25-28', 'Questions 25-28', '<p style="text-shadow: rgba(0, 0, 0, 0.024) 1px 1px 1px; margin-bottom: 15px; overflow-wrap: break-word; color: rgb(44, 62, 80); font-family: " helvetica="" neue",="" sans-serif;="" font-size:="" 15px;="" font-style:="" italic;="" text-align:="" justify;="" -webkit-font-smoothing:="" antialiased="" !important;="" backface-visibility:="" !important;"="" hidden="">Dear Melissa,<br style="text-shadow: rgba(0, 0, 0, 0.024) 1px 1px 1px; -webkit-font-smoothing: antialiased !important; backface-visibility: hidden !important;">I hope you are well. Guess what! I am having a big party next week at my house and I am inviting all my close friends. The theme of the party is going to be Harry Potter, so all must dress accordingly. You would make a great witch! I need to let everyone know by Wednesday since I am throwing the party next Saturday. Sam is going to decorate the house and my mother is going bake a cake and make lots of food. There is going to be music and dancing as well. John is going to be the DJ. You can stay over at my house. It’s going to be great! I hope to see you then.</p><p style="text-shadow: rgba(0, 0, 0, 0.024) 1px 1px 1px; margin-bottom: 15px; overflow-wrap: break-word; color: rgb(44, 62, 80); font-family: " helvetica="" neue",="" sans-serif;="" font-size:="" 15px;="" font-style:="" italic;="" text-align:="" justify;="" -webkit-font-smoothing:="" antialiased="" !important;="" backface-visibility:="" !important;"="" hidden="">Love,</p><p style="text-shadow: rgba(0, 0, 0, 0.024) 1px 1px 1px; overflow-wrap: break-word; color: rgb(44, 62, 80); font-family: " helvetica="" neue",="" sans-serif;="" font-size:="" 15px;="" font-style:="" italic;="" text-align:="" justify;="" -webkit-font-smoothing:="" antialiased="" !important;="" backface-visibility:="" !important;"="" hidden="">Sarah</p>', '2021-04-24 07:19:01', '2021-04-24 15:30:56', 0),
	(4, 10, 'QUESTIONS 21-24', 'Questions 21-24', 'This is class six of SD Sukadamai. I am the student of this class. Let \r\nsee what are there inside the classroom. There are many kind of things \r\nhere. Mrs.Henni is my teacher. She is sitting on her chair. She is \r\nwriting on her desk. In front of the classroom there is a blackboard. \r\nOur teacher usually write on it. She writes on the blackboard using \r\nchalk. Sometimes she uses eraser to erase her writing. If she wants to \r\nmake lines she uses ruler. At the corner of the classroom stands a \r\ncupboard. It is used to put books and others important things. My class \r\nhas twenty tables with fourty chairs. At usual days all the chairs are \r\nfull, but today there are two chars are empty, because two students are \r\nabsent.', '2021-04-24 15:32:30', NULL, 1),
	(5, 10, 'QUESTIONS 25-28', 'Questions 25-28', '<p>This is class six of SD Sukadamai. I am the student of this class. Let \r\nsee what are there inside the classroom. There are many kind of things \r\nhere. Mrs.Henni is my teacher. She is sitting on her chair. She is \r\nwriting on her desk. In front of the classroom there is a blackboard. \r\nOur teacher usually write on it. She writes on the blackboard using \r\nchalk. Sometimes she uses eraser to erase her writing. If she wants to \r\nmake lines she uses ruler. At the corner of the classroom stands a \r\ncupboard. It is used to put books and others important things. My class \r\nhas twenty tables with fourty chairs. At usual days all the chairs are \r\nfull, but today there are two chars are empty, because two students are \r\nabsent.</p>', '2021-04-24 15:32:44', NULL, 1);
/*!40000 ALTER TABLE `bacaan_soal` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.bank_soal
CREATE TABLE IF NOT EXISTS `bank_soal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paket_soal_id` int(11) NOT NULL,
  `group_mode_jwb_id` int(11) NOT NULL DEFAULT 1,
  `no_soal` int(11) NOT NULL DEFAULT 1,
  `name` longtext CHARACTER SET utf8 NOT NULL DEFAULT '',
  `kata_kunci` varchar(255) DEFAULT NULL,
  `tipe_kesulitan_id` int(11) NOT NULL,
  `group_soal_id` int(11) DEFAULT 0,
  `bacaan_soal_id` int(11) DEFAULT 0,
  `is_acak_soal` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Tidak termasuk acakan 1 termasuk acakan',
  `is_acak_jawaban` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Tidak acak 1 acak',
  `file` varchar(255) DEFAULT NULL,
  `tipe_file` varchar(255) DEFAULT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `group_mode_jwb` (`group_mode_jwb_id`),
  KEY `tipe_kesulitan` (`tipe_kesulitan_id`),
  KEY `paket_soal_id_soal` (`paket_soal_id`),
  CONSTRAINT `group_mode_jwb` FOREIGN KEY (`group_mode_jwb_id`) REFERENCES `group_mode_jawaban` (`id`),
  CONSTRAINT `paket_soal_id_soal` FOREIGN KEY (`paket_soal_id`) REFERENCES `paket_soal` (`id`),
  CONSTRAINT `tipe_kesulitan` FOREIGN KEY (`tipe_kesulitan_id`) REFERENCES `tipe_kesulitan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.bank_soal: ~50 rows (approximately)
/*!40000 ALTER TABLE `bank_soal` DISABLE KEYS */;
REPLACE INTO `bank_soal` (`id`, `paket_soal_id`, `group_mode_jwb_id`, `no_soal`, `name`, `kata_kunci`, `tipe_kesulitan_id`, `group_soal_id`, `bacaan_soal_id`, `is_acak_soal`, `is_acak_jawaban`, `file`, `tipe_file`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(8, 6, 1, 1, '<p><span class="note-math"><span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mrow><mtable rowspacing="0.3600em" columnalign="left left" columnspacing="1em"><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>a</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mrow><mtext>if&nbsp;</mtext><mi>b</mi></mrow></mstyle></mtd></mtr><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>c</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mrow><mtext>if&nbsp;</mtext><mi>d</mi></mrow></mstyle></mtd></mtr></mtable><mo fence="true">}</mo></mrow><mo>?</mo><mo>…</mo></mrow><annotation encoding="application/x-tex">\\begin{rcases}\r\n   a &amp;\\text{if } b \\\\\r\n   c &amp;\\text{if } d\r\n\\end{rcases}?…</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height: 3.00003em; vertical-align: -1.25003em;"></span><span class="minner"><span class="mopen nulldelimiter"></span><span class="mord"><span class="mtable"><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.69em;"><span class="" style="top: -3.69em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord mathnormal">a</span></span></span><span class="" style="top: -2.25em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord mathnormal">c</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 1.19em;"><span class=""></span></span></span></span></span><span class="arraycolsep" style="width: 1em;"></span><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.69em;"><span class="" style="top: -3.69em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord text"><span class="mord">if&nbsp;</span></span><span class="mord mathnormal">b</span></span></span><span class="" style="top: -2.25em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord text"><span class="mord">if&nbsp;</span></span><span class="mord mathnormal">d</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 1.19em;"><span class=""></span></span></span></span></span></span></span><span class="mclose delimcenter" style="top: 0em;"><span class="delimsizing size4">}</span></span></span><span class="mspace" style="margin-right: 0.277778em;"></span><span class="mrel">?</span><span class="mspace" style="margin-right: 0.277778em;"></span></span><span class="base"><span class="strut" style="height: 0.12em; vertical-align: 0em;"></span><span class="minner">…</span></span></span></span></span></p><p><span class="note-math"><span class="katex"><span class="katex-html" aria-hidden="true"><span class="base"><span class="minner"><br></span></span></span></span><span class="note-latex" style="display: none;"></span></span>Apakah itu wak?</p>', 'pitagoras', 1, 0, 0, 1, 1, NULL, NULL, '2021-03-22 15:22:58', '2021-03-29 13:22:32', 1),
	(9, 6, 2, 1, '<p><font color="#000000">ini essay</font></p><p><span class="note-math"><span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mrow><mtable rowspacing="0.3600em" columnalign="left left" columnspacing="1em"><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>a</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mrow><mtext>if&nbsp;</mtext><mi>b</mi></mrow></mstyle></mtd></mtr><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>c</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mrow><mtext>if&nbsp;</mtext><mi>d</mi></mrow></mstyle></mtd></mtr></mtable><mo fence="true">}</mo></mrow><mo>?</mo><mo>…</mo></mrow><annotation encoding="application/x-tex">\\begin{rcases}\r\n   a &amp;\\text{if } b \\\\\r\n   c &amp;\\text{if } d\r\n\\end{rcases}?…</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height: 3.00003em; vertical-align: -1.25003em;"></span><span class="minner"><span class="mopen nulldelimiter"></span><span class="mord"><span class="mtable"><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.69em;"><span class="" style="top: -3.69em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord mathnormal">a</span></span></span><span class="" style="top: -2.25em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord mathnormal">c</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 1.19em;"><span class=""></span></span></span></span></span><span class="arraycolsep" style="width: 1em;"></span><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.69em;"><span class="" style="top: -3.69em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord text"><span class="mord">if&nbsp;</span></span><span class="mord mathnormal">b</span></span></span><span class="" style="top: -2.25em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord text"><span class="mord">if&nbsp;</span></span><span class="mord mathnormal">d</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 1.19em;"><span class=""></span></span></span></span></span></span></span><span class="mclose delimcenter" style="top: 0em;"><span class="delimsizing size4">}</span></span></span><span class="mspace" style="margin-right: 0.277778em;"></span><span class="mrel">?</span><span class="mspace" style="margin-right: 0.277778em;"></span></span><span class="base"><span class="strut" style="height: 0.12em; vertical-align: 0em;"></span><span class="minner">…</span></span></span></span><span class="note-latex" style="display: none;"></span></span><font color="#000000"><br></font></p>', 'awewe', 5, 0, 0, 1, 1, NULL, NULL, '2021-03-22 15:42:31', '2021-03-29 13:07:03', 1),
	(10, 6, 1, 1, '<p>aa</p>', 'aa', 1, 0, 0, 1, 1, NULL, NULL, '2021-03-22 15:59:44', '2021-03-29 13:07:03', 1),
	(11, 6, 1, 1, '<p>aaa</p>', 'aaa', 3, 0, 0, 1, 1, NULL, NULL, '2021-03-22 16:04:49', '2021-03-29 13:07:03', 1),
	(12, 6, 1, 1, '<p>asdasd</p>', 'asda', 5, 0, 0, 1, 1, NULL, NULL, '2021-03-22 16:06:20', '2021-03-29 13:07:03', 1),
	(13, 6, 1, 1, '<p>sdasd</p>', 'asdasdas', 4, 0, 0, 1, 1, NULL, NULL, '2021-03-22 16:28:21', '2021-03-29 13:07:03', 1),
	(15, 6, 1, 2, '<p><img src="http://localhost/cbt/storage/website/lembaga/grandsbmptn/paket_soal/soal_6/c638e9d7cc0d457ab5c833e3fea8ae23.JPG" style="width: 25%;"><br></p>', 'dsadasds', 3, 0, 0, 0, 0, NULL, NULL, '2021-03-23 09:18:46', '2021-03-29 13:07:03', 1),
	(16, 6, 1, 3, '<p>sadasd</p>', '', 2, 0, 0, 1, 1, NULL, NULL, '2021-03-23 09:36:54', '2021-03-29 13:07:03', 1),
	(17, 6, 2, 4, '<p>asdasd<br />ini essay</p>', 'adasd', 1, 0, 0, 1, 1, '0abd0c38839a2e2f19f2d36a3760d8d7.mp3', 'audio/mpeg', '2021-03-23 10:02:11', '2021-03-29 13:07:03', 1),
	(18, 6, 2, 5, '<p><span class="note-math"><span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mo fence="true">?</mo><mtable rowspacing="0.1600em" columnalign="center center" columnspacing="1em"><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>a</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>b</mi></mstyle></mtd></mtr><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>c</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>d</mi></mstyle></mtd></mtr></mtable><mo fence="true">?</mo></mrow><annotation encoding="application/x-tex">\\begin{Vmatrix}\r\n   a &amp; b \\\\\r\n   c &amp; d\r\n\\end{Vmatrix}</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height: 2.41202em; vertical-align: -0.95002em;"></span><span class="minner"><span class="mopen"><span class="delimsizing mult"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.462em;"><span class="" style="top: -2.266em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span><span class="" style="top: -2.864em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="" style="height: 1.21602em; width: 0.556em;"><svg width="0.556em" height="1.2160199999999999em" style="width:0.556em" viewBox="0 0 556 1216" preserveAspectRatio="xMinYMin"><path d="M145 0 H188 V1216 H145z M145 0 H188 V1216 H145zM367 0 H410 V1216 H367z M367 0 H410 V1216 H367z"></path></svg></span></span><span class="" style="top: -4.07202em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95002em;"><span class=""></span></span></span></span></span></span><span class="mord"><span class="mtable"><span class="col-align-c"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.45em;"><span class="" style="top: -3.61em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathnormal">a</span></span></span><span class="" style="top: -2.41em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathnormal">c</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95em;"><span class=""></span></span></span></span></span><span class="arraycolsep" style="width: 0.5em;"></span><span class="arraycolsep" style="width: 0.5em;"></span><span class="col-align-c"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.45em;"><span class="" style="top: -3.61em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathnormal">b</span></span></span><span class="" style="top: -2.41em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathnormal">d</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95em;"><span class=""></span></span></span></span></span></span></span><span class="mclose"><span class="delimsizing mult"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.462em;"><span class="" style="top: -2.266em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span><span class="" style="top: -2.864em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="" style="height: 1.21602em; width: 0.556em;"><svg width="0.556em" height="1.2160199999999999em" style="width:0.556em" viewBox="0 0 556 1216" preserveAspectRatio="xMinYMin"><path d="M145 0 H188 V1216 H145z M145 0 H188 V1216 H145zM367 0 H410 V1216 H367z M367 0 H410 V1216 H367z"></path></svg></span></span><span class="" style="top: -4.07202em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95002em;"><span class=""></span></span></span></span></span></span></span></span></span></span><span class="note-latex" style="display: none;"></span></span><br></p>', '', 2, 0, 0, 1, 1, NULL, NULL, '2021-03-23 14:17:47', '2021-03-29 13:07:03', 1),
	(19, 6, 2, 6, '<p><span class="note-math"><span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mrow><mtable rowspacing="0.3600em" columnalign="left left" columnspacing="1em"><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>a</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mrow><mtext>if&nbsp;</mtext><mi>b</mi></mrow></mstyle></mtd></mtr><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>c</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mrow><mtext>if&nbsp;</mtext><mi>d</mi></mrow></mstyle></mtd></mtr></mtable><mo fence="true">}</mo></mrow><mo>?</mo><mo>…</mo></mrow><annotation encoding="application/x-tex">\\begin{rcases}\r\n   a &amp;\\text{if } b \\\\\r\n   c &amp;\\text{if } d\r\n\\end{rcases}?…</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height: 3.00003em; vertical-align: -1.25003em;"></span><span class="minner"><span class="mopen nulldelimiter"></span><span class="mord"><span class="mtable"><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.69em;"><span class="" style="top: -3.69em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord mathnormal">a</span></span></span><span class="" style="top: -2.25em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord mathnormal">c</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 1.19em;"><span class=""></span></span></span></span></span><span class="arraycolsep" style="width: 1em;"></span><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.69em;"><span class="" style="top: -3.69em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord text"><span class="mord">if&nbsp;</span></span><span class="mord mathnormal">b</span></span></span><span class="" style="top: -2.25em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord text"><span class="mord">if&nbsp;</span></span><span class="mord mathnormal">d</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 1.19em;"><span class=""></span></span></span></span></span></span></span><span class="mclose delimcenter" style="top: 0em;"><span class="delimsizing size4">}</span></span></span><span class="mspace" style="margin-right: 0.277778em;"></span><span class="mrel">?</span><span class="mspace" style="margin-right: 0.277778em;"></span></span><span class="base"><span class="strut" style="height: 0.12em; vertical-align: 0em;"></span><span class="minner">…</span></span></span></span><span class="note-latex" style="display: none;"></span></span><br></p>', '', 2, 0, 0, 1, 1, NULL, NULL, '2021-03-23 14:18:41', '2021-03-29 13:07:03', 1),
	(20, 6, 2, 7, '<p><span class="note-math"><span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mrow><mtable rowspacing="0.3600em" columnalign="left left" columnspacing="1em"><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>a</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mrow><mtext>if&nbsp;</mtext><mi>b</mi></mrow></mstyle></mtd></mtr><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>c</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mrow><mtext>if&nbsp;</mtext><mi>d</mi></mrow></mstyle></mtd></mtr></mtable><mo fence="true">}</mo></mrow><mo>?</mo><mo>…</mo></mrow><annotation encoding="application/x-tex">\\begin{rcases}\r\n   a &amp;\\text{if } b \\\\\r\n   c &amp;\\text{if } d\r\n\\end{rcases}?…</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height: 3.00003em; vertical-align: -1.25003em;"></span><span class="minner"><span class="mopen nulldelimiter"></span><span class="mord"><span class="mtable"><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.69em;"><span class="" style="top: -3.69em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord mathnormal">a</span></span></span><span class="" style="top: -2.25em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord mathnormal">c</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 1.19em;"><span class=""></span></span></span></span></span><span class="arraycolsep" style="width: 1em;"></span><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.69em;"><span class="" style="top: -3.69em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord text"><span class="mord">if&nbsp;</span></span><span class="mord mathnormal">b</span></span></span><span class="" style="top: -2.25em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord text"><span class="mord">if&nbsp;</span></span><span class="mord mathnormal">d</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 1.19em;"><span class=""></span></span></span></span></span></span></span><span class="mclose delimcenter" style="top: 0em;"><span class="delimsizing size4">}</span></span></span><span class="mspace" style="margin-right: 0.277778em;"></span><span class="mrel">?</span><span class="mspace" style="margin-right: 0.277778em;"></span></span><span class="base"><span class="strut" style="height: 0.12em; vertical-align: 0em;"></span><span class="minner">…</span></span></span></span><span class="note-latex" style="display: none;"></span></span><br></p>', 'sadas', 2, 0, 0, 1, 1, NULL, NULL, '2021-03-23 14:19:50', '2021-03-29 13:07:03', 1),
	(21, 6, 2, 8, '<p><span class="note-math"><span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><msub><mo>∑</mo><mstyle scriptlevel="1"><mtable rowspacing="0.1000em" columnalign="left" columnspacing="1em"><mtr><mtd><mstyle scriptlevel="1" displaystyle="false"><mrow><mi>i</mi><mo>∈</mo><mi mathvariant="normal">Λ</mi></mrow></mstyle></mtd></mtr><mtr><mtd><mstyle scriptlevel="1" displaystyle="false"><mrow><mn>0</mn><mo>&lt;</mo><mi>j</mi><mo>&lt;</mo><mi>n</mi></mrow></mstyle></mtd></mtr></mtable></mstyle></msub></mrow><annotation encoding="application/x-tex">	\\sum_{\r\n\\begin{subarray}{l}\r\n   i\\in\\Lambda\\\\\r\n   0&lt;j&lt;n\r\n\\end{subarray}}</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height: 1.6073em; vertical-align: -0.857303em;"></span><span class="mop"><span class="mop op-symbol small-op" style="position: relative; top: -5e-06em;">∑</span><span class="msupsub"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 0.3448em;"><span class="" style="top: -2.3448em; margin-left: 0em; margin-right: 0.05em;"><span class="pstrut" style="height: 2.77605em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mtight"><span class="mord mtight"><span class="mtable"><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.10865em;"><span class="" style="top: -3.12532em;"><span class="pstrut" style="height: 2.7em;"></span><span class="mord mtight"><span class="mord mathnormal mtight">i</span><span class="mrel mtight">∈</span><span class="mord mtight">Λ</span></span></span><span class="" style="top: -2.2858em;"><span class="pstrut" style="height: 2.7em;"></span><span class="mord mtight"><span class="mord mtight">0</span><span class="mrel mtight">&lt;</span><span class="mord mathnormal mtight" style="margin-right: 0.05724em;">j</span><span class="mrel mtight">&lt;</span><span class="mord mathnormal mtight">n</span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height: 0.608645em;"><span class=""></span></span></span></span></span></span></span></span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height: 0.857303em;"><span class=""></span></span></span></span></span></span></span></span></span><span class="note-latex" style="display: none;"></span></span><br></p>', 'sdad', 2, 0, 0, 1, 1, NULL, NULL, '2021-03-23 14:47:51', '2021-03-29 13:07:03', 1),
	(22, 6, 1, 9, '<p><img src="http://localhost/cbt/storage/website/lembaga/grandsbmptn/paket_soal/soal_6/2292a1dde8eab87f64b58b8cd0512f9b.png" style="width: 50%;"><br></p>', 'adds', 1, 0, 0, 0, 0, NULL, NULL, '2021-03-23 14:50:57', '2021-03-29 13:07:03', 1),
	(23, 6, 2, 10, '<p><img src="http://localhost/cbt/storage/website/lembaga/grandsbmptn/paket_soal/soal_6/220cb65834fc0f99e14a451f79398f94.JPG" style="width: 50%;"><br></p>', 'dasdas', 1, 0, 0, 0, 0, NULL, NULL, '2021-03-23 15:17:49', '2021-03-29 13:07:03', 1),
	(24, 6, 2, 11, '<p><span class="note-math"><span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mo fence="true">∥</mo><mtable rowspacing="0.1600em" columnalign="center center" columnspacing="1em"><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>a</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>b</mi></mstyle></mtd></mtr><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>c</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>d</mi></mstyle></mtd></mtr></mtable><mo fence="true">∥</mo></mrow><annotation encoding="application/x-tex">\\begin{Vmatrix}\r\n   a &amp; b \\\\\r\n   c &amp; d\r\n\\end{Vmatrix}</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height: 2.41202em; vertical-align: -0.95002em;"></span><span class="minner"><span class="mopen"><span class="delimsizing mult"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.462em;"><span class="" style="top: -2.266em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="delimsizinginner delim-size1"><span class="">∥</span></span></span><span class="" style="top: -2.864em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="" style="height: 1.21602em; width: 0.556em;"><svg width="0.556em" height="1.2160199999999999em" style="width:0.556em" viewBox="0 0 556 1216" preserveAspectRatio="xMinYMin"><path d="M145 0 H188 V1216 H145z M145 0 H188 V1216 H145zM367 0 H410 V1216 H367z M367 0 H410 V1216 H367z"></path></svg></span></span><span class="" style="top: -4.07202em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="delimsizinginner delim-size1"><span class="">∥</span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95002em;"><span class=""></span></span></span></span></span></span><span class="mord"><span class="mtable"><span class="col-align-c"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.45em;"><span class="" style="top: -3.61em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathnormal">a</span></span></span><span class="" style="top: -2.41em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathnormal">c</span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95em;"><span class=""></span></span></span></span></span><span class="arraycolsep" style="width: 0.5em;"></span><span class="arraycolsep" style="width: 0.5em;"></span><span class="col-align-c"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.45em;"><span class="" style="top: -3.61em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathnormal">b</span></span></span><span class="" style="top: -2.41em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathnormal">d</span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95em;"><span class=""></span></span></span></span></span></span></span><span class="mclose"><span class="delimsizing mult"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.462em;"><span class="" style="top: -2.266em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="delimsizinginner delim-size1"><span class="">∥</span></span></span><span class="" style="top: -2.864em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="" style="height: 1.21602em; width: 0.556em;"><svg width="0.556em" height="1.2160199999999999em" style="width:0.556em" viewBox="0 0 556 1216" preserveAspectRatio="xMinYMin"><path d="M145 0 H188 V1216 H145z M145 0 H188 V1216 H145zM367 0 H410 V1216 H367z M367 0 H410 V1216 H367z"></path></svg></span></span><span class="" style="top: -4.07202em;"><span class="pstrut" style="height: 3.21602em;"></span><span class="delimsizinginner delim-size1"><span class="">∥</span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95002em;"><span class=""></span></span></span></span></span></span></span></span></span></span><span class="note-latex" style="display: none;"></span></span><br></p>', 'asdsa', 1, 0, 0, 0, 0, NULL, NULL, '2021-03-23 15:50:16', '2021-03-29 13:07:03', 1),
	(30, 6, 2, 12, '<p>sdfsdfsdf ini 18</p>', '', 4, 0, 0, 1, 0, NULL, NULL, '2021-03-27 13:46:59', '2021-03-29 13:07:03', 1),
	(32, 6, 1, 18, '<p>Soal apa diatas?</p>', '', 2, 1, 1, 1, 0, NULL, NULL, '2021-04-13 09:28:54', NULL, 1),
	(34, 6, 2, 19, '<p>Manakah?</p>', '', 1, 0, 1, 0, 0, NULL, NULL, '2021-04-13 11:45:17', NULL, 1),
	(35, 6, 1, 20, 'Upload Excel', 'Excel', 1, 2, 1, 1, 1, NULL, NULL, '2021-04-13 15:39:44', NULL, 1),
	(40, 6, 1, 21, 'Upload Excel PG', 'Excel PG', 1, 4, 1, 1, 0, NULL, NULL, '2021-04-13 15:54:53', NULL, 1),
	(41, 6, 2, 22, 'Upload Excel Essay', 'Excel Essay', 2, 4, 1, 1, 0, NULL, NULL, '2021-04-13 15:54:54', NULL, 1),
	(43, 10, 1, 1, '', 'listening', 3, 6, NULL, 1, 1, NULL, NULL, '2021-04-24 07:23:50', '2021-04-24 07:26:26', 1),
	(44, 10, 1, 2, '', 'listening', 3, 6, 0, 1, 1, NULL, NULL, '2021-04-24 07:28:23', NULL, 1),
	(45, 10, 1, 3, '', 'listening', 3, 6, 0, 1, 1, NULL, NULL, '2021-04-24 07:29:32', NULL, 1),
	(46, 10, 1, 4, '', 'listening', 3, 6, 0, 1, 1, NULL, NULL, '2021-04-24 07:30:30', NULL, 1),
	(47, 10, 1, 5, '', 'listening', 3, 7, 0, 1, 1, NULL, NULL, '2021-04-24 07:31:44', NULL, 1),
	(48, 10, 1, 6, '', 'listening', 3, 7, 0, 1, 1, NULL, NULL, '2021-04-24 07:32:51', NULL, 1),
	(49, 10, 1, 7, '', 'listening', 3, 7, 0, 1, 1, NULL, NULL, '2021-04-24 07:33:47', NULL, 1),
	(50, 10, 1, 8, '', 'listening', 3, 7, 0, 1, 1, NULL, NULL, '2021-04-24 07:34:39', NULL, 1),
	(51, 10, 1, 9, '', 'listening', 3, 8, 0, 1, 1, NULL, NULL, '2021-04-24 07:35:36', NULL, 1),
	(52, 10, 1, 10, '', 'listening', 3, 8, 0, 1, 1, NULL, NULL, '2021-04-24 07:36:18', NULL, 1),
	(53, 10, 1, 11, '', 'listening', 3, 8, 0, 1, 1, NULL, NULL, '2021-04-24 07:37:04', NULL, 1),
	(54, 10, 1, 12, '', 'listening', 3, 8, 0, 1, 1, NULL, NULL, '2021-04-24 07:37:49', NULL, 1),
	(55, 10, 1, 13, '<p>_____ the demands of aerospace, medicine, and agriculture, aengineers, are creating exotic new metallic substances.</p>', 'structure', 3, 10, NULL, 1, 1, NULL, NULL, '2021-04-24 07:40:30', '2021-04-24 07:42:09', 1),
	(56, 10, 1, 14, '<p>_______ James A. Bland, “Carry Me Back to Old Virginny” was adopted is the state song of Virginia in 1940.<br></p>', 'structure', 3, 10, 0, 1, 1, NULL, NULL, '2021-04-24 07:53:40', NULL, 1),
	(57, 10, 1, 15, '<p>Mary Garden, ______ the early 1900’s was considered one of the best singing actresses of her time<br></p>', 'structure', 3, 10, NULL, 1, 1, NULL, NULL, '2021-04-24 07:54:31', '2021-04-24 08:03:38', 1),
	(58, 10, 1, 16, '<p>In the realm of psychological theory Margaret F. Washburn was a dualist _____ that motor phenomena have an essential role in psychology.<br></p>', 'structure', 3, 10, 0, 1, 1, NULL, NULL, '2021-04-24 08:09:53', NULL, 1),
	(59, 10, 1, 17, '<p><font color="#616161" face="Helvetica Neue, Helvetica, Arial, sans-serif"><span style="font-size: 14px;">Light can travels from the Sun to the Earth in eight minutes and twenty seconds.</span></font><br></p>', 'written', 3, 11, 0, 1, 1, NULL, NULL, '2021-04-24 08:12:44', NULL, 1),
	(60, 10, 1, 18, '<p>Every human typically have twenty-three pairs of chromosomes in most cells.<br></p>', 'written', 3, 11, 0, 1, 1, NULL, NULL, '2021-04-24 08:14:01', NULL, 1),
	(61, 10, 1, 19, '<p>In the sport of fencing, three type of swords are used : the foil, the epee, and the sabre.<br></p>', 'written', 3, 11, 0, 1, 1, NULL, NULL, '2021-04-24 08:15:41', NULL, 1),
	(62, 10, 1, 20, '<p>The Internal Revenue Service uses computers to check tax return computations, to determine the reasonableness of deductions, and for verifying the accuracy of reported income.<br></p>', 'written', 3, 11, 0, 1, 1, NULL, NULL, '2021-04-24 08:16:35', NULL, 1),
	(63, 10, 1, 21, '<p>This passage mainly<br></p>', 'reading', 3, 13, 4, 1, 1, NULL, NULL, '2021-04-24 08:18:39', '2021-04-24 15:33:03', 1),
	(64, 10, 1, 22, '<p>In which type of eclipse is the Sun obscured in its entirety?<br></p>', 'reading', 3, 13, 4, 1, 1, NULL, NULL, '2021-04-24 08:19:35', '2021-04-24 15:33:16', 1),
	(65, 10, 1, 23, '<p>The word “ring” in line 3 could best be replaced by<br></p>', 'reading', 3, 13, 4, 1, 1, NULL, NULL, '2021-04-24 08:20:22', '2021-04-24 15:33:29', 1),
	(66, 10, 1, 24, '<p>A “celestial body” in line 5 is most probably one that is found<br></p>', 'reading', 3, 13, 4, 0, 0, NULL, NULL, '2021-04-24 08:22:29', '2021-04-24 15:33:40', 1),
	(67, 10, 1, 25, '<p>The word “relative” in line 7 could best be replaced by<br></p>', 'reading', 3, 14, 5, 1, 1, NULL, NULL, '2021-04-24 08:23:26', '2021-04-24 15:33:51', 1),
	(68, 10, 1, 26, '<p>The passage states that which of the following happens during an eclipse?<br></p>', 'reading', 3, 14, 5, 1, 1, NULL, NULL, '2021-04-24 08:24:32', '2021-04-24 15:34:00', 1),
	(69, 10, 1, 27, '<p>In 1812, people most probably answered that the letters “U.S.” written on the barrels stood for “Uncle Sam” because<br></p>', 'reading', 3, 14, 5, 1, 1, NULL, NULL, '2021-04-24 08:25:26', '2021-04-24 15:34:10', 1),
	(70, 10, 1, 28, '<p>The word “which” in line 10 refers to<br></p>', 'reading', 3, 14, 5, 1, 1, NULL, NULL, '2021-04-24 08:27:09', '2021-04-24 15:34:24', 1);
/*!40000 ALTER TABLE `bank_soal` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.buku
CREATE TABLE IF NOT EXISTS `buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.buku: ~3 rows (approximately)
/*!40000 ALTER TABLE `buku` DISABLE KEYS */;
REPLACE INTO `buku` (`id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 'TOEFL', '2021-04-12 11:16:31', NULL, 1),
	(2, 'SBMPTN', '2021-04-12 11:16:39', NULL, 1),
	(3, 'CPNS', '2021-04-12 11:16:45', NULL, 1);
/*!40000 ALTER TABLE `buku` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.ci_sessions
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.ci_sessions: 0 rows
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.config_buku
CREATE TABLE IF NOT EXISTS `config_buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buku_id` int(11) NOT NULL,
  `free_paket` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `desc` text DEFAULT '',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `buku_id_config` (`buku_id`),
  CONSTRAINT `buku_id_config` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.config_buku: ~3 rows (approximately)
/*!40000 ALTER TABLE `config_buku` DISABLE KEYS */;
REPLACE INTO `config_buku` (`id`, `buku_id`, `free_paket`, `price`, `desc`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 1, 2, 50000, '', '2021-04-17 12:48:01', NULL, 1),
	(2, 2, 2, 60000, '<p><font color="#000000"><span style="\\&quot;background-color:">Dalam paket ini, nantinya anda akan mendapatkan <b>50 Paket Soal Latihan</b> yang berkaitan dengan <b>SBMPTN</b>, Tidak hanya mendapatkan Paket Soal yang bisa anda kerjakan, tetapi mendapatkan modul pembelajaran dalam bentuk <b>Softfile, Video, DLL</b> Dijamin bikin makin siap dalam <b>menghadapi Tes SBMPTN nantinya</b>.</span></font></p>', '2021-04-17 12:48:11', '2021-04-30 11:40:39', 1),
	(3, 3, 2, 50000, '', '2021-04-17 12:48:22', NULL, 1);
/*!40000 ALTER TABLE `config_buku` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.config_buku_detail
CREATE TABLE IF NOT EXISTS `config_buku_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_buku_group_id` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `config_buku_id` int(11) NOT NULL,
  `detail_buku_id` int(11) DEFAULT 0,
  `name` varchar(200) NOT NULL DEFAULT '',
  `type_file` int(2) NOT NULL COMMENT '1 Gambar, 2 Audio, 3 Video, 4 Text, 5 Link, 6 File',
  `nama_file` text NOT NULL DEFAULT '',
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `buku_id_detail` (`buku_id`),
  KEY `config_buku_group_detail` (`config_buku_group_id`),
  KEY `config_buku_id_detail` (`config_buku_id`),
  CONSTRAINT `buku_id_detail` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`),
  CONSTRAINT `config_buku_group_detail` FOREIGN KEY (`config_buku_group_id`) REFERENCES `config_buku_group` (`id`),
  CONSTRAINT `config_buku_id_detail` FOREIGN KEY (`config_buku_id`) REFERENCES `config_buku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.config_buku_detail: ~2 rows (approximately)
/*!40000 ALTER TABLE `config_buku_detail` DISABLE KEYS */;
REPLACE INTO `config_buku_detail` (`id`, `config_buku_group_id`, `buku_id`, `config_buku_id`, `detail_buku_id`, `name`, `type_file`, `nama_file`, `created_date`, `updated_date`, `is_enable`) VALUES
	(3, 1, 2, 2, 0, 'PDF Sosiologi', 6, '2b492d950655cca0d7e2a55956f0dbb6.pdf', '2021-05-02 14:49:45', NULL, 1),
	(4, 1, 2, 2, 0, 'Presentasi Ekonomi', 6, '1a4429c44a317ba90bc1c6b895d9e5a3.pptx', '2021-05-02 14:54:38', NULL, 1);
/*!40000 ALTER TABLE `config_buku_detail` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.config_buku_group
CREATE TABLE IF NOT EXISTS `config_buku_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_buku_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `config_buku_group` (`config_buku_id`),
  CONSTRAINT `config_buku_group` FOREIGN KEY (`config_buku_id`) REFERENCES `config_buku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.config_buku_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `config_buku_group` DISABLE KEYS */;
REPLACE INTO `config_buku_group` (`id`, `config_buku_id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 2, 'PDF', '2021-05-02 13:53:38', '2021-05-02 14:09:14', 1);
/*!40000 ALTER TABLE `config_buku_group` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.detail_buku
CREATE TABLE IF NOT EXISTS `detail_buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buku_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `buku_id_detail_buku` (`buku_id`),
  CONSTRAINT `buku_id_detail_buku` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.detail_buku: ~2 rows (approximately)
/*!40000 ALTER TABLE `detail_buku` DISABLE KEYS */;
REPLACE INTO `detail_buku` (`id`, `buku_id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 2, 'SAINTEK', '2021-04-12 11:39:50', NULL, 1),
	(2, 2, 'SOSHUM', '2021-04-12 11:39:58', NULL, 1);
/*!40000 ALTER TABLE `detail_buku` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.detail_konversi_skor
CREATE TABLE IF NOT EXISTS `detail_konversi_skor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `konversi_skor_id` int(11) NOT NULL,
  `skor_asal` int(4) NOT NULL,
  `skor_konversi` int(4) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `konversi_skor_id` (`konversi_skor_id`),
  CONSTRAINT `konversi_skor_id` FOREIGN KEY (`konversi_skor_id`) REFERENCES `konversi_skor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.detail_konversi_skor: ~146 rows (approximately)
/*!40000 ALTER TABLE `detail_konversi_skor` DISABLE KEYS */;
REPLACE INTO `detail_konversi_skor` (`id`, `konversi_skor_id`, `skor_asal`, `skor_konversi`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 1, 3, 45, '2021-04-14 13:11:27', '2021-04-14 13:11:39', 0),
	(7, 1, 0, 32, '2021-04-14 13:24:48', NULL, 0),
	(8, 1, 1, 40, '2021-04-14 13:24:48', NULL, 0),
	(9, 1, 0, 24, '2021-04-24 06:58:17', NULL, 1),
	(10, 1, 1, 25, '2021-04-24 06:58:17', NULL, 1),
	(11, 1, 2, 26, '2021-04-24 06:58:18', NULL, 1),
	(12, 1, 3, 27, '2021-04-24 06:58:18', NULL, 1),
	(13, 1, 4, 28, '2021-04-24 06:58:18', NULL, 1),
	(14, 1, 5, 29, '2021-04-24 06:58:18', NULL, 1),
	(15, 1, 6, 30, '2021-04-24 06:58:18', NULL, 1),
	(16, 1, 7, 31, '2021-04-24 06:58:18', NULL, 1),
	(17, 1, 8, 32, '2021-04-24 06:58:18', NULL, 1),
	(18, 1, 9, 32, '2021-04-24 06:58:18', NULL, 1),
	(19, 1, 10, 33, '2021-04-24 06:58:18', NULL, 1),
	(20, 1, 11, 35, '2021-04-24 06:58:18', NULL, 1),
	(21, 1, 12, 37, '2021-04-24 06:58:18', NULL, 1),
	(22, 1, 13, 38, '2021-04-24 06:58:18', NULL, 1),
	(23, 1, 14, 40, '2021-04-24 06:58:18', NULL, 1),
	(24, 1, 15, 41, '2021-04-24 06:58:18', NULL, 1),
	(25, 1, 16, 41, '2021-04-24 06:58:18', NULL, 1),
	(26, 1, 17, 42, '2021-04-24 06:58:18', NULL, 1),
	(27, 1, 18, 43, '2021-04-24 06:58:18', NULL, 1),
	(28, 1, 19, 44, '2021-04-24 06:58:18', NULL, 1),
	(29, 1, 20, 45, '2021-04-24 06:58:19', NULL, 1),
	(30, 1, 21, 45, '2021-04-24 06:58:19', NULL, 1),
	(31, 1, 22, 46, '2021-04-24 06:58:19', NULL, 1),
	(32, 1, 23, 47, '2021-04-24 06:58:19', NULL, 1),
	(33, 1, 24, 47, '2021-04-24 06:58:19', NULL, 1),
	(34, 1, 25, 48, '2021-04-24 06:58:19', NULL, 1),
	(35, 1, 26, 48, '2021-04-24 06:58:19', NULL, 1),
	(36, 1, 27, 49, '2021-04-24 06:58:19', NULL, 1),
	(37, 1, 28, 49, '2021-04-24 06:58:19', NULL, 1),
	(38, 1, 29, 50, '2021-04-24 06:58:19', NULL, 1),
	(39, 1, 30, 51, '2021-04-24 06:58:19', NULL, 1),
	(40, 1, 31, 51, '2021-04-24 06:58:19', NULL, 1),
	(41, 1, 32, 52, '2021-04-24 06:58:19', NULL, 1),
	(42, 1, 33, 52, '2021-04-24 06:58:19', NULL, 1),
	(43, 1, 34, 53, '2021-04-24 06:58:19', NULL, 1),
	(44, 1, 35, 54, '2021-04-24 06:58:19', NULL, 1),
	(45, 1, 36, 54, '2021-04-24 06:58:19', NULL, 1),
	(46, 1, 37, 55, '2021-04-24 06:58:19', NULL, 1),
	(47, 1, 38, 56, '2021-04-24 06:58:19', NULL, 1),
	(48, 1, 39, 57, '2021-04-24 06:58:19', NULL, 1),
	(49, 1, 40, 57, '2021-04-24 06:58:19', NULL, 1),
	(50, 1, 41, 58, '2021-04-24 06:58:20', NULL, 1),
	(51, 1, 42, 59, '2021-04-24 06:58:20', NULL, 1),
	(52, 1, 43, 60, '2021-04-24 06:58:20', NULL, 1),
	(53, 1, 44, 61, '2021-04-24 06:58:20', NULL, 1),
	(54, 1, 45, 62, '2021-04-24 06:58:20', NULL, 1),
	(55, 1, 46, 63, '2021-04-24 06:58:20', NULL, 1),
	(56, 1, 47, 65, '2021-04-24 06:58:20', NULL, 1),
	(57, 1, 48, 66, '2021-04-24 06:58:20', NULL, 1),
	(58, 1, 49, 67, '2021-04-24 06:58:20', NULL, 1),
	(59, 1, 50, 68, '2021-04-24 06:58:20', NULL, 1),
	(60, 5, 0, 21, '2021-04-24 06:59:42', NULL, 1),
	(61, 5, 1, 22, '2021-04-24 06:59:42', NULL, 1),
	(62, 5, 2, 23, '2021-04-24 06:59:42', NULL, 1),
	(63, 5, 3, 23, '2021-04-24 06:59:42', NULL, 1),
	(64, 5, 4, 24, '2021-04-24 06:59:42', NULL, 1),
	(65, 5, 5, 25, '2021-04-24 06:59:42', NULL, 1),
	(66, 5, 6, 26, '2021-04-24 06:59:42', NULL, 1),
	(67, 5, 7, 27, '2021-04-24 06:59:42', NULL, 1),
	(68, 5, 8, 28, '2021-04-24 06:59:42', NULL, 1),
	(69, 5, 9, 28, '2021-04-24 06:59:42', NULL, 1),
	(70, 5, 10, 29, '2021-04-24 06:59:43', NULL, 1),
	(71, 5, 11, 30, '2021-04-24 06:59:43', NULL, 1),
	(72, 5, 12, 31, '2021-04-24 06:59:43', NULL, 1),
	(73, 5, 13, 32, '2021-04-24 06:59:43', NULL, 1),
	(74, 5, 14, 34, '2021-04-24 06:59:43', NULL, 1),
	(75, 5, 15, 35, '2021-04-24 06:59:43', NULL, 1),
	(76, 5, 16, 36, '2021-04-24 06:59:43', NULL, 1),
	(77, 5, 17, 37, '2021-04-24 06:59:43', NULL, 1),
	(78, 5, 18, 38, '2021-04-24 06:59:43', NULL, 1),
	(79, 5, 19, 39, '2021-04-24 06:59:43', NULL, 1),
	(80, 5, 20, 40, '2021-04-24 06:59:43', NULL, 1),
	(81, 5, 21, 41, '2021-04-24 06:59:43', NULL, 1),
	(82, 5, 22, 42, '2021-04-24 06:59:43', NULL, 1),
	(83, 5, 23, 43, '2021-04-24 06:59:43', NULL, 1),
	(84, 5, 24, 43, '2021-04-24 06:59:43', NULL, 1),
	(85, 5, 25, 44, '2021-04-24 06:59:43', NULL, 1),
	(86, 5, 26, 45, '2021-04-24 06:59:43', NULL, 1),
	(87, 5, 27, 46, '2021-04-24 06:59:43', NULL, 1),
	(88, 5, 28, 46, '2021-04-24 06:59:44', NULL, 1),
	(89, 5, 29, 47, '2021-04-24 06:59:44', NULL, 1),
	(90, 5, 30, 48, '2021-04-24 06:59:44', NULL, 1),
	(91, 5, 31, 48, '2021-04-24 06:59:44', NULL, 1),
	(92, 5, 32, 49, '2021-04-24 06:59:44', NULL, 1),
	(93, 5, 33, 50, '2021-04-24 06:59:44', NULL, 1),
	(94, 5, 34, 51, '2021-04-24 06:59:44', NULL, 1),
	(95, 5, 35, 52, '2021-04-24 06:59:44', NULL, 1),
	(96, 5, 36, 52, '2021-04-24 06:59:44', NULL, 1),
	(97, 5, 37, 53, '2021-04-24 06:59:44', NULL, 1),
	(98, 5, 38, 54, '2021-04-24 06:59:44', NULL, 1),
	(99, 5, 39, 54, '2021-04-24 06:59:44', NULL, 1),
	(100, 5, 40, 55, '2021-04-24 06:59:44', NULL, 1),
	(101, 5, 41, 56, '2021-04-24 06:59:44', NULL, 1),
	(102, 5, 42, 57, '2021-04-24 06:59:44', NULL, 1),
	(103, 5, 43, 58, '2021-04-24 06:59:44', NULL, 1),
	(104, 5, 44, 59, '2021-04-24 06:59:44', NULL, 1),
	(105, 5, 45, 60, '2021-04-24 06:59:44', NULL, 1),
	(106, 5, 46, 61, '2021-04-24 06:59:44', NULL, 1),
	(107, 5, 47, 63, '2021-04-24 06:59:45', NULL, 1),
	(108, 5, 48, 65, '2021-04-24 06:59:45', NULL, 1),
	(109, 5, 49, 66, '2021-04-24 06:59:45', NULL, 1),
	(110, 5, 50, 67, '2021-04-24 06:59:45', NULL, 1),
	(111, 4, 0, 20, '2021-04-24 07:00:36', NULL, 1),
	(112, 4, 1, 20, '2021-04-24 07:00:36', NULL, 1),
	(113, 4, 2, 21, '2021-04-24 07:00:36', NULL, 1),
	(114, 4, 3, 22, '2021-04-24 07:00:37', NULL, 1),
	(115, 4, 4, 23, '2021-04-24 07:00:37', NULL, 1),
	(116, 4, 5, 25, '2021-04-24 07:00:37', NULL, 1),
	(117, 4, 6, 26, '2021-04-24 07:00:37', NULL, 1),
	(118, 4, 7, 27, '2021-04-24 07:00:37', NULL, 1),
	(119, 4, 8, 29, '2021-04-24 07:00:37', NULL, 1),
	(120, 4, 9, 31, '2021-04-24 07:00:37', NULL, 1),
	(121, 4, 10, 33, '2021-04-24 07:00:37', NULL, 1),
	(122, 4, 11, 35, '2021-04-24 07:00:37', NULL, 1),
	(123, 4, 12, 36, '2021-04-24 07:00:37', NULL, 1),
	(124, 4, 13, 37, '2021-04-24 07:00:37', NULL, 1),
	(125, 4, 14, 38, '2021-04-24 07:00:38', NULL, 1),
	(126, 4, 15, 40, '2021-04-24 07:00:38', NULL, 1),
	(127, 4, 16, 40, '2021-04-24 07:00:38', NULL, 1),
	(128, 4, 17, 41, '2021-04-24 07:00:38', NULL, 1),
	(129, 4, 18, 42, '2021-04-24 07:00:38', NULL, 1),
	(130, 4, 19, 43, '2021-04-24 07:00:38', NULL, 1),
	(131, 4, 20, 44, '2021-04-24 07:00:38', NULL, 1),
	(132, 4, 21, 45, '2021-04-24 07:00:38', NULL, 1),
	(133, 4, 22, 46, '2021-04-24 07:00:38', NULL, 1),
	(134, 4, 23, 47, '2021-04-24 07:00:38', NULL, 1),
	(135, 4, 24, 48, '2021-04-24 07:00:38', NULL, 1),
	(136, 4, 25, 49, '2021-04-24 07:00:38', NULL, 1),
	(137, 4, 26, 50, '2021-04-24 07:00:38', NULL, 1),
	(138, 4, 27, 51, '2021-04-24 07:00:38', NULL, 1),
	(139, 4, 28, 52, '2021-04-24 07:00:38', NULL, 1),
	(140, 4, 29, 53, '2021-04-24 07:00:38', NULL, 1),
	(141, 4, 30, 54, '2021-04-24 07:00:39', NULL, 1),
	(142, 4, 31, 55, '2021-04-24 07:00:39', NULL, 1),
	(143, 4, 32, 56, '2021-04-24 07:00:39', NULL, 1),
	(144, 4, 33, 57, '2021-04-24 07:00:39', NULL, 1),
	(145, 4, 34, 58, '2021-04-24 07:00:39', NULL, 1),
	(146, 4, 35, 60, '2021-04-24 07:00:39', NULL, 1),
	(147, 4, 36, 61, '2021-04-24 07:00:39', NULL, 1),
	(148, 4, 37, 63, '2021-04-24 07:00:39', NULL, 1),
	(149, 4, 38, 65, '2021-04-24 07:00:39', NULL, 1),
	(150, 4, 39, 67, '2021-04-24 07:00:39', NULL, 1),
	(151, 4, 40, 68, '2021-04-24 07:00:39', NULL, 1);
/*!40000 ALTER TABLE `detail_konversi_skor` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.detail_mode_jawaban
CREATE TABLE IF NOT EXISTS `detail_mode_jawaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_mode_jwb_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `group_mode_jawaban` (`group_mode_jwb_id`),
  CONSTRAINT `group_mode_jawaban` FOREIGN KEY (`group_mode_jwb_id`) REFERENCES `group_mode_jawaban` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.detail_mode_jawaban: ~4 rows (approximately)
/*!40000 ALTER TABLE `detail_mode_jawaban` DISABLE KEYS */;
REPLACE INTO `detail_mode_jawaban` (`id`, `group_mode_jwb_id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 1, 'AB', '2021-04-15 00:00:00', NULL, 1),
	(2, 1, 'ABC', '2021-03-19 00:00:00', NULL, 1),
	(3, 1, 'ABCD', '2021-03-19 00:00:00', NULL, 1),
	(4, 1, 'ABCDE', '2021-03-19 00:00:00', NULL, 1);
/*!40000 ALTER TABLE `detail_mode_jawaban` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.group_kelas
CREATE TABLE IF NOT EXISTS `group_kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.group_kelas: ~9 rows (approximately)
/*!40000 ALTER TABLE `group_kelas` DISABLE KEYS */;
REPLACE INTO `group_kelas` (`id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 'SD', '2021-03-19 00:00:00', NULL, 1),
	(2, 'SMP', '2021-03-19 00:00:00', NULL, 1),
	(3, 'SMA', '2021-03-19 00:00:00', NULL, 1),
	(4, 'SMK', '2021-03-19 00:00:00', NULL, 1),
	(6, 'MA', '2021-03-19 00:00:00', NULL, 1),
	(7, 'DIPLOMA', '2021-03-19 00:00:00', NULL, 1),
	(8, 'STRATA', '2021-03-19 00:00:00', NULL, 1),
	(9, 'PAKET', '2021-03-19 00:00:00', NULL, 1),
	(10, 'UMUM', '2021-03-19 00:00:00', NULL, 1);
/*!40000 ALTER TABLE `group_kelas` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.group_mode_jawaban
CREATE TABLE IF NOT EXISTS `group_mode_jawaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.group_mode_jawaban: ~2 rows (approximately)
/*!40000 ALTER TABLE `group_mode_jawaban` DISABLE KEYS */;
REPLACE INTO `group_mode_jawaban` (`id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 'PILIHAN GANDA', '2021-03-20 00:00:00', NULL, 1),
	(2, 'ESSAY', '2021-03-20 00:00:00', NULL, 1);
/*!40000 ALTER TABLE `group_mode_jawaban` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.group_peserta
CREATE TABLE IF NOT EXISTS `group_peserta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lembaga_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `lembaga_group_peserta` (`lembaga_id`),
  CONSTRAINT `lembaga_group_peserta` FOREIGN KEY (`lembaga_id`) REFERENCES `lembaga` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.group_peserta: ~2 rows (approximately)
/*!40000 ALTER TABLE `group_peserta` DISABLE KEYS */;
REPLACE INTO `group_peserta` (`id`, `lembaga_id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 2, 'Madrasah 1', '2021-03-30 10:28:32', '2021-03-31 12:56:53', 1),
	(10, 2, 'Munjair', '2021-04-06 13:47:07', NULL, 1);
/*!40000 ALTER TABLE `group_peserta` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.group_soal
CREATE TABLE IF NOT EXISTS `group_soal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paket_soal_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT 'Akan terisi id parent pada child group',
  `konversi_skor_id` int(11) DEFAULT NULL,
  `kode_group` varchar(100) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `petunjuk` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tipe_file` varchar(255) DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Bukan parent group 1 parent group',
  `is_continuous` tinyint(1) NOT NULL DEFAULT 0,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `paket_soal_id_group` (`paket_soal_id`),
  CONSTRAINT `paket_soal_id_group` FOREIGN KEY (`paket_soal_id`) REFERENCES `paket_soal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.group_soal: ~13 rows (approximately)
/*!40000 ALTER TABLE `group_soal` DISABLE KEYS */;
REPLACE INTO `group_soal` (`id`, `paket_soal_id`, `parent_id`, `konversi_skor_id`, `kode_group`, `name`, `petunjuk`, `file`, `tipe_file`, `is_parent`, `is_continuous`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 6, 0, 0, 'PENALARAN UMUM', 'PENALARAN UMUM', '<p><font color="#3f4254"><span style="font-size: 14px;"><b>Perhatikan audio berikut ini!</b></span></font><br></p>', '73f8fc7cf016250b862e7cb9584148d7.mp3', 'audio/mpeg', 0, 1, '2021-04-12 19:40:52', '2021-04-13 10:30:25', 1),
	(2, 6, 1, 0, 'PENALARAN UMUM 2', 'PENALARAN UMUM 2', '<p>PENALARAN UMUM 2<br></p>', NULL, NULL, 0, 0, '2021-04-12 19:42:34', NULL, 1),
	(4, 6, 0, 0, 'SOAL BACAAN', 'SOAL BACAAN', '<p>Baca dengan teliti sebelum menjawab</p>', NULL, NULL, 0, 0, '2021-04-13 09:59:52', NULL, 1),
	(5, 10, 0, 1, 'LISTENING', 'Listening Comprehension', '<p>In this section of the test, you will have an opportunity to demonstrate your ability to understand conversations and talks in English. The are three parts to this section. Answer all the questions on the basis of what is stated or implied by the speakers you hear. Do not take notes or write in your test book at any time. Do not turn the pages until you are told to do so.</p>', NULL, NULL, 0, 0, '2021-04-24 06:50:15', NULL, 1),
	(6, 10, 5, 1, 'LISTENING PART A', 'Listening Part A', '<p>Perhatikan soal audio part A berikut ...</p>', '098c892cea10bd342948c83e981d0f57.mp3', 'audio/mpeg', 0, 0, '2021-04-24 06:51:31', '2021-04-24 07:24:49', 1),
	(7, 10, 5, 1, 'LISTENING PART  B', 'Listening Part B', '<p>Perhatikan soal audio part B berikut ...<br></p>', 'bf256ae984c6d783f59c139eb7cbb0c9.mp3', 'audio/mpeg', 0, 0, '2021-04-24 06:53:33', '2021-04-24 07:24:57', 1),
	(8, 10, 5, 1, 'LISTENING PART C', 'Listening Part C', '<p>Perhatikan soal audio part C berikut ...<br></p>', '91c5c627971266fc16e1ca651b88728c.mp3', 'audio/mpeg', 0, 0, '2021-04-24 06:54:59', '2021-04-24 07:25:08', 1),
	(9, 10, 0, 4, 'STRUCTURE AND WRITTEN', 'Structure And Written Expression', '<p>This section is designed to measure your ability to recognize language that is appropriate for standard written english. There are two types of questions in this section. With special directions for each type.</p>', NULL, NULL, 0, 0, '2021-04-24 07:07:26', '2021-04-24 07:08:15', 1),
	(10, 10, 9, 4, 'STRUCTURE', 'Structure', '', NULL, NULL, 0, 0, '2021-04-24 07:09:58', '2021-04-24 07:41:32', 1),
	(11, 10, 9, 4, 'WRITTEN', 'Written', '', NULL, NULL, 0, 0, '2021-04-24 07:11:16', '2021-04-24 07:41:40', 1),
	(12, 10, 0, 5, 'READING COMPREHENSION', 'Reading Comprehension', '<p>this section you will read several passages. Each one is followed ...</p>', NULL, NULL, 0, 0, '2021-04-24 07:15:10', NULL, 1),
	(13, 10, 12, 5, 'QUESTION21-24', 'Questions 21-24', '', NULL, NULL, 0, 0, '2021-04-24 07:16:21', '2021-04-24 07:16:41', 1),
	(14, 10, 12, 5, 'QUESTIONS25-28', 'Questions 25-28', '', NULL, NULL, 0, 0, '2021-04-24 07:17:02', NULL, 1);
/*!40000 ALTER TABLE `group_soal` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.hit_mutation
CREATE TABLE IF NOT EXISTS `hit_mutation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `mutation_id` varchar(50) NOT NULL,
  `token` varchar(50) DEFAULT NULL,
  `post_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `mutation_id` (`mutation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table candraaj_cbt.hit_mutation: ~0 rows (approximately)
/*!40000 ALTER TABLE `hit_mutation` DISABLE KEYS */;
/*!40000 ALTER TABLE `hit_mutation` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.invoice
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(14) NOT NULL DEFAULT '',
  `payment_method_id` int(11) NOT NULL,
  `payment_method_name` varchar(10) NOT NULL DEFAULT '',
  `payment_method_detail_id` int(11) NOT NULL,
  `payment_method_detail_name` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL DEFAULT '',
  `user_email` varchar(175) NOT NULL DEFAULT '',
  `user_no_telp` varchar(13) NOT NULL DEFAULT '',
  `buku_id` int(11) NOT NULL,
  `detail_buku_id` int(11) DEFAULT NULL,
  `invoice_total_cost` int(11) NOT NULL,
  `kode_unik` int(3) NOT NULL DEFAULT 300,
  `invoice_date_create` datetime NOT NULL,
  `invoice_date_expirate` datetime NOT NULL,
  `invoice_date_update` datetime DEFAULT NULL,
  `confirm_image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Submit, 1 Upload Confirm, 2 Success, 3 Expired, 4 Reject, 5 Revisi',
  `reject_desc` varchar(1000) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `voucher_name` varchar(150) DEFAULT NULL,
  `voucher_potongan` int(8) DEFAULT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `payment_method_id_inv` (`payment_method_id`),
  KEY `payment_method_detail_inv` (`payment_method_detail_id`),
  KEY `user_id_inv` (`user_id`),
  KEY `buku_id_inv` (`buku_id`),
  CONSTRAINT `buku_id_inv` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`),
  CONSTRAINT `payment_method_detail_inv` FOREIGN KEY (`payment_method_detail_id`) REFERENCES `payment_method_detail` (`id`),
  CONSTRAINT `payment_method_id_inv` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`),
  CONSTRAINT `user_id_inv` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.invoice: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
REPLACE INTO `invoice` (`id`, `invoice_number`, `payment_method_id`, `payment_method_name`, `payment_method_detail_id`, `payment_method_detail_name`, `user_id`, `user_name`, `user_email`, `user_no_telp`, `buku_id`, `detail_buku_id`, `invoice_total_cost`, `kode_unik`, `invoice_date_create`, `invoice_date_expirate`, `invoice_date_update`, `confirm_image`, `status`, `reject_desc`, `voucher_id`, `voucher_name`, `voucher_potongan`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(16, '202105025397-2', 1, 'BANK', 2, 'BNI - Mohammad Fakhrulzami - 0619303221', 30, 'Temam Murbianto', 'lucknutdev@gmail.com', '085826046070', 2, 1, 48317, 317, '2021-05-02 12:22:37', '2021-05-03 12:22:37', '2021-05-03 20:37:32', '202105025397-2.jpg', 2, NULL, 1, 'BMPT88', 12000, '2021-05-02 12:22:37', '2021-05-03 20:37:32', 1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.jawaban
CREATE TABLE IF NOT EXISTS `jawaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_soal_id` int(11) NOT NULL,
  `order` int(1) DEFAULT NULL,
  `name` longtext NOT NULL DEFAULT '',
  `score` int(11) NOT NULL DEFAULT 0,
  `is_key` tinyint(1) NOT NULL DEFAULT 0,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `bank_soal_id` (`bank_soal_id`),
  CONSTRAINT `bank_soal_id` FOREIGN KEY (`bank_soal_id`) REFERENCES `bank_soal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.jawaban: ~156 rows (approximately)
/*!40000 ALTER TABLE `jawaban` DISABLE KEYS */;
REPLACE INTO `jawaban` (`id`, `bank_soal_id`, `order`, `name`, `score`, `is_key`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(21, 8, 1, '<p>pleci ajah</p>', 1, 1, '2021-03-22 15:22:58', '2021-03-29 13:22:32', 1),
	(22, 8, 2, '<p>lobert</p>', 0, 0, '2021-03-22 15:22:58', '2021-03-29 13:22:32', 1),
	(23, 8, 3, '<p>perkutut</p>', 0, 0, '2021-03-22 15:22:58', '2021-03-29 13:22:32', 1),
	(24, 8, 4, '<p>cucak rowo</p>', 0, 0, '2021-03-22 15:22:58', '2021-03-29 13:22:32', 1),
	(25, 10, 1, '<p>sadasdas</p>', 0, 0, '2021-03-22 15:59:44', '2021-03-29 13:07:03', 1),
	(26, 10, 2, '<p>asdasd</p>', 0, 0, '2021-03-22 15:59:44', '2021-03-29 13:07:03', 1),
	(27, 10, 3, '<p>asdasd</p>', 1, 1, '2021-03-22 15:59:44', '2021-03-29 13:07:03', 1),
	(28, 10, 4, '<p>asdasd</p>', 0, 0, '2021-03-22 15:59:44', '2021-03-29 13:07:03', 1),
	(29, 11, 1, '<p>aa</p>', 0, 0, '2021-03-22 16:04:49', '2021-03-29 13:07:03', 1),
	(30, 11, 2, '<p>aa</p>', 0, 0, '2021-03-22 16:04:49', '2021-03-29 13:07:03', 1),
	(31, 11, 3, '<p>aa</p>', 0, 0, '2021-03-22 16:04:49', '2021-03-29 13:07:03', 1),
	(32, 11, 4, '<p>aa</p>', 1, 1, '2021-03-22 16:04:49', '2021-03-29 13:07:03', 1),
	(33, 12, 1, '<p>asdas</p>', 0, 0, '2021-03-22 16:06:20', '2021-03-29 13:07:03', 1),
	(34, 12, 2, '<p>asdasd</p>', 0, 0, '2021-03-22 16:06:20', '2021-03-29 13:07:03', 1),
	(35, 12, 3, '<p>asdasd</p>', 0, 0, '2021-03-22 16:06:20', '2021-03-29 13:07:03', 1),
	(36, 12, 4, '<p>asdasd</p>', 1, 1, '2021-03-22 16:06:20', '2021-03-29 13:07:03', 1),
	(37, 13, 1, '<p>asdasd</p>', 0, 0, '2021-03-22 16:28:21', '2021-03-29 13:07:03', 1),
	(38, 13, 2, '<p>asdasd</p>', 0, 0, '2021-03-22 16:28:21', '2021-03-29 13:07:03', 1),
	(39, 13, 3, '<p>asdasd</p>', 0, 0, '2021-03-22 16:28:21', '2021-03-29 13:07:03', 1),
	(40, 13, 4, '<p>adasd</p>', 1, 1, '2021-03-22 16:28:21', '2021-03-29 13:07:03', 1),
	(41, 15, 1, '<p>dassd<img src="http://localhost/cbt/storage/website/lembaga/grandsbmptn/paket_soal/soal_6/1faa2cdbfcff87c0371c1515bbeaa798.png" style="width: 25%;"></p>', 1, 1, '2021-03-23 09:18:46', '2021-03-29 13:07:03', 1),
	(42, 15, 2, '<p>sadasdas</p>', 0, 0, '2021-03-23 09:18:46', '2021-03-29 13:07:03', 1),
	(43, 15, 3, '<p>asdasd</p>', 0, 0, '2021-03-23 09:18:46', '2021-03-29 13:07:03', 1),
	(44, 15, 4, '<p><span class="note-math"><span class="katex"><span class="katex-mathml"><math><semantics><mrow><mo fence="true">?</mo><mtable><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>a</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>b</mi></mstyle></mtd></mtr><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>c</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>d</mi></mstyle></mtd></mtr></mtable><mo fence="true">?</mo></mrow><annotation encoding="application/x-tex">\\begin{Vmatrix}    a &amp;amp; b \\\\    c &amp;amp; d \\end{Vmatrix}</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height: 2.424em; vertical-align: -0.95002em;"></span><span class="minner"><span class="mopen"><span class="delimsizing mult"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.47398em;"><span class="" style="top: -1.65598em;"><span class="pstrut" style="height: 2.606em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span><span class="" style="top: -2.26198em;"><span class="pstrut" style="height: 2.606em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span><span class="" style="top: -2.86798em;"><span class="pstrut" style="height: 2.606em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span><span class="" style="top: -3.47398em;"><span class="pstrut" style="height: 2.606em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95002em;"><span class=""></span></span></span></span></span></span><span class="mord"><span class="mtable"><span class="col-align-c"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.45em;"><span class="" style="top: -3.61em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathit">a</span></span></span><span class="" style="top: -2.41em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathit">c</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95em;"><span class=""></span></span></span></span></span><span class="arraycolsep" style="width: 0.5em;"></span><span class="arraycolsep" style="width: 0.5em;"></span><span class="col-align-c"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.45em;"><span class="" style="top: -3.61em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathit">b</span></span></span><span class="" style="top: -2.41em;"><span class="pstrut" style="height: 3em;"></span><span class="mord"><span class="mord mathit">d</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95em;"><span class=""></span></span></span></span></span></span></span><span class="mclose"><span class="delimsizing mult"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.47398em;"><span class="" style="top: -1.65598em;"><span class="pstrut" style="height: 2.606em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span><span class="" style="top: -2.26198em;"><span class="pstrut" style="height: 2.606em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span><span class="" style="top: -2.86798em;"><span class="pstrut" style="height: 2.606em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span><span class="" style="top: -3.47398em;"><span class="pstrut" style="height: 2.606em;"></span><span class="delimsizinginner delim-size1"><span class="">?</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 0.95002em;"><span class=""></span></span></span></span></span></span></span></span></span></span><span class="note-latex" style="display: none;"></span></span><br></p>', 0, 0, '2021-03-23 09:18:46', '2021-03-29 13:07:03', 1),
	(45, 16, 1, '<p>sdsad</p>', 0, 0, '2021-03-23 09:36:54', '2021-03-29 13:07:03', 1),
	(46, 16, 2, '<p>asdasd</p>', 1, 1, '2021-03-23 09:36:54', '2021-03-29 13:07:03', 1),
	(47, 16, 3, '<p>asdasd</p>', 0, 0, '2021-03-23 09:36:54', '2021-03-29 13:07:03', 1),
	(48, 16, 4, '<p>asdasd</p>', 0, 0, '2021-03-23 09:36:54', '2021-03-29 13:07:03', 1),
	(49, 22, 1, '<p><img src="http://localhost/cbt/storage/website/lembaga/grandsbmptn/paket_soal/soal_6/5e82fb273cf1a71d23e33f0f56a7ec3f.png" style="width: 25%;"><br></p>', 0, 0, '2021-03-23 14:50:58', '2021-03-29 13:07:03', 1),
	(50, 22, 2, '<p>sdsa</p>', 0, 1, '2021-03-23 14:50:58', '2021-03-29 13:07:03', 1),
	(51, 22, 3, '<p>asd</p>', 0, 0, '2021-03-23 14:50:58', '2021-03-29 13:07:03', 1),
	(52, 22, 4, '<p><img src="http://localhost/cbt/storage/website/lembaga/grandsbmptn/paket_soal/soal_6/79584b06c308bef95f38bc68c99c824f.png" style="width: 50%;"><br></p>', 0, 0, '2021-03-23 14:50:58', '2021-03-29 13:07:03', 1),
	(53, 32, 1, '<p>Cerita</p>', 0, 1, '2021-04-13 09:28:54', NULL, 1),
	(54, 32, 2, '<p>Cerita<br></p>', 0, 0, '2021-04-13 09:28:54', NULL, 1),
	(55, 32, 3, '<p>Cerita<br></p>', 0, 0, '2021-04-13 09:28:54', NULL, 1),
	(56, 32, 4, '<p>Cerita<br></p>', 0, 0, '2021-04-13 09:28:54', NULL, 1),
	(57, 35, 1, 'Excel A', 1, 1, '2021-04-13 15:39:44', NULL, 1),
	(58, 35, 2, 'Excel B', 0, 0, '2021-04-13 15:39:44', NULL, 1),
	(59, 35, 3, 'Excel C', 0, 0, '2021-04-13 15:39:44', NULL, 1),
	(60, 35, 4, 'Excel D', 0, 0, '2021-04-13 15:39:44', NULL, 1),
	(72, 40, 1, 'Excel A', 0, 0, '2021-04-13 15:54:53', NULL, 1),
	(73, 40, 2, 'Excel B', 0, 0, '2021-04-13 15:54:53', NULL, 1),
	(74, 40, 3, 'Excel C', 1, 1, '2021-04-13 15:54:53', NULL, 1),
	(75, 40, 4, 'Excel D', 0, 0, '2021-04-13 15:54:53', NULL, 1),
	(76, 43, 1, '<p>It is a slumber party<br></p>', 1, 1, '2021-04-24 07:23:50', NULL, 1),
	(77, 43, 2, '<p>It is a costume party<br></p>', 0, 0, '2021-04-24 07:23:50', NULL, 1),
	(78, 43, 3, '<p>It is about making a cake<br></p>', 0, 0, '2021-04-24 07:23:50', NULL, 1),
	(79, 43, 4, '<p>It is a dance party<br></p>', 0, 0, '2021-04-24 07:23:50', NULL, 1),
	(80, 44, 1, '<p>It is a fancy dress party<br></p>', 1, 1, '2021-04-24 07:28:23', NULL, 1),
	(81, 44, 2, '<p>&nbsp;It is next Saturday<br></p>', 0, 0, '2021-04-24 07:28:23', NULL, 1),
	(82, 44, 3, '<p>&nbsp;It is next Sunday<br></p>', 0, 0, '2021-04-24 07:28:23', NULL, 1),
	(83, 44, 4, '<p>There is going to be music and dancing<br></p>', 0, 0, '2021-04-24 07:28:23', NULL, 1),
	(84, 45, 1, '<p>It is Sarah’s party<br></p>', 1, 1, '2021-04-24 07:29:32', NULL, 1),
	(85, 45, 2, '<p>&nbsp;It is Judy’s party<br></p>', 0, 0, '2021-04-24 07:29:32', NULL, 1),
	(86, 45, 3, '<p>&nbsp;It is Audy’s party<br></p>', 0, 0, '2021-04-24 07:29:32', NULL, 1),
	(87, 45, 4, '<p>&nbsp;It is Koko’s party<br></p>', 0, 0, '2021-04-24 07:29:32', NULL, 1),
	(88, 46, 1, '<p>he wants to be alone<br></p>', 0, 0, '2021-04-24 07:30:30', NULL, 1),
	(89, 46, 2, '<p>he wants to be fun<br></p>', 1, 1, '2021-04-24 07:30:30', NULL, 1),
	(90, 46, 3, '<p>he wants to go to a soccer match<br></p>', 0, 0, '2021-04-24 07:30:30', NULL, 1),
	(91, 46, 4, '<p>he doesn’t like thrillers<br></p>', 0, 0, '2021-04-24 07:30:30', NULL, 1),
	(92, 47, 1, '<p>Rebecca usually practices the drums on weekdays.<br></p>', 0, 0, '2021-04-24 07:31:44', NULL, 1),
	(93, 47, 2, '<p>Rebecca is interested in Science.<br></p>', 0, 0, '2021-04-24 07:31:44', NULL, 1),
	(94, 47, 3, '<p>Rebecca has got a music group at school.<br></p>', 1, 1, '2021-04-24 07:31:44', NULL, 1),
	(95, 47, 4, '<p>Rebecca and his friends like watching thrillers.<br></p>', 0, 0, '2021-04-24 07:31:44', NULL, 1),
	(96, 48, 1, '<p>What time does Rebecca get up on weekdays?<br></p>', 0, 0, '2021-04-24 07:32:51', NULL, 1),
	(97, 48, 2, '<p>Which school subjects does Rebecca like?<br></p>', 0, 0, '2021-04-24 07:32:51', NULL, 1),
	(98, 48, 3, '<p>What music types does Rebecca like?<br></p>', 0, 0, '2021-04-24 07:32:51', NULL, 1),
	(99, 48, 4, '<p>Where does Rebecca eat her lunch?<br></p>', 1, 1, '2021-04-24 07:32:51', NULL, 1),
	(100, 49, 1, '<p>Rebecca likes playing badminton.<br></p>', 1, 1, '2021-04-24 07:33:47', NULL, 1),
	(101, 49, 2, '<p>Rebecca likes playing soccer.<br></p>', 0, 0, '2021-04-24 07:33:47', NULL, 1),
	(102, 49, 3, '<p>Rebecca likes playing racing.<br></p>', 0, 0, '2021-04-24 07:33:47', NULL, 1),
	(103, 49, 4, '<p>Rebecca likes playing ball.<br></p>', 0, 0, '2021-04-24 07:33:47', NULL, 1),
	(104, 50, 1, '<p>2007<br></p>', 0, 0, '2021-04-24 07:34:39', NULL, 1),
	(105, 50, 2, '<p>he was born<br></p>', 0, 0, '2021-04-24 07:34:39', NULL, 1),
	(106, 50, 3, '<p>his started driving<br></p>', 1, 1, '2021-04-24 07:34:39', NULL, 1),
	(107, 50, 4, '<p>&nbsp;very young age<br></p>', 0, 0, '2021-04-24 07:34:39', NULL, 1),
	(108, 51, 1, '<p>has developed under the influence of musical theatre<br></p>', 1, 1, '2021-04-24 07:35:36', NULL, 1),
	(109, 51, 2, '<p>is a drama sung with the accompaniment of an orchestra<br></p>', 0, 0, '2021-04-24 07:35:36', NULL, 1),
	(110, 51, 3, '<p>is not a high-budget production<br></p>', 0, 0, '2021-04-24 07:35:36', NULL, 1),
	(111, 51, 4, '<p>is often performed in Europe<br></p>', 0, 0, '2021-04-24 07:35:36', NULL, 1),
	(112, 52, 1, '<p>is the most complex of all the performing arts<br></p>', 0, 0, '2021-04-24 07:36:18', NULL, 1),
	(113, 52, 2, '<p>people are captivated more by opera than musical theatre<br></p>', 0, 0, '2021-04-24 07:36:18', NULL, 1),
	(114, 52, 3, '<p>drama in opera is more important than the music<br></p>', 1, 1, '2021-04-24 07:36:18', NULL, 1),
	(115, 52, 4, '<p>orchestras in operas can vary considerably in size<br></p>', 0, 0, '2021-04-24 07:36:18', NULL, 1),
	(116, 53, 1, '<p>there is an argument over whether the music is important or the words in opera<br></p>', 0, 1, '2021-04-24 07:37:04', NULL, 1),
	(117, 53, 2, '<p>acting and costumes are secondary to music in musical theatre<br></p>', 0, 0, '2021-04-24 07:37:04', NULL, 1),
	(118, 53, 3, '<p>music in musical theatre is not as important as it is in opera<br></p>', 0, 0, '2021-04-24 07:37:04', NULL, 1),
	(119, 53, 4, '<p>opera doesn’t have any properties in common with musical theatre<br></p>', 0, 0, '2021-04-24 07:37:04', NULL, 1),
	(120, 54, 1, '<p>don’t want to be with us as much as we want to be with them<br></p>', 0, 0, '2021-04-24 07:37:49', NULL, 1),
	(121, 54, 2, '<p>&nbsp;means that they are better adapted to their environment than we are<br></p>', 1, 1, '2021-04-24 07:37:49', NULL, 1),
	(122, 54, 3, '<p>shows that dolphins have a very sophisticated form of communication<br></p>', 0, 0, '2021-04-24 07:37:49', NULL, 1),
	(123, 54, 4, '<p>&nbsp;proves that Dolphins have linguistic skills far beyond what we previously thought<br></p>', 0, 0, '2021-04-24 07:37:49', NULL, 1),
	(124, 55, 1, '<p>Meet<br></p>', 0, 0, '2021-04-24 07:40:30', NULL, 1),
	(125, 55, 2, '<p>Being met are<br></p>', 0, 0, '2021-04-24 07:40:30', NULL, 1),
	(126, 55, 3, '<p>To meet<br></p>', 0, 0, '2021-04-24 07:40:30', NULL, 1),
	(127, 55, 4, '<p>They are meeting<br></p>', 1, 1, '2021-04-24 07:40:30', NULL, 1),
	(128, 56, 1, '<p>Was written b<br></p>', 1, 1, '2021-04-24 07:53:40', NULL, 1),
	(129, 56, 2, '<p>His writing was<br></p>', 0, 0, '2021-04-24 07:53:40', NULL, 1),
	(130, 56, 3, '<p>He wrote the<br></p>', 0, 0, '2021-04-24 07:53:40', NULL, 1),
	(131, 56, 4, '<p>Written by<br></p>', 0, 0, '2021-04-24 07:53:40', NULL, 1),
	(132, 57, 1, '<p>a soprano was popular<br></p>', 0, 0, '2021-04-24 07:54:31', '2021-04-24 08:03:38', 1),
	(133, 57, 2, '<p>in a popular soprano<br></p>', 1, 1, '2021-04-24 07:54:31', '2021-04-24 08:03:38', 1),
	(134, 57, 3, '<p>was a popular soprano<br></p>', 0, 0, '2021-04-24 07:54:31', '2021-04-24 08:03:38', 1),
	(135, 57, 4, '<p>a popular soprano in<br></p>', 0, 0, '2021-04-24 07:54:31', '2021-04-24 08:03:38', 1),
	(136, 58, 1, '<p>who she believed<br></p>', 0, 0, '2021-04-24 08:09:53', NULL, 1),
	(137, 58, 2, '<p>who believed<br></p>', 1, 1, '2021-04-24 08:09:53', NULL, 1),
	(138, 58, 3, '<p>believed<br></p>', 0, 0, '2021-04-24 08:09:53', NULL, 1),
	(139, 58, 4, '<p>who did she believe<br></p>', 0, 0, '2021-04-24 08:09:53', NULL, 1),
	(140, 59, 1, '<p>Light<br></p>', 0, 0, '2021-04-24 08:12:44', NULL, 1),
	(141, 59, 2, '<p>travels<br></p>', 1, 1, '2021-04-24 08:12:44', NULL, 1),
	(142, 59, 3, '<p>the Sun<br></p>', 0, 0, '2021-04-24 08:12:44', NULL, 1),
	(143, 59, 4, '<p>in eight minutes</p>', 0, 0, '2021-04-24 08:12:44', NULL, 1),
	(144, 60, 1, '<p>typically<br></p>', 0, 0, '2021-04-24 08:14:01', NULL, 1),
	(145, 60, 2, '<p>have<br></p>', 1, 1, '2021-04-24 08:14:01', NULL, 1),
	(146, 60, 3, '<p>pairs of<br></p>', 0, 0, '2021-04-24 08:14:01', NULL, 1),
	(147, 60, 4, '<p>most cells</p><div><br></div>', 0, 0, '2021-04-24 08:14:01', NULL, 1),
	(148, 61, 1, '<p>In the<br></p>', 0, 0, '2021-04-24 08:15:41', NULL, 1),
	(149, 61, 2, '<p>sport<br></p>', 0, 0, '2021-04-24 08:15:41', NULL, 1),
	(150, 61, 3, '<p>type<br></p>', 1, 1, '2021-04-24 08:15:41', NULL, 1),
	(151, 61, 4, '<p>are used</p>', 0, 0, '2021-04-24 08:15:41', NULL, 1),
	(152, 62, 1, '<p>uses<br></p>', 0, 0, '2021-04-24 08:16:35', NULL, 1),
	(153, 62, 2, '<p>computations<br></p>', 0, 0, '2021-04-24 08:16:35', NULL, 1),
	(154, 62, 3, '<p>for verifying<br></p>', 1, 1, '2021-04-24 08:16:35', NULL, 1),
	(155, 62, 4, '<p>reported income<br></p>', 0, 0, '2021-04-24 08:16:35', NULL, 1),
	(156, 63, 1, '<p>Describes how long an eclipse will last<br></p>', 0, 0, '2021-04-24 08:18:39', '2021-04-24 15:33:04', 1),
	(157, 63, 2, '<p>Gives facts about the Moon<br></p>', 0, 0, '2021-04-24 08:18:39', '2021-04-24 15:33:04', 1),
	(158, 63, 3, '<p>Explains how the Sun is able to obscure the Moon</p>', 0, 0, '2021-04-24 08:18:39', '2021-04-24 15:33:04', 1),
	(159, 63, 4, '<p>Informs the reader about solar eclipse<br></p>', 1, 1, '2021-04-24 08:18:39', '2021-04-24 15:33:04', 1),
	(160, 64, 1, '<p>A partial eclipse<br></p>', 0, 0, '2021-04-24 08:19:35', '2021-04-24 15:33:17', 1),
	(161, 64, 2, '<p>An annular eclipse</p>', 0, 0, '2021-04-24 08:19:35', '2021-04-24 15:33:17', 1),
	(162, 64, 3, '<p>A total eclipse<br></p>', 1, 1, '2021-04-24 08:19:35', '2021-04-24 15:33:17', 1),
	(163, 64, 4, '<p>A celestial eclipse<br></p>', 0, 0, '2021-04-24 08:19:35', '2021-04-24 15:33:17', 1),
	(164, 65, 1, '<p>Piece of gold</p>', 1, 1, '2021-04-24 08:20:22', '2021-04-24 15:33:29', 1),
	(165, 65, 2, '<p>Circle<br></p>', 0, 0, '2021-04-24 08:20:22', '2021-04-24 15:33:29', 1),
	(166, 65, 3, '<p>Jewel<br></p>', 0, 0, '2021-04-24 08:20:22', '2021-04-24 15:33:29', 1),
	(167, 65, 4, '<p>Bell<br></p>', 0, 0, '2021-04-24 08:20:22', '2021-04-24 15:33:29', 1),
	(168, 66, 1, '<p>Within the Moon’s shadow</p>', 0, 0, '2021-04-24 08:22:29', '2021-04-24 15:33:40', 1),
	(169, 66, 2, '<p>Somewhere in the sky<br></p>', 0, 0, '2021-04-24 08:22:29', '2021-04-24 15:33:40', 1),
	(170, 66, 3, '<p>On the surface of the Sun<br></p>', 0, 0, '2021-04-24 08:22:29', '2021-04-24 15:33:40', 1),
	(171, 66, 4, '<p>Inside Earth’s atmosphere<br></p>', 1, 1, '2021-04-24 08:22:29', '2021-04-24 15:33:40', 1),
	(172, 67, 1, '<p>Familial</p>', 1, 1, '2021-04-24 08:23:26', '2021-04-24 15:33:51', 1),
	(173, 67, 2, '<p>Infinite<br></p>', 0, 0, '2021-04-24 08:23:26', '2021-04-24 15:33:51', 1),
	(174, 67, 3, '<p>Comparative<br></p>', 0, 0, '2021-04-24 08:23:26', '2021-04-24 15:33:51', 1),
	(175, 67, 4, '<p>Paternal<br></p>', 0, 0, '2021-04-24 08:23:26', '2021-04-24 15:33:51', 1),
	(176, 68, 1, '<p>The Moon hides from the Sun<br></p>', 0, 0, '2021-04-24 08:24:33', '2021-04-24 15:34:00', 1),
	(177, 68, 2, '<p>The Moon is obscured by the Sun<br></p>', 0, 0, '2021-04-24 08:24:33', '2021-04-24 15:34:00', 1),
	(178, 68, 3, '<p>The Moon begins moving at a speed of 6 kilometers per second</p>', 1, 1, '2021-04-24 08:24:33', '2021-04-24 15:34:00', 1),
	(179, 68, 4, '<p>The Moon’s shadow crosses Earth<br></p>', 0, 0, '2021-04-24 08:24:33', '2021-04-24 15:34:00', 1),
	(180, 69, 1, '<p>Congress required it</p>', 1, 1, '2021-04-24 08:25:26', '2021-04-24 15:34:10', 1),
	(181, 69, 2, '<p>Samuel Wilson was their favorite uncle<br></p>', 0, 0, '2021-04-24 08:25:26', '2021-04-24 15:34:10', 1),
	(182, 69, 3, '<p>Sam Wilson preferred it<br></p>', 0, 0, '2021-04-24 08:25:26', '2021-04-24 15:34:10', 1),
	(183, 69, 4, '<p>They were not exactly sure what the letters meant<br></p>', 0, 0, '2021-04-24 08:25:26', '2021-04-24 15:34:10', 1),
	(184, 70, 1, '<p>Regular jobs</p>', 1, 1, '2021-04-24 08:27:09', '2021-04-24 15:34:24', 1),
	(185, 70, 2, '<p>The Maple Leaf Club<br></p>', 0, 0, '2021-04-24 08:27:09', '2021-04-24 15:34:24', 1),
	(186, 70, 3, '<p>Sedalia, Missouri<br></p>', 0, 0, '2021-04-24 08:27:09', '2021-04-24 15:34:24', 1),
	(187, 70, 4, '<p>500 compositions<br></p>', 0, 0, '2021-04-24 08:27:09', '2021-04-24 15:34:24', 1);
/*!40000 ALTER TABLE `jawaban` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_kelas_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `group_kelas` (`group_kelas_id`),
  CONSTRAINT `group_kelas` FOREIGN KEY (`group_kelas_id`) REFERENCES `group_kelas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.kelas: ~27 rows (approximately)
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
REPLACE INTO `kelas` (`id`, `group_kelas_id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 1, 'KELAS 1', '2021-03-19 00:00:00', NULL, 1),
	(2, 1, 'KELAS 2', '2021-03-19 00:00:00', NULL, 1),
	(3, 1, 'KELAS 3', '2021-03-19 00:00:00', NULL, 1),
	(4, 1, 'KELAS 4', '2021-03-19 00:00:00', NULL, 1),
	(5, 1, 'KELAS 5', '2021-03-19 00:00:00', NULL, 1),
	(6, 1, 'KELAS 6', '2021-03-19 00:00:00', NULL, 1),
	(7, 2, 'KELAS 7', '2021-03-19 00:00:00', NULL, 1),
	(8, 2, 'KELAS 8', '2021-03-19 00:00:00', NULL, 1),
	(9, 2, 'KELAS 9', '2021-03-19 00:00:00', NULL, 1),
	(10, 3, 'KELAS 10', '2021-03-19 00:00:00', NULL, 1),
	(11, 3, 'KELAS 11', '2021-03-19 00:00:00', NULL, 1),
	(12, 3, 'KELAS 12', '2021-03-19 00:00:00', NULL, 1),
	(13, 4, 'KELAS 10', '2021-03-19 00:00:00', NULL, 1),
	(14, 4, 'KELAS 11', '2021-03-19 00:00:00', NULL, 1),
	(15, 4, 'KELAS 12', '2021-03-19 00:00:00', NULL, 1),
	(16, 6, 'KELAS 10', '2021-03-19 00:00:00', NULL, 1),
	(17, 6, 'KELAS 11', '2021-03-19 00:00:00', NULL, 1),
	(18, 6, 'KELAS 12', '2021-03-19 00:00:00', NULL, 1),
	(19, 7, '3', '2021-03-19 00:00:00', NULL, 1),
	(20, 7, '4', '2021-03-19 00:00:00', NULL, 1),
	(21, 8, 'S1 (SARJANA)', '2021-03-19 00:00:00', NULL, 1),
	(22, 8, 'S2 (MAGISTER)', '2021-03-19 00:00:00', NULL, 1),
	(23, 8, 'S3 (DOKTOR)', '2021-03-19 00:00:00', NULL, 1),
	(24, 9, 'A', '2021-03-19 00:00:00', NULL, 1),
	(25, 9, 'B', '2021-03-19 00:00:00', NULL, 1),
	(26, 9, 'C', '2021-03-19 00:00:00', NULL, 1),
	(27, 10, 'UMUM', '2021-03-19 00:00:00', NULL, 1);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.kode_unik
CREATE TABLE IF NOT EXISTS `kode_unik` (
  `id` tinyint(1) NOT NULL DEFAULT 0,
  `number` int(3) NOT NULL,
  `updated_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.kode_unik: ~1 rows (approximately)
/*!40000 ALTER TABLE `kode_unik` DISABLE KEYS */;
REPLACE INTO `kode_unik` (`id`, `number`, `updated_datetime`) VALUES
	(1, 318, '2021-04-22 17:01:34');
/*!40000 ALTER TABLE `kode_unik` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.konversi_skor
CREATE TABLE IF NOT EXISTS `konversi_skor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.konversi_skor: ~5 rows (approximately)
/*!40000 ALTER TABLE `konversi_skor` DISABLE KEYS */;
REPLACE INTO `konversi_skor` (`id`, `name`, `created_by`, `created_datetime`, `updated_by`, `updated_datetime`, `is_enable`) VALUES
	(1, 'Konversi Skor Listening', 0, '2021-04-13 13:14:45', NULL, '2021-04-24 06:57:11', 1),
	(2, 'Konversi Skor SBMPTN', 0, '2021-04-14 13:07:59', NULL, NULL, 1),
	(3, 'Konversi Skor', 0, '2021-04-14 13:08:16', NULL, NULL, 0),
	(4, 'Konversi Skor Structure', 0, '2021-04-24 06:58:54', NULL, NULL, 1),
	(5, 'Konversi Skor Reading', 0, '2021-04-24 06:59:09', NULL, NULL, 1);
/*!40000 ALTER TABLE `konversi_skor` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.kota_kab
CREATE TABLE IF NOT EXISTS `kota_kab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.kota_kab: ~512 rows (approximately)
/*!40000 ALTER TABLE `kota_kab` DISABLE KEYS */;
REPLACE INTO `kota_kab` (`id`, `name`, `created_datetime`, `update_datetime`, `is_enable`) VALUES
	(1, 'KAB.KEPULAUAN SERIBU', '2021-03-30 12:31:02', NULL, 1),
	(2, 'KOTA JAKARTA PUSAT', '2021-03-30 12:31:02', NULL, 1),
	(3, 'KOTA JAKARTA UTARA', '2021-03-30 12:31:02', NULL, 1),
	(4, 'KOTA JAKARTA BARAT', '2021-03-30 12:31:02', NULL, 1),
	(5, 'KOTA JAKARTA SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(6, 'KAB.BOGOR', '2021-03-30 12:31:02', NULL, 1),
	(7, 'KAB.SUKABUMI', '2021-03-30 12:31:02', NULL, 1),
	(8, 'KAB.CIANJUR', '2021-03-30 12:31:02', NULL, 1),
	(9, 'KAB.BANDUNG', '2021-03-30 12:31:02', NULL, 1),
	(10, 'KAB.SUMEDANG', '2021-03-30 12:31:02', NULL, 1),
	(11, 'KAB.GARUT', '2021-03-30 12:31:02', NULL, 1),
	(12, 'KAB.TASIKMALAYA', '2021-03-30 12:31:02', NULL, 1),
	(13, 'KAB.CIAMIS', '2021-03-30 12:31:02', NULL, 1),
	(14, 'KAB.KUNINGAN', '2021-03-30 12:31:02', NULL, 1),
	(15, 'KAB.MAJALENGKA', '2021-03-30 12:31:02', NULL, 1),
	(16, 'KAB.CIREBON', '2021-03-30 12:31:02', NULL, 1),
	(17, 'KAB.INDRAMAYU', '2021-03-30 12:31:02', NULL, 1),
	(18, 'KAB.SUBANG', '2021-03-30 12:31:02', NULL, 1),
	(19, 'KAB.PURWAKARTA', '2021-03-30 12:31:02', NULL, 1),
	(20, 'KAB.KARAWANG', '2021-03-30 12:31:02', NULL, 1),
	(21, 'KAB.BEKASI', '2021-03-30 12:31:02', NULL, 1),
	(22, 'KAB.BANDUNG BARAT', '2021-03-30 12:31:02', NULL, 1),
	(23, 'KAB.PANGANDARAN', '2021-03-30 12:31:02', NULL, 1),
	(24, 'KOTA BANDUNG', '2021-03-30 12:31:02', NULL, 1),
	(25, 'KOTA BOGOR', '2021-03-30 12:31:02', NULL, 1),
	(26, 'KOTA SUKABUMI', '2021-03-30 12:31:02', NULL, 1),
	(27, 'KOTA CIREBON', '2021-03-30 12:31:02', NULL, 1),
	(28, 'KOTA BEKASI', '2021-03-30 12:31:02', NULL, 1),
	(29, 'KOTA DEPOK', '2021-03-30 12:31:02', NULL, 1),
	(30, 'KOTA CIMAHI', '2021-03-30 12:31:02', NULL, 1),
	(31, 'KOTA TASIKMALAYA', '2021-03-30 12:31:02', NULL, 1),
	(32, 'KOTA BANJAR', '2021-03-30 12:31:02', NULL, 1),
	(33, 'KAB.CILACAP', '2021-03-30 12:31:02', NULL, 1),
	(34, 'KAB.BANYUMAS', '2021-03-30 12:31:02', NULL, 1),
	(35, 'KAB.PURBALINGGA', '2021-03-30 12:31:02', NULL, 1),
	(36, 'KAB.BANJARNEGARA', '2021-03-30 12:31:02', NULL, 1),
	(37, 'KAB.KEBUMEN', '2021-03-30 12:31:02', NULL, 1),
	(38, 'KAB.PURWOREJO', '2021-03-30 12:31:02', NULL, 1),
	(39, 'KAB.WONOSOBO', '2021-03-30 12:31:02', NULL, 1),
	(40, 'KAB.MAGELANG', '2021-03-30 12:31:02', NULL, 1),
	(41, 'KAB.BOYOLALI', '2021-03-30 12:31:02', NULL, 1),
	(42, 'KAB.KLATEN', '2021-03-30 12:31:02', NULL, 1),
	(43, 'KAB.SUKOHARJO', '2021-03-30 12:31:02', NULL, 1),
	(44, 'KAB.WONOGIRI', '2021-03-30 12:31:02', NULL, 1),
	(45, 'KAB.KARANGANYAR', '2021-03-30 12:31:02', NULL, 1),
	(46, 'KAB.SRAGEN', '2021-03-30 12:31:02', NULL, 1),
	(47, 'KAB.GROBOGAN', '2021-03-30 12:31:02', NULL, 1),
	(48, 'KAB.BLORA', '2021-03-30 12:31:02', NULL, 1),
	(49, 'KAB.REMBANG', '2021-03-30 12:31:02', NULL, 1),
	(50, 'KAB.PATI', '2021-03-30 12:31:02', NULL, 1),
	(51, 'KAB.KUDUS', '2021-03-30 12:31:02', NULL, 1),
	(52, 'KAB.JEPARA', '2021-03-30 12:31:02', NULL, 1),
	(53, 'KAB.DEMAK', '2021-03-30 12:31:02', NULL, 1),
	(54, 'KAB.SEMARANG', '2021-03-30 12:31:02', NULL, 1),
	(55, 'KAB.TEMANGGUNG', '2021-03-30 12:31:02', NULL, 1),
	(56, 'KAB.KENDAL', '2021-03-30 12:31:02', NULL, 1),
	(57, 'KAB.BATANG', '2021-03-30 12:31:02', NULL, 1),
	(58, 'KAB.PEKALONGAN', '2021-03-30 12:31:02', NULL, 1),
	(59, 'KAB.PEMALANG', '2021-03-30 12:31:02', NULL, 1),
	(60, 'KAB.TEGAL', '2021-03-30 12:31:02', NULL, 1),
	(61, 'KAB.BREBES', '2021-03-30 12:31:02', NULL, 1),
	(62, 'KOTA MAGELANG', '2021-03-30 12:31:02', NULL, 1),
	(63, 'KOTA SURAKARTA', '2021-03-30 12:31:02', NULL, 1),
	(64, 'KOTA SALATIGA', '2021-03-30 12:31:02', NULL, 1),
	(65, 'KOTA SEMARANG', '2021-03-30 12:31:02', NULL, 1),
	(66, 'KOTA PEKALONGAN', '2021-03-30 12:31:02', NULL, 1),
	(67, 'KOTA TEGAL', '2021-03-30 12:31:02', NULL, 1),
	(68, 'KAB.BANTUL', '2021-03-30 12:31:02', NULL, 1),
	(69, 'KAB.SLEMAN', '2021-03-30 12:31:02', NULL, 1),
	(70, 'KAB.GUNUNG KIDUL', '2021-03-30 12:31:02', NULL, 1),
	(71, 'KAB.KULON PROGO', '2021-03-30 12:31:02', NULL, 1),
	(72, 'KOTA YOGYAKARTA', '2021-03-30 12:31:02', NULL, 1),
	(73, 'KAB.GRESIK', '2021-03-30 12:31:02', NULL, 1),
	(74, 'KAB. SIDOARJO', '2021-03-30 12:31:02', NULL, 1),
	(75, 'KAB.MOJOKERTO', '2021-03-30 12:31:02', NULL, 1),
	(76, 'KAB. JOMBANG', '2021-03-30 12:31:02', NULL, 1),
	(77, 'KAB. BOJONEGORO', '2021-03-30 12:31:02', NULL, 1),
	(78, 'KAB.TUBAN', '2021-03-30 12:31:02', NULL, 1),
	(79, 'KAB. LAMONGAN', '2021-03-30 12:31:02', NULL, 1),
	(80, 'KAB.MADIUN', '2021-03-30 12:31:02', NULL, 1),
	(81, 'KAB.NGAWI', '2021-03-30 12:31:02', NULL, 1),
	(82, 'KAB.MAGETAN', '2021-03-30 12:31:02', NULL, 1),
	(83, 'KAB.PONOROGO', '2021-03-30 12:31:02', NULL, 1),
	(84, 'KAB. PACITAN', '2021-03-30 12:31:02', NULL, 1),
	(85, 'KAB. KEDIRI', '2021-03-30 12:31:02', NULL, 1),
	(86, 'KAB. NGANJUK', '2021-03-30 12:31:02', NULL, 1),
	(87, 'KAB. BLITAR', '2021-03-30 12:31:02', NULL, 1),
	(88, 'KAB.TULUNGAGUNG', '2021-03-30 12:31:02', NULL, 1),
	(89, 'KAB.TRENGGALEK', '2021-03-30 12:31:02', NULL, 1),
	(90, 'KAB.MALANG', '2021-03-30 12:31:02', NULL, 1),
	(91, 'KAB.PASURUAN', '2021-03-30 12:31:02', NULL, 1),
	(92, 'KAB.PROBOLINGGO', '2021-03-30 12:31:02', NULL, 1),
	(93, 'KAB.LUMAJANG', '2021-03-30 12:31:02', NULL, 1),
	(94, 'KAB.BONDOWOSO', '2021-03-30 12:31:02', NULL, 1),
	(95, 'KAB.SITUBONDO', '2021-03-30 12:31:02', NULL, 1),
	(96, 'KAB.JEMBER', '2021-03-30 12:31:02', NULL, 1),
	(97, 'KAB.BANYUWANGI', '2021-03-30 12:31:02', NULL, 1),
	(98, 'KAB. PAMEKASAN', '2021-03-30 12:31:02', NULL, 1),
	(99, 'KAB. SAMPANG', '2021-03-30 12:31:02', NULL, 1),
	(100, 'KAB. SUMENEP', '2021-03-30 12:31:02', NULL, 1),
	(101, 'KAB. BANGKALAN', '2021-03-30 12:31:02', NULL, 1),
	(102, 'KOTA SURABAYA', '2021-03-30 12:31:02', NULL, 1),
	(103, 'KOTA MALANG', '2021-03-30 12:31:02', NULL, 1),
	(104, 'KOTA MADIUN', '2021-03-30 12:31:02', NULL, 1),
	(105, 'KOTA KEDIRI', '2021-03-30 12:31:02', NULL, 1),
	(106, 'KOTA MOJOKERTO', '2021-03-30 12:31:02', NULL, 1),
	(107, 'KOTA BLITAR', '2021-03-30 12:31:02', NULL, 1),
	(108, 'KOTA PASURUAN', '2021-03-30 12:31:02', NULL, 1),
	(109, 'KOTA PROBOLINGGO', '2021-03-30 12:31:02', NULL, 1),
	(110, 'KOTA BATU', '2021-03-30 12:31:02', NULL, 1),
	(111, 'KAB.ACEH BESAR', '2021-03-30 12:31:02', NULL, 1),
	(112, 'KAB.PIDIE', '2021-03-30 12:31:02', NULL, 1),
	(113, 'KAB. ACEH UTARA', '2021-03-30 12:31:02', NULL, 1),
	(114, 'KAB. ACEH TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(115, 'KAB. ACEH TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(116, 'KAB. ACEH BARAT', '2021-03-30 12:31:02', NULL, 1),
	(117, 'KAB. ACEH SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(118, 'KAB. ACEH TENGGARA', '2021-03-30 12:31:02', NULL, 1),
	(119, 'KAB. SIMEULUE', '2021-03-30 12:31:02', NULL, 1),
	(120, 'KAB. BIREUEN', '2021-03-30 12:31:02', NULL, 1),
	(121, 'KAB. ACEH SINGKIL', '2021-03-30 12:31:02', NULL, 1),
	(122, 'KAB. ACEH TAMIANG', '2021-03-30 12:31:02', NULL, 1),
	(123, 'KAB. NAGAN RAYA', '2021-03-30 12:31:02', NULL, 1),
	(124, 'KAB. ACEH JAYA', '2021-03-30 12:31:02', NULL, 1),
	(125, 'KAB. ACEH BARAT DAYA', '2021-03-30 12:31:02', NULL, 1),
	(126, 'KAB. GAYO LUES', '2021-03-30 12:31:02', NULL, 1),
	(127, 'KAB. BENER MERIAH', '2021-03-30 12:31:02', NULL, 1),
	(128, 'KAB. PIDIE JAYA', '2021-03-30 12:31:02', NULL, 1),
	(129, 'KOTA SABANG', '2021-03-30 12:31:02', NULL, 1),
	(130, 'KOTA BANDA ACEH', '2021-03-30 12:31:02', NULL, 1),
	(131, 'KOTA LHOKSEUMAWE', '2021-03-30 12:31:02', NULL, 1),
	(132, 'KOTA LANGSA', '2021-03-30 12:31:02', NULL, 1),
	(133, 'KOTA SUBULUSSALAM', '2021-03-30 12:31:02', NULL, 1),
	(134, 'KAB. DELI SERDANG', '2021-03-30 12:31:02', NULL, 1),
	(135, 'KAB. LANGKAT', '2021-03-30 12:31:02', NULL, 1),
	(136, 'KAB. KARO', '2021-03-30 12:31:02', NULL, 1),
	(137, 'KAB. SIMALUNGUN', '2021-03-30 12:31:02', NULL, 1),
	(138, 'KAB.DAIRI', '2021-03-30 12:31:02', NULL, 1),
	(139, 'KAB. ASAHAN', '2021-03-30 12:31:02', NULL, 1),
	(140, 'KAB. LABUHAN BATU', '2021-03-30 12:31:02', NULL, 1),
	(141, 'KAB. TAPANULI UTARA', '2021-03-30 12:31:02', NULL, 1),
	(142, 'KAB. TAPANULI TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(143, 'KAB. TAPANULI SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(144, 'KAB. NIAS', '2021-03-30 12:31:02', NULL, 1),
	(145, 'KAB. MANDAILING NATAL', '2021-03-30 12:31:02', NULL, 1),
	(146, 'KAB. TOBA SAMOSIR', '2021-03-30 12:31:02', NULL, 1),
	(147, 'KAB. NIAS SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(148, 'KAB. PAKPAK BHARAT', '2021-03-30 12:31:02', NULL, 1),
	(149, 'KAB. HAMBANG HASUDUTAN', '2021-03-30 12:31:02', NULL, 1),
	(150, 'KAB. SAMOSIR', '2021-03-30 12:31:02', NULL, 1),
	(151, 'KAB. SERDANG BEGADAI', '2021-03-30 12:31:02', NULL, 1),
	(152, 'KAB. BATUBARA', '2021-03-30 12:31:02', NULL, 1),
	(153, 'KAB. PADANG LAWAS UTARA', '2021-03-30 12:31:02', NULL, 1),
	(154, 'KAB. PADANG LAWAS', '2021-03-30 12:31:02', NULL, 1),
	(155, 'KAB. LABUHAN BATU UTARA', '2021-03-30 12:31:02', NULL, 1),
	(156, 'KAB. LABUHAN BATU SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(157, 'KAB. NIAS BARAT', '2021-03-30 12:31:02', NULL, 1),
	(158, 'KAB. NIAS UTARA', '2021-03-30 12:31:02', NULL, 1),
	(159, 'KOTA MEDAN', '2021-03-30 12:31:02', NULL, 1),
	(160, 'KOTA BINJAI', '2021-03-30 12:31:02', NULL, 1),
	(161, 'KOTA TEBING TINGGI', '2021-03-30 12:31:02', NULL, 1),
	(162, 'KOTA PEMATANG SIANTAR', '2021-03-30 12:31:02', NULL, 1),
	(163, 'KOTA TANJUNG BALAI', '2021-03-30 12:31:02', NULL, 1),
	(164, 'KOTA SIBOLGA', '2021-03-30 12:31:02', NULL, 1),
	(165, 'KOTA PADANG SIDIMPUAN', '2021-03-30 12:31:02', NULL, 1),
	(166, 'KOTA GUNUNG SITOLI', '2021-03-30 12:31:02', NULL, 1),
	(167, 'KAB. AGAM', '2021-03-30 12:31:02', NULL, 1),
	(168, 'KAB.PASAMAN', '2021-03-30 12:31:02', NULL, 1),
	(169, 'KAB. LIMA PULUH KOTO', '2021-03-30 12:31:02', NULL, 1),
	(170, 'KAB. SOLOK', '2021-03-30 12:31:02', NULL, 1),
	(171, 'KAB.PADANG PARIAMAN', '2021-03-30 12:31:02', NULL, 1),
	(172, 'KAB. PESISIR SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(173, 'KAB. TANAH DATAR', '2021-03-30 12:31:02', NULL, 1),
	(174, 'KAB. SIJUNJUNG', '2021-03-30 12:31:02', NULL, 1),
	(175, 'KAB. KEPULAUAN MENTAWAI', '2021-03-30 12:31:02', NULL, 1),
	(176, 'KAB. SOLOK SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(177, 'KAB. DHARMASRAYA', '2021-03-30 12:31:02', NULL, 1),
	(178, 'KAB. PASAMAN BARAT', '2021-03-30 12:31:02', NULL, 1),
	(179, 'KOTA BUKITTINGGI', '2021-03-30 12:31:02', NULL, 1),
	(180, 'KOTA PADANG', '2021-03-30 12:31:02', NULL, 1),
	(181, 'KOTA PADANG PANJANG', '2021-03-30 12:31:02', NULL, 1),
	(182, 'KOTA SAWAH LUNTO', '2021-03-30 12:31:02', NULL, 1),
	(183, 'KOTA SOLOK', '2021-03-30 12:31:02', NULL, 1),
	(184, 'KOTA PAYAKUMBUH', '2021-03-30 12:31:02', NULL, 1),
	(185, 'KOTA PARIAMAN', '2021-03-30 12:31:02', NULL, 1),
	(186, 'KAB.KAMPAR', '2021-03-30 12:31:02', NULL, 1),
	(187, 'KAB. BENGKALIS', '2021-03-30 12:31:02', NULL, 1),
	(188, 'KAB. INDRAGIRI HULU', '2021-03-30 12:31:02', NULL, 1),
	(189, 'KAB. INDRAGIRI HILIR', '2021-03-30 12:31:02', NULL, 1),
	(190, 'KAB. PELALAWAN', '2021-03-30 12:31:02', NULL, 1),
	(191, 'KAB. ROKAN HULU', '2021-03-30 12:31:02', NULL, 1),
	(192, 'KAB. ROKAN HILIR', '2021-03-30 12:31:02', NULL, 1),
	(193, 'KAB. SIAK', '2021-03-30 12:31:02', NULL, 1),
	(194, 'KAB. KUANTAN SINGINGI', '2021-03-30 12:31:02', NULL, 1),
	(195, 'KAB. KEPULAUAN MERANTI', '2021-03-30 12:31:02', NULL, 1),
	(196, 'KOTA PEKANBARU', '2021-03-30 12:31:02', NULL, 1),
	(197, 'KOTA DUMAI', '2021-03-30 12:31:02', NULL, 1),
	(198, 'KAB. BATANG HARI', '2021-03-30 12:31:02', NULL, 1),
	(199, 'KAB. BUNGO', '2021-03-30 12:31:02', NULL, 1),
	(200, 'KAB. SAROLANGUN', '2021-03-30 12:31:02', NULL, 1),
	(201, 'KAB. TANJUNG JABUNG BARAT', '2021-03-30 12:31:02', NULL, 1),
	(202, 'KAB. KERINCI', '2021-03-30 12:31:02', NULL, 1),
	(203, 'KAB. TEBO', '2021-03-30 12:31:02', NULL, 1),
	(204, 'KAB. MUARO JAMBI', '2021-03-30 12:31:02', NULL, 1),
	(205, 'KAB. TANJUNG JABUNG TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(206, 'KAB. MERANGIN', '2021-03-30 12:31:02', NULL, 1),
	(207, 'KOTA JAMBI', '2021-03-30 12:31:02', NULL, 1),
	(208, 'KOTA SUNGAI PENUH', '2021-03-30 12:31:02', NULL, 1),
	(209, 'KAB. MUSI BANYUASIN', '2021-03-30 12:31:02', NULL, 1),
	(210, 'KAB. OGAN KOMERING ILIR', '2021-03-30 12:31:02', NULL, 1),
	(211, 'KAB. OGAN KOMERING ULU', '2021-03-30 12:31:02', NULL, 1),
	(212, 'KAB. MUARA ENIM', '2021-03-30 12:31:02', NULL, 1),
	(213, 'KAB. LAHAT', '2021-03-30 12:31:02', NULL, 1),
	(214, 'KAB. MUSI RAWAS', '2021-03-30 12:31:02', NULL, 1),
	(215, 'KAB. BANYUASIN', '2021-03-30 12:31:02', NULL, 1),
	(216, 'KAB. OGAN KOMERING ULU TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(217, 'KAB. OGAN KOMERING ULU SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(218, 'KAB. OGAN ILIR', '2021-03-30 12:31:02', NULL, 1),
	(219, 'KAB. EMPAT LAWANG', '2021-03-30 12:31:02', NULL, 1),
	(220, 'KAB. PENUKAL ABAB LEMATANG ILIR', '2021-03-30 12:31:02', NULL, 1),
	(221, 'KAB. MUSI RAWAS UTARA', '2021-03-30 12:31:02', NULL, 1),
	(222, 'KOTA PALEMBANG', '2021-03-30 12:31:02', NULL, 1),
	(223, 'KOTA PRABUMULIH', '2021-03-30 12:31:02', NULL, 1),
	(224, 'KOTA LUBUK LINGGAU', '2021-03-30 12:31:02', NULL, 1),
	(225, 'KOTA PAGAR ALAM', '2021-03-30 12:31:02', NULL, 1),
	(226, 'KAB. LAMPUNG SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(227, 'KAB. LAMPUNG TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(228, 'KAB. LAMPUNG UTARA', '2021-03-30 12:31:02', NULL, 1),
	(229, 'KAB. LAMPUNG BARAT', '2021-03-30 12:31:02', NULL, 1),
	(230, 'KAB. TULANG BAWANG', '2021-03-30 12:31:02', NULL, 1),
	(231, 'KAB. TANGGAMUS', '2021-03-30 12:31:02', NULL, 1),
	(232, 'KAB. LAMPUNG TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(233, 'KAB. WAY KANAN', '2021-03-30 12:31:02', NULL, 1),
	(234, 'KAB. PESAWARAN', '2021-03-30 12:31:02', NULL, 1),
	(235, 'KAB. PRINGSEWU', '2021-03-30 12:31:02', NULL, 1),
	(236, 'KAB. MESUJI', '2021-03-30 12:31:02', NULL, 1),
	(237, 'KAB. TULANG BAWANG BARAT', '2021-03-30 12:31:02', NULL, 1),
	(238, 'KAB. PESISIR BARAT', '2021-03-30 12:31:02', NULL, 1),
	(239, 'KOTA BANDAR LAMPUNG', '2021-03-30 12:31:02', NULL, 1),
	(240, 'KOTA METRO', '2021-03-30 12:31:02', NULL, 1),
	(241, 'KAB.SAMBAS', '2021-03-30 12:31:02', NULL, 1),
	(242, 'KAB. MENPAWAH', '2021-03-30 12:31:02', NULL, 1),
	(243, 'KAB. SANGGAU', '2021-03-30 12:31:02', NULL, 1),
	(244, 'KAB. SINTANG', '2021-03-30 12:31:02', NULL, 1),
	(245, 'KAB. KAPUAS HULU', '2021-03-30 12:31:02', NULL, 1),
	(246, 'KAB. KETAPANG', '2021-03-30 12:31:02', NULL, 1),
	(247, 'KAB. BENGKAYANG', '2021-03-30 12:31:02', NULL, 1),
	(248, 'KAB. LANDAK', '2021-03-30 12:31:02', NULL, 1),
	(249, 'KAB. SEKADAU', '2021-03-30 12:31:02', NULL, 1),
	(250, 'KAB. MELAWAI', '2021-03-30 12:31:02', NULL, 1),
	(251, 'KAB. KAYONG UTARA', '2021-03-30 12:31:02', NULL, 1),
	(252, 'KAB. KUBURAYA', '2021-03-30 12:31:02', NULL, 1),
	(253, 'KOTA PONTIANAK', '2021-03-30 12:31:02', NULL, 1),
	(254, 'KOTA SINGKAWANG', '2021-03-30 12:31:02', NULL, 1),
	(255, 'KAB. KAPUAS', '2021-03-30 12:31:02', NULL, 1),
	(256, 'KAB. BARITO SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(257, 'KAB. BARITO UTARA', '2021-03-30 12:31:02', NULL, 1),
	(258, 'KAB. KOTAWARINGIN TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(259, 'KAB. KOTAWARINGIN BARAT', '2021-03-30 12:31:02', NULL, 1),
	(260, 'KAB. KATINGAN', '2021-03-30 12:31:02', NULL, 1),
	(261, 'KAB. SERUYAN', '2021-03-30 12:31:02', NULL, 1),
	(262, 'KAB. SUKAMARA', '2021-03-30 12:31:02', NULL, 1),
	(263, 'KAB. LAMANDAU', '2021-03-30 12:31:02', NULL, 1),
	(264, 'KAB. GUNUNG MAS', '2021-03-30 12:31:02', NULL, 1),
	(265, 'KAB. PULANG PISAU', '2021-03-30 12:31:02', NULL, 1),
	(266, 'KAB. MURUNG RAYA', '2021-03-30 12:31:02', NULL, 1),
	(267, 'KAB. BARITO TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(268, 'KOTA PALANGKARAYA', '2021-03-30 12:31:02', NULL, 1),
	(269, 'KAB. BANJAR', '2021-03-30 12:31:02', NULL, 1),
	(270, 'KAB. TANAH LAUT', '2021-03-30 12:31:02', NULL, 1),
	(271, 'KAB. BARITO KUALA', '2021-03-30 12:31:02', NULL, 1),
	(272, 'KAB. TAPIN', '2021-03-30 12:31:02', NULL, 1),
	(273, 'KAB. HULU SUNGAI SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(274, 'KAB. HULU SUNGAI TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(275, 'HULU SUNGAI UTARA', '2021-03-30 12:31:02', NULL, 1),
	(276, 'KAB. TABALONG', '2021-03-30 12:31:02', NULL, 1),
	(277, 'KAB. KOTABARU', '2021-03-30 12:31:02', NULL, 1),
	(278, 'KAB. BALANGAN', '2021-03-30 12:31:02', NULL, 1),
	(279, 'KAB.TANAH BUMBU', '2021-03-30 12:31:02', NULL, 1),
	(280, 'KOTA BANJARMASIN', '2021-03-30 12:31:02', NULL, 1),
	(281, 'KOTA BANJARBARU', '2021-03-30 12:31:02', NULL, 1),
	(282, 'KAB. PASER', '2021-03-30 12:31:02', NULL, 1),
	(283, 'KAB. KUTAI KARTANEGARA', '2021-03-30 12:31:02', NULL, 1),
	(284, 'KAB.BERAU', '2021-03-30 12:31:02', NULL, 1),
	(285, 'KAB. MALINAU', '2021-03-30 12:31:02', NULL, 1),
	(286, 'KAB. KUTAI BARAT', '2021-03-30 12:31:02', NULL, 1),
	(287, 'KAB. KUTAI TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(288, 'KAB. PENAJAM PASER UTARA', '2021-03-30 12:31:02', NULL, 1),
	(289, 'KAB. MAHAKAM ULU', '2021-03-30 12:31:02', NULL, 1),
	(290, 'KOTA SAMARINDA', '2021-03-30 12:31:02', NULL, 1),
	(291, 'KOTA BALIKPAPAN', '2021-03-30 12:31:02', NULL, 1),
	(292, 'KOTA BONTANG', '2021-03-30 12:31:02', NULL, 1),
	(293, 'KAB. BOLAANG MONGONDOW', '2021-03-30 12:31:02', NULL, 1),
	(294, 'KAB. MINAHASA', '2021-03-30 12:31:02', NULL, 1),
	(295, 'KAB. KEP. SANGIHE', '2021-03-30 12:31:02', NULL, 1),
	(296, 'KAB. KEPULAUAN TALAUD', '2021-03-30 12:31:02', NULL, 1),
	(297, 'KAB. MINAHASA SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(298, 'KAB. MINAHASA UTARA', '2021-03-30 12:31:02', NULL, 1),
	(299, 'KAB. BOLAANG MONGONDOW UTARA', '2021-03-30 12:31:02', NULL, 1),
	(300, 'KAB. KEPULAUAN SIAU TAGULANDANG BIARO', '2021-03-30 12:31:02', NULL, 1),
	(301, 'KAB. MINAHASA TENGGARA', '2021-03-30 12:31:02', NULL, 1),
	(302, 'KAB. BOLAANG MONGONDOW TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(303, 'KAB. BOLAANG MONGONDOW SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(304, 'KOTA MANADO', '2021-03-30 12:31:02', NULL, 1),
	(305, 'KOTA BITUNG', '2021-03-30 12:31:02', NULL, 1),
	(306, 'KOTA TOMOHON', '2021-03-30 12:31:02', NULL, 1),
	(307, 'KOTA KOTAMOBAGU', '2021-03-30 12:31:02', NULL, 1),
	(308, 'KAB. BANGGAI KEPULAUAN', '2021-03-30 12:31:02', NULL, 1),
	(309, 'KAB. DONGGALA', '2021-03-30 12:31:02', NULL, 1),
	(310, 'KAB. POSO', '2021-03-30 12:31:02', NULL, 1),
	(311, 'KAB. BANGGAI', '2021-03-30 12:31:02', NULL, 1),
	(312, 'KAB. BUOL', '2021-03-30 12:31:02', NULL, 1),
	(313, 'KAB. TOLITOLI', '2021-03-30 12:31:02', NULL, 1),
	(314, 'KAB. MOROWALI', '2021-03-30 12:31:02', NULL, 1),
	(315, 'KAB. PARIGI MOUTONG', '2021-03-30 12:31:02', NULL, 1),
	(316, 'KAB. TOJO UNA-UNA', '2021-03-30 12:31:02', NULL, 1),
	(317, 'KAB. SIGI', '2021-03-30 12:31:02', NULL, 1),
	(318, 'KAB. BANGGAI LAUT', '2021-03-30 12:31:02', NULL, 1),
	(319, 'KAB. MOROWALI UTARA', '2021-03-30 12:31:02', NULL, 1),
	(320, 'KOTA PALU', '2021-03-30 12:31:02', NULL, 1),
	(321, 'KAB. MAROS', '2021-03-30 12:31:02', NULL, 1),
	(322, 'KAB. PANGKAJENE KEPULAUAN', '2021-03-30 12:31:02', NULL, 1),
	(323, 'KAB. GOWA', '2021-03-30 12:31:02', NULL, 1),
	(324, 'KAB. TAKALAR', '2021-03-30 12:31:02', NULL, 1),
	(325, 'KAB. JENEPONTO', '2021-03-30 12:31:02', NULL, 1),
	(326, 'KAB. BARRU', '2021-03-30 12:31:02', NULL, 1),
	(327, 'KAB. BONE', '2021-03-30 12:31:02', NULL, 1),
	(328, 'KAB. WAJO', '2021-03-30 12:31:02', NULL, 1),
	(329, 'KAB. SOPPENG', '2021-03-30 12:31:02', NULL, 1),
	(330, 'KAB. BANTAENG', '2021-03-30 12:31:02', NULL, 1),
	(331, 'KAB. BULUKUMBA', '2021-03-30 12:31:02', NULL, 1),
	(332, 'KAB. SINJAI', '2021-03-30 12:31:02', NULL, 1),
	(333, 'KAB. KEPULAUAN SELAYAR', '2021-03-30 12:31:02', NULL, 1),
	(334, 'KAB. PINRANG', '2021-03-30 12:31:02', NULL, 1),
	(335, 'KAB. SIDENRENG RAPPANG', '2021-03-30 12:31:02', NULL, 1),
	(336, 'KAB. ENREKANG', '2021-03-30 12:31:02', NULL, 1),
	(337, 'KAB. LUWU', '2021-03-30 12:31:02', NULL, 1),
	(338, 'KAB. TANA TORAJA', '2021-03-30 12:31:02', NULL, 1),
	(339, 'KAB. LUWU UTARA', '2021-03-30 12:31:02', NULL, 1),
	(340, 'KAB. LUWU TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(341, 'KAB. TORAJA UTARA', '2021-03-30 12:31:02', NULL, 1),
	(342, 'KOTA MAKASSAR', '2021-03-30 12:31:02', NULL, 1),
	(343, 'KOTA PAREPARE', '2021-03-30 12:31:02', NULL, 1),
	(344, 'KOTA PALOPO', '2021-03-30 12:31:02', NULL, 1),
	(345, 'KAB. KONAWE', '2021-03-30 12:31:02', NULL, 1),
	(346, 'KAB. MUNA', '2021-03-30 12:31:02', NULL, 1),
	(347, 'KAB. BUTON', '2021-03-30 12:31:02', NULL, 1),
	(348, 'KAB. KOLAKA', '2021-03-30 12:31:02', NULL, 1),
	(349, 'KAB. KONAWE SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(350, 'KAB. WAKATOBI', '2021-03-30 12:31:02', NULL, 1),
	(351, 'KAB. BOMBANA', '2021-03-30 12:31:02', NULL, 1),
	(352, 'KAB. KOLAKA UTARA', '2021-03-30 12:31:02', NULL, 1),
	(353, 'KAB. KONAWE UTARA', '2021-03-30 12:31:02', NULL, 1),
	(354, 'KAB. BUTON UTARA', '2021-03-30 12:31:02', NULL, 1),
	(355, 'KAB.KOLAKA TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(356, 'KAB. KONAWE KEPULAUAN', '2021-03-30 12:31:02', NULL, 1),
	(357, 'KAB. MUNA BARAT', '2021-03-30 12:31:02', NULL, 1),
	(358, 'KAB. BUTON SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(359, 'KAB. BUTON TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(360, 'KOTA KENDARI', '2021-03-30 12:31:02', NULL, 1),
	(361, 'KOTA BAUBAU', '2021-03-30 12:31:02', NULL, 1),
	(362, 'KAB. MALUKU TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(363, 'KAB. MALUKU TENGGARA', '2021-03-30 12:31:02', NULL, 1),
	(364, 'KAB. BURU', '2021-03-30 12:31:02', NULL, 1),
	(365, 'KAB. KEPULAUAN TANIMBAR', '2021-03-30 12:31:02', NULL, 1),
	(366, 'KAB. SERAM BAGIAN BARAT', '2021-03-30 12:31:02', NULL, 1),
	(367, 'KAB. SERAM BAGIAN TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(368, 'KAB. KEPULAUAN ARU', '2021-03-30 12:31:02', NULL, 1),
	(369, 'KAB. MALUKU BARAT DAYA', '2021-03-30 12:31:02', NULL, 1),
	(370, 'KAB. BURU SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(371, 'KOTA AMBON', '2021-03-30 12:31:02', NULL, 1),
	(372, 'KOTA TUAL', '2021-03-30 12:31:02', NULL, 1),
	(373, 'KAB. BULELENG', '2021-03-30 12:31:02', NULL, 1),
	(374, 'KAB. JEMBRANA', '2021-03-30 12:31:02', NULL, 1),
	(375, 'KAB. TABANAN', '2021-03-30 12:31:02', NULL, 1),
	(376, 'KAB. BADUNG', '2021-03-30 12:31:02', NULL, 1),
	(377, 'KAB. GIANYAR', '2021-03-30 12:31:02', NULL, 1),
	(378, 'KAB. KLUNGKUNG', '2021-03-30 12:31:02', NULL, 1),
	(379, 'KAB. BANGLI', '2021-03-30 12:31:02', NULL, 1),
	(380, 'KAB. KARANG ASEM', '2021-03-30 12:31:02', NULL, 1),
	(381, 'KOTA DENPASAR', '2021-03-30 12:31:02', NULL, 1),
	(382, 'KAB. LOMBOK BARAT', '2021-03-30 12:31:02', NULL, 1),
	(383, 'KAB. LOMBOK TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(384, 'KAB. LOMBOK TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(385, 'KAB. SUMBAWA', '2021-03-30 12:31:02', NULL, 1),
	(386, 'KAB. DOMPU', '2021-03-30 12:31:02', NULL, 1),
	(387, 'KAB. BIMA', '2021-03-30 12:31:02', NULL, 1),
	(388, 'KAB. SUMBAWA BARAT', '2021-03-30 12:31:02', NULL, 1),
	(389, 'KAB. LOMBOK UTARA', '2021-03-30 12:31:02', NULL, 1),
	(390, 'KOTA MATARAM', '2021-03-30 12:31:02', NULL, 1),
	(391, 'KOTA BIMA', '2021-03-30 12:31:02', NULL, 1),
	(392, 'KAB. KUPANG', '2021-03-30 12:31:02', NULL, 1),
	(393, 'KAB. TIMOR TENGAH SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(394, 'KAB. TIMOR TENGAH TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(395, 'KAB. BELU', '2021-03-30 12:31:02', NULL, 1),
	(396, 'KAB. ALOR', '2021-03-30 12:31:02', NULL, 1),
	(397, 'KAB. FLORES TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(398, 'KAB. SIKKA', '2021-03-30 12:31:02', NULL, 1),
	(399, 'KAB. ENDE', '2021-03-30 12:31:02', NULL, 1),
	(400, 'KAB. NGADA', '2021-03-30 12:31:02', NULL, 1),
	(401, 'KAB. MANGGARAI', '2021-03-30 12:31:02', NULL, 1),
	(402, 'KAB. SUMBA TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(403, 'KAB. SUMBA BARAT', '2021-03-30 12:31:02', NULL, 1),
	(404, 'KAB. LEMBATA', '2021-03-30 12:31:02', NULL, 1),
	(405, 'KAB. ROTE-NDAO', '2021-03-30 12:31:02', NULL, 1),
	(406, 'KAB. MANGGARAI BARAT', '2021-03-30 12:31:02', NULL, 1),
	(407, 'KAB. NAGAKEO', '2021-03-30 12:31:02', NULL, 1),
	(408, 'KAB. SUMBA TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(409, 'KAB. SUMBA BARAT DAYA', '2021-03-30 12:31:02', NULL, 1),
	(410, 'KAB. MANGGARAI TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(411, 'KAB. SABU RAIJUA', '2021-03-30 12:31:02', NULL, 1),
	(412, 'KAB. MALAKA', '2021-03-30 12:31:02', NULL, 1),
	(413, 'KOTA KUPANG', '2021-03-30 12:31:02', NULL, 1),
	(414, 'KAB. JAYAPURA', '2021-03-30 12:31:02', NULL, 1),
	(415, 'KAB. BIAK NUMFOR', '2021-03-30 12:31:02', NULL, 1),
	(416, 'KAB. KEPULAUAN YAPEN', '2021-03-30 12:31:02', NULL, 1),
	(417, 'KAB. MERAUKE', '2021-03-30 12:31:02', NULL, 1),
	(418, 'KAB. JAYA WIJAYA', '2021-03-30 12:31:02', NULL, 1),
	(419, 'KAB. NABIRE', '2021-03-30 12:31:02', NULL, 1),
	(420, 'KAB. PANIAI', '2021-03-30 12:31:02', NULL, 1),
	(421, 'KAB. PUNCAK JAYA', '2021-03-30 12:31:02', NULL, 1),
	(422, 'KAB. MIMIKA', '2021-03-30 12:31:02', NULL, 1),
	(423, 'KAB. BOVEN DIGOEL', '2021-03-30 12:31:02', NULL, 1),
	(424, 'KAB. MAPPI', '2021-03-30 12:31:02', NULL, 1),
	(425, 'KAB. ASMAT', '2021-03-30 12:31:02', NULL, 1),
	(426, 'KAB. YAHUKIMO', '2021-03-30 12:31:02', NULL, 1),
	(427, 'KAB. PEGUNUNGAN BINTANG', '2021-03-30 12:31:02', NULL, 1),
	(428, 'KAB. TOLIKARA', '2021-03-30 12:31:02', NULL, 1),
	(429, 'KAB. SARMI', '2021-03-30 12:31:02', NULL, 1),
	(430, 'KAB. KEEROM', '2021-03-30 12:31:02', NULL, 1),
	(431, 'KAB. WAREPON', '2021-03-30 12:31:02', NULL, 1),
	(432, 'KAB. SUPIORI', '2021-03-30 12:31:02', NULL, 1),
	(433, 'KAB. MEMBERAMO RAYA', '2021-03-30 12:31:02', NULL, 1),
	(434, 'KAB. NDUGA', '2021-03-30 12:31:02', NULL, 1),
	(435, 'KAB. LANNY JAYA', '2021-03-30 12:31:02', NULL, 1),
	(436, 'KAB. MEMBRAMO TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(437, 'KAB. YALIMO', '2021-03-30 12:31:02', NULL, 1),
	(438, 'KAB. PUNCAK', '2021-03-30 12:31:02', NULL, 1),
	(439, 'KAB. DOGIYAI', '2021-03-30 12:31:02', NULL, 1),
	(440, 'KAB. DEIYAI', '2021-03-30 12:31:02', NULL, 1),
	(441, 'KAB. INTAN JAYA', '2021-03-30 12:31:02', NULL, 1),
	(442, 'KOTA JAYAPURA', '2021-03-30 12:31:02', NULL, 1),
	(443, 'KAB. BENGKULU UTARA', '2021-03-30 12:31:02', NULL, 1),
	(444, 'KAB. REJANG LEBONG', '2021-03-30 12:31:02', NULL, 1),
	(445, 'KAB. BENGKULU SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(446, 'KAB. MUKO- MUKO', '2021-03-30 12:31:02', NULL, 1),
	(447, 'KAB. KEPAHIANG', '2021-03-30 12:31:02', NULL, 1),
	(448, 'KAB. LEBONG', '2021-03-30 12:31:02', NULL, 1),
	(449, 'KAB. KAUR', '2021-03-30 12:31:02', NULL, 1),
	(450, 'KAB. SELUMA', '2021-03-30 12:31:02', NULL, 1),
	(451, 'KAB. BENGKULU TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(452, 'KOTA BENGKULU', '2021-03-30 12:31:02', NULL, 1),
	(453, 'KAB. PULAU TALIABU', '2021-03-30 12:31:02', NULL, 1),
	(454, 'KAB. HALMAHERA TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(455, 'KAB. HALMAHERA BARAT', '2021-03-30 12:31:02', NULL, 1),
	(456, 'KAB. HALMAHERA UTARA', '2021-03-30 12:31:02', NULL, 1),
	(457, 'KAB. HALMAHERA SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(458, 'KAB. HALMAHERA TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(459, 'KAB. KEPULAUAN SULA', '2021-03-30 12:31:02', NULL, 1),
	(460, 'KAB. KEPULAUAN MOROTAI', '2021-03-30 12:31:02', NULL, 1),
	(461, 'KOTA TERNATE', '2021-03-30 12:31:02', NULL, 1),
	(462, 'KOTA TIDORE KEPULAUAN', '2021-03-30 12:31:02', NULL, 1),
	(463, 'KAB. PANDEGLANG', '2021-03-30 12:31:02', NULL, 1),
	(464, 'KAB. LEBAK', '2021-03-30 12:31:02', NULL, 1),
	(465, 'KAB. TANGERANG', '2021-03-30 12:31:02', NULL, 1),
	(466, 'KAB. SERANG', '2021-03-30 12:31:02', NULL, 1),
	(467, 'KOTA CILEGON', '2021-03-30 12:31:02', NULL, 1),
	(468, 'KOTA SERANG', '2021-03-30 12:31:02', NULL, 1),
	(469, 'KOTA TANGERANG SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(470, 'KEP.BANGKA', '2021-03-30 12:31:02', NULL, 1),
	(471, 'KAB. BELITUNG', '2021-03-30 12:31:02', NULL, 1),
	(472, 'KAB. BANGKA TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(473, 'KAB. BANGKA BARAT', '2021-03-30 12:31:02', NULL, 1),
	(474, 'KAB. BANGKA SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(475, 'KAB. BELITUNG TIMUR', '2021-03-30 12:31:02', NULL, 1),
	(476, 'KOTA PANGKAL PINANG', '2021-03-30 12:31:02', NULL, 1),
	(477, 'KAB. BOALEMO', '2021-03-30 12:31:02', NULL, 1),
	(478, 'KAB. GORONTALO', '2021-03-30 12:31:02', NULL, 1),
	(479, 'KAB. POHUWATO', '2021-03-30 12:31:02', NULL, 1),
	(480, 'KAB. BONE BOLANGO', '2021-03-30 12:31:02', NULL, 1),
	(481, 'KAB. GORONTALO UTARA', '2021-03-30 12:31:02', NULL, 1),
	(482, 'KOTA GORONTALO', '2021-03-30 12:31:02', NULL, 1),
	(483, 'KAB. BINTAN', '2021-03-30 12:31:02', NULL, 1),
	(484, 'KAB. KARIMUN', '2021-03-30 12:31:02', NULL, 1),
	(485, 'KAB. NATUNA', '2021-03-30 12:31:02', NULL, 1),
	(486, 'KAB. LINGGA', '2021-03-30 12:31:02', NULL, 1),
	(487, 'KAB. KEPULAUAN ANAMBAS', '2021-03-30 12:31:02', NULL, 1),
	(488, 'KOTA BATAM', '2021-03-30 12:31:02', NULL, 1),
	(489, 'KOTA TANJUNG PINANG', '2021-03-30 12:31:02', NULL, 1),
	(490, 'KAB. FAK FAK', '2021-03-30 12:31:02', NULL, 1),
	(491, 'KAB. KAIMANA', '2021-03-30 12:31:02', NULL, 1),
	(492, 'KAB. TELUK WONDAMA', '2021-03-30 12:31:02', NULL, 1),
	(493, 'KAB. TELUK BINTUNI', '2021-03-30 12:31:02', NULL, 1),
	(494, 'KAB. MANOKWARI', '2021-03-30 12:31:02', NULL, 1),
	(495, 'KAB. SORONG SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(496, 'KAB.SORONG', '2021-03-30 12:31:02', NULL, 1),
	(497, 'KAB. RAJA AMPAT', '2021-03-30 12:31:02', NULL, 1),
	(498, 'KAB. TAMBRAUW', '2021-03-30 12:31:02', NULL, 1),
	(499, 'KAB. MAYBRAT', '2021-03-30 12:31:02', NULL, 1),
	(500, 'KAB. PEGUNUNGAN ARFAK', '2021-03-30 12:31:02', NULL, 1),
	(501, 'KAB. MANOKWARI SELATAN', '2021-03-30 12:31:02', NULL, 1),
	(502, 'KOTA SORONG', '2021-03-30 12:31:02', NULL, 1),
	(503, 'KAB. MAMUJU', '2021-03-30 12:31:02', NULL, 1),
	(504, 'KAB. PASANGKAYU', '2021-03-30 12:31:02', NULL, 1),
	(505, 'KAB. POLEWALI MANDAR', '2021-03-30 12:31:02', NULL, 1),
	(506, 'KAB. MAMASA', '2021-03-30 12:31:02', NULL, 1),
	(507, 'KAB. MAJENE', '2021-03-30 12:31:02', NULL, 1),
	(508, 'KAB. MAMUJU TENGAH', '2021-03-30 12:31:02', NULL, 1),
	(509, 'KAB. BULUNGAN', '2021-03-30 12:31:02', NULL, 1),
	(510, 'KAB. TANA TIDUNG', '2021-03-30 12:31:02', NULL, 1),
	(511, 'KAB. NUNUKAN', '2021-03-30 12:31:02', NULL, 1),
	(512, 'KOTA TARAKAN', '2021-03-30 12:31:02', NULL, 1);
/*!40000 ALTER TABLE `kota_kab` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.lembaga
CREATE TABLE IF NOT EXISTS `lembaga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lembaga_type_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL DEFAULT '',
  `no_telp` varchar(13) NOT NULL DEFAULT '',
  `alamat` text NOT NULL,
  `kota_kab_id` int(11) NOT NULL,
  `kota_kab` varchar(50) NOT NULL DEFAULT '',
  `file_ktp` varchar(255) NOT NULL,
  `file_logo` varchar(255) DEFAULT NULL,
  `file_banner` varchar(255) DEFAULT NULL,
  `pengaturan_universal_id` int(11) NOT NULL,
  `informasi` longtext DEFAULT NULL,
  `pernyataan` longtext DEFAULT NULL,
  `multiple_login` tinyint(1) NOT NULL DEFAULT 0,
  `is_verify` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 belum terverifikasi 1 sudah terverifikasi',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `lembaga_kota_kab_id` (`kota_kab_id`),
  KEY `lembaga_type_id` (`lembaga_type_id`),
  CONSTRAINT `lembaga_kota_kab_id` FOREIGN KEY (`kota_kab_id`) REFERENCES `kota_kab` (`id`),
  CONSTRAINT `lembaga_type_id` FOREIGN KEY (`lembaga_type_id`) REFERENCES `lembaga_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.lembaga: ~1 rows (approximately)
/*!40000 ALTER TABLE `lembaga` DISABLE KEYS */;
REPLACE INTO `lembaga` (`id`, `lembaga_type_id`, `name`, `email`, `no_telp`, `alamat`, `kota_kab_id`, `kota_kab`, `file_ktp`, `file_logo`, `file_banner`, `pengaturan_universal_id`, `informasi`, `pernyataan`, `multiple_login`, `is_verify`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(2, 4, 'Zambert Course', 'zambertcourse@gmail.com', '081286364461', 'Aliansi Mahasiswa Perguruan Tinggi Negeri Seluruh Indonesia', 65, 'KOTA SEMARANG', '', NULL, NULL, 3, '<p>Simulasi SBMPTN terbaik di Indonesia</p>\r\n<p>IG : @grand_sbmptn</p>\r\n<p>Line :@grand_sbmptn</p>\r\n<p>FB Fanpage : @grand_sbmptn</p>', NULL, 0, 1, '2021-03-30 12:48:12', NULL, 1);
/*!40000 ALTER TABLE `lembaga` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.lembaga_type
CREATE TABLE IF NOT EXISTS `lembaga_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.lembaga_type: ~10 rows (approximately)
/*!40000 ALTER TABLE `lembaga_type` DISABLE KEYS */;
REPLACE INTO `lembaga_type` (`id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 'SD/Sederajat', '2021-03-30 12:42:31', NULL, 1),
	(2, 'SMP/Sederajat', '2021-03-30 12:42:44', NULL, 1),
	(3, 'SMA/Sederajat', '2021-03-30 12:42:53', NULL, 1),
	(4, 'Lembaga Bimbel/Course', '2021-03-30 12:42:53', NULL, 1),
	(5, 'Yayasan Pendidikan', '2021-03-30 12:43:30', NULL, 1),
	(6, 'Organisasi', '2021-03-30 12:43:40', NULL, 1),
	(7, 'Lembaga Pemerintah', '2021-03-30 12:43:58', NULL, 1),
	(8, 'Perusahaan', '2021-03-30 12:44:09', NULL, 1),
	(9, 'Perguruan Tinggi', '2021-03-30 12:44:23', NULL, 1),
	(10, 'Perseorangan', '2021-03-30 12:44:23', NULL, 1);
/*!40000 ALTER TABLE `lembaga_type` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.lembaga_user
CREATE TABLE IF NOT EXISTS `lembaga_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lembaga_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `file` varchar(255) NOT NULL DEFAULT '',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `user_lembaga_id` (`lembaga_id`),
  KEY `user_user_id` (`user_id`),
  CONSTRAINT `user_lembaga_id` FOREIGN KEY (`lembaga_id`) REFERENCES `lembaga` (`id`),
  CONSTRAINT `user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.lembaga_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `lembaga_user` DISABLE KEYS */;
REPLACE INTO `lembaga_user` (`id`, `lembaga_id`, `user_id`, `name`, `email`, `file`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(3, 2, 3, 'Candra Aji Pamungkas', 'candraajipamungkas@gmail.com', '', '2021-03-30 15:23:35', '2021-04-11 22:08:13', 1),
	(4, 2, 27, 'Admin Zambert', 'admin@zambert.com', '', '2021-04-11 17:15:57', NULL, 1);
/*!40000 ALTER TABLE `lembaga_user` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.materi
CREATE TABLE IF NOT EXISTS `materi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.materi: ~3 rows (approximately)
/*!40000 ALTER TABLE `materi` DISABLE KEYS */;
REPLACE INTO `materi` (`id`, `name`, `created_by`, `created_datetime`, `updated_by`, `updated_datetime`, `is_enable`) VALUES
	(2, 'PENALARAN UMUM', 27, '2021-03-18 00:00:00', 27, '2021-03-27 12:10:48', 1),
	(12, 'SBMPTN', 27, '2021-04-15 14:40:32', NULL, NULL, 1),
	(13, 'BAHASA INGGRIS', 27, '2021-04-24 06:36:36', NULL, NULL, 1);
/*!40000 ALTER TABLE `materi` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.mode_peserta
CREATE TABLE IF NOT EXISTS `mode_peserta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `created_datetime` datetime NOT NULL,
  `edited_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.mode_peserta: ~2 rows (approximately)
/*!40000 ALTER TABLE `mode_peserta` DISABLE KEYS */;
REPLACE INTO `mode_peserta` (`id`, `name`, `created_datetime`, `edited_datetime`, `is_enable`) VALUES
	(1, 'KELOMPOK', '2021-04-16 06:28:53', NULL, 1),
	(2, 'PILIH MANUAL', '2021-04-16 06:29:04', NULL, 1);
/*!40000 ALTER TABLE `mode_peserta` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.paket_soal
CREATE TABLE IF NOT EXISTS `paket_soal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type_paket_id` int(11) NOT NULL DEFAULT 0,
  `type_paket_name` varchar(50) NOT NULL,
  `buku_id` int(11) DEFAULT 0,
  `buku_name` varchar(150) DEFAULT '',
  `detail_buku_id` int(11) DEFAULT 0,
  `detail_buku_name` varchar(50) DEFAULT '',
  `kelas_id` int(11) NOT NULL,
  `kelas_name` varchar(30) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `materi_name` varchar(255) NOT NULL,
  `detail_mode_jwb_id` int(11) NOT NULL COMMENT 'Detail mode jawab pilihan ganda',
  `is_acak_soal` tinyint(1) NOT NULL DEFAULT 0,
  `is_acak_jawaban` tinyint(1) NOT NULL DEFAULT 0,
  `pengaturan_universal_id` int(11) DEFAULT NULL,
  `skor_null` int(5) DEFAULT 0 COMMENT '0 Tidak ada skor',
  `is_continuous` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Tidak 1 Ya',
  `is_jawab` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Tidak harus jawab 1 Haru jawab',
  `is_free` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Tidak Free 1 Free',
  `petunjuk` longtext CHARACTER SET utf8 DEFAULT NULL,
  `visual_limit` int(2) DEFAULT 1 COMMENT 'Batas pemutaran audio / video',
  `file` varchar(255) DEFAULT NULL COMMENT 'Bisa audio bisa video',
  `tipe_file` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `kelas_id_paket` (`kelas_id`),
  KEY `materi_id_paket` (`materi_id`),
  KEY `detail_mode_jwb_paket` (`detail_mode_jwb_id`),
  KEY `type_paket_soal` (`type_paket_id`),
  CONSTRAINT `detail_mode_jwb_paket` FOREIGN KEY (`detail_mode_jwb_id`) REFERENCES `detail_mode_jawaban` (`id`),
  CONSTRAINT `kelas_id_paket` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  CONSTRAINT `materi_id_paket` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`),
  CONSTRAINT `type_paket_soal` FOREIGN KEY (`type_paket_id`) REFERENCES `type_paket` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.paket_soal: ~3 rows (approximately)
/*!40000 ALTER TABLE `paket_soal` DISABLE KEYS */;
REPLACE INTO `paket_soal` (`id`, `name`, `type_paket_id`, `type_paket_name`, `buku_id`, `buku_name`, `detail_buku_id`, `detail_buku_name`, `kelas_id`, `kelas_name`, `materi_id`, `materi_name`, `detail_mode_jwb_id`, `is_acak_soal`, `is_acak_jawaban`, `pengaturan_universal_id`, `skor_null`, `is_continuous`, `is_jawab`, `is_free`, `petunjuk`, `visual_limit`, `file`, `tipe_file`, `created_by`, `created_datetime`, `updated_by`, `updated_datetime`, `is_enable`) VALUES
	(6, 'SOAL GRANDSBMPTN', 1, 'UJIAN', 0, '', 0, '', 2, 'SD KELAS 2', 2, 'PENALARAN UMUM', 3, 1, 1, 2, 0, 0, 0, 0, '<p><span class="note-math"><span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mi>x</mi><mo>=</mo><mrow><mo fence="true">{</mo><mtable rowspacing="0.3600em" columnalign="left left" columnspacing="1em"><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>a</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mrow><mtext>if&nbsp;</mtext><mi>b</mi></mrow></mstyle></mtd></mtr><mtr><mtd><mstyle scriptlevel="0" displaystyle="false"><mi>c</mi></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="false"><mrow><mtext>if&nbsp;</mtext><mi>d</mi></mrow></mstyle></mtd></mtr></mtable></mrow></mrow><annotation encoding="application/x-tex">x = \\begin{cases}\r\n   a &amp;\\text{if } b \\\\\r\n   c &amp;\\text{if } d\r\n\\end{cases}</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height: 0.43056em; vertical-align: 0em;"></span><span class="mord mathnormal">x</span><span class="mspace" style="margin-right: 0.277778em;"></span><span class="mrel">=</span><span class="mspace" style="margin-right: 0.277778em;"></span></span><span class="base"><span class="strut" style="height: 3.00003em; vertical-align: -1.25003em;"></span><span class="minner"><span class="mopen delimcenter" style="top: 0em;"><span class="delimsizing size4">{</span></span><span class="mord"><span class="mtable"><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.69em;"><span class="" style="top: -3.69em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord mathnormal">a</span></span></span><span class="" style="top: -2.25em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord mathnormal">c</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 1.19em;"><span class=""></span></span></span></span></span><span class="arraycolsep" style="width: 1em;"></span><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height: 1.69em;"><span class="" style="top: -3.69em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord text"><span class="mord">if&nbsp;</span></span><span class="mord mathnormal">b</span></span></span><span class="" style="top: -2.25em;"><span class="pstrut" style="height: 3.008em;"></span><span class="mord"><span class="mord text"><span class="mord">if&nbsp;</span></span><span class="mord mathnormal">d</span></span></span></span><span class="vlist-s">?</span></span><span class="vlist-r"><span class="vlist" style="height: 1.19em;"><span class=""></span></span></span></span></span></span></span><span class="mclose nulldelimiter"></span></span></span></span></span><span class="note-latex" style="display: none;"><br></span></span></p><p><span class="note-math"><span class="note-latex" style="display: none;"><br></span></span></p><p><span class="note-math"><span class="note-latex" style="display: none;"><br></span></span>ORA UMUM</p>', 1, NULL, NULL, 27, '2021-03-21 12:36:01', 27, '2021-04-15 13:11:49', 1),
	(9, 'Modul Matematika', 2, 'BUKU', 2, 'SBMPTN', 1, 'SAINTEK', 27, 'UMUM', 12, 'SBMPTN', 3, 1, 1, 2, 0, 0, 0, 1, '<p><br></p>', 0, NULL, NULL, 27, '2021-04-15 14:41:56', NULL, NULL, 1),
	(10, 'Soal TOEFL', 1, 'UJIAN', -1, NULL, -1, NULL, 12, 'SMA KELAS 12', 13, 'BAHASA INGGRIS', 3, 1, 1, 10, 0, 0, 0, 0, '<p>Berisi soal Listening, Structure and Written, Reading</p>', 1, NULL, NULL, 27, '2021-04-24 06:47:15', NULL, NULL, 1);
/*!40000 ALTER TABLE `paket_soal` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.payment_method
CREATE TABLE IF NOT EXISTS `payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.payment_method: ~2 rows (approximately)
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
REPLACE INTO `payment_method` (`id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 'BANK', '2021-04-17 11:06:38', NULL, 1),
	(2, 'QRIS', '2021-04-17 11:06:38', NULL, 1);
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.payment_method_detail
CREATE TABLE IF NOT EXISTS `payment_method_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method_id` int(11) NOT NULL,
  `logo_payment` varchar(255) DEFAULT NULL,
  `image_payment` varchar(255) DEFAULT NULL,
  `bank_name` varchar(20) DEFAULT NULL,
  `bank_account` varchar(150) DEFAULT NULL,
  `bank_number` varchar(100) DEFAULT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `payment_method_detail` (`payment_method_id`),
  CONSTRAINT `payment_method_detail` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.payment_method_detail: ~3 rows (approximately)
/*!40000 ALTER TABLE `payment_method_detail` DISABLE KEYS */;
REPLACE INTO `payment_method_detail` (`id`, `payment_method_id`, `logo_payment`, `image_payment`, `bank_name`, `bank_account`, `bank_number`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(2, 1, '292f4c94ea09ef2b89516fbb18bfe5ae.png', NULL, 'BNI', 'Mohammad Fakhrulzami', '0619303221', '2021-04-17 12:16:24', '2021-04-17 12:31:45', 1),
	(3, 1, 'b03cbe43961c233e44f4acbe0c230080.png', NULL, 'BRI', 'Mohammad Fakhrulzami', '008301115948501', '2021-04-17 12:18:46', NULL, 1),
	(5, 2, NULL, 'd78e636117364afea033d3e1e10874b3.JPG', NULL, NULL, NULL, '2021-04-17 12:28:19', '2021-04-17 12:30:43', 1);
/*!40000 ALTER TABLE `payment_method_detail` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.pembahasan
CREATE TABLE IF NOT EXISTS `pembahasan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_soal_id` int(11) NOT NULL,
  `url` text DEFAULT NULL,
  `pembahasan` longtext NOT NULL DEFAULT '',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `bank_soal_id_pembahasan` (`bank_soal_id`),
  CONSTRAINT `bank_soal_id_pembahasan` FOREIGN KEY (`bank_soal_id`) REFERENCES `bank_soal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.pembahasan: ~32 rows (approximately)
/*!40000 ALTER TABLE `pembahasan` DISABLE KEYS */;
REPLACE INTO `pembahasan` (`id`, `bank_soal_id`, `url`, `pembahasan`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 34, 'https://www.youtube.com/watch?v=VpCh53Fierg', '<p>apalah</p>', '2021-04-13 11:45:17', NULL, 1),
	(2, 35, 'www.youoru.co', 'Cara upload excel', '2021-04-13 15:39:44', NULL, 1),
	(7, 40, 'www.youoru.co', 'Cara upload excel', '2021-04-13 15:54:53', NULL, 1),
	(8, 41, 'www.youorues.co', 'Cara upload excel essay', '2021-04-13 15:54:54', NULL, 1),
	(9, 43, '', '', '2021-04-24 07:23:50', NULL, 1),
	(10, 44, 'https://www.youtube.com/embed/yxvaURdWJS8', '<p>apalah</p>', '2021-04-24 07:28:23', NULL, 1),
	(11, 45, '', '', '2021-04-24 07:29:32', NULL, 1),
	(12, 46, '', '', '2021-04-24 07:30:30', NULL, 1),
	(13, 47, '', '', '2021-04-24 07:31:45', NULL, 1),
	(14, 48, '', '', '2021-04-24 07:32:51', NULL, 1),
	(15, 49, '', '', '2021-04-24 07:33:47', NULL, 1),
	(16, 50, '', '', '2021-04-24 07:34:39', NULL, 1),
	(17, 51, '', '', '2021-04-24 07:35:36', NULL, 1),
	(18, 52, '', '', '2021-04-24 07:36:18', NULL, 1),
	(19, 53, '', '', '2021-04-24 07:37:04', NULL, 1),
	(20, 54, '', '', '2021-04-24 07:37:49', NULL, 1),
	(21, 55, '', '', '2021-04-24 07:40:30', NULL, 1),
	(22, 56, '', '', '2021-04-24 07:53:40', NULL, 1),
	(23, 57, '', '', '2021-04-24 07:54:31', NULL, 1),
	(24, 58, '', '', '2021-04-24 08:09:53', NULL, 1),
	(25, 59, '', '', '2021-04-24 08:12:44', NULL, 1),
	(26, 60, '', '', '2021-04-24 08:14:01', NULL, 1),
	(27, 61, '', '', '2021-04-24 08:15:42', NULL, 1),
	(28, 62, '', '', '2021-04-24 08:16:35', NULL, 1),
	(29, 63, '', '', '2021-04-24 08:18:39', NULL, 1),
	(30, 64, '', '', '2021-04-24 08:19:35', NULL, 1),
	(31, 65, '', '', '2021-04-24 08:20:22', NULL, 1),
	(32, 66, '', '', '2021-04-24 08:22:29', NULL, 1),
	(33, 67, '', '', '2021-04-24 08:23:26', NULL, 1),
	(34, 68, '', '', '2021-04-24 08:24:33', NULL, 1),
	(35, 69, '', '', '2021-04-24 08:25:26', NULL, 1),
	(36, 70, '', '', '2021-04-24 08:27:09', NULL, 1);
/*!40000 ALTER TABLE `pembahasan` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.pengaturan_universal
CREATE TABLE IF NOT EXISTS `pengaturan_universal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `param` varchar(100) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.pengaturan_universal: ~9 rows (approximately)
/*!40000 ALTER TABLE `pengaturan_universal` DISABLE KEYS */;
REPLACE INTO `pengaturan_universal` (`id`, `name`, `detail`, `param`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 'SKALA NILAI', 'SKALA 100', '', '2021-03-19 00:00:00', NULL, 1),
	(2, 'SKALA NILAI', 'SESUAI SKOR', '', '2021-03-19 00:00:00', NULL, 1),
	(3, 'ZONA WAKTU', 'Waktu Indonesia Barat (WIB)', 'Asia/Jakarta', '2021-03-30 10:45:11', NULL, 1),
	(4, 'ZONA WAKTU', 'Waktu Indonesia Tengah (WITA)', 'Asia/Makassar', '2021-03-30 10:45:11', NULL, 1),
	(5, 'ZONA WAKTU', 'Waktu Indonesia Timur (WIT)', 'Asia/Jayapura', '2021-03-30 10:47:25', NULL, 1),
	(6, 'TEMPLATE UPLOAD', 'UPLOAD DATA PESERTA', 'template/upload_peserta/Template_Upload_Peserta.xlsx', '2021-04-01 15:49:20', NULL, 1),
	(8, 'TEMPLATE UPLOAD', 'UPLOAD DATA SOAL', 'template/upload_soal/Template_upload_soal.xlsx', '2021-04-13 00:00:00', NULL, 1),
	(9, 'TEMPLATE UPLOAD', 'UPLOAD DATA KONVERSI', 'template/upload_konversi/Template_upload_konversi.xlsx', '2021-04-14 12:46:34', NULL, 1),
	(10, 'SKALA NILAI', '(TOTAL SKOR / 3) x 10', '', '2021-03-19 00:00:00', NULL, 1);
/*!40000 ALTER TABLE `pengaturan_universal` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.peserta
CREATE TABLE IF NOT EXISTS `peserta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lembaga_id` int(11) NOT NULL,
  `no_peserta` varchar(75) NOT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `group_peserta_id` int(11) DEFAULT 0,
  `name` varchar(150) NOT NULL DEFAULT '',
  `file` varchar(255) DEFAULT '',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_lock` tinyint(1) NOT NULL DEFAULT 0,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `peserta_user_id` (`user_id`),
  KEY `peserta_lembaga_id` (`lembaga_id`),
  CONSTRAINT `peserta_lembaga_id` FOREIGN KEY (`lembaga_id`) REFERENCES `lembaga` (`id`),
  CONSTRAINT `peserta_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.peserta: ~16 rows (approximately)
/*!40000 ALTER TABLE `peserta` DISABLE KEYS */;
REPLACE INTO `peserta` (`id`, `user_id`, `lembaga_id`, `no_peserta`, `no_telp`, `group_peserta_id`, `name`, `file`, `created_datetime`, `updated_datetime`, `is_lock`, `is_enable`) VALUES
	(3, 6, 2, '202103310001', NULL, 1, 'Candra Aji Pamungkas', '', '2021-03-31 15:49:00', '2021-04-22 10:39:14', 0, 1),
	(4, 7, 2, '202103310001', NULL, 0, 'Fakhrul Zami', '', '2021-03-31 15:57:11', '2021-04-22 10:39:14', 0, 1),
	(8, 17, 2, '202104010001', NULL, 10, 'Imanuel', '', '2021-04-06 13:55:30', '2021-04-22 10:39:14', 1, 1),
	(9, 18, 2, '202104010002', NULL, 10, 'Sebastian', '', '2021-04-06 13:55:31', '2021-04-22 10:39:14', 1, 1),
	(10, 19, 2, '202104010003', NULL, 10, 'Tortelli', '', '2021-04-06 13:55:31', '2021-04-22 10:39:14', 0, 1),
	(11, 20, 2, '202104010004', NULL, 10, 'Manungga', '', '2021-04-06 13:55:31', '2021-04-22 10:39:14', 0, 1),
	(12, 21, 2, '202104010005', NULL, 10, 'Kito', '', '2021-04-06 13:55:31', '2021-04-22 10:39:14', 0, 1),
	(13, 22, 2, '202104010006', NULL, 10, 'Juki', '', '2021-04-06 13:55:31', '2021-04-22 10:39:14', 0, 1),
	(14, 23, 2, '202104010007', NULL, 10, 'Koli', '', '2021-04-06 13:55:31', '2021-04-22 10:39:14', 0, 1),
	(15, 24, 2, '202104010008', NULL, 10, 'Kulz', '', '2021-04-06 13:55:31', '2021-04-22 10:39:14', 0, 1),
	(16, 25, 2, '202104010009', NULL, 10, 'Afanda', '', '2021-04-06 13:55:31', '2021-04-22 10:39:14', 0, 1),
	(17, 26, 2, '202104010010', NULL, 10, 'Dimas', '', '2021-04-06 13:55:32', '2021-04-22 10:39:14', 0, 1),
	(18, 17, 2, '202104120003', NULL, 10, 'Imanuel', '', '2021-04-12 08:51:26', '2021-04-22 10:39:14', 0, 1),
	(19, 18, 2, '202104120004', NULL, 10, 'Sebastian', '', '2021-04-12 08:51:26', '2021-04-22 10:39:14', 0, 1),
	(22, 30, 2, '202104190337', '085826046070', 0, 'Temam Murbianto', '', '2021-04-19 16:14:48', '2021-04-22 10:39:14', 0, 1),
	(23, 31, 2, '202104198300', '089874875847', 0, 'Richal Maulana', '', '2021-04-19 17:56:12', '2021-04-22 10:39:14', 0, 1);
/*!40000 ALTER TABLE `peserta` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.role_user: ~3 rows (approximately)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
REPLACE INTO `role_user` (`id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 'Admin', '2021-03-30 10:28:32', NULL, 1),
	(2, 'Peserta', '2021-03-30 10:28:32', NULL, 1),
	(3, 'Lembaga', '2021-03-30 10:28:32', NULL, 1);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.sesi_pelaksanaan
CREATE TABLE IF NOT EXISTS `sesi_pelaksanaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paket_soal_id` int(11) NOT NULL,
  `name` text NOT NULL DEFAULT '',
  `mode_peserta_id` int(11) NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `lama_pengerjaan` int(5) NOT NULL DEFAULT 0,
  `batas_pengerjaan` datetime DEFAULT NULL,
  `blok_layar` int(4) DEFAULT NULL,
  `is_fleksible` tinyint(1) NOT NULL DEFAULT 0,
  `is_hasil` tinyint(1) NOT NULL DEFAULT 0,
  `is_ranking` tinyint(1) NOT NULL DEFAULT 0,
  `is_pembahasan` tinyint(1) NOT NULL DEFAULT 0,
  `is_komposisi_soal` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 gunakan semua',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `paket_soal_sesi` (`paket_soal_id`),
  KEY `mode_peserta_sesi` (`mode_peserta_id`),
  CONSTRAINT `mode_peserta_sesi` FOREIGN KEY (`mode_peserta_id`) REFERENCES `mode_peserta` (`id`),
  CONSTRAINT `paket_soal_sesi` FOREIGN KEY (`paket_soal_id`) REFERENCES `paket_soal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.sesi_pelaksanaan: ~2 rows (approximately)
/*!40000 ALTER TABLE `sesi_pelaksanaan` DISABLE KEYS */;
REPLACE INTO `sesi_pelaksanaan` (`id`, `paket_soal_id`, `name`, `mode_peserta_id`, `waktu_mulai`, `lama_pengerjaan`, `batas_pengerjaan`, `blok_layar`, `is_fleksible`, `is_hasil`, `is_ranking`, `is_pembahasan`, `is_komposisi_soal`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 6, 'Sesi Ujian Grandsbmptn 2021', 1, '2021-04-26 05:00:00', 360, '2021-04-27 10:28:00', 1, 1, 1, 1, 1, 1, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(2, 10, 'Sesi Ujian Tes TOEFL', 2, '2021-04-26 05:00:00', 360, '2021-04-29 16:00:00', 1, 1, 1, 1, 1, 1, '2021-04-24 08:31:06', NULL, 1);
/*!40000 ALTER TABLE `sesi_pelaksanaan` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.sesi_pelaksanaan_komposisi
CREATE TABLE IF NOT EXISTS `sesi_pelaksanaan_komposisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sesi_pelaksanaan_id` int(11) NOT NULL,
  `group_soal_id` int(11) DEFAULT NULL,
  `total_soal` int(5) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `sesi_pelaksanaan_komposisi` (`sesi_pelaksanaan_id`),
  CONSTRAINT `sesi_pelaksanaan_komposisi` FOREIGN KEY (`sesi_pelaksanaan_id`) REFERENCES `sesi_pelaksanaan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.sesi_pelaksanaan_komposisi: ~11 rows (approximately)
/*!40000 ALTER TABLE `sesi_pelaksanaan_komposisi` DISABLE KEYS */;
REPLACE INTO `sesi_pelaksanaan_komposisi` (`id`, `sesi_pelaksanaan_id`, `group_soal_id`, `total_soal`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 1, 0, 14, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(2, 1, 1, 1, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(3, 1, 2, 1, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(4, 1, 4, 2, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(5, 2, 6, 2, '2021-04-24 08:31:06', NULL, 1),
	(6, 2, 7, 2, '2021-04-24 08:31:06', NULL, 1),
	(7, 2, 8, 2, '2021-04-24 08:31:06', NULL, 1),
	(8, 2, 10, 2, '2021-04-24 08:31:06', NULL, 1),
	(9, 2, 11, 2, '2021-04-24 08:31:06', NULL, 1),
	(10, 2, 13, 2, '2021-04-24 08:31:06', NULL, 1),
	(11, 2, 14, 2, '2021-04-24 08:31:06', NULL, 1);
/*!40000 ALTER TABLE `sesi_pelaksanaan_komposisi` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.sesi_pelaksanaan_user
CREATE TABLE IF NOT EXISTS `sesi_pelaksanaan_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sesi_pelaksanaan_id` int(11) NOT NULL,
  `group_peserta_id` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `sesi_pelaksanaan_user` (`sesi_pelaksanaan_id`),
  KEY `user_id_sesi` (`user_id`),
  CONSTRAINT `sesi_pelaksanaan_user` FOREIGN KEY (`sesi_pelaksanaan_id`) REFERENCES `sesi_pelaksanaan` (`id`),
  CONSTRAINT `user_id_sesi` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.sesi_pelaksanaan_user: ~14 rows (approximately)
/*!40000 ALTER TABLE `sesi_pelaksanaan_user` DISABLE KEYS */;
REPLACE INTO `sesi_pelaksanaan_user` (`id`, `sesi_pelaksanaan_id`, `group_peserta_id`, `user_id`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 1, 1, 6, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(2, 1, 10, 19, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 0),
	(3, 1, 10, 20, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(4, 1, 10, 21, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(5, 1, 10, 22, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(6, 1, 10, 23, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(7, 1, 10, 24, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(8, 1, 10, 25, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(9, 1, 10, 26, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(10, 1, 10, 17, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 0),
	(11, 1, 10, 18, '2021-04-16 16:37:53', '2021-04-16 23:07:41', 1),
	(17, 1, 0, 30, '2021-04-22 15:43:17', NULL, 1),
	(18, 2, 0, 30, '2021-04-24 08:31:06', NULL, 1),
	(19, 2, 0, 31, '2021-04-27 21:21:20', NULL, 0);
/*!40000 ALTER TABLE `sesi_pelaksanaan_user` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.tipe_kesulitan
CREATE TABLE IF NOT EXISTS `tipe_kesulitan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.tipe_kesulitan: ~5 rows (approximately)
/*!40000 ALTER TABLE `tipe_kesulitan` DISABLE KEYS */;
REPLACE INTO `tipe_kesulitan` (`id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 'SANGAT MUDAH', '2021-03-19 00:00:00', NULL, 1),
	(2, 'MUDAH', '2021-03-19 00:00:00', NULL, 1),
	(3, 'SEDANG', '2021-03-19 00:00:00', NULL, 1),
	(4, 'SUKAR', '2021-03-19 00:00:00', NULL, 1),
	(5, 'SANGAT SUKAR', '2021-03-19 00:00:00', NULL, 1);
/*!40000 ALTER TABLE `tipe_kesulitan` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.type_paket
CREATE TABLE IF NOT EXISTS `type_paket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.type_paket: ~3 rows (approximately)
/*!40000 ALTER TABLE `type_paket` DISABLE KEYS */;
REPLACE INTO `type_paket` (`id`, `name`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 'UJIAN', '2021-04-15 10:45:06', NULL, 1),
	(2, 'BUKU', '2021-04-15 10:45:06', NULL, 1),
	(3, 'FLEKSIBLE', '2021-04-15 10:46:06', NULL, 1);
/*!40000 ALTER TABLE `type_paket` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.ujian
CREATE TABLE IF NOT EXISTS `ujian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sesi_pelaksanaan_id` int(11) DEFAULT 0,
  `paket_soal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_no` varchar(75) NOT NULL DEFAULT '',
  `user_name` varchar(150) NOT NULL DEFAULT '',
  `user_email` varchar(150) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(5) NOT NULL DEFAULT 0,
  `jml_salah` int(5) NOT NULL DEFAULT 0,
  `jml_ragu` int(5) NOT NULL DEFAULT 0,
  `jml_kosong` int(5) NOT NULL DEFAULT 0,
  `skor` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Mulai 1 Selesai',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `paket_soal_ujian` (`paket_soal_id`),
  KEY `user_ujian` (`user_id`),
  CONSTRAINT `paket_soal_ujian` FOREIGN KEY (`paket_soal_id`) REFERENCES `paket_soal` (`id`),
  CONSTRAINT `user_ujian` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.ujian: ~2 rows (approximately)
/*!40000 ALTER TABLE `ujian` DISABLE KEYS */;
REPLACE INTO `ujian` (`id`, `sesi_pelaksanaan_id`, `paket_soal_id`, `user_id`, `user_no`, `user_name`, `user_email`, `list_soal`, `list_jawaban`, `jml_benar`, `jml_salah`, `jml_ragu`, `jml_kosong`, `skor`, `tgl_mulai`, `tgl_selesai`, `status`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(27, 2, 10, 30, '202104190337', 'Temam Murbianto', 'lucknutdev@gmail.com', '6|46,6|44,7|50,7|49,8|53,8|51,10|58,10|57,11|60,11|62,13|66,13|65,14|68,14|69', '5|46|2|N,5|44|1|N,5|50|3|N,5|49|1|N,5|53||N,5|51||N,9|58|4|Y,9|57|3|N,9|60|2|N,9|62||N,12|66||N,12|65|1|N,12|68|3|N,12|69||N', 7, 2, 1, 5, 236.67, '2021-04-26 11:33:44', '2021-04-29 15:52:04', 1, '2021-04-26 11:33:45', '2021-04-29 15:50:13', 1),
	(30, 1, 10, 25, '202104190337', 'Temam Murbianto', 'lucknutdev@gmail.com', '6|46,6|44,7|50,7|49,8|53,8|51,10|58,10|57,11|60,11|62,13|66,13|65,14|68,14|69', '5|46|2|N,5|44|1|N,5|50|3|N,5|49|1|N,5|53||N,5|51||N,9|58|4|Y,9|57|3|N,9|60|2|N,9|62||N,12|66||N,12|65|1|N,12|68|3|N,12|69||N', 7, 2, 1, 5, 100.00, '2021-04-26 11:33:44', '2021-04-29 15:52:04', 1, '2021-04-26 11:33:45', '2021-04-29 15:50:13', 1);
/*!40000 ALTER TABLE `ujian` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.ujian_skor
CREATE TABLE IF NOT EXISTS `ujian_skor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ujian_id` int(11) NOT NULL,
  `group_soal_id` int(11) NOT NULL DEFAULT 0,
  `skor_original` int(11) NOT NULL DEFAULT 0,
  `skor_konversi` int(4) NOT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  `created_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ujian_konversi` (`ujian_id`),
  CONSTRAINT `ujian_konversi` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.ujian_skor: ~3 rows (approximately)
/*!40000 ALTER TABLE `ujian_skor` DISABLE KEYS */;
REPLACE INTO `ujian_skor` (`id`, `ujian_id`, `group_soal_id`, `skor_original`, `skor_konversi`, `is_enable`, `created_datetime`) VALUES
	(60, 27, 5, 4, 28, 1, '2021-04-29 15:50:13'),
	(61, 27, 9, 1, 20, 1, '2021-04-29 15:50:13'),
	(62, 27, 12, 2, 23, 1, '2021-04-29 15:50:13');
/*!40000 ALTER TABLE `ujian_skor` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_user_id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL DEFAULT '',
  `password` varchar(355) NOT NULL DEFAULT '',
  `is_login` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Tidak Login 1 Masih Online',
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `user_role_user_id` (`role_user_id`),
  CONSTRAINT `user_role_user_id` FOREIGN KEY (`role_user_id`) REFERENCES `role_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COMMENT='untuk detail peserta ada di tabel peserta\r\nuntuk detail lembaga ada di tabel lembaga';

-- Dumping data for table candraaj_cbt.user: ~16 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `role_user_id`, `username`, `password`, `is_login`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(3, 3, 'candraajipamungkas@gmail.com', '1db65964703b23346537b3df0012dd7ca57dd14948d785d8acd16f620104633916fe5aa00bc087f235a524e4d9074bad605ecd056c928b1a9b05c6bddd0b6b8eFyjxLo55HJ2Nldu5S11F1Fz5Nihvfy6TeBe5CaTjAQc=', 0, '2021-03-30 15:23:35', '2021-04-22 10:39:14', 1),
	(6, 2, 'IvSpy@1617180540', '393085c723106cab5e06d8991f68d98176e45d53e502aa5f60fd7eb219ace99ec5f2a388c594578b35d189114975010039ce6c2d74ec0740dce2a6928b3a65acY7PDO+8ix1qNrBVMkLtP6gD8dvoRvr5d+4EzTOOMD+o=', 0, '2021-03-31 15:49:00', '2021-04-22 10:39:14', 1),
	(7, 2, 'fakhrulzami@yahoo.com', '70670e651cbdb9922fa631b3d73af25131062c27d1994f2409aa4ebfe434bb1a9f23667f9dea7759c49fbe20f7477b574f4c87328274ab33fb38ca2dfadb7dacpGhK5IHq7o35URracEFTnmDTIETXtMJDo/+4X6r8+b0=', 0, '2021-03-31 15:57:11', '2021-04-22 10:39:14', 1),
	(17, 2, 'Imanuel@gmail.com', 'b8537076499fa17705c16c961e104523821b0a5d06d6135154f1dccf2c89a387b1367974b46a7f91951ed63d816106221f4cc7dcc5c588b8f389e6d4fecf7002UpswYQ/0slA0B5PwrSijS69amYoCckwN2QWS8ysGQlk=', 0, '2021-04-06 13:55:30', '2021-04-22 10:39:14', 1),
	(18, 2, 'Sebastian@gmail.com', '4a964722459eb4bf33e8ab50cf181ff5141ef04d87d78e413380aeb07305d887fc3cae4d4759473e00b066bd530aaff936f4fd075199ed9ddb86d4f1bba20f72h3kEOEOAj+jqBOVmcVf+xJJzj4FL6EHc6xrtjrsAITw=', 0, '2021-04-06 13:55:31', '2021-04-22 10:39:14', 1),
	(19, 2, 'Tortelli@gmail.com', '9e92986ab8888b52bdcc453b142f56cdbc809c0c593f9a3ec2a3fe3af8a6c7e45a1b57bcd43db5f59a7e9a3d845632bf5dc34370ac18de902c3a6360ee94d6cdS85hDPVbR9Moa03l+wsJr61+Fjblq3Ypz53U32Ainlc=', 0, '2021-04-06 13:55:31', '2021-04-22 10:39:14', 1),
	(20, 2, 'Manungga@gmail.com', '90e0ec9062907f6056dd80dabe03354f19c4fb92b1e521fd2d1735f37eedc2e7dd0555e4c2436a09742956f857466e0bbfa47c4f288c7d42e914fdb48765e256ds9w2XS4TsmgGaZcrbnA5E0aYbV8fIwB4ehtoTFAq8g=', 0, '2021-04-06 13:55:31', '2021-04-22 10:39:14', 1),
	(21, 2, 'Kito@gmail.com', '66dd124c231b028daa7f148a1c6d35da36ea7c55db5aae762ea039919c3dd6648e4eff85da91bec5339065fb6b3ea514d91f483caa53c0404218e0029fc371ce8A7ZgJUT81eUGpznRiHrCl6ZOv52UbhRY2r/fBydMCw=', 0, '2021-04-06 13:55:31', '2021-04-22 10:39:14', 1),
	(22, 2, 'Juki@gmail.com', 'e78c5ec480a194a5f0832ee022e879026680651e0b90e185ae8ed47c5db5e27ab29ea6078a23e7b31aae5cf0ebc557ddcb2f3d3832b94f7c4ddc5c6514d0782eopObOhAoKHlqQvlRtIfZTMo0AydN2XCnxUopNXJv0t0=', 0, '2021-04-06 13:55:31', '2021-04-22 10:39:14', 1),
	(23, 2, 'Koli@gmail.com', 'dc48fcdfbc4f1ae8ce592438775dea99c3f3f33672a162f0c1cc37c4046d79c4b5057fc8d0b8936286550e97a203b4793b8b0c8eaeba7c4dec7f6cabc2e830e7ggke6n+h2YkqkhFZwYxskrE4t+twKu10mtA8vswTYhY=', 0, '2021-04-06 13:55:31', '2021-04-22 10:39:14', 1),
	(24, 2, 'Kulz@gmail.com', 'f4281fa3ad821b32595110e0ad46c02f4d7a8d037d4f9ff9ba3bf9a31a02e3aad0c2e6fe3ef141f806066448a163080136f6af9bc0fcc867bca4be70ca6f41a0T/JpyQgDvKxryDhWJpCck+8mUS8aOxfotPh7wyHcCqQ=', 0, '2021-04-06 13:55:31', '2021-04-22 10:39:14', 1),
	(25, 2, 'Afanda@gmail.com', 'ab9c43ec2c8609bdb6c4c2e0cc68b0bddadda52abacba8f1606944e6c6d8cd9df2506120799846abb1bf4ec78dfac68d94906a117af874062c9451efd253cef39tqqrcVAMwWhnId5Hx3yx+bY6RVP8Su4eYKPv8BMB/Y=', 0, '2021-04-06 13:55:31', '2021-04-22 10:39:14', 1),
	(26, 2, 'Dimas@gmail.com', '957c66032c394a76ee5324399582096d83ff48c2186dc9fe096273ef68288640ae1661930530e2393f7600b91d690c1c966b473834d4f5958a9977fe4f300ccdA6em7t4FIu39D9tHqrzlyjZYokT6RZXA5XTA6P5CCWU=', 0, '2021-04-06 13:55:31', '2021-04-22 10:39:14', 1),
	(27, 3, 'admin@zambert.com', 'f6dde5c9d3ea199de2586eb12ebe745153e3a00c56603b52555466fc4bf9c462f2b20a262a6ccf6ba702208fc243c17ed01ac127df5e9847eb774fa1c303620e52MUncVj4ReOF07KhHyRwB23HYb0ePHuTlhplcCuJx0=', 0, '2021-04-11 17:15:57', '2021-04-22 10:39:14', 1),
	(30, 2, 'lucknutdev@gmail.com', 'b42645b02ae4d11d6d9a49abf46d10f43738e23f3d82de5c72bbfa62ddf0eb9206498cf2410e0903d216741b51305b3f5d99b4dd9302d298e50d08e0b5557620NYNYD68gR1eefdYF2qUXby2nlpI4BWTjKexz86QMyFE=', 0, '2021-04-19 16:14:48', '2021-04-22 10:39:14', 1),
	(31, 2, 'richal@gmail.com', 'f9ac8948182e8336fb593349d4ca77cf614f02f3512cf801307e1ed606cb4be08380887b0d5a7cdf39258dd2a8de9799fe4ad06b114eccafb153b0e0ba9e4114FO77fUxkGTUTsuv5sBnsG5DZjxqOhusvwfwIyd19YUo=', 0, '2021-04-19 17:56:12', '2021-04-22 10:39:14', 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.user_pembelian_buku
CREATE TABLE IF NOT EXISTS `user_pembelian_buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `invoice_number` varchar(14) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL DEFAULT '',
  `user_email` varchar(150) NOT NULL DEFAULT '',
  `user_telp` varchar(13) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `detail_buku_id` int(11) DEFAULT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `invoice_pembelian_buku` (`invoice_id`),
  KEY `user_pembelian_buku` (`user_id`),
  KEY `buku_pembelian_buku` (`buku_id`),
  CONSTRAINT `buku_pembelian_buku` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`),
  CONSTRAINT `invoice_pembelian_buku` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  CONSTRAINT `user_pembelian_buku` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.user_pembelian_buku: ~1 rows (approximately)
/*!40000 ALTER TABLE `user_pembelian_buku` DISABLE KEYS */;
REPLACE INTO `user_pembelian_buku` (`id`, `invoice_id`, `invoice_number`, `user_id`, `user_name`, `user_email`, `user_telp`, `buku_id`, `detail_buku_id`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(2, 16, '202105025397-2', 30, 'Temam Murbianto', 'lucknutdev@gmail.com', '085826046070', 2, 1, '2021-05-03 20:37:32', NULL, 1);
/*!40000 ALTER TABLE `user_pembelian_buku` ENABLE KEYS */;

-- Dumping structure for table candraaj_cbt.voucher
CREATE TABLE IF NOT EXISTS `voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '',
  `potongan` int(8) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table candraaj_cbt.voucher: ~0 rows (approximately)
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
REPLACE INTO `voucher` (`id`, `name`, `potongan`, `created_datetime`, `updated_datetime`, `is_enable`) VALUES
	(1, 'BMPT88', 12000, '2021-05-02 11:39:09', '2021-05-02 11:40:45', 1);
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;

-- Dumping structure for view candraaj_cbt.v_bank_soal
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_bank_soal` (
	`bank_soal_id` INT(11) NOT NULL,
	`paket_soal_id` INT(11) NOT NULL,
	`group_mode_jwb_id` INT(11) NOT NULL,
	`group_mode_jwb_name` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`no_soal` INT(11) NOT NULL,
	`bank_soal_name` LONGTEXT NOT NULL COLLATE 'utf8_general_ci',
	`kata_kunci` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`tipe_kesulitan_id` INT(11) NOT NULL,
	`tipe_kesulitan_name` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`group_soal_id` INT(11) NULL,
	`group_soal_name` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`group_soal_audio` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`group_soal_tipe_audio` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`group_soal_parent` INT(11) NULL,
	`group_soal_petunjuk` TEXT NULL COLLATE 'latin1_swedish_ci',
	`bacaan_soal_id` INT(11) NULL,
	`bacaan_soal_name` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`isi_bacaan_soal` LONGTEXT NULL COLLATE 'latin1_swedish_ci',
	`is_acak_soal` TINYINT(1) NOT NULL COMMENT '0 Tidak termasuk acakan 1 termasuk acakan',
	`acak_soal` VARCHAR(15) NOT NULL COLLATE 'utf8mb4_general_ci',
	`is_acak_jawaban` TINYINT(1) NOT NULL COMMENT '0 Tidak acak 1 acak',
	`acak_jawaban` VARCHAR(18) NOT NULL COLLATE 'utf8mb4_general_ci',
	`file` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`tipe_file` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`is_enable` TINYINT(1) NOT NULL,
	`status_data_soal` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci',
	`url_pembahasan` TEXT NULL COLLATE 'latin1_swedish_ci',
	`pembahasan` LONGTEXT NULL COLLATE 'latin1_swedish_ci',
	`created_datetime` DATETIME NOT NULL,
	`updated_datetime` DATETIME NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_group_peserta
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_group_peserta` (
	`group_peserta_id` INT(11) NULL,
	`group_peserta_name` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`jumlah_peserta` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_group_soal
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_group_soal` (
	`id_group_soal` INT(11) NOT NULL,
	`paket_soal_id` INT(11) NOT NULL,
	`parent_id` INT(11) NULL COMMENT 'Akan terisi id parent pada child group',
	`name_parent` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`name_group_soal` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`konversi_skor_id` INT(11) NULL,
	`name_konversi_skor` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`kode_group` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`petunjuk` TEXT NULL COLLATE 'latin1_swedish_ci',
	`file` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`tipe_file` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`is_parent` TINYINT(1) NOT NULL COMMENT '0 Bukan parent group 1 parent group',
	`is_continuous` TINYINT(1) NOT NULL,
	`continuous_name` VARCHAR(5) NOT NULL COLLATE 'utf8mb4_general_ci',
	`created_datetime` DATETIME NOT NULL,
	`updated_datetime` DATETIME NULL,
	`is_enable` TINYINT(1) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_invoice_all
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_invoice_all` (
	`id_invoice` INT(11) NOT NULL,
	`invoice_number` VARCHAR(14) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_method_id` INT(11) NOT NULL,
	`payment_method_name` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_method_detail_id` INT(11) NOT NULL,
	`payment_method_detail_name` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_logo` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`bank_name` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`bank_account` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`bank_number` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`user_id` INT(11) NOT NULL,
	`user_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_email` VARCHAR(175) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_no_telp` VARCHAR(13) NOT NULL COLLATE 'latin1_swedish_ci',
	`buku_id` INT(11) NOT NULL,
	`buku_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`detail_buku_id` INT(11) NULL,
	`detail_buku_name` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`invoice_total_cost` INT(11) NOT NULL,
	`kode_unik` INT(3) NOT NULL,
	`invoice_date_create` DATETIME NOT NULL,
	`invoice_date_expirate` DATETIME NOT NULL,
	`date_left` INT(7) NULL,
	`invoice_date_update` DATETIME NULL,
	`confirm_image` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`status_invoice` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`status` TINYINT(1) NOT NULL COMMENT '0 Submit, 1 Upload Confirm, 2 Success, 3 Expired, 4 Reject, 5 Revisi',
	`reject_desc` VARCHAR(1000) NULL COLLATE 'latin1_swedish_ci',
	`voucher_id` INT(11) NULL,
	`voucher_name` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`voucher_potongan` INT(8) NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_invoice_confirm
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_invoice_confirm` (
	`id_invoice` INT(11) NOT NULL,
	`invoice_number` VARCHAR(14) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_method_id` INT(11) NOT NULL,
	`payment_method_name` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_method_detail_id` INT(11) NOT NULL,
	`payment_method_detail_name` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_logo` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`bank_name` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`bank_account` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`bank_number` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`user_id` INT(11) NOT NULL,
	`user_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_email` VARCHAR(175) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_no_telp` VARCHAR(13) NOT NULL COLLATE 'latin1_swedish_ci',
	`buku_id` INT(11) NOT NULL,
	`buku_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`detail_buku_id` INT(11) NULL,
	`detail_buku_name` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`invoice_total_cost` INT(11) NOT NULL,
	`kode_unik` INT(3) NOT NULL,
	`invoice_date_create` DATETIME NOT NULL,
	`invoice_date_expirate` DATETIME NOT NULL,
	`invoice_date_update` DATETIME NULL,
	`confirm_image` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`status_invoice` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`status` TINYINT(1) NOT NULL COMMENT '0 Submit, 1 Upload Confirm, 2 Success, 3 Expired, 4 Reject, 5 Revisi',
	`reject_desc` VARCHAR(1000) NULL COLLATE 'latin1_swedish_ci',
	`voucher_id` INT(11) NULL,
	`voucher_name` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`voucher_potongan` INT(8) NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_invoice_expired
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_invoice_expired` (
	`id_invoice` INT(11) NOT NULL,
	`invoice_number` VARCHAR(14) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_method_id` INT(11) NOT NULL,
	`payment_method_name` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_method_detail_id` INT(11) NOT NULL,
	`payment_method_detail_name` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_logo` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`bank_name` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`bank_account` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`bank_number` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`user_id` INT(11) NOT NULL,
	`user_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_email` VARCHAR(175) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_no_telp` VARCHAR(13) NOT NULL COLLATE 'latin1_swedish_ci',
	`buku_id` INT(11) NOT NULL,
	`buku_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`detail_buku_id` INT(11) NULL,
	`detail_buku_name` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`invoice_total_cost` INT(11) NOT NULL,
	`kode_unik` INT(3) NOT NULL,
	`invoice_date_create` DATETIME NOT NULL,
	`invoice_date_expirate` DATETIME NOT NULL,
	`invoice_date_update` DATETIME NULL,
	`confirm_image` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`status_invoice` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`status` TINYINT(1) NOT NULL COMMENT '0 Submit, 1 Upload Confirm, 2 Success, 3 Expired, 4 Reject, 5 Revisi',
	`reject_desc` VARCHAR(1000) NULL COLLATE 'latin1_swedish_ci',
	`voucher_id` INT(11) NULL,
	`voucher_name` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`voucher_potongan` INT(8) NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_invoice_success
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_invoice_success` (
	`id_invoice` INT(11) NOT NULL,
	`invoice_number` VARCHAR(14) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_method_id` INT(11) NOT NULL,
	`payment_method_name` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_method_detail_id` INT(11) NOT NULL,
	`payment_method_detail_name` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`payment_logo` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`bank_name` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`bank_account` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`bank_number` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`user_id` INT(11) NOT NULL,
	`user_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_email` VARCHAR(175) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_no_telp` VARCHAR(13) NOT NULL COLLATE 'latin1_swedish_ci',
	`buku_id` INT(11) NOT NULL,
	`buku_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`detail_buku_id` INT(11) NULL,
	`detail_buku_name` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`invoice_total_cost` INT(11) NOT NULL,
	`kode_unik` INT(3) NOT NULL,
	`invoice_date_create` DATETIME NOT NULL,
	`invoice_date_expirate` DATETIME NOT NULL,
	`invoice_date_update` DATETIME NULL,
	`confirm_image` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`status_invoice` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`status` TINYINT(1) NOT NULL COMMENT '0 Submit, 1 Upload Confirm, 2 Success, 3 Expired, 4 Reject, 5 Revisi',
	`reject_desc` VARCHAR(1000) NULL COLLATE 'latin1_swedish_ci',
	`voucher_id` INT(11) NULL,
	`voucher_name` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`voucher_potongan` INT(8) NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_jenis_soal
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_jenis_soal` (
	`group_mode_jwb_id` INT(11) NOT NULL,
	`group_mode_jwb` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_kelas
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_kelas` (
	`kelas_id` INT(11) NOT NULL,
	`group_kelas_id` INT(11) NOT NULL,
	`group_kelas_name` VARCHAR(20) NOT NULL COLLATE 'latin1_swedish_ci',
	`kelas_name` VARCHAR(30) NOT NULL COLLATE 'latin1_swedish_ci',
	`description` VARCHAR(51) NOT NULL COLLATE 'latin1_swedish_ci',
	`created_datetime_kelas` DATETIME NOT NULL,
	`updated_datetime_kelas` DATETIME NULL,
	`created_datetime_groupkelas` DATETIME NOT NULL,
	`updated_datetime_groupkelas` DATETIME NULL,
	`is_enable_kelas` TINYINT(1) NOT NULL,
	`status_data_kelas` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci',
	`is_enable_groupkelas` TINYINT(1) NOT NULL,
	`status_data_groupkelas` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_komposisi_soal
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_komposisi_soal` (
	`parent_group_id` INT(11) NULL,
	`parent_group_name` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`id_group_soal` INT(11) NULL,
	`name_group_soal` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`paket_soal_id` INT(11) NOT NULL,
	`jenis_soal` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`tipe_kesulitan` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`jumlah_soal` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_lembaga
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_lembaga` (
	`lembaga_id` INT(11) NOT NULL,
	`lembaga_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`lembaga_type_id` INT(11) NOT NULL,
	`lembaga_type_name` VARCHAR(75) NOT NULL COLLATE 'latin1_swedish_ci',
	`lembaga_email` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`lembaga_alamat` TEXT NOT NULL COLLATE 'latin1_swedish_ci',
	`lembaga_phone` VARCHAR(13) NOT NULL COLLATE 'latin1_swedish_ci',
	`lembaga_kota_kab_id` INT(11) NOT NULL,
	`lembaga_kota_kab` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`file_ktp` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`file_logo` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`file_banner` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`zona_waktu_id` INT(11) NOT NULL,
	`zona_waktu_name` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`zona_waktu_detail` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`zona_waktu_param` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`informasi` LONGTEXT NULL COLLATE 'latin1_swedish_ci',
	`pernyataan` LONGTEXT NULL COLLATE 'latin1_swedish_ci',
	`multiple_login` TINYINT(1) NOT NULL,
	`multiple_login_name` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_general_ci',
	`is_verify` TINYINT(1) NOT NULL COMMENT '0 belum terverifikasi 1 sudah terverifikasi',
	`verify_name` VARCHAR(19) NOT NULL COLLATE 'utf8mb4_general_ci',
	`lembaga_created_datetime` DATETIME NOT NULL,
	`lembaga_updated_datetime` DATETIME NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_lembaga_user
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_lembaga_user` (
	`lembaga_user_id` INT(11) NOT NULL,
	`lembaga_user_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`lembaga_user_email` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`lembaga_user_file` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`lembaga_id` INT(11) NOT NULL,
	`lembaga_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`lembaga_email` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`lembaga_type_id` INT(11) NOT NULL,
	`lembaga_type_name` VARCHAR(75) NOT NULL COLLATE 'latin1_swedish_ci',
	`multiple_login` TINYINT(1) NOT NULL,
	`multiple_login_name` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_general_ci',
	`zona_waktu_id` INT(11) NOT NULL,
	`zona_waktu_name` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`zona_waktu_param` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_id` INT(11) NOT NULL,
	`role_user_id` INT(11) NOT NULL,
	`role_user_name` VARCHAR(20) NOT NULL COLLATE 'latin1_swedish_ci',
	`username` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(355) NOT NULL COLLATE 'latin1_swedish_ci',
	`is_login` TINYINT(1) NOT NULL COMMENT '0 Tidak Login 1 Masih Online',
	`login_status` VARCHAR(7) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_paket_buku
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_paket_buku` (
	`paket_soal_id` INT(11) NOT NULL,
	`nama_paket_soal` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`kelas_id` INT(11) NOT NULL,
	`kelas_name` VARCHAR(30) NOT NULL COLLATE 'latin1_swedish_ci',
	`buku_id` INT(11) NULL,
	`buku_name` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`free_paket` INT(3) NOT NULL,
	`price` INT(11) NOT NULL,
	`type_paket_id` INT(11) NOT NULL,
	`type_paket_name` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`detail_buku_id` INT(11) NULL,
	`detail_buku_name` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`materi_id` INT(11) NOT NULL,
	`materi_name` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`detail_mode_jwb_id` INT(11) NOT NULL COMMENT 'Detail mode jawab pilihan ganda',
	`nama_mode_jwb` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`count_pilgan` INT(10) NOT NULL,
	`is_acak_soal` TINYINT(1) NOT NULL,
	`acak_soal` VARCHAR(10) NOT NULL COLLATE 'utf8mb4_general_ci',
	`is_acak_jawaban` TINYINT(1) NOT NULL,
	`acak_jawaban` VARCHAR(10) NOT NULL COLLATE 'utf8mb4_general_ci',
	`pengaturan_universal_id` INT(11) NULL,
	`nama_pengaturan_universal` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`detail_nama_pengaturan_universal` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`skor_null` INT(5) NULL COMMENT '0 Tidak ada skor',
	`is_continuous` TINYINT(1) NOT NULL COMMENT '0 Tidak 1 Ya',
	`tipe_pengerjaan_soal` VARCHAR(9) NOT NULL COLLATE 'utf8mb4_general_ci',
	`is_free` TINYINT(1) NOT NULL COMMENT '0 Tidak Free 1 Free',
	`petunjuk` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`visual_limit` INT(2) NULL COMMENT 'Batas pemutaran audio / video',
	`lampiran_petunjuk` VARCHAR(255) NULL COMMENT 'Bisa audio bisa video' COLLATE 'latin1_swedish_ci',
	`tipe_file` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`total_soal` BIGINT(21) NOT NULL,
	`is_enable` TINYINT(1) NOT NULL,
	`status_paket_soal` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_paket_soal
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_paket_soal` (
	`paket_soal_id` INT(11) NOT NULL,
	`nama_paket_soal` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`kelas_id` INT(11) NOT NULL,
	`kelas_name` VARCHAR(30) NOT NULL COLLATE 'latin1_swedish_ci',
	`buku_id` INT(11) NULL,
	`buku_name` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`type_paket_id` INT(11) NOT NULL,
	`type_paket_name` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`detail_buku_id` INT(11) NULL,
	`detail_buku_name` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`materi_id` INT(11) NOT NULL,
	`materi_name` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`detail_mode_jwb_id` INT(11) NOT NULL COMMENT 'Detail mode jawab pilihan ganda',
	`nama_mode_jwb` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`count_pilgan` INT(10) NOT NULL,
	`is_acak_soal` TINYINT(1) NOT NULL,
	`acak_soal` VARCHAR(10) NOT NULL COLLATE 'utf8mb4_general_ci',
	`is_acak_jawaban` TINYINT(1) NOT NULL,
	`acak_jawaban` VARCHAR(10) NOT NULL COLLATE 'utf8mb4_general_ci',
	`pengaturan_universal_id` INT(11) NULL,
	`nama_pengaturan_universal` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`detail_nama_pengaturan_universal` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`skor_null` INT(5) NULL COMMENT '0 Tidak ada skor',
	`is_continuous` TINYINT(1) NOT NULL COMMENT '0 Tidak 1 Ya',
	`tipe_pengerjaan_soal` VARCHAR(9) NOT NULL COLLATE 'utf8mb4_general_ci',
	`is_jawab` TINYINT(1) NOT NULL COMMENT '0 Tidak harus jawab 1 Haru jawab',
	`tipe_pengerjaan_jawaban` VARCHAR(17) NOT NULL COLLATE 'utf8mb4_general_ci',
	`is_free` TINYINT(1) NOT NULL COMMENT '0 Tidak Free 1 Free',
	`tipe_buku` VARCHAR(8) NOT NULL COLLATE 'utf8mb4_general_ci',
	`petunjuk` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`visual_limit` INT(2) NULL COMMENT 'Batas pemutaran audio / video',
	`lampiran_petunjuk` VARCHAR(255) NULL COMMENT 'Bisa audio bisa video' COLLATE 'latin1_swedish_ci',
	`tipe_file` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`total_soal` BIGINT(21) NOT NULL,
	`is_enable` TINYINT(1) NOT NULL,
	`status_paket_soal` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci',
	`created_datetime` DATETIME NOT NULL,
	`updated_datetime` DATETIME NULL,
	`created_by` INT(11) NOT NULL,
	`updated_by` INT(11) NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_peserta
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_peserta` (
	`peserta_id` INT(11) NOT NULL,
	`no_peserta` VARCHAR(75) NOT NULL COLLATE 'latin1_swedish_ci',
	`peserta_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`foto_profil` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`lembaga_id` INT(11) NOT NULL,
	`lembaga_name` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`group_peserta_id` VARCHAR(11) NULL COLLATE 'utf8mb4_general_ci',
	`group_peserta_name` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`user_id` INT(11) NOT NULL,
	`username` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(355) NOT NULL COLLATE 'latin1_swedish_ci',
	`role_user_id` INT(11) NOT NULL,
	`role_user_name` VARCHAR(20) NOT NULL COLLATE 'latin1_swedish_ci',
	`is_login` TINYINT(1) NOT NULL COMMENT '0 Tidak Login 1 Masih Online',
	`login_status` VARCHAR(7) NOT NULL COLLATE 'utf8mb4_general_ci',
	`created_datetime_peserta` DATETIME NOT NULL,
	`updated_datetime_peserta` DATETIME NULL,
	`created_datetime_user` DATETIME NOT NULL,
	`updated_datetime_user` DATETIME NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_peserta_sesi
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_peserta_sesi` (
	`id_sesi_pelaksanaan_user` INT(11) NOT NULL,
	`sesi_pelaksanaan_id` INT(11) NOT NULL,
	`sesi_pelaksanaan_name` TEXT NOT NULL COLLATE 'latin1_swedish_ci',
	`group_peserta_id` INT(11) NULL,
	`group_peserta_name` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`user_id` INT(11) NOT NULL,
	`username` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(355) NOT NULL COLLATE 'latin1_swedish_ci',
	`no_peserta` VARCHAR(75) NOT NULL COLLATE 'latin1_swedish_ci',
	`no_telp` VARCHAR(13) NULL COLLATE 'latin1_swedish_ci',
	`peserta_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_sesi_pelaksanaan
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_sesi_pelaksanaan` (
	`sesi_pelaksanaan_id` INT(11) NOT NULL,
	`sesi_pelaksanaan_name` TEXT NOT NULL COLLATE 'latin1_swedish_ci',
	`materi_id` INT(11) NOT NULL,
	`materi_name` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`paket_soal_id` INT(11) NOT NULL,
	`nama_paket_soal` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`mode_peserta_id` INT(11) NOT NULL,
	`mode_peserta_name` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`group_peserta_id` MEDIUMTEXT NULL COLLATE 'utf8mb4_general_ci',
	`group_peserta_name` MEDIUMTEXT NULL COLLATE 'latin1_swedish_ci',
	`user_total` BIGINT(21) NOT NULL,
	`waktu_mulai` DATETIME NOT NULL,
	`lama_pengerjaan` INT(5) NOT NULL,
	`batas_pengerjaan` DATETIME NULL,
	`blok_layar` INT(4) NULL,
	`is_fleksible` TINYINT(1) NOT NULL,
	`fleksible_name` VARCHAR(18) NOT NULL COLLATE 'utf8mb4_general_ci',
	`is_hasil` TINYINT(1) NOT NULL,
	`is_ranking` TINYINT(1) NOT NULL,
	`is_pembahasan` TINYINT(1) NOT NULL,
	`is_komposisi_soal` TINYINT(1) NOT NULL COMMENT '0 gunakan semua',
	`petunjuk` LONGTEXT NULL COLLATE 'utf8_general_ci',
	`total_soal` DECIMAL(32,0) NULL,
	`created_datetime_sesi` DATETIME NOT NULL,
	`updated_datetime_sesi` DATETIME NULL,
	`is_enable_sesi` TINYINT(1) NOT NULL,
	`status_sesi_pelakasanaan` VARCHAR(16) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_tipe_kesulitan
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_tipe_kesulitan` (
	`tipe_kesulitan_id` INT(11) NOT NULL,
	`tipe_kesulitan_name` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_total_soal_ujian
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_total_soal_ujian` (
	`sesi_pelaksanaan_id` INT(11) NOT NULL,
	`total_soal` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_total_user_ujian
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_total_user_ujian` (
	`sesi_pelaksanaan_id` INT(11) NULL,
	`paket_soal_id` INT(11) NOT NULL,
	`total_user_ujian` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_ujian_detail
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_ujian_detail` (
	`ujian_id` INT(11) NULL,
	`sesi_pelaksanaan_id` INT(11) NULL,
	`sesi_pelaksanaan_name` TEXT NULL COLLATE 'latin1_swedish_ci',
	`paket_soal_id` INT(11) NULL,
	`paket_soal_name` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`user_id` INT(11) NULL,
	`user_no` VARCHAR(75) NULL COLLATE 'latin1_swedish_ci',
	`user_name` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`user_email` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`list_soal` LONGTEXT NULL COLLATE 'latin1_swedish_ci',
	`list_jawaban` LONGTEXT NULL COLLATE 'latin1_swedish_ci',
	`jml_benar` INT(5) NULL,
	`jml_salah` INT(5) NULL,
	`jml_ragu` INT(5) NULL,
	`jml_kosong` INT(5) NULL,
	`group_soal_id` MEDIUMTEXT NULL COLLATE 'utf8mb4_general_ci',
	`group_soal_name` MEDIUMTEXT NULL COLLATE 'latin1_swedish_ci',
	`skor_group` MEDIUMTEXT NULL COLLATE 'utf8mb4_general_ci',
	`total_skor` DECIMAL(32,0) NULL,
	`nilai` DECIMAL(9,0) NULL,
	`tgl_mulai_peserta` DATETIME NULL,
	`tgl_selesai_peserta` DATETIME NULL,
	`tgl_mulai_sesi` DATETIME NULL,
	`tgl_selesai_sesi` DATETIME NULL,
	`materi_name` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`status` TINYINT(1) NULL COMMENT '0 Mulai 1 Selesai',
	`skala_penilaian` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`group_peserta_name` MEDIUMTEXT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_ujian_header
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_ujian_header` (
	`sesi_pelaksanaan_id` INT(11) NULL,
	`sesi_pelaksanaan_name` TEXT NOT NULL COLLATE 'latin1_swedish_ci',
	`paket_soal_id` INT(11) NOT NULL,
	`paket_soal_name` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`materi_name` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`total_skor` DECIMAL(32,0) NULL,
	`nilai_tertinggi` DECIMAL(9,0) NULL,
	`nilai_rata` DECIMAL(11,2) NULL,
	`nilai_terendah` DECIMAL(9,0) NULL,
	`tgl_mulai_sesi` DATETIME NOT NULL,
	`tgl_selesai_sesi` DATETIME NULL,
	`fleksible_name` VARCHAR(18) NOT NULL COLLATE 'utf8mb4_general_ci',
	`lama_pengerjaan` INT(5) NOT NULL,
	`mode_peserta_name` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`group_peserta_name` MEDIUMTEXT NULL COLLATE 'latin1_swedish_ci',
	`total_soal` DECIMAL(32,0) NULL,
	`total_user_sesi` BIGINT(21) NOT NULL,
	`total_user_ujian` BIGINT(21) NOT NULL,
	`status_sesi_pelakasanaan` VARCHAR(16) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_ujian_ranking
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_ujian_ranking` (
	`id` INT(11) NOT NULL,
	`skor` DECIMAL(10,2) NOT NULL,
	`ranking` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_users
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_users` (
	`user_id` INT(11) NOT NULL,
	`role_user_id` INT(11) NOT NULL,
	`username` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(355) NOT NULL COLLATE 'latin1_swedish_ci',
	`peserta_id` INT(11) NOT NULL,
	`no_peserta` VARCHAR(75) NOT NULL COLLATE 'latin1_swedish_ci',
	`no_telp` VARCHAR(13) NULL COLLATE 'latin1_swedish_ci',
	`group_peserta_id` INT(11) NULL,
	`group_peserta_name` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`peserta_name` VARCHAR(150) NOT NULL COLLATE 'latin1_swedish_ci',
	`is_lock` TINYINT(1) NOT NULL,
	`is_login` TINYINT(1) NOT NULL COMMENT '0 Tidak Login 1 Masih Online'
) ENGINE=MyISAM;

-- Dumping structure for view candraaj_cbt.v_bank_soal
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_bank_soal`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_bank_soal` AS SELECT
	T1.id AS bank_soal_id,
	T1.paket_soal_id,
	T1.group_mode_jwb_id,
	T3.name AS group_mode_jwb_name,
	T1.no_soal,
	T1.name AS bank_soal_name,
	T1.kata_kunci,
	T1.tipe_kesulitan_id,
	T4.name AS tipe_kesulitan_name,
	T1.group_soal_id,
	T6.name AS group_soal_name,
	T6.`file` AS group_soal_audio,
	T6.tipe_file AS group_soal_tipe_audio,
	CASE
		WHEN T6.parent_id IS NULL || T6.parent_id = '' THEN 0
		ELSE T6.parent_id
	END AS group_soal_parent,
	CASE
		WHEN T6.parent_id IS NULL || T6.parent_id = '' THEN T6.petunjuk
		ELSE T8.petunjuk
	END AS group_soal_petunjuk,
	T1.bacaan_soal_id,
	T5.name AS bacaan_soal_name,
	T5.bacaan AS isi_bacaan_soal,
	T1.is_acak_soal,
	CASE
		WHEN T1.is_acak_soal = 1 THEN 'Acak Soal'
		ELSE 'Tidak Acak Soal'
	END AS acak_soal,
	T1.is_acak_jawaban,
	CASE
		WHEN T1.is_acak_jawaban = 1 THEN 'Acak Jawaban'
		ELSE 'Tidak Acak Jawaban'
	END AS acak_jawaban,
	T1.`file`,
	T1.tipe_file,
	T1.is_enable,
	CASE
		WHEN T1.is_enable = 1 THEN 'Aktif'
		ELSE 'Tidak Aktif'
	END AS status_data_soal,
	T7.url AS url_pembahasan,
	T7.pembahasan,
	T1.created_datetime,
	T1.updated_datetime
FROM bank_soal AS T1
LEFT OUTER JOIN paket_soal AS T2 ON T1.paket_soal_id = T2.id
JOIN group_mode_jawaban AS T3 ON T1.group_mode_jwb_id = T3.id
	AND T3.is_enable = 1
JOIN tipe_kesulitan AS T4 ON T1.tipe_kesulitan_id = T4.id
	AND T4.is_enable = 1
LEFT OUTER JOIN bacaan_soal AS T5 ON T1.bacaan_soal_id = T5.id
	AND T5.is_enable = 1
LEFT OUTER JOIN group_soal AS T6 ON T1.group_soal_id = T6.id
	AND T6.is_enable = 1
LEFT OUTER JOIN pembahasan AS T7 ON T1.id = T7.bank_soal_id
	AND T7.is_enable = 1 
LEFT OUTER JOIN group_soal AS T8 ON T6.parent_id = T8.id
	AND T8.is_enable = 1 ;

-- Dumping structure for view candraaj_cbt.v_group_peserta
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_group_peserta`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_group_peserta` AS SELECT
	T1.group_peserta_id,
	CASE
		WHEN T1.group_peserta_id = 0 THEN 'NO_GROUP'
		ELSE T2.name
	END AS group_peserta_name,
	COUNT(T1.id) AS jumlah_peserta
FROM peserta AS T1
LEFT OUTER JOIN group_peserta AS T2 ON T1.group_peserta_id = T2.id
	AND T2.is_enable = 1
WHERE T1.is_enable = 1
AND T1.is_lock = 0
GROUP BY T2.id
ORDER BY T1.group_peserta_id ASC ;

-- Dumping structure for view candraaj_cbt.v_group_soal
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_group_soal`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_group_soal` AS SELECT
	T1.id AS id_group_soal,
	T1.paket_soal_id,
	T1.parent_id,
	T2.name AS name_parent,
	T1.name AS name_group_soal,
	T1.konversi_skor_id,
	T3.name AS name_konversi_skor,
	T1.kode_group,
	T1.petunjuk,
	T1.`file`,
	T1.tipe_file,
	T1.is_parent,
	T1.is_continuous,
	CASE
		WHEN T1.is_continuous = 1 THEN 'Ya'
		ELSE 'Tidak'
	END AS continuous_name,
	T1.created_datetime,
	T1.updated_datetime,
	T1.is_enable
FROM group_soal AS T1
LEFT OUTER JOIN group_soal AS T2 ON T1.parent_id = T2.id
	AND T2.is_enable = 1
LEFT OUTER JOIN konversi_skor AS T3 ON T1.konversi_skor_id = T3.id
	AND T3.is_enable = 1
WHERE T1.is_enable = 1
ORDER BY T1.parent_id ASC, T1.id DESC ;

-- Dumping structure for view candraaj_cbt.v_invoice_all
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_invoice_all`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_invoice_all` AS SELECT
	T1.id AS id_invoice,
	T1.invoice_number,
	T1.payment_method_id,
	T1.payment_method_name,
	T1.payment_method_detail_id,
	T1.payment_method_detail_name,
	CASE
		WHEN T1.payment_method_id = 1 THEN T5.logo_payment
		WHEN T1.payment_method_id = 2 THEN T5.image_payment
	END AS payment_logo,
	T5.bank_name,
	T5.bank_account,
	T5.bank_number,
	T1.user_id,
	T1.user_name,
	T1.user_email,
	T1.user_no_telp,
	T1.buku_id,
	T6.name AS buku_name,
	T1.detail_buku_id,
	T7.name AS detail_buku_name,
	T1.invoice_total_cost,
	T1.kode_unik,
	T1.invoice_date_create,
	T1.invoice_date_expirate,
	CASE
		WHEN DATEDIFF(T1.invoice_date_expirate, NOW()) <= 0 THEN 0
		ELSE DATEDIFF(T1.invoice_date_expirate, NOW())
	END AS date_left,
	T1.invoice_date_update,
	T1.confirm_image,
	CASE
		WHEN T1.`status` = 0 THEN 'New'
		WHEN T1.`status` = 1 THEN 'Upload Confirm'
		WHEN T1.`status` = 2 THEN 'Success Confirm'
		WHEN T1.`status` = 3 THEN 'Expired'
		WHEN T1.`status` = 4 THEN 'Reject Bukti'
		WHEN T1.`status` = 5 THEN 'Revisi Bukti'
	END AS status_invoice,
	T1.`status`,
	T1.reject_desc,
	T1.voucher_id,
	T1.voucher_name,
	T1.voucher_potongan
FROM invoice AS T1
JOIN user AS T2 ON T1.user_id = T2.id
	AND T2.is_enable = 1
JOIN peserta AS T3 ON T2.id = T3.user_id
	AND T3.is_lock = 0
	AND T3.is_enable = 1
JOIN payment_method AS T4 ON T1.payment_method_id = T4.id
	AND T4.is_enable = 1
JOIN payment_method_detail AS T5 ON T1.payment_method_detail_id = T5.id
	AND T5.is_enable = 1
JOIN buku AS T6 ON T1.buku_id = T6.id
	AND T6.is_enable = 1
LEFT OUTER JOIN detail_buku AS T7 ON T1.detail_buku_id = T7.id
	AND T7.is_enable = 1
WHERE T1.is_enable = 1 ;

-- Dumping structure for view candraaj_cbt.v_invoice_confirm
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_invoice_confirm`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_invoice_confirm` AS SELECT
	T1.id AS id_invoice,
	T1.invoice_number,
	T1.payment_method_id,
	T1.payment_method_name,
	T1.payment_method_detail_id,
	T1.payment_method_detail_name,
	CASE
		WHEN T1.payment_method_id = 1 THEN T5.logo_payment
		WHEN T1.payment_method_id = 2 THEN T5.image_payment
	END AS payment_logo,
	T5.bank_name,
	T5.bank_account,
	T5.bank_number,
	T1.user_id,
	T1.user_name,
	T1.user_email,
	T1.user_no_telp,
	T1.buku_id,
	T6.name AS buku_name,
	T1.detail_buku_id,
	T7.name AS detail_buku_name,
	T1.invoice_total_cost,
	T1.kode_unik,
	T1.invoice_date_create,
	T1.invoice_date_expirate,
	T1.invoice_date_update,
	T1.confirm_image,
	CASE
		WHEN T1.`status` = 0 THEN 'New'
		WHEN T1.`status` = 1 THEN 'Upload Confirm'
		WHEN T1.`status` = 2 THEN 'Success Confirm'
		WHEN T1.`status` = 3 THEN 'Expired'
		WHEN T1.`status` = 4 THEN 'Reject Bukti'
		WHEN T1.`status` = 5 THEN 'Revisi Bukti'
	END AS status_invoice,
	T1.`status`,
	T1.reject_desc,
	T1.voucher_id,
	T1.voucher_name,
	T1.voucher_potongan
FROM invoice AS T1
JOIN user AS T2 ON T1.user_id = T2.id
	AND T2.is_enable = 1
JOIN peserta AS T3 ON T2.id = T3.user_id
	AND T3.is_lock = 0
	AND T3.is_enable = 1
JOIN payment_method AS T4 ON T1.payment_method_id = T4.id
	AND T4.is_enable = 1
JOIN payment_method_detail AS T5 ON T1.payment_method_detail_id = T5.id
	AND T5.is_enable = 1
JOIN buku AS T6 ON T1.buku_id = T6.id
	AND T6.is_enable = 1
LEFT OUTER JOIN detail_buku AS T7 ON T1.detail_buku_id = T7.id
	AND T7.is_enable = 1
WHERE T1.is_enable = 1
AND T1.`status` IN (1,4,5)
AND T1.confirm_image IS NOT NULL ;

-- Dumping structure for view candraaj_cbt.v_invoice_expired
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_invoice_expired`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_invoice_expired` AS SELECT
	T1.id AS id_invoice,
	T1.invoice_number,
	T1.payment_method_id,
	T1.payment_method_name,
	T1.payment_method_detail_id,
	T1.payment_method_detail_name,
	CASE
		WHEN T1.payment_method_id = 1 THEN T5.logo_payment
		WHEN T1.payment_method_id = 2 THEN T5.image_payment
	END AS payment_logo,
	T5.bank_name,
	T5.bank_account,
	T5.bank_number,
	T1.user_id,
	T1.user_name,
	T1.user_email,
	T1.user_no_telp,
	T1.buku_id,
	T6.name AS buku_name,
	T1.detail_buku_id,
	T7.name AS detail_buku_name,
	T1.invoice_total_cost,
	T1.kode_unik,
	T1.invoice_date_create,
	T1.invoice_date_expirate,
	T1.invoice_date_update,
	T1.confirm_image,
	CASE
		WHEN T1.`status` = 0 THEN 'New'
		WHEN T1.`status` = 1 THEN 'Upload Confirm'
		WHEN T1.`status` = 2 THEN 'Success Confirm'
		WHEN T1.`status` = 3 THEN 'Expired'
		WHEN T1.`status` = 4 THEN 'Reject Bukti'
		WHEN T1.`status` = 5 THEN 'Revisi Bukti'
	END AS status_invoice,
	T1.`status`,
	T1.reject_desc,
	T1.voucher_id,
	T1.voucher_name,
	T1.voucher_potongan
FROM invoice AS T1
JOIN user AS T2 ON T1.user_id = T2.id
	AND T2.is_enable = 1
JOIN peserta AS T3 ON T2.id = T3.user_id
	AND T3.is_lock = 0
	AND T3.is_enable = 1
JOIN payment_method AS T4 ON T1.payment_method_id = T4.id
	AND T4.is_enable = 1
JOIN payment_method_detail AS T5 ON T1.payment_method_detail_id = T5.id
	AND T5.is_enable = 1
JOIN buku AS T6 ON T1.buku_id = T6.id
	AND T6.is_enable = 1
LEFT OUTER JOIN detail_buku AS T7 ON T1.detail_buku_id = T7.id
	AND T7.is_enable = 1
WHERE T1.is_enable = 1
AND T1.`status` = 3 ;

-- Dumping structure for view candraaj_cbt.v_invoice_success
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_invoice_success`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_invoice_success` AS SELECT
	T1.id AS id_invoice,
	T1.invoice_number,
	T1.payment_method_id,
	T1.payment_method_name,
	T1.payment_method_detail_id,
	T1.payment_method_detail_name,
	CASE
		WHEN T1.payment_method_id = 1 THEN T5.logo_payment
		WHEN T1.payment_method_id = 2 THEN T5.image_payment
	END AS payment_logo,
	T5.bank_name,
	T5.bank_account,
	T5.bank_number,
	T1.user_id,
	T1.user_name,
	T1.user_email,
	T1.user_no_telp,
	T1.buku_id,
	T6.name AS buku_name,
	T1.detail_buku_id,
	T7.name AS detail_buku_name,
	T1.invoice_total_cost,
	T1.kode_unik,
	T1.invoice_date_create,
	T1.invoice_date_expirate,
	T1.invoice_date_update,
	T1.confirm_image,
	CASE
		WHEN T1.`status` = 0 THEN 'New'
		WHEN T1.`status` = 1 THEN 'Upload Confirm'
		WHEN T1.`status` = 2 THEN 'Success Confirm'
		WHEN T1.`status` = 3 THEN 'Expired'
		WHEN T1.`status` = 4 THEN 'Reject Bukti'
		WHEN T1.`status` = 5 THEN 'Revisi Bukti'
	END AS status_invoice,
	T1.`status`,
	T1.reject_desc,
	T1.voucher_id,
	T1.voucher_name,
	T1.voucher_potongan
FROM invoice AS T1
JOIN user AS T2 ON T1.user_id = T2.id
	AND T2.is_enable = 1
JOIN peserta AS T3 ON T2.id = T3.user_id
	AND T3.is_lock = 0
	AND T3.is_enable = 1
JOIN payment_method AS T4 ON T1.payment_method_id = T4.id
	AND T4.is_enable = 1
JOIN payment_method_detail AS T5 ON T1.payment_method_detail_id = T5.id
	AND T5.is_enable = 1
JOIN buku AS T6 ON T1.buku_id = T6.id
	AND T6.is_enable = 1
LEFT OUTER JOIN detail_buku AS T7 ON T1.detail_buku_id = T7.id
	AND T7.is_enable = 1
WHERE T1.is_enable = 1
AND T1.`status` = 2 ;

-- Dumping structure for view candraaj_cbt.v_jenis_soal
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_jenis_soal`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_jenis_soal` AS SELECT group_mode_jwb_id, group_mode_jwb
		FROM (SELECT 
				T1.group_mode_jwb_id,
				T2.name AS group_mode_jwb, 
				COUNT(T1.group_mode_jwb_id) AS total_mode_jwb
			FROM bank_soal AS T1
			JOIN group_mode_jawaban AS T2 ON T1.group_mode_jwb_id = T2.id
			GROUP BY T1.group_mode_jwb_id) AS a 
			
/*
SELECT 
				T1.group_mode_jwb_id,
				T2.name AS group_mode_jwb, 
				COUNT(T1.group_mode_jwb_id) AS total_mode_jwb
			FROM bank_soal AS T1
			JOIN group_mode_jawaban AS T2 ON T1.group_mode_jwb_id = T2.id
			GROUP BY T1.group_mode_jwb_id
*/ ;

-- Dumping structure for view candraaj_cbt.v_kelas
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_kelas`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_kelas` AS SELECT
	T1.id AS kelas_id,
	T1.group_kelas_id,
	T2.name AS group_kelas_name,
	T1.name AS kelas_name,
	CASE
		WHEN T2.name IN ('STRATA','UMUM') THEN T1.name
		ELSE CONCAT(T2.name, ' ', T1.name)
	END AS description,
	T1.created_datetime AS created_datetime_kelas,
	T1.updated_datetime AS updated_datetime_kelas,
	T2.created_datetime AS created_datetime_groupkelas,
	T2.updated_datetime AS updated_datetime_groupkelas,
	T1.is_enable AS is_enable_kelas,
	CASE
		WHEN T1.is_enable = 1 THEN 'Aktif'
		ELSE 'Tidak Aktif'
	END AS status_data_kelas,
	T2.is_enable AS is_enable_groupkelas,
	CASE
		WHEN T2.is_enable = 1 THEN 'Aktif'
		ELSE 'Tidak Aktif'
	END AS status_data_groupkelas
FROM kelas AS T1
JOIN group_kelas AS T2 ON T1.group_kelas_id = T2.id ;

-- Dumping structure for view candraaj_cbt.v_komposisi_soal
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_komposisi_soal`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_komposisi_soal` AS SELECT
	CASE
		WHEN T2.parent_id = '' OR T2.parent_id IS NULL THEN 0
		ELSE T2.parent_id
	END AS parent_group_id,
	CASE
		WHEN T2.name_parent = '' OR T2.name_parent IS NULL THEN 'NO_PARENT'
		ELSE T2.name_parent
	END AS parent_group_name,
	CASE
		WHEN T2.id_group_soal = '' OR T2.id_group_soal IS NULL THEN 0
		ELSE T2.id_group_soal
	END AS id_group_soal,
	CASE
		WHEN T2.name_group_soal IS NULL OR T2.name_group_soal = '' THEN 'NO_GROUP'
		ELSE T2.name_group_soal
	END AS name_group_soal,
	T1.paket_soal_id,
	T3.group_mode_jwb AS jenis_soal,
	T4.tipe_kesulitan_name AS tipe_kesulitan,
	COUNT(T1.id) AS jumlah_soal
FROM bank_soal AS T1
LEFT OUTER JOIN v_group_soal AS T2 ON T1.group_soal_id = T2.id_group_soal
	AND T2.is_enable = 1
LEFT OUTER JOIN v_jenis_soal AS T3 ON T1.group_mode_jwb_id = T3.group_mode_jwb_id
LEFT OUTER JOIN v_tipe_kesulitan AS T4 ON T1.tipe_kesulitan_id = T4.tipe_kesulitan_id
WHERE T1.is_enable = 1
GROUP BY T2.id_group_soal
ORDER BY CASE WHEN T2.parent_id = '' THEN T2.id_group_soal ELSE T2.parent_id END,
  T2.parent_id,
  T2.id_group_soal ;

-- Dumping structure for view candraaj_cbt.v_lembaga
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_lembaga`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_lembaga` AS SELECT
	T1.id AS lembaga_id,
	T1.name AS lembaga_name,
	T1.lembaga_type_id,
	T6.name AS lembaga_type_name,
	T1.email AS lembaga_email,
	T1.alamat AS lembaga_alamat,
	T1.no_telp AS lembaga_phone,
	T1.kota_kab_id AS lembaga_kota_kab_id,
	T1.kota_kab AS lembaga_kota_kab,
	T1.file_ktp,
	T1.file_logo,
	T1.file_banner,
	T1.pengaturan_universal_id AS zona_waktu_id,
	T5.name AS zona_waktu_name,
	T5.detail AS zona_waktu_detail,
	T5.param AS zona_waktu_param,
	T1.informasi,
	T1.pernyataan,
	T1.multiple_login,
	CASE
		WHEN T1.multiple_login = 1 THEN 'Multiple Login'
		ELSE 'Tidak Multiple Login'
	END AS multiple_login_name,
	T1.is_verify,
	CASE
		WHEN T1.is_verify = 1 THEN 'Terverifikasi'
		ELSE 'Belum Terverifikasi'
	END AS verify_name,
	T1.created_datetime AS lembaga_created_datetime,
	T1.updated_datetime AS lembaga_updated_datetime
FROM lembaga AS T1
JOIN kota_kab AS T4 ON T1.kota_kab_id = T4.id
	AND T4.is_enable = 1
JOIN pengaturan_universal AS T5 ON T1.pengaturan_universal_id = T5.id
	AND T5.is_enable = 1
	AND T5.name = 'ZONA WAKTU'
JOIN lembaga_type AS T6 ON T1.lembaga_type_id = T6.id
	AND T6.is_enable = 1
WHERE T1.is_enable = 1 ;

-- Dumping structure for view candraaj_cbt.v_lembaga_user
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_lembaga_user`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_lembaga_user` AS SELECT
	T1.id AS lembaga_user_id,
	T1.name AS lembaga_user_name,
	T1.email AS lembaga_user_email,
	T1.`file` AS lembaga_user_file,
	T1.lembaga_id,
	T2.name AS lembaga_name,
	T2.email AS lembaga_email,
	T2.lembaga_type_id,
	T6.name AS lembaga_type_name,
	T2.multiple_login,
	CASE
		WHEN T2.multiple_login = 1 THEN 'Multiple Login'
		ELSE 'Tidak Multiple Login'
	END AS multiple_login_name,
	T2.pengaturan_universal_id AS zona_waktu_id,
	T5.detail AS zona_waktu_name,
	T5.param AS zona_waktu_param,
	T1.user_id,
	T3.role_user_id,
	T4.name AS role_user_name,
	T3.username,
	T3.password,
	T3.is_login,
	CASE
		WHEN T3.is_login = 1 THEN 'Online'
		ELSE 'Offline'
	END AS login_status
FROM lembaga_user AS T1
JOIN lembaga AS T2 ON T1.lembaga_id = T2.id
	AND T2.is_enable = 1
JOIN user AS T3 ON T1.user_id = T3.id
	AND T3.role_user_id = 3
	AND T3.is_enable = 1
JOIN role_user AS T4 ON T3.role_user_id = T4.id
	AND T4.is_enable = 1
JOIN pengaturan_universal AS T5 ON T2.pengaturan_universal_id = T5.id
	AND T5.is_enable = 1
	AND T5.name = 'ZONA WAKTU'
JOIN lembaga_type AS T6 ON T2.lembaga_type_id = T6.id
	AND T6.is_enable = 1
WHERE T1.is_enable = 1 ;

-- Dumping structure for view candraaj_cbt.v_paket_buku
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_paket_buku`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_paket_buku` AS SELECT
	T1.paket_soal_id,
	T1.nama_paket_soal,
	T1.kelas_id,
	T1.kelas_name,
	T1.buku_id,
	T1.buku_name,
	T2.free_paket,
	T2.price,
	T1.type_paket_id,
	T1.type_paket_name,
	T1.detail_buku_id,
	T1.detail_buku_name,
	T1.materi_id,
	T1.materi_name,
	T1.detail_mode_jwb_id,
	T1.nama_mode_jwb,
	T1.count_pilgan,
	T1.is_acak_soal,
	T1.acak_soal,
	T1.is_acak_jawaban,
	T1.acak_jawaban,
	T1.pengaturan_universal_id,
	T1.nama_pengaturan_universal,
	T1.detail_nama_pengaturan_universal,
	T1.skor_null,
	T1.is_continuous,
	T1.tipe_pengerjaan_soal,
	T1.is_free,
	T1.petunjuk,
	T1.visual_limit,
	T1.lampiran_petunjuk,
	T1.tipe_file,
	T1.total_soal,
	T1.is_enable,
	T1.status_paket_soal
FROM v_paket_soal AS T1
JOIN config_buku AS T2 ON T1.buku_id = T2.buku_id
	AND T2.is_enable = 1
WHERE T1.is_enable = 1 ;

-- Dumping structure for view candraaj_cbt.v_paket_soal
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_paket_soal`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_paket_soal` AS SELECT
	T1.id AS paket_soal_id,
	T1.name AS nama_paket_soal,
	T1.kelas_id,
	T1.kelas_name,
	T1.buku_id,
	T1.buku_name,
	T1.type_paket_id,
	T1.type_paket_name,
	T1.detail_buku_id,
	T1.detail_buku_name,
	T1.materi_id,
	T1.materi_name,
	T1.detail_mode_jwb_id,
	T2.name AS nama_mode_jwb,
	LENGTH(T2.name) AS count_pilgan,
	T1.is_acak_soal,
	CASE
		WHEN T1.is_acak_soal = 1 THEN 'Acak'
		ELSE 'Tidak Acak'
	END AS acak_soal,
	T1.is_acak_jawaban,
	CASE
		WHEN T1.is_acak_jawaban = 1 THEN 'Acak'
		ELSE 'Tidak Acak'
	END AS acak_jawaban,
	T1.pengaturan_universal_id,
	T3.name AS nama_pengaturan_universal,
	T3.detail AS detail_nama_pengaturan_universal,
	T1.skor_null,
	T1.is_continuous,
	CASE
		WHEN T1.is_continuous = 1 THEN 'Berurutan'
		ELSE 'Fleksibel'
	END AS tipe_pengerjaan_soal,
	T1.is_jawab,
	CASE
		WHEN T1.is_jawab = 1 THEN 'Harus Dijawab'
		ELSE 'Boleh Dikosongkan'
	END AS tipe_pengerjaan_jawaban,
	T1.is_free,
	CASE
		WHEN T1.is_free = 1 THEN 'Gratis'
		ELSE 'Berbayar'
	END AS tipe_buku,
	T1.petunjuk,
	T1.visual_limit,
	T1.`file` AS lampiran_petunjuk,
	T1.tipe_file,
	CASE
		WHEN COUNT(T4.id) IS NULL THEN 0
		ELSE COUNT(T4.id)
	END AS total_soal,
	T1.is_enable,
	CASE
		WHEN T1.is_enable = 1 THEN 'Aktif'
		ELSE 'Tidak Aktif'
	END AS status_paket_soal,
	T1.created_datetime,
	T1.updated_datetime,
	T1.created_by,
	T1.updated_by
FROM paket_soal AS T1
JOIN detail_mode_jawaban AS T2 ON T1.detail_mode_jwb_id = T2.id
	AND T2.is_enable = 1
LEFT OUTER JOIN pengaturan_universal AS T3 ON T1.pengaturan_universal_id = T3.id 
	AND T3.is_enable = 1
LEFT OUTER JOIN bank_soal AS T4 ON T1.id = T4.paket_soal_id
	AND T4.is_enable = 1
GROUP BY T1.id,
	T1.name,
	T1.kelas_id,
	T1.kelas_name,
	T1.materi_id,
	T1.materi_name,
	T1.detail_mode_jwb_id,
	T2.name,
	T1.is_acak_soal,
	T1.is_acak_jawaban,
	T1.pengaturan_universal_id,
	T3.name,
	T3.detail,
	T1.skor_null,
	T1.is_continuous,
	T1.is_jawab,
	T1.petunjuk,
	T1.visual_limit,
	T1.`file`,
	T1.tipe_file,
	T1.is_enable,
	T1.created_datetime,
	T1.updated_datetime ;

-- Dumping structure for view candraaj_cbt.v_peserta
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_peserta`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_peserta` AS SELECT
	T1.id AS peserta_id,
	T1.no_peserta,
	T1.name AS peserta_name,
	T1.`file` AS foto_profil,
	T1.lembaga_id,
	T5.name AS lembaga_name,
	CASE
		WHEN T1.group_peserta_id IS NULL THEN ''
		ELSE T1.group_peserta_id
	END AS group_peserta_id,
	CASE
		WHEN T4.name IS NULL THEN ''
		ELSE T4.name
	END AS group_peserta_name,
	T1.user_id,
	T2.username,
	T2.password,
	T2.role_user_id,
	T3.name AS role_user_name,
	T2.is_login,
	CASE
		WHEN T2.is_login = 1 THEN 'Online'
		ELSE 'Offline'
	END AS login_status,
	T1.created_datetime AS created_datetime_peserta,
	T1.updated_datetime AS updated_datetime_peserta,
	T2.created_datetime AS created_datetime_user,
	T2.updated_datetime AS updated_datetime_user
FROM peserta AS T1
JOIN user AS T2 ON T1.user_id = T2.id
	AND T2.role_user_id = 2
	AND T2.is_enable = 1
JOIN role_user AS T3 ON T2.role_user_id = T3.id
	AND T3.is_enable = 1
LEFT OUTER JOIN group_peserta AS T4 ON T1.group_peserta_id = T4.id
	AND T4.is_enable = 1
LEFT OUTER JOIN lembaga AS T5 ON T1.lembaga_id = T5.id
	AND T5.is_enable = 1
WHERE T1.is_enable = 1
AND T1.is_lock = 0 ;

-- Dumping structure for view candraaj_cbt.v_peserta_sesi
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_peserta_sesi`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_peserta_sesi` AS SELECT 
	T1.id AS id_sesi_pelaksanaan_user,
	T1.sesi_pelaksanaan_id,
	T5.name AS sesi_pelaksanaan_name,
	T1.group_peserta_id,
	CASE
		WHEN T1.group_peserta_id = 0 THEN 'NO_GROUP'
		ELSE T4.name
	END AS group_peserta_name,
	T1.user_id,
	T2.username,
	T2.password,
	T3.no_peserta,
	T3.no_telp,
	T3.name AS peserta_name
FROM sesi_pelaksanaan_user AS T1
JOIN user AS T2 ON T1.user_id = T2.id
	AND T2.is_enable = 1
	AND T2.role_user_id = 2
JOIN peserta AS T3 ON T1.user_id = T3.user_id
	AND T3.is_enable = 1
	AND T3.is_lock = 0
LEFT OUTER JOIN group_peserta AS T4 ON T1.group_peserta_id = T4.id
	AND T4.is_enable = 1
JOIN sesi_pelaksanaan AS T5 ON T1.sesi_pelaksanaan_id = T5.id
	AND T5.is_enable = 1
WHERE T1.is_enable = 1
ORDER BY group_peserta_id, user_id ;

-- Dumping structure for view candraaj_cbt.v_sesi_pelaksanaan
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_sesi_pelaksanaan`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_sesi_pelaksanaan` AS SELECT
	T1.id AS sesi_pelaksanaan_id,
	T1.name AS sesi_pelaksanaan_name,
	T3.materi_id,
	T3.materi_name,
	T1.paket_soal_id,
	T3.nama_paket_soal,
	T1.mode_peserta_id,
	T2.name AS mode_peserta_name,
	GROUP_CONCAT(DISTINCT T4.group_peserta_id) AS group_peserta_id,
	GROUP_CONCAT(DISTINCT T5.name SEPARATOR ', ') AS group_peserta_name,
	CASE
		WHEN T4.id IS NULL THEN 0
		ELSE COUNT(T4.id) 
	END AS user_total,
	T1.waktu_mulai,
	T1.lama_pengerjaan,
	T1.batas_pengerjaan,
	T1.blok_layar,
	T1.is_fleksible,
	CASE
		WHEN T1.is_fleksible = 1 THEN 'Fleksible'
		ELSE 'Sesuai Waktu Mulai'
	END AS fleksible_name,
	T1.is_hasil,
	T1.is_ranking,
	T1.is_pembahasan,
	T1.is_komposisi_soal,
	T3.petunjuk,
	T6.total_soal,
	T1.created_datetime AS created_datetime_sesi,
	T1.updated_datetime AS updated_datetime_sesi,
	T1.is_enable AS is_enable_sesi,
	CASE
		WHEN T1.is_enable = 1 AND NOW() BETWEEN T1.waktu_mulai AND T1.batas_pengerjaan THEN 'Sesi Berlangsung'
		WHEN T1.is_enable = 1 AND T1.batas_pengerjaan >= NOW() THEN 'Aktif'
		ELSE 'Tidak Aktif'
	END AS status_sesi_pelakasanaan
FROM sesi_pelaksanaan AS T1
JOIN mode_peserta AS T2 ON T1.mode_peserta_id = T2.id
	AND T2.is_enable = 1
JOIN v_paket_soal AS T3 ON T1.paket_soal_id = T3.paket_soal_id
	AND T3.is_enable = 1
LEFT OUTER JOIN sesi_pelaksanaan_user AS T4 ON T1.id = T4.sesi_pelaksanaan_id
	AND T4.is_enable = 1
LEFT OUTER JOIN group_peserta AS T5 ON T4.group_peserta_id = T5.id
	AND T5.is_enable = 1
JOIN v_total_soal_ujian AS T6 ON T1.id = T6.sesi_pelaksanaan_id
WHERE T1.is_enable = 1
GROUP BY T1.id
ORDER BY T1.id DESC ;

-- Dumping structure for view candraaj_cbt.v_tipe_kesulitan
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_tipe_kesulitan`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_tipe_kesulitan` AS SELECT tipe_kesulitan_id, tipe_kesulitan_name
		FROM (SELECT 
				T1.tipe_kesulitan_id, 
				T2.name AS tipe_kesulitan_name, 
				COUNT(T1.tipe_kesulitan_id) AS total_kesulitan
			FROM bank_soal AS T1
			JOIN tipe_kesulitan AS T2 ON T1.tipe_kesulitan_id = T2.id
			GROUP BY T1.tipe_kesulitan_id) AS A 
			
			
/*
SELECT 
				T1.tipe_kesulitan_id, 
				T2.name AS tipe_kesulitan_name, 
				COUNT(T1.tipe_kesulitan_id) AS total_kesulitan
			FROM bank_soal AS T1
			JOIN tipe_kesulitan AS T2 ON T1.tipe_kesulitan_id = T2.id
			GROUP BY T1.tipe_kesulitan_id
*/ ;

-- Dumping structure for view candraaj_cbt.v_total_soal_ujian
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_total_soal_ujian`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_total_soal_ujian` AS SELECT
	sesi_pelaksanaan_id,
	SUM(total_soal) AS total_soal
FROM sesi_pelaksanaan_komposisi
WHERE is_enable = 1
GROUP BY sesi_pelaksanaan_id ;

-- Dumping structure for view candraaj_cbt.v_total_user_ujian
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_total_user_ujian`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_total_user_ujian` AS SELECT
	sesi_pelaksanaan_id,
	paket_soal_id,
	COUNT(user_id) AS total_user_ujian
FROM ujian
GROUP BY
sesi_pelaksanaan_id,
paket_soal_id ;

-- Dumping structure for view candraaj_cbt.v_ujian_detail
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_ujian_detail`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_ujian_detail` AS SELECT
	T1.id AS ujian_id,
	T1.sesi_pelaksanaan_id,
	T2.sesi_pelaksanaan_name,
	T1.paket_soal_id,
	T3.nama_paket_soal AS paket_soal_name,
	T1.user_id,
	T1.user_no,
	T1.user_name,
	T1.user_email,
	T1.list_soal,
	T1.list_jawaban,
	T1.jml_benar,
	T1.jml_salah,
	T1.jml_ragu,
	T1.jml_kosong,
	GROUP_CONCAT(DISTINCT T4.group_soal_id SEPARATOR ', ') AS group_soal_id,
	GROUP_CONCAT(DISTINCT T5.name SEPARATOR ', ') AS group_soal_name,
	GROUP_CONCAT(DISTINCT T4.skor_konversi SEPARATOR ', ') AS skor_group,
	SUM(T4.skor_konversi) AS total_skor,
	ROUND(T1.skor) AS nilai,
	T1.tgl_mulai AS tgl_mulai_peserta,
	T1.tgl_selesai AS tgl_selesai_peserta,
	T2.waktu_mulai AS tgl_mulai_sesi,
	T2.batas_pengerjaan AS tgl_selesai_sesi,
	T2.materi_name,
	T1.`status`,
	T3.detail_nama_pengaturan_universal AS skala_penilaian,
	T2.group_peserta_name
FROM ujian AS T1
JOIN v_sesi_pelaksanaan AS T2 ON T1.sesi_pelaksanaan_id = T2.sesi_pelaksanaan_id
JOIN v_paket_soal AS T3 ON T1.paket_soal_id = T3.paket_soal_id
LEFT OUTER JOIN ujian_skor AS T4 ON T1.id = T4.ujian_id
JOIN group_soal AS T5 ON T4.group_soal_id = T5.id ;

-- Dumping structure for view candraaj_cbt.v_ujian_header
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_ujian_header`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_ujian_header` AS SELECT
	T1.sesi_pelaksanaan_id,
	T2.sesi_pelaksanaan_name,
	T1.paket_soal_id,
	T3.name AS paket_soal_name,
	T2.materi_name,
	SUM(T4.skor_konversi) AS total_skor,
	MAX(ROUND(T1.skor)) AS nilai_tertinggi,
	ROUND(AVG(T1.skor), 2) AS nilai_rata,
	MIN(ROUND(T1.skor)) AS nilai_terendah,
	T2.waktu_mulai AS tgl_mulai_sesi,
	T2.batas_pengerjaan AS tgl_selesai_sesi,
	T2.fleksible_name,
	T2.lama_pengerjaan,
	T2.mode_peserta_name,
	T2.group_peserta_name,
	T2.total_soal,
	T2.user_total AS total_user_sesi,
	T5.total_user_ujian,
	T2.status_sesi_pelakasanaan
FROM ujian AS T1
JOIN v_sesi_pelaksanaan AS T2 ON T1.sesi_pelaksanaan_id = T2.sesi_pelaksanaan_id
JOIN paket_soal AS T3 ON T1.paket_soal_id = T3.id
LEFT OUTER JOIN ujian_skor AS T4 ON T1.id = T4.ujian_id
JOIN v_total_user_ujian AS T5 ON T1.sesi_pelaksanaan_id = T5.sesi_pelaksanaan_id
	AND T1.paket_soal_id = T5.paket_soal_id
GROUP BY T1.sesi_pelaksanaan_id,
	T1.paket_soal_id 
ORDER BY T2.sesi_pelaksanaan_id DESC ;

-- Dumping structure for view candraaj_cbt.v_ujian_ranking
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_ujian_ranking`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_ujian_ranking` AS SELECT
	id,
	skor,
	RANK() OVER (PARTITION BY sesi_pelaksanaan_id, paket_soal_id ORDER BY skor DESC) AS ranking
FROM
	ujian
WHERE
	is_enable = 1 AND
	`status` = 1
GROUP BY sesi_pelaksanaan_id, paket_soal_id, user_id
ORDER BY sesi_pelaksanaan_id, paket_soal_id, ranking 

/*SELECT
	T1.id,
	T1.skor,
    COUNT(*) AS ranking
FROM
	ujian AS T1
    INNER JOIN ujian AS T2 ON T1.sesi_pelaksanaan_id = T2.sesi_pelaksanaan_id
    AND T1.paket_soal_id = T2.paket_soal_id
    AND T1.skor <= T2.skor
WHERE
	T1.is_enable = 1 AND
	T1.`status` = 1
GROUP BY T1.sesi_pelaksanaan_id, T1.paket_soal_id, T1.user_id
ORDER BY T1.sesi_pelaksanaan_id, T1.paket_soal_id, ranking*/ ;

-- Dumping structure for view candraaj_cbt.v_users
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_users`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_users` AS SELECT
	T1.id AS user_id,
	T1.role_user_id,
	T1.username,
	T1.password,
	T2.id AS peserta_id,
	T2.no_peserta,
	T2.no_telp,
	T2.group_peserta_id,
	T3.name AS group_peserta_name,
	T2.name AS peserta_name,
	T2.is_lock,
	T1.is_login
FROM user AS T1
JOIN peserta AS T2 ON T1.id = T2.user_id
	AND T2.is_lock = 0
	AND T2.is_enable = 1
LEFT OUTER JOIN group_peserta AS T3 ON T2.group_peserta_id = T3.id
	AND T3.is_enable = 1
WHERE T1.is_enable = 1 ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
