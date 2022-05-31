<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Courserequirement;
use App\Models\Courseoutcome;
use App\Models\Coursecategory;
use App\Models\Coursesection;
use App\Models\Courselession;
use App\Models\User;
use App\Models\contact;
use carbon\carbon;
use Auth;
use DB;
use Image;

class FrontendController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $populercourse = Course::orderby('populer_post','desc')->where('status',1)->get();
        $featurescourse = Course::orderby('id','desc')->where('top_course',1)->where('status',1)->get();
        $instructor = user::where('role_id','2')->get();

        return view('frontend.pages.index' , compact('populercourse','featurescourse','instructor'));
    }



    // --------- Course Page -----------/
    public function course()
    {

        $course = Course::orderby('id','desc')->where('status',1)->simplePaginate(0);
        $category = Coursecategory::orderby('id','desc')->where('status',1)->get();

        return view('frontend.pages.course', compact('course' , 'category'));
    }

    public function single_course($slug){
        $course = Course::where('slug',$slug)->first();
        DB::table('courses')
            ->where('slug',$slug)
            ->increment('populer_post');
        return view('frontend.pages.course.single-course' , compact('course'));

    }

    // ---- privicy PoliCy Page ---

    public function privacy(){
        return view('frontend.pages.privacy-policy');
    }
    // ---- privicy PoliCy Page ---

    public function terms(){
        return view('frontend.pages.terms-and-conditions');
    }



   
    public function courses(){
        return view('frontend.pages.course.assignment.courses');
    }

   
    public function refund(){
        return view('frontend.pages.refund-return-policy');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function about()
    {
        return view('frontend.pages.about');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function contact(Request $request)
    {
        $contact = contact::first();
        return view('frontend.pages.contact', compact('contact'));
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
    public function destroy($id)
    {
        //
    }


    public function course_unlock($slug){


        $lession = Courselession::where('slug',$slug)->first();

        $course = Course::where('id',$lession->course_id)->first();

        return view('frontend.pages.course.unlock' , compact('course','lession'));
    }
}
