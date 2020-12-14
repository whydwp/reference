@extends('layoutt.master-template')

@section('title')
Kelola Profil
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
    {{-- <form class="login100-form validate-form" data-target="user" method="put" action="{{ route('profil.update',[$profil->id]) }}"
        enctype="multipart/form-data">   
    @csrf
    {{ method_field('PUT') }} --}}
        <div class="form-group row">
            <label for="full_name" class="col-sm-2 col-form-label">Name</label>
            <div class="col-sm-10">
                <input type="text" id="full_name" name="full_name"class="form-control" value="{{Auth :: user()->full_name}}"id="inputName" >
            </div>
        </div>
        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" name="email" id="email"value="{{Auth :: user()->email}}">
            </div>
        </div>
        <div class="form-group row">
            <label for="username" class="col-sm-2 col-form-label">Username</label>
            <div class="col-sm-10">
                <input type="username" name="username" id="username"class="form-control" value="{{Auth :: user()->username}}" placeholder="username">
            </div>
        </div>
        <div class="form-group row">
            <label for="password" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" name="password" id="password"class="form-control"  placeholder="Name">
            </div>
        </div>
      
        <div class="form-group row">
            <label for="avatar_file" class="col-sm-2 col-form-label">Gambar</label>
            <div class="col-sm-10">
                <input type="file" name="avartar_file" class="form-control" id="preview_gambar" required>
            </div>
        </div>
      
        <div class="form-group row">
            <div class="offset-sm-2 col-sm-10">
                <button type="submit" class="btn btn-danger">Update</button>
            </div>
        </div>
    {{-- </form> --}}
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