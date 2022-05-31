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
                  <h3>Cupon</h3>
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html" data-bs-original-title="" title="">Home</a></li>
                    <li class="breadcrumb-item">Cupon</li>
                  </ol>
                </div>
              </div>
            </div>
          </div>


@include('admin.asset.message')
          <!-- Container-fluid starts-->
          <div class="container-fluid dashboard-default-sec">
            <div class="row">


<div class="container">
  <div class="row">
    <div class="col-md-12">
        <div class="card-header pb-0 heading-stylem top">
          <div class="row">
            <div class="col-md-6">                            
                <h6>  Cupon Information</h6>
            </div>
            <div class="col-md-6">             
              <div class="right-alagin">
                    <a class="btn-dkd42c" type="button" data-bs-toggle="modal" data-original-title="test" data-bs-target="#exampleModal" data-bs-original-title="" title="">ADD New Cupon</a>
                    
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add New Cupon</h5>
                            <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close" data-bs-original-title="" title=""></button>
                          </div>
                          <div class="modal-body">
<form action="{{route('admin.courses.coupons.store')}}" method="post">
  @csrf
  

                            <table class="table table-bordered" style="text-align: left;">
                                <tbody>
                                  <tr>
                                    <th scope="row">
                                      <label>Cupon Name</label>
                                    </th>
                                    <td>
                                      <input type="text" class="form-control" name="cuponname" placeholder="Name">
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Cupon Code</label>
                                    </th>
                                    <td>
                                      <input type="text" class="form-control" name="cupon_code" placeholder="Code">
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Course</label>
                                    </th>
                                    <td>
                                        <select class="js-example-basic-single " name="course">
                                          <option value="NULL" selected disabled>--- Please Select ---</option>
                                          @foreach($course as $item)
                                          <option value="{{$item->id}}">{{$item->course_title}}</option>
                                          @endforeach
                                        </select>
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Discount</label><br>
                                     	<span class="btn btn-light btn-xs">in in Percentage ( % ) </span>
                                    </th>
                                    <td>
                                      <input type="number"    class="form-control" name="discount" placeholder="Discount" required maxlength="3">
                                    </td>
                                  </tr>
                                  <tr>
                                    <th scope="row">
                                      <label>Valid Till</label>
                                    </th>
                                    <td>
                                      <input type="date" class="form-control" name="validtill" placeholder="Name" >
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
                                </tbody>
                              </table>
                        
                          </div>
                          <div class="modal-footer">
                            <button class="btn btn-primary" type="submit" data-bs-original-title="" title="">Save</button>
                            <button class="btn btn-secondary" type="button" data-bs-dismiss="modal" data-bs-original-title="" title="">Close</button>


</form>      
                          </div>
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
                <th class="col-width-56d3c">Name</th>
                <th>Cupon Code</th>
                <th>Discount</th>
                <th>Edit</th>
                <th>View</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>SL</th>
                <th class="col-width-56d3c">Name</th>
                <th>Cupon Code</th>
                <th>Discount</th>
                <th>Edit</th>
                <th>View</th>
                <th>Delete</th>
            </tr>
        </tfoot>
        <tbody>

@php $i = 1 @endphp
@foreach($cupon as $item)          
            <tr>
                <td>{{$i++}}</td>
                <td>{{$item->cuponname}}</td>
                <td>{{$item->cupon_code}}</td>
                <td>
                  <span>{{$item->discount}} <b>%</b> </span>
                </td>
                <td>
                  <a href="{{route('admin.cupons.edit',$item->id)}}" class="btn btn-secondary">
                    <i class="fa fa-edit"></i>
                  </a>
                </td>
                <td>                  
                  <a href="{{route('admin.cupons.show',$item->id)}}" class="btn btn-primary">
                    <i class="fa fa-eye"></i>
                  </a>
                </td>
                <td>
                  <a href="{{route('admin.cupons.trash',$item->id)}}" class="btn btn-danger">
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

  


        
    <!-- login js-->
      <script src="{{asset('public/assets/js/select2/select2.full.min.js')}}"></script>
      <script src="{{asset('public/assets/js/select2/select2-custom.js')}}"></script>
      <script src="{{asset('public/assets/js/select2/select2-custom.js')}}"></script>


      <!-- ----- Tinymce Editor ------- -->
  <script src='https://cdn.tiny.cloud/1/qagffr3pkuv17a8on1afax661irst1hbr4e6tbv888sz91jc/tinymce/4/tinymce.min.js'></script>
 
      <script src="{{asset('public/assets/js/myscript.js')}}"></script>



@endsection