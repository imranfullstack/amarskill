@extends('instructor.master')

@section('style') 

@endsection
@section('main_aria')

@php 
    $course = App\Models\Course::where('user_id',Auth::user()->id)->where('status',1)->count();
    $enroll = App\Models\Orderitem::where('instructor_id',Auth::user()->id)->count();
    $earning = App\Models\Orderitem::where('instructor_id',Auth::user()->id)->get();
    $assignment = App\Models\Courseassignment::where('user_id',Auth::user()->id)->count();
@endphp



          <!-- Container-fluid starts-->
          <div class="container-fluid dashboard-default-sec">
            <div class="row">

              <!-- ----- 2nd Row --- -->




              <!-- ----- 2nd Row --- -->
              <!-- ----- 3rd Row --- -->

@php 

	$course = App\Models\Coursefaq::orderby('short_order','asc')->where('user_id',Auth::user()->id)->get();
	$i = 1;
@endphp


          <div class="container-fluid">
            <div class="row">
              <!-- Zero Configuration  Starts-->
              <div class="col-sm-12">
                <div class="card">
                  <div class="card-header">
                    <h5>Recent Payout Request</h5>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="display" id="basic-1">
                        <thead>
                          <tr>
                            <th>SL</th>
                            <th>Title</th>
                            <th>Status</th>
                            <th width="50px">order</th>
                            <th></th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>


@foreach($course as $item)
                          <tr>
                            <td>{{$i++}}</td>
                            <td>{{$item->title}}</td>
                            <td>
                            	@if($item->status == 1)
                            		<span class="badge badge-success">Active</span>
                            	@else
                            		<span class="badge badge-danger">Inactive</span>
                            	@endif
                            </td>
                            <td>
                            	<input type="number" name="" value="{{$item->short_order}}" width="50px">
                            </td>
                            <td>
                            	<button class="btn btn-primary btn-sm">UPDATE</button>
                            </td>
                            <td>
                            	<a href="#" class="btn btn-success">
                            		<i class="fa fa-eye"></i>
                            	</a>
                            	<a href="#" class="btn btn-primary">
                            		<i class="fa fa-edit"></i>
                            	</a>
                            	<a href="#" class="btn btn-danger">
                            		<i class="fa fa-trash"></i>
                            	</a>
                            </td>
                          </tr>
@endforeach


                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>




              <!-- ----- 3rd Row End--- -->
            </div>
          </div>
@endsection()          