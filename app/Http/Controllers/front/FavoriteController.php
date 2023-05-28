<?php

namespace App\Http\Controllers\front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;
use App\Cart;
use App\Item;
use App\ItemImages;
use App\About;
use App\Favorite;
use App\User;

class FavoriteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $getabout = About::where('branch_id','=',@$_COOKIE['branch'])->first();
        $favorite=Favorite::with('itemimage')->with('variation')->select('favorite.id as favorite_id','item.id','item.item_name','item.item_description')
        ->join('item','favorite.item_id','=','item.id')
        ->where('item.item_status','1')
        ->where('item.is_deleted','2')
        ->where('favorite.user_id',Session::get('id'))
        ->where('favorite.branch_id','=',@$_COOKIE['branch'])
        ->paginate(9);

        $getdata=User::select('currency')->where('type','1')->first();
        $branch=User::select('id','name',\DB::raw("CONCAT('".url('/public/images/profile/')."/', profile_image) AS profile_image"))
        ->where('type','=','4')
        ->where('is_available','=','1')
        ->get();

        $getinfo = About::select('logo','footer_logo','favicon','fb','twitter','insta','android','ios','title','short_title','og_image','og_title','og_description','copyright')->where('id','1')->first();
        return view('front.favorite',compact('favorite','getabout','getdata','branch','getinfo'));
    }
}
