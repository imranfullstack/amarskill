<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Courseassignment;
use App\Models\Coursesection;
use App\Models\Courselession;
use Auth;
use Image;
use File;

class AdminAssignmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function assignmentsection($id)
    {
        $section = Coursesection::where('course_id',$id)->get();
        return view('admin.pages.courses.assignment.section', compact('section'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function assignmentlession($id)
    {
        $lession = Courselession::orderby('id','desc')->where('coursesection_id',$id)->get();

        return view('admin.pages.courses.assignment.lession', compact('lession'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request , $id)
    {


        $lessionid =  $id;
        $assignment = Courseassignment::orderby('id','desc')->where('courselession_id',$id)->get();


        return view('admin.pages.courses.assignment.create', compact('lessionid' ,'assignment'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request , $id)
    {

        $request->validate([
            'file' => 'required|mimes:pdf,xlx,csv|max:2048',
        ]);



        $lession = Courselession::where('id',$id)->first();


        $assignment = new Courseassignment;
        $assignment->title = $request->title;
        $assignment->user_id = Auth::user()->id;
        $assignment->user_ip = request()->ip();
        $assignment->course_id = $lession->course_id;
        $assignment->courselession_id = $lession->coursesection_id;
        // upload PDF FILE 
        if($request->file){
        // -- Image UPload
            if($request->hasFile('file')){
                $image = $request->file('file');
                $img = $id.'-'.uniqid().'.'. $image->getClientOriginalExtension();
                $request->file->move(public_path('/img/upload/assignment/'), $img);
                $assignment->file = $img;
            }else{
                $assignment->file = "default.png";
            }
        }

        $assignment->save();
        return redirect()->back()->with('success','Successfully Added a new Assignment!');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    
  

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function assignmentedit(Request $request, $id)
    {
        $assignment = Courseassignment::where('id',$id)->first();
        return view('admin.pages.courses.assignment.edit', compact('assignment'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


        public function update(Request $request,$id)
    {
        $assignment = Courseassignment::where('id',$id)->first();
         $assignment->title = $request->title;
        // upload PDF FILE 
        if($request->file){
            $file_path = public_path('img/upload/assignment/'.$assignment->file);
             if (File::exists($file_path)) {
                    unlink($file_path);
             }
             // -- Image UPload
            if($request->hasFile('file')){
                $image = $request->file('file');
                $img = $id.'-'.uniqid().'.'. $image->getClientOriginalExtension();
                $request->file->move(public_path('/img/upload/assignment/'), $img);
                $assignment->file = $img;
            }else{
                $assignment->file = "default.png";
            }
        }
         $assignment->save();
         return redirect()->back();

    }

    

}
