<style>
    .gradient3 {
        background-image: linear-gradient(to right, #004d78, #7effe3);
    }

    .tulisan {
        color: antiquewhite;
    }

    .bold {
        font-weight: bold;
    }

    .sticky-header {
        width: 100%;
        position: fixed;

    }
</style>
<nav class="gradient3 main-header navbar navbar-expand-md navbar-light navbar-white sticky-header">
    {{-- <div class="container"> --}}
    <a style="margin-left: 25px !important;" href="{{route('dashboard')}}" class="navbar-brand">
        <img src="{{asset('image/Logo_PLN.png')}}" alt="logo pln" class="brand-image elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light tulisan">Reference Learning</span>
    </a>
    <!-- Right navbar links -->
    <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
        <li class="nav-item">
            <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#"><i class="fas fa-bars"></i>
                <b>Menu</b></a>
        </li>
        <!-- Messages Dropdown Menu -->
        <li class="nav-item dropdown no-arrow show">
        </li>
        <li style="margin-left: 20px; margin-right:10px;" class="nav-item dropdown user user-menu">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                @if(Auth::user()->avatar_file != NULL)
                <img src="{{ URL::to('/') }}/uploads/document/{{Auth :: user()->avatar_file}}"
                    class="user-image img-circle elevation-2 alt=" User Image">
                @elseif(Auth::user()->avatar_file == NULL)
                <img src="{{ asset('assets/img/avatar.png') }}" class="user-image img-circle elevation-2 alt=" User
                    Image">
                @endif
                <i class="hidden-xs dropdown-toggle"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in show"
                    aria-labelledby="userDropdown">
                    <a class="dropdown-item">
                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                        {{Auth :: user()->full_name}}
                    </a>
                    <a class="dropdown-item" href="{{route('profil.index') }}">
                        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                        Setting Profil
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="{{ route('logout') }}">
                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                        Keluar
                    </a>
                </div>
                <!-- User image -->
            </ul>
        </li>


    </ul>
    {{-- <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                Dropdown
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                @if(app()->getLocale()=='en')
                <a href="{{url('locale/id')}}" class="dropdown-item">@lang('indonesian')</a>
    @endif
    @if(app()->getLocale()=='id')
    <a href="{{url('locale/en')}}" class="dropdown-item">@lang('english')</a>
    @endif

    </div>
    </div> --}}

</nav>