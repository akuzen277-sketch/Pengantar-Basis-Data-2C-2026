CREATE DATABASE transaksi;
USE transaksi;
CREATE TABLE transaksi_harian(
	id_transaksi INT,
    jumlah DECIMAL(10,2)
);
TRUNCATE TABLE transaksi_harian;

SHOW TABLES;
DESCRIBE transaksi_harian

DROP TABLE transaksi_harian;

CREATE TABLE umpan_balik (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_pengguna VARCHAR(100),
    isi_komentar TEXT,
    tanggal TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
           SHOW TABLES;
           DESCRIBE umpan_balik;
