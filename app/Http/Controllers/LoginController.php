<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slider;

class LoginController extends Controller
{
    public function index(){
        $slider = Slider::paginate(10);
        return view('general.login', ['slider' => $slider]);  
    }
}
