<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\contact;
use App\Models\Contactform;

class AdminContactPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contact = contact::first();
        return view('admin.pages.page.contact', compact('contact'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function contact_store(Request $request)
    {
        $contact = new contact;

        $contact->phone = $request->phone;
        $contact->email = $request->email;
        $contact->location = $request->location;
        $contact->save();
        return redirect()->back()->with('success','Succssfully Added Contact Inforatmion');
    }
     // Update Content 
    public function contact_update(Request $request, $id){
            $contact = contact::where('id',$id)->first();
            $contact->phone = $request->phone;
            $contact->email = $request->email;
            $contact->location = $request->location;
            $contact->save();
            return redirect()->back()->with('success','Succssfully updateed Contact Succssfully!');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function social_store(Request $request)
    {
            $contact = contact::first();
        $contact->facebook_link = $request->facebook_link;
        $contact->twitter_link = $request->twitter_link;
        $contact->linkedin_link = $request->linkedin_link;
        $contact->youtube_link = $request->youtube_link;
        $contact->instagram_link = $request->instagram_link;
        $contact->save();
        return redirect()->back()->with('success','Succssfully Added Social Links Inforatmion');


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function contact_list()
    {
        $contact = Contactform::orderby('id','desc')->get();
        return view('admin.pages.contact.index', compact('contact'));
    }

    public function contact_view($id)
    {
        $contact = Contactform::where('id',$id)->first();
        return view('admin.pages.contact.view', compact('contact'));
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
