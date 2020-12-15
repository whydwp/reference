@extends('layoutt.master-template')

@section('title')
Document
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
                <br/>
       <div class="col-md-10 offset-md-1 ">
            <button data-target="#modal-default" data-toggle="modal" type="button"
                class="btn btn-raised btn-default"><span class="fas fa-plus-square"></span>
                kapasitas Documents</button>
                <a href="{{ route('document.create') }}" class="btn btn-success"><span class=" fas fa-plus-square"></span>
                    Create</a>
        </div>
        <br/>
                <div class="modal fade" id="modal-default">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Kapasitas</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Masukan Kapasitas</label>
                                    <input type="text" name="kapasitas" class="form-control" placeholder=" yuk masukan kapasitas" required>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="row">
                            <div class="col-4">
                                <div class="form-group">
                                    <label>Sort berdasarkan :</label>
                                    <select name="filter_periode" id="filter_periode" class="select2" style="width: 50%;">
                                        <option selected>kategori</option>
                                        <option>judul dokument</option>
                                        <option>publisher</option>
                                        <option>tahun</option>
                                    </select>
                                </div>
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
                </div>

               
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Tahun</th>
                            <th>jumlah halaman</th>
                            <th>Publisher</th>
                            <th>Kategori</th>
                            <th>action</th>
                
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data_dokument as $row)
                        <tr>
                            <td>{{ $loop->iteration + ($data_dokument->perPage() * ($data_dokument->currentPage() - 1)) }}
                            </td>
                            <td>{{ $row->judul_dokumen }}</td>
                            <td>{{ $row->tahun }}</td>
                            <td>{{ $row->jumlah_halaman }}</td>
                            <td>{{ $row->publisher }}</td>
                            <td>{{ $row->kategori->kategori}}</td>
                            <td>
                                <form method="post" action="{{ route('document.destroy',[$row->id]) }}"
                                    onsubmit="return confirm('Apakah anda yakin akan menghapus data ini ?')">
                                    @csrf
                                    {{ method_field('DELETE') }}
                                    
                                    <a class="btn btn-round btn-warning btn-md far fa-edit" href="{{ route('document.edit',[$row->id]) }}"></a>
                                    <button type="submit" class="btn btn-round btn-danger fas fa-trash-alt"></i></button>
                                    {{-- <form method="post" action="">
                                                            @csrf
                                                            {{method_field('DELETE')}}
                                    <a href="" class="btn btn-round btn-warning btn-md"><i class="fa fa-edit" data-toggle="modal"
                                            data-target="#edit"></i></a> --}}
                                            </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                
                <tfoot>
                     
                   
                 </tfoot>
                     
                </div>
                <!-- /.card-body -->
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


{{-- <script src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"> </script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.colVis.min.js"> </script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"> </script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.print.min.js"> </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"> </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"> </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"> </script>


<script>
    $(document).ready(function(){
        var table = $('#table-product').DataTable({
        pageLength: 10,
        processing: true,
        serverSide: true,
        dom: '<"html5buttons">Blfrtip',
        language: {
                buttons: {
                    colvis : 'show / hide', // label button show / hide
                    colvisRestore: "Reset Kolom" //lael untuk reset kolom ke default
                }
        },
        
        
        ajax: {
            "url"  : "{{ route ('document.index') }}", 
            "data" : function (d) {
                    d.filter_periode = $('#filter_periode').val();
            }
        },
        columns: [
            {"data":"name"},
            {"data":"satuan"},
            {"data":"buy_price"},
            {"data":"sell_price"},
            {"data":"created_at"},
        ],
        columnDefs : [{
            render : function (data,type,row){
                return data + ' - ( ' + row['satuan'] + ')'; 
            },
            "targets" : 0
            },
            {"visible": false, "targets" : 1}
        ],
        });
        
    //filter berdasarkan Nama Product
    $('.filter-name').keyup(function () {
        table.column( $(this).data('column'))
        .search( $(this).val() )
        .draw();
    });
    //filter Berdasarkan satuan product
    $('.filter-satuan').change(function () {
        table.column( $(this).data('column'))
        .search( $(this).val() )
        .draw();
    });
    //filter Berdasarkan periode
    $('#filter_periode').change(function () {
        table.draw();
    });
    });
</script> --}}
<script>
    $(function () {
    $('#example2').DataTable({
    "paging": true,
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