@extends('frontend.master')

@section('title') Instructor  @endsection

@section('style')

<link rel="stylesheet" type="text/css" href="{{asset('/public/frontend/home.css')}}">


<style type="text/css">
  .single-course.teacher-dlsldc .left-foot ul li a {
    color: #000;
    padding: 7px 4px;
    display: inline-block;
}
.course-content-aria p {
    color: #000;
    text-align: center;
    font-weight: 600;
}

.image-dlslkdc.profilepic {
    height: 280px;
    width: 100%;
}


</style>
@endsection()
@section('main_aria')


<section class="page-banner text-centerkdlskc0">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="page-nav-left">
                    <h3>Browse Instructors</h3>
                </div>
            </div>
            <div class="col-md-6">
                <div class="right-nav-top-aria">
                    <ul>
                        <li>Home</li>
                        <li>/</li>
                        <li>Browse Instructors</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>



<section class="page-content-aria">
        <div class="container">



  <div class="course-aria">
      <div class="container">
        <div class="row">
          <div class="col-md-3">


            <div class="left-aria-dkdkcflc" id="sidebar">

                  <div class="left-filtter-aria-style">
                       <h3>Instructors</h3>
                       <ul>
                         <li><a href="#"> <i class="fa fa-caret-right"></i>ALL INSTRUCTORS</a></li>
                         <li><a href="#"> <i class="fa fa-caret-right"></i> FEATURED INSTRUCTORS</a></li>
                         <li><a href="#"> <i class="fa fa-caret-right"></i> TOP INSTRUCTORS</a></li>
                         <li><a href="#"> <i class="fa fa-caret-right"></i> RECENT INSTRUCTORS</a></li>
                       </ul>
                  </div>
            </div>
          </div>
          <div class="col-md-9">
              <div class="right-side-course-dkdkfd411c">
                <div class="container-fluid">
                  <div class="row">
                    <h2>Browse Instructors</h2>
                  </div>
                </div>
                  <div class="row">
@foreach($instructor as $item)   
  @if($item->profile)
                      <div class="col-md-4">
                        <div class="single-course teacher-dlsldc">


                        @if($item->image)  
                          <a href="{{route('instructor.profile',$item->username)}}">
                            <div class="image-dlslkdc profilepic" style="background: url({{asset('/public/img/upload/profilepic/'.$item->image)}}) no-repeat center center /cover"></div> 
                          </a>
                        @else
                          <a href="{{route('instructor.profile',$item->username)}}">
                            <div class="image-dlslkdc profilepic" style="background: url({{asset('/public/img/upload/course/1.jpg')}}) no-repeat center center /cover"></div> 
                          </a>
                        @endif
                            <div class="course-content-aria">
                              <a href="{{route('instructor.profile',$item->username)}}">
                                <h3>{{Str::limit($item->name,'20',$end='...')}}</h3>
                              </a>
                                <p>
                                    {{$item->profile->title}}
                                    <br>
                                    {{$item->profile->job_title}}
                                </p>
                                <div class="foot-sec">
                                    <div class="row">
                                        <div class="col-md-6 col-xs-6">
                                            <div class="left-foot">
                                                <ul>
                                                    <li>
                                                      @if($item->profile->facebook_link)
                                                        <a href="{{$item->profile->facebook_link}}" target="_blank"><i class="fa fa-facebook"></i></a>
                                                      @else

                                                      @endif
                                                    </li>
                                                    <li>
                                                      @if($item->profile->twitter_link)
                                                        <a href="{{$item->profile->twitter_link}}" target="_blank"><i class="fa fa-twitter"></i></a>
                                                      @else

                                                      @endif
                                                    </li>
                                                    <li>
                                                      @if($item->profile->linkedin_link)
                                                        <a href="{{$item->profile->linkedin_link}}" target="_blank"><i class="fa fa-linkedin"></i></a>
                                                      @else

                                                      @endif
                                                    </li>
                                                    <li>
                                                      @if($item->profile->youtube_link)
                                                        <a href="{{$item->profile->youtube_link}}" target="_blank"><i class="fa fa-youtube"></i></a>
                                                      @else

                                                      @endif
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xs-6" style="text-align: right;">
                                            <a href="{{route('instructor.profile',$item->username)}}" class="course-single-btn">More Info</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
  @endif
                    <!-- --- Single Instractor Item Start--- -->      

                    <!-- --- Single Profile Image End--- -->
@endforeach    
                  </div>
              </div>
          </div>
        </div>
      </div>
    </div>



        </div>
    </section>



@endsection

@section('script')


	
@endsection()