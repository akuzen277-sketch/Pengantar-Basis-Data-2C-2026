CREATE DATABASE pelanggan;
USE pelanggan;

CREATE TABLE pelanggan_setia(
	id_pelanggan BIGINT PRIMARY KEY,
    nomor_identitas INT
);
DROP TABLE pelanggan_setia;
TRUNCATE pelanggan_setia;

SHOW TABLES;
DESCRIBE pelanggan_setia;

