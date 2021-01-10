@extends('layoutt.master-template')

@section('title')
Edit
@endsection

@section('content')

<div class="col-md-12">
    <!-- general form elements disabled -->
    <!-- /.card-header -->
    <div class="card-body">
        @if($errors->any())
        <ul class="alert alert-danger">
            @foreach($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
        @endif
        <form class="form-horizontal" method="post" action="{{ route('document.update',[$document->id]) }}"
            enctype="multipart/form-data">
            @csrf
            {{ method_field('PUT') }}
            <div class="form-group">
                <label for="judul_dokumen">judul</label>
                <input name="judul_dokumen" id="judul_dokumen" class="form-control" placeholder="apa judulnya"
                    value="{{$document->judul_dokumen}}">
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="id_kategori">Kategori</label>
                        <select id="id_kategori" name="id_kategori" class="form-control">      
                            @foreach($kategori as $row )
                            <option value="{{ $row->id_kategori }}" 
                                @if($document->id_kategori == $row->id_kategori) Selected 
                                @endif>{{ $row->kategori }}
                            </option>
                            @endforeach
                        </select>
                    </div>
                    <!-- text input -->
                </div>
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group">
                        <label for="publisher">Penulis</label>
                        <input name="publisher" value="{{$document->publisher}}" id="publisher" class="form-control"
                            placeholder="siapa penulisanya" value="">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="tahun">Tahun Dibuat</label>
                        <input name="tahun" id="tahun" class="form-control" placeholder="berapa tahunnya"
                            value="{{$document->tahun}}">
                    </div>

                </div>
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="jumlah_halaman">jumlah halaman</label>
                        <input name="jumlah_halaman" id="jumlah_halaman" class="form-control"
                            placeholder="berapa jumlahnya" value="{{$document->jumlah_halaman}}">
                    </div>

                </div>
            </div>
            <div class="form-group">
                <label for="deskripsi_dokumen">Deskripsi</label>
                <textarea id="deskripsi_dokumen" name="deskripsi_dokumen"  class="form-control" cols="30"
                    rows="10">{{$document->deskripsi_dokumen}}</textarea>
            </div>
            
                <label for="file" class="col-sm-2 control-label"></label>
                <div class="col-sm-10">
                    <iframe src="{{ asset('uploads/'.$document->file) }}" width="500" height="250">{{ asset('uploads/'.$document->file) }}</iframe>

                </div>
            
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="file" class="col-sm-2 control-label">File document</label>
                        <input type="file" name="file" class="form-control" id="file">
                    </div>
                </div>

            </div>
                <label for="cover" class="col-sm-2 control-label"></label>
                <div class="col-sm-10">
                    <iframe src="{{ asset('uploads/'.$document->cover) }}" width="500" height="250">{{ asset('uploads/'.$document->cover) }}</iframe>

                </div>
            
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="cover" class="col-sm-2 control-label">cover document</label>
                        <input type="file" name="cover" class="form-control" id="cover">
                    </div>
                </div>

            </div>

            <div class="form-group">
                <a href="{{route('document.index')}}" class="btn btn-danger btn-xl">Kembali</a>
                <button type="submit" name="tombol" class="btn btn-info pull-right">Update</button>
            </div>
        </form>

    </div>

</div>
@include('layoutt.more')
<script type="text/javascript">
    $('.dateAnimate').bootstrapMaterialDatePicker({ weekStart : 0, time: false,animation:true});
</script>

@endsection