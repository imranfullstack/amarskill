<section class="page-banner profile-dlskdc">
        <div class="container">
            <nav class="navbar navbar-default">
              <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="#">

                                <div class="page-nav-left">
                                    <h3>{{Auth::user()->name}}</h3>
                                </div>

                  </a> 
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                  <ul class="nav navbar-nav navbar-right">
                    <li><a href="{{route('student.dashboard')}}">My Courses</a></li>
                    <li><a href="{{route('student.certificate.list')}}">My Certificates</a></li>
                    <li><a href="{{route('student.purchase.list')}}">Purchase History</a></li>
                    <li><a href="{{route('student.wishlist.page')}}">Wishlists</a></li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle imgd-sc0cs" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">

                        @if(Auth::user()->image)
                          <img src="{{asset('public/img/upload/profilepic/'.Auth::user()->image)}}">
                        @else


                          <img src="{{asset('public/img/upload/course/1.jpg')}}">
                        @endif
                           Profile 
                        <span class="caret"></span>
                        </a>
                      <ul class="dropdown-menu">
                        <li><a href="{{route('student.profile.page',Auth::user()->username)}}">Edit Profile</a></li>
                        <li><a href="{{route('student.profile.change.password')}}">Change Password</a></li>
                        <li role="separator" class="divider"></li>



                        <li>
                          <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"><b>Logout</b></a>
                        </li>

                    

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>


                      </ul>
                    </li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
            </nav>

        </div>
    </section>