@extends('admin.master')
@section('style') 
<style type="text/css">
.btn-block{
	width: 100%;
}
</style>

    <link rel="stylesheet" type="text/css" href="{{asset('public/assets/css/select2.css')}}">
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
                <h6> About Us</h6>
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
              <div class="col-sm-8">
                <div class="card">
                  <div class="card-body">
                    <div class="table-responsive">

                    	<h5>About Content</h5>
                    	<hr>


@if($about)
<form action="{{route('admin.pages.about.update',$about->id)}}" method="post" enctype="multipart/form-data">
  @csrf
                        <table id="example" class="display nowrap" cellspacing="0" width="100%">
                            <tfoot>
                                <tr>
                                    <th>
                              <textarea rows="3" class="form-control d" name="description">{!! $about->about !!}</textarea>
                                    </th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Zero Configuration  Starts-->
              <div class="col-sm-4">
                <div class="card">
                  <div class="card-body">
                    <div class="table-responsive">
                          <div class="dkd">
                              <label>Update Image</label>
                                 <hr> 
                                  <img src="{{asset('public/img/upload/about/'.$about->image)}}" width="100%">

                                 <hr>
                              <input type="file" class="form-control" name="image">
                          </div>
                          <hr>
                          <div class="dkd">
                              <button type="submit" class="btn btn-primary btn-block btn-sm">Update</button>
                          </div>
</form>
@else
<form action="{{route('admin.pages.about.store')}}" method="post" enctype="multipart/form-data">
  @csrf
                        <table id="example" class="display nowrap" cellspacing="0" width="100%">
                            <tfoot>
                                <tr>
                                    <th>
                              <textarea rows="3" class="form-control d" name="description"></textarea>
                                    </th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Zero Configuration  Starts-->
              <div class="col-sm-4">
                <div class="card">
                  <div class="card-body">
                    <div class="table-responsive">
                          <div class="dkd">
                              <label>Update Image</label>
                                 <hr>
                              <input type="file" class="form-control" name="image">
                          </div>
                          <hr>
                          <div class="dkd">
                              <button type="submit" class="btn btn-primary btn-block btn-sm">Update</button>
                          </div>
</form>

@endif

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