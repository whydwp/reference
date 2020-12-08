<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;


class ProfilController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $input = User::all();
        return view('profil.index', compact('input')); 
        // return view('profil.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('profil.create');
    }




    /* @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    
    public function show()
    {
        //
    }

 
    public function edit()
    {
        // return view('profil.edit');
    }

    
    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);

        $input = $request->all();
        $this->validate($request, [
            'full_name' => 'required|max:250',
            'username' => 'required|max:100|unique:users,username,' . $id,
            'email' => 'required|email|max:255|unique:users,email,' . $id,
            'password' => 'sometimes|nullable|min:6',
            'avatar_file' => 'sometimes|nullable|image|mimes:jpeg,jpg,png|max:2048'

        ]);
        Auth::user()->update([
            'full_name' => $request->full_name,
            'username' => $request->username,
            'email' => $request->email,
            'password' => $request->bcrypt(request('password')),
            'avatar_file' => $request->avatar_file
           
        ]);
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
        dd($user);
        $user->save();
        return redirect()->route('profil.index')->with('status', 'User Berhasil Diupdate');

    }

   
    public function destroy()
    {
        //
    }
}
