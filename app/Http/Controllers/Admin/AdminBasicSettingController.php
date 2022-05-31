<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Basicsetting;
use Image;

class AdminBasicSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.pages.setting.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function basic_store(Request $request)
    {
        $setting = new Basicsetting;
         // upload Favicon  Image Upload 
            if($request->hasFile('favicon')){
                $image = $request->file('favicon');
                $img = uniqid().'.'. $image->getClientOriginalExtension();
                Image::make($image)->save(public_path('/img/upload/setting/'.$img));
                $setting->favicon = $img;
            }
         // upload Favicon  Image Upload 

         // upload Favicon  Image Upload 
            if($request->hasFile('sitelogo')){
                $image = $request->file('sitelogo');
                $img = uniqid().'.'. $image->getClientOriginalExtension();
                Image::make($image)->save(public_path('/img/upload/setting/'.$img));
                $setting->logo = $img;
            }
         // upload Favicon  Image Upload 
                $setting->site_title = $request->site_title;
                $setting->save();
                return redirect()->back()->with('success','SuccessFully Updated The Information!');
    }


    public function basic_update(Request $request , $id){
        $setting = Basicsetting::where('id',$id)->first();


if($request->favicon){
        $fav_path = public_path('img/upload/setting/'.$setting->favicon);
                if($fav_path){
                    unlink($fav_path);
                }
         // upload Favicon  Image Upload 
            if($request->hasFile('favicon')){
                $image = $request->file('favicon');
                $img = uniqid().'.'. $image->getClientOriginalExtension();
                Image::make($image)->save(public_path('/img/upload/setting/'.$img));
                $setting->favicon = $img;
            }
         // upload Favicon  Image Upload 
}

if($request->sitelogo){
        $logo_path = public_path('img/upload/setting/'.$setting->logo);
                if($logo_path){
                    unlink($logo_path);
                }
         // upload Favicon  Image Upload 
            if($request->hasFile('sitelogo')){
                $image = $request->file('sitelogo');
                $img = uniqid().'.'. $image->getClientOriginalExtension();
                Image::make($image)->save(public_path('/img/upload/setting/'.$img));
                $setting->logo = $img;
            }
}            
         // upload Favicon  Image Upload 


         // upload Favicon  Image Upload 
                $setting->site_title = $request->site_title;
                $setting->save();
                return redirect()->back()->with('success','SuccessFully Updated The Information!');

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
