@extends('layoutt.master-template')

@section('title')
Kelola User
@endsection

@section('content')
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">

                <div class="card">

                    <div class="card-header">
                        <h3 class="card-title">Kelola User</h3>
                    </div>
                    <br />
                    <div class="col-md-10 offset-md-1 ">
                        @can("user-create")

                            <a href="{{ route('user.create') }}" class="btn btn-success"><span
                                    class=" fas fa-plus-square"></span>
                                Tambah User</a>
                            <br>
                            <br>
                        @endcan

                        @can("user-import-export")
                            <a href="{{ route('export') }}" class="btn btn-success"><i class="far fa-file-excel"></i>
                                Export exel</a>
                            <button data-target="#modal-default" data-toggle="modal" type="button"
                                class="btn btn-raised btn-info"><span class="fas fa-plus-square"></span>
                                Import Data</button>
                        @endcan
                    </div>

                    <br />
                    {{-- <a href="{{route('user/export')}}" class="btn btn-success"><i class="far fa-file-excel"></i>
                    exel</a> --}}
                    <div class="modal fade" id="modal-default">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Import</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form method="post" action="{{route('import')}}" enctype="multipart/form-data">
                                    @csrf

                                    <div class="form-group">
                                        <div class="modal-body">
                                            <label>Masukan Data</label>
                                            <input type="file" name="file" class="form-control"
                                                placeholder=" yuk masukan data" required>
                                            <span> NB :
                                                <br>
                                                hindari penulisan header
                                                <br>
                                                jika level gunakan angka
                                                <br>
                                                1 untuk updl
                                                <br>
                                                2 untuk pusdiklat
                                                <br>
                                                3 untuk siswa
                                            </span>
                                        </div>
                                        <div class="modal-footer justify-content-between">
                                            <button type="button" class="btn btn-default"
                                                data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-success btn-xl"><i
                                                    class="far fa-save"></i> Simpan</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>

                    <div class="row">
                        <div class="col-md-10 offset-md-1">
                            <div class="row">
                                <div class="col-md-6">
                                    <form method="get" action="">
                                        <div class="form-group">
                                            <label>Level</label>
                                            <select id="user_type_id" name="user_type_id"
                                                class="custom-select select2bs4" style="width: 50%;">
                                                <option selected disabled>Level</option>
                                                @foreach($roles as $row)
                                                    <option
                                                        @if( Request::has("role") && Request::get("role") == $row->name ) selected @endif value="{{ $row->name }}">{{ $row->name }}</option>
                                                @endforeach
                                            </select>
                                            <button type="submit" class="btn btn-lg btn-default">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>

                                    </form>
                                </div>
                                <div class="col-md-12">
                                    <form method="get" action="{{route('user.index')}}">
                                        <div class="form-group">
                                            <label for="keyword">Search</label>
                                            <div class="input-group input-group-lg">
                                                <input type="search" class="form-control form-control-lg" name="keyword"
                                                    value="{{Request::get('keyword')}}" value="keyword"
                                                    placeholder="Nama User">
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
                        </div>


                        <!-- /.card-header -->

                        <div class="card-body">
                            @if(Request::get('keyword'))
                            <div class="alert alert-success alert-block">
                                Hasil Pencarian Dokumen dengan Keyword : <b>{{ Request::get('keyword') }}</b>
                            </div>
                            @endif
                            @if(Request::get('role'))
                            <div class="alert alert-success alert-block">
                                Hasil Pencarian User dengan Kategori : <b>{{ Request::get('role') }}</b>
                            </div>
                            @endif
                            @include('alert.success')
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Email</th>
                                        <th>Username</th>
                                        <th>Level</th>
                                        <th style="text-align:center">action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data_user as $row)
                                    <tr>
                                        <td>{{ $loop->iteration + ($data_user->perPage() * ($data_user->currentPage() - 1)) }}
                                        </td>
                                        <td>{{ $row->full_name }}</td>
                                        <td>{{ $row->email }}</td>
                                        <td>{{ $row->username }}</td>
                                        <td>{{ $row->roles->pluck("name")->implode(", ")}}</td>
                                        <td style="text-align:center">
                                            @can("user-edit")
                                                <a class="btn btn-round btn-success btn-md far fa-edit"
                                                 href="{{ route('user.edit',[$row->id]) }}"></a>
                                            @endcan
                                            @can("user-delete")
                                                <form method="post" action="{{ route('user.destroy',[$row->id]) }}"
                                                    onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                                    @csrf
                                                    {{ method_field('DELETE') }}

                                                    <button type="submit"
                                                        class="btn btn-round btn-warning fas fa-trash-alt"></i></button>
                                                </form>
                                            @endcan

                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>

                            </table>
                            <tfoot>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                        {{ $data_user->appends(Request::all())->links() }}
                                    </ul>
                                </nav>
                            </tfoot>
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
        $('#example1').DataTable({
            "paging": false,
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