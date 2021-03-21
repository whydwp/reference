@extends('layoutt.master-template')

@section('titlel')
<a href="{{route('reference.index')}}"> Reference </a> /  Baca dokument
@endsection

@section('content')



<div class="row mt-2">
    <div class="col-md-12">

        <div class="list-group">

            <div class=" card list-group-item">
                <a href="{{route('reference.index')}}" class="btn btn-info btn-xl">Kembali</a>
              <hr>
                <div class="row">
                    <div class="container" >
                        <div class="col-md-12">
                        {{-- @foreach ($reference as $item) --}}
                            <label for="file" class="col-sm-2 control-label"></label>
                            <div class="embed-responsive embed-responsive-4by3">
                                <iframe class="embed-responsive-item" type="application / html5"
                                    src="{{ asset('uploads/'.$reference->file) }}#toolbar=0&navpanes=0&scrollbar=0" 
                                    width="100%" height="1000"></iframe>
                            </div>
                        </div>
                        <div class="col-md-4">
                            
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
                        <br>
                        <hr>
                      
                        {{-- @if($reference->id_forum == $komentar->id) --}}
            <div class="card direct-chat direct-chat-primary">
              <div class="card-header ui-sortable-handle" style="cursor: move;">
                <h2 class="card-title">Komentar</h2>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <!-- Conversations are loaded here -->
                       <div class="direct-chat-messages">
                                    <!-- Message. Default to the left -->
                            @foreach ($komentar as $item)
                            {{-- @if($item->documen_id == $komentar) --}}
                                <form method="post" action="{{ route('reference.destroy',[$item->id]) }}"
                                            onsubmit="return confirm('Apakah anda yakin akan menghapus komentar ini ?')">
                                            @csrf
                                            {{ method_field('DELETE') }} 
                                    <div class="direct-chat-msg">
                                        <div class="direct-chat-infos clearfix" id="comment_{{ $item->id }}">
                                                <span class="direct-chat-name float-left">{{$item->user->full_name}}</span>
                                                @if($item->user->full_name == Auth::user()->full_name)
                                                <span class="direct-chat-name"><button type="submit" class="btn btn-tool" data-card-widget=""><i class="fas fa-times"></i>
                                                </button></span>
                                                @endif
                                                <span class="direct-chat-timestamp float-right">{{$item->created_at}}</span>
                                        </div>
                                        <div class="direct-chat-text" >
                                                {{$item->message}}
                                        </div>
                                            <!-- /.direct-chat-text -->
                                    </div>
                                </form>
                                {{-- @endif --}}
                            @endforeach
                        </div>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <form method="post" action="{{route('reference.store')}}"id="comment_{{ $item->id }} class="form-horizontal">
                               @csrf  
                               <input  type="hidden" name="_name" value="<?php echo csrf_token()?>">
                  <div class="input-group">
                   <textarea type="text" name="message" placeholder="Type Message ..." class="form-control" cols="10" rows="3" required></textarea>
                  </div>
                      <button data-id="{{ $item->id }}" data-token="{{ csrf_token() }}" style="margin-top: 5px"type="submit" class="btn btn-primary " value="Komentar">Komentar <i class="fas fa-paper-plane"></i> </button>
                              </form>
              </div>
              <!-- /.card-footer-->
            </div>
                        {{-- @endif --}}
                </div>

            </div>
        </div>
    </div>
</div>

<script>
    $(".commentButton").click(function(){
    var id = $(this).data("id");
    var comment = $("input[name=comment]").val();
    var token = $(this).data("token");

    $.ajax({
       url: "/comments/"+id,
       type: 'POST',
       dataType: 'JSON',
       data: {
           "id": id,
           "message": message,
           "_method": 'POST',
           "_token": token,
       },
       success: function(){
           console.log('it works!');
            $(".direct-chat-messages").html(data.komentar);
       } 
    });
    console.log("It failed"); 
});
// $('#comment_'+id);
</script>
@endsection