<html lang="en">
    <link type="text/css" rel="stylesheet" id="dark-mode-general-link">
    <link type="text/css" rel="stylesheet" id="dark-mode-custom-link">
    <style lang="en" type="text/css" id="dark-mode-custom-style"></style>
    <head>
        <title>Reference</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="icon" type="image/png" href="now-ui-kit/assets/img/logo.svg">

        <link rel="stylesheet" type="text/css" href="assets/login/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="assets/login/font-awesome.min.css">

        <link rel="stylesheet" type="text/css" href="assets/login/icon-font.min.css">

        <link rel="stylesheet" type="text/css" href="assets/login/animate.css">

        <link rel="stylesheet" type="text/css" href="assets/login/hamburgers.min.css">

        <link rel="stylesheet" type="text/css" href="assets/login/animsition.min.css">

        <link rel="stylesheet" type="text/css" href="assets/login/select2.min.css">

        <link rel="stylesheet" type="text/css" href="assets/login/util.css">
        <link rel="stylesheet" type="text/css" href="assets/login/main.css">
    </head>
    <body style="background-color: #49adb8; !important">
    @if(session()->has('successmessage'))
        <div class="alert alert-success">
            {{ session()->get('successmessage') }}
        </div>
        @elseif(session()->has('failmessage'))
        <div class="alert alert-danger">
            {{ session()->get('failmessage') }}
        </div>
        @endif
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <form class="login100-form validate-form" method="POST" action="/login">
                        <img  src="now-ui-kit/assets/img/logo.svg" class="logocenter" alt="">
                        <!-- @csrf -->
                        {{ csrf_field() }}
                        <span class="login100-form-title p-b-43">
                            <b> Login </b>
                        </span>
                        <div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type user name">
                            <input class="input100" type="text" name="username" placeholder="NIP">
                            <span class="focus-input100 label-input100">NIP</span>
                            
                        </div>
                        <div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Password is required">
                            <input class="input100" type="password" name="password" placeholder="Password">
                            <span class="focus-input100 label-input100">Password</span>
                        </div>
                        <div class="container-login100-form-btn">
                            <!-- <button class="login100-form-btn"> -->
                            <button type="submit" class="login100-form-btn" style="background-color: #49adb8; !important">
                                Login
                            </button>
                        </div>
                    </form>
<<<<<<< HEAD
                    <div class="login100-more" style="background-image: url('now-ui-kit/assets/img/bg-pln.png');">
=======
                    <!-- <div class="login100-more" style="background-image: url('now-ui-kit/assets/img/bg11.jpg');"> -->
                    <div class="login100-more" style="background-image: url({{ asset('assets/login/photo6084836170501565404.jpg') }});">
>>>>>>> e20a3ad84652184a10ad1efa10b7d9be9981fb6d
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>