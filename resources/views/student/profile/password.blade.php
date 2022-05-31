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


<section class="page-content-aria fdkflvfg0">
        <div class="container">



        	@include('student.asset.message')

  <div class="course-aria">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
              @include('student.asset.left-nav')
          </div>
          <div class="col-md-9">


	      	<h4>Update Password:</h4>
<form method="post" action="{{route('student.profile.update.password')}}">
	@csrf
		<div class="table-aria-dksld">
			<table class="table table-borderless">
			  <tbody>
			    <tr>
			      <th scope="row" width="30%">Current Password</th>
			      <td>
			      	<input type="password" class="form-control" name="old_pass" placeholder="Type Current Password">
			      	@error('old_pass') {{$message}} @enderror
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">
			      	New Password
			      </th>
			      <td>
			      	<input type="password" class="form-control" name="new_pass" placeholder="New Password">
			      	@error('new_pass') {{$message}} @enderror
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">
			      	Confirm Password
			      </th>
			      <td>
			      	<input type="password" class="form-control" name="confirm_pass" placeholder="Confirm Your Password">
			      	@error('confirm_pass') {{$message}} @enderror
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">
			      </th>
			      <td>
			      	<button class="btn btn-primary btn-sm btn-block">Update Password</button>
			      </td>
			    </tr>
			  </tbody>
			</table>
		</div>
</form>

          </div>
      

        </div>
      </div>
    </div>



        </div>
    </section>




@endsection()          