<!-- **********************************
    Nav header start
***********************************-->
<div class="nav-header">
    <div class="brand-logo">
        <a href="{{URL::to('/admin/home')}}">
            <b class="logo-abbr"><img src="{!! asset('storage/app/public/assets/images/logo1.png') !!}" alt="" > </b>
            <span class="logo-compact"><img src="{!! asset('storage/app/public/assets/images/logo1.png') !!}" alt=""></span>
            <span class="brand-title">
                <img src="{!! asset('storage/app/public/assets/images/logo2.png') !!}" alt="" >
            </span>
        </a>
    </div>
</div>
<!--**********************************
    Nav header end
***********************************-->

<!--**********************************
    Header start
***********************************-->
<div class="header">
    <div class="header-content clearfix">

        <div class="nav-control">
            <div class="hamburger">
                <span class="toggle-icon"><i class="icon-menu"></i></span>
            </div>
        </div>
        <div class="header-left">
            <div class="input-group icons">
                <div class="input-group-prepend">
                    <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                </div>
                    <input type="search" class="form-control" placeholder="Search Dashboard" aria-label="Search Dashboard">
                <div class="drop-down animated flipInX d-md-none">
                    <form action="#">
                        <input type="text" class="form-control" placeholder="Search">
                    </form>
                </div>
            </div>
        </div>
        <div class="header-right">
            <ul class="clearfix">
                <!-- <div class="input-group-prepend">
                    <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                </div>
                    <input type="search" class="form-control" placeholder="Search Dashboard" aria-label="Search Dashboard"> -->
                <li class="icons dropdown">
                    {{Auth::user()->name}}
                </li>
                <li class="icons dropdown">
                    <a href="javascript:void(0)" data-toggle="modal" data-target="#exampleModalLong">
                        <i class="fa fa-question-circle"></i>
                    </a>
                </li>
                <li class="icons dropdown">
                    <a href="javascript:void(0)" data-toggle="dropdown">
                        <i class="fa fa-bell"></i>
                        <span class="badge badge-pill gradient-2 badge-primary" id="notificationcount" onclick="clearnoti();">0</span>
                    </a>
                </li>
                <li class="icons dropdown">
                    <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                        <span class="activity active"></span>
                        @if (Auth::user()->type == "1")
                        <img src="{!! asset('storage/app/public/assets/images/logo1.png') !!}" height="40" width="40" alt="">
                        @endif
                        @if (Auth::user()->type == "4")
                        <img src="{{Auth::user()->profile_image}}" height="40" width="40" alt="">
                        @endif
                    </div>
                    <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                        <div class="dropdown-content-body">
                            <ul>
                                <li><a href="javascript:void(0);" data-toggle="modal" data-target="#ChangePasswordModal"><i class="icon-key"></i> <span>{{ trans('labels.edit_profile') }}</span></a></li>
                                <li><a href="javascript:void(0);" data-toggle="modal" data-target="#Selltings"><i class="fa fa-cog" aria-hidden="true"></i> <span>{{ trans('labels.settings') }}</span></a></li>
                                <li><a href="{{URL::to('/admin/logout')}}"><i class="icon-logout"></i> <span>{{ trans('labels.logout') }}</span></a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><strong>Memulai Tenant Anda</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <h5><strong>EDIT INFORMASI</strong></h5>
            <p>Anda dapat mengedit informasi tenant anda dengan mengklik menu <strong>Informasi Tenant</strong> pada sidebar.</p>

            <h5><strong>TAMBAH GAMBAR DI SLIDER</strong></h5>
            <p>Slider adalah gambar yang akan tampil secara bergerak di halaman customer <strong>Halaman Slider</strong> pada sidebar.</p>

            <h5><strong>TAMBAH GAMBAR DI BANNER</strong></h5>
            <p>Banner berisi gambar yang menandakan tenant anda memiliki menu unggulan makanan atau makanan yang paling laris <strong>Halaman Banner</strong> pada sidebar.</p>

            <h5><strong>TAMBAH KATEGORI MENU</strong></h5>
            <p>Aplikasi ini dilengkapi dengan fitur menambahkan kategori menu secara bebas berdasarkan keinginan anda <strong>Halaman Kategori</strong> pada sidebar.</p>

            <hr/>

            <h5><strong>TAHAPAN MENAMBAH MASTER MENU</strong></h5>
            <h6><strong>Tambah Bahan Menu</strong></h6>
            <p>Untuk menambahkan menu, terlebih dahulu anda tambahkan bahan menu anda <strong>Bahan Menu</strong> pada sidebar.</p>
            <h6><strong>Tambah Add - On Menu</strong></h6>
            <p>Setelah itu anda dapat menambahkan add-on atau topping menu anda <strong>Add - on</strong> pada sidebar.</p>
            <h6><strong>Tambah Menu Master</strong></h6>
            <p>Setelah itu anda dapat menambahkan menu anda <strong>Menu</strong> pada sidebar.</p>

            <hr/>

            <h5><strong>MENAMBAH PROMO</strong></h5>
            <p>Anda juga dapat menambahkan suatu promo yang nanti bisa digunakan oleh customer <strong>Promo</strong> pada sidebar.</p>

            <h5><strong>MENERIMA PESANAN</strong></h5>
            <p>Anda diharuskan masuk ke halaman dashboard untuk mengakses pesanan terkini dan melihat detail pesanan terkini. Disini anda juga dapat merubah status pesanan apakah sudah siap, sedang memasak, atau sudah siap diantar. <strong>Halaman Dashboard</strong> pada sidebar.</p>
            

            <h5><strong>PESANAN</strong></h5>
            <p>Anda dapat mengakses halaman pesanan berisi semua pesanan dari customer anda.  Selain di halaman dashboard, di halaman ini anda juga dapat melihat pesanan terkini yang customer pesan. <strong>Halaman Pesanan</strong> pada sidebar.</p>

            <h5><strong>REKAP PESANAN</strong></h5>
            <p>Anda dapat mengakses halaman rekap pesanan berisi semua data pesanan dari customer anda dalam rentang waktu yang bisa anda cari <strong>Halaman Rekap Pesanan</strong> pada sidebar.</p>

            <h5><strong>DASHBOARD</strong></h5>
            <p>Anda dapat selalu mengakses halaman dashboard dimana ini adalah berisi semua ringkasan informasi tenant anda <strong>Halaman Dashboard</strong> pada sidebar.</p>

            <h5><strong>ERROR ATAU KENDALA APLIKASI</strong></h5>
            <p>Apabila anda mengalami kendala dan error ketika mengakses aplikasi, silahkan reload muat ulang halaman ini, atau klik halaman hapus cache<strong>Hapus Cache</strong> pada sidebar.</p>
      </div>
    </div>
  </div>
</div>
<!--**********************************
    Header end ti-comment-alt
***********************************