<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Contact;
use App\User;
use Validator;
use Illuminate\Support\Facades\Auth;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->type == "4") {
            $getcontact = Contact::with('branch')->where('branch_id',Auth::user()->id)->get();
        } else {
            $getcontact = Contact::with('branch')->get();
        }
        return view('contact',compact('getcontact'));
    }
}
