<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\About;
use Image;
use File;

class AdminAboutPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $about = About::first();

        return view('admin.pages.page.about', compact('about'));
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

        $about = new About;
        $about->about = $request->description;
            // upload Profile Picture Image Upload 
            if($request->hasFile('image')){
                    $image = $request->file('image');
                    $img = uniqid().'.'. $image->getClientOriginalExtension();
                    Image::make($image)->save(public_path('/img/upload/about/'.$img));
                    $about->image = $img;
              
            }
        $about->save();
        return redirect()->back()->with('success','successfully Update!');
           




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


        $about = About::first();


        $about->about = $request->description;
            // upload Profile Picture Image Upload 
            if($request->hasFile('image')){

                      $image_path = public_path("/img/upload/about/{$about->image}");

                            if (File::exists($image_path)) {
                                //File::delete($image_path);
                                unlink($image_path);
                            }




                    $image = $request->file('image');
                    $img = uniqid().'.'. $image->getClientOriginalExtension();
                    Image::make($image)->save(public_path('/img/upload/about/'.$img));
                    $about->image = $img;
              
            }
        $about->save();
        return redirect()->back()->with('success','successfully Update!');


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
