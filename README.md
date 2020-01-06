# ONE TO MANY CRUD NATIVE PHP

cara penggunaan :
1. buat database dengan nama onetomany
2. dump onetomany.sql
3. setting connect.php sesuaikan dengan koneksi 

# EXPLANATION

VIEW :
1. Mengubah hasil dari sql
2. Perulangan untuk view setiap judul menggunakan foreach
3. Perulangan untuk view kategori di masing-masing judul menggunakan foreach
4. Menambahkan koma (,) untuk setiap kategori
5. Menghilangkan (,) pada kategori yang paling akhir

INSERT :
1. Insert isi, judul ke tabel artikel
2. Mengubah type data kategori dari string menjadi array
3. Mass insert id_artikel, kategori kedalam tabel kategori

EDIT :
1. Update isi, judul pada tabel artikel sesuai id
2. Delete semua kategori yang memiliki artikel_id
3. Mengubah type data kategori dari string menjadi array
4. Mass insert id_artikel, kategori kedalam tabel kategori

DELETE :
Delete artikel sesuai id 
setting di relasi menggunakan ON DELETE = CASCADE artinya ketika data pada tabel artikel dihapus maka seluruh kategori pada tabel kategori yang memiliki artikel id yang bersangkutan akan ikut dihapus

Link Referensi :
https://stackoverflow.com/questions/17979982/displaying-php-mysql-query-result-with-one-to-many-relationship/17980777
https://stackoverflow.com/questions/35726910/bulk-update-mysql-with-where-statement
