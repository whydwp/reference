<?php

namespace App\Exports;


use App\Models\Forum;
use App\Models\Document;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class reportcomen implements FromView, ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('reportcomen', [
            'Forum' => Forum::orderBy('created_at', 'ASC')->get() //get unutk mendapatkan datanya
        ]);
    }
}
