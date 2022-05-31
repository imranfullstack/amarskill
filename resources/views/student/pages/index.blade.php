@extends('student.master')
@section('main_aria')



<section class="page-content-aria">
        <div class="container">

@include('student.asset.message')


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
                    <h2>My Courses</h2>
                  </div>
                </div>
                  <div class="row">



                    @foreach($orderitem as $item)
                   @if($item->order->status == 1)
                      <div class="col-md-4">
                              <div class="single-course">
                                <a href="{{route('student.play.list',$item->course->slug)}}">
                                  @if($item->course->video_thumbnail)
                                  <img src="{{asset('public/img/upload/course/'.$item->course->video_thumbnail)}}">
                                  @else 
                                  <img src="{{asset('public/img/upload/course/1.jpg')}}">
                                  @endif
                                </a>
                                  <div class="course-content-aria">
                                      <div class="course-top-single">
                                          <div class="row">
                                              <div class="col-md-12">
                                                  <div class="left-top">
                                                       <span> {{Str::limit($item->course->user->name ,25 , $end='...')}}</span>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                              <h3>
                                <a href="{{route('student.play.list',$item->course->slug)}}">
                                  {{Str::limit($item->course->course_title , 20 , $end='...')}}
                                </a>
                              </h3>
                                      <div class="foot-sec">
                                          <div class="row">
                                              <div class="col-md-12">
                                                  <a href="{{route('single.course',$item->course->slug)}}" class="course-single-btn btn-block">Course Details</a>
                                              </div>
                                              <div class="col-md-12">
                                                  <a href="{{route('student.play.list',$item->course->slug)}}" class="btn btn-info btn-block btn-common-dksld">Start Lession</a>
                                              </div>
                                              <div class="col-md-12">
                                                  <a href="#" class="btn btn-default btn-block btn-common-dksld">View Certificate</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                      </div>
                  @endif


                    @endforeach


                  </div>
              </div>
          </div>
        </div>
      </div>
    </div>



        </div>
    </section>




@endsection()          