<?php

namespace App\Imports;

use App\Models\Dokument;
use Maatwebsite\Excel\Concerns\ToModel;

class DocumentImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Dokument([
            'judul_dokumen' => $row[1],
            'tahun' => $row[2],
            'jumlah_halaman' => $row[3],
            'publisher' => $row[4],
            'deskripsi_dokumen' => $row[5],
            'id_kategori' => $row[6],
            'file' => $row[6],
        ]);
    }
}
