@extends('frontend.master')

@section('title') Instructor  @endsection

@section('style')

<link rel="stylesheet" type="text/css" href="{{asset('/public/frontend/home.css')}}">



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
<div class="row">
      @php 
          $courses = App\Models\Course::get();
      @endphp
@foreach($courses as $itemid)
  <div class="col-md-4">
    <h6>{{$itemid->course_title}}</h6>

@php 
    $sections = App\Models\Coursesection::orderby('short_order','asc')->where('course_id',$itemid->id)->get();
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
                    <a href="{{$item->video_url}}">


                        <div class="single-video-dkslsd0c">
                            <div class="row">
                   
                                <div class="col-md-9">
                                    <div class="video-title-dkdls0c3s3d">
                                        <h5>{{$item->lession_name}}</h5>
                                        <ul>

                                            <li><i class="fa fa-play"></i></li>
                                            <span>{{$item->video_duration}} - {{$item->video_url}}</span>
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

  </div>

@endforeach
</div>
        </div>
    </section>

@endsection

@section('script')


	
@endsection()