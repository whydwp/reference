<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="description" content="Reference Pusdiklat">
  <meta name="keyword" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Reference</title>

  <!-- start: Css -->
  <link rel="stylesheet" type="text/css" href="{{asset('miminium-master/asset/css/bootstrap.min.css')}}">

  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="{{asset('miminium-master/asset/css/plugins/font-awesome.min.css')}}" />
  <link rel="stylesheet" type="text/css" href="{{asset('miminium-master/asset/css/plugins/simple-line-icons.css')}}" />
  <link rel="stylesheet" type="text/css"
    href="{{asset('miminium-master/asset/css/plugins/datatables.bootstrap.min.css')}}" />
  <link rel="stylesheet" type="text/css" href="{{asset('miminium-master/asset/css/plugins/animate.min.css')}}" />
  <!-- <link rel="stylesheet" type="text/css" href="miminium-master/asset/css/submenu.min.css"/> -->
  <link href="{{asset('miminium-master/asset/css/style.css')}}" rel="stylesheet">
  <!-- end: Css -->
  <link rel="shortcut icon" href="{{asset('miminium-master/asset/img/logomi.png')}}">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	  <![endif]-->


</head>

<body id="mimin" class="dashboard">
  @include('layoutt.header')
  @include('layoutt.sidebar')
  <div id="content" style="padding-left: 0px; padding-right: 230px;">
    <div class="col-md-12 padding-0">
      <div class="col-md-12 padding-0">
        <div class="col-md-12 padding-0">
          <div class="panel box-shadow-none content-header">
            <div class="panel-body">
              <div class="col-md-2">
                <img src="now-ui-kit/asset/img/logo.svg" class="logocenter" alt="">
              </div>
              <div class="col-md-5">
                <h3 class="animated fadeInLeft">
                  REFERENCE
                </h3>
                <p class="animated fadeInDown" style="line-height:.4;">
                  Welcome To Reference.
                </p>
              </div>
            </div>
          </div>


          <div class="panel-heading">
            <h3>@yield('header-content')</h3>
          </div>
          <div class="panel-body">
            @yield('content')


</body>

</html>