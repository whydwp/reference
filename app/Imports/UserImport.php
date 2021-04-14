<?php

namespace App\Imports;

use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Contracts\Queue\ShouldQueue;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class UserImport implements ToModel, WithChunkReading, ShouldQueue
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */

    public function model(array $row)
    {
       $user = User::updateOrCreate(
            [
                'email'        => $row[2],
                'username'     => $row[3],
            ],
            [
                'full_name'    => $row[1],
                'password'     => ( isset($row[5]) ? Hash::make($row[5]) : Hash::make('password') )
            ]
        );

        $role = Role::where("name", $row[4])->first();

        $permissionSuperAdmin = Permission::pluck("id", "id")->all();
        $permissionAdmin = Permission::whereIn("name", ['profile', 'ebook-list', 'ebook-create', 'ebook-edit', 'ebook-delete', 'dokumen-list', 'dokumen-create', 'dokumen-edit', 'dokumen-delete', 'reference', 'dashboard-user', 'like'] )->pluck("id", "id")->all();
        $permissionUser = Permission::whereIn("name", ['profile', 'reference', 'like', 'dashboard-user', 'kumpulan-buku'])->pluck("id", "id")->all();

        $user->assignRole($role->id);

        if($role->name == "superadmin"){
            $user->syncPermissions($permissionSuperAdmin);
        }elseif($role->name == "admin"){
            $user->syncPermissions($permissionAdmin);
        }elseif($role->name == "pusdiklat"){
            $user->syncPermissions($permissionUser);
        }

        return $user;
    }

    public function chunkSize(): int
    {
        return 1000;
    }
}
