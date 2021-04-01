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
    public function __construct()
    {
        $this->middleware('siswa');
    }
    public function index(Request $request)
    {
<<<<<<< HEAD
        
        $status = Status::rejected()->first();
        // dd($status);
        // $nama_status = '';
        $filterKeyword = $request->get('keyword');
        $kumpulan = Ebook::orderBy('id_status', 'asc')->where('id_status', $status->id_status)->paginate(3);
        if ($filterKeyword) {
            //dijalankan jika ada pencarian
            $kumpulan = Ebook::where('judul_ebook', 'LIKE', "%$filterKeyword%")->paginate(10);
        }
        return view('kumpulanEbook.index', compact('kumpulan'));
=======
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
>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
    }

    public function download($file)
    {

<<<<<<< HEAD
        return response()->download('/storage/' . $file); //Download file yang dicari berdasarkan nama file
=======
        return response()->download('/storage/'.$file); //Download file yang dicari berdasarkan nama file
>>>>>>> 419211b8161b5410f561258bd46bca22337ee957
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
