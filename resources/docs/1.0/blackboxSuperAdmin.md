# Blackbox Testing for Super Admin

---

- [Login Tenant](#section-1)
- [Masuk Dashboard dan klik card](#section-2)
- [Masuk menu tenant](#section-3)
- [Masuk menu slider](#section-4)
- [Masuk menu banner](#section-5)
- [Masuk menu kategori menu](#section-6)
- [Masuk menu master menu](#section-7)
- [Masuk menu pengaturan](#section-8)
- [Edit Profile](#section-9)
- [Pengaturan Aplikasi](#section-10)
- [Logout](#section-11)

<a name="section-1"></a>
## Login Tenant


| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Login Tenant  |Super Admin dapat login | True     | Jika akun sudah tersedia
| 2     | Responsive  | Super Admin Dasshboard responsive | True     |
| 3     | Buka Sidebar  | Dapat klik sidebar | True     |

<a name="section-2"></a>
## Masuk Dashboard dan klik card

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Masuk Dashboard  | Super Admin dapat melihat tampilan beranda dasbor | True     | 
| 2     | Klik card  | Super Admin dapat klik card dan langsung tampil halaman berdasarkan card tersebut | True     | Jika halaman card tersedia

<a name="section-3"></a>
## Masuk menu tenant

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Masuk Menu Tenant  | Super Admin dapat masuk menu tenant | True     | 
| 2     | Tampilkan tabel list tenant  | Super Admin dapat melihat list tenant | True     | 
| 3    | Tambah Tenant  | Super Admin dapat menambahkan tenant  | True     | mengisikan form yang berisi email, no.hp, password, upload gambar logo.
| 4    | Suspend Tenant  | Super Admin dapat nonaktifkan tenant  | True     | 
| 5    | Edit Tenant  | Super Admin dapat edit tenant  | True     | update form yang berisi email, no.hp, password, upload gambar logo.


<a name="section-4"></a>
## Masuk menu slider

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Masuk Menu Slider  | Super Admin dapat masuk menu Slider | True     | 
| 2     | Tampilkan tabel list slider  | Super Admin dapat melihat list slider | True     | Jika tenant sudah upload
| 3     | Delete slider  | Super Admin dapat delete slider | True     | Jika tenant sudah upload

<a name="section-5"></a>
## Masuk menu banner

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Masuk Menu Banner  | Super Admin dapat masuk menu Banner | True     | 
| 2     | Tampilkan tabel list banner  | Super Admin dapat melihat list banner | True     | Jika tenant sudah upload
| 3     | Delete banner  | Super Admin dapat delete banner | True     | Jika tenant sudah upload

<a name="section-6"></a>
## Masuk menu kategori menu

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Masuk Menu Kategori  | Super Admin dapat masuk menu Kategori | True     |
| 2    | Tambah Kategort  | Super Admin dapat menambahkan kategori  | True     | mengisikan form yang berisi nama kategori, ikon kategori
| 3     | Tampilkan tabel list kategori  | Super Admin dapat melihat list kategori | True     |
| 4     | Delete kategori  | Super Admin dapat delete slider | True     | 
| 5    | Edit kategori  | Super Admin dapat delete kategori  | True     | update form yang berisi nama kategori, ikon kategori

<a name="section-7"></a>
## Masuk menu master menu

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Masuk Menu Master Menu  | Super Admin dapat masuk menu Master Menu | True     | 
| 2     | Tampilkan tabel list Master Menu  | Super Admin dapat melihat Master Menu | True     | Jika tenant sudah input
| 3     | Delete Master Menu  | Super Admin dapat delete Master Menu | True     | Jika tenant sudah input 

<a name="section-8"></a>
## Masuk menu pengaturan

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Masuk Menu Pengaturan  | Super Admin dapat masuk menu edit informasi aplikasi | True     | 
| 2     | Upload favicon  | Super Admin dapat upload logo ikon aplikasi | True     | 
| 3     | Upload logo footer header  | Super Admin dapat upload logo footer header | True     | 
| 4     | Deskripsi aplikasi  | Super Admin dapat edit deskripsi aplikasi | True     | 


<a name="section-9"></a>
## Edit Profile

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Edit Password  | Super Admin dapat edit password akun | True     | 
| 2     | Edit Email  | Super Admin dapat edit Email akun | True     | 
| 3     | Add no.HP  | Super Admin dapat edit atau add no.hp | True     | 

<a name="section-10"></a>
## Pengaturan Aplikasi

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Merubah Mata Uang  | Super Admin dapat merubah mata uang | True     |
| 2     | Max Order Min Order  | Super Admin dapat merubah jumlah maksimal pesanan dan minimal pesanan | True     |
| 3     | Zona Waktu  | Super Admin dapat merubah zona waktu | True     |

<a name="section-11"></a>
## Logout

| No      | Rancangan Proses             | Hasil diharapkan    | Hasil                     | Ket
| --------- | ----------------- | ----------- | ------------------------------------------ | 
| 1     | Logout Aplikasi  | Super Admin dapat keluar aplikasi | True     |