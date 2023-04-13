# Fitur Super Admin

---

- [Masuk Aplikasi](#section-1)
- [Beranda](#section-2)
- [Tenant](#section-3)
- [Sidebar](#section-4)
- [Slider](#section-5)
- [Banner](#section-6)
- [Kategori Menu](#section-7)
- [Master Menu](#section-8)
- [Edit Informasi](#section-9)
- [Pengeditan dan Penghapusan](#section-10)
- [Lupa Password](#section-11)

<a name="section-1"></a>
## Masuk Aplikasi

Tenant dapat masuk ke aplikasi dengan memasukkan alamat 
```php
localhost:8000/admin
```
Dengan username dan password yang sudah disediakan maka anda dapat langsung masuk di halaman beranda. Anda akan login sebagai pengelola food court kenangan.

<a name="section-2"></a>
## Beranda

Di halaman beranda, anda bisa melihat tabel pemesanan dari setiap tenant (in progress) serta beberapa ringkasan - ringkasan dalam bentuk kartu berwarna - warni, contohnya untuk melihat berapa total menu makanan minuman yang sudah temant masukkan.

> {warning} Halaman Beranda masih dalam tahap pengembangan. Dan akan selalu di update untuk perubahannya.

Di bagian atas terdapat logo Food Court Kenangan, serta informasi anda login sebagai siapa. Jika anda klik pada bagian foto profil maka akan muncul beberapa menu yaitu Edit Profil dan Logout atau Keluar Aplikasi. <br>

> {info} Anda bisa edit profil berupa mengedit nomor HP, dan mengubah password.

<a name="section-3"></a>
## Tenant

Di halaman tenant, anda bisa menambahkan tenant sebanyak yang diperlukan. Disaat menambahkan tenant, anda diminta untuk memasukkan informasi tenant berupa nama, email, no.hp, password, dan logo tenant.
<br>
Selain menambahkan, anda juga dapat mengedit informasi berkaitan dengan tenant apabila diperlukan. Contohnya ketika tenant lupa password login.

> {warning} Anda juga dapat menonaktifkan tenant apabila diperlukan, menonaktifkan bersifat sementara dan dapat diaktifkan kembali.

<a name="section-4"></a>
## Sidebar

Sidebar yaitu menu yang terletak disamping kiri dan berisi berbagai macam opsi untuk anda melakukan aktivitas di setiap halaman. Dikarenakan kapasitas anda sebagai Admin, maka disini anda bisa melihat lengkap aktivitas tenant ketika tenant memasukkan ataupun mengedit item tertentu.

> {danger} Setiap anda melakukan aktivitas seperti menambah, mengedit atau menghapus item akan muncul di halaman depan pengguna (customer). Dimohon untuk melakukan perubahan dengan teliti.

Data yang anda pantau berupa tabel, di setiap tabel akan muncul nama tenant. Di aplikasi ini terdapat berbagai macam menu sidebar yang akan dijelaskan dibawah.

<a name="section-5"></a>
## Slider

Di halaman slider, anda bisa melihat gambar yang tenant anda upload. Data yang anda lihat berupa tabel.

<a name="section-6"></a>
## Banner

Di halaman banner, anda bisa melihat gambar banner yang tenant anda upload. Data yang anda lihat berupa tabel.

<a name="section-7"></a>
## Kategori Menu

Di halaman karegori menu, anda bisa melihat kategori menu yang tenant anda upload. Data yang anda lihat berupa tabel.

<a name="section-8"></a>
## Master Menu

Di Master Menu terdapat lagi 3 submenu yaitu menu, variasi, dan Bahan. 
## <h4>Menu adalah bagian utama dimana anda dapat melihat makanan minuman dengan berbagai opsi.</h4>
## <h4>Variasi merupakan bagian menu dimana disini anda dapat melihat variasi misalnya (topping, es batu banyak sedikit).</h4>
## <h4>Bahan merupakan bagian menu dimana disini anda dapat melihat bahan pembuatan makanan tersebut.</h4>

Anda dapat melihat berbagai macam menu serta opsional nya yang tenant masukkan. Data yang anda lihat berbentuk tabel.

<a name="section-9"></a>
## Edit Informasi Food Court

Di halaman Edit Informasi anda dapat mengedit judul untuk halaman website anda serta menambahkan logo untuk aplikasi anda.

>{warning} Setiap perubahan yang anda lakukan akan muncul di semua halaman aplikasi ini baik halaman depan maupun halaman admin, mohon hati - hati dan check untuk melakukan perubahan.

<a name="section-10"></a>
## Pengeditan dan Penghapusan

Segala sesuatu berkaitan dengan aktivitas tenant akan dengan mudah anda pantau di setiap halaman aplikasi ini.<br>
Tidak hanya memantau, anda juga dapat melakukan penghapusan terhadap suatu item di suatu tenant.

> {danger} Apabila akan menghapus suatu item akan muncul sebuah notifikasi apakah ingin dilanjutkan atau dibatalkan perintahnya, mohon dipergunakan dengan bijak setiap fiturnya.

<a name="section-11"></a>
## Lupa Password

Apabila anda sebagai pemilik super admin tidak bisa masuk aplikasi atau terkendala sesuatu terutama ketika lupa password (kata sandi) akun. Maka anda dapat menghubungi developer aplikasi ini yaitu tim PBL UNS`21.

> {warning} Sebagai pencegahan, dimohon Super Admin atau pihak bersangkutan untuk menyimpan password di lokasi yang aman.