<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Document;
use App\Models\Kategori;
use App\Models\Forum;
use App\Models\Likesdocument;
use Auth;
use DB;


class MyLikeController extends Controller
{
    public function __construct()
    {
        //$this->middleware('role:pusdiklat', ['only' => ['index']]);

        $this->middleware('permission:like', ['only' => ['index', 'show', 'adddview']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $reference = Likesdocument::where([['user_id', '=', Auth::user()->id]])->paginate(10);
        // $reference = Document::paginate(10);
        $newlikesdocumet = new Likesdocument();
        $getuserlikes = $newlikesdocumet->getuserlikesdocuments()->paginate(3);
        $doccat = array();
        foreach ($getuserlikes as $doc) {
            $funccat = new Kategori();
            $getpercat = $funccat->getCategory($doc->id_kategori);
            array_push($doccat, $getpercat->kategori);
        }

        // dd($doccat);
        // $getlikescat = $newlikesdocument->getlikescat();
        // dd($reference);

        // $kategori = Kategori::all();
        return view('like.index', compact('getuserlikes', 'doccat'));
    }

    // <a >
    //                         <img src="{{ asset('uploads/'.$id->cover) }}"
    //                             class="img-thumbnail"width="200px">
    //                     </a>

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
    public function adddview(Request $request)
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

    public function store(Request $request, Forum $forum)
    {
        $documen = Document::all();
        //dd($doc);
        // $forum = Forum::all();

        // $komentar = Forum::create([
        //     'id' => $forum->id,
        //     'created_at' => $forum->created_at,
        //     'dokumen_id' => $request->dokumen_id,
        //     'user_id' => auth()->id(),
        //     'message' => $request->message,
        // ]);
        $komentar = new Forum([
            'user_id'    => auth()->id(),
            'created_at' => $forum['created_at'],
            'dokumen_id' => $request['forum'],
            'message' => $request['message']
        ]);

        $komentar->save();
        //alert()->success('You have been logged out.', 'Good bye!');
        // return response()->json($komentar);
        return redirect()->back()->with('error', 'Profile updated!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $reference = Document::with('relation_forum')->findOrFail($id);
        return view('like.show', compact('reference'));
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
