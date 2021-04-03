<?php

namespace Database\Seeders;

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
        $userTypes = [
            [
                "type"        => "superadmin",
                "created_at"  => now(),
                "modified_at" => now(),
            ],
            [
                "type"        => "admin",
                "created_at"  => now(),
                "modified_at" => now(),
            ],
            [
                "type"        => "pusdiklat",
                "created_at"  => now(),
                "modified_at" => now(),
            ],
        ];

        $permissions = [
            'user-list',
            'user-create',
            'user-edit',
            'user-delete',

            'kategori-list',
            'kategori-create',
            'kategori-edit',
            'kategori-delete',

            'dokumen-list',
            'dokumen-create',
            'dokumen-edit',
            'dokumen-delete',

            'ebook-list',
            'ebook-create',
            'ebook-edit',
            'ebook-delete',

            'komentar-list',
            'komentar-create',
            'komentar-edit',
            'komentar-delete',

            'dashboard-admin',
            'profile',
            'reference',
            'like'
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
                "user_type_id" => 1,
            ],
            [
                "username"  => "201710370311320",
                "full_name" => "wahyu",
                "email"     => "administrator@plnpusdiklat.com",
                "password"  => Hash::make("admin"),
                "user_type_id" => 1,
            ],
            [
                "username"  => "srob",
                "full_name" => "srob",
                "email"     => "srob@plnpusdiklat.com",
                "password"  => Hash::make("srob"),
                "user_type_id" => 1,
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

        UserType::insert($userTypes); //enable for-old-data
        $this->command->info("user type success created");


        //assign-role-and-permission
        $user = User::where("full_name", "superadmin")->first();
        $role = Role::where("name", 'superadmin')->first();
        $permission = Permission::pluck("id", "id")->all();

        $user->assignRole($role->id);
        $user->syncPermissions($permission);
        $this->command->info("superadmin created!");


        $user = User::where("full_name", "srob")->first();
        $role = Role::where("name", 'pusdiklat')->first();
        $permission = Permission::whereIn("name", ['profile', 'reference','like'])->pluck("id", "id")->all();

        $user->assignRole($role->id);
        $user->syncPermissions($permission);
        $this->command->info("user created!");


        $user = User::where("full_name", "wahyu")->first();
        $role = Role::where("name", 'admin')->first();
        $permission = Permission::whereIn("name", [
            'profile',
            'dokumen-list',
            'dokumen-create',
            'dokumen-edit',
            'dokumen-delete',
            'reference',
            'like'])->pluck("id", "id")->all();

        $user->assignRole($role->id);
        $user->syncPermissions($permission);
        $this->command->info("admin created!");

    }
}
