<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Reference Learning</title>
    <style>
        body {
            /* font-family: 'Inter'!important;
             font-weight: normal !important;  */
            overflow-x: hidden;
        }

        i .tekan {
            i:hover {
                blue;
            }
        }

        i. {
            tahun: hover #eee
        }
        }

        .ini {
            a:hover {
                wihte;
            }
        }

        .uppercase {
            text-transform: uppercase;
        }

        .like-post {
            color: #4400ff !important;
        }

        .back-to-top {
            position: fixed;
            bottom: 25px;
            right: 25px;
            display: none;
        }

        .text {
            color: #eee;
            font-weight: 500;
        }

        .footer {
            color: aliceblue;
        }

        .jarak {
            margin-left: 20px !important;
        }

        .gradient2 {
            background-image: linear-gradient(to right, #004d78, #7effe3);
        }

        .morecontent span {
            display: none;
        }

        .morelink {
            display: block;
        }

        /* #more {
           display: none;} */
        /* html{
           background-image: linear-gradient(to right, #004d78, #7effe3); 
        } */
    </style>
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="{{asset('admin/plugins/fontawesome-free/css/all.min.css')}}">
    {{-- <link href="//db.onlinewebfonts.com/c/3dd6e9888191722420f62dd54664bc94?family=Myriad+Pro" rel="stylesheet">
    <!-- Theme style --> --}}
    <link rel="stylesheet" href="{{asset('admin/dist/css/adminlte.min.css')}}">
    <link rel="stylesheet" href="{{asset('admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('chartjs/Chart.min.css')}}">
    <link rel="stylesheet" href="{{asset('admin/plugins/summernote/summernote-bs4.min.css')}}">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('image/logo.png')}}">
    <!-- Jquery -->


    {{-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="Stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css"> --}}
    {{-- <link rel="stylesheet" type="text/css" href="{{asset('jqueryui/jquery-ui.min.css')}}"> --}}
    <!-- Select2 -->
    <link rel="stylesheet" href="{{asset('admin/plugins/select2/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{asset('admin/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">

    {{-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> --}}
    <script src="{{asset('admin/plugins/jquery/jquery.min.js')}}"></script>
    {{-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> --}}


    <script src="{{asset('chartjs/Chart.min.js')}}"></script>
    <script src="{{asset('admin/plugins/jquery-ui/jquery-ui.min.js')}}" type="text/javascript"></script>
   <script src="{{asset('admin/plugins/summernote/summernote-bs4.min.js')}}"></script>
    <script src="{{asset('admin/plugins/chart.js/Chart.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js')}}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{asset('admin/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- AdminLTE App -->

    <script src="{{asset('admin/plugins/select2/js/select2.full.min.js')}}"></script>
    <script src="{{asset('admin/dist/js/adminlte.min.js')}}"></script>
    <script src="{{asset('admin/dist/js/demo.js')}}"></script>

    {{-- <script>
        $(document).bind("contextmenu",function(e) {
    alert('@copyright Yourportfolio for your curiculum vitae , resume & your portfolio')//silahkan tulis pesan yang akan
    ditampilkan
    });
    </script> --}}

</head>

<body class="hold-transition sidebar-collapse layout-top-nav">
    <div class="wrapper">

        <!-- Navbar -->
        @include('layoutt.header')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        @include('layoutt.sidebar')
        <div class="container">
            <div class="row mb-4">
                <div class="col-sm-12">
                    <!-- Content Wrapper. Contains page content -->
                    <div class="content-wrapper">

                        <section class="content-header">
                            <div class="container">
                                <div class="row mb-4">
                                    <div class="col-sm-12" style="margin-top: 50px !important;;">
                                        <h3 class="">
                                            @yield('title')
                                        </h3>
                                        <ol class="breadcrumb">
                                            @if(Auth::user()->user_type_id == 1)
                                            <li><a href="{{route('dashboard')}}"><i class="fa fa-dashboard"></i>
                                                    @lang('Home') </a></li>
                                            <li class="active"> / @yield('title')</li>
                                            <li><a href="{{route('dashboard')}}"><i class="fa fa-dashboard"></i>
                                                </a> </li>
                                            <li class="active"> @yield('titlel') </li>
                                            @elseif(Auth::user()->user_type_id == 2 )
                                            <li><a href="{{route('dashboardUser')}}"><i class="fa fa-dashboard"></i>
                                                    {{__('Halaman depan')}}</a></li>
                                            <li class="active "> / @yield('title')</li>
                                            @elseif(Auth::user()->user_type_id == 3 )
                                            <li><a href="{{route('dashboardUser')}}"><i class="fa fa-dashboard"></i>
                                                    {{__('Halaman depan')}}</a></li>
                                            <li class="active"> / @yield('title')</li>
                                            @elseif(Auth::user()->user_type_id == 3 )
                                            <li><a href="{{route('dashboardUser')}}"><i class="fa fa-dashboard"></i>
                                                    {{__('Halaman depan')}}</a></li>
                                            <li class="active"> / @yield('title')</li>
                                            @endif
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <!-- Main content -->
                        <section style="margin-top: -30px;" class="content">
                            @yield('content')
                            <!-- Small boxes (Stat box) -->

                            <!-- /.row -->
                            <!-- Main row -->

                            <!-- /.row (main row) -->

                        </section>
                        <!-- /.content-header -->

                        @include('sweetalert::alert')
                        <!-- Main content -->

                        <!-- /.content -->
                    </div>
                    <!-- /.content-wrapper -->

                    <!-- Control Sidebar -->

                    <!-- /.control-sidebar -->

                    <!-- Main Footer -->

                    <a id="back-to-top" href="#" class="btn btn-info btn-lg back-to-top" role="button"><i
                            class="fas fa-chevron-up"></i></a>
                    <!-- Content Header (Page header) -->
                </div>
            </div>
        </div>
        <div class="text-center p-3 gradient2">
            <span class="text">Copyright &copy; PLN Pusdiklat - 2020</span>
        </div>
        {{-- <footer style="position:relative !important;"class="main-footer gradient2">
            <div class="container my-auto">
                <div class="copyright text-center my-auto ">
                    <span class="footer">Copyright &copy; PLN Pusdiklat - 2020</span>
                </div>
            </div>
        </footer> --}}
    </div>

</body>

<script>
    $(document).ready(function(){
	$(window).scroll(function () {
			if ($(this).scrollTop() > 70) {
				$('#back-to-top').fadeIn();
			} else {
				$('#back-to-top').fadeOut();
			}
		});
		// scroll body to 0px on click
		$('#back-to-top').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 300);
			return false;
		});
});
</script>

</html>