 <style type="text/css">
   .header-aria .navbar-default {
    background-color: unset;
    border-color: none !important;
}

nav.flex.items-center span, nav.flex.items-center a {
    color: #000;
    font-weight: 700;
    padding-right: 14px;
}

nav.flex.items-center{
  margin-top: 25px;
}

 </style>
 @php
    $setting = App\Models\Basicsetting::first();
@endphp
    <section class="header-aria">
            <div class="mobile-top-aria">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="login-btm-top-mobile">
                            <ul>

                              @if(Auth::user())
                                  <li><a href="{{route('login')}}">Go To Dashboard</a></li>
                              @else
                                  <li><a href="{{route('login')}}">Login</a></li>
                                  <li><a href="{{route('register')}}">Sign Up</a></li>
                              @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="logo-top">
                        <a href="{{URL('/')}}">
                            <img src="{{asset('/public/img/upload/setting/'.$setting->logo)}}">
                        </a>
                    </div>
                </div>
                <div class="col-md-9">  
                    <div class="row">  

@php 
  $cart = App\Models\Cart::where('user_ip',Request()->ip())->count();

@endphp

                        <div class="top-aria">                    
                                <ul>
                                    <li class="padding-dlsldkdc cart">
                                        <a href="{{route('cart.view')}}"><i class="fa fa-shopping-cart"></i></a>
                                        <span>{{$cart}}</span>
                                    </li>
                                @if(Auth::check())
                                    
                                    <li class="padding-dlsldkdc wishlist">
                                        <a href="{{route('wishlist.list')}}">
                                          <i class="fa fa-heart"></i>
                                        </a>
                                          <span>
@if(Auth::user())                                            
@php
  
  $wishlist = App\Models\Wishlist::where('user_id',Auth::user()->id)->count();
@endphp
                                            {{$wishlist}}
@endif
                                          </span>
                                    </li>


                                    <li>
                                        <a href="{{route('login')}}" class="top-primary"> <i class="fa fa-sign-in" aria-hidden="true"></i> dashboard</a>
                                    </li>
                                @else
                                    <li>
                                        <a href="{{route('register')}}" class="signup-top"> <i class="fa fa-user-plus" aria-hidden="true"></i>Sign up</a>
                                    </li>
                                    <li>
                                        <a href="{{route('login')}}" class="top-primary"> <i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>
                                    </li>
                                @endif
                            </ul>

                        </div>
                    </div>
                    <div class="row">
                        <div class="nav-menu">













<nav class="navbar">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="{{url('/')}}">
            <img src="{{asset('public/frontend/img/logo.png')}}">
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      <ul class="nav navbar-nav navbar-right">
        <li>
          <a href="{{route('course')}}"> <i class="fa fa-list"></i> Course</a>
        </li>
        <li>
          <a href="{{route('course.category')}}"> <i class="fa fa-th"></i> Categories</a>
        </li>
        <li>
          <a href="{{route('instructor.list')}}"> <i class="fa fa-users"></i> Instructors</a>
        </li>
  <!--       <li>
          <a href="{{route('cart.page')}}"> <i class="fa fa-magic"></i> Discounts</a>
        </li> -->
        <li>
          <a type="button" data-toggle="modal" data-target="#exampleModal" style="cursor: pointer;"> <i class="fa fa-search"></i> Search</a>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
</nav>



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>









    <!-- Modal -->
<div class="modal fade dksldkc05d6dc" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">   

<form method="get" action="{{route('search.search')}}">
  @csrf
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search Your Favourite Courses !" name="search" aria-describedby="basic-addon2" required>

      <span class="input-group-addon" id="basic-addon2">

        <button type="text" class="btn btn-primary"> <i class="fa fa-search"></i> Search</button>

        <a href="#" class="btn btn-danger" data-dismiss="modal"> <i class="fa fa-times"></i> cancel </a>

      </span>
    </div>
</form>


          </div>
        </div>
      </div>
    </div>
  </div>
</div>


