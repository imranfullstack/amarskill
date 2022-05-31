@extends('student.master')
@section('style')
      <style type="text/css">
section.page-content-aria {
    padding: 0px 0px;
}

.col-md-3.right-course-aria {
    padding-left: 0;
}
.sectionorplaylist-video-dkslsdk.right-dkdlsldd ul li h5 {
    font-size: 16px;
    padding: 0px 23px;
    line-height: 30px;
}
.nav-menu ul li:last-child a {
    padding-right: 5px;
    margin-right: 0px;
}
.nav-menu {
    float: right;
}
section.header-aria{
    padding-top: 0px;
}
section.page-content-aria {
    margin: 0px 0px;
}

.single-play-list-dlsid .panel.panel-default h4.panel-title a {
    width: 100%;
    display: block;
}

.page-banner {
    padding: 5px 0px;
}

a.alaginment-kdlslcd i {
    padding-left: 9px;
    color: #000;
}

a.alaginment-kdlslcd {
    padding-left: 13%;
}
.sectionorplaylist-video-dkslsdk.right-dkdlsldd ul li {
    border-bottom: 1px solid #c7c7c7;
    margin-bottom: 13px;
    display: block;
}

section.page-content-aria {
    padding: 20px 20px;
}
.right-btm-single-paylist-course .panel.panel-default {
    padding: 10px 0px;
    margin: 5px 7px;
}
.right-btm-single-paylist-course {
    background: #E1E8F2;
}
.single-play-list-dlsid {
    margin-bottom: 100px !important;
}
.inform-dksld-c03s6d p {
    font-size: 14px;
    line-height: 33px !important;
    color: #515151 !important;
}

.col-md-4.video-btm-56c9sdc.cdc5d6csd {
    text-align: left;
}


.right-course-aria.mobile-d1d2c3sd .single-play-list-dlsid {
    margin-bottom: 0px !important;
}

 .row.video-btm-ddkcld {
        margin-top: 30px;
}

@media screen and (min-width: 768px) {
    body {
        overflow: hidden;
    }

    section.page-content-aria {
        margin: 30px 0;
        padding: 0;
    }
   


}

        </style>


    <link rel="stylesheet" href="{{asset('public/frontend/css/demo.css')}}" />

@endsection
@section('main_aria')



<section class="page-content-aria">
        <div class="container-fluid">
            <div class="row">


                <div class="col-md-3 right-course-aria desktop-d1d2c3sd">
                    <div class="right-btm-single-paylist-course">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="top-play-count">
                                    <h3>Course Carriculum</h3>
                                </div>

                                <div class="video-play-list-dkclc0dfcd">
                                    <div class="single-play-list-dlsid">
                                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">


@php 

	$course = App\Models\Course::where('id',$courseid)->first();
	$section = App\Models\Coursesection::where('course_id',$course->id)->where('status',1)->get();

@endphp


@foreach($section as $section)
                           
	

<div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading{{$section->id}}">
          <h4 class="panel-title">
            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse{{$section->id}}" aria-expanded="false" aria-controls="collapse{{$section->id}}">
              {{$section->title}}
              	<i class="fa fa-chevron-down" aria-hidden="true"></i>
            </a>
          </h4>
        </div>
<div id="collapse{{$section->id}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading{{$section->id}}">
      <div class="panel-body">
    <div class="sectionorplaylist-video-dkslsdk">

        @php 
    		$lession = App\Models\Courselession::where('coursesection_id',$section->id)->get();
    	@endphp

    	@foreach($lession as $item)
            <ul>
                <li>                                                            
                    <div class="single-video-dkslsd0c">
                    	<a href="{{route('student.single.video',$item->id)}}">
    	                    <div class="row">
    	                        <div class="col-md-3">
    	                            <img src="https://www.freecodecamp.org/news/content/images/size/w2000/2021/06/javascriptfull.png">
    	                        </div>
    	                        <div class="col-md-9">
    	                            <div class="video-title-dkdls0c3s3d">
    	                                <h5>{{$item->lession_name}}</h5>
    	                                <ul>
    	                                    <li><i class="fa fa-play"></i></li>
    	                                    <span>{{$item->video_duration}}</span>
    	                                </ul>
    	                            </div>
    	                        </div>
    	                    </div>
                        </a>
                    </div>
                </li>
            </ul>
    	@endforeach
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

                <div class="col-md-6">
                    <div class="center-video-section-1663d">

                    @if($lessionitem->video_type)


  <div class="plyr__video-embed" id="player">
        <iframe src="{{$lessionitem->video_url}}" allowfullscreen
            allowtransparency
            allow="autoplay">
        </iframe>
    </div>


                    @else
                        <iframe src="https://player.vimeo.com/video/253989945?h=c6db007fe5" width="100%" height="350" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen=""></iframe>
                    @endif


    
    @php 

        $lessiondd = App\Models\Courselession::orderby('orderby','asc')->where('id',$lessionitem->id)->get();

    @endphp



                        <!-- ------- Course Detels ------ -->
                       <div class="row video-btm-info-kdlclsd">


                                 <div class="col-md-4 video-btm-56c9sdc cdc5d6csd">


@foreach($lessiondd as $itemsd)


                                    <ul>
                                        <li><a href="{{$itemsd->id - 1}}"> <i class="fa fa-backward"></i>  Prev </a></li>
                                        <li><a href="{{$itemsd->id+1}}"> Next  <i class="fa fa-forward"></i>  </a></li>
                                    </ul>
@endforeach
                                </div>
                             <div class="col-md-8 video-btm-56c9sdc">
                                <ul>
                                    <li><a href="#"> 5174 Views </a></li>
                                    <li><a href="#"> Enroll: 56 </a></li>
                                    <li><a href="#"> <i class="fa fa-heart"></i> 4</a></li>
                                </ul>
                            </div>
                            <div class="col-md-12">    
                                <br>                                
                                <h3>{{$lessionitem->lession_name}}</h3>
                            </div>
                       </div>






                <div class="right-course-aria mobile-d1d2c3sd">
                    <div class="right-btm-single-paylist-course">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="top-play-count">
                                    <h3>Course Carriculum</h3>
                                </div>

                                <div class="video-play-list-dkclc0dfcd">

                                    
                                <div class="video-play-list-dkclc0dfcd">
                                    <div class="single-play-list-dlsid">
                                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                            <!-- ------ Single COurse Section ------------ -->
                                            @php 
                                                $sections = App\Models\Coursesection::orderby('short_order','asc')->where('course_id',$course->id)->get();
                                            @endphp
@foreach($sections as $section)
       <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headings-{{$section->id}}">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapses-{{$section->id}}" aria-expanded="true" aria-controls="collapses-{{$section->id}}">
                  {{$section->title}}   <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </a>
            </h4>
        </div>
        <div id="collapses-{{$section->id}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headings-{{$section->id}}">
        <div class="panel-body">
        <div class="sectionorplaylist-video-dkslsdk">
            <ul>
            @php
                 $lessions = App\Models\Courselession::orderby('orderby','asc')->where('coursesection_id',$section->id)->get()
            @endphp
            @foreach($lessions as $item)
                <li>     
                    <a href="{{route('student.single.video',$item->id)}}">
                        <div class="single-video-dkslsd0c">
                            <div class="row">
                                <div class="col-md-3 col-xs-3">
                                    <img src="https://www.freecodecamp.org/news/content/images/size/w2000/2021/06/javascriptfull.png">
                                </div>
                                <div class="col-md-9 col-xs-9">
                                    <div class="video-title-dkdls0c3s3d">
                                        <h5>{{$item->lession_name}}</h5>
                                        <ul>
                                            <li><i class="fa fa-play"></i></li>
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

                                </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <!-- ------- Course Detels ------ -->


                    <!-- ------- Course Detels ------ -->
                       <div class="row video-btm-ddkcld">
                            <div class="row">
                                 <div class="col-md-12">
                                    <div class="instructors-title-26d3">
                                        <h4>Instructor: <a href="{{route('instructor.profile',$lessionitem->course->user->username)}}">{{$lessionitem->course->user->name}}</a></h4>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                <p class="short-description-dksldlc">
                                	{{$lessionitem->summary}}
                                </p>
                                </div>
                            </div>


            <div class="row">
                <div class="col-md-12">

                    <div class="inform-dksld-c03s6d">                        
                        <h3>Best Design Idea</h3>
                        <p>
                        	{!!$lessionitem->summary!!}
                        </p>
                    </div>


                    <div class="table-aria-dksldldc">                            
                        <table class="table">
                              <tbody>
                                <tr>
                                  <th scope="row">Enrolled</th>
                                  <td>14</td>
                                </tr>
                                <tr>
                                  <th scope="row">Lectures: </th>
                                  <td>55</td>
                                </tr>
                                <tr>
                                  <th scope="row">Video: </th>
                                  <td>14:39:58</td>
                                </tr>
                                <tr>
                                  <th scope="row">Level: </th>
                                  <td>Beginner</td>
                                </tr>
                                <tr>
                                  <th scope="row">Languages: </th>
                                  <td>Bangla (Bangladesh)</td>
                                </tr>
                              </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                <br>
                    
                <div class="Instructor-profile-dkclsd002d2c">                    
                    <div class="top-play-count">
                        <h3>Instructor</h3>
                    </div>

                    <div class="instructor-body-aria-d0c6s96d47">
                        <div class="row">
                            <br>
                            <div class="col-md-4">

                                @if($course->user->image)
                                <div class="imagepic" style="background: url({{asset('public/img/upload/profilepic/'.$course->user->image)}})no-repeat top center/cover; height: 159px;"></div>
                                @else
                                <div class="imagepic" style="background: url({{asset('public/img/upload/course/1.jpg')}})no-repeat top center/cover; height: 159px;"></div>
                                @endif
                            </div>
                            <div class="col-md-8">
                                <div class="list-of-info-kdlsl749">
                                    <h5>
                                    	<a href="{{route('instructor.profile',$lessionitem->course->user->username)}}">{{$lessionitem->course->user->name}}</a>
                                    </h5>
                                    <p>
       


@php 

        $course_count = App\Models\Course::where('user_id',$course->user->id)->count();

@endphp


                                    </p>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i> 3650 Enrollments</a></li>
                                        <li><a href="#"><i class="fa fa-star"></i> Total Course: {{$course_count}} </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <br>
                                <div class="Detels-info-dkd6351c2sd">
                                     <p>{{$course->user->profile->bio}}</p>
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


                <div class="col-md-3 right-assiment-d0c3sd">
                                <div class="top-play-count">
                                    <h3>Assignment</h3>
                                </div>
                                <div class="video-play-list-dkclc0dfcd">
                                    <div class="single-play-list-dlsid">
                                      <div class="sectionorplaylist-video-dkslsdk right-dkdlsldd">
                                        <br>
                                            <ul>
                                               @foreach($lessionitem->assignment as $assign)
                                                    <li>      
                                                        <h5> <i class="fa fa-arrow-right"></i> 
                                                            {{$assign->title}}
                                                        </h5>                                  
                                                        <a href="{{asset('/img/upload/assignment/'.$assign->file)}}" class="alaginment-kdlslcd" download>
                                                            Download Assignment <i class="fa fa-download"></i>
                                                        </a>
                                                    </li>
                                                @endforeach                                            
                                                </ul>
                                          </div>
                                    </div>
                                </div>
                </div>
            </div>    
    

<br>
<br>
<br>   
        </div>
    </section>

@endsection()          


@section('script')

    <script src="https://cdn.plyr.io/3.6.3/demo.js"></script>

    
@endsection()