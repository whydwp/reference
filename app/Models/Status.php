<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Model\Document;
use DB;

class status extends Model
{
     protected $table = 'status';
    //  protected $table = 'category';
    protected $primaryKey = 'id_status';
    protected $fillable = [
        'id_status',
        'status',
    ];


}
