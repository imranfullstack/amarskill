@extends('frontend.master')
@section('style')
<link rel="stylesheet" type="text/css" href="{{asset('public/frontend/home.css')}}">
<style type="text/css">
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





<!------------------ Main Container ------------->

<section class="banner-aria">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="banner-left-aria">
                    <h2>Best E-larning <span style="color: #63A4FF">Platform <br> In Bangladesh</span></h2>
                    <p>Take High-Quality Online Courses from the Best Online Instructors of Bangladesh & Develop Your Skills. Get a deal on courses On AmarSkill, and buy more to save more on a future purchase. Ends Dec.</p>
                    <a href="{{route('course')}}">Browse Course</a>


                </div>
            </div>
            <div class="col-md-5"></div>
        </div>
    </div>
</section>
<!------------------ Main Container End------------->
 <section class="popular-course-section">
        <div class="container">
            <div class="row">
                <div class="page-title">
                    <h2>Features <span style="color: #0D4898">Courses</span></h2>
                    <p>Features Course In This Week</p>
                </div>
            </div>
            <div class="populer-course-aria">
                <div class="row">
                    <div class="active-course-slide owl-carousel">


@foreach($populercourse as $item)                        


                                <div class="single-course">
                                  <a href="{{route('single.course',$item->slug)}}">

                                    @if($item->video_thumbnail)
                                    <div class="image-dlslkdc" style="background: url({{asset('public/img/upload/course/'.$item->video_thumbnail)}}) no-repeat center center /cover"></div> 
                                    @else
                                    <div class="image-dlslkdc" style="background: url({{asset('public/img/upload/course/1.jpg')}}) no-repeat center center /cover"></div> 
                                    @endif

                       <!--              @if($item->video_thumbnail)
                                        <img src="">
                                    @else
                                        <img src="{{asset('img/upload/course/1.jpg')}}">
                                    @endif -->
                                  </a>
                                    <div class="course-content-aria">
                                        <div class="course-top-single">
                                            <div class="row">
                                                <div class="col-md-7 col-xs-6">
                                                    <div class="left-top">
                                                         <span>
                                                            <a href="{{route('instructor.profile',$item->user->username)}}">
                                                              <span  title="{{$item->user->name}}">   {{Str::limit($item->user->name, 12, $end='...')}}</span>
                                                            </a>
                                                          </span>
                                                    </div>
                                                </div>
                                                <div class="col-md-5  col-xs-6 single-right" style="text-align: right;">
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
                                  <a href="{{route('single.course',$item->slug)}}" title="{{$item->course_title}}">

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
@endforeach                        
                    </div>

                </div>
            </div>
    </div>
 </section>
<!-- Feature Post Section  End -->
<!------------------ Main Container End------------->
 <section class="popular-course-section with-bg-dkslc">
        <div class="container">
            <div class="row">
                <div class="page-title">
                    <h2>Popular <span style="color: #10D9EF">Courses</span></h2>
                    <p>Popular Course In This Week</p>
                </div>
            </div>
            <div class="populer-course-aria">
                <div class="row">
                    <div class="active-course-slide owl-carousel">

@foreach($featurescourse as $item)                        

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
                                                <div class="col-md-7 col-xs-6">
                                                    <div class="left-top">
                                                         <span>
                                                            <a href="{{route('instructor.profile',$item->user->username)}}" title="{{$item->user->name}}">
                                                              <span>   {{Str::limit($item->user->name, 12, $end='...')}}</span>
                                                            </a>
                                                          </span>
                                                    </div>
                                                </div>
                                                <div class="col-md-5 col-xs-6 single-right" style="text-align: right;">
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
                                  <a href="{{route('single.course',$item->slug)}}" title="{{$item->course_title}}">

                                    {{Str::limit($item->course_title, 19, $end='...')}}
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
@endforeach  
                    </div>

                </div>
            </div>
    </div>
 </section>
<!-- Feature Post Section  End -->

<!------------------ Main Container End------------->
 <section class="popular-course-section">
        <div class="container">
            <div class="row">
                <div class="page-title">
                    <h2>Top <span style="color: #0D4898">Instructor</span></h2>
                    <p>Popular Course In This Week</p>
                </div>
            </div>
            <div class="populer-course-aria instructor-dksldc">
                <div class="row">
                    <div class="active-course-slide owl-carousel">

                    <!-- --- Single Profile Image --- -->

@foreach($instructor as $item)                    
  @if($item->profile)
                        <div class="single-course teacher-dlsldc">


                        @if($item->image)  
                          <div class="image-dlslkdc profilepic" style="background: url({{asset('public/img/upload/profilepic/'.$item->image)}}) no-repeat center center /cover"></div> 
                        @else
                          <div class="image-dlslkdc profilepic" style="background: url({{asset('public/img/upload/course/1.jpg')}}) no-repeat center center /cover"></div> 
                        @endif
                            <div class="course-content-aria">
                              <a href="{{route('instructor.profile',$item->username)}}" title="{{$item->name}}">
                                <h3>{{$item->name}}</h3>
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
                                            <a href="{{route('instructor.profile',$item->username)}}" title="{{$item->name}}" class="course-single-btn">More Info</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
  @endif
                    <!-- --- Single Profile Image End--- -->
@endforeach                    

                    </div>

                </div>
            </div>
    </div>
 </section>
<!-- Feature Post Section  End -->

@php 

    $user = App\Models\User::count();
    $instructors = App\Models\User::where('role_id',2)->count();
    $learners = App\Models\User::where('role_id',1)->count();
    $course = App\Models\Course::where('status',1)->count();
    $enrollment  = App\Models\order::count();

@endphp

<section class="btm-count-aria">
    <div class="container">
        <div class="row">
            <div class="total-section-dksldkck">
                <div class="div-5">
                    <div class="section-center-kdlslc">
                        <h4>Users</h4>
                        <h2>{{$user}}</h2>
                    </div>
                </div>
                <div class="div-5">
                    <div class="section-center-kdlslc">
                        <h4>Instructor</h4>
                        <h2>{{$instructors}}</h2>
                    </div>
                </div>
                <div class="div-5">
                    <div class="section-center-kdlslc">
                        <h4>Learners</h4>
                        <h2>{{$learners}}</h2>
                    </div>
                </div>
                <div class="div-5">
                    <div class="section-center-kdlslc">
                        <h4>Enrolment</h4>
                        <h2>{{$enrollment}}</h2>
                    </div>
                </div>
                <div class="div-5">
                    <div class="section-center-kdlslc">
                        <h4>Course</h4>
                        <h2>{{$course}}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<br>
<br>




@endsection

@section('script')
<script type="text/javascript">
	// ---- Page Custom Script ---


	// ---- Page Custom Script End---
</script>
@endsection()