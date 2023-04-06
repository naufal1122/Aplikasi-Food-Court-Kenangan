<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\TermsCondition;
use App\About;
use App\User;
use Validator;

class AboutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (isset($_COOKIE['branch'])) {
            $getabout = About::where('branch_id',Auth::user()->type)->first();
        } else {
            $getabout = About::first();
        }
        return view('aboutus',compact('getabout'));
    }

    public function about()
    {
        if (isset($_COOKIE['branch'])) {

            $getabout = About::where('branch_id','=',$_COOKIE['branch'])->first();
        } else {
            $getabout = "";
        }
        $getdata=User::select('currency')->where('type','1')->first();
        $getinfo = About::select('logo','footer_logo','favicon','fb','twitter','insta','android','ios','title','short_title','og_image','og_title','og_description','copyright')->where('id','1')->first();
        return view('front.about',compact('getabout','getdata','getinfo'));
    }
}
