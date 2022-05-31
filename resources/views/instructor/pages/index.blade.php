@extends('instructor.master')

@section('style') 

@endsection
@section('main_aria')
          <div class="container-fluid">
            <div class="page-header">
              <div class="row">
                <div class="col-sm-6">
                  <h3>Instructor Dashboard</h3>
                  <br>
                </div>
              </div>
            </div>
          </div>






          <!-- Container-fluid starts-->
          <div class="container-fluid dashboard-default-sec">
            <div class="row">
          @include('instructor.asset.short-report')

              <!-- ----- 2nd Row --- -->




              <!-- ----- 2nd Row --- -->
              <!-- ----- 3rd Row --- -->



          <div class="container-fluid">
            <div class="row">
              <!-- Zero Configuration  Starts-->
              <div class="col-sm-12">
                <div class="card">
                  <div class="card-header">
                    <h3>My Course List</h3>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="display" id="basic-1">
                        <thead>
   
              <tr>
                  <th>SL</th>
                  <th>Image</th>
                  <th class="col-width-56d3c">Name</th>
                  <th>Category</th>
                  <th>Price</th>
                  <th>Status</th>
                  <th>View</th>
              </tr>
                        </thead>


                        <tbody>
@php $i = 1 @endphp
@foreach($courses as $item)   
                <tr>
                    <td>{{$i++}}</td>
                    <td>
                      @if($item->video_thumbnail)
                       <img src="{{asset('public/img/upload/course/'.$item->video_thumbnail)}}" width="30px">
                      @else
                        <img src="{{asset('public/video-defult.jpg')}}" width="30px">
                      @endif
                    </td>
                    <td>
                        {{Str::limit($item->course_title, 30, $end='...')}} 
                    </td>
                    <td>{{$item->category->name}}</td>

                    @if($item->course_price)
                      <td>{{$item->course_price}} Taka</td>
                    @else
                      <td><span class="badge badge-primary">Free Course</span></td>
                    @endif
                    <td>
                      @if($item->status == 1)
                        <span class="badge badge-success">Active</span>
                      @else
                        <span class="badge badge-danger">Inactive</span>
                      
                      @endif
                    </td>
                    <td class="table-action">
                      <a href="{{route('single.course',$item->slug)}}"  target="_blank" class="btn btn-primary"><i class="fa fa-eye"></i></a>
                    </td>
                </tr>
@endforeach               
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>




              <!-- ----- 3rd Row End--- -->
            </div>
          </div>
@endsection()          