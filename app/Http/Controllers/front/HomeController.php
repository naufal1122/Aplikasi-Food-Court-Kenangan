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

class HomeController extends Controller
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

       $branch=User::select('id','name',\DB::raw("CONCAT('".url('/storage/app/public/images/profile/')."/', profile_image) AS profile_image"))
        ->where('type','=','4')
        ->where('is_available','=','1')
        ->get();

        return view('front.home', compact('getslider','getcategory','getabout','getitem','getreview','getbanner','getdata','branch','getinfo'));
    }

    public function contact(Request $request)
    {
        if($request->firstname == ""){
            return response()->json(["status"=>0,"message"=>trans('messages.first_name_required')],200);
        }
        if($request->lastname == ""){
            return response()->json(["status"=>0,"message"=>trans('messages.last_name_required')],200);
        }
        if($request->email == ""){
            return response()->json(["status"=>0,"message"=>trans('messages.email_required')],200);
        }
        if($request->message == ""){
            return response()->json(["status"=>0,"message"=>trans('messages.message_required')],200);
        }
        $category = new Contact;
        $category->branch_id =$_COOKIE['branch'];
        $category->firstname =$request->firstname;
        $category->lastname =$request->lastname;
        $category->email =$request->email;
        $category->message =$request->message;
        $category->save();

        if ($category) {
            return response()->json(['status'=>1,'message'=>trans('messages.message_sent')],200);
        } else {
            return response()->json(['status'=>2,'message'=>trans('messages.wrong')],200);
        }
    }

    public function checkpincode(Request $request)
    {

        $getdata=User::select('min_order_amount','max_order_amount','currency')->where('type','1')
        ->get()->first();

        if($request->postal_code != ""){
            $pincode=Pincode::select('pincode')->where('pincode',$request->postal_code)->get()->first();
            if(@$pincode['pincode'] == $request->postal_code) {
                if(!empty($pincode))
                {
                    if ($getdata->min_order_amount > $request->order_total) {
                        return response()->json(['status'=>0,'message'=>"Order amount must be between ".$getdata->currency."".$getdata->min_order_amount." and ".$getdata->currency."".$getdata->max_order_amount.""],200);
                    } elseif ($getdata->max_order_amount < $request->order_total) {
                        return response()->json(['status'=>0,'message'=>"Order amount must be between ".$getdata->currency."".$getdata->min_order_amount." and ".$getdata->currency."".$getdata->max_order_amount.""],200);
                    } else {
                        return response()->json(['status'=>1,'message'=>trans('messages.available')],200);
                    }                
                }
            } else {
                return response()->json(['status'=>0,'message'=>trans('messages.delivery_unavailable')],200);
            }
        } else {
            
            if ($getdata->min_order_amount > $request->order_total) {
                return response()->json(['status'=>0,'message'=>"Order amount must be between ".$getdata->currency."".$getdata->min_order_amount." and ".$getdata->currency."".$getdata->max_order_amount.""],200);
            } elseif ($getdata->max_order_amount < $request->order_total) {
                return response()->json(['status'=>0,'message'=>"Order amount must be between ".$getdata->currency."".$getdata->min_order_amount." and ".$getdata->currency."".$getdata->max_order_amount.""],200);
            } else {
                return response()->json(['status'=>1,'message'=>'Ok'],200);
            }   
        }
    }
    public function notallow() {
        return view('front.405'); 
    }
}
