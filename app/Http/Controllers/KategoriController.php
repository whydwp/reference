<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Document;
use App\Models\Likesdocument;
use Illuminate\Http\Request;
use DB;
use View;
use Auth;
use Validator;

class KategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $defaultcategorypembangkit = 1;
        // $accesfunccat = new Kategori();
        // $whatcategory = $accesfunccat->getCategory($id);
        // $accesfuncdoc = new Document();
        // $getdocument = $accesfuncdoc->getperkategori($id);

        // return view('general2.kategori',['datas'=>$getdocument, 'defaultkategori'=>$whatcategory]);
      
        // dd($input);
        
        
            $kategori = Kategori::paginate(10);
      
          
            // $kategori = Kategori::all();
            return view('kategori.index', ['kategori' => $kategori]);
        
    }

    public function filter(Request $request) 
    {
        $filter = $request->select;
        $param = $request->search;
        $i = 0;
        
        if($filter == "category"){
            $getcat = Kategori::where('kategori', 'like', '%' . $param . '%')->get();
            $thecat = [];
            foreach($getcat as $cat){
                $thecat[] = $cat->id_kategori;
            }
            $getdoc = [];
            $doc = [];
            foreach($thecat as $cat){
                $getdoc[] = Document::where('id_kategori', '=', $cat)->get();
                $doc = $getdoc;
            }
            
            // foreach($getdoc as $getdoc){
            //     // $doc[] = $getdoc[0];
            // }
            // foreach($getdoc as $doc){
                dd($doc);
            // }
        }

        // $values = [
        //     'message' => 'success',
        //     'select' => $search
        // ];

        // return response()->json($values);

        // return View::make('general2.kategori',['datas'=>$getdoc]);
    }

    public function likedislike(Request $request){
        (int)$id = $request->id;

        // $datasdoc = new Document();
        // $docs = $datasdoc->byid($id);

        $docs = Document::find($id);
        // dd($docs);
        $idcat = $docs->id_kategori;
        
        // $datascat = new Kategori();
        // $cat = $datascat->getCategory($idcat);
        $cat = Kategori::find($idcat);
        $likecat = $cat->jumlah_like;
        // $dislikecat = $cat->jumlah_dislike;

        $jumlah = $request->jumlah;
        // $type = $request->type;
        
        $changejumlah = $jumlah + 1 ;
        
        $values = [
            'message' => 'success',
            'id' => (int)$id,
            'jumlah' => $changejumlah
            // 'hem' => $doctochange->jumlah_dislike
        ];

        // like or dislike
        // if($type == "1"){
            $changecat = $likecat + 1 ;

            Document::where('id', $id)->update([
                'jumlah_like' => $changejumlah
            ]);
            Kategori::where('id_kategori', $idcat)->update([
                'jumlah_like' => $changecat
            ]);
            // if()
            $newlikes = new Likesdocument();
            $newlikes->user_id = Auth::user()->id;
            $newlikes->document_id = $id;
            if($newlikes->save()){
                return response()->json($values);
            }
        // }
        // else if($type == "0"){
        //     $changecat = $dislikecat + 1;

        //     Document::where('id', $id)->update([
        //         'jumlah_dislike' => $changejumlah
        //     ]);
        //     Kategori::where('id_kategori', $idcat)->update([
        //         'jumlah_dislike' => $changecat
        //     ]);
        //     return \response()->json($values);
        // }
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategori = Kategori::all();
        return view('kategori.index', compact('kategori'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $kategori = $request->all();
        Kategori::create($kategori);
        return redirect()->route('kategori.index')->with('status', 'Dokumen Berhasil Ditambahankan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function show(Kategori $kategori)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if($request->isMethod('post')){
            $item =$request->all();
            // dd($item);
            Kategori::where(['id_kategori'=>$id])->update(['kategori'=>$item['kategori'],]);
            return redirect()->back()->with('status','kategori berhasil diupdate');
        }
        // $edit = Kategori::findOrFail($id);
        // return view('kategori.index', compact('edit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    { 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kategori = Kategori::findOrFail($id);
        $kategori->delete();   
        return redirect()->route('kategori.index')->with('status', 'Data Kategori Berhasil dihapus');
    }
}