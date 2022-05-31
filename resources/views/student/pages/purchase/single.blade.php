@extends('student.master')
@section('style')
	<style type="text/css">

	</style>
@endsection
@section('main_aria')





<section class="page-content-aria">
        <div class="container">



  <div class="course-aria">
      <div class="container">
        <div class="row">
          <div class="col-md-3">

              @include('student.asset.left-nav')
          </div>
          <div class="col-md-9">
              <div class="right-side-course-dkdkfd411c">
                <div class="container-fluid">
                  <div class="row">
                    <h2>My Purchase</h2>
                  </div>
                </div>
                <div class="row">
	      <table class="table  table-bordered">
  <thead>
    <tr>
      <th scope="col" width="50%">Lable</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Order Date</th>
      <td>{{ $order->created_at->format('d/m/Y')}}</td>
    </tr>
    <tr>
      <th scope="row">Price</th>
      <td>{{$order->total}}</td>
    </tr>
    <tr>
      <th scope="row">Invoice No</th>
      <td>#{{$order->invoice_no}}</td>
    </tr>
  </tbody>
</table>
                </div>
                  <div class="row">

                    <div class="container-fluid">
                      <div class="col-md-12">
                        <div class="my-cerfiticate-table">
                          <table class="table">
                              <thead>
                                <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">Image</th>
                                  <th scope="col">Course Name</th>
                                  <th scope="col">Price</th>
                                  <th scope="col">View</th>
                                </tr>
                              </thead>
                              <tbody>
                              	@php $i = 1 @endphp
                              	@foreach($items as $item)
                              		<tr>
                              			<td>{{$i++}}</td>
                              			<td>
                              				@if($item->course->video_thumbnail)
                              					<img src="{{asset('public/img/upload/course/'.$item->course->video_thumbnail)}}" width="50px" height="50px">
                              				@else
                              					<img src="{{asset('public/img/upload/course/1.jpg')}}" width="50px" height="50px">
                              				@endif
                              			</td>
                              			<td>{{Str::limit($item->course_name, 50, $end='...')}} </td>
                              			<td>{{$item->course->course_price}} Taka</td>
                              			<td>
                              				<a href="{{route('single.course',$item->course->slug)}}" class="btn btn-primary" target="_blank">
                              					<i class="fa fa-eye"></i>
                              				</a>
                              			</td>
                              		</tr>
                              	@endforeach	
                    
                              </tbody>
                            </table>
                         </div>
                      </div>
                      <div class="col-md-12">
                      	<a href="{{route('student.purchase.list')}}" class="btn btn-primary btn-sm btn-block">
                      		Go back
                      	</a>
                      </div>
                    </div>


                  </div>
              </div>
          </div>
        </div>
      </div>
    </div>



        </div>
    </section>

@endsection()          