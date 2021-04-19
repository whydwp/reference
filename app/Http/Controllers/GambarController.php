<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slider;
use Storage;
use Validator;

class GambarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $slider = Slider::paginate(10);
        return view('slider.index', ['slider' => $slider]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $slider = Slider::all();
        return view('slider.create', compact('slider'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $slider = $request->all();

        $validator = Validator::make($slider, [
            'gambar' => 'required|image|mimes:jpeg,jpg,png|max:2048'
        ]);

        if ($validator->fails()) {
            return redirect()->route('gambar.index')->withErrors($validator)->withInput();
        }
        if ($request->file('gambar')->isValid()) {
            $gambar = $request->file('gambar');
            $extention = $gambar->getClientOriginalExtension();
            $namaFoto = "gambar/" . date('YmdHis') . "." . $extention;
            $upload_path = 'uploads/gambar';
            $request->file('gambar')->move($upload_path, $namaFoto);
            $slider['gambar'] = $namaFoto;
        }

        Slider::create($slider);
        return redirect()->route('gambar.index')->with('success', 'Gambar Berhasil Ditambahankan');
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
        $slider = Slider::findOrFail($id);
        return view('slider.edit', compact('slider'));
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
        

            $slider = Slider::findOrFail($id);
            $item = $request->all();
            // dd($item);
            if ($request->hasFile('gambar')) {
                if ($request->file('gambar')->isValid()) {
                    Storage::disk('upload')->delete($slider->gambar);

                    $cover = $request->file('gambar');
                    $extention = $cover->getClientOriginalExtension();
                    $namaCover = "gambar/" . date('YmdHis') . "." . $extention;
                    $upload_path = 'uploads/gambar';
                    $request->file('gambar')->move($upload_path, $namaCover);
                    $item['gambar'] = $namaCover;
                }
            }

            $slider->update($item);
            // $kategoriType = $request->all();
            // KategoriType::where(['kategori_type_id' => $id])->update(['kategoriType' => $kategoriType['kategoriType'],]);
            // dd('$kategoriType');
            //return view('kategori.index', compact('kategoriType', 'item'));
        return redirect()->route('gambar.index')->with('status', 'gambar Berhasil diupdate');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $slider = Slider::findOrFail($id);
        $slider->delete();
        Storage::disk('upload')->delete($slider->file);
        return redirect()->route('gambar.index')->with('toast_success', 'Data Gambar Berhasil dihapus');
    }
}
