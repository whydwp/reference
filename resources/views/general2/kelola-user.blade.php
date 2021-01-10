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
            <a href="{{ route('document.create') }}" style=" margin-left: 10px !important;" class="btn btn-success"><span
                    class=" fas fa-plus-square"></span>
                Create</a>
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
                            <th>User Entity</th>
                            <th>user key</th>
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
                            <td>{{ $row->user_entity_id}}</td>
                            <td>{{ $row->user_key}}</td>
                            <td>
                                <form method="post" action="{{ route('document.destroy',[$row->id]) }}"
                                    onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                    @csrf
                                    {{ method_field('DELETE') }}
                                    <a class="btn btn-round btn-warning btn-md fa fa-edit" href=""></a>
                                    <button type="submit" class="btn btn-round btn-danger fa fa-trash"></button>
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