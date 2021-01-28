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
                        <h3 class="card-title">Kelola Forum</h3>
                    </div>
                    <br />
    
                    {{-- <a href="{{route('user/export')}}" class="btn btn-success"><i class="far fa-file-excel"></i>
                    exel</a> --}}
                    <!-- /.card-header -->

                    <div class="card-body">
                        @include('alert.success')
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>User</th>
                                    <th>Forum</th>
                                    <th style="text-align:center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($forum as $row)
                                <tr>
                                    <td>{{ $loop->iteration + ($forum->perPage() * ($forum->currentPage() - 1)) }}
                                    </td>
                                    <td>{{$row->user->full_name}}</td>
                                    <td>{{ $row->message }}</td>
                                    <td style="text-align:center">
                                        <form method="post" action="{{ route('forum.destroy',[$row->id]) }}"
                                            onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                            @csrf
                                            {{ method_field('DELETE') }}
                                            {{-- <a class="btn btn-round btn-warning btn-md far fa-edit" href="{{ route('document.edit',[$row->id]) }}"></a>
                                            --}}
                                            <button type="submit"
                                                class="btn btn-round btn-warning fas fa-trash-alt"></i></button>
                                            {{-- <form method="post" action="">
                                                                                            @csrf
                                                                                            {{method_field('DELETE')}}
                                            <a href="" class="btn btn-round btn-warning btn-md"><i class="fa fa-edit"
                                                    data-toggle="modal" data-target="#edit"></i></a> --}}
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