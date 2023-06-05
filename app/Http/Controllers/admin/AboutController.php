<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\About;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class AboutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->type == 1) {
            $getabout = About::where('id','1')->first();
        } else {
            $getabout = About::where('branch_id',Auth::user()->id)->first();
        }
        
        return view('about',compact('getabout'));
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
        {
            $error_array = array();
            $success_output = '';
            
            if (Auth::user()->type == "1") {

                if($request->hasFile('footer_logo')){
                    $footer_logo = $request->file('footer_logo');
                    $footer_logo = 'footer-' . uniqid() . '.' . $request->footer_logo->getClientOriginalExtension();
                    $request->footer_logo->move('storage/app/public/images/about', $footer_logo);
                    $UpdateWalletDetails = About::where('id',Auth::user()->id)->update(['footer_logo' => $footer_logo]);
                }

                if($request->hasFile('favicon')){
                    $favicon = $request->file('favicon');
                    $favicon = 'favicon-' . uniqid() . '.' . $request->favicon->getClientOriginalExtension();
                    $request->favicon->move('storage/app/public/images/about', $favicon);
                    $UpdateWalletDetails = About::where('id',Auth::user()->id)->update(['favicon' => $favicon]);
                }

                if($request->hasFile('logo')){
                    $logo = $request->file('logo');
                    $logo = 'logo-' . uniqid() . '.' . $request->logo->getClientOriginalExtension();
                    $request->logo->move('storage/app/public/images/about', $logo);
                    $UpdateWalletDetails = About::where('id',Auth::user()->id)->update(['logo' => $logo]);
                }

                if($request->hasFile('og_image')){
                    $og_image = $request->file('og_image');
                    $og_image = 'og_image-' . uniqid() . '.' . $request->og_image->getClientOriginalExtension();
                    $request->og_image->move('storage/app/public/images/about', $og_image);
                    $UpdateWalletDetails = About::where('id',Auth::user()->id)->update(['og_image' => $og_image]);
                }

                $UpdateWalletDetails = About::where('id',Auth::user()->id)->update(['android' => $request->android,'ios' => $request->ios,'copyright' => $request->copyright,'title' => $request->title,'short_title' => $request->short_title,'og_title' => $request->og_title,'og_description' => $request->og_description]);
            } 
            if (Auth::user()->type == "4") {

                if($request->hasFile('image')){
                    $image = $request->file('image');
                    $image = 'about-' . uniqid() . '.' . $request->image->getClientOriginalExtension();
                    $request->image->move('storage/app/public/images/about', $image);

                    $UpdateWalletDetails = About::where('branch_id',Auth::user()->id)->update(['image' => $image]);
                } 
                
                $UpdateWalletDetails = About::where('branch_id',Auth::user()->id)->update(['title_content' => trim($request->title_content), 'about_content' => trim($request->about_content),'fb' => $request->fb,'twitter' => $request->twitter,'insta' => $request->insta,'mobile' => $request->mobile,'email' => $request->email,'address' => $request->address]);
            }
            

            $success_output = 'Content has been updated Successfully!';

            $output = array(
                'error'     =>  $error_array,
                'success'   =>  $success_output
            );
            echo json_encode($output);
        }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
