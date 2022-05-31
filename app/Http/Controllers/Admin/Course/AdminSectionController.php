<?php

namespace App\Http\Controllers\Admin\course;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Coursesection;

class AdminSectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

 // ============== Course Coupons ================

            public function lessiontosectionview($id){

                $id =  $id;
                $section = Coursesection::orderby('short_order','asc')->where('course_id',$id)->get();

                return view('admin.pages.courses.section.index' , compact('section','id'));

            }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function orderupdate(Request $request , $id)
    {
        $section = Coursesection::where('id',$id)->first();

        $section->short_order = $request->order;
        $section->save();
        return redirect()->back()->with('success','Successfully update Order!');

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
        $section = Coursesection::where('id',$id)->first();
        return view('admin.pages.courses.section.edit' , compact('section','id'));
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
        $section = Coursesection::where('id',$id)->first();
        $section->title = $request->title;
        $section->status = $request->status;
        $section->short_order = $request->short_order;
        $section->save();
        return redirect()->back()->with('success','Successfully Update Section!');
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
