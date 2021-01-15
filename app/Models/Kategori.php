<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Model\Document;
use DB;

class kategori extends Model
{
     protected $table = 'kategori';
    //  protected $table = 'category';
    protected $primaryKey = 'id_kategori';
    protected $fillable = [
        'id_kategori',
        'kategori',
        'jumlah_dokumen',
        'jumlah_like',
        'jumlah_dislike'
    ];

    public function getallcategoryandcount()
    {
        $allcategory = DB::table('kategori')
                        ->fulljoin('document', 'document.id_kategori', '=', 'kategori.id_kategori')
                        ->selectRaw('kategori.*, count(document.id) as count') 
                        ->groupBy('kategori.id_kategori')
                        ->get();
                        // dd($allcategory);

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
