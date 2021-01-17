<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Forum extends Model
{
    protected $table = 'forum';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'message',
        'user_id',
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
  
    public $timestamps = false;
    public function dokumen()
    {
        return $this->belongsTo('App\Models\Document', 'id');
    }
}
