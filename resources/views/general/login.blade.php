<!DOCTYPE html>
<html lang="en">

<head>
    <title>Reference Learning</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="masuk/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="masuk/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="masuk/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="masuk/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="masuk/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="masuk/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="masuk/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="masuk/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="masuk/css/util.css">
    <link rel="stylesheet" type="text/css" href="masuk/css/main.css">
    <link rel="shortcut icon" type="image/x-icon" href="image/logo.png">
    <!--===============================================================================================-->
</head>

<body>

    <div class="limiter">
       <div id="demo" class="carousel slide container-login100" data-ride="carousel">
            <!-- The slideshow -->
            <div class="carousel-inner" >
                @foreach($slider as $key => $sliders)
                <div class="carousel-item {{$key == 0 ? 'active' : '' }}">
                   <div class="container-login100" style="background-image: url({{asset('uploads/'.$sliders->gambar)}});margin-left:1px;">
                    {{-- <img src="{{ asset('uploads/'.$sliders->gambar) }}" alt=""> --}}
                    <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54" style="">
                        <form class="login100-form validate-form">
                            <img src="image/logo.png" alt="" style="display: block; margin: auto;">
                            <span class="login100-form-title p-b-49">
                                Login
                            </span>
                                <div style="margin-top: -30px;margin-left:40px;"" class=" m-b-23">
                                    <span>Selamat Datang di Reference Learning!</span>
                                    <span>Masuk sebagai User untuk melanjutkan.</span>
                                </div>
                            <div class="container-login100-form-btn">
                                <div class="wrap-login100-form-btn">
                                    <div class="login100-form-bgbtn"></div>
                                    <a class="login100-form-btn" href="{{url('loginn')}}">Sign In With PLN SSO</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                </div>
                @endforeach
                {{-- <footer>
                    <div class="bg-footer" style="margin-left: -90x;"><img src="masuk/footer.svg" alt=""></div>
                </footer> --}}
            </div>
    </div>


    <div id="dropDownSelect1"></div>

    <!--===============================================================================================-->
    <script src="masuk/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="masuk/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="masuk/vendor/bootstrap/js/popper.js"></script>
    <script src="masuk/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="masuk/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="masuk/vendor/daterangepicker/moment.min.js"></script>
    <script src="masuk/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="masuk/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="masuk/js/main.js"></script>

    
</body>

</html>