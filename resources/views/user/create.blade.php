@extends('layoutt.master-template')

@section('title')
Input User
@endsection

@section('content')

<div class="col-md-12">
    <!-- general form elements disabled -->
    <!-- /.card-header -->
    <div class="card-body">
        @include('sweetalert::alert')
        <form method="post" action="{{ route('user.store')}}" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="full_name">Nama</label>
                        <input name="full_name" id="full_name"
                            class="form-control @error('full_name') is-invalid @enderror" placeholder="masukan nama"
                            value="{{old('full_name')}}">
                        @error('full_name')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="email">Email</label>
                        <input name="email" id="email" class="form-control @error('email') is-invalid @enderror"
                            placeholder="masukan email" value="{{old('email')}}">
                        @error('email')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password"
                            class="form-control @error('password') is-invalid @enderror" placeholder="masukan Password"
                            value="{{old('password')}}">
                        @error('password')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>

                </div>
                <div class="col-sm-4">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="username">username</label>
                        <input name="username" id="username"
                            class="form-control @error('username') is-invalid @enderror" placeholder="masukan username"
                            value="{{old('username')}}">
                        @error('username')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>

                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="user_type_id">Level</label>
                        <select id="role_id" name="role_id" class="form-control">
                            @foreach($roles as $row )
                            <option value="{{ $row->name }}">
                                {{ $row->name }}
                            </option>
                            @endforeach
                        </select>
                        @error('role_id')
                            <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                    <!-- text input -->
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
                                        <input style="margin-left:4px; margin-right:5px;" class="form-check-input"type="checkbox" value="{{ $value->id }}" id="{{ $loop->iteration }}" name="permission[]">
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
                <a href="{{route('user.index')}}" class="btn btn-warning btn-xl "><span class="fas fa-backward"></span>
                    Kembali</a>
                <button type="submit" class="btn btn-success btn-xl"><i class="far fa-save"></i> Simpan</button>

            </div>
        </form>

    </div>

</div>


@endsection
