@extends('instructor.master')
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
  .form-aria-dkdl0c3sd .single-form {
    padding: 12px  0px;
}
.card.border-dlslc0d {
    border: 1px solid #c9d6e8;
}
.form-aria-dkdl0c3sd input.form-control {
    border: 1px  solid #c9d6e8;
}
input.btn.btn-primary.btn-ddfdjdd0 {
    width: 100%;
}
.table-responsive div#example_wrapper .dt-buttons a:last-child {
    display: none;
}
table.dataTable input, table.dataTable select {
    border: 1px  solid #d4d4d4;
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



<div class="container">
  <div class="row">
    <div class="col-md-12">
        <div class="card-header pb-0 heading-stylem top">
          <div class="row">
            <div class="col-md-12">                            
                <h6>  Section Information</h6>
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
              <div class="col-sm-2">
              </div>

              <div class="col-sm-8">
                <div class="card border-dlslc0d">

<form action="{{route('instructor.course.manage.lession.update',$lession->id)}}" method="post" enctype='multipart/form-data'>
  @csrf
                  <div class="card-body">
                    <h6> <i class="fa fa-edit"></i> New Lession</h6>
                    <br>
                    <div class="form-aria-dkdl0c3sd">
                    <!-- ------- Single Form ---------->
	                      <div class="single-form">
	                        <label>Lession Name</label>
	                        <input type="text" placeholder="lession name" name="lessionname" class="form-control" value="{{$lession->lession_name}}">
	                      </div>
                    <!-- ------- Single Form End---------->
                    <!-- ------- Single Form ---------->
                          <label>Lession Name</label>
	                           <div class="single-form">
                            <div class="form-check">

                              @if($lession->lock)
                                <input class="form-check-input" type="checkbox" value="1" id="unlock" name="unlock" checked>
                              @else
                               <input class="form-check-input" type="checkbox" value="1" id="unlock" name="unlock">
                              @endif
                              <label class="form-check-label" for="unlock">
                                 Anyone Can see thie Class
                              </label>
                            </div>
                        </div>
                    <!-- ------- Single Form End---------->
                    <!-- ------- Single Form ---------->
                        <div class="single-form">
                          <label>Summary</label>
                          <textarea rows="3" class="form-control" name="summary"> {{$lession->summary}}</textarea>
                        </div>
                    <!-- ------- Single Form End---------->
                    <!-- ------- Single Form ---------->
	                      <div class="single-form">
	                        <label>Details</label>
	                        <textarea rows="3" class="form-control" name="details"> {{$lession->details}} </textarea>
	                      </div>
                    <!-- ------- Single Form End---------->
                      <div class="single-form">
                        <input type="submit" value="SAVE" class="btn btn-primary btn-ddfdjdd0">
                      </div>
                    </div>
                  </div>
</form>                  
                </div>
              </div>
<!-- </form>                             -->
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