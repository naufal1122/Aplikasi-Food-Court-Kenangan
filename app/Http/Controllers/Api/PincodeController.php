<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Pincode;
use Illuminate\Support\Facades\Validator;

class PincodeController extends Controller
{
    public function pincode(Request $request)
    {
        if($request->branch_id == ""){
            return response()->json(["status"=>0,"message"=>"Please select branch"],400);
        }
    	$pincodedata=Pincode::select('pincode')->where('branch_id',$request->branch_id)->orderby('id','desc')->get();
        if(!empty($pincodedata))
        {
        	return response()->json(['status'=>1,'message'=>'Pincode Successful','data'=>$pincodedata],200);
        }
        else
        {
            return response()->json(['status'=>0,'message'=>trans('messages.no_data')],200);
        }
    }
}
