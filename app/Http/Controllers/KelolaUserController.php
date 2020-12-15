<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\KelolaUser;
use Illuminate\Http\Request;
use Validator;


class KelolaUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data_user = User::paginate(10);
        // $kategori = Kategori::all();
        return view('KelolaUser.index', compact('data_user'));
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




    /* @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Kelola = $request->all();
        $validator = Validator::make($Kelola, [
                'full_name' => 'required|max:250',
                'username' => 'required|max:25000',
                'email' => 'required|max:250',
                'user_type_id' => 'required|max:250',
                

            ]);
        if ($validator->fails()) {
            return redirect()->route('KelolaUser.index')->withErrors($validator)->withInput();
        }
        Document::create($Kelola);
        return redirect()->route('KelolaUser.index')->with('status', 'User Berhasil Ditambahankan');
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
    public function destroy(KelolaUser $kelolaUser)
    {
        //
    }
}
