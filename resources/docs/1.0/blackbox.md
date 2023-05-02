# Blackbox Testing for User

---

- [Masuk Landing Page Tenant](#section-1)
- [Halaman Tenant](#section-2)
- [Menampilkan Menu Tenant dan Komponen](#section-3)
- [Register User baru](#section-4)
- [Login User](#section-5)
- [Edit Profil](#section-6)
- [Logout](#section-7)

<a name="section-1"></a>
## Masuk Landing Page Tenant

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Akses url  | Langsung masuk ke landing page tenant | True     | 
| 2     | Responsive  | Landing page tenant responsive | True     |
| 3     | Buka Sidebar  | Dapat klik sidebar | True     |

<a name="section-2"></a>
## Halaman Tenant

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Buka Sidebar  | Dapat klik sidebar | True     |
| 2     | Klik Tenant  | Dapat memilih tenant | True     |
| 3     | Tenant Muncul  | Tenant dapat ditampilkan dan dilihat user | True     |
| 4     | Tampilan Slider atau gambar bergerak  | User dapat melihat slider setiap tenant | True     |
| 5     | Tampilan Banner atau gambar bergerak  |  User dapat melihat banner setiap tenant | True |

<a name="section-3"></a>
## Menampilkan Menu Tenant dan Komponen

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1 | Memilih Kategori | User dapat melihat kategori makanan dan tombol kategori dapat diklik dan tampil | True   |
| 2 | Menampilkan menu | User dapat melihat menu makanan di halaman depan | True   |
| 3 | Tampilkan Detail | User dapat melihat detail menu makanan apabila user klik satu menu | True   |
| 4 | Tampilkan menu lengkap | User dapat melihat menu makanan lengkap apabila di klik tombol view more | True   |
| 5 | Komponen di detail menu | User dapat pilih variasi makanan | True   | Jika tersedia
| 6 | Komponen di detail menu | User dapat pilih add on makanan | True   | Jika tersedia


<a name="section-7"></a>
## Register User baru

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | User registrasi konvensional  | User dapat registrasi | True     |
| 2     | User registrasi dengan sosial akun  | User dapat registrasi| True     |
| 3     | Aktivasi akun  | Inputkan kode otp dikirim email sebelum akun aktif | True     | Jika kode otp benar

<a name="section-8"></a>
## Login User

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | User login  | User dapat login | True     | Jika password dan email benar
| 2     | User login dengan sosial akun  | User dapat login dengan sosial akun | True     | Jika akun tersedia dan sudah diregistrasikan

<a name="section-9"></a>
## Edit Profil

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Edit Password  | User dapat Edit password | True     |
| 2     | Upload foto  | User dapat upload foto | True     |
| 3     | Update Nomor HP  | User dapat update No.Hp | True     |

<a name="section-10"></a>
## Logout

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Logout Aplikasi  | User dapat keluar aplikasi | True     |