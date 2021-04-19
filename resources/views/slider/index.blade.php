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
                    <br />
                    <div class="col-md-10 offset-md-1 ">
                        
                        <a href="" data-target="#modal-default" data-toggle="modal"class="btn btn-primary"><span
                                class=" fas fa-plus-square"></span>
                            Tambahkan Dokumen</a>
                    </div>
                    <br />
                    <div class="modal fade" id="modal-default">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Gambar</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form method="post" action="{{ route('gambar.store')}}" enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group">
                                        <div class="modal-body">
                                            <label>Masukan Gambar</label><p></p>
                                            <img id="gambar_load" width="100%" height="100%" />
                                            <p >file png,jpg,jpeg max 5 Mb</p>
                                            <input id="preview_gambar" type="file" name="gambar" class="form-control" placeholder=" yuk masukan gambar"
                                                required>
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

                    @foreach ($slider as $item)
                    <div class="modal fade" id="modal-default2-{{$item->id}}">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Kategori</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form method="POST" action="{{ url('/edit/'. $item->id) }}">
                                    @csrf
                    
                                    <div class="form-group">
                                        <div class="modal-body">
                                            <label for="cover" class="col-sm-12 control-label">Edit Gambar</label>
                                            <div class="col-sm-12 embed-responsive embed-responsive-4by3">
                                                <img class="embed-responsive-item" src="{{ asset('uploads/'.$item->gambar) }}" class="img-thumbnail" width="80%">
                                            </div>
                                            <label>Edit Gambar</label>
                                            <input type="file" name="gambar" class="form-control" placeholder=" yuk masukan kategori"
                                                required value="{{$item->gambar}}">{{old($item->gambar)}}
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
                                    <th>Gambar</th>
                                    <th style="text-align:center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($slider as $row)
                                <tr>
                                    <td>{{ $loop->iteration + ($slider->perPage() * ($slider->currentPage() - 1)) }}
                                    </td>
                                   <td><img class="img-thumbnail" width="100px" src="{{ asset('uploads/'.$row->gambar) }}" /></td>
                                    <td style="text-align:center">
                                        <form method="post" action="{{ route('gambar.destroy',[$row->id]) }}"
                                        onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                        @csrf
                                        {{ method_field('DELETE') }}
                                        <a href="{{ route('gambar.edit',[$row->id]) }}" 
                                            class="btn btn-round btn-success btn-md far fa-edit"></span></a>
                                        <button type="submit" class="btn btn-round btn-warning fas fa-trash-alt"></i></button>
                                        </form>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <tfoot>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    {{ $slider->appends(Request::all())->links() }}
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
    function bacagambar(input) {
          if (input.files && input.files[0]) {
              var reader = new FileReader();
              reader.onload = function(e) {
                  $('#gambar_load').attr('src', e.target.result)
              }
              reader.readAsDataURL(input.files[0]);
          }
      }
      $("#preview_gambar").change(function() {
          bacagambar(this);
      });
</script>
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