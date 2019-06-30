<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;

class CommonAPIController extends Controller
{
    // IT Category
    public function itcategories(Request $request)
    {
        $data['item'] = Category::all();
        return response()->json($data);
    }

    // IT Subcategory
    public function itesubcategories(Request $request, $category)
    {
        $data['item'] = Subcategory::where('category', $category)
                                    ->get();
        if($data['item']->count() > 0) {
            $data['success'] = true;
        }else {
            $data['success'] = false;
        }
        return response()->json($data);
    }
}
