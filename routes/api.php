<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['namespace'=>'Api'],function (){

    Route::post('login','UserController@login');
    Route::post('register','UserController@register');
    Route::post('otpverify','UserController@otpverify');
    Route::post('editprofile','UserController@editprofile');
    Route::post('getprofile','UserController@getprofile');
    Route::post('changepassword','UserController@changepassword');
    Route::post('forgotPassword','UserController@forgotPassword');
    Route::get('restaurantslocation','UserController@restaurantslocation');
    Route::post('resendotp','UserController@resendotp');
    Route::post('contact','UserController@contact');

    //Vendor
    Route::post('adminlogin','AdminController@login');
    Route::post('home','AdminController@home');
    Route::post('updatepassword','AdminController@updatepassword');
    Route::post('updateprofile','AdminController@updateprofile');

    Route::post('isopenclose','TimeController@isopenclose');
    Route::get('branchlist','BranchController@branchlist');

    Route::post('category','CategoryController@category');
    Route::post('item','ItemController@item');
    Route::post('itemdetails','ItemController@itemdetails');
    Route::post('latestitem','ItemController@latestitem');
    Route::post('relateditem','ItemController@relateditem');


    Route::post('banner','BannerController@banner');

    Route::post('address','AddressController@address');
    Route::post('getaddress','AddressController@getaddress');
    Route::post('updateaddress','AddressController@updateaddress');
    Route::post('deleteaddress','AddressController@deleteaddress');

    Route::post('about','AboutController@about');
;
});