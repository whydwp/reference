<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Storage;
use Auth;
use Hash;
use Illuminate\Support\Facades\DB;


class ProfilController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $input = User::all();
        $userid = Auth::user()->id;
        $input = User::find($userid);
        // dd($input);
        return view('profil.index',['input'=>$input]); 
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
        $user = User::find($id);

        $input = $request->all();
        // $this->validate($request, [
        //     'full_name' => 'sometimes|max:250',
        //     'username' => 'sometimes|max:100|unique:user_auth,username,',// . $id,
        //     'email' => 'sometimes|email|max:255|unique:user_auth,email,',// . $id,
        //     'password' => 'sometimes|min:6',
        //     'avatar_file' => 'sometimes|image|mimes:jpeg,jpg,png|max:2048'

        // ]);

        // if ($validator->fails()) {
        //     return redirect()->route('dashboard')->withErrors($validator);
        // }
        // dd($user);

        // $user->update([
        //     'full_name' => $request->full_name,
        //     'username' => $request->username,
        //     'email' => $request->email,
        //     'password' => Hash::make($request->password),
        //     'avatar_file' => $request->avatar_file
           
        // ]);
            $user->full_name = $request->full_name;
            $user->username = $request->username;
            $user->email = $request->email;
            if($request->password != NULL) {
                $user->password = Hash::make($request->password);
            }
        
        if ($request->hasFile('avatar_file')) {
            if ($request->file('avatar_file')->isValid()) {
                Storage::disk('upload')->delete($user->avatar_file);

                $avatar_file = $request->file('avatar_file');
                $extention = $avatar_file->getClientOriginalExtension();
                // $namaFoto = "document/" . date('YmdHis') . "." . $extention;
                $namaFoto = date('YmdHis') . "." . $extention;
                
                $upload_path = 'uploads/document/';
                // dd($request->file('avatar_file')->move($upload_path, $namaFoto));
                $request->file('avatar_file')->move($upload_path, $namaFoto);
                $user->avatar_file = $namaFoto;
                // dd($namaFoto);
            }
        }
        // else {
        //     dd("hehehehe");
        //     // return redirect()->route('profil.index')->with('status', 'belum diupdate');
        // }

        $user->save();
        return redirect()->route('profil.index')->with('status', 'User Berhasil Diupdate');

    }

   
    public function destroy()
    {
        //
    }
}
