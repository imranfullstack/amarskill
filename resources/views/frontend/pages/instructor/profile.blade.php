@extends('frontend.master')

@section('title') Instructor  @endsection

@section('style')

<style type="text/css">
	a.course-single-btn {
	    padding: 6px 14px;
	}
	
	
	
	/*---- Page Custom CSS ---*/

.image-dlslkdc {
    width: 100%;
    height: 167px;

}

.image-dlslkdc.profilepic {
    height: 280px;
    width: 100%;
}
	/*---- Page Custom CSS End---*/
	
	
</style>
@endsection()
@section('main_aria')



<section class="page-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="page-nav-left">
                        <h3> <i class="fa fa-users"></i>  {{$instructor->name}} Profile</h3>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-nav-top-aria">
                        <ul>
                            <li>Home</li>
                            <li>/</li>
                            <li>Profile</li>
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
                       <h3>Dashboard</h3>
                       <ul>
                         <li>
                            <a href="{{URL::current()}}">
                             <i class="fa fa-users"></i>
                                  Profile
                            </a>
                        </li>
                       </ul>
                  </div>
                          <div class="line"></div>
                  <div class="instrator-parsonal-info">
                        <div class="education-info">
                          <h4>Enrolment</h4>
                          <div class="line"></div>
                          <h5>57 Enrollment Complete</h5>
                        </div>
                        <div class="line"></div>
                        <div class="education-info">
                          <h4>EDUCATION</h4>
                          <div class="line"></div>
@php 
  $degree = App\Models\Degree::where('user_id',$instructor->id)->get();
@endphp


@foreach($degree as $item)
  <div class="education-dlskd">
      <h5>{{$item->institute_name}}</h5>
      <p>{{$item->degree_name}} &amp; {{$item->year}}</p>
  </div>
@endforeach
                        </div>

                          <div class="line"></div>
                        <div class="skill-instractor">
                          <h4>SKILL</h4>
                          <div class="line"></div>
                          <ul>

@php 
  $skill = App\Models\Skill::where('user_id',$instructor->id)->get();
@endphp

                              @foreach($skill as $item)
                                              <li>{{$item->skill}}</li>
                              @endforeach
                          </ul>
                        </div>
                          <div class="line"></div>
                        <div class="certification-instractor">
                          <h4>CERTIFICATION</h4>
                          <div class="line"></div>
                          <ul>

@php 
  
  $certificate = App\Models\Certificate::where('user_id',$instructor->id)->get();



@endphp         
@foreach($certificate as $item)             

                              <li>
                                <div class="single-certificate-kd1c3sd">
                                    <h6>{{$item->course_name}}</h6>
                                    <p>{{$item->certificate_form}}, {{$item->year}}</p>
                                </div>
                              </li>
@endforeach                            
                          </ul>
                        </div>
                  </div>

            </div>
          </div>
          <div class="col-md-9">
              <div class="right-side-course-dkdkfd411c">
                <div class="container-fluid">
                  <div class="row">
                    <h2>{{$instructor->name}} Information</h2>
                  </div>
                </div>
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-md-3">
                        <div class="profile-image-ds">
                            <img src="{{asset('/public/img/upload/profilepic/'.$instructor->image)}}">
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="profile-info-dkslc0">
                            <p>
                              {{$instructor->profile->bio}}
                            </p>
                        </div>
                    </div>
                  </div>




                  <div class="profile-info-table">
                    <table class="table">
  <thead>
    <tr>
      <th scope="col">Email</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Follow Me</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th><a href="mailto:{{$instructor->email}}">{{$instructor->email}}</a></th>
      <th><a href="tel:{{$instructor->phone}}">{{$instructor->phone}}</a></th>
      <td class="follow-him-dksldc">
        @if($instructor->profile->facebook_link)
        <a href="{{$instructor->profile->facebook_link}}" target="_blank">
            <i class="fa fa-facebook"></i>
        </a>
        @else

        @endif

        @if($instructor->profile->twitter_link)
        <a href="{{$instructor->profile->twitter_link}}" target="_blank">
            <i class="fa fa-twitter"></i>
        </a>
        @else

        @endif


        @if($instructor->profile->linkedin_link)
        <a href="{{$instructor->profile->linkedin_link}}" target="_blank">
            <i class="fa fa-linkedin"></i>
        </a>
        @else

        @endif
        
        @if($instructor->profile->youtube_link)
        <a href="{{$instructor->profile->youtube_link}}" target="_blank">
            <i class="fa fa-youtube"></i>
        </a>
        @else

        @endif

      </td>
    </tr>
  </tbody>
</table>
                  </div>

@php 
  
    $course = App\Models\Course::orderby('id','desc')->where('user_id',$instructor->id)->where('status',1)->get();
    $coursecount = App\Models\Course::orderby('id','desc')->where('user_id',$instructor->id)->where('status',1)->count();

@endphp

                  <div class="line"></div>
                  <div class="course-profile-ss">
                    <h3>Course ( {{$coursecount}} )</h3>
                  </div>
                  <div class="line"></div>
                    <div class="row">



@foreach($course as $item)

                        <div class="col-md-4">
                                <div class="single-course">
                                  <a href="{{route('single.course',$item->slug)}}">

                                    @if($item->video_thumbnail)
                                    <div class="image-dlslkdc" style="background: url({{asset('public/img/upload/course/'.$item->video_thumbnail)}}) no-repeat center center /cover"></div> 
                                    @else
                                    <div class="image-dlslkdc" style="background: url({{asset('public/img/upload/course/1.jpg')}}) no-repeat center center /cover"></div> 
                                    @endif
                                    
                                  </a>
                                    <div class="course-content-aria">
                                        <div class="course-top-single">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="left-top">
                                                         <span>
                                                            <a href="{{route('instructor.profile',$item->user->username)}}">
                                                              <span>   {{Str::limit($item->user->name, 7, $end='...')}}</span>
                                                            </a>
                                                          </span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 single-right" style="text-align: right;">
                                                    <ul>
                                                        <li class="cart-icon-single">
                                                            <a href="{{route('cart.plus',$item->id)}}"><i class="fa fa-shopping-cart"></i></a>
                                                        </li>
                                                        <li class="heart-icon-single">
                                                            <a href="{{route('wishlist.add',$item->id)}}">
                                                                <i class="fa fa-heart" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li class="shere-icon-single">
                                                            <a href="#">
                                                                <i class="fa fa-share-alt"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                <h3>
                                  <a href="{{route('single.course',$item->slug)}}">

                                    {{Str::limit($item->course_title, 20, $end='...')}}
                                  </a>
                                </h3>
                                        <div class="foot-sec">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="left-foot">
                                                         <span>
                                                            @if($item->course_price)
                                                                ৳ {{$item->course_price}}
                                                            @else
                                                                FREE
                                                            @endif
                                                         </span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6" style="text-align: right;">
                                                    <a href="{{route('add.cart',$item->id)}}" class="course-single-btn">Buy Now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
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