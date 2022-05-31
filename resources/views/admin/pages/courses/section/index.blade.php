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
	
	

          <!-- Container-fluid starts-->
          <div class="container-fluid dashboard-default-sec">
            <div class="row">



<div class="container">
  <div class="row">
    <div class="col-md-12">
        <div class="card-header pb-0 heading-stylem top">
          <div class="row">
            <div class="col-md-6">                            
                <h6>  Course Section Information</h6>
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
<form action="{{route('admin.courses.category.store')}}" method="post" enctype="multipart/form-data"> 
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
              <div class="col-sm-9">
                <div class="card">
                  <div class="card-body">
                    <div class="table-responsive">
                      <table id="example" class="display nowrap" cellspacing="0" width="100%">
                          <thead>
                              <tr>
                                  <th>SL</th>
                                  <th>Section Name</th>
                                  <th class="col-width-56d3c">Course Name</th>
                                  <th>Status</th>
                                  <th>orderby</th>
                                  <th>update</th>
                                  <th>Delete</th>
                                  <th>Lession</th>
                              </tr>
                          </thead>
                          <tfoot>
                                <tr>
                                  <th>SL</th>
                                  <th>Section Name</th>
                                  <th>Status</th>
                                  <th>orderby</th>
                                  <th>update</th>
                                  <th>Delete</th>
                                  <th>Lession</th>
                                </tr>
                          </tfoot>
                          <tbody>
                            @php $i = 1 @endphp
                            @foreach($section as $item)
                            <tr>
                              <td>{{$i++}}</td>


                    <td>{{Str::limit($item->title, 20, $end='...')}} </td>
                    
                              <td>
                                @if($item->status == 1 )
                                  <span class="badge badge-success">Active</span>
                                @else
                                  <span class="badge badge-danger">Inactive</span>
                                @endif
                              </td>

<form action="{{route('admin.courses.section.order.update',$item->id)}}" method="post">
  @csrf  
                              <td>
                                  <input type="number" class="form-input" name="order" value="{{$item->short_order}}">
                              </td>
                              <td>
                                <input type="submit" value="UPDATE" class="btn btn-primary btn-sm">
                              </td>
</form>                              


                              <td>
                                  <a href="{{route('admin.courses.section.edit',$item->id)}}" class="btn btn-primary">
                                    <i class="fa fa-edit"></i>
                                  </a>
                              </td>
                              <td>
                                
                                  <a href="#" class="btn btn-danger">
                                    <i class="fa fa-trash"></i>
                                  </a>
                              </td>
                              <td>
                                
                                  <a href="{{route('admin.courses.lesson.manage',$item->id)}}" class="btn btn-primary">
                                    <i class="fa fa-plus"></i>
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


              <div class="col-md-3">




<form action="{{route('admin.courses.section.store',$id)}}" method="post">
  @csrf


                            <table class="table table-bordered" style="text-align: left;">
                                <thead>
                                  <tr>
                                    <th scope="col">Add New Section</th>
                                  </tr>
                                </thead>


                                <tbody>
                                  <tr>
                                    <td>
                                      <input type="text" class="form-control" name="title" placeholder="Name">
                                    </td>
                                  </tr>
                                  <tr>
                                    <td>
                                      <select class="form-control" name="status">
                                        <option value="1">Active</option>
                                        <option value="2">Inactive</option>
                                      </select>
                                    </td>
                                  </tr>


                                  <tr>
                                    <td>
                                      <input type="number" class="form-control" name="short_order" placeholder="0" required>
                                    </td>
                                  </tr>
                                </tbody>                 
                              </table>
                          <div class="modal-footer">
                            <button class="btn btn-primary" type="submit" data-bs-original-title="" title="">Save</button>
                            <button class="btn btn-secondary" type="button" data-bs-dismiss="modal" data-bs-original-title="" title="">Close</button>
                          </div>
                        </div>
                      </form>   



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