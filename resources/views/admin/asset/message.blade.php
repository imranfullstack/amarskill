@if(session()->has('success'))
    <div class="container-fluid">
	  <div class="row">
	    <div class="col-md-12">
			<br>
			<div class="alert alert-success alert-dismissible fade show" role="alert">
			  {{ session()->get('success') }}
			  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
		</div>
	  </div>
	</div>              	
@endif

@if(session()->has('error'))
    <div class="container-fluid">
	  <div class="row">
	    <div class="col-md-12">
			<br>
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
			  {{ session()->get('error') }}
			  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
		</div>
	  </div>
	</div>              	
@endif


