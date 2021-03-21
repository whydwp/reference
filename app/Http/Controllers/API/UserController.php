<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Validator;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\UserResource;
class UserController extends Controller
{
    //public $successStatus = 200;

    public function login(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'username' => 'required',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => FALSE,
                'msg' => $validator->errors()
            ], 400);
        }

        $username = $request->input('username');
        $password = $request->input('password');

        $user = User::where([
            ['username', $username]
        ])->first();
       

        if (is_null($user)) {
            //jika pegawai tidak ditemukan
            return response()->json([
                'status' => FALSE,
                'msg' => 'Username Tidak ditemukan'
            ], 200);
        } else {
            //jika pegawai ditemukan
            if (password_verify($password, $user->password)) {
                //jika password sesuai
                return response()->json([
                    'status' => TRUE,
                    'msg' => 'Username ditemukan',
                    'user' => new UserResource($user)
                ], 200);
            } else {
                //jika password tidak sesuai
                return response()->json([
                    'status' => FALSE,
                    'msg' => 'Username & Password Tidak Sesuai',
                ], 200);
            }
        }
    }
}
