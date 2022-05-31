<?php

namespace App\Http\Controllers\Admin\Course;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Courserequirement;
use App\Models\Courseoutcome;


class AdminReqermentOutcomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

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
    public function requirements_update(Request $request, $id)
    {
        $requirement = Courserequirement::where('id',$id)->first();
        $requirement->title  = $request->title;
        $requirement->save();
        return redirect()->back()->with('success','Successfully Updated The Requirement');
    }


    public function requirements_delete($id){
        $requirement = Courserequirement::where('id',$id)->first();
        $requirement->delete();
        return redirect()->back()->with('success','Successfully Deleted The Requirement');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */



    public function addnew_req(request $request, $id)
        {
            if($request->requirements)
            {
                foreach($request->requirements as $item){
                    $course = new Courserequirement;
                    $course->title = $item;
                    $course->course_id = $id;
                    $course->save();
                }
            }
            return redirect()->back()->with('success','Successfully Added Requirement');
        }








        // ------------ Out Come -----------

        public function update_outcome(Request $request , $id){
                
                $outcome = Courseoutcome::where('id',$id)->first();
                $outcome->title  = $request->title;
                $outcome->save();
                return redirect()->back()->with('success','Successfully updated The Outcome');
        }

        // ------- Out Come ---------

        public function delete_outcome($id){
            $requirement = Courseoutcome::where('id',$id)->first();
            $requirement->delete();
            return redirect()->back()->with('success','Successfully Deleted The OutCome');
        }


        public function outcomes_new_save(Request $request, $id)
        {

              if($request->outcomes)
                {
                    foreach($request->outcomes as $item){
                        $course = new Courseoutcome;
                        $course->title = $item;
                        $course->course_id = $id;
                        $course->save();
                    }
                }
            return redirect()->back()->with('success','Successfully Added outCome');
        }


    }
