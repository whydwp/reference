<?php

namespace App\Http\Controllers;

use Validator;
use App\Models\Kategori;
use Storage;
use App\Models\Document;
use Illuminate\Http\Request;

class KelolaDocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data_dokument = Document::paginate(10);
        // $kategori = Kategori::all();
        return view('document.index', compact('data_dokument'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategori = Kategori::all();
        return view('document.create', compact('kategori'));
    }




    /* @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data_dokument = $request->all();
        $validator = Validator::make($data_dokument, [
            'judul_dokumen' => 'required|max:250',
            'deskripsi_dokumen' => 'required|max:250',
            'tahun' => 'required|max:250',
            'publisher' => 'required|max:250',
            'jumlah_halaman' => 'required|max:250',
            'file' => 'required|mimes:jpeg,jpg,png,pdf|max:2048',
            'id_kategori' => 'required|max:250',

        ]);
        if ($validator->fails()) {
            return redirect()->route('document.create')->withErrors($validator)->withInput();
        }
        $file = $request->file('file');
        $extention = $file->getClientOriginalExtension();
        if ($request->file('file')->isValid()) {
            $namaFile = "document/" . date('YmdHis') . "." . $extention;
            $upload_path = 'uploads/document';
            $request->file('file')->move($upload_path, $namaFile);
            $data_dokument['file'] = $namaFile;
        }
        Document::create($data_dokument);
        return redirect()->route('document.index')->with('status', 'User Berhasil Ditambahankan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function show(KelolaUser $kelolaUser)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function edit(KelolaUser $kelolaUser)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, KelolaUser $kelolaUser)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data_dokument = Document::findOrFail($id);
        $data_dokument->delete();
        Storage::disk('upload')->delete($data_dokument->file);
        return redirect()->route('document.index')->with('status', 'Data Produk Berhasil dihapus');
    }
}
