<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\PrivacyPolicy;
use App\About;
use App\User;
use Validator;
use Auth;

class PrivacyPolicyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $getprivacypolicy = PrivacyPolicy::where('id','1')->first();
        return view('privacy-policy',compact('getprivacypolicy'));
    }

    public function privacy()
    {
        $getdata=User::select('currency')->where('type','1')->first();
        if (isset($_COOKIE['branch'])) {
            $getabout = About::where('branch_id',Auth::user()->type)->first();
        } else {
            $getabout = "";
        }
        $getprivacypolicy = PrivacyPolicy::where('id','1')->first();

        $branch=User::select('id','name',\DB::raw("CONCAT('".url('/public/images/profile/')."/', profile_image) AS profile_image"))
        ->where('type','=','4')
        ->where('is_available','=','1')
        ->get();

        $getinfo = About::select('logo','footer_logo','favicon','fb','twitter','insta','android','ios','title','short_title','og_image','og_title','og_description','copyright')->where('id','1')->first();
        return view('front.privacy',compact('getprivacypolicy','getabout','getdata','branch','getinfo'));
    }
}
