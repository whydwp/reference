@extends('layoutt.master-template')

@section('title')
Dashboard
@endsection

@section('content')


<div class="content">
    <div class="container">
        <div class="row">
        <!-- <h6 class="media-heading">aaaa</h6> -->
        @foreach($datas as $datas)
            <div class="col-lg-4">
                <div class="card">
                    <a href="{{ route('kategori', ['id' => $datas->id_kategori]) }}">
                        <div class="card-body">
                            <img widht="200px" class="img-fluid"
                                src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                            <h3>{{$datas->kategori}}</h3>

                            <div class="panel-body">
                                <div class="media">
                                    <div class="media-body">
                                        <h6 class="media-heading">Jumlah Dokumen : {{$datas->jumlah_dokumen}}</h6>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-body">
                                        <h6 class="media-heading">Likes : {{$datas->jumlah_like}}</h6>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-body">
                                        <h6 class="media-heading">Dislike : {{$datas->jumlah_dislike}}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        @endforeach
        </div>
    </div>
</div>




@endsection