@extends('frontend.master')
@section('style')
<style type="text/css">
	/*---- Page Custom CSS ---*/

.image-dlslkdc {
    width: 100%;
    height: 167px;

}

.image-dlslkdc.profilepic {
    height: 280px;
    width: 100%;
}

.page-title {
    background: url(https://vitalflux.com/wp-content/uploads/2015/04/machine_learning_books.jpg) no-repeat center center/cover;
    padding: 75px 0px;
    margin-bottom: 50px;
    text-align: center;
    position: relative;
}
.page-title h4 {
    color: #fff;
    background: #131a25d1;
    height: 100%;
    width: 100%;
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    padding-top: 62px;
    font-size: 30px;
    text-transform: uppercase;
    font-weight: 400;
}
.about-content p {
    line-height: 35px;
    font-size: 14px;
    color: #000;
    font-weight: 500;
}
.about-body {
    margin-bottom: 50px;
}
/*
.page-title h4 {
    margin: 0;
    color: #fff;
    text-transform: uppercase;
    font-size: 30px;
}

.page-title:before {
    position: absolute;
    content: "";
    top: 0;
    left: 0;
    width: 100%;
    background: #0c73ffb3 !important;
    height: 100%;
}
*/

	/*---- Page Custom CSS End---*/
</style>
@endsection()
@section('main_aria')

    <section class="page-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xs-6">
                    <div class="page-nav-left">
                    </div>
                </div>
                <div class="col-md-6  col-xs-6">
                    <div class="right-nav-top-aria">
                        <ul>
                            <li>Home</li>
                            <li>/</li>
                            <li>About</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>



<div class="container">
    @include('frontend.asset.message')
</div>




            <div class="page-title">
                <h4>About Us</h4>
            </div>


@php 
    
    $about = App\Models\About::first();

@endphp
<div class="about-body">
	    <div class="container">
        <div class="row fullwrap">
            <div class="col-xl-6 col-md-6 col-sm-12">
                <div class="left-side">
                   <div class="about-content">
                       <p>
                            {!!  $about->about  !!}
                        </p>
                   </div>
                </div>
            </div>

            <div class="col-xl-6 col-md-6">
                <div class="right-side">
                      <div class="images">
                          <img src="{{asset('public/img/upload/about/'.$about->image)}}" alt="">
                      </div>
                </div>
            </div>

        </div>
    </div>
</div>








@endsection

@section('script')
<script type="text/javascript">
	// ---- Page Custom Script ---


	// ---- Page Custom Script End---
</script>
@endsection()