<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ebook;
use App\Models\kategori;
use App\Models\status;
use Illuminate\Support\Facades\Storage;

class KumpulanEbookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $status = Status::accepted()->first();
        $nama_status = '';
        $kumpulan = Ebook::orderBy('id_status', 'asc')->where('id_status', $status->id)->paginate(3);
        // if ($status) {
        //     $kumpulan = Ebook::where('id_status', $status)->paginate(5);
        //     $data_status = Status::find($status);
        //     $nama_status = $data_status;
        //     // dd($nama_status);
        // }

        return view('kumpulanEbook.index',compact('kumpulan', 'nama_status'));
    }

    public function download($file)
    {

        return response()->download('/storage/'.$file); //Download file yang dicari berdasarkan nama file
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
