@extends('admin.master')
@section('style') 
<style type="text/css">
</style>

    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/select2.css')}}">

<style type="text/css">
  input.form-input {
      border: 1px solid #d3d3d3 !important;
      width: 75px;
      border-radius: 5px;
      padding: 8px 12px;
  }
</style>
@endsection
@section('main_aria')
	
	

          <div class="container-fluid">
            <div class="page-header">
              <div class="row">
                <div class="col-sm-6">
                  <h3>Categories</h3>
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html" data-bs-original-title="" title="">Home</a></li>
                    <li class="breadcrumb-item">Widgets</li>
                    <li class="breadcrumb-item active">General</li>
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
              <div class="col-sm-6 col-xl-3 col-lg-6">
                <div class="card o-hidden border-0">
                  <div class="bg-primary b-r-4 card-body">
                    <div class="media static-top-widget">
                      <div class="align-self-center text-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-database"><ellipse cx="12" cy="5" rx="9" ry="3"></ellipse><path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"></path><path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"></path></svg></div>
                      <div class="media-body"><span class="m-0">Earnings</span>
                        <h4 class="mb-0 counter">6659</h4><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-database icon-bg"><ellipse cx="12" cy="5" rx="9" ry="3"></ellipse><path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"></path><path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"></path></svg>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-xl-3 col-lg-6">
                <div class="card o-hidden border-0">
                  <div class="bg-primary b-r-4 card-body">
                    <div class="media static-top-widget">
                      <div class="align-self-center text-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-database"><ellipse cx="12" cy="5" rx="9" ry="3"></ellipse><path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"></path><path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"></path></svg></div>
                      <div class="media-body"><span class="m-0">Earnings</span>
                        <h4 class="mb-0 counter">6659</h4><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-database icon-bg"><ellipse cx="12" cy="5" rx="9" ry="3"></ellipse><path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"></path><path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"></path></svg>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-xl-3 col-lg-6">
                <div class="card o-hidden border-0">
                  <div class="bg-primary b-r-4 card-body">
                    <div class="media static-top-widget">
                      <div class="align-self-center text-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-database"><ellipse cx="12" cy="5" rx="9" ry="3"></ellipse><path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"></path><path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"></path></svg></div>
                      <div class="media-body"><span class="m-0">Earnings</span>
                        <h4 class="mb-0 counter">6659</h4><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-database icon-bg"><ellipse cx="12" cy="5" rx="9" ry="3"></ellipse><path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"></path><path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"></path></svg>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-xl-3 col-lg-6">
                <div class="card o-hidden border-0">
                  <div class="bg-primary b-r-4 card-body">
                    <div class="media static-top-widget">
                      <div class="align-self-center text-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-database"><ellipse cx="12" cy="5" rx="9" ry="3"></ellipse><path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"></path><path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"></path></svg></div>
                      <div class="media-body"><span class="m-0">Earnings</span>
                        <h4 class="mb-0 counter">6659</h4><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-database icon-bg"><ellipse cx="12" cy="5" rx="9" ry="3"></ellipse><path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"></path><path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"></path></svg>
                      </div>
                    </div>
                  </div>
                </div>
              </div>



<div class="container">
  <div class="row">
    <div class="col-md-12">
        <div class="card-header pb-0 heading-stylem top">
          <div class="row">
            <div class="col-md-6">                            
                <h6>  Categories Information</h6>
            </div>
            <div class="col-md-6">             
              <div class="right-alagin">
                    <a class="btn-dkd42c" type="button" data-bs-toggle="modal" data-original-title="test" data-bs-target="#exampleModal" data-bs-original-title="" title="">ADD New Category</a>
                    
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add New Category</h5>
                            <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close" data-bs-original-title="" title=""></button>
                          </div>
<form action="{{route('admin.courses.lession.store',$id)}}" method="post" enctype="multipart/form-data"> 
@csrf                        
                          <div class="modal-body">
                            <table class="table table-bordered" style="text-align: left;">
                                <thead>
                                  <tr>
                                    <th scope="col">Name</th>
                                    <th scope="col">Input</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <th scope="row">
                                      <label>Thumbnail</label>
                                    </th>
                                    <td>
                                      <input type="file" class="form-control" name="thumbnail">
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Name</label>
                                    </th>
                                    <td>
                                      <input type="text" class="form-control" name="name" placeholder="Name">
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Description</label>
                                    </th>
                                    <td>
                                      <textarea class="form-control" rows="3" name="description"></textarea>
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Status</label>
                                    </th>
                                    <td>
                                      <select class="form-control" name="status">
                                        <option value="1">Active</option>
                                        <option value="2">Inactive</option>
                                      </select>
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Sort Order</label>
                                    </th>
                                    <td>
                                      <input type="number" value="0" class="form-control" name="shortorder">
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                          </div>
                          <div class="modal-footer">
                            <button class="btn btn-primary" type="submit" data-bs-original-title="" title="">Save</button>
                            <button class="btn btn-secondary" type="button" data-bs-dismiss="modal" data-bs-original-title="" title="">Close</button>
                          </div>
</form>                          
                        </div>
                      </div>
                    </div>
                  <!-- Modal -->
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
<div class="col-md-3"></div>
              <div class="col-md-6">








<form action="{{route('admin.courses.lesson.manage.update',$id)}}" method="post" enctype="multipart/form-data">
  @csrf

                            <table  class="table table-bordered" style="text-align: left;">
                                <tbody>
                                  <tr>
                                    <td>
                                      <h5>Add New Lession</h5>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    @if($lession->image)
                                    	<img src="{{asset('img/upload/lession/'.$lession->image)}}" width="250px"> 
                                    @else
                                    @endif
                                    	<hr>
                                      <input type="file" class="form-control" name="thumbnail" >
                                      <input type="hidden"  name="section" value="{{$id}}" >
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<label>Lession TItle</label>
                                      <input type="text" class="form-control" name="lession_name" placeholder="Name" value="{{$lession->lession_name}}">
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<label>Choose Media</label>
                                        <select class="form-control" name="video_type">

                                        @if($lession->video_type == 1)
                                          <option value="1" selected>Youtube</option>
                                          <option value="2">Vimeo</option>
                                        @else
                                          <option value="1">Youtube</option>
                                          <option value="2" selected>Vimeo</option>
                                        @endif
                                        </select>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<label>Video URL</label>
                                      <input type="text" class="form-control" name="video_url" value="{{$lession->video_url}}">
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<label>Video Duration</label>
                                      <input type="text" class="form-control" name="video_duration" placeholder="00:00:00" value="{{$lession->video_duration}}">
                                      <span>HH:MM:SS</span>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<label>Lession Summary</label>
                                      <textarea class="form-control" rows="3" name="summary">{!!$lession->details!!}</textarea>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<label>Lession Details</label>
                                      <textarea class="form-control d" rows="3" name="details">{{$lession->summary}}</textarea>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<label>Lession Status</label>
                                      <select class="form-control" name="status">
                                      	@if($lession->status == 1 )
                                        	<option value="1" selected>Active</option>
                                        <option value="2">Inactive</option>
                                        @else
                                        <option value="1">Active</option>
                                        <option value="2" selected>Inactive</option>
                                        @endif
                                      </select>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
	    			
	    					<div class="modal-footer">
	                            <button class="btn btn-primary" type="submit" data-bs-original-title="" title="">Update</button>
	           				</div>

                          </div>
                     



</form>







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