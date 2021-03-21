@extends('layoutt.master-template')

@section('title')
Dashboard
@endsection

@section('content')



<div class="content">
    <div class="container" >
        <div class="row">
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box" style="background-color: #32ff7e;">
                <div class="inner">
                  <h3>{{$jumlah_dokumen}}</h3>
          
                  <h5>Jumlah Dokumen</h5>
                </div>
                <div class="icon">
                  <i class="fas fa-file-alt"></i>
                </div>
               
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box" style="background-color:#67e6dc;">
                <div class="inner">
                  <h3>{{$jumlah_likes}}</h3>
          
                  <h5>Jumlah Penyuka</h5>
                </div>
                <div class="icon">
                  <i class="fas fa-thumbs-up"></i>
                </div>
               
              </div>
            </div>
            <div class="col-lg-3 col-6">
              <!-- small box -->
            
              <div class="small-box" style="background-color: #17c0eb;">
                <div class="inner">
                  <h3>{{$jumlah_views}}</h3>
          
                  <h5>Jumlah Pembaca</h5>
                </div>
                <div class="icon">
                  <i class="fas fa-book-reader"></i>
                </div>
                
              </div>
            </div>
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box " style="background-color: #fff200;">
                <div class="inner">
                  <h3>{{$jumlah_kategori}}</h3>
          
                  <h5>Jumlah Kategori</h5>
                </div>
                <div class="icon">
                  <i class="fas fa-bolt"></i>
                </div>
               
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
        <h3>Grafik Dokumen</h3>
      </p>
     
    </div>
    <!-- /.d-flex -->

    <div class="position-relative mb-4 chart-container " >
      <canvas id="densityChart" height="200"></canvas>
    </div>

  </div>
</div>

<script>
  $(function () {
  var densityCanvas = document.getElementById("densityChart");
  // chart.canvas.parentNode.style.height = '128px';
  // chart.canvas.parentNode.style.width = '128px';
  Chart.defaults.global.defaultFontFamily = "Lato";
  Chart.defaults.global.defaultFontSize = 20;
  
  var densityData = {
  label: 'Jumlah Suka',
  data:@php echo json_encode($jumlah_like); @endphp,
  backgroundColor: 'rgba(74, 105, 189,0.5)',
  borderColor: 'rgba(12, 36, 97,0.8)',
  borderWidth: 1
  };
  var density = {
  label: 'Jumlah Pembaca',
  data: @php echo json_encode($jumlah_view); @endphp,
  backgroundColor: 'rgba(246, 185, 59,0.5)',
  borderColor: 'rgba(229, 142, 38,0.8)',
  borderWidth: 1
  };
  var densityi = {
  label: 'Jumlah dokumen',
  data: @php echo json_encode($jumlah_doc); @endphp,
  backgroundColor: 'rgba(7, 153, 146,0.5)',
  borderColor: 'rgba(120, 224, 143,0.8)',
  borderWidth: 1
  };
  // var densityi2 = {
  // label: 'Type Kategori',
  // data: @php echo json_encode($type); @endphp,
  // backgroundColor: 'rgba(2, 110, 71,0.6)',
  // borderColor: 'rgba(10,34,9)',
  // borderWidth: 1
  // };


  var barChart = new Chart(densityCanvas, {
  type: 'bar',
  data: {
  labels:@php echo json_encode($nama_dokumen); @endphp,
  datasets: [densityData,density,densityi]
  },
  options: {
        scales: {
            xAxes: [{
                ticks: {
                    display: false
                }
            }],
            yAxes: [{
                ticks: {
                    display: true
                }
            }]
        },
      
    },
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
