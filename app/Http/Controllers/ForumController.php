<?php

namespace App\Http\Controllers;

use App\Models\Forum;
use App\Models\User;
use App\Models\Document;
use Illuminate\Http\Request;
use App\Exports\reportcomen;
use Excel;

class ForumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('role:superadmin', ['only' => ['index', 'create', 'store', 'reportc','destroy']]);

        //$this->middleware('role:pusdiklat', ['only' => ['index', 'show']]);
    }

    public function index()
    {
        $forum = Forum::paginate(10);
        $user = User::all();
        $documen = Document::all();
       //dd($documen);
        return view('forum.index', compact('forum', 'user', 'documen'));
    }
    public function reportc()
    {
        $forum = now();
        return Excel::download(new reportcomen, 'Forum' . $forum . '.xlsx');
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
        $forum = Forum::paginate(100000);
        $user = User::all();
        $doc = Document::findOrFail($id);
        $docid = $doc->id;
        $juduldoc = $doc->judul_dokumen;
        return view('forum.index', ['forum' => $forum], ['user' => $user], ['doc' => $doc], ['docid' => $docid], ['juduldoc' => $juduldoc]);
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
        $forum = Forum::findOrFail($id);
        $forum->delete();
        return redirect()->route('forum.index')->with('status', 'Data Kategori Berhasil dihapus');
    }
}
