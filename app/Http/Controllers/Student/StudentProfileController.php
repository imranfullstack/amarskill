<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\models\User;
use Auth;
use File;
use Image;
use Hash;


class StudentProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($username)
    {
        $user = User::where('username',$username)->first();
        return view('student.profile.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function password()
    {
        $user = Auth::user()->id;
        return view('student.profile.password');
    }



public function updatepassword(request $request){
      $validated = $request->validate([
        'old_pass' => 'required',
        'new_pass' => 'required|min:8',
    ],
    [        
        'old_pass.required' => 'The old password field is required.',
        'new_pass.min' => 'The new password must be at least 8 characters.',
        'new_pass.required' => 'The New password field is required.'
    ]
    );


    $db_pass = Auth::user()->password;
    $old_pass = $request->old_pass;
    $new_pass = $request->new_pass;
    $confirm_pass = $request->confirm_pass;


    if(Hash::check($old_pass,$db_pass)){
        if($new_pass === $confirm_pass){

            $user = user::find(Auth::id());
            $user->password = Hash::make($new_pass);
            $user->save();
            return redirect()->back()->with('success','Password is Changed Successfully! ');

        }else{
            return redirect()->back()->with('error',' New password & Confirm Password Not Same');
        }
        }else{
            return redirect()->back()->with('error','Your Password Not Match');
        }
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

        $user = User::where('id',Auth::user()->id)->first();





        // upload PDF FILE 
        if($request->image){
        // -- Image UPload

                if($user->image){
                    $image_path = public_path("img/upload/profilepic/".$user->image);
                    if (File::exists($image_path)) {
                        unlink($image_path);
                    }
                }


            if($request->hasFile('image')){
                $image = $request->file('image');
                $img = $user->username .'-'.uniqid().'.'. $image->getClientOriginalExtension();
                Image::make($image)->save(public_path('/img/upload/profilepic/'.$img));
                $user->image = $img;
            }
        }



    

         


        $user->name = $request->name;
        $user->phone = $request->phone;
        $user->save();
        return redirect()->back()->with('succss','Succssfully Updated Profile');


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
