@extends('layoutt.master-template')

@section('title')
Kategori
@endsection

@section('content')
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
              
               <div class="card">

                <div class="card-header">
                    <h3 class="card-title">Kategori</h3>
                </div>
                <br/>
       <div class="col-md-10 offset-md-1 ">
            <button data-target="#modal-default" data-toggle="modal" type="button"
                class="btn btn-raised btn-info"><span class="fas fa-plus-square"></span>
                Create Kategori</button>
              <a href="{{route('kategoriexport')}}" class="btn btn-success"><i class="far fa-file-excel"></i>
                exel</a>
              <button data-target="#modal-default1" data-toggle="modal" type="button" class="btn btn-raised btn-info"><span
                    class="fas fa-plus-square"></span>
                Import Data</button>
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
                        <form method="post" action="{{route('importkategori')}}" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <div class="modal-body">
                                    <label>Masukan Data</label>
                                    <input type="file" name="file" class="form-control" placeholder=" yuk masukan data" required>
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
                <div class="modal fade" id="modal-default">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Kategori</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form method="post" action="{{ route('kategori.store')}}" enctype="multipart/form-data">
                                @csrf
                            <div class="form-group">
                                <div class="modal-body">
                                    <label>Masukan Kategori</label>
                                    <input type="text" name="kategori" class="form-control" placeholder=" yuk masukan kategori" required>
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
                @foreach ($kategori as $item)
                <div class="modal fade" id="modal-default2-{{$item->id_kategori}}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Kategori</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                           <form method="POST" action="{{ url('/edit/'. $item->id_kategori) }}">
                                @csrf
                               
                            <div class="form-group">
                                <div class="modal-body">
                                    <label>Edit Kategori</label>
                                    <input type="text" name="kategori" class="form-control" placeholder=" yuk masukan kategori" required value="{{$item->kategori}}">{{old($item->kategori)}}
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
                @endforeach
              

               
                <!-- /.card-header -->
             
                <div class="card-body">
                    @include('alert.success')
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kategori</th>
                            <th style="text-align:center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($kategori as $row)
                        <tr>
                            <td>{{ $loop->iteration + ($kategori->perPage() * ($kategori->currentPage() - 1)) }}
                            </td>
                            <td>{{ $row->kategori }}</td>
                            <td style="text-align:center">
                               <form method="post" action="{{ route('kategori.destroy',[$row->id_kategori]) }}"
                                    onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                    @csrf
                                    {{ method_field('DELETE') }}
                                <a href="" data-target="#modal-default2-{{$row->id_kategori}}" data-toggle="modal" type="button" class="btn btn-round btn-success btn-md far fa-edit"></span></a>
                                    {{-- <a class="btn btn-round btn-warning btn-md far fa-edit" href="{{ route('document.edit',[$row->id]) }}"></a> --}}
                                    <button type="submit" class="btn btn-round btn-warning fas fa-trash-alt"></i></button>
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
                
                </div>
                     
                </div>
                <!-- /.card-body -->
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
    "paging": true,
    "lengthChange": true,
    "searching": true,
    "ordering": true,
    "info": true,
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