<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ebook extends Model
{
    protected $table = 'e_books';
    protected $primaryKey = 'id_ebook';
    protected $fillable = [
        'id_ebook',
        'id_user',
        'judul_ebook',
        'deskripsi_ebook',
        'tahun',
        'publisher',
        'file',
        'cover',
        'keterangan',
        'id_kategori',
        'id_status'
    ];
    public function kategori()
    {
        return $this->belongsTo('App\Models\Kategori', 'id_kategori');
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function KategoriType()
    {
        return $this->belongsTo('App\Models\KategoriType', 'kategori_type_id');
    }
    public function status(){
        return $this->belongsTo('App\Models\status', 'id_status');
    }
    // public function getebook()
    // {
    //     $allebook = DB::table('ebook')
    //     ->join('status', 'status.id_status', '=', 'ebook.id_status')
    //     ->select('ebook.*', 'status.status as namastatus');

    //     return $allebook;
    // }
}
