<table>
  <thead>
        <tr>
            <th>No</th>
            <th>kategori</th>
            <th>Jenis</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($kategori as $row)
        <tr>
           <td>{{$loop->iteration }}</td>
            <td>{{ $row->kategori }}</td>
           <td>{{ $row->KategoriType->type}}</td>
        </tr>
        @endforeach
    </tbody>
</table>