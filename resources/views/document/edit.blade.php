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
        
        <form class="form-horizontal" method="post" action="{{ route('document.update',[$document->id]) }}" enctype="multipart/form-data">
            @csrf
            {{ method_field('PUT') }}
            <div class="form-group">
                <label for="judul_dokumen">judul</label>
                <input name="judul_dokumen" id="judul_dokumen" class="form-control @error('judul_dokumen') is-invalid @enderror" placeholder="apa judulnya"
                    value="{{$document->judul_dokumen}}">{{old('judul_dokumen')}}
                    @error('judul_dokumen')
                    <div class="invalid-feedback">{{$message}}</div>
                    @enderror
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="id_kategori">Kategori</label>
                        <select id="id_kategori" name="id_kategori" class="form-control @error('id_kategori') is-invalid @enderror">      
                            <option selected disabled style="font-weight: bold;">Teknis : </option>
                            @foreach($kategori as $row )
                            @if($row->kategori_type_id == 1)
                            <option value="{{ $row->id_kategori }}" @if($document->id_kategori == $row->id_kategori) Selected
                                @endif>{{ $row->kategori }}
                            </option>
                            @endif
                            @endforeach
                            <option selected disabled style="font-weight: bold;">Non Teknis : </option>
                            @foreach($kategori as $row )
                            @if($row->kategori_type_id == 2)
                            <option value="{{ $row->id_kategori }}" @if($document->id_kategori == $row->id_kategori) Selected
                                @endif>{{ $row->kategori }}
                            </option>
                            @endif
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
                    <div class="form-group">
                        <label for="publisher">Penulis</label>
                        <input name="publisher" value="{{$document->publisher}}" id="publisher" class="form-control @error('publisher') is-invalid @enderror"
                            placeholder="siapa penulisanya" value="">
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
                            value="{{$document->tahun}}">
                            @error('tahun')
                            <div class="invalid-feedback">{{$message}}</div>
                            @enderror
                    </div>

                </div>
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="jumlah_halaman">jumlah halaman</label>
                        <input name="jumlah_halaman" id="jumlah_halaman" class="form-control @error('jumlah_halaman') is-invalid @enderror"
                            placeholder="berapa jumlahnya" value="{{$document->jumlah_halaman}}">
                            @error('jumlah_halaman')
                            <div class="invalid-feedback">{{$message}}</div>
                            @enderror
                    </div>

                </div>
            </div>
            <div class="form-group">
                <label for="deskripsi_dokumen">Deskripsi</label>
                <textarea id="deskripsi_dokumen" name="deskripsi_dokumen"  class="form-control @error('deskripsi_dokumen') is-invalid @enderror" cols="30"
                    rows="10">{{$document->deskripsi_dokumen}}</textarea>
                    @error('deskripsi_dokumen')
                    <div class="invalid-feedback">{{$message}}</div>
                    @enderror
            </div>
            <hr>
                <label for="file" class="col-sm-2 control-label">File Dokumen</label>
                <div class="col-sm-12 embed-responsive embed-responsive-4by3">
                    <iframe class="embed-responsive-item" src="{{ asset('uploads/'.$document->file) }}"  width="100%">{{ asset('uploads/'.$document->file) }}</iframe>
                       
                </div>
            
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        {{-- <label for="file" class="col-sm-4 control-label">File document</label> --}}
                        <input type="file" name="file" class="form-control @error('file') is-invalid @enderror" id="file">
                        @error('file')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>

            </div>
            <hr>
                <label for="cover" class="col-sm-12 control-label">Cover Dokumen</label>
                <div class="col-sm-12 embed-responsive embed-responsive-4by3">

                    @if($document->cover)
                    <img class="embed-responsive-item" src="{{ asset('uploads/'.$document->cover) }}" class="img-thumbnail" width="80%" >
                    @else
                    <img class="embed-responsive-item" src="{{ asset('image/1.png') }}" class="img-thumbnail" width="80%">
                    @endif
                </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        {{-- <label for="cover" class="col-sm-4 control-label">cover document</label> --}}
                        <input type="file" id="cover"name="cover" class="form-control @error('cover') is-invalid @enderror" id="cover">
                        @error('cover')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>
            </div>

            <div class="form-group">
               <a href="{{route('document.index')}}" class="btn btn-warning btn-xl"><span class="fas fa-backward"></span> Kembali</a>
                <button type="submit" name="tombol" class="btn btn-info pull-right"><span class="fas fa-pen-square"></span> Update</button>
            </div>
        </form>

    </div>

</div>


@endsection