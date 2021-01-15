<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Kategori;
use DB;
use Auth;

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

    public function getuserlikesdocuments()
    {
        $alllikesdoc = DB::table('document')
        ->join('kategori', 'kategori.id_kategori', '=', 'document.id_kategori')
        ->join('likesdocument', 'likesdocument.document_id', '=', 'document.id')
        ->select('document.*', 'kategori.kategori as namakategori')
        ->where('likesdocument.user_id', '=', Auth::user()->id);
        // ->selectRaw('document.*', 'kategori.kategori as namakategori');
        // ->groupBy('document.id')
        // ->get();


        // $alllikesdoc = DB::table('likesdocument')
        // ->join('document', 'document.id', '=', 'likesdocument.document_id')
        // ->where('likesdocument.user_id', '=', Auth::user()->id);
        // ->get();

        // ->fulljoin('kategori', 'kategori.id_kategori', '=', 'likesdocument.id_kategori')
        // ->selectRaw('document.*, kategori.kategori as namakategori')
        // ->groupBy('document.id')
        // ->get();

        
        // dd($alllikesdoc);

        return $alllikesdoc;
    }

    // public function getlikescat()
    // {
    //     $getcat = DB::table('likesdocument')
    //     ->join('kategori')
    // }

    


}
