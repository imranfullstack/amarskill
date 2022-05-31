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
  .btn-block{
  	width: 100%;
  }
</style>
@endsection
@section('main_aria')
	
	


          <!-- Container-fluid starts-->
          <div class="container-fluid dashboard-default-sec">
            <div class="row">



<div class="container">
  <div class="row">
    <div class="col-md-12">
        <div class="card-header pb-0 heading-stylem top">
          <div class="row">
            <div class="col-md-6">                            
                <h6> Manage Admin</h6>
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
<div class="col-md-6">
	


<table id="example" class="display nowrap" cellspacing="0" width="100%">
        <thead>
              <tr>
                  <th>image</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th class="col-width-56d3c">Phone</th>
              </tr>
        </thead>
        <tfoot>
              <tr>
                  <th>image</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th class="col-width-56d3c">Phone</th>
              </tr>
        </tfoot>
        <tbody>

@php 
	$admin = App\Models\User::where('role_id','3')->get();
@endphp
@foreach($admin as $item)
                <tr>
                	<td>
                		@if($item->image)
                			<img src="{{asset('public/img/upload/profilepic/'.$item->image)}}" width="35px">
                		@else
                			<img src="{{asset('public/img/upload/course/1.jpg')}}" width="35px">
                		@endif

                	</td>
                	<td>{{Str::limit($item->name,15,$end='...')}}  </td>
                	<td>{{Str::limit($item->email,15,$end='...')}} </td>
                	<td>{{Str::limit($item->phone,12,$end='...')}} </td>
                </tr>
@endforeach                

        </tbody>
    </table>


</div>
              <div class="col-md-6">









<form action="{{route('admin.admin.store')}}" method="post" enctype="multipart/form-data">
  @csrf

                            <table  class="table table-bordered" style="text-align: left;">
                                <tbody>
                                  <tr>
                                    <td>
                                      <h5>Add New Admin</h5>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<div class="single-form">
	                                      <label>Admin Name</label>
	                                      <input type="text" class="form-control" name="name" required>
	                                      @error('email') <p class="text-danger">{{$message}}</p> @enderror
                                    	</div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<div class="single-form">
	                                      <label>Email</label>
	                                      <input type="email" class="form-control" name="email" required>
	                                      @error('email') <p class="text-danger">{{$message}}</p> @enderror
                                    	</div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<div class="single-form">
	                                      <label>Phone</label>
	                                      <input type="text" class="form-control" name="phone" required>
	                                      @error('email') <p class="text-danger">{{$message}}</p> @enderror
                                    	</div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<div class="single-form">
	                                      <label>Image</label>
	                                      <input type="file" class="form-control" name="image">
	                                      @error('email') <p class="text-danger">{{$message}}</p> @enderror
                                    	</div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<div class="single-form">
	                                      <label>Password</label>
	                                      <input type="text" class="form-control" name="new_pass" required>
	                                      @error('email') <p class="text-danger">{{$message}}</p> @enderror
                                    	</div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<div class="single-form">
	                                      <label>Confirm Password</label>
	                                      <input type="text" class="form-control" name="confirm_pass" required>
	                                      @error('email') <p class="text-danger">{{$message}}</p> @enderror
                                    	</div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                		<div class="modal-footer">
				                            <button class="btn btn-primary btn-block" type="submit" data-bs-original-title="" title="">Add New Admin</button>
				           				</div>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
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