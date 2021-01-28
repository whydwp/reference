@extends('layoutt.master-template')

@section('title')
Input User
@endsection

@section('content')

<div class="col-md-12">
    <!-- general form elements disabled -->
    <!-- /.card-header -->
    <div class="card-body">
        {{-- @if($errors->any())
        <ul class="alert alert-danger">
            @foreach($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
        @endif --}}
        @include('sweetalert::alert')
        <form method="post" action="{{ route('user.store')}}" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="full_name">Nama</label>
                        <input name="full_name" id="full_name" class="form-control @error('full_name') is-invalid @enderror" placeholder="masukan nama"
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
                        <input name="email" id="email" class="form-control @error('email') is-invalid @enderror" placeholder="masukan email"
                            value="{{old('email')}}">
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
                        <input type="password" name="password" id="password" class="form-control @error('password') is-invalid @enderror"
                            placeholder="masukan Password" value="{{old('password')}}">
                            @error('password')
                            <div class="invalid-feedback">{{$message}}</div>
                            @enderror
                    </div>

                </div>
                <div class="col-sm-4">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="username">username</label>
                        <input name="username" id="username" class="form-control @error('username') is-invalid @enderror" placeholder="masukan username"
                            value="{{old('username')}}">
                            @error('username')
                            <div class="invalid-feedback">{{$message}}</div>
                            @enderror
                    </div>

                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="user_type_id">Level</label>
                        <select id="user_type_id" name="user_type_id" class="form-control @error('user_type_id') is-invalid @enderror">
                            <option selected disabled>Level</option>
                            @foreach($data_user as $row )
                            <option value="{{ $row->user_type_id }}">{{ $row->type }}</option>
                            @endforeach
                        </select>
                        @error('user_type_id')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                    <!-- text input -->
                </div>
            </div>


            <div class="form-group">
                <a href="{{route('user.index')}}" class="btn btn-warning btn-xl "><span class="fas fa-backward"></span>  Kembali</a>
                <button type="submit" class="btn btn-success btn-xl"><i class="far fa-save"></i> Simpan</button>

            </div>
        </form>

    </div>

</div>
@include('layoutt.more')
<script type="text/javascript">
    $('.dateAnimate').bootstrapMaterialDatePicker({ weekStart : 0, time: false,animation:true});
</script>

@endsection