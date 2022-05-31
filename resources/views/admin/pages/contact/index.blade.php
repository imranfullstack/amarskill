@extends('admin.master')
@section('style') 
<style type="text/css">

</style>

    <link rel="stylesheet" type="text/css" href="{{asset('public/assets/css/select2.css')}}">
@endsection
@section('main_aria')
	
	

 

          <!-- Container-fluid starts-->
          <div class="container-fluid dashboard-default-sec">
            <div class="row">





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
                <th>Phone</th>
                <th>Email</th>
                <th>Subject </th>
                <th>Message</th>
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
@php 
  $i = 1;
@endphp         
@foreach($contact as $item)         
         <tr>
         	<td>{{$i++}}</td>
         	<td title="{{$item->name}}">{{Str::limit($item->name,12,$end='...')}}</td>
          <td>{{$item->phone}}</td>
          <td title="{{$item->email}}">{{Str::limit($item->email,12,$end='...')}}</td>
          <td  title="{{$item->subject}}">{{Str::limit($item->subject,12,$end='...')}}</td>
          <td>
            <a href="{{route('admin.pages.contact.contact.view',$item->id)}}" class="btn btn-primary btn-sm">
              <i class="fa fa-eye"></i>
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