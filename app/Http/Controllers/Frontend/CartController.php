<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\Course;
use App\Models\Cart;
use carbon\carbon;
class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::check()){

            $cart = cart::where('user_ip', request()->ip())->get();

            $total = cart::where('user_ip', request()->ip())->sum('price');



            return view('frontend.pages.cart' , compact('cart' , 'total'));
        }else{
            return redirect()->route('login');
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function addtocart($id)
    {


        if(Auth::check()){
             // -- Course Controller -- 
            $course = course::find($id);
            // -- Cart Controller -- 

            $check = cart::where('user_ip', request()->ip())->where('course_id',$id)->first();

            if($check){
                return redirect()->route('cart.page')->with('success','Purchase This Course Today');
            }else{
                $cart = new cart;
                $cart->user_ip = request()->ip(); 
                $cart->course_id = $course->id; 

                if($course->course_price == NULL){
                     $cart->price = 0; 
                }else{
                    $cart->price = $course->course_price; 
                }

                $cart->qty = 1; 
                $cart->created_at = carbon::now(); 
                $cart->save();
                return redirect()->route('cart.page')->with('success','Successfully Added a New Course in your Cart!');
            }
            }else{
                return redirect()->route('login')->with('alart','Please Login First');
            }

    }

    public function pluscart($id)
    {
        $course = course::find($id);
        // -- Cart Controller -- 
        $check = Cart::where('user_ip', request()->ip())->where('course_id',$id)->first();
        if($check){
            return redirect()->back()->with('alart','You already Have This Course in your Cart!');
        }else{
            $cart = new cart;
            $cart->user_ip = request()->ip(); 
            $cart->course_id = $course->id; 
                if($course->course_price == NULL){
                     $cart->price = 0; 
                }else{
                    $cart->price = $course->course_price; 
                }
            $cart->qty = 1; 
            $cart->created_at = carbon::now(); 
            $cart->save();
            return redirect()->back()->with('success','Successfully Added a New Course in your Cart!');
        }

    }

    public function viewcart(){


            $cart = cart::where('user_ip', request()->ip())->get();
            $total = cart::where('user_ip', request()->ip())->sum('price');
            return view('frontend.pages.cart-view' , compact('cart' , 'total'));
    }








    public function cartremove($id){
        $cart = Cart::find($id);
        $cart->delete();
        return redirect()->back()->with('alart','Course HasBeed Removed Form This Cart! ');
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
