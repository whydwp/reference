@extends('layoutt.master-template')

@section('title')
My Reference
@endsection

@section('content')
{{-- 
<div id="content" class="search-v1" style="padding-left: 0px; padding-right: 230px;">
    <div class="col-md-12">
        <div class="col-md-12 tabs-area box-shadow-none">
            <div role="tabpanel" class="tab-pane fade active in" id="tabs-demo7-area2"
                aria-labelledby="tabs-demo7-area2">
                <i class="fa fa-cloud mr-2" style="color: #55aaf7;font-size: 35px;vertical-align: middle;"
                    aria-hidden="true"></i> My Reference
                <span style="font-weight: 400;float: right;font-size: 15px;vertical-align: middle;">
                    <span style="color: #107fe4;"><span id="in_cloud">5</span> Files</span>
                    <span class="ml-1 mr-1">·</span>
                    <span style="color: #2d302aec;"><span id="used_space">24.7 MB</span> Used</span>
                </span>
            </div>
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                            class="media-object search-v1-avatar">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Dokumen PLN2</h4>
                    <p>Deskripsi jurnal</p>
                    <p>4 mb</p>
                    <i class="icon-like icons"></i> 2819 Likes
                    </a>
                    <a href=""> |
                        <i class="icon-dislike icons"></i> 2819 Dislikes
                    </a>
                    <a href=""> | <i class="fa-book fa"></i> Ini Publisher</a>
                    <a href=""> | <i class="fa-calendar fa"></i> 2020</a>
                </div>
                <div class="media-right">
                    <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;" tabindex="-1"
                        role="button" aria-disabled="true">Pembangkit</span>
                </div>
            </div>
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                            class="media-object search-v1-avatar">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Dokumen PLN2</h4>
                    <p>Deskripsi jurnal</p>
                    <a href="">
                        <i class="icon-like icons"></i> 2819 Likes
                    </a>
                    <a href=""> |
                        <i class="icon-dislike icons"></i> 2819 Dislikes
                    </a>
                    <a href=""> | <i class="fa-book fa"></i> Ini Publisher</a>
                    <a href=""> | <i class="fa-calendar fa"></i> 2020</a>
                </div>
                <div class="media-right">
                    <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;" tabindex="-1"
                        role="button" aria-disabled="true">Niaga</span>
                </div>
            </div>

            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                            class="media-object search-v1-avatar">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Dokumen PLN2</h4>
                    <p>Deskripsi jurnal</p>
                    <a href="">
                        <i class="icon-like icons"></i> 2819 Likes
                    </a>
                    <a href=""> |
                        <i class="icon-dislike icons"></i> 2819 Dislikes
                    </a>
                    <a href=""> | <i class="fa-book fa"></i> Ini Publisher</a>
                    <a href=""> | <i class="fa-calendar fa"></i> 2020</a>
                </div>
                <div class="media-right">
                    <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;" tabindex="-1"
                        role="button" aria-disabled="true">Transmisi</span>
                </div>
            </div>

            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                            class="media-object search-v1-avatar">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Dokumen PLN2</h4>
                    <p>Deskripsi jurnal</p>
                    <a href="">
                        <i class="icon-like icons"></i> 2819 Likes
                    </a>
                    <a href=""> |
                        <i class="icon-dislike icons"></i> 2819 Dislikes
                    </a>
                    <a href=""> | <i class="fa-book fa"></i> Ini Publisher</a>
                    <a href=""> | <i class="fa-calendar fa"></i> 2020</a>
                </div>
                <div class="media-right">
                    <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;" tabindex="-1"
                        role="button" aria-disabled="true">Niaga</span>
                </div>
            </div>
        </div>
        <div class="media">
            <div class="media-left">
                <a href="#">
                    <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                        class="media-object search-v1-avatar">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Dokumen PLN2</h4>
                <p>Deskripsi jurnal</p>
                <a href="">
                    <i class="icon-like icons"></i> 2819 Likes
                </a>
                <a href=""> |
                    <i class="icon-dislike icons"></i> 2819 Dislikes
                </a>
                <a href=""> | <i class="fa-book fa"></i> Ini Publisher</a>
                <a href=""> | <i class="fa-calendar fa"></i> 2020</a>
            </div>
            <div class="media-right">
                <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;" tabindex="-1"
                    role="button" aria-disabled="true">Distribusi</span>
            </div>
        </div>


    </div>
</div>
<h5 class="mt-4 mb-2">Alerts and Callouts</h5> --}}

{{-- <div class="content">
    <div class="container">
        <div class="row">
            <!-- /.col-md-6 -->
            <div class="col-lg-12">
                <div class="card card-primary card-outline">
                <div class="callout">
                   <div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                                    class="img-fluid" width="200px" height="100px">
                            </a>
                    
                        </div>
                        <div class="media-body" style="margin-left: 20px !important">
                            <h4 class="media-heading">Dokumen PLN2</h4>
                            <p>Deskripsi jurnal</p>
                            <a href="">
                                <i class="fas fa-thumbs-up tekan"></i> 2819 Likes
                            </a>
                            <a href=""> |
                                <i class="fas fa-thumbs-down"></i> 2819 Dislikes
                            </a>
                            <a href=""> | <i class="fa-book fa"></i> Ini Publisher</a>
                            <a href=""> | <i class="fa-calendar fa"></i> 2020</a>
                    
                        </div>
                        <div class="media-right">
                            <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;" tabindex="-1" role="button"
                                aria-disabled="true">Distribusi</span>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
       
            <!-- /.col-md-6 -->
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</div> --}}
<!-- /.content -->


<div class="row mt-2">
    <div class="col-md-12">
        <div class="list-group">
            
            <div class=" card list-group-item">
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
               @foreach ($reference as $id)
                <div class="row">
                    <div class="col-auto">
                        <a href="{{route('reference.create')}}">
                            <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                                class="img-fluid" width="200px" height="100px">
                        </a>
                    </div>
                    <div class="col px-4">
                        <div>
                            <div class="float-right">
                                <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;" tabindex="-1" role="button"
                                aria-disabled="true">Distribusi</span>
                            </div>
                           
                             
                        <h4 class="media-heading">{{ $id->judul_dokumen }}</h4>
                        <p>{{$id->deskripsi_dokumen}}</p>
                         
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
            @endforeach
                <hr/>
              
            </div>
        </div>
    </div>
</div>


@endsection