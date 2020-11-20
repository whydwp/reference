@extends('layoutt.master-template')

@section('content-title')
Document
@endsection

@section('content')


<div class="box-header with-border">


    <div class="col-md-6">
        <button data-target="#add" data-toggle="modal" type="button" style="margin-left: 10px !important;"
            class="btn btn-raised btn-default"><span class=" glyphicon glyphicon-plus"></span>
            kapasitas Documents</button>
    </div>
    <div class="col-md-6">
        <a href="{{ route('add') }}" style=" margin-left: 10px !important;" class="btn btn-success"><span
                class=" glyphicon glyphicon-plus" "></span>
            Create</a>
    </div>

    <div class=" col-md-12" style="margin-bottom: 20px !important;">
                <form method="get" action="">
                    <div class="form-group" style="margin-top: 40px !important;">
                        <label for="keyword" class="col-lg-2 control-label">Search By Name</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="keyword" name="keyword" value="">
                        </div>
                        <div class="col-sm-4">
                            <select id="kd_kategori" name="kd_kategori" class="form-control">
                                <option value="">Tahun </option>
                                <option value="">kategori </option>
                                <option value="">penerbit </option>
                            </select>
                        </div>
                        <div class="col-sm-2">
                            <button type="submit" class="btn  btn-3d btn-primary"><span
                                    class="glyphicon glyphicon-search"></span></button>
                        </div>
                    </div>
                </form>
    </div>

</div>



<div class="responsive-table">
    <table id="datatables-example" class="table table-striped table-bordered" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th>No</th>
                <th>Judul</th>
                <th>Tahun</th>
                <th>Publisher</th>
                <th>Kategori</th>
                <th>action</th>

            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-success"><span class=" "></span>
                        Penulis</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-success"><span class=" "></span>
                        Penerbit</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>3</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-info"><span class=" "></span>
                        Tahun</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-info"><span class=" "></span>
                        Penulis</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>5</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-primary"><span class=" "></span>
                        Penerbit</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>6</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-primary"><span class=" "></span>
                        Tahun</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>7</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-primary"><span class=" "></span>
                        Penulis</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>8</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-default"><span class=" "></span>
                        Penerbit</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>9</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-default"><span class=" "></span>
                        Tahun</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>10</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-default"><span class=" "></span>
                        Penulis</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>11</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-danger"><span class=" "></span>
                        Penerbit</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>
            <tr>
                <td>12</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td><a class="btn btn-gradient btn-danger"><span class=" "></span>
                        Tahun</a></td>
                <td>
                    <button class=" btn btn-round btn-warning btn-md">
                        <i class="fa fa-edit" data-toggle="modal" data-target="#edit"></i>
                    </button>
                    <button class="btn btn-round btn-danger btn-md">
                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete"></i>
                    </button>
                </td>
            </tr>

        </tbody>
    </table>
    <nav>
        <ul class="pagination">

            <li class="page-item disabled" aria-disabled="true" aria-label="« Previous">
                <span class="page-link" aria-hidden="true">‹</span>
            </li>

            <li class="page-item active" aria-current="page"><span class="page-link">1</span></li>
            <li class="page-item"><a class="page-link" href="">2</a>
            </li>


            <li class="page-item">
                <a class="page-link" href="" rel="next" aria-label="Next »">›</a>
            </li>
        </ul>
    </nav>
</div>

<div class="modal fade" id="add">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Kapasitas</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>Masukan Kapasitas</label>
                    <input type="text" name="kapasitas" class="form-control" placeholder=" yuk masukan kapasitas"
                        required>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
            </div>
        </div><!-- /.modal-content -->
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

@include('layoutt.more')

<!-- custom -->
{{-- <script type="text/javascript">
    $(document).ready(function(){
    $('#datatables-example').DataTable();
  });
</script> --}}
<!-- end: Javascript -->

@endsection