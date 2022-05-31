 <header class="main-nav">
          <div class="sidebar-user text-center">
          	<a class="setting-primary" href="javascript:void(0)">
          		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-settings"><circle cx="12" cy="12" r="3"></circle><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
          		</svg>
          	</a>

            @if(Auth::user()->image)
              <img class="img-90 rounded-circle" src="{{asset('/public/img/upload/profilepic/'.Auth::user()->image)}}" alt="" style="height: 85px;">
            @else
              <img class="img-90 rounded-circle" src="https://w7.pngwing.com/pngs/247/564/png-transparent-computer-icons-user-profile-user-avatar-blue-heroes-electric-blue.png" alt="" style="height: 85px;">
            @endif
            <div class="badge-bottom"><span class="badge badge-primary">instructor</span></div><a href="{{route('instructor.course.profile.index')}}">
              <h6 class="mt-3 f-14 f-w-600">{{Auth::user()->name}}</h6></a>
          </div>
          <nav>
            <div class="main-navbar">
              <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
              <div id="mainnav">           
                <ul class="nav-menu custom-scrollbar">
                  <li class="back-btn">
                    <div class="mobile-back text-end"><span>Back</span><i class="fa fa-angle-right ps-2" aria-hidden="true"></i></div>
                  </li>
                  <li class="sidebar-main-title">
                    <div>
                      <h6>General             </h6>
                    </div>
                  </li>

                  <li>
                    <a class="nav-link menu-title link-nav" href="{{route('instructor.dashboard')}}">
                        
                    <i class="fa fa-home" aria-hidden="true"></i><span>Dashboard</span></a>
                    </a>
                  </li>

                  <li class="sidebar-main-title">
                    <div>
                      <h6>Action</h6>
                    </div>
                  </li>


                  <!-- ----- Single Nav Menu ------- -->
                  <li class="dropdown"><a class="nav-link menu-title active" href="javascript:void(0)">
                    <i class="fa fa-clone" aria-hidden="true"></i>
                    <span> Course</span></a>
                    <ul class="nav-submenu menu-content" style="display: block;">
                      <li><a href="{{route('instructor.course.index')}}">Manage Courses</a></li>
                      <li><a href="{{route('instructor.course.create')}}">Add New  Courses</a></li>
                    </ul>
                  </li>
                  <!-- ----- Single Nav Menu End------- -->
                  <!-- ----- Single Nav Menu ------- -->
                  <li class="dropdown"><a class="nav-link menu-title active" href="javascript:void(0)">
                    <i class="fa fa-file-powerpoint-o" aria-hidden="true"></i>

                    <span>FAQs</span></a>
                    <ul class="nav-submenu menu-content" style="display: block;">
                      <li><a href="{{route('instructor.course.faq.all')}}">Manage Faqs</a></li>
                      <li><a href="{{route('instructor.course.faq.create')}}">Add New</a></li>
                    </ul>
                  </li>
                  <!-- ----- Single Nav Menu End------- -->
                  <!-- ----- Single Nav Menu ------- -->
                  <li class="dropdown"><a class="nav-link menu-title active" href="javascript:void(0)">
                        <i class="fa fa-line-chart" aria-hidden="true"></i>

                    <span>Reports</span></a>
                    <ul class="nav-submenu menu-content" style="display: block;">
                      <li><a href="blog.html">Selling Course</a></li>
                      <li><a href="blog-single.html">Instructor Payment</a></li>
                      <li><a href="{{route('instructor.withdrow.index')}}">Withdraw</a></li>
                    </ul>
                  </li>

                  <!-- ----- Single Nav Menu End------- -->
                  <li>
                    <a class="nav-link menu-title link-nav" href="{{route('instructor.course.profile.index')}}">
                    <i class="fa fa-users"></i><span>Profile</span></a>
                    </a>
                  </li>
                  <!-- ----- Single Nav Menu End------- -->


                  <li class="sidebar-main-title">
                    <div>
                      <h6>General</h6>
                    </div>
                  </li>

            
                  <li>
                    <a class="nav-link menu-title link-nav" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">                        
                        <i data-feather="home"></i><span>Logout</span></a>
                    </a>
                  </li>

                </ul>
              </div>
              <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
            </div>
          </nav>
        </header>

           <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
              @csrf
           </form>