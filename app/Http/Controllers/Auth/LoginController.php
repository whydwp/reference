<?php
namespace App\Http\Controllers\Auth;
// namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{  
    // public function __construct()
    // {
    //     $this->middleware('guest')->except('logout');
    // }

    public function authenticate(Request $request)
    {
        $credentials = $request->only('username', 'password');

        if (auth()->attempt($credentials)) {
            if(Auth::check() && (Auth::user()->user_type_id == 1) )
            {
                return redirect()->intended('dashboard');
            }
            else {
                return redirect()->intended('kelola-user');
            }

        }

        else {
            return redirect()->back()->with('failmessage', 'Username/Password anda salah!');

        }


        // if (Auth::attempt($credentials)) {
        //     // Authentication passed...
        //     return redirect()->intended('dashboard');
        // }
    }

    public function logout()
    {
        Auth::logout();

        // return view()->intended('login');
        return redirect()->intended('/');
    }
}