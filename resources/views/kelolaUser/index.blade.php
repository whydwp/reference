@extends('layoutt.master-template')

@section('title')
Kelola User
@endsection

@section('content')
<div class="card">


    <div class="card-header">
        <h3 class="card-title">Kelola User</h3>
    </div>
    <br>
    <div class="col-md-10 offset-md-1 ">

        <button data-target="#modal-default" data-toggle="modal" type="button" class="btn btn-raised btn-info"><span
                class="fas fa-plus-square"></span>
            Create User</button>
        {{-- <a href="{{ route('document.create') }}" class="btn btn-success"><span class=" fas fa-plus-square"></span>
        Create</a> --}}
    </div>
    <br />
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
                    {{-- <form method="post" action="{{ route('kelola-user.store')}}" enctype="multipart/form-data">
                    @csrf --}}
                    <div class="form-group">
                        <label>Nama</label>
                        <input type="text" name="full_name" id="full_name" class="form-control"
                            placeholder=" yuk masukan nama" required value="{{old('full_name')}}">
                        <label>Email</label>
                        <input type="text" name="email" class="form-control" placeholder=" yuk masukan email"
                            value="{{old('email')}}" required>
                        <label>Username</label>
                        <input type="text" name="username" class="form-control" placeholder=" yuk masukan username"
                            required value="{{old('username')}}">
                        <label>Level</label>
                        <select id="user_type_id" name="user_type_id" class="form-control">
                            @foreach($data_user as $row )
                            <option value="{{ $row->kelolaUser->type }}">{{ $row->kelolaUser->type }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>


                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" href="">Save changes</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        </form>
        <!-- /.modal-dialog -->
    </div>




    <!-- /.card-header -->
    <div class="card-body">
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
                        <form method="post" action="{{ route('document.destroy',[$row->id]) }}"
                            onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                            @csrf
                            {{ method_field('DELETE') }}
                            <a class="btn btn-round btn-warning btn-md fa fa-edit" href=""></a>
                            <button type="submit" class="btn btn-round btn-danger fas fa-trash-alt"></button>
                            {{-- <form method="post" action="">
                                                            @csrf
                                                            {{method_field('DELETE')}}
                            <a href="" class="btn btn-round btn-warning btn-md"><i class="fa fa-edit"
                                    data-toggle="modal" data-target="#edit"></i></a> --}}
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

<!-- custom -->
<script>
    $(function () {
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": true,
      "responsive": true,
    });
  });
</script>
<!-- end: Javascript -->

@endsection