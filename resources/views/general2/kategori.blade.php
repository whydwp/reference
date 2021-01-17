@extends('layoutt.master-template')

<!-- @if($defaultkategori) -->
@section('title')
Kategori {{$defaultkategori->kategori}}
@endsection
<!-- @endif -->
@section('content')

<div class="row">
    <div class="col-md-10 offset-md-1">
        <div class="row">
            <!-- <div class="col-4">
                <div class="form-group">
                    <label>Sort Order:</label>
                    <select class="select2" style="width: 100%;">
                        <option selected>ASC</option>
                        <option>DESC</option>
                        <option>Oprisonal</option>
                        <option>diskending</option>
                    </select>
                </div>
            </div> -->
            <div class="col-4">
                <div class="form-group">
                    <label>Filter By:</label>
                    <select class="select2 js-select" name="filterby" style="width: 100%;">
                        <option value="title" data-val="title">Title</option>
                        <option value="year" data-val="year">Year</option>
                        <option value="publisher" data-val="publisher">Publisher</option>
                        <option selected value="category" data-val="category">Category</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group input-group-lg">
                <input type="search" name="search" class="form-control form-control-lg js-search"
                    placeholder="Type your keywords for filtering here" value="">
                <div class="input-group-append">
                    <button type="submit" class="btn btn-lg btn-default" onclick="filter()">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row mt-2">
    <div class="col-md-12">
        <div class="list-group datasresponse">
            @foreach($datas as $doc)

            <div class=" card list-group-item">
                <div class="row">
                    <div class="col-auto">
                        <a href="{{ route('preview',['id'=>$doc->id] )}}">
                            <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                                class="img-fluid" width="200px" height="100px">
                        </a>
                    </div>
                    <div class="col px-4">
                        <!-- @csrf -->
                        <div>
                            <div class="float-right">
                                <span href="#" class="btn btn-primary btn-lg disabled uppercase" style="color:#d43636;"
                                    tabindex="-1" role="button"
                                    aria-disabled="true">{{$defaultkategori->kategori}}</span>
                            </div>
                            <a href="{{ route('preview',['id'=>$doc->id] )}}">
                                <h4 class="media-heading">{{$doc->judul_dokumen}}</h4>
                                <p>{{$doc->deskripsi_dokumen}}</p>
                            </a>
                            <!-- <a href="" class="buttonlikedislike" data-id="{{$doc->id}}" data-jumlah="{{$doc->jumlah_like}}" data-type="1" onclick="tekan(id)"> -->
                            <!-- data-token="{{ csrf_token() }}" -->
                            <button class="tekan btn-outline-info {{$doc->id}}" data-id="{{$doc->id}}"
                                data-jumlah="{{$doc->jumlah_like}}" data-token="{{ csrf_token() }}"
                                <?php if(\App\Models\Likesdocument::where([['user_id', '=', Auth::user()->id], ['document_id', '=', $doc->id]])->exists()) { ?>
                                disabled <?php } ?>>
                                <i
                                    class="fas fa-thumbs-up likebut {{$doc->id}} {{ \App\Models\Likesdocument::where([['user_id', '=', Auth::user()->id], ['document_id', '=', $doc->id]])->exists() ? 'like-post' : '' }}">{{$doc->jumlah_like}}</i>
                            </button>
                            <!-- <button class="tekan {{$doc->id}}" data-id="{{$doc->id}}" data-jumlah="{{$doc->jumlah_dislike}}" data-type="0" data-token="{{ csrf_token() }}"> 
                                                <i class="fas fa-thumbs-down dislikebut {{$doc->id}}">{{$doc->jumlah_dislike}}</i> 
                                            </button> -->
                            <!-- <a href=""> | <i class="fa-book fa"></i> {{$doc->publisher}}</a> -->
                            <!-- <a href=""> | <i class="fa-calendar fa"></i> {{$doc->tahun}}</a> -->
                            <button>
                                <i class="fa-book fa"></i> {{$doc->publisher}}
                            </button>
                            <button>
                                <i class="fa-calendar fa"></i> {{$doc->tahun}}
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            @endforeach
            <!-- <h2 class="errorlog">aaaa</h2> -->

        </div>
    </div>
</div>
<!-- <script>
    $(function () {axSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
        });
      $('.select2').select2()
    });
</script> -->
<script>
    // $.ajaxSetup({
// headers: {
//     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
// }
// });    
function filter() {
    var select = $('.js-select option:selected').data('val');
    var searchbar = $('.js-search').val();
    // console.log(searchbar);
    $.ajax({
        url: 'filter',
        method: 'POST',
        data: {
            select: select,
            search: searchbar,
            _token: '{{ csrf_token() }}'
        },
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function(response){
            // console.log(response);
            $('.datasresponse').html(response);
        },
        error: function(response){
            var errors = response.responseJSON;
            // $('#errorlog').text(errors);
            console.log(errors);
        }
    });
}
$(document).on("click", ".tekan", function() {
    
    // function tekan(id) {
        var id = $(this).data('id');
        var jumlah = $(this).data('jumlah');
        var meta = $('meta[name=csrf-token]').attr('content');
        // console.log(meta);
        $('.likebut.'+id).addClass("like-post");
        
        $.ajax({
            url: 'likedislike',
            method: 'POST',
            dataType: 'json',
            data: {
                id: id,
                jumlah: jumlah,
                _token: '{{ csrf_token() }}'
                // _token:$(this).data('token')
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(response){
                if(response.message == 'success') {
                    // var jumlah = response.jumlah;
                    // if(type == 1){
                        $('.likebut.'+id).text(" "+response.jumlah);
                        $('.tekan.'+id).attr("disabled", true);
                    // }
                    // console.log(response.hem);
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
</script>
@endsection