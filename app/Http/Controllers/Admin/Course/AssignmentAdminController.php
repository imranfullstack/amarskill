<?php

namespace App\Http\Controllers\Admin\Course;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;

class AssignmentAdminController extends Controller
{


	public function index()
    {
    	$course = Course::orderby('id','desc')->where('status','1')->get();

    	



        return view('admin.pages.courses.assignment.index', compact('course'));
    }


}
