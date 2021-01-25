@extends('layoutt.master-template')

@section('title')
My Reference
@endsection

@section('content')


<div class="row mt-2">
    <div class="col-md-12">
        
        <div class="list-group">
            <div class=" card list-group-item">
                @if(Request::get('keyword'))
                <a class="btn btn-danger" href="{{ route('reference.index') }}">Back</a>
                @endif
                @if(Request::get('id_kategori'))
                <a class="btn btn-danger" href="{{ route('reference.index') }}">Back</a>
                @endif
                <div class="row">
                    <div class="col-md-6">
                        <form method="get" action="{{route('reference.index')}}">
                        <div class="form-group">
                            <label>Kategori</label>
                            <select id="id_kategori" name="id_kategori"class="custom-select select2bs4" style="width: 100%; overflow-y:auto;">
                                <option selected disabled>Kategori</option>
                                @foreach($kategori as $row)
                                <option value="{{ $row->id_kategori }}">{{ $row->kategori }}</option>
                                @endforeach
                            </select>
                           <div class="left" style="margin-top: 10px !important;">
                                <button type="submit" style="width: 100%;" class="btn btn-primary"><span
                                        class="glyphicon glyphicon-search"></span>cari</button>
                            </div>
                        </div>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <form method="get" action="{{route('reference.index')}}">
                        <div class="form-group">
                            <label for="keyword" class="col-sm-4 control-label">Tahun Publish</label>
                            <div class="input-group input-group-lg">
                                <input type="search" class="form-control form-control-lg" name="keyword" value="{{Request::get('keyword')}}"
                                    placeholder="Tahun Publish">
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
                <br>
                <div class="row">
                    <div class="col-md-3" style="margin-right: -5px !important;">
                        <form method="get" action="{{route('reference.index')}}">
                            <div class="form-gruop">
                                <label for="">Like</label>
                                <br>
                                    <select   name="sortlike" id="sortlike" class="custom-select sortbaselike" style="width: auto;" data-sortOrder>
                                    <option href="javascript:void(0)" value="mostlike" data-type="1" data-key="1"> Like Terbanyak </option>
                                    <option href="javascript:void(0)" value="lesslike" data-type="1" data-key="0"> Like sedikit </option>
                                    </select>
                                    <button name="reference2"type="submit" class="btn btn-lg btn-default">
                                        <i class="fa fa-search"></i>
                                    </button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-3" style="margin-right: -5px !important;">
                        <form method="get" action="{{route('reference.index')}}">
                            <div class="form-gruop">
                                    <label for="">Viewer</label>
                                        <br>
                                        <select name="sortview" id="sortview" class="custom-select" style="width: auto;" data-sortOrder>
                                        <option href="javascript:void(0)" value="mostview"> View Terbanyak </option>
                                        <option href="javascript:void(0)" value="lessview"> View Sedikit </option>
                                        </select>
                                        <button name="reference2"type="submit" class="btn btn-lg btn-default">
                                            <i class="fa fa-search"></i>
                                        </button>
                            </div>
                        </form>
                    </div>
                </div>
               
                {{-- <select class="custom-select" style="width: auto;" data-sortOrder>
                    <option value="index"> Sort by Position </option>
                    <option value="sortData"> Sort by Custom Data </option>
                </select> --}}
                <br>
            
                @if(Request::get('keyword'))
                <div class="alert alert-success alert-block">
                    Hasil Pencarian Dokumen dengan Keyword : <b>{{ Request::get('keyword') }}</b>
                </div>
                @endif
                @if(Request::get('id_kategori'))
                <div class="alert alert-success alert-block">
                    Hasil Pencarian Dokumen dengan Kategori : <b>{{ $nama_kategori }}</b>
                </div>
                @endif
            
                <hr>
                @foreach ($reference as $id)
                <div class="row startdoc">
                    <div class="col-auto">
                        <a >
                            <img src="{{ asset('uploads/'.$id->cover) }}"
                                class="img-thumbnail"width="200px">
                        </a>
                    </div>
                    <div class="col px-4 float-right">
                        <div>
                            <h3 class="media-heading">{{ strtolower($id->judul_dokumen)  }}</h3>
                            <br>
                            <p align="justify">
                                @if($id->deskripsi_dokumen)
                                {{  strtolower($id->deskripsi_dokumen) }}
                                @elseif($id->deskripsi_dokumen)
                                {{ str_limit($id->deskripsi_dokumen , 200, ' Baca selengkapnya...')}} 
                                @else
                                data tidak ada
                                @endif
                            </p>
                            <h5  id="id_kategori" name="id_kategori">Kategori :  {{$id->kategori->kategori}} </h5>
                            <br>
                          <button href="javascript:void(0)" class="btn btn-outline-info tekan {{$id->id}}" data-id="{{$id->id}}"
                            data-jumlah="{{$id->jumlah_like}}" data-token="{{ csrf_token() }}"
                            <?php if(\App\Models\Likesdocument::where([['user_id', '=', Auth::user()->id], ['document_id', '=', $id->id]])->exists()) { ?>
                            data-check="1" <?php } else { ?> data-check="0" <?php } ?>>
                            <i
                                class="fas fa-thumbs-up likebut {{$id->id}} {{ \App\Models\Likesdocument::where([['user_id', '=', Auth::user()->id], ['document_id', '=', $id->id]])->exists() ? 'like-post' : '' }}">
                                {{$id->jumlah_like}}</i>
                        </button>
                            <a href="javascript:void(0)"> |
                                <i class="far fa-eye"></i> {{$id->jumlah_view}}
                            </a>
                           
                            <a class="tahun" style="color : #aaa !important;" href="" > |  Create : {{$id->tahun}}</a>
                            <div class="float-right">
                                <a href="{{route('reference.show',$id->id)}}">
                                <!-- <a href="{{route('preview',$id->id)}}"> -->
                               <button type="button" class="btn btn-block bg-gradient-warning previewdoc" data-id="{{$id->id}}" data-jmlhview="{{$id->jumlah_view}}" data-token="{{ csrf_token() }} data-toggle="modal" data-target="#modal-xl"><i class="far fa-eye"></i>  Preview</button>
                            </a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
                <hr />
                <tfoot>
                    <tr>
                        <td colspan="10">
                            {{ $reference->links('pagination::bootstrap-4') }}
                        </td>
                    </tr>
                </tfoot>
            </div>
           
        </div>
    </div>
</div>
<script>
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
        console.log(id, jmlhview);

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
                    
                    console.log(response);
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


    // $('.sortbaselike').on('change', function(e){

    //     var type = $(this).find(":selected").data('type');
    //     var key = $(this).find(":selected").data('key');
    //     console.log(type, key);

    //     $.ajax({
    //         url: 'sort',
    //         method: 'post',
    //         dataType: 'json',
    //         data: {
    //             type: type,
    //             key: key,
    //             _token: '{{ csrf_token() }}'
    //             // _token:$(this).data('token')
    //         },
    //         headers: {
    //             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    //         },
    //         success: function(response){
    //             if(response.message == 'success') {
                    
    //                 console.log(response.reference.data);
                    
    //                 // $('.startdoc').html(data.view);
    //                 $('.startdoc').html(response.reference.data);
    //             }
    //             else {
    //                 alert("gagal!!");
    //                 var errors = response.responseJSON;
    //                 console.log(errors);
    //             }
    //         },
    //         error: function(response){
    //             var errors = response.responseJSON;
    //             console.log(errors);
    //         }
    //     })
    // })
</script>
@endsection