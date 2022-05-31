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
                <h6> CONTACT US</h6>
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

                    	<h5>CONTACT US</h5>
                    	<hr>
@if($contact)                    	
	

<form action="{{route('admin.pages.contact.contact.update',$contact->id)}}" method="post">
	@csrf
	<!-- Single Form  -->
		<div class="single-form">
			<div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">
			  	<i class="fa fa-phone"></i>
			  </span>
			  <input type="text" class="form-control" placeholder="Enter Phone" name="phone" value="{{$contact->phone}}" required>
			</div>
		</div>
	<!-- Single Form  End-->
	<!-- Single Form  -->
		<div class="single-form">
			<div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">
			  	<i class="fa fa-envelope-square"></i>
			  </span>
			  <input type="text" class="form-control" placeholder="Enter Email" name="email" value="{{$contact->email}}" required>
			</div>
		</div>
	<!-- Single Form  End-->
	<!-- Single Form  -->
		<div class="single-form">
			<div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">
			  	<i class="fa fa-street-view"></i>
			  </span>
			  <input type="text" class="form-control" placeholder="Location" name="location" value="{{$contact->location}}" required>
			</div>
		</div>
	<div class="dkd">
		<button type="submit" class="btn btn-primary btn-block btn-sm">Update</button>
	</div>
	<!-- Single Form  End-->
</form>


@else

<form action="{{route('admin.pages.contact.contact.store')}}" method="post">
	@csrf
	<!-- Single Form  -->
		<div class="single-form">
			<div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">
			  	<i class="fa fa-phone"></i>
			  </span>
			  <input type="text" class="form-control" placeholder="Enter Phone" name="phone" required>
			</div>
		</div>
	<!-- Single Form  End-->
	<!-- Single Form  -->
		<div class="single-form">
			<div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">
			  	<i class="fa fa-envelope-square"></i>
			  </span>
			  <input type="text" class="form-control" placeholder="Enter Email" name="email" required>
			</div>
		</div>
	<!-- Single Form  End-->
	<!-- Single Form  -->
		<div class="single-form">
			<div class="input-group mb-3">
			  <span class="input-group-text" id="basic-addon1">
			  	<i class="fa fa-street-view"></i>
			  </span>
			  <input type="text" class="form-control" placeholder="Location" name="location" require>d
			</div>
		</div>
	<div class="dkd">
		<button type="submit" class="btn btn-primary btn-block btn-sm">Save</button>
	</div>
	<!-- Single Form  End-->
</form>



@endif
                    	<hr>
                    	<h5>FOLLOW US LINKS</h5>
                    	<hr>
<form action="{{route('admin.pages.social.social.store')}}" method="post">
	@csrf
	

<!-- Single Form  -->
	<div class="single-form">
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">
		  	<i class="fa fa-facebook-square"></i>
		  </span>
		  @if($contact->facebook_link)
		  	<input type="link" class="form-control" placeholder="Enter Facebook Link" name="facebook_link" value="{{$contact->facebook_link}}">
		  @else
		  	<input type="link" class="form-control" placeholder="Enter Facebook Link" name="facebook_link">
		  @endif
		</div>
	</div>
<!-- Single Form  End-->
<!-- Single Form  -->
	<div class="single-form">
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">
		  	<i class="fa fa-twitter"></i>
		  </span>
		  @if($contact->twitter_link)
		  	<input type="url" class="form-control" placeholder="Enter Twitter Link" name="twitter_link" value="{{$contact->twitter_link}}">
		  @else
		  	<input type="url" class="form-control" placeholder="Enter Twitter Link" name="twitter_link">
		  @endif
		</div>
	</div>
<!-- Single Form  End-->
<!-- Single Form  -->
	<div class="single-form">
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">
		  	<i class="fa fa-linkedin"></i>
		  </span>
				  @if($contact->linkedin_link)
				 		 <input type="url" class="form-control" placeholder="Enter Linkedin Link" name="linkedin_link" value="{{$contact->linkedin_link}}">
				  @else
				 		 <input type="url" class="form-control" placeholder="Enter Linkedin Link" name="linkedin_link">
				  @endif
		</div>
	</div>
<!-- Single Form  End-->
<!-- Single Form  -->
	<div class="single-form">
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">
		  	<i class="fa fa-youtube"></i>
		  </span>

		    @if($contact->youtube_link)
				 		 <input type="url" class="form-control" placeholder="Enter Linkedin Link" name="youtube_link" value="{{$contact->youtube_link}}">
				  @else
				 		 <input type="url" class="form-control" placeholder="Enter Linkedin Link" name="youtube_link" value="{{$contact->youtube_link}}">
				  @endif
		</div>
	</div>
<!-- Single Form  End-->
<!-- Single Form  -->
	<div class="single-form">
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1">
		  	<i class="fa fa-instagram"></i>
		  </span>


		    @if($contact->instagram_link)
				 		 <input type="url" class="form-control" placeholder="Enter Linkedin Link" name="instagram_link" value="{{$contact->instagram_link}}" value="{{$contact->instagram_link}}">
				  @else
				 		 <input type="url" class="form-control" placeholder="Enter Linkedin Link" name="instagram_link">
				  @endif
		</div>
	</div>
<div class="dkd">
	<button type="submit" class="btn btn-primary btn-block btn-sm">Update</button>
</div>
<!-- Single Form  End-->
</form>


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

                	<label>Banner Image</label>
                	<hr>
                	<input type="file" name="" class="form-control">
</div>
<hr>
<div class="dkd">
	<a href="#" class="btn btn-primary btn-block btn-sm">Update</a>
</div>



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