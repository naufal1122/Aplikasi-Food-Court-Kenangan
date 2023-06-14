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
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        ...
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
                        <button type="button" data-toggle="modal" data-target="#exampleModalCenter" class="btnsectenant">Bantuan</button>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        ...
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
                        <h5 class="card-title">Makanan Datang</h5>
                        <button type="button" data-toggle="modal" data-target="#exampleModalCenter" class="btnsectenant">Bantuan</button>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        ...
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
        </div>
</section>

<div id="parallax-world-of-ugg">
    <section>
        <div class="title">
            <h1>Selamat Datang, di</h1>
            <h3>Kenangan App</h3>
        </div>
    </section>

    <section class="parallax">
        <div class="parallax-one">
            <img src="{!! asset('storage/app/public/assets/images/logo2.png') !!}" class="parallax-img" alt="">
        </div>
    </section>




    @include('front.theme.footers')