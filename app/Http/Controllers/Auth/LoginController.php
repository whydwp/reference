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

        if (Auth::attempt($credentials)) {
            if( Auth::check() && Auth::user()->hasRole("pusdiklat") ) {
                return redirect()->intended('dashboard');
            }
            else {
                return redirect()->intended('dashboardUser');
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