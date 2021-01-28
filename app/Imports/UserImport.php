<?php

namespace App\Imports;

use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Contracts\Queue\ShouldQueue;
use Maatwebsite\Excel\Concerns\WithChunkReading; 

class UserImport implements ToModel, WithChunkReading, ShouldQueue
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    
    public function model(array $row)
    {
        // dd($row);
        return new User([
            'full_name' => $row[1],
            'email' => $row[2],
            'username'=> $row[3],
            'user_type_id' => str_slug($row[4]),
            'password' => Hash::make($row[5])
        ]);
    }
    public function chunkSize(): int
    {
        return 1000; 
    }
}
