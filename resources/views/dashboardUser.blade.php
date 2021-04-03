@extends('layoutt.master-template')

@section('title')
Dashboard
@endsection

@section('content')

<div class="card">
  <div class="card-body">
    <div class="d-flex">
      <p class="d-flex flex-column" >
        <h3>Grafik Dokumen</h3>
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



@endsection
