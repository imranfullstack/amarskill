@extends('frontend.master')

@section('title') {{$course->course_title}}  || @endsection

@section('style')
    <link rel="stylesheet" href="{{asset('public/frontend/css/demo.css')}}" />
<style type="text/css">
	/*---- Page Custom CSS ---*/

.info-aria-dkfk42 ul li:first-child  {
    display: none;
}

.image-dlslkdc {
    width: 100%;
    height: 167px;

}

.image-dlslkdc.profilepic {
    height: 280px;
    width: 100%;
}
.right-top-video-aria {
    background: #0844961f;
    padding: 20px 16px;
}


.right-top-video-aria .panel.panel-default {
    margin-bottom: 8px;
    padding: 0;
}

.panel.panel-default i {
    float: right;
}

.right-top-video-aria a {
    width: 100% !important;
    display: block;
    text-decoration: none;
}


.panel-heading {
    padding: 20px 20px;
}
.right-top-video-aria h4.panel-title a i {
    color: #084496 !important;
}


.video-title-dkdls0c3s3d span {
    padding-left: 5px;
}

.info-aria-dkfk42.course-detels p {
    color: #000 !important;
    line-height: 34px !important;
    font-size: 14px;
    text-align: justify;
}

.right-aria-detels-page {
    margin-top: 30px;
}
	/*---- Page Custom CSS End---*/
</style>


@endsection()
@section('main_aria')

    <section class="banner-single-course">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="left-section-banner">
                        <h1>{{$course->course_title}}</h1>
                        <p>{{Str::limit($course->short_description, 225, $end='...')}} </p>
                        <h3>5 Students Enrolled</h3>
                        <ul>
                            <li><i class="fa fa-user"></i> By <a href="{{route('instructor.profile',$course->user->username)}}" style="color: #fff"><b>{{$course->user->name}}</b></a></li>
                            <li><i class="fa fa-clock-o" aria-hidden="true"></i> <b>
                            		{{ $course->created_at->format(' l d-M-Y' ) }}
                            </b></li>
                            <li><i class="fa fa-globe" aria-hidden="true"></i> <b>
                            	
                            	@if($course->language == 1)
                            		Bangla
                            	@else
                            		English
                            	@endif

                            </b></li>
                        </ul>
                        <br>
                        <div class="social-banner">
                            <ul>
                                <li><h4>Share with </h4></li>
                                <li class="facebook-56d">

                                    <a  target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.facebook.com%2Famel.skill&amp;src=sdkpreparse"  ><i class="fa fa-facebook"></i></a>

                                </li>
                                <li class="twitter-56d">
									<a target="_blank" class="share-btn share-btn-branded share-btn-twitter" href="https://twitter.com/share?url=" title="Share on Twitter">
                        				<span class="share-btn-icon"></span>
                        				<span class="share-btn-text-sr"><i class="fa fa-twitter"></i></span>
									</a>
                                </li>
                                <li class="linkedin-56d">
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="video-top-banner">

@if($course->media_provider == 1)

  <div class="plyr__video-embed" id="player">
        <iframe src="{{$course->video_link}}" allowfullscreen
            allowtransparency
            allow="autoplay">
        </iframe>
    </div>
@else
    <iframe src="https://player.vimeo.com/video/336812686?h=3a81782f84&title=0&byline=0&portrait=0" height="250px" width="100%" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
@endif





                        <div class="price">
                        	@if($course->course_price)
                            <h2>Price {{$course->course_price}} Taka</h2>
                            @else 

                            <h2>Free Course</h2>
                            @endif
                            <div class="row">
                                <div class="col-md-6">
                                    <a class="btn btn-primary btn-lg btn-block" href="{{route('cart.plus',$course->id)}}"> <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to Cart</a>
                                </div>
                                <div class="col-md-6">
                                    <a class="btn btn-success btn-lg btn-block" href="{{route('add.cart',$course->id)}}"><i class="fa fa-play" aria-hidden="true"></i> Buy Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </section>


    <div class="body-aria">
        <section class="course-info-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">


                        <div class="info-aria-dkfk42 course-detels">
                            <h3>Course Details</h3>
                            
                            {!! $course->description !!} 

                        </div>  
                        <br>




                        <div class="info-aria-dkfk42">
                            <h3>Pre Requirements</h3>
                            <ul>
                              @foreach($course->requirement as $item)
                                  <li>{{$item->title}}</li>
                                @endforeach
                            </ul>
                        </div>  
                        <br>
                        <br>
                        <div class="info-aria-dkfk42">
                            <h3>What You will Learn</h3>
                            <ul>
                              @foreach($course->outcome as $item)
                                  <li>{{$item->title}}</li>
                                @endforeach
                            </ul>
                        </div>   
                        <br>
                        <br>


                        <div class="info-aria-dkfk42 course-detels instructor-course-aria-profile">
                            <h3 style="color: #000">Meet Your Instructor</h3>
                     
                            <div class="instructor-profile-wraper">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="profile-pic">
                                        

                                        <a href="{{route('instructor.profile',$course->user->username)}}">
                                          <img src="{{asset('public/img/upload/profilepic/'.$course->user->image)}}">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="prifile-info">
                                        <h4><a href="{{route('instructor.profile',$course->user->username)}}"> {{$course->user->name}} </a></h4>
                                        <h5>{{$course->user->profile->title}}</h5>
                                        <p> {{$course->user->profile->bio}} <a href="{{route('instructor.profile',$course->user->username)}}">Read More</a></p>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>                                  
                    </div>
                    <div class="col-md-4">

                      <div class="course-box-dkldlc">

                      <div class="right-top-video-aria">
                          <h3>Course Curriculum</h3>

                                            <!-- ------ Single COurse Section ------------ -->
@php 
    $sections = App\Models\Coursesection::orderby('short_order','asc')->where('course_id',$course->id)->get();
@endphp
@foreach($sections as $section)
  
     <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="heading-{{$section->id}}">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-{{$section->id}}" aria-expanded="true" aria-controls="collapse-{{$section->id}}">
          {{$section->title}}  <i class="fa fa-chevron-down" aria-hidden="true"></i>
        </a>
      </h4>
    </div>
    <div id="collapse-{{$section->id}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-{{$section->id}}">
    <div class="panel-body">
    <div class="sectionorplaylist-video-dkslsdk">
        <ul>

            @php


            $lessions = App\Models\Courselession::orderby('orderby','asc')->where('coursesection_id',$section->id)->get()

            @endphp


        @foreach($lessions as $item)
            <li>     
              @if($item->lock == 1)
                    <a href="{{route('course.unlock',$item->slug)}}">
              @else
                    <a  href="#" onclick="alert('For watch this video you need to buy this Course!')" style="cursor: pointer;">
              @endif


                        <div class="single-video-dkslsd0c">
                            <div class="row">
                                <div class="col-md-3">
                                  @if($course->video_thumbnail)
                                    <img src="{{asset('public/img/upload/course/'.$course->video_thumbnail)}}">
                                  @else
                                    <img src="{{asset('public/img/upload/course/1.jpg')}}">
                                  @endif
                                </div>
                                <div class="col-md-9">
                                    <div class="video-title-dkdls0c3s3d">
                                        <h5>{{$item->lession_name}}</h5>
                                        <ul>

                                        @if($item->lock == 1)
                                            <li><i class="fa fa-play"></i></li>
                                        @else
                                            <li><i class="fa fa-lock"></i></li>
                                        @endif
                                            <span>{{$item->video_duration}}</span>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>            
            </li>
        @endforeach   


        </ul>
    </div>

    </div>
    </div>
    </div>
  
@endforeach

                                           
                                        <!-- ------ Single COurse Section ------------ -->


                      </div>

                      </div>

                      
                        <div class="right-aria-detels-page" >
                            <table class="table  table-bordered">
                                  <tbody>
                                    <tr>
                                      <td width="50%"> <i class="fa fa-clock-o" aria-hidden="true"></i> <b>Duration: </b></td>
                                      <td>1 Week</td>
                                    </tr>
                                    <tr>
                                      <td> <b>৳</b> <b>Price: </b></td>
                                      <td> 
                                        @if($course->course_price)
                                          {{$course->course_price}} Taka
                                        @else
                                          Free Course
                                        @endif
                                       </td>
                                    </tr>
                                    <tr>
                                      <td> <i class="fa fa-th-list" aria-hidden="true"></i> <b>Category:</b></td>
                                      <td>{{$course->category->name}}</td>
                                    </tr>
                                    <tr>
                                      <td> <i class="fa fa-fw fa-signal"></i> <b>Level:</b></td>
                                      <td>

                                        @if($course->level == 1)
                                          Advanced
                                        @elseif($course->level == 2)
                                          Beginner
                                        @else
                                          Intermediate
                                        @endif

                                      </td>
                                    </tr>
                                    <tr>
                                      <td> <i class="fa fa-fw fa-flag"></i> <b>Language:</b></td>
                                      <td>
                                      @if($course->language == 1)
                                      Bangla
                                    @else
                                      English
                                    @endif
                                      </td>
                                    </tr>
                                    <tr>
                                      <td> <i class="fa fa-fw fa-tags"></i> <b>Keywords:</b></td>
                                      <td>
                                        
                                        {{$course->meta_keywords}}

                                      </td>
                                    </tr>
                                  </tbody>
                            </table>
                        </div>




                    </div>
                </div>
            </div>
        </section>
        <br>

<br>
<br>
<br>
        <section class="faq" >
            <div class="container">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <h3 style="text-align: center;color: #000">Frequently Asked Questions (FAQs)</h3>
<br>
<br>
                        <div class="faq-main-section">
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">



@php

  $faq = App\Models\Coursefaq::where('course_id',$course->id)->get();


@endphp 

@foreach($faq as $item)
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="heading-{{$item->id}}">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwofaq-{{$item->id}}" aria-expanded="false" aria-controls="collapseTwofaq-{{$item->id}}">
          {{$item->title}}
          <span style="float: right;" class="collapsedicon">
              <i class="fa fa-arrow-down" aria-hidden="true"></i>
          </span>
        </a>
      </h4>
    </div>
    <div id="collapseTwofaq-{{$item->id}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-{{$item->id}}">
      <div class="panel-body">
        <p> {{$item->description}}</p>
      </div>
    </div>
  </div>
@endforeach




</div>
                        </div>

                    </div>
                    <div class="col-md-2"></div>
                </div>
            </div>
        </section>

<br>
<br>
<br>
            <section class="most-populer-course">
            <div class="container">
                <div class="row">
                    <div class="section-title">
                        <h2>Student Also Like This Courses</h2>
                        <p>here is The Few Recommended Course That Also Help You to Improve Your Skill</p>
                    </div>
<br>
<br>
                </div>


@php 
	$topcourse = App\Models\Course::orderby('id','desc')->where('top_course',1)->where('status',1)->get();
@endphp


                <div class="populer-course-aria">
                    <div class="row">

                        <div class="active-course-slide owl-carousel">

@foreach($topcourse as $item)
    
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
                                                <div class="col-md-7">
                                                    <div class="left-top">
                                                         <span>
                                                            <a href="{{route('instructor.profile',$item->user->username)}}">
                                                              <span>   {{Str::limit($item->user->name, 12, $end='...')}}</span>
                                                            </a>
                                                          </span>
                                                    </div>
                                                </div>
                                                <div class="col-md-5 single-right" style="text-align: right;">
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
@endforeach
                        


                        </div>

                    </div>
                </div>


            </div>
        </section>




    </div>



@endsection

@section('script')

    <script src="https://cdn.plyr.io/3.6.3/demo.js"></script>

	
@endsection()