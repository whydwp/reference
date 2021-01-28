<?php

namespace App\Exports;


use App\Models\Document;
use App\Models\Kategori;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class KategoriExport implements FromView, ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('kategoriexport', [
            'kategori' => Kategori::orderBy('created_at', 'ASC')->get() //get unutk mendapatkan datanya
        ]);
    }
}
