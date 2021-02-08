<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kategori;

use App\Models\Document;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('admin');
    }
    public function index()
    {
        // return view('general.dashboard2');

        // $accessfuncallcat = new Kategori();
        // $allcat = $accessfuncallcat->getallcategory();
        // // $chunktothree = $allcat->chunk(6);
        // // dd($chunktothree[0]);
        // return view('general2.dashboard', ['datas'=>$allcat]);
        // // return view('general2.dashboard');
        $jumlah_dokumen = Document::count();
        $jumlah_kategori = Kategori::count();
        $jumlah_likes = Document::sum('jumlah_like');
        $jumlah_views = Document::sum('jumlah_view');
        // $dashboard = Document::paginate(3);
        $nama_dokumen = []; //memunculkan nama pada grafik
        $jumlah_like = [];
        $jumlah_doc = [];
        $jumlah_view = []; //memunculkan jumlah pada grafik
        $data_dokumen = Kategori::all(); //menyimpan data yang ada ditabel 
        foreach ($data_dokumen as $row) {
            //setiap kali petrulanagan akan menyimpan nama 
            $nama_dokumen[] = $row->kategori;
            //mencari ditabel like view 
            $view = Document::where('id_kategori', $row->id_kategori)->sum('jumlah_view');
            $like = Document::where('id_kategori', $row->id_kategori)->sum('jumlah_like');
            $doc = Document::where('id_kategori', $row->id_kategori)->count('id');
            $jumlah_like[] = $like;
            $jumlah_doc[] = $doc;
            $jumlah_view[] = $view;
        }
      
        // $kategori = Kategori::all();
        return view('general2.dashboard', compact('jumlah_kategori', 'jumlah_doc','nama_dokumen', 'jumlah_like', 'jumlah_view','jumlah_dokumen','jumlah_likes','jumlah_views'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
