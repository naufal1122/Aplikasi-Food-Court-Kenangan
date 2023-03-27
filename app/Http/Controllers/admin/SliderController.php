<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Slider;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->type == "4") {
            $getslider = Slider::where('branch_id',Auth::user()->id)->get();
            $getbranch = [];
        } else {
            $getbranch = User::where('type','4')->get();
            $getslider = Slider::with('branch')->get();
        }
        return view('slider',compact('getslider','getbranch'));
    }

    public function list()
    {
        if (Auth::user()->type == "4") {
            $getslider = Slider::where('branch_id',Auth::user()->id)->get();
        } else {
            $getslider = Slider::with('branch')->get();
        }
        return view('theme.slidertable',compact('getslider'));
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
     * @param  \Illuminate\Http\Request  $s
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validation = Validator::make($request->all(),[
          'title' => 'required|unique:slider',
          'description' => 'required',
          'branch_id' => 'required',
          'image' => 'required|image|mimes:jpeg,png,jpg',
        ]);
        $error_array = array();
        $success_output = '';
        if ($validation->fails())
        {
            foreach($validation->messages()->getMessages() as $field_name => $messages)
            {
                $error_array[] = $messages;
            }
        }
        else
        {
            $image = 'slider-' . uniqid() . '.' . $request->image->getClientOriginalExtension();
            $request->image->move('storage/app/public/images/slider', $image);

            $slider = new Slider;
            $slider->image =$image;
            $slider->branch_id =$request->branch_id;
            $slider->title =$request->title;
            $slider->description =$request->description;
            $slider->save();
            $success_output = 'Slider Added Successfully!';
        }
        $output = array(
            'error'     =>  $error_array,
            'success'   =>  $success_output
        );
        echo json_encode($output);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $slider = Slider::findorFail($request->id);
        $getslider = Slider::where('id',$request->id)->first();
        if($getslider->image){
            $getslider->img=url('storage/app/public/images/slider/'.$getslider->image);
        }
        return response()->json(['ResponseCode' => 1, 'ResponseText' => 'Slider fetch successfully', 'ResponseData' => $getslider], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $req)
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

        $validation = Validator::make($request->all(),[
          'title' => 'required|unique:slider,title,' . $request->id,
          'branch_id' => 'required',
          'description' => 'required',
          'image' => 'image|mimes:jpeg,png,jpg',
        ]);

        $error_array = array();
        $success_output = '';
        if ($validation->fails())
        {
            foreach($validation->messages()->getMessages() as $field_name => $messages)
            {
                $error_array[] = $messages;
            }
        }
        else
        {
            $slider = new Slider;
            $slider->exists = true;
            $slider->id = $request->id;

            if(isset($request->image)){
                if($request->hasFile('image')){
                    $image = $request->file('image');
                    $image = 'slider-' . uniqid() . '.' . $request->image->getClientOriginalExtension();
                    $request->image->move('storage/app/public/images/slider', $image);
                    $slider->image=$image;
                }            
            }
            $slider->branch_id =$request->branch_id;
            $slider->title =$request->title;
            $slider->description =$request->description;
            $slider->save();           

            $success_output = 'Slider updated Successfully!';
        }
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
    public function destroy(Request $request)
    {
        $getslider = Slider::where('id',$request->id)->first();

        $slider=Slider::where('id', $request->id)->delete();
        if ($slider) {
            return 1;
        } else {
            return 0;
        }
    }
}
