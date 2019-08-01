<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Team_Member;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Tutorial;
use App\Models\Upload;
use App\Models\Topic;
class FrontController extends Controller
{
    public function __construct()
    {
        $categories = Category::all();
        $sub_categories = Subcategory::all();
        $this->categories = $categories;
        $this->sub_categories = $sub_categories;
        $tutorials = Tutorial::pluck('sub_category')->unique();
        $this->tutorials = $tutorials;
    }
    public function index(Request $request)
    {
      $tutorials = $this->recentTutorial()->limit(3)->get();
     
        return view('front.index')
                ->with('categories',$this->categories)
                ->with('sub_categories',$this->sub_categories)
                // ->with('tutorials',$this->tutorials)
                ->with('tutorials',$tutorials);
    }

    public function showAllTutorials($subcat_id)
    {
        $subcat = Subcategory::find($subcat_id);
        $alltutorial  = $subcat->tutorials;
        $subcat_name = $subcat->name;
        $sidebar_tutorials = $this->recentTutorial()->limit(5)->get();
        return view('front.tutorials.showtutorials')
                ->with('categories',$this->categories)
                ->with('sub_categories',$this->sub_categories)
                ->with('tutorials',$this->tutorials)
                ->with('alltutorial',$alltutorial)
                ->with('subcat_name',$subcat_name)
                ->with('sidebar_tutorials',$sidebar_tutorials);
        
    }

    public function detailTutorial($id)
    {
        $tutorial = Tutorial::find($id);
        $image = new Tutorial;
        $img1 = $image->uploadimage($tutorial->images);
        $subcat_name = $tutorial->subcategory;
        
        // $image_decode = json_decode($tutorial->images);
        // $img = [];
        // $img1 = null;
        // if(count($image_decode) > 0){
        //     foreach ($image_decode as $key => $value) {
        //         $img_upload = Upload::find($value);
        //         $img[] = 'files/'.$img_upload->hash.'/'.$img_upload->name;
        //         $img1 = 'files/'.$img_upload->hash.'/'.$img_upload->name;
        //     }
        // }
        
        return view('front.tutorials.detail')
        ->with('categories',$this->categories)
        ->with('sub_categories',$this->sub_categories)
        ->with('tutorials',$this->tutorials)
        ->with('tutorial',$tutorial)
        ->with('img1',$img1)
        ->with('id',$id)
        ->with('subcat_name',$subcat_name->name);
    }

    public function topic($id)
    {
       $topic = Topic::find($id);
       return view('front.topics.topic')
                ->with('categories',$this->categories)
                ->with('sub_categories',$this->sub_categories)
                ->with('tutorials',$this->tutorials);
    }

    public function recentTutorial()
    {
        $sidebar_tutorials = Tutorial::select('id','title','content','images','post_date','sub_category','shared_link')
        ->orderBy('post_date','desc');
        return $sidebar_tutorials;
    }
}
