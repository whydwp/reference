@extends('layoutt.master-template')

@section('title')
Edit Documen
@endsection

@section('content')

<div class="col-md-12">
    <!-- general form elements disabled -->
    <!-- /.card-header -->
    <div class="card-body">
        {{-- @if($errors->any())
        <ul class="alert alert-danger">
            @foreach($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
        @endif --}}
        
        <form class="form-horizontal" method="post" action="{{ route('adminEbook.update',[$ebook->id_ebook]) }}" enctype="multipart/form-data">
            @csrf
            {{ method_field('PUT') }}
           <div class="form-group">
                <label for="judul_ebook">judul</label>
                <input name="judul_ebook" id="judul_dokumen" class="form-control @error('judul_ebook') is-invalid @enderror"
                    placeholder="apa judulnya" value="{{$ebook->judul_ebook}}">{{old('judul_ebook')}}
                @error('judul_ebook')
                <div class="invalid-feedback">{{$message}}</div>
                @enderror
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="id_kategori">Kategori</label>
                        <select id="id_kategori" name="id_kategori" class="form-control @error('id_kategori') is-invalid @enderror">
                            @foreach($kategori as $row )
                            <option value="{{ $row->id_kategori }}" @if($ebook->id_kategori == $row->id_kategori) Selected
                                @endif>{{ $row->kategori }}
                            </option>
                            @endforeach
                        </select>
                        @error('id_kategori')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                    <!-- text input -->
                </div>
                <div class="col-sm-4">
                    <!-- text input -->
                    <div class="form-group">
                        <label for="publisher">Penulis</label>
                        <input name="publisher" value="{{$ebook->publisher}}" id="publisher"
                            class="form-control @error('publisher') is-invalid @enderror" placeholder="siapa penulisanya" value="">
                        @error('publisher')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-sm-4">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="tahun">Tahun Dibuat</label>
                        <input name="tahun" id="tahun" class="form-control @error('tahun') is-invalid @enderror"
                            placeholder="berapa tahunnya" value="{{$ebook->tahun}}">
                        @error('tahun')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                
                </div>
            </div>
            <div class="form-group">
                <label for="deskripsi_ebook">Deskripsi</label>
                <textarea id="deskripsi_dokumen" name="deskripsi_ebook"
                    class="form-control @error('deskripsi_ebook') is-invalid @enderror" cols="30"
                    rows="10">{{$ebook->deskripsi_ebook}}</textarea>
                @error('deskripsi_ebook')
                <div class="invalid-feedback">{{$message}}</div>
                @enderror
            </div>
            
            <label for="file" class="col-sm-2 control-label"></label>
            <div class="col-sm-10">
                <iframe src="{{ asset('uploads/'.$ebook->file) }}" width="500"
                    height="250">{{ asset('uploads/'.$ebook->file) }}</iframe>
            
            </div>
            
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="file" class="col-sm-4 control-label">File document</label>
                        <input type="file" name="file" class="form-control @error('file') is-invalid @enderror" id="file">
                        @error('file')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>
            
            </div>
            <label for="cover" class="col-sm-2 control-label"></label>
            <div class="col-sm-10">
            
                @if($ebook->cover)
                <img src="{{ asset('uploads/'.$ebook->cover) }}" class="img-thumbnail" width="200px" width="450" height="250">
                @else
                <img src="{{ asset('image/1.png') }}" class="img-thumbnail" width="200px">
                @endif
            
            </div>
            
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="cover" class="col-sm-4 control-label">cover document</label>
                        <input type="file" id="cover" name="cover" class="form-control @error('cover') is-invalid @enderror"
                            id="cover">
                        @error('cover')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>
            
            </div>
            <div class="form-group">
               <a href="{{route('adminEbook.index')}}" class="btn btn-warning btn-xl"><span class="fas fa-backward"></span> Kembali</a>
                <button type="submit" name="tombol" class="btn btn-info pull-right">Update</button>
            </div>
        </form>

    </div>

</div>


@endsection