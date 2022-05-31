@extends('admin.master')
@section('style') 
<style type="text/css">

</style>

    <link rel="stylesheet" type="text/css" href="{{asset('public/assets/css/select2.css')}}">
@endsection
@section('main_aria')
	
	

          <div class="container-fluid">
            <div class="page-header">
              <div class="row">
                <div class="col-sm-6">
                  <h3>FAQ</h3>
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html" data-bs-original-title="" title="">Home</a></li>
                    <li class="breadcrumb-item">FAQ</li>
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
                <h6>  FAQ Information</h6>
            </div>
            <div class="col-md-6">             
              <div class="right-alagin">
                    <a class="btn-dkd42c" type="button" data-bs-toggle="modal" data-original-title="test" data-bs-target="#exampleModal" data-bs-original-title="" title="">ADD New FAQ</a>
<form action="{{route('admin.courses.faq.store')}}" method="post" enctype='multipart/form-data'>
  @csrf
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add New Faq</h5>
                            <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close" data-bs-original-title="" title=""></button>
                          </div>
                          <div class="modal-body">
                            <table  class="table table-bordered" style="text-align: left;">
                                <thead>
                                  <tr>
                                    <th scope="col">Name</th>
                                    <th scope="col">Input</th>
                                  </tr>
                                </thead>
                                <tbody>

                                  <tr>
                                    <th scope="row">
                                      <label>Courses</label>
                                    </th>
                                    <td>
                                       <select id="size_select" required class="js-example-basic-single col-sm-12" name="course">
                                            <option value="" disabled selected>Select an option</option>
                                           @foreach($course as $item)
                                            <option value="{{$item->id}}">{{Str::limit($item->course_title,'40',$end='...')}}</option>
                                           @endforeach
                                                                                 
                                       </select>
                                         @error('course')
                                            <p class="text-danger">{{$message}}</p>
                                         @enderror
                                    </td>
                                  </tr>

                                  <tr>
                                    <th scope="row">
                                      <label>FAQ Title</label>
                                    </th>
                                    <td>
                                      <input type="text" required class="form-control" name="title" placeholder="Name">

                                         @error('title')
                                            <p class="text-danger">{{$message}}</p>
                                         @enderror
                                    </td>
                                  </tr>


                                  <tr>
                                    <th scope="row">
                                      <label>Summary</label>
                                    </th>
                                    <td>
                                    	<textarea placeholder="Faq Summary" class="form-control" name="summary" rows="3"></textarea>

                                         @error('summary')
                                            <p class="text-danger">{{$message}}</p>
                                         @enderror
                                    </td>
                                  </tr>

                                  <tr>
                                    <th scope="row">
                                      <label>Status</label>
                                    </th>
                                    <td>
                                    	<select class="js-example-basic-single col-sm-12" name="status">
                                    		<option value="1">Active</option>
                                    		<option value="0">Inactive</option>
                                    	</select>
                                    </td>
                                  </tr>

                                  <tr>
                                    <th scope="row">
                                      <label>Order By</label>
                                    </th>
                                    <td>
                                    	<input type="number" value="1" class="form-control" name="order">
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                          </div>
                          <div class="modal-footer">
                            <button class="btn btn-primary" type="submit" data-bs-original-title="" title="">Save</button>
                            <button class="btn btn-secondary" type="button" data-bs-dismiss="modal" data-bs-original-title="" title="">Close</button>



                          </div>
                        </div>
                      </div>
                    </div>

</form>                    
                  <!-- Modal -->
              </div>
            </div>
          </div>
        </div>
    </div>
</div>
</div>
<br>
<br>
<br>



@include('admin.asset.message')
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
                <th class="col-width-56d3c">Title</th>
                <th>Course</th>
                <th>Edit</th>
                <th>View </th>
                <th>Delete</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>SL</th>
                <th class="col-width-56d3c">Name</th>
                <th>Status</th>
                <th>Edit</th>
                <th>View</th>
                <th>Delete</th>
            </tr>
        </tfoot>
        <tbody>
          @php $i = 1 @endphp
          @foreach($faq as $item)
            <tr>
                  <th>{{$i++}}</th>
                  <td>{{$item->title}}</td>
                  <td>{{Str::limit($item->course->course_title, 25, $end='...')}}  </td>
                  <td>
                    <a href="{{route('admin.courses.faq.edit',$item->id)}}" class="btn btn-primary">
                      <i class="fa fa-edit"></i>
                    </a>
                  </td>
                  <td>

                      <a href="{{route('admin.courses.faq.view',$item->id)}}" class="btn btn-light">
                        <i class="fa fa-eye" aria-hidden="true"></i>
                      </a>
                  </td>
                  <td>
                      <a href="{{route('admin.courses.faq.destroy',$item->id)}}" class="btn btn-danger">
                        <i class="fa fa-trash" aria-hidden="true"></i>
                      </a>
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

  
<!-- ---- Select Option start----- -->

  <script id="rendered-js" >
    $(document).ready(function () {

      //hides dropdown content
      $(".size_chart").hide();

      //unhides first option content
      $("#option1").show();

      //listen to dropdown for change
      $("#size_select").change(function () {
      //rehide content on change
      $('.size_chart').hide();
      //unhides current item
      $('#' + $(this).val()).show();
      });

    });
    //# sourceURL=pen.js
    </script>
  
<!-- ---- Select Option start----- -->




        
    <!-- login js-->
      <script src="{{asset('public/assets/js/select2/select2.full.min.js')}}"></script>
      <script src="{{asset('public/assets/js/select2/select2-custom.js')}}"></script>
      <script src="{{asset('public/assets/js/select2/select2-custom.js')}}"></script>


      <!-- ----- Tinymce Editor ------- -->
  <script src='https://cdn.tiny.cloud/1/qagffr3pkuv17a8on1afax661irst1hbr4e6tbv888sz91jc/tinymce/4/tinymce.min.js'></script>
 
      <script src="{{asset('public/assets/js/myscript.js')}}"></script>



@endsection