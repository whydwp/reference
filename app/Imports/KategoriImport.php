<?php

namespace App\Imports;

use App\Models\Kategori;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Contracts\Queue\ShouldQueue;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class KategoriImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        //dd($row);
       
        return new Kategori([
            'kategori' => $row['kategori'],
            'kategori_type_id' => $row['type']
           
        ]);
       
    }
    public function chunkSize(): int
    {
        return 1000;
    }
}
