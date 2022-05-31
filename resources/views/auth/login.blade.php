@extends('frontend.master')
@section('style')
        <style type="text/css">

.login-btm {
    margin-top: 30px;
    color: #000;
    font-weight: 500;
}
.login-btm a {
    color: #084496;
    font-weight: 700;
}
.password-forget a {
    color: #084496;
    font-weight: 700;
}
.login-aria .form-aria .input-group i {
    color: #084496;
}
.login-aria img {
    width: 65%;
}

</style>
@endsection()
@section('main_aria')

<section class="page-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xs-6">
                    <div class="page-nav-left">
                        <h3>LOGIN</h3>
                    </div>
                </div>
                <div class="col-md-6 col-xs-6">
                    <div class="right-nav-top-aria">
                        <ul>
                            <li>HOME</li>
                            <li>/</li>
                            <li>LOGIN</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

<section class="page-content-aria">
        <div class="container">
            <div class="login-aria">
                <div class="row">
                    <div class="col-md-7 left-image-dkslc0c23d">
                        <img src="{{asset('public/frontend/amarskill-signin.png')}}">                         
                    </div>
            <form method="POST" action="{{ route('login') }}">
                @csrf
                    <div class="col-md-5">
                        <br>
                        <br>
                            <h3 align="left">Sign Up and Start Learning!</h3>

@include('frontend.asset.message')
                        <div class="form-aria">
                          <div class="form-group">
                            <div class="input-group">
                              <div class="input-group-addon"><i class="fa fa-user"></i></div>

                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus  placeholder="Your Address">


                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <br>
                            <div class="input-group">
                              <div class="input-group-addon">
                                <i class="fa fa-unlock-alt"></i>
                              </div>


                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Your Password">


                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            </div>

                            <br>
                            <div class="row">
                              <div class="col-xs-6">
                                <label class="checkbox-inline">





                                    <input class="form-check-input" type="checkbox" name="remember" id="inlineCheckbox1" {{ old('remember') ? 'checked' : '' }}>



                                    <b>Remember Me</b>
                                </label>
                              </div>
                              <div class="col-xs-6 password-forget" align="right">
                                <b> <a href="{{ route('password.request') }}">Forgot Password?</a> </b>
                              </div>
                            </div>


                            <br>

                                <button class="btn btn-primary btn-block" type="submit"><b>LOGIN</b> </button>
                                <div class="login-btm">

                                    <p>Don’t have an account? <a href="{{route('register')}}">Sign Up</a></p>
                                    <p>Visit  <a href="{{URL('/')}}"> <i class="fa fa-home"></i> Home</a> </p>
                                </div>
                          </div>
                        </div>
                    </div>
                </form>



                </div>
            </div>              
        </div>

    </section>








@endsection

@section('script')
<script type="text/javascript">
    // ---- Page Custom Script ---


    // ---- Page Custom Script End---
</script>
@endsection()