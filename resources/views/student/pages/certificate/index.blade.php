@extends('student.master')
@section('style')
	<style type="text/css">

	</style>
@endsection
@section('main_aria')


<section class="page-content-aria">
        <div class="container">



  <div class="course-aria">
      <div class="container">
        <div class="row">
          <div class="col-md-3">

              @include('student.asset.left-nav')
          </div>
          <div class="col-md-9">
              <div class="right-side-course-dkdkfd411c">
                <div class="container-fluid">
                  <div class="row">
                    <h2>My Cerfiticate</h2>
                  </div>
                </div>
                  <div class="row">

                    <div class="container-fluid">
                      <div class="col-md-12">
                        <div class="my-cerfiticate-table">
                          <table class="table">
                              <thead>
                                <tr>
                                  <th scope="col">Course Title</th>
                                  <th scope="col">Instructor</th>
                                  <th scope="col">Purchase Date</th>
                                  <th scope="col" width="200px">View</th>
                                </tr>
                              </thead>
                              <tbody>
                                @foreach($certificate as $item)
                                <tr>
                                  <td title="{{$item->course->course_title}}">{{Str::limit($item->course->course_title,35,$end='...')}}</td>
                                  <td>{{str::limit($item->course->user->name,15,$end='...')}}</td>
                                  <td>{{$item->course->course_price}} Taka</td>
                                  <td>
                                    <a href="{{route('student.certificate.view',$item->id)}}" class="course-single-btn btn-block">Certificate</a>
                                  </td>
                                </tr>
                                @endforeach
                              </tbody>
                            </table>
                         </div>
                      </div>
                    </div>
                    <hr>
                        @if ($certificate->lastPage() > 1)
                        <ul class="pagination">
                            <li class="{{ ($certificate->currentPage() == 1) ? ' disabled' : '' }}">
                                <a href="{{ $certificate->url(1) }}">Previous</a>
                            </li>
                            @for ($i = 1; $i <= $certificate->lastPage(); $i++)
                                <li class="{{ ($certificate->currentPage() == $i) ? ' active' : '' }}">
                                    <a href="{{ $certificate->url($i) }}">{{ $i }}</a>
                                </li>
                            @endfor
                            <li class="{{ ($certificate->currentPage() == $certificate->lastPage()) ? ' disabled' : '' }}">
                                <a href="{{ $certificate->url($certificate->currentPage()+1) }}" >Next</a>
                            </li>
                        </ul>
                        @endif

                  </div>
              </div>
          </div>
        </div>
      </div>
    </div>



        </div>
    </section>

@endsection()          