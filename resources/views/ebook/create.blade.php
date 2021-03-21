@extends('layoutt.master-template')

@section('title')
Input Dokumen
@endsection

@section('content')

<div class="col-md-12">
    <!-- general form elements disabled -->
    <!-- /.card-header -->
    <div class="card-body">
      
        <form method="post" action="{{ route('ebook.store')}}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="judul_ebook">judul</label>
                <input name="judul_ebook" id="judul_ebook" class="form-control @error('judul_ebook') is-invalid @enderror" placeholder="apa judulnya"
                    value="{{old('judul_ebook')}}">
                    @error('judul_ebook')
                    <div class="invalid-feedback">{{$message}}</div>
                    @enderror
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="id_kategori">Kategori</label>
                        <select id="id_kategori" name="id_kategori" class="form-control @error('id_kategori') is-invalid @enderror">
                            <option selected disabled>Kategori</option>
                            @foreach($kategori as $row )
                            <option value="{{ $row->id_kategori }}">{{ $row->kategori }}</option>
                            @endforeach
                        </select>
                        @error('id_kategori')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                    <!-- text input -->
                </div>
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="publisher">Penulis</label>
                        <input name="publisher" value="{{old('publisher')}}" id="publisher" class="form-control @error('publisher') is-invalid @enderror""
                            placeholder="siapa penulisanya" >
                           @error('publisher')
                            <div class="invalid-feedback">{{$message}}</div>
                            @enderror
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="tahun">Tahun Dibuat</label>
                        <input name="tahun" id="tahun" class="form-control @error('tahun') is-invalid @enderror" placeholder="berapa tahunnya"
                            value="{{old('tahun')}}">
                            @error('tahun')
                            <div class="invalid-feedback">{{$message}}</div>
                            @enderror
                    </div>

                </div>
               
            </div>
            <div class="form-group">
                <label for="deskripsi_ebook">Deskripsi</label>
                <textarea name="deskripsi_ebook" value="{{old('deskripsi_ebook')}}" class="form-control @error('deskripsi_ebook') is-invalid @enderror" cols="30"
                    rows="10"></textarea>
                    @error('deskripsi_ebook')
                    <div class="invalid-feedback">{{$message}}</div>
                    @enderror
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group @error('file') is-invalid @enderror">
                        <label for="file" class="col-sm-4 control-label">File document </label>
                        <p style="margin-top: -10px; margin-left:10px !important;">file zip max 50Mb</p>
                        <input value="{{old('file')}}" type="file" name="file" class="form-control @error('file') is-invalid @enderror">
                        @error('file')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group ">
                        <label for="cover" class="col-sm-4 control-label">Upload Gambar</label>
                        <p style="margin-top: -10px; margin-left:10px !important;">file png,jpg,jpeg max 5 Mb</p>
                        <input value="{{old('cover')}}" type="file" name="cover" class="form-control @error('cover') is-invalid @enderror" >
                        @error('cover')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>
            </div>

            <div class="form-group">
                <a href="{{route('ebook.index')}}" class="btn btn-warning btn-xl"><span class="fas fa-backward"></span> Kembali</a>
                <button type="submit" class="btn btn-success btn-xl"><i class="far fa-save"></i> Simpan</button>

            </div>
        </form>

    </div>

</div>


@endsection