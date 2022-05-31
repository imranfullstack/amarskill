@extends('frontend.master')
@section('style')
        <style type="text/css">
            .login-btm {
                margin-top: 30px;
                color: #000;
                font-weight: 500;
            }
            .stv-radio-buttons-wrapper {
              clear: both;
              display: inline-block;
            }
            .stv-radio-button {
              position: absolute;
              left: -9999em;
              top: -9999em;
            }
            .stv-radio-button + label {
                float: left;
                padding: 0.5em 1em;
                cursor: pointer;
                border: 1px solid #28608f;
                margin-right: -1px;
                color: #000;
                background-color: #ffffff;
            }
            .stv-radio-button:checked + label {
              background-color: #084496;
              color: #fff;
            }
            .registration-aria .form-aria .form-group .input-group .input-group-addon i {
                color: #084496;
            }

            .registration-btn p a {
                color: #084496;
                font-weight: 700;
            }
            .stv-radio-buttons-wrapper {
                width: 100%;
            }

            .stv-radio-buttons-wrapper label {
                width: 50%;
            }
            .registration-aria img {
                width: 75%;
            }
        </style>
@endsection()
@section('main_aria')

<section class="page-banner">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-xs-6">
                <div class="page-nav-left">
                    <h3>REGISTER</h3>
                </div>
            </div>
            <div class="col-md-6  col-xs-6">
                <div class="right-nav-top-aria">
                    <ul>
                        <li>HOME</li>
                        <li>/</li>
                        <li>REGISTER</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>


<form method="POST" action="{{ route('register') }}">
    @csrf
    <section class="page-content-aria">
        <div class="container">
            <div class="registration-aria">
                <div class="row">
                    <div class="col-md-7 left-image-dkslc0c23d">
                        <img src="{{asset('public/frontend/amarskill-signup.png')}}">                          
                    </div>
                    <div class="col-md-5">
                        <br>
                        <br>
                            <h3 align="left">Sign Up and Start Learning!</h3>

                            <div class="stv-radio-buttons-wrapper">
                                <input type="radio" class="stv-radio-button" name="usertype" value="1" id="button1" checked="">
                                <label for="button1">Join As A Student</label>
                                <input type="radio" class="stv-radio-button" name="usertype" value="2" id="button2">
                                <label for="button2">Join As A Instructor</label>
                            </div>

                        <div class="form-aria">

                          <div class="form-group">
                            <div class="input-group">
                              <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="Full Name">
                            </div>


                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong class="text-danger">{{ $message }}</strong>
                                </span>
                            @enderror

                            <br>
                            <div class="input-group">
                              <div class="input-group-addon">
                                <i class="fa fa-envelope"></i>
                              </div>
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Your Email">

                            </div>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            <br>


                             <div class="row">
                                <div class="col-xs-12">
                                    <div class="input-group">
                                      <div class="input-group-addon">
                                        <i class="fa fa-phone"></i>
                                      </div>
                                        <input type="text" name="phone" class="form-control" placeholder="Phone Number">
                                    </div>
                                    @error('phone')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                             </div>
                            <br>
                             <div class="row">
                                <div class="col-xs-6">
                                    <div class="input-group">
                                      <div class="input-group-addon">
                                        <i class="fa fa-key"></i>
                                      </div>
                                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" placeholder="Password">

                                    </div>
                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                 </div>
                                <div class="col-xs-6">
                                    <div class="input-group">
                                      <div class="input-group-addon">
                                        <i class="fa fa-key"></i>
                                      </div>
                                       <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder="Confirm Password">
                                    </div>
                                </div>
                             </div>
                                <br>
                                    <div class="row">
                                      <div class="col-xs-12">
                                        <label class="checkbox-inline">
                                          <input type="checkbox" required id="inlineCheckbox1" value="option1">
                                            <b>I Agree will all of <a href="#" style="color: #084496">Trams And Condition</a></b>
                                        </label>
                                      </div>
                                    </div>
                                <br>
                                <button class="btn btn-primary btn-block" type="submit"><b>REGISTER</b> </button>
                                <div class="login-btm registration-btn">
                                    <p>Don’t have an account? <a href="{{route('login')}}">Sign In</a></p>
                                    <p>Visit  <a href="{{URL('/')}}"> <i class="fa fa-home"></i> Home</a> </p>
                                </div>
                          </div>
                        </div>

                    </div>
                </div>
            </div>              
        </div>

    </section>
</form>
<br>
<br>




@endsection

@section('script')
<script type="text/javascript">
    // ---- Page Custom Script ---


    // ---- Page Custom Script End---
</script>
@endsection()