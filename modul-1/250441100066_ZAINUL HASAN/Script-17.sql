CREATE DATABASE perpustakaan;
USE perpustakaan;
CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY,
    judul VARCHAR(250),
    tahun_terbit YEAR,
    estimasi_harga DECIMAL(15,2)
);
SHOW TABLES;
describe koleksi_langka;
