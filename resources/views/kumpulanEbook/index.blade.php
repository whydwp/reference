@extends('layoutt.master-template')

@section('title')
Kumpulan Buku
@endsection

@section('content')
<!-- CSS -->
<!-- <link rel="stylesheet" type="text/css" href="{{asset('admin/plugins/jquery-ui/jquery-ui.min.css')}}"> -->

<!-- Script -->
<!-- <script src="{{asset('jquery-3.3.1.min.js')}}" type="text/javascript"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="{{asset('admin/plugins/jquery-ui/jquery-ui.min.js')}}" type="text/javascript"></script> -->

@if ($kumpulan->count() == 0)
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
                {{-- <select class="custom-select" style="width: auto;" data-sortOrder>
                    <option value="index"> Sort by Position </option>
                    <option value="sortData"> Sort by Custom Data </option>
                </select> --}}
                <br>
                @if(Request::get('keyword'))
                <a class="btn btn-info" href="{{ route('kumpulanEbook.index') }}"> < Back</a>
                @endif
                <br>
                <br>
                <div class="row">   
                   <div class="col-md-12">
                        <form method="get" action="{{route('kumpulanEbook.index')}}">
                            <div class="form-group">
                                <label for="keyword" class="col-sm-12 control-label">Pencarian Judul Buku</label>
                                <div class="input-group input-group-lg">
                                    <input style="hight: 90px;" type="search"  class="form-control form-control-lg" name="keyword"
                                        value="{{Request::get('keyword')}}" placeholder="Judul Buku">
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
                @if(Request::get('keyword'))
                @if ($kumpulan->count() == 0)
                <div class="alert" style="background-image: linear-gradient(to right, #a2c2d4, #7effe3);">
                    <button type="button" class="close" data-dismiss="alert">X</button>
                    Hasil Pencarian Dokumen dengan Kategori : <b>{{ Request::get('keyword') }} </b><b> tidak ada Buku</b>
                </div>
                <br>
                @elseif($kumpulan->count() >= 0)
                <div class="alert" style="background-image: linear-gradient(to right, #a2c2d4, #7effe3);">
                    <button type="button" class="close" data-dismiss="alert">X</button>
                    Hasil Pencarian Dokumen dengan Kategori : <b>{{ Request::get('keyword') }} Terdapat {{$kumpulan->count('id')}} Buku</b>
                </div>
                @endif
                @endif

                <hr>
                @foreach ($kumpulan as $id)
                <div class="row tab-pane active" id="tab_1">
                    <div class="col px-8" style="margin-left: 15px !important; margin-right:20px;">
                        <h5 style=" line-height: 30px; font-family: Roboto; margin-bottom: 13px !important;"
                            class="media-heading">
                            {{ ucwords($id->judul_ebook)  }}</h5>
                    </div>
                </div>
                <div class="row startdoc">
                    <div class="col-auto" style="margin-left: 17px;">
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
                            <span data-toggle="modal"
                                class="more">{{$id->deskripsi_ebook}}</span>
                            {{-- <span id="more">{{ substr($id->deskripsi_dokumen, 200) }}</span>
                            <a href="javascript:void(0)" onclick="myFunction()" id="myBtn"> Baca Selengkapnya</a>
                            @endif --}}
                        </p>
                        {{-- {{  substr(strip_tags($id->deskripsi_dokumen,'<pre>,<code>'),0,200) }}{{ strlen(strip_tags($id->deskripsi_dokumen))>200?"...":"" }}
                        <a href="javascript:void(0)" id="btn-more">Read More</a>
                        <h6 style="margin-bottom: 15px; margin-top: 15px !important;" id="id_kategori"
                            name="id_kategori">Kategori :
                            {{$id->kategori->kategori}} </h6>
                        --}}
                        <h5 style=" margin-bottom: 15px !important" id="id_kategori" name="id_kategori">Kategori :
                            {{$id->kategori->kategori}} </h5>
                        <h6 style=" margin-bottom: 10px !important">Publisher : {{$id->publisher}}</h6>
                        <a class="tahun" style="color : #aaa !important;" href=""> Create : {{$id->tahun}}</a>
                        <br>
                        <br>
                        <div class="float-left">
                        <a data-target="#modal-{{$id->id_ebook}}" data-toggle="modal" class="btn" style="background-color:#01a3a4;font-family:'Nunito';"
                            href="{{ asset('uploads/'.$id->file) }}"><i class="fab fa-readme"></i> Lihat Buku</a>
                        </a>
                        </div>
                        <div class="float-right">
                            <a class="btn" style="background-color: #55efc4; font-family:'Nunito';" href="{{ asset('uploads/'.$id->file) }}"
                                download=""><i class="fas fa-download"></i> Unduh PDF</a>
                            </a>
                        </div>
                    </div>
                </div>
                <hr>
                @endforeach
                <tfoot>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
<<<<<<< HEAD
=======

>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
                            {{ $kumpulan->appends(Request::get('id_status',''))->links() }}
                        </ul>
                    </nav>
                </tfoot>
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
@foreach ($kumpulan as $id)
{{-- @if($id->id_status ==1) --}}
<div class="modal fade bd-example-modal-xl" id="modal-{{$id->id_ebook}}">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col px-8">
                    <h5 style=" line-height: 30px; font-family: Roboto; margin-bottom: 13px !important;"
                        class="media-heading">
                        {{ ucwords($id->judul_ebook)  }}</h5>
                </div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="form-group">
                <div class="modal-body">
                    <div class="col-md-12">
                        {{-- @foreach ($reference as $item) --}}
                        <label for="file" class="col-sm-2 control-label"></label>
                        <div class="embed-responsive embed-responsive-4by3">
                           <iframe class="embed-responsive-item" type="application / html5"
                                src="{{ asset('uploads/'.$id->file) }}#toolbar=0&navpanes=0&scrollbar=0" width="100%"
                                height="10000">{{ asset('uploads/'.$id->file) }}</iframe>
                        </div>
                    </div>
                    <br>
                    <p align="justify">{{$id->deskripsi_ebook}}</p>
                    <hr>
                    <h5 id="id_kategori" name="id_kategori">Kategori : {{$id->kategori->kategori}}</h5>
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
{{-- @endif --}}
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
<<<<<<< HEAD
=======

>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
    var showChar = 400;
    var ellipsestext = " .....";
    var moretext = "";
    // var lesstext = " Ringkas ";
<<<<<<< HEAD
=======


>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
    $('.more').each(function() {
        var content = $(this).html();
        // pop =$('.modalpopup').modal('show');
        if(content.length > showChar) {
<<<<<<< HEAD
            var c = content.substr(300, showChar);
            var h = content.substr(showChar, content.length - showChar);
            // var pop = $('.modalpop').modal('show');
            var html = c + '<span class="moreellipses">' + ellipsestext + '</span><span class="morecontent"><span>' + h + '</span><p data-target="#modal-lg" data-toggle="modal" href="" >' + moretext + '</p></span><b>';
            $(this).html(html);
        }
    });
=======

            var c = content.substr(400, showChar);
            var h = content.substr(showChar, content.length - showChar);
            // var pop = $('.modalpop').modal('show');
            var html = c + '<span class="moreellipses">' + ellipsestext + '</span><span class="morecontent"><span>' + h + '</span><a data-target="#modal" data-toggle="modal" href="" >' + moretext + '</a></span><b>';

            $(this).html(html);
        }

    });

>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
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
<<<<<<< HEAD
  $(document).on("click", ".tekan", function() {
=======

  $(document).on("click", ".tekan", function() {

>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
    // function tekan(id) {
        var id = $(this).data('id');
        var jumlah = $(this).data('jumlah');
        var meta = $('meta[name=csrf-token]').attr('content');
        var check = $(this).data('check');
        // console.log(check);
<<<<<<< HEAD
=======

>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
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
<<<<<<< HEAD
                        $('.likebut.'+id).text(" "+response.jumlah);
                        $('.tekan.'+id).data('jumlah', response.jumlah);
=======

                        $('.likebut.'+id).text(" "+response.jumlah);
                        $('.tekan.'+id).data('jumlah', response.jumlah);

>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
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
<<<<<<< HEAD
=======

>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
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
<<<<<<< HEAD
=======

>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
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