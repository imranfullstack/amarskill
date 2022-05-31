<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\User;
use Hash;
class AdminProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        return view('admin.pages.profile.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function image(Request $request)
    {
        $user = User::where('id',Auth::user()->id)->first();
        $imagecheck = $user->image;


        // -------- Again -------------



if($request->file){
        if($imagecheck){
        // ------- File Upload When the image is not UPloaded
            if($request->file){
                // upload Profile Picture Image Upload 
                if($request->hasFile('file')){
                    $imagefound = public_path('img/upload/profilepic/'.$imagecheck);
                    // ------ Image Found -------
                   if(file_exists($imagefound)){
                        unlink($imagefound);
                    }
                    $image = $request->file('file');
                    $img = $user->id.'-'.uniqid().'.'. $image->getClientOriginalExtension();
                    $request->file->move(public_path('/img/upload/profilepic/'), $img);
                    $user->image = $img;
                    $user->save();
                    return redirect()->back()->with('success','Succssfully Upload Image!');
                }
            }
        // ------- File Upload When the image is not UPloaded End
        }else{
        // ------- File Upload When the image is not UPloaded
            if($request->file){
                // upload Profile Picture Image Upload 
                if($request->hasFile('file')){
                    $image = $request->file('file');
                    $img = $user->id.'-'.uniqid().'.'. $image->getClientOriginalExtension();
                    $request->file->move(public_path('/img/upload/profilepic/'), $img);
                    $user->image = $img;
                    $user->save();
                    return redirect()->back()->with('success','Succssfully Upload Image!');
                }
            }
        // ------- File Upload When the image is not UPloaded End
        }
}else{
    return redirect()->back()->with('error','Something Is wrong');
}






    }












// -------- Update Basic Info LIke Name ANd Phone Number ----------
    public function updatebasic(Request $request){
            $validated = $request->validate([
                'name' => 'required',
                'phone' => 'required',
            ]);
        $user = user::where('id',Auth::user()->id)->first();
        $user->name = $request->name;
        $user->phone = $request->phone;
        $user->save();
        return redirect()->back()->with('success','Succssfully update Profile Information!');
    }
// -------- Update Basic Info LIke Name ANd Phone Number ----------





















    // ---------------------- Update Password ------------------



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



    // ---------------------- Update Password End ------------------


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
