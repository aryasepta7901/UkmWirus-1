Read me first.

1. Buat database dengan nama "pkl"
2. Import pkl_sipadu.sql ke MySQL 
3. Dicode Igniter ganti base_url = http://127.0.0.1/nama_folder/
4. Gunakan query dibawah ini pada SQL query di database

		CREATE OR REPLACE VIEW sipadu_all_rapat
		AS SELECT id_rapat,id_modul,id_seksi,nama_rapat, id_jenis_rapat,agenda,tempat,waktu_mulai,waktu_selesai,notulensi,is_wajib,id_peserta,waktu_kedatangan,presentase_presensi,nama_seksi,
		nama_modul,nama_subseksi,jenis_rapat, 
		CASE
        WHEN CURRENT_TIMESTAMP < waktu_mulai AND waktu_kedatangan IS NULL THEN "Rapat Belum Dimulai"
        WHEN CURRENT_TIMESTAMP>= waktu_mulai AND CURRENT_TIMESTAMP<waktu_selesai AND waktu_kedatangan IS NULL THEN "Rapat Telah Dimulai"
		WHEN (waktu_kedatangan <= waktu_mulai) AND waktu_kedatangan IS NOT NULL THEN "Hadir"
		WHEN (waktu_kedatangan > waktu_mulai) AND waktu_kedatangan IS NOT NULL THEN "Terlambat"
		ELSE "Tidak Hadir"
		END as kehadiran
		FROM
		sipadu_rapat NATURAL JOIN sipadu_rapat_seksi
		NATURAL JOIN sipadu_absensirapat
        NATURAL JOIN sipadu_jenisrapat
		NATURAL JOIN sipadu_seksi
		NATURAL JOIN sipadu_modul
		NATURAL JOIN sipadu_subseksi


CREATE OR REPLACE VIEW sipadu_all_rapat
		AS SELECT id_rapat,id_modul,id_seksi,nama_rapat, id_jenis_rapat,agenda,tempat,waktu_mulai,waktu_selesai,notulensi,is_wajib,id_peserta,waktu_kedatangan,presentase_presensi,nama_seksi,
		nama_modul,nama_subseksi,DATE_FORMAT(CURRENT_TIMESTAMP()+ INTERVAL 12 HOUR, '%Y-%m-%d %H:%i:%s') AS waktu_sekarang,jenis_rapat, 
		CASE
        WHEN DATE_FORMAT(CURRENT_TIMESTAMP()+ INTERVAL 12 HOUR, '%Y-%m-%d %H:%i:%s') < waktu_mulai AND waktu_kedatangan IS NULL THEN "Rapat Belum Dimulai"
        WHEN DATE_FORMAT(CURRENT_TIMESTAMP()+ INTERVAL 12 HOUR, '%Y-%m-%d %H:%i:%s') >= waktu_mulai AND CURRENT_TIMESTAMP<waktu_selesai AND waktu_kedatangan IS NULL THEN "Rapat Telah Dimulai"
		WHEN (waktu_kedatangan <= waktu_mulai) AND waktu_kedatangan IS NOT NULL THEN "Hadir"
		WHEN (waktu_kedatangan > waktu_mulai) AND waktu_kedatangan IS NOT NULL THEN "Terlambat"
		ELSE "Tidak Hadir"
		END as kehadiran
		FROM
		sipadu_rapat NATURAL JOIN sipadu_rapat_seksi
		NATURAL JOIN sipadu_absensirapat
        NATURAL JOIN sipadu_jenisrapat
		NATURAL JOIN sipadu_seksi
		NATURAL JOIN sipadu_modul
		NATURAL JOIN sipadu_subseksi


CREATE OR REPLACE VIEW sipadu_all_rapat
		AS SELECT id_rapat,id_modul,id_seksi,id_subseksi,
		nama_rapat, id_jenis_rapat,agenda,
		tempat,waktu_mulai,waktu_selesai,notulensi,is_wajib,id_peserta,waktu_kedatangan,
		presentase_presensi,nama_seksi,
		nama_modul,nama_subseksi,jenis_rapat, 
		CASE
        	WHEN CURRENT_TIMESTAMP < waktu_mulai 
		AND waktu_kedatangan IS NULL THEN "Rapat Belum Dimulai"
        	WHEN CURRENT_TIMESTAMP>= waktu_mulai 
		AND CURRENT_TIMESTAMP<waktu_selesai
		AND waktu_kedatangan IS NULL THEN "Rapat Telah Dimulai"
		WHEN (waktu_kedatangan <= waktu_mulai) 
		AND waktu_kedatangan IS NOT NULL THEN "Hadir"
		WHEN (waktu_kedatangan > waktu_mulai) 
		AND waktu_kedatangan IS NOT NULL THEN "Terlambat"
		ELSE "Tidak Hadir"
		END as kehadiran
		FROM
		sipadu_rapat NATURAL JOIN sipadu_rapat_seksi
		NATURAL JOIN sipadu_absensirapat
        	NATURAL JOIN sipadu_jenisrapat
		NATURAL JOIN sipadu_seksi
		NATURAL JOIN sipadu_modul
		NATURAL JOIN sipadu_subseksi