<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\User;
use App\Transaction;
use App\About;
use App\Contact;
use Illuminate\Support\Facades\Validator;

class BranchController extends Controller
{
    public function branchlist()
    {
        $checkuser=User::select('id','name',\DB::raw("CONCAT('".url('/storage/app/public/images/profile/')."/', profile_image) AS profile_image"))
        ->where('type','4')
        ->orderBy('id', 'DESC')
        ->get();

        if(!empty($checkuser))
        {
            return response()->json(['status'=>1,'message'=>'Success','data'=>$checkuser],200);
        }
        else
        {
            return response()->json(['status'=>0,'message'=>trans('messages.no_data')],200);
        }
    }
}
