## Blog V2
Adalah aplikasi web yang berisi banyak artikel buatan diri sendiri maupun orang lain, yang dimana terdapat juga dashboard admin tempat kita CRUD artikel milik kita sendiri, tentunya sudah menerapkan relasi antar tabel serta menggunakan Open API untuk keperluan get data. Fitur-fitur yang ada di dalamnya antara lain :
1. Fitur Search
2. Pagination
3. Image/Carousel
4. Login, Register, Logout
5. Dashboard Admin
6. CRUD Article
7. Categories Article
8. Using Open API

## Cara Menjalankan Program :
1. Pastikan sudah menginstall xampp atau laragon
2. Pastikan sudah menginstall composer dan PHP 
3. Nyalakan server pada xampp atau laragon lalu buat database dengan nama sesuai di .env
4. Clone repositori ini
5. Ketik pada terminal :
   a. composer install
   b. php artisan migrate:fresh
   c. php artisan db:seed
   d. php artisan serve
6. Kunjungi server yang aktif pada langkah 5 bagian d
