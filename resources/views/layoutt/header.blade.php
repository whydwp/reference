<style>
    .gradient3 {
   background-image: linear-gradient(to right, #004d78, #7effe3);
    }
    .tulisan{
        color: antiquewhite;
    }
    .bold{
        font-weight: bold;
    }
</style>
<nav class="gradient3 main-header navbar navbar-expand-md navbar-light navbar-white">
    {{-- <div class="container"> --}}
        <a style="margin-left: 25px !important;"href="{{route('dashboard')}}" class="navbar-brand">
            <img src="{{asset('image/Logo_PLN.png')}}" alt="logo pln"
                class="brand-image elevation-3" style="opacity: .8">
            <span class="brand-text font-weight-light tulisan">Reference Learning</span>
        </a>
        <!-- Right navbar links -->
        <ul  class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
            <li class="nav-item">
                <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#"><i class="fas fa-bars"></i>
                    <b>Menu</b></a>
            </li>
            <!-- Messages Dropdown Menu -->
            <li  class="nav-item dropdown user user-menu">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                @if(Auth::user()->avatar_file != NULL)
                    <img src="{{ URL::to('/') }}/uploads/document/{{Auth :: user()->avatar_file}}" class="user-image img-circle elevation-2 alt=" User Image">
                @elseif(Auth::user()->avatar_file == NULL)
                    <img src="{{ asset('assets/img/avatar.png') }}" class="user-image img-circle elevation-2 alt=" User Image">
                @endif
                    <i class="hidden-xs"></i>
                    @if(Auth::check())
                    <span class="bold">{{Auth :: user()->full_name}}</span>
                    @endif
                </a>
                <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <!-- User image -->
                    <li class="user-header bg-primary">
                    @if(Auth::user()->avatar_file != NULL)
                        <img src="{{ URL::to('/') }}/uploads/document/{{Auth :: user()->avatar_file}}" class="user-image img-circle elevation-2 alt=" User Image">
                    @elseif(Auth::user()->avatar_file == NULL)
                        <img src="{{ asset('assets/img/avatar.png') }}" class="user-image img-circle elevation-2 alt=" User Image">
                    @endif

                        <p>
                           <p>
                                {{Auth :: user()->full_name}}
                                <small value="{{Auth :: user()->user_type_id}}">{{Auth :: user()->type}}</small>
                            </p>
                        </p>
                    </li>
                    <!-- Menu Body -->

                    <!-- Menu Footer-->
                    <li class="user-footer">
                        <div class="float-left">
                            <a href="{{route('profil.index') }}" class="btn btn-block btn-outline-secondary">Profile</a>
                        </div>
                        <div class="float-right">
                            <a href="{{ route('logout') }}" class="btn btn-block btn-outline-secondary">Sign out</a>
                        </div>
                    </li>
                </ul>
            </li>

       
        </ul>
        

</nav>