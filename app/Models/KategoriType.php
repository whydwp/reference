<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Model\Document;
use DB;

class KategoriType extends Model
{
     protected $table = 'kategori_type';
    //  protected $table = 'category';
    protected $primaryKey = 'kategori_type_id';
    protected $fillable = [
        'kategori_type_id',
        'type',
    ];


}
