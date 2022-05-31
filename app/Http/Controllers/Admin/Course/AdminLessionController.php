<?php

namespace App\Http\Controllers\Admin\Course;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Courselession;
use Auth;
use File;
use Image;
use carbon\carbon;
class AdminLessionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function managelession($id)
    {
        $lession = Courselession::orderby('orderby','asc')->where('coursesection_id',$id)->get();

        $id =  $id;

        return view('admin.pages.courses.lession.index' , compact('lession','id'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function updateorder(Request $request,$id)
    {
        $lession = Courselession::where('id',$id)->first();
        $lession->orderby = $request->orderby;
        $lession->save();
        return redirect()->back()->with('success','Success Update Order!');
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
        $lession = Courselession::where('id',$id)->first();
        $id = $id;

        return view('admin.pages.courses.lession.edit' , compact('lession','id'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function update(Request $request, $id){


        $lession = Courselession::where('id',$id)->first();


        // --- Image upload on course
          if($request->thumbnail){

                $slug  = str_replace(' ', '-', strtolower($request->lession_name));
                    // Find Image Path
               $image_path = public_path('img/upload/lession/'.$lession->image);
                if (File::exists($image_path)) {
                    unlink($image_path);
                }
        // -- Image UPload
            if($request->hasFile('thumbnail')){

                $image = $request->file('thumbnail');

                $img = $slug .'-'.uniqid().'.'. $image->getClientOriginalExtension();

                Image::make($image)->save(public_path('/img/upload/lession/'.$img));
                $lession->image = $img;
            }
        }


        $lession->lession_name = $request->lession_name;
        $lession->Coursesection_id = $request->section;
        $lession->video_type = $request->video_type;
        $lession->video_url = $request->video_url;
        $lession->video_duration = $request->video_duration;
        $lession->summary = $request->summary;
        $lession->details = $request->details;
        $lession->status = $request->status;
        $lession->created_at = carbon::now();
        $lession->save();
        return redirect()->back()->with('success','Successfully! Update A Lession.');
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
