@extends('layoutt.master-template')

@section('title')
Buku
@endsection

@section('content')
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
              
               <div class="card">

                <div class="card-header">
                    <h3 class="card-title">Kelola Buku</h3>
                </div>
                <br/>
       <div class="col-md-10 offset-md-1 ">
           @can("ebook-create-admin")
                <a href="{{ route('adminEbook.create') }}" class="btn btn-primary"><span class=" fas fa-plus-square"></span>
                    Tambah Buku</a>
                    @endcan
                </div>
                <br>
       <div class="col-md-10 offset-md-1 ">
                {{-- <button data-target="#modal-default1" data-toggle="modal" type="button" class="btn btn-raised btn-info"><span
                        class="fas fa-plus-square"></span>
                    Import Data</button> --}}
                </div>
                {{-- <a href="{{route('user/export')}}" class="btn btn-success"><i class="far fa-file-excel"></i>
                exel</a> --}}              
                {{-- <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="row">
                            <div class="col-md-6">
                                <form method="get" action="{{route('document.index')}}">
                                <div class="form-group">
                                    <label>Cari Kategori</label>
                                    <select id="id_kategori" name="id_kategori" class="custom-select select2bs4" style="width: 50%;">
                                        <option selected disabled>Kategori</option>
                                        @foreach($kategori as $row)
                                        <option value="{{ $row->id_kategori }}">{{ $row->kategori }}</option>
                                        @endforeach
                                    </select>
                                  <button type="submit" class="btn btn-lg btn-default">
                                    <i class="fa fa-search"></i>
                                </button>
                                </div>
                                
                                </form>
                            </div>
                           
                        </div>
                        <form method="get" action="{{route('document.index')}}">
                        <div class="form-group">
                            <label for="keyword" class="col-sm-2 control-label">Search</label>
                            <div class="input-group input-group-lg">
                                <input type="search" class="form-control form-control-lg" name="keyword" value="{{Request::get('keyword')}}"
                                    value="Lorem ipsum">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-lg btn-default">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                       
                    </div>
                </div> --}}

               
                <!-- /.card-header -->
             
                <div class="card-body">
                    @if(Request::get('keyword'))
                    <div class="alert alert-success alert-block">
                        Hasil Pencarian Dokumen dengan Keyword : <b>{{ Request::get('keyword') }}</b>
                    </div>
                    @endif
                    
                    @if(Request::get('id_kategori'))
                    <div class="alert alert-lightblue alert-block">
                        Hasil Pencarian Dokumen dengan Kategori : <b>{{ $nama_kategori }}</b>
                    </div>
                    @endif
                    @include('alert.success')
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Kategori</th>
                            <th>Status</th>
                            <th>From</th>
                            <th>Keterangan</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($ebook as $row)
                        <tr>
                            <td>{{ $loop->iteration + ($ebook->perPage() * ($ebook->currentPage() - 1)) }}
                            </td>
                            <td>{{ str_limit($row->judul_ebook , 30, ' ...') }}</td>
                            <td>{{ $row->kategori->kategori}}</td>
                            @if($row->id_status == 1)
                             <td><span class="small-box " style="background-color: #65ff57; text-align: center; font-weight:500;">{{ $row->status->status}}</span></td>
                             @elseif($row->id_status == 2)
                             <td><span class="small-box "style="background-color: #fff200; text-align: center; font-weight:500;">{{ $row->status->status}}</span></td>
                            @else
                             <td><span class="small-box " style="background-color: #00ccff; text-align: center; font-weight:500;">Pending</span></td>
                             @endif
                             <td>{{$row->user->full_name}}</td>
                            @if($row->keterangan)
                            <td>{!! $row->keterangan!!}</td>
                            @else
                            <td>Belum ada</td>
                            @endif
                            <td>
                               <form method="post" action="{{ route('adminEbook.destroy',[$row->id_ebook]) }}"
                                    onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                    @csrf
                                    {{ method_field('DELETE') }}
                                    @can("ebook-delete-admin")
                                    @if($row->user->full_name == Auth::user()->full_name)
                                    <button type="submit" class="btn btn-round btn-warning fas fa-trash-alt"></i></button>
                                    @endif
                                    @endcan
                                    @can("ebook-edit-admin")
                                    @if($row->user->full_name == Auth::user()->full_name)
                                    <a class="btn btn-round btn-info btn-md far fa-edit" href="{{ route('adminEbook.edit',[$row->id_ebook]) }}"></a>
                                    @endif
                                    @endcan                                   
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                
               {{-- <tfoot>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center" >
                            {{ $ebook->appends(Request::all())->links() }}
                        </ul>
                    </nav>
                </tfoot> --}}
                     
                </div>
                <!-- /.card-body -->
            </div>
</div>
        </div>
    <!-- /.col -->
</div>
    <!-- /.row -->
</div>
</div>
    <!-- /.container-fluid -->
</section>
    <!-- /.content -->


<script>
    $(function () {
    $('#example2').DataTable({
    "paging": true,
    "lengthChange": true,
    "searching": true,
    "ordering": true,
    "info": true,
    "autoWidth": false,
    "responsive": true,
    
    });
  });
  
</script>

<script>
    $(function () {
      $('.select2').select2()
    });
</script>


<!-- custom -->
{{-- <script type="text/javascript">
    $(document).ready(function(){
    $('#datatables-example').DataTable();
  });
</script> --}}
<!-- end: Javascript -->

@endsection