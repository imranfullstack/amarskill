@extends('admin.master')
@section('style') 
<style type="text/css">

    [multiSelect] [parent]{
      display: none;
    }


    .single-video-dkslsd0c .col-md-3 img {
        width: 100%;
    } 

    .sectionorplaylist-video-dkslsdk > ul > li {
        display: block;
        padding: 16px 0px;
        border-bottom: 1px solid #dedede;
    }
    .video-title-dkdls0c3s3d ul li {
        display: inline-block;
    }
    .video-title-dkdls0c3s3d h5 {
        color: #000;
        font-weight: 700;
        line-height: 20px;
    }

      footer.footer {
        display: none !important;
    }


    .default-according .card .card-header .btn-link {
        margin-bottom: 18px;
    }


</style>

    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/select2.css')}}">


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
                <h6>  Video Play List</h6>
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










<div class="row">
              <div class="col-sm-12 col-lg-7 rightvideoplay">

<iframe width="100%" height="325px" src="{{$lession->video_url}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

              </div>
     
              <div class="col-sm-12 col-lg-5">
                    <div class="default-according style-1" id="accordionoc">
                         <!-- ------ Single COurse Section ------------ -->
                            @php 
                                $sections = App\Models\Coursesection::orderby('short_order','asc')->where('course_id',$course->id)->get();
                            @endphp
                    <div class="default-according" id="accordion">
                        @foreach($sections as $section)
                      <div class="card">
                        <div class="card-header" id="heading{{$section->id}}">
                          <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapse{{$section->id}}" aria-expanded="false" aria-controls="collapse{{$section->id}}">{{$section->title}}</button>
                          </h5>
                        </div>
                        <div class="collapse" id="collapse{{$section->id}}" aria-labelledby="heading{{$section->id}}" data-bs-parent="#accordion">
                          <div class="card-body">
                              <div class="row">
                                  <div class="sectionorplaylist-video-dkslsdk">
                                      <ul>
                                          @php
                                             $lessions = App\Models\Courselession::orderby('orderby','asc')->where('coursesection_id',$section->id)->get()
                                          @endphp
                                      @foreach($lessions as $item)
                                          <li>     
                                                  <a href="{{route('admin.courses.manage.single.video',$item->id)}}">
                                                      <div class="single-video-dkslsd0c">
                                                          <div class="row">
                                                              <div class="col-md-3">
                                                                @if($course->video_thumbnail)
                                                                  <img src="{{asset('public/img/upload/course/'.$course->video_thumbnail)}}">
                                                                @else
                                                                  <img src="{{asset('public/img/upload/course/1.jpg')}}">
                                                                @endif
                                                              </div>
                                                              <div class="col-md-9">
                                                                  <div class="video-title-dkdls0c3s3d">
                                                                      <h5>{{$item->lession_name}}</h5>
                                                                      <ul>
                                                                          <li><i class="fa fa-play"></i></li>
                                                                          <span>{{$item->video_duration}}</span>
                                                                      </ul>
                                                                  </div>
                                                              </div>
                                                          </div>
                                                      </div>
                                                  </a>            
                                              </li>
                                          @endforeach   
                                          </ul>
                                      </div>
                                  </div>
                            </div>
                          </div>
                      @endforeach        
                  </div>     
              </div>
            </div>
          </div>
              <!-- ----- 3rd Row End--- -->
       </div>
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








<!-- ----------- Select  ---------------- -->



  <!-- import multiSelect.js -->
  <script src="{{asset('/assets/js/multiSelect.js')}}"></script>
  <!-- my code -->
  <script>
    // =============== JS ================
    // make a new multiSelect instance
    const multi = new MultiSelect({
      // default 'please select option value'
      // this value can be '' or '0' or whatever you want
      pleaseSelectOptionValue: 'nothingHere'
    });

    // function example for send data with fetch()
    async function sendData() {
      // get the form data with getJson() method
      // pass true if you want all the <input> <textarea> and <select> values
      // pass false if you only want the select values
      const myDataJson = multi.getJson(true);
      // validate if all the selects have a valid value and not the 'please select a option' value
      const selectsAreValid = multi.simpleValidate();

      console.log(myDataJson, selectsAreValid)

      // call your api or make something with the form values
      if(selectsAreValid){
        let call = await fetch('/myapi/send', {
          'method': 'POST',
          'body': JSON.stringify(myDataJson),
          'headers': {
            'Content-Type': 'application/json'
          }
        });
        let responseJson = await call.json();
        // make something with your json
        console.log(responseJson);
      }

    }


    // ===================================

  </script>
  <script>
try {
  fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function(response) {
    return true;
  }).catch(function(e) {
    var carbonScript = document.createElement("script");
    carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CE7DC2JW&placement=wwwcssscriptcom";
    carbonScript.id = "_carbonads_js";
    document.getElementById("carbon-block").appendChild(carbonScript);
  });
} catch (error) {
  console.log(error);
}
</script>
  <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-46156385-1', 'cssscript.com');
  ga('send', 'pageview');

</script>

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



@endsection