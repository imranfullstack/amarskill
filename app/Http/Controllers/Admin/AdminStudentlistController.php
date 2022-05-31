<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Hash;

class AdminStudentlistController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $students = User::orderby('id','desc')->where('role_id',1)->get();

        return view('admin.pages.profile.student.index', compact('students'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function passwordupdate(Request $request , $id)
    {
        $validated = $request->validate([
            'new_pass' => 'required|min:8',
        ],
        [        
            'new_pass.min' => 'The new password must be at least 8 characters.',
            'new_pass.required' => 'The New password field is required.'
        ]
        );


        $student = User::where('id',$id)->first();


        $new_pass = $request->new_pass;
        $confirm_pass = $request->confirm_pass;


        if($new_pass === $confirm_pass){
            $user = user::find($id);
            $user->password = Hash::make($new_pass);
            $user->save();
            return redirect()->back()->with('success','Password is Changed Successfully! ');

        }else{
            return redirect()->back()->with('error',' New password & Confirm Password Not Same');
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
        $student = User::where('id',$id)->first();

        return view('admin.pages.profile.student.show', compact('student'));
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
    public function update(Request $request, $id)
    {
        //
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
