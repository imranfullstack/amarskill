<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Courserequirement;
use App\Models\Courseoutcome;
use App\Models\Coursecategory;
use App\Models\Coursesection;
use App\Models\Courselession;
use App\Models\Courseassignment;
use App\Models\Cupon;
use carbon\carbon;
use Auth;
use Image;
use File;

class AdminCourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function manage_courses()
    {
        return view('admin.pages.courses.manage-courses');
    }


    public function add_courses()
    {
        return view('admin.pages.courses.add-new-courses');
    }


// ------------ Store course ----------
    public function store_courses(Request $request){
           $validated = $request->validate([
                'instructor' => 'required',
                'course_title' => 'required',
                'category' => 'required',
                'lavel' => 'required',
                'lang' => 'required',
                'status' => 'required',
                'video_provider' => 'required',
                'video_link' => 'required',
         ]);

        $slug = mt_rand('1','100');

        $slugcheck = Course::where('slug',$slug)->first();

       

        $courses = new Course;
        $courses->uploader_id = Auth::user()->id;
        $courses->user_id = $request->instructor;
        $courses->course_title = $request->course_title;
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
        $courses->status = $request->status;
        $courses->top_course = $request->top_course;
        $courses->course_price = $request->price;;
        $courses->media_provider = $request->video_provider;
        $courses->video_link = $request->video_link;
        // --- Image upload on course
          if($request->thumbnail){
        // -- Image UPload
            if($request->hasFile('thumbnail')){
                $image = $request->file('thumbnail');
                $img = $slug .'-'.uniqid().'.'. $image->getClientOriginalExtension();
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
        return redirect()->route('admin.courses.manage.list')->with('success','Successfully! Added A New Course');
    }






    // ----------------------------------------------------

    public function createassignment($id){
        $lessionid = $id;

        $assignment = Courseassignment::where('courselession_id',$id)->get();

        return view('admin.pages.courses.assignment.create', compact('lessionid','assignment'));
    }

    public function removeassignment($id)

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
    // -------------------------------Edit a course ---------------------------
    public function courses_edit($id){
        $course = Course::where('id',$id)->first();

        $section = Coursesection::where('course_id',$id)->get();
        return view('admin.pages.courses.course-edit', compact('course' , 'section'));
    }


    public function courses_update(Request $request , $id){
           $validated = $request->validate([
                'instructor' => 'required',
                'course_title' => 'required',
                'category' => 'required',
                'lavel' => 'required',
                'lang' => 'required',
                'status' => 'required',
                'video_provider' => 'required',
                'video_link' => 'required',
         ]);
        $slug = mt_rand('1','100');
        $slugcheck = Course::where('slug',$id)->first();
        $courses = Course::find($id);
        $courses->uploader_id = Auth::user()->id;
        $courses->user_id = $request->instructor;
        $courses->course_title = $request->course_title;
        $courses->short_description = $request->short_description;
        $courses->description = $request->description;
        $courses->coursecategory_id = $request->category;
        $courses->level = $request->lavel;
        $courses->language = $request->lang;
        $courses->status = $request->status;
        $courses->top_course = $request->top_course;
        $courses->course_price = $request->price;;
        $courses->media_provider = $request->video_provider;
        $courses->video_link = $request->video_link;
        // --- Image upload on course
          if($request->thumbnail){
        // -- Image UPload
            if($request->hasFile('thumbnail')){
                $image = $request->file('thumbnail');
                $img = $slug .'-'.uniqid().'.'. $image->getClientOriginalExtension();
                Image::make($image)->save(public_path('/img/upload/course/'.$img));
                $courses->video_thumbnail = $img;
            }
        }
        // --- Image upload on course
        $courses->meta_keywords = $request->meta_keyword;
        $courses->meta_description = $request->meta_description;
        $courses->save();

        return redirect()->route('admin.courses.manage.list')->with('success','Successfully! update Course Course');

    }

    // ------ Course Section -----

    public function courses_section_store(Request $request,$id){

        $section = new Coursesection;
        $section->title = $request->title;
        $section->user_id = $request->status;
        $section->status = Auth::user()->id;
        $section->course_id = $id;
        $section->short_order = $request->short_order;
        $section->save();
        return redirect()->back()->with('success','Successfully! Added A Section');
    }
    // ------ Course Lession ---------
    public function courses_lession_store(Request $request, $id){
        $lession = new Courselession;
            $course = Course::where('id',$id)->first();
            $slug = str_replace(' ', '-', strtolower($request->lession_name)).'-'.uniqid();

        // --- Image upload on course
          if($request->thumbnail){
        // -- Image UPload
            if($request->hasFile('thumbnail')){

                $image = $request->file('thumbnail');

                $img = $slug .'-'.uniqid().'.'. $image->getClientOriginalExtension();

                Image::make($image)->save(public_path('/img/upload/lession/'.$img));
                $lession->image = $img;
            }
        }
        $lession->user_id = Auth::user()->id;
        $lession->lession_name = $request->lession_name;
        $lession->slug = $slug;
        $lession->course_id = $id;
        $lession->Coursesection_id = $request->section;
        $lession->video_type = $request->video_type;
        $lession->video_url = $request->video_url;
        $lession->video_duration = $request->summary;
        $lession->summary = $request->summary;
        $lession->details = $request->details;
        $lession->status = $request->status;
        $lession->created_at = carbon::now();
        $lession->save();
        return redirect()->back()->with('success','Successfully! Added A Lession.');
    }




    public function courses_pending(){
        return view('admin.pages.courses.course-pending');
    }
    
    public function course_approve($id){
            $course = Course::where('id',$id)->first();
            $course->status = 1;
            $course->save();
            return redirect()->back()->with('success','Successfully Approved a New Course!');
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // =============================================================
                     // store_courses_category 
    // =============================================================
    public function add_courses_category()
    {
        $category = Coursecategory::orderby('id','desc')->get();



        return view('admin.pages.courses.category', compact('category'));

    }

    public function store_courses_category(Request $request){


      

        $slug = str_replace(' ', '-', strtolower($request->name));

        $category = new Coursecategory;
        $category->user_id = Auth::user()->id;


          if($request->thumbnail){

        // -- Image UPload
            if($request->hasFile('thumbnail')){
                $image = $request->file('thumbnail');
                $img = $slug .'-'.uniqid().'.'. $image->getClientOriginalExtension();
                Image::make($image)->save(public_path('/img/upload/category/'.$img));
                $category->image = $img;
            }

        }



        $category->name = $request->name;
        $category->slug = $slug;
        $category->description = $request->description;
        $category->status = $request->status;
        $category->shortorder = $request->shortorder;
        $category->created_at = carbon::now();
        $category->save();
        return redirect()->route('admin.courses.category.add')->with('success','Successfully Added a New Category');

    }
    // ========== Course Lesson ==========

    public function add_course_lesson()
    {
        $courses = Course::orderby('id','desc')->where('status',1)->get();
        $lession = Courselession::orderby('id','desc')->get();
        return view('admin.pages.courses.lesson', compact('courses','lession'));
    }
    // ----- Session Page Store 

public function courses_page_lession_store(Request $request){

    return $request->section;
              $courseslug = Course::where('id',$request->course)->first();
              $validated = $request->validate([
                'name' => 'required',
                'course' => 'required',
                'section' => 'required',
                'video_url' => 'required',
                'vide_type' => 'required',
            ]);
            $lession = new Courselession;
            $slug = $courseslug->slug.'-'.str_replace(' ', '-', strtolower($request->name));
            if($request->thumbnail){
            // -- Image UPload
                if($request->hasFile('thumbnail')){
                    $image = $request->file('thumbnail');
                    $img = $slug .'-'.uniqid().'.'. $image->getClientOriginalExtension();
                    Image::make($image)->save(public_path('/img/upload/lession/'.$img));
                    $lession->image = $img;
                }
            }
            $lession->user_id = Auth::user()->id;
            $lession->slug = $slug;
            $lession->lession_name = $request->name;
            $lession->course_id = $request->course;
            $lession->Coursesection_id = $request->section;
            $lession->video_type = $request->vide_type;
            $lession->video_url = $request->video_url;
            $lession->video_duration = $request->duration;
            $lession->summary = $request->summary;
            $lession->details = $request->details;
            $lession->status = $request->sataus;
            $lession->save();
            return redirect()->back()->with('success','Successfully Added a New Lession!');
}



 // ============== Course Coupons ================




    public function add_course_coupon()
    {

        $course = course::orderby('id','desc')->where('status',1)->get();
        $cupon = cupon::orderby('id','desc')->get();

        return view('admin.pages.courses.coupon' , compact('course' , 'cupon'));
    }

// -------- Cupon Store ----------
    public function cupon_store(Request $request){
        $cupon = new cupon;
        $cupon->cuponname = $request->cuponname;
        $cupon->cupon_code = $request->cupon_code;
        $cupon->course_id = $request->course;
        $cupon->user_id = Auth::user()->id;
        $cupon->discount = $request->discount;
        $cupon->validtill = $request->validtill;
        $cupon->status = $request->status;
        $cupon->save();
        return redirect()->back();
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
    public function trash($id)
    {
        return $id;
    }
}
