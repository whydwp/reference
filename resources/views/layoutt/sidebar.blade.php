<aside class="main-sidebar control-sidebar sidebar-light-primary elevation-4" style="overflow-x :hidden;">
    <!-- Brand Logo -->
    <a href="../../index3.html" class="brand-link">
        <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
            style="opacity: .8">
        <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">Alexander Pierce</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
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
                        <i class="fas fa-address-card"></i>
                        <p>
                            Kelola-profil
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('kategori') }}" class="nav-link">
                        <i class="fas fa-random"></i>
                        <p>
                            Kategori
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route('reference.index')}}" class="nav-link">
                        <i class="fas fa-chalkboard-teacher"></i>
                        <p>
                            Reference
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route('like.index')}}" class="nav-link">
                        <i class="fab fa-gratipay"></i>
                        <p>
                            Like
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('document.index') }}" class="nav-link">
                        <i class="fas fa-file-alt"></i>
                        <p>
                            kelola-document
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="fas fa-users-cog"></i>
                        <p>
                            kelola-user
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('kelola-user') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>ALL</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="../../index2.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Super Admin</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="../../index3.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Admin</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="../../index3.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>PLN</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>