@extends('student.master')
@section('style')
	<style type="text/css">

	</style>
@endsection
@section('main_aria')

<section class="page-content-aria">
        <div class="container">



  <div class="course-aria">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="left-aria-dkdkcflc" id="sidebar">
                  <div class="left-filtter-aria-style">
                       <h3>Quick Links</h3>
                       <ul>
                         <li><a href="#"> <i class="fa fa-caret-right"></i>My Certificate</a></li>
                         <li><a href="#"> <i class="fa fa-caret-right"></i> Purchase History</a></li>
                         <li><a href="#"> <i class="fa fa-caret-right"></i> Refund</a></li>
                         <li><a href="#"> <i class="fa fa-caret-right"></i> WishList</a></li>
                         <li><a href="#"> <i class="fa fa-caret-right"></i> Change Password</a></li>
                         <li><a href="#"> <i class="fa fa-caret-right"></i> Edit Profile</a></li>
                         
                       </ul>
                  </div>
            </div>
          </div>
          <div class="col-md-9">
              <div class="right-side-course-dkdkfd411c">
                <div class="container-fluid">
                  <div class="row">
                    <h2>Manage a Return Request</h2>
                  </div>
                	<div class="row" align="center">
                		<a href="#" class="btn btn-primary">Refund Request</a>
                	</div>
                	<hr>
                  <div class="row">
                    <h2>My Refund</h2>
                  </div>
                </div>
                  <div class="row">

                    <div class="container-fluid">
                      <div class="col-md-12">
                        <div class="my-cerfiticate-table">
                          <table class="table">
                              <thead>
                                <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">Return Request</th>
                                  <th scope="col">Enroll Id</th>
                                  <th scope="col">Course</th>
                                  <th scope="col">Status</th>
                                  <th scope="col">Action</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <th scope="row">1</th>
                                  <td>21/09/2021</td>
                                  <td>Otto</td>
                                  <td>Otto</td>
                                  <td>
                                  	<span class="badge badge-warning">Pending</span>
                                  </td>
                                  <td>
                                    <a href="#" class="btn btn-primary">
                                    	<i class="fa fa-eye"></i>
                                    </a>
                                    <a href="#" class="btn btn-danger">

                                    	<i class="fa fa-trash"></i>
                                    </a>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
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
    </section>
@endsection()          