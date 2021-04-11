<?php

namespace App\Http\Controllers;

use Excel;
use Validator;
use App\Models\User;
use App\Jobs\ImportJob;
use App\Models\KelolaUser;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use App\Exports\UserExport;
use App\Imports\UserImport;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Permission;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('permission:user-list', ['only' => ['index','show']]);
        $this->middleware('permission:user-edit', ['only' => ['index','update']]);
        $this->middleware('permission:user-create', ['only' => ['create','store']]);
        $this->middleware('permission:user-delete', ['only' => ['delete']]);
        $this->middleware('permission:user-import-export', ['only' => ['export', 'importexel']]);
    }

    public function index(Request $request)
    {
        $roles = Role::get();
        $query = User::orderBy('created_at', 'desc');

        if($request->has("keyword")){
            $query->where("full_name", "like", "%$request->keyword%");
        }

        if($request->has("role")){
            $query->whereHas("roles", function($q) use ($request){
                $q->where("name", $request->role);
            });
        }

        if(!Auth::user()->hasRole("superadmin")){
            $query->whereHas("roles", function($q) use ($request){
                $q->where("name", '!=', "superadmin");
            });
        }


        $data_user = $query->paginate(10);
        return view('user.index', compact('data_user', "roles"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = Role::get();

        return view('user.create', compact('roles'));
    }




    /* @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'full_name'    => 'required|max:250',
            'username'     => 'required|max:100|unique:user_auth',
            'email'        => 'required|email|max:255|unique:user_auth',
            'password'     => 'required|max:250',
        ]);

        $request->merge([ 'password' => bcrypt($request['password']) ]);
        $user = User::create($request->except('_token', '_method', 'role_id', 'permission'));

        $role = Role::where("id", $request->role_id)->first();
        $user->removeRole($role->id);
        $user->assignRole($role->id);

        $permissionSuperAdmin = Permission::pluck("id", "id")->all();
        $permissionAdmin = Permission::whereIn("name", ['profile', 'reference','like','dashboard-user','kumpulan-buku'])->pluck("id", "id")->all();
        $permissionUser = Permission::whereIn("name", ['profile', 'ebook-list', 'ebook-create', 'ebook-edit', 'ebook-delete', 'dokumen-list', 'dokumen-create', 'dokumen-edit', 'dokumen-delete', 'reference', 'dashboard-user', 'like'])->pluck("id", "id")->all();

        $user->assignRole($role->id);

        if($role->name == "superadmin"){
            $user->syncPermissions($permissionSuperAdmin);
        }elseif($role->name == "admin"){
            $user->syncPermissions($permissionAdmin);
        }elseif($role->name == "user"){
            $user->syncPermissions($permissionUser);
        }

        $user->syncPermissions($request->permission);

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

    /**e
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $roles = Role::get();;
        $user =  User::findOrFail($id);
        $permission = Permission::get();
        $userRole = $user->roles->pluck("name")->toArray();
        $userPermission = $user->permissions->pluck("name")->toArray();

        //dd($userPermission, $user->getAllPermissions()->pluck("name")->toArray());
        return view('user.edit', compact('user', 'roles', 'permission', 'userRole', 'userPermission'));
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
            'username'  => 'required|max:100|unique:user_auth,username,' . $id,
            'email'     => 'required|email|max:255|unique:user_auth,email,' . $id,
            'password'  => 'sometimes|nullable|min:6',
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

        $user->removeRole($request->role_id);
        $user->assignRole($request->role_id);
        $user->syncPermissions($request->permission);

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
