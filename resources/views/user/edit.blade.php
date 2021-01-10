@extends('layoutt.master-template')

@section('title')
masukan dokument
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
                        <label for="email">Email</label>
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
                        <label for="user_type_id">Level</label>
                        <div class="input-group">
                        <select id="user_type_id" name="user_type_id" class="form-control">
                            @foreach($kelola as $row )
                            <option value="{{ $row->user_type_id }}" @if($user->user_type_id == $row->user_type_id) Selected @endif>{{ $row->type }}</option>
                            @endforeach
                        </select>
                    </div>
                    <!-- text input -->
                </div>
            </div>


            <div class="form-group">
                <a href="{{route('user.index')}}" class="btn btn-danger btn-xl">Kembali</a>
                <button type="submit" class="btn btn-success btn-xl">Simpan</button>

            </div>
        </form>

    </div>

</div>
@include('layoutt.more')
<script type="text/javascript">
    $('.dateAnimate').bootstrapMaterialDatePicker({ weekStart : 0, time: false,animation:true});
</script>

@endsection