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

        $users = [
            [
                "username"     => "201710370311320",
                "full_name"    => "wahyu",
                "email"        => "administrator@mail.com",
                "password"     => Hash::make("admin"),
                "user_type_id" => 1,
                "created_at"   => now(),
            ],
            [
                "username"     => "srob",
                "full_name"    => "srob",
                "email"        => "srob@mail.com",
                "password"     => Hash::make("srob"),
                "user_type_id" => 1,
                "created_at"   => now(),
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
            "pnlpusdiklat"
        ];


        foreach ($permissions as $permission) {
            Permission::create(['name' => $permission]);
        }

        foreach ($roles as $role) {
            Role::create(['name' => $role]);
        }

        UserType::insert($userTypes);
        $this->command->info("user type success created");

        User::insert($users);
        $this->command->info("user success cfreated");
    }
}
