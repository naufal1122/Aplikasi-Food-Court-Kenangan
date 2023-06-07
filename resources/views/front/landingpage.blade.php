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

                    <div class="feature-contant">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@include('front.theme.footers')