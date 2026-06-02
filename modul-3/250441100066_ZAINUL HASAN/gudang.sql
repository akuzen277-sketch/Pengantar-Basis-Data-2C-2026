use gudang;

create table inventaris_gudang_pusat(
id_barang int primary key,
nama_barang  Varchar(100),
kode_sku Varchar(50),
kategori Varchar(50),
harga_satuan Decimal,
stok int,
lokasi_rak Varchar(20),
status_qc Varchar(20)
);

INSERT INTO inventaris_gudang_pusat VALUES
(101,'Gaming Laptop G5','ELEC-442-X','Laptop',15500000,12,'A-01','Lulus'),
(102,'Wireless Mouse','ACC-101-Y','Aksesoris',250000,150,NULL,'Lulus'),
(103,'Ultra Wide Monitor','ELEC-881-X','Monitor',7200000,5,'B-05','Pending'),
(104,'Mechanical Keyboard','ACC-202-Z','Aksesoris',1200000,45,'B-02','Lulus'),
(105,'Office Chair Pro','FURN-991-P','Furniture',3500000,8,'C-01',NULL),
(106,'USB-C Hub','ACC-303-X','Aksesoris',850000,0,NULL,'Gagal'),
(107,'Smartphone Z Flip','ELEC-112-Y','Smartphone',14000000,4,'A-03','Lulus'),
(108,'Standing Desk','FURN-882-Q','Furniture',5000000,15,'C-02','Lulus'),
(109,'Headset Gaming RGB','ACC-404-X','Aksesoris',1100000,25,NULL,'Lulus'),
(110,'Thunderbolt Cable','ACC-505-Z','Aksesoris',450000,100,'B-03','Lulus');

SELECT nama_barang, kategori, kode_sku
FROM inventaris_gudang_pusat
WHERE lokasi_rak IS NULL
  AND stok > 0
  AND status_qc = 'Lulus';

SELECT DISTINCT kategori
FROM inventaris_gudang_pusat
WHERE kode_sku LIKE '%ELEC%'
  AND kode_sku LIKE '%X'
  AND harga_satuan > 5000000;

SELECT nama_barang, stok,
  CASE
    WHEN stok = 0 AND kategori = 'Aksesoris'
      THEN 'Urgent - Restock Segera'
    WHEN stok < 10 AND stok > 0
      AND kategori IN ('Laptop', 'Smartphone')
      THEN 'High Priority'
    WHEN stok BETWEEN 10 AND 50
      THEN 'Medium'
    ELSE 'Aman'
  END AS prioritas_restock
FROM inventaris_gudang_pusat
ORDER BY stok ASC;

SELECT *
FROM inventaris_gudang_pusat
WHERE lokasi_rak LIKE 'B%'
  AND NOT (harga_satuan BETWEEN 1000000 AND 5000000)
  AND kategori != 'Monitor';

SELECT nama_barang, harga_satuan, status_qc
FROM inventaris_gudang_pusat
WHERE kategori != 'Furniture'
  AND status_qc = 'Lulus'
ORDER BY harga_satuan DESC
LIMIT 3;

select * from inventaris_gudang_pusat;




