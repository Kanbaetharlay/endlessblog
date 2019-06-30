<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Team_Member;

class FrontController extends Controller
{
    public function index(Request $request)
    {
        return view('front.index'); 
    }
}
