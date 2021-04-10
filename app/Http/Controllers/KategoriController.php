<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Document;
use App\Models\KategoriType;
use App\Models\Likesdocument;
use Illuminate\Http\Request;
use DB;
use App\Jobs\Import1Job;
use View;
use Auth;
use Validator;
use App\Exports\KategoriExport;
use Excel;
use Session;
use App\Imports\KategoriImport;

class KategoriController extends Controller
{

   
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function __construct()
    {
        //$this->middleware('role:superadmin', ['only' => ['index', 'create', 'edit', 'store', 'reportkategori', 'import', 'destroy']]);

        $this->middleware('permission:kategori-list', ['only' => ['index', 'show']]);
        $this->middleware('permission:kategori-edit', ['only' => ['index', 'update']]);
        $this->middleware('permission:kategori-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:kategori-delete', ['only' => ['delete']]);
        $this->middleware('permission:kategori-export', ['only' => ['reportkategori']]);
        $this->middleware('permission:kategori-import', ['only' => ['import']]);
    }
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
            $KategoriType = KategoriType::all();
            
            //  $jumlah_like = Document::sum('id_kategori');
            //  $data = \DB::table('Dokumen')
            //  ->select([
            //      \DB::raw('count(*) as id'),
              
                 
            //  ])
            //  ->get()
            //  ->toArray()
            //  ;
            //     dd($data);     
          
            // $kategori = Kategori::all();
            return view('kategori.index', ['kategori' => $kategori],['KategoriType'=> $KategoriType]);
        
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
        $checkis = $request->check;

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
        if ($checkis == 1){
            $changejumlah = $jumlah - 1 ;
            $changecat = $likecat - 1 ;
        }
        else if ($checkis == 0){
            $changejumlah = $jumlah + 1 ;
            $changecat = $likecat + 1 ;
        }
        
        $values = [
            'message' => 'success',
            'id' => (int)$id,
            'jumlah' => $changejumlah
            // 'hem' => $doctochange->jumlah_dislike
        ];

            Document::where('id', $id)->update([
                'jumlah_like' => $changejumlah
            ]);
            Kategori::where('id_kategori', $idcat)->update([
                'jumlah_like' => $changecat
            ]);
           
            if($checkis == 0){
                $newlikes = new Likesdocument();
                $newlikes->user_id = Auth::user()->id;
                $newlikes->document_id = $id;

                if($newlikes->save()){
                    return response()->json($values);
                }
            }
            else if($checkis == 1){
                $getlikesdoc = DB::table('likesdocument')
                                 ->where('likesdocument.user_id', '=', Auth::user()->id)
                                 ->where('likesdocument.document_id', '=', $id);
                // dd($getlikesdoc,$changejumlah,$changecat);
                $getlikesdoc->delete();
                return response()->json($values);
            }
        
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function reportkategori()
    {
        $kategori = now();
        return Excel::download(new KategoriExport, 'kategori' . $kategori . '.xlsx');
    }

    public function import(Request $request)
    {
        $this->validate($request, [
            'file' => 'required|mimes:xls,xlsx'
        ]);

        
        if ($request->hasFile('file')) {
            //UPLOAD FILE
            $file = $request->file('file');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->storeAs(
                'public',
                $filename
            );

            //MEMBUAT JOBS DENGAN MENGIRIMKAN PARAMETER FILENAME
            Import1Job::dispatch($filename);
            return redirect()->back()->with(['success' => 'Upload success']);
        }


        return redirect()->back()->with(['error' => 'Please choose file before']);
    }

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
        return redirect()->route('kategori.index')->with('status', 'Kategori Berhasil Ditambahankan');
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
            Kategori::where(['id_kategori'=>$id])->update([
                'kategori'=>$item['kategori'],
                'kategori_type_id' => $item['kategori_type_id'],
                ]);
            // $kategoriType = $request->all();
            // KategoriType::where(['kategori_type_id' => $id])->update(['kategoriType' => $kategoriType['kategoriType'],]);
            // dd('$kategoriType');
            //return view('kategori.index', compact('kategoriType', 'item'));
            return redirect()->back()->with('status','kategori berhasil diupdate');
        }
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