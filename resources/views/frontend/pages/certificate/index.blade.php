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

.cerfiticate-body {
    margin-bottom: 30px;
}
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
                            <li>Certificate</li>
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
                <h4>Certificate</h4>
            </div>

<div class="cerfiticate-body">
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="search-full-width">
					<div class="row">
						  <div class="col-sm-12">

<form method="post" action="{{route('certificate.search.value')}}">
	@csrf
						    <div class="input-group">
						      <input type="text" class="form-control" placeholder="Certificate ID:" name="certificateid">
						      <span class="input-group-btn">
						        <button class="btn btn-primary" type="submit">Verify Certificate!</button>
						      </span>
						    </div><!-- /input-group -->
</form>


						  </div><!-- /.col-lg-6 -->
						  <div class="col-md-12" style="text-align: center;">
						  	<br>
						  	<h5>Search Your Certificate And Varify Now !</h5>
						  </div>
						</div><!-- /.row -->

						<div class="row">
							<h4></h4>
						</div>
				</div>
			</div>
			<div class="col-md-2"></div>
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