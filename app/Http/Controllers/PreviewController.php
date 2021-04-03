<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Document;
use App\Models\Kategori;
use Storage;

class PreviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('role:superadmin', ['only' => ['index']]);
    }
    // public function __construct3()
    // {
    //     $this->middleware('pusdiklat');
       
    // }
    public function index($id)
    {
        $getdoc = Document::find($id);
        $docpdf = $getdoc->file;
        $juduldoc = $getdoc->judul_dokumen;
        $idcat = $getdoc->id_kategori;
        $getcat = Kategori::find($idcat);
        $cat = $getcat->kategori;
        // if(file_exists($file)){
            $storage = Storage::url($docpdf);
            // echo asset($storage);
            // dd($storage);
            return view('preview.index',['path'=>$docpdf, 'kategori'=>$cat, 'namafile'=>$juduldoc]);
        // }
    }

    
}
