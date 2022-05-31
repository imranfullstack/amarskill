

<!DOCTYPE html>
<html lang="en">
  <head>
    
  	@include('instructor.asset.meta')
  	@include('instructor.asset.favicon')
    <title>Amar Skill - Best E-Learning Platform In Bangladesh</title>
  	@include('instructor.asset.style')



  </head>
  <body>

  	@include('instructor.asset.loader')

    <!-- page-wrapper Start       -->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
      <!-- Page Header Start-->    
  		@include('instructor.asset.header')
      <!-- Page Header Ends -->
      <!-- Page Body Start-->
      <div class="page-body-wrapper sidebar-icon">
        <!-- Page Sidebar Start-->       
  		@include('instructor.asset.nav')
        <!-- Page Sidebar Ends-->
        <div class="page-body">
        	@yield('main_aria')
          <!-- Container-fluid Ends-->
        </div>
        <!-- footer start-->
  		@include('instructor.asset.footer')
      </div>
    </div>
  		@include('instructor.asset.script')
  
  </body>
</html>