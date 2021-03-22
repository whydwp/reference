<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Model\Document;
use DB;

class status extends Model
{
    protected $table = 'status';
    protected $primaryKey = 'id_status';
    protected $fillable = [ 'id_status', 'status'];

    CONST STATUS_ACCEPTED = "Di Terima";
    CONST STATUS_REJECTED = "Di Tolak";

    public function scopeAccepted($query)
    {
        return $query->where('status', '=', status::STATUS_ACCEPTED);
    }

    public function scopeRejected($query)
    {
        return $query->where('status', '=', status::STATUS_REJECTED);
    }

}
