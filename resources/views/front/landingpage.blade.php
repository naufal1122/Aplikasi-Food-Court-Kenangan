@include('front.theme.headers')

<section class="banner-sec-landing">
    <div class="container-fluid px-0">
        <div class="banner-carousel owl-carousel owl-theme">
            <div class="item">
                <img src="{!! asset('storage/app/public/front/images/slider1.jpeg') !!}">
            </div>
            <div class="item">
                <img src="{!! asset('storage/app/public/front/images/slider3.jpg') !!}">
            </div>
            <div class="item">
                <img src="{!! asset('storage/app/public/front/images/slider5.jpg') !!}">
            </div>
        </div>
    </div>
</section>

<section class="feature-sec">
    <div class="container">
        <div class="feature-carousel owl-carousel owl-theme">
            <div class="item">
                <div class="feature-box">
                    <img src="{!! asset('storage/app/public/front/images/default_banner1.png') !!}">
                </div>
            </div>
            <div class="item">
                <div class="feature-box">
                    <img src="{!! asset('storage/app/public/front/images/default_banner2.png') !!}">
                </div>
            </div>
            <div class="item">
                <div class="feature-box">
                    <img src="{!! asset('storage/app/public/front/images/default_banner3.png') !!}">
                </div>
            </div>
        </div>
    </div>
</section>


<div class="banner">
        <div class="banner-image">
            <img src="{!! asset('storage/app/public/assets/images/bannerkenangan.png') !!}" alt="">
        </div>
    </div>

 
<section class="featured-cards">
    <div class="container">
        <h2 class="sec-cards">INFORMASI</h2>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="cards">
                    <img src="{!! asset('storage/app/public/front/images/example_head.png') !!}" class="img-responsive-landing">
                    <div class="card-body">
                        <h5 class="card-title">Memilih Tenant</h5>
                        <button type="button" data-toggle="modal" data-target="#exampleModalCenter" class="btnsectenant">Bantuan</button>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Memilih Tenant</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <img src="{!! asset('storage/app/public/front/images/guide_tenant.png') !!}" class="img-fluid">
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
            <div class="cards">
                    <img src="{!! asset('storage/app/public/front/images/example_head.png') !!}" class="img-responsive-landing">
                    <div class="card-body">
                        <h5 class="card-title">Memesan Makanan</h5>
                        <button type="button" data-toggle="modal" data-target="#exampleModalCenter1" class="btnsectenant">Bantuan</button>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle1" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Memesan Makanan</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                    <img src="{!! asset('storage/app/public/front/images/guide_order.png') !!}" class="img-fluid">                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
            <div class="cards">
                    <img src="{!! asset('storage/app/public/front/images/example_head.png') !!}" class="img-responsive-landing">
                    <div class="card-body">
                        <h5 class="card-title">Checkout Pesanan</h5>
                        <button type="button" data-toggle="modal" data-target="#exampleModalCenter2" class="btnsectenant">Bantuan</button>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle2" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Checkout Pesanan</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <img src="{!! asset('storage/app/public/front/images/guide_pay.png') !!}" class="img-fluid">                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>

<div class="parallax-main" id="parallax-world-of-ugg">
    <section class="parallax">
        <div class="parallax-one">
            <img src="{!! asset('storage/app/public/assets/images/logo2.png') !!}" class="parallax-img" alt="">
        </div>
    </section>
</div>
<!-- Food category -->
<div class="category-container">
            <h1 class="category-title">Kategori Menu Makanan</h1>
            <div class="grid-5">
                <div class="category-item">
                <div class="category-image">
                        <div class="category-name">
                        </div>
                    </div>
                </div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
            </div>
            <div class="grid-5 d-none">
                <div class="category-item transparent"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item transparent"></div>
            </div>
        </div>
        
        <!-- Drink Category -->
        <div class="category-container">
            <h1 class="category-title">Kategori Menu Minuman</h1>
            <div class="grid-5">
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
            </div>
            <div class="grid-5 d-none">
                <div class="category-item transparent"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item transparent"></div>
            </div>
        </div>
    </div>





    @include('front.theme.footers')