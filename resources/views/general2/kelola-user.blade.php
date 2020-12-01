@extends('layoutt.master-template')

@section('title')
Kelola User
@endsection

@section('content')

<div class="col-md-12">
    <a href="{{ route('document.create') }}" style=" margin-left: 10px !important;" class="btn btn-success"><span
            class=" glyphicon glyphicon-plus" "></span>
            Create</a>
    </div>
    <hr>

<div class=" responsive-table">
            <table id="datatables-example" class="table table-striped table-bordered" width="100%" cellspacing="0">
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
                                <a href="" class="btn btn-round btn-warning btn-md"><i class="fa fa-edit"
                                        data-toggle="modal" data-target="#edit"></i></a> --}}
                        </td>
                    </tr>
                    @endforeach
                </tbody>

            </table>
</div>



<!-- custom -->
<script type="text/javascript">
    $(document).ready(function(){
    $('#datatables-example').DataTable();
  });
</script>
<!-- end: Javascript -->

@endsection