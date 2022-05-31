@extends('frontend.master')
@section('style')
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

    <section class="page-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xs-6">
                    <div class="page-nav-left">
                        <h3>ALL COURSES</h3>
                    </div>
                </div>
                <div class="col-md-6  col-xs-6">
                    <div class="right-nav-top-aria">
                        <ul>
                            <li>Home</li>
                            <li>/</li>
                            <li>Courses</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>



<div class="container">

    @include('frontend.asset.message');
</div>

    
    <section class="page-content-aria">
        <div class="container">



  <div class="course-aria">
      <div class="container">
        <div class="row">
          <div class="col-md-3">


            <div class="left-aria-dkdkcflc" id="sidebar">
                 @include('frontend.asset.category-left-nav')
            </div>
          </div>

@php
         $course_count = App\Models\Course::orderby('id','desc')->where('status',1)->count();
@endphp
          <div class="col-md-9">
              <div class="right-side-course-dkdkfd411c">
                <div class="container-fluid">
                  <div class="row">
                    <h2>All Course ( {{$course_count}} ) </h2>
                  </div>
                </div>
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
                                                            <a href="{{route('instructor.profile',$item->user->username)}}" title="{{$item->user->name}}">
                                                              <span>   {{Str::limit($item->user->name, 10, $end='...')}}</span>
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

                                
                      
                        </div>
                    @endforeach
                  </div>


                  <div class="row">
{{ $course->links() }}
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
<script type="text/javascript">
	// ---- Page Custom Script ---


	// ---- Page Custom Script End---
</script>
@endsection()