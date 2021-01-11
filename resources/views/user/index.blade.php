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
                       <a href="{{ route('user.create') }}" class="btn btn-success"><span class=" fas fa-plus-square"></span>
                            Create</a>
                    </div>
                    <br />
                   
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div class="row">
                <div class="col-md-6">
                    <form method="get" action="">
                        <div class="form-group">
                            <label>Level</label>
                        <select id="user_type_id" name="user_type_id" class="custom-select select2bs4" style="width: 50%;">
                            <option selected disabled>Level</option>
                            @foreach($kelola as $row)
                            <option value="{{ $row->user_type_id }}">{{ $row->type }}</option>
                            @endforeach
                            </select>
                            <button type="submit" class="btn btn-lg btn-default">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>

                    </form>
                </div>

            </div>
    </div>
  

                    <!-- /.card-header -->

                   <div class="card-body">
                
                    @if(Request::get('user_type_id'))
                    <div class="alert alert-success alert-block">
                        Hasil Pencarian User dengan Kategori : <b>{{ $nama_type }}</b>
                    </div>
                    @endif
                    @include('alert.success')
                    <table id="example2" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama</th>
                                <th>Email</th>
                                <th>Username</th>
                                <th>Level</th>
                                <th>action</th>
                
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data_user as $row)
                            <tr>
                                <td>{{ $loop->iteration + ($data_user->perPage() * ($data_user->currentPage() - 1)) }}</td>
                                <td>{{ $row->full_name }}</td>
                                <td>{{ $row->email }}</td>
                                <td>{{ $row->username }}</td>
                                <td>{{ $row->kelolaUser->type}}</td>
                                <td>
                                    <form method="post" action="{{ route('user.destroy',[$row->id]) }}"
                                        onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                        @csrf
                                        {{ method_field('DELETE') }}
                
                                        <a class="btn btn-round btn-warning btn-md far fa-edit"
                                            href="{{ route('user.edit',[$row->id]) }}"></a>
                                        <button type="submit" class="btn btn-round btn-danger fas fa-trash-alt"></i></button>
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