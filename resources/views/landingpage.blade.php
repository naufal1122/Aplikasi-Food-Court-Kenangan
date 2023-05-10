<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{!! asset('storage/app/public/assets/images/logo6.png') !!}">
    <!-- Pignose Calender -->
    <link href="{!! asset('storage/app/public/assets/plugins/pg-calendar/css/pignose.calendar.min.css') !!}" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="{!! asset('storage/app/public/assets/plugins/chartist/css/chartist.min.css') !!}">

    <link href="{!! asset('storage/app/public/assets/plugins/tables/css/datatable/dataTables.bootstrap4.min.css') !!}" rel="stylesheet">
    <!-- Custom Stylesheet -->
    <link href="{!! asset('storage/app/public/assets/plugins/sweetalert/css/sweetalert.css') !!}" rel="stylesheet">

    <!-- Date picker plugins css -->
    <link href="{!! asset('storage/app/public/assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css') !!}" rel="stylesheet">
    <!-- Daterange picker plugins css -->
    <link href="{!! asset('storage/app/public/assets/css/style.css') !!}" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    
    <title>Landing Page</title>
</head>
<body>
        <nav>
            <div class="logo">
                <img src="{!! asset('storage/app/public/assets/images/logo5.png') !!}" alt="">
            </div>
            <div class="right">
                <ul>
                <li><a href="">Beranda</a></li>
                <li><a href="">Tenant</a></li>
                <li><a href="">Rekomendasi</a></li>
                </ul>
            </div>
            
        </nav>
<!-- Slider promo -->
    <div class="slider">
        <div class="slide">
            <img src="gambar1.jpg" alt="">
        </div>
        <div class="slide">
            <img src="gambar2.jpg" alt="">
        </div>
        <div class="slide">
            <img src="gambar3.jpg" alt="">
        </div>
        <div class="slide">
            <img src="gambar4.jpg" alt="">
        </div>
        <div class="navigation">
            <a class="prev" onclick="plusSlider(-1)">&#10094;</a>
            <a class="next" onclick="plusSlider(-1)">&#10095;</a>
        </div>
    </div>
<!--Slider Rekomendasi  -->
    <section class="product">
        <div class="border-rekomendasi">
            <div class="text-rekomendasi";>
                Menu Rekomendasi Food Court Kenangan
            </div>
        </div> 
        <div class="product-container">
            <div class="product-card">
                <div class="product-image">
                    <img src="gambar1.jpg" class="product-thumb" alt="">
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="gambar2.jpg" class="product-thumb" alt="">
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="gambar3.jpg" class="product-thumb" alt="">
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="gambar4.jpg" class="product-thumb" alt="">
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="gambar5.jpg" class="product-thumb" alt="">
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="images/card6.jpg" class="product-thumb" alt="">
                </div>
            </div>
        </div>
    </section>

    <!-- Banner Kenangan -->
    <div class="banner">
        <div class="banner-image">
            <img src="{!! asset('storage/app/public/assets/images/banner kenangan.png') !!}" alt="">
        </div>
    </div>

    <!-- Category -->

    
        <!-- Food category -->
        <div class="category-container">
            <h1 class="category-title">Kategori Menu Makanan</h1>
            <div class="grid-5">
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
            </div>
            <div class="grid-5">
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
            <div class="grid-5">
                <div class="category-item transparent"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item"></div>
                <div class="category-item transparent"></div>
            </div>
            <div class="d-grid gap-2 col-4 mx-auto mt-3">
                <button class="btn btn-primary primary">Tampilkan Semua Tenant</button>
            </div>
        </div>

    
    
    <script>
        var slideIndex = 1;
        showSlider(slideIndex);

        function plusSlider(n) {
            showSlider(slideIndex += n);
        }

        function showSlider(n) {
            var i;
            var slider = document.getElementsByClassName("slide");
            if (n > slider.length) {
                slideIndex = 1;
            }
            if (n < 1) {
                slideIndex = slider.length;
            }
            for (i = 0; i < slider.length; i++) {
                slider[i].style.display = "none";
            }
            slider[slideIndex - 1].style.display = "block";
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
    crossorigin="anonymous"></script>
</body>
</html>