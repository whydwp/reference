<?php

namespace App\Http\Controllers;

use Validator;
use App\Models\User;
use App\Models\KelolaUser;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use App\Exports\UserExport;
use App\Imports\UserImport;
use App\Jobs\ImportJob;
use Excel;
use Spatie\Permission\Models\Role;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('admin'); //membatasi level
    }
    public function index(Request $request)
    {
        $roles = Role::get();
        $query = User::orderBy('created_at', 'desc');
        if($request->has("role")){
            $query->whereHas("roles", function($q) use ($request){
                $q->where("name", $request->role);
            });
        }

        $data_user = $query->paginate(10);
        // dd($query->toSql(), $request->has("role"), $request->all(), $data_user);
        return view('user.index', compact('data_user', "roles"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data_user = KelolaUser::paginate(10);
        // $kategori = Kategori::all();
        return view('user.create', compact('data_user'));
    }




    /* @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Kelola = $request->all();
        $validator = Validator::make($Kelola, [
            'full_name' => 'required|max:250',
            'username' => 'required|max:100|unique:users,username,' ,
            'email' => 'required|email|max:255|unique:users,email,',
            //'password' => 'sometimes|nullable|min:6',
            'password' => 'required|max:250',
            'user_type_id' => 'required|max:250',

        ]);

        if ($validator->fails()) {
            return redirect()->route('user.create')->withErrors($validator)->withInput();
        }
        $Kelola['password'] = bcrypt($Kelola['password']);
        User::create($Kelola);
        return redirect()->route('user.index')->with('status', 'User Berhasil Ditambahankan');
    }

    public function export()
    {
        $full_name = now();
        // dd($full_name);
         return Excel::download(new UserExport, 'user' . $full_name . '.xlsx');
    }
    public function importexel(Request $request){
        // validasi
        // $this->validate($request, [

        //     'file' => 'required|mimes:csv,xls,xlsx|max:50048'
        // ]);
        // // $Kelola = $request->all();
        // // menangkap file excel
        // if($file = $request->file('file')){
        //     $nama_file = $file->getClientOriginalName();

        //     // upload ke folder di dalam folder public
        //     $file->move('uploads', $nama_file);

        //     // import data
        //     Excel::import(new UserImport, public_path('/uploads/' . $nama_file));
        //     return redirect()->back()->with(['success' => 'Upload success']);
        // };
        // //$Kelola['password'] = bcrypt($Kelola['password']);
        // // membuat nama file unik
        // return redirect()->back()->with(['error' => 'Please choose file before']);
        $this->validate($request, [
            'file' => 'required|mimes:xls,xlsx'
        ]);

        if ($request->hasFile('file')) {
            //UPLOAD FILE
            $file = $request->file('file');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->storeAs(
                'public',
                $filename
            );

            //MEMBUAT JOBS DENGAN MENGIRIMKAN PARAMETER FILENAME
            ImportJob::dispatch($filename);
            return redirect()->back()->with(['success' => 'Upload success']);
        }
        return redirect()->back()->with(['error' => 'Please choose file before']);

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
        $kelola = KelolaUser::all();
        $user =  User::findOrFail($id);
        return view('user.edit', compact('user', 'kelola'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);
        $data = $request->all();

        $validasi = Validator::make($data, [
            'full_name' => 'required|max:250',
            'username' => 'required|max:100|unique:users,username,' . $id,
            'email' => 'required|email|max:255|unique:users,email,' . $id,
            'password' => 'sometimes|nullable|min:6',
            'user_type_id' => 'required|max:250',


        ]);

        if ($validasi->fails()) {
            return redirect()->route('user.edit', [$id])->withErrors($validasi);
        }
        if ($request->input('password')) {

            //jika pasword diisi
            $data['password'] = bcrypt($data['password']);
        } else {
            //juka passowrd tydak diisi
            $data = Arr::except($data, ['password']);
        }
        $user->update($data);
        return redirect()->route('user.index')->with('status', 'User Berhasil Diupdate');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        return redirect()->route('user.index')->with('status', 'user berhasil di hapus');
    }
}
