<table>
    <thead>
        <tr >
            <th></th>
            <th style="font-weight: bold;">No </th>
            <th style="font-weight: bold;">Judul</th>
            <th style="font-weight: bold;">Tahun</th>
            <th style="font-weight: bold;">jumlah halaman</th>
            <th style="font-weight: bold;">Publisher</th>
            <th style="font-weight: bold;">deskripsi</th>
            <th style="font-weight: bold;">Kategori</th>
            <th style="font-weight: bold;">File</th>

        </tr>
    </thead>
    <tbody>
        @foreach ($data_dokument as $row)
        <tr>
            <td></td>
           <td>{{$loop->iteration }}</td>
            <td>{{ $row->judul_dokumen }}</td>
            <td>{{ $row->tahun }}</td>
            <td>{{ $row->jumlah_halaman }}</td>
            <td>{{ $row->publisher }}</td>
            <td>{{strtolower($row->deskripsi_dokumen)}}</td>
            <td>{{ $row->kategori->kategori}}</td>
            <td>{{ $row->file}}</td>
        </tr>
        @endforeach
    </tbody>
</table>
  