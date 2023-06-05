<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\TermsCondition;
use App\About;
use App\User;
use Validator;

class TermsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $gettermscondition = TermsCondition::where('id','1')->first();
        return view('terms-condition',compact('gettermscondition'));
    }

    public function terms()
    {
        $getdata=User::select('currency')->where('type','1')->first();
        if (isset($_COOKIE['branch'])) {
            $getabout = About::where('branch_id',Auth::user()->type)->first();
        } else {
            $getabout = "";
        }

        $branch=User::select('id','name',\DB::raw("CONCAT('".url('/public/images/profile/')."/', profile_image) AS profile_image"))
        ->where('type','=','4')
        ->where('is_available','=','1')
        ->get();
        
        $gettermscondition = TermsCondition::where('id','1')->first();
        $getinfo = About::select('logo','footer_logo','favicon','fb','twitter','insta','android','ios','title','short_title','og_image','og_title','og_description','copyright')->where('id','1')->first();
        return view('front.terms',compact('gettermscondition','getabout','getdata','branch','getinfo'));
    }
}
