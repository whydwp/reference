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

       {{-- <div class="col-md-10 offset-md-1 ">
                <a href="{{ route('ebook.create') }}" class="btn btn-primary"><span class=" fas fa-plus-square"></span>
                    Tambah Dokumen</a>
                </div> --}}
       <div class="col-md-10 offset-md-1 ">
                {{-- <button data-target="#modal-default1" data-toggle="modal" type="button" class="btn btn-raised btn-info"><span
                        class="fas fa-plus-square"></span>
                    Import Data</button> --}}
                </div>            
                {{-- <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="row">
                            <div class="col-md-6">
                                <form method="get" action="">
                                    <div class="form-group">
                                        <label>Level</label>
                                        <select id="user_type_id" name="id_status" class="custom-select select2bs4"
                                            style="width: 50%;">
                                            <option selected disabled>Level</option>
                                            @foreach($status as $row)
                                            <option value="{{ $row->id_status }}">{{ $row->status }}</option>
                                            @endforeach
                                        </select>
                                        <button type="submit" class="btn btn-lg btn-default">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </div>
                
                                </form>
                            </div>
                
                        </div>
                    </div> --}}
                <div class="card-body">    
                    @if(Request::get('id_status'))
                    <div class="alert" style="background-image: linear-gradient(to right, #a2c2d4, #7effe3);">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                        Hasil Pencarian Dokumen dengan Kategori : <b>{{ $nama_status }}</b>
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
                           @if($row->id_status == 1)
                            <td><span class="small-box "
                                    style="background-color: #65ff57; text-align: center; font-weight:500;">{{ $row->status->status}}</span></td>
                            @elseif($row->id_status == 2)
                            <td><span class="small-box "
                                    style="background-color: #fff200; text-align: center; font-weight:500;">{{ $row->status->status}}</span></td>
                            @else
                            <td><span class="small-box " style="background-color: #00ccff; text-align: center; font-weight:500;">Pending</span></td>
                            @endif
                            <td>{{ $row->user->full_name }}</td>
                            <td>{{ $row->kategori->kategori}}</td>
                            @if($row->keterangan)
                            <td>{!! $row->keterangan!!}</td>
                            @else
                            <td>Belum ada</td>
                            @endif
                            <td>
                               <form method="post" action="{{ route('ebook.destroy',[$row->id_ebook]) }}"
                                    onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                    @csrf
                                    {{ method_field('DELETE') }}
                                    @can("ebook-delete-superadmin")
                                    <button type="submit" class="btn btn-round btn-warning fas fa-trash-alt"></i></button>
                                   {{-- @if(Auth::user()->user_type_id == 1) --}}
                                   @endcan
                                   @can("ebook-edit-superadmin")
                                    <a class="btn btn-round btn-info btn-md far fa-edit" href="{{ route('ebook.edit',[$row->id_ebook]) }}"></a>
                                    {{-- @endif
                                    --}}
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