<?php

namespace App\Http\Controllers\Admin\Course;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Coursefaq;
use Auth;


class CourseFaqAdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $course = Course::orderby('id','desc')->where('status','1')->get();
        $faq = Coursefaq::orderby('id','desc')->get();
        return view('admin.pages.courses.faq', compact('course','faq'));
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
    public function store(Request $request)
    {

           $validated = $request->validate([
                'course' => 'required',
                'title' => 'required',
                'summary' => 'required',
            ]);



        $faq = new Coursefaq;

        $faq->user_id = Auth::user()->id;
        $faq->course_id = $request->course;
        $faq->title = $request->title;
        $faq->description = $request->summary;
        $faq->status = $request->status;
        $faq->short_order = $request->order;
        $faq->save();
        return redirect()->back()->with('success','Successfully added a new FAQ');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $faq = Coursefaq::where('id',$id)->first();
        return view('admin.pages.courses.faq.edit', compact('faq'));
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
        $validated = $request->validate([
            'title' => 'required',
            'description' => 'required',
        ]);

        $faq = Coursefaq::where('id',$id)->first();
        $faq->title= $request->title;
        $faq->description = $request->description;
        $faq->save();
        return redirect()->route('admin.courses.faq.create')->with('success','Successfully Updated FAQ!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function view($id){
        $faq = Coursefaq::where('id',$id)->first();
        return view('admin.pages.courses.faq.view', compact('faq'));
    }



    public function destroy($id)
    {
        $faq = Coursefaq::where('id',$id)->first();
        $faq->delete();
        return redirect()->route('admin.courses.faq.create')->with('success','Successfully Deleted FAQ!');
    }
}
