@extends('layoutt.master-template')

@section('title')
    <a href="{{ url()->previous() }}">KATEGORI {{$kategori}}</a> / {{$namafile}}
@endsection

@section('content')

<!-- <div width="1110" height="1000" style="opacity:1.0; z-index: 100 !important;">
</div> -->
    <iframe frameborder="10" scrolling="no" style="border:10px" src="{{$path}}#toolbar=0" 
    width="1110" height="1000">
    </iframe>

@endsection