# Model

---

- [Model](#section-1)
- [List Model](#section-2)
- [Intro Relasi Eloquents](#section-3)
- [Relasi Model User](#section-4)
- [Relasi Model Item](#section-5)
- [Relasi Model Addons](#section-6)
- [Relasi Model Category](#section-7)
- [Relasi Model Ingredients](#section-8)
- [Relasi Model Slider ](#section-9)
- [Relasi Model Banner](#section-10)
- [Relasi Model Contact](#section-12)
- [Relasi Model Favorite](#section-13)
- [Relasi Model Order](#section-16)
- [Relasi Model OrderDetail](#section-17)
- [Relasi Model Promocode](#section-21)
- [Relasi Model Rating](#section-22)
- [Relasi Model Cart](#section-24)

<a name="section-1"></a>
## Model

Model adalah tempat untuk menulis query database. Model ini dapat digunakan untuk mengambil data dari database, mengubah data, dan menghapus data. Model ini juga dapat digunakan untuk mengatur relasi antar tabel. Model ini dapat diakses dari controller dengan menggunakan `use App\ModelName;`. Model ini dapat diakses dari view dengan menggunakan `(($model->name)) `. Model ini dapat diakses dari route dengan menggunakan `Route::get('/model', 'ModelController@index');`. Model ini dapat diakses dari middleware dengan menggunakan `use App\ModelName;`.

<a name="section-2"></a>
## List Model

Project ini mempunyai beberapa Model, diantaranya:
- `App\About`
- `App\Addons`
- `App\Addres`
- `App\Banner`
- `App\Category`
- `App\Ingredients`
- `App\Item`
- `App\ItemImages`
- `App\Slider`
- `App\User`
- `App\Variation`


<a name="section-3"></a>
## Intro Relasi Eloquents

Project ini dilengkapi dengan relasi eloquent, dimana relasi eloquent mempermudah programmer untuk melakukan maintenance terhadap database. Relasi eloquent ini adalah method yang didefinisikan dalam model dan digunakan untuk menghubungkan tabel yang saling berhubungan.

<a name="section-4"></a>
## Relasi Model User

```php
    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `users` dan `users` dengan relasi `one to one`. <br> Relasi ini digunakan untuk mendapatkan data `branch` dari tabel `users` berdasarkan `branch_id` yang ada di tabel `users`.

<a name="section-5"></a>
## Relasi Model Item

```php
    public function category(){
        return $this->hasOne('App\Category','id','cat_id');
    }
    public function variation(){
        return $this->hasMany('App\Variation','item_id','id')->select('variation.id','variation.item_id','variation.variation','variation.product_price','variation.sale_price');
    }

    public function itemimage(){
        return $this->hasOne('App\ItemImages','item_id','id')->select('item_images.id','image as image_name','item_images.item_id',\DB::raw("CONCAT('".url('/storage/app/public/images/item/')."/', item_images.image) AS image"));
    }

    public function itemimagedetails(){
        return $this->hasMany('App\ItemImages','item_id','id')->select('item_id','image as image_name',\DB::raw("CONCAT('".url('/storage/app/public/images/item/')."/', image) AS itemimage"));
    }

    public function ingredients(){
        return $this->hasMany('App\Ingredients','item_id','id')->select('item_id',\DB::raw("CONCAT('".url('/storage/app/public/images/ingredients/')."/', image) AS ingredients_image"));
    }

    public function addons(){
        return $this->hasMany('App\Addons','item_id','id')->select('id','name','price','item_id')->where('is_available','=','1');
    }

    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `items` dan `categories` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `category` dari tabel `items` berdasarkan `cat_id` yang ada di tabel `items`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `items` dan `variations` dengan relasi `one to many`. Relasi ini digunakan untuk mendapatkan data `variation` dari tabel `items` berdasarkan `id` yang ada di tabel `items`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `items` dan `item_images` dengan relasi `one to one`. 
Relasi ini digunakan untuk mendapatkan data `itemimage` dari tabel `items` berdasarkan `id` yang ada di tabel `items`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `items` dan `item_images` dengan relasi `one to many`. Relasi ini digunakan untuk mendapatkan data `itemimagedetails` dari tabel `items` berdasarkan `id` yang ada di tabel `items`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `items` dan `ingredients` dengan relasi `one to many`. Relasi ini digunakan untuk mendapatkan data `ingredients` dari tabel `items` berdasarkan `id` yang ada di tabel `items`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `items` dan `addons` dengan relasi `one to many`. Relasi ini digunakan untuk mendapatkan data `addons` dari tabel `items` berdasarkan `id` yang ada di tabel `items`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `items` dan `users` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `branch` dari tabel `items` berdasarkan `branch_id` yang ada di tabel `items`.

<a name="section-6"></a>
## Relasi Model Addons

```php
    public function category(){
        return $this->hasOne('App\Category','id','cat_id');
    }

    public function item(){
        return $this->hasOne('App\Item','id','item_id');
    }

    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `addons` dan `categories` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `category` dari tabel `addons` berdasarkan `cat_id` yang ada di tabel `addons`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `addons` dan `items` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `item` dari tabel `addons` berdasarkan `item_id` yang ada di tabel `addons`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `addons` dan `users` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `branch` dari tabel `addons` berdasarkan `branch_id` yang ada di tabel `addons`.<br><br>

<a name="section-7"></a>
## Relasi Model Category

```php
    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `categories` dan `users` dengan relasi `one to one`. <br> Relasi ini digunakan untuk mendapatkan data `branch` dari tabel `categories` berdasarkan `branch_id` yang ada di tabel `categories`.

<a name="section-8"></a>
## Relasi Model Ingredients

```php
    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `ingredients` dan `users` dengan relasi `one to one`. <br> Relasi ini digunakan untuk mendapatkan data `branch` dari tabel `ingredients` berdasarkan `branch_id` yang ada di tabel `ingredients`.

<a name="section-9"></a>
## Relasi Model Slider

```php
    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `sliders` dan `users` dengan relasi `one to one`. <br> Relasi ini digunakan untuk mendapatkan data `branch` dari tabel `sliders` berdasarkan `branch_id` yang ada di tabel `sliders`.

<a name="section-10"></a>
## Relasi Model Banner

```php
    public function item(){
        return $this->hasOne('App\Item','id','item_id');
    }

    public function category(){
        return $this->hasOne('App\Category','id','cat_id');
    }

    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `banners` dan `items` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `item` dari tabel `banners` berdasarkan `item_id` yang ada di tabel `banners`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `banners` dan `categories` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `category` dari tabel `banners` berdasarkan `cat_id` yang ada di tabel `banners`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `banners` dan `users` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `branch` dari tabel `banners` berdasarkan `branch_id` yang ada di tabel `banners`.

<a name="section-12"></a>
## Relasi Model Contact

```php
    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `contacts` dan `users` dengan relasi `one to one`. <br> Relasi ini digunakan untuk mendapatkan data `branch` dari tabel `contacts` berdasarkan `branch_id` yang ada di tabel `contacts`.

<a name="section-13"></a>
## Relasi Model Favorite

```php
public function itemimage(){

        return $this->hasOne('App\ItemImages','item_id','id')->select('id','item_id',\DB::raw("CONCAT('".url('/storage/app/public/images/item/')."/', image) AS image"));

    }

    public function variation(){
        return $this->hasMany('App\Variation','item_id','id')->select('variation.id','variation.item_id','variation.variation','variation.product_price','variation.sale_price');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `favorites` dan `item_images` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `itemimage` dari tabel `favorites` berdasarkan `item_id` yang ada di tabel `favorites`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `favorites` dan `variations` dengan relasi `one to many`. Relasi ini digunakan untuk mendapatkan data `variation` dari tabel `favorites` berdasarkan `item_id` yang ada di tabel `favorites`.

<a name="section-16"></a>
## Relasi Model Order

```php
    public function users(){
        return $this->hasOne('App\User','id','user_id');
    }

    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `orders` dan `users` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `users` dari tabel `orders` berdasarkan `user_id` yang ada di tabel `orders`.<br><br>

<a name = "section-17"></a>
## Relasi Model OrderDetails

```php
public function itemimage(){
        return $this->hasOne('App\ItemImages','item_id','id')->select('item_images.id','item_images.item_id',\DB::raw("CONCAT('".url('/storage/app/public/images/item/')."/', item_images.image) AS image"));
    }

    public function items(){
        return $this->hasOne('App\Item','id','item_id');
    }
```

<a name = "section-21"></a>
## Relasi Model Promocode

```php
    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `promocodes` dan `users` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `branch` dari tabel `promocodes` berdasarkan `branch_id` yang ada di tabel `promocodes`.

<a name = "section-22"></a>
## Relasi Model Rating

```php
    public function users(){
        return $this->hasOne('App\User','id','user_id');
    }

    public function branch(){
        return $this->hasOne('App\User','id','branch_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `ratings` dan `users` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `users` dari tabel `ratings` berdasarkan `user_id` yang ada di tabel `ratings`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `ratings` dan `users` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `branch` dari tabel `ratings` berdasarkan `branch_id` yang ada di tabel `ratings`.

<a name = "section-23"></a>
## Relasi Model Cart

```php
    public function itemimage(){
        return $this->hasOne('App\ItemImages','item_id','id')->select('item_images.id','item_images.item_id',\DB::raw("CONCAT('".url('/storage/app/public/images/item/')."/', item_images.image) AS image"));
    }

    public function items(){
        return $this->hasOne('App\Item','id','item_id');
    }

    public function variation(){
        return $this->hasOne('App\Variation','id','variation_id');
    }
```

Relasi ini digunakan untuk mendefinisikan relasi antara tabel `carts` dan `item_images` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `itemimage` dari tabel `carts` berdasarkan `item_id` yang ada di tabel `carts`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `carts` dan `items` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `items` dari tabel `carts` berdasarkan `item_id` yang ada di tabel `carts`.<br><br>
Relasi ini digunakan untuk mendefinisikan relasi antara tabel `carts` dan `variations` dengan relasi `one to one`. Relasi ini digunakan untuk mendapatkan data `variation` dari tabel `carts` berdasarkan `variation_id` yang ada di tabel `carts`.




