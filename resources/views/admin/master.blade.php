

<!DOCTYPE html>
<html lang="en">
  <head>
    
  	@include('admin.asset.meta')
  	@include('admin.asset.favicon')
    <title>Amar Skill - Best E-Learning Platform In Bangladesh</title>
  	@include('admin.asset.style')


  </head>
  <body>

  	@include('admin.asset.loader')

    <!-- page-wrapper Start       -->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
      <!-- Page Header Start-->    
  		@include('admin.asset.header')
      <!-- Page Header Ends -->
      <!-- Page Body Start-->
      <div class="page-body-wrapper sidebar-icon">
        <!-- Page Sidebar Start-->       
  		@include('admin.asset.nav')
        <!-- Page Sidebar Ends-->
        <div class="page-body">
        	@yield('main_aria')
          <!-- Container-fluid Ends-->
        </div>
        <!-- footer start-->
  		@include('admin.asset.footer')
      </div>
    </div>
  		@include('admin.asset.script')
  
  </body>
</html>