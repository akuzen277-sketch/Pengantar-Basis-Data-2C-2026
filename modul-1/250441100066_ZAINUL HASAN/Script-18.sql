CREATE DATABASE pelanggan;
USE pelanggan;

CREATE TABLE pelanggan_setia(
	id_pelanggan BIGINT PRIMARY KEY,
            nomor_identitas INT
);
ALTER TABLE pelanggan_setia
MODIFY COLUMN nomor_identitas VARCHAR(20);

SHOW TABLES;
DESCRIBE pelanggan_setia;
