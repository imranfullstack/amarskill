@extends('frontend.master')
@section('style')
<style type="text/css">
	/*---- Page Custom CSS ---*/

.left-aria-425d6c h3 {
    color: #212121;
}
	/*---- Page Custom CSS End---*/
</style>
@endsection()
@section('main_aria')


<section class="page-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="page-nav-left">
                        <h3>Shopping Cart</h3>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-nav-top-aria">
                        <ul>
                            <li>Courses</li>
                            <li>/</li>
                            <li>Shopping Cart</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
<div class="container">
  
@include('frontend.asset.message')
</div>

<section class="page-content-aria">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="left-aria-425d6c">
                        <h3>2 COURSE IN CART</h3>

                       <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">SL</th>
      <th scope="col">Name</th>
      <th scope="col" style="width: 15%">Price</th>
      <th scope="col" style="width: 20%">Action</th>
    </tr>
  </thead>
  <tbody>

  	@php $i = 1 @endphp
  	@foreach($cart as $item)
    	<tr>
	      <th scope="row">{{$i++}}</th>
	      <td>{{$item->course->course_title}}</td>
	      <td>{{$item->price}} Taka</td>
	      <td>
	        <a href="{{route('single.course',$item->course->slug)}}" class="btn btn-primary"><i class="fa fa-eye"></i></a>
	        <a href="{{route('remove.cart',$item->id)}}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
	      </td>
	    </tr>
    @endforeach
  </tbody>
</table>


                    </div>
                </div>
                <div class="col-md-4">
                    <div class="right-content-aria">
<table class="table table-bordered">
  <thead>
    <tr>
      <th colspan="2">ORDER SUMMARY</th>
    </tr>
  </thead>
  <tbody>

@php 
	
	$totalcourse = App\Models\cart::where('user_ip', request()->ip())->count();
	
@endphp

    <tr>
      <th scope="row">Total ({{$totalcourse}})</th>
      <td style="width: 50%"> <b>৳</b> {{$total}}</td>
    </tr>
    <tr>
      <th scope="row">Discount</th>

@if(Session::has('cupon'))   

      <td>

        <b>{{Session()->get('cupon')['cupon_discount']}}% ( ৳ {{$total/100 * Session()->get('cupon')['cupon_discount']  }} ) <a class="badge badge-danger" href="{{route('remove.cupon')}}"><i class="fa fa-trash"></i></a> </b>

      </td>
@else 
      <td> <b>৳</b> 0</td>
@endif

    </tr>
    <tr>
      <th scope="row">Subtotal</th>

@if(Session::has('cupon'))         
      <td> <b class="text-primary">৳  {{ $total -  ($total/100 * Session()->get('cupon')['cupon_discount'])  }} </b></td>
@else


  <td> <b> ৳ {{$total}} </b></td>



@endif      
    </tr>


<form action="{{route('checkout.course')}}" method="post">
  @csrf

@if(Session::has('cupon'))   

<tr style="display: none;">
  <td colspan="2">
    <input type="hidden" name="total" value="{{$total}}">
    <input type="hidden" name="discount" value="{{Session()->get('cupon')['cupon_discount']}}">
    <input type="hidden" name="subtotal" value=" {{ $total -  ($total/100 * Session()->get('cupon')['cupon_discount'])  }}">
  </td>
</tr>
@else

<tr style="display: none">
  <td colspan="2">
    <input type="hidden" name="total" value="{{$total}}">
    <input type="hidden" name="discount" value="0">
    <input type="hidden" name="subtotal" value="{{$total}}">
  </td>
</tr>
@endif

    <tr>

@php 
  $cartsd = App\Models\Cart::where('user_ip',request()->ip())->count();

@endphp

        <td colspan="2">
            <a href="{{route('cart.page')}}" class="btn btn-primary btn-md btn-block" style="font-weight: 700">Check Out</a>
        </td>
    </tr>

 </form>   

  </tbody>
</table>
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection

@section('script')
<script type="text/javascript">
	// ---- Page Custom Script ---


	// ---- Page Custom Script End---
</script>
@endsection()
