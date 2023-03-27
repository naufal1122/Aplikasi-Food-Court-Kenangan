<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\User;
use App\Time;
use App\About;
use Illuminate\Support\Facades\Validator;

class BranchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $getbranch = User::where('type','4')->get();
        return view('branches',compact('getbranch'));
    }

    public function list()
    {
        $getbranch = User::where('type','4')->get();
        return view('theme.branchtable',compact('getbranch'));
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
          'name' => 'required',
          'email' => 'required|unique:users',
          'mobile' => 'required|unique:users',
          'password' => 'required',
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

            $image = 'branch-' . uniqid() . '.' . $request->image->getClientOriginalExtension();
            $request->image->move('storage/app/public/images/profile', $image);

            $branch = new User;
            $branch->profile_image = $image;
            $branch->name = $request->name;
            $branch->email = $request->email;
            $branch->mobile = $request->mobile;
            $branch->type = "4";
            $branch->max_order_qty = "10";
            $branch->min_order_amount = "10";
            $branch->max_order_amount = "100";
            $branch->lat = "40.7128";
            $branch->lang = "-74.0060";
            $branch->password = Hash::make($request->password);
            $branch->save();

            $branch_id = \DB::getPdo()->lastInsertId();

            $days = [ "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" ];

            foreach ($days as $day) {

                $timedata = new Time;
                $timedata->branch_id =$branch_id;
                $timedata->day =$day;
                $timedata->open_time ='12:00am';
                $timedata->close_time ='11:59pm';
                $timedata->always_close ='2';
                $timedata->save();
            }

            $getbranch = About::orderby('id','desc')->first();

            $settings = new About;
            $settings->branch_id =$branch_id;
            $settings->address = 'address';
            $settings->email = 'youremail@email.com';
            $settings->mobile = 'your mobile number';
            $settings->save();

            $success_output = 'Data has been saved';
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

        $branch = User::findorFail($request->id);
        $getbranch = User::where('id',$request->id)->first();
        if($getbranch->profile_image){
            $getbranch->img=url('storage/app/public/images/profile/'.$getbranch->profile_image);
        }

        return response()->json(['ResponseCode' => 1, 'ResponseText' => 'Success', 'ResponseData' => $getbranch], 200);
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
          'name' => 'required',
          'email' => 'required|unique:users,name,' . $request->id,
          'mobile' => 'required|unique:users,mobile,' . $request->id
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
            $branch = new User;
            $branch->exists = true;

            if(isset($request->image)){
                if($request->hasFile('image')){
                    $image = $request->file('image');
                    $image = 'branch-' . uniqid() . '.' . $request->image->getClientOriginalExtension();
                    $request->image->move('storage/app/public/images/profile', $image);
                    $branch->profile_image=$image;

                    // unlink(public_path('images/category/'.$request->old_img));
                }            
            }

            $branch->id = $request->id;
            $branch->name =$request->name;
            $branch->email =$request->email;
            $branch->mobile =$request->mobile;
            $branch->save();           

            $success_output = 'Data has been updated';
        }
        $output = array(
            'error'     =>  $error_array,
            'success'   =>  $success_output
        );
        echo json_encode($output);
    }

    public function status(Request $request)
    {
        $users = User::where('id', $request->id)->update( array('is_available'=>$request->status) );
        if ($users) {
            return 1;
        } else {
            return 0;
        }
    }
}
