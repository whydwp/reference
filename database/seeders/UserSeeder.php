<?php

namespace Database\Seeders;

use App\Models\status;
use App\Models\User;
use App\Models\UserType;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $status = [
            [
                "id_status"  => 1,
                "status"     => "Di Terima",
                "created_at" => now(),
            ],
            [
                "id_status"  => 2,
                "status"     => "Di Tolak",
                "created_at" => now(),
            ],
        ];

        $permissions = [
            'user-list',
            'user-create',
            'user-edit',
            'user-delete',
            'user-import-export',

            'kategori-list',
            'kategori-create',
            'kategori-edit',
            'kategori-delete',
            'kategori-export',
            'kategori-import',

            'dokumen-list',
            'dokumen-create',
            'dokumen-edit',
            'dokumen-delete',
            'dokumen-export',

            'ebook-list-admin',
            'ebook-delete-admin',
            'ebook-list-superadmin',
            'ebook-delete-superadmin',
            'ebook-create-admin',
            'ebook-edit-admin',
            'ebook-edit-superadmin',

            'komentar-list',
            'komentar-delete',
            'komentar-export',

            'preview-admin',
            'preview-list',
            'dashboard-admin',
            'profile',
            'reference',
            'like',
            'dashboard-user',
            'kumpulan-buku',

         ];


        $roles = [
            "superadmin",
            "admin",
            "pusdiklat"
        ];

        $users = [
            [
                "username"     => "superadmin",
                "full_name"    => "superadmin",
                "email"        => "superadmin@plnpusdiklat.com",
                "password"     => Hash::make("superadmin"),
            ],
            [
                "username"  => "wahyu",
                "full_name" => "wahyu",
                "email"     => "administrator@plnpusdiklat.com",
                "password"  => Hash::make("admin"),
            ],
            [
                "username"  => "admin",
                "full_name" => "admin",
                "email"     => "admin@plnpusdiklat.com",
                "password"  => Hash::make("admin"),
            ],
            [
                "username"  => "andi",
                "full_name" => "andi",
                "email"     => "andi@plnpusdiklat.com",
                "password"  => Hash::make("andi"),
            ],
        ];


        foreach ($permissions as $permission) {
            Permission::create(['name' => $permission]);
        }
        $this->command->info("permission success created");

        foreach ($roles as $role) {
            Role::create(['name' => $role]);
        }
        $this->command->info("roles success created");

        foreach ($users as $user){
            User::create($user);
        }
        $this->command->info("users success created");

        status::insert($status);


        //assign-role-and-permission
        $user = User::where("full_name", "superadmin")->first();
        $role = Role::where("name", 'superadmin')->first();
        $permission = Permission::pluck("id", "id")->all();

        $user->assignRole($role->id);
        $user->syncPermissions($permission);
        $this->command->info("superadmin created!");


        $user = User::where("full_name", "andi")->first();
        $role = Role::where("name", 'pusdiklat')->first();
        $permission = Permission::whereIn("name", ['profile', 'reference','like','dashboard-user','kumpulan-buku'])->pluck("id", "id")->all();

        $user->assignRole($role->id);
        $user->syncPermissions($permission);
        $this->command->info("user created!");


        $user = User::where("full_name", "wahyu")->first();
        $userAdmin = User::where("full_name", "admin")->first();
        $role = Role::where("name", 'admin')->first();
        $permission = Permission::whereIn("name", [
            'profile',
            'ebook-list-admin',
            'ebook-delete-admin',
            'ebook-create-admin',
            'ebook-edit-admin',
            'dokumen-list',
            'dokumen-create',
            'dokumen-edit',
            'dokumen-delete',
            'reference',
            'dashboard-user',
            'like'
            ])->pluck("id", "id")->all();

        $user->assignRole($role->id);
        $user->syncPermissions($permission);

        $userAdmin->assignRole($role->id);
        $userAdmin->syncPermissions($permission);
        $this->command->info("admin created!");

    }
}
