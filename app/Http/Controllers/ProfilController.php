<?php

namespace App\Http\Controllers;

use Validator;
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
    // public function __construct()
    // {
    //     $this->middleware('admin'); //membatasi level
    // }
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

        $rules = [
            'full_name' => 'required|max:250',
            // 'username' => 'required|max:100|unique:users,username,' . $id,
            'email' => 'required|email|max:255|unique:users,email,' . $id,
            'avatar_file' =>  'sometimes|nullable|mimes:jpeg,jpg,png,pdf|max:5048',



            ];

        $messages = [
            'full_name.required'          => 'Nama wajib diisi.',
            // 'username.required'      => 'username wajib diisi.',
            'email.required'           => 'email wajib diisi.',
            'avatar_file.required'         => 'fotomu wajib diisi.',

        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()->route('profil.index')->withErrors($validator)->withInput($request->all());
        }
        // $validasi = Validator::make($input, [
        //     'full_name' => 'required|max:250',
        //     'username' => 'required|max:100|unique:users,username,' . $id,
        //     'email' => 'required|email|max:255|unique:users,email,' . $id,
        //     'password' => 'sometimes|nullable|min:6',
        //     'avatar_file' =>  'sometimes|nullable|mimes:jpeg,jpg,png,pdf|max:5048',


        // ]);

        // if ($validasi->fails()) {
        //     return redirect()->route('profil.index')->withErrors($validasi);
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
            // $user->username = $request->username;
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
                //  dd($namaFoto);
            } 
        }
        
        $user->save();
        return redirect()->route('profil.index')->with('status', 'User Berhasil Diupdate');

    }

   
    public function destroy()
    {
        //
    }
}
