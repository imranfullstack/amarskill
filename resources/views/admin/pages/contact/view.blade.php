@extends('admin.master')
@section('style') 
<style type="text/css">
.btn-block {
    width: 100%;
}
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
              <div class="col-md-2"></div>
              <div class="col-sm-8">
                <div class="card">
                  <div class="card-body">
                    <div class="table-responsive contact-detels">
                    	<h5>Contact Form Submit By {{$contact->name}}</h5>
<hr>
                    	<h6>Contact Name</h6>
                    	<p>{{$contact->name}}</p>
<hr>
<hr>
                    	<h6>Contact Phone</h6>
                    	<p>{{$contact->phone}}</p>
<hr>  
<hr>
                    	<h6>Contact Email</h6>
                    	<p>{{$contact->email}}</p>
<hr>  
<hr>
                    	<h6>Contact subject</h6>
                    	<p>{{$contact->subject}}</p>
<hr> 
<hr>
                    	<h6>Contact Message</h6>
                    	<p>{{$contact->message}}</p>    	
                    </div>
                    <hr>
                    <a href="{{route('admin.pages.contact.contact.list')}}" class="btn btn-primary btn-sm btn-block">Go Back</a>
                  </div>
                </div>
              </div>
              <div class="col-md-2"></div>
            </div>
          </div>




              <!-- ----- 3rd Row End--- -->
            </div>
          </div>
          <!-- Container-fluid Ends-->
        </div>


@endsection()


