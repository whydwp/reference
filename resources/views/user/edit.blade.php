@extends('layoutt.master-template')

@section('title')
Edit User
@endsection

@section('content')

<div class="col-md-12">
    <!-- general form elements disabled -->
    <!-- /.card-header -->
    <div class="card-body">
        @if($errors->any())
        <ul class="alert alert-danger">
            @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
        @endif
        <form class="form-horizontal" method="post" action="{{ route('user.update',[$user->id]) }}"
            enctype="multipart/form-data">
            @csrf
            {{ method_field('PUT') }}
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="full_name">Nama</label>
                        <input name="full_name" id="full_name" class="form-control" placeholder="masukan nama"
                            value="{{$user->full_name}}">
                    </div>
                </div>
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="email">Email </label>
                        <input name="email" id="email" class="form-control" placeholder="masukan email"
                            value="{{$user->email}}">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password" class="form-control"
                            placeholder="masukan Password" >
                    </div>

                </div>
                <div class="col-sm-4">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="username">username</label>
                        <input name="username" id="username" class="form-control" placeholder="masukan username"
                            value="{{$user->username}}">
                    </div>

                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="role_id">Level</label>
                        <div class="input-group">
                        <select id="role_id" name="role_id" class="form-control">
                            @foreach($roles as $row )
                                <option value="{{ $row->name }}" {{ in_array($row->name, $userRole ) ? "selected" : '' }}>
                                    {{ $row->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <!-- text input -->
                </div>
            </div>
        <div class="col-md-12">
            <div class="card card-danger">
                <div class="card-header">
                    <h3 class="card-title">Setting Hak Akses</h3>
                </div>
                <div class="card-body">
                    <div class="col-sm-12">
                        <div class="form-check" >
                                @foreach($permission as $value)
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <input style="margin-left:4px; margin-right:5px;" class="form-check-input"type="checkbox" value="{{ $value->id }}" id="{{ $loop->iteration }}" name="permission[]" {{ in_array($value->name, $userPermission) ? "checked" : ''  }}>
                                &nbsp;&nbsp;
                                <label style="margin-left:18px; margin-right:1.8px;" class="form-check-label" for="{{ $loop->iteration }}">
                                    {{ $value->name }}
                                </label>
                                @endforeach
                            </div>
                        </div>
                </div>
                <!-- /.card-body -->
            </div>
        </div>
    </div>
            <div class="form-group">
                <a href="{{route('user.index')}}" class="btn btn-warning btn-xl"><span class="fas fa-backward"></span> Kembali</a>
                <button type="submit" class="btn btn-success btn-xl">Simpan</button>

            </div>
        </form>

    </div>

</div>


@endsection