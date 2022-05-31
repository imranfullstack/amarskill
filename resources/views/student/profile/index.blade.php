@extends('student.master')

@section('style')
<style type="text/css">
	.single-form-dlsldkc {
	    margin: 15px 0px;
	}
	.single-form-dlsldkc label {
	    padding: 6px 0px;
	}
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

<form action="{{route('student.profile.update')}}" method="post" enctype='multipart/form-data'>
	@csrf
          <div class="col-md-9">
              <div class="right-side-course-dkdkfd411c">
                <div class="container-fluid">
                  <div class="row">
                    <h2>My Profile</h2>
                  </div>
                </div>
                  <div class="container-fluid">
                	<div class="row">
                		<div class="col-md-3">
                			@if(Auth::user()->image)
            					<img src="{{asset('public/img/upload/profilepic/'.Auth::user()->image)}}" class="profilepic-dksld">
                			@else
            					<img src="{{asset('public/img/upload/course/1.jpg')}}" width="100%">
                			@endif
                		</div>
                		<div class="col-md-9">
                  				<!-- ----- Single Form ------ -->
	                  			  <div class="single-form-dlsldkc">
									<div class="form-group">
									    <div class="input-group">
									      <div class="input-group-addon">
									      	<i class="fa fa-link"></i>
									      </div>
									      <input type="file" class="form-control" id="exampleInputAmount" value="{{Auth::user()->name}}" name="image">
									    </div>
									  </div>
								  </div>
								<!-- ----- Single Form End-------->
                  				<!-- ----- Single Form ------ -->
	                  			  <div class="single-form-dlsldkc">
									<div class="form-group">
									    <div class="input-group">
									      <div class="input-group-addon">
									      	<i class="fa fa-user"></i>
									      </div>
									      <input type="text" class="form-control" id="exampleInputAmount" value="{{Auth::user()->name}}" placeholder="Your Name" name="name">
									    </div>
									  </div>
								  </div>
								<!-- ----- Single Form End-------->
                  				<!-- ----- Single Form ------ -->
	                  			  <div class="single-form-dlsldkc">
									<div class="form-group">
									    <div class="input-group">
									      <div class="input-group-addon"><i class="fa fa-phone"></i></div>
									      <input type="text" class="form-control" id="exampleInputAmount" value="{{Auth::user()->phone}}" placeholder="Phone Number" name="phone">
									    </div>
									  </div>
								  </div>
								<!-- ----- Single Form End-------->


                  		<button class="btn btn-primary btn-sm btn-block">Update Profile</button>
                		</div>
                  	</div>
                  </div>
              </div>
          </div>
</form>          

        </div>
      </div>
    </div>



        </div>
    </section>




@endsection()          