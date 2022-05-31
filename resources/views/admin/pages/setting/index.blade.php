@extends('admin.master')
@section('style') 
<style type="text/css">
  .multi-field-wrapper.Requirements-form input {
    width: 80% !important;
    border: 1px solid #b1b1b166;
    padding: 6px 11px;
}

.multi-field-wrapper.Requirements-form .multi-fields .multi-field {
    margin: 12px 0px;
}

ol.breadcrumb {
    text-align: right;
    float: right;
}



.form-right.menu.sticky .row {
    position: fixed;
    top: 0;
    margin-top: 100px;
}
</style>

    <link rel="stylesheet" type="text/css" href="{{asset('public/assets/css/select2.css')}}">
@endsection
@section('main_aria')



          <!-- Container-fluid starts-->
          <div class="container-fluid dashboard-default-sec">
            <div class="row">


              <!-- ----- 3rd Row --- -->
<div class="container-fluid">
        <div class="card">

          <div class="page-header top-heading-form-26d6c">
          <div class="row">
                <div class="col-sm-6">
                  <h5> <i class="fa fa-cogs" aria-hidden="true"></i> Amar Skill Site Setting Panel</h5>
                </div>
                <div class="col-sm-6">
                  <!-- Bookmark Start-->
                  <div class="bookmark">
                    
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html" data-bs-original-title="" title="">Dashboard</a></li>
                    <li class="breadcrumb-item">Settings</li>
                  </ol>
                  </div>
                  <!-- Bookmark Ends-->
                </div>
              </div>
              </div>
    </div>
</div>

<div class="container-fluid">
            <div class="row">
              <div class="col-sm-12 col-xl-9">
                <div class="row">
                  <div class="col-sm-12">
                    <div class="card">
                      <div class="card-header pb-0 heading-stylem top">
                        <div class="row">
                          <div class="col-md-6">                            
                              <h6>  Basic Setting </h6>
                          </div>
                        </div>
                      </div>

@php 
  $setting = App\Models\Basicsetting::first();
@endphp

@if($setting)
<form action="{{route('admin.setting.basic.update',$setting->id)}}"  method="post"  enctype="multipart/form-data">
  @csrf
      <div class="card-body">
        <!-- Single Form  Start -->
         <div class="single-form">
            <div class="mb-3">
              <div class="row">
                <div class="col-md-10">
                    <label>Favicon</label>
                    <input type="file" class="form-control" name="favicon">
                </div>
                <div class="col-md-2">
                  <img src="{{asset('/public/img/upload/setting/'.$setting->favicon)}}" width="100%">
                </div>
              </div>
            </div>
         </div>
         <!-- Single Form  End -->
        <!-- Single Form  Start -->
         <div class="single-form">
            <div class="mb-3">
              <div class="row">
                <div class="col-md-10">
                    <label>Site Logo</label>
                    <input type="file" class="form-control" name="sitelogo">
                </div>
                <div class="col-md-2">
                  <img src="{{asset('/public/img/upload/setting/'.$setting->logo)}}" width="100%">
                </div>
              </div>
            </div>
         </div>
         <!-- Single Form  End -->
        <!-- Single Form  Start -->
         <div class="single-form">
            <div class="mb-3">
              <div class="row">
                <label>Site Title</label>
                  <input type="text" class="form-control" name="site_title" placeholder="Enter Site Title" value="{{$setting->site_title}}">
              </div>
            </div>
         </div>
         <!-- Single Form  End -->
        </div>
        <div class="card-footer">
          <button type="submit" class="btn btn-primary">Update</button>
          <a href="{{route('admin.dashboard')}}" class="btn btn-secondary">Cancel</a>
        </div>
  </form>  
@else

<form action="{{route('admin.setting.basic.store')}}"  method="post"  enctype="multipart/form-data">
  @csrf
      <div class="card-body">
        <!-- Single Form  Start -->
         <div class="single-form">
            <div class="mb-3">
              <div class="row">
                <div class="col-md-10">
                    <label>Favicon</label>
                    <input type="file" class="form-control" name="favicon">
                </div>
                <div class="col-md-2">
                  d
                </div>
              </div>
            </div>
         </div>
         <!-- Single Form  End -->
        <!-- Single Form  Start -->
         <div class="single-form">
            <div class="mb-3">
              <div class="row">
                <div class="col-md-10">
                    <label>Site Logo</label>
                    <input type="file" class="form-control" name="sitelogo">
                </div>
                <div class="col-md-2">
                  d
                </div>
              </div>
            </div>
         </div>
         <!-- Single Form  End -->
        <!-- Single Form  Start -->
         <div class="single-form">
            <div class="mb-3">
              <div class="row">
                <label>Site Title</label>
                  <input type="text" class="form-control" name="site_title" placeholder="Enter Site Title">
              </div>
            </div>
         </div>
         <!-- Single Form  End -->
        </div>
        <div class="card-footer">
          <button type="submit" class="btn btn-primary">Save</button>
          <a href="{{route('admin.dashboard')}}" class="btn btn-secondary">Cancel</a>
        </div>
</form>  
@endif
                    
                    </div>

                  </div>
                </div>
              </div>
              <div class="col-sm-12 col-xl-3 form-right menu">
                <div class="row">
                  <div class="col-sm-12">
                    <div class="card">
                      <div class="card-header pb-0">
                        <h6> Add a New Course</h6>
                      </div>
                      <div class="card-body">
                          <ul>
                            <li><a href="#"> <i class="fa fa-long-arrow-right" aria-hidden="true"></i> Basic</a></li>
                            <li><a href="#requirements"> <i class="fa fa-long-arrow-right" aria-hidden="true"></i> Requirements</a></li>
                            <li><a href="#outcomes"> <i class="fa fa-long-arrow-right" aria-hidden="true"></i> Outcomes</a></li>
                            <li><a href="#pricing"> <i class="fa fa-long-arrow-right" aria-hidden="true"></i> Pricing</a></li>
                            <li><a href="#media"> <i class="fa fa-long-arrow-right" aria-hidden="true"></i> Media</a></li>
                            <li><a href="#seo"> <i class="fa fa-long-arrow-right" aria-hidden="true"></i> Seo</a></li>
                          </ul>
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
        <!-- footer start-->

@endsection()


@section('script')



        
    <!-- login js-->
      <script src="{{asset('public/assets/js/select2/select2.full.min.js')}}"></script>
      <script src="{{asset('public/assets/js/select2/select2-custom.js')}}"></script>
      <script src="{{asset('public/assets/js/select2/select2-custom.js')}}"></script>
      <!-- ----- Tinymce Editor ------- -->
  <script src='https://cdn.tiny.cloud/1/qagffr3pkuv17a8on1afax661irst1hbr4e6tbv888sz91jc/tinymce/4/tinymce.min.js'></script>
      <script id="rendered-js" >
tinymce.init({
  selector: 'textarea.d',
  height: 150,
  theme: 'modern',
  plugins: 'print preview fullpage powerpaste searchreplace autolink directionality advcode visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists textcolor wordcount tinymcespellchecker a11ychecker imagetools mediaembed  linkchecker contextmenu colorpicker textpattern help',
  toolbar1: 'formatselect | bold italic strikethrough forecolor backcolor | link | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat',
  image_advtab: true,
  templates: [
  { title: 'Test template 1', content: 'Test 1' },
  { title: 'Test template 2', content: 'Test 2' }],

  content_css: [
  '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
  '//www.tinymce.com/css/codepen.min.css'] });
//# sourceURL=pen.js
    </script>

      <script src="{{asset('public/assets/js/custom.js')}}"></script>

            <script id="rendered-js" >
var div_top = $('.menu').offset().top;

$(window).scroll(function () {
  var window_top = $(window).scrollTop() + 20;
  if (window_top > div_top) {
    if (!$('.menu').is('.sticky')) {
      $('.menu').addClass('sticky');
    }
  } else {
    $('.menu').removeClass('sticky');
  }
});
//# sourceURL=pen.js
    </script>



<!-- ----- Selection --- -->

<script>
function myFunction() {
  var checkBox = document.getElementById("myCheck");
  var text = document.getElementById("text");
  if (checkBox.checked == false){
     text.style.display = "none";
  } else {
    text.style.display = "block";
  }
}
</script>



@endsection