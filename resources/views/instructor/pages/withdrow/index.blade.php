@extends('instructor.master')
@section('style') 
<style type="text/css">
.single-lable input, .single-lable select, .single-lable textarea.form-control {
    margin: 15px 0px;
}

</style>

    <link rel="stylesheet" type="text/css" href="{{asset('public/assets/css/select2.css')}}">
@endsection
@section('main_aria')
  

        <div class="container-fluid">
          <div class="page-header">
              <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">

                	<div class="card">
                		<div class="card-body">

@php 

	$course = App\Models\Course::orderby('id','desc')->where('user_id',Auth::user()->id)->where('status',1)->get();

@endphp

                  <br>
                  <h5 style="text-align: center;">Request For Withdrawal Payment</h5>
                  <br>

<form method="post" action="#">
	@csrf
	

                		<!-- ---- Single Course --- -->
                			<div class="single-lable">
                				<hr>
                					<h4 style="text-align: center;">Total Balance - <span class="btn btn-primary">500 Taka</span> </h4>
                				<hr>
		                			<input type="text" class="form-control" name="" placeholder="Withdrow Ammount">
		                				@error('course') <p class="text-danger">{{$message}}</p> @enderror
                			</div>
                		<!-- ---- Single Course End--- -->
                		<!-- ---- Single Course --- -->
                			<div class="single-lable">
                			<label>Bkash Number</label>
		                			<input type="text" class="form-control" name="" placeholder="Enter Bkash Number ... ">
		                				@error('course') <p class="text-danger">{{$message}}</p> @enderror
                			</div>
                		<!-- ---- Single Course End--- -->
                		<!-- ---- Single Course --- -->
                			<div class="single-lable">
                				<label>Accout Type</label>
                				<select class="js-example-basic-single col-sm-12" name="course">
	                					<option value="1">Personal Account</option>
	                					<option value="1">Agent Account</option>
                             	</select>
                				@error('course') <p class="text-danger">{{$message}}</p> @enderror
                			</div>
                			<br>
                		<!-- ---- Single Course End--- -->
                		<!-- ---- Single Course --- -->
                			<div class="single-lable">
                				<button class="btn btn-primary btn-block " style="width: 100%">SAVE</button>
                			</div>
                		<!-- ---- Single Course End--- -->
                		</div>
                	</div>

</form>
                </div>
           	 </div>
           </div>
    	</div>



@endsection()
@section('script')



  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
      <script id="rendered-js" >
$('.extra-fields-customer').click(function () {
  $('.customer_records').clone().appendTo('.customer_records_dynamic');
  $('.customer_records_dynamic .customer_records').addClass('single remove');
  $('.single .extra-fields-customer').remove();
  $('.single').append('<a href="#" class="remove-field btn-remove-customer btn btn-danger"> <i class="fa fa-trash"></i> Remove</a>');
  $('.customer_records_dynamic > .single').attr("class", "remove");

  $('.customer_records_dynamic input').each(function () {
    var count = 0;
    var fieldname = $(this).attr("name");
    $(this).attr('name', fieldname + count);
    count++;
  });

});

$(document).on('click', '.remove-field', function (e) {
  $(this).parent('.remove').remove();
  e.preventDefault();
});
//# sourceURL=pen.js
    </script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <script id="rendered-js" >
$(function () {
  $("#btnAdd").bind("click", function () {
    var div = $("<tr />");
    div.html(GetDynamicTextBox(""));
    $("#TextBoxContainer").append(div);
  });
  $("body").on("click", ".remove", function () {
    $(this).closest("tr").remove();
  });
});
function GetDynamicTextBox(value) {
  return '<td><input required placeholder="Course Name" name = "coursename[]" type="text" value = "' + value + '" class="form-control" /></td>' + 
     '<td><input required placeholder="Certificate Form" name = "certificatename[]" type="text" class="form-control" value = "' + value + '" /></td>' + 
     '<td><select name="year[]" class="form-control" required><option selected disabled>year</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option> ' +
     '<td><button type="button" class="btn btn-danger remove"><i class="fa  fa-trash"></i></button></td>';
}
//# sourceURL=pen.js
    </script>

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
      <script src="{{asset('/public/assets/js/select2/select2.full.min.js')}}"></script>
      <script src="{{asset('/public/assets/js/select2/select2-custom.js')}}"></script>
      <script src="{{asset('/public/assets/js/select2/select2-custom.js')}}"></script>


      <!-- ----- Tinymce Editor ------- -->
  <script src='https://cdn.tiny.cloud/1/qagffr3pkuv17a8on1afax661irst1hbr4e6tbv888sz91jc/tinymce/4/tinymce.min.js'></script>
 
      <script src="{{asset('/public/assets/js/myscript.js')}}"></script>



@endsection
