CREATE TABLE umpan_balik (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_pengguna VARCHAR(100),
    isi_komentar TEXT,
    tanggal TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
SHOW TABLES;
DESCRIBE umpan_balik;
