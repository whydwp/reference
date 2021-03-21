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
        'dokumen_id',
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function documen()
    {
        return $this->belongsTo('App\Models\Document', 'dokumen_id');
    }
    public $timestamps = false;
   
    public function kategori()
    {
        return $this->belongsTo(kategori::class);
    }
}
