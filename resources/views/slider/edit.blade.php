@extends('layoutt.master-template')

@section('title')
Edit Gambar
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
        
        <form class="form-horizontal" method="post" action="{{ route('gambar.update',[$slider->id]) }}" enctype="multipart/form-data">
            @csrf
            {{ method_field('PUT') }}
                <label for="cover" class="col-sm-4 control-label">Gambar Slide</label>
                <div class="col-sm-12">

                    <img src="{{ asset('uploads/'.$slider->gambar) }}" class="img-thumbnail" width="100%" height="100%">                   
                </div>
            
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        
                        <input type="file" id="cover"name="gambar" class="form-control @error('cover') is-invalid @enderror" id="cover">
                        @error('cover')
                        <div class="invalid-feedback">{{$message}}</div>
                        @enderror
                    </div>
                </div>

            </div>

            <div class="form-group">
               <a href="{{route('gambar.index')}}" class="btn btn-warning btn-xl"><span class="fas fa-backward"></span> Kembali</a>
                <button type="submit" name="tombol" class="btn btn-info pull-right">Update</button>
            </div>
        </form>

    </div>

</div>


@endsection