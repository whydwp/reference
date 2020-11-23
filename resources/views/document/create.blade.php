@extends('layoutt.master-template')

@section('content-title')
Document
@endsection

@section('content')

<div class="col-md-12">
    <!-- general form elements disabled -->
    <!-- /.card-header -->
    <div class="card-body">

        <div class="form-group">
            <label>judul</label>
            <input name="judul" class="form-control" placeholder="apa judulnya" value="">
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label>Kategori</label>
                    <select name="id_kategori" class="form-control">
                        <option value="">--Pilih Kategori--</option>
                        <option value="">Pembangkit</option>
                        <option value="">Pembangkit</option>



                    </select>
                </div>
                <!-- text input -->
            </div>
            <div class="col-sm-6">
                <!-- text input -->
                <div class="form-group">
                    <label>Penulis</label>
                    <input name="penulis" class="form-control" placeholder="siapa penulisanya" value="">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <!-- text input -->
                <div class="form-group">
                    <label>Tahun Dibuat</label>
                    <input name="tahun" class="form-control" placeholder="berapa tahunnya" value="">
                </div>
            </div>
            <div class="col-sm-6">
                <!-- text input -->
                <div class="form-group">
                    <label>publishir</label>
                    <input name="publishir" class="form-control" placeholder="publishir" value="">
                </div>
            </div>
        </div>
        <div class="form-group">
            <label>Deskripsi</label>
            <textarea name="deskripsi" class="form-control" cols="30" rows="10"></textarea>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label>File document</label>
                    <input type="file" name="file" class="form-control" id="preview_gambar" required>
                </div>
            </div>

        </div>

        <div class="form-group">
            <a href="{{route('document.index')}}" class="btn btn-danger btn-xl">Kembali</a>
            <button type="submit" class="btn btn-success btn-xl">Simpan</button>

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