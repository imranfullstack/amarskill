@extends('frontend.master')

@section('title') Category  || @endsection

@section('style')
<style type="text/css">
	/*---- Page Custom CSS ---*/

.info-aria-dkfk42 ul li:first-child  {
    display: none;
}
.row.paginate nav.flex.justify-between * {
    font-weight: 700;
    padding: 0px 8px;
}
.row.paginate {
    margin-top: 30px;
}

.image-dlslkdc {
    width: 100%;
    height: 167px;

}

.image-dlslkdc.profilepic {
    height: 280px;
    width: 100%;
}
	/*---- Page Custom CSS End---*/
</style>
@endsection()
@section('main_aria')


<section class="page-banner">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-xs-5">
                <div class="page-nav-left">
                    <h3>All Category</h3>
                </div>
            </div>
            <div class="col-md-6  col-xs-7">
                <div class="right-nav-top-aria">
                    <ul>
                        <li>Home</li>
                        <li>/</li>
                        <li>All Category</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>



<section class="page-content-aria">
        <div class="container">



  <div class="course-aria">
      <div class="container">
        <div class="row">
          <div class="col-md-3">


            <div class="left-aria-dkdkcflc" id="sidebar">

         @include('frontend.asset.category-left-nav')
            </div>
          </div>
          <div class="col-md-9">
              <div class="right-side-course-dkdkfd411c">
                <div class="container-fluid">
                  <div class="row">
                    <h2>All Category</h2>
                  </div>
                </div>
                  <div class="row">



@foreach($category as $cat)
        <div class="col-md-4">
            <div class="single-course">
                <a href="{{route('single.category',$cat->slug)}}">



                      @if($cat->image)
                        <div class="image-dlslkdc" style="background: url({{asset('/public/img/upload/category/'.$cat->image)}}) no-repeat center center /cover"></div> 
                      @else
                        <div class="image-dlslkdc" style="background: url({{asset('/public/img/upload/course/1.jpg')}}) no-repeat center center /cover"></div> 
                      @endif


                    <div class="course-content-aria" title="{{$cat->name}}">
                        <h3>{{$cat->name}}</h3>
                    </div>
                </a>
            </div>
        </div>
@endforeach                    

                  </div>
                  <div class="row paginate">



{{ $category->links() }}
                  </div>
              </div>
          </div>
        </div>
      </div>
    </div>



        </div>
    </section>





@endsection

@section('script')


	
@endsection()