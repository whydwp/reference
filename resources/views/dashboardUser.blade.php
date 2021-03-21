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
  
  Chart.defaults.global.defaultFontFamily = "Lato";
  Chart.defaults.global.defaultFontSize = 20;
  
  var densityData = {
  label: 'Jumlah Suka',
  data:@php echo json_encode($jumlah_like); @endphp,
 backgroundColor: 'rgba(74, 105, 189,0.5)',
  borderColor: '#4b4b4b',
  borderWidth: 1
  };
  var density = {
  label: 'Jumlah Pembaca',
  data: @php echo json_encode($jumlah_view); @endphp,
 backgroundColor: 'rgba(7, 153, 146,0.5)',
  borderColor: '#4b4b4b',
  borderWidth: 1
  };
  var densityi = {
  label: 'Jumlah dokumen',
  data: @php echo json_encode($jumlah_doc); @endphp,
  backgroundColor: 'rgba(246, 185, 59,0.5)',
  borderColor: '#4b4b4b',
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
       onClick: function(c,i) {
    e = i[0];
    console.log(e._index)
    var x_value = this.data.labels[e._index];
    var y_value = this.data.datasets[0].data[e._index];
    window.location.replace("dashboardShow-{id}");
    console.log(y_value);
}
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
