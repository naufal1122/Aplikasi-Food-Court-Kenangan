<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Contracts\Role;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('front.home');
});


Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    return "Cache is cleared";
});

Route::get('auth/facebook', 'Auth\SocialController@redirectToFacebook');
Route::get('auth/facebook/callback', 'Auth\SocialController@handleFacebookCallback');

Route::get('auth/google', 'Auth\GoogleController@redirectToGoogle');
Route::get('auth/google/callback', 'Auth\GoogleController@handleGoogleCallback');

Route::post('auth', 'HomeController@auth');

Route::group(['namespace' => 'front'], function () {
	Route::get('/', 'HomeController@index');
	Route::get('/405', 'HomeController@notallow');
	Route::post('/home/contact', 'HomeController@contact');
	Route::post('/home/checkpincode', 'HomeController@checkpincode');

	Route::get('/cart', 'CartController@index');
	Route::post('/cart/qtyupdate','CartController@qtyupdate');
	Route::post('/cart/applypromocode', 'CartController@applypromocode');
	Route::post('/cart/deletecartitem', 'CartController@deletecartitem');
	Route::post('/cart/removepromocode', 'CartController@removepromocode');
	Route::get('/cart/isopenclose', 'CartController@isopenclose');
	Route::get('/cart/checkitem', 'CartController@checkitem');

	Route::get('/signin', 'UserController@index');
	Route::post('/signin/login', 'UserController@login');
	Route::get('/signup', 'UserController@signup');
	Route::post('/signup/signup', 'UserController@register');
	Route::get('/forgot-password', 'UserController@forgot_password');
	Route::post('/forgot-password/forgot-password', 'UserController@forgotpassword');
	Route::post('/home/changePassword', 'UserController@changePassword');
	Route::post('/home/editProfile', 'UserController@editProfile');
	Route::post('/home/addreview', 'UserController@addreview');
	Route::get('/otp-verify', 'UserController@otp_verify');
	Route::get('/resend-otp', 'UserController@resend_otp');
	Route::post('/otp-verification', 'UserController@otp_verification');

	Route::get('/address', 'UserController@address');
	Route::post('/user/addaddress', 'UserController@addaddress');
	Route::post('/user/editaddress', 'UserController@editaddress');
	Route::post('/user/show', 'UserController@show');
	Route::post('/user/delete', 'UserController@delete');
	Route::get ('/logout', 'UserController@logout' );
});

Route::group(['prefix' => 'admin', 'namespace' => 'admin'], function () {
	
	Route::get('/', function () {
		return view('auth.login');
	});

	Route::group(['middleware' => ['AdminAuth']],function(){
		Route::get('home', 'AdminController@home');
		Route::post('changePassword', 'AdminController@changePassword');
		Route::post('settings', 'AdminController@settings');

		Route::get('branches', 'BranchController@index');
		Route::post('branches/store', 'BranchController@store');
		Route::get('branches/list', 'BranchController@list');
		Route::post('branches/show', 'BranchController@show');
		Route::post('branches/update', 'BranchController@update');
		Route::post('branches/status', 'BranchController@status');

		Route::get('slider', 'SliderController@index');
		Route::post('slider/store', 'SliderController@store');
		Route::get('slider/list', 'SliderController@list');
		Route::post('slider/show', 'SliderController@show');
		Route::post('slider/update', 'SliderController@update');
		Route::post('slider/destroy', 'SliderController@destroy');

		Route::get('banner', 'BannerController@index');
		Route::post('banner/store', 'BannerController@store');
		Route::get('banner/list', 'BannerController@list');
		Route::post('banner/show', 'BannerController@show');
		Route::post('banner/update', 'BannerController@update');
		Route::post('banner/destroy', 'BannerController@destroy');

		Route::get('settings', 'AboutController@index');
		Route::post('about/update', 'AboutController@update');

		Route::get('category', 'CategoryController@index');
		Route::post('category/store', 'CategoryController@store');
		Route::get('category/list', 'CategoryController@list');
		Route::post('category/show', 'CategoryController@show');
		Route::post('category/update', 'CategoryController@update');
		Route::post('category/status', 'CategoryController@status');
		Route::post('category/delete', 'CategoryController@delete');
	});

	Route::get('logout', 'AdminController@logout');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

