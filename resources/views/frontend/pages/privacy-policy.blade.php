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

div#sidebar .list-item ul {
    margin: 0;
    padding: 0;
}

div#sidebar .list-item ul li {
    list-style: none;
    margin: 0;
    padding: 0;
    border-bottom: 1px solid #e3e3e3;
}

div#sidebar .list-item ul li a {
    color: #000;
    font-weight: 700;
    padding: 15px 15px 15px 0;
    display: inline-block;
    font-size: 14px;
}

div#sidebar .list-item ul li:last-child {
    border-bottom: none;
}

div#sidebar {border-right: 4px solid #08449633;}

.right .section h4 {
    color: #000;
    font-weight: 700;
    font-size: 24px;
    margin: 34px 0px;
}
.right .section p {
    font-size: 14px;
    line-height: 36px;
    color: #000;
}
.tramps-and-condition-body {
    margin-bottom: 50px;
}

.devider {
    border: 2px solid #cedaea;
}

.right-aria-detels-page .title h4 {
    color: #000;
    padding-top: 12px;
    text-align: left;
    text-transform: uppercase;
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
                            <li>Privacy Policy</li>
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
                <h4>Privacy Policy</h4>
            </div>

<div class="tramps-and-condition-body">


<div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-md-3">

@php 
    $terms = App\Models\Privacypolicy::orderby('id','asc')->get();
@endphp

                    <div class="right-aria-detels-page" id="sidebar">


                <div class="title">
                    <h4>Terms And Conditions</h4>
                </div>
                <div class="devider"></div>
                <div class="list-item">
                    <ul>
                        @foreach($terms as $item)
                            <li><a href="#one" title="{{$item->title}}">{{Str::limit($item->title,25,$end='...')}}</a></li>
                        @endforeach
                    </ul>
                </div>

                        </div>
            </div>
            
            <div class="col-md-9 right">
                <div class="second-section" id="idddd">

                @foreach($terms as $item)
                    <div class="section">
                        <h4 id="one">{{$item->title}}</h4>
                        <p> {!! $item->description !!}</p>
                    </div>
                @endforeach  

                </div>
            </div>

        </div>
    </div>
</div>








@endsection

@section('script')
     <script id="rendered-js" >
            $(function () {
              var top = $('#sidebar').offset().top - parseFloat($('#sidebar').css('marginTop').replace(/auto/, 0));
              var footTop = $('#footer').offset().top - parseFloat($('#footer').css('marginTop').replace(/auto/, 0));

              var maxY = footTop - $('#sidebar').outerHeight();

              $(window).scroll(function (evt) {
                var y = $(this).scrollTop();
                if (y > top) {

                  //Quand scroll, ajoute une classe ".fixed" et supprime le Css existant 
                  if (y < maxY) {
                    $('#sidebar').addClass('fixed').removeAttr('style');
                  } else {

                    //Quand la sidebar arrive au footer, supprime la classe "fixed" précèdement ajouté
                    $('#sidebar').removeClass('fixed').css({
                      position: 'absolute',
                      top: maxY - top + 'px' });

                  }
                } else {
                  $('#sidebar').removeClass('fixed');
                }
              });
            });
            //# sourceURL=pen.js
        </script>

@endsection()