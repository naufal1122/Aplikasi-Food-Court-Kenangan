<?php

namespace App\Http\Controllers\front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Category;
use App\Item;
use App\Ratting;
use App\Slider;
use App\Banner;
use App\About;
use App\Contact;
use App\User;
use App\Pincode;
use Illuminate\Support\Facades\Session;
use Validator;

class ListBranchesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (isset($_COOKIE['branch'])) {
            $getslider = Slider::where('branch_id','=',$_COOKIE['branch'])->get();
            $getcategory = Category::where('is_available','=','1')->where('branch_id','=',$_COOKIE['branch'])->where('is_deleted','2')->get();
            $user_id  = Session::get('id');
            $getitem = Item::with(['category','itemimage','variation'])->select('item.cat_id','item.id','item.item_name','item.item_description',DB::raw('(case when favorite.item_id is null then 0 else 1 end) as is_favorite'))
            ->leftJoin('favorite', function($query) use($user_id) {
                $query->on('favorite.item_id','=','item.id')
                ->where('favorite.user_id', '=', $user_id);
            })
            ->where('item.item_status','1')
            ->where('item.is_deleted','2')
            ->where('item.branch_id','=',$_COOKIE['branch'])
            ->orderby('cat_id')->get();
            $getreview = Ratting::with('users')->where('branch_id','=',$_COOKIE['branch'])->get();

            $getbanner = Banner::where('branch_id','=',$_COOKIE['branch'])->orderby('id','desc')->get();
            
            $getabout = About::where('branch_id','=',$_COOKIE['branch'])->first();
        } else {
            $getslider = array();
            $getcategory = array();
            $getitem = array();
            $getreview = array();
            $getbanner = array();
            $getabout = "";
        }

        $getinfo = About::select('logo','footer_logo','favicon','fb','twitter','insta','android','ios','title','short_title','og_image','og_title','og_description','copyright')->where('id','1')->first();

        $getdata=User::select('currency')->where('type','1')->first();

        $branch=User::select('id','name',\DB::raw("CONCAT('".url('/public/images/profile/')."/', profile_image) AS profile_image"))
        ->where('type','=','4')
        ->where('is_available','=','1')
        ->get();

        return view('front.branches', compact('getslider','getcategory','getabout','getitem','getreview','getbanner','getdata','branch','getinfo'));
    }

    public function contact(Request $request)
    {
        //
    }

    public function checkpincode(Request $request)
    {

        //
    }
    public function notallow() {
        return view('front.405'); 
    }
}
