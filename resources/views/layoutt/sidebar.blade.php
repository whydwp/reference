<style>

    .sticky-sidebar{
    position: fixed;

    }
</style>

<aside class="main-sidebar control-sidebar sidebar-light-primary elevation-4" style="overflow-x :hidden;">
    <!-- Brand Logo -->
    <a href="{{asset('admin/index3.html')}}" class="brand-link">
        <img src="{{asset('image/logo.jpg')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
            style="opacity: .8">
        <span class="brand-text font-weight-light"></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar sticky-sidebar ">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            {{-- <div class="image">
                <img src="{{asset('image/user.png')}}" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">{{Auth::user()->full_name}}</a>
            </div> --}}
        </div>
        <hr>
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            @role("superadmin")
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <a href="{{route('dashboard')}}" class="nav-link">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Dashboard
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('profil.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-address-card"></i>
                            <p>
                                Kelola profil
                            </p>
                        </a>
                    </li>

                    <li class="nav-item">
                        {{-- <a href="{{ route('kategori', ['id' => '1']) }}" class="nav-link"> --}}
                        <a href="{{ route('kategori.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-random"></i>
                            <p>
                                Kategori
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('forum.index')}}" class="nav-link">
                            <i class="nav-icon fas fa-chalkboard-teacher"></i>
                            <p>
                                Kelola Komentar
                            </p>
                        </a>
                    </li>
                    {{-- <li class="nav-item">
                        <a href="{{route('like.index')}}" class="nav-link">
                            <i class="nav-icon fab fa-gratipay"></i>
                            <p>
                                Like
                            </p>
                        </a>
                    </li> --}}
                    <li class="nav-item">
                        <a href="{{route('document.index')}}" class="nav-link">
                            <i class="nav-icon fas fa-file-alt"></i>
                            <p>
                                Kelola Dokumen
                            </p>
                        </a>
                    </li>
                    {{-- <li class="nav-item">
                        <a href="{{ route('document.index') }}" class="nav-link">
                    <i class="fas fa-file-alt"></i>
                    <p>
                        kelola-document
                    </p>
                    </a>
                    </li> --}}
                    <li class="nav-item">
                        <a href="{{ route('user.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-users-cog"></i>
                            <p>
                                Kelola User
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('ebook.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-book"></i>
                            <p>
                            Kelola Buku
                            </p>
                        </a>
                    </li>
                </ul>
            @endrole
            @role("admin")
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                            with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <a href="{{route('dashboardUser')}}" class="nav-link">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Dashboard
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('profil.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-address-card"></i>
                            <p>
                                Kelola profil
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('reference.index')}}" class="nav-link">
                            <i class="nav-icon fas fa-chalkboard-teacher"></i>
                            <p>
                                Reference
                            </p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{route('doc.index')}}" class="nav-link">
                            <i class="nav-icon fas fa-file-alt"></i>
                            <p>
                                Kelola Dokumen
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('adminEbook.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-book"></i>
                            <p>
                                Kelola Buku
                            </p>
                        </a>
                    </li>
                    {{-- <li class="nav-item">
                                    <a href="{{ route('document.index') }}" class="nav-link">
                    <i class="fas fa-file-alt"></i>
                    <p>
                        kelola-document
                    </p>
                    </a>
                    </li> --}}

                </ul>
            @endrole
            @role("plnpusdiklat")
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                            with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <a href="{{route('dashboardUser')}}" class="nav-link">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Dashboard
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('profil.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-address-card"></i>
                            <p>
                                Kelola profil
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('reference.index')}}" class="nav-link">
                            <i class="nav-icon fas fa-chalkboard-teacher"></i>
                            <p>
                                Reference
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('like.index')}}" class="nav-link">
                            <i class="nav-icon fab fa-gratipay"></i>
                            <p>
                                Like
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('kumpulanEbook.index') }}" class="nav-link">
                            <i class="nav-icon fas fa-users-cog"></i>
                            <p>
                                Kumpulan Buku
                            </p>
                        </a>
                    </li>

                </ul>
            @endrole
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>