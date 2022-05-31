@extends('admin.master')
@section('style') 
<style type="text/css">
input.skillbtnsdkc {
    width: 69%;
    padding: 7px  18px;
    border: 1px solid #cbcbcb;
    border-radius: 5px;
}
.multi-field {
    padding-bottom: 10px;
}
.img-70 {
    width: 130px !important;
}

.skill-aria ul li {
    display: inline-block;
    padding: 9px 5px;
}

.skill-aria ul li a {
  margin-left: 8px;
}
.row.d52d5c6ddsc input {
    width: 24%;
    padding: 6px 10px;
    border: 1px solid #c2c2c2;
    margin: 4px 4px;
}
.row.d52d5c6ddsc select {
    width: 22%;
    padding: 6px 10px;
    border: 1px solid #c2c2c2;
    margin: 4px 4px;
}
.row.submit-dksld {
    margin-top: 15px;
}

.single-form-aria.btndksld button.btn.btn-primary {
    width: 100%;
}
.single-form-aria {
    padding: 15px 0px;
}
</style>

    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/select2.css')}}">
@endsection
@section('main_aria')
  
  
          <div class="container-fluid">
            <div class="page-header">
              <div class="row">
                <div class="col-sm-6">
                  <h3>Edit Profile</h3>
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Users</li>
                    <li class="breadcrumb-item active">Edit Profile</li>
                  </ol>
                </div>
                <div class="col-sm-6">
                  <!-- Bookmark Start-->
                  <div class="bookmark">
                    <ul>
                      <li><a href="javascript:void(0)" data-container="body" data-bs-toggle="popover" data-placement="top" title="" data-original-title="Tables"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-inbox"><polyline points="22 12 16 12 14 15 10 15 8 12 2 12"></polyline><path d="M5.45 5.11L2 12v6a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-6l-3.45-6.89A2 2 0 0 0 16.76 4H7.24a2 2 0 0 0-1.79 1.11z"></path></svg></a></li>
                      <li><a href="javascript:void(0)" data-container="body" data-bs-toggle="popover" data-placement="top" title="" data-original-title="Chat"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg></a></li>
                      <li><a href="javascript:void(0)" data-container="body" data-bs-toggle="popover" data-placement="top" title="" data-original-title="Icons"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-command"><path d="M18 3a3 3 0 0 0-3 3v12a3 3 0 0 0 3 3 3 3 0 0 0 3-3 3 3 0 0 0-3-3H6a3 3 0 0 0-3 3 3 3 0 0 0 3 3 3 3 0 0 0 3-3V6a3 3 0 0 0-3-3 3 3 0 0 0-3 3 3 3 0 0 0 3 3h12a3 3 0 0 0 3-3 3 3 0 0 0-3-3z"></path></svg></a></li>
                      <li><a href="javascript:void(0)" data-container="body" data-bs-toggle="popover" data-placement="top" title="" data-original-title="Learning"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-layers"><polygon points="12 2 2 7 12 12 22 7 12 2"></polygon><polyline points="2 17 12 22 22 17"></polyline><polyline points="2 12 12 17 22 12"></polyline></svg></a></li>
                      <li><a href="javascript:void(0)"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star bookmark-search"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg></a>
                        <form class="form-inline search-form">
                          <div class="form-group form-control-search">
                            <input type="text" placeholder="Search..">
                          </div>
                        </form>
                      </li>
                    </ul>
                  </div>
                  <!-- Bookmark Ends-->
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid starts-->
          <div class="container-fluid">
            <div class="edit-profile">


@include('admin.asset.message')

              <div class="row">
                <div class="col-xl-4">
                  <div class="card food-sldkcs0d">
                    <div class="card-header pb-0">
                      <h4 class="card-title mb-0">My Profile</h4>
                      <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#" data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
                    </div>
                    <div class="card-body">
                        <div class="row mb-2">
                          <div class="profile-title">
                            <div class="media">                       
                            @if(Auth::user()->image)
                              <img class="img-70" alt="" src="{{asset('public/img/upload/profilepic/'.Auth::user()->image)}}">
                            @else
                              <img class="img-70" alt="" src="https://cdn-icons-png.flaticon.com/512/149/149071.png">

                            @endif
                              <hr>
                                <form action="{{route('admin.profile.image')}}" method="post" enctype="multipart/form-data">
                                  @csrf
                                      <div class="input-group mb-3">
                                            <input type="file" class="form-control" name="file">
                                      </div>
                                      <div class="input-group mb-3">
                                            <input type="submit" value="Upload Image" class="btn btn-primary btn-sm">
                                      </div>
                                </form>                        

                              <hr>

                              <div class="media-body">
                                <h3 class="mb-1 f-20 txt-primary">{{Auth::user()->name}}</h3>
                                <p class="f-12">Admin Dashboard</p>
                              </div>
                            </div>
                          </div>
                        </div>
<form action="{{route('admin.profile.update.basic')}}" method="post">
  @csrf
             <div class="mb-3">
              <label>Your Name</label>
                  <input type="text" placeholder="Your Name" name="name" class="form-control" value="{{Auth::user()->name}}">
             </div>
                <hr>
             <div class="mb-3">
              <label>Phone Number</label>
                  <input type="text" placeholder="Phone Number" name="phone" class="form-control"  value="{{Auth::user()->phone}}">
             </div>
             <div class="mb-3">
              <button class="btn btn-primary btn-sm">Update</button>
            </div>
</form>                        
<hr>






                    </div>
                  </div>
                </div>
                <div class="col-xl-8">



<div class="card">

  <h4 class="card-header">Change Password</h4>
          <div class="card-body">
              <div class="degree-table">
<form action="{{route('admin.profile.update.password')}}" method="post">
@csrf              	
              	<div class="row">
              		<div class="col-md-12">
              			<div class="single-form-aria">

	              			<label>Current Password</label>
	              			<input type="password" name="old_pass" class="form-control" placeholder="Please Enter Old Password">
              			</div>
              		</div>
              		<div class="col-md-6">
              			<div class="single-form-aria">
	              			<label>Current Password</label>
	              			<input type="password" name="new_pass" class="form-control" placeholder="New Password">
	              		</div>
              		</div>
              		<div class="col-md-6">
              			<div class="single-form-aria">
	              			<label>Confirm Password</label>
	              			<input type="password" name="confirm_pass" class="form-control" placeholder="Confirm Password">
	              		</div>
              		</div>
              		<div class="col-md-12">
              			<div class="single-form-aria btndksld">
              				<button class="btn btn-primary btn-sm btn-block">Update Password</button>
	              		</div>
              		</div>
              	</div>
</form>              	
              </div>
              </div>




</div>



                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid Ends-->


@endsection()
@section('script')


          <script id="rendered-js" >
$('.multi-field-wrapper').each(function () {
  var $wrapper = $('.multi-fields', this);
  $(".add-field", $(this)).click(function (e) {
    $('.multi-field:first-child', $wrapper).clone(true).appendTo($wrapper).find('input').val('').focus();
  });
  $('.multi-field .remove-field', $wrapper).click(function () {
    if ($('.multi-field', $wrapper).length > 1)
    $(this).parent('.multi-field').remove();
  });
});
//# sourceURL=pen.js
    </script>


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
