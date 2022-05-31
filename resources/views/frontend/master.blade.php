<!DOCTYPE html>
<html lang="en">
    <head>

@php
    $setting = App\Models\Basicsetting::first();
@endphp


         <!-- SEO META Tag -->
        @include('frontend.asset.meta')
        <title>@yield('title' , 'Amar Skill') || {{$setting->site_title}}</title>
         <!-- All the Style File -->
        @include('frontend.asset.style')
    </head>
    <body>
         <!-- All the Style File -->
        @include('frontend.asset.header')

 

            @yield('main_aria')



        @include('frontend.asset.footer')
        @include('frontend.asset.script')
        </script>
    </body>
</html>
