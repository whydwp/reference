<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    protected $table = 'document';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'judul_dokumen',
        'deskripsi_dokumen',
        'tahun',
        'publisher',
        'file',
        'jumlah_halaman',
        'id_kategori'
    ];
    public function kategori()
    {
        return $this->belongsTo('App\Models\Kategori', 'id_kategori');
    }
}
