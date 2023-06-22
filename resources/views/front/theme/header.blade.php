<!DOCTYPE html>
<html>

<head>
	<title>{{@$getinfo->title}}</title>

	<!-- meta tag -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="csrf-token" id="csrf-token" content="{{ csrf_token() }}">

	<meta property="og:title" content="{{@$getinfo->og_title}}" />
	<meta property="og:description" content="{{@$getinfo->og_description}}" />
	<meta property="og:image" content='{!! asset("storage/app/public/images/about/".@$getinfo->og_image) !!}' />

	<!-- favicon-icon  -->
	<link rel="icon" href='{!! asset("storage/app/public/images/about/".@$getinfo->favicon) !!}' type="image/x-icon">

	<!-- font-awsome css  -->
	<link rel="stylesheet" type="text/css" href="{!! asset('storage/app/public/front/css/font-awsome.css') !!}">

	<!-- fonts css -->
	<link rel="stylesheet" type="text/css" href="{!! asset('storage/app/public/front/fonts/fonts.css') !!}">

	<!-- bootstrap css -->
	<link rel="stylesheet" type="text/css" href="{!! asset('storage/app/public/front/css/bootstrap.min.css') !!}">

	<!-- fancybox css -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />

	<!-- owl.carousel css -->
	<link rel="stylesheet" type="text/css" href="{!! asset('storage/app/public/front/css/owl.carousel.min.css') !!}">

	<link href="{!! asset('storage/app/public/assets/plugins/sweetalert/css/sweetalert.css') !!}" rel="stylesheet">
	<!-- style css  -->
	<link rel="stylesheet" type="text/css" href="{!! asset('storage/app/public/front/css/style.css') !!}">

	<!-- responsive css  -->
	<link rel="stylesheet" type="text/css" href="{!! asset('storage/app/public/front/css/responsive.css') !!}">
</head>

<body>

	<!--*******************
	    Preloader start
	********************-->
	<div id="preloader" style="display: none;">
	    <div class="loader">
	        <img src="{!! asset('storage/app/public/front/images/load-1110_128.gif') !!}">
	    </div>
	</div>
	
	<!--*******************
	    Preloader end
	********************-->

	<!-- navbar -->
	<header>
		<nav class="navbar navbar-expand-lg">
			<div class="container">
				<a class="logo-compact" href="{{URL::to('/')}}"> <img src="{!! asset('storage/app/public/assets/images/logo5.png') !!}" width="140" height="40" alt=""></a>
						<h3 class="sec-title1" onclick="topFunction()" data-toggle="modal" data-target="#branchlist"> {!! \Illuminate\Support\Str::limit(htmlspecialchars(@$getabout->title_content, ENT_QUOTES, 'UTF-8'), $limit = 14, $end = '...') !!}</h3>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<div class="menu-icon">
						<div class="bar1"></div>
						<div class="bar2"></div>
						<div class="bar3"></div>
					</div>
				</button>
				<div class="collapse navbar-collapse justify-content-end" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item {{ request()->is('/') ? 'active' : '' }}">
							<a class="nav-link" href="{{URL::to('/landing')}}">{{ trans('labels.home') }}</a>
						</li>
						<li class="nav-item {{ request()->is('branch') ? 'active' : '' }}">
							<a class="nav-link" href="#" data-toggle="modal" data-target="#branchlist">{{ trans('labels.list_tenant') }}</a>
						</li>
						<li class="nav-item {{ request()->is('product') ? 'active' : '' }}">
							<a class="nav-link" href="{{URL::to('/product')}}">{{ trans('labels.our_products') }}</a>
						</li>

						@if (Session::get('id'))
						
							<li class="nav-item {{ request()->is('orders') ? 'active' : '' }}">
								<a class="nav-link" href="{{URL::to('/orders')}}">{{ trans('labels.my_orders') }}</a>
							</li>
							<li class="nav-item {{ request()->is('favorite') ? 'active' : '' }}">
								<a class="nav-link" href="{{URL::to('/favorite')}}">{{ trans('labels.favourite_list') }}</a>
							</li>
							<li class="nav-item search">
								<form method="get" action="{{URL::to('/search')}}">
									<div class="search-input">
										<input type="search" id="search-box" name="item" placeholder="{{ trans('messages.search_here') }}" required="" autocomplete="off">
									</div>
									<button type="submit" class="nav-link"><i class="far fa-search"></i></button>
								</form>
								<div id="countryList" class="item-list"></div>
							</li>
							<li class="nav-item cart-btn">
								<a class="nav-link" href="{{URL::to('/cart')}}"><i class="fas fa-shopping-cart"></i><span id="cartcnt">{{Session::get('cart')}}</span></a>
							</li>
						@else 
						
							<li class="nav-item search">
								<form method="get" action="{{URL::to('/search')}}">
									<div class="search-input">
										<input type="search" id="search-box" name="item" placeholder="{{ trans('messages.search_here') }}" required="" autocomplete="off">
									</div>
									<button type="submit" class="nav-link"><i class="far fa-search"></i></button>
								</form>
								<div id="countryList" class="item-list"></div>
							</li>
							<li class="nav-item cart-btn">
								<a class="nav-link" href="{{URL::to('/signin')}}"><i class="fas fa-shopping-cart"></i></a>
							</li>
						@endif
						

						@if (Session::get('id'))
						<div class="box-user">
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="javascript:void(0)">
									<img src='{!! asset("storage/app/public/images/profile/".Session::get("profile_image")) !!}' alt="">
								</a>
								<h3 class="user-dropdown">Halo, {{Session::get('name')}}</h3>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="" data-toggle="modal" data-target="#EditProfile">{{ trans('labels.hello') }}, {{Session::get('name')}}</a>
									<a class="dropdown-item" href="{{URL::to('/wallet')}}">Dompet Saya</a>
									<a class="dropdown-item" href="{{URL::to('/address')}}">{{ trans('labels.my_address') }}</a>
									<a class="dropdown-item" href="" data-toggle="modal" data-target="#AddReview">Ulasan Saya</a>
									<!-- <a class="dropdown-item" href="" data-toggle="modal" data-target="#Refer">{{ trans('labels.refer_earn') }}</a> -->
									@if (Session::get('login_type') == "email")
									<a class="dropdown-item" href="" data-toggle="modal" data-target="#ChangePasswordModal">{{ trans('labels.change_password') }}</a>
									@endif
									<a class="dropdown-item" href="{{URL::to('/logout')}}">{{ trans('labels.logout') }}</a>
								</div>
							</li>
						@else 
							<li class="nav-item">
								<a class="nav-link btn sign-btn" href="{{URL::to('/signin')}}">{{ trans('labels.login') }}</a>
							</li>
						@endif
						
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- navbar -->
	<div id="success-msg" class="alert alert-dismissible mt-3" style="display: none;">
	    <span id="msg"></span>
	</div>

	<div id="error-msg" class="alert alert-dismissible mt-3" style="display: none;">
	    <span id="ermsg"></span>
	</div>

	@include('cookieConsent::index')