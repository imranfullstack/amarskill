@extends('instructor.master')
@section('style') 
<style type="text/css">

    [multiSelect] [parent]{
      display: none;
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
                <h6>  Course Information</h6>
            </div>
            <div class="col-md-6">             
              <div class="right-alagin">
                    
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
              <div class="col-sm-12">
                <div class="card">
                  <div class="card-body">
                    <div class="table-responsive">


<table id="example" class="display nowrap" cellspacing="0" width="100%">
        <thead>
              <tr>
                <th>SL</th>
                <th>image</th>
                <th class="col-width-56d3c">Name</th>
                <th>Edit Course</th>
                <th>Manage Section</th>
                <th>Manage Lession</th>
                <th>Manage Assignment</th>
              </tr>
        </thead>
        <tfoot>
              <tr>
                <th>SL</th>
                <th>image</th>
                <th class="col-width-56d3c">Name</th>
                <th>Edit Course</th>
                <th>Manage Section</th>
                <th>Manage Lession</th>
                <th>Manage Assignment</th>
              </tr>
        </tfoot>
        <tbody>
            <tr>
              <td>1</td>
              <td>
                  @if($course->video_thumbnail)
                   <img src="{{asset('public/img/upload/course/'.$course->video_thumbnail)}}" width="30px">
                  @else
                    <img src="{{asset('public/video-defult.jpg')}}" width="30px">
                  @endif
              </td>
              <td>{{$course->course_title}}</td>
              <td>
                <a class="btn btn-secendary" href="{{route('instructor.course.edit',$course->id)}}">
                  <i class="fa fa-edit"></i>
                </a>
              </td>
              <td>
                  <a href="{{route('instructor.course.manage.section.index',$course->id)}}" class="btn btn-secendary">
                    <i class="fa fa-plus"></i>
                  </a>
              </td>
              <td>
                  <a href="{{route('instructor.course.manage.lession.section',$course->id)}}" class="btn btn-secendary">
                    <i class="fa fa-plus"></i>
                  </a>
              </td>
              <td>
                  <a href="{{route('instructor.course.manage.lession.section',$course->id)}}" class="btn btn-secendary">
                    <i class="fa fa-plus"></i>
                  </a>
              </td>
            </tr>
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