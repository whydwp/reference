<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user =  new \App\Models\User;
        $user->username = 201710370311320;
        $user->full_name = "wahyu";
        $user->email = "administrator@mail.com";
        $user->password = \Hash::make("admin");
        $user->user_type_id = 1;
        $user->save();
        $this->command->info("user Admin Berhasil Dibuat");
    }
}
