<?php

namespace App\Http\Controllers\Instructor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Courserequirement;
use App\Models\Coursesection;
use App\Models\Courseoutcome;
use Auth;
use Image;
use File;

class InstructorCourseController extends Controller
{


public function index()
{
    $course = Course::orderby('id','desc')->where('user_id',Auth::user()->id)->get();
    return view('instructor.pages.course.index' , compact('course'));
}

    public function create()
    {   
        return view('instructor.pages.course.create');
    }




    public function edit($id)
    {   
        $course = Course::where('id',$id)->first();
        $section = Coursesection::where('course_id',$id)->get();
        // ------ Route Edit------
        return view('instructor.pages.course.edit', compact('course' , 'section'));
    }




// ------------ Store course ----------
    public function update(Request $request,$id){

           $validated = $request->validate([
                'course_title' => 'required',
           ]);
        $slug = str_replace(' ', '-', strtolower($request->course_title));

        $courses = Course::where('id',$id)->first();
        $courses->course_title = $request->course_title;



                // --- Image upload on course
          if($request->thumbnail){
        // -- Image UPload

            if($courses->video_thumbnail){
                    $image_path = public_path("img/upload/course/{$courses->video_thumbnail}");
                        if (File::exists($image_path)) {
                            //File::delete($image_path);
                            unlink($image_path);
                        }
            }




            if($request->hasFile('thumbnail')){
                $image = $request->file('thumbnail');
                $img =  'image-course'.uniqid().'.'. $image->getClientOriginalExtension();
                Image::make($image)->save(public_path('/img/upload/course/'.$img));
                $courses->video_thumbnail = $img;
            }
        }



        $courses->short_description = $request->short_description;
        $courses->description = $request->description;
        $courses->coursecategory_id = $request->category;
        $courses->level = $request->lavel;
        $courses->language = $request->lang;
        $courses->top_course = $request->top_course;

        
        $courses->meta_keywords = $request->meta_keyword;
        $courses->meta_description = $request->meta_description;
        $courses->save();


        return redirect()->route('instructor.course.index')->with('success','Successfully! Updateed The Course!');
    }




// ------------ Store course ----------
    public function store(Request $request){

        $validated = $request->validate([
                'course_title' => 'required',
                'category' => 'required',
                'lavel' => 'required',
                'lang' => 'required',
                'video_provider' => 'required',
                'video_link' => 'required',
         ]);
        $slug = mt_rand('1','100');



        $slugcheck = Course::where('slug',$slug)->first();

       

        $courses = new Course;
        $courses->uploader_id = Auth::user()->id;
        $courses->user_id = Auth::user()->id;
        $courses->course_title = $request->course_title;
        // --- Check URL IS exit OR NOT ---
         if($slugcheck){
            $courses->slug = $slug.'-'.uniqid();
        }else{
            $courses->slug = $slug;
        }


        $courses->short_description = $request->short_description;
        $courses->description = $request->description;
        $courses->coursecategory_id = $request->category;
        $courses->level = $request->lavel;
        $courses->language = $request->lang;
        $courses->status = 0;
        $courses->top_course = $request->top_course;
        $courses->course_price = $request->price;;
        $courses->media_provider = $request->video_provider;
        $courses->video_link = $request->video_link;
        // --- Image upload on course
          if($request->thumbnail){
        // -- Image UPload
            if($request->hasFile('thumbnail')){
                $image = $request->file('thumbnail');
                $img =  'image-course'.uniqid().'.'. $image->getClientOriginalExtension();
                Image::make($image)->save(public_path('/img/upload/course/'.$img));
                $courses->video_thumbnail = $img;
            }
        }


        // --- Image upload on course
        $courses->meta_keywords = $request->meta_keyword;
        $courses->meta_description = $request->meta_description;
        $courses->save();
        if($request->requirements)
        {
            foreach($request->requirements as $item){
                $course = new Courserequirement;
                $course->title = $item;
                $course->course_id = $courses->id;
                $course->save();
            }
        }
        if($request->outcomes)
        {
            foreach($request->outcomes as $item){
                $course = new Courseoutcome;
                $course->title = $item;
                $course->course_id = $courses->id;
                $course->save();
            }
        }
        return redirect()->route('instructor.course.index')->with('success','Successfully! Added A New Course. Please Wait for Admin Approval');
    }

    // ------ Relete requirements for instructor --------

    public function deleterequirements($id){
        $requirements = Courserequirement::where('id',$id)->first();
        $requirements->delete();
        return redirect()->back()->with('success', 'Successfully! You Just Deleted Requirement!');
    }
    // ------ Relete requirements for instructor --------

    public function editrequirement(Request $request,$id){
        $requirements = Courserequirement::where('id',$id)->first();
        $requirements->title = $request->title;
        $requirements->save();
        return redirect()->back()->with('success','Successfully Update The requirement !');

    }
    // ------ Edit OutCome for instructor --------

    public function outcome_add_update(Request $request,$id){

        $courseoutcome = Courseoutcome::where('id',$id)->first();
        $courseoutcome->title = $request->title;
        $courseoutcome->save();
        return redirect()->back()->with('success','Successfully Update The OutCome!');

    }


    public function requerment_add_update(Request $request, $id){
        if($request->requirements)
        {
            foreach($request->requirements as $item){
                $course = new Courserequirement;
                $course->title = $item;
                $course->course_id = $id;
                $course->save();
            }
        }
        return redirect()->back()->with('success','Successfully Added New Requirements!');
    }


    public function outcome_trash(Request $request, $id){

        $courseoutcome = Courseoutcome::where('id',$id)->first();
        $courseoutcome->delete();
        return redirect()->back()->with('success','Successfully Deleted OutCome!');
    }


    public function storeedit(Request $request, $id){


        if($request->outcomes)
        {
            foreach($request->outcomes as $item){
                $course = new Courseoutcome;
                $course->title = $item;
                $course->course_id = $id;
                $course->save();
            }
        }

        return redirect()->back()->with('success','Successfully Added New Outcome');
    }


}
