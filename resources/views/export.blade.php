<table>
  <thead>
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Email</th>
            <th>Username</th>
            <th>Level</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($data_user as $row)
        <tr>
           <td>{{$loop->iteration }}</td>
            <td>{{ $row->full_name }}</td>
            <td>{{ $row->email }}</td>
            <td>{{ $row->username }}</td>
            <td>{{ $row->kelolaUser->type}}</td>
        </tr>
        @endforeach
    </tbody>
</table>