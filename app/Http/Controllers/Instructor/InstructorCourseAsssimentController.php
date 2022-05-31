<?php

namespace App\Http\Controllers\Instructor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Courseassignment;
use App\Models\Courselession;
use Auth;
use File;

class InstructorCourseAsssimentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $asssiment = Courseassignment::where('courselession_id',$id)->where('user_id',Auth::user()->id)->get();
        $lessiontid = $id;
        return view('instructor.pages.course.manage.asssiment.index', compact('lessiontid', 'asssiment'));
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
    public function store(Request $request , $id)
    {

        $request->validate([
            'file' => 'required|mimes:pdf,xlx,csv|max:2048',
            'lessionname' => 'required',
        ]);
        $lession = Courselession::where('id',$id)->first();
        $courseid = $lession->course->id;
        $assignment = new Courseassignment;
        $assignment->title = $request->lessionname;
        $assignment->user_id = Auth::user()->id;
        $assignment->user_ip = request()->ip();
        $assignment->course_id = $courseid;
        $assignment->courselession_id = $id;
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
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
  public function lession($id)
    {


        $lession = Courselession::orderby('orderby','asc')->where('coursesection_id',$id)->get();
        $lessionid = $id;
        return view('instructor.pages.course.manage.asssiment.lession',compact('lession', 'lessionid'));
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
    public function delete($id)
    {
        $assignment = Courseassignment::where('id',$id)->first();

        $filelink = public_path('img/upload/assignment/'.$assignment->file);
        // Delete File Form Store
         if (File::exists($filelink)) {
                unlink($filelink);
         }
         $assignment->delete();
         return redirect()->back()->with('success','Successfully Delete Asssiment!');

    }
}
