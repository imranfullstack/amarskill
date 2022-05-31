<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Image;
use Hash;

class AdminDashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.pages.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.pages.profile.admin.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
            $validated = $request->validate([
                'name' => 'required|max:255',
                'email' => 'required|unique:users|max:255',
                'phone' => 'required|max:255',
                'new_pass' => 'required|max:255',
            ]);

        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->username = uniqid();
        $user->role_id = 3;
        $user->phone = $request->phone;
                // upload Profile Picture Image Upload 
                if($request->hasFile('image')){
                    $image = $request->file('image');
                    $img = uniqid().'.'. $image->getClientOriginalExtension();

                    Image::make($image)->save(public_path('/img/upload/profilepic/'.$img));
                    $user->image = $img;
                }
         $new_pass = $request->new_pass;
         $confirm_pass = $request->confirm_pass;
         // --- Save Password and Match With Database
            if($new_pass === $confirm_pass){
                $user->password = Hash::make($new_pass);
                $user->save();
            }else{
                return redirect()->back()->with('error',' New password & Confirm Password Not Same');
            }
        $user->save();
        return redirect()->back()->with('success','Succssfully Added a new Admin');            



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
