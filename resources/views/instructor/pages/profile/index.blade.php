@extends('instructor.master')
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

</style>

    <link rel="stylesheet" type="text/css" href="{{asset('/public/assets/css/select2.css')}}">
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


    
    
    <div class="top-part-djckcd rwx mb-3">
        
        
                              <img class="img-70" alt="" src="{{asset('public/img/upload/profilepic/'.Auth::user()->image)}}">
                              <hr>
                              
                              
    </div>
                              
                              
                              <div class="top-part-djckcd ews mb-3">
                                  
                                  
                                <form action="{{route('instructor.profile.image')}}" method="post" enctype="multipart/form-data">
                                  @csrf
                                      <div class="input-group mb-3">
                                            <input type="file" class="form-control" name="file">
                                      </div>
                                      <div class="input-group mb-3">
                                            <input type="submit" value="Upload Image" class="btn btn-primary btn-sm">
                                      </div>
                                </form> 
                                
                                
                              </div>

                              <hr>

                              <div class="media-body">
                                <h3 class="mb-1 f-20 txt-primary">{{Auth::user()->name}}</h3>
                                <p class="f-12">Instructor</p>
                              </div>
                            </div>
                          </div>
                        </div>
<form action="{{route('instructor.profile.update.basic')}}" method="post">
  @csrf
  
<div class="top-part-djckcd ews mb-3">
             <div class="mb-3">
                    <label>Your Name</label>
                  <input type="text" placeholder="Your Name" name="name" class="form-control" value="{{Auth::user()->name}}">
             </div>
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



@if($profile)
    <form action="{{route('instructor.profile.profile.info')}}" method="post">
  @csrf
  
                        <div class="mb-3">
                          <h6 class="form-label">Teacher Title</h6>
                        <hr>
                          @if($profile->title)
                          <input type="text" placeholder="Teacher Title" name="teachertitle" class="form-control" value="{{$profile->title}}">
                          @else
                          <input type="text" placeholder="Teacher Title" name="teachertitle" class="form-control">
                          @endif
                        </div>
                   
                        <div class="mb-3">
                        <hr>
                          <h6 class="form-label">Job Title</h6>
                        <hr>

                          @if($profile->job_title)
                            <input type="text" placeholder="Teacher Title" name="jobtitle" class="form-control" value="{{$profile->job_title}}">
                          @else
                            <input type="text" placeholder="Teacher Title" name="jobtitle" class="form-control">
                          @endif
                        </div>
                   
                        <div class="mb-3">
                        <hr>
                          <h6 class="form-label">Bio</h6>
                        <hr>

                          @if($profile->bio)
                          <textarea class="form-control" rows="5" name="bio">{{$profile->bio}}</textarea>
                          @else
                          <textarea class="form-control" rows="5" name="bio"></textarea>

                          @endif
                        </div>
                        <hr>
                          <h6 class="form-label">Social Link</h6>
                          <hr>
                        <div class="input-group mb-3">
                          <span class="input-group-text" id="basic-addon1"><i class="fa fa-facebook"></i></span>

                          @if($profile->facebook_link)
                             <input type="url" class="form-control" placeholder="Add Facebook" aria-label="Username" aria-describedby="basic-addon1" name="facebooklink" value="{{$profile->facebook_link}}">
                          @else
                              <input type="url" class="form-control" placeholder="Add Facebook" aria-label="Username" aria-describedby="basic-addon1" name="facebooklink">
                          @endif
                        </div>
                        <!-- form Aria -->
                        <!-- form Aria -->
                        <div class="input-group mb-3">
                          <span class="input-group-text" id="basic-addon1"><i class="fa fa-twitter"></i></span>

                          @if($profile->twitter_link)
                          <input type="url" class="form-control" placeholder="Add Twitter" aria-label="Username" aria-describedby="basic-addon1" name="twitterlink" value="{{$profile->twitter_link}}">
                          @else
                          <input type="url" class="form-control" placeholder="Add Twitter" aria-label="Username" aria-describedby="basic-addon1" name="twitterlink">

                          @endif
                        </div>
                        <!-- form Aria -->
                        <!-- form Aria -->
                        <div class="input-group mb-3">
                          <span class="input-group-text" id="basic-addon1"><i class="fa fa-linkedin"></i></span>

                          @if($profile->linkedin_link)
                          <input type="url" class="form-control" placeholder="Add Linkedin" aria-label="Username" aria-describedby="basic-addon1"  name="linkedinlink" value="{{$profile->linkedin_link}}">
                          @else
                          <input type="url" class="form-control" placeholder="Add Linkedin" aria-label="Username" aria-describedby="basic-addon1"  name="linkedinlink">

                          @endif
                        </div>
                        <!-- form Aria -->
                        <!-- form Aria -->
                        <div class="input-group mb-3">
                          <span class="input-group-text" id="basic-addon1"><i class="fa fa-youtube"></i></span>

                          @if($profile->youtube_link)
                           <input type="url" class="form-control" placeholder="Add Youtube" aria-label="Username" aria-describedby="basic-addon1"  name="youtubelink" value="{{$profile->youtube_link}}">
                          @else
                            <input type="url" class="form-control" placeholder="Add Youtube" aria-label="Username" aria-describedby="basic-addon1"  name="youtubelink">
                          @endif
                        </div>
                        <!-- form Aria -->
                        <div class="form-footer">
                          <button class="btn btn-primary btn-block">Save</button>
                        </div>
</form> 
@else


<form action="{{route('instructor.profile.profile.info')}}" method="post">
  @csrf
  
                        <div class="mb-3">
                          <h6 class="form-label">Teacher Title</h6>
                        <hr>
                          <input type="text" placeholder="Teacher Title" name="teachertitle" class="form-control">
                        </div>
                   
                        <div class="mb-3">
                        <hr>
                          <h6 class="form-label">Job Title</h6>
                        <hr>

                            <input type="text" placeholder="Teacher Title" name="jobtitle" class="form-control">
                        </div>
                   
                        <div class="mb-3">
                        <hr>
                          <h6 class="form-label">Bio</h6>
                        <hr>

                          <textarea class="form-control" rows="5" name="bio"></textarea>

                        </div>
                        <hr>
                          <h6 class="form-label">Social Link</h6>
                          <hr>
                        <div class="input-group mb-3">
                          <span class="input-group-text" id="basic-addon1"><i class="fa fa-facebook"></i></span>

                              <input type="url" class="form-control" placeholder="Add Facebook" aria-label="Username" aria-describedby="basic-addon1" name="facebooklink">
                        </div>
                        <!-- form Aria -->
                        <!-- form Aria -->
                        <div class="input-group mb-3">
                          <span class="input-group-text" id="basic-addon1"><i class="fa fa-twitter"></i></span>

                          <input type="url" class="form-control" placeholder="Add Twitter" aria-label="Username" aria-describedby="basic-addon1" name="twitterlink">
                        </div>
                        <!-- form Aria -->
                        <!-- form Aria -->
                        <div class="input-group mb-3">
                          <span class="input-group-text" id="basic-addon1"><i class="fa fa-linkedin"></i></span>

                          <input type="url" class="form-control" placeholder="Add Linkedin" aria-label="Username" aria-describedby="basic-addon1"  name="linkedinlink">

                        </div>
                        <!-- form Aria -->
                        <!-- form Aria -->
                        <div class="input-group mb-3">
                          <span class="input-group-text" id="basic-addon1"><i class="fa fa-youtube"></i></span>

                            <input type="url" class="form-control" placeholder="Add Youtube" aria-label="Username" aria-describedby="basic-addon1"  name="youtubelink">
                        </div>
                        <!-- form Aria -->
                        <div class="form-footer">
                          <button class="btn btn-primary btn-block">Save</button>
                        </div>
</form> 


@endif
           




                    </div>
                  </div>
                </div>
                <div class="col-xl-8">



<div class="card">

  <h4 class="card-header">List Of Degree</h4>
          <div class="card-body">
              <div class="degree-table">
                <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">SL</th>
                      <th scope="col">institute Name</th>
                      <th scope="col">Degree Name</th>
                      <th scope="col">Year</th>
                      <th scope="col">Delete</th>
                    </tr>
                  </thead>
                  <tbody>
@php 
  $degree = App\Models\Degree::where('user_id', Auth::user()->id)->get();
  $i = 1;
@endphp                    
          @foreach($degree as $item)
                    <tr>
                      <th scope="row">{{$i++}}</th>
                      <td>{{$item->institute_name}}</td>
                      <td>{{$item->degree_name}}</td>
                      <td>{{$item->year}}</td>
                      <td>
                        <a href="{{route('instructor.profile.remove.degree',$item->id)}}" class="btn btn-danger">
                          <i class="fa fa-trash"></i>
                        </a>
                      </td>
                    </tr>
          @endforeach                    
                  </tbody>
                </table>
              </div>
              </div>





<div class="card-body">
  <div class="row d52d5c6ddsc">
    <h4 class="">Add Degree</h4>
    <form action="{{route('instructor.profile.add.degree')}}" method="post">
      @csrf
        <div class="customer_records d52d5c6">
            <input name="institute_name[]" type="text" placeholder="Institute Name" class="form">
            <input name="degree_name[]" type="text" placeholder="Degree Name">
                <select name="year[]">
                  <option selected disabled>Select Year</option>
                  <option value="2021">2021</option>
                  <option value="2020">2020</option>
                  <option value="2019">2019</option>
                  <option value="2018">2018</option>
                  <option value="2017">2017</option>
                  <option value="2016">2016</option>
                  <option value="2015">2015</option>
                  <option value="2014">2014</option>
                  <option value="2013">2013</option>
                  <option value="2012">2012</option>
                  <option value="2011">2011</option>
                  <option value="2010">2010</option>
                  <option value="2009">2009</option>
                  <option value="2008">2008</option>
                  <option value="2007">2007</option>
                  <option value="2006">2006</option>
                  <option value="2005">2005</option>
                  <option value="2004">2004</option>
                  <option value="2003">2003</option>
                  <option value="2002">2002</option>
                  <option value="2001">2001</option>
                  <option value="2000">2000</option>
                  <option value="1999">1999</option>
                  <option value="1998">1998</option>
                  <option value="1997">1997</option>
                  <option value="1996">1996</option>
                  <option value="1995">1995</option>
                  <option value="1994">1994</option>
                  <option value="1993">1993</option>
                  <option value="1992">1992</option>
                  <option value="1991">1991</option>
                  <option value="1990">1990</option>
                  <option value="1989">1989</option>
                  <option value="1988">1988</option>
                  <option value="1987">1987</option>
                  <option value="1986">1986</option>
                  <option value="1985">1985</option>
                  <option value="1984">1984</option>
                  <option value="1983">1983</option>
                  <option value="1982">1982</option>
                  <option value="1981">1981</option>
                  <option value="1980">1980</option>
                  <option value="1979">1979</option>
                  <option value="1978">1978</option>
                  <option value="1977">1977</option>
                  <option value="1976">1976</option>
                  <option value="1975">1975</option>
                  <option value="1974">1974</option>
                  <option value="1973">1973</option>
                  <option value="1972">1972</option>
                  <option value="1971">1971</option>
            </select>
             <a class="extra-fields-customer btn btn-primary" style="cursor: pointer;"> <i class="fa fa-plus"></i> Add</a>

        </div>
  <div class="customer_records_dynamic"></div>

  <div class="row submit-dksld">
    <button class="btn btn-primary">Save</button>
  </div>

    </form>
</div>
</div> 
</div>



                  <div class="card">
                    <div class="card-header pb-0">
                      <h5 class="card-title mb-0">Course Certification</h5>
                      <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#" data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
                    </div>









@php 
  $certificate = App\Models\Certificate::where('user_id', Auth::user()->id)->get();
  $i = 1;
@endphp


                    <div class="card-body">
                       <div class="row">

                        <table class="table">
                              <thead>
                                <tr>
                                  <th scope="col">SL</th>
                                  <th scope="col">Certificate</th>
                                  <th scope="col">Certificate Form</th>
                                  <th scope="col">Year</th>
                                  <th scope="col">Delete</th>
                                </tr>
                              </thead>
                              <tbody>
  @foreach($certificate as $item)                              
                                <tr>
                                  <th scope="row">{{$i++}}</th>
                                  <td>{{$item->course_name}}</td>
                                  <td>{{$item->certificate_form}}</td>
                                  <td>{{$item->year}}</td>
                                  <td>
                                    <a href="{{route('instructor.profile.remove.certificate',$item->id)}}" class="btn btn-danger">
                                      <i class="fa fa-trash"></i>
                                    </a>
                                  </td>
                                </tr>
  @endforeach                                
                              </tbody>
                            </table>

                       </div>
                    </div>                    
                    <div class="card-body">
                      <h5 class="card-title mb-0">List Of Certification</h5>









                       <div class="row">
                          <div class="table table-responsive">
                            <form action="{{route('instructor.profile.add.certificate')}}" method="post">
                              @csrf

                                <div class="table table-responsive">
                                  <table class="table table-responsive table-striped table-bordered">
                                  <thead>
                                    <tr>
                                        <th scope="col">Certificate</th>
                                        <th scope="col">Certificate Form</th>
                                        <th scope="col">Year</th>
                                        <th scope="col">Delete</th>
                                      </tr>
                                  </thead>
                                    <tbody id="TextBoxContainer">
                                      
                                    </tbody>
                                    <tfoot>
                                      <tr>
                                        <th colspan="4">
                                        <button id="btnAdd" type="button" class="btn btn-primary" data-toggle="tooltip" data-original-title="Add more controls"><i class="glyphicon glyphicon-plus-sign"></i>Add</button>

                                        <button type="submit" class="btn btn-success"></i>Save</button>
                                      </th>
                                        
                                      </tr>
                                    </tfoot>
                                  </table>
                                </div>



                              </form>
                          </div>
                      </div>












                      <br>
                      <div class="row">
                        <hr>
                        <h3>Skills</h3>
                        <hr>
                        <div class="skill-aria">
                          <ul>
                            @foreach($skill as $item)
                            <li>{{$item->skill}}<a href="{{route('instructor.profile.remove.skill',$item->id)}}" class="badge badge-danger"><i class="fa fa-trash"></i></a></li>
                            @endforeach
                          </ul>
                        </div>
                          <hr>
                            <form action="{{route('instructor.profile.add.skill')}}" method="post">
                              @csrf
                          <br>
                              <div class="multi-field-wrapper">
                                  <div class="multi-fields">
                                      <div class="multi-field">
                                        <input type="text" name="skills[]" class="skillbtnsdkc" placeholder="Add More Skill" required>
                                        <button type="button" class="remove-field btn btn-danger"> <i class="fa fa-trash"></i> Remove</button>
                                      </div>
                                  </div>
                                <button type="button" class="add-field btn btn-primary">Add field</button>
                                <button type="submit" class="btn btn-success">Save</button>
                              </div>
                            </form>
                          </div>
                         <hr>
                      <br>
                    </div>
                </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid Ends-->


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
