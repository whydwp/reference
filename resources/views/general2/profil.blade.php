@extends('layoutt.master-template')

@section('content-title')
Profil
@endsection

@section('content')

<div class="col-md-12">
    <div class="col-md-12 panel">

        <div class="col-md-12 panel-body" style="padding-bottom:30px;">
            <div class="col-md-12">
                <div class="row" style="margin-left:-3px !important;">
                    <div class="col-sm-6">
                        <div class="form-group" style="margin-top:40px !important;">
                            <label>Foto Profil</label>
                            <input type="file" name="gambar" class="form-control" id="preview_gambar" required>
                            <span>isi png,jpg,jpng</span>

                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <img class="" src="{{asset('image/user.png')}}" id="gambar_load" width="150px" alt="">
                        </div>
                    </div>
                </div>
                <form class="cmxform" id="signupForm" method="get" action="">
                    <div class="col-md-6">
                        <div class="form-group" style="margin-top:30px !important;">
                            <label>Nama Lengkap</label>
                            <input type="text" class="form-control" id="addressOne" aria-describedby="emailHelp"
                                name="addressOne" value="Robby " />
                        </div>

                        <div class="form-group" style="margin-top:30px !important;">
                            <label>NIP</label>
                            <input type="text" data-mask="numeric" class="form-control" id="addressOne"
                                aria-describedby="emailHelp" name="addressOne" value="11190234 " />
                        </div>

                        <div class="form-group" style="margin-top:30px !important;">
                            <label>Email</label>
                            <input type="text" class="form-control" id="addressOne" aria-describedby="emailHelp"
                                name="addressOne" value="Robby " />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group" style="margin-top:30px !important;">
                            <label>Username</label>
                            <input type="text" class="form-control" id="addressOne" aria-describedby="emailHelp"
                                name="addressOne" value="Robby " />
                        </div>
                        <div class="form-group" style="margin-top:30px !important;">
                            <label>Password</label>
                            <input type="password" class="form-control" id="addressOne" aria-describedby="emailHelp"
                                name="addressOne" value="Robby " />
                        </div>

                        <div class="form-group" style="margin-top:30px !important;">
                            <label>Konfirmasi Password</label>
                            <input type="password" class="form-control" id="addressOne" aria-describedby="emailHelp"
                                name="addressOne" value="Robby " />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group form-animate-checkbox" style="margin-top:40px !important;">
                            <input type="checkbox" class="checkbox" id="validate_agree" name="validate_agree">
                            <label>Please agree to our policy</label>
                        </div>
                        <button class="submit btn btn-danger" type="submit" value="Submit">Simpan</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
@include('layoutt.more')

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