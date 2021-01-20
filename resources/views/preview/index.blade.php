@extends('layoutt.master-template')

@section('title')
    <a href="{{ url()->previous() }}">KATEGORI {{$kategori}}</a> / {{$namafile}}
@endsection

@section('content')

<!-- <div width="1110" height="1000" style="opacity:1.0; z-index: 100 !important;">
</div> -->
<!-- <p>{{$path}}</p> -->
    <!-- <iframe frameborder="10" scrolling="yes" style="border:10px" src="{{ asset('uploads/document/20210120072730/ddcca874-5820-11eb-8b25-0cc47a792c0a_id_ddcca874-5820-11eb-8b25-0cc47a792c0a.html') }}#toolbar=0&navpanes=0&scrollbar=0" width="1110" height="1000"> -->
    <!-- <iframe frameborder="10" scrolling="yes" style="border:10px" src="{{ asset('uploads/document/20210120072730/ddcca874-5820-11eb-8b25-0cc47a792c0a_id_ddcca874-5820-11eb-8b25-0cc47a792c0a.html') }}#toolbar=0&navpanes=0&scrollbar=0" width="1110" height="1000"> -->
    <iframe class="embed-responsive-item" type="application / html5" src="{{ asset('uploads/'.$path) }}#toolbar=0&navpanes=0&scrollbar=0" type="application/pdf" width="100%" height="1000"></iframe>
    <!-- <div >A div tag</div> -->
    </iframe>

    

@endsection