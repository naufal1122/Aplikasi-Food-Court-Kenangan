<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Banner;
use Illuminate\Support\Facades\Validator;

class BannerController extends Controller
{
    public function banner(Request $request)
    {
        if($request->branch_id == ""){
            return response()->json(["status"=>0,"message"=>"Please select branch"],400);
        }
    	$categorydata=Banner::select('banner.id','banner.item_id','banner.type','banner.cat_id','categories.category_name',\DB::raw("CONCAT('".url('/storage/app/public/images/banner/')."/', banner.image) AS image"))
        ->leftJoin('categories', function($join) {
          $join->on('banner.cat_id', '=', 'categories.id');
        })
        ->where('banner.branch_id',$request->branch_id)
        ->orderby('banner.id','desc')
        ->get();
        if(!empty($categorydata))
        {
        	return response()->json(['status'=>1,'message'=>'Banner Successful','data'=>$categorydata],200);
        }
        else
        {
            return response()->json(['status'=>0,'message'=>trans('messages.no_data')],200);
        }
    }
}
