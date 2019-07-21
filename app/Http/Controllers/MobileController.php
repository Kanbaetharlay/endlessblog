<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ITNews;

class MobileController extends Controller
{
    public function itnews(Request $request)
    {
        $data['item'] = ITNews::take(10)
                                ->skip($request->size)
                                ->get();
        if($data['item']->count() > 0) {
            $data['success'] = true;
        }else {
            $data['success'] = false;
        }

        return response()->json($data);
    }
}
