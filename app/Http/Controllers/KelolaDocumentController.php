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
    public function index(Request $request)
    {
        $data_dokument = Document::paginate(100);
        $filterKeyword = $request->get('keyword');
        if ($filterKeyword) {
            //dijalankan jika ada pencarian
            $data_dokument = Document::where('judul_dokumen', 'LIKE', "%$filterKeyword%")->paginate(100);
        }
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
            'deskripsi_dokumen' => 'required|max:25000',
            'tahun' => 'required|max:250',
            'publisher' => 'required|max:250',
            'jumlah_halaman' => 'required|max:250',
            'file' => 'required|mimes:jpeg,jpg,png,pdf|max:5048',
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
    public function edit($id)
    {
        $kategori = Kategori::all();
        $document = Document::findOrFail($id);
        return view('document.edit', compact('kategori', 'document'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    { {
            $document = Document::findOrFail($id);

            $input = $request->all();

            $validator = Validator::make($input, [
                'judul_dokumen' => 'required|max:250',
                'deskripsi_dokumen' => 'required|max:25000',
                'tahun' => 'required|max:250',
                'publisher' => 'required|max:250',
                'jumlah_halaman' => 'required|max:250',
                'file' => 'required|mimes:jpeg,jpg,png,pdf|max:5048',
                'id_kategori' => 'required|max:250',
            ]);

            if ($validator->fails()) {
                return redirect()->route('document.edit', [$id])->withErrors($validator);
            }

            if ($request->hasFile('file')) {
                if ($request->file('file')->isValid()) {
                    Storage::disk('upload')->delete($document->file);

                    $file = $request->file('file');
                    $extention = $file->getClientOriginalExtension();
                    $namaFoto = "document/" . date('YmdHis') . "." . $extention;
                    $upload_path = 'uploads/document';
                    $request->file('file')->move($upload_path, $namaFoto);
                    $input['file'] = $namaFoto;
                }
            }

            $document->update($input);
            return redirect()->route('document.index')->with('status', 'Produk Berhasil diupdate');
        }
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
