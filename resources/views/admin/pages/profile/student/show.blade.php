@extends('admin.master')
@section('style') 
	<style type="text/css">
  .btn-block {
      width: 100%;
  }
  th.btmskdlc a {
      margin-top: 10px;
  }
	</style>
@endsection
@section('main_aria')
	


            <div class="col-sm-12">
                <div class="card">
                  <div class="card-body">
                  	<div class="row">
                  		<h3>STUDENT PROFILE</h3>
@include('admin.asset.message')
                  		<hr>
                  	</div>
                  	<div class="row">
                  		<div class="col-md-3">
                  			
                  			<div class="profile-pic">
								            @if($student->image)
                            <img src="{{asset('public/img/upload/profilepic/'.$student->image)}}" width="100%" >
                            @else
                            <img src="{{asset('public/img/upload/course/1.jpg')}}"  width="100%" >

                            @endif
							</div>
                  		</div>
                  		<div class="col-md-9">
                  			

                  		<table class="table table-bordered">
                          <tbody>
                            <tr>
                              <th scope="row">Student Name:</th>
                              <td>{{$student->name}}</td>
                              <th scope="row">Student Email:</th>
                              <td>{{$student->email}}</td>
                            </tr>
                            <tr>
                              <th scope="row">User Name</th>
                              <td>{{$student->username}}</td>
                              <th scope="row">Student Phone:</th>
                              <td>{{$student->phone}}</td>
                            </tr>
                            <tr>
                              <th scope="row">Total Purchase</th>
                              <td >{{$student->orderitem->count()}}</td>
                              <td></td>
                              <td></td>
                            </tr>
                          </tbody>
                        </table>
<hr>
                        <div class="password">
                            <table class="table table-bordered">

<form action="{{route('admin.student.update.password',$student->id)}}" method="post">
  @csrf                       
                                <tbody>
                                  <tr>
                                    <th scope="row" colspan="2">Change Password</th>
                                  </tr>
                                  <tr>
                                    <th scope="row" width="30%">New Password</th>
                                    <td>
                                      <input type="password" placeholder="Enter New Problem" name="new_pass" class="form-control">
                                      @error('new_pass') <p class="text-danger"> {{$message}}</p> @enderror
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">Confirm Password</th>
                                    <td>
                                        <input type="password" placeholder="Enter New Problem" name="confirm_pass" class="form-control">
                                      @error('confirm_pass')  {{$message}} @enderror
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row" colspan="2" class="btmskdlc">
                                      <button type="submit" class="btn btn-primary btn-sm btn-block">Update Password!</button> 
                                      <a href="{{route('admin.student.index')}}" class="btn btn-primary btn-sm btn-block">Go Back</a>
                                    </th>
                                  </tr>
                                </tbody>

</form>                                
                              </table>
                        </div>
                  		</div>




                  	</div>
                  </div>
              	</div>
          	</div>



@endsection()


@section('script')


@endsection