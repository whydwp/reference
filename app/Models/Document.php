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
        'tipe_dokumen',
        'publisher',
        'file',
        'cover',
        'jumlah_halaman',
        'jumlah_like',
        'jumlah_view',
        'id_kategori',
        'id_forum'
    ];
    public function kategori()
    {
        return $this->belongsTo('App\Models\Kategori', 'id_kategori');
    }
    public function forum()
    {
        return $this->belongsTo('App\Models\Forum', 'id');
    }

    public function getperkategori($hasid) {
        $docinthiscat = Document::select('*')
                        ->where('id_kategori', $hasid)
                        ->get();
        return $docinthiscat;
    }

    public function byid($hasid) {
        $docs = Document::select('*')
                ->where('id', $hasid)
                ->get();
// dd($docs);
        return $docs;
    }
}
