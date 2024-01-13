syntax sql 
=== Buat database ===
enter terus sampai ada tulisan "postgres=#"

===YOHANES HUBERT===

//membuat database 
# CREATE DATABASE peminjaman;

//untuk koneksi ke database
# \c peminjaman; 

// membuat tabel peminjam
# CREATE TABLE peminjam (
    id_peminjam SERIAL PRIMARY KEY, 
    nama_peminjam VARCHAR NOT NULL, 
    jenis_kelamin VARCHAR NOT NULL,
    fakultas VARCHAR NOT NULL); 

// membuat tabel buku
# CREATE TABLE buku (
    id_buku SERIAL PRIMARY KEY, 
    nama_buku VARCHAR NOT NULL, 
    tema_buku VARCHAR NOT NULL, 
    stok INT NOT NULL); 

// membuat tabel peminjaman
# CREATE TABLE peminjaman (
    id_peminjaman SERIAL PRIMARY KEY, 
    id_buku INT NOT NULL, 
    id_peminjam INT NOT NULL, 
    tanggal DATE NOT NULL, 
    keterangan VARCHAR NOT NULL)
    FOREIGN KEY (id_buku) REFERENCES buku (id_buku)
    FOREIGN KEY (id_peminjam) REFERENCES peminjam (id_peminjam); 

// untuk melihat semua table
# SELECT * FROM nama_tabel; 

// untuk memasukkan data ke table peminjam
# INSERT INTO peminjam (id_peminjam, nama_peminjam, jenis_kelamin, fakultas) VALUES 
(1, 'Yohanes', 'Laki', 'Teknik'), 
(2, 'Hubert', 'Laki','Informatika'), 
(3, 'Yohana', 'Perempuan', 'Ekonomi'), 
(4, 'Claudio', 'Laki', 'Mipa');

// untuk memasukkan data ke table buku
# INSERT INTO buku (id_buku, nama_buku, tema_buku, stok) VALUES 
(1, 'DUNE', 'Sci-Fi', 3), 
(2, 'SAPIENS', 'Historical', 5), 
(3, 'HARRY POTTER', 'Fantasy', 2);

// untuk memasukkan data ke table
# INSERT INTO nama_tabel (id_peminjaman, id_buku, id_peminjam, tanggal, keterangan) VALUES 
(1, 2, 1, '2024-01-01', 'dipinjam'), 
(2, 1, 2, '2024-01-01', 'dipinjam'), 
(3, 3, 3, '2024-01-01', 'dipinjam'), 
(4, 2, 4, '2024-01-02', 'dipinjam');

// untuk menambahkan FOREIGN KEY dengan perintah ALTER (Jika lupa memasukkan saat create table)
# ALTER TABLE peminjaman ADD FOREIGN KEY (id_buku) REFERENCES buku (id_buku);

// untuk melihat data table berdasarkan id
# SELECT * FROM nama_tabel WHERE id = value_field_id;

// untuk melihat data table berdasarkan nama_field
# SELECT * FROM nama_tabel WHERE nama_field = value_nama_field;

// untuk mengubah data di table
# UPDATE nama_tabel SET nama_field = value_nama_field yang sudah diganti WHERE id = value_field_id;

// untuk menghapus data di table
# DELETE FROM nama_tabel WHERE id = value_field_id