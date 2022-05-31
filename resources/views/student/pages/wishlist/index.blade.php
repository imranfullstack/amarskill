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
                    <h2>My Wishlist</h2>
                  </div>
                </div>
                  <div class="row">

                    <div class="container-fluid">
                      <div class="col-md-12">
                        <div class="my-cerfiticate-table">
                          <table class="table">
                              <thead>
                                <tr>
                                  <th scope="col">SL</th>
                                  <th scope="col">Course Name</th>
                                  <th scope="col">Price</th>
                                  <th scope="col">Instructor</th>
                                  <th scope="col" width="20%">Action</th>
                                </tr>
                              </thead>
                              <tbody>
@php
  
  $wishlist = App\Models\Wishlist::where('user_id',Auth::user()->id)->get();
  $i = 1;
@endphp                
              
                @foreach($wishlist as $item)
                                <tr>
                                  <th scope="row">{{$i++}}</th>
                                  <td>{{$item->course->course_title}}</td>
                                  <td>{{$item->price}} Taka</td>
                                  <td>{{$item->course->user->name}}</td>
                                  <td>


            <a href="{{route('add.cart',$item->course->id)}}" class="btn btn-warning"><i class="fa fa-shopping-cart"></i></a>
            <a href="{{route('single.course',$item->course->slug)}}" class="btn btn-primary"><i class="fa fa-eye"></i></a>
            <a href="{{route('wishlist.remove',$item->id)}}" class="btn btn-danger"><i class="fa fa-trash"></i></a>

            
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
        </div>
      </div>
    </div>



        </div>
    </section>

    
@endsection()          