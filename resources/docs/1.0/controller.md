# Controller

---

- [Controller](#section-1)
- [Admin Group Controller](#section-2)
- [Auth Group Controller](#section-3)
- [Front Group Controller](#section-4)
- [Method](#section-5)
- [Method Index](#section-6)
- [Method Store](#section-7)
- [Method Show](#section-8)
- [Method Update](#section-9)
- [Method Delete](#section-10)

<a name="section-1"></a>
## Controller

Controller adalah tempat untuk menulis kode program yang akan dijalankan ketika terjadi suatu request. Controller dapat dibuat dengan menggunakan perintah `php artisan make:controller NamaController`. Controller dapat dibuat di dalam folder `app\Http\Controllers` atau di dalam folder `app\Http\Controllers\Admin` atau `app\Http\Controllers\Front`. Controller yang dibuat di dalam folder `app\Http\Controllers\Admin` atau `app\Http\Controllers\Front` akan otomatis terhubung dengan routing grup `admin` atau `front`.

<a name="section-2"></a>
## Admin Group Controller

Project ini mempunyai beberapa Controller yang masuk dalam grup Admin. Setiap controller di Admin mempunyai fungsi yang berbeda sesuai dengan kebutuhan. Berikut adalah daftar Controller yang ada di grup Admin:
- `AboutController : Controller untuk halaman About Admin`
- `AddonsController : Controller untuk halaman Addons Menu`
- `AdminController : Controller untuk halaman Dashboard Admin`
- `BannerController : Controller untuk halaman Banner`
- `BranchController : Controller untuk halaman Tenant`
- `CategoryController : Controller untuk halaman Kategori Menu`
- `ContactController : Controller untuk halaman Contact`
- `IngredientController : Controller untuk halaman Bahan Menu`
- `ItemController : Controller untuk halaman Menu`
- `NotificationController : Controller untuk halaman Notifikasi`
- `OrderController : Controller untuk halaman Order`
- `PaymentController : Controller untuk halaman Pembayaran`
- `PincodeController : Controller untuk halaman Kode Promo`
- `PromocodeController : Controller untuk halaman Kode Promo`
- `RatingController : Controller untuk halaman Rating`
- `ReportController : Controller untuk halaman Laporan`
- `SliderController : Controller untuk halaman Slider`
- `TermsController : Controller untuk halaman Terms`
- `TimeController : Controller untuk halaman Jam Operasional`
- `UserController : Controller untuk halaman User`


<a name="section-3"></a>
## Auth Group Controller

Project ini mempunyai beberapa Controller yang masuk dalam grup Auth. Setiap controller di Auth mempunyai fungsi yang berbeda sesuai dengan kebutuhan. Berikut adalah daftar Controller yang ada di grup Auth:
- `ConfirmPasswordController : Controller untuk halaman Konfirmasi Password`
- `ForgotPasswordController : Controller untuk halaman Lupa Password`
- `GoogleController : Controller untuk halaman Login Google`
- `RegisterController : Controller untuk halaman Register`
- `ResetPasswordController : Controller untuk halaman Reset Password`
- `SocialController : Controller untuk halaman Login Social`
- `VerificationController : Controller untuk halaman Verifikasi Email`

<a name="section-4"></a>
## Front Group Controller

Project ini mempunyai beberapa Controller yang masuk dalam grup Front. Setiap controller di Front mempunyai fungsi yang berbeda sesuai dengan kebutuhan. Berikut adalah daftar Controller yang ada di grup Front:
- `AboutController : Controller untuk halaman About`
- `CartController : Controller untuk halaman Keranjang Belanja`
- `CheckoutController : Controller untuk halaman Checkout`
- `FavoriteController : Controller untuk halaman Favorit`
- `HomeController : Controller untuk halaman Home (Landing Page)`
- `ItemController : Controller untuk halaman Menu`
- `LandingController : Controller untuk halaman Landing Page`
- `ListBranchesController : Controller untuk halaman List Tenant`
- `OrderController : Controller untuk halaman Order`
- `UserController : Controller untuk Halaman User`

<a name="section-5"></a>
## Method Definition

Method adalah fungsi yang ada di dalam Controller. Method dapat dibuat dengan menggunakan perintah `public function namaMethod()`. Method dapat dibuat di dalam Controller atau di dalam Controller yang ada di dalam folder `app\Http\Controllers\Admin` atau `app\Http\Controllers\Front`. Method yang dibuat di dalam Controller yang ada di dalam folder `app\Http\Controllers\Admin` atau `app\Http\Controllers\Front` akan otomatis terhubung dengan routing grup `admin` atau `front`.

<a name="section-6"></a>
## Method Index
## <h4> AboutController </h4>

```php
public function index()
    {
        if (Auth::user()->type == 1) {
            $getabout = About::where('id','1')->first();
        } else {
            $getabout = About::where('branch_id',Auth::user()->id)->first();
        }
        
        return view('about',compact('getabout'));
    }
```
Disini method index dimana berfungsi untuk melakukan check kondisi apakah user yang login adalah user admin atau bukan. Jika user yang login adalah user admin maka akan menampilkan halaman about yang ada di database. Jika user yang login adalah user tenant maka akan menampilkan halaman about yang ada di database berdasarkan tenant yang login.

## <h4> BranchController  </h4>

```php
public function index()
    {
        $getbranch = User::where('type','4')->get();
        return view('branches',compact('getbranch'));
    }
```
Di BranchController juga akan melakukan check kondisi dimana apabila user login (type 4 : tenant) maka akan menampilkan halaman tenant yang ada di database berdasarkan tenant yang login (getbranch). 

## <h4> HomeController </h4>

```php
public function index()
    {
        if (isset($_COOKIE['branch'])) {
            $getslider = Slider::where('branch_id','=',$_COOKIE['branch'])->get();
            $getcategory = Category::where('is_available','=','1')->where('branch_id','=',$_COOKIE['branch'])->where('is_deleted','2')->get();
            $user_id  = Session::get('id');
            $getitem = Item::with(['category','itemimage','variation'])->select('item.cat_id','item.id','item.item_name','item.item_description',DB::raw('(case when favorite.item_id is null then 0 else 1 end) as is_favorite'))
            ->leftJoin('favorite', function($query) use($user_id) {
                $query->on('favorite.item_id','=','item.id')
                ->where('favorite.user_id', '=', $user_id);
            })
            ->where('item.item_status','1')
            ->where('item.is_deleted','2')
            ->where('item.branch_id','=',$_COOKIE['branch'])
            ->orderby('cat_id')->get();
            $getreview = Ratting::with('users')->where('branch_id','=',$_COOKIE['branch'])->get();

            $getbanner = Banner::where('branch_id','=',$_COOKIE['branch'])->orderby('id','desc')->get();
            
            $getabout = About::where('branch_id','=',$_COOKIE['branch'])->first();
        } else {
            $getslider = array();
            $getcategory = array();
            $getitem = array();
            $getreview = array();
            $getbanner = array();
            $getabout = "";
        }

        $getinfo = About::select('logo','footer_logo','favicon','fb','twitter','insta','android','ios','title','short_title','og_image','og_title','og_description','copyright')->where('id','1')->first();

        $getdata=User::select('currency')->where('type','1')->first();

        $branch=User::select('id','name',\DB::raw("CONCAT('".url('/public/images/profile/')."/', profile_image) AS profile_image"))
        ->where('type','=','4')
        ->where('is_available','=','1')
        ->get();

        return view('front.home', compact('getslider','getcategory','getabout','getitem','getreview','getbanner','getdata','branch','getinfo'));
    }
```

Untuk controller ini adalah grup untuk frontend, dimana method index di HomeController Frontend mempunyai berbagai fungsi seperti check kondisi apabila user memilih suatu tenant, maka akan ditampilkan beberapa komponen - komponent yang ada di halaman home. Jika user tidak memilih tenant maka akan ditampilkan komponen - komponen yang ada di halaman home secara default. Selain itu juga terdapat beberapa fungsi lainnya seperti mengambil data dari database untuk ditampilkan di halaman home (getslider, getcategory, getitem, getreview, getbanner, getabout, getinfo, getdata, branch).

<a name="section-7"></a>
## Method Store
## <h4> AddonsController </h4>

```php
public function store(Request $request)
    {
        $validation = Validator::make($request->all(),[
          'branch_id' => 'required',
          'name' => 'required',
          'type' => 'required',
        ]);
        $error_array = array();
        $success_output = '';
        if ($validation->fails())
        {
            foreach($validation->messages()->getMessages() as $field_name => $messages)
            {
                $error_array[] = $messages;
            }
        }
        else
        {
            if ($request->type == "free") {
                $price = "0";
            } else {
                $price = $request->price;
            }
            $addons = new Addons;
            $addons->branch_id =$request->branch_id;
            $addons->name =$request->name;
            $addons->price =$price;
            $addons->save();
            $success_output = 'Addons Added Successfully!';
        }
        $output = array(
            'error'     =>  $error_array,
            'success'   =>  $success_output
        );
        echo json_encode($output);
    }
```

Method store adalah method yang digunakan untuk menyimpan data yang diinputkan oleh user. Pada method store ini terdapat beberapa fungsi seperti validasi data yang diinputkan oleh user, jika data yang diinputkan tidak sesuai dengan validasi maka akan muncul pesan error. Jika data yang diinputkan sesuai dengan validasi maka data akan disimpan ke database. Di fungsi ini terdapat beberapa kondisi apabila aksi sukses dan apabila aksi gagal akan muncul pesan tertentu.

## <h4> BannerController </h4>

```php
public function store(Request $request)
    {
        $validation = Validator::make($request->all(),[
          'image' => 'required|mimes:jpeg,png,jpg',
          'branch_id' => 'required',
        ]);
        $error_array = array();
        $success_output = '';
        if ($validation->fails())
        {
            foreach($validation->messages()->getMessages() as $field_name => $messages)
            {
                $error_array[] = $messages;
            }
        }
        else
        {
            $image = 'banner-' . uniqid() . '.' . $request->image->getClientOriginalExtension();
            $request->image->move('storage/app/public/images/banner', $image);

            $banner = new Banner;
            $banner->image =$image;
            $banner->branch_id =$request->branch_id;
            $banner->item_id =$request->item_id;
            $banner->cat_id =$request->cat_id;
            $banner->type =$request->type;
            $banner->save();
            $success_output = 'Banner Added Successfully!';
        }
        $output = array(
            'error'     =>  $error_array,
            'success'   =>  $success_output
        );
        echo json_encode($output);
    }
```

Kode diatas adalah isi method dari Store milik BannerController. Fungsinya hampir sama dengan diatas hanya saja ini untuk menyimpan data banner yang diinputkan oleh user. Untuk validasi data yang diinputkan oleh user juga sama seperti diatas. Controller lainnya pun juga sama, yang membedakan hanya pada validasi data yang diinputkan oleh user.

<a name="section-8"></a>
## Method Show
## <h4> CategoryController </h4>

```php
public function show(Request $request)
    {
        $category = Category::findorFail($request->id);
        $getcategory = Category::where('id',$request->id)->first();
        if($getcategory->image){
            $getcategory->img=url('storage/app/public/images/category/'.$getcategory->image);
        }
        return response()->json(['ResponseCode' => 1, 'ResponseText' => 'Category fetch successfully', 'ResponseData' => $getcategory], 200);
    }
```

## <h4> BranchController </h4>

```php
public function show(Request $request)
    {

        $branch = User::findorFail($request->id);
        $getbranch = User::where('id',$request->id)->first();
        if($getbranch->profile_image){
            $getbranch->img=url('storage/app/public/images/profile/'.$getbranch->profile_image);
        }

        return response()->json(['ResponseCode' => 1, 'ResponseText' => 'Success', 'ResponseData' => $getbranch], 200);
    }
```

## <h4> BannerController </h4>

```php
public function show(Request $request)
    {
        $banner = Banner::findorFail($request->id);
        $getbanner = Banner::where('id',$request->id)->first();
        if($getbanner->image){
            $getbanner->image=url('storage/app/public/images/banner/'.$getbanner->image);
        }
        return response()->json(['ResponseCode' => 1, 'ResponseText' => 'Banner fetch successfully', 'ResponseData' => $getbanner], 200);
    }
```

Method show adalah method yang digunakan untuk menampilkan data yang dipilih oleh user. Pada method show ini terdapat beberapa fungsi seperti menampilkan data yang dipilih oleh user, jika data yang dipilih tidak ada maka akan muncul pesan error. Jika data yang dipilih ada maka data akan ditampilkan ke user. <br>
Dari ketiga Controller diatas terdapat beberapa fungsi yang sama seperti fungsi untuk menampilkan data yang dipilih oleh user. Fungsi ini sama pada semua Controller.

<a name="section-9"></a>
## Method Update
## <h4> SliderController </h4>

```php
public function update(Request $request)
    {

        $validation = Validator::make($request->all(),[
          'title' => 'required|unique:slider,title,' . $request->id,
          'branch_id' => 'required',
          'description' => 'required',
          'image' => 'image|mimes:jpeg,png,jpg',
        ]);

        $error_array = array();
        $success_output = '';
        if ($validation->fails())
        {
            foreach($validation->messages()->getMessages() as $field_name => $messages)
            {
                $error_array[] = $messages;
            }
        }
        else
        {
            $slider = new Slider;
            $slider->exists = true;
            $slider->id = $request->id;

            if(isset($request->image)){
                if($request->hasFile('image')){
                    $image = $request->file('image');
                    $image = 'slider-' . uniqid() . '.' . $request->image->getClientOriginalExtension();
                    $request->image->move('storage/app/public/images/slider', $image);
                    $slider->image=$image;
                }            
            }
            $slider->branch_id =$request->branch_id;
            $slider->title =$request->title;
            $slider->description =$request->description;
            $slider->save();           

            $success_output = 'Slider updated Successfully!';
        }
        $output = array(
            'error'     =>  $error_array,
            'success'   =>  $success_output
        );
        echo json_encode($output);
    }
```

Method update adalah method yang digunakan untuk mengupdate data yang dipilih oleh user. Pada method update ini terdapat beberapa fungsi seperti validasi data yang diinputkan oleh user, jika data yang diinputkan tidak sesuai dengan validasi maka akan muncul pesan error. Jika data yang diinputkan sesuai dengan validasi maka data akan diupdate. <br>
```$validation validator make request adalah fungsi untuk validasi data yang diinputkan oleh user.```

```$error_array = array() adalah fungsi untuk menampung pesan error.```

```$success_output = '' adalah fungsi untuk menampung pesan success.```

```$validation->fails() adalah fungsi untuk mengecek apakah data yang diinputkan oleh user sesuai dengan validasi atau tidak.```


## <h4> ItemController </h4>

```php
public function update(Request $request)
    {

        $this->validate($request,[
            'branch_id' => 'required',
            'getcat_id' => 'required',
            'item_name' => 'required',
            'product_price.*' => 'required|numeric',
            'sale_price.*' => 'required|numeric',
        ]);

        $validation = Validator::make($request->all(),[
          
        ]);

        $deletefromcart=Cart::where('item_id', $request->id)->delete();
        $item = new Item;
        $item->exists = true;
        $item->id = $request->id;

        $item->branch_id =$request->branch_id;
        $item->cat_id =$request->getcat_id;
        $item->addons_id =@implode(",",$request->addons_id);
        $item->ingredients_id =@implode(",",$request->ingredients_id);
        $item->item_name =$request->item_name;
        $item->item_description =$request->getdescription;
        $item->delivery_time =$request->getdelivery_time;
        $item->tax =$request->tax;
        $item->save();   

        $product_price = $request->product_price;
        $sale_price = $request->sale_price;
        $variation = $request->variation;
        $variation_id = $request->variation_id;

        foreach($product_price as $key => $no)
        {
            if ($variation_id[$key] == "") {
                $input['branch_id'] =$request->branch_id;
                $input['item_id'] =$request->id;
                $input['product_price'] = $no;
                $input['sale_price'] = $sale_price[$key];
                $input['variation'] = $variation[$key];

                Variation::create($input);
            } 

            if ($variation_id[$key] != "") {
                
                $UpdateCart = Variation::where('id', $variation_id[$key])
                                    ->update(['branch_id' => $request->branch_id,'product_price' => $no,'variation'=>$variation[$key],'sale_price'=>$sale_price[$key]]);
            }
        }

        if ($item) {
             return redirect('admin/item')->with('success', trans('messages.update'));
        } else {
            return redirect()->back()->with('danger', trans('messages.fail'));
        }
    }
```

Disini setiap data yang diinputkan oleh user akan di validasi terlebih dahulu. Jika data yang diinputkan tidak sesuai dengan validasi maka akan muncul pesan error. Jika data yang diinputkan sesuai dengan validasi maka data akan diupdate. Contohnya ```if $item``` berhasil di validasi maka akan muncul pesan success jika gagal maka akan muncul pesan error (else muncul pesan error).

<a name="section-10"></a>
## Method Delete

## <h4> IngredientsController </h4>

```php
public function delete(Request $request)
    {
        $ingredients = Ingredients::where('id', $request->id)->update( array('is_deleted'=>'1') );
        if ($ingredients) {
            return 1;
        } else {
            return 0;
        }
    }
```

Method delete adalah method yang digunakan untuk menghapus data yang dipilih oleh user. Pada method delete ini terdapat beberapa fungsi seperti validasi data yang diinputkan oleh user, jika data yang diinputkan tidak sesuai dengan validasi maka akan muncul pesan error. Jika data yang diinputkan sesuai dengan validasi maka data akan dihapus. <br>
```($ingredients = Ingredients::where('id', $request->id)->update( array('is_deleted'=>'1') )) adalah fungsi untuk menghapus data yang dipilih oleh user. <br>```