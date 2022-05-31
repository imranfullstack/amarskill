<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\order;
use App\Models\Orderitem;
use App\Models\Checkout;
use App\Models\Course;
use App\Models\Cart;
use Auth;
use str;
use carbon\carbon;

class CheckoutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store()
    {
        //
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
    public function checkout(Request $request)
    {




        $order = new order;
        $order->user_id = Auth::user()->id;
        $order->payment_type = 'shurjoPay';
        $order->total = $request->total;
        $order->subtotal = $request->subtotal;
        $order->cupon_discount = $request->discount;
        $order->invoice_no = random_int(100000, 999999);
        $order->created_at = carbon::now();
        $order->save();

        // ------ Cart Page ----
        $carts = Cart::where('user_ip',request()->ip())->get(); 



        foreach($carts as $item){

            $orderitem = new Orderitem;
            $orderitem->user_id = Auth::user()->id;
            $orderitem->instructor_id = $item->course->user_id;
            $orderitem->order_id = $order->id;
            $orderitem->course_id = $item->course_id;
            $orderitem->course_name = $item->course->course_title;
            $orderitem->created_at = carbon::now();
            $orderitem->save();
        }

        $checkout = new Checkout;
        $checkout->user_id = Auth::user()->id;
        $checkout->name = Auth::user()->name;
        $checkout->email = Auth::user()->email;
        $checkout->save();


        if(session()->has('cupon')){
            session()->forget('cupon');
        }
        
      
        Cart::where('user_ip',request()->ip())->delete(); 

        return redirect()->route('student.dashboard')->with('success','success Buy This Course!');






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
