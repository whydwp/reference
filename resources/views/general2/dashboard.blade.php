@extends('layoutt.master-template')

@section('title')
Dashboard
@endsection

@section('content')



<div class="content">
    <div class="container">
        <div class="row">
        <!-- <h6 class="media-heading">aaaa</h6> -->
        @foreach($datas as $datas)
            <div class="col-lg-4">
                <div class="card">
                    <a href="{{ route('kategori', ['id' => $datas->id_kategori]) }}">
                        <div class="card-body">
                            <img widht="200px" class="img-fluid"
                                src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                            <h3>{{$datas->kategori}}</h3>

                            <div class="panel-body">
                                <div class="media">
                                    <div class="media-body">
                                        <h6 class="media-heading">Jumlah Dokumen : {{$datas->jumlah_dokumen}}</h6>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-body">
                                        <h6 class="media-heading">Likes : {{$datas->jumlah_like}}</h6>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-body">
                                        <h6 class="media-heading">Dislike : {{$datas->jumlah_dislike}}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        @endforeach
        </div>
    </div>
=======

<!-- Content Header (Page header) -->
{{-- @foreach ($dashboard as $item) --}}

<div class="content" >
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                        <hr>
                       <a  tabindex="-1"
                                    role="button" aria-disabled="true"class="btn btn-info ">Manajemen Project, Enjiniring dan Kontruksi</a>
                      
                            

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                      <hr>
                        <span href="#" class="btn-info btn-lg disabled" style="color:#ffffff;" role="button" aria-disabled="true">Tranmisi</span>
                        <hr>

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                        <hr>
                        <span href="#" class="btn-info btn-lg disabled" style="color:#ffffff;" role="button" aria-disabled="true">Niaga dan Manajemen Pelanggan</span>
                        <hr>
                         

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                        <hr>
                        <span href="#" class="btn-info btn-lg disabled" style="color:#ffffff;" role="button" aria-disabled="true">Sertifikasi</span>
                        <hr>
                           

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                        <hr>
                        <span href="#" class="btn-info btn-lg disabled" style="color:#ffffff;" role="button"
                            aria-disabled="true">K2, K3, Keamanan dan lingkungan</span>
                        <hr>
                           

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                       <hr>
                    <span href="#" class="btn-info btn-lg disabled" style="color:#ffffff;" role="button" aria-disabled="true">Pembangkit</span>
                    <hr>

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.col-md-6 -->

            <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
{{-- @endforeach --}}
{{-- <div class="d-block col-2 mt-10">{{ $dashboard->links() }}</div> --}}


<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                        <h3>Penelitian dan Pengembangan</h3>

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                        <h3>Pembelejaran</h3>

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                        <h3>Peralatan Ketenagalistrikan</h3>

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                        <h3>Supply Chain Management</h3>

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                           <hr>
                       <span href="#" class="btn-info btn-lg disabled" style="color:#ffffff;"  role="button"
                            aria-disabled="true">Supply Chain Management</span>
                          <hr>
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <img widht="200px" class="img-fluid"
                            src="https://www.visioner.id/wp-content/uploads/2016/07/Pembangkit-Listrik-K3.jpg" alt="">
                        <h3>distribusi</h3>

                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Jumlah Dokumen : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Likes : 12345</h6>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body">
                                    <h6 class="media-heading">Dislike : 12345</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.col-md-6 -->

            <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
>>>>>>> 0efec93caf7411c630bdc58bdcb020d07d2d9526
</div>




@endsection
