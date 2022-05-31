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
                <div class="col-md-12">
                    <div class="left-aria-425d6c">
                        <h3>Wishlist </h3>

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
    @foreach($wishlist as $item)
        <tr>
          <th scope="row">{{$i++}}</th>
          <td>{{$item->course->course_title}}</td>
          <td>{{$item->price}} Taka</td>
          <td>
            <a href="{{route('add.cart',$item->course->id)}}" class="btn btn-warning"><i class="fa fa-shopping-cart"></i></a>
            <a href="{{route('single.course',$item->course->slug)}}" class="btn btn-primary"><i class="fa fa-eye"></i></a>
            <a href="{{route('wishlist.remove',$item->id)}}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
          </td>
        </tr>
    @endforeach
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
