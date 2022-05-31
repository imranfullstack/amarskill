@extends('instructor.master')
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

    <link rel="stylesheet" type="text/css" href="{{asset('/public/assets/css/select2.css')}}">
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
                  <h5> <i class="fa fa-plus" aria-hidden="true"></i> Add a New Course</h5>
                </div>
                <div class="col-sm-6">
                  <!-- Bookmark Start-->
                  <div class="bookmark">
                    
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html" data-bs-original-title="" title="">Dashboard</a></li>
                    <li class="breadcrumb-item">Courses</li>
                    <li class="breadcrumb-item active">Create</li>
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
                              <h6>  Basic Informations </h6>
                          </div>
                          <div class="col-md-6">             
                            <div class="right-alagin">
                              <a href="{{route('instructor.course.index')}}" class="btn-dkd42c"> Back to Course List</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="card-body">
                        <form class="theme-form" action="{{route('instructor.course.store')}}" method="post" enctype="multipart/form-data">
                          @csrf
                       <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0" for="exampleInputPassword1">Course Title  <span style="color: red">*</span> </label>
                              </div>
                              <div class="col-md-9">
                                  <input class="form-control" type="text" placeholder="Enter Course Title" name="course_title">

                                @error('course_title')
                                <p class="text-danger">{{$message}}</p>
                                @enderror
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  Start -->
                       <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0" for="exampleInputPassword1">Short Description   </label>
                              </div>
                              <div class="col-md-9">
                                <textarea rows="2" class="form-control" name="short_description"></textarea>
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  Start -->
                       <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0" for="exampleInputPassword1">Description  </label>
                              </div>
                              <div class="col-md-9">
                                <textarea rows="3" class="form-control d" name="description"></textarea>
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  Start -->

@php
  $category = App\Models\Coursecategory::orderby('id','desc')->where('status','1')->get();
@endphp

<h1></h1>
                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Category <span style="color: red">*</span></label>
                              </div>
                              <div class="col-md-9">
                                   <select class="js-example-basic-single col-sm-12" name="category">
                                @foreach($category as $catitem)
                                  <option value="{{$catitem->id}}">{{$catitem->name}}</option>
                                @endforeach
                              </select>


                                @error('category')
                                <p class="text-danger">{{$message}}</p>
                                @enderror
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->
                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Level <span style="color: red">*</span></label>
                              </div>
                              <div class="col-md-9">
                                   <select class="form-control" name="lavel">
                                  <option value="2">Beginner</option>
                                  <option value="1">Advanced</option>
                                  <option value="3">Intermediate</option>
                              </select>
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->

                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Language <span style="color: red">*</span></label>
                              </div>
                              <div class="col-md-9">
                               <select class="js-example-basic-single col-sm-12" name="lang">
                                  <option value="1">Bangla</option>
                                  <option value="2" selected>English</option>
                              </select>
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->
                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                              </div>
                              <div class="col-md-9">
                                    <div class="form-check">
                                      <input class="form-check-input" type="checkbox" value="1" id="topcourse" name="top_course">
                                      <label class="form-check-label" for="topcourse">
                                         Check If This Course is Top Course
                                      </label>
                                    </div>
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->

                      <div class="card-header pb-0 heading-style" id="requirements">
                        <div class="row">
                          <div class="col-md-12">             
                            <h6>Requirements</h6>
                          </div>
                        </div>
                      </div>

<br>
<br>


                         
                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Requirements</label>
                              </div>
                              <div class="col-md-9">
                                 
                                    <div class="multi-field-wrapper Requirements-form">
                                        <div class="multi-fields">
                                          <div class="multi-field">
                                            <input type="text" name="requirements[]">
                                            <button type="button" class="remove-field btn btn-danger">
                                              <i class="fa fa-minus" aria-hidden="true"></i>
                                            </button>
                                          </div>
                                        </div>
                                      <button type="button" class="add-field btn btn-primary">
                                        <i class="fa fa-plus"></i> Add Row
                                      </button>
                                    </div>

                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->

                      <div class="card-header pb-0 heading-style" id="outcomes">
                        <div class="row">
                          <div class="col-md-12">   
                        <h6>Outcomes</h6>
                          </div>
                        </div>
                      </div>


<br>
<br>
                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Outcomes</label>
                              </div>
                              <div class="col-md-9">
                                 
                                    <div class="multi-field-wrapper Requirements-form">
                                        <div class="multi-fields">
                                          <div class="multi-field">
                                            <input type="text" name="outcomes[]">
                                            <button type="button" class="remove-field btn btn-danger">
                                              <i class="fa fa-minus" aria-hidden="true"></i>
                                            </button>
                                          </div>
                                        </div>
                                      <button type="button" class="add-field btn btn-primary">
                                        <i class="fa fa-plus"></i> Add Row
                                      </button>
                                    </div>

                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->

                     
                      <div class="card-header pb-0 heading-style" id="pricing">
                        <div class="row">
                          <div class="col-md-12">   
                        <h6>Pricing</h6>
                          </div>
                        </div>
                      </div>


<br>
<br>    
                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Pricing</label>
                              </div>
                              <div class="col-md-9">
<div class="form-check">
  <input type="radio" id="myCheck" name="d" onclick="myFunction()">
       <label for="myCheck">Paid Course </label> 
  <input type="radio" id="age1"  name="d" onclick="myFunction()">
  <label for="age1">Free Course</label>
    <p id="text" style="display:none">
        <br>
      <input type="number" class="form-control" name="price" placeholder="Enter Course Course Price">
    </p>
</div>

                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->
                      
                      <div class="card-header pb-0 heading-style" id="media">
                        <div class="row">
                          <div class="col-md-12">   
                        <h6>Media</h6>
                          </div>
                        </div>
                      </div>


<br>
<br>  

                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Overview Provider</label>
                              </div>
                              <div class="col-md-9">
                                 
                               <select class="js-example-basic-single col-sm-12" name="video_provider">
                                  <option value="1">Youtube</option>
                                  <option value="2">Vimeo</option>
                              </select>
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->
                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Video Link </label>
                              </div>
                              <div class="col-md-9">
                                 <input type="text" class="form-control" placeholder="Video URL ( Exampel: https://youtu.be/tyIcH4015aE  ) " name="video_link">
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->
                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Thumbnail</label>
                              </div>
                              <div class="col-md-9">
                                 
                                 <input type="file" name="thumbnail" class="form-control">
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->
                      <div class="card-header pb-0 heading-style" id="seo">
                        <div class="row">
                          <div class="col-md-12">   
                        <h6>SEO</h6>
                          </div>
                        </div>
                      </div>


<br>
<br>  
                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Meta Keywords</label>
                              </div>
                              <div class="col-md-9">
                                 
                                 <input type="text" class="form-control" placeholder="Comma seperated: i.e. Wordpress, Ecommerce" name="meta_keyword">
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->
                      <!-- Single Form  Start -->
                       <div class="single-form">
                          <div class="mb-3">
                            <div class="row">
                              <div class="col-md-3">
                                 <label class="col-form-label pt-0">Meta Description</label>
                              </div>
                              <div class="col-md-9">
                                 
                                 <textarea class="form-control" rows="3" name="meta_description"></textarea>
                              </div>
                            </div>
                          </div>
                       </div>
                       <!-- Single Form  End -->



                      </div>
                      <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button class="btn btn-secondary">Cancel</button>
                      </div>
                    </div>

                        </form>
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
      <script src="{{asset('/public/assets/js/select2/select2.full.min.js')}}"></script>
      <script src="{{asset('/public/assets/js/select2/select2-custom.js')}}"></script>
      <script src="{{asset('/public/assets/js/select2/select2-custom.js')}}"></script>
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

      <script src="{{asset('/public/assets/js/custom.js')}}"></script>

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