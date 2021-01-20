<?php

namespace App\Http\Controllers;

use App\Models\Document;
use Validator;
use App\Models\Forum;
use App\Models\User;
use App\Models\Kategori;
use Illuminate\Http\Request;
use DB;


class MyReferenceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
 
    public function index(Request $request)
    {
        // $reference = Document::;
        // // $kategori = Kategori::all();
        // return view('reference.index', compact('reference'));

        $reference = Document::orderBy('created_at', 'desc')->paginate(3);
        $filterKeyword = $request->get('keyword');
        $kategori = Kategori::orderBy('created_at', 'asc')->get();
         $nama_kategori = '';
        $reference2 = Document::orderBy('jumlah_like', 'DESC')->get();
        if ($filterKeyword) {
            //dijalankan jika ada pencarian
            $reference = Document::where('tahun', 'LIKE', "%$filterKeyword%")->paginate(10);
        }
        $filter_by_kategori = $request->get('id_kategori');
        if ($filter_by_kategori) {
            $reference = Document::where('id_kategori', $filter_by_kategori)->paginate(5);
            $data_kategori = Kategori::find($filter_by_kategori);
            $nama_kategori = $data_kategori->kategori;
        }
        // $kategori = Kategori::all();
        
        return view('reference.index', compact('reference', 'kategori','nama_kategori','reference2'));     
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // $reference = Document::paginate(1);
        // return view('reference.create', compact('reference'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,Forum $forum)
    {
        $komentar = [
            'id' => $forum->id,
            'created_at' => $forum->created_at,
            'dokumen_id' => $request->dokumen_id,
            'user_id' => auth()->id(),
            'message' => $request->message,  
        ];
       dd($komentar);
        
        // Forum::create($komentar);
        //     return redirect()->back();
            
    }
  
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request ,$id)
    {
        $reference = Document::findOrFail($id);
        $komentar = Forum::all();
        
        return view('reference.show', compact('reference','komentar'));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    public function addview(Request $request)
    {
        $id = $request->id;
        $jumlahview = $request->jumlah;

        $changejumlah = $jumlahview + 1;
        Document::where('id', $id)->update([
            'jumlah_view' => $changejumlah
        ]);

        $values = [
            'message' => 'success',
            'id' => $id,
            'jumlah' => $changejumlah
        ];

        return response()->json($values);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $komentar = Forum::findOrFail($id);
        $komentar->delete();
        return redirect()->back();
    }
}
