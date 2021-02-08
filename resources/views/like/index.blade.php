@extends('layoutt.master-template')

@section('title')
My Like
@endsection

@section('content')

<div class="row mt-2">
    <div class="col-md-12">

        <div class="list-group">
            <div class=" card list-group-item">

                @foreach ($getuserlikes as $id)
                <hr>
                <div class="row">
                    <div class="col-auto">
                        <a>
                           @if($id->cover) 
                            <img src="{{ asset('uploads/'.$id->cover) }}"
                                class="img-thumbnail"width="200px">
                                @else
                                <img src="{{ asset('image/1.png') }}" class="img-thumbnail" width="200px">
                                @endif
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
                            <h5 id="id_kategori" name="id_kategori">Kategori : {{$id->namakategori}} </h5>
                            <br>
                            <button href="javascript:void(0)" class="btn btn-outline-info tekan {{$id->id}}"
                                data-id="{{$id->id}}" data-jumlah="{{$id->jumlah_like}}" data-token="{{ csrf_token() }}"
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
                                    <button type="button" class="btn btn-block bg-gradient-warning" data-toggle="modal"
                                        data-target="#modal-xl"><i class="far fa-eye"></i> Preview</button>
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
                            {{ $getuserlikes->links('pagination::bootstrap-4') }}
                        </td>
                    </tr>
                </tfoot>
            </div>

        </div>
    </div>
</div> -->

<script>
    $(document).on("click", ".tekan", function() {
    
    // function tekan(id) {
        var id = $(this).data('id');
        var jumlah = $(this).data('jumlah');
        var meta = $('meta[name=csrf-token]').attr('content');
        var check = $(this).data('check');
        // console.log(meta);
        
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
                    // if(type == 1){
                        $('.likebut.'+id).text(" "+response.jumlah);
                        $('.tekan.'+id).data('jumlah', response.jumlah);
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
</script>
@endsection