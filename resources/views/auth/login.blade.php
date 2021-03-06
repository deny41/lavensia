<!DOCTYPE html>
<html>
<head>
    <!-- Favicon-->
    @include('layouts._head')
</head>
<body class="login-page">
    <div class="login-box">
        <div class="logo">
            <a href="{{ url('/') }}"><b>OKE-TRIP</b></a>
            <small>Warmest Traveller - Solution your Holiday</small>
        </div>
        <div class="card">
            <div class="body">
                <form class="form-horizontal" method="POST" action="{{ route('login') }}">
                    {{ csrf_field() }}
                    {{-- <div class="msg">Sign in</div> --}}

                    <div class="input-group{{ $errors->has('username') ? ' has-error' : '' }}">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <input id="username" type="text" class="form-control" name="username" value="{{ old('username') }}" required autofocus>
                        </div>
                        @if ($errors->has('username'))
                            <span class="help-block">
                                <strong>{{ $errors->first('username') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="input-group{{ $errors->has('password') ? ' has-error' : '' }}">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <input id="password" type="password" class="form-control" name="password" required>
                        </div>
                        @if ($errors->has('password'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="row">
                        <div class="col-xs-8 p-t-5">
                            {{-- <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> --}}
                            {{-- <label for="rememberme">Remember Me</label> --}}
                        </div>
                        <div class="col-xs-4">
                            <button class="btn btn-block waves-effect"  style="color:white;background-color: #0526ce;" type="submit">SIGN IN</button>
                        </div>
                    </div>
                    <div class="row m-t-15 m-b--20">
                        <div class="col-xs-6">
                            {{-- <a href="{{ route('register') }}">Register </a> --}}
                        </div>
                        <div class="col-xs-6 align-right">
                            {{-- <a href="forgot-password.html">Forgot Password?</a> --}}
                        </div>
                    </div>
                </form>
                </div>
            </div>
        </div>

    
</body>
    @include('layouts._scripts')

</html>