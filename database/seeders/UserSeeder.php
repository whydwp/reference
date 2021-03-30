<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\UserType;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

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

        UserType::insert($userTypes);
        $this->command->info("user type success cfreated");

        User::insert($users);
        $this->command->info("user success cfreated");
    }
}
