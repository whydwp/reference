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
                    <div class="row">
                        @foreach($permission as $value)
                        <div class="col-md-3">
                            <div class="checkbox-single">
                                <label>
                                    {{ Form::checkbox('permission[]', $value->id, in_array($value->name, $userPermission) ? true : false, array('class' => 'name')) }}
                                    {{ $value->name }}
                                </label>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
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