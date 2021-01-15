<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Document;
use App\Models\Kategori;
use App\Models\Likesdocument;
use Auth;
use DB;

class MyLikeController extends Controller
{
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
        $getuserlikes = $newlikesdocumet->getuserlikesdocuments()->paginate();
        $doccat = array();
        foreach($getuserlikes as $doc){
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
