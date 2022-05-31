<!DOCTYPE html>
<html lang="en">
    <head>
         <!-- SEO META Tag -->
        @include('frontend.asset.meta')
        <title>@yield('title' , 'Amar Skill') || Online Learning Platform</title>



         <!-- All the Style File -->
        @include('frontend.asset.style')
        @yield('style')
            <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/student/css/dashboard.css')}}">
            <link rel="stylesheet" type="text/css" href="{{asset('public/student/asset/style.css')}}">
            
<link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/videoplay.css')}}">
    </head>
    <body>
         <!-- All the Style File -->
        @include('frontend.asset.header')
        @include('student.asset.profile-nav')


            @yield('main_aria')



        @include('frontend.asset.footer')
        @include('frontend.asset.script')
        </script>
    </body>
</html>
