<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ebook;
use App\Models\Status;
use App\Models\User;
use Validator;
use App\Models\Kategori;
use Illuminate\Support\Facades\Auth;
use Storage;


class AdminEbookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function __construct()
    {
        //$this->middleware('role:admin', ['only' => ['index','show', 'create', 'store', 'edit', 'update', 'destroy']]);

        $this->middleware('permission:ebook-list-admin', ['only' => ['index', 'show']]);
        $this->middleware('permission:ebook-edit-admin', ['only' => ['index', 'update']]);
        $this->middleware('permission:ebook-create-admin', ['only' => ['create', 'store']]);
        //$this->middleware('permission:ebook-delete-admin', ['only' => ['delete']]);
        // $this->middleware('permission:ebook-show', ['only' => ['show']]);
        //$this->middleware('role:pusdiklat', ['only' => ['index', 'show']]);
    }

    public function index()
    {
        //$ebook = Ebook::OrderBy('created_at', 'desc')->where("user_id", Auth::user()->id)->paginate(5);
        $ebook = Ebook::OrderBy('created_at', 'desc')->paginate(100000);
        $kategori = Kategori::all();
        $status = Status::all();
        $user = User::all();
        //dd($status);
        return view('adminEbook.index', compact('ebook', 'kategori', 'status', 'user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategori = Kategori::all();
        $status = Status::all();
        return view('adminEbook.create', compact('kategori', 'status'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $requestCreate = Ebook::where('user_id', Auth::user()->id)->count();
        if ($requestCreate >= Ebook::MAX_REQUEST_CREATE) {
            return redirect()->route('adminEbook.create')->with('warning', Ebook::ERROR_MESSAGE_LIMIT_MAX_REQUEST);;
        }

        $ebook = $request->all();
        $ebook["user_id"] = Auth::user()->id;
        $rules = [
            'judul_ebook' => 'required|max:250',
            'deskripsi_ebook' => 'required',
            'tahun' => 'required|numeric',
            'publisher' => 'required|max:250',
            'file' => 'required|mimes:pdf,docx,pptx|max:1048576',
            //'cover' => 'required|mimes:jpeg,jpg,png,pdf|max:5048',
            'id_kategori' => 'required|max:250',

        ];

        $messages = [
            'judul_ebook.required'          => 'Judul wajib diisi.',
            'deskripsi_ebook.required'      => 'Deskripsi wajib diisi.',
            'tahun.required'           => 'tahun wajib diisi.',
            'publisher.required'         => 'publisher wajib diisi.',
            'file.required'         => 'file wajib diisi.',
            //'cover.required'         => 'cover wajib diisi.',
            'id_kategori.required'         => 'kategori wajib dipilih.',

        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()->route('adminEbook.create')->withErrors($validator)->withInput($request->all());
        }


        if ($request->file('file')->isValid()) {
            $file = $request->file('file');
            $extention = $file->getClientOriginalName();
            $namaFile = "ebook/" . "." . $extention;
            $upload_path = 'uploads/ebook';
            $request->file('file')->move($upload_path, $namaFile);
            $ebook['file'] = $namaFile;
        }
        $cover = $request->file('cover');
        if ($cover) {
            if ($request->file('cover')->isValid()) {
                $file = $request->file('cover');
                $extention = $file->getClientOriginalExtension();
                $namaCover = "ebook/" . date('YmdHis') . "." . $extention;
                $upload_path = 'uploads/ebook';
                $request->file('cover')->move($upload_path, $namaCover);
                $ebook['cover'] = $namaCover;
            } else {
                $cover =  'image/1.png';
            }
        }

        Ebook::create($ebook);
        return redirect()->route('adminEbook.index')->with('success', 'Dokumen Berhasil Ditambahankan');
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
        $kategori = Kategori::all();
        $status = Status::all();
        $ebook = Ebook::findOrFail($id);
        return view('adminEbook.edit', compact('kategori', 'ebook', 'status'));
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
        $ebook = Ebook::findOrFail($id);

        $input = $request->all();
        $rules = [
            'judul_ebook' => 'required|max:250',
            'deskripsi_ebook' => 'required',
            'tahun' => 'required|numeric',
            'publisher' => 'required|max:250',
            'id_kategori' => 'required|max:250',

        ];

        $messages = [
            'judul_ebook.required'          => 'Nama wajib diisi.',
            'deskripsi_ebook.required'      => 'Deskripsi wajib diisi.',
            'tahun.required'           => 'tahun wajib diisi.',
            'publisher.required'         => 'publisher wajib diisi.',
            'id_kategori.required'         => 'kategori wajib dipilih.',

        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()->route('adminEbook.edit', [$id])->withErrors($validator)->withInput($request->all());
        }
        if ($request->hasFile('file')) {
            if ($request->file('file')->isValid()) {
                Storage::disk('upload')->delete($ebook->file);

                $file = $request->file('file');
                $extention = $file->getClientOriginalExtension();
                $namaFile = "ebook/" . date('YmdHis') . "." . $extention;
                $upload_path = 'uploads/ebook';
                $request->file('file')->move($upload_path, $namaFile);
                $input['file'] = $namaFile;
            }
        }
        if ($request->hasFile('cover')) {
            if ($request->file('cover')->isValid()) {
                Storage::disk('upload')->delete($ebook->cover);

                $file = $request->file('cover');
                $extention = $file->getClientOriginalExtension();
                $namaCover = "ebook/" . date('YmdHis') . "." . $extention;
                $upload_path = 'uploads/ebook';
                $request->file('cover')->move($upload_path, $namaCover);
                $input['cover'] = $namaCover;
            }
        }

        $ebook->update($input);
        return redirect()->route('adminEbook.index')->with('status', 'Document Berhasil diupdate');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ebook = Ebook::findOrFail($id);
        $ebook->delete();
        Storage::disk('upload')->delete($ebook->file);
        return redirect()->route('adminEbook.index')->with('toast_success', 'Data Document Berhasil dihapus');
    }
}
