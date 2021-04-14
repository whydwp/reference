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
                        <a href="{{ route('gambar.create') }}" class="btn btn-primary"><span
                                class=" fas fa-plus-square"></span>
                            Tambahkan Dokumen</a>
                    </div>
                    <br />


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
                                        <a href="" data-target="#modal-default2-{{$row->id}}" data-toggle="modal" type="button"
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