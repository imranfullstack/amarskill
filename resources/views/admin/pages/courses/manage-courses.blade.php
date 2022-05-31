@extends('admin.master')
@section('style') 
<style type="text/css">

</style>

    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/select2.css')}}">
@endsection
@section('main_aria')
  
  

          <div class="container-fluid">
            <div class="page-header">
              <div class="row">
                <div class="col-sm-6">
                  <h3>Course</h3>
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html" data-bs-original-title="" title="">Home</a></li>
                    <li class="breadcrumb-item">Manage Course</li>
                  </ol>
                </div>
                <div class="col-sm-6">
                  <!-- Bookmark Start-->
                  <div class="bookmark">
                    <ul>
                      <li>

                        <a href="javascript:void(0)" data-container="body" data-bs-toggle="popover" data-placement="top" title="" data-original-title="Tables" data-bs-original-title="">
                          <i class="fa fa-eye"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <!-- Bookmark Ends-->
                </div>
              </div>
            </div>
          </div>


          <!-- Container-fluid starts-->
          <div class="container-fluid dashboard-default-sec">
            <div class="row">



<div class="container">
  <div class="row">
    <div class="col-md-12">
        <div class="card-header pb-0 heading-stylem top">
          <div class="row">
            <div class="col-md-6">                            
                <h6>  Course Information</h6>
            </div>
            <div class="col-md-6">             
              <div class="right-alagin">
                    <a class="btn-dkd42c" href="{{route('admin.courses.add.new')}}">ADD New Course</a>
                    
              </div>
            </div>
          </div>
        </div>
    </div>
</div>
</div>
<br>

@include('admin.asset.message')
<br>
<br>
              <!-- ----- 3rd Row --- -->




          <div class="container-fluid">
            <div class="row">
              <!-- Zero Configuration  Starts-->
              <div class="col-sm-12">
                <div class="card">
                  <div class="card-body">
                    <div class="table-responsive">


<table id="example" class="display nowrap" cellspacing="0" width="100%">
        <thead>
              <tr>
                  <th>SL</th>
                  <th>Image</th>
                  <th class="col-width-56d3c">Name</th>
                  <th>Category</th>
                  <th>Price</th>
                  <th>Status</th>
                  <th>View</th>
                  <th>Edit</th>
                  <th>Manage</th>
                  <th>Delete</th>
              </tr>
        </thead>
        <tfoot>
              <tr>
                  <th>SL</th>
                  <th>Image</th>
                  <th class="col-width-56d3c">Name</th>
                  <th>Category</th>
                  <th>Price</th>
                  <th>Status</th>
                  <th>View</th>
                  <th>Edit</th>
                  <th>Manage</th>
                  <th>Delete</th>
              </tr>
        </tfoot>
        <tbody>

@php 
    $course = App\Models\Course::orderby('id','desc')->get();
  $i = 1;
@endphp             

@foreach($course as $item)   
                <tr>
                    <td>{{$i++}}</td>
                    <td>
                      @if($item->video_thumbnail)
                       <img src="{{asset('public/img/upload/course/'.$item->video_thumbnail)}}" width="30px">
                      @else
                        <img src="{{asset('public/video-defult.jpg')}}" width="30px">
                      @endif
                    </td>
                    <td>{{Str::limit($item->course_title, 20, $end='...')}} </td>
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
                      <a href="{{route('single.course',$item->slug)}}" target="_blank" class="btn btn-primary"><i class="fa fa-eye"></i></a>
                    </td>
                    <td>
                      <a href="{{route('admin.courses.edit',$item->id)}}" class="btn btn-secondary"><i class="fa fa-edit"></i></a>                      
                    </td>
                    <td>
                      <a href="{{route('admin.courses.manage',$item->id)}}" class="btn btn-success"><i class="fa fa-plus"></i></a>
                    </td>
                    <td>
                      <a href="{{route('admin.courses.trash',$item->id)}}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                      
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
          <!-- Container-fluid Ends-->
        </div>


@endsection()




@section('script')





<script src='https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js'></script>
<script src='https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js'></script>
<script src='https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js'></script>
      <script id="rendered-js" >
$(document).ready(function () {
  $('#example').DataTable({
    dom: 'Bfrtip',
    buttons: [
    'copy', 'excelFlash', 'excel', 'pdf', 'print', {
      text: 'Reload',
      action: function (e, dt, node, config) {
        dt.ajax.reload();
      } }] });



});
//# sourceURL=pen.js
    </script>

  


        
    <!-- login js-->
      <script src="{{asset('/assets/js/select2/select2.full.min.js')}}"></script>
      <script src="{{asset('/assets/js/select2/select2-custom.js')}}"></script>
      <script src="{{asset('/assets/js/select2/select2-custom.js')}}"></script>


      <!-- ----- Tinymce Editor ------- -->
  <script src='https://cdn.tiny.cloud/1/qagffr3pkuv17a8on1afax661irst1hbr4e6tbv888sz91jc/tinymce/4/tinymce.min.js'></script>
 
      <script src="{{asset('/assets/js/myscript.js')}}"></script>



@endsection