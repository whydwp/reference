@extends('layoutt.master-template')

@section('title')
Like 
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
                            <p style=" margin-top: 3px !important; margin-bottom: 18px !important" align="justify">
                                <span data-target="#modal-{{$id->id}}" data-toggle="modal" class="more">{{$id->deskripsi_dokumen}}</span>
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
                                <a href="{{route('like.show',$id->id)}}">
                                    <button type="button" class="btn btn-block bg-gradient-warning previewdocc" data-id="{{$id->id}}"
                                        data-jmlhview="{{$id->jumlah_view}}" data-token="{{ csrf_token() }}" data-toggle=" modal" data-target="#modal-xl"><i
                                            class="fas fa-book-open"></i> Baca</button>
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
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                            {{ $getuserlikes->links('pagination::bootstrap-4') }}
                                </ul>
                            </nav>
                        </td>
                    </tr>
                </tfoot>
            </div>

        </div>
    </div>
</div> 

@foreach ($getuserlikes as $id)
<div class="modal fade" id="modal-{{$id->id}}">
    <div class="modal-dialog">
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
                    <p align="justify">{{$id->deskripsi_dokumen}}</p>
                    <hr>
                    <h5 id="id_kategori" name="id_kategori">Kategori : {{$id->namakategori}} </h5>
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

<script >
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
<script src="">
     $(document).on("click", ".previewdocc", function() {
        var id = $(this).data('id');
        var jmlhview = $(this).data('jmlhview');

        //console.log(id); 
       // console.log(jmlhview);


        $.ajax({
            url: 'viewaddd',
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

</script>
@endsection