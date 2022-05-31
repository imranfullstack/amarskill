
        <!--fonts-->
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
        <link href="{{asset('public/frontend/css/bootstrap.min.css')}}" rel="stylesheet">
		 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="{{asset('public/frontend/css/ace-responsive-menu.css')}}" rel="stylesheet">
        <link href="{{asset('public/frontend/css/next.css')}}" rel="stylesheet">
        <link href="{{asset('public/frontend/css/owl.carousel.min.css')}}" rel="stylesheet">
        <link href="{{asset('public/frontend/style.css')}}" rel="stylesheet">

@php
    $setting = App\Models\Basicsetting::first();
@endphp
        <link rel="shortcut icon" href="{{asset('public/img/upload/setting/'.$setting->favicon)}}" type="image/x-icon" />


        @yield('style')

<style type="text/css">


    .footer-btm-icon img {
        margin-bottom: 20px;
    }
    section.page-content-aria {
        padding: 0px 0px;
    }

    .col-md-3.right-course-aria {
        padding-left: 0;
    }
    .sectionorplaylist-video-dkslsdk.right-dkdlsldd ul li h5 {
        font-size: 16px;
        padding: 0px 23px;
        line-height: 30px;
    }
    .nav-menu ul li:last-child a {
        padding-right: 5px;
        margin-right: 0px;
    }
    .nav-menu {
        float: right;
    }

    li.padding-dlsldkdc.wishlist {
    position: relative;
}

li.padding-dlsldkdc.wishlist span {
    position: absolute;
    right: -3px;
    top: -8px;
    background: #084496;
    color: #fff;
    padding: 1px 8px;
    border-radius: 27px;
}


.dksldkc05d6dc {
    position: absolute;
    left: 0;
}

.dksldkc05d6dc .modal-dialog {
    top: 60px;
    width: 87%;
}
span#basic-addon2 .btn {
    border-radius: 0px !important;
    padding: 12px 40px;
}
.dksldkc05d6dc 
 input.form-control {
    padding: 23px 14px !important;
    margin: 0px !important;
}

.input-group-addon {
    padding: 0;
}
.dksldkc05d6dc span#basic-addon2 a i {
    padding: 0px 7px;
}
.dksldkc05d6dc .modal-content {
    border-radius: 0px;
}
.dksldkc05d6dc .modal-body {
    background: #003276;
}


.modal.fade.dksldkc05d6dc.in span#basic-addon2 {
    margin: 0;
    padding: 0 !important;
}

.modal.fade.dksldkc05d6dc.in span#basic-addon2  {
    background-color: #003276;
    border: 1px solid #fff0;
}
</style>


        <link href="{{asset('public/frontend/css/responsive.css')}}" rel="stylesheet">


