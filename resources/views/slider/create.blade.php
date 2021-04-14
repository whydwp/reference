@extends('layoutt.master-template')

@section('title')
Input Documen
@endsection

@section('content')

<div class="col-md-12">
    <!-- general form elements disabled -->
    <!-- /.card-header -->
    <div class="card-body">
      
        <form method="post" action="{{ route('gambar.store')}}" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-sd-12">
                    <div class="text-center">
                       <img class="img-thumbnail" id="gambar_load" width="100%" height="100%" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group ">
                        <label for="gambar" class="col-sm-4 control-label">Upload Gambar</label>
                        <p style="margin-top: -10px; margin-left:10px !important;">file png,jpg,jpeg max 5 Mb</p>
                        <input id="preview_gambar" value="{{old('gambar')}}" type="file" name="gambar" class="form-control @error('cover') is-invalid @enderror" >
                        @error('gambar')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>
            </div>

            <div class="form-group">
                <a href="{{route('gambar.index')}}" class="btn btn-warning btn-xl"><span class="fas fa-backward"></span> Kembali</a>
                <button type="submit" class="btn btn-success btn-xl"><i class="far fa-save"></i> Simpan</button>

            </div>
        </form>

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