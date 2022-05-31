<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Cupon;

class AdminCuponController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
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
        $cupon = Cupon::where('id',$id)->first();
        $courseid =  $cupon->course_id;
        return view('admin.pages.courses.cupon.view', compact('courseid','cupon'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cupon = Cupon::where('id',$id)->first();

        $courseid =  $cupon->course_id;
        return view('admin.pages.courses.cupon.edit', compact('courseid','cupon'));
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

        $cupon = cupon::where('id',$id)->first();
        $cupon->cuponname = $request->cuponname;
        $cupon->cupon_code = $request->cupon_code;
        $cupon->course_id = $request->course;
        $cupon->discount = $request->discount;
        $cupon->validtill = $request->validtill;
        $cupon->save();
        return redirect()->route('admin.courses.coupons.add')->with('success','Successfully Updated Cupon!');


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function trash($id)
    {
        $coupon = Cupon::where('id',$id)->first();
        $coupon->delete();
        return redirect()->back()->with('success','Successfully Deleted Category ! ');
    }
}
