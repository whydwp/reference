<?php

namespace App\Exports;

use App\Models\Document;
use App\Models\User;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;


class UserExport implements FromView, ShouldAutoSize
{
    public function view(): View
    {
        return view('export', [
            'data_user' => User::orderBy('created_at', 'ASC')->get() //get unutk mendapatkan datanya
        ]);
    }
}
