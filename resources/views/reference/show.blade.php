@extends('layoutt.master-template')

@section('title')
Preview dokument
@endsection

@section('content')



<div class="row mt-2">
    <div class="col-md-12">

        <div class="list-group">

            <div class=" card list-group-item">
                <a href="{{route('reference.index')}}" class="btn btn-danger btn-xl">Kembali</a>
                <div class="container" style="margin-bottom: 60px !important;">

                    <div class="col-md-8 offset-md-1">
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="container" >
                        <div class="col-md-12">
                        {{-- @foreach ($reference as $item) --}}
                            <label for="file" class="col-sm-2 control-label"></label>
                            <div class="embed-responsive embed-responsive-4by3" >
                                <iframe class="embed-responsive-item" src="{{ asset('uploads/'.$reference->file) }}">
                                </iframe>
                            </div>
                        </div>
                    </div>
                    <div class="col px-4">
                        <br>
                        <div>
                            {{-- @foreach ($reference as $id)
                            <h4 class="media-heading">{{ $id->judul_dokumen }}</h4>
                            <p>{{$id->deskripsi_dokumen}}</p>
                            @endforeach --}}
                            <a href="javascript:void(0)">
                                <i class="fas fa-thumbs-up tekan"></i> {{$reference->jumlah_like}}
                            </a>
                            <a href="javascript:void(0)"> |
                                <i class="far fa-eye"></i> {{$reference->jumlah_view}}
                            </a>
                            <a class="tahun" style="color : #aaa !important;" href=""> | Create : {{$reference->tahun}}</a>
                            <div class="float-right">
                                    <h5 id="id_kategori" name="id_kategori">Kategori : {{$reference->kategori->kategori}} </h5>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>


@endsection