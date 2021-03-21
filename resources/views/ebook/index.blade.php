@extends('layoutt.master-template')

@section('title')
Ebook
@endsection

@section('content')
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
              
               <div class="card">

                <div class="card-header">
                    <h3 class="card-title">Kelola Document</h3>
                </div>

       {{-- <div class="col-md-10 offset-md-1 ">
                <a href="{{ route('ebook.create') }}" class="btn btn-primary"><span class=" fas fa-plus-square"></span>
                    Tambah Dokumen</a>
                </div> --}}
       <div class="col-md-10 offset-md-1 ">
                {{-- <button data-target="#modal-default1" data-toggle="modal" type="button" class="btn btn-raised btn-info"><span
                        class="fas fa-plus-square"></span>
                    Import Data</button> --}}
                </div>
                
                <br />
                {{-- <a href="{{route('user/export')}}" class="btn btn-success"><i class="far fa-file-excel"></i>
                exel</a> --}}
        <br/>
              
                <div class="row">
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
                    </div>
                </div>
                <div class="card-body">    
                    @if(Request::get('id_kategori'))
                    <div class="alert" style="background-image: linear-gradient(to right, #a2c2d4, #7effe3);">
                        Hasil Pencarian Dokumen dengan Kategori : <b>{{ $nama_kategori }}</b>
                    </div>
                    @endif
                    @include('alert.success')
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Status</th>
                            <th>Publisher</th>
                            <th>Kategori</th>
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
                           @if($row->status)
                            <td>{{ $row->status->status}}</td>
                            @else
                            <td>PENDING</td>
                            @endif
                            <td>{{ $row->publisher }}</td>
                            <td>{{ $row->kategori->kategori}}</td>
                            @if($row->keterangan)
                            <td>{{ $row->keterangan}}</td>
                            @else
                            <td>Belum ada</td>
                            @endif
                            <td>
                               <form method="post" action="{{ route('ebook.destroy',[$row->id_ebook]) }}"
                                    onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                    @csrf
                                    {{ method_field('DELETE') }}
                                    <button type="submit" class="btn btn-round btn-warning fas fa-trash-alt"></i></button>
                                   {{-- @if(Auth::user()->user_type_id == 1) --}}
                                    <a class="btn btn-round btn-info btn-md far fa-edit" href="{{ route('ebook.edit',[$row->id_ebook]) }}"></a>
                                    {{-- @endif
                                    --}}
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                
               <tfoot>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                            {{ $ebook->appends(Request::all())->links() }}
                        </ul>
                    </nav>
                </tfoot>
                     
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
    "paging": false,
    "lengthChange": true,
    "searching": false,
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