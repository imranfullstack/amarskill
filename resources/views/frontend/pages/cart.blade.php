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
@php 
  
  $totalcourse = App\Models\cart::where('user_ip', request()->ip())->count();
if(Session()->get('cupon')){
  $course_cupon_id_session = Session()->get('cupon')['course_id'];

}
  
@endphp


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

    @php 

if(Session()->get('cupon')){
        $cupon_apply_single_product =  $item->price - ($item->price/100 * Session()->get('cupon')['cupon_discount']);
        $cupon_apply_total_price =   ( $total - $item->price/100 * Session()->get('cupon')['cupon_discount'] );
        $cupon_discount_dkcl0c =   (  $item->price/100 * Session()->get('cupon')['cupon_discount'] );
        
        
}        
    @endphp
    	<tr>
	      <th scope="row">{{$i++}}</th>
	      <td>{{$item->course->course_title}}</td>
	      <td>
	          
@if(Session::has('cupon'))           
            @if($item->course_id == $course_cupon_id_session)
            
               {{ $cupon_apply_single_product }} Taka <span class="badge badge-success">Cupon Applyed</span>
          <br>
            @else
               {{$item->price}} Taka
            @endif
@else    

               {{$item->price}} Taka
@endif
            
            
          </td>
	      <td>
	        <a href="{{route('single.course',$item->course->slug)}}" class="btn btn-primary"><i class="fa fa-eye"></i></a>
	        <a href="{{route('remove.cart',$item->id)}}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
	      </td>
	    </tr>
    @endforeach
    <tr>
       <td> 
       </td>


@if(Session::has('cupon'))
<td>
  <span class="text-primary">Cupon Already Applyed - <b>{{Session()->get('cupon')['cupon_discount']}}%</b></span>
</td>


<td>


@if(Session()->get('cupon'))
  <b>{{$cupon_apply_total_price }} Taka </b>
@endif
</td>



@else
<form action="{{route('apply.cupon')}}" method="post">
  @csrf
       <td> 
            <input type="text" class="form-control" name="cuponcode" placeholder=" Enter Cupon Code">
       </td>
       <td> <button type="submit" class="btn btn-success">Apply Cupon</button></td>
</form> 

@endif
      



       <td> <a href="{{route('course')}}" class="btn btn-primary"> Continue purchase</a> </td>
    </tr>
  </tbody>
</table>


                    </div>
                </div>
                <div class="col-md-4">
                    <div class="right-content-aria">
<table class="table table-bordered">
  <thead>
    <tr>
      <th colspan="2">ORDER SUMMARY </th>
    </tr>
  </thead>
  <tbody>




    <tr>
      <th scope="row">Total ({{$totalcourse}})</th>
      <td style="width: 50%"> <b>৳</b> {{$total}}</td>
    </tr>
    <tr>
      <th scope="row">Discount</th>

@if(Session::has('cupon'))   

      <td>



        <b>{{Session()->get('cupon')['cupon_discount']}}% ( ৳ {{$cupon_discount_dkcl0c}} ) <a class="badge badge-danger" href="{{route('remove.cupon')}}"><i class="fa fa-trash"></i></a> </b>

      </td>
@else 
      <td> <b>৳</b> 0</td>
@endif

    </tr>
    <tr>
      <th scope="row">Subtotal</th>

@if(Session::has('cupon'))         
      <td>


@if(Session()->get('cupon'))
  <b>{{$cupon_apply_total_price }} Taka </b>
@endif


      </td>
@else


  <td> <b> ৳ {{$total}} </b></td>



@endif      
    </tr>


<form action="{{route('cart.buy.checkout')}}" method="post">
  @csrf

      @if(Session::has('cupon'))   

        <tr style="display: none;">
          <td colspan="2">
            <input type="hidden" name="total" value="{{$total}}">
            <input type="hidden" name="discount" value="{{Session()->get('cupon')['cupon_discount']}}">
            <input type="hidden" name="subtotal" value=" {{ $cupon_apply_total_price }}">
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
        <td colspan="2">
            <p class="t-p-r">
                </p><div class="form-check">
                  <label class="form-check-label" for="flexCheckDefault">
                    
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" required>
                I agree To <a href="#">Terms &amp; Conditions</a>, <a href="#">Privacy &amp; Policy</a> and <a href="#">Refund Policy
                     </a>
                  </label>
                </div>
            <p></p>
        </td>
    </tr>
    <tr>

@php 
  $cartsd = App\Models\Cart::where('user_ip',request()->ip())->count();

@endphp

        <td colspan="2">
          @if($cartsd)
            <button type="submit" class="btn btn-primary btn-lg btn-block" style="font-weight: 700">CHECK OUT</button>
          @else
            <a onclick="alert('Please Add Something On Cart')" class="btn btn-primary btn-lg btn-block" style="font-weight: 700">CHECK OUT</a>
          @endif
            <a href="{{route('course')}}" class="btn btn-danger btn-lg btn-block" style="font-weight: 700">Cancel</a>
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
