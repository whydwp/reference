@extends('layoutt.master-template')

@section('title')
    Kategori
@endsection

@section('content')

<div class="row">
    <div class="col-md-10 offset-md-1">
        <div class="row">
            <div class="col-4">
                <div class="form-group">
                    <label>Sort Order:</label>
                    <select class="select2" style="width: 100%;">
                        <option selected>ASC</option>
                        <option>DESC</option>
                        <option>Oprisonal</option>
                        <option>diskending</option>
                    </select>
                </div>
            </div>
            <div class="col-4">
                <div class="form-group">
                    <label>Order By:</label>
                    <select class="select2" style="width: 100%;">
                        <option selected>Title</option>
                        <option>Date</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group input-group-lg">
                <input type="search" class="form-control form-control-lg" placeholder="Type your keywords here"
                    value="Lorem ipsum">
                <div class="input-group-append">
                    <button type="submit" class="btn btn-lg btn-default">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
          <div class="row mt-2">
            <div class="col-md-12">
                <div class="list-group">
                    <div class=" card list-group-item">
                        <div class="row">
                            <div class="col-auto">
                                <a href="#">
                                    <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                                        class="img-fluid" width="200px" height="100px">
                                </a>
                            </div>
                            <div class="col px-4">
                                <div>
                                    <div class="float-right">
                                        <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;"
                                            tabindex="-1" role="button" aria-disabled="true">Distribusi</span>
                                    </div>
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
                            </div>
                        </div>
                    </div>
                    <div class=" card list-group-item">
                        <div class="row">
                            <div class="col-auto">
                                <a href="#">
                                    <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                                        class="img-fluid" width="200px" height="100px">
                                </a>
                            </div>
                            <div class="col px-4">
                                <div>
                                    <div class="float-right">
                                        <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;"
                                            tabindex="-1" role="button" aria-disabled="true">Distribusi</span>
                                    </div>
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
                            </div>
                        </div>
                    </div>
                    <div class=" card list-group-item">
                        <div class="row">
                            <div class="col-auto">
                                <a href="#">
                                    <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                                        class="img-fluid" width="200px" height="100px">
                                </a>
                            </div>
                            <div class="col px-4">
                                <div>
                                    <div class="float-right">
                                        <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;"
                                            tabindex="-1" role="button" aria-disabled="true">Distribusi</span>
                                    </div>
                                    <h4 class="media-heading">Dokumen PLN2</h4>
                                    <p href="">Deskripsi jurnal</p>
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
                    <div class=" card list-group-item">
                        <div class="row">
                            <div class="col-auto">
                                <a href="#">
                                    <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                                        class="img-fluid" width="200px" height="100px">
                                </a>
                            </div>
                            <div class="col px-4">
                                <div>
                                    <div class="float-right">
                                        <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;"
                                            tabindex="-1" role="button" aria-disabled="true">Distribusi</span>
                                    </div>
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
                            </div>
                        </div>
                    </div>
                    <div class=" card list-group-item">
                        <div class="row">
                            <div class="col-auto">
                                <a href="#">
                                    <img src="https://imgv2-2-f.scribdassets.com/img/document/351426960/298x396/24b3c2198e/1590584889?v=1"
                                        class="img-fluid" width="200px" height="100px">
                                </a>
                            </div>
                            <div class="col px-4">
                                <div>
                                    <div class="float-right">
                                        <span href="#" class="btn btn-primary btn-lg disabled" style="color:#d43636;"
                                            tabindex="-1" role="button" aria-disabled="true">Distribusi</span>
                                    </div>
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
<script>
    $(function () {
      $('.select2').select2()
    });
</script>
@endsection