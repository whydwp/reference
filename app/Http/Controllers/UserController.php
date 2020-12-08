<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\UserType;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $data_user = User::paginate(10);
        // // $kategori = Kategori::all();
        // return view('general2.kelola-user', compact('data_user'));
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
            $user = User::findOrFail($id);

            $input = $request->all();

            $validator = Validator::make($input, [
                'full_name' => 'required|max:255',
                'email' => 'required|max:255',
                'password' => 'required|max:255',
                'avatar_file' => 'sometimes|nullable|image|mimes:jpeg,jpg,png|max:2048'
            ]);

            if ($validator->fails()) {
                return redirect()->route('user.update', [$id])->withErrors($validator);
            }

            if ($request->hasFile('avatar_file')) {
                if ($request->file('avatar_file')->isValid()) {
                    Storage::disk('upload')->delete($user->avatar_file);

                    $avatar_file = $request->file('avatar_file');
                    $extention = $avatar_file->getClientOriginalExtension();
                    $namaFoto = "document/" . date('YmdHis') . "." . $extention;
                    $upload_path = 'uploads/document';
                    $request->file('avatar_file')->move($upload_path, $namaFoto);
                    $input['avatar_file'] = $namaFoto;
                }
            }

            $user->update($input);
            return redirect()->route('profil.index')->with('status', 'Kategori Berhasil diupdate');
        
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
