<?php

namespace App\Http\Controllers\Instructor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\User;
use App\Models\profile;
use App\Models\Certificate;
use App\Models\Skill;
use App\Models\Degree;
use Carbon\Carbon;
use Image;
use Str;
use DB;


class InstructorProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */



    public function updatebasic(Request $request){

            $validated = $request->validate([
                'name' => 'required',
                'phone' => 'required',
            ]);

            
        $user = user::where('id',Auth::user()->id)->first();
        $user->name = $request->name;
        $user->phone = $request->phone;
        $user->save();
        return redirect()->back()->with('success','Succssfully update Profile Information!');
    }






    public function index()
    {
        $skill = Skill::where('user_id',Auth::user()->id)->get();
        $profile = profile::where('user_id',Auth::user()->id)->first();


        
            return view('instructor.pages.profile.index', compact('profile', 'skill'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function profileimage(Request $request)
    {
        $user = User::where('id',Auth::user()->id)->first();
        $imagecheck = $user->image;


        // -------- Again -------------



if($request->file){
        if($imagecheck){
        // ------- File Upload When the image is not UPloaded
            if($request->file){
                // upload Profile Picture Image Upload 
                if($request->hasFile('file')){
                    $imagefound = public_path('img/upload/profilepic/'.$imagecheck);
                    // ------ Image Found -------
                   if(file_exists($imagefound)){
                        unlink($imagefound);
                    }
                    $image = $request->file('file');
                    $img = $user->id.'-'.uniqid().'.'. $image->getClientOriginalExtension();
                    $request->file->move(public_path('/img/upload/profilepic/'), $img);
                    $user->image = $img;
                    $user->save();
                    return redirect()->back()->with('success','Succssfully Upload Image!');
                }
            }
        // ------- File Upload When the image is not UPloaded End
        }else{
        // ------- File Upload When the image is not UPloaded
            if($request->file){
                // upload Profile Picture Image Upload 
                if($request->hasFile('file')){
                    $image = $request->file('file');
                    $img = $user->id.'-'.uniqid().'.'. $image->getClientOriginalExtension();
                    $request->file->move(public_path('/img/upload/profilepic/'), $img);
                    $user->image = $img;
                    $user->save();
                    return redirect()->back()->with('success','Succssfully Upload Image!');
                }
            }
        // ------- File Upload When the image is not UPloaded End
        }
}else{
    return redirect()->back()->with('error','Something Is wrong');
}






    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function profileinfo(Request $request)
    {
        $check = profile::where('user_id',Auth::user()->id)->first();

        if($check){

            $profile = profile::where('user_id',Auth::user()->id)->first();
            $user =  Auth::user()->id;
            $profile->user_id = $user;
            $profile->bio = $request->bio;
            $profile->title = $request->teachertitle;
            $profile->job_title = $request->jobtitle;
            $profile->facebook_link = $request->facebooklink;
            $profile->twitter_link = $request->twitterlink;
            $profile->linkedin_link = $request->linkedinlink;
            $profile->youtube_link = $request->youtubelink;
            $profile->save();
            return redirect()->back()->with('success','Succssfully Update Profile!');

        }else{
            $user =  Auth::user()->id;
            $profile = new profile;
            $profile->user_id = $user;
            $profile->bio = $request->bio;
            $profile->title = $request->teachertitle;
            $profile->job_title = $request->jobtitle;
            $profile->facebook_link = $request->facebooklink;
            $profile->twitter_link = $request->twitterlink;
            $profile->linkedin_link = $request->linkedinlink;
            $profile->youtube_link = $request->youtubelink;
            $profile->save();
            return redirect()->back()->with('success','Succssfully Added Profile!');
        }


    }



    // -------- Add Certificate ---------

    public function addcertificate(Request $request){

            $validated = $request->validate([
                'year' => 'required',
            ]);


      $coursename = $request->coursename;
      $certificatename = $request->certificatename;
      $year = $request->year
;
      foreach ($request->coursename as $key => $insert) {
            $save = [
                    'user_id' => Auth::user()->id,
                    'course_name' => $coursename[$key],
                    'certificate_form' => $certificatename[$key],
                    'year' => $year[$key],

            ];
            DB::table('certificates')->insert($save);
      }
            return redirect()->back()->with('success','Succssfully Added New Certificate!');
    }


    public function certificateremove($id){
        $certificate = Certificate::where('id',$id)->first();
        $certificate->delete();
            return redirect()->back()->with('success','Succssfully Removed Certificate!');
    }


    // -------- Add Certificate ---------

    public function addskill(Request $request){

        if($request->skills){                
            foreach ($request->skills as $item) {
                $skill = new Skill;
                $skill->user_id = Auth::user()->id;
                $skill->skill = $item;
                $skill->save();
            }
            return redirect()->back()->with('success','Succssfully Added new Skill!');
        }
    }







    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    // ------ Add Instructor Degree -----
    public function adddegree(Request $request){
     $validated = $request->validate([
        'year' => 'required',
    ]);

              $institute_name = $request->institute_name;
              $degree_name = $request->degree_name;
              $year = $request->year;

      foreach ($request->institute_name as $key => $insert) {
            $save = [
                    'user_id' => Auth::user()->id,
                    'institute_name' => $institute_name[$key],
                    'degree_name' => $degree_name[$key],
                    'year' => $year[$key],
                    'created_at' => carbon::now(),

            ];
            DB::table('degrees')->insert($save);
      }
            return redirect()->back()->with('success','Succssfully Added New Degree!');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function removedegree($id)
    {
        $degree = Degree::where('id',$id)->first();
        $degree->delete();
        return redirect()->back()->with('success','Succssfully Delete A Degree!');



    }

    // ---------- Remove Skill ----------

    public function removeskill($id){
        $skill = skill::where('id',$id)->first();
        $skill->delete();
        return redirect()->back()->with('success','Succssfully Delete A Skill!');
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
}
