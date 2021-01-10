@extends('layoutt.master-template')

@section('title')
Input User
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
        <form method="post" action="{{ route('user.store')}}" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="full_name">Nama</label>
                        <input name="full_name" id="full_name" class="form-control" placeholder="masukan nama"
                            value="{{old('full_name')}}">
                    </div>
                </div>
                <div class="col-sm-6">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="email">Email</label>
                        <input name="email" id="email" class="form-control" placeholder="masukan email"
                            value="{{old('email')}}">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password" class="form-control"
                            placeholder="masukan Password" value="{{old('password')}}">
                    </div>

                </div>
                <div class="col-sm-4">
                    <!-- text input -->
                    <div class="form-group ">
                        <label for="username">username</label>
                        <input name="username" id="username" class="form-control" placeholder="masukan username"
                            value="{{old('username')}}">
                    </div>

                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="user_type_id">Level</label>
                        <select id="user_type_id" name="user_type_id" class="form-control">
                            <option selected disabled>Level</option>
                            @foreach($data_user as $row )
                            <option value="{{ $row->user_type_id }}">{{ $row->type }}</option>
                            @endforeach
                        </select>
                    </div>
                    <!-- text input -->
                </div>
            </div>


            <div class="form-group">
                <a href="{{route('user.index')}}" class="btn btn-danger btn-xl "><span class="fas fa-backward"></span>  Kembali</a>
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