@extends('layoutt.master-template')

@section('title')
My Reference
@endsection

@section('content')



<div class="row mt-2">
    <div class="col-md-12">
        <div class="list-group">
            
            <div class=" card list-group-item">
                <a href="{{route('reference.index')}}" class="btn btn-danger btn-xl">Kembali</a>
                <div class="container" style="margin-bottom: 60px !important;">
                   
               <div class="col-md-8 offset-md-1">

                   <div class="float-left">
                      
                   <i class="fas fa-cloud-upload-alt fa-2x" width="200px;"> cloud</i>
                  
                   </div>
                   
                   <div class="float-left" style="margin-left: 60px !important;">
                    <h5>24 Mb</h5>
                   <h5>  3 File</h5>
                   </div>
               </div>
               </div>
               <hr>
               <div class="row">
                
                    <div class="col-auto">
                       @foreach ($reference as $item)
                       <iframe src="{{ $item->file }}" width="1000" height="800"></iframe>
                     @endforeach
                    </div>
                    <div class="col px-4">
                        <div>
                            <div class="float-right">
                                <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;" tabindex="-1"
                                    role="button" aria-disabled="true">Distribusi</span>
                            </div>
                
                            {{-- @foreach ($reference as $id)
                            <h4 class="media-heading">{{ $id->judul_dokumen }}</h4>
                            <p>{{$id->deskripsi_dokumen}}</p>
                            @endforeach --}}
                            <a href="">
                                <i class="fas fa-thumbs-up tekan"></i> 2819 Likes
                            </a>
                            <a href=""> |
                                <i class="fas fa-thumbs-down"></i> 2819 Dislikes
                            </a>
                            <a href=""> | <i class="fa-book fa"></i> Ini Publisher</a>
                            <a href=""> | <i class="fa-calendar fa"></i> 2020</a>
                        </div>
                    </div>
                </div>
            
        </div>
        </div>
    </div>
</div>


@endsection