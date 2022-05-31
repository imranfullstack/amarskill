<?php

namespace App\Http\Controllers\Instructor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Courserequirement;
use App\Models\Courseoutcome;
use App\Models\Coursesection;
use Auth;
use carbon\carbon;

class InstructorCourseSectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
            $id = $id;
            $section = Coursesection::orderby('short_order','asc')->where('course_id',$id)->get();
            return view('instructor.pages.course.manage.section.index', compact('id', 'section'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function updateorder(Request $request, $id)
    {
        $section = Coursesection::where('id',$id)->first();
        $section->short_order = $request->order;
        $section->save();
        return redirect()->back()->with('success','Successfully update The Order!');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,$id)
    {
        $section = new Coursesection;
        $section->title = $request->title;
        $section->user_id = Auth::user()->id;
        $section->course_id = $id;
        $section->status = 1;
        $section->short_order = 1;
        $section->created_at = carbon::now();
        $section->save();
        return redirect()->back()->with('sucess','Successfully added a new Section!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request , $id)
    {
            $section = Coursesection::where('id',$id)->first();



            return view('instructor.pages.course.manage.section.edit', compact('section'));
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
            $section->save();
            return redirect()->back()->with('success','Successfully update The Section!');

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
