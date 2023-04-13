<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\About;
use Illuminate\Support\Facades\Validator;
use Auth;

class AboutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function about(Request $request)
    {
        $getabout = About::select('about_content')->where('branch_id',$request->branch_id)->first();
        
        return response()->json(['status'=>1,'message'=>'Successful','about_content'=>$getabout->about_content],200);
    }
}
