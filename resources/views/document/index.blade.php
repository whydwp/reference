@extends('layoutt.master-template')

@section('title')
Document
@endsection

@section('content')

<div class="card">
                <div class="card-header">
                    <h3 class="card-title">Kelola Document</h3>
                </div>
                <br/>
       <div class="col-md-10 offset-md-1 ">
            <button data-target="#modal-default" data-toggle="modal" type="button"
                class="btn btn-raised btn-default"><span class="fas fa-plus-square"></span>
                kapasitas Documents</button>
                <a href="{{ route('document.create') }}" class="btn btn-success"><span class=" fas fa-plus-square"></span>
                    Create</a>
        </div>
        <br/>
                <div class="modal fade" id="modal-default">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Kapasitas</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Masukan Kapasitas</label>
                                    <input type="text" name="kapasitas" class="form-control" placeholder=" yuk masukan kapasitas" required>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
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
                                        <option  selected>Title</option>
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

               
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Tahun</th>
                            <th>jumlah halaman</th>
                            <th>Publisher</th>
                            <th>Kategori</th>
                            <th>action</th>
                
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data_dokument as $row)
                        <tr>
                            <td>{{ $loop->iteration + ($data_dokument->perPage() * ($data_dokument->currentPage() - 1)) }}
                            </td>
                            <td>{{ $row->judul_dokumen }}</td>
                            <td>{{ $row->tahun }}</td>
                            <td>{{ $row->jumlah_halaman }}</td>
                            <td>{{ $row->publisher }}</td>
                            <td>{{ $row->kategori->kategori}}</td>
                            <td>
                                <form method="post" action="{{ route('document.destroy',[$row->id]) }}"
                                    onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                    @csrf
                                    {{ method_field('DELETE') }}
                                    <a class="btn btn-round btn-warning btn-md fa fa-edit" href=""></a>
                                    <button type="submit" class="btn btn-round btn-danger fas fa-trash-alt"></i></button>
                                    {{-- <form method="post" action="">
                                                            @csrf
                                                            {{method_field('DELETE')}}
                                    <a href="" class="btn btn-round btn-warning btn-md"><i class="fa fa-edit" data-toggle="modal"
                                            data-target="#edit"></i></a> --}}
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                   
                </table>
                {{-- <tfoot>
                    <tr>
                        <td>
                            {{ $data_dokument->appends(Request::all())->links() }}
                        </td>
                    </tr>
                </tfoot> --}}
                </div>
                <!-- /.card-body -->
            </div>


<script>
    $(function () {
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": true,
      "responsive": true,
    });
  });
</script>
<script>
    $(function () {
      $('.select2').select2()
    });
</script>
<!-- custom -->
{{-- <script type="text/javascript">
    $(document).ready(function(){
    $('#datatables-example').DataTable();
  });
</script> --}}
<!-- end: Javascript -->

@endsection