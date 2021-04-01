<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Model\Document;
use DB;

class status extends Model
{
    protected $table = 'status';
    protected $primaryKey = 'id_status';
<<<<<<< HEAD
    protected $fillable = ['id_status', 'status'];

    const STATUS_ACCEPTED = "Di Terima";
    const STATUS_REJECTED = "Di Tolak";
=======
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
>>>>>>> 419211b8161b5410f561258bd46bca22337ee957

    public function scopeAccepted($query)
    {
        return $query->where('status', '=', status::STATUS_ACCEPTED);
    }

    public function scopeRejected($query)
    {
        return $query->where('status', '=', status::STATUS_ACCEPTED);
    }
}
