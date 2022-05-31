<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Wishlist;
use Auth;
use Carbon\Carbon;

class WishlistController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::check()){
            $wishlist = wishlist::where('user_id',Auth::user()->id)->get();
            $total = wishlist::where('user_id',Auth::user()->id)->sum('price');
            return view('frontend.pages.wishlist' , compact('wishlist' , 'total'));
        }else{
            return redirect()->route('login');
        }

    }


    public function addtowishlist($id){



            if(Auth::check()){
             // -- Course Controller -- 
            $course = course::find($id);
            // -- Cart Controller -- 

            $check = wishlist::where('user_ip', request()->ip())->where('course_id',$id)->first();

            if($check){
                return redirect()->back()->with('alart','You already Have This Course in your Cart!');
            }else{
                $wishlist = new Wishlist;
                $wishlist->user_ip = request()->ip(); 
                $wishlist->course_id = $course->id; 
                $wishlist->user_id = Auth::user()->id; 
                $wishlist->price = $course->course_price; 
                $wishlist->qty = 1; 
                $wishlist->created_at = carbon::now(); 
                $wishlist->save();
                return redirect()->route('student.wishlist.page')->with('success','SuccessFully Added A Product On Wishlist!');

            }
            }else{
                return redirect()->route('login')->with('alart','Please Login First');
            }


    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function wishlistremove($id)
    {
        $wishlist = wishlist::where('id',$id)->first();
        $wishlist->delete();
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
    public function destroy($id)
    {
        //
    }
}
