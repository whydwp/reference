<?php

namespace App\Exports;

use App\Models\Document;
use App\Models\Kategori;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\ShouldAutoSize; //menyesuaikan pada colom diexel


class ReportExport implements FromView,ShouldAutoSize
{
    public function view(): View
    {
        return view('report', [
            'data_dokument' => Document::orderBy('created_at','ASC')->get() //get unutk mendapatkan datanya
        ]);
       
    }
}