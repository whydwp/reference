<table>
    <thead>
        <tr >
            <th></th>
            <th style="font-weight: bold;">No </th>
            <th style="font-weight: bold;">User</th>
            <th style="font-weight: bold;">Komentar</th>
            <th style="font-weight: bold;">Documen</th>

        </tr>
    </thead>
    <tbody>
        
        @foreach ($Forum as $row)
        <tr>
            <td></td>
           <td>{{$loop->iteration }}</td>
            <td>{{$row->user->full_name}}</td>
            <td>{{ $row->message }}</td>
            <td>{{ $row->dokument}}</td>
        </tr>
        @endforeach
    </tbody>
</table>
  