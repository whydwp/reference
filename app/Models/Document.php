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

    public function KategoriType()
    {
        return $this->belongsTo('App\Models\KategoriType', 'kategori_type_id');
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

    public function jumlah(){
        $jumlah_doc = [];
        $data_dokumen = Kategori::all();
        foreach ($data_dokumen as $row) {
            $doc = Document::where(
                'id_kategori',
                $row->id_kategori
            )->count('id');
            $jumlah_doc[] = $doc;
        }
        dd($jumlah_doc);
        //return $jumlah_doc;
    }
}
