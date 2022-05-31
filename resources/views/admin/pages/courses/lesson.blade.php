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
                  <h3>Lesson</h3>
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
                <h6>  Lesson Information</h6>
            </div>
            <div class="col-md-6">             
              <div class="right-alagin">
                    <a class="btn-dkd42c" type="button" data-bs-toggle="modal" data-original-title="test" data-bs-target="#exampleModal" data-bs-original-title="" title="">ADD New Lesson</a>
<form action="{{route('admin.courses.page.lession.store')}}" method="post" enctype='multipart/form-data'>
  @csrf
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add New lesson</h5>
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
                                      <label>Thumbnail</label>
                                    </th>
                                    <td>
                                      <input type="file" class="form-control" name="thumbnail">
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Section Name</label>
                                    </th>
                                    <td>
                                      <input type="text" required class="form-control" name="name" placeholder="Name">
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Courses</label>
                                    </th>
                                    <td>
                                       <select id="size_select" required class="js-example-basic-single col-sm-12" name="course">
                                            <option value="" disabled selected>Select an option</option>
                                            @foreach($courses as $item)
                                              <option value="{{$item->id}}">{{$item->course_title}}</option>
                                            @endforeach
                                       </select>
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Section</label>
                                    </th>
                                    <td>
                                        <!--Size dropdown content-->
<div id="option1" class="size_chart">
  <select id="size_select" class="js-example-basic-single col-sm-12">
    <option value="" disabled selected>Select an option</option>
    </select>
</div>


@foreach($courses as $items)
   <!--Size dropdown content-->
    <div id="{{$items->id}}" class="size_chart">

        <select  name="section" class="form-control">
               @foreach($items->section as $dd)
                   <option value="{{$dd->id}}">{{$dd->title}}</option>
                @endforeach
        </select>

    </div>
@endforeach    


                                    </td>
                                  </tr>
     <!--                              <tr>
                                    <th scope="row">
                                      <label>Lesson Type</label>
                                    </th>
                                    <td>
                                        <select class="js-example-basic-single col-sm-12" name="lession_type">
                                          <option value="" disabled selected>Select an option</option>
                                          <option value="video">Video</option>
                                          <option value="pdf">PDF FILE</option>
                                          <option value="document">Document File</option>
                                          <option value="image">Image File</option>
                                        </select>
                                    </td>
                                  </tr> -->
                                  <tr>
                                    <th scope="row">
                                      <label>Video Type</label>
                                    </th>
                                    <td>
                                        <select class="js-example-basic-single col-sm-12" name="vide_type">
                                          <option value="" disabled selected>Select an option</option>
                                          <option value="1">Youtube</option>
                                          <option value="2">Vimeo </option>
                                        </select>
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Video Url</label>
                                    </th>
                                    <td>
                                      <input type="text" class="form-control" name="video_url">
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Duration</label>
                                    </th>
                                    <td>
                                      <input type="text" class="form-control" name="duration" placeholder="00:00:00" value="00:00:00">
                                      <span>HH:MM:SS</span>
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Summary</label>
                                    </th>
                                    <td>
                                    	<textarea class="form-control" name="summary" rows="3"></textarea>
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Details</label>
                                    </th>
                                    <td>
                                    	<textarea class="form-control d" rows="3" name="details"></textarea>
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Status</label>
                                    </th>
                                    <td>
                                      <select class="form-control" name="sataus">
                                        <option value="1">Active</option>
                                        <option value="2">Inactive</option>
                                      </select>
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
                <th class="col-width-56d3c">Name</th>
                <th>Lesson Type</th>
                <th>Status</th>
                <th>Category</th>
                <th>Edit</th>
                <th>View</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>SL</th>
                <th class="col-width-56d3c">Name</th>
                <th>Lesson Type</th>
                <th>Status</th>
                <th>Category</th>
                <th>Edit</th>
                <th>View</th>
                <th>Delete</th>
            </tr>
        </tfoot>
        <tbody>

          @php $i = 1; @endphp
          @foreach($lession as $item)
            <tr>
                <td>{{$i++}}</td>
                <td>{{Str::limit($item->lession_name, 30, $end='...')}}</td>
                <td>
                	<span>
                    @if($item->video_type == 1 )
                      Youtube
                    @else
                      Vimeo
                    @endif
                  </span>
                </td>
                <td>

                    @if($item->video_type == 1 )
                        <span class="badge badge-success">Active</span>
                    @else
                        <span class="badge badge-danger">Active</span>
                    @endif


                </td>
                <td>
                    {{$item->course->category->name}}
                </td>
                <td>
                	<a href="#" class="btn btn-secondary">
                		<i class="fa fa-edit"></i>
                	</a>
                </td>
                <td>                	
                	<a href="#" class="btn btn-primary">
                		<i class="fa fa-eye"></i>
                	</a>
                </td>
                <td>
                	<a href="#" class="btn btn-danger">
                		<i class="fa fa-trash"></i>
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
      <script src="{{asset('/assets/js/select2/select2.full.min.js')}}"></script>
      <script src="{{asset('/assets/js/select2/select2-custom.js')}}"></script>
      <script src="{{asset('/assets/js/select2/select2-custom.js')}}"></script>


      <!-- ----- Tinymce Editor ------- -->
  <script src='https://cdn.tiny.cloud/1/qagffr3pkuv17a8on1afax661irst1hbr4e6tbv888sz91jc/tinymce/4/tinymce.min.js'></script>
 
      <script src="{{asset('/assets/js/myscript.js')}}"></script>



@endsection