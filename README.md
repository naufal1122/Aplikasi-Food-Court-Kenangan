<h1 align="center"> Selamat datang di Repository Kenangan Food Court App!👋🏻</h1>
![WhatsApp Image 2023-03-02 at 11 51 12](https://user-images.githubusercontent.com/65862366/222925077-dcaf6f4d-97fd-49a4-b85d-ae441b86bf26.jpg)

<p></p>

<h4 align="center">Website Pemesanan Makanan secara Online yang dibuat dengan <a href="https://laravel.com/" target="_blank">Laravel</a>.
</h4>
<br>
<h2 id="download">🐱‍💻 Panduan Menjalankan & Install Aplikasi</h2>

Untuk menjalankan aplikasi atau web ini kamu harus install XAMPP atau web server lain dan mempunyai setidaknya satu web browser yang terinstall di komputer anda.

```bash
# Clone repository ini atau download di
$ git clone https://github.com/naufal1122/Project_FoodCourt_23.git

# Kemudian jalankan command composer update, ini akan mengupdate resources yang laravel butuhkan
$ composer install

 ```
<p> - Dikarenakan fitur migrate belum tersedia, maka download database yang ada di repository dan pasang pada server locall. </p>
![image](https://user-images.githubusercontent.com/65862366/229569330-3b03da45-ae2b-4e19-a873-fb08c2bfc219.png)

<p> - Buka .env dan edit nama database serta nama user sesuai kredensial server local anda </p>
![image](https://user-images.githubusercontent.com/65862366/229569739-40745b23-c3e1-4c6b-8744-1c594b528a3d.png)

```bash
# Lalu jalankan aplikasi
$ php artisan serve

 ```
 <br>
<h2 id="akun">🔑 Daftar Akun Tersedia</h2>

Berikut adalah daftar akun untuk keperluan testing saat anda mencoba aplikasi pertama kali, nemun anda harus melakukan seed terlebih dahulu dengan panduan dibawah

| Role      | Email             | Password    | URL                                        |
| --------- | ----------------- | ----------- | ------------------------------------------ |
| Admin     | admin@gmail.com   | 123456 | http://localhost/admin     |
| Tenant 1     | branch1@gmail.com   | 123456 | http://localhost/admin     |
| Tenant 2     | branch2@gmail.com   | 123456 | http://localhost/admin     |
| Tenant 3     | branch3@gmail.com   | 123456 | http://localhost/admin     |
| User     | foodcourtkenangan23@gmail.com  | kenangan123 | http://localhost/signin     |


<p></p>

<br>
Work In Progress, see you later...<br>
<p>Built With ❤️ Laravel by : PBL Team 2023 Teknik Informatika Universitas Sebelas Maret</p>
