@extends('layoutt.master-template')

@section('title')
Profil
@endsection

@section('content')
<div class="row">
<div class="col-md-4">
    <div class="card">
<div class="card-body box-profile">
    <div class="text-center">
        <img class="profile-user-img img-fluid img-circle" id="gambar_load" src="{{asset('image/user.png')}}"
            alt="User profile picture">
    </div>


    <ul class="list-group list-group-unbordered mb-3">
        <li class="list-group-item">
            <b>Nama</b> <a class="float-right">{{Auth :: user()->full_name}}</a>
        </li>
        <li class="list-group-item">
            <b>Email</b> <a class="float-right">{{Auth :: user()->email}}</a>
        </li>
        <li class="list-group-item">
            <b>Username</b> <a class="float-right">{{Auth :: user()->username}}</a>
        </li>
    </ul>
</div>
</div>
</div>
<div class="col-md-8">
    <div class="card">
        <div class="card-body">
<div class="tab-pane" id="settings">
    <form class="form-horizontal">
        <div class="form-group row">
            <label for="inputName" class="col-sm-2 col-form-label">Name</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" value="{{Auth :: user()->full_name}}"id="inputName" >
            </div>
        </div>
        <div class="form-group row">
            <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="inputEmail"value="{{Auth :: user()->email}}">
            </div>
        </div>
        <div class="form-group row">
            <label for="inputName2" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputName2" placeholder="Name">
            </div>
        </div>
        <div class="form-group row">
            <label for="inputName2" class="col-sm-2 col-form-label">Konfirmasi Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputName2" placeholder="Name">
            </div>
        </div>
        <div class="form-group row">
            <label for="inputName2" class="col-sm-2 col-form-label">Gambar</label>
            <div class="col-sm-10">
                <input type="file" name="gambar" class="form-control" id="preview_gambar" required>
            </div>
        </div>
        <div class="form-group row">
            <div class="offset-sm-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group row">
            <div class="offset-sm-2 col-sm-10">
                <button type="submit" class="btn btn-danger">Update</button>
            </div>
        </div>
    </form>
</div>
</div>
</div>
</div>
</div>
<script>
    function bacagambar(input) {
          if (input.files && input.files[0]) {
              var reader = new FileReader();
              reader.onload = function(e) {
                  $('#gambar_load').attr('src', e.target.result)
              }
              reader.readAsDataURL(input.files[0]);
          }
      }
      $("#preview_gambar").change(function() {
          bacagambar(this);
      });
</script>

@endsection