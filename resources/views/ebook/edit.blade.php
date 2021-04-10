@extends('layoutt.master-template')

@section('title')
Edit Buku
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

        <form class="form-horizontal" method="post" action="{{ route('ebook.update',[$ebook->id_ebook]) }}"
            enctype="multipart/form-data">
            @csrf
            {{ method_field('PUT') }}
            <div class="col px-8"
                style="margin-left: 15px !important; margin-right:20px; font-family:'Roboto'!important;">
                <h3 style=" line-height: 30px; font-family: 'Roboto' !important; margin-bottom: 13px !important;"
                    class="media-heading">
                    {{ ucwords($ebook->judul_ebook)  }}</h3>
            </div>
            <label for="file" class="col-sm-2 control-label"></label>
            <div class="embed-responsive embed-responsive-4by3">
                <iframe class="embed-responsive-item" type="application / html5"
                    src="{{ asset('uploads/'.$ebook->file) }}#toolbar=0&navpanes=0&scrollbar=0" width="100%"
                    height="10000">{{ asset('uploads/'.$ebook->file) }}</iframe>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="id_status">Status</label>
                        <select id="id_status" name="id_status"
                            class="form-control @error('id_status') is-invalid @enderror">
                            <option selected disabled style="font-weight: bold;">--Status-- </option>
                            @foreach($status as $row )
                            <option value="{{ $row->id_status }}" @if($ebook->id_status == $row->id_status) Selected
                                @endif>{{ $row->status }}
                            </option>
                            @endforeach
                        </select>
                        @error('id_status')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                    <!-- text input -->
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="publisher">Penulis</label>
                        <input name="publisher" value="{{$ebook->kategori->kategori}}" id="publisher"
                            class="form-control @error('publisher') is-invalid @enderror"
                            placeholder="siapa penulisanya" value="" disabled>
                    </div>
                    <!-- text input -->
                </div>
                <div class="col-sm-4">
                    <!-- text input -->
                    <div class="form-group">
                        <label for="publisher">Penulis</label>
                        <input name="publisher" value="{{$ebook->publisher}}" id="publisher"
                            class="form-control @error('publisher') is-invalid @enderror"
                            placeholder="siapa penulisanya" value="" disabled>
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
                            placeholder="berapa tahunnya" value="{{$ebook->tahun}}" disabled>
                        @error('tahun')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="deskripsi_ebook">Deskripsi</label>
                <textarea id="deskripsi_dokumen" name="deskripsi_ebook"
                    class="form-control @error('deskripsi_ebook') is-invalid @enderror" cols="30" rows="10"
                    disabled>{{$ebook->deskripsi_ebook}}</textarea>
                @error('deskripsi_ebook')
                <div class="invalid-feedback">{{$message}}</div>
                @enderror
            </div>
            <div class="form-group">
                <label for="keterangan">Keterangan</label>
                <textarea id="keterangan" name="keterangan" class="form-control " cols="30"
                    rows="10">{{$ebook->keterangan}}</textarea>{{old('keterangan')}}
            </div>
            <br>
            <div class="row">
                <div class="form-group">
                    <a href="{{route('ebook.index')}}" class="btn btn-warning btn-xl"><span
                            class="fas fa-backward"></span> Kembali</a>
                    <button type="submit" name="tombol" class="btn btn-info pull-right"><span class="fas fa-pen-square"></span> Update</button>
                </div>
        </form>

    </div>

</div>


@endsection