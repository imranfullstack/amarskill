<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Coursesection;
use App\Models\Courselession;
class AdminManageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function manage($id)
    {
        $course = Course::where('id',$id)->first();
        return view('admin.pages.courses.manage.index', compact('course'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function section($id){
                // --- Course Id ---
                $id =  $id;
                // ---- Course Section ----
                $section = Coursesection::orderby('short_order','asc')->where('course_id',$id)->get();
                // ---- View section ----
                return view('admin.pages.courses.manage.section' , compact('section','id'));
    }


    // -------- lession ---------

    public function lession($id){
                // --- Course Id ---
                $lession = Courselession::where('course_id',$id)->get();
                $id =  $id;
                return view('admin.pages.courses.manage.lession' , compact('lession','id'));
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
    public function single_video($id)
    {
                $lession = Courselession::where('id',$id)->first();

                $course = Course::where('id',$lession->course_id)->first();

                return view('admin.pages.courses.manage.single-video' , compact('lession','id' ,'course'));
    }
}
