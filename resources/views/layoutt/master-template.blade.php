<html lang="en">
    <link type="text/css" rel="stylesheet" id="dark-mode-general-link">
    <link type="text/css" rel="stylesheet" id="dark-mode-custom-link">
    <style lang="en" type="text/css" id="dark-mode-custom-style"></style>
<head>
  
  <meta charset="utf-8">
  <meta name="description" content="Reference Pusdiklat PLN">
  <meta name="keyword" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Reference</title>

  <!-- start: Css -->
  <link rel="stylesheet" type="text/css" href="miminium-master/asset/css/bootstrap.min.css">

  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="miminium-master/asset/css/plugins/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="miminium-master/asset/css/plugins/datatables.bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="miminium-master/asset/css/plugins/animate.min.css">
  <link rel="stylesheet" type="text/css" href="cards/card.min.css">
  <link rel="stylesheet" type="text/css" href="cards/card2.min.css">
  <!-- <link rel="stylesheet" type="text/css" href="cards/card3.min.css"> -->
  <link href="miminium-master/asset/css/style.css" rel="stylesheet">
  <!-- end: Css -->

  <link rel="shortcut icon" href="miminium-master/asset/img/logomi.png">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>

<body id="mimin" class="dashboard">
    @include('layoutt.header')
    <div class="container-fluid mimin-wrapper">

    <!-- Start Content -->
    <div id="content" style="padding-left: 0px; padding-right: 230px;">

        <div class="panel box-shadow-none content-header">
            <div class="panel-body">
                <div class="col-md-12">
                    <h3 class="animated fadeInLeft">Reference</h3>
                    <p class="animated fadeInDown">
                        Welcome to Reference
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-12 top-20 padding-0">
            <div class="col-md-12">
                <div class="panel">
                    <div class="panel-heading">
                        <h3>@yield('content-title')</h3>
                    </div>
                    <div class="panel-body">
                        @yield('content')
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('layoutt.sidebar')

    <div id="ascrail2002" class="nicescroll-rails" style="width: 26px; z-index: 230; cursor: -webkit-grab; position: absolute; top: 0px; left: 202px; height: 80px; display: none;">
        <div style="position: relative; top: 0px; float: right; width: 24px; height: 0px; background-color: rgb(33, 150, 243); border: 1px solid rgb(255, 255, 255); background-clip: padding-box; border-radius: 5px;">
        </div>
    </div>
    <div id="ascrail2002-hr" class="nicescroll-rails" style="height: 26px; z-index: 230; top: 54px; left: 0px; position: absolute; display: none;">
        <div style="position: relative; top: 0px; height: 24px; width: 0px; background-color: rgb(33, 150, 243); border: 1px solid rgb(255, 255, 255); background-clip: padding-box; border-radius: 5px;"> 
        </div>
    </div>
    <div id="ascrail2003" class="nicescroll-rails" style="width: 7px; z-index: 222; cursor: default; position: absolute; top: 169px; left: 1007px; height: 600px; opacity: 0;">
        <div style="position: relative; top: 0px; float: right; width: 5px; height: 459px; background-color: rgb(33, 150, 243); border: 1px solid rgb(255, 255, 255); background-clip: padding-box; border-radius: 5px;">
        </div>
    </div>
    <div id="ascrail2003-hr" class="nicescroll-rails" style="height: 7px; z-index: 222; top: 762px; left: 785px; position: absolute; cursor: default; display: none; width: 222px; opacity: 0;">
        <div style="position: relative; top: 0px; height: 5px; width: 229px; background-color: rgb(33, 150, 243); border: 1px solid rgb(255, 255, 255); background-clip: padding-box; border-radius: 5px;">
        </div>
    </div>
</body>
</html>
