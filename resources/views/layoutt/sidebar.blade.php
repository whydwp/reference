<div id="right-menu" style="display: block; width: 230px;">
    <div class="left-bg"></div>    
    <a href="{{ route('dashboard') }}" class="navbar-brand"> 
        <b style="text-size:50px;">REFERENCE</b>
    </a>
             
    <div id="right-menu-user" class="tab-pane fade in active">
        <div class="user col-md-12 scroll">
            <ul class="nav nav-list">
                <li class="active">
                    <a href="{{ route('dashboard') }}" class="tree-toogle nav-header">
                        <span class="fa-home fa"></span> Dashboard
                    </a>
                </li>
                <li>
                    <a href="{{ route('kelola-user') }}">
                    <span class="fa fa-user"></span> Profil
                    </a>
                </li>
                <li>
                    <a href="{{ route('kategori') }}" class="tree-toggle nav-header">
                    <span class="fa-bolt fa"></span> Kategori
                    </a>
                </li>                 
                <li>
                    <a href="">
                    <span class="fa-cloud fa"></span> My References
                    </a>
                </li>
                <li>
                    <a href="">
                    <span class="fa-heart-o fa"></span> My Likes
                    </a>
                </li>
                <li>
                    <a href="">
                    <span class="fa fa-book"></span> Kelola Dokumen</a>
                </li>
                <li>
                    <a href="{{ route('kelola-user') }}">
                    <span class="fa fa-users"></span> Kelola User</a>
                </li>
            </ul>
        </div>
    </div>
               
</div>  
          <!-- end: right menu -->