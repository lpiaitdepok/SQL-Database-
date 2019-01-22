-- can run in sqlite3 tools
-- Window Functions
-- https://www.sqlite.org/
SELECT
    ROW_NUMBER () OVER ( 
        ORDER BY NamaBarang 
    ) RowNum,
    NamaBarang,
    Satuan,
    HargaBeli,
    HargaJual,
    Diskon,
    Stok     
FROM
    Barang;
