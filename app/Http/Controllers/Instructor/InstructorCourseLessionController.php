<?php

namespace App\Http\Controllers\Instructor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Courselession;
use App\Models\Coursesection;
use Image;
use Auth;

class InstructorCourseLessionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
            $lession = Courselession::orderby('orderby','asc')->where('coursesection_id',$id)->get();
            $lessionid = $id;
            return view('instructor.pages.course.manage.lession.index', compact('lession', 'lessionid'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    // Section Controller
    public function section(Request $request, $id)
    {
            $id = $id;
            $section = Coursesection::orderby('short_order','asc')->where('course_id',$id)->get();
            return view('instructor.pages.course.manage.lession.section', compact('id', 'section'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */ 
            // $slug = str_replace(' ', '-', strtolower($request->title)).'-'.uniqid();



    public function store(Request $request,$id)
    {
        $section = CourseSection::where('id',$id)->first();
        $course =  $section->course;

        $slug = str_replace(' ', '-', strtolower($request->lessionname)).'-'.uniqid();
        $lession = new Courselession;
        // upload PDF FILE 
        $lession->image = "default.png";


        $lession->user_id = Auth::user()->id;
        $lession->lession_name = $request->lessionname;
        if($request->unlock){
             $lession->lock = $request->unlock;
        }
        $lession->lession_name = $request->lessionname;
        $lession->slug = $slug;
        $lession->course_id = $course->id;
        $lession->coursesection_id = $section->id;
        $lession->video_type = $request->videotype;
        $lession->video_url = $request->videourl;
        $lession->video_duration = $request->videoduration;
        $lession->orderby = 1;
        $lession->summary = $request->summary;
        $lession->details = $request->details;
        $lession->status = 0;


        $lession->save();
        
        
        $idfororder = $lession->id;
        $lessiondkdlc =  Courselession::where('id',$lession->id)->first();
        $lessiondkdlc->orderby = $lession->id;
        $lessiondkdlc->save();




        return redirect()->back()->with('Successfully Added a new lession!');
    }
    
    

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function order(Request $request,$id)
    {
        $lession  = Courselession::where('id',$id)->first();
        $lession->orderby = $request->orderby;
        $lession->save();
        return redirect()->back()->with('Successfully update Order');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $lession  = Courselession::where('id',$id)->first();
        return view('instructor.pages.course.manage.lession.edit' , compact('lession'));
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
        $lession  = Courselession::where('id',$id)->first();
        $lession->lession_name = $request->lessionname;
        if($request->unlock){
             $lession->lock = 1;
        }else{
             $lession->lock = 0;
        }
        $lession->summary = $request->summary;
        $lession->details = $request->details;

        $lession->save();
        return redirect()->back()->with('Successfully Update lession!');
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
