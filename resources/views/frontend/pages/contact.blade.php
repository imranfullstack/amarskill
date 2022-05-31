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
    background: url(https://assets.kpmg/content/dam/kpmg/ng/images/contactus.jpg/jcr:content/renditions/original) no-repeat center center/cover;
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

.fullwrap {
    background-color: #fff;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 30px 90px;
}
.col-md-4 {
    flex: 0 0 auto;
    margin: 0;
    padding: 0;
}

.left {
    background-color: #0F213A;
    padding: 71px 0;
}

.left-content h4 {
    font-size: 28px;
    padding: 20px 20px 20px 0px;
    text-align: left;
    color: #fff;
    text-transform: uppercase;
    font-weight: 600;
    letter-spacing: 1.5px;
}

.left-content ul li {
    list-style: none;
    color: #fff;
    display: flex;
    justify-content: flex-start;
    align-items: flex-start;
}
.left-content ul li i{
    font-size: 16px;
    padding-right: 10px;
}
.left-content ul li p{
    font-size: 16px;
    padding-right: 10px;
}
.social-icon h4 {
    font-size: 28px;
    text-align: left;
    color: #fff;
    text-transform: uppercase;
    font-weight: 600;
    letter-spacing: 1.5px;
}
.social-icon ul {
    display: flex;
    justify-content: flex-start;
}
.social-icon ul li{
    list-style: none;
}

.social-icon ul li a{
    background-color: gray;
    width: 40px;
    height: 40px;
    border-radius: 50px;
    text-align: center;
    color: #fff;
    display: flex;
    align-items: center;
    justify-content: center;
    padding-left: 9px;
    margin: 5px;
    text-decoration: none;
    transition: 0.2s ease-in;
}
.social-icon ul li:hover a{
    background-color: #fff;
    color: #000;
}

/* form styling */
.right {
    padding: 25px 40px 20px 40px;
}

.right h4 {
    font-size: 28px;
    text-align: left;
    color: #333;
    text-transform: uppercase;
    font-weight: 600;
    letter-spacing: 1.5px; 
}

.btn-submit {
    padding-top: 40px;
    text-align: right;
}

.btn-submit input {
    width: 100%;
}

.right input {
    margin-bottom: 15px;
}
.contact-body {
    margin-bottom: 40px;
}
.left-content {
    margin: 0px 31px;
}


.social-icon h4 {
    margin-bottom: 5px;
    padding-bottom: 0;
}

.social-icon ul li:first-child a {
    margin-left: 0px;
}

.social-icon {
    margin-top: 35px;
}
.left-content ul li a {
    color: #fff;
}

    /*---- Page Custom CSS End---*/
</style>


@endsection()
@section('main_aria')

    <section class="page-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xs-6">
                    <div class="page-nav-left">
                        <h3>Contact Us</h3>
                    </div>
                </div>
                <div class="col-md-6  col-xs-6">
                    <div class="right-nav-top-aria">
                        <ul>
                            <li>Home</li>
                            <li>/</li>
                            <li>Contact</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>





            <div class="page-title">
                <h4>Contact Us Today</h4>
            </div>

<div class="dd">
    @include('frontend.asset.message')
</div>

<div class="contact-body">
<div class="container" style="margin-top: 50px;">
        <div class="row fullwrap">
            <div class="col-md-4 ">
                <div class="left">
                    <div class="left-content">
                        <h4>Contact us</h4>
                        <ul>
                            <li>
                                @if($contact->email)
                                    <p><i class="fa fa-envelope"></i> <a href="mailto:{{$contact->email}}">{{$contact->email}}</a></p>
                                @endif
                            </li>
                            <li>
                                @if($contact->phone)
                                    <i class="fa fa-phone"></i>
                                    <p><a href="tel:{{$contact->phone}}">{{$contact->phone}}</a></p>
                                @endif
                            </li>
                            <li>
                                @if($contact->location)
                                    <i class="fa fa-map-marker"></i>
                                    <p>{{$contact->location}}</p>
                                @endif
                            </li>
                        </ul>

                        <div class="social-icon">
                            <h4>follow us</h4>
                            <ul>
                                <!-- -- Single Facebook Link -- -->
                                @if($contact->facebook_link)  
                                    <li><a href="{{$contact->facebook_link}}"><i class="fa fa-facebook-f"></i></a></li>
                                @endif
                                <!---- Single Facebook Link End ---->
                                <!-- -- Single Facebook Link -- -->
                                @if($contact->twitter_link)  
                                    <li><a href="{{$contact->twitter_link}}"><i class="fa fa-twitter"></i></a></li>
                                @endif
                                <!---- Single Facebook Link End ---->


                                <!-- -- Single Facebook Link -- -->
                                @if($contact->linkedin_link)  
                                <li><a href="{{$contact->linkedin_link}}"><i class="fa fa-linkedin"></i></a></li>
                                @endif
                                <!---- Single Facebook Link End ---->
                                <!-- -- Single Facebook Link -- -->
                                @if($contact->youtube_link)  
                                <li><a href="{{$contact->youtube_link}}"><i class="fa fa-youtube"></i></a></li>
                                @endif
                                <!---- Single Facebook Link End ---->
                                <!-- -- Single Facebook Link -- -->
                                @if($contact->instagram_link)  
                                <li><a href="{{$contact->instagram_link}}"><i class="fa fa-instagram"></i></a></li>
                                @endif
                                <!---- Single Facebook Link End ---->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <div class="right">
                    <h4>send us your query</h4>


                    <form action="{{route('root.contact.store')}}" method="post">
                        @csrf
                            <div class="row">
                                <div class="col-xl-6 col-md-6 col-sm-12">
                                    <label for="name">Your Name</label>
                                    <input class="form-control" id="name" type="text" name="name">
                                  </div>
                                  <div class="col-xl-6 col-md-6">
                                      <label for="phone">Your Phone</label>
                                      <input class="form-control" id="phone" type="text" name="phone">
                                  </div>
                                  <div class="col-xl-6 col-md-6">
                                      <label for="email">Your Email</label>
                                      <input class="form-control" id="email" type="email" name="email">
                                  </div>
                                  <div class="col-xl-6 col-md-6">
                                      <label for="subject">Your Subject</label>
                                      <input class="form-control" id="subject" type="text" name="subject">
                                  </div>
                                  <div class="col-xl-12 col-md-12">
                                    <label for="message">Message</label>
                                    <textarea rows="5" class="form-control" id="message" name="message"></textarea>
                                  </div>
                                  <div class="col-xl-12 col-md-12 btn-submit">
                                      <input class="btn btn-primary" type="submit" value="Submit">
                                  </div>
                            </div>
                      </form>
                      
                </div>
            </div>

        </div>
    </div>
</div>








@endsection

@section('script')
<script type="text/javascript">
    // ---- Page Custom Script ---


    // ---- Page Custom Script End---
</script>
@endsection()