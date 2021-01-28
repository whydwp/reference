@extends('layoutt.master-template')

@section('title')
Dashboard
@endsection

@section('content')



<div class="content">
    <div class="container" >
        <div class="row">
            <div class="col-lg-3 col-12">
              <!-- small box -->
              <div class="small-box bg-info">
                <div class="inner">
                  <h3>{{$jumlah_dokumen}}</h3>
          
                  <h5>Jumlah Dokumen</h5>
                </div>
                <div class="icon">
                  <i class="fas fa-file-alt"></i>
                </div>
                <a href="{{route('document.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-success">
                <div class="inner">
                  <h3>{{$jumlah_likes}}</h3>
          
                  <h5>Jumlah Like</h5>
                </div>
                <div class="icon">
                  <i class="fas fa-thumbs-up"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-secondary">
                <div class="inner">
                  <h3>{{$jumlah_views}}</h3>
          
                  <h5>Jumlah View</h5>
                </div>
                <div class="icon">
                  <i class="fas fa-eye"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-warning">
                <div class="inner">
                  <h3>{{$jumlah_kategori}}</h3>
          
                  <h5>Jumlah Kategori</h5>
                </div>
                <div class="icon">
                  <i class="fas fa-bolt"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
           
            <!-- ./col -->
          </div>
    </div>
</div>
<div class="card">
  <div class="card-body">
    <div class="d-flex">
      <p class="d-flex flex-column" >
        <h3>Grafik Document</h3>
      </p>
     
    </div>
    <!-- /.d-flex -->

    <div class="position-relative mb-4">
      <canvas id="densityChart" height="200"></canvas>
    </div>

  </div>
</div>

<script>
  $(function () {
  var densityCanvas = document.getElementById("densityChart");
  
  Chart.defaults.global.defaultFontFamily = "Lato";
  Chart.defaults.global.defaultFontSize = 20;
  
  var densityData = {
  label: 'Jumlah Like',
  data:@php echo json_encode($jumlah_like); @endphp,
  backgroundColor: 'rgba(99, 255, 222, 0.3)',
  borderColor: 'rgba(14,54,124)',
  borderWidth: 1
  };
  var density = {
  label: 'Jumlah View',
  data: @php echo json_encode($jumlah_view); @endphp,
  backgroundColor: 'rgba(14,54,124,0.3)',
  borderColor: 'rgba(20,34,4)',
  borderWidth: 1
  };

  var barChart = new Chart(densityCanvas, {
  type: 'bar',
  data: {
  labels:@php echo json_encode($nama_dokumen); @endphp,
  datasets: [densityData,density]
  }
  });})
</script>
{{-- <script>
    var ctx = document.getElementById("myLike").getContext('2d');
            var myLike = new Chart(ctx, {
              type: 'bar',
                data: {
                  labels: @php echo json_encode($nama_dokumen); @endphp, //digunakan untuk bagian label
                  datasets: [{
                    label: 'Grafik Like Dokumen',
                    data: @php echo json_encode($jumlah_like); @endphp,
                    backgroundColor: 'rgba(99, 255, 222, 0.3)',
                    borderColor: 'rgba(14,54,124)',
                    borderWidth: 1
                  }]
                },
                options: {
                  scales: {
                    yAxes: [{
                      ticks: {
                        beginAtZero:true
                      }
                    }]
                  }
                }
              });
</script> --}}



@endsection
