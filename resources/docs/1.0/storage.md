# Storage

---

- [Penyimpanan](#section-1)
- [Link Resource Storage](#section-2)

<a name="section-1"></a>
## Penyimpanan File

> {info} Folder ```storage``` akan dibuat otomatis ketika aplikasi dijalankan.

Semua File yang di upload di aplikasi ini akan masuk ke folder ```storage```. Folder ini terdapat di dalam folder ```public```. Folder ```storage``` terdiri dari 2 folder yaitu ```app``` dan ```framework```. Folder ```app``` berisi file-file yang di upload oleh pengguna. Sedangkan folder ```framework``` berisi file-file yang dibutuhkan oleh framework Laravel. 
<a name="section-2"></a>
## Link Resource Storage
Jalankan kode dibawah ini di cli untuk link resource storage agar bisa diakses publik</b>

```php
php artisan storage:link
```