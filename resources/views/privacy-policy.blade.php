<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>{{ trans('labels.admin_title') }}</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{!! asset('storage/app/public/assets/images/favicon.png') !!}">
    <!-- Custom Stylesheet -->
    <link href="{!! asset('storage/app/public/assets/css/style.css') !!}" rel="stylesheet">

</head>

<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    
    <!--**********************************
        Main wrapper start
    ***********************************-->

        <!--**********************************
            Content body start
        ***********************************-->
            <!-- row -->
            <div class="col-md-12 mt-5">

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <?php echo $getprivacypolicy->privacypolicy_content; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #/ container -->
        <!--**********************************
            Content body end
        ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="{!! asset('storage/app/public/assets/plugins/common/common.min.js') !!}"></script>
    <script src="{!! asset('storage/app/public/assets/js/custom.min.js') !!}"></script>
    <script src="{!! asset('storage/app/public/assets/js/settings.js') !!}"></script>
    <script src="{!! asset('storage/app/public/assets/js/gleek.js') !!}"></script>
    <script src="{!! asset('storage/app/public/assets/js/styleSwitcher.js') !!}"></script>

</body>

</html>