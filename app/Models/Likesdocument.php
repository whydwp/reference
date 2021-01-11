<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Likesdocument extends Model
{
    protected $table = 'likesdocument';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'user_id',
        'document_id'
    ];

    public function User()
    {
        return $this->belongsTo('App\Models\User', 'user_id');
    }

    public function Document()
    {
        return $this->belongsTo('App\Models\Document', 'document_id');
    }

    public function getallcategoryandcount()
    {
        $allcategory = DB::table('kategori')
        ->fulljoin('document', 'document.id_kategori', '=', 'kategori.id_kategori')
        ->selectRaw('kategori.*, count(document.id) as count')
        ->groupBy('kategori.id_kategori')
        ->get();
        dd($allcategory);

        return $allcategory;
    }

    public function getallcategory()
    {
        $allcategory = Kategori::get();
        // dd($allcategory);

        return $allcategory;
    }

    public function countall()
    {
        $count = Kategori::get()->count();

        // dd($count);
        return $count;
    }

    public function getCategory($idcategory)
    {
        $namakategori = Kategori::find($idcategory);
        // dd($namakategori);
        return $namakategori;
    }


}
