<table>
  <thead>
        <tr>
            <th>No</th>
            <th>kategori</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($kategori as $row)
        <tr>
           <td>{{$loop->iteration }}</td>
            <td>{{ $row->kategori }}</td>
        </tr>
        @endforeach
    </tbody>
</table>