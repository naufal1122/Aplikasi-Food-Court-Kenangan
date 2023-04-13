# View

---

- [Intro View](#section-1)
- [Grup View](#section-2)
- [Template Frontend](#section-3)
- [Template Dashboard Admin](#section-4)
- [View Grup Admin](#section-5)
- [View Grup Front](#section-6)
- [Manajamen Translasi](#section-7)
- [Modifikasi](#section-8)

<a name="section-1"></a>
## Intro View

View adalah tempat untuk menampilkan data dari controller ke user. View ini dapat diakses dari controller dengan menggunakan `return view('viewName');`. View ini dapat diakses dari route dengan menggunakan `Route::get('/view', 'ViewController@index');`. Di Laravel, disediakan fitur Blade untuk membuat view lebih mudah dibaca dan di maintain. Blade ini dapat digunakan untuk menampilkan data dari controller ke user, menampilkan data dari database, dan menampilkan data dari model. Blade ini dapat digunakan untuk membuat perulangan, percabangan, dan lain-lain.

<a name="section-2"></a>
## Grup View

Project ini dilengkapi dengan view yang terbagi menjadi beberapa grup, diantaranya:
- `admin` (default)
- `auth`
- `front`

Admin adalah view default untuk dashboard admin. Auth adalah view untuk halaman login dan register. Front adalah view untuk halaman depan website.

<a name="section-3"></a>
## Template Frontend
Template Frontend menggunakan css dari Bootstrap dan berbagai library jquery.

<a name="section-4"></a>
## Template Dashboard Admin
Template Dashboard Admin menggunakan Quixlab dan css dari Bootstrap, serta berbagai library jquery.

<a name="section-5"></a>
## View Grup Admin
View grup admin mempunyai berbagai macam view, diantaranya:
- `admin.about`
- `admin.aboutus`
- `admin.additem`
- `admin.banner`
- `admin.branches`
- `admin.category`
- `admin.edititem`
- `admin.home`
- `admin.ingredients`
- `admin.item`
- `admin.slider`

<a name="section-6"></a>
## View Grup Front
View grup front mempunyai berbagai macam view, diantaranya:
- `front.405`
- `front.address`
- `front.forgot-password`
- `front.home`
- `front.login`
- `front.otp-verify`
- `front.product-details`
- `front.product`
- `front.signup`

<a name="section-7"></a>
## Manajamen Translasi
Project ini dilengkapi dengan manajemen translasi, dimana setiap view dapat di translate ke berbagai bahasa. Untuk mengubah bahasa, dapat dilakukan dengan mengubah isi file `resources/lang/labels.php`. <br>
Semua konfigurasi teks yang tampak di view diletakkan di dalam satu file untuk kemudahan manajemen bahasa. <br>

> {danger} Setiap view yang dibuat harus menggunakan konfigurasi teks yang ada di file `resources/lang/labels.php`. Jika tidak, maka teks tersebut tidak akan ter-translate.

<a name="section-8"></a>
## Modifikasi
Semua file blade yang ada di project ini dapat dengan bebas dimodifikasi sesuai dengan keinginan dan kebutuhan.

> {warning} Setiap file blade yang ada di project ini tidak boleh dihapus. Jika ada file blade yang tidak digunakan, maka file tersebut dapat dihapus dari route dan controller.