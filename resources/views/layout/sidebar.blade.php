<div class="container-fluid mimin-wrapper">
  
    <!-- start:Left Menu -->
    <!-- <div id="left-menu">
        <div class="sub-left-menu scroll">
        <ul class="nav nav-list">
            <li><div class="left-bg"></div></li>
            <li class="time">
                <h1 class="animated fadeInLeft">21:00</h1>
                <p class="animated fadeInRight">Sat,October 1st 2029</p>
            </li>
            <li class="active">
                <a href="{{ route('dashboard') }}">
                    <span class="fa-home fa"></span> Dashboard
                </a>
            </li>
            <li>
                <a href="{{ route('kelola-user') }}">
                <span class="icon-user fa"></span> Profil
                </a>
            </li>
            <li class="ripple">
                <a class="tree-toggle nav-header">
                <span class="fa-bolt fa"></span> Kategori
                <span class="fa-angle-right fa right-arrow text-right"></span>
                </a>
                <ul class="nav nav-list tree">
                <li><a href="">Kategori 1</a></li>
                <li><a href="">Kategori 2</a></li>
                <li><a href="">Kategori 3</a></li>
                <li><a href="">Kategori 4</a></li>
                <li><a href="">Kategori 5</a></li>
                <li><a href="">Kategori 6</a></li>
                <li><a href="">Kategori 7</a></li>
                <li><a href="">Kategori 8</a></li>
                <li><a href="">Kategori 9</a></li>
                <li><a href="">Kategori 10</a></li>
                <li><a href="">Kategori 11</a></li>
                <li><a href="">Kategori 12</a></li>
                <li><a href="">Kategori 13</a></li>
                <li><a href="">Kategori 14</a></li>
                </ul>
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
            <span class="fa icon-people"></span> Kelola User</a>
            </li>
        </ul>
        </div>
    </div> -->
    <!-- end: Left Menu -->


    <!-- start: right menu -->
    <div id="right-menu">
        <ul class="nav nav-tabs">
        <li class="active">
            <a data-toggle="tab" href="#right-menu-user">
            <span class="fa fa-comment-o fa-2x"></span>
            </a>
        </li>
        <li>
            <a data-toggle="tab" href="#right-menu-notif">
            <span class="fa fa-bell-o fa-2x"></span>
            </a>
        </li>
        <li>
            <a data-toggle="tab" href="#right-menu-config">
            <span class="fa fa-cog fa-2x"></span>
            </a>
            </li>
        </ul>

        <div class="tab-content">
        <div id="right-menu-user" class="tab-pane fade in active">
            <div class="search col-md-12">
            <input type="text" placeholder="search.."/>
            </div>
            <div class="user col-md-12">
            <ul class="nav nav-list">
            <li class="online">
                <img src="miminium-master/asset/img/avatar.jpg" alt="user name">
                <div class="name">
                <h5><b>Bill Gates</b></h5>
                <p>Hi there.?</p>
                </div>
                <div class="gadget">
                <span class="fa  fa-mobile-phone fa-2x"></span> 
                </div>
                <div class="dot"></div>
            </li>
            <li class="away">
                <img src="miminium-master/asset/img/avatar.jpg" alt="user name">
                <div class="name">
                <h5><b>Bill Gates</b></h5>
                <p>Hi there.?</p>
                </div>
                <div class="gadget">
                <span class="fa  fa-desktop"></span> 
                </div>
                <div class="dot"></div>
            </li>
            <li class="offline">
                <img src="miminium-master/asset/img/avatar.jpg" alt="user name">
                <div class="name">
                <h5><b>Bill Gates</b></h5>
                <p>Hi there.?</p>
                </div>
                <div class="dot"></div>
            </li>
            <li class="offline">
                <img src="miminium-master/asset/img/avatar.jpg" alt="user name">
                <div class="name">
                <h5><b>Bill Gates</b></h5>
                <p>Hi there.?</p>
                </div>
                <div class="dot"></div>
            </li>
            </ul>
        </div>

        <div id="right-menu-config" class="tab-pane fade">
                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Notification</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-info">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch1" checked>
                        <label class="onoffswitch-label" for="myonoffswitch1"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Custom Designer</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-danger">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch2" checked>
                        <label class="onoffswitch-label" for="myonoffswitch2"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Autologin</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-success">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch3" checked>
                        <label class="onoffswitch-label" for="myonoffswitch3"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Auto Hacking</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-warning">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch4" checked>
                        <label class="onoffswitch-label" for="myonoffswitch4"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Auto locking</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch5" checked>
                        <label class="onoffswitch-label" for="myonoffswitch5"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>FireWall</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch6" checked>
                        <label class="onoffswitch-label" for="myonoffswitch6"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>CSRF Max</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-warning">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch7" checked>
                        <label class="onoffswitch-label" for="myonoffswitch7"></label>
                      </div>
                    </div>
                  </div>


                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Man In The Middle</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-danger">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch8" checked>
                        <label class="onoffswitch-label" for="myonoffswitch8"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="col-md-6 padding-0">
                      <h5>Auto Repair</h5>
                    </div>
                    <div class="col-md-6">
                      <div class="mini-onoffswitch onoffswitch-success">
                        <input type="checkbox" name="onoffswitch2" class="onoffswitch-checkbox" id="myonoffswitch9" checked>
                        <label class="onoffswitch-label" for="myonoffswitch9"></label>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <input type="button" value="More.." class="btnmore">
                  </div>

                </div>
              </div>
            </div>  
          <!-- end: right menu -->


    <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>