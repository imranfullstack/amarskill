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
                    <h2>My Purchase</h2>
                  </div>
                </div>
                  <div class="row">

                    <div class="container-fluid">
                      <div class="col-md-12">
                        <div class="my-cerfiticate-table">
                          <table class="table">
                              <thead>
                                <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">Date</th>
                                  <th scope="col">invoice id</th>
                                  <th scope="col">Payable Amount</th>
                                  <th scope="col">Total</th>
                                  <th scope="col" width="200px">Status</th>
                                  <th scope="col" width="200px">Action</th>
                                </tr>
                              </thead>
                              <tbody>
                                @php $i = 1; @endphp
                                @foreach($order as $item)
                                <tr>
                                  <th scope="row">{{$i++}}</th>
                                  <td>{{date('d-m-Y', strtotime($item->created_at))}}</td>
                                  <td>#{{$item->invoice_no}}</td>
                                  <td>Otto</td>
                                  <td><b>৳</b> {{$item->total}}</td>
                                  <td>
                                  	<span class="badge badge-danger">Due</span>
                                  </td>
                                  <td>
                                    <a href="{{route('student.purchase.view.all',$item->id)}}" class="course-single-btn btn-block">View Order</a>
                                  </td>
                                </tr>

                                @endforeach
                              </tbody>
                            </table>
                         </div>
                      </div>
                    </div>


                  </div>
              </div>
          </div>
        </div>
      </div>
    </div>



        </div>
    </section>

@endsection()          