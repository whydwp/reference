@extends('layoutt.master-template')

@section('title')
Document
@endsection

@section('content')
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
              
               <div class="card">

                <div class="card-header">
                    <h3 class="card-title">Kelola Document</h3>
                </div>
                <br/>
       <div class="col-md-10 offset-md-1 ">
                <a href="{{ route('doc.create') }}" class="btn btn-primary"><span class=" fas fa-plus-square"></span>
                    Create</a>
                </div>
                <br>
       <div class="col-md-10 offset-md-1 ">
                {{-- <button data-target="#modal-default1" data-toggle="modal" type="button" class="btn btn-raised btn-info"><span
                        class="fas fa-plus-square"></span>
                    Import Data</button> --}}
                    <a href="{{ route('report') }}" class="btn btn-success"><i class="far fa-file-excel"></i>
                        Export exel</a>
                </div>
                
                <br />
                {{-- <a href="{{route('user/export')}}" class="btn btn-success"><i class="far fa-file-excel"></i>
                exel</a> --}}
                <div class="modal fade" id="modal-default1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Import</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form method="post" action="{{route('importdokumen')}}" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <div class="modal-body">
                                        <label>Masukan Data</label>
                                        <input type="file" name="data_dokument" class="form-control" placeholder=" yuk masukan data" required>
                                    </div>
                                    <div class="modal-footer justify-content-between">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-success btn-xl"><i class="far fa-save"></i> Simpan</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
      
        <br/>
              
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="row">
                            <div class="col-md-6">
                                <form method="get" action="{{route('doc.index')}}">
                                <div class="form-group">
                                    <label>Cari Kategori</label>
                                    <select id="id_kategori" name="id_kategori" class="custom-select select2bs4" style="width: 50%;">
                                        <option selected disabled>Kategori</option>
                                        @foreach($kategori as $row)
                                        <option value="{{ $row->id_kategori }}">{{ $row->kategori }}</option>
                                        @endforeach
                                    </select>
                                  <button type="submit" class="btn btn-lg btn-default">
                                    <i class="fa fa-search"></i>
                                </button>
                                </div>
                                
                                </form>
                            </div>
                           
                        </div>
                        <form method="get" action="{{route('doc.index')}}">
                        <div class="form-group">
                            <label for="keyword" class="col-sm-2 control-label">Search</label>
                            <div class="input-group input-group-lg">
                                <input type="search" class="form-control form-control-lg" name="keyword" value="{{Request::get('keyword')}}"
                                    value="Lorem ipsum">
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

               
                <!-- /.card-header -->
             
                <div class="card-body">
                    @if(Request::get('keyword'))
                    <div class="alert alert-success alert-block">
                        Hasil Pencarian Dokumen dengan Keyword : <b>{{ Request::get('keyword') }}</b>
                    </div>
                    @endif
                    
                    @if(Request::get('id_kategori'))
                    <div class="alert alert-lightblue alert-block">
                        Hasil Pencarian Dokumen dengan Kategori : <b>{{ $nama_kategori }}</b>
                    </div>
                    @endif
                    @include('alert.success')
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Tahun</th>
                            <th>jumlah halaman</th>
                            <th>Publisher</th>
                            <th>Kategori</th>
                            <th>Action</th>
                
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data_dokument as $row)
                        <tr>
                            <td>{{ $loop->iteration + ($data_dokument->perPage() * ($data_dokument->currentPage() - 1)) }}
                            </td>
                            <td>{{ str_limit($row->judul_dokumen , 50, ' ...') }}</td>
                            <td>{{ $row->tahun }}</td>
                            <td>{{ $row->jumlah_halaman }}</td>
                            <td>{{ $row->publisher }}</td>
                            <td>{{ $row->kategori->kategori}}</td>
                            <td>
                                <form method="post" action="{{ route('doc.destroy',[$row->id]) }}"
                                    onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                    @csrf
                                    {{ method_field('DELETE') }}
                                    
                                    <a class="btn btn-round btn-info btn-md far fa-edit" href="{{ route('doc.edit',[$row->id]) }}"></a>
                                    <button type="submit" class="btn btn-round btn-warning fas fa-trash-alt"></i></button>
                                    <a href="{{route('previewdoc',[$row->id])}}" class="btn bg-gradient-success far fa-eye"></a>
                                    {{-- <form method="post" action="">
                                                            @csrf
                                                            {{method_field('DELETE')}}
                                    <a href="" class="btn btn-round btn-warning btn-md"><i class="fa fa-edit" data-toggle="modal"
                                            data-target="#edit"></i></a> --}}
                                            </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                <br>
                <tfoot >
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                           {{ $data_dokument->appends(Request::all())->links() }}
                        </ul>
                    </nav>
                 </tfoot>
                     
                </div>
                <!-- /.card-body -->
            </div>
</div>
        </div>
    <!-- /.col -->
</div>
    <!-- /.row -->
</div>
</div>
    <!-- /.container-fluid -->
</section>
    <!-- /.content -->


<script>
    $(function () {
    $('#example2').DataTable({
    "paging": false,
    "lengthChange": true,
    "searching": false,
    "ordering": true,
    "info": false,
    "autoWidth": false,
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