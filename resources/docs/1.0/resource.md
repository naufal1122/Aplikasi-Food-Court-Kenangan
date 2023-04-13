# Resource

---

- [Bahasa Pemrograman](#section-1)
- [Package](#section-2)
- [Kebutuhan Fungsional](#section-3)

<a name="section-1"></a>
## Bahasa Pemrograman
PHP with Laravel Framework (9.0)

<a name="section-2"></a>
## Package
Based on our requirements
        - "php": "^7.2.5|^8.0",
        - "binarytorch/larecipe": "^2.6",
        - "fideloper/proxy": "^4.4",
        - "fruitcake/laravel-cors": "^2.0",
        - "guzzlehttp/guzzle": "^7.0.1",
        - "laravel/framework": "^8.0",
        - "laravel/socialite": "^5.1",
        - "laravel/tinker": "^2.0",
        - "laravel/ui": "^3.0",
        - "razorpay/razorpay": "^2.5",
        - "spatie/laravel-cookie-consent": "^2.12",
        - "spatie/laravel-permission": "^3.11",
        - "stripe/stripe-php": "^7.67",
        - "twilio/sdk": "^6.27"

        # Fitur

<a name="section-3"></a>
## Kebutuhan Fungsional
Tabel SRS

| No      | Role                | Kebutuhan Fungsional
| --------| -----------------   | -----------
| 1       | Super Admin     | Menambahkan admin tenant untuk mengelola masing-masing tenant
| 2       | Super Admin     | Mengaktifkan dan menonaktifkan status tenant
| 3       | Super Admin     | Menyediakan aplikasi pihak ketiga (payment gateway) untuk cashless support
| 4       | Super Admin, Admin Tenant     | Menampilkan rekapan laporan transaksi
| 5       | Super Admin, Admin Tenant     | Menampilkan kategori menu, list menu, variasi menu, dan bahan baku menu
| 6       | Admin Tenant     | Mengedit profil tenant
| 7       | Admin Tenant     | Menambah, mengedit, dan menghapus promo untuk setiap makanan
| 8       | Admin Tenant     | Mengedit status toko (buka dan tutup)
| 9       | Admin Tenant     | Melihat detail pesanan 
| 10       | Admin Tenant     | Mengupdate status pesanan (proses, ready, dan cancel)
| 11       | Admin Tenant     | Status Transaksi setiap customer dan Transaksi Tenant
| 12       | Admin Tenant     | Mencetak pesanan
| 13      | User (Customer)     | Melihat katalog menu setiap tenant
| 14      | User (Customer)     | Melihat info diskon/promo di setiap tenant
| 15      | User (Customer)     | Memesan makanan baik sebelum datang maupun saat di tempat
| 16      | User (Customer)     | Menambahkan pesanan ke dalam keranjang (repeat order)
| 17      | User (Customer)     | Menentukan metode pembayaran tunai atau cashless
| 18      | User (Customer)     | Dapat cancel order ketika belum dibuat
| 19      | User (Customer)     | Melihat status pesanan
| 20      | User (Customer)     | Menginputkan nomor meja saat klik pesan
| 21      | User (Customer)     | Memberi rating tenant 
| 22      | User (Customer)     | Melihat riwayat pesanan

