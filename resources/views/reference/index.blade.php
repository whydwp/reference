@extends('layoutt.master-template')

@section('title')
Reference
@endsection

@section('content')
<!-- CSS -->
<!-- <link rel="stylesheet" type="text/css" href="{{asset('admin/plugins/jquery-ui/jquery-ui.min.css')}}"> -->

<!-- Script -->
<!-- <script src="{{asset('jquery-3.3.1.min.js')}}" type="text/javascript"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="{{asset('admin/plugins/jquery-ui/jquery-ui.min.js')}}" type="text/javascript"></script> -->

@if ($reference->count() == 0)
<script>
    $(function() {
      $('.modalpopup').modal('show');
    });
</script>
<!-- <script type="text/javascript">alert("Referensi yang anda cari belum tersedia")</script> -->
@endif

<div class="row mt-2">
    <div class="col-md-12">

        <div class="list-group">
            <div class=" card list-group-item">
                @if(Request::get('keyword'))
                <a class="btn btn-info" href="{{ route('reference.index') }}">Back</a>
                @endif
                @if(Request::get('publisher'))
                <a class="btn btn-info" href="{{ route('reference.index') }}">Back</a>
                @endif
                @if(Request::get('id_kategori'))
                <a class="btn btn-info" href="{{ route('reference.index') }}">Back</a>
                @elseif($reference->count() == 0)
                <script>
                    $(function() {
                    $('.modalpopup').modal('show');
                    });
                </script>
                @endif

                <div id="accordion">
                    <br>
                    <div class="card">
                        <div class="card-header" style="background-color : #00cec9;">
                            <h4 class="card-title w-100">
                                <a style="color:white; font-size:25px; font-wight:'bold';" class="d-block w-100"
                                    data-toggle="collapse" href="#collapseOne" aria-expanded="false">
                                    Pencarian
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="collapse" data-parent="#accordion" style="">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <form method="get" action="{{route('reference.index')}}">
                                            <div class="form-group">
                                                <label>Kategori Teknis</label>
                                                <div class="input-group input-group-lg">
                                                    <select id="id_kategori" name="id_kategori"
                                                        class="custom-select select2bs4"
                                                        style="width: 100%; overflow-y:auto;">
                                                        <option selected disabled>Kategori</option>
                                                        @foreach($kategori as $row)
                                                        @if($row->kategori_type_id == 1)
                                                        <option value="{{ $row->id_kategori }}">{{ $row->kategori }}
                                                        </option>
                                                        @endif
                                                        @endforeach
                                                    </select>

                                                    <button type="submit"
                                                        style="width: 100% ; margin-top: 5px !important;"
                                                        class="btn btn-primary"><span
                                                            class="glyphicon glyphicon-search"></span>cari</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-md-3">
                                        <form method="get" action="{{route('reference.index')}}">
                                            <div class="form-group">
                                                <label>Kategori Non teknis</label>
                                                <div class="input-group input-group-lg">
                                                    <select id="id_kategori" name="id_kategori"
                                                        class="custom-select select2bs4"
                                                        style="width: 100%; overflow-y:auto;">
                                                        <option selected disabled>Kategori</option>
                                                        @foreach($kategori as $row)
                                                        @if($row->kategori_type_id == 2)
                                                        <option value="{{ $row->id_kategori }}">{{ $row->kategori }}
                                                        </option>
                                                        @endif
                                                        @endforeach
                                                    </select>
                                                    <br>
                                                    {{-- <div  style="margin-top: 5px !important;"> --}}

                                                    <button type="submit"
                                                        style="width: 100% ; margin-top: 5px !important;"
                                                        class="btn btn-primary"><span
                                                            class="glyphicon glyphicon-search"></span>cari</button>
                                                    {{-- </div> --}}
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-md-3">
                                        <form method="get" action="{{route('reference.index')}}">
                                            <div class="form-group">
                                                <label for="keyword" class="col-sm-12 control-label">Judul
                                                    Dokumen</label>
                                                <div class="input-group input-group-lg">
                                                    <input style="hight: 90px;" type="search" id="tahunsearch"
                                                        class="form-control form-control-lg" name="keyword"
                                                        value="{{Request::get('keyword')}}" placeholder="Judul Dokumen">
                                                    <div class="input-group-append">
                                                        <button type="submit" class="btn btn-lg btn-default">
                                                            <i class="fa fa-search"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-md-3">
                                        <form method="get" action="{{route('reference.index')}}">
                                            <div class="form-group">

                                                <label for="publisher" class="col-sm-12 control-label">Publisher</label>
                                                <div class="input-group input-group-lg">
                                                    <input type="search" class="form-control mr-sm-2" name="publisher"
                                                        value="{{Request::get('publisher')}}" placeholder="publisher">
                                                    <div class="input-group-append">
                                                        <button type="submit" class="btn btn-lg btn-default">
                                                            <i class="fa fa-search"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        
                                    </div>
                                    <div class="col-md-3" style="margin-right: -5px !important;">
                                        <form method="get" action="{{route('reference.index')}}">
                                            <div class="form-gruop">
                                                <label for="">Like</label>
                                                <br>
                                                <div class="input-group input-group-lg">
                                                    <select name="sortlike" id="sortlike"
                                                        class="custom-select sortbaselike" style="width: auto;"
                                                        data-sortOrder>
                                                        <option href="javascript:void(0)" value="mostlike" data-type="1"
                                                            data-key="1"> Like Terbanyak </option>
                                                        <option href="javascript:void(0)" value="lesslike" data-type="1"
                                                            data-key="0"> Like sedikit </option>
                                                    </select>
                                                    <button name="reference2" type="submit"
                                                        class="btn btn-lg btn-default">
                                                        <i style="margin-top:-100px !important;"
                                                            class="fa fa-search"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="col-md-3" style="margin-right: -5px !important;">
                                        <form method="get" action="{{route('reference.index')}}">
                                            <div class="form-gruop">
                                                <label for="">Viewer</label>
                                                <br>
                                                <div class="input-group input-group-lg">
                                                    <select name="sortview" id="sortview" class="custom-select"
                                                        style="width: auto;" data-sortOrder>
                                                        <option href="javascript:void(0)" value="mostview"> View
                                                            Terbanyak </option>
                                                        <option href="javascript:void(0)" value="lessview"> View Sedikit
                                                        </option>
                                                    </select>
                                                    <button name="reference2" type="submit"
                                                        class="btn btn-lg btn-default">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                {{-- <select class="custom-select" style="width: auto;" data-sortOrder>
                    <option value="index"> Sort by Position </option>
                    <option value="sortData"> Sort by Custom Data </option>
                </select> --}}
                <br>

                @if(Request::get('keyword'))
                <div class="alert alert-success alert-block">
                    Hasil Pencarian Dokumen dengan Keyword : <b>{{ Request::get('keyword') }}</b><b>Terdapat
                        {{$reference->count('id')}} Dokumen </b>
                </div>
                @endif
                @if(Request::get('publisher'))
                <div class="alert alert-success alert-block">
                    Hasil Pencarian Dokumen dengan Keyword : <b>{{ Request::get('publisher') }}</b><b>Terdapat
                        {{$reference->count('id')}} Dokumen </b>
                </div>
                @endif
                @if(Request::get('id_kategori'))
                @if ($reference->count() == 0)
                <div class="alert alert-secondary alert-block">
                    Hasil Pencarian Dokumen dengan Kategori : <b>{{ $nama_kategori }} </b><b> tidak ada Dokumen</b>
                </div>
                @elseif($reference->count() >= 0)
                <div class="alert alert-success alert-block">
                    Hasil Pencarian Dokumen dengan Kategori : <b>{{ $nama_kategori }} Terdapat
                        {{$reference->count('id')}} Dokumen</b>
                </div>

                @endif

                @endif

                {{-- <p>Terdapat {{$reference->count('id')}} Dokumen</p> --}}

                <ul class=" rounded-pill nav nav-pills ml-auto p-2 " style="justify-content: center;">
                    <li class="nav-item "><a class="nav-link active info" style="border-radius: 10px;" href="#tab_1"
                            data-toggle="tab">Semua</a></li>
                    <li class="nav-item"><a class="nav-link" style="border-radius: 10px;" href="#tab_2"
                            data-toggle="tab">Kategori Teknis</a></li>
                    <li class="nav-item"><a class="nav-link" style="border-radius: 10px;" href="#tab_3"
                            data-toggle="tab">Kategori Non Teknis</a></li>
                </ul>
                <hr>
                <div class="tab-content">
                    <div class="tab-pane active" id="tab_1">
                        @foreach ($reference as $id)
                        <div class="row tab-pane active" id="tab_1">
                            <div class="col px-8" style="margin-left: 15px !important; margin-right:20px;">
                                <h5 style=" line-height: 30px; font-family: Roboto; margin-bottom: 13px !important;"
                                    class="media-heading">
                                    {{ ucwords($id->judul_dokumen)  }}</h5>
                            </div>
                        </div>
                        <div class="row startdoc">
                            <div class="col-auto" style="margin-left: 17px;">
                                <a>
                                    @if($id->cover)
                                    <img src="{{ asset('uploads/'.$id->cover) }}" class="img-thumbnail" width="200px">
                                    @else
                                    <img src="{{ asset('image/Picture1.png') }}" class="img-thumbnail" width="200px">
                                    @endif
                                </a>
                            </div>

                            <div class="col px-4 float-right">

                                <p style=" margin-top: 3px !important; margin-bottom: 18px !important" align="justify">
                                    {{-- {{ str_limit($id->deskripsi_dokumen, 200, '') }}
                                    @if (strlen($id->deskripsi_dokumen) > 200) --}}
                                    
                                    <span data-target="#modal-{{$id->id}}" data-toggle="modal"
                                        class="more">{{$id->deskripsi_dokumen}}</span>

                                        {{-- <a href="{{$id->deskripsi_dokumen}}">{{$id->judul_dokumen}}</a> --}}
                                    {{-- <span id="more">{{ substr($id->deskripsi_dokumen, 200) }}</span>
                                    <a href="javascript:void(0)" onclick="myFunction()" id="myBtn"> Baca
                                        Selengkapnya</a>
                                    @endif --}}
                                </p>
                                {{-- {{  substr(strip_tags($id->deskripsi_dokumen,'<pre>,<code>'),0,200) }}{{ strlen(strip_tags($id->deskripsi_dokumen))>200?"...":"" }}
                                <a href="javascript:void(0)" id="btn-more">Read More</a>
                                <h6 style="margin-bottom: 15px; margin-top: 15px !important;" id="id_kategori"
                                    name="id_kategori">Kategori :
                                    {{$id->kategori->kategori}} </h6>
                                --}}
                                <h5 style=" margin-bottom: 15px !important" id="id_kategori" name="id_kategori">Kategori
                                    :
                                    {{$id->kategori->kategori}} </h5>
                                <h6 style=" margin-bottom: 10px !important">Publisher : {{$id->publisher}}</h6>
                                <button href="javascript:void(0)" class="btn btn-outline-info tekan {{$id->id}}"
                                    data-id="{{$id->id}}" data-jumlah="{{$id->jumlah_like}}"
                                    data-token="{{ csrf_token() }}"
                                    <?php if(\App\Models\Likesdocument::where([['user_id', '=', Auth::user()->id], ['document_id', '=', $id->id]])->exists()) { ?>
                                    data-check="1" <?php } else { ?> data-check="0" <?php } ?>>
                                    <i
                                        class="fas fa-thumbs-up likebut {{$id->id}} {{ \App\Models\Likesdocument::where([['user_id', '=', Auth::user()->id], ['document_id', '=', $id->id]])->exists() ? 'like-post' : '' }}">
                                        {{$id->jumlah_like}}</i>
                                </button>
                                <a href="javascript:void(0)"> |
                                    <i class="far fa-eye"></i> {{$id->jumlah_view}}
                                </a>

                                <span class="tahun" style="color : #aaa !important;" href=""> | Create : {{$id->tahun}}</span>

                                <div class="float-right">
                                    <a href="{{route('reference.show',$id->id)}}">

                                        <button type="button" class="btn btn-block bg-gradient-warning previewdoc"
                                            data-id="{{$id->id}}" data-jmlhview="{{$id->jumlah_view}}"
                                            data-token="{{ csrf_token() }}" data-toggle=" modal"
                                            data-target="#modal-xl"><i class="fas fa-book-open"></i> Baca</button>

                                    </a>
                                </div>
                            </div>
                        </div>
                        <hr>
                        @endforeach
                        <tfoot>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    {{$reference->links('pagination::bootstrap-4')}}
                                    {{-- {{ $reference->appends(Request::all())->links() }} --}}
                                </ul>
                            </nav>
                        </tfoot>
                    </div>
                    <div class="tab-pane" id="tab_2">

                        @foreach ($reference as $id)
                        @if($id->kategori->kategori_type_id == 1)
                        <div class="row tab-pane active" id="tab_1">
                            <div class="col px-8" style="margin-left: 15px !important; margin-right:20px;">
                                <h5 style=" line-height: 30px; font-family: Roboto; margin-bottom: 13px !important;"
                                    class="media-heading">
                                    {{ ucwords($id->judul_dokumen)  }}</h5>
                            </div>
                        </div>
                        <div class="row startdoc">
                            <div class="col-auto">
                                <a>
                                    @if($id->cover)
                                    <img src="{{ asset('uploads/'.$id->cover) }}" class="img-thumbnail" width="200px">
                                    @else
                                    <img src="{{ asset('image/1.png') }}" class="img-thumbnail" width="200px">
                                    @endif
                                </a>
                            </div>

                            <div class="col px-4 float-right">

                                <p style=" margin-top: 3px !important; margin-bottom: 18px !important" align="justify">
                                    {{-- {{ str_limit($id->deskripsi_dokumen, 200, '') }}
                                    @if (strlen($id->deskripsi_dokumen) > 200) --}}
                                    <span data-target="#modal-{{$id->id}}" data-toggle="modal"
                                        class="more">{{$id->deskripsi_dokumen}}</span>
                                    {{-- <span id="more">{{ substr($id->deskripsi_dokumen, 200) }}</span>
                                    <a href="javascript:void(0)" onclick="myFunction()" id="myBtn"> Baca
                                        Selengkapnya</a>
                                    @endif --}}
                                </p>
                                {{-- {{  substr(strip_tags($id->deskripsi_dokumen,'<pre>,<code>'),0,200) }}{{ strlen(strip_tags($id->deskripsi_dokumen))>200?"...":"" }}
                                <a href="javascript:void(0)" id="btn-more">Read More</a>
                                <h6 style="margin-bottom: 15px; margin-top: 15px !important;" id="id_kategori"
                                    name="id_kategori">Kategori :
                                    {{$id->kategori->kategori}} </h6>
                                --}}
                                <h5 style=" margin-bottom: 15px !important" id="id_kategori" name="id_kategori">Kategori
                                    :
                                    {{$id->kategori->kategori}} </h5>
                                <h6 style=" margin-bottom: 10px !important">Publisher : {{$id->publisher}}</h6>
                                <button href="javascript:void(0)" class="btn btn-outline-info tekan {{$id->id}}"
                                    data-id="{{$id->id}}" data-jumlah="{{$id->jumlah_like}}"
                                    data-token="{{ csrf_token() }}"
                                    <?php if(\App\Models\Likesdocument::where([['user_id', '=', Auth::user()->id], ['document_id', '=', $id->id]])->exists()) { ?>
                                    data-check="1" <?php } else { ?> data-check="0" <?php } ?>>
                                    <i
                                        class="fas fa-thumbs-up likebut {{$id->id}} {{ \App\Models\Likesdocument::where([['user_id', '=', Auth::user()->id], ['document_id', '=', $id->id]])->exists() ? 'like-post' : '' }}">
                                        {{$id->jumlah_like}}</i>
                                </button>
                                <a href="javascript:void(0)"> |
                                    <i class="far fa-eye"></i> {{$id->jumlah_view}}
                                </a>

                                <a class="tahun" style="color : #aaa !important;" href=""> | Create : {{$id->tahun}}</a>

                                <div class="float-right">
                                    <a href="{{route('reference.show',$id->id)}}">

                                        <button type="button" class="btn btn-block bg-gradient-warning previewdoc"
                                            data-id="{{$id->id}}" data-jmlhview="{{$id->jumlah_view}}"
                                            data-token="{{ csrf_token() }}" data-toggle=" modal"
                                            data-target="#modal-xl"><i class="fas fa-book-open"></i> Baca</button>

                                    </a>
                                </div>
                            </div>
                        </div>
                        <hr>
                        @endif
                        @endforeach
                        <tfoot>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    {{$reference->links('pagination::bootstrap-4')}}
                                    {{-- {{ $reference->appends(Request::all())->links() }} --}}
                                </ul>
                            </nav>
                        </tfoot>
                    </div>
                    <div class="tab-pane" id="tab_3">
                        {{-- <b> Terdapat {{$kategori->count('id')}} Dokumen</b> --}}
                        @foreach ($reference as $id)
                        {{-- <b> Terdapat {{$id->kategori_type_id->count('id')}} Dokumen</b> --}}

                        @if($id->kategori->kategori_type_id == 2)


                        <div class="row tab-pane" id="tab_1">
                            <div class="col px-8" style="margin-left: 15px !important; margin-right:20px;">
                                <h5 style=" line-height: 30px; font-family: Roboto; margin-bottom: 13px !important;"
                                    class="media-heading">
                                    {{ ucwords($id->judul_dokumen)  }}</h5>
                            </div>
                        </div>
                        <div class="row startdoc">
                            <div class="col-auto">
                                <a>
                                    @if($id->cover)
                                    <img src="{{ asset('uploads/'.$id->cover) }}" class="img-thumbnail" width="200px">
                                    @else
                                    <img src="{{ asset('image/Picture1.png') }}" class="img-thumbnail" width="200px">
                                    @endif
                                </a>
                            </div>

                            <div class="col px-4 float-right">

                                <p style=" margin-top: 3px !important; margin-bottom: 18px !important" align="justify">
                                    {{-- {{ str_limit($id->deskripsi_dokumen, 200, '') }}
                                    @if (strlen($id->deskripsi_dokumen) > 200) --}}
                                    <span data-target="#modal-{{$id->id}}" data-toggle="modal"
                                        class="more">{!!$id->deskripsi_dokumen!!}</span>
                                    {{-- <span id="more">{{ substr($id->deskripsi_dokumen, 200) }}</span>
                                    <a href="javascript:void(0)" onclick="myFunction()" id="myBtn"> Baca
                                        Selengkapnya</a>
                                    @endif --}}
                                </p>
                                {{-- {{  substr(strip_tags($id->deskripsi_dokumen,'<pre>,<code>'),0,200) }}{{ strlen(strip_tags($id->deskripsi_dokumen))>200?"...":"" }}
                                <a href="javascript:void(0)" id="btn-more">Read More</a>
                                <h6 style="margin-bottom: 15px; margin-top: 15px !important;" id="id_kategori"
                                    name="id_kategori">Kategori :
                                    {{$id->kategori->kategori}} </h6>
                                --}}
                                <h5 style=" margin-bottom: 15px !important" id="id_kategori" name="id_kategori">Kategori
                                    :
                                    {{$id->kategori->kategori}} </h5>
                                <h6 style=" margin-bottom: 10px !important">Publisher : {{$id->publisher}}</h6>
                                <button href="javascript:void(0)" class="btn btn-outline-info tekan {{$id->id}}"
                                    data-id="{{$id->id}}" data-jumlah="{{$id->jumlah_like}}"
                                    data-token="{{ csrf_token() }}"
                                    <?php if(\App\Models\Likesdocument::where([['user_id', '=', Auth::user()->id], ['document_id', '=', $id->id]])->exists()) { ?>
                                    data-check="1" <?php } else { ?> data-check="0" <?php } ?>>
                                    <i
                                        class="fas fa-thumbs-up likebut {{$id->id}} {{ \App\Models\Likesdocument::where([['user_id', '=', Auth::user()->id], ['document_id', '=', $id->id]])->exists() ? 'like-post' : '' }}">
                                        {{$id->jumlah_like}}</i>
                                </button>
                                <a href="javascript:void(0)"> |
                                    <i class="far fa-eye"></i> {{$id->jumlah_view}}
                                </a>

                                <a class="tahun" style="color : #aaa !important;" href=""> | Create : {{$id->tahun}}</a>

                                <div class="float-right">
                                    <a href="{{route('reference.show',$id->id)}}">

                                        <button type="button" class="btn btn-block bg-gradient-warning previewdoc"
                                            data-id="{{$id->id}}" data-jmlhview="{{$id->jumlah_view}}"
                                            data-token="{{ csrf_token() }}" data-toggle=" modal"
                                            data-target="#modal-xl"><i class="fas fa-book-open"></i> Baca</button>

                                    </a>
                                </div>
                            </div>
                        </div>
                        <hr>
                        @endif
                        @endforeach
                        <tfoot>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    {{$reference->links('pagination::bootstrap-4')}}
                                    {{-- {{ $reference->appends(Request::all())->links() }} --}}
                                </ul>
                            </nav>
                        </tfoot>
                    </div>
                </div>



            </div>

        </div>
    </div>
</div>

<div class="modal modalpopup fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content bg-defdault">
            <div class="modal-header">
                <h4 class="modal-title">Data Not Found</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Mohon maaf, referensi yang anda cari belum tersedia</p>
            </div>
            <div class="modal-footer justify-content-right">
                <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
@foreach ($reference as $id)
<div class="modal fade bd-example-modal-xl" id="modal-{{$id->id}}">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col px-8">
                    <h5 style=" line-height: 30px; font-family: Roboto; margin-bottom: 13px !important;"
                        class="media-heading">
                        {{ ucwords($id->judul_dokumen)  }}</h5>
                </div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="form-group">
                <div class="modal-body">
                    <p align="justify">{!!$id->deskripsi_dokumen!!}</p>
                    <hr>
                    <h5 id="id_kategori" name="id_kategori">Kategori : {{$id->kategori->kategori}}
                    </h5>
                </div>
                <div class="modal-footer justify-content-between">
                    <div></div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Keluar</button>
                    {{-- <button type="submit" class="btn btn-success btn-xl"><i class="far fa-save"></i> Simpan</button> --}}
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
@endforeach
<script>
    // function myFunction() {
//     var dots = document.getElementById("dots");
//     var moreText = document.getElementById("more");
//     var btnText = document.getElementById("myBtn");

//     if (dots.style.display === "none") {
//         dots.style.display = "inline";
//         btnText.innerHTML = "Baca Selengkapnya";
//         moreText.style.display = "none";
//     } else {
//         dots.style.display = "none";
//         btnText.innerHTML = "Ringkas";
//         moreText.style.display = "inline";
//     }
// }
$(document).ready(function() {
  
    var showChar = 400;  
    var ellipsestext = " .....";
    var moretext = " Baca Selengkapnya";
    // var lesstext = " Ringkas ";
    

    $('.more').each(function() {
        var content = $(this).html();
        // pop =$('.modalpopup').modal('show');
        if(content.length > showChar) {
 
            var c = content.substr(400, showChar);
            var h = content.substr(showChar, content.length - showChar);
            // var pop = $('.modalpop').modal('show');
            var html = c + '<span class="moreellipses">' + ellipsestext + '</span><span class="morecontent"><span>' + h + '</span><a data-target="#modal" data-toggle="modal" href="" >' + moretext + '</a></span><b>';
 
            $(this).html(html);
        }
 
    });
 
    $(".morelink").click(function(){
        if($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
        }
        $(this).parent().prev().toggle();
        $(this).prev().toggle();
        return false;
    });
});
</script>

<script>
    $(document).ready(function(){
   $(document).on('click','#btn-more',function(){
       var id = $(this).data('id');
       $("#btn-more").html("Loading....");
       $.ajax({
           url: 'reference',
           method : "POST",
           data : {id:id, _token:"{{csrf_token()}}"},
           dataType : "text",
           success : function (data)
           {
              if(data != '') 
              {
                  $('#remove-row').remove();
                  $('#load-data').append(data);
              }
              else
              {
                  $('#btn-more').html("No Data");
              }
           }
       });
   });  
}); 
   
  $(document).on("click", ".tekan", function() {
    
    // function tekan(id) {
        var id = $(this).data('id');
        var jumlah = $(this).data('jumlah');
        var meta = $('meta[name=csrf-token]').attr('content');
        var check = $(this).data('check');
        // console.log(check);
        
        $.ajax({
            url: 'likedislike',
            method: 'POST',
            dataType: 'json',
            data: {
                id: id,
                jumlah: jumlah,
                check: check,
                _token: '{{ csrf_token() }}'
                // _token:$(this).data('token')
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(response){
                if(response.message == 'success') {
                    // var jumlah = response.jumlah;
                    if(check == 0){
                        $('.likebut.'+id).addClass("like-post");
                        $('.tekan.'+id).data('check', 1);
                    }
                    else if(check == 1){
                        $('.likebut.'+id).removeClass("like-post");
                        $('.tekan.'+id).data('check', 0);
                    }
                    
                        $('.likebut.'+id).text(" "+response.jumlah);
                        $('.tekan.'+id).data('jumlah', response.jumlah);
                    
                    // console.log(response);
                }
                else {
                    alert("gagal!!");
                }
            },
            error: function(response){
                var errors = response.responseJSON;
                // $('#errorlog').text(errors);
                console.log(errors);
            }
        })
    })

    $(document).on("click", ".previewdoc", function() {
        var id = $(this).data('id');
        var jmlhview = $(this).data('jmlhview');

        //console.log(id); 
       // console.log(jmlhview);


        $.ajax({
            url: 'viewadd',
            method: 'POST',
            dataType: 'json',
            data: {
                id: id,
                jumlah: jmlhview,
                _token: '{{ csrf_token() }}'
                // _token:$(this).data('token')
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(response){
                if(response.message == 'success') {
                    
                    // console.log(response);
                }
                else {
                    alert("gagal!!");
                }
            },
            error: function(response){
                var errors = response.responseJSON;
                console.log(errors);
            }
        })

    })


</script>

<!-- Script -->
<script type="text/javascript">
    // CSRF Token
var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
$(document).ready(function(){

  $( "#tahunsearch" ).autocomplete({
    source: function( request, response ) {
      // Fetch data
      $.ajax({
        url:"/getjudul",
        type: 'post',
        dataType: "json",
        data: {
           _token: '{{ csrf_token() }}',
           search: request.term
        },
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function( data ) {
           response( data );
        }
      });
    },
    select: function (event, ui) {
       $('#tahunsearch').val(ui.item.label); 
       return false;
    }
  });

});
</script>
@endsection